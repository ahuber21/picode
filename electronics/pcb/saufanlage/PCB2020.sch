EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Saufanlage - Relais"
Date "2019-06-12"
Rev "0.1"
Comp "saufhaengerle"
Comment1 "bebbo"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Switching:BD9G341EFJ U?
U 1 1 5D01A16E
P 2450 1600
F 0 "U?" H 2450 2281 50  0000 C CNN
F 1 "BD9G341EFJ" H 2450 2190 50  0000 C CNN
F 2 "Package_SO:HTSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.4x3.2mm_ThermalVias" H 2550 1150 50  0001 L CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Rohm%20PDFs/BD9G341EFJ.pdf" H 2450 1600 50  0001 C CNN
	1    2450 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D01B48E
P 1800 1450
F 0 "R?" H 1870 1496 50  0000 L CNN
F 1 "R" H 1870 1405 50  0000 L CNN
F 2 "" V 1730 1450 50  0001 C CNN
F 3 "~" H 1800 1450 50  0001 C CNN
	1    1800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1300 1800 1300
Wire Wire Line
	2050 1600 1800 1600
$Comp
L power:+12V #PWR0101
U 1 1 5D01BB90
P 900 1150
F 0 "#PWR0101" H 900 1000 50  0001 C CNN
F 1 "+12V" H 915 1323 50  0000 C CNN
F 2 "" H 900 1150 50  0001 C CNN
F 3 "" H 900 1150 50  0001 C CNN
	1    900  1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D01C34F
P 1800 1850
F 0 "R?" H 1870 1896 50  0000 L CNN
F 1 "R" H 1870 1805 50  0000 L CNN
F 2 "" V 1730 1850 50  0001 C CNN
F 3 "~" H 1800 1850 50  0001 C CNN
	1    1800 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D01CC24
P 1300 1450
F 0 "C?" H 1415 1496 50  0000 L CNN
F 1 "C" H 1415 1405 50  0000 L CNN
F 2 "" H 1338 1300 50  0001 C CNN
F 3 "~" H 1300 1450 50  0001 C CNN
	1    1300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1300 1800 1300
Connection ~ 1800 1300
Wire Wire Line
	900  1300 900  1150
Connection ~ 1300 1300
Wire Wire Line
	1800 1700 1800 1600
Connection ~ 1800 1600
$Comp
L power:GND #PWR0102
U 1 1 5D01E1F2
P 1350 2550
F 0 "#PWR0102" H 1350 2300 50  0001 C CNN
F 1 "GND" H 1355 2377 50  0000 C CNN
F 2 "" H 1350 2550 50  0001 C CNN
F 3 "" H 1350 2550 50  0001 C CNN
	1    1350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2000 1800 2550
Wire Wire Line
	1800 2550 1350 2550
Wire Wire Line
	2350 2100 2350 2550
Wire Wire Line
	2350 2550 1800 2550
Connection ~ 1800 2550
Wire Wire Line
	1300 1600 1300 2550
Wire Wire Line
	1300 2550 1350 2550
Connection ~ 1350 2550
$Comp
L Device:R R?
U 1 1 5D01EBEA
P 2550 2350
F 0 "R?" H 2620 2396 50  0000 L CNN
F 1 "R" H 2620 2305 50  0000 L CNN
F 2 "" V 2480 2350 50  0001 C CNN
F 3 "~" H 2550 2350 50  0001 C CNN
	1    2550 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2100 2550 2200
Wire Wire Line
	2550 2500 2550 2550
Wire Wire Line
	2550 2550 2350 2550
Connection ~ 2350 2550
$Comp
L Device:R R?
U 1 1 5D01F4E8
P 3000 2350
F 0 "R?" H 3070 2396 50  0000 L CNN
F 1 "R" H 3070 2305 50  0000 L CNN
F 2 "" V 2930 2350 50  0001 C CNN
F 3 "~" H 3000 2350 50  0001 C CNN
	1    3000 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D01FC17
