EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Eurorack DigiLFO module"
Date "2021-12-05"
Rev "1.0"
Comp "Len Popp"
Comment1 "Copyright © 2021 Len Popp CC BY"
Comment2 "4HP module designed for Delptronics Module Construction Set"
Comment3 "Eurorack microcontroller-based VC-LFO module"
Comment4 "COMPLETED"
$EndDescr
Text Notes 900  800  0    50   ~ 10
Microcontroller
$Comp
L LFO-DigiVC:CC_100N--lmp C6
U 1 1 610DAF89
P 1000 1400
F 0 "C6" H 1115 1446 50  0000 L CNN
F 1 "100N" H 1115 1355 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1038 1250 50  0001 C CNN
F 3 "~" H 975 1250 50  0001 C CNN
F 4 "IC decoupling" H 1025 1200 50  0001 L CNN "Note"
F 5 "TDK" H 1000 1400 50  0001 C CNN "Manufacturer"
F 6 "FG18X7R1H104KNT06" H 1000 1400 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 1000 1400 50  0001 C CNN "Distributor"
F 8 "810-FG18X7R1H104KNT6" H 1000 1400 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 1000 1400 50  0001 C CNN "DistributorPartLink"
	1    1000 1400
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:+5V--lmp-power #PWR09
U 1 1 610DAF8F
P 1000 1150
F 0 "#PWR09" H 1000 1000 50  0001 C CNN
F 1 "+5V" H 1015 1323 50  0000 C CNN
F 2 "" H 1000 1150 50  0001 C CNN
F 3 "" H 1000 1150 50  0001 C CNN
	1    1000 1150
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:GND--lmp-power #PWR010
U 1 1 610DAF95
P 1000 1600
F 0 "#PWR010" H 1000 1350 50  0001 C CNN
F 1 "GND" H 1005 1427 50  0000 C CNN
F 2 "" H 1000 1600 50  0001 C CNN
F 3 "" H 1000 1600 50  0001 C CNN
	1    1000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1200 1000 1150
Wire Wire Line
	1000 1250 1000 1200
Connection ~ 1000 1200
Wire Wire Line
	1000 1600 1000 1550
Wire Wire Line
	1450 1500 1350 1500
Wire Wire Line
	1350 1500 1350 1200
$Comp
L LFO-DigiVC:CC_100N--lmp C?
U 1 1 610DAFA9
P 1000 2200
AR Path="/610DAFA9" Ref="C?"  Part="1" 
AR Path="/610CEC44/610DAFA9" Ref="C7"  Part="1" 
F 0 "C7" H 1115 2246 50  0000 L CNN
F 1 "100N" H 1115 2155 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1038 2050 50  0001 C CNN
F 3 "~" H 975 2050 50  0001 C CNN
F 4 "IC decoupling" H 1025 2000 50  0001 L CNN "Note"
F 5 "TDK" H 1000 2200 50  0001 C CNN "Manufacturer"
F 6 "FG18X7R1H104KNT06" H 1000 2200 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 1000 2200 50  0001 C CNN "Distributor"
F 8 "810-FG18X7R1H104KNT6" H 1000 2200 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 1000 2200 50  0001 C CNN "DistributorPartLink"
	1    1000 2200
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:GND--lmp-power #PWR011
U 1 1 610DAFAF
P 1000 2400
F 0 "#PWR011" H 1000 2150 50  0001 C CNN
F 1 "GND" H 1005 2227 50  0000 C CNN
F 2 "" H 1000 2400 50  0001 C CNN
F 3 "" H 1000 2400 50  0001 C CNN
	1    1000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2050 1000 2000
Wire Wire Line
	1000 2400 1000 2350
Wire Wire Line
	1350 1200 1000 1200
Wire Wire Line
	1450 1200 1350 1200
Connection ~ 1350 1200
$Comp
L LFO-DigiVC:GND--lmp-power #PWR012
U 1 1 610DAFBD
P 1350 3700
F 0 "#PWR012" H 1350 3450 50  0001 C CNN
F 1 "GND" H 1355 3527 50  0000 C CNN
F 2 "" H 1350 3700 50  0001 C CNN
F 3 "" H 1350 3700 50  0001 C CNN
	1    1350 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3500 1350 3500
Wire Wire Line
	1350 3500 1350 3600
Wire Wire Line
	1450 3600 1350 3600
Connection ~ 1350 3600
Wire Wire Line
	1350 3600 1350 3700
$Comp
L LFO-DigiVC:R--lmp R3
U 1 1 610DAFE1
P 5100 2200
F 0 "R3" H 5170 2246 50  0000 L CNN
F 1 "10K" H 5170 2155 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_6" V 5030 2200 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 5100 2200 50  0001 C CNN
F 4 "YAGEO" H 5100 2200 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FRF52-10K" H 5100 2200 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 5100 2200 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FRF5210K" H 5100 2200 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FRF52-10K?qs=sGAEpiMZZMsPqMdJzcrNwl7IR%2FWPk8YP7c4XT%2Fr88hQ%3D" H 5100 2200 50  0001 C CNN "DistributorPartLink"
	1    5100 2200
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:+5V--lmp-power #PWR022
U 1 1 610DAFE7
P 5100 2000
F 0 "#PWR022" H 5100 1850 50  0001 C CNN
F 1 "+5V" H 5115 2173 50  0000 C CNN
F 2 "" H 5100 2000 50  0001 C CNN
F 3 "" H 5100 2000 50  0001 C CNN
	1    5100 2000
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:GND--lmp-power #PWR023
U 1 1 610DAFF8
P 5100 2900
F 0 "#PWR023" H 5100 2650 50  0001 C CNN
F 1 "GND" H 5105 2727 50  0000 C CNN
F 2 "" H 5100 2900 50  0001 C CNN
F 3 "" H 5100 2900 50  0001 C CNN
	1    5100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2900 5100 2850
$Comp
L LFO-DigiVC:Conn_FTDI--lmp J?
U 1 1 610DB006
P 4650 2800
AR Path="/610DB006" Ref="J?"  Part="1" 
AR Path="/610CEC44/610DB006" Ref="J1"  Part="1" 
F 0 "J1" H 4600 3100 50  0000 L CNN
F 1 "FTDI USB-TTL" H 4575 2400 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4650 2800 50  0001 C CNN
F 3 "~" H 4650 2800 50  0001 C CNN
	1    4650 2800
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:CC_100N--lmp C?
U 1 1 610DB012
P 4200 3100
AR Path="/610DB012" Ref="C?"  Part="1" 
AR Path="/610CEC44/610DB012" Ref="C8"  Part="1" 
F 0 "C8" V 4360 3100 50  0000 C CNN
F 1 "100N" V 4451 3100 50  0000 C CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4238 2950 50  0001 C CNN
F 3 "~" H 4175 2950 50  0001 C CNN
F 4 "IC decoupling" H 4225 2900 50  0001 L CNN "Note"
F 5 "TDK" H 4200 3100 50  0001 C CNN "Manufacturer"
F 6 "FG18X7R1H104KNT06" H 4200 3100 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 4200 3100 50  0001 C CNN "Distributor"
F 8 "810-FG18X7R1H104KNT6" H 4200 3100 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 4200 3100 50  0001 C CNN "DistributorPartLink"
	1    4200 3100
	0    1    1    0   
