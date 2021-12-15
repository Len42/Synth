EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Front Panel & Power - Eurorack Noise / S&H Module"
Date "2021-08-21"
Rev "1.2"
Comp "Len Popp"
Comment1 "Copyright © 2021 Len Popp CC BY-SA"
Comment2 "4HP module designed for Delptronics Module Construction Set"
Comment3 "Eurorack module with noise generation and sample-and-hold"
Comment4 "COMPLETED"
$EndDescr
Text Notes 6800 6150 0    50   ~ 0
All fixed resistors are 1% tolerance unless otherwise specified.\nAll electrolytic capacitors are rated for 25VDC unless otherwise specified.
Text Notes 900  700  0    50   ~ 10
Front Panel
$Comp
L Noise-SH:Conn_Delptronics_Front_Left_4HP--lmp-synth J9
U 1 1 60E205D9
P 3550 2200
F 0 "J9" H 3550 3550 50  0000 C CNN
F 1 "Conn_Front" H 3550 3450 50  0000 C CNN
F 2 "-lmp-synth:PinSocket_Delptronics_Front" H 3550 2200 50  0001 C CNN
F 3 "~" H 3550 2200 50  0001 C CNN
F 4 "NoPart" H 3550 2200 50  0001 C CNN "NoPart"
F 5 "part of Delptronics Module Constrution Set" H 3550 2200 50  0001 C CNN "Note"
	1    3550 2200
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:Conn_Delptronics_Back_Left_4HP--lmp-synth J10
U 1 1 60CAA39B
P 4450 2200
F 0 "J10" H 4400 3550 50  0000 L CNN
F 1 "Conn__Back" H 4450 3450 50  0000 C CNN
F 2 "-lmp-synth:PinHeader_Delptronics_Back_Left_4HP" H 4450 2200 50  0001 C CNN
F 3 "~" H 4450 2200 50  0001 C CNN
F 4 "NoPart" H 4450 2200 50  0001 C CNN "NoPart"
F 5 "part of Delptronics Module Constrution Set" H 4450 2200 50  0001 C CNN "Note"
	1    4450 2200
	-1   0    0    -1  
$EndComp
Text Notes 4150 700  0    50   ~ 10
Rear Board Connector
Wire Wire Line
	3300 3400 3300 3450
Wire Wire Line
	4700 3450 4700 3400
Wire Wire Line
	4700 3400 4650 3400
Wire Wire Line
	3350 3400 3300 3400
$Comp
L Noise-SH:GND--lmp-power #PWR05
U 1 1 60CD7485
P 3300 3450
F 0 "#PWR05" H 3300 3200 50  0001 C CNN
F 1 "GND" H 3305 3277 50  0000 C CNN
F 2 "" H 3300 3450 50  0001 C CNN
F 3 "" H 3300 3450 50  0001 C CNN
	1    3300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3000 3350 3000
NoConn ~ 4650 3100
Wire Wire Line
	6450 3500 6450 3400
Wire Wire Line
	6450 3100 6450 3150
Wire Wire Line
	6450 2800 6450 2700
$Comp
L power:-12VA #PWR012
U 1 1 60E70886
P 7800 3500
F 0 "#PWR012" H 7800 3350 50  0001 C CNN
F 1 "-12VA" H 7815 3673 50  0000 C CNN
F 2 "" H 7800 3500 50  0001 C CNN
F 3 "" H 7800 3500 50  0001 C CNN
	1    7800 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 2800 7800 2700
Wire Wire Line
	7800 3100 7800 3150
Wire Wire Line
	7800 3500 7800 3400
NoConn ~ 3350 2400
NoConn ~ 3350 2900
NoConn ~ 3350 3100
NoConn ~ 4650 2900
NoConn ~ 4650 2400
NoConn ~ 3350 1800
NoConn ~ 4650 1800
Text Notes 3250 4000 0    50   ~ 0
When SW6 is closed, internally-generated OUT-CLOCK-TRIG \nis output on J7 and used for sample-and-hold.\nWhen open, an external trigger must be input on J7.
Wire Wire Line
	1550 4850 1500 4850
Wire Wire Line
	1550 4900 1550 4850
$Comp
L Noise-SH:GND--lmp-power #PWR04
U 1 1 60E49087
P 1550 4900
F 0 "#PWR04" H 1550 4650 50  0001 C CNN
F 1 "GND" H 1555 4727 50  0000 C CNN
F 2 "" H 1550 4900 50  0001 C CNN
F 3 "" H 1550 4900 50  0001 C CNN
	1    1550 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 6050 1500 6050
Wire Wire Line
	1550 6100 1550 6050
$Comp
L Noise-SH:GND--lmp-power #PWR03
U 1 1 60E473D6
P 1550 6100
F 0 "#PWR03" H 1550 5850 50  0001 C CNN
F 1 "GND" H 1555 5927 50  0000 C CNN
F 2 "" H 1550 6100 50  0001 C CNN
F 3 "" H 1550 6100 50  0001 C CNN
	1    1550 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5450 1500 5450
Wire Wire Line
	1550 5500 1550 5450
$Comp
L Noise-SH:GND--lmp-power #PWR02
U 1 1 60E458BF
P 1550 5500
F 0 "#PWR02" H 1550 5250 50  0001 C CNN
F 1 "GND" H 1555 5327 50  0000 C CNN
F 2 "" H 1550 5500 50  0001 C CNN
F 3 "" H 1550 5500 50  0001 C CNN
	1    1550 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4250 1500 4250
Wire Wire Line
	1550 4300 1550 4250
