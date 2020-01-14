EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title "Saufanlage - Brainz board"
Date "2020-01-09"
Rev "0.1"
Comp "saufhaengerle"
Comment1 "bebbo"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J5
U 1 1 5E19E2AB
P 2850 9600
F 0 "J5" H 2900 10117 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 2900 10026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 2850 9600 50  0001 C CNN
F 3 "~" H 2850 9600 50  0001 C CNN
	1    2850 9600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J6
U 1 1 5E19F56D
P 2850 10800
F 0 "J6" H 2900 11317 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 2900 11226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 2850 10800 50  0001 C CNN
F 3 "~" H 2850 10800 50  0001 C CNN
	1    2850 10800
	1    0    0    -1  
$EndComp
$Comp
L arduino:Arduino_Mega2560_Shield XA1
U 1 1 5E1A2AF5
P 7600 4500
F 0 "XA1" H 7600 2119 60  0000 C CNN
F 1 "Arduino_Mega2560_Shield" H 7600 2013 60  0000 C CNN
F 2 "Arduino:Arduino_Mega2560_Shield" H 8300 7250 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-mega-2560-rev3" H 8300 7250 60  0001 C CNN
	1    7600 4500
	1    0    0    -1  
$EndComp
$Comp
L arduino:Arduino_Nano_Socket XA3
U 1 1 5E1B3A0C
P 16250 3400
F 0 "XA3" H 16250 4637 60  0000 C CNN
F 1 "Arduino_Nano_Socket" H 16250 4531 60  0000 C CNN
F 2 "Arduino:Arduino_Nano_Socket" H 18050 7150 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-nano" H 18050 7150 60  0001 C CNN
	1    16250 3400
	1    0    0    -1  
$EndComp
$Comp
L arduino:Arduino_Nano_Socket XA4
U 1 1 5E1B4BD3
P 20600 3400
F 0 "XA4" H 20600 4637 60  0000 C CNN
F 1 "Arduino_Nano_Socket" H 20600 4531 60  0000 C CNN
F 2 "Arduino:Arduino_Nano_Socket" H 22400 7150 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-nano" H 22400 7150 60  0001 C CNN
	1    20600 3400
	1    0    0    -1  
$EndComp
Text Label 2700 10200 0    50   ~ 0
LEDMatrix2
$Comp
L Connector:Conn_01x10_Male J22
U 1 1 5E1BDD70
P 8900 12900
F 0 "J22" H 9050 12200 50  0000 C CNN
F 1 "Conn_01x10_Male" H 8850 13350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 8900 12900 50  0001 C CNN
F 3 "~" H 8900 12900 50  0001 C CNN
	1    8900 12900
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J21
U 1 1 5E1BF749
P 7950 14100
F 0 "J21" V 8104 13912 50  0000 R CNN
F 1 "Conn_01x03_Male" V 8000 13950 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7950 14100 50  0001 C CNN
F 3 "~" H 7950 14100 50  0001 C CNN
	1    7950 14100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J26
U 1 1 5E1C0C12
P 9150 14100
F 0 "J26" V 9304 13912 50  0000 R CNN
F 1 "Conn_01x03_Male" V 9213 13912 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9150 14100 50  0001 C CNN
F 3 "~" H 9150 14100 50  0001 C CNN
	1    9150 14100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J28
U 1 1 5E1C111F
P 9800 14700
F 0 "J28" V 9954 14512 50  0000 R CNN
F 1 "Conn_01x03_Male" V 9863 14512 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9800 14700 50  0001 C CNN
F 3 "~" H 9800 14700 50  0001 C CNN
	1    9800 14700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5E1C208A
P 2300 9150
F 0 "#PWR06" H 2300 8900 50  0001 C CNN
F 1 "GND" H 2305 8977 50  0000 C CNN
F 2 "" H 2300 9150 50  0001 C CNN
F 3 "" H 2300 9150 50  0001 C CNN
	1    2300 9150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 9300 2300 9300
Wire Wire Line
	2300 9300 2300 9150
$Comp
L power:GND #PWR07
U 1 1 5E1CA513
P 2350 10350
F 0 "#PWR07" H 2350 10100 50  0001 C CNN
F 1 "GND" H 2355 10177 50  0000 C CNN
F 2 "" H 2350 10350 50  0001 C CNN
F 3 "" H 2350 10350 50  0001 C CNN
	1    2350 10350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 10350 2350 10500
Wire Wire Line
	2350 10500 2650 10500
$Comp
L power:GND #PWR015
U 1 1 5E1D2ADE
P 2900 5150
F 0 "#PWR015" H 2900 4900 50  0001 C CNN
F 1 "GND" H 2905 4977 50  0000 C CNN
F 2 "" H 2900 5150 50  0001 C CNN
F 3 "" H 2900 5150 50  0001 C CNN
	1    2900 5150
	1    0    0    -1  
$EndComp
Connection ~ 2900 5050
Wire Wire Line
	2900 5050 2900 5150
Wire Wire Line
	2650 9700 2300 9700
Wire Wire Line
	2300 9700 2300 9300
Connection ~ 2300 9300
Wire Wire Line
	2650 9900 2300 9900
Wire Wire Line
	2300 9900 2300 9700
Connection ~ 2300 9700
Wire Wire Line
	2650 10900 2350 10900
Wire Wire Line
	2350 10900 2350 10500
Connection ~ 2350 10500
Connection ~ 2350 10900
Wire Wire Line
	2650 11100 2350 11100
Wire Wire Line
	2350 10900 2350 11100
Text Label 2600 9000 0    50   ~ 0
LEDMatrix1
Text GLabel 3900 3150 2    50   Input ~ 0
SDA
Text GLabel 3900 3250 2    50   Input ~ 0
SCL
Text GLabel 6200 3350 0    50   Input ~ 0
SDA
Text GLabel 6200 3450 0    50   Input ~ 0
SCL
Text GLabel 10500 3200 0    50   Input ~ 0
SDA
Text GLabel 10500 3100 0    50   Input ~ 0
SCL
Wire Wire Line
	10500 3100 10600 3100
Wire Wire Line
	10500 3200 10600 3200
Wire Wire Line
	6200 3350 6300 3350
Wire Wire Line
	6200 3450 6300 3450
Text Label 7850 14050 0    50   ~ 0
Flowmeter1
Text Label 8500 14600 0    50   ~ 0
Flowmeter2
Text Label 9050 14050 0    50   ~ 0
Flowmeter3
Text Label 9650 14650 0    50   ~ 0
Flowmeter4
$Comp
L power:GND #PWR043
U 1 1 5E1F7C7D
P 8050 14450
F 0 "#PWR043" H 8050 14200 50  0001 C CNN
F 1 "GND" H 8055 14277 50  0000 C CNN
F 2 "" H 8050 14450 50  0001 C CNN
F 3 "" H 8050 14450 50  0001 C CNN
	1    8050 14450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 5E1F83CD
P 8700 15000
F 0 "#PWR044" H 8700 14750 50  0001 C CNN
F 1 "GND" H 8705 14827 50  0000 C CNN
F 2 "" H 8700 15000 50  0001 C CNN
F 3 "" H 8700 15000 50  0001 C CNN
	1    8700 15000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 5E1F88F0
P 9250 14450
F 0 "#PWR048" H 9250 14200 50  0001 C CNN
F 1 "GND" H 9255 14277 50  0000 C CNN
F 2 "" H 9250 14450 50  0001 C CNN
F 3 "" H 9250 14450 50  0001 C CNN
	1    9250 14450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 5E1F8B9E
P 9900 15050
F 0 "#PWR049" H 9900 14800 50  0001 C CNN
F 1 "GND" H 9905 14877 50  0000 C CNN
F 2 "" H 9900 15050 50  0001 C CNN
F 3 "" H 9900 15050 50  0001 C CNN
	1    9900 15050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J25
U 1 1 5E1C03CC
P 8600 14650
F 0 "J25" V 8754 14462 50  0000 R CNN
F 1 "Conn_01x03_Male" V 8663 14462 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8600 14650 50  0001 C CNN
F 3 "~" H 8600 14650 50  0001 C CNN
	1    8600 14650
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 14450 7850 14300
Wire Wire Line
	8050 14300 8050 14450
Wire Wire Line
	8500 15000 8500 14850
Wire Wire Line
	8700 14850 8700 15000
Wire Wire Line
	9050 14300 9050 14450
Wire Wire Line
	9250 14450 9250 14300
Wire Wire Line
	9700 14900 9700 15050
Wire Wire Line
	9900 15050 9900 14900
Wire Wire Line
	8550 13300 8700 13300
Wire Wire Line
	8550 12400 8700 12400
Text Label 6100 14900 0    50   ~ 0
Fingerprint
Text Label 6350 15400 0    50   ~ 0
+3.3V
Text Label 6350 15300 0    50   ~ 0
UART_TX
Text Label 6350 15200 0    50   ~ 0
UART_RX
Text Label 6350 15100 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_01x04 J18
U 1 1 5E1C8FBA
P 6300 15200
F 0 "J18" H 6250 15400 50  0000 L CNN
F 1 "Conn_01x04" H 6250 14900 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6300 15200 50  0001 C CNN
F 3 "~" H 6300 15200 50  0001 C CNN
	1    6300 15200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5E209D77
P 6000 15100
F 0 "#PWR037" H 6000 14850 50  0001 C CNN
F 1 "GND" H 6005 14927 50  0000 C CNN
F 2 "" H 6000 15100 50  0001 C CNN
F 3 "" H 6000 15100 50  0001 C CNN
	1    6000 15100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 15400 6100 15400
Wire Wire Line
	6100 15100 6000 15100
Text GLabel 6200 2650 0    50   Input ~ 0
MEGA_TX1
Text GLabel 6200 2550 0    50   Input ~ 0
MEGA_RX1
Text GLabel 6000 15300 0    50   Input ~ 0
MEGA_RX1
Text GLabel 6000 15200 0    50   Input ~ 0
MEGA_TX1
Wire Wire Line
	6000 15200 6100 15200
Wire Wire Line
	6100 15300 6000 15300
$Comp
L power:GND #PWR032
U 1 1 5E1C9452
P 6150 5950
F 0 "#PWR032" H 6150 5700 50  0001 C CNN
F 1 "GND" V 6155 5822 50  0000 R CNN
F 2 "" H 6150 5950 50  0001 C CNN
F 3 "" H 6150 5950 50  0001 C CNN
	1    6150 5950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 5E1EABAD
P 7750 1400
F 0 "#PWR035" H 7750 1150 50  0001 C CNN
F 1 "GND" H 7755 1227 50  0000 C CNN
F 2 "" H 7750 1400 50  0001 C CNN
F 3 "" H 7750 1400 50  0001 C CNN
	1    7750 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 1400 7750 1900
Text Notes 2600 8800 0    50   ~ 0
LED Matrix Connection
Wire Notes Line
	8250 12100 8250 13650
Wire Notes Line
	9250 13650 9250 12100
Text Notes 8800 13600 0    50   ~ 0
Scale1
$Comp
L power:GND #PWR042
U 1 1 5E1F7C1D
P 8550 13300
F 0 "#PWR042" H 8550 13050 50  0001 C CNN
F 1 "GND" H 8555 13127 50  0000 C CNN
F 2 "" H 8550 13300 50  0001 C CNN
F 3 "" H 8550 13300 50  0001 C CNN
	1    8550 13300
	1    0    0    -1  
$EndComp
Text Label 8950 13200 0    50   ~ 0
SCK1
Text Label 8950 13000 0    50   ~ 0
SCK2
Text Label 8950 12800 0    50   ~ 0
SCK3
Text Label 8950 12600 0    50   ~ 0
SCK4
Text Label 8950 13100 0    50   ~ 0
DT1
Text Label 8950 12900 0    50   ~ 0
DT2
Text Label 8950 12700 0    50   ~ 0
DT3
Text Label 8950 12500 0    50   ~ 0
DT4
$Comp
L Connector:Conn_01x10_Male J27
U 1 1 5E2B836C
P 10050 12900
F 0 "J27" H 10200 12200 50  0000 C CNN
F 1 "Conn_01x10_Male" H 10000 13350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 10050 12900 50  0001 C CNN
F 3 "~" H 10050 12900 50  0001 C CNN
	1    10050 12900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 13300 9850 13300
$Comp
L power:GND #PWR045
U 1 1 5E2E991C
P 9700 13300
F 0 "#PWR045" H 9700 13050 50  0001 C CNN
F 1 "GND" H 9705 13127 50  0000 C CNN
F 2 "" H 9700 13300 50  0001 C CNN
F 3 "" H 9700 13300 50  0001 C CNN
	1    9700 13300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 12400 9850 12400
Text Notes 10050 13600 0    50   ~ 0
Scale2
Wire Notes Line
	10350 12050 9350 12050
Wire Notes Line
	9350 12050 9350 13650
Wire Notes Line
	9350 13650 10350 13650
Wire Notes Line
	10350 13650 10350 12050
Wire Notes Line
	6900 14650 5500 14650
Text Notes 6200 15650 0    50   ~ 0
Fingerprint
Text GLabel 9000 5550 2    50   Input ~ 0
RELAIS3
Text GLabel 9000 5650 2    50   Input ~ 0
RELAIS4
Text GLabel 9000 5750 2    50   Input ~ 0
RELAIS5
Wire Notes Line
	7100 13850 7100 15700
Wire Notes Line
	7100 15700 10250 15700
Wire Notes Line
	10250 15700 10250 13850
Wire Notes Line
	10250 13850 7100 13850
Text Notes 8350 15650 0    50   ~ 0
Flowmeter
$Comp
L power:GND #PWR01
U 1 1 5F162060
P 1050 14900
F 0 "#PWR01" H 1050 14650 50  0001 C CNN
F 1 "GND" H 1055 14727 50  0000 C CNN
F 2 "" H 1050 14900 50  0001 C CNN
F 3 "" H 1050 14900 50  0001 C CNN
	1    1050 14900
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x08_Male J1
U 1 1 5F16322B
P 850 15450
F 0 "J1" H 958 15931 50  0000 C CNN
F 1 "Conn_01x08_Male" H 958 15840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 850 15450 50  0001 C CNN
F 3 "~" H 850 15450 50  0001 C CNN
	1    850  15450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 14900 1050 15150