$EndComp
$Comp
L LFO-DigiVC:+5V--lmp-power #PWR?
U 1 1 610DB018
P 4300 2700
AR Path="/610DB018" Ref="#PWR?"  Part="1" 
AR Path="/610CEC44/610DB018" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 4300 2550 50  0001 C CNN
F 1 "+5V" H 4315 2873 50  0000 C CNN
F 2 "" H 4300 2700 50  0001 C CNN
F 3 "" H 4300 2700 50  0001 C CNN
	1    4300 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2600 4400 2600
Wire Wire Line
	4400 2600 4400 2700
Wire Wire Line
	4450 2700 4400 2700
Connection ~ 4400 2700
Wire Wire Line
	4400 2700 4400 3200
Wire Wire Line
	4450 2800 4300 2800
$Comp
L LFO-DigiVC:GND--lmp-power #PWR?
U 1 1 610DB031
P 4400 3200
AR Path="/610DB031" Ref="#PWR?"  Part="1" 
AR Path="/610CEC44/610DB031" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 4400 2950 50  0001 C CNN
F 1 "GND" H 4405 3027 50  0000 C CNN
F 2 "" H 4400 3200 50  0001 C CNN
F 3 "" H 4400 3200 50  0001 C CNN
	1    4400 3200
	1    0    0    -1  
$EndComp
Text Notes 6200 800  0    50   ~ 10
Digital to Analog
$Comp
L Analog_DAC:MCP4822 U3
U 1 1 610E3AA3
P 6650 3200
F 0 "U3" H 6550 3625 50  0000 R CNN
F 1 "MCP4822" H 6550 3550 50  0000 R CNN
F 2 "-lmp-misc:DIP-8_W7.62mm_LongPads" H 7450 2900 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/268/21953a-8929.pdf" H 7450 2900 50  0001 C CNN
F 4 "Microchip" H 6650 3200 50  0001 C CNN "Manufacturer"
F 5 "MCP4822-E/P" H 6650 3200 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 6650 3200 50  0001 C CNN "Distributor"
F 7 "579-MCP4822-E/P" H 6650 3200 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Microchip-Technology/MCP4822-E-P?qs=usxtMOJb1RzHfzfJDNfOOg%3D%3D" H 6650 3200 50  0001 C CNN "DistributorPartLink"
	1    6650 3200
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:GND--lmp-power #PWR028
U 1 1 610E5082
P 7050 2650
F 0 "#PWR028" H 7050 2400 50  0001 C CNN
F 1 "GND" H 7055 2477 50  0000 C CNN
F 2 "" H 7050 2650 50  0001 C CNN
F 3 "" H 7050 2650 50  0001 C CNN
	1    7050 2650
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:+5V--lmp-power #PWR024
U 1 1 610E5EC0
P 6650 2450
F 0 "#PWR024" H 6650 2300 50  0001 C CNN
F 1 "+5V" H 6665 2623 50  0000 C CNN
F 2 "" H 6650 2450 50  0001 C CNN
F 3 "" H 6650 2450 50  0001 C CNN
	1    6650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2600 6700 2600
$Comp
L LFO-DigiVC:CC_100N--lmp C9
U 1 1 610E7BA7
P 6850 2600
F 0 "C9" V 6598 2600 50  0000 C CNN
F 1 "100N" V 6689 2600 50  0000 C CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6888 2450 50  0001 C CNN
F 3 "~" H 6825 2450 50  0001 C CNN
F 4 "IC decoupling" H 6875 2400 50  0001 L CNN "Note"
F 5 "TDK" H 6850 2600 50  0001 C CNN "Manufacturer"
F 6 "FG18X7R1H104KNT06" H 6850 2600 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 6850 2600 50  0001 C CNN "Distributor"
F 8 "810-FG18X7R1H104KNT6" H 6850 2600 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 6850 2600 50  0001 C CNN "DistributorPartLink"
	1    6850 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 2600 7050 2600
Wire Wire Line
	7050 2600 7050 2650
$Comp
L LFO-DigiVC:GND--lmp-power #PWR029
U 1 1 610E91E1
P 7050 4950
F 0 "#PWR029" H 7050 4700 50  0001 C CNN
F 1 "GND" H 7055 4777 50  0000 C CNN
F 2 "" H 7050 4950 50  0001 C CNN
F 3 "" H 7050 4950 50  0001 C CNN
	1    7050 4950
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:+5V--lmp-power #PWR026
U 1 1 610E91E7
P 6650 4750
F 0 "#PWR026" H 6650 4600 50  0001 C CNN
F 1 "+5V" H 6665 4923 50  0000 C CNN
F 2 "" H 6650 4750 50  0001 C CNN
F 3 "" H 6650 4750 50  0001 C CNN
	1    6650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4900 6700 4900
$Comp
L LFO-DigiVC:CC_100N--lmp C10
U 1 1 610E91F7
P 6850 4900
F 0 "C10" V 6598 4900 50  0000 C CNN
F 1 "100N" V 6689 4900 50  0000 C CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6888 4750 50  0001 C CNN
F 3 "~" H 6825 4750 50  0001 C CNN
F 4 "IC decoupling" H 6875 4700 50  0001 L CNN "Note"
F 5 "TDK" H 6850 4900 50  0001 C CNN "Manufacturer"
F 6 "FG18X7R1H104KNT06" H 6850 4900 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 6850 4900 50  0001 C CNN "Distributor"
F 8 "810-FG18X7R1H104KNT6" H 6850 4900 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 6850 4900 50  0001 C CNN "DistributorPartLink"
	1    6850 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 4900 7050 4900
Wire Wire Line
	7050 4900 7050 4950
$Comp
L LFO-DigiVC:GND--lmp-power #PWR025
U 1 1 610EB0DB
P 6650 3750
F 0 "#PWR025" H 6650 3500 50  0001 C CNN
F 1 "GND" H 6655 3577 50  0000 C CNN
F 2 "" H 6650 3750 50  0001 C CNN
F 3 "" H 6650 3750 50  0001 C CNN
	1    6650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3750 6650 3700
$Comp
L LFO-DigiVC:GND--lmp-power #PWR027
U 1 1 610EDE1D
P 6650 6000
F 0 "#PWR027" H 6650 5750 50  0001 C CNN
F 1 "GND" H 6655 5827 50  0000 C CNN
F 2 "" H 6650 6000 50  0001 C CNN
F 3 "" H 6650 6000 50  0001 C CNN
	1    6650 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3100 6150 3100
$Comp
L LFO-DigiVC:TL074--lmp-opamp U5
U 4 1 6110627F
P 8900 3000
F 0 "U5" H 8900 3250 50  0000 C CNN
F 1 "TL074" H 8900 3350 50  0000 C CNN
F 2 "-lmp-misc:DIP-14_W7.62mm_LongPads" H 8850 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8950 3200 50  0001 C CNN
F 4 "Texas Instruments" H 8900 3000 50  0001 C CNN "Manufacturer"
F 5 "TL074BCN" H 8900 3000 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8900 3000 50  0001 C CNN "Distributor"
F 7 "595-TL074BCN" H 8900 3000 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=vxEfx8VrU7BHurOY5iQdiA%3D%3D" H 8900 3000 50  0001 C CNN "DistributorPartLink"
	4    8900 3000
	1    0    0    1   
