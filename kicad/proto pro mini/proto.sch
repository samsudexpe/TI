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
L SamacSys_Parts:DEV-11114 IC1
U 1 1 5F22D27C
P 2250 3600
F 0 "IC1" H 2850 3865 50  0000 C CNN
F 1 "Pro-mini" H 2850 3774 50  0000 C CNN
F 2 "SamacSys_Parts:DEV11114" H 3300 3700 50  0001 L CNN
F 3 "https://www.sparkfun.com/products/11114" H 3300 3600 50  0001 L CNN
F 4 "Arduino mini pro 3.3 volt 8Mhz" H 3300 3500 50  0001 L CNN "Description"
F 5 "5" H 3300 3400 50  0001 L CNN "Height"
F 6 "SparkFun" H 3300 3300 50  0001 L CNN "Manufacturer_Name"
F 7 "DEV-11114" H 3300 3200 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "DEV-11114" H 3300 3100 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/dev-11114/sparkfun-electronics" H 3300 3000 50  0001 L CNN "Arrow Price/Stock"
F 10 "474-DEV-11114" H 3300 2900 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/SparkFun/DEV-11114?qs=WyAARYrbSnYSjjdqjebdgg%3D%3D" H 3300 2800 50  0001 L CNN "Mouser Price/Stock"
	1    2250 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F230EAA
P 1900 3300
F 0 "#PWR0101" H 1900 3050 50  0001 C CNN
F 1 "GND" H 1905 3127 50  0000 C CNN
F 2 "" H 1900 3300 50  0001 C CNN
F 3 "" H 1900 3300 50  0001 C CNN
	1    1900 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F2313AC
P 4000 3850
F 0 "#PWR0102" H 4000 3600 50  0001 C CNN
F 1 "GND" H 4005 3677 50  0000 C CNN
F 2 "" H 4000 3850 50  0001 C CNN
F 3 "" H 4000 3850 50  0001 C CNN
	1    4000 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F2319DB
P 2950 5550
F 0 "#PWR0103" H 2950 5300 50  0001 C CNN
F 1 "GND" H 2955 5377 50  0000 C CNN
F 2 "" H 2950 5550 50  0001 C CNN
F 3 "" H 2950 5550 50  0001 C CNN
	1    2950 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4100 3850 4100
Wire Wire Line
	3450 4000 3850 4000
Wire Wire Line
	3850 4000 3850 4100
Wire Wire Line
	3450 3800 3850 3800
Wire Wire Line
	3850 3800 3850 4000
Connection ~ 3850 4000
Wire Wire Line
	3850 3800 4000 3800
Connection ~ 3850 3800
Wire Wire Line
	4000 3800 4000 3850
Connection ~ 3850 4100
Wire Wire Line
	2950 5500 2950 5550
Wire Wire Line
	2150 5200 2250 5200
$Comp
L Device:C C5
U 1 1 5F268983
P 2200 1850
F 0 "C5" H 2315 1896 50  0000 L CNN
F 1 "1µF" H 2315 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2238 1700 50  0001 C CNN
F 3 "~" H 2200 1850 50  0001 C CNN
	1    2200 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F268F3F
P 3650 1850
F 0 "C7" H 3765 1896 50  0000 L CNN
F 1 "1µF" H 3765 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3688 1700 50  0001 C CNN
F 3 "~" H 3650 1850 50  0001 C CNN
	1    3650 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F26E573
P 2950 2150
F 0 "#PWR0110" H 2950 1900 50  0001 C CNN
F 1 "GND" H 2955 1977 50  0000 C CNN
F 2 "" H 2950 2150 50  0001 C CNN
F 3 "" H 2950 2150 50  0001 C CNN
	1    2950 2150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0111
U 1 1 5F27001C
P 2200 1500
F 0 "#PWR0111" H 2200 1350 50  0001 C CNN
F 1 "VCC" H 2217 1673 50  0000 C CNN
F 2 "" H 2200 1500 50  0001 C CNN
F 3 "" H 2200 1500 50  0001 C CNN
	1    2200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1500 2200 1550
Connection ~ 2200 1550
Wire Wire Line
	3450 3600 3650 3600
Text GLabel 1450 2900 0    50   Output ~ 0
veille
Text GLabel 1450 3000 0    50   Output ~ 0
c_mesurevcc
$Comp
L Device:R R5
U 1 1 5F2FF64A
P 8250 1500
F 0 "R5" H 8320 1546 50  0000 L CNN
F 1 "100K" H 8320 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8180 1500 50  0001 C CNN
F 3 "~" H 8250 1500 50  0001 C CNN
	1    8250 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F300259
