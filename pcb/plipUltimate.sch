EESchema Schematic File Version 2
LIBS:plipUltimate-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:plipUltimate
LIBS:plipUltimate-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Plip ultimate - main layout"
Date "2016-05-07"
Rev "1"
Comp ""
Comment1 "Marcin Nowosad, idx 20139"
Comment2 "Mikrokontrolery i Urządzenia Wbudowane"
Comment3 "Wydział Elektryczny"
Comment4 "Zachodniopomorski Uniwersytet Technologiczny w Szczecinie"
$EndDescr
$Comp
L IEEEE-1284A CON?
U 1 1 572E0DA1
P 1750 3200
F 0 "CON?" H 1550 4550 50  0000 L CNN
F 1 "IEEEE-1284A" H 2000 1850 50  0000 R CNN
F 2 "" H 1888 3800 50  0000 C CNN
F 3 "" H 1850 3950 50  0000 C CNN
	1    1750 3200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 572E1AD6
P 4100 1900
F 0 "#PWR?" H 4100 1750 50  0001 C CNN
F 1 "+5V" H 4100 2040 50  0000 C CNN
F 2 "" H 4100 1900 50  0000 C CNN
F 3 "" H 4100 1900 50  0000 C CNN
	1    4100 1900
	1    0    0    -1  
$EndComp
Entry Wire Line
	4100 3400 4000 3500
Entry Wire Line
	4100 3500 4000 3600
Entry Wire Line
	4100 3600 4000 3700
Entry Wire Line
	4100 3700 4000 3800
Entry Wire Line
	4100 3800 4000 3900
Entry Wire Line
	4100 3900 4000 4000
Entry Wire Line
	4100 4000 4000 4100
Entry Wire Line
	2450 2000 2550 2100
Entry Wire Line
	2450 2100 2550 2200
Entry Wire Line
	2450 2200 2550 2300
Entry Wire Line
	2450 2300 2550 2400
Entry Wire Line
	2450 2400 2550 2500
Entry Wire Line
	2450 2500 2550 2600
Entry Wire Line
	2450 2600 2550 2700
Entry Wire Line
	2450 2700 2550 2800
Entry Wire Line
	4100 4100 4000 4200
Text Label 2200 2000 0    39   ~ 0
D0
Text Label 2200 2100 0    39   ~ 0
D1
Text Label 2200 2200 0    39   ~ 0
D2
Text Label 2200 2300 0    39   ~ 0
D3
Text Label 2200 2400 0    39   ~ 0
D4
Text Label 2200 2500 0    39   ~ 0
D5
Text Label 2200 2600 0    39   ~ 0
D6
Text Label 2200 2700 0    39   ~ 0
D7
Text Label 4200 3400 2    39   ~ 0
D0
Text Label 4200 3500 2    39   ~ 0
D1
Text Label 4200 3600 2    39   ~ 0
D2
Text Label 4200 3700 2    39   ~ 0
D3
Text Label 4200 3800 2    39   ~ 0
D4
Text Label 4200 3900 2    39   ~ 0
D5
Text Label 4200 4000 2    39   ~ 0
D6
Text Label 4200 4100 2    39   ~ 0
D7
$Comp
L AVR-ISP-6 CON?
U 1 1 572E6383
P 2750 10000
F 0 "CON?" H 2645 10240 50  0000 C CNN
F 1 "AVR-ISP-6" H 2485 9770 50  0000 L BNN
F 2 "AVR-ISP-6" V 2230 10040 50  0001 C CNN
F 3 "" H 2725 10000 50  0000 C CNN
	1    2750 10000
	1    0    0    -1  
$EndComp
Entry Wire Line
	2450 2800 2550 2900
Entry Wire Line
	2450 2900 2550 3000
Entry Wire Line
	2450 3000 2550 3100
Entry Wire Line
	2450 3100 2550 3200
Entry Wire Line
	2450 3200 2550 3300
Text Label 2200 2800 0    39   ~ 0
~STROBE
Text Label 2200 2900 0    39   ~ 0
~ACK
Text Label 2200 3000 0    39   ~ 0
BUSY
Text Label 2200 3100 0    39   ~ 0
POUT
Text Label 2200 3200 0    39   ~ 0
SEL
Entry Wire Line
	4100 2800 4000 2900
Entry Wire Line
	4100 2900 4000 3000
Entry Wire Line
	4100 3000 4000 3100
Entry Wire Line
	4100 3100 4000 3200
Entry Wire Line
	4100 3200 4000 3300
Text Label 4300 2800 2    39   ~ 0
~STROBE
Text Label 4300 2900 2    39   ~ 0
~ACK
Text Label 4300 3000 2    39   ~ 0
BUSY
Text Label 4300 3100 2    39   ~ 0
POUT
Text Label 4300 3200 2    39   ~ 0
SEL
$Comp
L GND #PWR?
U 1 1 572F6472
P 2800 3600
F 0 "#PWR?" H 2800 3350 50  0001 C CNN
F 1 "GND" H 2800 3450 50  0000 C CNN
F 2 "" H 2800 3600 50  0000 C CNN
F 3 "" H 2800 3600 50  0000 C CNN
	1    2800 3600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 572F6572
P 3100 3100
F 0 "C?" H 3125 3200 50  0000 L CNN
F 1 "100nF" H 3125 3000 50  0000 L CNN
F 2 "" H 3138 2950 50  0000 C CNN
F 3 "" H 3100 3100 50  0000 C CNN
	1    3100 3100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 572F6928
P 2800 3100
F 0 "C?" H 2825 3200 50  0000 L CNN
F 1 "100nF" H 2825 3000 50  0000 L CNN
F 2 "" H 2838 2950 50  0000 C CNN
F 3 "" H 2800 3100 50  0000 C CNN
	1    2800 3100
	1    0    0    -1  
