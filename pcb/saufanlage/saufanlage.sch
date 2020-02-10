EESchema Schematic File Version 4
LIBS:saufanlage-cache
EELAYER 29 0
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
L Regulator_Switching:BD9G341EFJ U1
U 1 1 5D01A16E
P 2300 4250
F 0 "U1" H 2450 4750 50  0000 C CNN
F 1 "BD9G341EFJ" H 2300 4400 50  0000 C CNN
F 2 "Package_SO:HTSOP-8-1EP_3.9x4.9mm_P1.27mm_EP2.4x3.2mm_ThermalVias" H 2400 3800 50  0001 L CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Rohm%20PDFs/BD9G341EFJ.pdf" H 2300 4250 50  0001 C CNN
	1    2300 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D01B48E
P 1650 4100
F 0 "R1" H 1720 4146 50  0000 L CNN
F 1 "R" H 1720 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1580 4100 50  0001 C CNN
F 3 "~" H 1650 4100 50  0001 C CNN
	1    1650 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3950 1650 3950
Wire Wire Line
	1900 4250 1650 4250
$Comp
L power:+12V #PWR0101
U 1 1 5D01BB90
P 900 3750
F 0 "#PWR0101" H 900 3600 50  0001 C CNN
F 1 "+12V" H 915 3923 50  0000 C CNN
F 2 "" H 900 3750 50  0001 C CNN
F 3 "" H 900 3750 50  0001 C CNN
	1    900  3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D01C34F
P 1650 4500
F 0 "R2" H 1720 4546 50  0000 L CNN
F 1 "R" H 1720 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1580 4500 50  0001 C CNN
F 3 "~" H 1650 4500 50  0001 C CNN
	1    1650 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D01CC24
P 1150 4100
F 0 "C1" H 1265 4146 50  0000 L CNN
F 1 "C" H 1265 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_2220_5650Metric_Pad1.97x5.40mm_HandSolder" H 1188 3950 50  0001 C CNN
F 3 "~" H 1150 4100 50  0001 C CNN
	1    1150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3950 1650 3950
Connection ~ 1650 3950
Connection ~ 1150 3950
Wire Wire Line
	1650 4350 1650 4250
Connection ~ 1650 4250
$Comp
L power:GND #PWR0102
U 1 1 5D01E1F2
P 1200 5350
F 0 "#PWR0102" H 1200 5100 50  0001 C CNN
F 1 "GND" H 1205 5177 50  0000 C CNN
F 2 "" H 1200 5350 50  0001 C CNN
F 3 "" H 1200 5350 50  0001 C CNN
	1    1200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4650 1650 5200
Wire Wire Line
	2200 4750 2200 5200
Wire Wire Line
	2200 5200 1650 5200
Connection ~ 1650 5200
Wire Wire Line
	1150 4250 1150 5200
$Comp
L Device:R R3
U 1 1 5D01EBEA
P 2400 5000
F 0 "R3" H 2470 5046 50  0000 L CNN
F 1 "R" H 2470 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 5000 50  0001 C CNN
F 3 "~" H 2400 5000 50  0001 C CNN
	1    2400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4750 2400 4850
Wire Wire Line
	2400 5150 2400 5200
Wire Wire Line
	2400 5200 2200 5200
Connection ~ 2200 5200
$Comp
L Device:R R4
U 1 1 5D01F4E8
P 2850 5000
F 0 "R4" H 2920 5046 50  0000 L CNN
F 1 "R" H 2920 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2780 5000 50  0001 C CNN
F 3 "~" H 2850 5000 50  0001 C CNN
	1    2850 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D01FC17
P 2850 4650
F 0 "C2" H 2965 4696 50  0000 L CNN
F 1 "C" H 2965 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2888 4500 50  0001 C CNN
F 3 "~" H 2850 4650 50  0001 C CNN
	1    2850 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4450 2850 4450
Wire Wire Line
	2850 4450 2850 4500
Wire Wire Line
	2850 4800 2850 4850
Wire Wire Line
	2850 5150 2850 5200
Wire Wire Line
	2850 5200 2400 5200
Connection ~ 2400 5200
$Comp
L Device:D_Schottky D1
U 1 1 5D02315A
P 3250 4100
F 0 "D1" V 3204 4179 50  0000 L CNN
F 1 "D_Schottky" V 3295 4179 50  0000 L CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 3250 4100 50  0001 C CNN
F 3 "~" H 3250 4100 50  0001 C CNN
	1    3250 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 3950 3250 3950