Connection ~ 1050 15150
Wire Wire Line
	1050 15150 1050 15250
Connection ~ 1050 15250
Wire Wire Line
	1050 15250 1050 15350
Connection ~ 1050 15350
Wire Wire Line
	1050 15350 1050 15450
Connection ~ 1050 15450
Wire Wire Line
	1050 15450 1050 15550
Connection ~ 1050 15550
Wire Wire Line
	1050 15550 1050 15650
Connection ~ 1050 15650
Wire Wire Line
	1050 15650 1050 15750
Connection ~ 1050 15750
Wire Wire Line
	1050 15750 1050 15850
$Comp
L Connector:Conn_01x08_Male J3
U 1 1 5F1BF1AF
P 1600 15450
F 0 "J3" H 1708 15931 50  0000 C CNN
F 1 "Conn_01x08_Male" H 1708 15840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1600 15450 50  0001 C CNN
F 3 "~" H 1600 15450 50  0001 C CNN
	1    1600 15450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5F1C1039
P 1800 14900
F 0 "#PWR03" H 1800 14750 50  0001 C CNN
F 1 "+3.3V" H 1815 15073 50  0000 C CNN
F 2 "" H 1800 14900 50  0001 C CNN
F 3 "" H 1800 14900 50  0001 C CNN
	1    1800 14900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 14900 1800 15150
Connection ~ 1800 15150
Wire Wire Line
	1800 15150 1800 15250
Connection ~ 1800 15250
Wire Wire Line
	1800 15250 1800 15350
Connection ~ 1800 15350
Wire Wire Line
	1800 15350 1800 15450
Connection ~ 1800 15450
Wire Wire Line
	1800 15450 1800 15550
Connection ~ 1800 15550
Wire Wire Line
	1800 15550 1800 15650
Connection ~ 1800 15650
Wire Wire Line
	1800 15650 1800 15750
Connection ~ 1800 15750
Wire Wire Line
	1800 15750 1800 15850
$Comp
L Connector:Conn_01x08_Male J4
U 1 1 5F1E0F8D
P 2300 15450
F 0 "J4" H 2408 15931 50  0000 C CNN
F 1 "Conn_01x08_Male" H 2408 15840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2300 15450 50  0001 C CNN
F 3 "~" H 2300 15450 50  0001 C CNN
	1    2300 15450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5F1E31A5
P 2500 14900
F 0 "#PWR08" H 2500 14750 50  0001 C CNN
F 1 "+5V" H 2515 15073 50  0000 C CNN
F 2 "" H 2500 14900 50  0001 C CNN
F 3 "" H 2500 14900 50  0001 C CNN
	1    2500 14900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 14900 2500 15150
Connection ~ 2500 15150
Wire Wire Line
	2500 15150 2500 15250
Connection ~ 2500 15250
Wire Wire Line
	2500 15250 2500 15350
Connection ~ 2500 15350
Wire Wire Line
	2500 15350 2500 15450
Connection ~ 2500 15450
Wire Wire Line
	2500 15450 2500 15550
Connection ~ 2500 15550
Wire Wire Line
	2500 15550 2500 15650
Connection ~ 2500 15650
Wire Wire Line
	2500 15650 2500 15750
Connection ~ 2500 15750
Wire Wire Line
	2500 15750 2500 15850
Wire Wire Line
	6200 6250 6300 6250
$Comp
L power:+8V #PWR033
U 1 1 5F34DB11
P 6200 6650
F 0 "#PWR033" H 6200 6500 50  0001 C CNN
F 1 "+8V" H 6215 6823 50  0000 C CNN
F 2 "" H 6200 6650 50  0001 C CNN
F 3 "" H 6200 6650 50  0001 C CNN
	1    6200 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 6650 6300 6650
Wire Wire Line
	6300 6350 6300 6450
Connection ~ 6300 6450
Wire Wire Line
	6300 6450 6300 6550
Wire Wire Line
	6200 6450 6300 6450
$Comp
L power:+8V #PWR040
U 1 1 5F44FB35
P 10500 4300
F 0 "#PWR040" H 10500 4150 50  0001 C CNN
F 1 "+8V" V 10515 4428 50  0000 L CNN
F 2 "" H 10500 4300 50  0001 C CNN
F 3 "" H 10500 4300 50  0001 C CNN
	1    10500 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10500 4100 10600 4100
Wire Wire Line
	10600 4200 10500 4200
Wire Wire Line
	10500 4300 10600 4300
$Comp
L power:GND #PWR039
U 1 1 5F4C1C9F
P 10500 3900
F 0 "#PWR039" H 10500 3650 50  0001 C CNN
F 1 "GND" V 10505 3772 50  0000 R CNN
F 2 "" H 10500 3900 50  0001 C CNN
F 3 "" H 10500 3900 50  0001 C CNN
	1    10500 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	10500 3900 10600 3900
Wire Wire Line
	10600 4000 10500 4000
Wire Wire Line
	10500 4000 10500 3900
Connection ~ 10500 3900
Wire Wire Line
	6300 5850 6300 5950
Wire Wire Line
	6300 6050 6300 6150
Wire Wire Line
	8900 4450 9000 4450
Wire Wire Line
	8900 4550 9000 4550
Wire Wire Line
	8900 4650 9000 4650
Wire Wire Line
	8900 4750 9000 4750
Wire Wire Line
	8900 4850 9000 4850
Wire Wire Line
	8900 4950 9000 4950
Wire Wire Line
	8900 5050 9000 5050
Wire Wire Line
	8900 5450 9000 5450
Wire Wire Line
	8900 5550 9000 5550
Wire Wire Line
	8900 5650 9000 5650
Wire Wire Line
	8900 5750 9000 5750
Connection ~ 6300 5950
Wire Wire Line
	6200 2550 6300 2550
Wire Wire Line
	6200 2650 6300 2650
Wire Wire Line
	6150 5950 6300 5950
Wire Wire Line
	3800 3150 3900 3150
Wire Wire Line
	3800 3250 3900 3250
Connection ~ 2800 5050
Connection ~ 3000 5050
Connection ~ 3100 5050
Connection ~ 2700 5050
Wire Wire Line
	3200 5050 3300 5050
Wire Wire Line
	2600 5050 2700 5050
Wire Wire Line
	2900 5050 3000 5050
Wire Wire Line
	2800 5050 2900 5050
Wire Wire Line
	2700 5050 2800 5050
Wire Wire Line
	3000 5050 3100 5050
Wire Wire Line
	3100 5050 3200 5050
Connection ~ 3200 5050
Text GLabel 2600 6300 0    50   Input ~ 0
SDA
Text GLabel 2600 6400 0    50   Input ~ 0
SCL
Text GLabel 2600 6500 0    50   Input ~ 0
RPI_GPIO4
Text GLabel 2600 6700 0    50   Input ~ 0
RPI_GPIO17
Text GLabel 2600 6800 0    50   Input ~ 0
RPI_GPIO27
Text GLabel 2600 6900 0    50   Input ~ 0
RPI_GPIO22
Text GLabel 2600 7100 0    50   Input ~ 0
RPI_GPIO10
Text GLabel 2600 7200 0    50   Input ~ 0
RPI_GPIO9
Text GLabel 2600 7300 0    50   Input ~ 0
RPI_GPIO11
Text GLabel 2600 7500 0    50   Input ~ 0
RPI_IDSD
Text GLabel 2600 7600 0    50   Input ~ 0
RPI_GPIO5
Text GLabel 2600 7700 0    50   Input ~ 0
RPI_GPIO6
Text GLabel 2600 7800 0    50   Input ~ 0
RPI_GPIO13
Text GLabel 2600 7900 0    50   Input ~ 0
RPI_GPIO19
Text GLabel 2600 8000 0    50   Input ~ 0
RPI_GPIO26
Text GLabel 3300 6500 2    50   Input ~ 0
RPI_GPIO14
Text GLabel 3300 6600 2    50   Input ~ 0
RPI_GPIO15
Text GLabel 3300 6700 2    50   Input ~ 0
RPI_GPIO18
Text GLabel 3300 6900 2    50   Input ~ 0
RPI_GPIO23
Text GLabel 3300 7000 2    50   Input ~ 0
RPI_GPIO24
Text GLabel 3300 7200 2    50   Input ~ 0
RPI_GPIO25
Text GLabel 3300 7300 2    50   Input ~ 0
RPI_GPIO8
Text GLabel 3300 7400 2    50   Input ~ 0
RPI_GPIO7
Text GLabel 3300 7500 2    50   Input ~ 0
RPI_IDSC
Text GLabel 3300 7700 2    50   Input ~ 0
RPI_GPIO12
Text GLabel 3300 7900 2    50   Input ~ 0
RPI_GPIO16
Text GLabel 3300 8000 2    50   Input ~ 0
RPI_GPIO20
Text GLabel 3300 8100 2    50   Input ~ 0
RPI_GPIO21
Wire Wire Line
	2600 6300 2700 6300
Wire Wire Line
	2600 6400 2700 6400
Wire Wire Line
	2600 6500 2700 6500
Wire Wire Line
	2600 6700 2700 6700
Wire Wire Line
	2600 6800 2700 6800
Wire Wire Line
	2600 6900 2700 6900
Wire Wire Line
	2600 7100 2700 7100
Wire Wire Line
	2600 7200 2700 7200
Wire Wire Line
	2600 7300 2700 7300
Wire Wire Line
	2700 7500 2600 7500
Wire Wire Line
	2600 7600 2700 7600
Wire Wire Line
	2600 7700 2700 7700
Wire Wire Line
	2600 7800 2700 7800
Wire Wire Line
	2600 7900 2700 7900
Wire Wire Line
	2600 8000 2700 8000
Wire Wire Line
	3200 6500 3300 6500
Wire Wire Line
	3200 6600 3300 6600
Wire Wire Line
	3200 6700 3300 6700
Wire Wire Line
	3200 6900 3300 6900
Wire Wire Line
	3200 7000 3300 7000
Wire Wire Line
	3300 7200 3200 7200
Wire Wire Line
	3200 7300 3300 7300
Wire Wire Line
	3300 7400 3200 7400
Wire Wire Line
	3300 7500 3200 7500
Wire Wire Line
	3200 7700 3300 7700
Wire Wire Line
	3300 7900 3200 7900
Wire Wire Line
	3200 8000 3300 8000
Wire Wire Line
	3300 8100 3200 8100
$Comp
L power:+3V3 #PWR09
U 1 1 5FF76A1A
P 2600 6200
F 0 "#PWR09" H 2600 6050 50  0001 C CNN
F 1 "+3V3" V 2615 6328 50  0000 L CNN
F 2 "" H 2600 6200 50  0001 C CNN
F 3 "" H 2600 6200 50  0001 C CNN
	1    2600 6200
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR011
U 1 1 5FF76AD4
P 2600 7000
F 0 "#PWR011" H 2600 6850 50  0001 C CNN
F 1 "+3V3" V 2615 7128 50  0000 L CNN
F 2 "" H 2600 7000 50  0001 C CNN
F 3 "" H 2600 7000 50  0001 C CNN
	1    2600 7000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5FF77D4D
P 2600 6600
F 0 "#PWR010" H 2600 6350 50  0001 C CNN
F 1 "GND" V 2605 6472 50  0000 R CNN
F 2 "" H 2600 6600 50  0001 C CNN
F 3 "" H 2600 6600 50  0001 C CNN
	1    2600 6600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5FF788AC
P 2600 7400
F 0 "#PWR012" H 2600 7150 50  0001 C CNN
F 1 "GND" V 2605 7272 50  0000 R CNN
F 2 "" H 2600 7400 50  0001 C CNN
F 3 "" H 2600 7400 50  0001 C CNN
	1    2600 7400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5FF78D14
P 2600 8100
F 0 "#PWR013" H 2600 7850 50  0001 C CNN
F 1 "GND" V 2605 7972 50  0000 R CNN
F 2 "" H 2600 8100 50  0001 C CNN
F 3 "" H 2600 8100 50  0001 C CNN
	1    2600 8100
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 7400 2700 7400
Wire Wire Line
	2600 8100 2700 8100
Wire Wire Line
	2600 7000 2700 7000
Wire Wire Line
	2600 6600 2700 6600
Wire Wire Line
	2600 6200 2700 6200
$Comp
L power:+5V #PWR019
U 1 1 6006C9A5
P 3300 6200
F 0 "#PWR019" H 3300 6050 50  0001 C CNN
F 1 "+5V" V 3315 6328 50  0000 L CNN
F 2 "" H 3300 6200 50  0001 C CNN
F 3 "" H 3300 6200 50  0001 C CNN
	1    3300 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 6200 3200 6200
Wire Wire Line
	3200 6300 3300 6300
Wire Wire Line
	3300 6300 3300 6200
Connection ~ 3300 6200
$Comp
L power:GND #PWR020
U 1 1 600D0108
P 3300 6400
F 0 "#PWR020" H 3300 6150 50  0001 C CNN
F 1 "GND" V 3305 6272 50  0000 R CNN
F 2 "" H 3300 6400 50  0001 C CNN
F 3 "" H 3300 6400 50  0001 C CNN
	1    3300 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 6400 3200 6400
$Comp
L power:GND #PWR021
U 1 1 601036EB
P 3300 6800
F 0 "#PWR021" H 3300 6550 50  0001 C CNN
F 1 "GND" V 3305 6672 50  0000 R CNN
F 2 "" H 3300 6800 50  0001 C CNN
F 3 "" H 3300 6800 50  0001 C CNN
	1    3300 6800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 60103B86
P 3300 7100
F 0 "#PWR022" H 3300 6850 50  0001 C CNN
F 1 "GND" V 3305 6972 50  0000 R CNN
F 2 "" H 3300 7100 50  0001 C CNN
F 3 "" H 3300 7100 50  0001 C CNN
	1    3300 7100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 60104065
