EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 3 3
Title "Controls, Connectors & Power - Eurorack Audiout Module"
Date "2021-11-30"
Rev "1.2"
Comp "Len Popp"
Comment1 "Copyright © 2021 Len Popp CC BY"
Comment2 "Stereo headphone and balanced line outputs with level controls, 4 HP"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 550  9600 0    50   ~ 0
All fixed resistors are 1% tolerance unless otherwise specified.\nAll electrolytic capacitors are rated 25 VDC max.
Wire Wire Line
	5250 7850 5250 7950
$Comp
L -lmp-power:+5V #PWR0117
U 1 1 60C927A4
P 5250 7850
F 0 "#PWR0117" H 5250 7700 50  0001 C CNN
F 1 "+5V" H 5265 8023 50  0000 C CNN
F 2 "" H 5250 7850 50  0001 C CNN
F 3 "" H 5250 7850 50  0001 C CNN
	1    5250 7850
	1    0    0    -1  
$EndComp
Text Notes 550  10500 0    50   ~ 0
This work is licensed under the Creative Commons Attribution \n4.0 International License.\nTo view a copy of this license, visit \nhttp://creativecommons.org/licenses/by/4.0/\nor send a letter to Creative Commons, PO Box 1866, \nMountain View, CA 94042, USA.
$Comp
L -lmp:Logo_CC_BY G4
U 1 1 60CEEC3E
P 3200 10400
F 0 "G4" H 3200 10337 60  0001 C CNN
F 1 "Logo_CC_BY" H 3200 10463 60  0001 C CNN
F 2 "-lmp-misc:Logo_CC_BY" H 3200 10400 50  0001 C CNN
F 3 "https://creativecommons.org/licenses/by/4.0/" H 3200 10400 50  0001 C CNN
F 4 "NoPart" H 3200 10400 50  0001 C CNN "NoPart"
	1    3200 10400
	1    0    0    -1  
$EndComp
$Comp
L -lmp-synth:LM4808 U4
U 3 1 60F8E9F7
P 5850 8250
F 0 "U4" H 5808 8296 50  0000 L CNN
F 1 "LM4808" H 5808 8205 50  0000 L CNN
F 2 "-lmp-breakout:Breakout_DIP-8_W7.62mm" H 5850 8250 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/lm4808.pdf" H 5850 8250 50  0001 C CNN
	3    5850 8250
	1    0    0    -1  
$EndComp
$Comp
L -lmp:CC_100N C6
U 1 1 60F97F01
P 6250 8250
F 0 "C6" H 6365 8296 50  0000 L CNN
F 1 "100N" H 6365 8205 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6288 8100 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fg_en.pdf" H 6250 8250 50  0001 C CNN
F 4 "TDK" H 6250 8250 50  0001 C CNN "Manufacturer"
F 5 "FG18X7R1H104KNT06" H 6250 8250 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 6250 8250 50  0001 C CNN "Distributor"
F 7 "810-FG18X7R1H104KNT6" H 6250 8250 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 6250 8250 50  0001 C CNN "DistributorPartLink"
F 9 "IC decoupling" H 6250 8250 50  0001 C CNN "Note"
	1    6250 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 7950 6250 8100
Wire Wire Line
	5750 7950 6250 7950
Wire Wire Line
	6250 8400 6250 8550
Wire Wire Line
	5750 8550 6250 8550
$Comp
L -lmp:Logo_OSHW G3
U 1 1 61A89092
P 3250 10000
F 0 "G3" H 3250 9808 60  0001 C CNN
F 1 "Logo_OSHW" H 3250 10192 60  0001 C CNN
F 2 "-lmp-misc:Logo_OSHW" H 3250 10000 50  0001 C CNN
F 3 "https://www.oshwa.org/definition/" H 3250 10000 50  0001 C CNN
F 4 "NoPart" H 3250 10000 50  0001 C CNN "NoPart"
	1    3250 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 7950 5350 7950
$Comp
L -lmp-synth:CP_10U C3
U 1 1 61B56E39
P 5350 8250
F 0 "C3" H 5468 8296 50  0000 L CNN
F 1 "10U" H 5468 8205 50  0000 L CNN
F 2 "-lmp-misc:CP_Radial_D4.0mm_P2.50mm" H 5388 8100 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1209.pdf" H 5350 8250 50  0001 C CNN
F 4 "Panasonic" H 5350 8250 50  0001 C CNN "Manufacturer"
F 5 "EEA-FC1E100" H 5350 8250 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 5350 8250 50  0001 C CNN "Distributor"
F 7 "667-EEA-FC1E100" H 5350 8250 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Panasonic/EEA-FC1E100?qs=nLJruSqDb94EJwiFQJd4iw%3D%3D" H 5350 8250 50  0001 C CNN "DistributorPartLink"
F 9 "12 V decoupling" H 5350 8250 50  0001 C CNN "Note "
F 10 "25 VDC" H 5350 8250 50  0001 C CNN "Value2"
	1    5350 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 8550 5350 8550
Wire Wire Line
	5350 8550 5350 8400
Wire Wire Line
	5350 8100 5350 7950
Connection ~ 5750 8550
Wire Wire Line
	5350 7950 5750 7950
