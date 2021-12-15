EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Eurorack Power Supply"
Date "2021-12-07"
Rev "1.1"
Comp "Len Popp"
Comment1 "Copyright © 2021 Len Popp CC BY"
Comment2 "Power supply for Eurorack with outputs +12 VDC, -12 VDC (1 A), +5 VDC (400 mA)"
Comment3 "COMPLETED"
Comment4 ""
$EndDescr
Wire Wire Line
	3650 4500 3650 4600
Wire Wire Line
	3550 4500 3650 4500
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 60E8F087
P 3350 4300
F 0 "J3" H 3380 4600 50  0000 R CNN
F 1 "HDR_F" H 3390 4500 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3350 4300 50  0001 C CNN
F 3 "~" H 3350 4300 50  0001 C CNN
F 4 "Pin 3 filled in" H 3400 3950 50  0000 R CNN "Note"
	1    3350 4300
	-1   0    0    -1  
$EndComp
Text Notes 1300 3650 0    50   ~ 0
DC socket and on/off switch are mounted \non the case and connected by a cable
NoConn ~ 3000 4400
NoConn ~ 3000 4300
NoConn ~ 3550 4400
NoConn ~ 3550 4300
Wire Wire Line
	2400 4500 3000 4500
Connection ~ 4100 4600
Wire Wire Line
	2900 4200 3000 4200
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 60E8E960
P 3200 4300
F 0 "J2" H 3250 4600 50  0000 R CNN
F 1 "HDR_M" H 3250 4500 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3200 4300 50  0001 C CNN
F 3 "~" H 3200 4300 50  0001 C CNN
F 4 "Pin 3 removed" H 3250 3950 50  0000 R CNN "Note"
	1    3200 4300
	1    0    0    -1  
$EndComp
$Comp
L Power-Supply:Jack_DC_PJ-086H--lmp-synth J1
U 1 1 60DFF006
P 1350 4400
F 0 "J1" H 1350 4825 50  0000 C CNN
F 1 "PJ-086H" H 1350 4725 50  0000 C CNN
F 2 "-lmp-misc:NoFootprint" H 1400 4360 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/670/pj_086h-1779035.pdf" H 1400 4360 50  0001 C CNN
F 4 "CUI" H 1350 4400 50  0001 C CNN "Manufacturer"
F 5 "PJ-086H" H 1350 4400 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 1350 4400 50  0001 C CNN "Distributor"
F 7 "490-PJ-086H" H 1350 4400 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/490-PJ-086H" H 1350 4400 50  0001 C CNN "DistributorPartLink"
F 9 "Fits cable from mains power brick" H 1350 4000 50  0000 C CNN "Note"
	1    1350 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4100 2150 4200
$Comp
L Power-Supply:SW_SPST_Lamp_Carling--lmp-synth SW1
U 1 1 60E25BD3
P 2700 4300
F 0 "SW1" H 2700 4750 50  0000 C CNN
F 1 "632151-3B-HN" H 2700 4650 50  0000 C CNN
F 2 "-lmp-misc:NoFootprint" H 2700 4600 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/65/622_632_Series_Details__26_COS-267957.pdf" H 2700 4600 50  0001 C CNN
F 4 "POWER" H 2700 4550 50  0000 C CNN "Label"
F 5 "Carling Technologies" H 2700 4300 50  0001 C CNN "Manufacturer"
F 6 "632151-3B-HN" H 2700 4300 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 2700 4300 50  0001 C CNN "Distributor"
F 8 "691-632151-3B-HN" H 2700 4300 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/Carling-Technologies/632151-3B-HN?qs=JTE4qh7jp8ik1N%2FHQcLdVQ%3D%3D" H 2700 4300 50  0001 C CNN "DistributorPartLink"
	1    2700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4700 6150 4700
Wire Wire Line
	6150 4100 5950 4100
Wire Wire Line
	5950 4100 5950 4200
Connection ~ 6150 4400
$Comp
L Power-Supply:CC--lmp C5
U 1 1 60E2D235
P 6650 4250
F 0 "C5" H 6765 4296 50  0000 L CNN
F 1 "100N" H 6765 4205 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_2" H 6688 4100 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fg_en.pdf" H 6650 4250 50  0001 C CNN
F 4 "TDK" H 6650 4250 50  0001 C CNN "Manufacturer"
F 5 "FG18X7R1H104KNT06" H 6650 4250 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 6650 4250 50  0001 C CNN "Distributor"
F 7 "810-FG18X7R1H104KNT6" H 6650 4250 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 6650 4250 50  0001 C CNN "DistributorPartLink"
	1    6650 4250
	1    0    0    -1  
