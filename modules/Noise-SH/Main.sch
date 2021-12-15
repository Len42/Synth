EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "Main - Eurorack Noise / S&H Module"
Date "2021-08-21"
Rev "1.2"
Comp "Len Popp"
Comment1 "Copyright © 2021 Len Popp CC BY-SA"
Comment2 "4HP module designed for Delptronics Module Construction Set"
Comment3 "Eurorack module with noise generation and sample-and-hold"
Comment4 "COMPLETED"
$EndDescr
Text Notes 850  7400 0    50   ~ 0
All fixed resistors are 1% tolerance unless otherwise specified.\nAll electrolytic capacitors are rated for 25VDC unless otherwise specified.
$Comp
L Noise-SH:Q_NPN_2N3904--lmp Q1
U 1 1 60DF7CC7
P 1200 2250
AR Path="/60DF7CC7" Ref="Q1"  Part="1" 
AR Path="/60E21390/60DF7CC7" Ref="Q1"  Part="1" 
AR Path="/61B1E4CE/60DF7CC7" Ref="Q1"  Part="1" 
F 0 "Q1" H 1388 2204 50  0000 L CNN
F 1 "2N3904" H 1388 2295 50  0000 L CNN
F 2 "-lmp-misc:TO-92_Inline_Wide" H 1375 2175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 1200 2250 50  0001 L CNN
F 4 "Central Semiconductor" H 1200 2250 50  0001 C CNN "Manufacturer"
F 5 "2N3904 PBFREE" H 1200 2250 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 1200 2250 50  0001 C CNN "Distributor"
F 7 "610-2N3904" H 1200 2250 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Central-Semiconductor/2N3904-PBFREE?qs=u16ybLDytRZopNVvg2vJjA%3D%3D" H 1200 2250 50  0001 C CNN "DistributorPartLink"
	1    1200 2250
	1    0    0    1   
$EndComp
NoConn ~ 1300 2400
$Comp
L Noise-SH:R--lmp R3
U 1 1 60DF9207
P 1300 1850
F 0 "R3" H 1370 1896 50  0000 L CNN
F 1 "220K" H 1370 1805 50  0000 L CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1230 1850 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 1300 1850 50  0001 C CNN
F 4 "YAGEO" H 1300 1850 50  0001 C CNN "Manufacturer"
F 5 "MFR-25FTF52-220K" H 1300 1850 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 1300 1850 50  0001 C CNN "Distributor"
F 7 "603-MFR-25FTF52-220K" H 1300 1850 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=iCzJi%2FIZBF5PYwecy8ih6Q%3D%3D" H 1300 1850 50  0001 C CNN "DistributorPartLink"
	1    1300 1850
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:GND--lmp-power #PWR019
U 1 1 60DF93A1
P 1000 2350
F 0 "#PWR019" H 1000 2100 50  0001 C CNN
F 1 "GND" H 1005 2177 50  0000 C CNN
F 2 "" H 1000 2350 50  0001 C CNN
F 3 "" H 1000 2350 50  0001 C CNN
	1    1000 2350
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:Q_NPN_2N3904--lmp Q2
U 1 1 60DF992C
P 2450 2050
AR Path="/60DF992C" Ref="Q2"  Part="1" 
AR Path="/60E21390/60DF992C" Ref="Q2"  Part="1" 
AR Path="/61B1E4CE/60DF992C" Ref="Q2"  Part="1" 
F 0 "Q2" H 2638 2096 50  0000 L CNN
F 1 "2N3904" H 2638 2005 50  0000 L CNN
F 2 "-lmp-misc:TO-92_Inline_Wide" H 2625 1975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 2450 2050 50  0001 L CNN
F 4 "Central Semiconductor" H 2450 2050 50  0001 C CNN "Manufacturer"
F 5 "2N3904 PBFREE" H 2450 2050 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 2450 2050 50  0001 C CNN "Distributor"
F 7 "610-2N3904" H 2450 2050 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Central-Semiconductor/2N3904-PBFREE?qs=u16ybLDytRZopNVvg2vJjA%3D%3D" H 2450 2050 50  0001 C CNN "DistributorPartLink"
	1    2450 2050
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:R--lmp R6
U 1 1 60DFA3B1
P 2250 1800
F 0 "R6" V 2043 1800 50  0000 C CNN
F 1 "1M" V 2134 1800 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 2180 1800 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 2250 1800 50  0001 C CNN
F 4 "YAGEO" H 2250 1800 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-1M" H 2250 1800 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 2250 1800 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-1M" H 2250 1800 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-1M?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWL%252BPYAYdUNTvA%3D" H 2250 1800 50  0001 C CNN "DistributorPartLink"
	1    2250 1800
	0    1    1    0   
$EndComp
$Comp
L Noise-SH:R--lmp R7
U 1 1 60DFAA17
P 2550 1450
F 0 "R7" H 2620 1496 50  0000 L CNN
F 1 "4K7" H 2620 1405 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_6" V 2480 1450 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 2550 1450 50  0001 C CNN
F 4 "YAGEO" H 2550 1450 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-4K7" H 2550 1450 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 2550 1450 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-4K7" H 2550 1450 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-4K7?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWL306yKz0WYrY%3D" H 2550 1450 50  0001 C CNN "DistributorPartLink"
	1    2550 1450
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:GND--lmp-power #PWR023
U 1 1 60DFB070
P 2550 2350
F 0 "#PWR023" H 2550 2100 50  0001 C CNN
F 1 "GND" H 2555 2177 50  0000 C CNN
F 2 "" H 2550 2350 50  0001 C CNN
F 3 "" H 2550 2350 50  0001 C CNN
	1    2550 2350
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:C--lmp C14
U 1 1 60DFC321
P 2950 1700
F 0 "C14" V 2698 1700 50  0000 C CNN
F 1 "1U" V 2789 1700 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W4.0mm_P7.50mm_MKT" H 2988 1550 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/film/mkt/data_sheet/20/20/db/fc_2009/mkt_b32560_564.pdf" H 2950 1700 50  0001 C CNN
F 4 "TDK" H 2950 1700 50  0001 C CNN "Manufacturer"
F 5 "B32560J0105K000" H 2950 1700 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 2950 1700 50  0001 C CNN "Distributor"
F 7 "871-B32560J105K" H 2950 1700 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/EPCOS-TDK/B32560J0105K000?qs=BXAlDLqNavmfEpgvg4LQCg%3D%3D" H 2950 1700 50  0001 C CNN "DistributorPartLink"
	1    2950 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 2250 1100 2250
Wire Wire Line
	1000 2250 1000 2350
Wire Wire Line
	1300 2100 1300 2050
Wire Wire Line
	1300 1700 1300 1650
Connection ~ 1300 2050
Wire Wire Line
	1300 2050 1300 2000
Wire Wire Line
	2100 1800 2050 1800
Wire Wire Line
	2050 1800 2050 2050
Connection ~ 2050 2050
Wire Wire Line
	2050 2050 2350 2050
Wire Wire Line
	2550 1800 2550 1700
Wire Wire Line
	2400 1800 2550 1800
Wire Wire Line
	2550 1900 2550 1800
Connection ~ 2550 1800
Wire Wire Line
	2550 2350 2550 2200
Wire Wire Line
	2550 1300 2550 1250
Wire Wire Line
	2800 1700 2550 1700
Connection ~ 2550 1700
Wire Wire Line
	2550 1700 2550 1600
Wire Wire Line
	3100 1700 3150 1700
$Comp
L Noise-SH:R--lmp R10
U 1 1 60E01E2B
P 3300 1700
F 0 "R10" V 3093 1700 50  0000 C CNN
F 1 "15K" V 3184 1700 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_4" V 3230 1700 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 3300 1700 50  0001 C CNN
F 4 "YAGEO" H 3300 1700 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-24K" H 3300 1700 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 3300 1700 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-24K" H 3300 1700 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-24K?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWLuGMcyaqCM%2FY%3D" H 3300 1700 50  0001 C CNN "DistributorPartLink"
	1    3300 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 1700 3500 1700
Wire Wire Line
	3500 1700 3500 1400