$EndComp
Text Notes 2250 1150 0    197  ~ 0
ATmega - Parallel
Text Notes 10650 7650 0    197  ~ 0
SD Card
Text GLabel 6100 2400 2    39   Input ~ 0
AVR_MOSI
Text GLabel 6100 2500 2    39   Input ~ 0
AVR_MISO
Text GLabel 6100 2600 2    39   Input ~ 0
AVR_SCK
Text GLabel 6100 2300 2    39   Input ~ 0
ETH_CS
Text GLabel 6100 2200 2    39   Input ~ 0
SD_CS
Text GLabel 6100 2800 2    39   Input ~ 0
SD_DETECT
Text GLabel 6100 2100 2    39   Input ~ 0
SD_LOCK
Text GLabel 3900 2600 0    39   Input ~ 0
AVR_RESET
Text GLabel 10900 6450 0    39   Input ~ 0
SD_CS
Text GLabel 13550 8450 2    39   Input ~ 0
SD_DETECT
Text GLabel 13550 8550 2    39   Input ~ 0
SD_LOCK
Text GLabel 10900 6550 0    39   Input ~ 0
AVR_MOSI
Text GLabel 10900 6650 0    39   Input ~ 0
AVR_SCK
$Comp
L SD_SPI CON?
U 1 1 5730AD73
P 12350 8650
F 0 "CON?" H 11700 9200 50  0000 C CNN
F 1 "SD_SPI" H 12950 8100 50  0000 C CNN
F 2 "10067847-001" H 12550 9000 50  0000 C CNN
F 3 "" H 12350 8650 50  0000 C CNN
	1    12350 8650
	1    0    0    -1  
$EndComp
Text Notes 10650 5250 0    197  ~ 0
Level shifting
Text GLabel 10900 6350 0    39   Input ~ 0
ETH_CS
Text GLabel 13600 6350 2    39   Input ~ 0
3.3V_ETH_CS
Text GLabel 13600 6450 2    39   Input ~ 0
3.3V_SD_CS
Text GLabel 13600 6550 2    39   Input ~ 0
3.3V_AVR_MOSI
Text GLabel 13600 6650 2    39   Input ~ 0
3.3V_AVR_SCK
$Comp
L +5V #PWR?
U 1 1 573103D2
P 12250 5550
F 0 "#PWR?" H 12250 5400 50  0001 C CNN
F 1 "+5V" H 12250 5690 50  0000 C CNN
F 2 "" H 12250 5550 50  0000 C CNN
F 3 "" H 12250 5550 50  0000 C CNN
	1    12250 5550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 573108F1
P 13450 5550
F 0 "#PWR?" H 13450 5400 50  0001 C CNN
F 1 "+3.3V" H 13450 5690 50  0000 C CNN
F 2 "" H 13450 5550 50  0000 C CNN
F 3 "" H 13450 5550 50  0000 C CNN
	1    13450 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57310F0D
P 11250 6900
F 0 "#PWR?" H 11250 6650 50  0001 C CNN
F 1 "GND" H 11250 6750 50  0000 C CNN
F 2 "" H 11250 6900 50  0000 C CNN
F 3 "" H 11250 6900 50  0000 C CNN
	1    11250 6900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 573169B6
P 11300 8050
F 0 "#PWR?" H 11300 7900 50  0001 C CNN
F 1 "+3.3V" H 11300 8190 50  0000 C CNN
F 2 "" H 11300 8050 50  0000 C CNN
F 3 "" H 11300 8050 50  0000 C CNN
	1    11300 8050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57316E23
P 11250 9350
F 0 "#PWR?" H 11250 9100 50  0001 C CNN
F 1 "GND" H 11250 9200 50  0000 C CNN
F 2 "" H 11250 9350 50  0000 C CNN
F 3 "" H 11250 9350 50  0000 C CNN
	1    11250 9350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5731B180
P 2200 4500
F 0 "#PWR?" H 2200 4250 50  0001 C CNN
F 1 "GND" H 2200 4350 50  0000 C CNN
F 2 "" H 2200 4500 50  0000 C CNN
F 3 "" H 2200 4500 50  0000 C CNN
	1    2200 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5731B58B
P 6100 4200
F 0 "#PWR?" H 6100 3950 50  0001 C CNN
F 1 "GND" H 6100 4050 50  0000 C CNN
F 2 "" H 6100 4200 50  0000 C CNN
F 3 "" H 6100 4200 50  0000 C CNN
	1    6100 4200
	-1   0    0    -1  
$EndComp
Text GLabel 11050 8550 0    39   Input ~ 0
3.3V_SD_CS
Text GLabel 11050 8650 0    39   Input ~ 0
3.3V_AVR_MOSI
Text GLabel 11050 8750 0    39   Input ~ 0
3.3V_AVR_SCK
Text GLabel 13600 6250 2    39   Input ~ 0
AVR_MISO
Text Notes 2250 5250 0    197  ~ 0
Ethernet
Text Notes 2250 9150 0    197  ~ 0
ISP
Text GLabel 3250 10000 2    39   Input ~ 0
AVR_MOSI
Text GLabel 2150 9900 0    39   Input ~ 0
AVR_MISO
Text GLabel 2150 10000 0    39   Input ~ 0
AVR_SCK
Text GLabel 2150 10100 0    39   Input ~ 0
AVR_RESET
$Comp
L GND #PWR?
U 1 1 57323FEC
P 3250 10250
F 0 "#PWR?" H 3250 10000 50  0001 C CNN
F 1 "GND" H 3250 10100 50  0000 C CNN
F 2 "" H 3250 10250 50  0000 C CNN
F 3 "" H 3250 10250 50  0000 C CNN
	1    3250 10250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5732401E
