EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Bluetooth OBD-II Interpreter"
Date "2021-01-12"
Rev "1.1"
Comp "Zak Rowland"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:L7805 U3
U 1 1 5F9CEC3E
P 9950 2050
F 0 "U3" H 9950 2292 50  0000 C CNN
F 1 "L7805" H 9950 2201 50  0000 C CNN
F 2 "" H 9975 1900 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 9950 2000 50  0001 C CNN
	1    9950 2050
	1    0    0    -1  
$EndComp
Connection ~ 9250 2050
Wire Wire Line
	9250 2050 9650 2050
$Comp
L power:GND #PWR?
U 1 1 5F9DB58A
P 9250 2850
F 0 "#PWR?" H 9250 2600 50  0001 C CNN
F 1 "GND" H 9255 2677 50  0000 C CNN
F 2 "" H 9250 2850 50  0001 C CNN
F 3 "" H 9250 2850 50  0001 C CNN
	1    9250 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F9DC255
P 9950 2350
F 0 "#PWR?" H 9950 2100 50  0001 C CNN
F 1 "GND" H 9955 2177 50  0000 C CNN
F 2 "" H 9950 2350 50  0001 C CNN
F 3 "" H 9950 2350 50  0001 C CNN
	1    9950 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2050 10650 2050
$Comp
L power:GND #PWR?
U 1 1 5F9DDD17
P 10650 2850
F 0 "#PWR?" H 10650 2600 50  0001 C CNN
F 1 "GND" H 10655 2677 50  0000 C CNN
F 2 "" H 10650 2850 50  0001 C CNN
F 3 "" H 10650 2850 50  0001 C CNN
	1    10650 2850
	1    0    0    -1  
$EndComp
Text Label 7050 2450 0    50   ~ 0
Vbatt
Text Label 9000 2050 0    50   ~ 0
+12V
Text Label 10400 2050 0    50   ~ 0
+5V
$Comp
L Device:LED D2
U 1 1 5F9E6991
P 10650 1650
F 0 "D2" V 10597 1730 50  0000 L CNN
F 1 "Green LED" V 10688 1730 50  0000 L CNN
F 2 "" H 10650 1650 50  0001 C CNN
F 3 "~" H 10650 1650 50  0001 C CNN
	1    10650 1650
	0    1    1    0   
$EndComp
Connection ~ 10650 2050
Wire Wire Line
	10650 2050 10650 1800
$Comp
L Device:R R1
U 1 1 5F9EF59A
P 10650 1150
F 0 "R1" H 10720 1196 50  0000 L CNN
F 1 "470Ω" H 10720 1105 50  0000 L CNN
F 2 "" V 10580 1150 50  0001 C CNN
F 3 "~" H 10650 1150 50  0001 C CNN
	1    10650 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F9F03A0
P 10650 800
F 0 "#PWR?" H 10650 550 50  0001 C CNN
F 1 "GND" H 10655 627 50  0000 C CNN
F 2 "" H 10650 800 50  0001 C CNN
F 3 "" H 10650 800 50  0001 C CNN
	1    10650 800 
	-1   0    0    1   
$EndComp
Wire Wire Line
	10650 1000 10650 800 
$Comp
L OBD-II_Transceiver-rescue:J1962-TypeA-Senior_Project A1
U 1 1 5F9F751B
P 6500 1550
F 0 "A1" H 6500 1615 50  0000 C CNN
F 1 "J1962-Type-A-OBDII-Port" H 6500 1524 50  0000 C CNN
F 2 "" H 6500 1550 50  0001 C CNN
F 3 "" H 6500 1550 50  0001 C CNN
	1    6500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 1300 10650 1500
$Comp
L power:+5V #PWR?
U 1 1 5FA0A118
P 10650 2050
F 0 "#PWR?" H 10650 1900 50  0001 C CNN
F 1 "+5V" V 10665 2178 50  0000 L CNN
F 2 "" H 10650 2050 50  0001 C CNN
F 3 "" H 10650 2050 50  0001 C CNN
	1    10650 2050
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5FA0A872
P 9250 2050
F 0 "#PWR?" H 9250 1900 50  0001 C CNN
F 1 "+12V" H 9265 2223 50  0000 C CNN
F 2 "" H 9250 2050 50  0001 C CNN
F 3 "" H 9250 2050 50  0001 C CNN
	1    9250 2050
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:MCP2551-I-P U2
U 1 1 5FA145B2
P 3000 2150
F 0 "U2" H 3000 2731 50  0000 C CNN
F 1 "MCP2551-I-P" H 3000 2640 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3000 1650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 3000 2150 50  0001 C CNN
	1    3000 2150
	1    0    0    -1  