$Comp
L Noise-SH:GND--lmp-power #PWR01
U 1 1 60E205DB
P 1550 4300
F 0 "#PWR01" H 1550 4050 50  0001 C CNN
F 1 "GND" H 1555 4127 50  0000 C CNN
F 2 "" H 1550 4300 50  0001 C CNN
F 3 "" H 1550 4300 50  0001 C CNN
	1    1550 4300
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:Jack_WQP-PJ398--lmp-synth J5
U 1 1 60E205DF
P 1300 4150
AR Path="/60E205DF" Ref="J5"  Part="1" 
AR Path="/60E2021A/60E205DF" Ref="J5"  Part="1" 
F 0 "J5" H 1121 4038 50  0000 R CNN
F 1 "WQP-PJ398SM" H 1121 4129 50  0000 R CNN
F 2 "-lmp-synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 1300 4150 50  0001 C CNN
F 3 "http://www.qingpu-electronics.com/en/products/WQP-PJ398SM-362.html" H 1300 4150 50  0001 C CNN
F 4 "IN-SAMPLE" H 1121 4220 50  0000 R CNN "Label"
F 5 "QingPu / Thonk" H 1300 4150 50  0001 C CNN "Manufacturer"
F 6 "PJ398SM / WQP518MA" H 1300 4150 50  0001 C CNN "ManufacturerPartNum"
F 7 "Thonk" H 1300 4150 50  0001 C CNN "Distributor"
F 8 "PJ398SM" H 1300 4150 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 1300 4150 50  0001 C CNN "DistributorPartLink"
F 10 "SynthCube" H 1300 4150 50  0001 C CNN "Distributor2"
F 11 "Adafruit" H 1300 4150 50  0001 C CNN "Distributor3"
F 12 "https://synthcube.com/cart/3-5mm-euro-jacks" H 1300 4150 50  0001 C CNN "DistributorPartLink2"
F 13 "https://www.adafruit.com/product/4031" H 1300 4150 50  0001 C CNN "DistributorPartLink3"
F 14 "WQP518MA" H 1300 4150 50  0001 C CNN "DistributorPartNum2"
F 15 "4031" H 1300 4150 50  0001 C CNN "DistributorPartNum3"
	1    1300 4150
	1    0    0    1   
$EndComp
$Comp
L Noise-SH:Jack_WQP-PJ398--lmp-synth J6
U 1 1 60E35493
P 1300 5350
AR Path="/60E35493" Ref="J6"  Part="1" 
AR Path="/60E2021A/60E35493" Ref="J7"  Part="1" 
F 0 "J7" H 1121 5238 50  0000 R CNN
F 1 "WQP-PJ398SM" H 1121 5329 50  0000 R CNN
F 2 "-lmp-synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 1300 5350 50  0001 C CNN
F 3 "http://www.qingpu-electronics.com/en/products/WQP-PJ398SM-362.html" H 1300 5350 50  0001 C CNN
F 4 "IN-OUT-TRIG" H 1121 5420 50  0000 R CNN "Label"
F 5 "QingPu / Thonk" H 1300 5350 50  0001 C CNN "Manufacturer"
F 6 "PJ398SM / WQP518MA" H 1300 5350 50  0001 C CNN "ManufacturerPartNum"
F 7 "Thonk" H 1300 5350 50  0001 C CNN "Distributor"
F 8 "PJ398SM" H 1300 5350 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 1300 5350 50  0001 C CNN "DistributorPartLink"
F 10 "SynthCube" H 1300 5350 50  0001 C CNN "Distributor2"
F 11 "Adafruit" H 1300 5350 50  0001 C CNN "Distributor3"
F 12 "https://synthcube.com/cart/3-5mm-euro-jacks" H 1300 5350 50  0001 C CNN "DistributorPartLink2"
F 13 "https://www.adafruit.com/product/4031" H 1300 5350 50  0001 C CNN "DistributorPartLink3"
F 14 "WQP518MA" H 1300 5350 50  0001 C CNN "DistributorPartNum2"
F 15 "4031" H 1300 5350 50  0001 C CNN "DistributorPartNum3"
	1    1300 5350
	1    0    0    1   
$EndComp
$Comp
L Noise-SH:Jack_WQP-PJ398--lmp-synth J7
U 1 1 60E3736C
P 1300 5950
AR Path="/60E3736C" Ref="J7"  Part="1" 
AR Path="/60E2021A/60E3736C" Ref="J8"  Part="1" 
F 0 "J8" H 1121 5838 50  0000 R CNN
F 1 "WQP-PJ398SM" H 1121 5929 50  0000 R CNN
F 2 "-lmp-synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 1300 5950 50  0001 C CNN
F 3 "http://www.qingpu-electronics.com/en/products/WQP-PJ398SM-362.html" H 1300 5950 50  0001 C CNN
F 4 "OUT-NOISE" H 1121 6020 50  0000 R CNN "Label"
F 5 "QingPu / Thonk" H 1300 5950 50  0001 C CNN "Manufacturer"
F 6 "PJ398SM / WQP518MA" H 1300 5950 50  0001 C CNN "ManufacturerPartNum"
F 7 "Thonk" H 1300 5950 50  0001 C CNN "Distributor"
F 8 "PJ398SM" H 1300 5950 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 1300 5950 50  0001 C CNN "DistributorPartLink"
F 10 "SynthCube" H 1300 5950 50  0001 C CNN "Distributor2"
F 11 "Adafruit" H 1300 5950 50  0001 C CNN "Distributor3"
F 12 "https://synthcube.com/cart/3-5mm-euro-jacks" H 1300 5950 50  0001 C CNN "DistributorPartLink2"
F 13 "https://www.adafruit.com/product/4031" H 1300 5950 50  0001 C CNN "DistributorPartLink3"
F 14 "WQP518MA" H 1300 5950 50  0001 C CNN "DistributorPartNum2"
F 15 "4031" H 1300 5950 50  0001 C CNN "DistributorPartNum3"
	1    1300 5950
	1    0    0    1   
$EndComp
$Comp
L Noise-SH:Jack_WQP-PJ398--lmp-synth J8
U 1 1 60E378DF
P 1300 4750
AR Path="/60E378DF" Ref="J8"  Part="1" 
AR Path="/60E2021A/60E378DF" Ref="J6"  Part="1" 
F 0 "J6" H 1121 4638 50  0000 R CNN
F 1 "WQP-PJ398SM" H 1121 4729 50  0000 R CNN
F 2 "-lmp-synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 1300 4750 50  0001 C CNN
F 3 "http://www.qingpu-electronics.com/en/products/WQP-PJ398SM-362.html" H 1300 4750 50  0001 C CNN
F 4 "OUT-HOLD" H 1121 4820 50  0000 R CNN "Label"
F 5 "QingPu / Thonk" H 1300 4750 50  0001 C CNN "Manufacturer"
F 6 "PJ398SM / WQP518MA" H 1300 4750 50  0001 C CNN "ManufacturerPartNum"
F 7 "Thonk" H 1300 4750 50  0001 C CNN "Distributor"
F 8 "PJ398SM" H 1300 4750 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 1300 4750 50  0001 C CNN "DistributorPartLink"
F 10 "SynthCube" H 1300 4750 50  0001 C CNN "Distributor2"
F 11 "Adafruit" H 1300 4750 50  0001 C CNN "Distributor3"
F 12 "https://synthcube.com/cart/3-5mm-euro-jacks" H 1300 4750 50  0001 C CNN "DistributorPartLink2"
F 13 "https://www.adafruit.com/product/4031" H 1300 4750 50  0001 C CNN "DistributorPartLink3"
F 14 "WQP518MA" H 1300 4750 50  0001 C CNN "DistributorPartNum2"
F 15 "4031" H 1300 4750 50  0001 C CNN "DistributorPartNum3"
	1    1300 4750
	1    0    0    1   
