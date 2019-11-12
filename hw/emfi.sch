EESchema Schematic File Version 4
LIBS:emfi-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "Electromagnetic Fault Injector"
Date "2019-10-29"
Rev "0.1"
Comp "Ledger"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_B_Micro J1
U 1 1 5B7B1F86
P 1700 4000
F 0 "J1" H 1755 4467 50  0000 C CNN
F 1 "USB_B_Micro" H 1755 4376 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_629105150521" H 1850 3950 50  0001 C CNN
F 3 "~" H 1850 3950 50  0001 C CNN
F 4 "Wurth Electronik" H 950 -1000 50  0001 C CNN "Manufacturer"
F 5 "629105150521" H 950 -1000 50  0001 C CNN "ManufacturerRef"
F 6 "1.70" H 950 -1000 50  0001 C CNN "Price"
F 7 "Farnell" H 950 -1000 50  0001 C CNN "Vendor"
F 8 "2470822" H 950 -1000 50  0001 C CNN "VendorRef"
	1    1700 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5B7B235F
P 2400 2600
F 0 "#PWR02" H 2400 2450 50  0001 C CNN
F 1 "+5V" H 2415 2773 50  0000 C CNN
F 2 "" H 2400 2600 50  0001 C CNN
F 3 "" H 2400 2600 50  0001 C CNN
	1    2400 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small L1
U 1 1 5B7B5D98
P 2400 3400
F 0 "L1" H 2300 3400 50  0000 R CNN
F 1 "Ferrite_Bead_Small" H 2300 3445 50  0001 R CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 2330 3400 50  0001 C CNN
F 3 "~" H 2400 3400 50  0001 C CNN
F 4 "" H 2400 3400 50  0001 C CNN "Farnell"
F 5 "Farnell" H 450 -1050 50  0001 C CNN "Vendor"
F 6 "1515746" H 450 -1050 50  0001 C CNN "VendorRef"
F 7 "Murata" H 450 -1050 50  0001 C CNN "Manufacturer"
F 8 "BLM18PG600SN1D" H 450 -1050 50  0001 C CNN "ManufacturerRef"
F 9 "0.0492" H 450 -1050 50  0001 C CNN "Price"
	1    2400 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 3800 2400 3500
Wire Wire Line
	2400 3300 2400 3200
$Comp
L power:GND #PWR01
U 1 1 5B839118
P 1700 4400
F 0 "#PWR01" H 1700 4150 50  0001 C CNN
F 1 "GND" H 1705 4227 50  0000 C CNN
F 2 "" H 1700 4400 50  0001 C CNN
F 3 "" H 1700 4400 50  0001 C CNN
	1    1700 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4400 1600 4400
Connection ~ 1700 4400
NoConn ~ 2000 4200
$Comp
L Device:C_Small C1
U 1 1 5B8E0130
P 2400 4350
F 0 "C1" H 2308 4304 50  0000 R CNN
F 1 "100n" H 2308 4395 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2400 4350 50  0001 C CNN
F 3 "~" H 2400 4350 50  0001 C CNN
F 4 "Multicomp" H 450 -1000 50  0001 C CNN "Manufacturer"
F 5 "Farnell" H 450 -1000 50  0001 C CNN "Vendor"
F 6 "MC0603B104K250CT" H 450 -1000 50  0001 C CNN "ManufacturerRef"
F 7 "1759037" H 450 -1000 50  0001 C CNN "VendorRef"
F 8 "0.0477" H 450 -1000 50  0001 C CNN "Price"
F 9 "25" H 0   0   50  0001 C CNN "Voltage"
	1    2400 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 3800 2400 4250
Connection ~ 2400 3800
$Comp
L power:GND #PWR03
U 1 1 5B8E3360
P 2400 4450
F 0 "#PWR03" H 2400 4200 50  0001 C CNN
F 1 "GND" H 2405 4277 50  0000 C CNN
F 2 "" H 2400 4450 50  0001 C CNN
F 3 "" H 2400 4450 50  0001 C CNN
	1    2400 4450
	1    0    0    -1  
$EndComp
$Comp
L mylib:DUNGEON_LOGO LOGO1
U 1 1 5BAD62A7
P 6100 7300
F 0 "LOGO1" H 6218 7346 50  0000 L CNN
F 1 "DUNGEON_LOGO" H 6218 7255 50  0000 L CNN
F 2 "mykicadlibs:donjon-2000" H 6100 7300 50  0001 C CNN
F 3 "" H 6100 7300 50  0001 C CNN
	1    6100 7300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D0167C6