$EndComp
$Comp
L LFO-DigiVC:R--lmp R13
U 1 1 61106BB2
P 8900 2550
F 0 "R13" V 8693 2550 50  0000 C CNN
F 1 "30K" V 8784 2550 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 8830 2550 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 8900 2550 50  0001 C CNN
F 4 "YAGEO" H 8900 2550 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-30K" H 8900 2550 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8900 2550 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-30K" H 8900 2550 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-30K?qs=oAGoVhmvjhx41C7LP55%2FiQ%3D%3D" H 8900 2550 50  0001 C CNN "DistributorPartLink"
	1    8900 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 2900 8500 2900
Wire Wire Line
	9050 2550 9250 2550
Wire Wire Line
	9250 3000 9200 3000
Wire Wire Line
	8750 2550 8500 2550
Connection ~ 8500 2900
Wire Wire Line
	8500 2900 8450 2900
Text Notes 7700 800  0    50   ~ 10
Output
$Comp
L LFO-DigiVC:R_1K_Output--lmp-synth R16
U 1 1 6111DA63
P 9600 3000
F 0 "R16" V 9303 3000 50  0000 C CNN
F 1 "1K" V 9394 3000 50  0000 C CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9530 3000 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/427/ccf07-1762725.pdf" H 9600 3000 50  0001 C CNN
F 4 "5%, 1/4 W" V 9485 3000 50  0000 C CNN "Value2"
F 5 "Output limiting" V 9525 2925 50  0001 C CNN "Note"
F 6 "Vishay / Dale" H 9600 3000 50  0001 C CNN "Manufacturer"
F 7 "CCF071K00JKE36" H 9600 3000 50  0001 C CNN "ManufacturerPartNum"
F 8 "Mouser" V 9525 3000 50  0001 C CNN "Distributor"
F 9 "71-CCF071K00JKE36" H 9600 3000 50  0001 C CNN "DistributorPartNum"
F 10 "https://www.mouser.ca/ProductDetail/Vishay-Dale/CCF071K00JKE36?qs=sGAEpiMZZMsPqMdJzcrNwqw41JD0NFylHV1MADcQnpo%3D" H 9600 3000 50  0001 C CNN "DistributorPartLink"
	1    9600 3000
	0    1    1    0   
$EndComp
Connection ~ 9250 3000
$Comp
L LFO-DigiVC:TL074--lmp-opamp U5
U 2 1 61128D63
P 8900 4200
F 0 "U5" H 8900 4450 50  0000 C CNN
F 1 "TL074" H 8900 4550 50  0000 C CNN
F 2 "-lmp-misc:DIP-14_W7.62mm_LongPads" H 8850 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8950 4400 50  0001 C CNN
F 4 "Texas Instruments" H 8900 4200 50  0001 C CNN "Manufacturer"
F 5 "TL074BCN" H 8900 4200 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8900 4200 50  0001 C CNN "Distributor"
F 7 "595-TL074BCN" H 8900 4200 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=vxEfx8VrU7BHurOY5iQdiA%3D%3D" H 8900 4200 50  0001 C CNN "DistributorPartLink"
	2    8900 4200
	1    0    0    1   
$EndComp
$Comp
L LFO-DigiVC:R--lmp R14
U 1 1 61128D69
P 8900 3750
F 0 "R14" V 8693 3750 50  0000 C CNN
F 1 "30K" V 8784 3750 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 8830 3750 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 8900 3750 50  0001 C CNN
F 4 "YAGEO" H 8900 3750 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-30K" H 8900 3750 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8900 3750 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-30K" H 8900 3750 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-30K?qs=oAGoVhmvjhx41C7LP55%2FiQ%3D%3D" H 8900 3750 50  0001 C CNN "DistributorPartLink"
	1    8900 3750
	0    1    1    0   
$EndComp
$Comp
L LFO-DigiVC:R--lmp R6
U 1 1 61128D75
P 8300 4100
F 0 "R6" V 8093 4100 50  0000 C CNN
F 1 "20K" V 8184 4100 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_4" V 8230 4100 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 8300 4100 50  0001 C CNN
F 4 "YAGEO" H 8300 4100 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-20K" H 8300 4100 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8300 4100 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-20K" H 8300 4100 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-20K?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWL3Dli7pqtTkM%3D" H 8300 4100 50  0001 C CNN "DistributorPartLink"
	1    8300 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 4100 8500 4100
Wire Wire Line
	9050 3750 9250 3750
Wire Wire Line
	8750 3750 8500 3750
Connection ~ 8500 4100
Wire Wire Line
	8500 4100 8450 4100
$Comp
L LFO-DigiVC:R_1K_Output--lmp-synth R17
U 1 1 61128DA3
P 9600 4200
F 0 "R17" V 9303 4200 50  0000 C CNN
F 1 "1K" V 9394 4200 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 9530 4200 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/427/ccf07-1762725.pdf" H 9600 4200 50  0001 C CNN
F 4 "5%, 1/4 W" V 9485 4200 50  0000 C CNN "Value2"
F 5 "Output limiting" V 9525 4125 50  0001 C CNN "Note"
F 6 "Vishay / Dale" H 9600 4200 50  0001 C CNN "Manufacturer"
F 7 "CCF071K00JKE36" H 9600 4200 50  0001 C CNN "ManufacturerPartNum"
F 8 "Mouser" V 9525 4200 50  0001 C CNN "Distributor"
F 9 "71-CCF071K00JKE36" H 9600 4200 50  0001 C CNN "DistributorPartNum"
F 10 "https://www.mouser.ca/ProductDetail/Vishay-Dale/CCF071K00JKE36?qs=sGAEpiMZZMsPqMdJzcrNwqw41JD0NFylHV1MADcQnpo%3D" H 9600 4200 50  0001 C CNN "DistributorPartLink"
	1    9600 4200
	0    1    1    0   
$EndComp
$Comp
L LFO-DigiVC:TL074--lmp-opamp U5
U 3 1 611301F1
P 8900 5400
F 0 "U5" H 8900 5650 50  0000 C CNN
F 1 "TL074" H 8900 5750 50  0000 C CNN
F 2 "-lmp-misc:DIP-14_W7.62mm_LongPads" H 8850 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8950 5600 50  0001 C CNN
F 4 "Texas Instruments" H 8900 5400 50  0001 C CNN "Manufacturer"
F 5 "TL074BCN" H 8900 5400 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8900 5400 50  0001 C CNN "Distributor"
F 7 "595-TL074BCN" H 8900 5400 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=vxEfx8VrU7BHurOY5iQdiA%3D%3D" H 8900 5400 50  0001 C CNN "DistributorPartLink"
	3    8900 5400
	1    0    0    1   
$EndComp
$Comp
L LFO-DigiVC:R--lmp R15
U 1 1 611301F7
P 8900 4950
F 0 "R15" V 8693 4950 50  0000 C CNN
F 1 "30K" V 8784 4950 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 8830 4950 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 8900 4950 50  0001 C CNN
F 4 "YAGEO" H 8900 4950 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-30K" H 8900 4950 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8900 4950 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-30K" H 8900 4950 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-30K?qs=oAGoVhmvjhx41C7LP55%2FiQ%3D%3D" H 8900 4950 50  0001 C CNN "DistributorPartLink"
	1    8900 4950
	0    1    1    0   