P 3250 9700
F 0 "#PWR?" H 3250 9550 50  0001 C CNN
F 1 "+5V" H 3250 9840 50  0000 C CNN
F 2 "" H 3250 9700 50  0000 C CNN
F 3 "" H 3250 9700 50  0000 C CNN
	1    3250 9700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5732683D
P 7400 2500
F 0 "#PWR?" H 7400 2350 50  0001 C CNN
F 1 "+5V" H 7400 2640 50  0000 C CNN
F 2 "" H 7400 2500 50  0000 C CNN
F 3 "" H 7400 2500 50  0000 C CNN
	1    7400 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57326B57
P 7400 3000
F 0 "#PWR?" H 7400 2750 50  0001 C CNN
F 1 "GND" H 7400 2850 50  0000 C CNN
F 2 "" H 7400 3000 50  0000 C CNN
F 3 "" H 7400 3000 50  0000 C CNN
	1    7400 3000
	1    0    0    -1  
$EndComp
$Comp
L CFPS-72-20M G?
U 1 1 57327DFF
P 6950 2750
F 0 "G?" H 6700 2950 60  0000 L BNN
F 1 "CFPS-72-20M" H 6950 2550 60  0000 C TNN
F 2 "" H 6950 2750 60  0000 C CNN
F 3 "" H 6950 2750 60  0000 C CNN
	1    6950 2750
	1    0    0    -1  
$EndComp
Text Notes 10650 1150 0    197  ~ 0
Power supply
$Comp
L USB_OTG P?
U 1 1 572F21E1
P 12800 2500
F 0 "P?" H 13125 2375 50  0000 C CNN
F 1 "USB_OTG" H 12800 2700 50  0000 C CNN
F 2 "" V 12750 2400 50  0000 C CNN
F 3 "" V 12750 2400 50  0000 C CNN
	1    12800 2500
	1    0    0    -1  
$EndComp
Text GLabel 9150 3550 0    39   Input ~ 0
POE_+24V
Text GLabel 9150 4300 0    39   Input ~ 0
POE_GND
$Comp
L CP C?
U 1 1 572F70DF
P 9250 3900
F 0 "C?" H 9275 4000 50  0000 L CNN
F 1 "100uF" H 9275 3800 50  0000 L CNN
F 2 "" H 9288 3750 50  0000 C CNN
F 3 "" H 9250 3900 50  0000 C CNN
	1    9250 3900
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D?
U 1 1 572F75A9
P 10850 3850
F 0 "D?" H 10850 3950 50  0000 C CNN
F 1 "SS34 E3/57T" H 10850 3750 50  0000 C CNN
F 2 "" H 10850 3850 50  0000 C CNN
F 3 "" H 10850 3850 50  0000 C CNN
	1    10850 3850
	0    1    1    0   
$EndComp
$Comp
L INDUCTOR L?
U 1 1 572F76A9
P 11250 3450
F 0 "L?" V 11200 3450 50  0000 C CNN
F 1 "100uH" V 11350 3450 50  0000 C CNN
F 2 "" H 11250 3450 50  0000 C CNN
F 3 "" H 11250 3450 50  0000 C CNN
	1    11250 3450
	0    -1   -1   0   
$EndComp
$Comp
L CP C?
U 1 1 572F7A9F
P 11650 3900
F 0 "C?" H 11675 4000 50  0000 L CNN
F 1 "220uF" H 11675 3800 50  0000 L CNN
F 2 "" H 11688 3750 50  0000 C CNN
F 3 "" H 11650 3900 50  0000 C CNN
	1    11650 3900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 572F8249
P 13200 3900
F 0 "C?" H 13225 4000 50  0000 L CNN
F 1 "100nF" H 13225 3800 50  0000 L CNN
F 2 "" H 13238 3750 50  0000 C CNN
F 3 "" H 13200 3900 50  0000 C CNN
	1    13200 3900
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 572FAA3C
P 14400 3900
F 0 "C?" H 14425 4000 50  0000 L CNN
F 1 "47uF" H 14425 3800 50  0000 L CNN
F 2 "" H 14438 3750 50  0000 C CNN
F 3 "" H 14400 3900 50  0000 C CNN
	1    14400 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 572FCD8A
P 15050 4300
F 0 "#PWR?" H 15050 4050 50  0001 C CNN
F 1 "GND" H 15050 4150 50  0000 C CNN
F 2 "" H 15050 4300 50  0000 C CNN
F 3 "" H 15050 4300 50  0000 C CNN
	1    15050 4300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 572FDDFD
P 15050 3550
F 0 "#PWR?" H 15050 3400 50  0001 C CNN
F 1 "+3.3V" H 15050 3690 50  0000 C CNN
F 2 "" H 15050 3550 50  0000 C CNN
F 3 "" H 15050 3550 50  0000 C CNN
	1    15050 3550
	1    0    0    -1  
$EndComp
$Comp
L IRF7309 U?
U 1 1 5730086F
P 12100 3100
F 0 "U?" H 12250 3700 60  0000 C CNN
F 1 "IRF7309" H 12000 3100 60  0000 C CNN
F 2 "" H 12250 3300 60  0000 C CNN
F 3 "" H 12250 3300 60  0000 C CNN
	1    12100 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57309146
P 11500 3000
F 0 "#PWR?" H 11500 2750 50  0001 C CNN
F 1 "GND" H 11500 2850 50  0000 C CNN
F 2 "" H 11500 3000 50  0000 C CNN
F 3 "" H 11500 3000 50  0000 C CNN
	1    11500 3000
	1    0    0    -1  
$EndComp
$Comp
L LM2596_5.0 U?
U 1 1 572F3567
P 10050 3650
F 0 "U?" H 10050 4000 60  0000 C CNN
F 1 "LM2596_5.0" H 10050 3650 60  0000 C CNN
F 2 "" H 10300 3450 60  0000 C CNN
F 3 "" H 10300 3450 60  0000 C CNN
	1    10050 3650
	1    0    0    -1  