P 2400 3200
F 0 "#FLG01" H 2400 3275 50  0001 C CNN
F 1 "PWR_FLAG" V 2400 3328 50  0000 L CNN
F 2 "" H 2400 3200 50  0001 C CNN
F 3 "~" H 2400 3200 50  0001 C CNN
	1    2400 3200
	0    -1   -1   0   
$EndComp
Connection ~ 2400 3200
Wire Wire Line
	2000 3800 2400 3800
$Sheet
S 4950 3700 850  600 
U 5D965B6B
F0 "mcu" 50
F1 "mcu.sch" 50
F2 "TX" O L 4950 4100 50 
F3 "RX" I L 4950 4000 50 
F4 "PWM" O R 5800 3800 50 
F5 "ADC" I R 5800 4000 50 
F6 "20V_EN" O L 4950 3800 50 
F7 "SW_SHOOT" O R 5800 4200 50 
$EndSheet
$Sheet
S 3200 3900 750  300 
U 5D954DF1
F0 "ft232" 50
F1 "ft232.sch" 50
F2 "TX" O R 3950 4000 50 
F3 "RX" I R 3950 4100 50 
F4 "USBD+" B L 3200 4000 50 
F5 "USBD-" B L 3200 4100 50 
$EndSheet
Wire Wire Line
	2000 4000 3200 4000
Wire Wire Line
	3200 4100 2000 4100
Wire Wire Line
	4950 4000 3950 4000
Wire Wire Line
	3950 4100 4950 4100
$Sheet
S 3200 2600 750  600 
U 5D9AC0BF
F0 "power" 50
F1 "power.sch" 50
F2 "5V" I L 3200 2700 50 
F3 "3V3A" O R 3950 2700 50 
F4 "3V3" O R 3950 2800 50 
F5 "20V_EN" I R 3950 3100 50 
F6 "15V" O R 3950 2900 50 
$EndSheet
Wire Wire Line
	2400 2600 2400 2700
Wire Wire Line
	3200 2700 2400 2700
Connection ~ 2400 2700
Wire Wire Line
	2400 2700 2400 3200
$Comp
L mylib:+3V3A #PWR?01
U 1 1 5D9B3A46
P 4050 2700
F 0 "#PWR?01" H 4050 2700 50  0001 C CNN
F 1 "+3V3A" V 4050 2850 50  0000 L CNN
F 2 "" H 4050 2700 50  0001 C CNN
F 3 "" H 4050 2700 50  0001 C CNN
	1    4050 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 2700 3950 2700
Wire Wire Line
	4050 2800 3950 2800
Wire Wire Line
	4050 2900 3950 2900
Wire Wire Line
	4950 3800 4600 3800
Wire Wire Line
	4600 3800 4600 3100
$Comp
L power:+3V3 #PWR04
U 1 1 5D9E2D7D
P 4050 2800
F 0 "#PWR04" H 4050 2650 50  0001 C CNN
F 1 "+3V3" V 4050 2950 50  0000 L CNN
F 2 "" H 4050 2800 50  0001 C CNN
F 3 "" H 4050 2800 50  0001 C CNN
	1    4050 2800
	0    1    1    0   
$EndComp
$Sheet
S 8050 3700 1250 600 
U 5D9F87D8
F0 "analog" 50
F1 "analog.sch" 50
F2 "SENSE" O L 8050 4000 50 
F3 "CHARGE_PWM" I L 8050 3800 50 
F4 "ANTENNA_A" U R 9300 3800 50 
F5 "ANTENNA_B" U R 9300 3900 50 
F6 "SHOOT" I L 8050 4200 50 
$EndSheet
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5D9FF407
P 9950 3800
AR Path="/5D9FF407" Ref="J3"  Part="1" 
AR Path="/5D9F87D8/5D9FF407" Ref="J?"  Part="1" 
F 0 "J3" H 10049 3776 50  0000 L CNN
F 1 "Conn_Coaxial" H 10049 3685 50  0001 L CNN
F 2 "mykicadlibs:SAMTEC_SMA_J_P_H_ST_EM3" H 9950 3800 50  0001 C CNN
F 3 " ~" H 9950 3800 50  0001 C CNN
F 4 "Samtec" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "SMA-J-P-H-ST-EM3" H 0   0   50  0001 C CNN "ManufacturerRef"
F 6 "4.57" H 0   0   50  0001 C CNN "Price"
F 7 "Farnell" H 0   0   50  0001 C CNN "Vendor"
F 8 "2856819" H 0   0   50  0001 C CNN "VendorRef"
	1    9950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3800 5800 3800