Wire Wire Line
	3250 4250 3250 5200
Wire Wire Line
	3250 5200 2850 5200
Connection ~ 2850 5200
$Comp
L Device:C C3
U 1 1 5D02433D
P 3450 3700
F 0 "C3" H 3565 3746 50  0000 L CNN
F 1 "C" H 3565 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3488 3550 50  0001 C CNN
F 3 "~" H 3450 3700 50  0001 C CNN
	1    3450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3750 2300 3550
Wire Wire Line
	2300 3550 3450 3550
Wire Wire Line
	3450 3850 3450 3950
Wire Wire Line
	3450 3950 3250 3950
Connection ~ 3250 3950
$Comp
L Device:L L1
U 1 1 5D025558
P 3800 3950
F 0 "L1" V 3990 3950 50  0000 C CNN
F 1 "L" V 3899 3950 50  0000 C CNN
F 2 "Inductor_SMD:L_12x12mm_H8mm" H 3800 3950 50  0001 C CNN
F 3 "~" H 3800 3950 50  0001 C CNN
	1    3800 3950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5D026291
P 4300 4350
F 0 "R6" H 4370 4396 50  0000 L CNN
F 1 "R" H 4370 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4230 4350 50  0001 C CNN
F 3 "~" H 4300 4350 50  0001 C CNN
	1    4300 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5D0267E9
P 4300 4850
F 0 "R7" H 4370 4896 50  0000 L CNN
F 1 "R" H 4370 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4230 4850 50  0001 C CNN
F 3 "~" H 4300 4850 50  0001 C CNN
	1    4300 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5D026E00
P 4700 4350
F 0 "C4" H 4815 4396 50  0000 L CNN
F 1 "C" H 4815 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 4738 4200 50  0001 C CNN
F 3 "~" H 4700 4350 50  0001 C CNN
	1    4700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3950 3650 3950
Connection ~ 3450 3950
Wire Wire Line
	3950 3950 4300 3950
Wire Wire Line
	4300 3950 4300 4200
Wire Wire Line
	4300 3950 4700 3950
Wire Wire Line
	4700 3950 4700 4200
Connection ~ 4300 3950
Wire Wire Line
	4300 4500 4300 4600
Wire Wire Line
	2700 4250 3100 4250
Wire Wire Line
	3100 4250 3100 4600
Wire Wire Line
	3100 4600 4300 4600
Connection ~ 4300 4600
Wire Wire Line
	4300 4600 4300 4700
Wire Wire Line
	4300 5000 4300 5200
Wire Wire Line
	4300 5200 3250 5200
Connection ~ 3250 5200
Wire Wire Line
	4700 4500 4700 5200
Wire Wire Line
	4700 5200 4300 5200
Connection ~ 4300 5200
Wire Notes Line
	650  5550 650  3400
Wire Notes Line
	650  3400 5000 3400
Wire Notes Line
	5000 3400 5000 5550
Wire Notes Line
	650  5550 5000 5550
Text Notes 4250 3650 0    50   ~ 0
Buck Converter
Wire Wire Line
	5800 3400 5800 3950
Wire Wire Line
	5800 3950 5450 3950
Connection ~ 4700 3950
Connection ~ 4700 5200
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5D059559
P 700 4300
F 0 "J1" H 618 3975 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 618 4066 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 700 4300 50  0001 C CNN
F 3 "~" H 700 4300 50  0001 C CNN
	1    700  4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	900  4200 900  3950
Wire Wire Line
	900  3950 1150 3950
Wire Wire Line
	900  4300 900  5200
Wire Wire Line
	900  5200 1150 5200