$EndComp
Wire Wire Line
	1350 3450 1350 3500
Wire Wire Line
	1350 3800 1350 3850
NoConn ~ 1500 4650
NoConn ~ 1500 5850
NoConn ~ 1500 5250
$Comp
L Noise-SH:LED_5mm_Blue--lmp-synth D3
U 1 1 60E9F439
P 1350 3650
AR Path="/60E9F439" Ref="D3"  Part="1" 
AR Path="/60E2021A/60E9F439" Ref="D3"  Part="1" 
F 0 "D3" V 1252 3533 50  0000 R CNN
F 1 "LED_5mm_Blue" V 1343 3533 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1350 3650 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/423/VAOL-5LSBY1-1064871.pdf" H 1350 3650 50  0001 C CNN
F 4 "Trigger" V 1434 3533 50  0000 R CNN "Label"
F 5 "VCC" H 1350 3650 50  0001 C CNN "Manufacturer"
F 6 "VAOL-5LSBY1" H 1350 3650 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 1350 3650 50  0001 C CNN "Distributor"
F 8 "593-VAOL-5LSBY1" H 1350 3650 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/VCC/VAOL-5LSBY1?qs=sGAEpiMZZMvHYEB9WUp7EneOMcS%2FsWIS9dCGd3NWsaQ%3D" H 1350 3650 50  0001 C CNN "DistributorPartLink"
	1    1350 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 1850 1050 2250
$Comp
L Noise-SH:R_POT_Panel_PCB_Alpha--lmp-synth RV7
U 1 1 60E2D734
P 1350 2650
F 0 "RV7" H 1280 2513 50  0000 R CNN
F 1 "1M" H 1280 2604 50  0000 R CNN
F 2 "-lmp-synth:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1350 2650 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/13/alpha_taiwan_08192019_RD901F-40-15R1-B(resistance_-1627810.pdf" H 1350 2650 50  0001 C CNN
F 4 "LIN" H 1280 2695 50  0000 R CNN "Value2"
F 5 "Sample Rate" H 1280 2786 50  0000 R CNN "Label"
F 6 "https://www.thonk.co.uk/shop/alpha-9mm-pots/" H 1350 2650 50  0001 C CNN "Catalog"
F 7 "Alpha" H 1350 2650 50  0001 C CNN "Manufacturer"
F 8 "RD901F-*" H 1350 2650 50  0001 C CNN "ManufacturerPartNum"
F 9 "Thonk" H 1350 2650 50  0001 C CNN "Distributor"
F 10 "Group_Pot_Alpha_6.35mm" H 1350 2650 50  0001 C CNN "DistributorPartNum"
F 11 "https://www.thonk.co.uk/shop/alpha-9mm-pots/" H 1350 2650 50  0001 C CNN "DistributorPartLink"
F 12 "Mouser" H 1350 2650 50  0001 C CNN "Distributor2"
F 13 "SynthCube" H 1350 2650 50  0001 C CNN "Distributor3"
F 14 "https://www.mouser.ca/c/passive-components/potentiometers-trimmers-rheostats/potentiometers/?q=RD901F&orientation=Vertical" H 1350 2650 50  0001 C CNN "DistributorPartLink2"
F 15 "https://synthcube.com/cart/alpha-9mm-potentiometer-right-angle-pcb-mount-6-35mm-round-shaft" H 1350 2650 50  0001 C CNN "DistributorPartLink3"
F 16 "311-1940F-*" H 1350 2650 50  0001 C CNN "DistributorPartNum2"
F 17 "9MMALPHAPOTMSTR" H 1350 2650 50  0001 C CNN "DistributorPartNum3"
	1    1350 2650
	1    0    0    1   
$EndComp
Wire Wire Line
	1350 2800 1350 2850
$Comp
L Noise-SH:SW_SPST--lmp-synth SW6
U 1 1 60F35C8E
P 1300 2250
F 0 "SW6" H 1300 2575 50  0000 C CNN
F 1 "SPST" H 1300 2484 50  0000 C CNN
F 2 "-lmp-misc:SW_SPST_THT_2.54" H 1300 2250 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/221/MS-100542-1173960.pdf" H 1300 2250 50  0001 C CNN
F 4 "Mountain Switch" H 1300 2250 50  0001 C CNN "Manufacturer"
F 5 "10TC405" H 1300 2250 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 1300 2250 50  0001 C CNN "Distributor"
F 7 "10TC405" H 1300 2250 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Mountain-Switch/10TC405?qs=iZD9pWtnGRc4L7BaVXXEAQ%3D%3D" H 1300 2250 50  0001 C CNN "DistributorPartLink"
F 9 "Int / Ext Trig" H 1350 2400 50  0000 C CNN "Label"
	1    1300 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2250 1050 2250
Wire Wire Line
	950  1450 950  1750
Wire Wire Line
	1100 1450 950  1450
Wire Wire Line
	1500 1550 1550 1550
Wire Wire Line
	1050 1650 1100 1650
$Comp
L Noise-SH:SW_SPDT_ON_ON--lmp-synth SW5
U 1 1 60E2ECA7
P 1300 1550
AR Path="/60E2ECA7" Ref="SW5"  Part="1" 
AR Path="/60E2021A/60E2ECA7" Ref="SW5"  Part="1" 
F 0 "SW5" H 1300 1925 50  0000 C CNN
F 1 "ON_ON" H 1300 1834 50  0000 C CNN
F 2 "-lmp-misc:SW_SPDT_THT_2.54" H 1300 1550 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/221/MS-100542-1173960.pdf" H 1300 1550 50  0001 C CNN
F 4 "White / Pink" H 1300 1743 50  0000 C CNN "Label"
F 5 "Mountain Switch" H 1300 1550 50  0001 C CNN "Manufacturer"
F 6 "10TC410" H 1300 1550 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 1300 1550 50  0001 C CNN "Distributor"
F 8 "10TC410" H 1300 1550 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/Mountain-Switch/10TC410?qs=ITV4B%252BNEbToIZH965UXZQg%3D%3D" H 1300 1550 50  0001 C CNN "DistributorPartLink"
F 10 "Thonk" H 1300 1550 50  0001 C CNN "Distributor2"
F 11 "SynthCube" H 1300 1550 50  0001 C CNN "Distributor3"
F 12 "https://www.thonk.co.uk/shop/sub-mini-toggle-switches/" H 1300 1550 50  0001 C CNN "DistributorPartLink2"
F 13 "https://synthcube.com/cart/toggle-switch-submini-pc-pin" H 1300 1550 50  0001 C CNN "DistributorPartLink3"
	1    1300 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1750 1850 1050 1850
