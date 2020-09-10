EESchema Schematic File Version 4
LIBS:proto-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C C1
U 1 1 5F253BDF
P 1000 1600
F 0 "C1" H 750 1650 50  0000 L CNN
F 1 "1µF" H 750 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1038 1450 50  0001 C CNN
F 3 "~" H 1000 1600 50  0001 C CNN
	1    1000 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F253F1E
P 2650 1700
F 0 "C4" H 2765 1746 50  0000 L CNN
F 1 "1µF" H 2765 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2688 1550 50  0001 C CNN
F 3 "~" H 2650 1700 50  0001 C CNN
	1    2650 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 5F254738
P 1000 1350
F 0 "#PWR0106" H 1000 1200 50  0001 C CNN
F 1 "VCC" H 1017 1523 50  0000 C CNN
F 2 "" H 1000 1350 50  0001 C CNN
F 3 "" H 1000 1350 50  0001 C CNN
	1    1000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1350 1000 1450
NoConn ~ 2550 1450
Connection ~ 1000 1450
$Comp
L power:+3.3V #PWR0107
U 1 1 5F26003D
P 2650 1350
F 0 "#PWR0107" H 2650 1200 50  0001 C CNN
F 1 "+3.3V" H 2665 1523 50  0000 C CNN
F 2 "" H 2650 1350 50  0001 C CNN
F 3 "" H 2650 1350 50  0001 C CNN
	1    2650 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F26361F
P 1000 1900
F 0 "#PWR0108" H 1000 1650 50  0001 C CNN
F 1 "GND" H 1005 1727 50  0000 C CNN
F 2 "" H 1000 1900 50  0001 C CNN
F 3 "" H 1000 1900 50  0001 C CNN
	1    1000 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F263A51
P 2650 1900
F 0 "#PWR0109" H 2650 1650 50  0001 C CNN
F 1 "GND" H 2655 1727 50  0000 C CNN
F 2 "" H 2650 1900 50  0001 C CNN
F 3 "" H 2650 1900 50  0001 C CNN
	1    2650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1900 2650 1850
Text GLabel 1450 1650 0    50   Input ~ 0
veille
$Comp
L Device:R R2
U 1 1 5F2933DE
P 5600 1500
F 0 "R2" H 5670 1546 50  0000 L CNN
F 1 "100K" H 5670 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5530 1500 50  0001 C CNN
F 3 "~" H 5600 1500 50  0001 C CNN
	1    5600 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F2939F4
P 6050 1950
F 0 "C6" H 6165 1996 50  0000 L CNN
F 1 "0.1µF" H 6165 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6088 1800 50  0001 C CNN
F 3 "~" H 6050 1950 50  0001 C CNN
	1    6050 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F293FEA
P 5600 2300
F 0 "#PWR0112" H 5600 2050 50  0001 C CNN
F 1 "GND" H 5605 2127 50  0000 C CNN
F 2 "" H 5600 2300 50  0001 C CNN
F 3 "" H 5600 2300 50  0001 C CNN
	1    5600 2300
	1    0    0    -1  
$EndComp
Text GLabel 5500 1300 0    50   Input ~ 0
+3.3V_Mini
Wire Wire Line
	5500 1300 5600 1300
Wire Wire Line
	5600 1300 5600 1350
Wire Wire Line
	5600 1650 5600 1700
Wire Wire Line
	5600 1700 6050 1700
Wire Wire Line
	6050 1700 6050 1800
Connection ~ 5600 1700
Wire Wire Line
	6050 2100 6050 2200
Wire Wire Line
	6050 2200 5600 2200
Connection ~ 5600 2200
Wire Wire Line
	5600 2200 5600 2300
$Comp
L Switch:SW_Push SW1
U 1 1 5F2A500F
P 3950 1950
F 0 "SW1" V 3996 1902 50  0000 R CNN
F 1 "SW_ble" V 3905 1902 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3950 2150 50  0001 C CNN
F 3 "" H 3950 2150 50  0001 C CNN
	1    3950 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F2A5019
P 3950 1500
F 0 "R1" H 4020 1546 50  0000 L CNN
F 1 "100K" H 4020 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 1500 50  0001 C CNN
F 3 "~" H 3950 1500 50  0001 C CNN
	1    3950 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F2A5023