Connection ~ 1150 5200
$Comp
L Connector:Conn_01x03_Male J10
U 1 1 5D05C6E9
P 10500 5400
F 0 "J10" H 10608 5681 50  0000 C CNN
F 1 "Conn_01x03_Male" H 10608 5590 50  0000 C CNN
F 2 "Connector:FanPinHeader_1x03_P2.54mm_Vertical" H 10500 5400 50  0001 C CNN
F 3 "~" H 10500 5400 50  0001 C CNN
	1    10500 5400
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 5D05CFEE
P 10500 4900
F 0 "J9" H 10608 5181 50  0000 C CNN
F 1 "Conn_01x03_Male" H 10608 5090 50  0000 C CNN
F 2 "Connector:FanPinHeader_1x03_P2.54mm_Vertical" H 10500 4900 50  0001 C CNN
F 3 "~" H 10500 4900 50  0001 C CNN
	1    10500 4900
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 5D05DAE3
P 10500 4450
F 0 "J8" H 10608 4731 50  0000 C CNN
F 1 "Conn_01x03_Male" H 10608 4640 50  0000 C CNN
F 2 "Connector:FanPinHeader_1x03_P2.54mm_Vertical" H 10500 4450 50  0001 C CNN
F 3 "~" H 10500 4450 50  0001 C CNN
	1    10500 4450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 5D05E3DC
P 10500 4050
F 0 "J7" H 10608 4331 50  0000 C CNN
F 1 "Conn_01x03_Male" H 10608 4240 50  0000 C CNN
F 2 "Connector:FanPinHeader_1x03_P2.54mm_Vertical" H 10500 4050 50  0001 C CNN
F 3 "~" H 10500 4050 50  0001 C CNN
	1    10500 4050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x06_Female J6
U 1 1 5D05EF8A
P 7400 5850
F 0 "J6" V 7338 5462 50  0000 R CNN
F 1 "Conn_01x06_Female" V 7247 5462 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 7400 5850 50  0001 C CNN
F 3 "~" H 7400 5850 50  0001 C CNN
	1    7400 5850
	0    1    1    0   
$EndComp
Connection ~ 5800 3950
Connection ~ 6850 5200
Wire Wire Line
	4700 5200 5050 5200
Wire Wire Line
	6850 3900 6850 5200
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J5
U 1 1 5D053E27
P 7350 3700
F 0 "J5" V 7446 4679 50  0000 L CNN
F 1 "Conn_02x20_Odd_Even" V 7355 4679 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 7350 3700 50  0001 C CNN
F 3 "~" H 7350 3700 50  0001 C CNN
	1    7350 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 3900 6450 4200
Wire Wire Line
	9700 3950 10300 3950
Wire Wire Line
	9700 3950 9700 4200
Wire Wire Line
	9700 4200 9700 4350
Wire Wire Line
	9700 4350 10300 4350
Connection ~ 9700 4200
Wire Wire Line
	9700 4350 9700 4800
Wire Wire Line
	9700 4800 10300 4800
Connection ~ 9700 4350
Wire Wire Line
	9700 4800 9700 5300
Wire Wire Line
	9700 5300 10300 5300
Connection ~ 9700 4800
Wire Wire Line
	9400 5200 9400 5500
Wire Wire Line
	9400 5500 10300 5500
Wire Wire Line
	9400 5200 9400 5000
Wire Wire Line
	9400 5000 10300 5000
Connection ~ 9400 5200
Wire Wire Line
	9400 5000 9400 4550
Wire Wire Line
	9400 4550 10300 4550
Connection ~ 9400 5000
Wire Wire Line
	9400 4550 9400 4150
Wire Wire Line
	9400 4150 10300 4150
Connection ~ 9400 4550
Wire Wire Line
	8250 3900 8250 4050
Wire Wire Line
	8250 4050 10300 4050
Wire Wire Line
	8150 3900 8150 4450
Wire Wire Line
	8150 4450 10300 4450
Wire Wire Line
	8050 3900 8050 4900
Wire Wire Line
	8050 4900 10300 4900
Wire Wire Line
	7950 3900 7950 5400
Wire Wire Line
	7950 5400 10300 5400
Wire Notes Line
	9200 3700 9200 5750
Wire Notes Line
	9200 5750 11000 5750
Wire Notes Line
	11000 5750 11000 3700
Wire Notes Line
	11000 3700 9200 3700
Text Notes 9500 3800 0    50   ~ 0
Flowmeter-connection
Wire Wire Line
	6850 5200 7100 5200
Wire Wire Line
	7600 3950 7600 5650
Wire Wire Line
	5800 3950 7600 3950
Connection ~ 7100 5200
Wire Wire Line
	7100 5200 9400 5200
Wire Wire Line
	7200 5650 7200 4550
Wire Wire Line
	7200 4550 8450 4550
Wire Wire Line
	8450 4550 8450 3400
Wire Wire Line
	8450 3400 8350 3400
Wire Wire Line
	8250 3400 8250 3350
