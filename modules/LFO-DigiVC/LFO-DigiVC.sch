EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Eurorack DigiLFO module"
Date "2021-12-05"
Rev "1.0"
Comp "Len Popp"
Comment1 "Copyright © 2021 Len Popp CC BY"
Comment2 "4HP module designed for Delptronics Module Construction Set"
Comment3 "Eurorack microcontroller-based VC-LFO module"
Comment4 "COMPLETED"
$EndDescr
Text Notes 6990 6490 0    50   ~ 0
All fixed resistors are 1% tolerance unless otherwise specified.\nAll eletrolytic capacitors are rated for 25VDC unless otherwise specified.
Wire Wire Line
	9800 1400 9800 1500
$Comp
L LFO-DigiVC:+5V--lmp-power #PWR06
U 1 1 60C927A4
P 9800 1400
F 0 "#PWR06" H 9800 1250 50  0001 C CNN
F 1 "+5V" H 9815 1573 50  0000 C CNN
F 2 "" H 9800 1400 50  0001 C CNN
F 3 "" H 9800 1400 50  0001 C CNN
	1    9800 1400
	1    0    0    -1  
$EndComp
Text Notes 1250 7650 0    50   ~ 0
This work is licensed under the Creative Commons Attribution 4.0 International License.\nTo view a copy of this license, visit http://creativecommons.org/licenses/by/4.0/\nor send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
Connection ~ 7350 2100
Connection ~ 7350 1500
Connection ~ 9600 1500
Wire Wire Line
	7200 2100 7350 2100
Wire Wire Line
	7200 1500 7350 1500
Wire Wire Line
	9200 1800 9600 1800
Wire Wire Line
	9500 1500 9600 1500
$Comp
L LFO-DigiVC:CC_100N--lmp C3
U 1 1 60BF0922
P 9600 1650
F 0 "C3" H 9715 1696 50  0000 L CNN
F 1 "100N" H 9715 1605 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 9638 1500 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fg_en.pdf" H 9600 1650 50  0001 C CNN
F 4 "TDK" H 9600 1650 50  0001 C CNN "Manufacturer"
F 5 "FG18X7R1H104KNT06" H 9600 1650 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 9600 1650 50  0001 C CNN "Distributor"
F 7 "810-FG18X7R1H104KNT6" H 9600 1650 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 9600 1650 50  0001 C CNN "DistributorPartLink"
F 9 "IC decoupling" H 9600 1650 50  0001 C CNN "Note"
	1    9600 1650
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:L78L05_TO92--lmp-regulator U1
U 1 1 60BE6D11
P 9200 1500
F 0 "U1" H 9200 1742 50  0000 C CNN
F 1 "L78L05_TO92" H 9200 1651 50  0000 C CNN
F 2 "-lmp-misc:TO-92_Inline_Wide" H 9200 1725 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 9200 1450 50  0001 C CNN
F 4 "STMicroelectronics " H 9200 1500 50  0001 C CNN "Manufacturer"
F 5 "L78L05ACZ-AP" H 9200 1500 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 9200 1500 50  0001 C CNN "Distributor"
F 7 "511-L78L05ACZ-AP" H 9200 1500 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/STMicroelectronics/L78L05ACZ-AP?qs=sGAEpiMZZMuLLNXTG1MZanrpqIdcnbmrowz4nhu1BnI%3D" H 9200 1500 50  0001 C CNN "DistributorPartLink"
	1    9200 1500
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:PWR_FLAG--lmp-power #FLG05
U 1 1 60C89F71
P 7350 2100
F 0 "#FLG05" H 7350 2175 50  0001 C CNN
F 1 "PWR_FLAG" H 7350 2273 50  0000 C CNN
F 2 "" H 7350 2100 50  0001 C CNN
F 3 "~" H 7350 2100 50  0001 C CNN
	1    7350 2100
	-1   0    0    1   
$EndComp
$Comp
L LFO-DigiVC:PWR_FLAG--lmp-power #FLG04
U 1 1 60C8985D
P 7350 1500
F 0 "#FLG04" H 7350 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 7350 1673 50  0000 C CNN
F 2 "" H 7350 1500 50  0001 C CNN
F 3 "~" H 7350 1500 50  0001 C CNN
	1    7350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2200 7650 2100
Wire Wire Line
	7650 1800 7650 1850
Wire Wire Line
	7650 1500 7650 1400
$Comp
L LFO-DigiVC:+12V--lmp-power #PWR03
U 1 1 60C86281
P 7650 1400
F 0 "#PWR03" H 7650 1250 50  0001 C CNN
F 1 "+12V" H 7665 1573 50  0000 C CNN
F 2 "" H 7650 1400 50  0001 C CNN
F 3 "" H 7650 1400 50  0001 C CNN
	1    7650 1400
	1    0    0    -1  
$EndComp
Connection ~ 7200 2100
Wire Wire Line
	7050 2100 7200 2100
Connection ~ 7200 1800
Wire Wire Line
	6650 1800 7200 1800
Connection ~ 7200 1500
Wire Wire Line
	7050 1500 7200 1500