$EndComp
Text GLabel 11050 8850 0    39   Input ~ 0
3.3V_AVR_MISO
Text GLabel 10900 6250 0    39   Input ~ 0
3.3V_AVR_MISO
$Comp
L 74LS07 U?
U 1 1 5734F6AD
P 11650 6400
F 0 "U?" H 11450 6900 60  0000 L BNN
F 1 "74LS07" H 11650 5900 60  0000 C TNN
F 2 "" H 11650 5900 118 0000 C CNN
F 3 "" H 11650 5900 118 0000 C CNN
	1    11650 6400
	1    0    0    -1  
$EndComp
$Comp
L AMS1117_3V3 U?
U 1 1 573584C3
P 13800 3700
F 0 "U?" H 13500 4000 60  0000 L BNN
F 1 "AMS1117_3V3" H 13800 3700 60  0000 C CNN
F 2 "" H 13800 3800 60  0000 C CNN
F 3 "" H 13800 3800 60  0000 C CNN
	1    13800 3700
	1    0    0    -1  
$EndComp
$Comp
L ENC28J60 U?
U 1 1 57373175
P 4650 7050
F 0 "U?" H 4650 8050 60  0000 C CNN
F 1 "ENC28J60" H 4650 6050 60  0000 C CNN
F 2 "" H 4650 7250 60  0000 C CNN
F 3 "" H 4650 7250 60  0000 C CNN
	1    4650 7050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 573743CC
P 3950 5600
F 0 "#PWR?" H 3950 5450 50  0001 C CNN
F 1 "+3.3V" H 3950 5740 50  0000 C CNN
F 2 "" H 3950 5600 50  0000 C CNN
F 3 "" H 3950 5600 50  0000 C CNN
	1    3950 5600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57374F9F
P 3850 6750
F 0 "C?" H 3875 6850 50  0000 L CNN
F 1 "100nF" H 3875 6650 50  0000 L CNN
F 2 "" H 3888 6600 50  0000 C CNN
F 3 "" H 3850 6750 50  0000 C CNN
	1    3850 6750
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 57375B80
P 3450 6750
F 0 "C?" H 3475 6850 50  0000 L CNN
F 1 "100nF" H 3475 6650 50  0000 L CNN
F 2 "" H 3488 6600 50  0000 C CNN
F 3 "" H 3450 6750 50  0000 C CNN
	1    3450 6750
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 57375BFB
P 3050 6750
F 0 "C?" H 3075 6850 50  0000 L CNN
F 1 "100nF" H 3075 6650 50  0000 L CNN
F 2 "" H 3088 6600 50  0000 C CNN
F 3 "" H 3050 6750 50  0000 C CNN
	1    3050 6750
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 57375C7B
P 2650 6750
F 0 "C?" H 2675 6850 50  0000 L CNN
F 1 "100nF" H 2675 6650 50  0000 L CNN
F 2 "" H 2688 6600 50  0000 C CNN
F 3 "" H 2650 6750 50  0000 C CNN
	1    2650 6750
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 57375CFE
P 2250 6750
F 0 "C?" H 2275 6850 50  0000 L CNN
F 1 "100nF" H 2275 6650 50  0000 L CNN
F 2 "" H 2288 6600 50  0000 C CNN
F 3 "" H 2250 6750 50  0000 C CNN
	1    2250 6750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 57377AAC
P 2250 8300
F 0 "#PWR?" H 2250 8050 50  0001 C CNN
F 1 "GND" H 2250 8150 50  0000 C CNN
F 2 "" H 2250 8300 50  0000 C CNN
F 3 "" H 2250 8300 50  0000 C CNN
	1    2250 8300
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 5737A2C0
P 3450 8100
F 0 "C?" H 3475 8200 50  0000 L CNN
F 1 "10uF ESR" H 3475 8000 50  0000 L CNN
F 2 "" H 3488 7950 50  0000 C CNN
F 3 "" H 3450 8100 50  0000 C CNN
	1    3450 8100
	1    0    0    -1  
$EndComp
Text GLabel 3750 7300 0    39   Input ~ 0
3.3V_ETH_CS
Text GLabel 3750 7200 0    39   Input ~ 0
3.3V_AVR_SCK
Text GLabel 3750 7100 0    39   Input ~ 0
3.3V_AVR_MOSI
Text GLabel 3750 7000 0    39   Input ~ 0
3.3V_AVR_MISO
$Comp
L Crystal_Small Y?
U 1 1 573A3AC7
P 5850 7600
F 0 "Y?" H 5850 7700 50  0000 C CNN
F 1 "25M" H 5850 7500 50  0000 C CNN
F 2 "" H 5850 7600 50  0000 C CNN
F 3 "" H 5850 7600 50  0000 C CNN
	1    5850 7600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 573A4441
P 5650 7950
F 0 "C?" H 5675 8050 50  0000 L CNN
F 1 "18pF" H 5675 7850 50  0000 L CNN
F 2 "" H 5688 7800 50  0000 C CNN
F 3 "" H 5650 7950 50  0000 C CNN
	1    5650 7950
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 573A45AC
P 6050 7950
F 0 "C?" H 6075 8050 50  0000 L CNN
F 1 "18pF" H 6075 7850 50  0000 L CNN
F 2 "" H 6088 7800 50  0000 C CNN
F 3 "" H 6050 7950 50  0000 C CNN
	1    6050 7950
	-1   0    0    1   