P 8250 2050
F 0 "R6" H 8320 2096 50  0000 L CNN
F 1 "10K" H 8320 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8180 2050 50  0001 C CNN
F 3 "~" H 8250 2050 50  0001 C CNN
	1    8250 2050
	1    0    0    -1  
$EndComp
Text GLabel 8550 1800 2    50   Output ~ 0
A6
Text GLabel 7950 1300 0    50   Input ~ 0
Vccm
Wire Wire Line
	7950 1300 8250 1300
Wire Wire Line
	8250 1300 8250 1350
Wire Wire Line
	8550 1800 8250 1800
Wire Wire Line
	8250 1800 8250 1650
Wire Wire Line
	8250 1900 8250 1800
Connection ~ 8250 1800
$Comp
L power:GND #PWR0117
U 1 1 5F309D4A
P 8250 2300
F 0 "#PWR0117" H 8250 2050 50  0001 C CNN
F 1 "GND" H 8255 2127 50  0000 C CNN
F 2 "" H 8250 2300 50  0001 C CNN
F 3 "" H 8250 2300 50  0001 C CNN
	1    8250 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2200 8250 2300
Text Notes 7850 950  0    50   ~ 0
Mesure VCC
Wire Wire Line
	1350 1600 1350 1550
Wire Wire Line
	1300 1600 1350 1600
Wire Wire Line
	1350 1700 1350 1750
Wire Wire Line
	1300 1700 1350 1700
$Comp
L power:GND #PWR0126
U 1 1 5F416049
P 1350 1750
F 0 "#PWR0126" H 1350 1500 50  0001 C CNN
F 1 "GND" H 1355 1577 50  0000 C CNN
F 2 "" H 1350 1750 50  0001 C CNN
F 3 "" H 1350 1750 50  0001 C CNN
	1    1350 1750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0125
U 1 1 5F415336
P 1350 1550
F 0 "#PWR0125" H 1350 1400 50  0001 C CNN
F 1 "VCC" H 1367 1723 50  0000 C CNN
F 2 "" H 1350 1550 50  0001 C CNN
F 3 "" H 1350 1550 50  0001 C CNN
	1    1350 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5F405F95
P 1100 1600
F 0 "J7" H 1018 1817 50  0000 C CNN
F 1 "Alim" H 1018 1726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1100 1600 50  0001 C CNN
F 3 "~" H 1100 1600 50  0001 C CNN
	1    1100 1600
	-1   0    0    -1  
$EndComp
Text Notes 5900 950  0    50   ~ 0
Commande mesure VCC
Wire Wire Line
	5950 1550 6000 1550
Text GLabel 5950 1550 0    50   Input ~ 0
c_mesurevcc
Text GLabel 7000 1650 2    50   Output ~ 0
Vccm
$Comp
L power:GND #PWR0115
U 1 1 5F2DCEC3
P 6000 2000
F 0 "#PWR0115" H 6000 1750 50  0001 C CNN
F 1 "GND" H 6005 1827 50  0000 C CNN
F 2 "" H 6000 2000 50  0001 C CNN
F 3 "" H 6000 2000 50  0001 C CNN
	1    6000 2000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F50E88C
P 4600 2050
F 0 "SW1" V 4646 2002 50  0000 R CNN
F 1 "SW_RST" V 4555 2002 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4600 2250 50  0001 C CNN
F 3 "" H 4600 2250 50  0001 C CNN
	1    4600 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F5105EF
P 4600 1500
F 0 "R1" H 4670 1546 50  0000 L CNN
F 1 "100K" H 4670 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 1500 50  0001 C CNN
F 3 "~" H 4600 1500 50  0001 C CNN
	1    4600 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5F51349D
P 3650 1500
F 0 "#PWR0104" H 3650 1350 50  0001 C CNN
F 1 "+3.3V" H 3665 1673 50  0000 C CNN
F 2 "" H 3650 1500 50  0001 C CNN
F 3 "" H 3650 1500 50  0001 C CNN
	1    3650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1500 3650 1550
Connection ~ 3650 1550
$Comp
L power:+3.3V #PWR0105
U 1 1 5F5152FA
P 3650 3550
F 0 "#PWR0105" H 3650 3400 50  0001 C CNN
F 1 "+3.3V" H 3665 3723 50  0000 C CNN
F 2 "" H 3650 3550 50  0001 C CNN
F 3 "" H 3650 3550 50  0001 C CNN
	1    3650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3550 3650 3600