$Comp
L LFO-DigiVC:GND--lmp-power #PWR04
U 1 1 60C80BF1
P 7650 1850
F 0 "#PWR04" H 7650 1600 50  0001 C CNN
F 1 "GND" H 7655 1677 50  0000 C CNN
F 2 "" H 7650 1850 50  0001 C CNN
F 3 "" H 7650 1850 50  0001 C CNN
	1    7650 1850
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:CP_10U--lmp-synth C1
U 1 1 60C8030A
P 7200 1950
F 0 "C1" H 7318 1996 50  0000 L CNN
F 1 "10U" H 7318 1905 50  0000 L CNN
F 2 "-lmp-misc:CP_Radial_D5.0mm_P2.50mm" H 7238 1800 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1209.pdf" H 7200 1950 50  0001 C CNN
F 4 "Panasonic" H 7200 1950 50  0001 C CNN "Manufacturer"
F 5 "EEA-FC1E100" H 7200 1950 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7200 1950 50  0001 C CNN "Distributor"
F 7 "667-EEA-FC1E100" H 7200 1950 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Panasonic/EEA-FC1E100?qs=nLJruSqDb94EJwiFQJd4iw%3D%3D" H 7200 1950 50  0001 C CNN "DistributorPartLink"
F 9 "12 V decoupling" H 7200 1950 50  0001 C CNN "Note "
F 10 "25 VDC" H 7200 1950 50  0001 C CNN "Value2"
	1    7200 1950
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:CP_10U--lmp-synth C2
U 1 1 60C7FBFA
P 7200 1650
F 0 "C2" H 7318 1696 50  0000 L CNN
F 1 "10U" H 7318 1605 50  0000 L CNN
F 2 "-lmp-misc:CP_Radial_D5.0mm_P2.50mm" H 7238 1500 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDF0000/ABA0000C1209.pdf" H 7200 1650 50  0001 C CNN
F 4 "Panasonic" H 7200 1650 50  0001 C CNN "Manufacturer"
F 5 "EEA-FC1E100" H 7200 1650 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7200 1650 50  0001 C CNN "Distributor"
F 7 "667-EEA-FC1E100" H 7200 1650 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Panasonic/EEA-FC1E100?qs=nLJruSqDb94EJwiFQJd4iw%3D%3D" H 7200 1650 50  0001 C CNN "DistributorPartLink"
F 9 "12 V decoupling" H 7200 1650 50  0001 C CNN "Note "
F 10 "25 VDC" H 7200 1650 50  0001 C CNN "Value2"
	1    7200 1650
	1    0    0    -1  
$EndComp
Connection ~ 6650 1500
Wire Wire Line
	6650 1500 6750 1500
Wire Wire Line
	6650 1500 6150 1500
$Comp
L LFO-DigiVC:MBR150--lmp-diode D2
U 1 1 60C7C23D
P 6900 1500
F 0 "D2" H 6900 1717 50  0000 C CNN
F 1 "MBR150" H 6900 1626 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 6900 1500 50  0001 C CNN
F 3 "https://www.onsemi.com/pdf/datasheet/mbr150-d.pdf" H 6900 1500 50  0001 C CNN
F 4 "On Semi" H 6900 1500 50  0001 C CNN "Manufacturer"
F 5 "MBR150RLG" H 6900 1500 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 6900 1500 50  0001 C CNN "Distributor"
F 7 "863-MBR150RLG" H 6900 1500 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/ON-Semiconductor/MBR150RLG?qs=3JMERSakebpMUdfDTQP0Kw%3D%3D" H 6900 1500 50  0001 C CNN "DistributorPartLink"
	1    6900 1500
	-1   0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:MBR150--lmp-diode D1
U 1 1 60C7B644
P 6900 2100
F 0 "D1" H 6900 2317 50  0000 C CNN
F 1 "MBR150" H 6900 2226 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 6900 2100 50  0001 C CNN
F 3 "https://www.onsemi.com/pdf/datasheet/mbr150-d.pdf" H 6900 2100 50  0001 C CNN
F 4 "On Semi" H 6900 2100 50  0001 C CNN "Manufacturer"
F 5 "MBR150RLG" H 6900 2100 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 6900 2100 50  0001 C CNN "Distributor"
F 7 "863-MBR150RLG" H 6900 2100 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/ON-Semiconductor/MBR150RLG?qs=3JMERSakebpMUdfDTQP0Kw%3D%3D" H 6900 2100 50  0001 C CNN "DistributorPartLink"
	1    6900 2100
	1    0    0    -1  
$EndComp
Connection ~ 6650 1900
Wire Wire Line
	6700 2100 6750 2100
Wire Wire Line
	6700 1900 6700 2100
Wire Wire Line
	6650 1900 6700 1900
$Comp
L LFO-DigiVC:PWR_FLAG--lmp-power #FLG03
U 1 1 60C59AD1
P 6150 1900
F 0 "#FLG03" H 6150 1975 50  0001 C CNN
F 1 "PWR_FLAG" V 6150 2027 50  0000 L CNN
F 2 "" H 6150 1900 50  0001 C CNN
F 3 "~" H 6150 1900 50  0001 C CNN
	1    6150 1900
	0    -1   -1   0   
$EndComp
$Comp
L LFO-DigiVC:PWR_FLAG--lmp-power #FLG02
U 1 1 60C59987
P 6150 1700
F 0 "#FLG02" H 6150 1775 50  0001 C CNN
F 1 "PWR_FLAG" V 6150 1827 50  0000 L CNN
F 2 "" H 6150 1700 50  0001 C CNN
F 3 "~" H 6150 1700 50  0001 C CNN
	1    6150 1700
	0    -1   -1   0   
$EndComp
$Comp
L LFO-DigiVC:PWR_FLAG--lmp-power #FLG01
U 1 1 60C59052
P 6150 1500
F 0 "#FLG01" H 6150 1575 50  0001 C CNN
F 1 "PWR_FLAG" V 6150 1627 50  0000 L CNN
F 2 "" H 6150 1500 50  0001 C CNN
F 3 "~" H 6150 1500 50  0001 C CNN
	1    6150 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 1900 6150 1900
Connection ~ 6650 1700
Wire Wire Line
	6650 1700 6650 1600
Connection ~ 6650 1800
Wire Wire Line
	6650 1800 6650 1700
