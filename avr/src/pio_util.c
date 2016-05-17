/*
 * pio_util.c - high level calls for using pio
 *
 * Written by
 *  Christian Vogelgsang <chris@vogelgsang.org>
 *
 * This file is part of plipbox.
 * See README for copyright notice.
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
 *  02111-1307  USA.
 *
 */

#include "pio_util.h"

#include "base/timer.h"
#include "pio.h"
#include "base/uartutil.h"
#include "stats.h"
#include "pkt_buf.h"
#include "main.h"
#include "param.h"

#include "net/net.h"
#include "net/eth.h"
#include "net/arp.h"
#include "net/ip.h"
#include "net/udp.h"

uint8_t pio_util_get_init_flags()
{
  uint8_t flags = PIO_INIT_BROAD_CAST;

  if(param.flow_ctl) {
    flags |= PIO_INIT_FLOW_CONTROL;
  }
  if(param.full_duplex) {
    flags |= PIO_INIT_FULL_DUPLEX;
  }

  return flags;
}

uint8_t pio_util_recv_packet(uint16_t *size)
{
  // measure packet receive
  timer_hw_reset();
  uint8_t result = pio_recv(pkt_buf, PKT_BUF_SIZE, size);
  uint16_t delta = timer_hw_get();

  uint16_t s = *size;
  uint16_t rate = timer_hw_calc_rate_kbs(s, delta);
  if(result == PIO_OK) {
    stats_update_ok(STATS_ID_PIO_RX, s, rate);
  } else {
    stats_get(STATS_ID_PIO_RX)->err++;
  }

  if(global_verbose) {
    uart_send_time_stamp_spc();
    uart_send_pstring(PSTR("pio rx: "));
    if(result == PIO_OK) {
      // speed
      uart_send_pstring(PSTR("v="));
      uart_send_rate_kbs(rate);

      // size
      uart_send_pstring(PSTR(" n="));
      uart_send_hex_word(s);
      uart_send_crlf();
    } else {
      uart_send_pstring(PSTR("ERROR="));
      uart_send_hex_byte(result);
      uart_send_crlf();
    }
  }
  return result;
}

uint8_t pio_util_send_packet(uint16_t size)
{
  timer_hw_reset();
  uint8_t result = pio_send(pkt_buf, size);
  uint16_t delta = timer_hw_get();

  uint16_t rate = timer_hw_calc_rate_kbs(size, delta);
  if(result == PIO_OK) {
    stats_update_ok(STATS_ID_PIO_TX, size, rate);
  } else {
    stats_get(STATS_ID_PIO_TX)->err++;
  }

  if(global_verbose) {
    uart_send_time_stamp_spc();
    uart_send_pstring(PSTR("pio tx: "));
    if(result == PIO_OK) {
      // speed
      uart_send_pstring(PSTR("v="));
      uart_send_rate_kbs(rate);

      // size
      uart_send_pstring(PSTR(" n="));
      uart_send_hex_word(size);
      uart_send_crlf();
    } else {
      uart_send_pstring(PSTR("ERROR="));
      uart_send_hex_byte(result);
      uart_send_crlf();
    }
  }
  return result;
}

uint8_t pio_util_handle_arp(uint16_t size)
{
  uint16_t type = eth_get_pkt_type(pkt_buf);
  if(type != ETH_TYPE_ARP) {
    return 0;
  }
  if(size <= ETH_HDR_SIZE) {
    return 0;
  }

  // payload buf/size
  uint8_t *pl_buf = pkt_buf + ETH_HDR_SIZE;
  uint16_t pl_size = size - ETH_HDR_SIZE;

  // is an ARP request
  if(arp_is_ipv4(pl_buf, pl_size) && (arp_get_op(pl_buf) == ARP_REQUEST)) {
    // is our IP?
    const uint8_t *tgt_ip = arp_get_tgt_ip(pl_buf);

    if(global_verbose) {
      uart_send_time_stamp_spc();
      uart_send_pstring(PSTR("ARP REQ: IP="));
      net_dump_ip(tgt_ip);
      uart_send_crlf();
    }

    if(net_compare_ip(tgt_ip, param.test_ip)) {
      arp_make_reply(pl_buf, param.mac_addr, param.test_ip);
      eth_make_bcast(pkt_buf, param.mac_addr);
      pio_util_send_packet(size);

      if(global_verbose) {
        uart_send_time_stamp_spc();
        uart_send_pstring(PSTR("ARP REPLY!\r\n"));
      }
    }
  }

  return 1;
}

uint8_t pio_util_handle_udp_test(uint16_t size)
{
  uint8_t *ip_buf = pkt_buf + ETH_HDR_SIZE;
  uint8_t *udp_buf = ip_buf + ip_get_hdr_length(ip_buf);
  const uint8_t *dst_ip = ip_get_tgt_ip(ip_buf);
  uint16_t dst_port = udp_get_tgt_port(udp_buf);
  const uint8_t *data_ptr = udp_get_data_ptr(udp_buf);

  // for us?
  if(net_compare_ip(param.test_ip, dst_ip) && (dst_port == param.test_port)) {
    if(global_verbose) {
      uart_send_time_stamp_spc();
      uart_send_pstring(PSTR("UDP: "));
      uart_send_hex_byte(*data_ptr);
      uart_send_crlf();
    }

    // send UDP packet back again
    // flip IP/UDP
    const uint8_t *src_ip = ip_get_src_ip(ip_buf);
    net_copy_ip(src_ip, ip_buf + 16); // set tgt ip
    net_copy_ip(param.test_ip, ip_buf + 12); // set src ip
    uint16_t src_port = udp_get_src_port(udp_buf);
    net_put_word(udp_buf + UDP_SRC_PORT_OFF, dst_port);
    net_put_word(udp_buf + UDP_TGT_PORT_OFF, src_port);

    // flip eth
    net_copy_mac(pkt_buf + ETH_OFF_SRC_MAC, pkt_buf + ETH_OFF_TGT_MAC);
    net_copy_mac(param.mac_addr, pkt_buf + ETH_OFF_SRC_MAC);

    return 1;
 } else {
 	return 0;
 }
}