Connection ~ 5350 7950
Connection ~ 5750 7950
Wire Wire Line
	5350 8550 5250 8550
Wire Wire Line
	5250 8550 5250 8650
Connection ~ 5350 8550
$Comp
L -lmp-power:GND #PWR0106
U 1 1 61B798CD
P 5250 8650
F 0 "#PWR0106" H 5250 8400 50  0001 C CNN
F 1 "GND" H 5255 8477 50  0000 C CNN
F 2 "" H 5250 8650 50  0001 C CNN
F 3 "" H 5250 8650 50  0001 C CNN
	1    5250 8650
	1    0    0    -1  
$EndComp
Text Notes 3950 900  0    50   ~ 10
Board Connectors
Text Notes 800  900  0    50   ~ 10
Front Panel
Text GLabel 4950 2700 2    50   Output ~ 0
LINE-ATTEN-LEFT
Text GLabel 4950 1700 2    50   Output ~ 0
IN-RIGHT
Text GLabel 4950 3200 2    50   Input ~ 0
OUT-LINE-RIGHT-NEG
Text GLabel 4950 3100 2    50   Input ~ 0
OUT-LINE-RIGHT-POS
Text GLabel 4950 2800 2    50   Input ~ 0
OUT-LINE-LEFT-NEG
Text GLabel 4950 2900 2    50   Input ~ 0
OUT-LINE-LEFT-POS
$Comp
L -lmp-power:GND #PWR09
U 1 1 60DC5653
P 4900 3400
F 0 "#PWR09" H 4900 3150 50  0001 C CNN
F 1 "GND" H 4905 3227 50  0000 C CNN
F 2 "" H 4900 3400 50  0001 C CNN
F 3 "" H 4900 3400 50  0001 C CNN
	1    4900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3400 4900 3300
Text GLabel 4950 1600 2    50   Output ~ 0
IN-LEFT
Text GLabel 4950 2100 2    50   Output ~ 0
PHONES-ATTEN-LEFT
NoConn ~ 4850 2200
Text GLabel 4950 3000 2    50   Output ~ 0
LINE-ATTEN-RIGHT
Text GLabel 4950 2300 2    50   Input ~ 0
LINE-LEFT
Text GLabel 4950 2500 2    50   Input ~ 0
OUT-PHONES-LEFT
Text GLabel 4950 2600 2    50   Input ~ 0
OUT-PHONES-RIGHT
Text GLabel 4950 2400 2    50   Input ~ 0
LINE-RIGHT
Text GLabel 4950 1800 2    50   Input ~ 0
PHONES-LEFT
Text GLabel 4950 1900 2    50   Input ~ 0
PHONES-RIGHT
Text GLabel 4950 2000 2    50   Output ~ 0
PHONES-ATTEN-RIGHT
Wire Wire Line
	1450 2750 1450 2700
Wire Wire Line
	1450 3250 1450 3200
Wire Wire Line
	1450 3050 1450 3100
Wire Wire Line
	1450 3550 1450 3600
Wire Wire Line
	1450 4650 1450 4700
Wire Wire Line
	1450 4350 1450 4300
Wire Wire Line
	1450 4850 1450 4800
Wire Wire Line
	1450 5150 1450 5200
$Comp
L -lmp-synth:R_POT_Dual_Panel_PCB_Alpha RV2
U 1 1 60D9D941
P 1550 4750
F 0 "RV2" V 1413 4563 50  0000 R CNN
F 1 "100K" V 1504 4563 50  0000 R CNN
F 2 "-lmp-synth:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 1800 4675 50  0001 C CNN
F 3 "https://www.thonk.co.uk/wp-content/uploads/Documents/alpha/9mm/DUAL%20GANG%20-%20RD902F-40-15R1-A50K-0057.pdf" H 1800 4675 50  0001 C CNN
F 4 "LOG" V 1595 4563 50  0000 R CNN "Value2"
F 5 "LEVEL-OUT" V 1686 4563 50  0000 R CNN "Label"
F 6 "Alpha" H 1550 4750 50  0001 C CNN "Manufacturer"
F 7 "RD902F-*" H 1550 4750 50  0001 C CNN "ManufacturerPartNum"
F 8 "Thonk" H 1550 4750 50  0001 C CNN "Distributor"
F 9 "Group_Pot_Alpha_6.35mm" H 1550 4750 50  0001 C CNN "DistributorPartNum"
F 10 "https://www.thonk.co.uk/shop/alpha-9mm-pots/" H 1550 4750 50  0001 C CNN "DistributorPartLink"
	1    1550 4750
	0    1    1    0   
$EndComp
$Comp
L -lmp-synth:R_POT_Dual_Panel_PCB_Alpha RV1
U 1 1 60D8DB0E
P 1550 3150
F 0 "RV1" V 1413 2962 50  0000 R CNN
F 1 "100K" V 1504 2962 50  0000 R CNN
F 2 "-lmp-synth:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 1800 3075 50  0001 C CNN
F 3 "https://www.thonk.co.uk/wp-content/uploads/Documents/alpha/9mm/DUAL%20GANG%20-%20RD902F-40-15R1-A50K-0057.pdf" H 1800 3075 50  0001 C CNN
F 4 "LOG" V 1595 2962 50  0000 R CNN "Value2"
F 5 "LEVEL-PHONES" V 1686 2962 50  0000 R CNN "Label"
F 6 "Alpha" H 1550 3150 50  0001 C CNN "Manufacturer"
F 7 "RD902F-*" H 1550 3150 50  0001 C CNN "ManufacturerPartNum"
F 8 "Thonk" H 1550 3150 50  0001 C CNN "Distributor"
F 9 "Group_Pot_Alpha_6.35mm" H 1550 3150 50  0001 C CNN "DistributorPartNum"
F 10 "https://www.thonk.co.uk/shop/alpha-9mm-pots/" H 1550 3150 50  0001 C CNN "DistributorPartLink"
	1    1550 3150
	0    1    1    0   