Connection ~ 6150 1700
Wire Wire Line
	6150 1700 6150 1600
Wire Wire Line
	6150 1800 6150 1700
Wire Wire Line
	6650 1800 6150 1800
$Comp
L LFO-DigiVC:Conn_Delptronics_Pwr_Hdr_10--lmp-synth J9
U 1 1 60C34745
P 6350 1700
F 0 "J9" H 6400 2125 50  0000 C CNN
F 1 "Eurorack_10" H 6400 2034 50  0000 C CNN
F 2 "-lmp-synth:PinHeader-Eurorack-10-TH" H 6450 1700 50  0001 C CNN
F 3 "~" H 6450 1700 50  0001 C CNN
F 4 "NoPart" H 6350 1700 50  0001 C CNN "NoPart"
F 5 "part of Delptronics Module Constrution Set" H 6350 1700 50  0001 C CNN "Note"
	1    6350 1700
	1    0    0    -1  
$EndComp
Connection ~ 9200 1800
Connection ~ 7650 1500
Wire Wire Line
	9600 1500 9800 1500
$Comp
L LFO-DigiVC:-12V--lmp-power #PWR05
U 1 1 60C864E4
P 7650 2200
F 0 "#PWR05" H 7650 2350 50  0001 C CNN
F 1 "-12V" H 7665 2027 50  0000 C CNN
F 2 "" H 7650 2200 50  0001 C CNN
F 3 "" H 7650 2200 50  0001 C CNN
	1    7650 2200
	1    0    0    -1  
$EndComp
Connection ~ 6150 1500
Connection ~ 6150 1800
Connection ~ 6150 1900
Text Notes 850  1100 0    50   ~ 10
Front Panel
Text Notes 5650 1100 0    50   ~ 10
Power
$Comp
L LFO-DigiVC:Logo_CC_BY--lmp #G1
U 1 1 60C31EA4
P 900 7550
F 0 "#G1" H 900 7487 60  0001 C CNN
F 1 "Logo_CC_BY" H 900 7613 60  0001 C CNN
F 2 "-lmp-misc:Logo_CC_BY" H 900 7550 50  0001 C CNN
F 3 "https://creativecommons.org/licenses/by/4.0/" H 900 7550 50  0001 C CNN
F 4 "NoPart" H 900 7550 50  0001 C CNN "NoPart"
	1    900  7550
	1    0    0    -1  
$EndComp
Text Notes 3400 1100 0    50   ~ 10
Rear Board Connector
$Comp
L LFO-DigiVC:GND--lmp-power #PWR0101
U 1 1 60CD7485
P 2450 3900
F 0 "#PWR0101" H 2450 3650 50  0001 C CNN
F 1 "GND" H 2455 3727 50  0000 C CNN
F 2 "" H 2450 3900 50  0001 C CNN
F 3 "" H 2450 3900 50  0001 C CNN
	1    2450 3900
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:GND--lmp-power #PWR0102
U 1 1 60CD77A5
P 3950 3900
F 0 "#PWR0102" H 3950 3650 50  0001 C CNN
F 1 "GND" H 3955 3727 50  0000 C CNN
F 2 "" H 3950 3900 50  0001 C CNN
F 3 "" H 3950 3900 50  0001 C CNN
	1    3950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3850 2450 3850
Wire Wire Line
	2450 3850 2450 3900
Wire Wire Line
	3950 3900 3950 3850
Wire Wire Line
	3950 3850 3900 3850
$Comp
L LFO-DigiVC:R_POT_Panel_PCB_Alpha--lmp-synth RV5
U 1 1 60F3A7B4
P 1500 1750
F 0 "RV5" H 1431 1613 50  0000 R CNN
F 1 "100K" H 1431 1704 50  0000 R CNN
F 2 "-lmp-synth:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1500 1750 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/13/alpha_taiwan_08192019_RD901F-40-15R1-B(resistance_-1627810.pdf" H 1500 1750 50  0001 C CNN
F 4 "LIN" H 1431 1795 50  0000 R CNN "Value2"
F 5 "Rate" H 1431 1886 50  0000 R CNN "Label"
F 6 "Alpha" H 1500 1750 50  0001 C CNN "Manufacturer"
F 7 "RD901F-*" H 1500 1750 50  0001 C CNN "ManufacturerPartNum"
F 8 "Mouser" H 1500 1750 50  0001 C CNN "Distributor"
F 9 "311-1940F-*" H 1500 1750 50  0001 C CNN "DistributorPartNum"
F 10 "https://www.mouser.ca/c/passive-components/potentiometers-trimmers-rheostats/potentiometers/?m=Alpha+(Taiwan)&series=RD901F" H 1500 1750 50  0001 C CNN "DistributorPartLink"
	1    1500 1750
	1    0    0    1   