$EndComp
Connection ~ 7700 2450
NoConn ~ 6000 1750
NoConn ~ 6000 1850
NoConn ~ 7000 1750
NoConn ~ 7000 1850
NoConn ~ 7000 1950
NoConn ~ 7000 2050
NoConn ~ 7000 2150
NoConn ~ 7000 2350
NoConn ~ 6000 2450
Wire Wire Line
	7300 2250 7300 1100
Wire Wire Line
	7300 1100 4900 1100
Wire Wire Line
	4900 1100 4900 2250
Wire Wire Line
	5550 2250 5550 2050
Wire Wire Line
	5550 2050 4150 2050
Connection ~ 4150 2050
Wire Wire Line
	4150 2050 3500 2050
$Comp
L Device:R R2
U 1 1 5FA40D62
P 4150 1750
F 0 "R2" H 4220 1796 50  0000 L CNN
F 1 "100Ω" H 4220 1705 50  0000 L CNN
F 2 "" V 4080 1750 50  0001 C CNN
F 3 "~" H 4150 1750 50  0001 C CNN
	1    4150 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5FA42023
P 4150 2550
F 0 "R3" H 4220 2596 50  0000 L CNN
F 1 "100Ω" H 4220 2505 50  0000 L CNN
F 2 "" V 4080 2550 50  0001 C CNN
F 3 "~" H 4150 2550 50  0001 C CNN
	1    4150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2050 4150 1900
Wire Wire Line
	3500 2250 4150 2250
Wire Wire Line
	4150 2250 4150 2400
Connection ~ 4150 2250
Wire Wire Line
	4150 2250 4900 2250
$Comp
L power:GND #PWR?
U 1 1 5FA470BB
P 4150 800
F 0 "#PWR?" H 4150 550 50  0001 C CNN
F 1 "GND" H 4155 627 50  0000 C CNN
F 2 "" H 4150 800 50  0001 C CNN
F 3 "" H 4150 800 50  0001 C CNN
	1    4150 800 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FA47E61
P 4150 3500
F 0 "#PWR?" H 4150 3250 50  0001 C CNN
F 1 "GND" H 4155 3327 50  0000 C CNN
F 2 "" H 4150 3500 50  0001 C CNN
F 3 "" H 4150 3500 50  0001 C CNN
	1    4150 3500
	1    0    0    -1  
$EndComp
NoConn ~ 2500 2250
Wire Wire Line
	3000 1750 3400 1750
$Comp
L power:+5V #PWR?
U 1 1 5FA4CB90
P 3400 1750
F 0 "#PWR?" H 3400 1600 50  0001 C CNN
F 1 "+5V" V 3415 1878 50  0000 L CNN
F 2 "" H 3400 1750 50  0001 C CNN
F 3 "" H 3400 1750 50  0001 C CNN
	1    3400 1750
	0    1    1    0   
$EndComp
Connection ~ 3400 1750
$Comp
L power:GND #PWR?
U 1 1 5FA4EB0E
P 3400 800
F 0 "#PWR?" H 3400 550 50  0001 C CNN
F 1 "GND" H 3405 627 50  0000 C CNN
F 2 "" H 3400 800 50  0001 C CNN
F 3 "" H 3400 800 50  0001 C CNN
	1    3400 800 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FA9ED0F
P 3000 2550
F 0 "#PWR?" H 3000 2300 50  0001 C CNN
F 1 "GND" H 3005 2377 50  0000 C CNN
F 2 "" H 3000 2550 50  0001 C CNN
F 3 "" H 3000 2550 50  0001 C CNN
	1    3000 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4000 1450 4000
Wire Wire Line
	1450 4000 1450 1950
Wire Wire Line
	1450 1950 2500 1950
Wire Wire Line
	1550 3900 1550 2050
Wire Wire Line
	1550 2050 2500 2050
$Comp
L Device:R R4
U 1 1 5FAA36F0
P 2050 2350
F 0 "R4" V 1843 2350 50  0000 C CNN
F 1 "4.7KΩ" V 1934 2350 50  0000 C CNN
F 2 "" V 1980 2350 50  0001 C CNN
F 3 "~" H 2050 2350 50  0001 C CNN
	1    2050 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 2350 2200 2350