Wire Wire Line
	8250 3350 8500 3350
Wire Wire Line
	8500 3350 8500 4600
Wire Wire Line
	8500 4600 7300 4600
Wire Wire Line
	7300 4600 7300 5650
Wire Wire Line
	7400 5650 7400 4650
Wire Wire Line
	7400 4650 8550 4650
Wire Wire Line
	8550 4650 8550 3300
Wire Wire Line
	8550 3300 8150 3300
Wire Wire Line
	8150 3300 8150 3400
Wire Wire Line
	7950 3400 7950 3250
Wire Wire Line
	7950 3250 8600 3250
Wire Wire Line
	8600 3250 8600 4700
Wire Wire Line
	8600 4700 7500 4700
Wire Wire Line
	7500 4700 7500 5650
Wire Notes Line
	7800 5500 7800 6050
Wire Notes Line
	7800 6050 6450 6050
Wire Notes Line
	6450 6050 6450 5500
Wire Notes Line
	6450 5500 7800 5500
Text Notes 6750 6000 0    50   ~ 0
Relais-Connection
Wire Wire Line
	7100 5200 7100 5650
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5D0BFEAB
P 5850 4400
F 0 "J3" H 5878 4376 50  0000 L CNN
F 1 "Conn_01x02_Female" H 5878 4285 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 5850 4400 50  0001 C CNN
F 3 "~" H 5850 4400 50  0001 C CNN
	1    5850 4400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5D0C0A4D
P 5450 4200
F 0 "SW1" V 5404 4348 50  0000 L CNN
F 1 "SW_Push" V 5495 4348 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_CK_RS282G05A3" H 5450 4400 50  0001 C CNN
F 3 "~" H 5450 4400 50  0001 C CNN
	1    5450 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 4000 5450 3950
Connection ~ 5450 3950
Wire Wire Line
	5450 3950 5300 3950
Wire Wire Line
	5450 4400 5650 4400
Wire Wire Line
	5650 4500 5450 4500
Wire Wire Line
	5450 4500 5450 5200
Connection ~ 5450 5200
Wire Wire Line
	5450 5200 6850 5200
Wire Notes Line
	6200 4900 5250 4900
Wire Notes Line
	5250 4900 5250 4050
Wire Notes Line
	5250 4050 6200 4050
Wire Notes Line
	6200 4050 6200 4900
Text Notes 5350 4850 0    50   ~ 0
Raspberry - reset
$Comp
L power:+5V #PWR01
U 1 1 5D02C15B
P 5300 3600
F 0 "#PWR01" H 5300 3450 50  0001 C CNN
F 1 "+5V" H 5315 3773 50  0000 C CNN
F 2 "" H 5300 3600 50  0001 C CNN
F 3 "" H 5300 3600 50  0001 C CNN
	1    5300 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5D02CB29
P 8900 1700
F 0 "#PWR03" H 8900 1550 50  0001 C CNN
F 1 "+3.3V" H 8915 1873 50  0000 C CNN
F 2 "" H 8900 1700 50  0001 C CNN
F 3 "" H 8900 1700 50  0001 C CNN
	1    8900 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3600 5300 3950
Connection ~ 5300 3950
Wire Wire Line
	5300 3950 5050 3950
$Comp
L Device:R R9
U 1 1 5D03308A
P 5050 4300
F 0 "R9" H 5120 4346 50  0000 L CNN
F 1 "R" H 5120 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 4300 50  0001 C CNN
F 3 "~" H 5050 4300 50  0001 C CNN
	1    5050 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5D033BDC
P 5050 4800
F 0 "D2" V 5089 4683 50  0000 R CNN
F 1 "LED" V 4998 4683 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5050 4800 50  0001 C CNN
F 3 "~" H 5050 4800 50  0001 C CNN
	1    5050 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 4150 5050 3950
Connection ~ 5050 3950
Wire Wire Line
	5050 3950 4700 3950
Wire Wire Line
	5050 4450 5050 4650
Wire Wire Line
	5050 4950 5050 5200
Connection ~ 5050 5200
Wire Wire Line
	5050 5200 5450 5200
$Comp
L Connector:Conn_01x07_Male J4
U 1 1 5D0676CA
P 7200 2000
F 0 "J4" V 7035 1978 50  0000 C CNN
F 1 "Conn_01x07_Male" V 7126 1978 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B7B-EH-A_1x07_P2.50mm_Vertical" H 7200 2000 50  0001 C CNN
F 3 "~" H 7200 2000 50  0001 C CNN
	1    7200 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 2300 8900 2300