$EndComp
$Sheet
S 5650 4200 600  600 
U 610CEC44
F0 "Main" 50
F1 "Main.sch" 50
$EndSheet
Text Notes 5650 4100 0    50   ~ 10
Main
$Comp
L LFO-DigiVC:TL074--lmp-opamp U5
U 5 1 611111ED
P 8150 1800
F 0 "U5" H 8108 1846 50  0000 L CNN
F 1 "TL074" H 8108 1755 50  0000 L CNN
F 2 "-lmp-misc:DIP-14_W7.62mm_LongPads" H 8100 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8200 2000 50  0001 C CNN
F 4 "Texas Instruments" H 8150 1800 50  0001 C CNN "Manufacturer"
F 5 "TL074BCN" H 8150 1800 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8150 1800 50  0001 C CNN "Distributor"
F 7 "595-TL074BCN" H 8150 1800 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=vxEfx8VrU7BHurOY5iQdiA%3D%3D" H 8150 1800 50  0001 C CNN "DistributorPartLink"
	5    8150 1800
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:CC_100N--lmp C4
U 1 1 61112161
P 8450 1650
F 0 "C4" H 8565 1696 50  0000 L CNN
F 1 "100N" H 8565 1605 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8488 1500 50  0001 C CNN
F 3 "~" H 8425 1500 50  0001 C CNN
F 4 "IC decoupling" H 8475 1450 50  0001 L CNN "Note"
F 5 "TDK" H 8450 1650 50  0001 C CNN "Manufacturer"
F 6 "FG18X7R1H104KNT06" H 8450 1650 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 8450 1650 50  0001 C CNN "Distributor"
F 8 "810-FG18X7R1H104KNT6" H 8450 1650 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 8450 1650 50  0001 C CNN "DistributorPartLink"
	1    8450 1650
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:CC_100N--lmp C5
U 1 1 61114367
P 8450 1950
F 0 "C5" H 8565 1996 50  0000 L CNN
F 1 "100N" H 8565 1905 50  0000 L CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8488 1800 50  0001 C CNN
F 3 "~" H 8425 1800 50  0001 C CNN
F 4 "IC decoupling" H 8475 1750 50  0001 L CNN "Note"
F 5 "TDK" H 8450 1950 50  0001 C CNN "Manufacturer"
F 6 "FG18X7R1H104KNT06" H 8450 1950 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 8450 1950 50  0001 C CNN "Distributor"
F 8 "810-FG18X7R1H104KNT6" H 8450 1950 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/810-FG18X7R1H104KNT6" H 8450 1950 50  0001 C CNN "DistributorPartLink"
	1    8450 1950
	1    0    0    -1  
$EndComp
Connection ~ 8050 1500
Wire Wire Line
	8050 1500 8450 1500
Connection ~ 7650 1800
Connection ~ 8450 1800
Connection ~ 7650 2100
Connection ~ 8050 2100
Wire Wire Line
	8050 2100 8450 2100
Wire Wire Line
	8450 1800 9200 1800
Wire Wire Line
	8450 1500 8900 1500
Connection ~ 8450 1500
Wire Wire Line
	1500 1550 1500 1600
Wire Wire Line
	1700 1650 1700 1750
Wire Wire Line
	1700 1750 1650 1750
Wire Wire Line
	1800 1750 1800 1950
Wire Wire Line
	1800 1950 1500 1950
Wire Wire Line
	1500 1950 1500 1900
Wire Wire Line
	1500 2550 1500 2600
Wire Wire Line
	1700 2650 1700 2750
Wire Wire Line
	1700 2750 1650 2750
Wire Wire Line
	1800 2750 1800 2950
Wire Wire Line
	1800 2950 1500 2950
Wire Wire Line
	1500 2950 1500 2900
$Comp
L LFO-DigiVC:R_POT_TRIM_Panel_SongHuei--lmp-synth RV7
U 1 1 61127E7E
P 1500 2750
F 0 "RV7" H 1431 2613 50  0000 R CNN
F 1 "100K" H 1431 2704 50  0000 R CNN
F 2 "-lmp-synth:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1500 2750 50  0001 C CNN
F 3 "http://www.song-huei.com/proimages//eng/pdfimages/R0904N.pdf" H 1500 2750 50  0001 C CNN
F 4 "LIN" H 1431 2795 50  0000 R CNN "Value2"
F 5 "CV Amt" H 1431 2886 50  0000 R CNN "Label"
F 6 "Song Huei" H 1500 2750 50  0001 C CNN "Manufacturer"
F 7 "R0904N*" H 1500 2750 50  0001 C CNN "ManufacturerPartNum"
F 8 "SynthCube" H 1500 2750 50  0001 C CNN "Distributor"
F 9 "SH9MMTPOTMSTR" H 1500 2750 50  0001 C CNN "DistributorPartNum"
F 10 "https://synthcube.com/cart/9mm-trimmer-pots" H 1500 2750 50  0001 C CNN "DistributorPartLink"
	1    1500 2750
	1    0    0    1   
$EndComp
Text GLabel 4150 1650 2    50   Output ~ 0
POT-IN-1
Text GLabel 4150 2650 2    50   Output ~ 0
POT-IN-2
Text GLabel 4150 1950 2    50   Output ~ 0
IN-2
Text GLabel 4150 2450 2    50   Input ~ 0
OUT-1
Text GLabel 4150 2950 2    50   Input ~ 0
OUT-2
Text GLabel 4150 3450 2    50   Input ~ 0
OUT-3
NoConn ~ 2500 2350
NoConn ~ 3900 2350
NoConn ~ 2500 2850
NoConn ~ 2500 3250
NoConn ~ 2500 3350
NoConn ~ 2500 3750
NoConn ~ 3900 2850
NoConn ~ 3900 3250
NoConn ~ 3900 3350
NoConn ~ 3900 3750
Wire Wire Line
	7650 1500 8050 1500
Wire Wire Line
	7650 1800 8450 1800
Wire Wire Line
	7650 2100 8050 2100
Wire Wire Line
	7200 1800 7650 1800
Wire Wire Line
	7350 2100 7650 2100
Wire Wire Line
	7350 1500 7650 1500
