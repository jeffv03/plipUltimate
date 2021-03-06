/*
 * This file is part of PlipUltimate.
 * License: GPLv2
 * Full license: https://github.com/tehKaiN/plipUltimate/blob/master/LICENSE
 * Authors list: https://github.com/tehKaiN/plipUltimate/blob/master/AUTHORS
 */


#include <main/config.h>
#include <string.h>
#include <avr/eeprom.h>
#include <avr/pgmspace.h>
#include <util/crc16.h>
#include <main/base/uartutil.h>
#include <main/base/uart.h>
#include <main/net/net.h>


//TODO(KaiN#7): Inverse config function return value logic

// current memory RAM param
tConfig g_sConfig;

// eeprom param
tConfig s_sEepromConfig EEMEM;
uint16_t s_uwEepromCrc EEMEM;

// default
static const tConfig PROGMEM sc_sDefaultConfig = {
  .mac_addr = { 0x1a,0x11,0xaf,0xa0,0x47,0x11},

  .flow_ctl = 0,
  .full_duplex = 0,

  .test_plen = 1514,
  .test_ptype = 0xfffd,
  .test_ip = { 192,168,2,222 },
  .test_port = 6800,
  .test_mode = 0
};

// build check sum for parameter block
static uint16_t configCalcCrc16(tConfig *p) {
  uint16_t crc16 = 0xffff;
  uint8_t *data = (uint8_t *)p;
  uint16_t i;
  for(i=0;i<sizeof(tConfig);i++) {
    crc16 = _crc16_update(crc16,*data);
    data++;
  }
  return crc16;
}

uint8_t configSaveToRom(void) {
  // check that eeprom is writable
  if(!eeprom_is_ready())
    return CONFIG_EEPROM_NOT_READY;

  // write current param to eeprom
  eeprom_write_block(&g_sConfig,&s_sEepromConfig,sizeof(tConfig));

  // calc current parameter crc
  uint16_t crc16 = configCalcCrc16(&g_sConfig);
  eeprom_write_word(&s_uwEepromCrc,crc16);

  return CONFIG_OK;
}

uint8_t configLoadFromRom(void) {
  // Check if eeprom is readable
  if(!eeprom_is_ready())
    return CONFIG_EEPROM_NOT_READY;

  // Read config
  eeprom_read_block(&g_sConfig,&s_sEepromConfig,sizeof(tConfig));

  // Read crc16
  uint16_t uwCrc = eeprom_read_word(&s_uwEepromCrc);
  if(uwCrc != configCalcCrc16(&g_sConfig)) {
    configReset();
    return CONFIG_EEPROM_CRC_MISMATCH;
  }

  return CONFIG_OK;
}

void configReset(void) {
	uint8_t i;
  // restore default param
  uint8_t *out = (uint8_t *)&g_sConfig;
  const uint8_t *in = (const uint8_t *)&sc_sDefaultConfig;
  for(i=0;i<sizeof(tConfig);i++) {
    *(out++) = pgm_read_byte_near(in++);
  }
}

void configInit(void) {
  if(configLoadFromRom() != CONFIG_OK)
    configReset();
}