P 3000 2000
F 0 "C?" H 3115 2046 50  0000 L CNN
F 1 "C" H 3115 1955 50  0000 L CNN
F 2 "" H 3038 1850 50  0001 C CNN
F 3 "~" H 3000 2000 50  0001 C CNN
	1    3000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1800 3000 1800
Wire Wire Line
	3000 1800 3000 1850
Wire Wire Line
	3000 2150 3000 2200
Wire Wire Line
	3000 2500 3000 2550
Wire Wire Line
	3000 2550 2550 2550
Connection ~ 2550 2550
$Comp
L Device:D_Schottky D?
U 1 1 5D02315A
P 3400 1450
F 0 "D?" V 3354 1529 50  0000 L CNN
F 1 "D_Schottky" V 3445 1529 50  0000 L CNN
F 2 "" H 3400 1450 50  0001 C CNN
F 3 "~" H 3400 1450 50  0001 C CNN
	1    3400 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 1300 3400 1300
Wire Wire Line
	3400 1600 3400 2550
Wire Wire Line
	3400 2550 3000 2550
Connection ~ 3000 2550
$Comp
L Device:C C?
U 1 1 5D02433D
P 3600 1050
F 0 "C?" H 3715 1096 50  0000 L CNN
F 1 "C" H 3715 1005 50  0000 L CNN
F 2 "" H 3638 900 50  0001 C CNN
F 3 "~" H 3600 1050 50  0001 C CNN
	1    3600 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1100 2450 900 
Wire Wire Line
	2450 900  3600 900 
Wire Wire Line
	3600 1200 3600 1300
Wire Wire Line
	3600 1300 3400 1300
Connection ~ 3400 1300
$Comp
L Device:L L?
U 1 1 5D025558
P 3950 1300
F 0 "L?" V 4140 1300 50  0000 C CNN
F 1 "L" V 4049 1300 50  0000 C CNN
F 2 "" H 3950 1300 50  0001 C CNN
F 3 "~" H 3950 1300 50  0001 C CNN
	1    3950 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D026291
P 4450 1700
F 0 "R?" H 4520 1746 50  0000 L CNN
F 1 "R" H 4520 1655 50  0000 L CNN
F 2 "" V 4380 1700 50  0001 C CNN
F 3 "~" H 4450 1700 50  0001 C CNN
	1    4450 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D0267E9
P 4450 2200
F 0 "R?" H 4520 2246 50  0000 L CNN
F 1 "R" H 4520 2155 50  0000 L CNN
F 2 "" V 4380 2200 50  0001 C CNN
F 3 "~" H 4450 2200 50  0001 C CNN
	1    4450 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D026E00
P 4850 1700
F 0 "C?" H 4965 1746 50  0000 L CNN
F 1 "C" H 4965 1655 50  0000 L CNN
F 2 "" H 4888 1550 50  0001 C CNN
F 3 "~" H 4850 1700 50  0001 C CNN
	1    4850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1300 3800 1300
Connection ~ 3600 1300
Wire Wire Line
	4100 1300 4450 1300
Wire Wire Line
	4450 1300 4450 1550
Wire Wire Line
	4450 1300 4850 1300
Wire Wire Line
	4850 1300 4850 1550
Connection ~ 4450 1300
Wire Wire Line
	4450 1850 4450 1950
Wire Wire Line
	2850 1600 3250 1600
Wire Wire Line
	3250 1600 3250 1950
Wire Wire Line
	3250 1950 4450 1950
Connection ~ 4450 1950
Wire Wire Line
	4450 1950 4450 2050
Wire Wire Line
	4450 2350 4450 2550
Wire Wire Line
	4450 2550 3400 2550
Connection ~ 3400 2550
Wire Wire Line
	4850 1850 4850 2550
Wire Wire Line
	4850 2550 4450 2550
Connection ~ 4450 2550
Wire Notes Line
	800  2900 800  750 
Wire Notes Line
	800  750  5150 750 