P 4450 1950
F 0 "C2" H 4565 1996 50  0000 L CNN
F 1 "0.1µF" H 4565 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4488 1800 50  0001 C CNN
F 3 "~" H 4450 1950 50  0001 C CNN
	1    4450 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F2A502D
P 3950 2300
F 0 "#PWR0113" H 3950 2050 50  0001 C CNN
F 1 "GND" H 3955 2127 50  0000 C CNN
F 2 "" H 3950 2300 50  0001 C CNN
F 3 "" H 3950 2300 50  0001 C CNN
	1    3950 2300
	1    0    0    -1  
$EndComp
Text GLabel 3850 1300 0    50   Input ~ 0
+3.3V_Mini
Wire Wire Line
	3850 1300 3950 1300
Wire Wire Line
	3950 1300 3950 1350
Wire Wire Line
	3950 1650 3950 1700
Wire Wire Line
	3950 1700 4450 1700
Wire Wire Line
	4450 1700 4450 1800
Connection ~ 3950 1700
Wire Wire Line
	3950 1700 3950 1750
Wire Wire Line
	4450 2100 4450 2200
Wire Wire Line
	4450 2200 3950 2200
Wire Wire Line
	3950 2150 3950 2200
Connection ~ 3950 2200
Wire Wire Line
	3950 2200 3950 2300
Text GLabel 6150 1700 2    50   Output ~ 0
CapTOR
Wire Wire Line
	6150 1700 6050 1700
Connection ~ 6050 1700
Text GLabel 4500 1700 2    50   Output ~ 0
wakeblue
Wire Wire Line
	4450 1700 4500 1700
Connection ~ 4450 1700
Text Notes 5300 1000 0    50   ~ 0
Interrutpiton Capteur TOR
Text Notes 3650 1000 0    50   ~ 0
Interruption bluetooth
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5F44589E
P 5350 1900
F 0 "J8" H 5268 2117 50  0000 C CNN
F 1 "CapTOR" H 5268 2026 50  0000 C CNN
F 2 "SamacSys_Parts:250202" H 5350 1900 50  0001 C CNN
F 3 "~" H 5350 1900 50  0001 C CNN
	1    5350 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5600 1900 5550 1900
Wire Wire Line
	5600 1700 5600 1900
Wire Wire Line
	5550 2000 5600 2000
Wire Wire Line
	5600 2000 5600 2200
$Comp
L Device:R R7
U 1 1 5F45FF86
P 6950 1500
F 0 "R7" H 7020 1546 50  0000 L CNN
F 1 "5K" H 7020 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6880 1500 50  0001 C CNN
F 3 "~" H 6950 1500 50  0001 C CNN
	1    6950 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F45FF90
P 7400 1950
F 0 "C8" H 7515 1996 50  0000 L CNN
F 1 "0.1µF" H 7515 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7438 1800 50  0001 C CNN
F 3 "~" H 7400 1950 50  0001 C CNN
	1    7400 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5F45FF9A
P 6950 2300
F 0 "#PWR0127" H 6950 2050 50  0001 C CNN
F 1 "GND" H 6955 2127 50  0000 C CNN
F 2 "" H 6950 2300 50  0001 C CNN
F 3 "" H 6950 2300 50  0001 C CNN
	1    6950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1650 6950 1700
Wire Wire Line
	6950 1700 7400 1700
Wire Wire Line
	7400 1700 7400 1800
Connection ~ 6950 1700
Wire Wire Line
	7400 2100 7400 2200
Wire Wire Line
	7400 2200 6950 2200
Connection ~ 6950 2200
Wire Wire Line
	6950 2200 6950 2300
Text GLabel 7550 1700 2    50   Output ~ 0
CapAna
Wire Wire Line
	7550 1700 7500 1700
Connection ~ 7400 1700
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5F45FFB2
P 6700 1900
F 0 "J9" H 6618 2117 50  0000 C CNN
F 1 "CapAna" H 6618 2026 50  0000 C CNN
F 2 "SamacSys_Parts:250202" H 6700 1900 50  0001 C CNN
F 3 "~" H 6700 1900 50  0001 C CNN
	1    6700 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6950 1900 6900 1900
Wire Wire Line
	6950 1700 6950 1900
Wire Wire Line
	6900 2000 6950 2000