$Comp
L power:GND #PWR?
U 1 1 5FAA4EC7
P 1900 2350
F 0 "#PWR?" H 1900 2100 50  0001 C CNN
F 1 "GND" V 1905 2222 50  0000 R CNN
F 2 "" H 1900 2350 50  0001 C CNN
F 3 "" H 1900 2350 50  0001 C CNN
	1    1900 2350
	0    1    1    0   
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5FAABAD1
P 950 4300
F 0 "#PWR?" H 950 4150 50  0001 C CNN
F 1 "+BATT" H 965 4473 50  0000 C CNN
F 2 "" H 950 4300 50  0001 C CNN
F 3 "" H 950 4300 50  0001 C CNN
	1    950  4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5FAAC5A4
P 950 4600
F 0 "R5" H 1020 4646 50  0000 L CNN
F 1 "47KΩ" H 1020 4555 50  0000 L CNN
F 2 "" V 880 4600 50  0001 C CNN
F 3 "~" H 950 4600 50  0001 C CNN
	1    950  4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4300 950  4450
$Comp
L Device:R R6
U 1 1 5FAB045A
P 950 5100
F 0 "R6" H 1020 5146 50  0000 L CNN
F 1 "10KΩ" H 1020 5055 50  0000 L CNN
F 2 "" V 880 5100 50  0001 C CNN
F 3 "~" H 950 5100 50  0001 C CNN
	1    950  5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4750 950  4850
$Comp
L power:GND #PWR?
U 1 1 5FAB4525
P 950 5250
F 0 "#PWR?" H 950 5000 50  0001 C CNN
F 1 "GND" H 955 5077 50  0000 C CNN
F 2 "" H 950 5250 50  0001 C CNN
F 3 "" H 950 5250 50  0001 C CNN
	1    950  5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4850 1500 4850
Connection ~ 950  4850
Wire Wire Line
	950  4850 950  4950
$Comp
L power:GND #PWR?
U 1 1 5FABAF7D
P 1500 4350
F 0 "#PWR?" H 1500 4100 50  0001 C CNN
F 1 "GND" H 1505 4177 50  0000 C CNN
F 2 "" H 1500 4350 50  0001 C CNN
F 3 "" H 1500 4350 50  0001 C CNN
	1    1500 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 4850 1500 5200
$Comp
L Device:CP C1
U 1 1 5FABDFD2
P 9250 2600
F 0 "C1" H 9368 2646 50  0000 L CNN
F 1 "0.47μF 50V" H 9368 2555 50  0000 L CNN
F 2 "" H 9288 2450 50  0001 C CNN
F 3 "~" H 9250 2600 50  0001 C CNN
	1    9250 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5FAC0E37
P 10650 2600
F 0 "C2" H 10768 2646 50  0000 L CNN
F 1 "0.1μF" H 10768 2555 50  0000 L CNN
F 2 "" H 10688 2450 50  0001 C CNN
F 3 "~" H 10650 2600 50  0001 C CNN
	1    10650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2050 9250 2450
Wire Wire Line
	9250 2750 9250 2850
$Comp
L Device:CP C3
U 1 1 5FAC66C5
P 4150 1200
F 0 "C3" H 4032 1154 50  0000 R CNN
F 1 "560pF 50V" H 4032 1245 50  0000 R CNN
F 2 "" H 4188 1050 50  0001 C CNN
F 3 "~" H 4150 1200 50  0001 C CNN
	1    4150 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	10650 2050 10650 2450
Wire Wire Line
	10650 2750 10650 2850
Wire Wire Line
	4150 800  4150 1050
Wire Wire Line
	4150 1350 4150 1600
Wire Wire Line
	3400 800  3400 1050
$Comp
L Device:CP C4
U 1 1 5FAD4722
P 4150 3100
F 0 "C4" H 4268 3146 50  0000 L CNN
F 1 "560pF 50V" H 4268 3055 50  0000 L CNN
F 2 "" H 4188 2950 50  0001 C CNN
F 3 "~" H 4150 3100 50  0001 C CNN
	1    4150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2700 4150 2950
Wire Wire Line
	4150 3250 4150 3500
Wire Wire Line
	3400 1350 3400 1750
$Comp
L Device:CP C5
U 1 1 5FACF856
P 3400 1200
F 0 "C5" H 3282 1154 50  0000 R CNN
F 1 "0.1μF" H 3282 1245 50  0000 R CNN
F 2 "" H 3438 1050 50  0001 C CNN
F 3 "~" H 3400 1200 50  0001 C CNN
	1    3400 1200
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C6
U 1 1 5FADBE8A
P 1500 4600
F 0 "C6" H 1250 4550 50  0000 L CNN
F 1 "0.1μF" H 1150 4650 50  0000 L CNN
F 2 "" H 1538 4450 50  0001 C CNN
F 3 "~" H 1500 4600 50  0001 C CNN
	1    1500 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 4850 1500 4750