Text GLabel 5550 1300 2    50   Output ~ 0
OUT-NOISE-WHITE
Connection ~ 4200 1800
Wire Wire Line
	4200 1800 4300 1800
Wire Wire Line
	4200 1800 4150 1800
Wire Wire Line
	4200 1400 4200 1800
Wire Wire Line
	4000 1400 4200 1400
Wire Wire Line
	3500 1400 3700 1400
$Comp
L Noise-SH:R--lmp R14
U 1 1 60E0193D
P 3850 1400
F 0 "R14" V 3643 1400 50  0000 C CNN
F 1 "100K" V 3734 1400 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 3780 1400 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 3850 1400 50  0001 C CNN
F 4 "YAGEO" H 3850 1400 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-100K" H 3850 1400 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 3850 1400 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-100K" H 3850 1400 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-100K?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWL3GVOiMccmLA%3D" H 3850 1400 50  0001 C CNN "DistributorPartLink"
	1    3850 1400
	0    1    1    0   
$EndComp
$Comp
L Noise-SH:TL072--lmp-opamp U2
U 1 1 60DFED15
P 3850 1800
F 0 "U2" H 3850 2000 50  0000 C CNN
F 1 "TL072" H 3850 2100 50  0000 C CNN
F 2 "-lmp-misc:DIP-8_W7.62mm_LongPads" H 3850 1800 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tl072b.pdf?ts=1628812694194" H 3850 1800 50  0001 C CNN
F 4 "Texas Instruments" H 3850 1800 50  0001 C CNN "Manufacturer"
F 5 "TL072BCP" H 3850 1800 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 3850 1800 50  0001 C CNN "Distributor"
F 7 "595-TL072BCP" H 3850 1800 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Texas-Instruments/TL072BCP?qs=p6YqzpSxLIxmo8AyZLsP4g%3D%3D" H 3850 1800 50  0001 C CNN "DistributorPartLink"
	1    3850 1800
	1    0    0    1   
$EndComp
Wire Wire Line
	3500 1700 3450 1700
Connection ~ 3500 1700
$Comp
L Noise-SH:GND--lmp-power #PWR026
U 1 1 60E0B43D
P 3450 2000
F 0 "#PWR026" H 3450 1750 50  0001 C CNN
F 1 "GND" H 3455 1827 50  0000 C CNN
F 2 "" H 3450 2000 50  0001 C CNN
F 3 "" H 3450 2000 50  0001 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2000 3450 1900
Wire Wire Line
	3450 1900 3550 1900
Text Notes 3200 2450 0    50   ~ 0
Adjust gain as required \nto get +/- 5V signal.
Connection ~ 4750 2700
Wire Wire Line
	4750 2300 4750 2700
Wire Wire Line
	4950 2300 4750 2300
Connection ~ 5450 2700
Wire Wire Line
	5450 2300 5450 2700
Wire Wire Line
	5250 2300 5450 2300
Text GLabel 5550 3100 2    50   Output ~ 0
OUT-NOISE-PINK
Connection ~ 5450 3100
Wire Wire Line
	5450 3100 5550 3100
Wire Wire Line
	4400 3000 4300 3000
Wire Wire Line
	5450 3100 5400 3100
Wire Wire Line
	5450 2700 5450 3100
Wire Wire Line
	5250 2700 5450 2700
Wire Wire Line
	4750 3000 4800 3000
Connection ~ 4750 3000
Wire Wire Line
	4750 2700 4950 2700
Wire Wire Line
	4750 3000 4750 2700
Wire Wire Line
	4700 3000 4750 3000
Wire Wire Line
	4700 3200 4800 3200
Wire Wire Line
	4700 3300 4700 3200
$Comp
L Noise-SH:GND--lmp-power #PWR028
U 1 1 60E0CBE5
P 4700 3300
F 0 "#PWR028" H 4700 3050 50  0001 C CNN
F 1 "GND" H 4705 3127 50  0000 C CNN
F 2 "" H 4700 3300 50  0001 C CNN
F 3 "" H 4700 3300 50  0001 C CNN
	1    4700 3300
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:TL072--lmp-opamp U2
U 2 1 60E0480A
P 5100 3100
F 0 "U2" H 5100 3300 50  0000 C CNN
F 1 "TL072" H 5100 3400 50  0000 C CNN
F 2 "-lmp-misc:DIP-8_W7.62mm_LongPads" H 5100 3100 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tl072b.pdf?ts=1628812694194" H 5100 3100 50  0001 C CNN
F 4 "Texas Instruments" H 5100 3100 50  0001 C CNN "Manufacturer"
F 5 "TL072BCP" H 5100 3100 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 5100 3100 50  0001 C CNN "Distributor"
F 7 "595-TL072BCP" H 5100 3100 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Texas-Instruments/TL072BCP?qs=p6YqzpSxLIxmo8AyZLsP4g%3D%3D" H 5100 3100 50  0001 C CNN "DistributorPartLink"
	2    5100 3100
	1    0    0    1   
$EndComp
$Comp
L Noise-SH:R--lmp R17
U 1 1 60E07524
P 5100 2700
F 0 "R17" V 4893 2700 50  0000 C CNN
F 1 "10K" V 4984 2700 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 5030 2700 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 5100 2700 50  0001 C CNN
F 4 "YAGEO" H 5100 2700 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FRF52-10K" H 5100 2700 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 5100 2700 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FRF5210K" H 5100 2700 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=19cKSROHwrBLAZVjkXsohw%3D%3D" H 5100 2700 50  0001 C CNN "DistributorPartLink"
	1    5100 2700
	0    1    1    0   
$EndComp
$Comp
L Noise-SH:R--lmp R16
U 1 1 60E07A77
P 4550 3000
F 0 "R16" V 4343 3000 50  0000 C CNN
F 1 "10K" V 4434 3000 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_2" V 4480 3000 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 4550 3000 50  0001 C CNN
F 4 "YAGEO" H 4550 3000 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FRF52-10K" H 4550 3000 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 4550 3000 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FRF5210K" H 4550 3000 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=19cKSROHwrBLAZVjkXsohw%3D%3D" H 4550 3000 50  0001 C CNN "DistributorPartLink"
	1    4550 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 1800 4300 3000
Text Notes 1150 2900 0    50   ~ 0
Q1 is selected to be noisy.\nBE junction is reverse-biased \nand operating in avalanche mode.\nCut off collector lead to avoid EMI.\nSelect R3 & R6 values for approx. 100 mV p-p.
Text Notes 950  900  0    50   ~ 10
Noise Generation
Connection ~ 4300 1800
$Comp
L power:+12VA #PWR020
U 1 1 60ED0D8E
P 1300 1650
F 0 "#PWR020" H 1300 1500 50  0001 C CNN
F 1 "+12VA" H 1315 1823 50  0000 C CNN
F 2 "" H 1300 1650 50  0001 C CNN
F 3 "" H 1300 1650 50  0001 C CNN
	1    1300 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+12VA #PWR022
U 1 1 60ED15A1
P 2550 1250
F 0 "#PWR022" H 2550 1100 50  0001 C CNN
F 1 "+12VA" H 2565 1423 50  0000 C CNN
F 2 "" H 2550 1250 50  0001 C CNN
F 3 "" H 2550 1250 50  0001 C CNN
	1    2550 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6100 3400 6100
Wire Wire Line
	3250 6050 3250 6100
Wire Wire Line
	3050 6100 3250 6100
Wire Wire Line
	3250 5750 3250 5700
Wire Wire Line
	3600 5700 3250 5700
Wire Wire Line
	3600 5850 3600 5700