Wire Wire Line
	1500 2650 2050 2650
Wire Wire Line
	1350 2850 2150 2850
Wire Wire Line
	1500 2250 1850 2250
Wire Wire Line
	950  1750 1650 1750
$Comp
L Noise-SH:R_POT_Panel_PCB_Alpha--lmp-synth RV8
U 1 1 61183B05
P 1350 3150
F 0 "RV8" H 1281 3013 50  0000 R CNN
F 1 "1M" H 1281 3104 50  0000 R CNN
F 2 "-lmp-synth:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1350 3150 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/13/alpha_taiwan_08192019_RD901F-40-15R1-B(resistance_-1627810.pdf" H 1350 3150 50  0001 C CNN
F 4 "LOG" H 1281 3195 50  0000 R CNN "Value2"
F 5 "Slew" H 1281 3286 50  0000 R CNN "Label"
F 6 "Alpha" H 1350 3150 50  0001 C CNN "Manufacturer"
F 7 "RD901F-*" H 1350 3150 50  0001 C CNN "ManufacturerPartNum"
F 8 "Thonk" H 1350 3150 50  0001 C CNN "Distributor"
F 9 "Group_Pot_Alpha_6.35mm" H 1350 3150 50  0001 C CNN "DistributorPartNum"
F 10 "https://www.thonk.co.uk/shop/alpha-9mm-pots/" H 1350 3150 50  0001 C CNN "DistributorPartLink"
F 11 "Mouser" H 1350 3150 50  0001 C CNN "Distributor2"
F 12 "SynthCube" H 1350 3150 50  0001 C CNN "Distributor3"
F 13 "https://www.mouser.ca/c/passive-components/potentiometers-trimmers-rheostats/potentiometers/?q=RD901F&orientation=Vertical" H 1350 3150 50  0001 C CNN "DistributorPartLink2"
F 14 "https://synthcube.com/cart/alpha-9mm-potentiometer-right-angle-pcb-mount-6-35mm-round-shaft" H 1350 3150 50  0001 C CNN "DistributorPartLink3"
F 15 "311-1940F-*" H 1350 3150 50  0001 C CNN "DistributorPartNum2"
F 16 "9MMALPHAPOTMSTR" H 1350 3150 50  0001 C CNN "DistributorPartNum3"
	1    1350 3150
	1    0    0    1   
$EndComp
Wire Wire Line
	1350 3000 1350 2950
Wire Wire Line
	1350 2500 1350 2450
Wire Wire Line
	1350 2450 1950 2450
Wire Wire Line
	1350 3300 1350 3350
Text GLabel 4950 3300 2    50   UnSpc ~ 0
LED-TRIG-A
Text GLabel 4950 3200 2    50   UnSpc ~ 0
LED-TRIG-C
Text GLabel 4950 2200 2    50   UnSpc ~ 0
RV-CLOCK-FREQ-1
Text GLabel 4950 2100 2    50   UnSpc ~ 0
RV-CLOCK-FREQ-2
Text GLabel 4950 1600 2    50   BiDi ~ 0
INOUT-TRIG
Text GLabel 4950 1700 2    50   Input ~ 0
OUT-CLOCK-TRIG
Text GLabel 4950 1500 2    50   Output ~ 0
IN-SAMPLE
Text GLabel 4950 1200 2    50   Output ~ 0
NOISE-SELECT
Text GLabel 4950 1300 2    50   Input ~ 0
OUT-NOISE-WHITE
Text GLabel 4950 1100 2    50   Input ~ 0
OUT-NOISE-PINK
$Comp
L Noise-SH:GND--lmp-power #PWR06
U 1 1 60E205DD
P 4700 3450
F 0 "#PWR06" H 4700 3200 50  0001 C CNN
F 1 "GND" H 4705 3277 50  0000 C CNN
F 2 "" H 4700 3450 50  0001 C CNN
F 3 "" H 4700 3450 50  0001 C CNN
	1    4700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1600 4750 1600
Wire Wire Line
	4650 2500 4750 2500
Wire Wire Line
	4650 2200 4950 2200
Wire Wire Line
	4750 1600 4750 2500
Wire Wire Line
	4650 2100 4950 2100
Wire Wire Line
	4650 1500 4950 1500
Wire Wire Line
	4650 1700 4950 1700
Wire Wire Line
	4750 1600 4950 1600
Connection ~ 4750 1600
Wire Wire Line
	4650 1300 4950 1300
Wire Wire Line
	4650 1100 4950 1100
Wire Wire Line
	1050 1100 1050 1650
Wire Wire Line
	1550 1200 1550 1550
Wire Wire Line
	1650 1300 1650 1750
Wire Wire Line
	1350 2950 2250 2950
Wire Wire Line
	1500 3150 2350 3150
Wire Wire Line
	1350 3350 2450 3350
Wire Wire Line
	1350 3450 2550 3450
Wire Wire Line
	1350 3850 2650 3850
Connection ~ 9250 1700
Wire Wire Line
	9250 1700 9550 1700
Connection ~ 9250 1100
Wire Wire Line
	9250 1100 9550 1100
$Comp
L Noise-SH:PWR_FLAG--lmp-power #FLG0102
U 1 1 60E47861
P 9550 1700
F 0 "#FLG0102" H 9550 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 9550 1873 50  0000 C CNN
F 2 "" H 9550 1700 50  0001 C CNN
F 3 "~" H 9550 1700 50  0001 C CNN
	1    9550 1700
	-1   0    0    1   
$EndComp
$Comp
L Noise-SH:PWR_FLAG--lmp-power #FLG0101
U 1 1 60E46A75
P 9550 1100
F 0 "#FLG0101" H 9550 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 9550 1273 50  0000 C CNN
F 2 "" H 9550 1100 50  0001 C CNN
F 3 "~" H 9550 1100 50  0001 C CNN
	1    9550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3400 8500 3400
Connection ~ 8100 3400
Wire Wire Line
	7800 3400 8100 3400
Connection ~ 8500 3100
Wire Wire Line
	7800 3100 8500 3100
Wire Wire Line
	8100 2800 8500 2800
Connection ~ 8100 2800
Wire Wire Line
	7800 2800 8100 2800
Connection ~ 7150 3100
Wire Wire Line
	6450 3100 7150 3100
$Comp
L Noise-SH:GND--lmp-power #PWR011
U 1 1 60E6B187
P 7800 3150
F 0 "#PWR011" H 7800 2900 50  0001 C CNN
F 1 "GND" H 7805 2977 50  0000 C CNN
F 2 "" H 7800 3150 50  0001 C CNN
F 3 "" H 7800 3150 50  0001 C CNN
	1    7800 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+12VA #PWR010