$EndComp
Connection ~ 6150 4700
Connection ~ 6650 4400
Wire Wire Line
	6650 4100 6150 4100
Connection ~ 6150 4100
$Comp
L Power-Supply:+12V--lmp-power #PWR07
U 1 1 60E2E313
P 7900 4000
F 0 "#PWR07" H 7900 3850 50  0001 C CNN
F 1 "+12V" H 7915 4173 50  0000 C CNN
F 2 "" H 7900 4000 50  0001 C CNN
F 3 "" H 7900 4000 50  0001 C CNN
	1    7900 4000
	1    0    0    -1  
$EndComp
$Comp
L Power-Supply:GND--lmp-power #PWR08
U 1 1 60E2E807
P 7900 4450
F 0 "#PWR08" H 7900 4200 50  0001 C CNN
F 1 "GND" H 7905 4277 50  0000 C CNN
F 2 "" H 7900 4450 50  0001 C CNN
F 3 "" H 7900 4450 50  0001 C CNN
	1    7900 4450
	1    0    0    -1  
$EndComp
$Comp
L Power-Supply:-12V--lmp-power #PWR09
U 1 1 60E2ECBF
P 7900 4800
F 0 "#PWR09" H 7900 4950 50  0001 C CNN
F 1 "-12V" H 7915 4627 50  0000 C CNN
F 2 "" H 7900 4800 50  0001 C CNN
F 3 "" H 7900 4800 50  0001 C CNN
	1    7900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4700 7900 4800
Wire Wire Line
	7900 4400 7900 4450
NoConn ~ 4650 4600
$Comp
L Power-Supply:Converter_DCDC_PYBE30--lmp-synth U2
U 1 1 60E73C9F
P 5150 4400
F 0 "U2" H 5150 4867 50  0000 C CNN
F 1 "PYBE30-Q24-D12" H 5150 4776 50  0000 C CNN
F 2 "-lmp-synth:Converter_DCDC_CUI_PYBE30" H 5150 4000 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/670/pybe30-1525754.pdf" H 5125 4400 50  0001 C CNN
F 4 "Mouser" H 5150 4400 50  0001 C CNN "Distributor"
F 5 "https://www.mouser.ca/ProductDetail/490-PYBE30-Q24-D12" H 5150 4400 50  0001 C CNN "DistributorPartLink"
F 6 "490-PYBE30-Q24-D12" H 5150 4400 50  0001 C CNN "DistributorPartNum"
F 7 "CUI" H 5150 4400 50  0001 C CNN "Manufacturer"
F 8 "PYBE30-Q24-D12" H 5150 4400 50  0001 C CNN "ManufacturerPartNum"
	1    5150 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4600 5950 4700
$Comp
L Power-Supply:PWR_FLAG--lmp-power #FLG02
U 1 1 60E51675
P 4000 4200
F 0 "#FLG02" H 4000 4275 50  0001 C CNN
F 1 "PWR_FLAG" H 4000 4373 50  0000 C CNN
F 2 "" H 4000 4200 50  0001 C CNN
F 3 "~" H 4000 4200 50  0001 C CNN
	1    4000 4200
	1    0    0    -1  
$EndComp
$Comp
L Power-Supply:CP--lmp C1
U 1 1 60EB2F02
P 4100 4400
F 0 "C1" H 4220 4490 50  0000 L CNN
F 1 "220U" H 4220 4390 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 4138 4250 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/315/ABA0000C1209-1289053.pdf" H 4100 4400 50  0001 C CNN
F 4 "35VDC" H 4220 4290 50  0000 L CNN "Value2"
F 5 "Panasonic" H 4100 4400 50  0001 C CNN "Manufacturer"
F 6 "EEU-FC1V221" H 4100 4400 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 4100 4400 50  0001 C CNN "Distributor"
F 8 "667-EEU-FC1V221" H 4100 4400 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/Panasonic/EEU-FC1V221?qs=iiQS8Qu7XZTt1rQb8bsJjg%3D%3D" H 4100 4400 50  0001 C CNN "DistributorPartLink"
	1    4100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4600 4500 4400
Wire Wire Line
	4500 4400 4650 4400
Wire Wire Line
	4500 4600 4100 4600
Wire Wire Line
	4100 4550 4100 4600
Wire Wire Line
	4100 4250 4100 4200
Connection ~ 4100 4200
Wire Wire Line
	2500 4300 2400 4300
Wire Wire Line
	2400 4300 2400 4400
Connection ~ 2400 4400
Wire Wire Line
	2400 4400 2400 4500
$Comp
L Power-Supply:+5V--lmp-power #PWR06
U 1 1 60E37EE6
P 7900 3000
F 0 "#PWR06" H 7900 2850 50  0001 C CNN
F 1 "+5V" H 7915 3173 50  0000 C CNN
F 2 "" H 7900 3000 50  0001 C CNN
F 3 "" H 7900 3000 50  0001 C CNN
	1    7900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4700 10200 4700