$EndComp
$Comp
L RJ45_C J?
U 1 1 573AC347
P 8000 6350
F 0 "J?" H 8000 5900 50  0000 C CNN
F 1 "RJ45_C" H 8000 6750 50  0000 C CNN
F 2 "" H 8000 6400 50  0000 C CNN
F 3 "" H 8000 6400 50  0000 C CNN
	1    8000 6350
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L?
U 1 1 5737B0DF
P 5550 5700
F 0 "L?" V 5500 5700 50  0000 C CNN
F 1 "FB 100mA" V 5650 5700 50  0000 C CNN
F 2 "" H 5550 5700 50  0000 C CNN
F 3 "" H 5550 5700 50  0000 C CNN
	1    5550 5700
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5739E401
P 6950 7950
F 0 "C?" H 6975 8050 50  0000 L CNN
F 1 "10nF" H 6975 7850 50  0000 L CNN
F 2 "" H 6988 7800 50  0000 C CNN
F 3 "" H 6950 7950 50  0000 C CNN
	1    6950 7950
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 573ADF68
P 6450 7950
F 0 "C?" H 6475 8050 50  0000 L CNN
F 1 "10nF" H 6475 7850 50  0000 L CNN
F 2 "" H 6488 7800 50  0000 C CNN
F 3 "" H 6450 7950 50  0000 C CNN
	1    6450 7950
	-1   0    0    1   
$EndComp
Text GLabel 7800 5600 2    39   Input ~ 0
POE_GND
Wire Bus Line
	4000 2900 4000 4400
Wire Wire Line
	4300 3400 4100 3400
Wire Wire Line
	4100 3500 4300 3500
Wire Wire Line
	4300 3600 4100 3600
Wire Wire Line
	4300 3700 4100 3700
Wire Wire Line
	4300 3800 4100 3800
Wire Wire Line
	4300 3900 4100 3900
Wire Wire Line
	4300 4000 4100 4000
Wire Wire Line
	4300 4100 4100 4100
Wire Wire Line
	2200 2800 2450 2800
Wire Wire Line
	2200 2900 2450 2900
Wire Wire Line
	2200 3000 2450 3000
Wire Wire Line
	2200 3100 2450 3100
Wire Wire Line
	2200 3200 2450 3200
Wire Wire Line
	4100 2800 4300 2800
Wire Wire Line
	4100 2900 4300 2900
Wire Wire Line
	4100 3000 4300 3000
Wire Wire Line
	4100 3100 4300 3100
Wire Wire Line
	4100 3200 4300 3200
Wire Wire Line
	2200 3700 2200 4500
Wire Wire Line
	5900 2200 6100 2200
Wire Wire Line
	6100 2300 5900 2300
Wire Wire Line
	6100 2400 5900 2400
Wire Wire Line
	6100 2500 5900 2500
Wire Wire Line
	6100 2600 5900 2600
Wire Wire Line
	6100 2800 5900 2800
Wire Wire Line
	6100 2100 5900 2100
Wire Wire Line
	13250 8450 13550 8450
Wire Wire Line
	13250 8550 13550 8550
Wire Wire Line
	10900 6350 11250 6350
Wire Wire Line
	10900 6450 11250 6450
Wire Wire Line
	10900 6550 11250 6550
Wire Wire Line
	10900 6650 11250 6650
Wire Wire Line
	12050 6350 13600 6350
Wire Wire Line
	12050 6450 13600 6450
Wire Wire Line
	12050 6550 13600 6550
Wire Wire Line
	12550 5650 13450 5650
Connection ~ 12850 5650
Connection ~ 13150 5650
Connection ~ 12550 6350
Connection ~ 12850 6450
Connection ~ 13150 6550
Wire Wire Line
	12050 6650 13600 6650
Connection ~ 13450 6650
Wire Wire Line
	13450 5550 13450 5750
Wire Wire Line
	11250 6750 11250 6900
Wire Wire Line
	11300 8050 11300 8250
Wire Wire Line
	10250 8250 11450 8250
Wire Wire Line
	11450 9050 11250 9050
Wire Wire Line
	11250 8950 11250 9350
Wire Wire Line
	11450 8950 11250 8950
Connection ~ 11250 9050
Wire Wire Line
	12550 5650 12550 5750
Wire Wire Line
	12850 5650 12850 5750
Wire Wire Line
	13150 5650 13150 5750
Connection ~ 13450 5650
Wire Wire Line
	12550 6050 12550 6350
Wire Wire Line
	12850 6050 12850 6450
Wire Wire Line
	13150 6050 13150 6550
Wire Wire Line
	13450 6050 13450 6650
Wire Wire Line
	2800 2100 2800 2950
Wire Wire Line
	6100 4100 5900 4100
Wire Wire Line
	6100 4000 5900 4000
Wire Wire Line
	6100 3900 6100 4200
Connection ~ 6100 4100
Wire Wire Line
	11050 8550 11450 8550
Wire Wire Line
	11050 8650 11450 8650
Wire Wire Line
	11050 8750 11450 8750
Wire Wire Line
	11050 8850 11450 8850
Wire Wire Line
	3250 10000 2850 10000
Wire Wire Line
	2150 9900 2600 9900
Wire Wire Line
	2150 10000 2600 10000
Wire Wire Line
	2150 10100 2600 10100
Wire Wire Line
	3250 9900 2850 9900
Wire Wire Line
	3250 10250 3250 10100
Wire Wire Line
	3250 10100 2850 10100
Wire Wire Line
	3250 9700 3250 9900
Wire Wire Line
	6500 2700 5900 2700
Wire Wire Line
	7400 2800 7400 3000
Wire Wire Line
	7400 2700 7400 2500
Wire Wire Line
	12700 2800 13200 2800
Wire Wire Line
	9150 3550 9350 3550
Wire Wire Line
	9850 4300 9850 4100
Wire Wire Line
	9250 2600 9250 3750
Connection ~ 9250 3550
Wire Wire Line
	9250 4050 9250 4300
Connection ~ 9250 4300
Wire Wire Line
	10850 3550 10850 3700
Wire Wire Line
	10950 3450 10750 3450
Wire Wire Line
	11650 3450 11650 3750