$Comp
L power:+3.3V #PWR0106
U 1 1 5F5170A6
P 4600 1250
F 0 "#PWR0106" H 4600 1100 50  0001 C CNN
F 1 "+3.3V" H 4615 1423 50  0000 C CNN
F 2 "" H 4600 1250 50  0001 C CNN
F 3 "" H 4600 1250 50  0001 C CNN
	1    4600 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F517D82
P 4600 2300
F 0 "#PWR0107" H 4600 2050 50  0001 C CNN
F 1 "GND" H 4605 2127 50  0000 C CNN
F 2 "" H 4600 2300 50  0001 C CNN
F 3 "" H 4600 2300 50  0001 C CNN
	1    4600 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1250 4600 1350
Wire Wire Line
	4600 1650 4600 1800
Connection ~ 4600 1800
Wire Wire Line
	4600 1800 4600 1850
Wire Wire Line
	4600 2250 4600 2300
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5F30DEC7
P 4300 4200
F 0 "J2" H 4380 4192 50  0000 L CNN
F 1 "Prog" H 4380 4101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4300 4200 50  0001 C CNN
F 3 "~" H 4300 4200 50  0001 C CNN
	1    4300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4000 4100 4000
Wire Wire Line
	3850 4100 4100 4100
Wire Wire Line
	3450 4200 4100 4200
Wire Wire Line
	3450 4300 4100 4300
Wire Wire Line
	3450 4400 4100 4400
Wire Wire Line
	3450 4500 4100 4500
$Comp
L Connector_Generic:Conn_01x16 J1
U 1 1 5F31C7F2
P 1150 4100
F 0 "J1" H 1068 5017 50  0000 C CNN
F 1 "Conn_01x16" H 1068 4926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 1150 4100 50  0001 C CNN
F 3 "~" H 1150 4100 50  0001 C CNN
	1    1150 4100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J3
U 1 1 5F321172
P 5100 4400
F 0 "J3" H 5180 4392 50  0000 L CNN
F 1 "Conn_01x16" H 5180 4301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 5100 4400 50  0001 C CNN
F 3 "~" H 5100 4400 50  0001 C CNN
	1    5100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3600 1650 3600
Wire Wire Line
	1900 3300 1900 3200
Wire Wire Line
	1900 3200 1650 3200
Wire Wire Line
	1650 3200 1650 3600
Connection ~ 1650 3600
Wire Wire Line
	1650 3600 2250 3600
Wire Wire Line
	2250 4000 1550 4000
Wire Wire Line
	1350 4100 2250 4100
Wire Wire Line
	2250 4200 1500 4200
Wire Wire Line
	1350 4300 2250 4300
Wire Wire Line
	1350 4400 2250 4400
Wire Wire Line
	1350 4500 2250 4500
Wire Wire Line
	1350 4600 2250 4600
Wire Wire Line
	1350 4700 2250 4700
Wire Wire Line
	1350 4800 2250 4800
Text GLabel 3550 4600 2    50   Output ~ 0
TX
Text GLabel 3550 4700 2    50   Input ~ 0
RX
Wire Wire Line
	3450 4600 3550 4600
Wire Wire Line
	3450 4700 3550 4700
Text GLabel 1350 3500 2    50   Output ~ 0
RX
Text GLabel 1350 3400 2    50   Input ~ 0
TX
Wire Wire Line
	2950 5550 4800 5550
Wire Wire Line
	4800 5550 4800 5200
Wire Wire Line
	4800 5200 4900 5200
Connection ~ 2950 5550
Text GLabel 2150 4900 0    50   BiDi ~ 0
A0
Wire Wire Line
	2150 4900 2250 4900
Text GLabel 2150 5000 0    50   BiDi ~ 0
A1
Text GLabel 2150 5100 0    50   BiDi ~ 0
A2
Text GLabel 2150 5200 0    50   BiDi ~ 0
A3
Wire Wire Line
	2150 5100 2250 5100
Wire Wire Line
	2150 5000 2250 5000
Text GLabel 4850 4400 0    50   BiDi ~ 0
A0
Text GLabel 4850 4500 0    50   BiDi ~ 0
A1
Text GLabel 4850 4600 0    50   BiDi ~ 0
A2
Text GLabel 4850 4700 0    50   BiDi ~ 0
A3
Wire Wire Line
	4850 4400 4900 4400