Wire Wire Line
	6950 2000 6950 2200
Wire Wire Line
	4800 3700 4800 3800
Wire Wire Line
	5250 3700 4800 3700
Wire Wire Line
	4800 3600 4800 3550
Wire Wire Line
	5250 3600 4800 3600
$Comp
L power:GND #PWR0124
U 1 1 5F3CE1BB
P 4800 3800
F 0 "#PWR0124" H 4800 3550 50  0001 C CNN
F 1 "GND" H 4805 3627 50  0000 C CNN
F 2 "" H 4800 3800 50  0001 C CNN
F 3 "" H 4800 3800 50  0001 C CNN
	1    4800 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0123
U 1 1 5F3BA9BE
P 4800 3550
F 0 "#PWR0123" H 4800 3400 50  0001 C CNN
F 1 "+3.3V" H 4815 3723 50  0000 C CNN
F 2 "" H 4800 3550 50  0001 C CNN
F 3 "" H 4800 3550 50  0001 C CNN
	1    4800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3500 5250 3500
Text GLabel 5200 3500 0    50   Input ~ 0
EN_ble
Wire Wire Line
	5200 3800 5250 3800
Text GLabel 5200 3800 0    50   Output ~ 0
RX_ble
Wire Wire Line
	5200 3900 5250 3900
Text GLabel 5200 3900 0    50   Input ~ 0
TX_ble
NoConn ~ 5250 4000
$Comp
L Connector_Generic:Conn_01x06 J4
U 1 1 5F3A54BD
P 5450 3800
F 0 "J4" H 5530 3792 50  0000 L CNN
F 1 "ble" H 5530 3701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5450 3800 50  0001 C CNN
F 3 "~" H 5450 3800 50  0001 C CNN
	1    5450 3800
	1    0    0    1   
$EndComp
NoConn ~ 4450 3850
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J2
U 1 1 5F33EDD5
P 4150 3750
F 0 "J2" H 4200 4267 50  0000 C CNN
F 1 "SD" H 4200 4176 50  0000 C CNN
F 2 "malib:carte_sd" H 4150 3750 50  0001 C CNN
F 3 "~" H 4150 3750 50  0001 C CNN
	1    4150 3750
	1    0    0    1   
$EndComp
Wire Wire Line
	3950 4050 3900 4050
Connection ~ 3950 4050
Wire Wire Line
	4450 4050 3950 4050
Connection ~ 3950 3950
Wire Wire Line
	4450 3950 3950 3950
Wire Wire Line
	3900 3750 3950 3750
Connection ~ 3950 3750
Wire Wire Line
	4450 3750 3950 3750
Wire Wire Line
	3950 3650 3900 3650
Connection ~ 3950 3650
Wire Wire Line
	4450 3650 3950 3650
Wire Wire Line
	3900 3550 3950 3550
Connection ~ 3950 3550
Wire Wire Line
	4450 3550 3950 3550
Wire Wire Line
	3950 3450 3900 3450
Connection ~ 3950 3450
Wire Wire Line
	4450 3450 3950 3450
Wire Wire Line
	3850 3350 3950 3350
Connection ~ 3950 3350
Wire Wire Line
	4450 3350 3950 3350
$Comp
L power:+3.3V #PWR0122
U 1 1 5F37AFB4
P 3650 3900
F 0 "#PWR0122" H 3650 3750 50  0001 C CNN
F 1 "+3.3V" H 3800 4000 50  0000 C CNN
F 2 "" H 3650 3900 50  0001 C CNN
F 3 "" H 3650 3900 50  0001 C CNN
	1    3650 3900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5F36BD07
P 3900 4150
F 0 "#PWR0121" H 3900 3900 50  0001 C CNN
F 1 "GND" H 3900 3950 50  0000 C CNN
F 2 "" H 3900 4150 50  0001 C CNN
F 3 "" H 3900 4150 50  0001 C CNN
	1    3900 4150
	-1   0    0    -1  
$EndComp
NoConn ~ 3950 3850
Text GLabel 3900 3750 0    50   Input ~ 0
CS
$Comp
L power:GND #PWR0120
U 1 1 5F362D13
P 3750 3150
F 0 "#PWR0120" H 3750 2900 50  0001 C CNN
F 1 "GND" H 3755 2977 50  0000 C CNN
F 2 "" H 3750 3150 50  0001 C CNN
F 3 "" H 3750 3150 50  0001 C CNN
	1    3750 3150
	-1   0    0    -1  