Wire Wire Line
	11650 4300 11650 4050
Connection ~ 9850 4300
Wire Wire Line
	10850 4300 10850 4000
Connection ~ 10850 4300
Connection ~ 10850 3550
Connection ~ 11650 4300
Connection ~ 13000 4300
Wire Wire Line
	13800 4300 13800 4200
Wire Wire Line
	13200 3550 13200 3750
Wire Wire Line
	13200 4300 13200 4050
Connection ~ 13200 4300
Wire Wire Line
	14400 3750 14400 3550
Wire Wire Line
	14400 4300 14400 4050
Connection ~ 13800 4300
Connection ~ 14400 3550
Connection ~ 14400 4300
Connection ~ 12800 2800
Connection ~ 12900 2800
Wire Wire Line
	13000 4300 13000 2800
Wire Wire Line
	13200 2800 13200 2400
Connection ~ 13000 2800
Connection ~ 11650 3550
Wire Wire Line
	12200 3550 13300 3550
Connection ~ 13200 3550
Wire Wire Line
	12600 2800 12600 3000
Connection ~ 12600 3550
Wire Wire Line
	11550 3450 11650 3450
Wire Wire Line
	11400 2600 12150 2600
Connection ~ 12050 2600
Wire Wire Line
	11500 2700 11500 2600
Connection ~ 11500 2600
Wire Wire Line
	10250 4300 10250 4100
Connection ~ 10250 4300
Wire Wire Line
	11100 2600 9250 2600
Wire Wire Line
	12250 5550 12250 5750
Wire Wire Line
	12250 5650 12050 5650
Wire Wire Line
	12050 5650 12050 6050
Connection ~ 12250 5650
Wire Wire Line
	12250 6050 12250 6250
Wire Wire Line
	12050 6250 13600 6250
Connection ~ 12250 6250
Wire Wire Line
	10900 6250 11250 6250
Wire Wire Line
	2250 6200 4050 6200
Wire Wire Line
	2650 6300 4050 6300
Wire Wire Line
	3050 6400 4050 6400
Wire Wire Line
	3450 6500 4050 6500
Wire Wire Line
	3850 6600 4050 6600
Wire Wire Line
	3950 5600 3950 6600
Connection ~ 3950 6200
Connection ~ 3950 6300
Connection ~ 3950 6400
Connection ~ 3950 6500
Connection ~ 3950 6600
Wire Wire Line
	2250 6900 3850 6900
Wire Wire Line
	2250 6900 2250 8300
Connection ~ 2250 6900
Wire Wire Line
	2650 6900 2650 6900
Connection ~ 2650 6900
Wire Wire Line
	3050 6900 3050 6900
Connection ~ 3050 6900
Wire Wire Line
	3450 6900 3450 6900
Connection ~ 3450 6900
Connection ~ 2250 8250
Wire Wire Line
	2250 8250 8300 8250
Connection ~ 3450 8250
Wire Wire Line
	3450 7950 3450 7800
Wire Wire Line
	3450 7800 4050 7800
Wire Wire Line
	4050 7900 3950 7900
Wire Wire Line
	3950 7900 3950 7950
Wire Wire Line
	3750 7000 4050 7000
Wire Wire Line
	3750 7100 4050 7100
Wire Wire Line
	3750 7200 4050 7200
Wire Wire Line
	3750 7300 4050 7300
Wire Wire Line
	5350 7900 5250 7900
Wire Wire Line
	5350 7500 5350 8250
Connection ~ 3950 8250
Wire Wire Line
	5250 7800 5350 7800
Connection ~ 5350 7900
Wire Wire Line
	5250 7700 5350 7700
Connection ~ 5350 7800
Wire Wire Line
	5250 7600 5350 7600
Connection ~ 5350 7700
Wire Wire Line
	5250 7500 5350 7500
Connection ~ 5350 7600
Wire Wire Line
	5250 6200 5250 6200
Wire Wire Line
	5750 7600 5650 7600
Wire Wire Line
	5650 7300 5650 7800
Wire Wire Line
	5950 7600 6050 7600
Wire Wire Line
	6050 7200 6050 7800
Wire Wire Line
	5650 8250 5650 8100
Connection ~ 5350 8250
Wire Wire Line
	6050 8250 6050 8100
Connection ~ 5650 8250
Wire Wire Line
	5250 7300 5650 7300
Connection ~ 5650 7600
Wire Wire Line
	5250 7200 6050 7200
Connection ~ 6050 7600
Wire Wire Line
	7600 8250 7600 7600
Connection ~ 6050 8250
Wire Wire Line
	8300 8250 8300 7600
Connection ~ 7600 8250
Wire Wire Line
	5250 7000 8400 7000
Wire Wire Line
	8400 7000 8400 6850
Wire Wire Line
	7700 6900 7700 6850
Wire Wire Line
	5250 6900 7700 6900
Wire Wire Line
	7600 6850 7600 7300
Wire Wire Line
	8300 6850 8300 7300
Wire Wire Line
	5250 6400 5550 6400
Wire Wire Line
	5550 6400 5550 6200
Wire Wire Line
	5550 6200 7400 6200
Wire Wire Line
	5250 6500 5650 6500
Wire Wire Line
	5650 6500 5650 6300
Wire Wire Line
	5650 6300 7400 6300
Wire Wire Line
	5250 6600 5750 6600
Wire Wire Line
	5750 6600 5750 6400
Wire Wire Line
	5750 6400 7400 6400
Wire Wire Line
	5250 6700 5850 6700
Wire Wire Line
	5850 6700 5850 6500
Wire Wire Line
	5850 6500 7400 6500
Wire Wire Line
	5900 6100 5900 6200
Connection ~ 5900 6200
Wire Wire Line
	6200 6100 6200 6300
Connection ~ 6200 6300
Wire Wire Line
	5850 5700 6450 5700