$EndComp
$Comp
L -lmp-synth:Jack_WQP-PJ398 J1
U 1 1 60CB8A0C
P 1450 1700
AR Path="/60CB8A0C" Ref="J1"  Part="1" 
AR Path="/60CBFB6A/60CB8A0C" Ref="J1"  Part="1" 
F 0 "J1" H 1270 1588 50  0000 R CNN
F 1 "WQP-PJ398" H 1270 1679 50  0000 R CNN
F 2 "-lmp-synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 1450 1700 50  0001 C CNN
F 3 "http://www.qingpu-electronics.com/en/products/WQP-PJ398SM-362.html" H 1450 1700 50  0001 C CNN
F 4 "IN-LEFT" H 1270 1770 50  0000 R CNN "Label"
F 5 "QingPu / Thonk" H 1450 1700 50  0001 C CNN "Manufacturer"
F 6 "PJ398SM / WQP518MA" H 1450 1700 50  0001 C CNN "ManufacturerPartNum"
F 7 "Thonk" H 1450 1700 50  0001 C CNN "Distributor"
F 8 "PJ398SM" H 1450 1700 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 1450 1700 50  0001 C CNN "DistributorPartLink"
F 10 "SynthCube" H 1450 1700 50  0001 C CNN "Distributor2"
F 11 "Adafruit" H 1450 1700 50  0001 C CNN "Distributor3"
F 12 "https://synthcube.com/cart/3-5mm-euro-jacks" H 1450 1700 50  0001 C CNN "DistributorPartLink2"
F 13 "https://www.adafruit.com/product/4031" H 1450 1700 50  0001 C CNN "DistributorPartLink3"
F 14 "WQP518MA" H 1450 1700 50  0001 C CNN "DistributorPartNum2"
F 15 "4031" H 1450 1700 50  0001 C CNN "DistributorPartNum3"
	1    1450 1700
	1    0    0    1   
$EndComp
$Comp
L -lmp-power:GND #PWR04
U 1 1 60DD9ADF
P 1900 6350
F 0 "#PWR04" H 1900 6100 50  0001 C CNN
F 1 "GND" H 1905 6177 50  0000 C CNN
F 2 "" H 1900 6350 50  0001 C CNN
F 3 "" H 1900 6350 50  0001 C CNN
	1    1900 6350
	1    0    0    -1  
$EndComp
$Comp
L -lmp-synth:Jack_WQP419GR J4
U 1 1 60DD7BD9
P 1450 6100
AR Path="/60DD7BD9" Ref="J4"  Part="1" 
AR Path="/60CBFB6A/60DD7BD9" Ref="J5"  Part="1" 
F 0 "J5" H 1171 5988 50  0000 R CNN
F 1 "WQP419GR" H 1171 6079 50  0000 R CNN
F 2 "-lmp-synth:Jack_3.5mm_QingPu_WQP-PJ366ST_Vertical" H 1450 6100 50  0001 C CNN
F 3 "http://www.qingpu-electronics.com/en/products/WQP-PJ366ST-364.html" H 1450 6100 50  0001 C CNN
F 4 "OUT-RIGHT" H 1171 6170 50  0000 R CNN "Label"
F 5 "QingPu / Thonk" H 1450 6100 50  0001 C CNN "Manufacturer"
F 6 "PJ366ST / WQP419GR" H 1450 6100 50  0001 C CNN "ManufacturerPartNum"
F 7 "Thonk" H 1450 6100 50  0001 C CNN "Distributor"
F 8 "PJ366ST" H 1450 6100 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 1450 6100 50  0001 C CNN "DistributorPartLink"
	1    1450 6100
	1    0    0    1   