Connection ~ 1500 4850
Wire Wire Line
	1500 4450 1500 4350
Text Label 950  4450 1    50   ~ 0
Vbatt
$Comp
L Device:Crystal Y1
U 1 1 5FAE412E
P 950 6100
F 0 "Y1" H 900 5750 50  0000 L CNN
F 1 "4.00MHz" H 800 5850 50  0000 L CNN
F 2 "" H 950 6100 50  0001 C CNN
F 3 "~" H 950 6100 50  0001 C CNN
	1    950  6100
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C8
U 1 1 5FAEA16C
P 1200 6400
F 0 "C8" H 1318 6446 50  0000 L CNN
F 1 "27pF" H 1318 6355 50  0000 L CNN
F 2 "" H 1238 6250 50  0001 C CNN
F 3 "~" H 1200 6400 50  0001 C CNN
	1    1200 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  6100 800  6100
Wire Wire Line
	1100 6100 1200 6100
$Comp
L Device:CP C7
U 1 1 5FB08D50
P 650 6400
F 0 "C7" H 768 6446 50  0000 L CNN
F 1 "27pF" H 768 6355 50  0000 L CNN
F 2 "" H 688 6250 50  0001 C CNN
F 3 "~" H 650 6400 50  0001 C CNN
	1    650  6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  6100 650  6250
Connection ~ 650  6100
Wire Wire Line
	1200 6100 1200 6250
Connection ~ 1200 6100
NoConn ~ 1900 6400
NoConn ~ 3600 6300
$Comp
L power:+5V #PWR?
U 1 1 5FB1D0BF
P 3600 6400
F 0 "#PWR?" H 3600 6250 50  0001 C CNN
F 1 "+5V" V 3615 6528 50  0000 L CNN
F 2 "" H 3600 6400 50  0001 C CNN
F 3 "" H 3600 6400 50  0001 C CNN
	1    3600 6400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB1D8AA
P 3600 6000
F 0 "#PWR?" H 3600 5750 50  0001 C CNN
F 1 "GND" V 3600 5850 50  0000 R CNN
F 2 "" H 3600 6000 50  0001 C CNN
F 3 "" H 3600 6000 50  0001 C CNN
	1    3600 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FB1E732
P 3600 5900
F 0 "#PWR?" H 3600 5750 50  0001 C CNN
F 1 "+5V" V 3600 6050 50  0000 L CNN
F 2 "" H 3600 5900 50  0001 C CNN
F 3 "" H 3600 5900 50  0001 C CNN
	1    3600 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 5050 4700 5050
Wire Wire Line
	4550 4700 4700 4700
Wire Wire Line
	4550 4350 4700 4350
$Comp
L Device:LED D6
U 1 1 5FB31F97
P 4850 5400
F 0 "D6" H 4900 5600 50  0000 R CNN
F 1 "Yellow LED" H 5200 5500 50  0000 R CNN
F 2 "" H 4850 5400 50  0001 C CNN
F 3 "~" H 4850 5400 50  0001 C CNN
	1    4850 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5FB3073F
P 4850 5050
F 0 "D5" H 4900 5250 50  0000 R CNN
F 1 "Yellow LED" H 5200 5150 50  0000 R CNN
F 2 "" H 4850 5050 50  0001 C CNN
F 3 "~" H 4850 5050 50  0001 C CNN
	1    4850 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5FB2F00A
P 4850 4700
F 0 "D4" H 4900 4900 50  0000 R CNN
F 1 "Yellow LED" H 5200 4800 50  0000 R CNN
F 2 "" H 4850 4700 50  0001 C CNN
F 3 "~" H 4850 4700 50  0001 C CNN
	1    4850 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5FB2A68F
P 4400 4350
F 0 "R7" V 4193 4350 50  0000 C CNN
F 1 "470Ω" V 4284 4350 50  0000 C CNN
F 2 "" V 4330 4350 50  0001 C CNN
F 3 "~" H 4400 4350 50  0001 C CNN
	1    4400 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5FB29267
P 4400 4700
F 0 "R8" V 4193 4700 50  0000 C CNN
F 1 "470Ω" V 4284 4700 50  0000 C CNN
F 2 "" V 4330 4700 50  0001 C CNN
F 3 "~" H 4400 4700 50  0001 C CNN
	1    4400 4700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5FB238FE
P 4850 4350
F 0 "D3" H 4900 4550 50  0000 R CNN
F 1 "Yellow LED" H 5200 4450 50  0000 R CNN
F 2 "" H 4850 4350 50  0001 C CNN
F 3 "~" H 4850 4350 50  0001 C CNN
	1    4850 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5FB27F08