Wire Wire Line
	5900 5700 5900 5800
Connection ~ 5900 5700
Wire Wire Line
	6200 5700 6200 5800
Wire Wire Line
	5250 5700 5250 5800
Wire Wire Line
	5250 6100 5250 6200
Wire Wire Line
	5250 5700 3950 5700
Connection ~ 3950 5700
Wire Wire Line
	6750 7300 6750 6400
Connection ~ 6750 6400
Wire Wire Line
	7150 7300 7150 6500
Connection ~ 7150 6500
Connection ~ 6950 7700
Wire Wire Line
	6950 8100 6950 8250
Connection ~ 6950 8250
Wire Wire Line
	6450 5700 6450 7800
Connection ~ 6200 5700
Wire Wire Line
	6450 8100 6450 8250
Connection ~ 6450 8250
Wire Wire Line
	7700 5600 7700 5800
Connection ~ 7700 5700
Text GLabel 8500 5600 2    39   Input ~ 0
POE_+24V
Wire Wire Line
	8400 5700 8400 5700
Wire Wire Line
	8400 5600 8400 5800
Wire Wire Line
	7700 5600 7800 5600
Wire Wire Line
	8400 5600 8500 5600
Wire Wire Line
	3450 8250 3450 8250
Wire Wire Line
	13350 9250 10250 9250
Connection ~ 11250 9250
NoConn ~ 4050 6700
NoConn ~ 4050 6800
NoConn ~ 11250 6150
NoConn ~ 12050 6150
NoConn ~ 2200 3300
NoConn ~ 2200 3400
NoConn ~ 2200 3500
NoConn ~ 2200 3600
Wire Wire Line
	10750 3550 12000 3550
NoConn ~ 12100 3550
NoConn ~ 12600 3100
Wire Wire Line
	12600 3200 12600 3550
NoConn ~ 8300 5800
NoConn ~ 7600 5800
Wire Wire Line
	7150 7700 7150 7600
Wire Wire Line
	14300 3550 15050 3550
Connection ~ 14800 3550
Wire Wire Line
	9150 4300 15050 4300
Wire Wire Line
	14800 4300 14800 4250
Connection ~ 14800 4300
$Comp
L ATMEGA328P IC?
U 1 1 573CD45A
P 5100 3100
F 0 "IC?" H 4450 4250 50  0000 L BNN
F 1 "ATMEGA328P" H 5750 1950 50  0000 R TNN
F 2 "TQFP32" H 5100 3100 50  0000 C CIN
F 3 "" H 5200 3000 50  0000 C CNN
	1    5100 3100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 573D6384
P 3400 3100
F 0 "C?" H 3425 3200 50  0000 L CNN
F 1 "100nF" H 3425 3000 50  0000 L CNN
F 2 "" H 3438 2950 50  0000 C CNN
F 3 "" H 3400 3100 50  0000 C CNN
	1    3400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2100 4300 2100
Wire Wire Line
	3100 2950 3100 2200
Wire Wire Line
	3100 2200 4300 2200
Wire Wire Line
	3400 2300 4300 2300
Wire Wire Line
	2200 2700 2450 2700
Wire Wire Line
	2200 2600 2450 2600
Wire Wire Line
	2200 2500 2450 2500
Wire Wire Line
	2200 2400 2450 2400
Wire Wire Line
	2200 2300 2450 2300
Wire Wire Line
	2200 2200 2450 2200
Wire Wire Line
	2200 2100 2450 2100
Wire Wire Line
	2200 2000 2450 2000
Wire Wire Line
	5900 3900 6100 3900
Connection ~ 6100 4000
Wire Wire Line
	3400 2300 3400 2950
Wire Bus Line
	2550 4400 4000 4400
Wire Bus Line
	2550 2100 2550 4400
Wire Wire Line
	4100 1900 4100 2300
Connection ~ 4100 2100
Connection ~ 4100 2200
Connection ~ 4100 2300
Wire Wire Line
	3900 2600 4300 2600
Connection ~ 4100 2600
NoConn ~ 5900 3500
NoConn ~ 5900 3600
NoConn ~ 5900 3700
Wire Wire Line
	4300 2700 3750 2700
Wire Wire Line
	2800 3500 3750 3500
Wire Wire Line
	2800 3250 2800 3600
Connection ~ 2800 3500
Wire Wire Line
	3100 3250 3100 3500
Connection ~ 3100 3500
Wire Wire Line
	3400 3250 3400 3500
Connection ~ 3400 3500
Wire Wire Line
	3750 3500 3750 3450
Wire Wire Line
	2250 6200 2250 6600
Wire Wire Line
	2650 6300 2650 6600
Wire Wire Line
	3050 6400 3050 6600
Wire Wire Line
	3450 6500 3450 6600
Wire Wire Line
	6950 7800 6950 7700
Wire Wire Line
	6750 7700 7150 7700
Wire Wire Line
	6750 7700 6750 7600