$Comp
L Noise-SH:Q_JFET_N_SDG--lmp Q3
U 1 1 60E5783E
P 3600 6000
AR Path="/60E5783E" Ref="Q3"  Part="1" 
AR Path="/60E21390/60E5783E" Ref="Q3"  Part="1" 
AR Path="/61B1E4CE/60E5783E" Ref="Q3"  Part="1" 
F 0 "Q3" V 3833 6000 50  0000 C CNN
F 1 "J309" V 3924 6000 50  0000 C CNN
F 2 "-lmp-misc:TO-92_Inline_Wide" H 3800 6100 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/676/jfet-j308-j309-j310-interfet.r00-1649146.pdf" H 3600 6000 50  0001 C CNN
F 4 "InterFET" H 3600 6000 50  0001 C CNN "Manufacturer"
F 5 "J309" H 3600 6000 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 3600 6000 50  0001 C CNN "Distributor"
F 7 "106-J309" H 3600 6000 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/InterFET/J309?qs=%2Fha2pyFadug%252BRXW75aF8sJNF9wzp6WNhAjvZlcGd5MA%3D" H 3600 6000 50  0001 C CNN "DistributorPartLink"
	1    3600 6000
	0    1    1    0   
$EndComp
$Comp
L Noise-SH:1N4148--lmp-diode D5
U 1 1 60E56A53
P 4300 5300
F 0 "D5" V 4254 5220 50  0000 R CNN
F 1 "1N4148" V 4345 5220 50  0000 R CNN
F 2 "-lmp-stripboard:SB_Gen_6" H 4300 5125 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/308/1N914_D-2309448.pdf" H 4300 5300 50  0001 C CNN
F 4 "On Semi / Fairchild" H 4300 5300 50  0001 C CNN "Manufacturer"
F 5 "1N4148-T50R" H 4300 5300 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 4300 5300 50  0001 C CNN "Distributor"
F 7 "512-1N4148T50R" H 4300 5300 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=0lQeLiL1qyZS6rosZp7Ehg%3D%3D" H 4300 5300 50  0001 C CNN "DistributorPartLink"
	1    4300 5300
	0    -1   1    0   
$EndComp
$Comp
L Noise-SH:R--lmp R15
U 1 1 60E58EE7
P 3250 5900
F 0 "R15" H 3320 5946 50  0000 L CNN
F 1 "1M" H 3320 5855 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_2" V 3180 5900 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 3250 5900 50  0001 C CNN
F 4 "YAGEO" H 3250 5900 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-1M" H 3250 5900 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 3250 5900 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-1M" H 3250 5900 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-1M?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWL%252BPYAYdUNTvA%3D" H 3250 5900 50  0001 C CNN "DistributorPartLink"
	1    3250 5900
	1    0    0    -1  
$EndComp
Connection ~ 3900 6100
Wire Wire Line
	4200 6100 3900 6100
Wire Wire Line
	4150 5900 4200 5900
Wire Wire Line
	4150 5650 4150 5900
Wire Wire Line
	4850 5650 4150 5650
Wire Wire Line
	4850 6000 4850 5650
Wire Wire Line
	4800 6000 4850 6000
$Comp
L Noise-SH:TL074--lmp-opamp U4
U 4 1 60E7F3C7
P 4500 6000
F 0 "U4" H 4500 6200 50  0000 C CNN
F 1 "TL074" H 4500 6300 50  0000 C CNN
F 2 "-lmp-misc:DIP-14_W7.62mm_LongPads" H 4450 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4550 6200 50  0001 C CNN
	4    4500 6000
	1    0    0    1   
$EndComp
Wire Wire Line
	3900 6100 3800 6100
Wire Wire Line
	3900 6150 3900 6100
Wire Wire Line
	3900 6500 3900 6450
$Comp
L Noise-SH:GND--lmp-power #PWR029
U 1 1 60E73600
P 3900 6500
F 0 "#PWR029" H 3900 6250 50  0001 C CNN
F 1 "GND" H 3905 6327 50  0000 C CNN
F 2 "" H 3900 6500 50  0001 C CNN
F 3 "" H 3900 6500 50  0001 C CNN
	1    3900 6500
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:CF--lmp C15
U 1 1 60E73265
P 3900 6300
F 0 "C15" H 4015 6391 50  0000 L CNN
F 1 "10N" H 4015 6300 50  0000 L CNN
F 2 "-lmp-misc:C_Rect_Kemet_L7.2mm_W2.5mm_P5mm" H 3938 6150 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/212/1/KEM_F3072_SMR-1103375.pdf" H 3900 6300 50  0001 C CNN
F 4 "PPS" H 4015 6209 50  0000 L CNN "Type"
F 5 "KEMET" H 3900 6300 50  0001 C CNN "Manufacturer"
F 6 "SMR5103J50J01L16.5CBULK" H 3900 6300 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 3900 6300 50  0001 C CNN "Distributor"
F 8 "80-SMR5103J50J0116" H 3900 6300 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/?qs=lyRJTFulC0ZVzsb1DGnFvw%3D%3D" H 3900 6300 50  0001 C CNN "DistributorPartLink"
	1    3900 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6600 1450 6550
Wire Wire Line
	1450 6200 1450 6250
Wire Wire Line
	1350 6200 1450 6200
Wire Wire Line
	2350 6000 2400 6000
Wire Wire Line
	2350 5750 2350 6000
Wire Wire Line
	3050 5750 2350 5750
Wire Wire Line
	3050 6100 3050 5750
Wire Wire Line
	3000 6100 3050 6100
$Comp
L Noise-SH:GND--lmp-power #PWR027
U 1 1 60E2A3EE
P 1450 6600
F 0 "#PWR027" H 1450 6350 50  0001 C CNN
F 1 "GND" H 1455 6427 50  0000 C CNN
F 2 "" H 1450 6600 50  0001 C CNN
F 3 "" H 1450 6600 50  0001 C CNN
	1    1450 6600
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:R--lmp R13
U 1 1 60E2A102
P 1450 6400
F 0 "R13" H 1520 6446 50  0000 L CNN
F 1 "1M" H 1520 6355 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 1380 6400 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 1450 6400 50  0001 C CNN
F 4 "YAGEO" H 1450 6400 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-1M" H 1450 6400 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 1450 6400 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-1M" H 1450 6400 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-1M?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWL%252BPYAYdUNTvA%3D" H 1450 6400 50  0001 C CNN "DistributorPartLink"
	1    1450 6400
	1    0    0    -1  
$EndComp
Text GLabel 1350 6200 0    50   Input ~ 0
IN-SAMPLE
$Comp
L Noise-SH:TL074--lmp-opamp U4
U 3 1 60E28B22
P 2700 6100
F 0 "U4" H 2700 6300 50  0000 C CNN
F 1 "TL074" H 2700 6400 50  0000 C CNN
F 2 "-lmp-misc:DIP-14_W7.62mm_LongPads" H 2650 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2750 6300 50  0001 C CNN
	3    2700 6100
	1    0    0    1   
$EndComp
Text Notes 950  4100 0    50   ~ 10
Sample & Hold
Wire Wire Line
	4100 4950 4300 4950
$Comp
L Noise-SH:TL074--lmp-opamp U4
U 1 1 60E26EBE
P 3800 4950
F 0 "U4" H 3800 4583 50  0000 C CNN
F 1 "TL074" H 3800 4674 50  0000 C CNN
F 2 "-lmp-misc:DIP-14_W7.62mm_LongPads" H 3750 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3850 5150 50  0001 C CNN
F 4 "Texas Instruments" H 3800 4950 50  0001 C CNN "Manufacturer"
F 5 "TL074BCN" H 3800 4950 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 3800 4950 50  0001 C CNN "Distributor"
F 7 "595-TL074BCN" H 3800 4950 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=vxEfx8VrU7BHurOY5iQdiA%3D%3D" H 3800 4950 50  0001 C CNN "DistributorPartLink"
	1    3800 4950
	1    0    0    1   
$EndComp
Wire Wire Line
	3350 4850 3350 5150
Wire Wire Line
	3500 4850 3350 4850
Wire Wire Line
	2950 5050 2850 5050
Connection ~ 2950 5050
Wire Wire Line
	2950 5150 2950 5050
Wire Wire Line
	3500 5050 2950 5050
Wire Wire Line
	2450 5050 2550 5050
Connection ~ 2450 5050
Wire Wire Line
	2450 5050 2450 5150
Wire Wire Line
	2350 5050 2450 5050
Wire Wire Line
	1950 5050 2050 5050
Connection ~ 1950 5050
Wire Wire Line
	1950 5150 1950 5050