P 4400 5050
F 0 "R9" V 4193 5050 50  0000 C CNN
F 1 "470Ω" V 4284 5050 50  0000 C CNN
F 2 "" V 4330 5050 50  0001 C CNN
F 3 "~" H 4400 5050 50  0001 C CNN
	1    4400 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 5050 4250 5050
Wire Wire Line
	4050 4700 4250 4700
Wire Wire Line
	3950 4350 4250 4350
$Comp
L power:+5V #PWR?
U 1 1 5FB8077C
P 5350 4150
F 0 "#PWR?" H 5350 4000 50  0001 C CNN
F 1 "+5V" H 5365 4323 50  0000 C CNN
F 2 "" H 5350 4150 50  0001 C CNN
F 3 "" H 5350 4150 50  0001 C CNN
	1    5350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4150 5350 4350
Wire Wire Line
	5350 5400 5000 5400
Wire Wire Line
	5000 5050 5350 5050
Connection ~ 5350 5050
Wire Wire Line
	5350 5050 5350 5400
Wire Wire Line
	5000 4700 5350 4700
Connection ~ 5350 4700
Wire Wire Line
	5350 4700 5350 5050
Wire Wire Line
	5000 4350 5350 4350
Connection ~ 5350 4350
Wire Wire Line
	5350 4350 5350 4700
$Comp
L Device:R R11
U 1 1 5FB8A37A
P 7700 2750
F 0 "R11" H 7770 2796 50  0000 L CNN
F 1 "510Ω" H 7770 2705 50  0000 L CNN
F 2 "" V 7630 2750 50  0001 C CNN
F 3 "~" H 7700 2750 50  0001 C CNN
	1    7700 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2450 7700 2600
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5FB8DC6E
P 6400 3200
F 0 "Q1" H 6590 3246 50  0000 L CNN
F 1 "2N3904" H 6590 3155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6600 3125 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 6400 3200 50  0001 L CNN
	1    6400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3000 6500 3000
Wire Wire Line
	7700 2900 7700 3000
Wire Wire Line
	7700 3000 6500 3000
Connection ~ 6500 3000
Wire Wire Line
	5750 2350 5750 3000
$Comp
L power:GND #PWR?
U 1 1 5FB95822
P 6500 3400
F 0 "#PWR?" H 6500 3150 50  0001 C CNN
F 1 "GND" H 6505 3227 50  0000 C CNN
F 2 "" H 6500 3400 50  0001 C CNN
F 3 "" H 6500 3400 50  0001 C CNN
	1    6500 3400
	1    0    0    -1  
$EndComp
NoConn ~ 3600 5700
$Comp
L Device:R R12
U 1 1 5FB98A09
P 6200 3900
F 0 "R12" H 6270 3946 50  0000 L CNN
F 1 "2.2KΩ" H 6270 3855 50  0000 L CNN
F 2 "" V 6130 3900 50  0001 C CNN
F 3 "~" H 6200 3900 50  0001 C CNN
	1    6200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3200 6200 3750
$Comp
L Device:R R13
U 1 1 5FB9FF8E
P 5750 3300
F 0 "R13" H 5820 3346 50  0000 L CNN
F 1 "47KΩ" H 5820 3255 50  0000 L CNN
F 2 "" V 5680 3300 50  0001 C CNN
F 3 "~" H 5750 3300 50  0001 C CNN
	1    5750 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5FBA19F1
P 5750 3800
F 0 "R14" H 5820 3846 50  0000 L CNN
F 1 "33KΩ" H 5820 3755 50  0000 L CNN
F 2 "" V 5680 3800 50  0001 C CNN
F 3 "~" H 5750 3800 50  0001 C CNN
	1    5750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3000 5750 3150
Connection ~ 5750 3000
Wire Wire Line
	5750 3450 5750 3550
Wire Wire Line
	5750 3550 5550 3550
Wire Wire Line
	5550 3550 5550 7000
Wire Wire Line
	5550 7000 1550 7000
Connection ~ 5750 3550
Wire Wire Line
	5750 3550 5750 3650
$Comp
L power:GND #PWR?
U 1 1 5FBAF5AE
P 5750 4100
F 0 "#PWR?" H 5750 3850 50  0001 C CNN
F 1 "GND" H 5755 3927 50  0000 C CNN
F 2 "" H 5750 4100 50  0001 C CNN
F 3 "" H 5750 4100 50  0001 C CNN
	1    5750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3950 5750 4100
