/*
 * main.h - main loop
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

#ifndef MAIN_H
#define MAIN_H

#include "global.h"

#define RUN_MODE_BRIDGE 		0
#define RUN_MODE_BRIDGE_TEST	1
#define RUN_MODE_PB_TEST 		2
#define RUN_MODE_PIO_TEST 		3


/* access run mode for command keys */
extern uint8_t run_mode;
extern uint8_t global_verbose;

#endif
