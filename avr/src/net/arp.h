/*
 * This file is part of PlipUltimate.
 * Based on PlipBox by Christian Vogelgsang <chris@vogelgsang.org>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

#ifndef ARP_H
#define ARP_H

#include "../global.h"
#include "net.h"

#define ARP_OFF_HW_TYPE   0
#define ARP_OFF_PROT_TYPE 2
#define ARP_OFF_HW_SIZE   4
#define ARP_OFF_PROT_SIZE 5
#define ARP_OFF_OP        6
#define ARP_OFF_SRC_MAC   8
#define ARP_OFF_SRC_IP    14
#define ARP_OFF_TGT_MAC   18
#define ARP_OFF_TGT_IP    24

#define ARP_SIZE          28

#define ARP_REQUEST       1
#define ARP_REPLY         2

extern uint8_t arp_is_ipv4(const uint8_t *buf, uint16_t len);
extern void arp_make_reply(uint8_t *buf, const uint8_t *my_mac, const uint8_t *my_ip);

/* getter */
inline uint16_t arp_get_op(const uint8_t *buf) { return net_get_word(buf + ARP_OFF_OP); }
inline const uint8_t* arp_get_src_mac(const uint8_t *buf) { return buf + ARP_OFF_SRC_MAC; }
inline const uint8_t* arp_get_src_ip(const uint8_t *buf) { return buf + ARP_OFF_SRC_IP; }
inline const uint8_t* arp_get_tgt_mac(const uint8_t *buf) { return buf + ARP_OFF_TGT_MAC; }
inline const uint8_t* arp_get_tgt_ip(const uint8_t *buf) { return buf + ARP_OFF_TGT_IP; }

#endif