NoConn ~ 9700 4100
NoConn ~ 9700 4000
NoConn ~ 10200 4000
NoConn ~ 10200 4100
Wire Wire Line
	10200 4500 10200 4600
Connection ~ 10200 4500
Connection ~ 10200 4400
Wire Wire Line
	10200 4400 10200 4500
Wire Wire Line
	9700 4500 9700 4600
Connection ~ 9700 4500
Wire Wire Line
	9700 4400 9700 4500
Wire Wire Line
	10200 4300 9700 4300
Wire Wire Line
	10200 4200 9700 4200
Wire Wire Line
	9700 4400 10200 4400
Connection ~ 9700 4400
$Comp
L Power-Supply:Conn_Eurorack_Pwr_16--lmp-synth J5
U 1 1 60E628BC
P 9900 4300
F 0 "J5" H 9950 4825 50  0000 C CNN
F 1 "Conn_Eurorack_Pwr_16" H 9950 4734 50  0000 C CNN
F 2 "-lmp-synth:IDC-Header-Eurorack-16-TH" H 10000 4200 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/445/61201621621-1717735.pdf" H 10000 4200 50  0001 C CNN
F 4 "Mouser" H 9900 4300 50  0001 C CNN "Distributor"
F 5 "https://www.mouser.ca/ProductDetail/Wurth-Elektronik/61201621621?qs=ZtY9WdtwX55qFf4n3EFuaA%3D%3D" H 9900 4300 50  0001 C CNN "DistributorPartLink"
F 6 "710-61201621621" H 9900 4300 50  0001 C CNN "DistributorPartNum"
F 7 "Wurth Elektronik" H 9900 4300 50  0001 C CNN "Manufacturer"
F 8 "61201621621" H 9900 4300 50  0001 C CNN "ManufacturerPartNum"
	1    9900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4700 9250 4700
NoConn ~ 8750 4100
NoConn ~ 8750 4000
NoConn ~ 9250 4000
NoConn ~ 9250 4100
Wire Wire Line
	9250 4500 9250 4600
Connection ~ 9250 4500
Connection ~ 9250 4400
Wire Wire Line
	9250 4400 9250 4500
Wire Wire Line
	8750 4500 8750 4600
Connection ~ 8750 4500
Wire Wire Line
	8750 4400 8750 4500
Connection ~ 8750 4300
Wire Wire Line
	9250 4300 8750 4300
Connection ~ 8750 4200
Wire Wire Line
	8750 4200 8450 4200
Wire Wire Line
	9250 4200 8750 4200
Connection ~ 8750 4700
Wire Wire Line
	8750 4400 9250 4400
Connection ~ 8750 4400
$Comp
L Power-Supply:Conn_Eurorack_Pwr_16--lmp-synth J4
U 1 1 60E383AB
P 8950 4300
F 0 "J4" H 9000 4825 50  0000 C CNN
F 1 "Conn_Eurorack_Pwr_16" H 9000 4734 50  0000 C CNN
F 2 "-lmp-synth:IDC-Header-Eurorack-16-TH" H 9050 4200 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/445/61201621621-1717735.pdf" H 9050 4200 50  0001 C CNN
F 4 "Mouser" H 8950 4300 50  0001 C CNN "Distributor"
F 5 "https://www.mouser.ca/ProductDetail/Wurth-Elektronik/61201621621?qs=ZtY9WdtwX55qFf4n3EFuaA%3D%3D" H 8950 4300 50  0001 C CNN "DistributorPartLink"
F 6 "710-61201621621" H 8950 4300 50  0001 C CNN "DistributorPartNum"
F 7 "Wurth Elektronik" H 8950 4300 50  0001 C CNN "Manufacturer"
F 8 "61201621621" H 8950 4300 50  0001 C CNN "ManufacturerPartNum"
	1    8950 4300
	1    0    0    -1  
$EndComp
$Comp
L Power-Supply:Fuse--lmp F1
U 1 1 60F6B4E2
P 7400 3100
F 0 "F1" V 7203 3100 50  0000 C CNN
F 1 "0A5" V 7294 3100 50  0000 C CNN
F 2 "-lmp-misc:NoFootprint" V 7330 3100 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/240/Littelfuse_Fuse_217_Datasheet_pdf-310011.pdf" H 7400 3100 50  0001 C CNN
F 4 "Littelfuse" V 7400 3100 50  0001 C CNN "Manufacturer"
F 5 "0217.500MXP" V 7400 3100 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" V 7400 3100 50  0001 C CNN "Distributor"
F 7 "576-0217.500MXP" V 7400 3100 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Littelfuse/0217500MXP?qs=vco6xy%252BeH1oTm6RGQTWG6A%3D%3D" V 7400 3100 50  0001 C CNN "DistributorPartLink"
	1    7400 3100
	0    1    1    0   