$EndComp
$Comp
L LFO-DigiVC:R--lmp R8
U 1 1 61130203
P 8300 5300
F 0 "R8" V 8093 5300 50  0000 C CNN
F 1 "20K" V 8184 5300 50  0000 C CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8230 5300 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 8300 5300 50  0001 C CNN
F 4 "YAGEO" H 8300 5300 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-20K" H 8300 5300 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8300 5300 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-20K" H 8300 5300 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-20K?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWL3Dli7pqtTkM%3D" H 8300 5300 50  0001 C CNN "DistributorPartLink"
	1    8300 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 5300 8500 5300
Wire Wire Line
	9050 4950 9250 4950
Wire Wire Line
	9250 5400 9200 5400
Wire Wire Line
	8750 4950 8500 4950
Connection ~ 8500 5300
Wire Wire Line
	8500 5300 8450 5300
$Comp
L LFO-DigiVC:R_1K_Output--lmp-synth R18
U 1 1 61130231
P 9600 5400
F 0 "R18" V 9303 5400 50  0000 C CNN
F 1 "1K" V 9394 5400 50  0000 C CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9530 5400 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/427/ccf07-1762725.pdf" H 9600 5400 50  0001 C CNN
F 4 "5%, 1/4 W" V 9485 5400 50  0000 C CNN "Value2"
F 5 "Output limiting" V 9525 5325 50  0001 C CNN "Note"
F 6 "Vishay / Dale" H 9600 5400 50  0001 C CNN "Manufacturer"
F 7 "CCF071K00JKE36" H 9600 5400 50  0001 C CNN "ManufacturerPartNum"
F 8 "Mouser" V 9525 5400 50  0001 C CNN "Distributor"
F 9 "71-CCF071K00JKE36" H 9600 5400 50  0001 C CNN "DistributorPartNum"
F 10 "https://www.mouser.ca/ProductDetail/Vishay-Dale/CCF071K00JKE36?qs=sGAEpiMZZMsPqMdJzcrNwqw41JD0NFylHV1MADcQnpo%3D" H 9600 5400 50  0001 C CNN "DistributorPartLink"
	1    9600 5400
	0    1    1    0   
$EndComp
Connection ~ 9250 5400
Text Notes 900  4550 0    50   ~ 10
CV Input
Text Notes 6990 6490 0    50   ~ 0
All fixed resistors are 1% tolerance unless otherwise specified.\nAll eletrolytic capacitors are rated for 25VDC unless otherwise specified.
Text Notes 1250 7650 0    50   ~ 0
This work is licensed under the Creative Commons Attribution 4.0 International License.\nTo view a copy of this license, visit http://creativecommons.org/licenses/by/4.0/\nor send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
$Comp
L LFO-DigiVC:Logo_CC_BY--lmp #G?
U 1 1 61154316
P 900 7550
AR Path="/61154316" Ref="#G?"  Part="1" 
AR Path="/610CEC44/61154316" Ref="#G2"  Part="1" 
F 0 "#G2" H 900 7487 60  0001 C CNN
F 1 "Logo_CC_BY" H 900 7613 60  0001 C CNN
F 2 "-lmp-misc:Logo_CC_BY" H 900 7550 50  0001 C CNN
F 3 "https://creativecommons.org/licenses/by/4.0/" H 900 7550 50  0001 C CNN
F 4 "NoPart" H 900 7550 50  0001 C CNN "NoPart"
	1    900  7550
	1    0    0    -1  
$EndComp
Text GLabel 1300 6450 0    50   Input ~ 0
POT-IN-2
Text GLabel 1350 5050 0    50   Input ~ 0
POT-IN-1
Text Notes 900  4900 0    50   ~ 0
IN-1 is set by a pot on the front panel.\nRange is 0 V to +5 V.
Text Notes 900  6100 0    50   ~ 0
IN-2 is from an external input, attenuated \nby a pot on the front panel.\n0-10 V range is reduced to 0-5 V and \nclamped to fit the range of the ADC.\n
$Comp
L LFO-DigiVC:R--lmp R2
U 1 1 611AD009
P 2300 6650
F 0 "R2" H 2370 6696 50  0000 L CNN
F 1 "100K" H 2370 6605 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 2230 6650 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 2300 6650 50  0001 C CNN
F 4 "" H 2370 6559 50  0001 L CNN "Value2"
F 5 "Mouser" V 2225 6650 50  0001 C CNN "Distributor"
F 6 "YAGEO" H 2300 6650 50  0001 C CNN "Manufacturer"
F 7 "MFR-12FRF52-10K" H 2300 6650 50  0001 C CNN "ManufacturerPartNum"
F 8 "603-MFR-12FRF5210K" H 2300 6650 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FRF52-10K?qs=sGAEpiMZZMsPqMdJzcrNwl7IR%2FWPk8YP7c4XT%2Fr88hQ%3D" H 2300 6650 50  0001 C CNN "DistributorPartLink"
	1    2300 6650
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:R--lmp R1
U 1 1 611ADB76
P 2100 6450
F 0 "R1" V 1893 6450 50  0000 C CNN
F 1 "100K" V 1984 6450 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 2030 6450 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 2100 6450 50  0001 C CNN
F 4 "" V 1985 6450 50  0001 C CNN "Value2"
F 5 "YAGEO" H 2100 6450 50  0001 C CNN "Manufacturer"
F 6 "MFR-12FRF52-10K" H 2100 6450 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" V 2025 6450 50  0001 C CNN "Distributor"
F 8 "603-MFR-12FRF5210K" H 2100 6450 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FRF52-10K?qs=sGAEpiMZZMsPqMdJzcrNwl7IR%2FWPk8YP7c4XT%2Fr88hQ%3D" H 2100 6450 50  0001 C CNN "DistributorPartLink"
	1    2100 6450
	0    1    1    0   
$EndComp
$Comp
L LFO-DigiVC:GND--lmp-power #PWR016
U 1 1 611AECF2
P 2300 6850
F 0 "#PWR016" H 2300 6600 50  0001 C CNN
F 1 "GND" H 2305 6677 50  0000 C CNN
F 2 "" H 2300 6850 50  0001 C CNN
F 3 "" H 2300 6850 50  0001 C CNN
	1    2300 6850
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:1N5711--lmp-diode D3
U 1 1 611AFD1A
P 2750 6250
F 0 "D3" V 2704 6330 50  0000 L CNN
F 1 "1N5711" V 2795 6330 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_1" H 2750 6250 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/389/cd00000759-1795802.pdf" H 2750 6250 50  0001 C CNN
F 4 "STMicroelectronics" H 2750 6250 50  0001 C CNN "Manufacturer"
F 5 "1N5711" H 2750 6250 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 2750 6250 50  0001 C CNN "Distributor"
F 7 "511-1N5711" H 2750 6250 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/STMicroelectronics/1N5711?qs=FITO%2F%2FQgYDnH7pJ7rS2FRA%3D%3D" H 2750 6250 50  0001 C CNN "DistributorPartLink"
	1    2750 6250
	0    1    1    0   