$EndComp
Text GLabel 3900 3550 0    50   Input ~ 0
SCK
Text GLabel 3900 3450 0    50   Output ~ 0
MISO
Text GLabel 3900 3650 0    50   Input ~ 0
MOSI
$Comp
L power:+3.3V #PWR0119
U 1 1 5F32E93B
P 5950 3600
F 0 "#PWR0119" H 5950 3450 50  0001 C CNN
F 1 "+3.3V" H 5965 3773 50  0000 C CNN
F 2 "" H 5950 3600 50  0001 C CNN
F 3 "" H 5950 3600 50  0001 C CNN
	1    5950 3600
	-1   0    0    -1  
$EndComp
Text GLabel 6400 3550 0    50   Input ~ 0
RTC_SDL
Text GLabel 6400 3650 0    50   BiDi ~ 0
RTC_SCA
$Comp
L power:GND #PWR0118
U 1 1 5F32091A
P 5950 3950
F 0 "#PWR0118" H 5950 3700 50  0001 C CNN
F 1 "GND" H 5950 3750 50  0000 C CNN
F 2 "" H 5950 3950 50  0001 C CNN
F 3 "" H 5950 3950 50  0001 C CNN
	1    5950 3950
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 5F2EBF02
P 2250 3250
F 0 "#PWR0101" H 2250 3100 50  0001 C CNN
F 1 "VCC" H 2267 3423 50  0000 C CNN
F 2 "" H 2250 3250 50  0001 C CNN
F 3 "" H 2250 3250 50  0001 C CNN
	1    2250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3250 2250 3350
Wire Wire Line
	2250 3350 2400 3350
Wire Wire Line
	2250 3350 2250 3450
Wire Wire Line
	2250 3450 2400 3450
Connection ~ 2250 3350
Text GLabel 2350 3550 0    50   Output ~ 0
+3.3V_Mini
Wire Wire Line
	2350 3550 2400 3550
$Comp
L power:+3.3V #PWR0102
U 1 1 5F2F23D5
P 6950 1300
F 0 "#PWR0102" H 6950 1150 50  0001 C CNN
F 1 "+3.3V" H 6965 1473 50  0000 C CNN
F 2 "" H 6950 1300 50  0001 C CNN
F 3 "" H 6950 1300 50  0001 C CNN
	1    6950 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1300 6950 1350
NoConn ~ 2400 3650
$Comp
L power:GND #PWR0103
U 1 1 5F2F6B52
P 1850 5000
F 0 "#PWR0103" H 1850 4750 50  0001 C CNN
F 1 "GND" H 1855 4827 50  0000 C CNN
F 2 "" H 1850 5000 50  0001 C CNN
F 3 "" H 1850 5000 50  0001 C CNN
	1    1850 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3850 1850 3850
Wire Wire Line
	1850 3850 1850 4850
Wire Wire Line
	2400 3750 1850 3750
Wire Wire Line
	1850 3750 1850 3850
Connection ~ 1850 3850
NoConn ~ 2400 3950
Text GLabel 2350 4750 0    50   BiDi ~ 0
A7
Wire Wire Line
	2400 4850 1850 4850
Connection ~ 1850 4850
Wire Wire Line
	1850 4850 1850 5000
Wire Wire Line
	2400 4450 2350 4450
Wire Wire Line
	2350 4550 2400 4550
Wire Wire Line
	2400 4650 2350 4650
Wire Wire Line
	2350 4750 2400 4750
Text GLabel 7550 1600 2    50   BiDi ~ 0
A7
Wire Wire Line
	7550 1600 7500 1600
Wire Wire Line
	7500 1600 7500 1700
Connection ~ 7500 1700
Wire Wire Line
	7500 1700 7400 1700
Text GLabel 1150 3350 2    50   Output ~ 0
TX
Text GLabel 1150 3450 2    50   Input ~ 0
RX
Wire Wire Line
	1100 3350 1150 3350
Wire Wire Line
	1150 3450 1100 3450
Wire Wire Line
	1100 3550 1650 3550
Wire Wire Line
	1650 3550 1650 4850