$EndComp
$Comp
L -lmp-synth:Jack_WQP-PJ398 J2
U 1 1 60F0CF9C
P 1450 2300
AR Path="/60F0CF9C" Ref="J2"  Part="1" 
AR Path="/60CBFB6A/60F0CF9C" Ref="J2"  Part="1" 
F 0 "J2" H 1270 2188 50  0000 R CNN
F 1 "WQP-PJ398" H 1270 2279 50  0000 R CNN
F 2 "-lmp-synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 1450 2300 50  0001 C CNN
F 3 "http://www.qingpu-electronics.com/en/products/WQP-PJ398SM-362.html" H 1450 2300 50  0001 C CNN
F 4 "IN-RIGHT" H 1270 2370 50  0000 R CNN "Label"
F 5 "QingPu / Thonk" H 1450 2300 50  0001 C CNN "Manufacturer"
F 6 "PJ398SM / WQP518MA" H 1450 2300 50  0001 C CNN "ManufacturerPartNum"
F 7 "Thonk" H 1450 2300 50  0001 C CNN "Distributor"
F 8 "PJ398SM" H 1450 2300 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 1450 2300 50  0001 C CNN "DistributorPartLink"
F 10 "SynthCube" H 1450 2300 50  0001 C CNN "Distributor2"
F 11 "Adafruit" H 1450 2300 50  0001 C CNN "Distributor3"
F 12 "https://synthcube.com/cart/3-5mm-euro-jacks" H 1450 2300 50  0001 C CNN "DistributorPartLink2"
F 13 "https://www.adafruit.com/product/4031" H 1450 2300 50  0001 C CNN "DistributorPartLink3"
F 14 "WQP518MA" H 1450 2300 50  0001 C CNN "DistributorPartNum2"
F 15 "4031" H 1450 2300 50  0001 C CNN "DistributorPartNum3"
	1    1450 2300
	1    0    0    1   
$EndComp
$Comp
L -lmp-synth:Jack_WQP419GR J3
U 1 1 60DD6BEC
P 1450 5500
AR Path="/60DD6BEC" Ref="J3"  Part="1" 
AR Path="/60CBFB6A/60DD6BEC" Ref="J4"  Part="1" 
F 0 "J4" H 1170 5388 50  0000 R CNN
F 1 "WQP419GR" H 1170 5479 50  0000 R CNN
F 2 "-lmp-synth:Jack_3.5mm_QingPu_WQP-PJ366ST_Vertical" H 1450 5500 50  0001 C CNN
F 3 "http://www.qingpu-electronics.com/en/products/WQP-PJ366ST-364.html" H 1450 5500 50  0001 C CNN
F 4 "OUT-LEFT" H 1170 5570 50  0000 R CNN "Label"
F 5 "QingPu / Thonk" H 1450 5500 50  0001 C CNN "Manufacturer"
F 6 "PJ366ST / WQP419GR" H 1450 5500 50  0001 C CNN "ManufacturerPartNum"
F 7 "Thonk" H 1450 5500 50  0001 C CNN "Distributor"
F 8 "PJ366ST" H 1450 5500 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 1450 5500 50  0001 C CNN "DistributorPartLink"
	1    1450 5500
	1    0    0    1   
$EndComp
$Comp
L -lmp-synth:Jack_WQP419GR J5
U 1 1 60DD82A0
P 1450 3900
AR Path="/60DD82A0" Ref="J5"  Part="1" 
AR Path="/60CBFB6A/60DD82A0" Ref="J3"  Part="1" 
F 0 "J3" H 1171 3788 50  0000 R CNN
F 1 "WQP419GR" H 1171 3879 50  0000 R CNN
F 2 "-lmp-synth:Jack_3.5mm_QingPu_WQP-PJ366ST_Vertical" H 1450 3900 50  0001 C CNN
F 3 "http://www.qingpu-electronics.com/en/products/WQP-PJ366ST-364.html" H 1450 3900 50  0001 C CNN
F 4 "OUT-PHONES" H 1171 3970 50  0000 R CNN "Label"
F 5 "QingPu / Thonk" H 1450 3900 50  0001 C CNN "Manufacturer"
F 6 "PJ366ST / WQP419GR" H 1450 3900 50  0001 C CNN "ManufacturerPartNum"
F 7 "Thonk" H 1450 3900 50  0001 C CNN "Distributor"
F 8 "PJ366ST" H 1450 3900 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 1450 3900 50  0001 C CNN "DistributorPartLink"
	1    1450 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	2300 1700 2300 2200
Text Notes 1700 2700 0    50   ~ 0
GND
Text Notes 1700 2900 0    50   ~ 0
OUT
Text Notes 1700 3100 0    50   ~ 0
IN
Text Notes 1700 3800 0    50   ~ 0
L
Text Notes 1700 3900 0    50   ~ 0
R
Text Notes 1700 5400 0    50   ~ 0
+
Text Notes 1700 5500 0    50   ~ 0
-
Text Notes 1700 6000 0    50   ~ 0
+
Text Notes 1700 6100 0    50   ~ 0
-
Wire Wire Line
	2300 1600 2300 1700
Connection ~ 2300 1700
Wire Wire Line
	2400 1700 2400 2300
Wire Wire Line
	2800 2100 2800 2900
Wire Wire Line
	3200 2600 3950 2600
Wire Wire Line
	3950 1600 2300 1600
Wire Wire Line
	3950 1700 2400 1700
Wire Wire Line
	3950 1800 2500 1800
Wire Wire Line
	3950 1900 2600 1900
Wire Wire Line
	3950 2000 2700 2000
Wire Wire Line
	3950 2100 2800 2100
Wire Wire Line
	3950 2300 2900 2300
Wire Wire Line
	3950 2400 3000 2400
Wire Wire Line
	3950 2500 3100 2500
Wire Wire Line
	3950 2700 3300 2700
Wire Wire Line
	1900 6200 1900 6350
Wire Wire Line
	1650 6200 1900 6200
Wire Wire Line
	1450 4800 1900 4800
Wire Wire Line
	1900 4800 1900 5600
