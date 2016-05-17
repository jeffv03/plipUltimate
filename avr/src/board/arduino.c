/*
 * arduino.c - arduino2009 hardware access
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

#include <avr/interrupt.h>

#include "../global.h"
#include "../board.h"

void board_init(void)
{
   // disable watchdog
   cli();                          /// Disable all interrupts
   MCUSR &= ~_BV(WDRF);            /// Reset watchdog status flag so watchdog can be disabled
   WDTCSR |= _BV(WDCE) | _BV(WDE); /// Enable watchdog alteration for next cycle
   WDTCSR = 0;                     /// Disable watchdog
   sei();
}