$Comp
L Noise-SH:GND--lmp-power #PWR024
U 1 1 60EE7A6D
P 1950 5550
F 0 "#PWR024" H 1950 5300 50  0001 C CNN
F 1 "GND" H 1955 5377 50  0000 C CNN
F 2 "" H 1950 5550 50  0001 C CNN
F 3 "" H 1950 5550 50  0001 C CNN
	1    1950 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5450 2950 5500
Wire Wire Line
	2450 5500 1950 5500
Connection ~ 2450 5500
Wire Wire Line
	2450 5450 2450 5500
Wire Wire Line
	1950 5500 1950 5450
Wire Wire Line
	3350 5450 3350 5500
Wire Wire Line
	3350 4800 3350 4850
Wire Wire Line
	3350 4450 3350 4500
$Comp
L Noise-SH:+12V--lmp-power #PWR025
U 1 1 60ED84BB
P 3350 4450
F 0 "#PWR025" H 3350 4300 50  0001 C CNN
F 1 "+12V" H 3365 4623 50  0000 C CNN
F 2 "" H 3350 4450 50  0001 C CNN
F 3 "" H 3350 4450 50  0001 C CNN
	1    3350 4450
	1    0    0    -1  
$EndComp
Text Label 4300 4950 0    50   ~ 0
TRIGGER
$Comp
L Noise-SH:R--lmp R11
U 1 1 60EBA283
P 3350 4650
F 0 "R11" H 3420 4696 50  0000 L CNN
F 1 "1M" H 3420 4605 50  0000 L CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3280 4650 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 3350 4650 50  0001 C CNN
F 4 "YAGEO" H 3350 4650 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-1M" H 3350 4650 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 3350 4650 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-1M" H 3350 4650 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-1M?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWL%252BPYAYdUNTvA%3D" H 3350 4650 50  0001 C CNN "DistributorPartLink"
	1    3350 4650
	1    0    0    -1  
$EndComp
Text Notes 950  4250 0    50   ~ 0
after Mutable Instruments
$Comp
L Noise-SH:R--lmp R8
U 1 1 60EC7CCC
P 2700 5050
F 0 "R8" V 2493 5050 50  0000 C CNN
F 1 "11K" V 2584 5050 50  0000 C CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2630 5050 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 2700 5050 50  0001 C CNN
F 4 "YAGEO" H 2700 5050 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-11K" H 2700 5050 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 2700 5050 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-11K" H 2700 5050 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-11K?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWLyNqWxbbuCTE%3D" H 2700 5050 50  0001 C CNN "DistributorPartLink"
	1    2700 5050
	0    1    1    0   
$EndComp
$Comp
L Noise-SH:R--lmp R9
U 1 1 60EB91DF
P 2950 5300
F 0 "R9" H 3020 5346 50  0000 L CNN
F 1 "330K" H 3020 5255 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 2880 5300 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 2950 5300 50  0001 C CNN
F 4 "YAGEO" H 2950 5300 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-100K" H 2950 5300 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 2950 5300 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-100K" H 2950 5300 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-100K?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWL3GVOiMccmLA%3D" H 2950 5300 50  0001 C CNN "DistributorPartLink"
	1    2950 5300
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:1N4148--lmp-diode D4
U 1 1 60EBAE0D
P 2450 5300
F 0 "D4" V 2404 5380 50  0000 L CNN
F 1 "1N4148" V 2495 5380 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_1" H 2450 5125 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/308/1N914_D-2309448.pdf" H 2450 5300 50  0001 C CNN
F 4 "On Semi / Fairchild" H 2450 5300 50  0001 C CNN "Manufacturer"
F 5 "1N4148-T50R" H 2450 5300 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 2450 5300 50  0001 C CNN "Distributor"
F 7 "512-1N4148T50R" H 2450 5300 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=0lQeLiL1qyZS6rosZp7Ehg%3D%3D" H 2450 5300 50  0001 C CNN "DistributorPartLink"
	1    2450 5300
	0    1    1    0   
$EndComp
$Comp
L Noise-SH:R--lmp R5
U 1 1 60EB8C41
P 1950 5300
F 0 "R5" H 2020 5346 50  0000 L CNN
F 1 "100K" H 2020 5255 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 1880 5300 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 1950 5300 50  0001 C CNN
F 4 "YAGEO" H 1950 5300 50  0001 C CNN "Manufacturer"
F 5 "MFR-12FTF52-100K" H 1950 5300 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 1950 5300 50  0001 C CNN "Distributor"
F 7 "603-MFR-12FTF52-100K" H 1950 5300 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-12FTF52-100K?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWL3GVOiMccmLA%3D" H 1950 5300 50  0001 C CNN "DistributorPartLink"
	1    1950 5300
	1    0    0    -1  
$EndComp
Text GLabel 1400 5050 0    50   Input ~ 0
INOUT-TRIG
Text Notes 875  6100 0    50   ~ 0
IN-SAMPLE from internal \nnoise source or external signal
$Comp
L Noise-SH:C--lmp C12
U 1 1 610F1564
P 1800 2050
F 0 "C12" V 1458 2050 50  0000 C CNN
F 1 "100N" V 1549 2050 50  0000 C CNN
F 2 "-lmp-misc:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 1838 1900 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/ceramic/lead-mlcc/catalog/leadmlcc_halogenfree_fa_en.pdf" H 1800 2050 50  0001 C CNN
F 4 "C0G/NP0" V 1640 2050 50  0000 C CNN "Value2"
F 5 "TDK" H 1800 2050 50  0001 C CNN "Manufacturer"
F 6 "FA16C0G2A104JRU06" H 1800 2050 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 1800 2050 50  0001 C CNN "Distributor"
F 8 "810-FA16C0G2A104JRU6" H 1800 2050 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/ProductDetail/TDK/FA16C0G2A104JRU06?qs=rrS6PyfT74eIXMieHdmSyA%3D%3D" H 1800 2050 50  0001 C CNN "DistributorPartLink"
	1    1800 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 2050 2050 2050
Wire Wire Line
	1300 2050 1650 2050
$Comp
L Noise-SH:C--lmp C13
U 1 1 60EC75FB
P 2200 5050
F 0 "C13" V 1948 5050 50  0000 C CNN
F 1 "100P" V 2039 5050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W4.4mm_P5.00mm" H 2238 4900 50  0001 C CNN
F 3 "https://www.mouser.com/catalog/specsheets/tdkc-s-a0002934059-1.pdf" H 2200 5050 50  0001 C CNN
F 4 "TDK" H 2200 5050 50  0001 C CNN "Manufacturer"
F 5 "CK45-R3AD101K-NRA" H 2200 5050 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 2200 5050 50  0001 C CNN "Distributor"
F 7 "810-CK45-R3AD101K-NA" H 2200 5050 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/TDK/CK45-R3AD101K-NRA?qs=2FIyTMJ0hNnnCwDIL7fTTQ%3D%3D" H 2200 5050 50  0001 C CNN "DistributorPartLink"
	1    2200 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 5050 1950 5050
Connection ~ 4850 6000
Wire Wire Line
	4850 6000 4950 6000
Connection ~ 3050 6100
Connection ~ 3250 6100
Wire Wire Line
	4300 4950 4300 5150
Wire Wire Line
	4900 4950 4300 4950
Connection ~ 4300 4950
$Comp
L Noise-SH:CF--lmp C16
U 1 1 6123E3FA
P 5100 2300
F 0 "C16" V 4848 2300 50  0000 C CNN
F 1 "10N" V 4939 2300 50  0000 C CNN
F 2 "-lmp-misc:C_Rect_Kemet_L7.2mm_W2.5mm_P5mm" H 5138 2150 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/212/1/KEM_F3072_SMR-1103375.pdf" H 5100 2300 50  0001 C CNN
F 4 "KEMET" H 5100 2300 50  0001 C CNN "Manufacturer"
F 5 "SMR5103J50J01L16.5CBULK" H 5100 2300 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 5100 2300 50  0001 C CNN "Distributor"
F 7 "80-SMR5103J50J0116" H 5100 2300 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=lyRJTFulC0ZVzsb1DGnFvw%3D%3D" H 5100 2300 50  0001 C CNN "DistributorPartLink"
	1    5100 2300
	0    1    1    0   