P 3300 7600
F 0 "#PWR023" H 3300 7350 50  0001 C CNN
F 1 "GND" V 3305 7472 50  0000 R CNN
F 2 "" H 3300 7600 50  0001 C CNN
F 3 "" H 3300 7600 50  0001 C CNN
	1    3300 7600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 60104456
P 3300 7800
F 0 "#PWR024" H 3300 7550 50  0001 C CNN
F 1 "GND" V 3305 7672 50  0000 R CNN
F 2 "" H 3300 7800 50  0001 C CNN
F 3 "" H 3300 7800 50  0001 C CNN
	1    3300 7800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 7800 3300 7800
Wire Wire Line
	3300 7600 3200 7600
Wire Wire Line
	3300 7100 3200 7100
Wire Wire Line
	3300 6800 3200 6800
$Comp
L Connector:Conn_01x20_Male J9
U 1 1 5FA6E8A5
P 3000 7100
F 0 "J9" H 3100 8150 50  0000 C CNN
F 1 "Conn_01x20_Male" H 3300 6000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x20_P2.54mm_Vertical" H 3000 7100 50  0001 C CNN
F 3 "~" H 3000 7100 50  0001 C CNN
	1    3000 7100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x20_Male J7
U 1 1 5F9D3F6C
P 2900 7200
F 0 "J7" H 3050 6050 50  0000 R CNN
F 1 "Conn_01x20_Male" H 3150 8200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x20_P2.54mm_Vertical" H 2900 7200 50  0001 C CNN
F 3 "~" H 2900 7200 50  0001 C CNN
	1    2900 7200
	-1   0    0    1   
$EndComp
Wire Notes Line
	2050 5850 2050 8350
Wire Notes Line
	2050 8350 3950 8350
Wire Notes Line
	3950 8350 3950 5850
Wire Notes Line
	3950 5850 2050 5850
Text Notes 2750 5950 0    50   ~ 0
RPi Breakout
Text GLabel 2100 3150 0    50   Input ~ 0
RPI_GPIO16
Text GLabel 2100 2950 0    50   Input ~ 0
RPI_GPIO15
Text GLabel 2100 2850 0    50   Input ~ 0
RPI_GPIO14
Wire Wire Line
	2100 2850 2200 2850
Wire Wire Line
	2200 2950 2100 2950
Wire Wire Line
	2100 3150 2200 3150
Text GLabel 2100 3250 0    50   Input ~ 0
RPI_GPIO17
Text GLabel 3250 9400 2    50   Input ~ 0
RPI_GPIO17
Text GLabel 3250 10600 2    50   Input ~ 0
RPI_GPIO17
Wire Wire Line
	3150 10600 3250 10600
Wire Wire Line
	3150 9400 3250 9400
Text GLabel 3250 9500 2    50   Input ~ 0
RPI_GPIO24
Text GLabel 3250 10700 2    50   Input ~ 0
RPI_GPIO24
Wire Wire Line
	3250 10700 3150 10700
Wire Wire Line
	3250 9500 3150 9500
Text GLabel 3250 9600 2    50   Input ~ 0
RPI_GPIO22
Text GLabel 3250 10800 2    50   Input ~ 0
RPI_GPIO22
Wire Wire Line
	3250 10800 3150 10800
Wire Wire Line
	3250 9600 3150 9600
Text GLabel 3250 10500 2    50   Input ~ 0
RPI_GPIO18
Text GLabel 3250 9300 2    50   Input ~ 0
RPI_GPIO18
Wire Wire Line
	3150 9300 3250 9300
Wire Wire Line
	3150 10500 3250 10500
Text GLabel 2550 9400 0    50   Input ~ 0
RPI_GPIO4
Text GLabel 2550 10600 0    50   Input ~ 0
RPI_GPIO4
Wire Wire Line
	2650 10600 2550 10600
Wire Wire Line
	2550 9400 2650 9400
Text GLabel 2550 9500 0    50   Input ~ 0
RPI_GPIO25
Wire Wire Line
	2650 9500 2550 9500
Text GLabel 2550 10700 0    50   Input ~ 0
RPI_GPIO25
Wire Wire Line
	2550 10700 2650 10700
Text GLabel 2550 9600 0    50   Input ~ 0
RPI_GPIO23
Text GLabel 2550 10800 0    50   Input ~ 0
RPI_GPIO23
Wire Wire Line
	2550 10800 2650 10800
Wire Wire Line
	2550 9600 2650 9600
Text GLabel 2550 9800 0    50   Input ~ 0
RPI_GPIO9
Wire Wire Line
	2550 9800 2650 9800
Text GLabel 2550 10000 0    50   Input ~ 0
RPI_GPIO27
Wire Wire Line
	2550 10000 2650 10000
Text GLabel 3250 11000 2    50   Input ~ 0
RPI_GPIO19
Text GLabel 3250 10900 2    50   Input ~ 0
RPI_GPIO20
Wire Wire Line
	3150 10900 3250 10900
Wire Wire Line
	3250 11000 3150 11000
Text GLabel 2550 11000 0    50   Input ~ 0
RPI_GPIO13
Wire Wire Line
	2550 11000 2650 11000
Text GLabel 3250 11200 2    50   Input ~ 0
RPI_GPIO12
Wire Wire Line
	3250 11200 3150 11200
Text GLabel 3250 10000 2    50   Input ~ 0
RPI_GPIO11
Wire Wire Line
	3250 10000 3150 10000
Text GLabel 3250 9700 2    50   Input ~ 0
RPI_GPIO10
Wire Wire Line
	3150 9700 3250 9700
Text GLabel 3250 9800 2    50   Input ~ 0
RPI_GPIO8
Wire Wire Line
	3150 9800 3250 9800
Text GLabel 3250 9900 2    50   Input ~ 0
RPI_GPIO7
Wire Wire Line
	3150 9900 3250 9900
Text GLabel 3250 11100 2    50   Input ~ 0
RPI_GPIO6
Wire Wire Line
	3150 11100 3250 11100
Text GLabel 2550 11200 0    50   Input ~ 0
RPI_GPIO5
Wire Wire Line
	2650 11200 2550 11200
Wire Notes Line
	1950 8500 1950 11500
Wire Notes Line
	1950 11500 4050 11500
Wire Notes Line
	4050 11500 4050 8500
Wire Notes Line
	4050 8500 1950 8500
Text GLabel 2100 3350 0    50   Input ~ 0
RPI_GPIO18
Text GLabel 2100 3550 0    50   Input ~ 0
RPI_GPIO19
Text GLabel 2100 3650 0    50   Input ~ 0
RPI_GPIO20
Text GLabel 2100 3750 0    50   Input ~ 0
RPI_GPIO21
Text GLabel 2100 3950 0    50   Input ~ 0
RPI_GPIO22
Text GLabel 2100 4050 0    50   Input ~ 0
RPI_GPIO23
Text GLabel 2100 4150 0    50   Input ~ 0
RPI_GPIO24
Text GLabel 2100 4250 0    50   Input ~ 0
RPI_GPIO25
Text GLabel 2100 4350 0    50   Input ~ 0
RPI_GPIO26
Text GLabel 2100 4450 0    50   Input ~ 0
RPI_GPIO27
Text GLabel 3900 3450 2    50   Input ~ 0
RPI_GPIO4
Text GLabel 3900 3550 2    50   Input ~ 0
RPI_GPIO5
Text GLabel 3900 3650 2    50   Input ~ 0
RPI_GPIO6
Text GLabel 3900 3850 2    50   Input ~ 0
RPI_GPIO7
Text GLabel 3900 3950 2    50   Input ~ 0
RPI_GPIO8
Text GLabel 3900 4050 2    50   Input ~ 0
RPI_GPIO9
Text GLabel 3900 4150 2    50   Input ~ 0
RPI_GPIO10
Text GLabel 3900 4250 2    50   Input ~ 0
RPI_GPIO11
Text GLabel 3900 4450 2    50   Input ~ 0
RPI_GPIO12
Text GLabel 3900 4550 2    50   Input ~ 0
RPI_GPIO13
Text GLabel 3900 2850 2    50   Input ~ 0
RPI_IDSD
Text GLabel 3900 2950 2    50   Input ~ 0
RPI_IDSC
Wire Wire Line
	2100 3250 2200 3250
Wire Wire Line
	2200 3350 2100 3350
Wire Wire Line
	2100 3550 2200 3550
Wire Wire Line
	2200 3650 2100 3650
Wire Wire Line
	2100 3750 2200 3750
Wire Wire Line
	2100 3950 2200 3950
Wire Wire Line
	2200 4050 2100 4050
Wire Wire Line
	2100 4150 2200 4150
Wire Wire Line
	2200 4250 2100 4250
Wire Wire Line
	2100 4350 2200 4350
Wire Wire Line
	2100 4450 2200 4450
Wire Wire Line
	3800 2850 3900 2850
Wire Wire Line
	3900 2950 3800 2950
Wire Wire Line
	3800 3450 3900 3450
Wire Wire Line
	3900 3550 3800 3550
Wire Wire Line
	3800 3650 3900 3650
Wire Wire Line
	3900 3850 3800 3850
Wire Wire Line
	3800 3950 3900 3950
Wire Wire Line
	3900 4050 3800 4050
Wire Wire Line
	3800 4150 3900 4150
Wire Wire Line
	3900 4250 3800 4250
Wire Wire Line
	3900 4450 3800 4450
Wire Wire Line
	3800 4550 3900 4550
Text GLabel 9000 2350 2    50   Input ~ 0
M_D2
Text GLabel 9000 2450 2    50   Input ~ 0
M_D3
Text GLabel 9000 2550 2    50   Input ~ 0
M_D4
Text GLabel 9000 2650 2    50   Input ~ 0
M_D5
Text GLabel 9000 2850 2    50   Input ~ 0
M_D7
Text GLabel 9000 2950 2    50   Input ~ 0
M_D8
Text GLabel 9000 3050 2    50   Input ~ 0
M_D9
Text GLabel 9000 3150 2    50   Input ~ 0
M_D10
Text GLabel 9000 3250 2    50   Input ~ 0
M_D11
Text GLabel 9000 3350 2    50   Input ~ 0
M_D12
Text GLabel 9000 3450 2    50   Input ~ 0
M_D13
Text GLabel 9000 3550 2    50   Input ~ 0
M_D22
Text GLabel 9000 3650 2    50   Input ~ 0
M_D23
Text GLabel 9000 3750 2    50   Input ~ 0
M_D24
Text GLabel 9000 3850 2    50   Input ~ 0
M_D25
Text GLabel 9000 3950 2    50   Input ~ 0
M_D26
Text GLabel 9000 4050 2    50   Input ~ 0
M_D27
Text GLabel 9000 4150 2    50   Input ~ 0
M_D28
Text GLabel 9000 4250 2    50   Input ~ 0
M_D29
Text GLabel 9000 4350 2    50   Input ~ 0
M_D30
Text GLabel 9000 4450 2    50   Input ~ 0
M_D31
Text GLabel 9000 4550 2    50   Input ~ 0
M_D32
Text GLabel 9000 4650 2    50   Input ~ 0
M_D33
Text GLabel 9000 4750 2    50   Input ~ 0
M_D34
Text GLabel 9000 4850 2    50   Input ~ 0
M_D35
Text GLabel 9000 4950 2    50   Input ~ 0
M_D36
Text GLabel 9000 5050 2    50   Input ~ 0
M_D37
Text GLabel 9000 5150 2    50   Input ~ 0
M_D38
Text GLabel 9000 5250 2    50   Input ~ 0
M_D39
Wire Wire Line
	8900 5350 9000 5350
Text GLabel 9000 5850 2    50   Input ~ 0
RELAIS6
Text GLabel 9000 5950 2    50   Input ~ 0
M_D46
Text GLabel 9000 6050 2    50   Input ~ 0
M_D47
Text GLabel 9000 6150 2    50   Input ~ 0
M_D48
Text GLabel 9000 6250 2    50   Input ~ 0
M_D49
Text GLabel 9000 6350 2    50   Input ~ 0
M_D50
Text GLabel 9000 6450 2    50   Input ~ 0
M_D51
Text GLabel 9000 6550 2    50   Input ~ 0
M_D52
Text GLabel 9000 6650 2    50   Input ~ 0
M_D53
Text GLabel 9000 2750 2    50   Input ~ 0
M_D6
Text GLabel 9000 5450 2    50   Input ~ 0
RELAIS2
Text GLabel 9000 5350 2    50   Input ~ 0
RELAIS1
Text GLabel 8600 12500 0    50   Input ~ 0
M_D22
Text GLabel 8600 12600 0    50   Input ~ 0
M_D23
Text GLabel 8600 12700 0    50   Input ~ 0
M_D24
Text GLabel 8600 12800 0    50   Input ~ 0
M_D25
Text GLabel 8600 12900 0    50   Input ~ 0
M_D26
Text GLabel 8600 13000 0    50   Input ~ 0
M_D27
Text GLabel 8600 13100 0    50   Input ~ 0
M_D28
Text GLabel 8600 13200 0    50   Input ~ 0
M_D29
Text GLabel 9750 12500 0    50   Input ~ 0
M_D30
Text GLabel 9750 12600 0    50   Input ~ 0
M_D31
Text GLabel 9750 12700 0    50   Input ~ 0
M_D32
Text GLabel 9750 12800 0    50   Input ~ 0
M_D33
Text GLabel 9750 12900 0    50   Input ~ 0
M_D34
Text GLabel 9750 13000 0    50   Input ~ 0
M_D35
Text GLabel 9750 13100 0    50   Input ~ 0
M_D36
Text GLabel 9750 13200 0    50   Input ~ 0
M_D37
Wire Wire Line
	9850 12500 9750 12500
Wire Wire Line
	9750 12600 9850 12600
Wire Wire Line
	9850 12700 9750 12700
Wire Wire Line
	9750 12800 9850 12800
Wire Wire Line
	9850 12900 9750 12900
Wire Wire Line
	9750 13000 9850 13000
Wire Wire Line
	9850 13100 9750 13100