Wire Wire Line
	7400 2200 7400 2300
Wire Wire Line
	7000 2200 7000 2300
Wire Wire Line
	7000 2300 7400 2300
Connection ~ 7400 2300
Wire Wire Line
	7300 2200 7300 2450
Wire Wire Line
	7300 2450 6850 2450
Wire Wire Line
	7200 2200 7200 2400
Wire Wire Line
	7200 2400 6750 2400
Wire Notes Line
	6600 1650 7700 1650
Wire Notes Line
	7700 1650 7700 2500
Wire Notes Line
	7700 2500 6600 2500
Wire Notes Line
	6600 2500 6600 1650
Text Notes 6750 1750 0    50   ~ 0
Fingerprint Connection
$Comp
L 74xx:74HC595 U2
U 1 1 5D0934A1
P 5900 2200
F 0 "U2" H 5900 2981 50  0000 C CNN
F 1 "74HC595" H 5900 2890 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 5900 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5900 2200 50  0001 C CNN
	1    5900 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 2000 6300 1500
Wire Wire Line
	6300 1500 6000 1500
$Comp
L power:GND #PWR02
U 1 1 5D0A4469
P 6000 1150
F 0 "#PWR02" H 6000 900 50  0001 C CNN
F 1 "GND" H 6005 977 50  0000 C CNN
F 2 "" H 6000 1150 50  0001 C CNN
F 3 "" H 6000 1150 50  0001 C CNN
	1    6000 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 1150 6000 1300
Connection ~ 6000 1500
Wire Wire Line
	6000 1500 5900 1500
Wire Wire Line
	5800 3400 5900 3400
Wire Wire Line
	5900 2800 5900 3400
Connection ~ 5900 3400
Wire Wire Line
	5900 3400 6450 3400
NoConn ~ 5500 1700
NoConn ~ 6300 2300
Wire Wire Line
	8900 1700 8900 2300
Connection ~ 8900 2300
Wire Wire Line
	6450 4200 8900 4200
Wire Wire Line
	8900 2300 8900 4200
Connection ~ 8900 4200
Wire Wire Line
	8900 4200 9700 4200
Wire Wire Line
	7100 2200 7100 5200
Wire Wire Line
	6850 2450 6850 3400
Wire Wire Line
	6750 2400 6750 3400
Wire Wire Line
	7150 3400 7150 2750
Wire Wire Line
	7150 2750 6500 2750
Wire Wire Line
	6500 2750 6500 2400
Wire Wire Line
	6500 2400 6300 2400
Wire Wire Line
	6300 2100 6550 2100
Wire Wire Line
	6550 2100 6550 2700
Wire Wire Line
	6550 2700 7250 2700
Wire Wire Line
	7250 2700 7250 3400
Wire Wire Line
	6300 2600 7450 2600
Wire Wire Line
	7450 2600 7450 3400
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J2
U 1 1 5D10A3B7
P 4600 1950
F 0 "J2" H 4650 2367 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 4650 2276 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x06_P2.54mm_Vertical" H 4600 1950 50  0001 C CNN
F 3 "~" H 4600 1950 50  0001 C CNN
	1    4600 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2200 5200 2200
Wire Wire Line
	5200 2200 5200 1500
Wire Wire Line
	5200 1500 4400 1500
Wire Wire Line
	4400 1500 4400 1750
Wire Wire Line
	4900 1750 5150 1750
Wire Wire Line
	5150 1750 5150 2300
Wire Wire Line
	5150 2300 5500 2300
Wire Wire Line
	4400 1850 4350 1850
Wire Wire Line
	4350 1850 4350 1450
Wire Wire Line
	4350 1450 5250 1450
Wire Wire Line
	5250 1450 5250 1900
Wire Wire Line
	5250 1900 5500 1900
Wire Wire Line
	4900 1850 5100 1850
Wire Wire Line
	5100 1850 5100 2400
Wire Wire Line
	5100 2400 5500 2400
Wire Wire Line
	4400 1950 4300 1950
Wire Wire Line
	4300 1950 4300 1400
Wire Wire Line
	4300 1400 5300 1400
Wire Wire Line
	5300 1400 5300 2000