$EndComp
$Comp
L LFO-DigiVC:+5V--lmp-power #PWR019
U 1 1 611B03C9
P 2750 6050
F 0 "#PWR019" H 2750 5900 50  0001 C CNN
F 1 "+5V" H 2765 6223 50  0000 C CNN
F 2 "" H 2750 6050 50  0001 C CNN
F 3 "" H 2750 6050 50  0001 C CNN
	1    2750 6050
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:GND--lmp-power #PWR020
U 1 1 611B09EB
P 2750 6850
F 0 "#PWR020" H 2750 6600 50  0001 C CNN
F 1 "GND" H 2755 6677 50  0000 C CNN
F 2 "" H 2750 6850 50  0001 C CNN
F 3 "" H 2750 6850 50  0001 C CNN
	1    2750 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6850 2750 6800
Wire Wire Line
	2750 6500 2750 6450
Wire Wire Line
	2750 6100 2750 6050
Wire Wire Line
	2250 6450 2300 6450
Wire Wire Line
	2300 6500 2300 6450
Wire Wire Line
	2300 6800 2300 6850
Wire Wire Line
	2750 6450 2750 6400
Connection ~ 2750 6450
Wire Wire Line
	1000 2000 1450 2000
Text Notes 950  1950 0    50   ~ 0
AREF = AVCC
$Comp
L LFO-DigiVC:1N5711--lmp-diode D4
U 1 1 610873D1
P 2750 6650
F 0 "D4" V 2704 6730 50  0000 L CNN
F 1 "1N5711" V 2795 6730 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_1" H 2750 6650 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/389/cd00000759-1795802.pdf" H 2750 6650 50  0001 C CNN
F 4 "STMicroelectronics" H 2750 6650 50  0001 C CNN "Manufacturer"
F 5 "1N5711" H 2750 6650 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 2750 6650 50  0001 C CNN "Distributor"
F 7 "511-1N5711" H 2750 6650 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/STMicroelectronics/1N5711?qs=FITO%2F%2FQgYDnH7pJ7rS2FRA%3D%3D" H 2750 6650 50  0001 C CNN "DistributorPartLink"
	1    2750 6650
	0    1    1    0   
$EndComp
Text GLabel 9900 3000 2    50   Output ~ 0
OUT-1
Text GLabel 9850 4200 2    50   Output ~ 0
OUT-2
Wire Wire Line
	9850 4200 9750 4200
Text GLabel 9850 5400 2    50   Output ~ 0
OUT-3
Wire Wire Line
	9850 5400 9750 5400
NoConn ~ 2950 2300
NoConn ~ 2950 2400
NoConn ~ 2950 2500
NoConn ~ 2950 2600
NoConn ~ 2950 3100
NoConn ~ 2950 3600
NoConn ~ 2950 1600
$Comp
L Analog_DAC:MCP4821 U4
U 1 1 611EE830
P 6650 5500
F 0 "U4" H 6450 5950 50  0000 L CNN
F 1 "MCP4821" H 6200 5850 50  0000 L CNN
F 2 "-lmp-misc:DIP-8_W7.62mm_LongPads" H 7550 5400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22244B.pdf" H 7550 5400 50  0001 C CNN
F 4 "Microchip" H 6650 5500 50  0001 C CNN "Manufacturer"
F 5 "MCP4821-E/P" H 6650 5500 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 6650 5500 50  0001 C CNN "Distributor"
F 7 "579-MCP4821-E/P" H 6650 5500 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Microchip-Technology/MCP4821-E-P?qs=usxtMOJb1RzzS7usFBeRHg%3D%3D" H 6650 5500 50  0001 C CNN "DistributorPartLink"
	1    6650 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5900 6650 6000
Wire Wire Line
	6150 5600 5950 5600
Wire Wire Line
	6150 5300 6050 5300
$Comp
L LFO-DigiVC:R--lmp R19
U 1 1 6122E436
P 6050 4900
F 0 "R19" H 6120 4946 50  0000 L CNN
F 1 "100K" H 6120 4855 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_2" V 5980 4900 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 6050 4900 50  0001 C CNN
F 4 "YAGEO" H 6050 4900 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-100K" H 6050 4900 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 6050 4900 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-100K" H 6050 4900 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-100K?qs=oAGoVhmvjhxn7uX6J9%2FOug%3D%3D" H 6050 4900 50  0001 C CNN "DistributorPartLink"
	1    6050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5050 6050 5300
$Comp
L LFO-DigiVC:+5V--lmp-power #PWR036
U 1 1 612369B7
P 6050 4700
F 0 "#PWR036" H 6050 4550 50  0001 C CNN
F 1 "+5V" H 6065 4873 50  0000 C CNN
F 2 "" H 6050 4700 50  0001 C CNN
F 3 "" H 6050 4700 50  0001 C CNN
	1    6050 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4700 6050 4750
$Comp
L LFO-DigiVC:GND--lmp-power #PWR017
U 1 1 610DAFDB
P 3950 1950
F 0 "#PWR017" H 3950 1700 50  0001 C CNN
F 1 "GND" H 3955 1777 50  0000 C CNN
F 2 "" H 3950 1950 50  0001 C CNN
F 3 "" H 3950 1950 50  0001 C CNN
	1    3950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1900 3950 1950
Wire Wire Line
	3900 1900 3950 1900
$Comp
L LFO-DigiVC:Resonator_16MHz--lmp Y1
U 1 1 610DAFCD
P 3700 1900
AR Path="/610DAFCD" Ref="Y1"  Part="1" 
AR Path="/610CEC44/610DAFCD" Ref="Y1"  Part="1" 
F 0 "Y1" V 3520 1900 50  0000 C CNN
F 1 "16MHz" V 3440 1900 50  0000 C CNN
F 2 "Crystal:Resonator_muRata_CSTLSxxxX-3Pin_W5.5mm_H3.0mm" H 3675 1900 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/281/p17e-1539077.pdf" H 3675 1900 50  0001 C CNN
F 4 "Murata" H 3700 1900 50  0001 C CNN "Manufacturer"
F 5 "CSTLS16M0X53Z-A0" H 3700 1900 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 3700 1900 50  0001 C CNN "Distributor"
F 7 " 81-CSTLS16M0X53Z-A0" H 3700 1900 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=x6vGwhDZZUZCi2wdIsDbVA%3D%3D" H 3700 1900 50  0001 C CNN "DistributorPartLink"
	1    3700 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 6450 2750 6450
Connection ~ 2300 6450
$Comp
L LFO-DigiVC:R--lmp R4
U 1 1 61108202
P 8300 2900
F 0 "R4" V 8093 2900 50  0000 C CNN
F 1 "20K" V 8184 2900 50  0000 C CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8230 2900 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 8300 2900 50  0001 C CNN
F 4 "YAGEO" H 8300 2900 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-20K" H 8300 2900 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8300 2900 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-20K" H 8300 2900 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-20K?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWL3Dli7pqtTkM%3D" H 8300 2900 50  0001 C CNN "DistributorPartLink"
	1    8300 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 1800 7750 1750
Connection ~ 7750 1800
Wire Wire Line
	8100 1800 7750 1800
Wire Wire Line
	8050 1600 8100 1600
Wire Wire Line
	8050 1350 8050 1600
Wire Wire Line
	8750 1350 8050 1350
Wire Wire Line
	8750 1700 8750 1350
Wire Wire Line
	8700 1700 8750 1700
Wire Wire Line
	7750 1450 7750 1400
Wire Wire Line
	7750 1850 7750 1800
Wire Wire Line
	7750 2200 7750 2150