$EndComp
$Comp
L Power-Supply:Fuse--lmp F2
U 1 1 60F6BC33
P 7400 4100
F 0 "F2" V 7203 4100 50  0000 C CNN
F 1 "1A" V 7294 4100 50  0000 C CNN
F 2 "-lmp-misc:NoFootprint" V 7330 4100 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/643/ds-CP-5mf-5mfp-series-1313109.pdf" H 7400 4100 50  0001 C CNN
F 4 "Bel Fuse" V 7400 4100 50  0001 C CNN "Manufacturer"
F 5 "5MF 1-R" V 7400 4100 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" V 7400 4100 50  0001 C CNN "Distributor"
F 7 "530-5MF1-R" V 7400 4100 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/530-5MF1-R" V 7400 4100 50  0001 C CNN "DistributorPartLink"
	1    7400 4100
	0    1    1    0   
$EndComp
Connection ~ 6650 4100
Wire Wire Line
	4100 4200 4300 4200
Wire Wire Line
	8450 3100 8450 4200
$Comp
L Power-Supply:Fuse--lmp F3
U 1 1 60F84FD0
P 7400 4700
F 0 "F3" V 7203 4700 50  0000 C CNN
F 1 "1A" V 7294 4700 50  0000 C CNN
F 2 "-lmp-misc:NoFootprint" V 7330 4700 50  0001 C CNN
F 3 "~" H 7400 4700 50  0001 C CNN
	1    7400 4700
	0    1    1    0   
$EndComp
$Comp
L Power-Supply:PWR_FLAG--lmp-power #FLG0102
U 1 1 60F85D1A
P 8200 4100
F 0 "#FLG0102" H 8200 4175 50  0001 C CNN
F 1 "PWR_FLAG" H 8200 4273 50  0000 C CNN
F 2 "" H 8200 4100 50  0001 C CNN
F 3 "~" H 8200 4100 50  0001 C CNN
	1    8200 4100
	1    0    0    -1  
$EndComp
$Comp
L Power-Supply:PWR_FLAG--lmp-power #FLG0103
U 1 1 60F869CE
P 8200 3100
F 0 "#FLG0103" H 8200 3175 50  0001 C CNN
F 1 "PWR_FLAG" H 8200 3273 50  0000 C CNN
F 2 "" H 8200 3100 50  0001 C CNN
F 3 "~" H 8200 3100 50  0001 C CNN
	1    8200 3100
	1    0    0    -1  
$EndComp
$Comp
L Power-Supply:PWR_FLAG--lmp-power #FLG0104
U 1 1 60F86DDB
P 8200 4700
F 0 "#FLG0104" H 8200 4775 50  0001 C CNN
F 1 "PWR_FLAG" H 8200 4873 50  0000 C CNN
F 2 "" H 8200 4700 50  0001 C CNN
F 3 "~" H 8200 4700 50  0001 C CNN
	1    8200 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 4200 2500 4200
Connection ~ 2150 4200
$Comp
L Power-Supply:PWR_FLAG--lmp-power #FLG0101
U 1 1 60FDF172
P 1900 4200
F 0 "#FLG0101" H 1900 4275 50  0001 C CNN
F 1 "PWR_FLAG" H 1900 4373 50  0000 C CNN
F 2 "" H 1900 4200 50  0001 C CNN
F 3 "~" H 1900 4200 50  0001 C CNN
	1    1900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4300 8750 4300
Wire Wire Line
	8450 3100 8200 3100
Wire Wire Line
	8200 4300 8200 4100
Connection ~ 8200 4100
Connection ~ 8200 3100
Wire Wire Line
	7900 3000 7900 3100
Wire Wire Line
	7900 4100 7900 4000
Connection ~ 7900 3100
Wire Wire Line
	7900 3100 8200 3100
Wire Wire Line
	7900 4100 8200 4100
Connection ~ 8200 4700
Wire Wire Line
	8200 4700 8750 4700
Wire Wire Line
	7900 4700 8200 4700