Wire Wire Line
	4850 4500 4900 4500
Wire Wire Line
	4850 4600 4900 4600
Wire Wire Line
	4850 4700 4900 4700
Text GLabel 3500 5100 2    50   BiDi ~ 0
A4-SDA
Text GLabel 3500 5200 2    50   BiDi ~ 0
A5-SCL
Text GLabel 3500 5000 2    50   BiDi ~ 0
A7
Text GLabel 3500 4900 2    50   BiDi ~ 0
A6
Wire Wire Line
	3500 4900 3450 4900
Wire Wire Line
	3450 5000 3500 5000
Wire Wire Line
	3500 5100 3450 5100
Wire Wire Line
	3500 5200 3450 5200
Text GLabel 3500 4800 2    50   BiDi ~ 0
Reset
Wire Wire Line
	3500 4800 3450 4800
Text GLabel 3500 3700 2    50   BiDi ~ 0
Reset
Wire Wire Line
	3450 3700 3500 3700
Wire Wire Line
	3650 3600 4700 3600
Connection ~ 3650 3600
Text GLabel 4850 4800 0    50   BiDi ~ 0
A4-SDA
Text GLabel 4850 4900 0    50   BiDi ~ 0
A5-SCL
Wire Wire Line
	4850 4800 4900 4800
Wire Wire Line
	4900 4900 4850 4900
Text GLabel 4850 5000 0    50   BiDi ~ 0
A6-MVCC
Text GLabel 4850 5100 0    50   BiDi ~ 0
A7
Wire Wire Line
	4850 5100 4900 5100
Text GLabel 4850 4000 0    50   BiDi ~ 0
Reset
Wire Wire Line
	4000 3800 4550 3800
Connection ~ 4000 3800
Wire Wire Line
	4550 4100 4900 4100
Wire Wire Line
	4550 3800 4550 4100
Wire Wire Line
	4550 4100 4550 4200
Wire Wire Line
	4550 4200 4900 4200
Connection ~ 4550 4100
Wire Wire Line
	4850 4000 4900 4000
Wire Wire Line
	4900 3900 4700 3900
Wire Wire Line
	4700 3600 4700 3900
$Comp
L power:VCC #PWR0108
U 1 1 5F3BF90F
P 4850 3600
F 0 "#PWR0108" H 4850 3450 50  0001 C CNN
F 1 "VCC" H 4867 3773 50  0000 C CNN
F 2 "" H 4850 3600 50  0001 C CNN
F 3 "" H 4850 3600 50  0001 C CNN
	1    4850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3600 4850 3700
Wire Wire Line
	4850 3700 4900 3700
Wire Wire Line
	4850 3700 4850 3800
Wire Wire Line
	4850 3800 4900 3800
Connection ~ 4850 3700
Wire Wire Line
	1450 3000 1500 3000
Wire Wire Line
	1450 2900 1550 2900
Wire Wire Line
	2950 5550 1450 5550
NoConn ~ 3450 3900
Wire Wire Line
	1350 4900 1450 4900
Wire Wire Line
	1450 4900 1450 5550
$Comp
L Mechanical:MountingHole H1
U 1 1 5F4075B2
P 9750 1350
F 0 "H1" H 9850 1396 50  0000 L CNN
F 1 "MountingHole" H 9850 1305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mmmodif" H 9750 1350 50  0001 C CNN
F 3 "~" H 9750 1350 50  0001 C CNN
	1    9750 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F407C42
P 9750 1600
F 0 "H2" H 9850 1646 50  0000 L CNN
F 1 "MountingHole" H 9850 1555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mmmodif" H 9750 1600 50  0001 C CNN
F 3 "~" H 9750 1600 50  0001 C CNN
	1    9750 1600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F407D8F
P 9750 1850
F 0 "H3" H 9850 1896 50  0000 L CNN
F 1 "MountingHole" H 9850 1805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mmmodif" H 9750 1850 50  0001 C CNN
F 3 "~" H 9750 1850 50  0001 C CNN
	1    9750 1850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F407EA9
P 9750 2100
F 0 "H4" H 9850 2146 50  0000 L CNN
F 1 "MountingHole" H 9850 2055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mmmodif" H 9750 2100 50  0001 C CNN
F 3 "~" H 9750 2100 50  0001 C CNN
	1    9750 2100
	1    0    0    -1  
$EndComp
Text GLabel 4950 1800 2    50   BiDi ~ 0
Reset
NoConn ~ 4900 4300
Wire Wire Line
	1350 3700 2250 3700