NoConn ~ 1650 5750
NoConn ~ 1650 5150
NoConn ~ 1650 4550
$Comp
L LFO-DigiVC:Jack_WQP-PJ398--lmp-synth J8
U 1 1 6112A780
P 1450 5850
F 0 "J8" H 1270 5783 50  0000 R CNN
F 1 "WQP-PJ398" H 1270 5874 50  0000 R CNN
F 2 "-lmp-synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 1450 5850 50  0001 C CNN
F 3 "http://www.qingpu-electronics.com/en/products/WQP-PJ398SM-362.html" H 1450 5850 50  0001 C CNN
F 4 "OUT-3" H 1270 5960 50  0000 R CNN "Label"
F 5 "QingPu / Thonk" H 1450 5850 50  0001 C CNN "Manufacturer"
F 6 "PJ398SM / WQP518MA" H 1450 5850 50  0001 C CNN "ManufacturerPartNum"
F 7 "Thonk" H 1450 5850 50  0001 C CNN "Distributor"
F 8 "PJ398SM" H 1450 5850 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 1450 5850 50  0001 C CNN "DistributorPartLink"
F 10 "SynthCube" H 1450 5850 50  0001 C CNN "Distributor2"
F 11 "Adafruit" H 1450 5850 50  0001 C CNN "Distributor3"
F 12 "https://synthcube.com/cart/3-5mm-euro-jacks" H 1450 5850 50  0001 C CNN "DistributorPartLink2"
F 13 "https://www.adafruit.com/product/4031" H 1450 5850 50  0001 C CNN "DistributorPartLink3"
F 14 "WQP518MA" H 1450 5850 50  0001 C CNN "DistributorPartNum2"
F 15 "4031" H 1450 5850 50  0001 C CNN "DistributorPartNum3"
	1    1450 5850
	1    0    0    1   
$EndComp
$Comp
L LFO-DigiVC:Jack_WQP-PJ398--lmp-synth J7
U 1 1 6112A052
P 1450 5250
F 0 "J7" H 1270 5183 50  0000 R CNN
F 1 "WQP-PJ398" H 1270 5274 50  0000 R CNN
F 2 "-lmp-synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 1450 5250 50  0001 C CNN
F 3 "http://www.qingpu-electronics.com/en/products/WQP-PJ398SM-362.html" H 1450 5250 50  0001 C CNN
F 4 "OUT-2" H 1270 5360 50  0000 R CNN "Label"
F 5 "QingPu / Thonk" H 1450 5250 50  0001 C CNN "Manufacturer"
F 6 "PJ398SM / WQP518MA" H 1450 5250 50  0001 C CNN "ManufacturerPartNum"
F 7 "Thonk" H 1450 5250 50  0001 C CNN "Distributor"
F 8 "PJ398SM" H 1450 5250 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 1450 5250 50  0001 C CNN "DistributorPartLink"
F 10 "SynthCube" H 1450 5250 50  0001 C CNN "Distributor2"
F 11 "Adafruit" H 1450 5250 50  0001 C CNN "Distributor3"
F 12 "https://synthcube.com/cart/3-5mm-euro-jacks" H 1450 5250 50  0001 C CNN "DistributorPartLink2"
F 13 "https://www.adafruit.com/product/4031" H 1450 5250 50  0001 C CNN "DistributorPartLink3"
F 14 "WQP518MA" H 1450 5250 50  0001 C CNN "DistributorPartNum2"
F 15 "4031" H 1450 5250 50  0001 C CNN "DistributorPartNum3"
	1    1450 5250
	1    0    0    1   
$EndComp
$Comp
L LFO-DigiVC:Jack_WQP-PJ398--lmp-synth J6
U 1 1 6112987D
P 1450 4650
F 0 "J6" H 1270 4583 50  0000 R CNN
F 1 "WQP-PJ398" H 1270 4674 50  0000 R CNN
F 2 "-lmp-synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 1450 4650 50  0001 C CNN
F 3 "http://www.qingpu-electronics.com/en/products/WQP-PJ398SM-362.html" H 1450 4650 50  0001 C CNN
F 4 "OUT-1" H 1270 4760 50  0000 R CNN "Label"
F 5 "QingPu / Thonk" H 1450 4650 50  0001 C CNN "Manufacturer"
F 6 "PJ398SM / WQP518MA" H 1450 4650 50  0001 C CNN "ManufacturerPartNum"
F 7 "Thonk" H 1450 4650 50  0001 C CNN "Distributor"
F 8 "PJ398SM" H 1450 4650 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 1450 4650 50  0001 C CNN "DistributorPartLink"
F 10 "SynthCube" H 1450 4650 50  0001 C CNN "Distributor2"
F 11 "Adafruit" H 1450 4650 50  0001 C CNN "Distributor3"
F 12 "https://synthcube.com/cart/3-5mm-euro-jacks" H 1450 4650 50  0001 C CNN "DistributorPartLink2"
F 13 "https://www.adafruit.com/product/4031" H 1450 4650 50  0001 C CNN "DistributorPartLink3"
F 14 "WQP518MA" H 1450 4650 50  0001 C CNN "DistributorPartNum2"
F 15 "4031" H 1450 4650 50  0001 C CNN "DistributorPartNum3"
	1    1450 4650
	1    0    0    1   
$EndComp
$Comp
L LFO-DigiVC:GND--lmp-power #PWR07
U 1 1 61121F39
P 1700 5400
F 0 "#PWR07" H 1700 5150 50  0001 C CNN
F 1 "GND" H 1705 5227 50  0000 C CNN
F 2 "" H 1700 5400 50  0001 C CNN
F 3 "" H 1700 5400 50  0001 C CNN
	1    1700 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5400 1700 5350
Wire Wire Line
	1700 5350 1650 5350
$Comp
L LFO-DigiVC:GND--lmp-power #PWR08
U 1 1 61121F2A
P 1700 6000
F 0 "#PWR08" H 1700 5750 50  0001 C CNN
F 1 "GND" H 1705 5827 50  0000 C CNN
F 2 "" H 1700 6000 50  0001 C CNN
F 3 "" H 1700 6000 50  0001 C CNN
	1    1700 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6000 1700 5950