U 1 1 60E70091
P 7800 2700
F 0 "#PWR010" H 7800 2550 50  0001 C CNN
F 1 "+12VA" H 7815 2873 50  0000 C CNN
F 2 "" H 7800 2700 50  0001 C CNN
F 3 "" H 7800 2700 50  0001 C CNN
	1    7800 2700
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:TL072--lmp-opamp U2
U 3 1 60E82BE4
P 8200 3100
F 0 "U2" H 8158 3146 50  0000 L CNN
F 1 "TL072" H 8158 3055 50  0000 L CNN
F 2 "-lmp-misc:DIP-8_W7.62mm_LongPads" H 8200 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8200 3100 50  0001 C CNN
	3    8200 3100
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:CC_100N--lmp C6
U 1 1 60EA094A
P 8500 2950
F 0 "C6" H 8615 2996 50  0000 L CNN
F 1 "100N" H 8615 2905 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8538 2800 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fg_en.pdf" H 8500 2950 50  0001 C CNN
F 4 "TDK" H 8500 2950 50  0001 C CNN "Manufacturer"
F 5 "FG18X7R1H104KNT06" H 8500 2950 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8500 2950 50  0001 C CNN "Distributor"
F 7 "810-FG18X7R1H104KNT6" H 8500 2950 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 8500 2950 50  0001 C CNN "DistributorPartLink"
F 9 "IC decoupling" H 8500 2950 50  0001 C CNN "Note"
	1    8500 2950
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:CC_100N--lmp C7
U 1 1 60EA0950
P 8500 3250
F 0 "C7" H 8615 3296 50  0000 L CNN
F 1 "100N" H 8615 3205 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8538 3100 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fg_en.pdf" H 8500 3250 50  0001 C CNN
F 4 "TDK" H 8500 3250 50  0001 C CNN "Manufacturer"
F 5 "FG18X7R1H104KNT06" H 8500 3250 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8500 3250 50  0001 C CNN "Distributor"
F 7 "810-FG18X7R1H104KNT6" H 8500 3250 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 8500 3250 50  0001 C CNN "DistributorPartLink"
F 9 "IC decoupling" H 8500 3250 50  0001 C CNN "Note"
	1    8500 3250
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:CC_100N--lmp C5
U 1 1 60E8BD91
P 7150 3250
F 0 "C5" H 7265 3296 50  0000 L CNN
F 1 "100N" H 7265 3205 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7188 3100 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fg_en.pdf" H 7150 3250 50  0001 C CNN
F 4 "TDK" H 7150 3250 50  0001 C CNN "Manufacturer"
F 5 "FG18X7R1H104KNT06" H 7150 3250 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7150 3250 50  0001 C CNN "Distributor"
F 7 "810-FG18X7R1H104KNT6" H 7150 3250 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 7150 3250 50  0001 C CNN "DistributorPartLink"
F 9 "IC decoupling" H 7150 3250 50  0001 C CNN "Note"
	1    7150 3250
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:CC_100N--lmp C4
U 1 1 60E8B4DE
P 7150 2950
F 0 "C4" H 7265 2996 50  0000 L CNN
F 1 "100N" H 7265 2905 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7188 2800 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fg_en.pdf" H 7150 2950 50  0001 C CNN
F 4 "TDK" H 7150 2950 50  0001 C CNN "Manufacturer"
F 5 "FG18X7R1H104KNT06" H 7150 2950 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7150 2950 50  0001 C CNN "Distributor"
F 7 "810-FG18X7R1H104KNT6" H 7150 2950 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 7150 2950 50  0001 C CNN "DistributorPartLink"
F 9 "IC decoupling" H 7150 2950 50  0001 C CNN "Note"
	1    7150 2950
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:TL074--lmp-opamp U4
U 5 1 60E8AF46
P 6850 3100
F 0 "U4" H 6808 3146 50  0000 L CNN
F 1 "TL074" H 6808 3055 50  0000 L CNN
F 2 "-lmp-misc:DIP-14_W7.62mm_LongPads" H 6800 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6900 3300 50  0001 C CNN
	5    6850 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+12VA #PWR016
U 1 1 60FA3688
P 9250 1000
F 0 "#PWR016" H 9250 850 50  0001 C CNN
F 1 "+12VA" H 9265 1173 50  0000 C CNN
F 2 "" H 9250 1000 50  0001 C CNN
F 3 "" H 9250 1000 50  0001 C CNN
	1    9250 1000
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:-12V--lmp-power #PWR09
U 1 1 60E5D3C2
P 6450 3500
F 0 "#PWR09" H 6450 3650 50  0001 C CNN
F 1 "-12V" H 6465 3327 50  0000 C CNN
F 2 "" H 6450 3500 50  0001 C CNN
F 3 "" H 6450 3500 50  0001 C CNN
	1    6450 3500
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:GND--lmp-power #PWR08
U 1 1 60E5D3BA
P 6450 3150
F 0 "#PWR08" H 6450 2900 50  0001 C CNN
F 1 "GND" H 6455 2977 50  0000 C CNN
F 2 "" H 6450 3150 50  0001 C CNN
F 3 "" H 6450 3150 50  0001 C CNN
	1    6450 3150
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:+12V--lmp-power #PWR07
U 1 1 60E5D3B4
P 6450 2700
F 0 "#PWR07" H 6450 2550 50  0001 C CNN
F 1 "+12V" H 6465 2873 50  0000 C CNN
F 2 "" H 6450 2700 50  0001 C CNN
F 3 "" H 6450 2700 50  0001 C CNN
	1    6450 2700
	1    0    0    -1  
$EndComp
Text Notes 7650 2250 0    50   ~ 0
The power lines to the noise amp section are filtered \nseparately to avoid interference from the S&H trigger.
Wire Wire Line
	9250 1700 9250 1800
Wire Wire Line
	9250 1100 9250 1000
$Comp
L Noise-SH:PWR_FLAG--lmp-power #FLG04
U 1 1 60C8985D
P 7650 1100
F 0 "#FLG04" H 7650 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 7650 1273 50  0000 C CNN
F 2 "" H 7650 1100 50  0001 C CNN
F 3 "~" H 7650 1100 50  0001 C CNN
	1    7650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1100 7950 1100
Wire Wire Line
	8400 1100 8550 1100
Connection ~ 7950 1400
Connection ~ 8550 1400
Wire Wire Line
	8550 1400 7950 1400
Wire Wire Line
	8400 1700 8550 1700