$Comp
L LFO-DigiVC:GND--lmp-power #PWR031
U 1 1 61198151
P 7750 2200
F 0 "#PWR031" H 7750 1950 50  0001 C CNN
F 1 "GND" H 7755 2027 50  0000 C CNN
F 2 "" H 7750 2200 50  0001 C CNN
F 3 "" H 7750 2200 50  0001 C CNN
	1    7750 2200
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:+5V--lmp-power #PWR030
U 1 1 61197F4E
P 7750 1400
F 0 "#PWR030" H 7750 1250 50  0001 C CNN
F 1 "+5V" H 7765 1573 50  0000 C CNN
F 2 "" H 7750 1400 50  0001 C CNN
F 3 "" H 7750 1400 50  0001 C CNN
	1    7750 1400
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:R--lmp R7
U 1 1 611977F4
P 7750 2000
F 0 "R7" H 7820 2046 50  0000 L CNN
F 1 "20K" H 7820 1955 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_2" V 7680 2000 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 7750 2000 50  0001 C CNN
F 4 "YAGEO" H 7750 2000 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-20K" H 7750 2000 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7750 2000 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-20K" H 7750 2000 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-20K?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWL3Dli7pqtTkM%3D" H 7750 2000 50  0001 C CNN "DistributorPartLink"
	1    7750 2000
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:R--lmp R5
U 1 1 61195D93
P 7750 1600
F 0 "R5" H 7820 1646 50  0000 L CNN
F 1 "10K" H 7820 1555 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 7680 1600 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 7750 1600 50  0001 C CNN
F 4 "YAGEO" H 7750 1600 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FRF52-10K" H 7750 1600 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7750 1600 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FRF5210K" H 7750 1600 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FRF52-10K?qs=sGAEpiMZZMsPqMdJzcrNwl7IR%2FWPk8YP7c4XT%2Fr88hQ%3D" H 7750 1600 50  0001 C CNN "DistributorPartLink"
	1    7750 1600
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:TL074--lmp-opamp U5
U 1 1 611848F3
P 8400 1700
F 0 "U5" H 8400 1950 50  0000 C CNN
F 1 "TL074" H 8400 2050 50  0000 C CNN
F 2 "-lmp-misc:DIP-14_W7.62mm_LongPads" H 8350 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8450 1900 50  0001 C CNN
F 4 "Texas Instruments" H 8400 1700 50  0001 C CNN "Manufacturer"
F 5 "TL074BCN" H 8400 1700 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8400 1700 50  0001 C CNN "Distributor"
F 7 "595-TL074BCN" H 8400 1700 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=vxEfx8VrU7BHurOY5iQdiA%3D%3D" H 8400 1700 50  0001 C CNN "DistributorPartLink"
	1    8400 1700
	1    0    0    1   
$EndComp
Wire Wire Line
	5950 1700 5950 3100
Wire Wire Line
	5850 1200 5850 3200
Wire Wire Line
	8750 1700 8750 2200
Connection ~ 8750 1700
Wire Wire Line
	5750 3400 6150 3400
Wire Wire Line
	5750 1300 5750 3400
Text Label 8750 1700 0    50   ~ 0
VREF
Wire Wire Line
	5650 5500 6150 5500
Wire Wire Line
	5550 5700 6150 5700
Wire Wire Line
	5850 3200 6150 3200
Text Notes 7700 1050 0    50   ~ 0
Output range is -5 V to +5 V
Wire Wire Line
	7150 3400 7200 3400
Wire Wire Line
	5550 1500 5550 3300
Connection ~ 5850 3200
Connection ~ 5950 3100
Wire Wire Line
	8500 2550 8500 2900
Wire Wire Line
	9250 2550 9250 3000
Wire Wire Line
	5950 3100 5950 5600
Wire Wire Line
	6150 5400 5850 5400
Wire Wire Line
	5850 3200 5850 5400
Wire Wire Line
	6150 3300 5550 3300
Connection ~ 5550 3300
Wire Wire Line
	5550 3300 5550 5700
Wire Wire Line
	5650 1400 5650 5500
Wire Wire Line
	9250 4950 9250 5400
Wire Wire Line
	8500 4950 8500 5300
Wire Wire Line
	8500 3750 8500 4100
Wire Wire Line
	9250 3750 9250 4200
Wire Wire Line
	7200 3400 7200 4300
$Comp
L LFO-DigiVC:ATmega328P-PU--lmp-IC-misc U2
U 1 1 610DAF7D
P 2150 2400
AR Path="/610DAF7D" Ref="U2"  Part="1" 
AR Path="/610CEC44/610DAF7D" Ref="U2"  Part="1" 
F 0 "U2" H 1550 3850 50  0000 L CNN
F 1 "ATmega328P-PU" H 1550 3750 50  0000 L CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 2050 2400 50  0001 C CIN
F 3 "https://www.microchip.com/en-us/product/ATmega328P" H 2350 2400 50  0001 C CNN
F 4 "programmed with Arduino bootloader" H 2850 3750 50  0001 R CNN "Note"
F 5 "Microchip" H 2350 2400 50  0001 C CNN "Manufacturer"
F 6 "ATMEGA328P-PU" H 2350 2400 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 2350 2400 50  0001 C CNN "Distributor"
F 8 "556-ATMEGA328P-PU" H 2350 2400 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/?qs=K8BHR703ZXguOQv3sKbWcg%3D%3D" H 2050 2400 50  0001 C CNN "DistributorPartLink"
F 10 "Adafruit" H 2150 2400 50  0001 C CNN "Distributor2"
F 11 "https://www.adafruit.com/product/123" H 2150 2400 50  0001 C CNN "DistributorPartLink2"
F 12 "123" H 2150 2400 50  0001 C CNN "DistributorPartNum2"
F 13 "16 MHz" H 2700 3750 50  0000 C CNN "Value2"
	1    2150 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2200 8050 2900
Wire Wire Line
	8050 2200 8750 2200
Wire Wire Line
	8050 2900 8150 2900
Connection ~ 8050 2900
Wire Wire Line
	8050 2900 8050 4100
Wire Wire Line
	8050 4100 8150 4100
Connection ~ 8050 4100
Wire Wire Line
	8050 4100 8050 5300
Wire Wire Line
	8050 5300 8150 5300
Wire Wire Line
	9750 3000 9900 3000
$Comp
L LFO-DigiVC:R--lmp R10
U 1 1 6111F890
P 7450 4300
F 0 "R10" V 7243 4300 50  0000 C CNN
F 1 "47K" V 7334 4300 50  0000 C CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7380 4300 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 7450 4300 50  0001 C CNN
F 4 "YAGEO" H 7450 4300 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-30K" H 7450 4300 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7450 4300 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-30K" H 7450 4300 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-30K?qs=oAGoVhmvjhx41C7LP55%2FiQ%3D%3D" H 7450 4300 50  0001 C CNN "DistributorPartLink"
	1    7450 4300
	0    1    1    0   