Connection ~ 1900 6200
Connection ~ 1900 5600
Wire Wire Line
	1900 5600 1900 6200
Wire Wire Line
	1650 5600 1900 5600
Wire Wire Line
	1450 4300 1900 4300
Wire Wire Line
	1900 4300 1900 4800
Connection ~ 1900 4800
Wire Wire Line
	1900 4300 1900 4000
Connection ~ 1900 4300
Wire Wire Line
	1650 4000 1900 4000
Wire Wire Line
	1450 3600 2600 3600
Wire Wire Line
	1650 3400 2700 3400
Wire Wire Line
	1450 3200 1900 3200
Wire Wire Line
	1900 3200 1900 4000
Connection ~ 1900 4000
Wire Wire Line
	1450 3100 2500 3100
Wire Wire Line
	1650 2900 2800 2900
Wire Wire Line
	1450 2700 1900 2700
Wire Wire Line
	1900 2700 1900 3200
Connection ~ 1900 3200
Wire Wire Line
	1900 2700 1900 2400
Wire Wire Line
	1650 2400 1900 2400
Connection ~ 1900 2700
Wire Wire Line
	1650 2300 2400 2300
Wire Wire Line
	1650 2200 2300 2200
Wire Wire Line
	1900 2400 1900 1800
Connection ~ 1900 2400
Wire Wire Line
	1900 1800 1900 1600
Connection ~ 1900 1800
Wire Wire Line
	1650 1600 1900 1600
Wire Wire Line
	1650 1800 1900 1800
Wire Wire Line
	1650 1700 2300 1700
Wire Wire Line
	3950 3200 3800 3200
Wire Wire Line
	1650 5500 3400 5500
Wire Wire Line
	1650 5400 3500 5400
Wire Wire Line
	1650 6100 3800 6100
Wire Wire Line
	1450 4700 3000 4700
Wire Wire Line
	3300 5000 1650 5000
Wire Wire Line
	3400 2800 3950 2800
Wire Wire Line
	3500 2900 3950 2900
Wire Wire Line
	3950 3000 3600 3000
Wire Wire Line
	3600 4500 1650 4500
Wire Wire Line
	3950 3100 3700 3100
Wire Wire Line
	1650 6000 3700 6000
Wire Wire Line
	2900 5200 1450 5200
Wire Wire Line
	1650 3800 3100 3800
Wire Wire Line
	1650 3900 3200 3900
Wire Wire Line
	2700 2000 2700 3400
Wire Wire Line
	2600 1900 2600 3600
Wire Wire Line
	2500 1800 2500 3100
$Comp
L Connector_Generic:Conn_01x18 J6
U 1 1 60F45E88
P 4150 2400
F 0 "J6" H 4068 3417 50  0000 C CNN
F 1 "Conn_Front" H 4068 3326 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x18_P2.54mm_Vertical" H 4150 2400 50  0001 C CNN
F 3 "" H 4150 2400 50  0001 C CNN
	1    4150 2400
	1    0    0    -1  
$EndComp
NoConn ~ 3950 2200
Text Notes 800  1350 0    50   ~ 0
Outputs use 3.5mm TRS jacks. Headphone output is a single stereo jack. \nLine outputs are separate left & right balanced outputs.
Text Notes 800  7400 0    50   ~ 0
NOTE: This module requires a 16-pin Eurorack power cable that supplies +12 V, -12 V and +5 V. \nA polarized connector is used so polarity-protection diodes are not needed.
Wire Wire Line
	1800 8050 2000 8050
Connection ~ 2500 8550
Connection ~ 1800 8050
Wire Wire Line
	2000 7850 2000 8050
Connection ~ 1800 8150
$Comp
L -lmp-power:+5V #PWR0105
U 1 1 61BA0BE5
P 2000 7850
F 0 "#PWR0105" H 2000 7700 50  0001 C CNN
F 1 "+5V" H 2015 8023 50  0000 C CNN
F 2 "" H 2000 7850 50  0001 C CNN
F 3 "" H 2000 7850 50  0001 C CNN
	1    2000 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 8550 2950 8550
Wire Wire Line
	2950 8650 2950 8550
Wire Wire Line
	2950 8250 2950 8300
Wire Wire Line
	2250 7950 2250 7850
$Comp
L -lmp-power:+12V #PWR0119
U 1 1 60C86281
P 2250 7850
F 0 "#PWR0119" H 2250 7700 50  0001 C CNN
F 1 "+12V" H 2265 8023 50  0000 C CNN
F 2 "" H 2250 7850 50  0001 C CNN
F 3 "" H 2250 7850 50  0001 C CNN
	1    2250 7850
	1    0    0    -1  
$EndComp
Connection ~ 2500 8250
Connection ~ 2500 7950
$Comp
L -lmp-power:GND #PWR0120
U 1 1 60C80BF1
P 2950 8300
F 0 "#PWR0120" H 2950 8050 50  0001 C CNN
F 1 "GND" H 2955 8127 50  0000 C CNN
F 2 "" H 2950 8300 50  0001 C CNN
F 3 "" H 2950 8300 50  0001 C CNN
	1    2950 8300
	1    0    0    -1  