$Comp
L power:GND #PWR0104
U 1 1 5F32876D
P 1650 5000
F 0 "#PWR0104" H 1650 4750 50  0001 C CNN
F 1 "GND" H 1655 4827 50  0000 C CNN
F 2 "" H 1650 5000 50  0001 C CNN
F 3 "" H 1650 5000 50  0001 C CNN
	1    1650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 4850 1650 4850
Connection ~ 1650 4850
Wire Wire Line
	1650 4850 1650 5000
Text GLabel 1150 3950 2    50   Output ~ 0
veille
Wire Wire Line
	1100 3750 1150 3750
Text GLabel 1150 3850 2    50   Output ~ 0
CS
Wire Wire Line
	1100 3850 1150 3850
Text GLabel 1150 4750 2    50   Output ~ 0
SCK
Text GLabel 1150 4650 2    50   Input ~ 0
MISO
Text GLabel 1150 4550 2    50   Output ~ 0
MOSI
Wire Wire Line
	1150 4750 1100 4750
Wire Wire Line
	1100 4650 1150 4650
Wire Wire Line
	1150 4550 1100 4550
Wire Wire Line
	3650 3950 3950 3950
Text GLabel 1150 4350 2    50   Input ~ 0
RX_ble
Wire Wire Line
	1150 4350 1100 4350
Text GLabel 1150 4450 2    50   Output ~ 0
TX_ble
Wire Wire Line
	1100 4450 1150 4450
Text GLabel 1150 4050 2    50   Output ~ 0
EN_ble
Text GLabel 2350 4550 0    50   Input ~ 0
RTC_SDL
Text GLabel 2350 4450 0    50   BiDi ~ 0
RTC_SCA
Text GLabel 1150 3650 2    50   Input ~ 0
CapTOR
Wire Wire Line
	1150 3650 1100 3650
Text GLabel 1150 3750 2    50   Input ~ 0
wakeblue
Wire Wire Line
	1100 3950 1150 3950
Wire Wire Line
	1150 4050 1100 4050
NoConn ~ 1100 4150
NoConn ~ 1100 4250
NoConn ~ 2400 4050
NoConn ~ 2400 4150
NoConn ~ 2400 4250
NoConn ~ 2400 4350
NoConn ~ 2350 4650
$Comp
L Mechanical:MountingHole H3
U 1 1 5F386627
P 9950 1700
F 0 "H3" H 10050 1746 50  0000 L CNN
F 1 "MountingHole" H 10050 1655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mmmodif" H 9950 1700 50  0001 C CNN
F 3 "~" H 9950 1700 50  0001 C CNN
	1    9950 1700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5F386D75
P 9950 1300
F 0 "H1" H 10050 1346 50  0000 L CNN
F 1 "MountingHole" H 10050 1255 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mmmodif" H 9950 1300 50  0001 C CNN
F 3 "~" H 9950 1300 50  0001 C CNN
	1    9950 1300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F386F16
P 9950 1900
F 0 "H4" H 10050 1946 50  0000 L CNN
F 1 "MountingHole" H 10050 1855 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mmmodif" H 9950 1900 50  0001 C CNN
F 3 "~" H 9950 1900 50  0001 C CNN
	1    9950 1900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F387175
P 9950 1500
F 0 "H2" H 10050 1546 50  0000 L CNN
F 1 "MountingHole" H 10050 1455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mmmodif" H 9950 1500 50  0001 C CNN
F 3 "~" H 9950 1500 50  0001 C CNN
	1    9950 1500
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:AP7380-33WR5-7 IC1
U 1 1 5F3F010B
P 1450 1450
F 0 "IC1" H 2000 1715 50  0000 C CNN
F 1 "AP7380-33WR5-7" H 2000 1624 50  0000 C CNN
F 2 "SamacSys_Parts:SOT95P285X140-5N" H 2400 1550 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP7380.pdf" H 2400 1450 50  0001 L CNN
F 4 "LDO Voltage Regulators LDO CMOS LowCurr" H 2400 1350 50  0001 L CNN "Description"
F 5 "1.4" H 2400 1250 50  0001 L CNN "Height"
F 6 "Diodes Inc." H 2400 1150 50  0001 L CNN "Manufacturer_Name"
F 7 "AP7380-33WR-7" H 2400 1050 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "AP7380-33WR-7" H 2400 950 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/ap7380-33wr-7/diodes-incorporated" H 2400 850 50  0001 L CNN "Arrow Price/Stock"
F 10 "621-AP7380-33WR-7" H 2400 750 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Diodes-Incorporated/AP7380-33WR-7?qs=MHUP4w%2FlnDyRjXaVHenQAg%3D%3D" H 2400 650 50  0001 L CNN "Mouser Price/Stock"
	1    1450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1350 2650 1550