Wire Wire Line
	9750 13200 9850 13200
Wire Notes Line
	8250 12100 9250 12100
Wire Notes Line
	9250 13650 8250 13650
Wire Wire Line
	8900 3550 9000 3550
Wire Wire Line
	8900 3650 9000 3650
Wire Wire Line
	9000 3750 8900 3750
Wire Wire Line
	8900 3850 9000 3850
Wire Wire Line
	9000 3950 8900 3950
Wire Wire Line
	8900 4050 9000 4050
Wire Wire Line
	9000 4150 8900 4150
Wire Wire Line
	8900 4250 9000 4250
Wire Wire Line
	9000 4350 8900 4350
Wire Wire Line
	8900 2350 9000 2350
Wire Wire Line
	9000 2450 8900 2450
Wire Wire Line
	8900 2550 9000 2550
Wire Wire Line
	9000 2650 8900 2650
Wire Wire Line
	8900 2750 9000 2750
Wire Wire Line
	9000 2850 8900 2850
Wire Wire Line
	8900 2950 9000 2950
Wire Wire Line
	9000 3050 8900 3050
Wire Wire Line
	8900 5150 9000 5150
Wire Wire Line
	9000 5250 8900 5250
Wire Wire Line
	8900 5850 9000 5850
Wire Wire Line
	9000 5950 8900 5950
Wire Wire Line
	8900 6050 9000 6050
Wire Wire Line
	9000 6150 8900 6150
Wire Wire Line
	8900 3150 9000 3150
Text GLabel 7950 14850 3    50   Input ~ 0
M_D10
Wire Wire Line
	7950 14300 7950 14850
Text GLabel 8600 15300 3    50   Input ~ 0
M_D11
Text GLabel 9150 14850 3    50   Input ~ 0
M_D12
Text GLabel 9800 15300 3    50   Input ~ 0
M_D13
Wire Wire Line
	9800 15300 9800 14900
Wire Wire Line
	9150 14300 9150 14850
Wire Wire Line
	8600 14850 8600 15300
Wire Wire Line
	8900 6250 9000 6250
Wire Wire Line
	9000 6350 8900 6350
Wire Wire Line
	8900 6450 9000 6450
Wire Wire Line
	9000 6550 8900 6550
Wire Wire Line
	8900 6650 9000 6650
Wire Notes Line
	6900 15700 6900 14650
Wire Notes Line
	5500 15700 6900 15700
Wire Notes Line
	5500 14650 5500 15700
Wire Wire Line
	7400 13250 7500 13250
Wire Wire Line
	7500 13150 7400 13150
Wire Wire Line
	7400 13050 7500 13050
Wire Wire Line
	7500 12950 7400 12950
Wire Wire Line
	7400 12750 7500 12750
Text GLabel 7400 12750 0    50   Input ~ 0
M_D49
Text GLabel 7400 12950 0    50   Input ~ 0
M_D50
Text GLabel 7400 13050 0    50   Input ~ 0
M_D51
Text GLabel 7400 13150 0    50   Input ~ 0
M_D52
Text GLabel 7400 13250 0    50   Input ~ 0
M_D53
Text Notes 7950 13600 0    50   ~ 0
NFC
Wire Notes Line
	8200 12300 7050 12300
Wire Notes Line
	8200 13650 8200 12300
Wire Notes Line
	7050 13650 8200 13650
Wire Notes Line
	7050 12300 7050 13650
Wire Wire Line
	7500 12850 7350 12850
$Comp
L power:GND #PWR038
U 1 1 5E1C3220
P 7350 12850
F 0 "#PWR038" H 7350 12600 50  0001 C CNN
F 1 "GND" V 7355 12722 50  0000 R CNN
F 2 "" H 7350 12850 50  0001 C CNN
F 3 "" H 7350 12850 50  0001 C CNN
	1    7350 12850
	0    1    1    0   
$EndComp
Text Label 7750 12650 0    50   ~ 0
+3.3V
Text Label 7750 12950 0    50   ~ 0
MISO
Text Label 7750 13050 0    50   ~ 0
MOSI
Text Label 7750 13150 0    50   ~ 0
SCK
Text Label 7750 13250 0    50   ~ 0
SDA
Text Label 7750 12850 0    50   ~ 0
GND
Text Label 7750 12750 0    50   ~ 0
RST
Wire Wire Line
	7350 12650 7500 12650
Text Label 7500 12550 0    50   ~ 0
NFC
$Comp
L Connector:Conn_01x07_Male J20
U 1 1 5E1B69B4
P 7700 12950
F 0 "J20" H 7808 13431 50  0000 C CNN
F 1 "Conn_01x07_Male" H 7808 13340 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 7700 12950 50  0001 C CNN
F 3 "~" H 7700 12950 50  0001 C CNN
	1    7700 12950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 13850 6150 14150
Wire Wire Line
	6250 14150 6250 13850
Wire Wire Line
	6350 13850 6350 14150
Wire Wire Line
	6450 14150 6450 13850
Wire Wire Line
	6550 13850 6550 14150
Text GLabel 6650 13850 1    50   Input ~ 0
RELAIS6
Text GLabel 6550 13850 1    50   Input ~ 0
RELAIS5
Text GLabel 6450 13850 1    50   Input ~ 0
RELAIS4
Text GLabel 6350 13850 1    50   Input ~ 0
RELAIS3
Text GLabel 6250 13850 1    50   Input ~ 0
RELAIS2
Wire Wire Line
	6650 13850 6650 14150
Text GLabel 6150 13850 1    50   Input ~ 0
RELAIS1
Text Notes 5800 14500 0    50   ~ 0
Relais-Connection
Wire Notes Line
	5500 14000 6850 14000
Wire Notes Line
	5500 14550 5500 14000
Wire Notes Line
	6850 14550 5500 14550
Wire Notes Line
	6850 14000 6850 14550
$Comp
L Connector:Conn_01x06_Female J19
U 1 1 5D05EF8A
P 6450 14350
F 0 "J19" V 6388 13962 50  0000 R CNN
F 1 "Conn_01x06_Female" V 6297 13962 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6450 14350 50  0001 C CNN
F 3 "~" H 6450 14350 50  0001 C CNN
	1    6450 14350
	0    1    1    0   
$EndComp
Text GLabel 6200 3650 0    50   Input ~ 0
M_A0
Text GLabel 6200 3750 0    50   Input ~ 0
M_A1
Text GLabel 6200 3850 0    50   Input ~ 0
M_A2
Text GLabel 6200 3950 0    50   Input ~ 0
M_A3
Text GLabel 6200 4050 0    50   Input ~ 0
M_A4
Text GLabel 6200 4150 0    50   Input ~ 0
M_A5
Text GLabel 6200 4250 0    50   Input ~ 0
M_A6
Text GLabel 6200 4350 0    50   Input ~ 0
M_A7
Text GLabel 6200 4450 0    50   Input ~ 0
M_A8
Text GLabel 6200 4550 0    50   Input ~ 0
M_A9
Text GLabel 6200 4650 0    50   Input ~ 0
M_A10
Text GLabel 6200 4750 0    50   Input ~ 0
M_A11
Text GLabel 6200 4850 0    50   Input ~ 0
M_A12
Text GLabel 6200 4950 0    50   Input ~ 0
M_A13
Text GLabel 6200 5050 0    50   Input ~ 0
M_A14
Text GLabel 6200 5150 0    50   Input ~ 0
M_A15
Text GLabel 6200 5250 0    50   Input ~ 0
M_AREF
Text GLabel 6200 5450 0    50   Input ~ 0
M_RST1
Text GLabel 6200 5550 0    50   Input ~ 0
M_IORF
Wire Wire Line
	6300 5950 6300 6050
Connection ~ 6300 6050
Wire Wire Line
	6300 5750 6300 5850
Connection ~ 6300 5850
Text GLabel 6200 2350 0    50   Input ~ 0
MEGA_RX0
Text GLabel 6200 2450 0    50   Input ~ 0
MEGA_TX0
Text GLabel 6200 2750 0    50   Input ~ 0
MEGA_RX2
Text GLabel 6200 2850 0    50   Input ~ 0
MEGA_TX2
Text GLabel 6200 2950 0    50   Input ~ 0
MEGA_RX3
Text GLabel 6200 3050 0    50   Input ~ 0
MEGA_RX4
Text GLabel 6200 3150 0    50   Input ~ 0
MEGA_D20_SDA
Text GLabel 6200 3250 0    50   Input ~ 0
MEGA_D21_SCL
Wire Wire Line
	6300 2350 6200 2350
Wire Wire Line
	6200 2450 6300 2450
Wire Wire Line
	6300 2750 6200 2750
Wire Wire Line
	6200 2850 6300 2850
Wire Wire Line
	6300 2950 6200 2950
Wire Wire Line
	6200 3050 6300 3050
Wire Wire Line
	6300 3150 6200 3150
Wire Wire Line
	6200 3250 6300 3250
Wire Wire Line
	6300 3650 6200 3650
Wire Wire Line
	6200 3750 6300 3750
Wire Wire Line
	6200 3850 6300 3850
Wire Wire Line
	6300 3950 6200 3950
Wire Wire Line
	6200 4050 6300 4050
Wire Wire Line
	6300 4150 6200 4150
Wire Wire Line
	6200 4250 6300 4250
Wire Wire Line
	6300 4350 6200 4350
Wire Wire Line
	6200 4450 6300 4450
Wire Wire Line
	6300 4550 6200 4550
Wire Wire Line
	6200 4650 6300 4650
Wire Wire Line
	6300 4750 6200 4750
Wire Wire Line
	6200 4850 6300 4850
Wire Wire Line
	6300 4950 6200 4950
Wire Wire Line
	6200 5050 6300 5050
Wire Wire Line
	6300 5150 6200 5150
Wire Wire Line
	6200 5250 6300 5250
Text GLabel 7350 1800 1    50   Input ~ 0
M_MISO
Wire Wire Line
	7350 1800 7350 1900
Text GLabel 7450 1800 1    50   Input ~ 0
M_MOSI
Text GLabel 7550 1800 1    50   Input ~ 0
M_SCK
Text GLabel 7650 1800 1    50   Input ~ 0
M_SPI_5V
Text GLabel 7850 1800 1    50   Input ~ 0
M_RST2
Wire Wire Line
	7450 1800 7450 1900
Wire Wire Line
	7550 1900 7550 1800
Wire Wire Line
	7650 1800 7650 1900
Wire Wire Line
	7850 1900 7850 1800
$Comp
L power:GND #PWR036
U 1 1 641B71DC
P 9650 8050
F 0 "#PWR036" H 9650 7800 50  0001 C CNN
F 1 "GND" V 9655 7922 50  0000 R CNN
F 2 "" H 9650 8050 50  0001 C CNN
F 3 "" H 9650 8050 50  0001 C CNN
	1    9650 8050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 10450 9200 10450
Wire Wire Line
	9200 10350 9300 10350
Wire Wire Line
	9300 10250 9200 10250
Wire Wire Line
	9200 10150 9300 10150
Wire Wire Line
	9300 10050 9200 10050
Wire Wire Line
	9200 9950 9300 9950
Wire Wire Line
	9300 9850 9200 9850
Wire Wire Line
	9200 9550 9300 9550
Wire Wire Line
	9300 9450 9200 9450
Wire Wire Line
	9200 9350 9300 9350
Wire Wire Line
	9300 9250 9200 9250
Wire Wire Line
	9200 9150 9300 9150
Wire Wire Line
	9300 9050 9200 9050
Wire Wire Line
	9300 8850 9200 8850
Wire Wire Line
	9200 8650 9300 8650
Wire Wire Line
	9300 8550 9200 8550
Wire Wire Line
	9200 8450 9300 8450
Wire Wire Line
	9300 8350 9200 8350
Wire Wire Line
	9200 8250 9300 8250
Wire Wire Line
	9300 8150 9200 8150
Wire Wire Line
	9200 8050 9650 8050
Wire Wire Line
	9300 7950 9200 7950
Text GLabel 9300 7950 2    50   Input ~ 0
M_AREF
Text GLabel 9300 8150 2    50   Input ~ 0
M_D13
Text GLabel 9300 8250 2    50   Input ~ 0
M_D12
Text GLabel 9300 8350 2    50   Input ~ 0
M_D11
Text GLabel 9300 8450 2    50   Input ~ 0
M_D10
$Comp
L Connector:Conn_01x08_Male J16
U 1 1 640DA7E9
P 9000 9150
F 0 "J16" H 8972 9032 50  0000 R CNN
F 1 "Conn_01x08_Male" H 8972 9123 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9000 9150 50  0001 C CNN
F 3 "~" H 9000 9150 50  0001 C CNN
	1    9000 9150
	1    0    0    -1  
$EndComp
Text GLabel 9300 8550 2    50   Input ~ 0
M_D9
Text GLabel 9300 8650 2    50   Input ~ 0
M_D8
Text GLabel 9300 8850 2    50   Input ~ 0
M_D7
Text GLabel 9300 8950 2    50   Input ~ 0
M_D6
Text GLabel 9300 9050 2    50   Input ~ 0
M_D5
Text GLabel 9300 9150 2    50   Input ~ 0
M_D4
Text GLabel 9300 9250 2    50   Input ~ 0
M_D3
Text GLabel 9300 9350 2    50   Input ~ 0
M_D2
Text GLabel 9300 9450 2    50   Input ~ 0
MEGA_TX0
Text GLabel 9300 9550 2    50   Input ~ 0
MEGA_RX0
Text GLabel 9300 9850 2    50   Input ~ 0
MEGA_RX4
Text GLabel 9300 9950 2    50   Input ~ 0
MEGA_RX3
Text GLabel 9300 10050 2    50   Input ~ 0
MEGA_TX2
Text GLabel 9300 10150 2    50   Input ~ 0
MEGA_RX2
Text GLabel 9300 10250 2    50   Input ~ 0
MEGA_TX1
Text GLabel 9300 10350 2    50   Input ~ 0
MEGA_RX1
Text GLabel 9300 10450 2    50   Input ~ 0
MEGA_D20_SDA
Text GLabel 9300 10550 2    50   Input ~ 0
MEGA_D21_SCL
Wire Wire Line
	6600 8200 6700 8200