$EndComp
Text GLabel 9750 2500 2    50   Output ~ 0
OUT-CLOCK-TRIG
Text Notes 9800 2650 0    50   ~ 0
0-8V pulse wave
$Comp
L Noise-SH:R--lmp R23
U 1 1 612FDCC7
P 9150 1950
F 0 "R23" V 8943 1950 50  0000 C CNN
F 1 "10K" V 9034 1950 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_6" V 9080 1950 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 9150 1950 50  0001 C CNN
F 4 "" V 9320 1950 50  0001 C CNN "Value2"
F 5 "YAGEO" H 9150 1950 50  0001 C CNN "Manufacturer"
F 6 "MFR-12*" H 9150 1950 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 9150 1950 50  0001 C CNN "Distributor"
F 8 "603-MFR-12*" H 9150 1950 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/c/?m=YAGEO&power+rating=166+mW+(1%2f6+W)&tolerance=1+%25&instock=y" H 9150 1950 50  0001 C CNN "DistributorPartLink"
	1    9150 1950
	0    1    1    0   
$EndComp
$Comp
L Noise-SH:Q_PNP_2N3906--lmp Q5
U 1 1 612FE85F
P 9450 1950
F 0 "Q5" H 9638 1996 50  0000 L CNN
F 1 "2N3906" H 9638 1905 50  0000 L CNN
F 2 "-lmp-misc:TO-92_Inline_Wide" H 9625 1875 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 9450 1950 50  0001 L CNN
F 4 "ON Semiconductor / Fairchild" H 9452 1760 50  0001 C CNN "Manufacturer"
F 5 "2N3906TAR" H 9454 1748 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 9454 1748 50  0001 C CNN "Distributor"
F 7 "512-2N3906TAR" H 9454 1748 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/ON-Semiconductor-Fairchild/2N3906TAR?qs=VnWRSnLxLU2ypWvU5pgBbw%3D%3D" H 9452 1760 50  0001 C CNN "DistributorPartLink"
	1    9450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1950 9300 1950
$Comp
L Noise-SH:+12V--lmp-power #PWR037
U 1 1 61308D97
P 9550 1700
F 0 "#PWR037" H 9550 1550 50  0001 C CNN
F 1 "+12V" H 9565 1873 50  0000 C CNN
F 2 "" H 9550 1700 50  0001 C CNN
F 3 "" H 9550 1700 50  0001 C CNN
	1    9550 1700
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:R--lmp R24
U 1 1 6130E6AD
P 9550 2300
F 0 "R24" H 9620 2346 50  0000 L CNN
F 1 "6K2" H 9620 2255 50  0000 L CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9480 2300 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 9550 2300 50  0001 C CNN
F 4 "" V 9720 2300 50  0001 C CNN "Value2"
F 5 "YAGEO" H 9550 2300 50  0001 C CNN "Manufacturer"
F 6 "MFR-12*" H 9550 2300 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 9550 2300 50  0001 C CNN "Distributor"
F 8 "603-MFR-12*" H 9550 2300 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/c/?m=YAGEO&power+rating=166+mW+(1%2f6+W)&tolerance=1+%25&instock=y" H 9550 2300 50  0001 C CNN "DistributorPartLink"
	1    9550 2300
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:R--lmp R25
U 1 1 6130E938
P 9550 2700
F 0 "R25" H 9620 2746 50  0000 L CNN
F 1 "13K" H 9620 2655 50  0000 L CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9480 2700 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 9550 2700 50  0001 C CNN
F 4 "" V 9720 2700 50  0001 C CNN "Value2"
F 5 "YAGEO" H 9550 2700 50  0001 C CNN "Manufacturer"
F 6 "MFR-12*" H 9550 2700 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 9550 2700 50  0001 C CNN "Distributor"
F 8 "603-MFR-12*" H 9550 2700 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/c/?m=YAGEO&power+rating=166+mW+(1%2f6+W)&tolerance=1+%25&instock=y" H 9550 2700 50  0001 C CNN "DistributorPartLink"
	1    9550 2700
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:GND--lmp-power #PWR038
U 1 1 6130F19C
P 9550 2900
F 0 "#PWR038" H 9550 2650 50  0001 C CNN
F 1 "GND" H 9555 2727 50  0000 C CNN
F 2 "" H 9550 2900 50  0001 C CNN
F 3 "" H 9550 2900 50  0001 C CNN
	1    9550 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2900 9550 2850
Wire Wire Line
	9550 2150 9550 2100
Wire Wire Line
	9550 2450 9550 2500
Wire Wire Line
	9550 2500 9750 2500
Connection ~ 9550 2500
Wire Wire Line
	9550 2500 9550 2550
Wire Wire Line
	9550 1700 9550 1800
$Comp
L Noise-SH:R--lmp R27
U 1 1 61354A88
P 4850 1300
F 0 "R27" V 4643 1300 50  0000 C CNN
F 1 "3K9" V 4734 1300 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_2" V 4780 1300 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 4850 1300 50  0001 C CNN
F 4 "" V 5020 1300 50  0001 C CNN "Value2"
F 5 "YAGEO" H 4850 1300 50  0001 C CNN "Manufacturer"
F 6 "MFR-12*" H 4850 1300 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 4850 1300 50  0001 C CNN "Distributor"
F 8 "603-MFR-12*" H 4850 1300 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/c/?m=YAGEO&power+rating=166+mW+(1%2f6+W)&tolerance=1+%25&instock=y" H 4850 1300 50  0001 C CNN "DistributorPartLink"
	1    4850 1300
	0    1    1    0   
$EndComp
$Comp
L Noise-SH:CF--lmp C17
U 1 1 6135646F
P 5100 1450
F 0 "C17" H 5215 1496 50  0000 L CNN
F 1 "1N" H 5215 1405 50  0000 L CNN
F 2 "-lmp-misc:C_Rect_Kemet_L7.2mm_W2.5mm_P5mm" H 5138 1300 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/212/F3294_MMK-1101858.pdf" H 5100 1450 50  0001 C CNN
F 4 "KEMET" H 5100 1450 50  0001 C CNN "Manufacturer"
F 5 "MMK5102J100J01L16.5TA18" H 5100 1450 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 5100 1450 50  0001 C CNN "Distributor"
F 7 "80-MMK5102J100J1TA18" H 5100 1450 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/80-MMK5102J100J1TA18" H 5100 1450 50  0001 C CNN "DistributorPartLink"
	1    5100 1450
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:GND--lmp-power #PWR018
U 1 1 6135D811
P 5100 1600
F 0 "#PWR018" H 5100 1350 50  0001 C CNN
F 1 "GND" H 5105 1427 50  0000 C CNN
F 2 "" H 5100 1600 50  0001 C CNN
F 3 "" H 5100 1600 50  0001 C CNN
	1    5100 1600
	1    0    0    -1  
$EndComp
Connection ~ 5100 1300
Wire Wire Line
	5100 1300 5000 1300
Wire Wire Line
	1450 6200 2400 6200
Connection ~ 1450 6200
$Comp
L Noise-SH:R--lmp R12
U 1 1 60EB97BA
P 3350 5300
F 0 "R12" H 3420 5346 50  0000 L CNN
F 1 "120K" H 3420 5255 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 3280 5300 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 3350 5300 50  0001 C CNN
F 4 "YAGEO" H 3350 5300 50  0001 C CNN "Manufacturer"
F 5 "MFR-25FTE52-15K" H 3350 5300 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 3350 5300 50  0001 C CNN "Distributor"
F 7 "603-MFR-25FTE52-15K" H 3350 5300 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/YAGEO/MFR-25FTE52-15K?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWL4mPFMr3R5fM%3D" H 3350 5300 50  0001 C CNN "DistributorPartLink"
	1    3350 5300
	1    0    0    -1  
$EndComp
Connection ~ 3350 4850
Wire Wire Line
	2950 5500 3350 5500