$Comp
L Power-Supply:FuseClip_D5mm_P5mm--lmp XF2
U 1 1 60FD9917
P 7550 3300
F 0 "XF2" V 7422 3380 50  0000 L CNN
F 1 "CLIP" V 7513 3380 50  0000 L CNN
F 2 "-lmp-misc:FuseClip_D5mm_P5mm_52000001009" H 7550 3020 50  0001 C CNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/fuse_clips/littelfuse_fuse_clip_520_521_102071_datasheet.pdf.pdf" H 7550 3300 50  0001 C CNN
F 4 "8" H 7550 3300 50  0001 C CNN "Height"
F 5 "576-52000001009" H 7550 3020 50  0001 C CNN "Mouser Part Number"
F 6 "https://www.mouser.co.uk/ProductDetail/Littelfuse/52000001009?qs=TxeoXSYJMVRCKOrJrEyYEQ%3D%3D" H 7550 3020 50  0001 C CNN "Mouser Price/Stock"
F 7 "LITTELFUSE" H 7540 3020 50  0001 C CNN "Manufacturer_Name"
F 8 "52000001009" H 7550 3020 50  0001 C CNN "Manufacturer_Part_Number"
	1    7550 3300
	0    1    1    0   
$EndComp
$Comp
L Power-Supply:FuseClip_D5mm_P5mm--lmp XF3
U 1 1 60FE272A
P 7250 4300
F 0 "XF3" V 7122 4380 50  0000 L CNN
F 1 "CLIP" V 7213 4380 50  0000 L CNN
F 2 "-lmp-misc:FuseClip_D5mm_P5mm_52000001009" H 7250 4020 50  0001 C CNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/fuse_clips/littelfuse_fuse_clip_520_521_102071_datasheet.pdf.pdf" H 7250 4300 50  0001 C CNN
F 4 "8" H 7250 4300 50  0001 C CNN "Height"
F 5 "576-52000001009" H 7250 4020 50  0001 C CNN "Mouser Part Number"
F 6 "https://www.mouser.co.uk/ProductDetail/Littelfuse/52000001009?qs=TxeoXSYJMVRCKOrJrEyYEQ%3D%3D" H 7250 4020 50  0001 C CNN "Mouser Price/Stock"
F 7 "LITTELFUSE" H 7240 4020 50  0001 C CNN "Manufacturer_Name"
F 8 "52000001009" H 7250 4020 50  0001 C CNN "Manufacturer_Part_Number"
	1    7250 4300
	0    -1   1    0   
$EndComp
$Comp
L Power-Supply:FuseClip_D5mm_P5mm--lmp XF4
U 1 1 60FE2735
P 7550 4300
F 0 "XF4" V 7422 4380 50  0000 L CNN
F 1 "CLIP" V 7513 4380 50  0000 L CNN
F 2 "-lmp-misc:FuseClip_D5mm_P5mm_52000001009" H 7550 4020 50  0001 C CNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/fuse_clips/littelfuse_fuse_clip_520_521_102071_datasheet.pdf.pdf" H 7550 4300 50  0001 C CNN
F 4 "8" H 7550 4300 50  0001 C CNN "Height"
F 5 "576-52000001009" H 7550 4020 50  0001 C CNN "Mouser Part Number"
F 6 "https://www.mouser.co.uk/ProductDetail/Littelfuse/52000001009?qs=TxeoXSYJMVRCKOrJrEyYEQ%3D%3D" H 7550 4020 50  0001 C CNN "Mouser Price/Stock"
F 7 "LITTELFUSE" H 7540 4020 50  0001 C CNN "Manufacturer_Name"
F 8 "52000001009" H 7550 4020 50  0001 C CNN "Manufacturer_Part_Number"
	1    7550 4300
	0    1    1    0   
$EndComp
$Comp
L Power-Supply:FuseClip_D5mm_P5mm--lmp XF5
U 1 1 60FE4F3D
P 7250 4900
F 0 "XF5" V 7122 4980 50  0000 L CNN
F 1 "CLIP" V 7213 4980 50  0000 L CNN
F 2 "-lmp-misc:FuseClip_D5mm_P5mm_52000001009" H 7250 4620 50  0001 C CNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/fuse_clips/littelfuse_fuse_clip_520_521_102071_datasheet.pdf.pdf" H 7250 4900 50  0001 C CNN
F 4 "8" H 7250 4900 50  0001 C CNN "Height"
F 5 "576-52000001009" H 7250 4620 50  0001 C CNN "Mouser Part Number"
F 6 "https://www.mouser.co.uk/ProductDetail/Littelfuse/52000001009?qs=TxeoXSYJMVRCKOrJrEyYEQ%3D%3D" H 7250 4620 50  0001 C CNN "Mouser Price/Stock"
F 7 "LITTELFUSE" H 7240 4620 50  0001 C CNN "Manufacturer_Name"
F 8 "52000001009" H 7250 4620 50  0001 C CNN "Manufacturer_Part_Number"
	1    7250 4900
	0    -1   1    0   