Text GLabel 6600 8200 0    50   Input ~ 0
M_IORF
Wire Wire Line
	6600 8300 6700 8300
Text GLabel 6600 8300 0    50   Input ~ 0
M_RST1
Wire Wire Line
	6300 8800 6700 8800
$Comp
L power:+8V #PWR029
U 1 1 63F4F2A8
P 6300 8800
F 0 "#PWR029" H 6300 8650 50  0001 C CNN
F 1 "+8V" H 6315 8973 50  0000 C CNN
F 2 "" H 6300 8800 50  0001 C CNN
F 3 "" H 6300 8800 50  0001 C CNN
	1    6300 8800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 11300 8400 11200
Wire Wire Line
	8500 11200 8500 11300
Wire Wire Line
	8600 11300 8600 11200
Wire Wire Line
	8700 11200 8700 11300
Wire Wire Line
	7600 11300 7600 11200
Wire Wire Line
	7700 11200 7700 11300
Wire Wire Line
	7800 11300 7800 11200
Wire Wire Line
	7900 11200 7900 11300
Wire Wire Line
	8000 11300 8000 11200
Wire Wire Line
	8100 11200 8100 11300
Wire Wire Line
	8200 11300 8200 11200
Wire Wire Line
	8300 11200 8300 11300
Wire Wire Line
	8700 10700 8700 10600
Wire Wire Line
	8600 10600 8600 10700
Wire Wire Line
	8500 10700 8500 10600
Wire Wire Line
	8400 10600 8400 10700
Wire Wire Line
	8300 10700 8300 10600
Wire Wire Line
	8200 10600 8200 10700
Wire Wire Line
	8100 10700 8100 10600
Wire Wire Line
	8000 10600 8000 10700
Wire Wire Line
	7900 10700 7900 10600
Wire Wire Line
	7800 10700 7800 10600
Wire Wire Line
	7700 10600 7700 10700
Wire Wire Line
	7600 10700 7600 10600
Wire Wire Line
	7500 10600 7500 10700
Wire Wire Line
	7400 10700 7400 10600
Wire Wire Line
	7300 10600 7300 10700
Wire Wire Line
	7200 10700 7200 10600
Text GLabel 7200 10600 1    50   Input ~ 0
M_D22
Text GLabel 7300 10600 1    50   Input ~ 0
M_D24
Text GLabel 7400 10600 1    50   Input ~ 0
M_D26
Text GLabel 7500 10600 1    50   Input ~ 0
M_D28
Text GLabel 7600 10600 1    50   Input ~ 0
M_D30
Text GLabel 7700 10600 1    50   Input ~ 0
M_D32
Text GLabel 7800 10600 1    50   Input ~ 0
M_D34
Text GLabel 7900 10600 1    50   Input ~ 0
M_D36
Text GLabel 8000 10600 1    50   Input ~ 0
M_D38
Text GLabel 8100 11300 3    50   Input ~ 0
RELAIS1
Text GLabel 8200 11300 3    50   Input ~ 0
RELAIS3
Text GLabel 8300 11300 3    50   Input ~ 0
RELAIS5
Text GLabel 8400 10600 1    50   Input ~ 0
M_D46
Text GLabel 8500 10600 1    50   Input ~ 0
M_D48
Text GLabel 8600 10600 1    50   Input ~ 0
M_D50
Text GLabel 8700 10600 1    50   Input ~ 0
M_D52
Text GLabel 7600 11300 3    50   Input ~ 0
M_D31
Text GLabel 7700 11300 3    50   Input ~ 0
M_D33
Text GLabel 7800 11300 3    50   Input ~ 0
M_D35
Text GLabel 7900 11300 3    50   Input ~ 0
M_D37
Text GLabel 8000 11300 3    50   Input ~ 0
M_D39
Text GLabel 8100 10600 1    50   Input ~ 0
RELAIS2
Text GLabel 8200 10600 1    50   Input ~ 0
RELAIS4
Text GLabel 8300 10600 1    50   Input ~ 0
RELAIS6
Text GLabel 8400 11300 3    50   Input ~ 0
M_D47
Text GLabel 8500 11300 3    50   Input ~ 0
M_D49
Text GLabel 8600 11300 3    50   Input ~ 0
M_D51
Text GLabel 8700 11300 3    50   Input ~ 0
M_D53
Wire Wire Line
	6600 10500 6700 10500
Wire Wire Line
	6700 10400 6600 10400
Wire Wire Line
	6600 10300 6700 10300
Wire Wire Line
	6700 10200 6600 10200
Wire Wire Line
	6600 10100 6700 10100
Wire Wire Line
	6700 10000 6600 10000
Wire Wire Line
	6600 9900 6700 9900
Wire Wire Line
	6700 9800 6600 9800
Wire Wire Line
	6600 9650 6700 9650
Wire Wire Line
	6700 9550 6600 9550
Wire Wire Line
	6600 9450 6700 9450
Wire Wire Line
	6700 9350 6600 9350
Wire Wire Line
	6600 9250 6700 9250
Wire Wire Line
	6700 9150 6600 9150
Wire Wire Line
	6600 9050 6700 9050
Wire Wire Line
	6600 8950 6700 8950
Text GLabel 6600 10500 0    50   Input ~ 0
M_A15
Text GLabel 6600 10400 0    50   Input ~ 0
M_A14
Text GLabel 6600 10300 0    50   Input ~ 0
M_A13
Text GLabel 6600 10200 0    50   Input ~ 0
M_A12
Text GLabel 6600 10100 0    50   Input ~ 0
M_A11
Text GLabel 6600 10000 0    50   Input ~ 0
M_A10
Text GLabel 6600 9900 0    50   Input ~ 0
M_A9
Text GLabel 6600 9800 0    50   Input ~ 0
M_A8
Text GLabel 6600 9650 0    50   Input ~ 0
M_A7
Text GLabel 6600 9550 0    50   Input ~ 0
M_A6
Text GLabel 6600 9450 0    50   Input ~ 0
M_A5
Text GLabel 6600 9350 0    50   Input ~ 0
M_A4
Text GLabel 6600 9250 0    50   Input ~ 0
M_A3
Text GLabel 6600 9150 0    50   Input ~ 0
M_A2
Text GLabel 6600 9050 0    50   Input ~ 0
M_A1
Text GLabel 6600 8950 0    50   Input ~ 0
M_A0
Wire Wire Line
	9200 8950 9300 8950
Connection ~ 6600 8700
Wire Wire Line
	6700 8700 6600 8700
Wire Wire Line
	6600 8600 6600 8700
Wire Wire Line
	6700 8600 6600 8600
$Comp
L power:GND #PWR030
U 1 1 6310AE28
P 6600 8700
F 0 "#PWR030" H 6600 8450 50  0001 C CNN
F 1 "GND" V 6605 8572 50  0000 R CNN
F 2 "" H 6600 8700 50  0001 C CNN
F 3 "" H 6600 8700 50  0001 C CNN
	1    6600 8700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 6310A7EB
P 8800 11300
F 0 "#PWR031" H 8800 11050 50  0001 C CNN
F 1 "GND" H 8805 11127 50  0000 C CNN
F 2 "" H 8800 11300 50  0001 C CNN
F 3 "" H 8800 11300 50  0001 C CNN
	1    8800 11300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x08_Male J10
U 1 1 62FCB5BE
P 6900 8500
F 0 "J10" H 6872 8382 50  0000 R CNN
F 1 "Conn_01x08_Male" H 6872 8473 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6900 8500 50  0001 C CNN
F 3 "~" H 6900 8500 50  0001 C CNN
	1    6900 8500
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x08_Male J11
U 1 1 62FC9635
P 6900 9350
F 0 "J11" H 6872 9232 50  0000 R CNN
F 1 "Conn_01x08_Male" H 6872 9323 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6900 9350 50  0001 C CNN
F 3 "~" H 6900 9350 50  0001 C CNN
	1    6900 9350
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x08_Male J12
U 1 1 62FC7DB4
P 6900 10200
F 0 "J12" H 6872 10082 50  0000 R CNN
F 1 "Conn_01x08_Male" H 6872 10173 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6900 10200 50  0001 C CNN
F 3 "~" H 6900 10200 50  0001 C CNN
	1    6900 10200
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x18_Odd_Even J14
U 1 1 62FC0BC2
P 8000 10900
F 0 "J14" V 8004 9913 50  0000 R CNN
F 1 "Conn_02x18_Odd_Even" V 8095 9913 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x18_P2.54mm_Vertical" H 8000 10900 50  0001 C CNN
F 3 "~" H 8000 10900 50  0001 C CNN
	1    8000 10900
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x08_Male J17
U 1 1 62FBE8E6
P 9000 10150
F 0 "J17" H 9108 10631 50  0000 C CNN
F 1 "Conn_01x08_Male" H 9108 10540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9000 10150 50  0001 C CNN
F 3 "~" H 9000 10150 50  0001 C CNN
	1    9000 10150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J15
U 1 1 62FBC7DC
P 9000 8150
F 0 "J15" H 9108 8731 50  0000 C CNN
F 1 "Conn_01x10_Male" H 9108 8640 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 9000 8150 50  0001 C CNN
F 3 "~" H 9000 8150 50  0001 C CNN
	1    9000 8150
	1    0    0    -1  
$EndComp
Wire Notes Line
	5900 7400 5900 11700
Wire Notes Line
	5900 11700 9950 11700
Wire Notes Line
	9950 11700 9950 7400
Wire Notes Line
	5900 7400 9950 7400
Text Notes 5950 7500 0    50   ~ 0
Mega Breakout
NoConn ~ 6700 8100
Wire Wire Line
	9200 10550 9300 10550
Text GLabel 9300 7750 2    50   Input ~ 0
SCL
Text GLabel 9300 7850 2    50   Input ~ 0
SDA
Wire Wire Line
	9300 7750 9200 7750
Wire Wire Line
	9200 7850 9300 7850
$Comp
L Connector:Conn_01x15_Male J24
U 1 1 64B67F20
P 11850 5800
F 0 "J24" H 11950 6650 50  0000 C CNN
F 1 "Conn_01x15_Male" H 12150 5000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 11850 5800 50  0001 C CNN
F 3 "~" H 11850 5800 50  0001 C CNN
	1    11850 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Male J23
U 1 1 64B6E48F
P 11700 5800
F 0 "J23" H 11850 4950 50  0000 R CNN
F 1 "Conn_01x15_Male" H 12450 6600 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 11700 5800 50  0001 C CNN
F 3 "~" H 11700 5800 50  0001 C CNN
	1    11700 5800
	-1   0    0    1   
$EndComp
Text GLabel 13300 2600 2    50   Input ~ 0
N1_D3_INT1
Text GLabel 10500 3600 0    50   Input ~ 0
N1_A0
Text GLabel 10500 3000 0    50   Input ~ 0
N1_A6
Text GLabel 10500 3300 0    50   Input ~ 0
N1_A3
Text GLabel 10500 3400 0    50   Input ~ 0
N1_A2
Text GLabel 10500 3500 0    50   Input ~ 0
N1_A1
Text GLabel 13300 2500 2    50   Input ~ 0
N1_D2_INT0
Text GLabel 13300 2700 2    50   Input ~ 0
N1_D4
$Comp
L arduino:Arduino_Nano_Socket XA2
U 1 1 5E1B2705
P 11900 3400
F 0 "XA2" H 11900 4637 60  0000 C CNN
F 1 "Arduino_Nano_Socket" H 11900 4531 60  0000 C CNN
F 2 "Arduino:Arduino_Nano_Socket" H 13700 7150 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-nano" H 13700 7150 60  0001 C CNN
	1    11900 3400
	1    0    0    -1  
$EndComp
Text GLabel 10500 2900 0    50   Input ~ 0
N1_A7
Text GLabel 13300 2800 2    50   Input ~ 0
N1_D5
Text GLabel 13300 2900 2    50   Input ~ 0
N1_D6
Text GLabel 13300 3000 2    50   Input ~ 0
N1_D7
Text GLabel 13300 3100 2    50   Input ~ 0
N1_D8
Text GLabel 13300 3200 2    50   Input ~ 0
N1_D9
Text GLabel 13300 3300 2    50   Input ~ 0
N1_D10
Text GLabel 13300 3400 2    50   Input ~ 0
N1_D11
Text GLabel 13300 3500 2    50   Input ~ 0
N1_D12
Text GLabel 13300 3600 2    50   Input ~ 0
N1_D13
Text GLabel 10500 2500 0    50   Input ~ 0
N1_D0
Text GLabel 10500 2600 0    50   Input ~ 0
N1_D1
Text GLabel 10500 3700 0    50   Input ~ 0
N1_AREF
Text GLabel 13300 4100 2    50   Input ~ 0
N1_RST1
Text GLabel 13300 4200 2    50   Input ~ 0
N1_RST2
Wire Wire Line
	13300 2500 13200 2500
Wire Wire Line
	13200 2600 13300 2600
Wire Wire Line
	13300 2700 13200 2700
Wire Wire Line
	13200 2800 13300 2800
Wire Wire Line
	13300 2900 13200 2900
Wire Wire Line
	13200 3000 13300 3000
Wire Wire Line
	13300 3100 13200 3100
Wire Wire Line
	13200 3200 13300 3200
Wire Wire Line
	13300 3300 13200 3300
Wire Wire Line
	13200 3400 13300 3400
Wire Wire Line
	13300 3500 13200 3500
Wire Wire Line
	13200 3600 13300 3600
Wire Wire Line
	13300 4100 13200 4100
Wire Wire Line
	13300 4200 13200 4200
Wire Wire Line
	10500 2500 10600 2500
Wire Wire Line
	10600 2600 10500 2600
Wire Wire Line
	10500 2900 10600 2900
Wire Wire Line
	10600 3000 10500 3000
Wire Wire Line
	10500 3300 10600 3300
Wire Wire Line
	10500 3400 10600 3400