Wire Notes Line
	5150 750  5150 2900
Wire Notes Line
	800  2900 5150 2900
Text Notes 4400 1000 0    50   ~ 0
Buck Converter
Connection ~ 4850 1300
Connection ~ 4850 2550
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5D059559
P 850 1650
F 0 "J?" H 768 1325 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 768 1416 50  0000 C CNN
F 2 "" H 850 1650 50  0001 C CNN
F 3 "~" H 850 1650 50  0001 C CNN
	1    850  1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 1550 1050 1300
Wire Wire Line
	900  1300 1050 1300
Connection ~ 1050 1300
Wire Wire Line
	1050 1300 1300 1300
Wire Wire Line
	1050 1650 1050 2550
Wire Wire Line
	1050 2550 1300 2550
Connection ~ 1300 2550
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5D05C6E9
P 10650 2750
F 0 "J?" H 10758 3031 50  0000 C CNN
F 1 "Conn_01x03_Male" H 10758 2940 50  0000 C CNN
F 2 "" H 10650 2750 50  0001 C CNN
F 3 "~" H 10650 2750 50  0001 C CNN
	1    10650 2750
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5D05CFEE
P 10650 2250
F 0 "J?" H 10758 2531 50  0000 C CNN
F 1 "Conn_01x03_Male" H 10758 2440 50  0000 C CNN
F 2 "" H 10650 2250 50  0001 C CNN
F 3 "~" H 10650 2250 50  0001 C CNN
	1    10650 2250
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5D05DAE3
P 10650 1800
F 0 "J?" H 10758 2081 50  0000 C CNN
F 1 "Conn_01x03_Male" H 10758 1990 50  0000 C CNN
F 2 "" H 10650 1800 50  0001 C CNN
F 3 "~" H 10650 1800 50  0001 C CNN
	1    10650 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5D05E3DC
P 10650 1400
F 0 "J?" H 10758 1681 50  0000 C CNN
F 1 "Conn_01x03_Male" H 10758 1590 50  0000 C CNN
F 2 "" H 10650 1400 50  0001 C CNN
F 3 "~" H 10650 1400 50  0001 C CNN
	1    10650 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 2550 5600 2550
Wire Wire Line
	8200 2250 10450 2250
Wire Wire Line
	8100 2750 10450 2750
Wire Notes Line
	9350 1050 9350 3100
Wire Notes Line
	9350 3100 11150 3100
Wire Notes Line
	11150 3100 11150 1050
Wire Notes Line
	11150 1050 9350 1050
Text Notes 9650 1150 0    50   ~ 0
Flowmeter-connection
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5D0BFEAB
P 6000 1750
F 0 "J?" H 6028 1726 50  0000 L CNN
F 1 "Conn_01x02_Female" H 6028 1635 50  0000 L CNN
F 2 "" H 6000 1750 50  0001 C CNN
F 3 "~" H 6000 1750 50  0001 C CNN
	1    6000 1750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5D0C0A4D
P 5600 1550
F 0 "SW?" V 5554 1698 50  0000 L CNN
F 1 "SW_Push" V 5645 1698 50  0000 L CNN
F 2 "" H 5600 1750 50  0001 C CNN
F 3 "~" H 5600 1750 50  0001 C CNN
	1    5600 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 1350 5600 1300
Wire Wire Line
	5600 1300 4850 1300
Wire Wire Line
	5600 1750 5800 1750
Wire Wire Line
	5800 1850 5600 1850
Wire Wire Line
	5600 1850 5600 2550
Wire Notes Line
	6350 2250 5400 2250
Wire Notes Line
	5400 2250 5400 1400
Wire Notes Line
	5400 1400 6350 1400
Wire Notes Line
	6350 1400 6350 2250
Text Notes 5500 2200 0    50   ~ 0
Raspberry - reset
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 5D053E27
P 2400 5050
F 0 "J?" V 2496 6029 50  0000 L CNN
F 1 "Conn_02x20_Odd_Even" V 2405 6029 50  0000 L CNN
F 2 "" H 2400 5050 50  0001 C CNN
F 3 "~" H 2400 5050 50  0001 C CNN
	1    2400 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DF24286