$EndComp
$Comp
L -lmp-synth:CP_10U C2
U 1 1 60C8030A
P 2500 8400
F 0 "C2" H 2618 8446 50  0000 L CNN
F 1 "10U" H 2618 8355 50  0000 L CNN
F 2 "-lmp-misc:CP_Radial_D4.0mm_P2.50mm" H 2538 8250 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1209.pdf" H 2500 8400 50  0001 C CNN
F 4 "Panasonic" H 2500 8400 50  0001 C CNN "Manufacturer"
F 5 "EEA-FC1E100" H 2500 8400 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 2500 8400 50  0001 C CNN "Distributor"
F 7 "667-EEA-FC1E100" H 2500 8400 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Panasonic/EEA-FC1E100?qs=nLJruSqDb94EJwiFQJd4iw%3D%3D" H 2500 8400 50  0001 C CNN "DistributorPartLink"
F 9 "12 V decoupling" H 2500 8400 50  0001 C CNN "Note "
F 10 "25 VDC" H 2500 8400 50  0001 C CNN "Value2"
	1    2500 8400
	1    0    0    -1  
$EndComp
$Comp
L -lmp-synth:CP_10U C1
U 1 1 60C7FBFA
P 2500 8100
F 0 "C1" H 2618 8146 50  0000 L CNN
F 1 "10U" H 2618 8055 50  0000 L CNN
F 2 "-lmp-misc:CP_Radial_D4.0mm_P2.50mm" H 2538 7950 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1209.pdf" H 2500 8100 50  0001 C CNN
F 4 "Panasonic" H 2500 8100 50  0001 C CNN "Manufacturer"
F 5 "EEA-FC1E100" H 2500 8100 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 2500 8100 50  0001 C CNN "Distributor"
F 7 "667-EEA-FC1E100" H 2500 8100 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Panasonic/EEA-FC1E100?qs=nLJruSqDb94EJwiFQJd4iw%3D%3D" H 2500 8100 50  0001 C CNN "DistributorPartLink"
F 9 "12 V decoupling" H 2500 8100 50  0001 C CNN "Note "
F 10 "25 VDC" H 2500 8100 50  0001 C CNN "Value2"
	1    2500 8100
	1    0    0    -1  
$EndComp
$Comp
L -lmp-power:-12V #PWR0121
U 1 1 60C864E4
P 2950 8650
F 0 "#PWR0121" H 2950 8800 50  0001 C CNN
F 1 "-12V" H 2965 8477 50  0000 C CNN
F 2 "" H 2950 8650 50  0001 C CNN
F 3 "" H 2950 8650 50  0001 C CNN
	1    2950 8650
	1    0    0    -1  
$EndComp
$Comp
L -lmp:CC_100N C5
U 1 1 615DB370
P 3750 8400
F 0 "C5" H 3865 8446 50  0000 L CNN
F 1 "100N" H 3865 8355 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3788 8250 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fg_en.pdf" H 3750 8400 50  0001 C CNN
F 4 "TDK" H 3750 8400 50  0001 C CNN "Manufacturer"
F 5 "FG18X7R1H104KNT06" H 3750 8400 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 3750 8400 50  0001 C CNN "Distributor"
F 7 "810-FG18X7R1H104KNT6" H 3750 8400 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 3750 8400 50  0001 C CNN "DistributorPartLink"
F 9 "IC decoupling" H 3750 8400 50  0001 C CNN "Note"
	1    3750 8400
	1    0    0    -1  
$EndComp
$Comp
L -lmp:CC_100N C4
U 1 1 615DB36A
P 3750 8100
F 0 "C4" H 3865 8146 50  0000 L CNN
F 1 "100N" H 3865 8055 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3788 7950 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fg_en.pdf" H 3750 8100 50  0001 C CNN
F 4 "TDK" H 3750 8100 50  0001 C CNN "Manufacturer"
F 5 "FG18X7R1H104KNT06" H 3750 8100 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 3750 8100 50  0001 C CNN "Distributor"
F 7 "810-FG18X7R1H104KNT6" H 3750 8100 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 3750 8100 50  0001 C CNN "DistributorPartLink"
F 9 "IC decoupling" H 3750 8100 50  0001 C CNN "Note"
	1    3750 8100
	1    0    0    -1  
$EndComp
$Comp
L -lmp-opamp:TL074 U3
U 5 1 60C16982
P 4450 8250
F 0 "U3" H 4408 8296 50  0000 L CNN
F 1 "TL074" H 4408 8205 50  0000 L CNN
F 2 "-lmp-misc:DIP-14_W7.62mm_LongPads" H 4400 8350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4500 8450 50  0001 C CNN
	5    4450 8250
	1    0    0    -1  
$EndComp
Connection ~ 3750 8250
Wire Wire Line
	3350 7950 3750 7950
Wire Wire Line
	3350 8550 3750 8550
Connection ~ 3750 7950
Connection ~ 3750 8550
Wire Wire Line
	3750 7950 4350 7950
Wire Wire Line
	3750 8550 4350 8550
Connection ~ 3350 7950
Connection ~ 3350 8550
Wire Wire Line
	2950 8550 3350 8550
Connection ~ 2950 8550
Wire Wire Line
	2950 8250 3750 8250