Wire Wire Line
	10600 3500 10500 3500
Wire Wire Line
	10500 3600 10600 3600
Wire Wire Line
	10600 3700 10500 3700
$Comp
L power:GND #PWR047
U 1 1 6518DC68
P 12550 5200
F 0 "#PWR047" H 12550 4950 50  0001 C CNN
F 1 "GND" H 12555 5027 50  0000 C CNN
F 2 "" H 12550 5200 50  0001 C CNN
F 3 "" H 12550 5200 50  0001 C CNN
	1    12550 5200
	0    -1   -1   0   
$EndComp
Text GLabel 12150 6200 2    50   Input ~ 0
N1_A0
Text GLabel 12150 6100 2    50   Input ~ 0
N1_A1
Text GLabel 12150 6000 2    50   Input ~ 0
N1_A2
Text GLabel 12150 5900 2    50   Input ~ 0
N1_A3
Text GLabel 12150 5800 2    50   Input ~ 0
SDA
Text GLabel 12150 5700 2    50   Input ~ 0
SCL
Text GLabel 12150 5600 2    50   Input ~ 0
N1_A6
Text GLabel 12150 5500 2    50   Input ~ 0
N1_A7
Text GLabel 12150 6300 2    50   Input ~ 0
N1_AREF
Wire Wire Line
	11400 5200 11500 5200
Wire Wire Line
	12050 5200 12550 5200
Wire Wire Line
	12150 5300 12050 5300
Wire Wire Line
	12150 5500 12050 5500
Wire Wire Line
	12050 5600 12150 5600
Wire Wire Line
	12150 5700 12050 5700
Wire Wire Line
	12050 5800 12150 5800
Wire Wire Line
	12150 5900 12050 5900
Wire Wire Line
	12050 6000 12150 6000
Wire Wire Line
	12150 6100 12050 6100
Wire Wire Line
	12050 6200 12150 6200
Wire Wire Line
	12150 6300 12050 6300
Text GLabel 12150 6500 2    50   Input ~ 0
N1_D13
Wire Wire Line
	12150 6500 12050 6500
$Comp
L power:+8V #PWR046
U 1 1 656EFE2D
P 12550 5100
F 0 "#PWR046" H 12550 4950 50  0001 C CNN
F 1 "+8V" V 12565 5228 50  0000 L CNN
F 2 "" H 12550 5100 50  0001 C CNN
F 3 "" H 12550 5100 50  0001 C CNN
	1    12550 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	12550 5100 12050 5100
Text GLabel 11400 6500 0    50   Input ~ 0
N1_D12
Text GLabel 11400 6400 0    50   Input ~ 0
N1_D11
Text GLabel 11400 6300 0    50   Input ~ 0
N1_D10
Text GLabel 11400 6200 0    50   Input ~ 0
N1_D9
Text GLabel 11400 6100 0    50   Input ~ 0
N1_D8
Text GLabel 11400 6000 0    50   Input ~ 0
N1_D7
Text GLabel 11400 5900 0    50   Input ~ 0
N1_D6
Text GLabel 11400 5800 0    50   Input ~ 0
N1_D5
Text GLabel 11400 5700 0    50   Input ~ 0
N1_D4
Text GLabel 11400 5600 0    50   Input ~ 0
N1_D3_INT1
Text GLabel 11400 5500 0    50   Input ~ 0
N1_D2_INT0
$Comp
L power:GND #PWR041
U 1 1 657BC649
P 10950 5400
F 0 "#PWR041" H 10950 5150 50  0001 C CNN
F 1 "GND" H 10955 5227 50  0000 C CNN
F 2 "" H 10950 5400 50  0001 C CNN
F 3 "" H 10950 5400 50  0001 C CNN
	1    10950 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	10950 5400 11500 5400
Wire Wire Line
	11400 5300 11500 5300
Text GLabel 11400 5200 0    50   Input ~ 0
N1_D0
Text GLabel 11400 5100 0    50   Input ~ 0
N1_D1
Wire Wire Line
	11400 5100 11500 5100
Wire Wire Line
	11500 5500 11400 5500
Wire Wire Line
	11400 5600 11500 5600
Wire Wire Line
	11500 5700 11400 5700
Wire Wire Line
	11400 5800 11500 5800
Wire Wire Line
	11500 5900 11400 5900
Wire Wire Line
	11400 6000 11500 6000
Wire Wire Line
	11500 6100 11400 6100
Wire Wire Line
	11400 6200 11500 6200
Wire Wire Line
	11500 6300 11400 6300
Wire Wire Line
	11400 6400 11500 6400
Wire Wire Line
	11500 6500 11400 6500
Wire Notes Line
	10700 4750 10700 6750
Wire Notes Line
	10700 6750 13000 6750
Wire Notes Line
	13000 6750 13000 4750
Wire Notes Line
	13000 4750 10700 4750
Text Notes 12200 4850 0    50   ~ 0
Nano #1 Breakout
$Comp
L Connector:Conn_01x15_Male J30
U 1 1 65CF243B
P 16300 5800
F 0 "J30" H 16400 6650 50  0000 C CNN
F 1 "Conn_01x15_Male" H 16600 5000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 16300 5800 50  0001 C CNN
F 3 "~" H 16300 5800 50  0001 C CNN
	1    16300 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Male J29
U 1 1 65CF2445
P 16150 5800
F 0 "J29" H 16300 4950 50  0000 R CNN
F 1 "Conn_01x15_Male" H 16900 6600 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 16150 5800 50  0001 C CNN
F 3 "~" H 16150 5800 50  0001 C CNN
	1    16150 5800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR054
U 1 1 65CF244F
P 17000 5200
F 0 "#PWR054" H 17000 4950 50  0001 C CNN
F 1 "GND" H 17005 5027 50  0000 C CNN
F 2 "" H 17000 5200 50  0001 C CNN
F 3 "" H 17000 5200 50  0001 C CNN
	1    17000 5200
	0    -1   -1   0   
$EndComp
Text GLabel 16600 5700 2    50   Input ~ 0
SCL
Text GLabel 16600 5600 2    50   Input ~ 0
N2_A6
Text GLabel 16600 5500 2    50   Input ~ 0
N2_A7
Text GLabel 16600 6300 2    50   Input ~ 0
N2_AREF
Wire Wire Line
	15850 5200 15950 5200
Wire Wire Line
	16500 5200 17000 5200
Wire Wire Line
	16600 5300 16500 5300
Wire Wire Line
	16600 5500 16500 5500
Wire Wire Line
	16500 5600 16600 5600
Wire Wire Line
	16600 5700 16500 5700
Wire Wire Line
	16500 5800 16600 5800
Wire Wire Line
	16600 5900 16500 5900
Wire Wire Line
	16500 6000 16600 6000
Wire Wire Line
	16600 6100 16500 6100
Wire Wire Line
	16500 6200 16600 6200
Wire Wire Line
	16600 6300 16500 6300
Text GLabel 16600 6500 2    50   Input ~ 0
N2_D13
Wire Wire Line
	16600 6500 16500 6500
$Comp
L power:+8V #PWR053
U 1 1 65CF2488
P 17000 5100
F 0 "#PWR053" H 17000 4950 50  0001 C CNN
F 1 "+8V" V 17015 5228 50  0000 L CNN
F 2 "" H 17000 5100 50  0001 C CNN
F 3 "" H 17000 5100 50  0001 C CNN
	1    17000 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	17000 5100 16500 5100
Text GLabel 15850 6500 0    50   Input ~ 0
N2_D12
Text GLabel 15850 6400 0    50   Input ~ 0
N2_D11
Text GLabel 15850 6300 0    50   Input ~ 0
N2_D10
Text GLabel 15850 6200 0    50   Input ~ 0
N2_D9
Text GLabel 15850 6100 0    50   Input ~ 0
N2_D8
Text GLabel 15850 6000 0    50   Input ~ 0
N2_D7
Text GLabel 15850 5900 0    50   Input ~ 0
N2_D6
Text GLabel 15850 5800 0    50   Input ~ 0
N2_D5
Text GLabel 15850 5700 0    50   Input ~ 0
N2_D4
Text GLabel 15850 5600 0    50   Input ~ 0
N2_D3_INT1
Text GLabel 15850 5500 0    50   Input ~ 0
N2_D2_INT0
$Comp
L power:GND #PWR052
U 1 1 65CF249E
P 15400 5400
F 0 "#PWR052" H 15400 5150 50  0001 C CNN
F 1 "GND" H 15405 5227 50  0000 C CNN
F 2 "" H 15400 5400 50  0001 C CNN
F 3 "" H 15400 5400 50  0001 C CNN
	1    15400 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	15400 5400 15950 5400
Wire Wire Line
	15850 5300 15950 5300
Text GLabel 15850 5200 0    50   Input ~ 0
N2_D0
Text GLabel 15850 5100 0    50   Input ~ 0
N2_D1
Wire Wire Line
	15850 5100 15950 5100
Wire Wire Line
	15950 5500 15850 5500
Wire Wire Line
	15850 5600 15950 5600
Wire Wire Line
	15950 5700 15850 5700
Wire Wire Line
	15850 5800 15950 5800
Wire Wire Line
	15950 5900 15850 5900
Wire Wire Line
	15850 6000 15950 6000
Wire Wire Line
	15950 6100 15850 6100
Wire Wire Line
	15850 6200 15950 6200
Wire Wire Line
	15950 6300 15850 6300
Wire Wire Line
	15850 6400 15950 6400
Wire Wire Line
	15950 6500 15850 6500
Wire Notes Line
	15150 4750 15150 6750
Wire Notes Line
	15150 6750 17450 6750
Wire Notes Line
	17450 4750 15150 4750
Text Notes 16650 4850 0    50   ~ 0
Nano #2 Breakout
Text GLabel 17650 2600 2    50   Input ~ 0
N2_D3_INT1
Text GLabel 17650 2500 2    50   Input ~ 0
N2_D2_INT0
Text GLabel 17650 2700 2    50   Input ~ 0
N2_D4
Text GLabel 17650 2800 2    50   Input ~ 0
N2_D5
Text GLabel 17650 2900 2    50   Input ~ 0
N2_D6
Text GLabel 17650 3000 2    50   Input ~ 0
N2_D7
Text GLabel 17650 3100 2    50   Input ~ 0
N2_D8
Text GLabel 17650 3200 2    50   Input ~ 0
N2_D9
Text GLabel 17650 3300 2    50   Input ~ 0
N2_D10
Text GLabel 17650 3400 2    50   Input ~ 0
N2_D11
Text GLabel 17650 3500 2    50   Input ~ 0
N2_D12
Text GLabel 17650 3600 2    50   Input ~ 0
N2_D13
Text GLabel 17650 4100 2    50   Input ~ 0
N2_RST1
Text GLabel 17650 4200 2    50   Input ~ 0
N2_RST2
Wire Wire Line
	17650 2500 17550 2500
Wire Wire Line
	17550 2600 17650 2600
Wire Wire Line
	17650 2700 17550 2700
Wire Wire Line
	17550 2800 17650 2800
Wire Wire Line
	17650 2900 17550 2900
Wire Wire Line
	17550 3000 17650 3000
Wire Wire Line
	17650 3100 17550 3100
Wire Wire Line
	17550 3200 17650 3200
Wire Wire Line
	17650 3300 17550 3300
Wire Wire Line
	17550 3400 17650 3400
Wire Wire Line
	17650 3500 17550 3500
Wire Wire Line
	17550 3600 17650 3600
Wire Wire Line
	17650 4100 17550 4100
Wire Wire Line
	17650 4200 17550 4200
Text GLabel 14850 3200 0    50   Input ~ 0
SDA
Text GLabel 14850 3100 0    50   Input ~ 0
SCL
Wire Wire Line
	14850 3100 14950 3100
Wire Wire Line
	14850 3200 14950 3200
$Comp
L power:+8V #PWR051
U 1 1 65DA6A67
P 14850 4300
F 0 "#PWR051" H 14850 4150 50  0001 C CNN
F 1 "+8V" V 14865 4428 50  0000 L CNN
F 2 "" H 14850 4300 50  0001 C CNN
F 3 "" H 14850 4300 50  0001 C CNN
	1    14850 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14850 4100 14950 4100
Wire Wire Line
	14950 4200 14850 4200
$Comp
L power:GND #PWR050
U 1 1 65DA6A88
P 14850 3900
F 0 "#PWR050" H 14850 3650 50  0001 C CNN
F 1 "GND" V 14855 3772 50  0000 R CNN
F 2 "" H 14850 3900 50  0001 C CNN
F 3 "" H 14850 3900 50  0001 C CNN
	1    14850 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	14850 3900 14950 3900
Wire Wire Line
	14950 4000 14850 4000
Wire Wire Line
	14850 4000 14850 3900
Connection ~ 14850 3900
Text GLabel 14850 3600 0    50   Input ~ 0
N2_A0
Text GLabel 14850 3000 0    50   Input ~ 0
N2_A6
Text GLabel 14850 3300 0    50   Input ~ 0
N2_A3
Text GLabel 14850 3400 0    50   Input ~ 0
N2_A2
Text GLabel 14850 3500 0    50   Input ~ 0
N2_A1
Text GLabel 14850 2900 0    50   Input ~ 0
N2_A7
Text GLabel 14850 2500 0    50   Input ~ 0
N2_D0
Text GLabel 14850 2600 0    50   Input ~ 0
N2_D1
Text GLabel 14850 3700 0    50   Input ~ 0
N2_AREF
Wire Wire Line
	14850 2500 14950 2500
Wire Wire Line
	14950 2600 14850 2600
Wire Wire Line
	14850 2900 14950 2900
Wire Wire Line
	14950 3000 14850 3000
Wire Wire Line
	14850 3300 14950 3300
Wire Wire Line
	14850 3400 14950 3400
Wire Wire Line
	14950 3500 14850 3500
Wire Wire Line
	14850 3600 14950 3600
Wire Wire Line
	14950 3700 14850 3700