$EndComp
$Comp
L LFO-DigiVC:CF--lmp C12
U 1 1 61120921
P 7700 4550
F 0 "C12" H 7815 4596 50  0000 L CNN
F 1 "3N3" H 7815 4505 50  0000 L CNN
F 2 "-lmp-misc:C_Rect_Kemet_L7.2mm_W2.5mm_P5mm" H 7738 4400 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/212/F3294_MMK-1101858.pdf" H 7700 4550 50  0001 C CNN
F 4 "KEMET" H 7700 4550 50  0001 C CNN "Manufacturer"
F 5 "MMK5102J100J01L16.5TA18" H 7700 4550 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7700 4550 50  0001 C CNN "Distributor"
F 7 "80-MMK5102J100J1TA18" H 7700 4550 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/KEMET/MMK5102J100J01L165TA18?qs=IKDMbYZLynDyIIzWkajPBA%3D%3D" H 7700 4550 50  0001 C CNN "DistributorPartLink"
	1    7700 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4300 7700 4300
Wire Wire Line
	7700 4400 7700 4300
Connection ~ 7700 4300
Wire Wire Line
	7700 4700 7700 4750
$Comp
L LFO-DigiVC:GND--lmp-power #PWR033
U 1 1 6113597E
P 7700 4750
F 0 "#PWR033" H 7700 4500 50  0001 C CNN
F 1 "GND" H 7705 4577 50  0000 C CNN
F 2 "" H 7700 4750 50  0001 C CNN
F 3 "" H 7700 4750 50  0001 C CNN
	1    7700 4750
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:R--lmp R9
U 1 1 61136DAC
P 7450 3100
F 0 "R9" V 7243 3100 50  0000 C CNN
F 1 "47K" V 7334 3100 50  0000 C CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7380 3100 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 7450 3100 50  0001 C CNN
F 4 "YAGEO" H 7450 3100 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-30K" H 7450 3100 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7450 3100 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-30K" H 7450 3100 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-30K?qs=oAGoVhmvjhx41C7LP55%2FiQ%3D%3D" H 7450 3100 50  0001 C CNN "DistributorPartLink"
	1    7450 3100
	0    1    1    0   
$EndComp
$Comp
L LFO-DigiVC:CF--lmp C11
U 1 1 61136DB7
P 7700 3350
F 0 "C11" H 7815 3396 50  0000 L CNN
F 1 "3N3" H 7815 3305 50  0000 L CNN
F 2 "-lmp-misc:C_Rect_Kemet_L7.2mm_W2.5mm_P5mm" H 7738 3200 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/212/F3294_MMK-1101858.pdf" H 7700 3350 50  0001 C CNN
F 4 "KEMET" H 7700 3350 50  0001 C CNN "Manufacturer"
F 5 "MMK5102J100J01L16.5TA18 " H 7700 3350 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7700 3350 50  0001 C CNN "Distributor"
F 7 "80-MMK5102J100J1TA18" H 7700 3350 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/KEMET/MMK5102J100J01L165TA18?qs=IKDMbYZLynDyIIzWkajPBA%3D%3D" H 7700 3350 50  0001 C CNN "DistributorPartLink"
	1    7700 3350
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:GND--lmp-power #PWR032
U 1 1 61136DBE
P 7700 3550
F 0 "#PWR032" H 7700 3300 50  0001 C CNN
F 1 "GND" H 7705 3377 50  0000 C CNN
F 2 "" H 7700 3550 50  0001 C CNN
F 3 "" H 7700 3550 50  0001 C CNN
	1    7700 3550
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:R--lmp R11
U 1 1 6113E043
P 7450 5500
F 0 "R11" V 7243 5500 50  0000 C CNN
F 1 "47K" V 7334 5500 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_5" V 7380 5500 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 7450 5500 50  0001 C CNN
F 4 "YAGEO" H 7450 5500 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-30K" H 7450 5500 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7450 5500 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-30K" H 7450 5500 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-30K?qs=oAGoVhmvjhx41C7LP55%2FiQ%3D%3D" H 7450 5500 50  0001 C CNN "DistributorPartLink"
	1    7450 5500
	0    1    1    0   
$EndComp
$Comp
L LFO-DigiVC:CF--lmp C13
U 1 1 6113E04E
P 7700 5750
F 0 "C13" H 7815 5796 50  0000 L CNN
F 1 "3N3" H 7815 5705 50  0000 L CNN
F 2 "-lmp-misc:C_Rect_Kemet_L7.2mm_W2.5mm_P5mm" H 7738 5600 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/212/F3294_MMK-1101858.pdf" H 7700 5750 50  0001 C CNN
F 4 "KEMET" H 7700 5750 50  0001 C CNN "Manufacturer"
F 5 "MMK5102J100J01L16.5TA18" H 7700 5750 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7700 5750 50  0001 C CNN "Distributor"
F 7 "80-MMK5102J100J1TA18" H 7700 5750 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/KEMET/MMK5102J100J01L165TA18?qs=IKDMbYZLynDyIIzWkajPBA%3D%3D" H 7700 5750 50  0001 C CNN "DistributorPartLink"
	1    7700 5750
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:GND--lmp-power #PWR034
U 1 1 6113E055
P 7700 5950
F 0 "#PWR034" H 7700 5700 50  0001 C CNN
F 1 "GND" H 7705 5777 50  0000 C CNN
F 2 "" H 7700 5950 50  0001 C CNN
F 3 "" H 7700 5950 50  0001 C CNN
	1    7700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5500 7300 5500
Wire Wire Line
	7700 3100 7700 3200
Wire Wire Line
	7600 3100 7700 3100
Wire Wire Line
	7600 5500 7700 5500
Wire Wire Line
	7700 3500 7700 3550
Wire Wire Line
	7700 5600 7700 5500
Connection ~ 7700 5500
Wire Wire Line
	7700 5950 7700 5900
Wire Wire Line
	7150 3100 7300 3100
Wire Wire Line
	7200 4300 7300 4300
Wire Wire Line
	7700 5500 8600 5500
Wire Wire Line
	7700 4300 8600 4300
Wire Wire Line
	8600 3100 7700 3100
Connection ~ 7700 3100
Connection ~ 6650 4900
Wire Wire Line
	6650 4900 6650 5100
Wire Wire Line
	6650 4750 6650 4900
Connection ~ 6650 2600
Wire Wire Line
	6650 2600 6650 2800
Wire Wire Line
	6650 2450 6650 2600
Text Notes 7250 2800 0    50   ~ 0
Output is filtered \nat ~~1 kHz
Text GLabel 3300 3500 2    50   Input ~ 0
IN-SW-FUNCTION
Wire Wire Line
	9250 3000 9450 3000
$Comp
L LFO-DigiVC:GND--lmp-power #PWR037
U 1 1 6114A4CC
P 4250 5850
F 0 "#PWR037" H 4250 5600 50  0001 C CNN
F 1 "GND" H 4255 5677 50  0000 C CNN
F 2 "" H 4250 5850 50  0001 C CNN
F 3 "" H 4250 5850 50  0001 C CNN
	1    4250 5850
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:Q_NPN_2N3904--lmp Q1
U 1 1 6117CA30
P 4150 5650
AR Path="/6117CA30" Ref="Q1"  Part="1" 
AR Path="/610CEC44/6117CA30" Ref="Q1"  Part="1" 
F 0 "Q1" H 4338 5696 50  0000 L CNN
F 1 "2N3904" H 4338 5605 50  0000 L CNN
F 2 "-lmp-misc:TO-92_Inline_Wide" H 4325 5575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 4150 5650 50  0001 L CNN
F 4 "Central Semiconductor" H 4150 5650 50  0001 C CNN "Manufacturer"
F 5 "2N3904 PBFREE" H 4150 5650 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 4150 5650 50  0001 C CNN "Distributor"
F 7 "610-2N3904" H 4150 5650 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Central-Semiconductor/2N3904-PBFREE?qs=u16ybLDytRZopNVvg2vJjA%3D%3D" H 4150 5650 50  0001 C CNN "DistributorPartLink"
	1    4150 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5350 4250 5500