Wire Wire Line
	5800 4000 8050 4000
Wire Wire Line
	9300 3800 9600 3800
Wire Wire Line
	9950 4000 9700 4000
Wire Wire Line
	9700 4000 9700 3900
Wire Wire Line
	9700 3900 9300 3900
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5DA00FBE
P 5550 5400
AR Path="/5DA00FBE" Ref="J2"  Part="1" 
AR Path="/5D9F87D8/5DA00FBE" Ref="J?"  Part="1" 
F 0 "J2" H 5649 5376 50  0000 L CNN
F 1 "Conn_Coaxial" H 5649 5285 50  0001 L CNN
F 2 "mykicadlibs:SAMTEC_SMA_J_P_H_ST_EM3" H 5550 5400 50  0001 C CNN
F 3 " ~" H 5550 5400 50  0001 C CNN
F 4 "Samtec" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "SMA-J-P-H-ST-EM3" H 0   0   50  0001 C CNN "ManufacturerRef"
F 6 "4.57" H 0   0   50  0001 C CNN "Price"
F 7 "Farnell" H 0   0   50  0001 C CNN "Vendor"
F 8 "2856819" H 0   0   50  0001 C CNN "VendorRef"
	1    5550 5400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5DA01565
P 5550 5800
F 0 "#PWR0101" H 5550 5550 50  0001 C CNN
F 1 "GND" H 5555 5627 50  0000 C CNN
F 2 "" H 5550 5800 50  0001 C CNN
F 3 "" H 5550 5800 50  0001 C CNN
	1    5550 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0102
U 1 1 5DA0986E
P 4050 2900
F 0 "#PWR0102" H 4050 2750 50  0001 C CNN
F 1 "+15V" V 4050 3050 50  0000 L CNN
F 2 "" H 4050 2900 50  0001 C CNN
F 3 "" H 4050 2900 50  0001 C CNN
	1    4050 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 3100 3950 3100
Text Notes 4450 5450 0    50   ~ 0
Positive pulse to shoot
Text Notes 8900 3650 0    50   ~ 0
Injection probe connectors
Text Label 2050 3800 0    50   ~ 0
VBUS
$Comp
L Connector:Conn_Coaxial J6
U 1 1 5DC0820D
P 9950 4200
AR Path="/5DC0820D" Ref="J6"  Part="1" 
AR Path="/5D9F87D8/5DC0820D" Ref="J?"  Part="1" 
F 0 "J6" H 10049 4176 50  0000 L CNN
F 1 "Conn_Coaxial" H 10049 4085 50  0001 L CNN
F 2 "mykicadlibs:SAMTEC_SMA_J_P_H_ST_EM3" H 9950 4200 50  0001 C CNN
F 3 " ~" H 9950 4200 50  0001 C CNN
F 4 "Samtec" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "SMA-J-P-H-ST-EM3" H 0   0   50  0001 C CNN "ManufacturerRef"
F 6 "4.57" H 0   0   50  0001 C CNN "Price"
F 7 "Farnell" H 0   0   50  0001 C CNN "Vendor"
F 8 "2856819" H 0   0   50  0001 C CNN "VendorRef"
	1    9950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 4200 9700 4200
Wire Wire Line
	9700 4200 9700 4000
Connection ~ 9700 4000
Wire Wire Line
	9950 4400 9600 4400
Wire Wire Line
	9600 4400 9600 3800
Connection ~ 9600 3800
Wire Wire Line
	9600 3800 9750 3800
Wire Wire Line
	6000 5400 5750 5400
$Comp
L Device:R_Small R?
U 1 1 5DC11553
P 6000 5600
AR Path="/5D9F87D8/5DC11553" Ref="R?"  Part="1" 
AR Path="/5DC11553" Ref="R7"  Part="1" 
F 0 "R7" H 6059 5646 50  0000 L CNN
F 1 "10k" H 6059 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6000 5600 50  0001 C CNN
F 3 "~" H 6000 5600 50  0001 C CNN
F 4 "TE Connectivity" H 0   0   50  0001 C CNN "Manufacturer"
F 5 "CRGH0603J10K" H 0   0   50  0001 C CNN "ManufacturerRef"
F 6 "0.038" H 0   0   50  0001 C CNN "Price"
F 7 "Farnell" H 0   0   50  0001 C CNN "Vendor"
F 8 "2331740" H 0   0   50  0001 C CNN "VendorRef"
	1    6000 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5DC1155A