$Comp
L Resistor R?
U 1 1 57448B85
P 5250 5950
F 0 "R?" V 5150 5950 50  0000 C CNN
F 1 "10k" V 5350 5950 50  0000 C CNN
F 2 "" V 5180 5950 50  0000 C CNN
F 3 "" H 5250 5950 50  0000 C CNN
	1    5250 5950
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 57449C8A
P 5900 5950
F 0 "R?" V 5800 5950 50  0000 C CNN
F 1 "49R9 1%" V 6000 5950 50  0000 C CNN
F 2 "" V 5830 5950 50  0000 C CNN
F 3 "" H 5900 5950 50  0000 C CNN
	1    5900 5950
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 57449F2D
P 6200 5950
F 0 "R?" V 6100 5950 50  0000 C CNN
F 1 "49R9 1%" V 6300 5950 50  0000 C CNN
F 2 "" V 6130 5950 50  0000 C CNN
F 3 "" H 6200 5950 50  0000 C CNN
	1    6200 5950
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 5744B443
P 6750 7450
F 0 "R?" V 6650 7450 50  0000 C CNN
F 1 "49R9 1%" V 6850 7450 50  0000 C CNN
F 2 "" V 6680 7450 50  0000 C CNN
F 3 "" H 6750 7450 50  0000 C CNN
	1    6750 7450
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 5744B6F3
P 7150 7450
F 0 "R?" V 7050 7450 50  0000 C CNN
F 1 "49R9 1%" V 7250 7450 50  0000 C CNN
F 2 "" V 7080 7450 50  0000 C CNN
F 3 "" H 7150 7450 50  0000 C CNN
	1    7150 7450
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 5744BCD6
P 7600 7450
F 0 "R?" V 7500 7450 50  0000 C CNN
F 1 "270R" V 7700 7450 50  0000 C CNN
F 2 "" V 7530 7450 50  0000 C CNN
F 3 "" H 7600 7450 50  0000 C CNN
	1    7600 7450
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 5744BF14
P 8300 7450
F 0 "R?" V 8200 7450 50  0000 C CNN
F 1 "270R" V 8400 7450 50  0000 C CNN
F 2 "" V 8230 7450 50  0000 C CNN
F 3 "" H 8300 7450 50  0000 C CNN
	1    8300 7450
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 5744D192
P 3950 8100
F 0 "R?" V 3850 8100 50  0000 C CNN
F 1 "2k7 1%" V 4050 8100 50  0000 C CNN
F 2 "" V 3880 8100 50  0000 C CNN
F 3 "" H 3950 8100 50  0000 C CNN
	1    3950 8100
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 57451471
P 4100 2450
F 0 "R?" V 4000 2450 50  0000 C CNN
F 1 "10k" V 4200 2450 50  0000 C CNN
F 2 "" V 4030 2450 50  0000 C CNN
F 3 "" H 4100 2450 50  0000 C CNN
	1    4100 2450
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 57452656
P 3750 3300
F 0 "R?" V 3650 3300 50  0000 C CNN
F 1 "120R" V 3850 3300 50  0000 C CNN
F 2 "" V 3680 3300 50  0000 C CNN
F 3 "" H 3750 3300 50  0000 C CNN
	1    3750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3100 3750 3150
$Comp
L plip_LED D?
U 1 1 57454D9E
P 3750 2900
F 0 "D?" H 3750 3000 50  0000 C CNN
F 1 "YEL_LED" H 3750 2800 50  0000 C TNN
F 2 "" H 3750 2900 50  0000 C CNN
F 3 "" H 3750 2900 50  0000 C CNN
	1    3750 2900
	0    -1   -1   0   
$EndComp
$Comp
L Resistor R?
U 1 1 574579B9
P 11250 2600
F 0 "R?" V 11150 2600 50  0000 C CNN
F 1 "470R" V 11350 2600 50  0000 C CNN
F 2 "" V 11180 2600 50  0000 C CNN
F 3 "" H 11250 2600 50  0000 C CNN
	1    11250 2600
	0    1    1    0   
$EndComp
$Comp
L Resistor R?
U 1 1 57458955
P 11500 2850
F 0 "R?" V 11400 2850 50  0000 C CNN
F 1 "2k7" V 11600 2850 50  0000 C CNN
F 2 "" V 11430 2850 50  0000 C CNN
F 3 "" H 11500 2850 50  0000 C CNN
	1    11500 2850
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 5745F74C
P 12250 5900
F 0 "R?" V 12150 5900 50  0000 C CNN
F 1 "4k7" V 12350 5900 50  0000 C CNN
F 2 "" V 12180 5900 50  0000 C CNN
F 3 "" H 12250 5900 50  0000 C CNN
	1    12250 5900
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 574601E2
P 12550 5900
F 0 "R?" V 12450 5900 50  0000 C CNN
F 1 "1k" V 12650 5900 50  0000 C CNN
F 2 "" V 12480 5900 50  0000 C CNN
F 3 "" H 12550 5900 50  0000 C CNN
	1    12550 5900
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 574602ED
P 12850 5900
F 0 "R?" V 12750 5900 50  0000 C CNN
F 1 "1k" V 12950 5900 50  0000 C CNN
F 2 "" V 12780 5900 50  0000 C CNN
F 3 "" H 12850 5900 50  0000 C CNN
	1    12850 5900
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 574603FC
P 13150 5900
F 0 "R?" V 13050 5900 50  0000 C CNN
F 1 "1k" V 13250 5900 50  0000 C CNN
F 2 "" V 13080 5900 50  0000 C CNN
F 3 "" H 13150 5900 50  0000 C CNN
	1    13150 5900
	1    0    0    -1  
$EndComp
$Comp
L Resistor R?
U 1 1 574604AA
P 13450 5900
F 0 "R?" V 13350 5900 50  0000 C CNN
F 1 "1k" V 13550 5900 50  0000 C CNN
F 2 "" V 13380 5900 50  0000 C CNN
F 3 "" H 13450 5900 50  0000 C CNN
	1    13450 5900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57463DB0
P 10250 8500
F 0 "C?" H 10275 8600 50  0000 L CNN
F 1 "100nF" H 10275 8400 50  0000 L CNN
F 2 "" H 10288 8350 50  0000 C CNN
F 3 "" H 10250 8500 50  0000 C CNN
	1    10250 8500
	1    0    0    -1  
$EndComp
Connection ~ 11300 8250
Wire Wire Line
	10250 9250 10250 8650
Wire Wire Line
	13350 8750 13350 9250
Wire Wire Line
	13350 8850 13250 8850
Wire Wire Line
	13350 8750 13250 8750
Connection ~ 13350 8850
Wire Wire Line
	10250 8250 10250 8350
$EndSCHEMATC