Wire Wire Line
	4250 5800 4250 5850
$Comp
L LFO-DigiVC:R--lmp R12
U 1 1 6119FC5B
P 3750 5650
F 0 "R12" V 3543 5650 50  0000 C CNN
F 1 "10K" V 3634 5650 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_11" V 3680 5650 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 3750 5650 50  0001 C CNN
F 4 "YAGEO" H 3750 5650 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FRF52-10K" H 3750 5650 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 3750 5650 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FRF5210K" H 3750 5650 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FRF52-10K?qs=sGAEpiMZZMsPqMdJzcrNwl7IR%2FWPk8YP7c4XT%2Fr88hQ%3D" H 3750 5650 50  0001 C CNN "DistributorPartLink"
	1    3750 5650
	0    1    1    0   
$EndComp
Text Notes 3700 4400 0    50   ~ 10
Blinky!
Wire Wire Line
	3900 5200 3950 5200
Wire Wire Line
	3900 5050 3900 5200
Wire Wire Line
	3900 4700 3900 4750
$Comp
L LFO-DigiVC:+12V--lmp-power #PWR035
U 1 1 6115A227
P 3900 4700
F 0 "#PWR035" H 3900 4550 50  0001 C CNN
F 1 "+12V" H 3915 4873 50  0000 C CNN
F 2 "" H 3900 4700 50  0001 C CNN
F 3 "" H 3900 4700 50  0001 C CNN
	1    3900 4700
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:R_1K_Output--lmp-synth R20
U 1 1 6114A4C2
P 3900 4900
F 0 "R20" H 3830 4809 50  0000 R CNN
F 1 "1K" H 3830 4900 50  0000 R CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 3830 4900 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/427/ccf07-1762725.pdf" H 3900 4900 50  0001 C CNN
F 4 "5%, 1/4 W" H 3830 4991 50  0000 R CNN "Value2"
F 5 "Output limiting" V 3825 4825 50  0001 C CNN "Note"
F 6 "Vishay / Dale" H 3900 4900 50  0001 C CNN "Manufacturer"
F 7 "CCF071K00JKE36" H 3900 4900 50  0001 C CNN "ManufacturerPartNum"
F 8 "Mouser" V 3825 4900 50  0001 C CNN "Distributor"
F 9 "71-CCF071K00JKE36" H 3900 4900 50  0001 C CNN "DistributorPartNum"
F 10 "https://www.mouser.ca/ProductDetail/Vishay-Dale/CCF071K00JKE36?qs=sGAEpiMZZMsPqMdJzcrNwqw41JD0NFylHV1MADcQnpo%3D" H 3900 4900 50  0001 C CNN "DistributorPartLink"
	1    3900 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 5350 4250 5350
Text GLabel 4200 5350 0    50   UnSpc ~ 0
LED-C
Text GLabel 3950 5200 2    50   UnSpc ~ 0
LED-A
Wire Wire Line
	3900 5650 4050 5650
Wire Wire Line
	9250 4200 9450 4200
Wire Wire Line
	9250 5400 9450 5400
Connection ~ 9250 4200
Wire Wire Line
	9250 4200 9200 4200
Wire Wire Line
	2750 6450 3150 6450
Wire Wire Line
	2950 2100 3150 2100
Wire Wire Line
	2950 2200 3050 2200
Wire Wire Line
	3050 2200 3050 5050
Wire Wire Line
	2950 3200 3250 3200
Wire Wire Line
	3250 3200 3250 5650
Wire Wire Line
	3250 5650 3600 5650
Text GLabel 3300 3400 2    50   Input ~ 0
IN-SW-RANGE-HI
Text GLabel 3300 3300 2    50   Input ~ 0
IN-SW-RANGE-LO
Wire Wire Line
	4350 3100 4450 3100
Wire Wire Line
	3300 3500 2950 3500
Wire Wire Line
	2950 3400 3300 3400
Wire Wire Line
	3300 3300 2950 3300
Wire Wire Line
	3150 2100 3150 6450
Wire Wire Line
	3950 3100 3950 2700
Wire Wire Line
	3950 3100 4050 3100
Connection ~ 3950 2700
Wire Wire Line
	3950 2700 3950 2400
Wire Wire Line
	2950 1200 5850 1200
Wire Wire Line
	2950 1300 5750 1300
Wire Wire Line
	2950 1400 5650 1400
Wire Wire Line
	2950 1500 5550 1500
Wire Wire Line
	2950 1700 5950 1700
Wire Wire Line
	2950 2700 3950 2700
Wire Wire Line
	2950 2900 4450 2900
Wire Wire Line
	2950 3000 4450 3000
Connection ~ 5100 2400
Wire Wire Line
	5100 2400 5100 2450
Wire Wire Line
	5100 2350 5100 2400
Wire Wire Line
	5100 2050 5100 2000
$Comp
L LFO-DigiVC:Jumper_2_Open--lmp JP1
U 1 1 612384DF
P 5100 2650
F 0 "JP1" V 5054 2748 50  0000 L CNN
F 1 "RESET" V 5145 2748 50  0000 L CNN
F 2 "-lmp-misc:PinHeader_1x02_P2.54mm_Vertical" H 5100 2650 50  0001 C CNN
F 3 "~" H 5100 2650 50  0001 C CNN
	1    5100 2650
	0    1    1    0   
$EndComp
Text Notes 6200 1100 0    50   ~ 0
Analog signal range is \n0 V to +4.096 V
Text Label 4200 1700 0    50   ~ 0
SPI-SCLK
Text Label 4200 1200 0    50   ~ 0
~LDAC
Text Label 4200 1300 0    50   ~ 0
~SPI-CS-1
Text Label 4200 1400 0    50   ~ 0
~SPI-CS-2
Text Label 4200 1500 0    50   ~ 0
SPI-MOSI
Text Label 3000 2100 0    50   ~ 0
CV-IN-2
Text Label 3000 2200 0    50   ~ 0
CV-IN-1
Wire Wire Line
	2950 1800 3600 1800
Wire Wire Line
	3500 2000 3500 1900
Wire Wire Line
	2950 1900 3500 1900
Wire Wire Line
	3600 2000 3500 2000
Wire Wire Line
	4300 2700 4300 2800
$Comp
L LFO-DigiVC:Logo_OSHW--lmp #G4
U 1 1 61AE951C
P 4950 7500
F 0 "#G4" H 4950 7308 60  0001 C CNN
F 1 "Logo_OSHW" H 4950 7692 60  0001 C CNN
F 2 "-lmp-misc:Logo_OSHW" H 4950 7500 50  0001 C CNN
F 3 "https://www.oshwa.org/definition/" H 4950 7500 50  0001 C CNN
F 4 "NoPart" H 4950 7500 50  0001 C CNN "NoPart"
	1    4950 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2400 5100 2400
Wire Wire Line
	1350 5050 3050 5050
Wire Wire Line
	1300 6450 1950 6450
$EndSCHEMATC