P 6000 5800
AR Path="/5DC1155A" Ref="#PWR0110"  Part="1" 
AR Path="/5D9F87D8/5DC1155A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0110" H 6000 5550 50  0001 C CNN
F 1 "GND" H 6005 5627 50  0000 C CNN
F 2 "" H 6000 5800 50  0001 C CNN
F 3 "" H 6000 5800 50  0001 C CNN
	1    6000 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5700 6000 5800
Wire Wire Line
	6000 5400 6000 5500
Wire Wire Line
	6950 5400 6000 5400
Connection ~ 6000 5400
$Comp
L mylib:74LVC1G32 U8
U 1 1 5DC2011A
P 7250 5350
F 0 "U8" H 7225 5714 50  0000 C CNN
F 1 "74LVC1G32" H 7225 5623 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 7250 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 7250 5350 50  0001 C CNN
F 4 "Nexperia" H 7250 5350 50  0001 C CNN "Manufacturer"
F 5 "74LVC1G32GW,125" H 7250 5350 50  0001 C CNN "ManufacturerRef"
F 6 "Farnell" H 7250 5350 50  0001 C CNN "Vendor"
F 7 "1631689" H 7250 5350 50  0001 C CNN "VendorRef"
F 8 "0.151" H 7250 5350 50  0001 C CNN "Price"
	1    7250 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5DC207E1
P 6950 5500
AR Path="/5DC207E1" Ref="#PWR0119"  Part="1" 
AR Path="/5D9F87D8/5DC207E1" Ref="#PWR?"  Part="1" 
F 0 "#PWR0119" H 6950 5250 50  0001 C CNN
F 1 "GND" H 6955 5327 50  0000 C CNN
F 2 "" H 6950 5500 50  0001 C CNN
F 3 "" H 6950 5500 50  0001 C CNN
	1    6950 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C42
U 1 1 5DC2119F
P 6600 4850
F 0 "C42" H 6508 4804 50  0000 R CNN
F 1 "100n" H 6508 4895 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6600 4850 50  0001 C CNN
F 3 "~" H 6600 4850 50  0001 C CNN
F 4 "Multicomp" H 4650 -500 50  0001 C CNN "Manufacturer"
F 5 "Farnell" H 4650 -500 50  0001 C CNN "Vendor"
F 6 "MC0603B104K250CT" H 4650 -500 50  0001 C CNN "ManufacturerRef"
F 7 "1759037" H 4650 -500 50  0001 C CNN "VendorRef"
F 8 "0.0477" H 4650 -500 50  0001 C CNN "Price"
F 9 "25" H 4200 500 50  0001 C CNN "Voltage"
	1    6600 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 5300 6000 4200
Wire Wire Line
	6000 4200 5800 4200
Wire Wire Line
	6000 5300 6950 5300
$Comp
L power:+3V3 #PWR0118
U 1 1 5DC2409E
P 6950 4550
F 0 "#PWR0118" H 6950 4400 50  0001 C CNN
F 1 "+3V3" H 6965 4723 50  0000 C CNN
F 2 "" H 6950 4550 50  0001 C CNN
F 3 "" H 6950 4550 50  0001 C CNN
	1    6950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4550 6950 4650
Wire Wire Line
	7500 5350 7950 5350
Wire Wire Line
	7950 5350 7950 4200
Wire Wire Line
	7950 4200 8050 4200
$Comp
L power:GND #PWR0120
U 1 1 5DC2573C
P 6600 5050
AR Path="/5DC2573C" Ref="#PWR0120"  Part="1" 
AR Path="/5D9F87D8/5DC2573C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0120" H 6600 4800 50  0001 C CNN
F 1 "GND" H 6605 4877 50  0000 C CNN
F 2 "" H 6600 5050 50  0001 C CNN
F 3 "" H 6600 5050 50  0001 C CNN
	1    6600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4650 6950 5200
Connection ~ 6950 4650
Wire Wire Line
	5550 5800 5550 5600
Wire Wire Line
	6600 4950 6600 5050
Wire Wire Line
	6950 4650 6600 4650
Wire Wire Line
	6600 4650 6600 4750
$EndSCHEMATC