Wire Wire Line
	4550 5400 4700 5400
Wire Wire Line
	3950 5100 3950 4350
Wire Wire Line
	4050 5200 4050 4700
Wire Wire Line
	4150 5300 4150 5050
$Comp
L Device:R R10
U 1 1 5FB25F72
P 4400 5400
F 0 "R10" V 4193 5400 50  0000 C CNN
F 1 "470Ω" V 4284 5400 50  0000 C CNN
F 2 "" V 4330 5400 50  0001 C CNN
F 3 "~" H 4400 5400 50  0001 C CNN
	1    4400 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 5600 3700 4000
Wire Wire Line
	6200 4050 6200 5800
Wire Wire Line
	1550 7000 1550 6200
Wire Wire Line
	1200 6100 1200 6000
$Comp
L power:GND #PWR?
U 1 1 5FAA9EB2
P 1900 5800
F 0 "#PWR?" H 1900 5550 50  0001 C CNN
F 1 "GND" V 1905 5672 50  0000 R CNN
F 2 "" H 1900 5800 50  0001 C CNN
F 3 "" H 1900 5800 50  0001 C CNN
	1    1900 5800
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FAA9553
P 1900 5700
F 0 "#PWR?" H 1900 5550 50  0001 C CNN
F 1 "+5V" V 1915 5828 50  0000 L CNN
F 2 "" H 1900 5700 50  0001 C CNN
F 3 "" H 1900 5700 50  0001 C CNN
	1    1900 5700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FAA8304
P 1900 5600
F 0 "#PWR?" H 1900 5450 50  0001 C CNN
F 1 "+5V" V 1915 5728 50  0000 L CNN
F 2 "" H 1900 5600 50  0001 C CNN
F 3 "" H 1900 5600 50  0001 C CNN
	1    1900 5600
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FAA770A
P 1900 5500
F 0 "#PWR?" H 1900 5350 50  0001 C CNN
F 1 "+5V" V 1915 5628 50  0000 L CNN
F 2 "" H 1900 5500 50  0001 C CNN
F 3 "" H 1900 5500 50  0001 C CNN
	1    1900 5500
	0    -1   -1   0   
$EndComp
NoConn ~ 1900 5400
NoConn ~ 1900 5300
Wire Wire Line
	1500 5200 1900 5200
$Comp
L power:+5V #PWR?
U 1 1 5FAA6B31
P 1900 5100
F 0 "#PWR?" H 1900 4950 50  0001 C CNN
F 1 "+5V" V 1915 5228 50  0000 L CNN
F 2 "" H 1900 5100 50  0001 C CNN
F 3 "" H 1900 5100 50  0001 C CNN
	1    1900 5100
	0    -1   -1   0   
$EndComp
$Comp
L Senior_Project:ELM327 U1
U 1 1 5FA0220F
P 2750 4900
F 0 "U1" H 2750 4965 50  0000 C CNN
F 1 "ELM327" H 2750 4874 50  0000 C CNN
F 2 "" H 2750 5000 50  0001 C CNN
F 3 "" H 2750 5000 50  0001 C CNN
	1    2750 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  5900 650  6100
Wire Wire Line
	1550 6200 1900 6200
Wire Wire Line
	6200 5800 3600 5800
Wire Wire Line
	3700 5600 3600 5600
Wire Wire Line
	3600 5500 3800 5500
Wire Wire Line
	3800 5500 3800 3900
Wire Wire Line
	1550 3900 3800 3900
Wire Wire Line
	3600 5400 4250 5400
Wire Wire Line
	3600 5300 4150 5300
Wire Wire Line
	3600 5200 4050 5200
Wire Wire Line
	3600 5100 3950 5100
NoConn ~ 6000 2050
NoConn ~ 6000 1950
$Comp
L power:GND #PWR?
U 1 1 5FBFF9D9
P 6000 2150
F 0 "#PWR?" H 6000 1900 50  0001 C CNN
F 1 "GND" V 6005 2022 50  0000 R CNN
F 2 "" H 6000 2150 50  0001 C CNN
F 3 "" H 6000 2150 50  0001 C CNN
	1    6000 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 2250 6000 2250
Wire Wire Line
	5750 2350 6000 2350
Wire Wire Line
	7300 2250 7000 2250
Wire Wire Line
	7000 2450 7700 2450
$Comp
L Senior_Project:ESP32-DevKitC-32D U4
U 1 1 5FC136AC
P 9850 3850
F 0 "U4" H 9850 3915 50  0000 C CNN
F 1 "ESP32-DevKitC-32D" H 9850 3824 50  0000 C CNN
F 2 "" H 9850 3850 50  0001 C CNN
F 3 "" H 9850 3850 50  0001 C CNN
	1    9850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2050 9250 2050