Connection ~ 2950 5500
Text Notes 2400 4750 0    50   ~ 0
R9 is selected to give \nminimum required \npulse width to charge \ncapacitor C15
Text Notes 950  1050 0    50   ~ 0
after Synthnerd
Wire Wire Line
	8800 4600 8800 4700
Text GLabel 5450 6150 0    50   UnSpc ~ 0
RV-SLEW-2
$Comp
L Noise-SH:GND--lmp-power #PWR035
U 1 1 61056D64
P 5650 6550
F 0 "#PWR035" H 5650 6300 50  0001 C CNN
F 1 "GND" H 5655 6377 50  0000 C CNN
F 2 "" H 5650 6550 50  0001 C CNN
F 3 "" H 5650 6550 50  0001 C CNN
	1    5650 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6150 5650 6150
Wire Wire Line
	5650 6200 5650 6150
Connection ~ 5650 6150
Wire Wire Line
	5650 6150 5950 6150
Wire Wire Line
	5650 6550 5650 6500
Connection ~ 6600 6050
Wire Wire Line
	6600 6050 6700 6050
Wire Wire Line
	5900 5950 5950 5950
Wire Wire Line
	5900 5700 5900 5950
Wire Wire Line
	6600 5700 5900 5700
Wire Wire Line
	6600 6050 6600 5700
Wire Wire Line
	6550 6050 6600 6050
$Comp
L Noise-SH:TL074--lmp-opamp U4
U 2 1 61057EAC
P 6250 6050
F 0 "U4" H 6300 6250 50  0000 C CNN
F 1 "TL074" H 6300 6350 50  0000 C CNN
F 2 "-lmp-misc:DIP-14_W7.62mm_LongPads" H 6200 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6300 6250 50  0001 C CNN
F 4 "Texas Instruments" H 6250 6050 50  0001 C CNN "Manufacturer"
F 5 "TL074BCN" H 6250 6050 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 6250 6050 50  0001 C CNN "Distributor"
F 7 "595-TL074BCN" H 6250 6050 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/?qs=vxEfx8VrU7BHurOY5iQdiA%3D%3D" H 6250 6050 50  0001 C CNN "DistributorPartLink"
	2    6250 6050
	1    0    0    1   
$EndComp
Wire Wire Line
	7050 6050 7000 6050
Text GLabel 7050 6050 2    50   Output ~ 0
OUT-HOLD
$Comp
L Noise-SH:R_1K_Output--lmp-synth R18
U 1 1 60E92019
P 6850 6050
F 0 "R18" V 6553 6050 50  0000 C CNN
F 1 "1K" V 6644 6050 50  0000 C CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6780 6050 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/427/ccf07-1762725.pdf" H 6850 6050 50  0001 C CNN
F 4 "Vishay / Dale" H 6850 6050 50  0001 C CNN "Manufacturer"
F 5 "CCF071K00JKE36" H 6850 6050 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 6850 6050 50  0001 C CNN "Distributor"
F 7 "71-CCF071K00JKE36" H 6850 6050 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Vishay-Dale/CCF071K00JKE36?qs=sGAEpiMZZMsPqMdJzcrNwqw41JD0NFylHV1MADcQnpo%3D" H 6850 6050 50  0001 C CNN "DistributorPartLink"
F 9 "Output limiting" H 6850 6050 50  0001 C CNN "Note"
F 10 "5%, 1/4 W" V 6735 6050 50  0000 C CNN "Value2"
	1    6850 6050
	0    1    1    0   
$EndComp
$Comp
L Noise-SH:C--lmp C18
U 1 1 61263914
P 5650 6350
F 0 "C18" H 5535 6304 50  0000 R CNN
F 1 "1U" H 5535 6395 50  0000 R CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W4.0mm_P7.50mm_MKT" H 5688 6200 50  0001 C CNN
F 3 "https://product.tdk.com/system/files/dam/doc/product/capacitor/film/mkt/data_sheet/20/20/db/fc_2009/mkt_b32560_564.pdf" H 5650 6350 50  0001 C CNN
F 4 "TDK" H 5650 6350 50  0001 C CNN "Manufacturer"
F 5 "B32560J0105K000" H 5650 6350 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 5650 6350 50  0001 C CNN "Distributor"
F 7 "871-B32560J105K" H 5650 6350 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/EPCOS-TDK/B32560J0105K000?qs=BXAlDLqNavmfEpgvg4LQCg%3D%3D" H 5650 6350 50  0001 C CNN "DistributorPartLink"
	1    5650 6350
	-1   0    0    1   
$EndComp
Text Notes 4800 6450 0    50   ~ 0
Pot on front panel
Text GLabel 4950 6000 2    50   UnSpc ~ 0
RV-SLEW-1
$Comp
L Noise-SH:CP--lmp C9
U 1 1 614E541E
P 7550 5050
F 0 "C9" H 7668 5096 50  0000 L CNN
F 1 "1U" H 7668 5005 50  0000 L CNN
F 2 "-lmp-misc:CP_Radial_D5.0mm_P2.50mm" H 7588 4900 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/977/e_YXJ-1601195.pdf" H 7550 5050 50  0001 C CNN
F 4 "Rubycon" H 7550 5050 50  0001 C CNN "Manufacturer"
F 5 "50YXJ1M5X11" H 7550 5050 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7550 5050 50  0001 C CNN "Distributor"
F 7 "232-50YXJ1M5X11" H 7550 5050 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/232-50YXJ1M5X11" H 7550 5050 50  0001 C CNN "DistributorPartLink"
	1    7550 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4250 5600 4250
Wire Wire Line
	5300 4250 4900 4250
$Comp
L Noise-SH:R--lmp R4
U 1 1 614D2C8E
P 5450 4250
F 0 "R4" V 5243 4250 50  0000 C CNN
F 1 "10K" V 5334 4250 50  0000 C CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5380 4250 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 5450 4250 50  0001 C CNN
F 4 "" V 5620 4250 50  0001 C CNN "Value2"
F 5 "YAGEO" H 5450 4250 50  0001 C CNN "Manufacturer"
F 6 "MFR-12*" H 5450 4250 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 5450 4250 50  0001 C CNN "Distributor"
F 8 "603-MFR-12*" H 5450 4250 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/c/?m=YAGEO&power+rating=166+mW+(1%2f6+W)&tolerance=1+%25&instock=y" H 5450 4250 50  0001 C CNN "DistributorPartLink"
	1    5450 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 4450 5850 4500
Connection ~ 5850 4450
Wire Wire Line
	5850 4450 6450 4450
Wire Wire Line
	5850 4800 5850 4850
Wire Wire Line
	5850 4400 5850 4450
$Comp
L Noise-SH:GND--lmp-power #PWR030
U 1 1 614BCF86
P 5850 4850
F 0 "#PWR030" H 5850 4600 50  0001 C CNN
F 1 "GND" H 5855 4677 50  0000 C CNN
F 2 "" H 5850 4850 50  0001 C CNN
F 3 "" H 5850 4850 50  0001 C CNN
	1    5850 4850
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:R--lmp R19
U 1 1 614B66C0
P 5850 4650
F 0 "R19" H 5920 4696 50  0000 L CNN
F 1 "10K" H 5920 4605 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_2" V 5780 4650 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 5850 4650 50  0001 C CNN
F 4 "" V 6020 4650 50  0001 C CNN "Value2"
F 5 "YAGEO" H 5850 4650 50  0001 C CNN "Manufacturer"
F 6 "MFR-12*" H 5850 4650 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 5850 4650 50  0001 C CNN "Distributor"
F 8 "603-MFR-12*" H 5850 4650 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/c/?m=YAGEO&power+rating=166+mW+(1%2f6+W)&tolerance=1+%25&instock=y" H 5850 4650 50  0001 C CNN "DistributorPartLink"
	1    5850 4650
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:Q_PNP_2N3906--lmp Q4
U 1 1 614B66AE
P 5750 4250
F 0 "Q4" H 5938 4296 50  0000 L CNN
F 1 "2N3906" H 5938 4205 50  0000 L CNN
F 2 "-lmp-misc:TO-92_Inline_Wide" H 5925 4175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 5750 4250 50  0001 L CNN
F 4 "ON Semiconductor / Fairchild" H 5752 4060 50  0001 C CNN "Manufacturer"
F 5 "2N3906TAR" H 5754 4048 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 5754 4048 50  0001 C CNN "Distributor"
F 7 "512-2N3906TAR" H 5754 4048 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/ON-Semiconductor-Fairchild/2N3906TAR?qs=VnWRSnLxLU2ypWvU5pgBbw%3D%3D" H 5752 4060 50  0001 C CNN "DistributorPartLink"
	1    5750 4250
	1    0    0    -1  