Wire Wire Line
	1700 5950 1650 5950
$Comp
L LFO-DigiVC:GND--lmp-power #PWR02
U 1 1 6111E037
P 1700 4200
F 0 "#PWR02" H 1700 3950 50  0001 C CNN
F 1 "GND" H 1705 4027 50  0000 C CNN
F 2 "" H 1700 4200 50  0001 C CNN
F 3 "" H 1700 4200 50  0001 C CNN
	1    1700 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4200 1700 4150
Wire Wire Line
	1700 4150 1650 4150
$Comp
L LFO-DigiVC:GND--lmp-power #PWR01
U 1 1 60CD6372
P 1700 4800
F 0 "#PWR01" H 1700 4550 50  0001 C CNN
F 1 "GND" H 1705 4627 50  0000 C CNN
F 2 "" H 1700 4800 50  0001 C CNN
F 3 "" H 1700 4800 50  0001 C CNN
	1    1700 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4800 1700 4750
Wire Wire Line
	1700 4750 1650 4750
Text GLabel 4150 3550 2    50   UnSpc ~ 0
LED-C
Text GLabel 4150 3650 2    50   UnSpc ~ 0
LED-A
$Comp
L LFO-DigiVC:GND--lmp-power #PWR0103
U 1 1 61265F24
P 4150 3150
F 0 "#PWR0103" H 4150 2900 50  0001 C CNN
F 1 "GND" V 4155 3022 50  0000 R CNN
F 2 "" H 4150 3150 50  0001 C CNN
F 3 "" H 4150 3150 50  0001 C CNN
	1    4150 3150
	0    -1   -1   0   
$EndComp
Text GLabel 4150 3050 2    50   Output ~ 0
IN-SW-FUNCTION
$Comp
L LFO-DigiVC:SW_SPDT_ON_OFF_ON--lmp-synth SW6
U 1 1 6117B12D
P 1450 2250
F 0 "SW6" H 1750 2350 50  0000 L CNN
F 1 "ON_OFF_ON" H 1750 2250 50  0000 L CNN
F 2 "-lmp-misc:SW_SPDT_THT_2.54" H 1450 2250 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/221/MS-100542-1173960.pdf" H 1450 2250 50  0001 C CNN
F 4 "Range" H 1750 2150 50  0000 L CNN "Label"
F 5 "Mountain Switch" H 1450 2250 50  0001 C CNN "Manufacturer"
F 6 "10TC412" H 1450 2250 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 1450 2250 50  0001 C CNN "Distributor"
F 8 "10TC412" H 1450 2250 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/Mountain-Switch/10TC412?qs=ITV4B%252BNEbTr7VI8tqT4%252BiQ%3D%3D" H 1450 2250 50  0001 C CNN "DistributorPartLink"
F 10 "Thonk" H 1450 2250 50  0001 C CNN "Distributor2"
F 11 "SynthCube" H 1450 2250 50  0001 C CNN "Distributor3"
F 12 "https://www.thonk.co.uk/shop/sub-mini-toggle-switches/" H 1450 2250 50  0001 C CNN "DistributorPartLink2"
F 13 "https://synthcube.com/cart/toggle-switch-submini-pc-pin" H 1450 2250 50  0001 C CNN "DistributorPartLink3"
	1    1450 2250
	-1   0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:Conn_Delptronics_Back_Left_4HP--lmp-synth J11
U 1 1 60CAA39B
P 3700 2650
F 0 "J11" H 3650 4000 50  0000 L CNN
F 1 "Conn_Back" H 3700 3900 50  0000 C CNN
F 2 "-lmp-synth:PinHeader_Delptronics_Back_Left_4HP" H 3700 2650 50  0001 C CNN
F 3 "~" H 3700 2650 50  0001 C CNN
F 4 "NoPart" H 3700 2650 50  0001 C CNN "NoPart"
F 5 "part of Delptronics Module Constrution Set" H 3700 2650 50  0001 C CNN "Note"
	1    3700 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 2050 1200 2150
Wire Wire Line
	1200 2150 1250 2150
Wire Wire Line
	1650 2250 1700 2250
Wire Wire Line
	1700 2250 1700 2150
Wire Wire Line
	1800 2250 1800 2450
Wire Wire Line
	1800 2450 1200 2450
Wire Wire Line
	1200 2450 1200 2350
Wire Wire Line
	1200 2350 1250 2350
$Comp
L LFO-DigiVC:GND--lmp-power #PWR0104
U 1 1 611B265F
P 4150 2150
F 0 "#PWR0104" H 4150 1900 50  0001 C CNN
F 1 "GND" V 4155 2022 50  0000 R CNN
F 2 "" H 4150 2150 50  0001 C CNN
F 3 "" H 4150 2150 50  0001 C CNN
	1    4150 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 3250 1250 3250
Wire Wire Line
	1700 3250 1650 3250
Wire Wire Line
	1200 3050 1200 3250
Wire Wire Line
	1700 3150 1700 3250
$Comp
L LFO-DigiVC:SW_SPST--lmp-synth SW8
U 1 1 611F5ADD
P 1450 3250
F 0 "SW8" H 1750 3400 50  0000 L CNN
F 1 "SPST" H 1750 3300 50  0000 L CNN
F 2 "-lmp-misc:SW_SPST_THT_2.54" H 1460 3080 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/221/MS-100542-1173960.pdf" H 1460 3080 50  0001 C CNN
F 4 "Mountain Switch" H 1460 3080 50  0001 C CNN "Manufacturer"
F 5 "10TC405" H 1460 3080 50  0001 C CNN "ManufacturerPartNum"
F 6 "https://www.mouser.ca/ProductDetail/Mountain-Switch/10TC405?qs=iZD9pWtnGRc4L7BaVXXEAQ%3D%3D" H 1460 3080 50  0001 C CNN "DistributorPartLink"
F 7 "Mouser" H 1460 3080 50  0001 C CNN "Distributor"
F 8 "10TC405" H 1460 3080 50  0001 C CNN "DistributorPartNum"
F 9 "Function" H 1750 3200 50  0000 L CNN "Label"
	1    1450 3250
	-1   0    0    -1  