Wire Wire Line
	2550 1550 2650 1550
Connection ~ 2650 1550
$Comp
L Connector_Generic:Conn_01x05 J6
U 1 1 5F3348A6
P 6650 3650
F 0 "J6" H 6730 3692 50  0000 L CNN
F 1 "RTC" H 6730 3601 50  0000 L CNN
F 2 "SamacSys_Parts:ADA3295" H 6650 3650 50  0001 C CNN
F 3 "~" H 6650 3650 50  0001 C CNN
	1    6650 3650
	1    0    0    1   
$EndComp
NoConn ~ 6450 3450
Wire Wire Line
	6400 3550 6450 3550
Wire Wire Line
	6400 3650 6450 3650
Text Notes 6850 1000 0    50   ~ 0
Capteur de pression ANA
Wire Notes Line
	3350 800  7950 800 
Wire Notes Line
	7950 800  7950 2600
Wire Notes Line
	3350 2600 3350 800 
Wire Notes Line
	6550 800  6550 2600
Wire Notes Line
	3350 2600 7950 2600
Wire Notes Line
	4950 800  4950 2600
Wire Wire Line
	1000 1450 1450 1450
Wire Wire Line
	1150 1550 1150 1750
Wire Wire Line
	1150 1750 1000 1750
Wire Wire Line
	1150 1550 1450 1550
Connection ~ 1000 1750
Wire Wire Line
	1000 1750 1000 1900
Wire Notes Line
	650  800  3100 800 
Wire Notes Line
	3100 800  3100 2250
Wire Notes Line
	3100 2250 650  2250
Wire Notes Line
	650  2250 650  800 
Text Notes 1500 1000 0    50   ~ 0
Alimentation/Régul
Wire Wire Line
	3900 4050 3900 4150
Wire Wire Line
	3650 3900 3650 3950
Wire Wire Line
	3850 3100 3750 3100
Wire Wire Line
	3750 3100 3750 3150
Wire Wire Line
	3850 3100 3850 3350
Wire Wire Line
	6450 3750 5950 3750
Wire Wire Line
	5950 3750 5950 3600
Wire Wire Line
	6450 3850 5950 3850
Wire Wire Line
	5950 3850 5950 3950
Wire Notes Line
	3350 4450 3350 2850
Wire Notes Line
	3350 2850 7050 2850
Wire Notes Line
	4600 2850 4600 4450
Wire Notes Line
	3350 4450 7050 4450
Wire Notes Line
	5750 2850 5750 4450
Text Notes 3800 3000 0    50   ~ 0
Carte SD
Text Notes 5000 3000 0    50   ~ 0
Bluetooth
Text Notes 6250 3000 0    50   ~ 0
Horloge
Wire Notes Line
	7050 2850 7050 4450
Wire Notes Line
	650  5350 2850 5350
Wire Notes Line
	2850 5350 2850 2850
Wire Notes Line
	2850 2850 650  2850
Wire Notes Line
	650  2850 650  5350
$Comp
L Connector_Generic:Conn_01x16 J1
U 1 1 5F2E5C97
P 900 4050
F 0 "J1" H 900 4850 50  0000 C CNN
F 1 "Conn_01x16" H 750 3150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 900 4050 50  0001 C CNN
F 3 "~" H 900 4050 50  0001 C CNN
	1    900  4050
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J3
U 1 1 5F2E3CFF
P 2600 4050
F 0 "J3" H 2550 4850 50  0000 L CNN
F 1 "Conn_01x16" H 2200 3100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 2600 4050 50  0001 C CNN
F 3 "~" H 2600 4050 50  0001 C CNN
	1    2600 4050
	1    0    0    -1  
$EndComp
Text Notes 1250 3000 0    50   ~ 0
Connecteur µControlleur
$EndSCHEMATC