$EndComp
$Comp
L Power-Supply:FuseClip_D5mm_P5mm--lmp XF6
U 1 1 60FE4F48
P 7550 4900
F 0 "XF6" V 7422 4980 50  0000 L CNN
F 1 "CLIP" V 7513 4980 50  0000 L CNN
F 2 "-lmp-misc:FuseClip_D5mm_P5mm_52000001009" H 7550 4620 50  0001 C CNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/fuse_clips/littelfuse_fuse_clip_520_521_102071_datasheet.pdf.pdf" H 7550 4900 50  0001 C CNN
F 4 "8" H 7550 4900 50  0001 C CNN "Height"
F 5 "576-52000001009" H 7550 4620 50  0001 C CNN "Mouser Part Number"
F 6 "https://www.mouser.co.uk/ProductDetail/Littelfuse/52000001009?qs=TxeoXSYJMVRCKOrJrEyYEQ%3D%3D" H 7550 4620 50  0001 C CNN "Mouser Price/Stock"
F 7 "LITTELFUSE" H 7540 4620 50  0001 C CNN "Manufacturer_Name"
F 8 "52000001009" H 7550 4620 50  0001 C CNN "Manufacturer_Part_Number"
	1    7550 4900
	0    1    1    0   
$EndComp
Connection ~ 7900 4100
Connection ~ 7900 4700
Wire Wire Line
	7550 3100 7900 3100
Wire Wire Line
	6650 4100 7250 4100
Wire Wire Line
	7550 4100 7900 4100
Wire Wire Line
	7550 4700 7900 4700
Connection ~ 7250 3100
Connection ~ 7250 4100
Connection ~ 7250 4700
Connection ~ 7550 3100
Connection ~ 7550 4100
Connection ~ 7550 4700
Wire Wire Line
	6150 4400 6650 4400
Wire Wire Line
	6650 4400 7900 4400
Connection ~ 7900 4400
$Comp
L Power-Supply:FuseClip_D5mm_P5mm--lmp XF1
U 1 1 60FD92BF
P 7250 3300
F 0 "XF1" V 7122 3380 50  0000 L CNN
F 1 "CLIP" V 7213 3380 50  0000 L CNN
F 2 "-lmp-misc:FuseClip_D5mm_P5mm_52000001009" H 7250 3020 50  0001 C CNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/fuse_clips/littelfuse_fuse_clip_520_521_102071_datasheet.pdf.pdf" H 7250 3300 50  0001 C CNN
F 4 "8" H 7250 3300 50  0001 C CNN "Height"
F 5 "576-52000001009" H 7250 3020 50  0001 C CNN "Mouser Part Number"
F 6 "https://www.mouser.co.uk/ProductDetail/Littelfuse/52000001009?qs=TxeoXSYJMVRCKOrJrEyYEQ%3D%3D" H 7250 3020 50  0001 C CNN "Mouser Price/Stock"
F 7 "LITTELFUSE" H 7240 3020 50  0001 C CNN "Manufacturer_Name"
F 8 "52000001009" H 7250 3020 50  0001 C CNN "Manufacturer_Part_Number"
	1    7250 3300
	0    -1   1    0   
$EndComp
$Comp
L Power-Supply:Converter_DCDC_PRM3W--lmp-synth U1
U 1 1 60FB44B9
P 5150 3300
F 0 "U1" H 5150 3767 50  0000 C CNN
F 1 "PRM3W-E12-S5-S" H 5150 3676 50  0000 C CNN
F 2 "-lmp-synth:Converter_DCDC_CUI_PRM3W" H 5150 2900 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/670/prm3w_s-2474873.pdf" H 5125 3300 50  0001 C CNN
F 4 "Mouser" H 5150 3300 50  0001 C CNN "Distributor"
F 5 "https://www.mouser.ca/ProductDetail/490-PRM3W-E12-S5-S" H 5150 3300 50  0001 C CNN "DistributorPartLink"
F 6 "490-PRM3W-E12-S5-S" H 5150 3300 50  0001 C CNN "DistributorPartNum"
F 7 "CUI" H 5150 3300 50  0001 C CNN "Manufacturer"
F 8 "PRM3W-E12-S5-S" H 5150 3300 50  0001 C CNN "ManufacturerPartNum"
	1    5150 3300
	1    0    0    -1  
$EndComp
Connection ~ 4300 4200
Wire Wire Line
	4300 4200 4650 4200
Wire Wire Line
	4650 3300 4300 3300
Wire Wire Line
	4300 3300 4300 4200
Wire Wire Line
	4500 4400 4500 3100
Wire Wire Line
	4500 3100 4650 3100