Wire Wire Line
	5300 2000 5500 2000
$Comp
L Device:R R8
U 1 1 5D132B9D
P 5000 1100
F 0 "R8" H 5070 1146 50  0000 L CNN
F 1 "R" H 5070 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4930 1100 50  0001 C CNN
F 3 "~" H 5000 1100 50  0001 C CNN
	1    5000 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5D13389C
P 5200 1100
F 0 "R10" H 5270 1146 50  0000 L CNN
F 1 "R" H 5270 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5130 1100 50  0001 C CNN
F 3 "~" H 5200 1100 50  0001 C CNN
	1    5200 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D133E6B
P 4100 1100
F 0 "R5" H 4170 1146 50  0000 L CNN
F 1 "R" H 4170 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 1100 50  0001 C CNN
F 3 "~" H 4100 1100 50  0001 C CNN
	1    4100 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D134B33
P 5500 1100
F 0 "R11" H 5570 1146 50  0000 L CNN
F 1 "R" H 5570 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5430 1100 50  0001 C CNN
F 3 "~" H 5500 1100 50  0001 C CNN
	1    5500 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1950 5000 1250
Wire Wire Line
	4900 1950 5000 1950
Wire Wire Line
	4900 2050 5050 2050
Wire Wire Line
	5050 2050 5050 1300
Wire Wire Line
	5050 1300 5200 1300
Wire Wire Line
	5200 1300 5200 1250
Wire Wire Line
	4400 2150 4100 2150
Wire Wire Line
	4100 2150 4100 1250
Wire Wire Line
	4900 2250 5400 2250
Wire Wire Line
	5400 2250 5400 1300
Wire Wire Line
	5400 1300 5500 1300
Wire Wire Line
	5500 1300 5500 1250
Wire Wire Line
	4100 950  4100 900 
Wire Wire Line
	4100 900  5000 900 
Wire Wire Line
	5750 900  5750 1300
Wire Wire Line
	5750 1300 6000 1300
Connection ~ 6000 1300
Wire Wire Line
	6000 1300 6000 1500
Wire Wire Line
	5500 950  5500 900 
Connection ~ 5500 900 
Wire Wire Line
	5500 900  5750 900 
Wire Wire Line
	5200 950  5200 900 
Connection ~ 5200 900 
Wire Wire Line
	5200 900  5500 900 
Wire Wire Line
	5000 950  5000 900 
Connection ~ 5000 900 
Wire Wire Line
	5000 900  5200 900 
Wire Wire Line
	5500 2500 4300 2500
Wire Wire Line
	4300 2500 4300 2050
Wire Wire Line
	4300 2050 4400 2050
Wire Wire Line
	4400 2250 4400 2600
Wire Wire Line
	4400 2600 5500 2600
Wire Wire Line
	4900 2150 5500 2150
Wire Wire Line
	5500 2150 5500 2100
Wire Notes Line
	6450 3050 6450 700 
Wire Notes Line
	6450 700  3700 700 
Wire Notes Line
	3700 700  3700 3050
Wire Notes Line
	3700 3050 6450 3050
Text Notes 4200 2900 0    50   ~ 0
7-seg anzeige
NoConn ~ 6550 3400
NoConn ~ 6650 3400
NoConn ~ 6650 3900
NoConn ~ 6550 3900
NoConn ~ 6950 3900
NoConn ~ 6950 3400
NoConn ~ 7050 3400
NoConn ~ 7050 3900
NoConn ~ 7150 3900
NoConn ~ 7250 3900
NoConn ~ 7350 3900
NoConn ~ 7450 3900
NoConn ~ 7550 3900
NoConn ~ 7650 3900
NoConn ~ 7750 3900
NoConn ~ 7850 3900
NoConn ~ 7350 3400
NoConn ~ 7550 3400
NoConn ~ 7650 3400
NoConn ~ 7750 3400
NoConn ~ 7850 3400
NoConn ~ 8050 3400
NoConn ~ 8350 3900
NoConn ~ 7500 2200
NoConn ~ 6900 2200
NoConn ~ 6750 3900
Wire Wire Line
	1150 5200 1200 5200
Wire Wire Line
	1200 5350 1200 5200
Connection ~ 1200 5200
Wire Wire Line
	1200 5200 1650 5200
Wire Wire Line
	900  3750 900  3950
Connection ~ 900  3950
$EndSCHEMATC