Connection ~ 2950 8250
$Comp
L -lmp:CC_100N C8
U 1 1 60FBF285
P 4750 8400
F 0 "C8" H 4865 8446 50  0000 L CNN
F 1 "100N" H 4865 8355 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4788 8250 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fg_en.pdf" H 4750 8400 50  0001 C CNN
F 4 "TDK" H 4750 8400 50  0001 C CNN "Manufacturer"
F 5 "FG18X7R1H104KNT06" H 4750 8400 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 4750 8400 50  0001 C CNN "Distributor"
F 7 "810-FG18X7R1H104KNT6" H 4750 8400 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 4750 8400 50  0001 C CNN "DistributorPartLink"
F 9 "IC decoupling" H 4750 8400 50  0001 C CNN "Note"
	1    4750 8400
	1    0    0    -1  
$EndComp
$Comp
L -lmp:CC_100N C7
U 1 1 60FBF28B
P 4750 8100
F 0 "C7" H 4865 8146 50  0000 L CNN
F 1 "100N" H 4865 8055 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4788 7950 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fg_en.pdf" H 4750 8100 50  0001 C CNN
F 4 "TDK" H 4750 8100 50  0001 C CNN "Manufacturer"
F 5 "FG18X7R1H104KNT06" H 4750 8100 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 4750 8100 50  0001 C CNN "Distributor"
F 7 "810-FG18X7R1H104KNT6" H 4750 8100 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 4750 8100 50  0001 C CNN "DistributorPartLink"
F 9 "IC decoupling" H 4750 8100 50  0001 C CNN "Note"
	1    4750 8100
	1    0    0    -1  
$EndComp
Connection ~ 4750 8250
Wire Wire Line
	4350 7950 4750 7950
Wire Wire Line
	4350 8550 4750 8550
$Comp
L -lmp-opamp:TL072 U2
U 3 1 60FC92ED
P 3450 8250
F 0 "U2" H 3408 8296 50  0000 L CNN
F 1 "TL072" H 3408 8205 50  0000 L CNN
F 2 "-lmp-misc:DIP-8_W7.62mm_LongPads" H 3450 8250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3450 8250 50  0001 C CNN
	3    3450 8250
	1    0    0    -1  
$EndComp
Connection ~ 4350 7950
Connection ~ 4350 8550
Wire Wire Line
	3750 8250 4750 8250
Wire Wire Line
	2500 8250 2950 8250
$Comp
L -lmp-synth:Conn_Eurorack_Pwr_16 J8
U 1 1 60C34745
P 1500 8150
F 0 "J8" H 1550 7625 50  0000 C CNN
F 1 "Conn_Eurorack_16" H 1550 7534 50  0000 C CNN
F 2 "-lmp-synth:IDC-Header-Eurorack-16-TH" H 1600 8150 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/445/61201621621-1717735.pdf" H 1600 8150 50  0001 C CNN
F 4 "Wurth Elektronik" H 1500 8150 50  0001 C CNN "Manufacturer"
F 5 "61201621621" H 1500 8150 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 1500 8150 50  0001 C CNN "Distributor"
F 7 "710-61201621621" H 1500 8150 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Wurth-Elektronik/61201621621?qs=ZtY9WdtwX55qFf4n3EFuaA%3D%3D" H 1500 8150 50  0001 C CNN "DistributorPartLink"
	1    1500 8150
	1    0    0    -1  
$EndComp
Connection ~ 1300 8550
Connection ~ 1300 8450
Connection ~ 1300 8150
Wire Wire Line
	1800 8450 1300 8450
Wire Wire Line
	1300 8450 1300 8350
Wire Wire Line
	1300 8350 1300 8250
Connection ~ 1300 8350
Wire Wire Line
	1800 8450 1800 8350
Connection ~ 1800 8450
Wire Wire Line
	1800 8350 1800 8250
Connection ~ 1800 8350
Wire Wire Line
	1800 8550 1300 8550
$Comp
L -lmp-power:PWR_FLAG #FLG0110
U 1 1 60C59052
P 1300 8150
F 0 "#FLG0110" H 1300 8225 50  0001 C CNN
F 1 "PWR_FLAG" V 1300 8277 50  0000 L CNN
F 2 "" H 1300 8150 50  0001 C CNN
F 3 "~" H 1300 8150 50  0001 C CNN
	1    1300 8150
	0    -1   -1   0   
$EndComp
$Comp
L -lmp-power:PWR_FLAG #FLG0109
U 1 1 60C59987
P 1300 8350
F 0 "#FLG0109" H 1300 8425 50  0001 C CNN
F 1 "PWR_FLAG" V 1300 8477 50  0000 L CNN
F 2 "" H 1300 8350 50  0001 C CNN
F 3 "~" H 1300 8350 50  0001 C CNN
	1    1300 8350
	0    -1   -1   0   
$EndComp
$Comp
L -lmp-power:PWR_FLAG #FLG0108
U 1 1 60C59AD1
P 1300 8550
F 0 "#FLG0108" H 1300 8625 50  0001 C CNN
F 1 "PWR_FLAG" V 1300 8677 50  0000 L CNN
F 2 "" H 1300 8550 50  0001 C CNN
F 3 "~" H 1300 8550 50  0001 C CNN
	1    1300 8550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 8150 1300 8150