$Comp
L pspice:DIODE D1
U 1 1 5F9D40C6
P 8650 2050
F 0 "D1" H 8650 2315 50  0000 C CNN
F 1 "1N4001" H 8650 2224 50  0000 C CNN
F 2 "" H 8650 2050 50  0001 C CNN
F 3 "~" H 8650 2050 50  0001 C CNN
	1    8650 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5FA0B396
P 7700 2450
F 0 "#PWR?" H 7700 2300 50  0001 C CNN
F 1 "+BATT" V 7700 2700 50  0000 C CNN
F 2 "" H 7700 2450 50  0001 C CNN
F 3 "" H 7700 2450 50  0001 C CNN
	1    7700 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 2050 8450 2050
Wire Wire Line
	7700 2050 7700 2450
$Comp
L power:GND #PWR?
U 1 1 5FC401B1
P 650 6550
F 0 "#PWR?" H 650 6300 50  0001 C CNN
F 1 "GND" H 655 6377 50  0000 C CNN
F 2 "" H 650 6550 50  0001 C CNN
F 3 "" H 650 6550 50  0001 C CNN
	1    650  6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FC40B96
P 1200 6550
F 0 "#PWR?" H 1200 6300 50  0001 C CNN
F 1 "GND" H 1205 6377 50  0000 C CNN
F 2 "" H 1200 6550 50  0001 C CNN
F 3 "" H 1200 6550 50  0001 C CNN
	1    1200 6550
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXB0102DCU U5
U 1 1 5FAD3C7C
P 7250 5400
F 0 "U5" H 7250 4719 50  0000 C CNN
F 1 "TXB0102DCU" H 7250 4810 50  0000 C CNN
F 2 "Package_SO:VSSOP-8_2.4x2.1mm_P0.5mm" H 7250 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0102.pdf" H 7250 5370 50  0001 C CNN
	1    7250 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 6100 6500 6100
Wire Wire Line
	6500 6100 6500 5500
Wire Wire Line
	6500 5500 6850 5500
Wire Wire Line
	6600 6200 6600 5300
Wire Wire Line
	6600 5300 6850 5300
Wire Wire Line
	3600 6200 6600 6200
$Comp
L power:+5V #PWR?
U 1 1 5FAEA7A2
P 7150 5900
F 0 "#PWR?" H 7150 5750 50  0001 C CNN
F 1 "+5V" H 7300 6050 50  0000 C CNN
F 2 "" H 7150 5900 50  0001 C CNN
F 3 "" H 7150 5900 50  0001 C CNN
	1    7150 5900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FAECD83
P 7250 4900
F 0 "#PWR?" H 7250 4650 50  0001 C CNN
F 1 "GND" V 7200 4800 50  0000 R CNN
F 2 "" H 7250 4900 50  0001 C CNN
F 3 "" H 7250 4900 50  0001 C CNN
	1    7250 4900
	0    -1   -1   0   
$EndComp
Text Label 5800 6100 0    50   ~ 0
RS232_Rx
Text Label 6200 6200 0    50   ~ 0
RS232_Tx
Wire Wire Line
	7650 5300 8500 5300
Wire Wire Line
	8500 5300 8500 5550
Wire Wire Line
	8500 5550 9250 5550
Wire Wire Line
	7650 5500 8400 5500
Wire Wire Line
	8400 5500 8400 5650
Wire Wire Line
	8400 5650 9250 5650
Text Label 8800 5550 0    50   ~ 0
U1RX
Text Label 8550 5650 0    50   ~ 0
U1TX
$Comp
L power:+5V #PWR?
U 1 1 5FB01C09
P 9250 5850
F 0 "#PWR?" H 9250 5700 50  0001 C CNN
F 1 "+5V" V 9265 5978 50  0000 L CNN
F 2 "" H 9250 5850 50  0001 C CNN
F 3 "" H 9250 5850 50  0001 C CNN
	1    9250 5850
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FB07124
P 7500 3850
F 0 "#PWR?" H 7500 3700 50  0001 C CNN
F 1 "+5V" V 7515 3978 50  0000 L CNN
F 2 "" H 7500 3850 50  0001 C CNN
F 3 "" H 7500 3850 50  0001 C CNN
	1    7500 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB07714
P 7850 4200
F 0 "#PWR?" H 7850 3950 50  0001 C CNN
F 1 "GND" H 7855 4027 50  0000 C CNN
F 2 "" H 7850 4200 50  0001 C CNN
F 3 "" H 7850 4200 50  0001 C CNN
	1    7850 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5100 7650 5100