Text GLabel 19200 3200 0    50   Input ~ 0
SDA
Text GLabel 19200 3100 0    50   Input ~ 0
SCL
Wire Wire Line
	19200 3100 19300 3100
Wire Wire Line
	19200 3200 19300 3200
$Comp
L power:+8V #PWR056
U 1 1 65F59560
P 19200 4300
F 0 "#PWR056" H 19200 4150 50  0001 C CNN
F 1 "+8V" V 19215 4428 50  0000 L CNN
F 2 "" H 19200 4300 50  0001 C CNN
F 3 "" H 19200 4300 50  0001 C CNN
	1    19200 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	19200 4100 19300 4100
Wire Wire Line
	19300 4200 19200 4200
Wire Wire Line
	19200 4300 19300 4300
$Comp
L power:GND #PWR055
U 1 1 65F59581
P 19200 3900
F 0 "#PWR055" H 19200 3650 50  0001 C CNN
F 1 "GND" V 19205 3772 50  0000 R CNN
F 2 "" H 19200 3900 50  0001 C CNN
F 3 "" H 19200 3900 50  0001 C CNN
	1    19200 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	19200 3900 19300 3900
Wire Wire Line
	19300 4000 19200 4000
Wire Wire Line
	19200 4000 19200 3900
Connection ~ 19200 3900
Text GLabel 19200 3600 0    50   Input ~ 0
N3_A0
Text GLabel 19200 3000 0    50   Input ~ 0
N3_A6
Text GLabel 19200 3300 0    50   Input ~ 0
N3_A3
Text GLabel 19200 3400 0    50   Input ~ 0
N3_A2
Text GLabel 19200 3500 0    50   Input ~ 0
N3_A1
Text GLabel 19200 2900 0    50   Input ~ 0
N3_A7
Text GLabel 19200 2500 0    50   Input ~ 0
N3_D0
Text GLabel 19200 2600 0    50   Input ~ 0
N3_D1
Text GLabel 19200 3700 0    50   Input ~ 0
N3_AREF
Wire Wire Line
	19200 2500 19300 2500
Wire Wire Line
	19300 2600 19200 2600
Wire Wire Line
	19200 2900 19300 2900
Wire Wire Line
	19300 3000 19200 3000
Wire Wire Line
	19200 3300 19300 3300
Wire Wire Line
	19200 3400 19300 3400
Wire Wire Line
	19300 3500 19200 3500
Wire Wire Line
	19200 3600 19300 3600
Wire Wire Line
	19300 3700 19200 3700
Text GLabel 22000 2600 2    50   Input ~ 0
N3_D3_INT1
Text GLabel 22000 2500 2    50   Input ~ 0
N3_D2_INT0
Text GLabel 22000 2700 2    50   Input ~ 0
N3_D4
Text GLabel 22000 2800 2    50   Input ~ 0
N3_D5
Text GLabel 22000 2900 2    50   Input ~ 0
N3_D6
Text GLabel 22000 3000 2    50   Input ~ 0
N3_D7
Text GLabel 22000 3100 2    50   Input ~ 0
N3_D8
Text GLabel 22000 3200 2    50   Input ~ 0
N3_D9
Text GLabel 22000 3300 2    50   Input ~ 0
N3_D10
Text GLabel 22000 3400 2    50   Input ~ 0
N3_D11
Text GLabel 22000 3500 2    50   Input ~ 0
N3_D12
Text GLabel 22000 3600 2    50   Input ~ 0
N3_D13
Text GLabel 22000 4100 2    50   Input ~ 0
N3_RST1
Text GLabel 22000 4200 2    50   Input ~ 0
N3_RST2
Wire Wire Line
	22000 2500 21900 2500
Wire Wire Line
	21900 2600 22000 2600
Wire Wire Line
	22000 2700 21900 2700
Wire Wire Line
	21900 2800 22000 2800
Wire Wire Line
	22000 2900 21900 2900
Wire Wire Line
	21900 3000 22000 3000
Wire Wire Line
	22000 3100 21900 3100
Wire Wire Line
	21900 3200 22000 3200
Wire Wire Line
	22000 3300 21900 3300
Wire Wire Line
	21900 3400 22000 3400
Wire Wire Line
	22000 3500 21900 3500
Wire Wire Line
	21900 3600 22000 3600
Wire Wire Line
	22000 4100 21900 4100
Wire Wire Line
	22000 4200 21900 4200
$Comp
L Connector:Conn_01x15_Male J32
U 1 1 6600F1AE
P 20700 5800
F 0 "J32" H 20800 6650 50  0000 C CNN
F 1 "Conn_01x15_Male" H 21000 5000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 20700 5800 50  0001 C CNN
F 3 "~" H 20700 5800 50  0001 C CNN
	1    20700 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x15_Male J31
U 1 1 6600F1B8
P 20550 5800
F 0 "J31" H 20700 4950 50  0000 R CNN
F 1 "Conn_01x15_Male" H 21300 6600 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x15_P2.54mm_Vertical" H 20550 5800 50  0001 C CNN
F 3 "~" H 20550 5800 50  0001 C CNN
	1    20550 5800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR059
U 1 1 6600F1C2
P 21400 5200
F 0 "#PWR059" H 21400 4950 50  0001 C CNN
F 1 "GND" H 21405 5027 50  0000 C CNN
F 2 "" H 21400 5200 50  0001 C CNN
F 3 "" H 21400 5200 50  0001 C CNN
	1    21400 5200
	0    -1   -1   0   
$EndComp
Text GLabel 21000 5500 2    50   Input ~ 0
N3_A7
Text GLabel 21000 5600 2    50   Input ~ 0
N3_A6
Text GLabel 21000 5900 2    50   Input ~ 0
N3_A3
Text GLabel 21000 6000 2    50   Input ~ 0
N3_A2
Text GLabel 21000 6100 2    50   Input ~ 0
N3_A1
Text GLabel 21000 6200 2    50   Input ~ 0
N3_A0
Text GLabel 21000 6300 2    50   Input ~ 0
N3_AREF
Wire Wire Line
	20250 5200 20350 5200
Wire Wire Line
	20900 5200 21400 5200
Wire Wire Line
	21000 5300 20900 5300
Wire Wire Line
	21000 5500 20900 5500
Wire Wire Line
	20900 5600 21000 5600
Wire Wire Line
	21000 5700 20900 5700
Wire Wire Line
	20900 5800 21000 5800
Wire Wire Line
	21000 5900 20900 5900
Wire Wire Line
	20900 6000 21000 6000
Wire Wire Line
	21000 6100 20900 6100
Wire Wire Line
	20900 6200 21000 6200
Wire Wire Line
	21000 6300 20900 6300
Text GLabel 21000 6500 2    50   Input ~ 0
N3_D13
Wire Wire Line
	21000 6500 20900 6500
$Comp
L power:+8V #PWR058
U 1 1 6600F1FB
P 21400 5100
F 0 "#PWR058" H 21400 4950 50  0001 C CNN
F 1 "+8V" V 21415 5228 50  0000 L CNN
F 2 "" H 21400 5100 50  0001 C CNN
F 3 "" H 21400 5100 50  0001 C CNN
	1    21400 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	21400 5100 20900 5100
Text GLabel 20250 6500 0    50   Input ~ 0
N3_D12
Text GLabel 20250 6400 0    50   Input ~ 0
N3_D11
Text GLabel 20250 6300 0    50   Input ~ 0
N3_D10
Text GLabel 20250 6200 0    50   Input ~ 0
N3_D9
Text GLabel 20250 6100 0    50   Input ~ 0
N3_D8
Text GLabel 20250 6000 0    50   Input ~ 0
N3_D7
Text GLabel 20250 5900 0    50   Input ~ 0
N3_D6
Text GLabel 20250 5800 0    50   Input ~ 0
N3_D5
Text GLabel 20250 5700 0    50   Input ~ 0
N3_D4
Text GLabel 20250 5600 0    50   Input ~ 0
N3_D3_INT1
Text GLabel 20250 5500 0    50   Input ~ 0
N3_D2_INT0
$Comp
L power:GND #PWR057
U 1 1 6600F211
P 19800 5400
F 0 "#PWR057" H 19800 5150 50  0001 C CNN
F 1 "GND" H 19805 5227 50  0000 C CNN
F 2 "" H 19800 5400 50  0001 C CNN
F 3 "" H 19800 5400 50  0001 C CNN
	1    19800 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	19800 5400 20350 5400
Wire Wire Line
	20250 5300 20350 5300
Text GLabel 20250 5200 0    50   Input ~ 0
N3_D0
Text GLabel 20250 5100 0    50   Input ~ 0
N3_D1
Wire Wire Line
	20250 5100 20350 5100
Wire Wire Line
	20350 5500 20250 5500
Wire Wire Line
	20250 5600 20350 5600
Wire Wire Line
	20350 5700 20250 5700
Wire Wire Line
	20250 5800 20350 5800
Wire Wire Line
	20350 5900 20250 5900
Wire Wire Line
	20250 6000 20350 6000
Wire Wire Line
	20350 6100 20250 6100
Wire Wire Line
	20250 6200 20350 6200
Wire Wire Line
	20350 6300 20250 6300
Wire Wire Line
	20250 6400 20350 6400
Wire Wire Line
	20350 6500 20250 6500
Wire Notes Line
	19550 4750 19550 6750
Wire Notes Line
	19550 6750 21850 6750
Wire Notes Line
	21850 6750 21850 4750
Wire Notes Line
	21850 4750 19550 4750
Text Notes 21050 4850 0    50   ~ 0
Nano #3 Breakout
Wire Wire Line
	9000 3250 8900 3250
Wire Wire Line
	8900 3350 9000 3350
Wire Wire Line
	9000 3450 8900 3450
Wire Wire Line
	6300 5450 6200 5450
Wire Wire Line
	6200 5550 6300 5550
Wire Wire Line
	8600 12500 8700 12500
Wire Wire Line
	8700 12600 8600 12600
Wire Wire Line
	8600 12700 8700 12700
Wire Wire Line
	8700 12800 8600 12800
Wire Wire Line
	8600 12900 8700 12900
Wire Wire Line
	8700 13000 8600 13000
Wire Wire Line
	8600 13100 8700 13100
Wire Wire Line
	8700 13200 8600 13200
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J13
U 1 1 66874924
P 7800 7950
F 0 "J13" H 7850 8267 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 7850 8176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 7800 7950 50  0001 C CNN
F 3 "~" H 7800 7950 50  0001 C CNN
	1    7800 7950
	1    0    0    -1  
$EndComp
Text GLabel 7500 7850 0    50   Input ~ 0
M_RST2
Text GLabel 7500 7950 0    50   Input ~ 0
M_SCK
Text GLabel 7500 8050 0    50   Input ~ 0
M_MISO
Text GLabel 8200 8050 2    50   Input ~ 0
M_SPI_5V
Text GLabel 8200 7950 2    50   Input ~ 0
M_MOSI
$Comp
L power:GND #PWR034
U 1 1 668EE5B0
P 8200 7850
F 0 "#PWR034" H 8200 7600 50  0001 C CNN
F 1 "GND" H 8205 7677 50  0000 C CNN
F 2 "" H 8200 7850 50  0001 C CNN
F 3 "" H 8200 7850 50  0001 C CNN
	1    8200 7850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 7850 7600 7850
Wire Wire Line
	7600 7950 7500 7950
Wire Wire Line
	7500 8050 7600 8050
Wire Wire Line
	8200 7950 8100 7950
Wire Wire Line
	8100 8050 8150 8050
$Comp
L power:PWR_FLAG #FLG08
U 1 1 66C748D0
P 8150 8150
F 0 "#FLG08" H 8150 8225 50  0001 C CNN
F 1 "PWR_FLAG" H 8150 8323 50  0000 C CNN
F 2 "" H 8150 8150 50  0001 C CNN
F 3 "~" H 8150 8150 50  0001 C CNN
	1    8150 8150
	-1   0    0    1   
$EndComp
$Comp
L Connector:Raspberry_Pi_2_3 J8
U 1 1 5E195AFF
P 3000 3750
F 0 "J8" H 3000 5231 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 2350 5050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 3000 3750 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 3000 3750 50  0001 C CNN
	1    3000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2450 2800 2250
Wire Wire Line
	2900 2250 2900 2450
Wire Wire Line
	2800 2250 2900 2250
Connection ~ 2800 2250
$Comp
L power:+5V #PWR014
U 1 1 617D6A16
P 2800 2250
F 0 "#PWR014" H 2800 2100 50  0001 C CNN
F 1 "+5V" H 2815 2423 50  0000 C CNN
F 2 "" H 2800 2250 50  0001 C CNN
F 3 "" H 2800 2250 50  0001 C CNN
	1    2800 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2250 3500 2250
Wire Wire Line
	3100 2250 3200 2250
Connection ~ 3200 2250
Wire Wire Line
	3200 2250 3200 2450
Wire Wire Line
	3100 2250 3100 2450
Connection ~ 3100 2250
$Comp
L power:+3.3V #PWR018
U 1 1 5F2067F4
P 3100 2250
F 0 "#PWR018" H 3100 2100 50  0001 C CNN
F 1 "+3.3V" H 3115 2423 50  0000 C CNN
F 2 "" H 3100 2250 50  0001 C CNN
F 3 "" H 3100 2250 50  0001 C CNN
	1    3100 2250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 661B8BDD
P 3500 2250
F 0 "#FLG04" H 3500 2325 50  0001 C CNN
F 1 "PWR_FLAG" H 3500 2423 50  0000 C CNN
F 2 "" H 3500 2250 50  0001 C CNN
F 3 "~" H 3500 2250 50  0001 C CNN
	1    3500 2250
	1    0    0    -1  
$EndComp
Text GLabel 21000 5800 2    50   Input ~ 0
SDA
Text GLabel 21000 5700 2    50   Input ~ 0
SCL
$Comp
L power:PWR_FLAG #FLG07
U 1 1 671E32E1
P 5900 6150
F 0 "#FLG07" H 5900 6225 50  0001 C CNN
F 1 "PWR_FLAG" H 5900 6323 50  0000 C CNN
F 2 "" H 5900 6150 50  0001 C CNN
F 3 "~" H 5900 6150 50  0001 C CNN
	1    5900 6150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 6150 6200 6150