Connection ~ 7950 1700
Wire Wire Line
	7950 1700 8100 1700
$Comp
L Noise-SH:CP_10U--lmp-synth C11
U 1 1 60E3F037
P 8550 1550
F 0 "C11" H 8668 1596 50  0000 L CNN
F 1 "10U" H 8668 1505 50  0000 L CNN
F 2 "-lmp-misc:CP_Radial_D4.0mm_P2.50mm" H 8588 1400 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1209.pdf" H 8550 1550 50  0001 C CNN
F 4 "Panasonic" H 8550 1550 50  0001 C CNN "Manufacturer"
F 5 "EEA-FC1E100" H 8550 1550 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8550 1550 50  0001 C CNN "Distributor"
F 7 "667-EEA-FC1E100" H 8550 1550 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Panasonic/EEA-FC1E100?qs=nLJruSqDb94EJwiFQJd4iw%3D%3D" H 8550 1550 50  0001 C CNN "DistributorPartLink"
F 9 "12 V decoupling" H 8550 1550 50  0001 C CNN "Note "
F 10 "25 VDC" H 8550 1550 50  0001 C CNN "Value2"
	1    8550 1550
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:CP_10U--lmp-synth C10
U 1 1 60E3E7EC
P 8550 1250
F 0 "C10" H 8668 1296 50  0000 L CNN
F 1 "10U" H 8668 1205 50  0000 L CNN
F 2 "-lmp-misc:CP_Radial_D4.0mm_P2.50mm" H 8588 1100 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1209.pdf" H 8550 1250 50  0001 C CNN
F 4 "Panasonic" H 8550 1250 50  0001 C CNN "Manufacturer"
F 5 "EEA-FC1E100" H 8550 1250 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8550 1250 50  0001 C CNN "Distributor"
F 7 "667-EEA-FC1E100" H 8550 1250 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Panasonic/EEA-FC1E100?qs=nLJruSqDb94EJwiFQJd4iw%3D%3D" H 8550 1250 50  0001 C CNN "DistributorPartLink"
F 9 "12 V decoupling" H 8550 1250 50  0001 C CNN "Note "
F 10 "25 VDC" H 8550 1250 50  0001 C CNN "Value2"
	1    8550 1250
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:R--lmp R2
U 1 1 60E3E434
P 8250 1700
F 0 "R2" V 8043 1700 50  0000 C CNN
F 1 "10R" V 8134 1700 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_2" V 8180 1700 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 8250 1700 50  0001 C CNN
F 4 "Mouser" H 8250 1700 50  0001 C CNN "Manufacturer"
F 5 "MFR-25FTF52-10R" H 8250 1700 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8250 1700 50  0001 C CNN "Distributor"
F 7 "603-MFR-25FTF52-10R" H 8250 1700 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-25FTF52-10R?qs=sGAEpiMZZMsPqMdJzcrNwq9WDdhxcQOn9tt%2FVep99Mg%3D" H 8250 1700 50  0001 C CNN "DistributorPartLink"
	1    8250 1700
	0    1    1    0   
$EndComp
$Comp
L Noise-SH:R--lmp R1
U 1 1 60E3DDAE
P 8250 1100
F 0 "R1" V 8043 1100 50  0000 C CNN
F 1 "10R" V 8134 1100 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_2" V 8180 1100 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 8250 1100 50  0001 C CNN
F 4 "YAGEO" H 8250 1100 50  0001 C CNN "Manufacturer"
F 5 "MFR-25FTF52-10R" H 8250 1100 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8250 1100 50  0001 C CNN "Distributor"
F 7 "603-MFR-25FTF52-10R" H 8250 1100 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-25FTF52-10R?qs=sGAEpiMZZMsPqMdJzcrNwq9WDdhxcQOn9tt%2FVep99Mg%3D" H 8250 1100 50  0001 C CNN "DistributorPartLink"
	1    8250 1100
	0    1    1    0   
$EndComp
$Comp
L power:-12VA #PWR017
U 1 1 60FA3AFC
P 9250 1800
F 0 "#PWR017" H 9250 1650 50  0001 C CNN
F 1 "-12VA" H 9265 1973 50  0000 C CNN
F 2 "" H 9250 1800 50  0001 C CNN
F 3 "" H 9250 1800 50  0001 C CNN
	1    9250 1800
	-1   0    0    1   
$EndComp
Text Notes 5950 700  0    50   ~ 10
Power
$Comp
L Noise-SH:-12V--lmp-power #PWR015
U 1 1 60C864E4
P 7950 1800
F 0 "#PWR015" H 7950 1950 50  0001 C CNN
F 1 "-12V" H 7965 1627 50  0000 C CNN
F 2 "" H 7950 1800 50  0001 C CNN
F 3 "" H 7950 1800 50  0001 C CNN
	1    7950 1800
	1    0    0    -1  
$EndComp
Connection ~ 7950 1100
Wire Wire Line
	8100 1100 7950 1100
Wire Wire Line
	6950 1400 6450 1400
Wire Wire Line
	6450 1400 6450 1300
Wire Wire Line
	6450 1300 6450 1200
Connection ~ 6450 1300
Connection ~ 6950 1400
$Comp
L Noise-SH:PWR_FLAG--lmp-power #FLG01
U 1 1 60E205CC
P 6450 1100
F 0 "#FLG01" H 6450 1175 50  0001 C CNN
F 1 "PWR_FLAG" V 6450 1227 50  0000 L CNN
F 2 "" H 6450 1100 50  0001 C CNN
F 3 "~" H 6450 1100 50  0001 C CNN
	1    6450 1100
	0    -1   -1   0   
$EndComp
$Comp
L Noise-SH:PWR_FLAG--lmp-power #FLG02
U 1 1 60E205CD
P 6450 1300
F 0 "#FLG02" H 6450 1375 50  0001 C CNN
F 1 "PWR_FLAG" V 6450 1427 50  0000 L CNN
F 2 "" H 6450 1300 50  0001 C CNN
F 3 "~" H 6450 1300 50  0001 C CNN
	1    6450 1300
	0    -1   -1   0   
$EndComp
$Comp
L Noise-SH:PWR_FLAG--lmp-power #FLG03
U 1 1 60E205CE
P 6450 1500
F 0 "#FLG03" H 6450 1575 50  0001 C CNN
F 1 "PWR_FLAG" V 6450 1627 50  0000 L CNN
F 2 "" H 6450 1500 50  0001 C CNN
F 3 "~" H 6450 1500 50  0001 C CNN
	1    6450 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 1500 7000 1700
Wire Wire Line
	7000 1700 7050 1700