NoConn ~ 1300 7850
NoConn ~ 1800 7850
NoConn ~ 1800 7950
NoConn ~ 1300 7950
Wire Wire Line
	1800 8050 1300 8050
$Comp
L -lmp-power:PWR_FLAG #FLG0101
U 1 1 61AF0F8C
P 1300 8050
F 0 "#FLG0101" H 1300 8125 50  0001 C CNN
F 1 "PWR_FLAG" V 1300 8177 50  0000 L CNN
F 2 "" H 1300 8050 50  0001 C CNN
F 3 "~" H 1300 8050 50  0001 C CNN
	1    1300 8050
	0    -1   -1   0   
$EndComp
Connection ~ 1300 8050
Text Notes 800  7150 0    50   ~ 10
Power
Text Notes 800  1150 0    50   ~ 0
IN-LEFT is normalled to IN-RIGHT so that \na single input will go to both stereo channels.
Connection ~ 3950 1600
Connection ~ 3950 1700
Connection ~ 3950 1800
Connection ~ 3950 1900
Connection ~ 3950 2000
Connection ~ 3950 2100
Connection ~ 3950 2600
Connection ~ 3950 2700
Wire Wire Line
	3950 2100 4850 2100
Wire Wire Line
	4950 2100 4850 2100
Connection ~ 4850 2100
Wire Wire Line
	3950 2000 4850 2000
Wire Wire Line
	4950 2000 4850 2000
Connection ~ 4850 2000
Wire Wire Line
	3950 1900 4850 1900
Wire Wire Line
	4950 1900 4850 1900
Connection ~ 4850 1900
Wire Wire Line
	3950 1800 4850 1800
Wire Wire Line
	4950 1800 4850 1800
Connection ~ 4850 1800
Wire Wire Line
	3950 3300 4850 3300
Wire Wire Line
	4900 3300 4850 3300
Wire Wire Line
	3950 3200 4850 3200
Wire Wire Line
	4950 3200 4850 3200
Wire Wire Line
	3950 3100 4850 3100
Wire Wire Line
	4950 3100 4850 3100
Wire Wire Line
	3950 3000 4850 3000
Wire Wire Line
	4950 3000 4850 3000
Wire Wire Line
	3950 2900 4850 2900
Wire Wire Line
	4950 2900 4850 2900
Wire Wire Line
	3950 1700 4850 1700
Wire Wire Line
	4950 1700 4850 1700
Connection ~ 4850 1700
Wire Wire Line
	3950 2800 4850 2800
Wire Wire Line
	4950 2800 4850 2800
Wire Wire Line
	3950 2700 4850 2700
Wire Wire Line
	4850 2700 4950 2700
Wire Wire Line
	3950 2600 4850 2600
Wire Wire Line
	4850 2600 4950 2600
Wire Wire Line
	3950 2500 4850 2500
Wire Wire Line
	4850 2500 4950 2500
Wire Wire Line
	3950 2400 4850 2400
Wire Wire Line
	4850 2400 4950 2400
Connection ~ 4850 2700
Wire Wire Line
	3950 2300 4850 2300
Wire Wire Line
	4850 2300 4950 2300
Connection ~ 4850 2600
Wire Wire Line
	3950 1600 4850 1600
Wire Wire Line
	4950 1600 4850 1600
Connection ~ 4850 1600
$Comp
L Connector_Generic:Conn_01x18 J7
U 1 1 60F46C63
P 4650 2400
F 0 "J7" H 4568 3417 50  0000 C CNN
F 1 "Conn_Rear" H 4568 3326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x18_P2.54mm_Horizontal" H 4650 2400 50  0001 C CNN
F 3 "" H 4650 2400 50  0001 C CNN
	1    4650 2400
	-1   0    0    -1  
$EndComp
Connection ~ 4850 2300
Connection ~ 4850 2400
Connection ~ 4850 2500
Connection ~ 3950 2300
Connection ~ 3950 2400
Connection ~ 3950 2500
Connection ~ 4850 2800
Connection ~ 4850 2900
Connection ~ 4850 3000
Connection ~ 4850 3100
Connection ~ 4850 3200
Connection ~ 4850 3300
Connection ~ 3950 2800
Connection ~ 3950 2900
Connection ~ 3950 3000
Connection ~ 3950 3100
Connection ~ 3950 3200
Wire Wire Line
	2900 2300 2900 5200
Wire Wire Line
	3000 2400 3000 4700
Wire Wire Line
	3100 2500 3100 3800
Wire Wire Line
	3200 2600 3200 3900
Wire Wire Line
	3300 2700 3300 5000
Wire Wire Line
	3400 2800 3400 5500
Wire Wire Line
	3500 2900 3500 5400
Wire Wire Line
	3600 3000 3600 4500
Wire Wire Line
	3700 3100 3700 6000
Wire Wire Line
	3800 3200 3800 6100
Wire Wire Line
	1800 8250 2500 8250
Connection ~ 1800 8250
Wire Wire Line
	1800 8550 2500 8550
Connection ~ 1800 8550
Wire Wire Line
	2500 7950 3350 7950
Connection ~ 2250 7950
Wire Wire Line
	2250 7950 2500 7950
Wire Wire Line
	2250 8150 2250 7950
Wire Wire Line
	1800 8150 2250 8150
$EndSCHEMATC