$EndComp
Text GLabel 4150 2250 2    50   Input ~ 0
IN-SW-RANGE-HI
Text GLabel 4150 2050 2    50   Input ~ 0
IN-SW-RANGE-LO
$Comp
L LFO-DigiVC:Jack_WQP-PJ398--lmp-synth J5
U 1 1 6111E03E
P 1450 4050
F 0 "J5" H 1270 3983 50  0000 R CNN
F 1 "WQP-PJ398" H 1270 4074 50  0000 R CNN
F 2 "-lmp-synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical" H 1450 4050 50  0001 C CNN
F 3 "http://www.qingpu-electronics.com/en/products/WQP-PJ398SM-362.html" H 1450 4050 50  0001 C CNN
F 4 "IN-2" H 1270 4160 50  0000 R CNN "Label"
F 5 "QingPu / Thonk" H 1450 4050 50  0001 C CNN "Manufacturer"
F 6 "PJ398SM / WQP518MA" H 1450 4050 50  0001 C CNN "ManufacturerPartNum"
F 7 "Thonk" H 1450 4050 50  0001 C CNN "Distributor"
F 8 "PJ398SM" H 1450 4050 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.thonk.co.uk/shop/thonkiconn/" H 1450 4050 50  0001 C CNN "DistributorPartLink"
F 10 "SynthCube" H 1450 4050 50  0001 C CNN "Distributor2"
F 11 "Adafruit" H 1450 4050 50  0001 C CNN "Distributor3"
F 12 "https://synthcube.com/cart/3-5mm-euro-jacks" H 1450 4050 50  0001 C CNN "DistributorPartLink2"
F 13 "https://www.adafruit.com/product/4031" H 1450 4050 50  0001 C CNN "DistributorPartLink3"
F 14 "WQP518MA" H 1450 4050 50  0001 C CNN "DistributorPartNum2"
F 15 "4031" H 1450 4050 50  0001 C CNN "DistributorPartNum3"
	1    1450 4050
	1    0    0    1   
$EndComp
$Comp
L LFO-DigiVC:LED_5mm_Blue--lmp-synth D5
U 1 1 612E3EBC
P 1450 3550
F 0 "D5" V 1352 3629 50  0000 L CNN
F 1 "VAOL-5LSBY1" V 1443 3629 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm" H 1450 3550 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/423/VAOL-5LSBY1-1064871.pdf" H 1450 3550 50  0001 C CNN
F 4 "VCC" H 1450 3550 50  0001 C CNN "Manufacturer"
F 5 "VAOL-5LSBY1" H 1450 3550 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 1450 3550 50  0001 C CNN "Distributor"
F 7 "593-VAOL-5LSBY1" H 1450 3550 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/VCC/VAOL-5LSBY1?qs=sGAEpiMZZMvHYEB9WUp7EneOMcS%2FsWIS9dCGd3NWsaQ%3D" H 1450 3550 50  0001 C CNN "DistributorPartLink"
F 9 "LFO" V 1534 3629 50  0000 L CNN "Label"
	1    1450 3550
	0    -1   1    0   
$EndComp
Wire Wire Line
	2300 3450 2300 5850
Wire Wire Line
	1450 3400 1450 3350
Wire Wire Line
	1450 3350 1800 3350
Wire Wire Line
	1450 3750 1450 3700
Wire Wire Line
	1700 2150 2500 2150
Wire Wire Line
	1200 2050 2500 2050
Wire Wire Line
	1800 1750 2500 1750
Wire Wire Line
	1800 3550 2500 3550
Wire Wire Line
	1700 1650 2500 1650
Wire Wire Line
	1700 3150 2500 3150
Wire Wire Line
	1200 3050 2500 3050
Wire Wire Line
	1700 2650 2500 2650
$Comp
L LFO-DigiVC:Conn_Delptronics_Front_Left_4HP--lmp-synth J10
U 1 1 60CA1E30
P 2700 2650
F 0 "J10" H 2700 4000 50  0000 C CNN
F 1 "Conn_Front" H 2700 3900 50  0000 C CNN
F 2 "-lmp-synth:PinSocket_Delptronics_Front" H 2700 2650 50  0001 C CNN
F 3 "~" H 2700 2650 50  0001 C CNN
F 4 "NoPart" H 2700 2650 50  0001 C CNN "NoPart"
F 5 "part of Delptronics Module Constrution Set" H 2700 2650 50  0001 C CNN "Note"
	1    2700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1550 1500 1550
Wire Wire Line
	2500 2450 2100 2450
Wire Wire Line
	2500 2550 1500 2550
Wire Wire Line
	2500 2750 1800 2750
Wire Wire Line
	2500 3450 2300 3450
Wire Wire Line
	2500 1950 2000 1950
Wire Wire Line
	2500 2250 1800 2250
Wire Wire Line
	1800 3550 1800 3350
Wire Wire Line
	1800 3650 1800 3750
Wire Wire Line
	1800 3750 1450 3750
Wire Wire Line
	1800 3650 2500 3650
Wire Wire Line
	2200 2950 2500 2950
Wire Wire Line
	2000 1950 2000 4050
Wire Wire Line
	2100 2450 2100 4650
Wire Wire Line
	2200 2950 2200 5250