$Comp
L Noise-SH:MBR150--lmp-diode D1
U 1 1 60E205CF
P 7200 1700
F 0 "D1" H 7200 1917 50  0000 C CNN
F 1 "MBR150" H 7200 1826 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 7200 1700 50  0001 C CNN
F 3 "https://www.onsemi.com/pdf/datasheet/mbr150-d.pdf" H 7200 1700 50  0001 C CNN
F 4 "On Semi" H 7200 1700 50  0001 C CNN "Manufacturer"
F 5 "MBR150RLG" H 7200 1700 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7200 1700 50  0001 C CNN "Distributor"
F 7 "863-MBR150RLG" H 7200 1700 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/ON-Semiconductor/MBR150RLG?qs=3JMERSakebpMUdfDTQP0Kw%3D%3D" H 7200 1700 50  0001 C CNN "DistributorPartLink"
	1    7200 1700
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:MBR150--lmp-diode D2
U 1 1 60E205D0
P 7200 1100
F 0 "D2" H 7200 1317 50  0000 C CNN
F 1 "MBR150" H 7200 1226 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 7200 1100 50  0001 C CNN
F 3 "https://www.onsemi.com/pdf/datasheet/mbr150-d.pdf" H 7200 1100 50  0001 C CNN
F 4 "On Semi" H 7200 1100 50  0001 C CNN "Manufacturer"
F 5 "MBR150RLG" H 7200 1100 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7200 1100 50  0001 C CNN "Distributor"
F 7 "863-MBR150RLG" H 7200 1100 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/ON-Semiconductor/MBR150RLG?qs=3JMERSakebpMUdfDTQP0Kw%3D%3D" H 7200 1100 50  0001 C CNN "DistributorPartLink"
	1    7200 1100
	-1   0    0    -1  
$EndComp
$Comp
L Noise-SH:CP_10U--lmp-synth C2
U 1 1 60E205D1
P 7500 1250
F 0 "C2" H 7618 1296 50  0000 L CNN
F 1 "10U" H 7618 1205 50  0000 L CNN
F 2 "-lmp-misc:CP_Radial_D4.0mm_P2.50mm" H 7538 1100 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1209.pdf" H 7500 1250 50  0001 C CNN
F 4 "Panasonic" H 7500 1250 50  0001 C CNN "Manufacturer"
F 5 "EEA-FC1E100" H 7500 1250 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7500 1250 50  0001 C CNN "Distributor"
F 7 "667-EEA-FC1E100" H 7500 1250 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Panasonic/EEA-FC1E100?qs=nLJruSqDb94EJwiFQJd4iw%3D%3D" H 7500 1250 50  0001 C CNN "DistributorPartLink"
F 9 "12 V decoupling" H 7500 1250 50  0001 C CNN "Note "
F 10 "25 VDC" H 7500 1250 50  0001 C CNN "Value2"
	1    7500 1250
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:CP_10U--lmp-synth C1
U 1 1 60E205D2
P 7500 1550
F 0 "C1" H 7618 1596 50  0000 L CNN
F 1 "10U" H 7618 1505 50  0000 L CNN
F 2 "-lmp-misc:CP_Radial_D4.0mm_P2.50mm" H 7538 1400 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1209.pdf" H 7500 1550 50  0001 C CNN
F 4 "Panasonic" H 7500 1550 50  0001 C CNN "Manufacturer"
F 5 "EEA-FC1E100" H 7500 1550 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7500 1550 50  0001 C CNN "Distributor"
F 7 "667-EEA-FC1E100" H 7500 1550 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Panasonic/EEA-FC1E100?qs=nLJruSqDb94EJwiFQJd4iw%3D%3D" H 7500 1550 50  0001 C CNN "DistributorPartLink"
F 9 "12 V decoupling" H 7500 1550 50  0001 C CNN "Note "
F 10 "25 VDC" H 7500 1550 50  0001 C CNN "Value2"
	1    7500 1550
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:GND--lmp-power #PWR014
U 1 1 60C80BF1
P 7950 1450
F 0 "#PWR014" H 7950 1200 50  0001 C CNN
F 1 "GND" H 7955 1277 50  0000 C CNN
F 2 "" H 7950 1450 50  0001 C CNN
F 3 "" H 7950 1450 50  0001 C CNN
	1    7950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1100 7500 1100
Connection ~ 7500 1100
Wire Wire Line
	6950 1400 7500 1400
Connection ~ 7500 1400
Wire Wire Line
	7350 1700 7500 1700
Connection ~ 7500 1700
$Comp
L Noise-SH:+12V--lmp-power #PWR013
U 1 1 60E205D4
P 7950 1000
F 0 "#PWR013" H 7950 850 50  0001 C CNN
F 1 "+12V" H 7965 1173 50  0000 C CNN
F 2 "" H 7950 1000 50  0001 C CNN
F 3 "" H 7950 1000 50  0001 C CNN
	1    7950 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1100 7950 1000
Wire Wire Line
	7950 1400 7950 1450
Wire Wire Line
	7950 1800 7950 1700
$Comp
L Noise-SH:PWR_FLAG--lmp-power #FLG05
U 1 1 60C89F71
P 7650 1700
F 0 "#FLG05" H 7650 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 7650 1873 50  0000 C CNN
F 2 "" H 7650 1700 50  0001 C CNN
F 3 "~" H 7650 1700 50  0001 C CNN
	1    7650 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7500 1100 7650 1100
Wire Wire Line
	7500 1700 7650 1700
Connection ~ 7650 1100
Connection ~ 7650 1700
Wire Wire Line
	7650 1700 7950 1700
Wire Wire Line
	7500 1400 7950 1400
Wire Wire Line
	1050 1100 3350 1100
Wire Wire Line
	1550 1200 3350 1200
Wire Wire Line
	1650 1300 3350 1300
Wire Wire Line
	3350 1600 1750 1600
Wire Wire Line
	1750 1600 1750 1850
Wire Wire Line
	1850 2250 1850 1700
Wire Wire Line
	1850 1700 3350 1700
Wire Wire Line
	3350 2100 1950 2100
Wire Wire Line
	1950 2100 1950 2450
Wire Wire Line
	3350 2200 2050 2200
Wire Wire Line
	2050 2200 2050 2650
Wire Wire Line
	3350 2300 2150 2300
Wire Wire Line
	2150 2300 2150 2850
Wire Wire Line
	2250 2600 2250 2950
Wire Wire Line
	2250 2600 3350 2600
Wire Wire Line
	2350 2700 2350 3150
Wire Wire Line
	2450 2800 2450 3350
Wire Wire Line
	2450 2800 3350 2800
Wire Wire Line
	2550 3200 2550 3450