Wire Wire Line
	1350 3800 2250 3800
Wire Wire Line
	1550 2900 1550 4000
Connection ~ 1550 4000
Wire Wire Line
	1550 4000 1350 4000
Wire Wire Line
	1350 3900 2250 3900
Wire Wire Line
	1500 3000 1500 4200
Connection ~ 1500 4200
Wire Wire Line
	1500 4200 1350 4200
Wire Wire Line
	2950 2150 3650 2150
Wire Notes Line
	800  750  4100 750 
Wire Notes Line
	4100 750  4100 2550
Wire Notes Line
	4100 2550 800  2550
Wire Notes Line
	800  2550 800  750 
Text Notes 4550 950  0    50   ~ 0
Reset
Wire Notes Line
	8750 750  8750 2550
Wire Notes Line
	8750 2550 4300 2550
Wire Notes Line
	4300 2550 4300 750 
Wire Notes Line
	4300 750  8750 750 
Wire Notes Line
	5300 750  5300 2550
Wire Notes Line
	7600 750  7600 2550
Wire Wire Line
	4600 1800 4950 1800
Wire Notes Line
	800  2700 800  5750
Wire Notes Line
	800  5750 5700 5750
Wire Notes Line
	5700 5750 5700 2700
Wire Notes Line
	5700 2700 800  2700
Text Notes 2000 950  0    50   ~ 0
Alimentation
Text Notes 2600 2850 0    50   ~ 0
µControlleur
$Comp
L SamacSys_Parts:CPC1008N K1
U 1 1 6099EE8A
P 5350 1550
F 0 "K1" H 6425 1815 50  0000 C CNN
F 1 "CPC1008N" H 6425 1724 50  0000 C CNN
F 2 "SamacSys_Parts:SOP254P610X216-4N" H 6700 1650 50  0001 L CNN
F 3 "http://www.ixysic.com/home/pdfs.nsf/www/CPC1008N.pdf/$file/CPC1008N.pdf" H 6700 1550 50  0001 L CNN
F 4 "SPST-NO Solid State Relay Solder 150 mA rms/mA dc Surface Mount, DC Relay" H 6700 1450 50  0001 L CNN "Description"
F 5 "2.161" H 6700 1350 50  0001 L CNN "Height"
F 6 "IXYS SEMICONDUCTOR" H 6700 1250 50  0001 L CNN "Manufacturer_Name"
F 7 "CPC1008N" H 6700 1150 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "CPC1008N" H 6700 1050 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/cpc1008n/ixys" H 6700 950 50  0001 L CNN "Arrow Price/Stock"
F 10 "849-CPC1008N" H 6700 850 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.com/Search/Refine.aspx?Keyword=849-CPC1008N" H 6700 750 50  0001 L CNN "Mouser Price/Stock"
	1    5350 1550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0114
U 1 1 5F2CED0A
P 6950 1450
F 0 "#PWR0114" H 6950 1300 50  0001 C CNN
F 1 "VCC" H 6967 1623 50  0000 C CNN
F 2 "" H 6950 1450 50  0001 C CNN
F 3 "" H 6950 1450 50  0001 C CNN
	1    6950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1450 6950 1550
Wire Wire Line
	6950 1550 6850 1550
Wire Wire Line
	6850 1650 7000 1650
Wire Wire Line
	6000 1650 6000 2000
$Comp
L malib:NCP718BSN180T1G U1
U 1 1 609C7745
P 2750 1450
F 0 "U1" H 2950 1615 50  0000 C CNN
F 1 "MIC5225-3.3YM5-TR" H 2950 1524 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2750 1450 50  0001 C CNN
F 3 "" H 2750 1450 50  0001 C CNN
	1    2750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1550 2550 1550
Wire Wire Line
	2650 1700 2550 1700
Wire Wire Line
	2550 1700 2550 1550
Connection ~ 2550 1550
Wire Wire Line
	2550 1550 2650 1550
Wire Wire Line
	3250 1550 3650 1550
Wire Wire Line
	2950 1950 2950 2150
Connection ~ 2950 2150
Wire Wire Line
	2200 2150 2950 2150
Wire Wire Line
	2200 1700 2200 1550
Wire Wire Line
	2200 2000 2200 2150
Wire Wire Line
	3650 1700 3650 1550
Wire Wire Line
	3650 2000 3650 2150
Wire Wire Line
	4850 5000 4900 5000
$EndSCHEMATC