Wire Wire Line
	6200 6150 6200 6250
$Comp
L power:PWR_FLAG #FLG06
U 1 1 672CE262
P 5750 6400
F 0 "#FLG06" H 5750 6475 50  0001 C CNN
F 1 "PWR_FLAG" H 5750 6573 50  0000 C CNN
F 2 "" H 5750 6400 50  0001 C CNN
F 3 "~" H 5750 6400 50  0001 C CNN
	1    5750 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 6400 6200 6400
Wire Wire Line
	6200 6400 6200 6450
$Comp
L power:PWR_FLAG #FLG010
U 1 1 67412B15
P 10150 4250
F 0 "#FLG010" H 10150 4325 50  0001 C CNN
F 1 "PWR_FLAG" H 10150 4423 50  0000 C CNN
F 2 "" H 10150 4250 50  0001 C CNN
F 3 "~" H 10150 4250 50  0001 C CNN
	1    10150 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10150 4250 10500 4250
Wire Wire Line
	10500 4250 10500 4200
$Comp
L power:PWR_FLAG #FLG09
U 1 1 67479E40
P 10000 4050
F 0 "#FLG09" H 10000 4125 50  0001 C CNN
F 1 "PWR_FLAG" H 10000 4223 50  0000 C CNN
F 2 "" H 10000 4050 50  0001 C CNN
F 3 "~" H 10000 4050 50  0001 C CNN
	1    10000 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10000 4050 10500 4050
Wire Wire Line
	10500 4050 10500 4100
$Comp
L power:PWR_FLAG #FLG012
U 1 1 674E59BC
P 14500 4250
F 0 "#FLG012" H 14500 4325 50  0001 C CNN
F 1 "PWR_FLAG" H 14500 4423 50  0000 C CNN
F 2 "" H 14500 4250 50  0001 C CNN
F 3 "~" H 14500 4250 50  0001 C CNN
	1    14500 4250
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG011
U 1 1 674E59C2
P 14350 4050
F 0 "#FLG011" H 14350 4125 50  0001 C CNN
F 1 "PWR_FLAG" H 14350 4223 50  0000 C CNN
F 2 "" H 14350 4050 50  0001 C CNN
F 3 "~" H 14350 4050 50  0001 C CNN
	1    14350 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14350 4050 14850 4050
$Comp
L power:PWR_FLAG #FLG014
U 1 1 6754C57D
P 18850 4250
F 0 "#FLG014" H 18850 4325 50  0001 C CNN
F 1 "PWR_FLAG" H 18850 4423 50  0000 C CNN
F 2 "" H 18850 4250 50  0001 C CNN
F 3 "~" H 18850 4250 50  0001 C CNN
	1    18850 4250
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG013
U 1 1 6754C583
P 18700 4050
F 0 "#FLG013" H 18700 4125 50  0001 C CNN
F 1 "PWR_FLAG" H 18700 4223 50  0000 C CNN
F 2 "" H 18700 4050 50  0001 C CNN
F 3 "~" H 18700 4050 50  0001 C CNN
	1    18700 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	18700 4050 19200 4050
Wire Wire Line
	14500 4250 14850 4250
Wire Wire Line
	14850 4050 14850 4100
Wire Wire Line
	19200 4050 19200 4100
Wire Wire Line
	18850 4250 19200 4250
Wire Wire Line
	19200 4250 19200 4200
Wire Wire Line
	14850 4250 14850 4200
Wire Wire Line
	14850 4300 14950 4300
Text GLabel 6200 6450 0    50   Input ~ 0
M_5V
Text GLabel 6200 6250 0    50   Input ~ 0
M_3V3
Text GLabel 19200 4100 0    50   Input ~ 0
N3_3V3
Text GLabel 19200 4200 0    50   Input ~ 0
N3_5V
Text GLabel 14850 4100 0    50   Input ~ 0
N2_3V3
Text GLabel 14850 4200 0    50   Input ~ 0
N2_5V
Text GLabel 10500 4100 0    50   Input ~ 0
N1_3V3
Text GLabel 6600 8400 0    50   Input ~ 0
M_3V3
Wire Wire Line
	6600 8400 6700 8400
Text GLabel 6600 8500 0    50   Input ~ 0
M_5V
Wire Wire Line
	6600 8500 6700 8500
Text GLabel 7350 12650 0    50   Input ~ 0
M_3V3
Text GLabel 8550 12400 0    50   Input ~ 0
M_3V3
Text GLabel 9700 12400 0    50   Input ~ 0
M_3V3
Text GLabel 6000 15400 0    50   Input ~ 0
M_3V3
Text GLabel 7850 14450 3    50   Input ~ 0
M_3V3
Text GLabel 8500 15000 3    50   Input ~ 0
M_3V3
Text GLabel 9050 14450 3    50   Input ~ 0
M_3V3
Text GLabel 9700 15050 3    50   Input ~ 0
M_3V3
Text GLabel 12150 6400 2    50   Input ~ 0
N1_3V3
Wire Wire Line
	12050 6400 12150 6400
Text GLabel 10500 4200 0    50   Input ~ 0
N1_5V
Text GLabel 12150 5400 2    50   Input ~ 0
N1_5V
Wire Wire Line
	12150 5400 12050 5400
Text GLabel 21000 5400 2    50   Input ~ 0
N3_5V
Text GLabel 21000 6400 2    50   Input ~ 0
N3_3V3
Wire Wire Line
	21000 6400 20900 6400
Wire Wire Line
	20900 5400 21000 5400
Text GLabel 16600 5400 2    50   Input ~ 0
N2_5V
Text GLabel 16600 6400 2    50   Input ~ 0
N2_3V3
Wire Wire Line
	16500 5400 16600 5400
Wire Wire Line
	16600 6400 16500 6400
$Comp
L saufanlage:LM2596 PS1
U 1 1 68F91FBC
P 2500 1050
F 0 "PS1" H 2500 1375 50  0000 C CNN
F 1 "LM2596" H 2500 1284 50  0000 C CNN
F 2 "saufanlage:LM2596" H 2500 1050 50  0001 C CNN
F 3 "" H 2500 1050 50  0001 C CNN
	1    2500 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 68F930B0
P 2000 950
F 0 "#PWR04" H 2000 700 50  0001 C CNN
F 1 "GND" V 2005 822 50  0000 R CNN
F 2 "" H 2000 950 50  0001 C CNN
F 3 "" H 2000 950 50  0001 C CNN
	1    2000 950 
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR05
U 1 1 68F94050
P 2000 1150
F 0 "#PWR05" H 2000 1000 50  0001 C CNN
F 1 "+12V" V 2015 1278 50  0000 L CNN
F 2 "" H 2000 1150 50  0001 C CNN
F 3 "" H 2000 1150 50  0001 C CNN
	1    2000 1150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 68F97513
P 1100 1550
F 0 "J2" H 1018 1225 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1018 1316 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 1100 1550 50  0001 C CNN
F 3 "~" H 1100 1550 50  0001 C CNN
	1    1100 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 68F9911D
P 1400 1550
F 0 "#PWR02" H 1400 1300 50  0001 C CNN
F 1 "GND" H 1405 1377 50  0000 C CNN
F 2 "" H 1400 1550 50  0001 C CNN
F 3 "" H 1400 1550 50  0001 C CNN
	1    1400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1550 1400 1550
Wire Wire Line
	2000 1150 2000 1450
Wire Wire Line
	2000 1450 1300 1450
Wire Wire Line
	2000 1150 2100 1150
Connection ~ 2000 1150
$Comp
L power:PWR_FLAG #FLG02
U 1 1 691B3378
P 2100 1450
F 0 "#FLG02" H 2100 1525 50  0001 C CNN
F 1 "PWR_FLAG" V 2100 1578 50  0000 L CNN
F 2 "" H 2100 1450 50  0001 C CNN
F 3 "~" H 2100 1450 50  0001 C CNN
	1    2100 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 1450 2000 1450
Connection ~ 2000 1450
$Comp
L power:GND #PWR016
U 1 1 69291C24
P 3000 950
F 0 "#PWR016" H 3000 700 50  0001 C CNN
F 1 "GND" V 3005 822 50  0000 R CNN
F 2 "" H 3000 950 50  0001 C CNN
F 3 "" H 3000 950 50  0001 C CNN
	1    3000 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 950  2100 950 
Wire Wire Line
	2900 950  3000 950 
$Comp
L power:+8V #PWR017
U 1 1 695209D9
P 3000 1150
F 0 "#PWR017" H 3000 1000 50  0001 C CNN
F 1 "+8V" H 3015 1323 50  0000 C CNN
F 2 "" H 3000 1150 50  0001 C CNN
F 3 "" H 3000 1150 50  0001 C CNN
	1    3000 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 1150 3000 1150
$Comp
L saufanlage:LM2596 PS2
U 1 1 695FEE2E
P 4250 1050
F 0 "PS2" H 4250 1375 50  0000 C CNN
F 1 "LM2596" H 4250 1284 50  0000 C CNN
F 2 "saufanlage:LM2596" H 4250 1050 50  0001 C CNN
F 3 "" H 4250 1050 50  0001 C CNN
	1    4250 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 695FEE38
P 3750 950
F 0 "#PWR025" H 3750 700 50  0001 C CNN
F 1 "GND" V 3755 822 50  0000 R CNN
F 2 "" H 3750 950 50  0001 C CNN
F 3 "" H 3750 950 50  0001 C CNN
	1    3750 950 
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR026
U 1 1 695FEE42
P 3750 1150
F 0 "#PWR026" H 3750 1000 50  0001 C CNN
F 1 "+12V" V 3765 1278 50  0000 L CNN
F 2 "" H 3750 1150 50  0001 C CNN
F 3 "" H 3750 1150 50  0001 C CNN
	1    3750 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 1150 3850 1150
Connection ~ 3750 1150
$Comp
L power:GND #PWR027
U 1 1 695FEE4F
P 4750 950
F 0 "#PWR027" H 4750 700 50  0001 C CNN
F 1 "GND" V 4755 822 50  0000 R CNN
F 2 "" H 4750 950 50  0001 C CNN
F 3 "" H 4750 950 50  0001 C CNN
	1    4750 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 950  3850 950 
Wire Wire Line
	4650 950  4750 950 
Wire Wire Line
	4650 1150 4750 1150
Wire Wire Line
	2000 1450 2000 1650
Wire Wire Line
	2000 1650 3750 1650
Wire Wire Line
	3750 1150 3750 1650
$Comp
L power:+5V #PWR028
U 1 1 697584E6
P 4750 1150
F 0 "#PWR028" H 4750 1000 50  0001 C CNN
F 1 "+5V" V 4765 1278 50  0000 L CNN
F 2 "" H 4750 1150 50  0001 C CNN
F 3 "" H 4750 1150 50  0001 C CNN
	1    4750 1150
	0    1    1    0   
$EndComp
Wire Notes Line
	5100 550  5100 1900
Wire Notes Line
	5100 1900 750  1900
Wire Notes Line
	750  1900 750  550 
Wire Notes Line
	750  550  5100 550 
Text Notes 4600 1850 0    50   ~ 0
Power Input
$Comp
L power:PWR_FLAG #FLG01
U 1 1 69A04DAC
P 1400 1550
F 0 "#FLG01" H 1400 1625 50  0001 C CNN
F 1 "PWR_FLAG" V 1400 1678 50  0000 L CNN
F 2 "" H 1400 1550 50  0001 C CNN
F 3 "~" H 1400 1550 50  0001 C CNN
	1    1400 1550
	0    1    1    0   
$EndComp
Connection ~ 1400 1550
Text GLabel 16600 6200 2    50   Input ~ 0
N2_A0
Text GLabel 16600 6100 2    50   Input ~ 0
N2_A1
Wire Notes Line
	17450 6750 17450 4750
Text GLabel 16600 5800 2    50   Input ~ 0
SDA
Text GLabel 16600 5900 2    50   Input ~ 0
N2_A3
Text GLabel 16600 6000 2    50   Input ~ 0
N2_A2
Wire Wire Line
	8800 11300 8800 11200
Text GLabel 7500 11300 3    50   Input ~ 0
M_D29
Text GLabel 7400 11300 3    50   Input ~ 0
M_D27
Text GLabel 7300 11300 3    50   Input ~ 0
M_D25
Text GLabel 7200 11300 3    50   Input ~ 0
M_D23
Wire Wire Line
	7200 11300 7200 11200
Wire Wire Line
	7300 11200 7300 11300
Wire Wire Line
	7400 11300 7400 11200
Wire Wire Line
	7500 11200 7500 11300
Text GLabel 7100 10600 1    50   Input ~ 0
M_5V
Text GLabel 7100 11300 3    50   Input ~ 0
M_5V
Wire Wire Line
	7100 11300 7100 11200
Wire Wire Line
	7100 10700 7100 10600
$Comp
L power:GND #PWR0101
U 1 1 5F0582DA
P 8800 10650
F 0 "#PWR0101" H 8800 10400 50  0001 C CNN
F 1 "GND" H 8805 10477 50  0000 C CNN
F 2 "" H 8800 10650 50  0001 C CNN
F 3 "" H 8800 10650 50  0001 C CNN
	1    8800 10650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 10650 8800 10700
Wire Wire Line
	8100 7850 8200 7850
Wire Wire Line
	8150 8150 8150 8050
Connection ~ 8150 8050
Wire Wire Line
	8150 8050 8200 8050
Text GLabel 21000 5300 2    50   Input ~ 0
N3_RST2
Text GLabel 20250 5300 0    50   Input ~ 0
N3_RST1
Text GLabel 16600 5300 2    50   Input ~ 0
N2_RST2
Text GLabel 15850 5300 0    50   Input ~ 0
N2_RST1
Text GLabel 12150 5300 2    50   Input ~ 0
N1_RST2
Text GLabel 11400 5300 0    50   Input ~ 0
N1_RST1
$EndSCHEMATC