Wire Wire Line
	2550 3200 3350 3200
Wire Wire Line
	2650 3300 2650 3850
Wire Wire Line
	2650 3300 3350 3300
Wire Wire Line
	2350 2700 3350 2700
Wire Wire Line
	2850 4150 2850 1500
Wire Wire Line
	2950 2000 3350 2000
Wire Wire Line
	3050 2500 3050 5350
Wire Wire Line
	3050 5350 1500 5350
Wire Wire Line
	3050 2500 3350 2500
Wire Wire Line
	1500 5950 3150 5950
Wire Wire Line
	3150 5950 3150 3000
Text GLabel 4950 2800 2    50   UnSpc ~ 0
RV-SLEW-1
Text GLabel 4950 2700 2    50   UnSpc ~ 0
RV-SLEW-2
Wire Wire Line
	4750 2700 4750 2600
Wire Wire Line
	4750 2600 4650 2600
Connection ~ 4750 2700
Wire Wire Line
	4750 2700 4650 2700
Wire Wire Line
	2950 2000 2950 4750
Wire Wire Line
	2850 1500 3350 1500
Wire Wire Line
	1500 4150 2850 4150
Wire Wire Line
	1500 4050 2750 4050
Wire Wire Line
	2750 4050 2750 1400
Wire Wire Line
	2750 1400 3350 1400
Wire Wire Line
	1500 4750 2950 4750
NoConn ~ 3350 1900
Wire Wire Line
	4650 1400 4850 1400
NoConn ~ 4650 1900
Wire Wire Line
	4650 1200 4950 1200
Text GLabel 4950 3000 2    50   Output ~ 0
OUT-NOISE
Wire Wire Line
	6450 3400 6750 3400
Wire Wire Line
	6450 2800 6750 2800
Connection ~ 6750 3400
Wire Wire Line
	6750 3400 7150 3400
Connection ~ 6750 2800
Wire Wire Line
	6750 2800 7150 2800
$Comp
L Noise-SH:CC_100N--lmp C3
U 1 1 6126B150
P 9000 1400
F 0 "C3" H 9115 1446 50  0000 L CNN
F 1 "100N" H 9115 1355 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9038 1250 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fg_en.pdf" H 8975 1250 50  0001 C CNN
F 4 "IC decoupling" H 9025 1200 50  0001 L CNN "Note"
F 5 "TDK" H 9000 1400 50  0001 C CNN "Manufacturer"
F 6 "FG18X7R1H104KNT06" H 9000 1400 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 9000 1400 50  0001 C CNN "Distributor"
F 8 "810-FG18X7R1H104KNT6" H 9000 1400 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 9000 1400 50  0001 C CNN "DistributorPartLink"
	1    9000 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1100 9000 1100
Connection ~ 8550 1100
Connection ~ 9000 1100
Wire Wire Line
	9000 1100 9250 1100
Connection ~ 8550 1700
Wire Wire Line
	8550 1700 9000 1700
Wire Wire Line
	9000 1700 9000 1550
Wire Wire Line
	9000 1250 9000 1100
Connection ~ 9000 1700
Wire Wire Line
	9000 1700 9250 1700
Text GLabel 4950 2000 2    50   Input ~ 0
OUT-HOLD
Wire Wire Line
	4750 2700 4950 2700
Wire Wire Line
	4650 2800 4950 2800
Wire Wire Line
	4650 2000 4950 2000
Wire Wire Line
	4650 3200 4950 3200
Wire Wire Line
	4650 3300 4950 3300
Wire Wire Line
	4850 3000 4650 3000
Wire Wire Line
	4850 1400 4850 3000
NoConn ~ 4650 2300
Wire Wire Line
	4950 3000 4850 3000
Connection ~ 4850 3000
Text Notes 3250 4150 0    50   ~ 0
IN-SAMPLE is normalled from OUT-NOISE.
$Comp
L Noise-SH:PCB_Delptronics_MCS_4HP--lmp-synth H1
U 1 1 61B16299
P 6650 4850
F 0 "H1" H 6978 4941 50  0000 L CNN
F 1 "PCB_Delptronics_MCS_4HP" H 6978 4850 50  0000 L CNN
F 2 "-lmp-misc:NoFootprint" H 6650 4850 50  0001 C CNN
F 3 "https://delptronics.com/module-construction-set.php" H 6650 5340 50  0001 C CNN
F 4 "Delptronics" H 6650 4850 50  0001 C CNN "Manufacturer"
F 5 "Delptronics" H 6650 4850 50  0001 C CNN "Distributor"
F 6 "https://delptronics.com/module-construction-set.php" H 6650 4850 50  0001 C CNN "DistributorPartLink"
F 7 "synthCube" H 6650 4850 50  0001 C CNN "Distributor2"
F 8 "DELPMCSMSTR" H 6650 4850 50  0001 C CNN "DistributorPartNum2"
F 9 "https://synthcube.com/cart/delptronics-module-construction-set" H 6650 4850 50  0001 C CNN "DistributorPartLink2"
F 10 "Modular Addict" H 6650 4850 50  0001 C CNN "Distributor3"
F 11 "https://modularaddict.com/module-construction-set-eurorack-prototype-development-platform-delptronics" H 6650 4850 50  0001 C CNN "DistributorPartLink3"
F 12 "PCB & panel kit" H 6978 4759 50  0000 L CNN "Note"
	1    6650 4850
	1    0    0    -1  
$EndComp
Connection ~ 6950 1100
Wire Wire Line
	6950 1100 7050 1100
Connection ~ 6950 1500
Wire Wire Line
	6950 1500 7000 1500
Wire Wire Line
	6950 1500 6450 1500
Connection ~ 6950 1300
Wire Wire Line
	6950 1300 6950 1200
Wire Wire Line
	6950 1400 6950 1300
Connection ~ 6450 1100
Connection ~ 6450 1400
Connection ~ 6450 1500
Wire Wire Line
	6950 1100 6450 1100
$Comp
L Noise-SH:Conn_Delptronics_Pwr_Hdr_10--lmp-synth J11
U 1 1 60E205CB
P 6650 1300
F 0 "J11" H 6700 1725 50  0000 C CNN
F 1 "Eurorack_10" H 6700 1634 50  0000 C CNN
F 2 "-lmp-synth:PinHeader-Eurorack-10-TH" H 6750 1300 50  0001 C CNN
F 3 "~" H 6750 1300 50  0001 C CNN
F 4 "NoPart" H 6650 1300 50  0001 C CNN "NoPart"
F 5 "part of Delptronics Module Constrution Set" H 6650 1300 50  0001 C CNN "Note"
	1    6650 1300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