Wire Wire Line
	2500 1850 1900 1850
Wire Wire Line
	1900 1850 1900 3950
Wire Wire Line
	1650 3950 1900 3950
Wire Wire Line
	1650 4050 2000 4050
Wire Wire Line
	1650 4650 2100 4650
Wire Wire Line
	1650 5250 2200 5250
Wire Wire Line
	1650 5850 2300 5850
$Comp
L LFO-DigiVC:GND--lmp-power #PWR0105
U 1 1 61408F2B
P 4150 1850
F 0 "#PWR0105" H 4150 1600 50  0001 C CNN
F 1 "GND" V 4155 1722 50  0000 R CNN
F 2 "" H 4150 1850 50  0001 C CNN
F 3 "" H 4150 1850 50  0001 C CNN
	1    4150 1850
	0    -1   -1   0   
$EndComp
$Comp
L LFO-DigiVC:Logo_OSHW--lmp #G3
U 1 1 61AE6CC6
P 4950 7500
F 0 "#G3" H 4950 7308 60  0001 C CNN
F 1 "Logo_OSHW" H 4950 7692 60  0001 C CNN
F 2 "-lmp-misc:Logo_OSHW" H 4950 7500 50  0001 C CNN
F 3 "https://www.oshwa.org/definition/" H 4950 7500 50  0001 C CNN
F 4 "NoPart" H 4950 7500 50  0001 C CNN "NoPart"
	1    4950 7500
	1    0    0    -1  
$EndComp
$Comp
L LFO-DigiVC:GND--lmp-power #PWR0106
U 1 1 61B25E69
P 4150 1750
F 0 "#PWR0106" H 4150 1500 50  0001 C CNN
F 1 "GND" V 4155 1622 50  0000 R CNN
F 2 "" H 4150 1750 50  0001 C CNN
F 3 "" H 4150 1750 50  0001 C CNN
	1    4150 1750
	0    -1   -1   0   
$EndComp
$Comp
L LFO-DigiVC:+5V--lmp-power #PWR0107
U 1 1 61B263AB
P 4150 1550
F 0 "#PWR0107" H 4150 1400 50  0001 C CNN
F 1 "+5V" V 4165 1678 50  0000 L CNN
F 2 "" H 4150 1550 50  0001 C CNN
F 3 "" H 4150 1550 50  0001 C CNN
	1    4150 1550
	0    1    1    0   
$EndComp
$Comp
L LFO-DigiVC:GND--lmp-power #PWR0108
U 1 1 61B26540
P 4150 2750
F 0 "#PWR0108" H 4150 2500 50  0001 C CNN
F 1 "GND" V 4155 2622 50  0000 R CNN
F 2 "" H 4150 2750 50  0001 C CNN
F 3 "" H 4150 2750 50  0001 C CNN
	1    4150 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 2550 4050 2550
Wire Wire Line
	4050 1950 4050 2550
Wire Wire Line
	3900 1550 4150 1550
Wire Wire Line
	3900 1650 4150 1650
Wire Wire Line
	3900 1750 4150 1750
Wire Wire Line
	3900 1850 4150 1850
Connection ~ 4050 1950
Wire Wire Line
	4050 1950 4150 1950
Wire Wire Line
	3900 1950 4050 1950
Wire Wire Line
	3900 2050 4150 2050
Wire Wire Line
	3900 2150 4150 2150
Wire Wire Line
	3900 2250 4150 2250
Wire Wire Line
	3900 2450 4150 2450
Wire Wire Line
	3900 2650 4150 2650
Wire Wire Line
	3900 2750 4150 2750
Wire Wire Line
	3900 2950 4150 2950
Wire Wire Line
	3900 3050 4150 3050
Wire Wire Line
	3900 3150 4150 3150
Wire Wire Line
	3900 3450 4150 3450
Wire Wire Line
	3900 3550 4150 3550
Wire Wire Line
	3900 3650 4150 3650
$Comp
L LFO-DigiVC:PCB_Delptronics_MCS_4HP--lmp-synth H1
U 1 1 61AF3FD0
P 5950 3300
F 0 "H1" H 6278 3391 50  0000 L CNN
F 1 "PCB_Delptronics_MCS_4HP" H 6278 3300 50  0000 L CNN
F 2 "-lmp-misc:NoFootprint" H 5950 3300 50  0001 C CNN
F 3 "https://delptronics.com/module-construction-set.php" H 5950 3790 50  0001 C CNN
F 4 "Delptronics" H 5950 3300 50  0001 C CNN "Manufacturer"
F 5 "" H 5950 3300 50  0001 C CNN "ManufacturerPartNum"
F 6 "Delptronics" H 5950 3300 50  0001 C CNN "Distributor"
F 7 "" H 5950 3300 50  0001 C CNN "DistributorPartNum"
F 8 "https://delptronics.com/module-construction-set.php" H 5950 3300 50  0001 C CNN "DistributorPartLink"
F 9 "synthCube" H 5950 3300 50  0001 C CNN "Distributor2"
F 10 "DELPMCSMSTR" H 5950 3300 50  0001 C CNN "DistributorPartNum2"
F 11 "https://synthcube.com/cart/delptronics-module-construction-set" H 5950 3300 50  0001 C CNN "DistributorPartLink2"
F 12 "Modular Addict" H 5950 3300 50  0001 C CNN "Distributor3"
F 13 "" H 5950 3300 50  0001 C CNN "DistributorPartNum3"
F 14 "https://modularaddict.com/module-construction-set-eurorack-prototype-development-platform-delptronics" H 5950 3300 50  0001 C CNN "DistributorPartLink3"
F 15 "PCB & panel kit" H 6278 3209 50  0000 L CNN "Note"
	1    5950 3300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