Wire Wire Line
	8200 5100 8200 5900
Wire Wire Line
	8200 5900 7350 5900
Text Label 7650 5900 0    50   ~ 0
3.3V
Text Label 7750 5100 0    50   ~ 0
3.3V
$Comp
L Senior_Project:MIC5200-3.3YS U6
U 1 1 5FB04CA0
P 7850 3700
F 0 "U6" H 7850 3815 50  0000 C CNN
F 1 "MIC5200-3.3YS" H 7850 3724 50  0000 C CNN
F 2 "" H 7850 3700 50  0001 C CNN
F 3 "" H 7850 3700 50  0001 C CNN
	1    7850 3700
	1    0    0    -1  
$EndComp
Text Label 8500 3850 0    50   ~ 0
3.3V
$Comp
L Device:CP C9
U 1 1 5FB29896
P 8350 4000
F 0 "C9" H 8468 4046 50  0000 L CNN
F 1 "1μF" H 8468 3955 50  0000 L CNN
F 2 "" H 8388 3850 50  0001 C CNN
F 3 "~" H 8350 4000 50  0001 C CNN
	1    8350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3850 8350 3850
Wire Wire Line
	8350 3850 8700 3850
Wire Wire Line
	8700 3850 8700 5100
Wire Wire Line
	8700 5100 8200 5100
Connection ~ 8350 3850
Connection ~ 8200 5100
$Comp
L power:GND #PWR?
U 1 1 5FB3296B
P 8350 4150
F 0 "#PWR?" H 8350 3900 50  0001 C CNN
F 1 "GND" H 8355 3977 50  0000 C CNN
F 2 "" H 8350 4150 50  0001 C CNN
F 3 "" H 8350 4150 50  0001 C CNN
	1    8350 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB33F7B
P 10450 4050
F 0 "#PWR?" H 10450 3800 50  0001 C CNN
F 1 "GND" V 10455 3922 50  0000 R CNN
F 2 "" H 10450 4050 50  0001 C CNN
F 3 "" H 10450 4050 50  0001 C CNN
	1    10450 4050
	0    -1   -1   0   
$EndComp
NoConn ~ 9250 4050
NoConn ~ 9250 4150
NoConn ~ 9250 4250
NoConn ~ 9250 4350
NoConn ~ 9250 4450
NoConn ~ 9250 4550
NoConn ~ 9250 4650
NoConn ~ 9250 4750
NoConn ~ 9250 4850
NoConn ~ 9250 4950
NoConn ~ 9250 5050
NoConn ~ 9250 5150
NoConn ~ 9250 5250
NoConn ~ 9250 5350
NoConn ~ 9250 5450
NoConn ~ 9250 5750
NoConn ~ 10450 4150
NoConn ~ 10450 4250
NoConn ~ 10450 4350
NoConn ~ 10450 4450
NoConn ~ 10450 4550
NoConn ~ 10450 4650
NoConn ~ 10450 4750
NoConn ~ 10450 4850
NoConn ~ 10450 4950
NoConn ~ 10450 5050
NoConn ~ 10450 5150
NoConn ~ 10450 5250
NoConn ~ 10450 5350
NoConn ~ 10450 5450
NoConn ~ 10450 5550
NoConn ~ 10450 5650
NoConn ~ 10450 5750
NoConn ~ 10450 5850
$Comp
L power:+3.3V #PWR?
U 1 1 5FBAF167
P 8350 3850
F 0 "#PWR?" H 8350 3700 50  0001 C CNN
F 1 "+3.3V" H 8365 4023 50  0000 C CNN
F 2 "" H 8350 3850 50  0001 C CNN
F 3 "" H 8350 3850 50  0001 C CNN
	1    8350 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FBB46DD
P 1900 6100
F 0 "#PWR?" H 1900 5950 50  0001 C CNN
F 1 "+5V" V 1915 6228 50  0000 L CNN
F 2 "" H 1900 6100 50  0001 C CNN
F 3 "" H 1900 6100 50  0001 C CNN
	1    1900 6100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FBB92C2
P 1900 6300
F 0 "#PWR?" H 1900 6050 50  0001 C CNN
F 1 "GND" V 1905 6172 50  0000 R CNN
F 2 "" H 1900 6300 50  0001 C CNN
F 3 "" H 1900 6300 50  0001 C CNN
	1    1900 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	650  5900 1900 5900
Wire Wire Line
	1200 6000 1900 6000
$EndSCHEMATC