Connection ~ 4500 4400
$Comp
L Power-Supply:V+--lmp-power #PWR03
U 1 1 60E1D424
P 2150 4100
F 0 "#PWR03" H 2150 4000 50  0001 C CNN
F 1 "V+" H 2165 4273 50  0000 C CNN
F 2 "" H 2150 4100 50  0001 C CNN
F 3 "" H 2150 4100 50  0001 C CNN
	1    2150 4100
	1    0    0    -1  
$EndComp
Connection ~ 1900 4200
Wire Wire Line
	1900 4200 2150 4200
$Comp
L Power-Supply:V---lmp-power #PWR0101
U 1 1 60FCB5C5
P 2150 4400
F 0 "#PWR0101" H 2150 4550 50  0001 C CNN
F 1 "V-" H 2165 4227 50  0000 C CNN
F 2 "" H 2150 4400 50  0001 C CNN
F 3 "" H 2150 4400 50  0001 C CNN
	1    2150 4400
	1    0    0    -1  
$EndComp
Connection ~ 2150 4400
Wire Wire Line
	2150 4400 2400 4400
Wire Wire Line
	5650 4200 5950 4200
Wire Wire Line
	5650 4600 5950 4600
Wire Wire Line
	5650 4400 5750 4400
Wire Wire Line
	5750 3300 5750 3500
Wire Wire Line
	5650 3300 5750 3300
Connection ~ 5750 4400
Wire Wire Line
	5750 4400 6150 4400
Wire Wire Line
	5650 3100 6150 3100
Wire Wire Line
	9250 4200 9700 4200
Connection ~ 9250 4200
Connection ~ 9700 4200
Wire Wire Line
	9700 4300 9250 4300
Connection ~ 9700 4300
Connection ~ 9250 4300
Wire Wire Line
	9250 4400 9700 4400
Wire Wire Line
	9700 4700 9250 4700
Connection ~ 9700 4700
Connection ~ 9250 4700
Wire Wire Line
	6150 3450 6150 3500
Wire Wire Line
	6150 3500 5750 3500
Connection ~ 5750 3500
Wire Wire Line
	5750 3500 5750 4400
Wire Wire Line
	6150 3150 6150 3100
Connection ~ 6150 3100
Wire Wire Line
	6150 3100 7250 3100
$Comp
L Power-Supply:CP--lmp C2
U 1 1 60FEB814
P 6150 3300
F 0 "C2" H 6260 3390 50  0000 L CNN
F 1 "22U" H 6260 3290 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 6188 3150 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/315/ABA0000C1041-947575.pdf" H 6150 3300 50  0001 C CNN
F 4 "16VDC" H 6260 3200 50  0000 L CNN "Value2"
F 5 "Panasonic" H 6150 3300 50  0001 C CNN "Manufacturer"
F 6 "EEA-GA1C220H" H 6150 3300 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 6150 3300 50  0001 C CNN "Distributor"
F 8 "667-EEA-GA1C220H" H 6150 3300 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/Panasonic/EEA-GA1C220H?qs=6gIVE1Jgg%2FznoTUBnseqpA%3D%3D" H 6150 3300 50  0001 C CNN "DistributorPartLink"
	1    6150 3300
	1    0    0    -1  
$EndComp
$Comp
L Power-Supply:PWR_FLAG--lmp-power #FLG0105
U 1 1 60FFBED8
P 4000 4600
F 0 "#FLG0105" H 4000 4675 50  0001 C CNN
F 1 "PWR_FLAG" H 4000 4773 50  0000 C CNN
F 2 "" H 4000 4600 50  0001 C CNN
F 3 "~" H 4000 4600 50  0001 C CNN
	1    4000 4600
	-1   0    0    1   
$EndComp
Connection ~ 4000 4200
Wire Wire Line
	4000 4200 4100 4200
Connection ~ 4000 4600
Wire Wire Line
	4000 4600 4100 4600
Wire Wire Line
	3650 4600 4000 4600
Wire Wire Line
	3550 4200 4000 4200
$Comp
L Power-Supply:PWR_FLAG--lmp-power #FLG0106
U 1 1 60FFC61F
P 1900 4400
F 0 "#FLG0106" H 1900 4475 50  0001 C CNN
F 1 "PWR_FLAG" H 1900 4573 50  0000 C CNN
F 2 "" H 1900 4400 50  0001 C CNN
F 3 "~" H 1900 4400 50  0001 C CNN
	1    1900 4400
	-1   0    0    1   
$EndComp
Connection ~ 1900 4400
Wire Wire Line
	1900 4400 2150 4400
Wire Wire Line
	7900 4400 8750 4400