P 9950 1300
F 0 "#PWR?" H 9950 1150 50  0001 C CNN
F 1 "+3.3V" H 9965 1473 50  0000 C CNN
F 2 "" H 9950 1300 50  0001 C CNN
F 3 "" H 9950 1300 50  0001 C CNN
	1    9950 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1300 9950 1300
Wire Wire Line
	10450 1700 9950 1700
Wire Wire Line
	9950 1700 9950 1300
Connection ~ 9950 1300
Wire Wire Line
	10450 2150 9950 2150
Wire Wire Line
	9950 2150 9950 1700
Connection ~ 9950 1700
Wire Wire Line
	10450 2650 9950 2650
Wire Wire Line
	9950 2650 9950 2150
Connection ~ 9950 2150
$Comp
L power:GND #PWR?
U 1 1 5DF2FD4E
P 9700 2850
F 0 "#PWR?" H 9700 2600 50  0001 C CNN
F 1 "GND" H 9705 2677 50  0000 C CNN
F 2 "" H 9700 2850 50  0001 C CNN
F 3 "" H 9700 2850 50  0001 C CNN
	1    9700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2850 10450 2850
Wire Wire Line
	10450 2350 9700 2350
Wire Wire Line
	9700 2350 9700 2850
Connection ~ 9700 2850
Wire Wire Line
	10450 1900 9700 1900
Connection ~ 9700 2350
Wire Wire Line
	10450 1500 9700 1500
Wire Wire Line
	9700 1500 9700 1900
Connection ~ 9700 1900
Wire Wire Line
	9700 1900 9700 2350
Wire Wire Line
	4000 4850 3800 4850
Wire Wire Line
	3950 4900 3700 4900
$Comp
L w_connectors:Arduino_Mega_Header J?
U 1 1 5DE80DF2
P 4500 5000
F 0 "J?" H 4500 6387 60  0000 C CNN
F 1 "Arduino_Mega_Header" H 4500 6281 60  0000 C CNN
F 2 "" H 4500 5000 60  0000 C CNN
F 3 "" H 4500 5000 60  0000 C CNN
	1    4500 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J?
U 1 1 5D05EF8A
P 4400 7550
F 0 "J?" V 4338 7162 50  0000 R CNN
F 1 "Conn_01x06_Female" V 4247 7162 50  0000 R CNN
F 2 "" H 4400 7550 50  0001 C CNN
F 3 "~" H 4400 7550 50  0001 C CNN
	1    4400 7550
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 5650 4600 7350
Wire Wire Line
	4200 7350 4200 6250
Wire Wire Line
	4300 6300 4300 7350
Wire Wire Line
	4400 7350 4400 6350
Wire Wire Line
	4500 6400 4500 7350
Wire Notes Line
	4800 7200 4800 7750
Wire Notes Line
	4800 7750 3450 7750
Wire Notes Line
	3450 7750 3450 7200
Wire Notes Line
	3450 7200 4800 7200
Text Notes 3750 7700 0    50   ~ 0
Relais-Connection
Wire Wire Line
	4100 6900 4100 7350
Connection ~ 5600 1300
Wire Wire Line
	8400 750  8400 700 
Wire Wire Line
	8600 750  8500 750 
Wire Wire Line
	5600 1300 7750 1300
Wire Wire Line
	2200 4250 2000 4250
Wire Wire Line
	2000 4250 2000 3850
Wire Wire Line
	2000 3850 3800 3850
Wire Wire Line
	3800 3850 3800 4850
Wire Wire Line
	3700 4900 3700 3900
Wire Wire Line
	3700 3900 2050 3900
Wire Wire Line
	2050 3900 2050 4350
Wire Wire Line
	2050 4350 2200 4350
$EndSCHEMATC