$EndComp
Connection ~ 7550 4850
Wire Wire Line
	7550 4900 7550 4850
Connection ~ 6950 5250
Wire Wire Line
	6950 5250 6950 5050
$Comp
L Noise-SH:GND--lmp-power #PWR036
U 1 1 613A2A8C
P 8800 4700
F 0 "#PWR036" H 8800 4450 50  0001 C CNN
F 1 "GND" H 8805 4527 50  0000 C CNN
F 2 "" H 8800 4700 50  0001 C CNN
F 3 "" H 8800 4700 50  0001 C CNN
	1    8800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4600 8800 4600
Wire Wire Line
	8150 4450 8200 4450
Wire Wire Line
	7450 4450 7850 4450
$Comp
L Noise-SH:R_1K_Output--lmp-synth R22
U 1 1 6138E588
P 8000 4450
F 0 "R22" V 7703 4450 50  0000 C CNN
F 1 "2K2" V 7794 4450 50  0000 C CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7930 4450 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/427/ccf07-1762725.pdf" H 8000 4450 50  0001 C CNN
F 4 "5%, 1/4 W" V 7885 4450 50  0000 C CNN "Value2"
F 5 "Output limiting" V 7925 4375 50  0001 C CNN "Note"
F 6 "Vishay / Dale" H 8000 4450 50  0001 C CNN "Manufacturer"
F 7 "CCF071K00JKE36" H 8000 4450 50  0001 C CNN "ManufacturerPartNum"
F 8 "Mouser" V 7925 4450 50  0001 C CNN "Distributor"
F 9 "71-CCF071K00JKE36" H 8000 4450 50  0001 C CNN "DistributorPartNum"
F 10 "https://www.mouser.ca/ProductDetail/Vishay-Dale/CCF071K00JKE36?qs=sGAEpiMZZMsPqMdJzcrNwqw41JD0NFylHV1MADcQnpo%3D" H 8000 4450 50  0001 C CNN "DistributorPartLink"
	1    8000 4450
	0    1    1    0   
$EndComp
$Comp
L Noise-SH:GND--lmp-power #PWR032
U 1 1 6138DE02
P 6950 5300
F 0 "#PWR032" H 6950 5050 50  0001 C CNN
F 1 "GND" H 6955 5127 50  0000 C CNN
F 2 "" H 6950 5300 50  0001 C CNN
F 3 "" H 6950 5300 50  0001 C CNN
	1    6950 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5250 6950 5300
Wire Wire Line
	7550 5250 6950 5250
Wire Wire Line
	7550 4650 7550 4850
Connection ~ 7550 4650
Wire Wire Line
	7450 4650 7550 4650
Wire Wire Line
	7450 4850 7550 4850
$Comp
L Noise-SH:+12V--lmp-power #PWR033
U 1 1 6136E3AA
P 7550 3950
F 0 "#PWR033" H 7550 3800 50  0001 C CNN
F 1 "+12V" H 7565 4123 50  0000 C CNN
F 2 "" H 7550 3950 50  0001 C CNN
F 3 "" H 7550 3950 50  0001 C CNN
	1    7550 3950
	1    0    0    -1  
$EndComp
NoConn ~ 6450 4650
Connection ~ 6950 4000
Wire Wire Line
	6350 4850 6450 4850
Wire Wire Line
	6350 4000 6350 4850
Wire Wire Line
	6950 4000 6350 4000
Wire Wire Line
	7550 4000 7550 4050
Connection ~ 7550 4000
Wire Wire Line
	6950 4000 6950 4250
Wire Wire Line
	7550 4000 6950 4000
Wire Wire Line
	7550 4350 7550 4650
Wire Wire Line
	7550 5200 7550 5250
Wire Wire Line
	7550 3950 7550 4000
$Comp
L Noise-SH:R--lmp R21
U 1 1 6133A920
P 7550 4200
F 0 "R21" H 7620 4246 50  0000 L CNN
F 1 "82K" H 7620 4155 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 7480 4200 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 7550 4200 50  0001 C CNN
F 4 "" V 7720 4200 50  0001 C CNN "Value2"
F 5 "YAGEO" H 7550 4200 50  0001 C CNN "Manufacturer"
F 6 "MFR-12*" H 7550 4200 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 7550 4200 50  0001 C CNN "Distributor"
F 8 "603-MFR-12*" H 7550 4200 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/c/?m=YAGEO&power+rating=166+mW+(1%2f6+W)&tolerance=1+%25&instock=y" H 7550 4200 50  0001 C CNN "DistributorPartLink"
	1    7550 4200
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:ICM7556--lmp-IC-misc U3
U 2 1 61338AB1
P 6950 4650
F 0 "U3" H 7050 5150 50  0000 L CNN
F 1 "ICM7556" H 7050 5050 50  0000 L CNN
F 2 "-lmp-misc:DIP-14_W7.62mm_LongPads" H 6950 4650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/icm7/icm7555-56.pdf" H 6950 4650 50  0001 C CNN
F 4 "Renesas / Intersil" H 6950 4650 100 0001 C CNN "Manufacturer"
F 5 "ICM7556IPDZ" H 6950 4650 100 0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 6950 4650 100 0001 C CNN "Distributor"
F 7 "968-ICM7556IPDZ" H 6950 4650 100 0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Renesas-Intersil/ICM7556IPDZ?qs=9fLuogzTs8KkiwynQpkCWw%3D%3D" H 6950 4650 100 0001 C CNN "DistributorPartLink"
	2    6950 4650
	1    0    0    -1  
$EndComp
Text GLabel 8700 4600 0    50   UnSpc ~ 0
LED-TRIG-C
Text GLabel 8200 4450 2    50   UnSpc ~ 0
LED-TRIG-A
Text Notes 8300 4350 0    50   ~ 0
LED on front panel
Wire Wire Line
	4900 4250 4900 4950
$Comp
L Noise-SH:+12V--lmp-power #PWR021
U 1 1 614B66B4
P 5850 4050
F 0 "#PWR021" H 5850 3900 50  0001 C CNN
F 1 "+12V" H 5865 4223 50  0000 C CNN
F 2 "" H 5850 4050 50  0001 C CNN
F 3 "" H 5850 4050 50  0001 C CNN
	1    5850 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4050 5850 4100
Text Notes 5350 3700 0    50   ~ 10
Pulse Stretcher for LED
Text Notes 900  4950 0    50   ~ 0
+5V trigger or gate \nfrom internal clock \nor external input
Wire Wire Line
	4300 1300 4300 1800
Wire Wire Line
	4300 1300 4700 1300
Wire Wire Line
	5100 1300 5550 1300
Text Notes 5650 2300 0    50   ~ 0
Switch on front panel \nselects white or pink noise.
Text GLabel 5900 2000 0    50   Input ~ 0
NOISE-SELECT
$Comp
L Noise-SH:R_1K_Output--lmp-synth R28
U 1 1 611BF4AE
P 6100 2000
F 0 "R28" V 5803 2000 50  0000 C CNN
F 1 "1K" V 5894 2000 50  0000 C CNN
F 2 "-lmp-stripboard:SB_Gen_2" V 6030 2000 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/427/ccf07-1762725.pdf" H 6100 2000 50  0001 C CNN
F 4 "5%, 1/4 W" V 5985 2000 50  0000 C CNN "Value2"
F 5 "Output limiting" V 6025 1925 50  0001 C CNN "Note"
F 6 "Vishay / Dale" H 6100 2000 50  0001 C CNN "Manufacturer"
F 7 "CCF071K00JKE36" H 6100 2000 50  0001 C CNN "ManufacturerPartNum"
F 8 "Mouser" V 6025 2000 50  0001 C CNN "Distributor"
F 9 "71-CCF071K00JKE36" H 6100 2000 50  0001 C CNN "DistributorPartNum"
F 10 "https://www.mouser.ca/ProductDetail/Vishay-Dale/CCF071K00JKE36?qs=sGAEpiMZZMsPqMdJzcrNwqw41JD0NFylHV1MADcQnpo%3D" H 6100 2000 50  0001 C CNN "DistributorPartLink"
	1    6100 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 2000 5950 2000