$Comp
L Power-Supply:CP--lmp C3
U 1 1 61013A03
P 6150 4250
F 0 "C3" H 6270 4340 50  0000 L CNN
F 1 "220U" H 6270 4240 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 6188 4100 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/315/ABA0000C1209-1289053.pdf" H 6150 4250 50  0001 C CNN
F 4 "25VDC" H 6270 4140 50  0000 L CNN "Value2"
F 5 "Panasonic" H 6150 4250 50  0001 C CNN "Manufacturer"
F 6 "EEU-FC1V221" H 6150 4250 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 6150 4250 50  0001 C CNN "Distributor"
F 8 "667-EEU-FC1V221" H 6150 4250 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/Panasonic/EEU-FC1V221?qs=iiQS8Qu7XZTt1rQb8bsJjg%3D%3D" H 6150 4250 50  0001 C CNN "DistributorPartLink"
	1    6150 4250
	1    0    0    -1  
$EndComp
$Comp
L Power-Supply:CP--lmp C4
U 1 1 610142B1
P 6150 4550
F 0 "C4" H 6270 4640 50  0000 L CNN
F 1 "220U" H 6270 4540 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 6188 4400 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/315/ABA0000C1209-1289053.pdf" H 6150 4550 50  0001 C CNN
F 4 "25VDC" H 6270 4440 50  0000 L CNN "Value2"
F 5 "Panasonic" H 6150 4550 50  0001 C CNN "Manufacturer"
F 6 "EEU-FC1V221" H 6150 4550 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 6150 4550 50  0001 C CNN "Distributor"
F 8 "667-EEU-FC1V221" H 6150 4550 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/Panasonic/EEU-FC1V221?qs=iiQS8Qu7XZTt1rQb8bsJjg%3D%3D" H 6150 4550 50  0001 C CNN "DistributorPartLink"
	1    6150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4700 6650 4700
$Comp
L Power-Supply:CC--lmp C6
U 1 1 6101AE4D
P 6650 4550
F 0 "C6" H 6765 4596 50  0000 L CNN
F 1 "100N" H 6765 4505 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_2" H 6688 4400 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fg_en.pdf" H 6650 4550 50  0001 C CNN
F 4 "TDK" H 6650 4550 50  0001 C CNN "Manufacturer"
F 5 "FG18X7R1H104KNT06" H 6650 4550 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 6650 4550 50  0001 C CNN "Distributor"
F 7 "810-FG18X7R1H104KNT6" H 6650 4550 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 6650 4550 50  0001 C CNN "DistributorPartLink"
	1    6650 4550
	1    0    0    -1  
$EndComp
Connection ~ 6650 4700
Wire Wire Line
	6650 4700 7250 4700
NoConn ~ 1350 4700
Wire Wire Line
	1650 4300 1750 4300
Wire Wire Line
	1750 4300 1750 4400
Wire Wire Line
	1750 4400 1900 4400
Wire Wire Line
	1650 4200 1900 4200
NoConn ~ 1650 4400
NoConn ~ 1650 4500
Text Notes 2350 4900 0    50   ~ 0
J2 & J3: Janky polarized connector \nmade from pin header & socket
$Comp
L Power-Supply:MISC--lmp PS1
U 1 1 61B4B01D
P 1350 2200
F 0 "PS1" H 1578 2291 50  0000 L CNN
F 1 "PSU" H 1578 2200 50  0000 L CNN
F 2 "-lmp-misc:NoFootprint" H 1350 2200 50  0001 C CNN
F 3 "" H 1350 2690 50  0001 C CNN
F 4 "Mains power adapter with DC output between 9 V and 36 V" H 1578 2109 50  0000 L CNN "Note"
	1    1350 2200
	1    0    0    -1  
$EndComp
$Comp
L Power-Supply:PCB--lmp H1
U 1 1 60F5009A
P 1350 2900
F 0 "H1" H 1578 2991 50  0000 L CNN
F 1 "PCB" H 1578 2900 50  0000 L CNN
F 2 "-lmp-misc:NoFootprint" H 1350 2900 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/58/BPS-DAT-(ST2)-Datasheet-1282869.pdf" H 1350 3390 50  0001 C CNN
F 4 "Busboard Prototype Systems" H 1350 2900 50  0001 C CNN "Manufacturer"
F 5 "ST2" H 1350 2900 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 1350 2900 50  0001 C CNN "Distributor"
F 7 "854-ST2" H 1350 2900 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/BusBoard-Prototype-Systems/ST2?qs=NGErKr1RxMAdSUqgGAVpyQ==" H 1350 2900 50  0001 C CNN "DistributorPartLink"
F 9 "Stripboard PCB" H 1578 2809 50  0000 L CNN "Note"
	1    1350 2900
	1    0    0    -1  
$EndComp
Text Notes 8700 3650 0    50   ~ 0
Standard 16-pin Eurorack IDC connectors
$EndSCHEMATC