Wire Wire Line
	6250 2000 6300 2000
Wire Wire Line
	8850 2350 8850 2600
Text GLabel 6300 2000 2    50   Output ~ 0
OUT-NOISE
Wire Wire Line
	8850 1550 8850 2150
Wire Wire Line
	7350 1450 7450 1450
Wire Wire Line
	7000 3000 7000 3050
Connection ~ 7000 3000
Wire Wire Line
	7000 3000 8300 3000
Wire Wire Line
	7000 2600 7000 2650
Connection ~ 7000 2600
Wire Wire Line
	7000 2600 8850 2600
Wire Wire Line
	7000 1950 7000 2600
Connection ~ 7000 1950
Wire Wire Line
	7000 1950 7800 1950
Wire Wire Line
	7000 1550 7000 1600
Connection ~ 7000 1550
Wire Wire Line
	7000 1550 8850 1550
Wire Wire Line
	7000 1450 7050 1450
$Comp
L Noise-SH:R--lmp R26
U 1 1 612E9712
P 7200 1450
F 0 "R26" V 6993 1450 50  0000 C CNN
F 1 "4K7" V 7084 1450 50  0000 C CNN
F 2 "-lmp-misc:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 1450 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 7200 1450 50  0001 C CNN
F 4 "" V 7370 1450 50  0001 C CNN "Value2"
F 5 "YAGEO" H 7200 1450 50  0001 C CNN "Manufacturer"
F 6 "MFR-12*" H 7200 1450 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 7200 1450 50  0001 C CNN "Distributor"
F 8 "603-MFR-12*" H 7200 1450 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/c/?m=YAGEO&power+rating=166+mW+(1%2f6+W)&tolerance=1+%25&instock=y" H 7200 1450 50  0001 C CNN "DistributorPartLink"
	1    7200 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 2950 7000 3000
Wire Wire Line
	7000 1900 7000 1950
Wire Wire Line
	7000 1450 7000 1550
Wire Wire Line
	8300 1300 8300 1650
Wire Wire Line
	8300 2550 8300 3000
Connection ~ 8300 1300
Wire Wire Line
	8300 1300 8300 1250
Wire Wire Line
	8150 1300 8300 1300
Wire Wire Line
	8300 1650 8300 1750
Connection ~ 8300 1650
Wire Wire Line
	7700 1650 8300 1650
Wire Wire Line
	7700 2350 7700 1650
Wire Wire Line
	7800 2350 7700 2350
Wire Wire Line
	8800 2150 8850 2150
Wire Wire Line
	8800 2350 8850 2350
NoConn ~ 7800 2150
$Comp
L Noise-SH:ICM7556--lmp-IC-misc U3
U 1 1 6125557B
P 8300 2150
F 0 "U3" H 8400 2650 50  0000 L CNN
F 1 "ICM7556" H 8400 2550 50  0000 L CNN
F 2 "-lmp-misc:DIP-14_W7.62mm_LongPads" H 8300 2150 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/icm7/icm7555-56.pdf" H 8300 2150 50  0001 C CNN
F 4 "Renesas / Intersil" H 8300 2150 100 0001 C CNN "Manufacturer"
F 5 "ICM7556IPDZ" H 8300 2150 100 0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 8300 2150 100 0001 C CNN "Distributor"
F 7 "968-ICM7556IPDZ" H 8300 2150 100 0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/Renesas-Intersil/ICM7556IPDZ?qs=9fLuogzTs8KkiwynQpkCWw%3D%3D" H 8300 2150 100 0001 C CNN "DistributorPartLink"
	1    8300 2150
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:+12V--lmp-power #PWR034
U 1 1 6125602B
P 8300 1250
F 0 "#PWR034" H 8300 1100 50  0001 C CNN
F 1 "+12V" H 8315 1423 50  0000 C CNN
F 2 "" H 8300 1250 50  0001 C CNN
F 3 "" H 8300 1250 50  0001 C CNN
	1    8300 1250
	1    0    0    -1  
$EndComp
Text Notes 7450 1200 0    50   ~ 0
Pot on front panel
Text GLabel 8150 1300 0    50   UnSpc ~ 0
RV-CLOCK-FREQ-1
Text GLabel 7450 1450 2    50   UnSpc ~ 0
RV-CLOCK-FREQ-2
$Comp
L Noise-SH:R--lmp R20
U 1 1 612717B3
P 7000 1750
F 0 "R20" H 7070 1796 50  0000 L CNN
F 1 "1K5" H 7070 1705 50  0000 L CNN
F 2 "-lmp-stripboard:SB_Gen_1" V 6930 1750 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/447/Yageo_LR_MFR_1-1714151.pdf" H 7000 1750 50  0001 C CNN
F 4 "" V 7170 1750 50  0001 C CNN "Value2"
F 5 "YAGEO" H 7000 1750 50  0001 C CNN "Manufacturer"
F 6 "MFR-12*" H 7000 1750 50  0001 C CNN "ManufacturerPartNum"
F 7 "Mouser" H 7000 1750 50  0001 C CNN "Distributor"
F 8 "603-MFR-12*" H 7000 1750 50  0001 C CNN "DistributorPartNum"
F 9 "https://www.mouser.ca/c/?m=YAGEO&power+rating=166+mW+(1%2f6+W)&tolerance=1+%25&instock=y" H 7000 1750 50  0001 C CNN "DistributorPartLink"
	1    7000 1750
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:CP--lmp C8
U 1 1 6126BA4F
P 7000 2800
F 0 "C8" H 7118 2846 50  0000 L CNN
F 1 "4U7" H 7118 2755 50  0000 L CNN
F 2 "-lmp-misc:CP_Radial_D5.0mm_P2.50mm" H 7038 2650 50  0001 C CNN
F 3 "https://www.mouser.ca/datasheet/2/977/e_YXJ-1601195.pdf" H 7000 2800 50  0001 C CNN
F 4 "Rubycon" H 7000 2800 50  0001 C CNN "Manufacturer"
F 5 "50YXJ1M5X11" H 7000 2800 50  0001 C CNN "ManufacturerPartNum"
F 6 "Mouser" H 7000 2800 50  0001 C CNN "Distributor"
F 7 "232-50YXJ1M5X11" H 7000 2800 50  0001 C CNN "DistributorPartNum"
F 8 "https://www.mouser.ca/ProductDetail/232-50YXJ1M5X11" H 7000 2800 50  0001 C CNN "DistributorPartLink"
	1    7000 2800
	1    0    0    -1  
$EndComp
$Comp
L Noise-SH:GND--lmp-power #PWR031
U 1 1 6125DB08
P 7000 3050
F 0 "#PWR031" H 7000 2800 50  0001 C CNN
F 1 "GND" H 7005 2877 50  0000 C CNN
F 2 "" H 7000 3050 50  0001 C CNN
F 3 "" H 7000 3050 50  0001 C CNN
	1    7000 3050
	1    0    0    -1  
$EndComp
Text Notes 6900 900  0    50   ~ 10
Internal Trigger Clock
Wire Wire Line
	8800 1950 9000 1950
Wire Wire Line
	3600 5500 4300 5500
Wire Wire Line
	4300 5500 4300 5450
Wire Wire Line
	3600 5500 3600 5700
Connection ~ 3600 5700
Wire Wire Line
	1950 5550 1950 5500
Connection ~ 1950 5500
Wire Wire Line
	2450 5500 2950 5500
$EndSCHEMATC
