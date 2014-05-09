'<Vein. An MS-DOS OS interface>
'
'Copyright (C) <2014> <Navin Ipe>
'Contact: navinipe at gmail dot com
'
'This program is free software: you can redistribute it and/or modify
'it under the terms of the GNU General Public License as published by
'the Free Software Foundation, either version 3 of the License, or
'(at your option) any later version.
'
'This program is distributed in the hope that it will be useful,
'but WITHOUT ANY WARRANTY; without even the implied warranty of
'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
'GNU General Public License for more details.
'
'You should have received a copy of the GNU General Public License
'along with this program. If not, see <http://www.gnu.org/licenses/>.
10 'BUG: check file deletion section
70 '*********************************************
80 '*        V E I N  Operating System          *
90 '*********************************************
100 '<<<<<<<<<<<Created by Navin.K.Ipe>>>>>>>>>>>
120 CLS : CSR$ = CHR$(233):  SCREEN 0, 0, 0: KEY OFF:CLOSE#1,#2
125 DR$ = "C:\": SHELL "CD C:\": SHELL "C:\"
230 'MAINSCREEN
240 COLOR 1, 4: CLS : COLOR 7, 2: PG = 1
250 CR = 20: CC = 41: NCR = CR: NCC = CC
260 ON KEY(1) GOSUB 9870: KEY(1) ON
261 ON KEY(2) GOSUB 11950: KEY(2) ON
265 ON KEY(3) GOSUB 1120: KEY(3) ON
266 ON ERROR GOTO 12070
270 LOCATE 1, 1: PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
272 COLOR 10, 8: LOCATE 23, 3: PRINT "[ Press F1 for help ]": COLOR 7, 2
280 LOCATE 3, 3: PRINT "здбдддддддддддддддд©"
290 LOCATE 4, 3: PRINT "Ё Ё  Disk Drives   Ё"
300 LOCATE 5, 3: PRINT "юдадддддддддддддддды"
310 LOCATE 7, 3: PRINT "здбдддддддддддддддд©"
320 LOCATE 8, 3: PRINT "Ё Ё  Explore       Ё"
330 LOCATE 9, 3: PRINT "юдадддддддддддддддды"
340 LOCATE 11, 3: PRINT "здбдддддддддддддддд©"
350 LOCATE 12, 3: PRINT "Ё Ё  Recycle       Ё"
360 LOCATE 13, 3: PRINT "юдадддддддддддддддды"
370 LOCATE 15, 3: PRINT "здбдддддддддддддддд©"
380 LOCATE 16, 3: PRINT "Ё Ё  Ms Dos        Ё"
390 LOCATE 17, 3: PRINT "юдадддддддддддддддды"
400 LOCATE 19, 3: PRINT "здбдддддддддддддддд©"
410 LOCATE 20, 3: PRINT "Ё Ё  Help          Ё"
420 LOCATE 21, 3: PRINT "юдадддддддддддддддды"
430 LOCATE 3, 35: PRINT "зддбддддддддддддддддддддддддддддддддддд©"
440 LOCATE 4, 35: PRINT "ЁшшЁ        Other  Facilities          Ё"
450 LOCATE 5, 35: PRINT "цддеддддддддддддддддддддддддддддддддддд╢"
460 LOCATE 6, 35: PRINT "Ё  Ё      Microsoft  Antivirus         Ё"
470 LOCATE 7, 35: PRINT "Ё  Ё      Norton Disk Doctor           Ё"
480 LOCATE 8, 35: PRINT "Ё  Ё      Norton Utilities             Ё"
490 LOCATE 9, 35: PRINT "Ё  Ё      Defragmenter                 Ё"
500 LOCATE 10, 35: PRINT "Ё  Ё      Games                        Ё"
510 LOCATE 11, 35: PRINT "Ё  Ё      Tree                         Ё"
520 LOCATE 12, 35: PRINT "Ё  Ё      Vsafe                        Ё"
530 LOCATE 13, 35: PRINT "Ё  Ё      Scandisk                     Ё"
540 LOCATE 14, 35: PRINT "Ё  Ё      Ms Dos Editor                Ё"
550 LOCATE 15, 35: PRINT "Ё  Ё      Microsoft Dos Help           Ё"
560 LOCATE 16, 35: PRINT "Ё  Ё      Microsoft Diagnostics        Ё"
570 LOCATE 17, 35: PRINT "юддаддддддддддддддддддддддддддддддддддды"
580 LOCATE 19, 40: PRINT "здбддддддддддддддддддддддддд©"
590 LOCATE 20, 40: PRINT "Ё Ё       Shutdown          Ё"
600 LOCATE 21, 40: PRINT "юдаддддддддддддддддддддддддды"
620 COLOR 26: LOCATE CR, CC: PRINT CSR$: COLOR 7, 2
630 X$ = INKEY$
640 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
650 IF X$ = CHR$(27) THEN 1120
660 IF X$ = CHR$(0) + CHR$(72) THEN GOTO 750
670 IF X$ = CHR$(0) + CHR$(80) THEN GOTO 800
680 IF X$ = CHR$(0) + CHR$(75) THEN GOTO 850
690 IF X$ = CHR$(0) + CHR$(77) THEN GOTO 910
700 IF X$ = CHR$(13) THEN GOTO 970
710 IF X$ = CHR$(32) THEN GOTO 230
720 GOTO 630
730 COLOR 26: LOCATE CR, CC: PRINT CSR$: COLOR 7, 2
750 IF CC = 41 AND CR = 20 THEN NCR = NCR - 4: NCC = NCC - 5: GOTO 940
760 IF CC = 36 AND CR < 17 AND CR > 6 THEN NCR = NCR - 1: GOTO 940
770 IF CC = 36 AND CR = 6 THEN NCR = 20: NCC = 41: GOTO 940
780 IF CC = 4 AND CR < 21 AND CR > 4 THEN NCR = NCR - 4: GOTO 940
790 IF CC = 4 AND CR = 4 THEN NCR = 20: GOTO 940 ELSE 630
800 IF CC = 41 AND CR = 20 THEN NCR = 6: NCC = 36: GOTO 940
810 IF CC = 36 AND CR = 16 THEN NCR = 20: NCC = 41: GOTO 940
820 IF CC = 36 AND CR < 17 AND CR > 5 THEN NCR = NCR + 1: GOTO 940
830 IF CC = 4 AND CR < 20 AND CR > 3 THEN NCR = NCR + 4: GOTO 940
840 IF CC = 4 AND CR = 20 THEN NCR = 4: GOTO 940 ELSE 630
850 IF CC = 36 OR CC = 41 THEN NCC = 4
860 IF CR = 6 THEN NCR = 4: GOTO 940
870 IF CR = 7 OR CR = 8 OR CR = 9 THEN NCR = 8: GOTO 940
880 IF CR = 10 OR CR = 11 OR CR = 12 OR CR = 13 THEN NCR = 12: GOTO 940
890 IF CR = 14 OR CR = 15 OR CR = 16 THEN NCR = 16: GOTO 940
900 IF CR = 20 THEN NCR = 20: GOTO 940 ELSE 630
910 IF CR = 4 THEN NCR = 6: NCC = 36: GOTO 940
920 IF CC = 4 AND CR = 20 THEN NCC = 41: GOTO 940
930 IF CC = 4 AND CR < 19 THEN NCC = 36: GOTO 940 ELSE GOTO 630
940 COLOR 7, 2: LOCATE CR, CC: PRINT " "
950 COLOR 26: LOCATE NCR, NCC: PRINT CSR$: COLOR 7, 2: CR = NCR: CC = NCC
960 GOTO 630
970 IF CC = 36 THEN PG = 4: GOTO 980 ELSE 1110
980 IF CR = 6 THEN CLS : SHELL "MSAV": GOTO 230
990 IF CR = 7 THEN CLS : SHELL "NDD": GOTO 230
1000 IF CR = 8 THEN CLS : SHELL "NU": GOTO 230
1010 IF CR = 9 THEN CLS : SHELL "DEFRAG": GOTO 230
1020 IF CR = 10 THEN CLS : GOTO 1930
1030 IF CR = 11 THEN 1040 ELSE 1060
1040 CLS : SHELL "TREE " + DR$ + "|more": X$ = INPUT$(1)
1050 IF DDRI = 1 THEN DDRI = 0: GOTO 7160 ELSE 230
1060 IF CR = 12 THEN CLS : GOTO 1340
1070 IF CR = 13 THEN CLS : GOSUB 1700: GOTO 100
1080 IF CR = 14 THEN CLS : SHELL "EDIT": GOTO 230
1090 IF CR = 15 THEN CLS : SHELL "HELP": GOTO 230
1100 IF CR = 16 THEN CLS : SHELL "MSD": GOTO 230
1110 IF CR = 20 AND CC = 41 THEN 1130 ELSE 2300
1120 'SHTDN
1130 PG = 3: LOCATE CR, CC: PRINT " ": COLOR 15, 10
1140 COLOR 15, 10: LOCATE 7, 20: PRINT "зддддддддддддддддддддддддддддддддддддд©"
1150 LOCATE 8, 20: PRINT "Ё          Shutdown Warning           Ё"
1160 LOCATE 9, 20: PRINT "цддддддддддддддддддддддддддддддддддддд╢"
1170 LOCATE 10, 20: PRINT "Ё   This option will Exit your Vein   Ё"
1180 LOCATE 11, 20: PRINT "Ё         Operating  system.          Ё"
1190 LOCATE 12, 20: PRINT "Ё      Press Enter to Exit Vein       Ё"
1200 LOCATE 13, 20: PRINT "Ё       or Esc to resume Vein         Ё"
1210 LOCATE 14, 20: PRINT "Ё           здддддддддд©              Ё"
1220 LOCATE 15, 20: PRINT "Ё           Ё  ╝ OK ╞  Ё              Ё"
1230 LOCATE 16, 20: PRINT "Ё           юдддддддддды              Ё"
1240 LOCATE 17, 20: PRINT "юддддддддддддддддддддддддддддддддддддды"
1250 Y$ = INPUT$(1)
1260 IF Y$ = CHR$(13) THEN 1290
1270 IF Y$ = CHR$(32) THEN 1120 ELSE 230
1290 CLS : LOCATE 22, 2: PRINT "ЧддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддЧ"
1300 PRINT TAB(2); "Ё                           Exiting to Dos prompt                            Ё"
1310 PRINT TAB(2); "ЧддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддЧ"
1320 CLOSE : T = TIMER + 2: WHILE T > TIMER: WEND
1330 SCREEN 0, 0, 0: CLS :DR$ = "C:\": SHELL "CD C:\": SHELL "C:\": SYSTEM
1340 'VSAFE
1350 PG = 4: COLOR 1, 4: CLS : COLOR 7, 2: LOCATE 1, 1: PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
1360 LOCATE 7, 12: PRINT "ЁVsafe is a memory resident program which constantlyЁ"
1370 LOCATE 8, 12: PRINT "Ёmonitors your computer for viruses & also warns youЁ"
1380 LOCATE 9, 12: PRINT "Ёof attempts that could erase all data on your disk.Ё"
1390 LOCATE 10, 12: PRINT "ЁFor more information on using Vsafe,see MS Dos HelpЁ"
1400 LOCATE 6, 12: PRINT "зддддддддддддддддддддддддддддддддддддддддддддддддддд©"
1410 LOCATE 11, 12: PRINT "юддддддддддддддддддддддддддддддддддддддддддддддддддды"
1420 COLOR 30: LOCATE 13, 15: PRINT "╝ INSTALL ╞": COLOR 10: LOCATE 13, 32: PRINT "╝ UNINSTALL ╞": AT = 1
1430 LOCATE 13, 51: PRINT "╝ CANCEL ╞"
1440 Y$ = INKEY$
1450 COLOR 10: LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]": COLOR 30
1460 IF Y$ = CHR$(0) + CHR$(77) THEN AT = AT + 1
1470 IF Y$ = CHR$(0) + CHR$(75) THEN AT = AT - 1
1480 IF Y$ = CHR$(32) THEN GOTO 1340
1490 IF Y$ = CHR$(13) THEN 1630
1500 IF Y$ = CHR$(27) THEN GOTO 230
1510 IF AT > 3 THEN AT = 1
1520 IF AT < 1 THEN AT = 3
1530 IF AT = 1 THEN COLOR 10: GOSUB 1590: GOSUB 1610: COLOR 30: GOSUB 1570
1540 IF AT = 2 THEN COLOR 10: GOSUB 1610: GOSUB 1570: COLOR 30: GOSUB 1590
1550 IF AT = 3 THEN COLOR 10: GOSUB 1570: GOSUB 1590: COLOR 30: GOSUB 1610
1560 GOTO 1440
1570 LOCATE 13, 15: PRINT "╝ INSTALL ╞"
1580 RETURN
1590 LOCATE 13, 32: PRINT "╝ UNINSTALL ╞"
1600 RETURN
1610 LOCATE 13, 51: PRINT "╝ CANCEL ╞"
1620 RETURN
1630 IF AT = 3 THEN GOTO 230
1650 IF AT = 2 THEN PRINT "UNINSTALLING VSAFE ...": SHELL "VSAFE2.BAT"
1660 IF AT = 1 THEN PRINT "Type VEIN at the Dos Prompt to Restart Vein"
1670 T = TIMER + 3: WHILE T > TIMER: WEND
1680 SHELL "VSAFE1.BAT"
1690 GOTO 230
1700 '---scandisk
1710 PG = 5: COLOR 1, 4: CLS : COLOR 7, 2: LOCATE 1, 1: PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
1720 LOCATE 6, 27: PRINT "здддддддддддддддддддддддддд©"
1730 LOCATE 12, 27: PRINT "юдддддддддддддддддддддддддды"
1740 LOCATE 7, 27: PRINT "Ё Scan the A drive or scan Ё"
1750 LOCATE 8, 27: PRINT "Ё    Scan the C drive ?    Ё"
1760 LOCATE 9, 27: PRINT "Ё" + STRING$(26, " ") + "Ё"
1770 LOCATE 10, 27: PRINT "Ё        C:       A:       Ё"
1780 LOCATE 11, 27: PRINT "Ё   Press  Esc to cancel   Ё"
1790 LOCATE 4, 32: PRINT " S C A N D I S K "
1800 COLOR 30: LOCATE 10, 36: PRINT "C:": COLOR 10: LOCATE 10, 45: PRINT "A:": SCA$ = "C"
1810 Y$ = INKEY$
1820 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
1830 IF Y$ = CHR$(27) THEN 230
1840 IF Y$ = CHR$(32) THEN 1700
1850 IF Y$ = CHR$(0) + CHR$(77) THEN SCA$ = "A": GOTO 1890
1860 IF Y$ = CHR$(0) + CHR$(75) THEN GOTO 1800
1870 IF Y$ = CHR$(13) THEN 1910
1880 GOTO 1810
1890 COLOR 10: LOCATE 10, 36: PRINT "C:": COLOR 30: LOCATE 10, 45: PRINT "A:"
1900 GOTO 1810
1910 IF SCA$ = "A" THEN SHELL "SCANDISK A:" ELSE SHELL "SCANDISK"
1920 GOTO 230
1930 '---GAME
1940 PG = 4: COLOR 1, 4: CLS : COLOR 7, 2: LOCATE 1, 1: PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
1950 COLOR 10: LOCATE 5, 22: PRINT "зддддддддддддддддддддддддддддддд©"
1960 LOCATE 6, 22: PRINT "Ё    You can play these games   Ё"
1970 LOCATE 7, 22: PRINT "цддддддддддддддддддддддддддддддд╢"
1980 LOCATE 8, 22: PRINT "Ё           Game Name           Ё"
1990 LOCATE 9, 22: PRINT "цддддддддддддддддддддддддддддддд╢"
2000 LOCATE 10, 22: PRINT "Ё      Prince of Persia         Ё"
2010 LOCATE 11, 22: PRINT "Ё      Dangerous Dave           Ё"
2020 LOCATE 12, 22: PRINT "Ё      Jumpjet                  Ё"
2030 LOCATE 13, 22: PRINT "Ё      Billiard                 Ё"
2040 LOCATE 14, 22: PRINT "цддддддддддддддддддддддддддддддд╢"
2050 LOCATE 15, 22: PRINT "Ё      Press Esc to cancel      Ё"
2060 LOCATE 16, 22: PRINT "юддддддддддддддддддддддддддддддды"
2070 COLOR 30: LOCATE 10, 24: PRINT CSR$: RO = 10: NRO = 10: CH = 1
2080 X$ = INKEY$
2090 COLOR 10: LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]": COLOR 30
2100 IF X$ = CHR$(27) THEN 230
2110 IF X$ = CHR$(32) THEN 1930
2120 IF X$ = CHR$(0) + CHR$(72) THEN NRO = NRO - 1: GOTO 2160
2130 IF X$ = CHR$(0) + CHR$(80) THEN NRO = NRO + 1: GOTO 2160
2140 IF X$ = CHR$(13) THEN 2240
2150 GOTO 2080
2160 IF NRO = 9 THEN NRO = 13
2170 IF NRO = 14 THEN NRO = 10
2180 IF NRO = 10 THEN CH = 1
2190 IF NRO = 11 THEN CH = 2
2200 IF NRO = 12 THEN CH = 3
2210 IF NRO = 13 THEN CH = 4
2220 COLOR 10: LOCATE RO, 24: PRINT " ": COLOR 30: LOCATE NRO, 24: PRINT CSR$
2230 RO = NRO: GOTO 2080
2240 IF CH = 1 THEN SHELL "PRINCE"
2250 IF CH = 2 THEN SHELL "DAVE"
2260 IF CH = 3 THEN SHELL "JET"
2270 IF CH = 4 THEN SHELL "BILLIARD"
2280 GOTO 230
2300 'dos
2310 IF CR = 16 AND CC = 4 THEN 2320 ELSE 2370
2320 CLS : PRINT "ЧддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддЧ"
2330 PRINT "Ё                           Switching to Ms Dos.                             Ё"
2340 PRINT "Ё               Type EXIT to return to Vein Operating System                 Ё"
2350 PRINT "ЧддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддЧ"
2360 SHELL: GOTO 230
2370 '----disk drives
2375 PG = 6
2380 IF CR = 4 AND CC = 4 THEN 2430
2390 IF CR = 8 AND CC = 4 THEN 7160
2400 IF CR = 12 AND CC = 4 THEN 8670
2410 IF CR = 16 AND CC = 4 THEN 2300
2420 IF CR = 20 AND CC = 4 THEN GOSUB 9860: GOTO 230
2430 CLS : PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
2440 IF MID$(DR$, 1, 3) = "C:\" THEN C1 = 30: C2 = 10
2450 IF MID$(DR$, 1, 3) = "A:\" THEN C1 = 10: C2 = 30
2460 COLOR C1: LOCATE 3, 10: PRINT "здддддддддддддддддд©"
2470 LOCATE 5, 10: PRINT "юдддддддддддддддддды"
2480 COLOR C2: LOCATE 3, 50: PRINT "здддддддддддддддддд©"
2490 LOCATE 5, 50: PRINT "юдддддддддддддддддды"
2500 COLOR 10: LOCATE 4, 10: PRINT "Ё   Drive     C    Ё"
2510 LOCATE 4, 50: PRINT "Ё   Drive     A    Ё"
2520 X$ = INKEY$
2530 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
2540 IF X$ = CHR$(27) THEN 230
2550 IF X$ = CHR$(32) THEN 2430
2560 IF X$ = CHR$(0) + CHR$(77) THEN C1 = 30: C2 = 10: DR$ = "A:\": GOTO 2600
2570 IF X$ = CHR$(0) + CHR$(75) THEN C1 = 10: C2 = 30: DR$ = "C:\": GOTO 2600
2580 IF X$ = CHR$(13) THEN 2650
2590 GOTO 2520
2600 COLOR C1: LOCATE 3, 50: PRINT "здддддддддддддддддд©"
2610 LOCATE 5, 50: PRINT "юдддддддддддддддддды"
2620 COLOR C2: LOCATE 3, 10: PRINT "здддддддддддддддддд©"
2630 LOCATE 5, 10: PRINT "юдддддддддддддддддды": COLOR 10
2640 GOTO 2520
2650 IF DR$ = "A:\" THEN SHELL "CD A:\": SHELL "A:\"
2660 IF DR$ = "C:\" THEN SHELL "CD C:\": SHELL "C:\"
2670 'SECOND HALF-DISK DRIVES
2680 PG = 6: COLOR 7, 2: CLS : FOR I = 2 TO 5: LOCATE I, 1: PRINT STRING$(80, " "): NEXT I
2690 CLS : PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
2700 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
2710 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
2720 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
2730 COLOR 12
2740 COLOR 4, 1: COLOR 10: CHOR = 7: NCHOR = 7: CHOC = 5: NCHOC = 5: CHOC2 = 45: COLOR 30
2750 LOCATE CHOR, CHOC: PRINT "здддддддддддддддддддддддддддд©"
2760 LOCATE CHOR + 2, CHOC: PRINT "юдддддддддддддддддддддддддддды": COLOR 10
2770 LOCATE CHOR, CHOC2: PRINT "здддддддддддддддддддддддддддд©"
2780 LOCATE CHOR + 2, CHOC2: PRINT "юдддддддддддддддддддддддддддды"
2790 IF CHOR = 19 THEN 2800 ELSE CHOR = CHOR + 4: GOTO 2750
2800 LOCATE 8, 5: PRINT "Ё      Change Directory      Ё"
2810 LOCATE 8, 45: PRINT "Ё View  files  in  Directory Ё"
2820 LOCATE 12, 5: PRINT "Ё Execute a file in Drive "; : PRINT LEFT$(DR$, 1); : PRINT "  Ё"
2830 LOCATE 12, 45: PRINT "Ё      Transfer  files       Ё"
2840 LOCATE 16, 5: PRINT "Ё  Delete file or Directory  Ё"
2850 LOCATE 16, 45: PRINT "Ё      Format Drive " + MID$(DR$, 1, 1) + "        Ё"
2860 LOCATE 20, 5: PRINT "Ё  Rename file or Directory  Ё"
2870 LOCATE 20, 45: PRINT "Ё     Display Disk Status    Ё": CHOR = 7
2880 X$ = INKEY$
2890 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
2900 IF X$ = CHR$(27) THEN COLOR 7, 2: GOTO 2370
2910 IF X$ = CHR$(32) THEN GOTO 2670
2920 IF X$ = CHR$(0) + CHR$(77) THEN NCHOC = 45: GOTO 3000
2930 IF X$ = CHR$(0) + CHR$(75) THEN NCHOC = 5: GOTO 3000
2940 IF X$ = CHR$(0) + CHR$(72) THEN NCHOR = NCHOR - 4: GOTO 2980
2950 IF X$ = CHR$(0) + CHR$(80) THEN NCHOR = NCHOR + 4: GOTO 2980
2960 IF X$ = CHR$(13) THEN 3050
2970 GOTO 2880
2980 IF NCHOR = 23 THEN NCHOR = 7
2990 IF NCHOR = 3 THEN NCHOR = 19
3000 COLOR 10: LOCATE CHOR, CHOC: PRINT "здддддддддддддддддддддддддддд©"
3010 LOCATE CHOR + 2, CHOC: PRINT "юдддддддддддддддддддддддддддды"
3020 COLOR 30: LOCATE NCHOR, NCHOC: PRINT "здддддддддддддддддддддддддддд©"
3030 LOCATE NCHOR + 2, NCHOC: PRINT "юдддддддддддддддддддддддддддды": COLOR 10
3040 CHOR = NCHOR: CHOC = NCHOC: GOTO 2880
3050 '
3060 COLOR 7, 2: CLS : LOCATE 1, 1: PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
3070 IF CHOC = 5 THEN 3080 ELSE 5760
3080 IF CHOR = 7 THEN 3120
3090 IF CHOR = 11 THEN 11650
3100 IF CHOR = 15 THEN 4170
3110 IF CHOR = 19 THEN 4660
3120 COLOR 7, 2: CLS : LOCATE 1, 1: PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
3130 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
3140 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
3150 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
3160 COLOR 4, 1: COLOR 10: LOCATE 7, 19: PRINT "зддддддддддддддддддддддддддддддддддддддддд©"
3170 LOCATE 8, 19: PRINT "Ё  Vein does not have the ability to seek Ё"
3180 LOCATE 9, 19: PRINT "Ё  & find directories,so you will have to Ё"
3190 LOCATE 10, 19: PRINT "Ё  specify the directory to be accessed.  Ё"
3200 LOCATE 11, 19: PRINT "Ё                                         Ё"
3210 LOCATE 12, 19: PRINT "Ё  "; : COLOR 30: PRINT "╝ CLIMB ╞"; : COLOR 10: PRINT "     ╝ FALL ╞     ╝ CREATE ╞  Ё"
3220 LOCATE 13, 19: PRINT "юддддддддддддддддддддддддддддддддддддддддды": CH = 1
3230 X$ = INKEY$
3240 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
3250 IF X$ = CHR$(27) THEN CLS : GOTO 3260 ELSE 3270
3260 IF DDRI = 1 THEN DDRI = 0: GOTO 7160 ELSE 2670
3270 IF X$ = CHR$(32) THEN 3120
3280 IF X$ = CHR$(0) + CHR$(77) THEN CH = CH + 1: GOTO 3320
3290 IF X$ = CHR$(0) + CHR$(75) THEN CH = CH - 1: GOTO 3320
3300 IF X$ = CHR$(13) THEN 3400
3310 GOTO 3230
3320 IF CH = 4 THEN CH = 1
3330 IF CH = 0 THEN CH = 3
3340 IF CH = 1 THEN C1 = 30: C2 = 10: C3 = 10
3350 IF CH = 2 THEN C1 = 10: C2 = 30: C3 = 10
3360 IF CH = 3 THEN C1 = 10: C2 = 10: C3 = 30
3370 COLOR C1: LOCATE 12, 22: PRINT "╝ CLIMB ╞"
3380 COLOR C2: LOCATE 12, 36: PRINT "╝ FALL ╞"
3390 COLOR C3: LOCATE 12, 49: PRINT "╝ CREATE ╞": COLOR 10: GOTO 3230
3400 IF CH = 1 THEN 3430
3410 IF CH = 3 THEN 3680
3420 IF CH = 2 THEN 3580 ELSE 3050
3430 LOCATE 16, 10: Y$ = "": PRINT " Enter name of directory : ";
3440 I = 37: Y$ = DR$ + Y$
3450 IF I = 87 THEN 3530
3460 X$ = INPUT$(1)
3470 IF X$ = CHR$(27) THEN CLS : GOTO 3050
3480 IF X$ = CHR$(13) THEN 3540
3490 IF X$ = CHR$(8) THEN I = I - 1: LOCATE 16, I: PRINT " ": Y$ = LEFT$(Y$, LEN(Y$) - 1): GOTO 3510
3500 LOCATE 16, I: PRINT X$: Y$ = Y$ + X$: I = I + 1
3510 IF I < 37 THEN 3430
3520 GOTO 3450
3530 '
3540 IF RIGHT$(Y$, 1) <> "\" THEN Y$ = Y$ + "\"
3550 CHDIR LEFT$(Y$, LEN(Y$) - 1): DR$ = Y$
3570 GOTO 3050
3580 'fall
3590 LOCATE 16, 10: PRINT " Fall till root directory or by one subdirectory ? [R/S] ": Y$ = INPUT$(1)
3600 IF Y$ = CHR$(27) THEN CLS : GOTO 3050
3610 IF Y$ = "R" OR Y$ = "r" THEN : DR$ = LEFT$(DR$, 1) + ":\": SHELL "CD\"
3620 IF Y$ = "S" OR Y$ = "s" THEN : SHELL "CD..":GOTO 3640
3630 CLS : GOTO 3050
3640 FOR I = LEN(DR$) - 1 TO 1 STEP -1
3650 IF MID$(DR$, I, 1) = "\" THEN TDR$ = DR$: DR$ = "": GOTO 3670
3660 NEXT I: GOTO 3050
3670 DR$ = MID$(TDR$, 1, I): TDR$ = DR$: GOTO 3050
3680 LOCATE 16, 6: PRINT " Create new directory : Enter name of subdirectory to be created :": I = 36
3690 IF I = 44 THEN 3770
3700 X$ = INPUT$(1)
3710 IF X$ = CHR$(27) THEN 3050
3720 IF X$ = CHR$(13) THEN 3770
3730 IF X$ = CHR$(8) THEN I = I - 1: LOCATE 18, I: PRINT " ": MD$ = LEFT$(MD$, LEN(MD$) - 1): GOTO 3750
3740 MD$ = MD$ + X$: LOCATE 18, I: I = I + 1: PRINT X$
3750 IF I < 36 THEN 3680
3760 GOTO 3690
3770 FOR I = 1 TO LEN(MD$)
3780 X$ = MID$(MD$, I, 1)
3790 IF X$ = " " OR X$ = "*" OR X$ = "^" OR X$ = "&" OR X$ = "(" OR X$ = ")" THEN 4140
3800 IF X$ = "=" OR X$ = "+" OR X$ = "|" OR X$ = "/" OR X$ = "\" OR X$ = "[" OR X$ = CHR$(34) THEN 4140
3810 IF X$ = "]" OR X$ = ":" OR X$ = ";" OR X$ = "<" OR X$ = ">" OR X$ = "," OR X$ = "." OR X$ = "?" THEN 4140
3820 NEXT I: GOTO 3840
3830 LOCATE 19, 20: PRINT " INVALID NAME FOR A DIRECTORY ": X$ = INPUT$(1): MD$ = "": GOTO 3050
3840 SHELL "MD " + MD$
3850 MD$ = "": GOTO 3050
3860 'label
3870 COLOR 1, 4: CLS : COLOR 7, 2: LOCATE 1, 1: PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
3880 COLOR 4, 1: COLOR 10
3890 LOCATE 7, 19: PRINT "зддддддддддддддддддддддддддддддддддддддддд©"
3900 LOCATE 8, 19: PRINT "Ё This will change the name (volume label)Ё"
3910 LOCATE 9, 19: PRINT "Ё               of drive "; LEFT$(DR$, 1); "                Ё"
3920 LOCATE 10, 19: PRINT "цддддддддддддддддддддддддддддддддддддддддд╢"
3930 LOCATE 11, 19: PRINT "Ё Enter new name :                        Ё"
3940 LOCATE 12, 19: PRINT "Ё         Press Esc to cancel             Ё"
3950 LOCATE 13, 19: PRINT "юддддддддддддддддддддддддддддддддддддддддды"
3960 COLOR 30: LOCATE 11, 38: PRINT CSR$: COLOR 10: MD$ = "": I = 38
3970 IF I = 48 THEN 4070
3980 X$ = INPUT$(1)
3990 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
4000 IF X$ = CHR$(27) THEN MD$ = "": GOTO 8670
4020 IF X$ = CHR$(13) THEN 4070
4030 IF X$ = CHR$(8) THEN MD$ = "": LOCATE 11, 1: PRINT STRING$(80, " "): GOTO 3960
4040 LOCATE 11, I: MD$ = MD$ + X$: I = I + 1: PRINT X$
4050 '
4060 GOTO 3970
4070 FOR I = 1 TO LEN(MD$)
4080 X$ = MID$(MD$, I, 1)
4090 IF X$ = " " OR X$ = "*" OR X$ = "^" OR X$ = "&" OR X$ = "(" OR X$ = ")" THEN 4120
4100 IF X$ = "=" OR X$ = "+" OR X$ = "|" OR X$ = "/" OR X$ = "\" OR X$ = "[" OR X$ = CHR$(34) THEN 4120
4110 IF X$ = "]" OR X$ = ":" OR X$ = ";" OR X$ = "<" OR X$ = ">" OR X$ = "," OR X$ = "." OR X$ = "?" THEN 4120 ELSE 4130
4120 LOCATE 15, 29: PRINT " INVALID LABEL NAME ": Y$ = INPUT$(1): MD$ = "": GOTO 3860
4130 NEXT I
4140 SHELL "LABEL " + LEFT$(DR$, 2) + MD$
4150 MD$ = ""
4160 GOTO 8670
4170 'DELETE
4180 COLOR 1, 4: CLS : COLOR 7, 2: LOCATE 1, 1: PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
4190 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
4200 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
4210 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
4220 COLOR 4, 1: COLOR 10
4230 LOCATE 7, 19: PRINT "зддддддддддддддддддддддддддддддддддддддддд©"
4240 LOCATE 8, 19: PRINT "Ё  This option will allow you to delete a Ё"
4250 LOCATE 9, 19: PRINT "Ё  file in the current directory or a sub Ё"
4260 LOCATE 10, 19: PRINT "Ё  directory in the current directory.    Ё"
4270 LOCATE 11, 19: PRINT "цддддддддддддддддддддддддддддддддддддддддд╢"
4280 LOCATE 12, 19: PRINT "Ё             Delete what ?               Ё"
4290 LOCATE 13, 19: PRINT "Ё     ╝ FILE ╞      ╝ SUB DIRECTORY ╞     Ё"
4300 LOCATE 14, 19: PRINT "юддддддддддддддддддддддддддддддддддддддддды"
4310 C1 = 30: C2 = 10: GOTO 4400
4320 X$ = INKEY$
4330 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
4340 IF X$ = CHR$(27) THEN CLS : GOTO 2670
4350 IF X$ = CHR$(36) THEN 4170
4360 IF X$ = CHR$(0) + CHR$(77) THEN C1 = 10: C2 = 30: GOTO 4400
4370 IF X$ = CHR$(0) + CHR$(75) THEN C1 = 30: C2 = 10: GOTO 4400
4380 IF X$ = CHR$(13) THEN 4430
4390 GOTO 4320
4400 COLOR C1: LOCATE 13, 25: PRINT "╝ FILE ╞"
4410 COLOR C2: LOCATE 13, 39: PRINT "╝ SUB DIRECTORY ╞": COLOR 10
4420 GOTO 4320
4430 IF C1 = 30 THEN 4440 ELSE 4540
4440 LOCATE 16, 26: MD$ = "": PRINT " Enter file name : ": I = 29
4450 IF I = 41 THEN 4520
4460 X$ = INPUT$(1)
4470 IF X$ = CHR$(27) THEN 4170
4480 IF X$ = CHR$(13) THEN 4520
4490 IF X$ = CHR$(8) THEN MD$ = "": LOCATE 18, 1: PRINT STRING$(80, " "): GOTO 4440
4500 MD$ = MD$ + X$: LOCATE 18, I: PRINT X$: I = I + 1
4510 GOTO 4450
4520 IF RIGHT$(MD$, 3) = "*.*" THEN COLOR 30: LOCATE 18, 2: PRINT " WARNING :"; : COLOR 10: PRINT " All files in directory will be deleted.Press enter to proceed,"
4521 LOCATE 19, 2: PRINT " or press Esc to not delete all files."
4522 Y$ = INPUT$(1): IF Y$ = CHR$(27) THEN 4170
4525 KILL DR$ + MD$
4530 MD$ = "": GOTO 4170
4540 LOCATE 16, 18: PRINT " Vein will allow you to delete a sub directory"
4550 LOCATE 17, 15: PRINT " only if the subdirectory does not contain any files"
4560 LOCATE 19, 10: MD$ = "": PRINT " Enter name of sub directory :": I = 41
4570 IF I = 49 THEN 4640
4580 X$ = INPUT$(1)
4590 IF X$ = CHR$(27) THEN 4170
4600 IF X$ = CHR$(13) THEN 4640
4610 IF X$ = CHR$(8) THEN MD$ = "": LOCATE 19, 1: PRINT STRING$(80, " "): GOTO 4560
4620 MD$ = MD$ + X$: LOCATE 19, I: PRINT X$: I = I + 1
4630 GOTO 4570
4640 RMDIR MD$
4650 MD$ = "": GOTO 4170
4660 '-
4670 COLOR 7, 2: CLS : FOR I = 2 TO 5: LOCATE I, 1: PRINT STRING$(80, " "): NEXT I
4680 CLS : PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
4690 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
4700 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
4710 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
4720 COLOR 4, 1: COLOR 10
4730 LOCATE 7, 16: PRINT "зддддддддддддддддддддддддддддддддддддддддддддд©"
4740 LOCATE 8, 16: PRINT "Ё  This option allows you to rename files or  Ё"
4750 LOCATE 9, 16: PRINT "Ё                directories.                 Ё"
4760 LOCATE 10, 16: PRINT "Ё WARNING:Misuse of this option for renaming  Ё"
4770 LOCATE 11, 16: PRINT "Ёdirectories can cause errors in file locationЁ"
4780 LOCATE 12, 16: PRINT "цддддддддддддддддддддддддддддддддддддддддддддд╢"
4790 LOCATE 13, 16: PRINT "Ё               Rename what ?                 Ё"
4800 LOCATE 14, 16: PRINT "Ё        ╝ FILE ╞       ╝ DIRECTORY ╞         Ё"
4810 LOCATE 15, 16: PRINT "юддддддддддддддддддддддддддддддддддддддддддддды"
4820 MD$ = "": C1 = 30: C2 = 10: GOTO 4910
4830 X$ = INKEY$
4840 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
4850 IF X$ = CHR$(27) THEN CLS : GOTO 2670
4860 IF X$ = CHR$(36) THEN 4660
4870 IF X$ = CHR$(0) + CHR$(77) THEN C1 = 10: C2 = 30: GOTO 4910
4880 IF X$ = CHR$(0) + CHR$(75) THEN C1 = 30: C2 = 10: GOTO 4910
4890 IF X$ = CHR$(13) THEN 4940
4900 GOTO 4830
4910 COLOR C1: LOCATE 14, 25: PRINT "╝ FILE ╞"
4920 COLOR C2: LOCATE 14, 40: PRINT "╝ SUB DIRECTORY ╞": COLOR 10
4930 GOTO 4830
4940 IF C1 = 30 THEN 4950 ELSE 5350
4950 I = 30: LOCATE 17, 25: PRINT " Enter old file name : "
4960 IF I = 42 THEN 5050
4970 X$ = INPUT$(1)
4980 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
4990 IF X$ = CHR$(27) THEN MD$ = "": GOTO 4660
5000 IF X$ = CHR$(13) THEN 5050
5010 IF X$ = CHR$(8) THEN MD$ = "": LOCATE 18, I: PRINT STRING$(80, " "): GOTO 4950
5020 LOCATE 18, I: MD$ = MD$ + X$: I = I + 1: PRINT X$
5030 '
5040 GOTO 4960
5050 FOR I = 1 TO LEN(MD$)
5060 X$ = MID$(MD$, I, 1)
5070 IF X$ = " " OR X$ = "*" OR X$ = "^" OR X$ = "&" OR X$ = "(" OR X$ = ")" THEN 5100
5080 IF X$ = "=" OR X$ = "+" OR X$ = "|" OR X$ = "/" OR X$ = "\" OR X$ = "[" OR X$ = CHR$(34) THEN 5100
5090 IF X$ = "]" OR X$ = ":" OR X$ = ";" OR X$ = "<" OR X$ = ">" OR X$ = "," OR X$ = "?" THEN 5100 ELSE 5120
5100 LOCATE 20, 30: PRINT "<< INVALID NAME >>"
5110 T = TIMER + 2: WHILE T > TIMER: WEND: X$ = INPUT$(1): MD$ = "": GOTO 4950
5120 NEXT I
5130 COLOR 7, 2: LOCATE 17, 10: PRINT STRING$(70, " "): LOCATE 20, 10: PRINT STRING$(70, " ")
5140 LOCATE 18, 10: PRINT STRING$(70, " "): LOCATE 19, 10: PRINT STRING$(70, " ")
5150 LOCATE 17, 25: PRINT " Enter new file name : ": I = 30
5160 IF I = 42 THEN 5250
5170 X$ = INPUT$(1)
5180 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
5190 IF X$ = CHR$(27) THEN DM$ = "": GOTO 4660
5200 IF X$ = CHR$(13) THEN 5250
5210 IF X$ = CHR$(8) THEN DM$ = "": LOCATE 18, 1: PRINT STRING$(80, " "): GOTO 5150
5220 LOCATE 18, I: DM$ = DM$ + X$: I = I + 1: PRINT X$
5230 '
5240 GOTO 5160
5250 FOR I = 1 TO LEN(DM$)
5260 X$ = MID$(DM$, I, 1)
5270 IF X$ = " " OR X$ = "*" OR X$ = "^" OR X$ = "&" OR X$ = "(" OR X$ = ")" THEN 5300
5280 IF X$ = "=" OR X$ = "+" OR X$ = "|" OR X$ = "/" OR X$ = "\" OR X$ = "[" OR X$ = CHR$(34) THEN 5300
5290 IF X$ = "]" OR X$ = ":" OR X$ = ";" OR X$ = "<" OR X$ = ">" OR X$ = "," OR X$ = "?" THEN 5300 ELSE 5320
5300 LOCATE 20, 30: PRINT "<< INVALID NAME >>"
5310 T = TIMER + 2: WHILE T > TIMER: WEND: X$ = INPUT$(1): DM$ = "": GOTO 5130
5320 NEXT I
5330 NAME DR$ + MD$ AS DR$ + DM$
5340 GOTO 4660
5350 I = 30: LOCATE 17, 25: PRINT " Enter old subdirectory name : "
5360 IF I = 42 THEN 5450
5370 X$ = INPUT$(1)
5380 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
5390 IF X$ = CHR$(27) THEN MD$ = "": GOTO 4660
5400 IF X$ = CHR$(13) THEN 5450
5410 IF X$ = CHR$(8) THEN MD$ = "": LOCATE 18, 1: PRINT STRING$(80, " "): GOTO 5350
5420 LOCATE 18, I: MD$ = MD$ + X$: I = I + 1: PRINT X$
5430 '
5440 GOTO 5360
5450 FOR I = 1 TO LEN(MD$)
5460 X$ = MID$(MD$, I, 1)
5470 IF X$ = " " OR X$ = "*" OR X$ = "^" OR X$ = "&" OR X$ = "(" OR X$ = ")" THEN 5500
5480 IF X$ = "=" OR X$ = "+" OR X$ = "|" OR X$ = "/" OR X$ = "\" OR X$ = "[" OR X$ = CHR$(34) THEN 5500
5490 IF X$ = "]" OR X$ = ":" OR X$ = ";" OR X$ = "<" OR X$ = ">" OR X$ = "," OR X$ = "?" THEN 5500 ELSE 5520
5500 LOCATE 20, 30: PRINT "<< INVALID NAME >>"
5510 T = TIMER + 2: WHILE T > TIMER: WEND: X$ = INPUT$(1): MD$ = "": GOTO 5350
5520 NEXT I
5530 COLOR 7, 2: LOCATE 17, 10: PRINT STRING$(70, " "): LOCATE 20, 10: PRINT STRING$(70, " ")
5540 LOCATE 18, 10: PRINT STRING$(70, " "): LOCATE 19, 10: PRINT STRING$(70, " ")
5550 LOCATE 17, 25: PRINT " Enter new subdirectory name : ": I = 30
5560 IF I = 42 THEN 5650
5570 X$ = INPUT$(1)
5580 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
5590 IF X$ = CHR$(27) THEN DM$ = "": GOTO 4660
5600 IF X$ = CHR$(13) THEN 5650
5610 IF X$ = CHR$(8) THEN DM$ = "": LOCATE 18, 1: PRINT STRING$(80, " "): GOTO 5550
5620 LOCATE 18, I: DM$ = DM$ + X$: I = I + 1: PRINT X$
5630 '
5640 GOTO 5560
5650 FOR I = 1 TO LEN(DM$)
5660 X$ = MID$(DM$, I, 1)
5670 IF X$ = " " OR X$ = "*" OR X$ = "^" OR X$ = "&" OR X$ = "(" OR X$ = ")" THEN 5700
5680 IF X$ = "=" OR X$ = "+" OR X$ = "|" OR X$ = "/" OR X$ = "\" OR X$ = "[" OR X$ = CHR$(34) THEN 5700
5690 IF X$ = "]" OR X$ = ":" OR X$ = ";" OR X$ = "<" OR X$ = ">" OR X$ = "," OR X$ = "?" THEN 5700 ELSE 5720
5700 LOCATE 20, 30: PRINT "<< INVALID NAME >>"
5710 T = TIMER + 2: WHILE T > TIMER: WEND: X$ = INPUT$(1): DM$ = "": GOTO 5530
5720 NEXT I
5730 SHELL "MOVE " + DR$ + MD$ + " " + DR$ + DM$
5740 GOTO 4660
5760 IF CHOR = 7 THEN 5800
5770 IF CHOR = 11 THEN 6170
5780 IF CHOR = 15 THEN 6750
5790 IF CHOR = 19 THEN 7100
5800 COLOR 7, 2: CLS : FOR I = 2 TO 5: LOCATE I, 1: PRINT STRING$(80, " "): NEXT I
5810 CLS : PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
5820 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
5830 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
5840 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
5850 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
5860 COLOR 4, 1: COLOR 10
5870 LOCATE 6, 11: PRINT "здддддддддддддддддддддддддддддддддддддддддддддддддддддд©"
5875 LOCATE 7, 11: PRINT "Ё   "; : COLOR 15: PRINT "Press Enter to see the directory just like that."; : COLOR 10: PRINT "   Ё"
5880 LOCATE 8, 11: PRINT "Ё This option allows you to see files in a directory   Ё"
5890 LOCATE 9, 11: PRINT "Ё or a subdirectory.                                   Ё"
5900 LOCATE 10, 11: PRINT "Ё /S - All files in the directory & its sub-           Ё"
5910 LOCATE 11, 11: PRINT "Ё      directories.                                    Ё"
5920 LOCATE 12, 11: PRINT "Ё /P - See files page by page.                         Ё"
5930 LOCATE 13, 11: PRINT "Ё /W - See just names of files & directories           Ё"
5940 LOCATE 14, 11: PRINT "Ё /A - See hidden files also in a directory.           Ё"
5950 LOCATE 15, 11: PRINT "Ё If you want to see all files page by page,type `SP'  Ё"
5960 LOCATE 16, 11: PRINT "Ё You are allowed to combine letters in this way.Press Ё"
5970 LOCATE 17, 11: PRINT "Ё enter to see files in a directory without any specialЁ"
5980 LOCATE 18, 11: PRINT "Ё conditions.Use *.EXE to see all files ending with EXEЁ"
5990 LOCATE 19, 11: PRINT "цдддддддддддддддддддддддддддддддддддддддддддддддддддддд╢"
6000 LOCATE 20, 11: PRINT "Ё Enter your choice : "; : COLOR 30: PRINT CSR$; : COLOR 10: PRINT "                                Ё"
6010 LOCATE 21, 11: PRINT "юдддддддддддддддддддддддддддддддддддддддддддддддддддддды": I = 33: DM$ = ""
6020 IF I = 45 THEN 6130
6030 X$ = INPUT$(1)
6040 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
6050 IF X$ = CHR$(27) THEN DM$ = "" ELSE 6070
6060 IF DDRI = 0 THEN 2670 ELSE DDRI = 0: GOTO 7160
6070 IF X$ = CHR$(13) THEN 6130
6080 IF X$ = CHR$(32) THEN DM$ = "": GOTO 5760
6090 IF X$ = CHR$(8) THEN DM$ = "": LOCATE 20, 1: PRINT STRING$(80, " "): GOTO 6010
6100 LOCATE 20, I: DM$ = DM$ + X$: I = I + 1: PRINT X$
6110 '
6120 GOTO 6020
6130 LOCATE 24, 1
6140 SHELL "DIR " + DM$: X$ = INPUT$(1)
6150 IF DDRI = 0 THEN 5760 ELSE DDRI = 0: GOTO 7160
6170 COLOR 7, 2: CLS : FOR I = 2 TO 5: LOCATE I, 1: PRINT STRING$(80, " "): NEXT I
6180 CLS : PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
6190 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
6200 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
6210 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
6220 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
6230 COLOR 4, 1: COLOR 10
6240 LOCATE 7, 16: PRINT "зддддддддддддддддддддддддддддддддддддддддддддд©"
6250 LOCATE 8, 16: PRINT "Ё  This function allows you to transfer files Ё"
6260 LOCATE 9, 16: PRINT "Ё   from the current directory to any other   Ё"
6270 LOCATE 10, 16: PRINT "Ё     directory or to a different drive.      Ё"
6280 LOCATE 11, 16: PRINT "цддддддддддддддддддддддддддддддддддддддддддддд╢"
6290 LOCATE 12, 16: PRINT "Ё ╝ All files ╞  ╝ Specify extension or name ╞Ё"
6300 LOCATE 13, 16: PRINT "Ё                                             Ё"
6310 LOCATE 14, 16: PRINT "юддддддддддддддддддддддддддддддддддддддддддддды"
6320 DM$ = "": C1 = 30: C2 = 10: GOTO 6410
6330 X$ = INKEY$
6340 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
6350 IF X$ = CHR$(27) THEN 2670
6360 IF X$ = CHR$(32) THEN 6170
6370 IF X$ = CHR$(0) + CHR$(77) THEN C1 = 10: C2 = 30: GOTO 6410
6380 IF X$ = CHR$(0) + CHR$(75) THEN C1 = 30: C2 = 10: GOTO 6410
6390 IF X$ = CHR$(13) THEN 6440
6400 GOTO 6330
6410 COLOR C1: LOCATE 12, 18: PRINT "╝ All files ╞"
6420 COLOR C2: LOCATE 12, 33: PRINT "╝ Specify extension or name ╞": COLOR 10
6430 GOTO 6330
6440 LOCATE 13, 16: PRINT "Ё                                             Ё"
6450 IF C1 = 30 THEN 6460 ELSE 6610
6460  LOCATE 13, 16: PRINT "Ё                                             Ё": LOCATE 13, 18: PRINT "Copy to where ? : ": I = 36
6470 IF I = 62 THEN 6570
6480 X$ = INPUT$(1)
6490 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
6500 IF X$ = CHR$(27) THEN DM$ = "": GOTO 6170
6510 IF X$ = CHR$(13) THEN 6570
6520 IF X$ = CHR$(32) THEN DM$ = "": GOTO 6170
6530 IF X$ = CHR$(8) THEN DM$ = "": LOCATE 13, 16: PRINT "Ё                                             Ё": GOTO 6450
6540 LOCATE 13, I: DM$ = DM$ + X$: I = I + 1: PRINT X$
6550 '
6560 GOTO 6470
6570 IF DE = 0 THEN 6590 ELSE 6580
6580 SHELL "XCOPY " + DR$ + MD$ + " " + DM$: DE = 0: GOTO 6730
6590 SHELL "XCOPY " + DR$ + "*.* " + DM$
6600 GOTO 6170
6610 LOCATE 13, 16: PRINT "Ё                                             Ё"
6620 LOCATE 13, 17: PRINT "Give extension : ": I = 34
6630 IF I = 62 THEN 6730
6640 X$ = INPUT$(1)
6650 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
6660 IF X$ = CHR$(27) THEN MD$ = "": GOTO 6170
6670 IF X$ = CHR$(13) THEN 6730
6680 IF X$ = CHR$(32) THEN MD$ = "": GOTO 6170
6690 IF X$ = CHR$(8) THEN MD$ = "": LOCATE 13, 16: PRINT "Ё                                             Ё": GOTO 6450
6700 LOCATE 13, I: MD$ = MD$ + X$: I = I + 1: PRINT X$
6710 '
6720 GOTO 6630
6730 DE = 1: GOTO 6170
6740 GOTO 2670
6750 '--
6760 COLOR 7, 2: CLS : FOR I = 2 TO 5: LOCATE I, 1: PRINT STRING$(80, " "): NEXT I
6770 CLS : PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
6780 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
6790 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
6800 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
6810 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
6820 COLOR 4, 1: COLOR 10
6830 LOCATE 7, 16: PRINT "зддддддддддддддддддддддддддддддддддддддддддддд©"
6840 IF LEFT$(DR$, 1) = "C" THEN 6850 ELSE 6900
6850 LOCATE 8, 16: PRINT "Ё    You are not allowed to format drive C    Ё"
6860 LOCATE 9, 16: PRINT "юддддддддддддддддддддддддддддддддддддддддддддды"
6870 X$ = INKEY$
6880 IF X$ = CHR$(13) OR X$ = CHR$(27) THEN GOTO 2670
6890 GOTO 6870
6900 LOCATE 8, 16: PRINT "Ё  This option will format a floppy disk ,of  Ё"
6910 LOCATE 9, 16: PRINT "Ё  size 1.44 MB.                              Ё"
6920 LOCATE 10, 16: PRINT "Ё  WARNING: All data on floppy will be lost.  Ё"
6930 LOCATE 11, 16: PRINT "цддддддддддддддддддддддддддддддддддддддддддддд╢"
6940 LOCATE 12, 16: PRINT "Ё Proceed with format ?  ╝ OK ╞    ╝ NO ╞     Ё"
6950 LOCATE 13, 16: PRINT "юддддддддддддддддддддддддддддддддддддддддддддды"
6960 C1 = 30: C2 = 10: GOTO 7050
6970 X$ = INKEY$
6980 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
6990 IF X$ = CHR$(32) THEN 6750
7000 IF X$ = CHR$(27) THEN 2670
7010 IF X$ = CHR$(0) + CHR$(77) THEN C1 = 10: C2 = 30: GOTO 7050
7020 IF X$ = CHR$(0) + CHR$(75) THEN C1 = 30: C2 = 10: GOTO 7050
7030 IF X$ = CHR$(13) THEN 7080
7040 GOTO 6970
7050 COLOR C1: LOCATE 12, 41: PRINT "╝ OK ╞"
7060 COLOR C2: LOCATE 12, 51: PRINT "╝ NO ╞": COLOR 10
7070 GOTO 6970
7080 IF C1 = 30 THEN LOCATE 24, 1: SHELL "FORMAT A:"
7090 GOTO 2670
7100 'CHKDSK
7110 LOCATE 24, 1
7120 IF LEFT$(DR$, 1) = "A" THEN SHELL "CHKDSK A:"
7130 IF LEFT$(DR$, 1) = "C" THEN SHELL "CHKDSK C:"
7140 X$ = INPUT$(1): GOTO 2670
7160 'EXPLORE
7170 PG = 8: COLOR 7, 2: CLS
7180 PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
7190 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
7200 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
7210 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
7220 COLOR 12
7230 COLOR 4, 1: COLOR 10: CHOR = 7: NCHOR = 7: CHOC = 5: NCHOC = 5: CHOC2 = 45: COLOR 30
7240 LOCATE CHOR, CHOC: PRINT "здддддддддддддддддддддддддддд©"
7250 LOCATE CHOR + 2, CHOC: PRINT "юдддддддддддддддддддддддддддды": COLOR 10
7260 LOCATE CHOR, CHOC2: PRINT "здддддддддддддддддддддддддддд©"
7270 LOCATE CHOR + 2, CHOC2: PRINT "юдддддддддддддддддддддддддддды"
7280 IF CHOR = 15 THEN 7290 ELSE CHOR = CHOR + 4: GOTO 7240
7290 LOCATE 8, 5: PRINT "Ё      Change Directory      Ё"
7300 LOCATE 8, 45: PRINT "Ё View any file in directory Ё"
7310 LOCATE 12, 5: PRINT "Ё     Change system Time     Ё"
7320 LOCATE 12, 45: PRINT "Ё    Change system Date      Ё"
7330 LOCATE 16, 5: PRINT "Ё     View the directory     Ё"
7340 LOCATE 16, 45: PRINT "Ё   See the directory tree   Ё": CHOR = 7
7350 X$ = INKEY$
7360 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
7370 IF X$ = CHR$(27) THEN COLOR 7, 2: GOTO 230
7380 IF X$ = CHR$(32) THEN GOTO 7160
7390 IF X$ = CHR$(0) + CHR$(77) THEN NCHOC = 45: GOTO 7470
7400 IF X$ = CHR$(0) + CHR$(75) THEN NCHOC = 5: GOTO 7470
7410 IF X$ = CHR$(0) + CHR$(72) THEN NCHOR = NCHOR - 4: GOTO 7450
7420 IF X$ = CHR$(0) + CHR$(80) THEN NCHOR = NCHOR + 4: GOTO 7450
7430 IF X$ = CHR$(13) THEN 7520
7440 GOTO 7350
7450 IF NCHOR = 19 THEN NCHOR = 7
7460 IF NCHOR = 3 THEN NCHOR = 15
7470 COLOR 10: LOCATE CHOR, CHOC: PRINT "здддддддддддддддддддддддддддд©"
7480 LOCATE CHOR + 2, CHOC: PRINT "юдддддддддддддддддддддддддддды"
7490 COLOR 30: LOCATE NCHOR, NCHOC: PRINT "здддддддддддддддддддддддддддд©"
7500 LOCATE NCHOR + 2, NCHOC: PRINT "юдддддддддддддддддддддддддддды": COLOR 10
7510 CHOR = NCHOR: CHOC = NCHOC: GOTO 7350
7520 IF CHOC = 5 THEN 7530 ELSE 7560
7530 IF CHOR = 7 THEN DDRI = 1: GOTO 3120
7540 IF CHOR = 11 THEN 7590
7550 IF CHOR = 15 THEN DDRI = 1: GOTO 5800
7560 IF CHOR = 7 THEN 7890
7570 IF CHOR = 11 THEN 8350
7580 IF CHOR = 15 THEN DDRI = 1: GOTO 1040
7590 COLOR 7, 2: CLS
7600 PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
7610 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
7620 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
7630 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
7640 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
7650 COLOR 4, 1: COLOR 10
7660 LOCATE 7, 16: PRINT "зддддддддддддддддддддддддддддддддддддддддддддд©"
7670 LOCATE 8, 16: PRINT "Ё  This option will enable you to change the  Ё"
7680 LOCATE 9, 16: PRINT "Ё   time in the computers Real Time Clock.    Ё"
7690 LOCATE 10, 16: PRINT "Ё  Press Enter to change time or, Esc to exit Ё"
7700 LOCATE 11, 16: PRINT "цддддддддддддддддддддддддддддддддддддддддддддд╢"
7710 LOCATE 12, 16: PRINT "Ё Time should be in this format : [hh:mm:ss]  Ё"
7720 LOCATE 13, 16: PRINT "Ё                                             Ё"
7730 LOCATE 14, 16: PRINT "юддддддддддддддддддддддддддддддддддддддддддддды"
7740 X$ = INKEY$
7750 IF X$ = CHR$(32) THEN 7590
7760 IF X$ = CHR$(27) THEN 7160
7770 IF X$ = CHR$(13) THEN 7780 ELSE 7740
7780 LOCATE 13, 18: PRINT "Enter new time : "; : COLOR 30: PRINT CSR$: COLOR 10
7790 I = 35
7800 IF I = 43 THEN 7870
7810 X$ = INPUT$(1)
7820 IF X$ = CHR$(27) THEN CLS : GOTO 7590
7830 IF X$ = CHR$(13) THEN 7870
7840 IF X$ = CHR$(8) THEN Y$ = "": LOCATE 13, 16: PRINT "Ё                                             Ё": GOTO 7780
7850 LOCATE 13, I: PRINT X$: Y$ = Y$ + X$: I = I + 1
7860 GOTO 7800
7870 TIME$ = Y$
7880 GOTO 7160
7890 '
7900 COLOR 7, 2: CLS
7910 PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
7920 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
7930 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
7940 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
7950 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
7960 COLOR 4, 1: COLOR 10
7970 LOCATE 7, 16: PRINT "зддддддддддддддддддддддддддддддддддддддддддддд©"
7980 LOCATE 8, 16: PRINT "Ё This option allows you to see the contents  Ё"
7990 LOCATE 9, 16: PRINT "Ё of any file in the current directory.Files  Ё"
8000 LOCATE 10, 16: PRINT "Ё   which are encrypted will show only junk   Ё"
8010 LOCATE 11, 16: PRINT "Ё characters like (─ёи┐▓*+·²).                Ё"
8020 LOCATE 12, 16: PRINT "цддддддддддддддддддддддддддддддддддддддддддддд╢"
8030 LOCATE 13, 16: PRINT "Ё Enter name of file : "; : COLOR 30: PRINT CSR$; : COLOR 10: PRINT "                      Ё"
8040 LOCATE 14, 16: PRINT "юддддддддддддддддддддддддддддддддддддддддддддды"
8050 I = 39: Y$ = ""
8060 IF I = 55 THEN 8130
8070 X$ = INPUT$(1)
8080 IF X$ = CHR$(27) THEN 7160
8090 IF X$ = CHR$(13) THEN 8130
8100 IF X$ = CHR$(8) THEN Y$ = "": LOCATE 13, 16: PRINT "Ё Enter name of file : "; : COLOR 30: PRINT CSR$; : COLOR 10: PRINT "                      Ё": GOTO 7890
8110 LOCATE 13, I: PRINT X$: Y$ = Y$ + X$: I = I + 1
8120 GOTO 8060
8130 OPEN "I", #1, DR$ + Y$: I = 4
8140 COLOR 15, 8
8150 LOCATE 3, 3: PRINT "з"; STRING$(74, "д"); "©"
8160 IF EOF(1) THEN 8210
8170 INPUT #1, N$
8180 IF LEN(N$) > 74 THEN 8220
8190 LOCATE I, 3: PRINT "Ё" + N$ + STRING$(74 - LEN(N$), " "): LOCATE I, 78: PRINT "Ё": I = I + 1
8200 GOTO 8260
8210 LOCATE I, 3: PRINT "ю"; STRING$(74, "д"); "ы": CLOSE #1: GOTO 8330
8220 FOR J = 1 TO FIX(LEN(N$) / 74)
8230 LOCATE I, 3: PRINT "Ё" + MID$(N$, 1, 74): LOCATE I, 78: PRINT "Ё": I = I + 1
8240 IF I >= 22 THEN 8260
8250 NEXT J
8260 IF I >= 22 THEN 8270 ELSE GOTO 8160
8270 LOCATE I, 3: PRINT "ю"; STRING$(74, "д"); "ы"
8280 X$ = INKEY$
8290 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
8300 IF X$ = CHR$(27) THEN CLOSE #1: GOTO 8340
8310 IF X$ = CHR$(0) + CHR$(80) OR X$ = CHR$(13) OR X$ = CHR$(0) + CHR$(81) THEN I = 4: GOTO 8160
8320 GOTO 8280
8330 X$ = INPUT$(1)
8340 Y$ = "": IF DDRI = 1 THEN DDRI = 0: GOTO 11650 ELSE GOTO 7890
8350 COLOR 7, 2: CLS
8360 PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
8370 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
8380 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
8390 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
8400 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
8410 COLOR 4, 1: COLOR 10
8420 LOCATE 7, 16: PRINT "зддддддддддддддддддддддддддддддддддддддддддддд©"
8430 LOCATE 8, 16: PRINT "Ё  This option will enable you to change the  Ё"
8440 LOCATE 9, 16: PRINT "Ё   Date in the computers Real Time Clock.    Ё"
8450 LOCATE 10, 16: PRINT "Ё  Press Enter to change Date or, Esc to exit Ё"
8460 LOCATE 11, 16: PRINT "цддддддддддддддддддддддддддддддддддддддддддддд╢"
8470 LOCATE 12, 16: PRINT "Ё Date should be in this format :[mm-dd-yyyy] Ё"
8480 LOCATE 13, 16: PRINT "Ё                                             Ё"
8490 LOCATE 14, 16: PRINT "юддддддддддддддддддддддддддддддддддддддддддддды"
8500 X$ = INKEY$
8510 IF X$ = CHR$(32) THEN 8350
8520 IF X$ = CHR$(27) THEN 7160
8530 IF X$ = CHR$(13) THEN 8540 ELSE 8500
8540 LOCATE 13, 18: PRINT "Enter new Date : "; : COLOR 30: PRINT CSR$: COLOR 10
8550 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
8560 I = 35: Y$ = ""
8570 IF I = 45 THEN 8650
8580 X$ = INPUT$(1)
8590 IF X$ = CHR$(27) THEN CLS : GOTO 8350
8600 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
8610 IF X$ = CHR$(13) THEN 8650
8620 IF X$ = CHR$(8) THEN Y$ = "": LOCATE 13, 16: PRINT "Ё                                             Ё": GOTO 8540
8630 LOCATE 13, I: PRINT X$: Y$ = Y$ + X$: I = I + 1
8640 GOTO 8570
8650 DATE$ = Y$
8660 GOTO 7160
8670 'RECYCLE
8680 PG = 9: COLOR 7, 2: CLS
8690 PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
8700 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
8710 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
8720 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
8730 COLOR 12: COLOR 7, 2
8740 COLOR 4, 1: COLOR 10: CHOR = 11: NCHOR = 11: CHOC = 5: NCHOC = 5: CHOC2 = 45: COLOR 30
8750 LOCATE CHOR, CHOC: PRINT "здддддддддддддддддддддддддддд©"
8760 LOCATE CHOR + 2, CHOC: PRINT "юдддддддддддддддддддддддддддды": COLOR 10
8770 LOCATE CHOR, CHOC2: PRINT "здддддддддддддддддддддддддддд©"
8780 LOCATE CHOR + 2, CHOC2: PRINT "юдддддддддддддддддддддддддддды"
8790 IF CHOR = 15 THEN 8800 ELSE CHOR = CHOR + 4: GOTO 8750
8800 LOCATE 12, 5: PRINT "Ё      Undelete a file       Ё"
8810 LOCATE 12, 45: PRINT "Ё     Unformat a floppy      Ё"
8820 LOCATE 16, 5: PRINT "Ё Change the name of Drive "; LEFT$(DR$, 1); " Ё"
8830 LOCATE 16, 45: PRINT "Ё    Change cursor shape     Ё": CHOR = 11
8840 X$ = INKEY$
8850 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
8860 IF X$ = CHR$(27) THEN COLOR 7, 2: GOTO 230
8870 IF X$ = CHR$(32) THEN GOTO 8670
8880 IF X$ = CHR$(0) + CHR$(77) THEN NCHOC = 45: GOTO 8960
8890 IF X$ = CHR$(0) + CHR$(75) THEN NCHOC = 5: GOTO 8960
8900 IF X$ = CHR$(0) + CHR$(72) THEN NCHOR = NCHOR - 4: GOTO 8940
8910 IF X$ = CHR$(0) + CHR$(80) THEN NCHOR = NCHOR + 4: GOTO 8940
8920 IF X$ = CHR$(13) THEN 9010
8930 GOTO 8840
8940 IF NCHOR = 19 THEN NCHOR = 11
8950 IF NCHOR = 7 THEN NCHOR = 15
8960 COLOR 10: LOCATE CHOR, CHOC: PRINT "здддддддддддддддддддддддддддд©"
8970 LOCATE CHOR + 2, CHOC: PRINT "юдддддддддддддддддддддддддддды"
8980 COLOR 30: LOCATE NCHOR, NCHOC: PRINT "здддддддддддддддддддддддддддд©"
8990 LOCATE NCHOR + 2, NCHOC: PRINT "юдддддддддддддддддддддддддддды": COLOR 10
9000 CHOR = NCHOR: CHOC = NCHOC: GOTO 8840
9010 IF CHOR = 11 AND CHOC = 5 THEN 9060
9020 IF CHOR = 15 AND CHOC = 5 THEN GOTO 3860
9030 IF CHOR = 11 AND CHOC = 45 THEN 9280
9040 IF CHOR = 15 AND CHOC = 45 THEN 9450
9050 '
9060 COLOR 7, 2: CLS
9070 PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
9080 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
9090 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
9100 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
9110 COLOR 12
9120 COLOR 4, 1: COLOR 10
9130 LOCATE 7, 16: PRINT "зддддддддддддддддддддддддддддддддддддддддддддд©"
9140 LOCATE 8, 16: PRINT "Ё  With this option, you can Undelete a file  Ё"
9150 LOCATE 9, 16: PRINT "Ё  which was accidentally deleted by a user.  Ё"
9160 LOCATE 10, 16: PRINT "Ё  Note : To undelete a file,the current dir- Ё"
9170 LOCATE 11, 16: PRINT "Ёectory should be the same from which the fileЁ"
9180 LOCATE 12, 16: PRINT "Ё was deleted.Directories can't be undeleted. Ё"
9190 LOCATE 13, 16: PRINT "цддддддддддддддддддддддддддддддддддддддддддддд╢"
9200 LOCATE 14, 16: PRINT "ЁHit enter to start undelete or Esc to cancel.Ё"
9210 LOCATE 15, 16: PRINT "юддддддддддддддддддддддддддддддддддддддддддддды"
9220 X$ = INKEY$
9230 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
9240 IF X$ = CHR$(27) THEN 8670
9250 IF X$ = CHR$(32) THEN 9050
9260 IF X$ = CHR$(13) THEN 9270 ELSE 9220
9270 SHELL "UNDELETE": GOTO 8670
9280 '
9290 COLOR 7, 2: CLS : PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223)): COLOR 4, 1: COLOR 10
9295 LOCATE 6, 14: PRINT STRING$(51, " ")
9300 LOCATE 7, 14: PRINT "  зддддддддддддддддддддддддддддддддддддддддддддд©  "
9310 LOCATE 8, 14: PRINT "  Ё A successful Unformat cannot always be gur- Ё  "
9320 LOCATE 9, 14: PRINT "  Ё anteed, but if you really need the data on  Ё  "
9330 LOCATE 10, 14: PRINT "  Ё the disk, it's worth a try.Norton utilities Ё  "
9340 LOCATE 11, 14: PRINT "  Ё can also help in file recovery.             Ё  "
9350 LOCATE 12, 14: PRINT "  цддддддддддддддддддддддддддддддддддддддддддддд╢  "
9360 LOCATE 13, 14: PRINT "  Ё    INSERT A FLOPPY IN THE FLOPPY DRIVE      Ё  "
9370 LOCATE 14, 14: PRINT "  ЁPress enter to start Unformat, or Esc to exitЁ  "
9380 LOCATE 15, 14: PRINT "  юддддддддддддддддддддддддддддддддддддддддддддды  "
9385 LOCATE 16, 14: PRINT STRING$(51, " ")
9390 X$ = INKEY$
9400 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
9410 IF X$ = CHR$(27) THEN 8670
9420 IF X$ = CHR$(32) THEN 9280
9430 IF X$ = CHR$(13) THEN 9440 ELSE 9390
9440 SHELL "UNFORMAT A:": GOTO 8670
9450 '
9460 COLOR 7, 2: CLS
9470 PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
9480 COLOR 12
9490 COLOR 4, 1: COLOR 10
9500 LOCATE 7, 16: PRINT "зддддддддддддддддддддддддддддддддддддддддддддд©"
9510 LOCATE 8, 16: PRINT "Ё  Present cursor shape :  "; CSR$; "                  Ё"
9520 LOCATE 9, 16: PRINT "цддддддддддддддддддддддддддддддддддддддддддддд╢"
9530 LOCATE 10, 16: PRINT "Ё  Choose new cursor shape :   зддд©          Ё"
9540 LOCATE 11, 16: PRINT "Ё                              Ё   Ё          Ё"
9550 LOCATE 12, 16: PRINT "Ё Use arrow keys to see shapes Ё   Ё          Ё"
9560 LOCATE 13, 16: PRINT "Ё     & enter to choose.       Ё   Ё          Ё"
9570 LOCATE 14, 16: PRINT "Ё                              юддды          Ё"
9580 LOCATE 15, 16: PRINT "юддддддддддддддддддддддддддддддддддддддддддддды"
9590 I = 1: COLOR 10: LOCATE 11, 49: PRINT CHR$(0): LOCATE 13, 49: PRINT CHR$(2)
9600 COLOR 30: LOCATE 12, 49: PRINT CHR$(1): COLOR 10
9610 X$ = INKEY$
9620 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
9630 IF X$ = CHR$(32) THEN 9450
9640 IF X$ = CHR$(27) THEN 8670
9650 IF X$ = CHR$(0) + CHR$(72) THEN I = I - 1: CR = 1: GOTO 9690
9660 IF X$ = CHR$(0) + CHR$(80) THEN I = I + 1: CR = 0: GOTO 9690
9670 IF X$ = CHR$(13) THEN 9840
9680 GOTO 9610
9690 IF I = 0 THEN I = 1
9700 IF I = 255 THEN I = 254
9710 IF I = 7 AND CR = 0 THEN I = I + 1
9720 IF I = 7 AND CR = 1 THEN I = I - 1
9730 IF I > 8 AND I < 15 AND CR = 0 THEN I = 14
9740 IF I < 15 AND I > 8 AND CR = 1 THEN I = 8
9750 IF I > 27 AND I < 33 AND CR = 0 THEN I = 32
9760 IF I < 33 AND I > 27 AND CR = 1 THEN I = 27
9770 LOCATE 11, 49: PRINT CHR$(I - 1)
9780 COLOR 1, 15: LOCATE 12, 48: PRINT " " + CHR$(I) + " ": COLOR 4, 1: COLOR 10
9790 LOCATE 13, 49: PRINT CHR$(I + 1)
9800 LOCATE 11, 16: PRINT "Ё                              Ё": LOCATE 11, 51: PRINT "Ё          Ё"
9810 LOCATE 12, 16: PRINT "Ё Use arrow keys to see shapes Ё": LOCATE 12, 51: PRINT "Ё          Ё"
9820 LOCATE 13, 16: PRINT "Ё     & enter to choose.       Ё": LOCATE 13, 51: PRINT "Ё          Ё"
9830 GOTO 9610
9840 CSR$ = CHR$(I)
9850 GOTO 8670
9860 'HELP
9865 PG = 1
9870 COLOR 7, 2: CLS : PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
9880 COLOR 15, 8: COLOR 10
9890 I = 2
9900 LOCATE 2, 1: PRINT "з" + STRING$(78, "д") + "©"
9910 CR = 3: CC = 1
9920 LOCATE CR, CC: PRINT "Ё" + STRING$(78, " ") + "Ё"
9930 IF CR = 21 THEN 9940 ELSE CR = CR + 1
9935 LOCATE CR + 1, 1: PRINT "ю" + STRING$(78, "д") + "ы": GOTO 9920
9940 GOTO 10030
9950 RETURN
9960 X$ = INKEY$
9970 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
9980 IF X$ = CHR$(27) THEN 9950
9990 IF X$ = CHR$(32) THEN 9870
10000 IF X$ = CHR$(13) OR X$ = CHR$(0) + CHR$(80) OR X$ = CHR$(0) + CHR$(81) THEN PG = PG + 1: GOTO 9870
10010 IF X$ = CHR$(0) + CHR$(72) OR X$ = CHR$(0) + CHR$(73) THEN PG = PG - 1: GOTO 9870
10020 GOTO 9960
10030 IF PG < 1 THEN PG = 1
10040 IF PG = 1 THEN 10050 ELSE 10190
10050 COLOR 30: LOCATE 3, 35: PRINT "VEIN HELP": COLOR 10
10060 LOCATE 4, 30: PRINT STRING$(19, "д")
10070 LOCATE 6, 5: PRINT "Ч Vein Operating System (C).[2001]. Manufactured by S.D. International."
10080 LOCATE 8, 5: PRINT "Ч Vein Operating System (C), is specially designed for computers which"
10090 LOCATE 9, 7: PRINT "do not have EGA or VGA & hence cannot support Windows Operating System."
10100 LOCATE 11, 5: PRINT "Ч Vein can be operated using the keyboard in a user friendly format."
10110 LOCATE 13, 5: PRINT "Ч This Operating Sustem is a culmination, of the efforts of it's sole"
10120 LOCATE 14, 7: PRINT "programmer - Navin.K.Ipe. A student of 1st P.U.C with the best skills"
10130 LOCATE 15, 7: PRINT "in computer programming, in Basic Language.This student has been chosen"
10140 LOCATE 16, 7: PRINT "from amidst 30,124 aspiring graduates, by S.D.International companies"
10150 LOCATE 17, 7: PRINT "for this prestigious & tedious task.Hats' off to the programming genius."
10160 LOCATE 19, 5: PRINT "Ч Vein (R). This software is registered to Lizzner Institute,Bangalore."
10170 LOCATE 21, 70: COLOR 15: PRINT "[More 8]": COLOR 10
10180 GOTO 9960
10190 IF PG = 4 THEN 10200 ELSE 10440
10200 COLOR 30: LOCATE 3, 2: PRINT "Other Functions"; : COLOR 10: PRINT "Ё"
10210 LOCATE 2, 17: PRINT "б": LOCATE 4, 1: PRINT "цддддддддддддддды"
10220 LOCATE 3, 19: PRINT "Ч Other Functions, offers you a varitey of Dos programs;"
10230 LOCATE 4, 21: PRINT "including games, at the click of the Enter key."
10240 LOCATE 6, 2: PRINT "Ч Microsoft Antivirus scans your system & floppies for lurking viruses."
10340 LOCATE 8, 2: PRINT "Ч Norton Disk Doctor corrects errors in your system & floppies."
10350 LOCATE 10, 2: PRINT "Ч The Norton Utilities helps in file recoverey and system information."
10360 LOCATE 12, 2: PRINT "Ч Defragmenter helps defragment fragmented files.A fragmented file is one"
10370 LOCATE 13, 4: PRINT "that is stored in several different non-contiguous locations on the disk."
10380 LOCATE 15, 2: PRINT "Ч A few Dos games are provided.Enjoy playing them."
10390 LOCATE 17, 2: PRINT "Ч Tree allows you to see the arrangement of directories in a disk."
10400 LOCATE 19, 2: PRINT "Ч Vsafe is a memory resident program which constantly monitors your"
10410 LOCATE 20, 4: PRINT "system for viruses or attempts that could fully erase all data on the disk."
10420 LOCATE 21, 4: PRINT "Programs may take a longer time to be loaded if Vsafe is in memory. "; : COLOR 15: PRINT "[More]": COLOR 10
10430 GOTO 9960
10440 IF PG = 5 THEN 10450 ELSE 10540
10450 COLOR 30: LOCATE 3, 2: PRINT "Other Functions"; : COLOR 10: PRINT "Ё": LOCATE 2, 17: PRINT "б": LOCATE 4, 1: PRINT "цддддддддддддддды"
10460 LOCATE 3, 19: PRINT "Ч Scandisk corrects errors on disks."
10470 LOCATE 5, 2: PRINT "Ч MsDos Editor allows you to view, make changes & save files"
10480 LOCATE 7, 2: PRINT "Ч MsDos Help provides information on each and everything in Dos."
10490 LOCATE 9, 2: PRINT "Ч Microsoft Diagnostics provides complete technical information about"
10500 LOCATE 10, 4: PRINT "your system."
10510 LOCATE 13, 38: PRINT "- И -"
10520 LOCATE 21, 70: COLOR 15: PRINT "[More 1]": COLOR 10
10530 GOTO 9960
10540 IF PG = 2 THEN 10550 ELSE 10720
10550 COLOR 30: LOCATE 3, 2: PRINT "Features of Vein"; : COLOR 10: PRINT "Ё": LOCATE 2, 18: PRINT "б": LOCATE 4, 1: PRINT "цдддддддддддддддды"
10560 LOCATE 3, 20: PRINT "Ч It is important for the owner to know Vein's functions."
10570 LOCATE 5, 2: PRINT "Ч Vein is designed to counterattack an NYB virus attack.The virus constantly"
10580 LOCATE 6, 4: PRINT "overwrites letters on the screen with junk characters, making it difficult"
10590 LOCATE 7, 4: PRINT "for you to read data on the screen.Just press the spacebar to make all the"
10600 LOCATE 8, 4: PRINT "data to appear clearly on the screen.This won't work for the option called"
10610 LOCATE 9, 4: PRINT "`See Any File' in EXPLORE."
10620 LOCATE 11, 2: PRINT "Ч If the system hangs & gives you an error while it starts Ms-Dos,press the"
10630 LOCATE 12, 4: PRINT "F8 key.This key skips Autoexec commands and does not load Vein into memory."
10640 LOCATE 13, 4: PRINT "Now run either Scandisk or Norton Disk Doctor."
10650 LOCATE 15, 2: PRINT "Ч When you choose the MsDos option, you will see `╝ Vein ╞' along with the"
10660 LOCATE 16, 4: PRINT "command prompt.This means that you will have to type EXIT,get into the Vein"
10670 LOCATE 17, 4: PRINT "Operating System & switch off the system only after Shutdown"
10680 LOCATE 19, 2: PRINT "Ч If an error occurs in which the operating system automatically shuts down,"
10690 LOCATE 20, 4: PRINT "then that means the program has been corrupted by Virus action or a Hacker."
10700 LOCATE 21, 4: PRINT "Contact S.D.International for new software.Free of cost.          "; : COLOR 15: PRINT "[More]": COLOR 10
10710 GOTO 9960
10720 IF PG = 6 THEN 10730 ELSE 10920
10730 COLOR 30: LOCATE 3, 2: PRINT "Disk Drives"; : COLOR 10: PRINT "Ё": LOCATE 2, 13: PRINT "б": LOCATE 4, 1: PRINT "цддддддддддды"
10740 LOCATE 3, 15: PRINT "Ч Disk Drives helps you to access files in Drive A & Drive C."
10750 LOCATE 5, 2: PRINT "Ч Vein does not have the ability to display files as Windows does because of"
10760 LOCATE 6, 4: PRINT "the limitations of BASIC language.However, it makes the accessing & transfer"
10770 LOCATE 7, 4: PRINT "of files easier than MsDos.You can see the files in the directory or see the"
10780 LOCATE 8, 4: PRINT "directory structure and then type the file or directory name where necessary"
10790 LOCATE 10, 2: PRINT "Ч The Change Directory function allows you to climb the directory tree.The"
10800 LOCATE 11, 4: PRINT "The Directory tree can be seen with the Tree function shown in the initial"
10810 LOCATE 12, 4: PRINT "screen.A directory is a separate segment of a drive where files are stored."
10820 LOCATE 13, 4: PRINT "It is similar to fruits on the branches of a tree where the Root directory"
10830 LOCATE 14, 4: PRINT "is the trunk,the branches are the direcories & subdirectories, & fruits are"
10840 LOCATE 15, 4: PRINT "files."
10850 LOCATE 16, 5: PRINT "You can climb to a directory.This function is like the `CD xxxx' command in"
10860 LOCATE 17, 4: PRINT "Dos.You can fall from a branch of the directory tree like CD.. & CD\ in Dos."
10870 LOCATE 18, 8: PRINT "You can also create your own directory.It would be like creating a bra-"
10880 LOCATE 19, 4: PRINT "nch on the trunk of the tree or on another branch of the tree.This new"
10890 LOCATE 20, 4: PRINT "directory can be accessed using CLIMB & can be used for storing files."
10900 LOCATE 21, 70: COLOR 15: PRINT "[More 1]": COLOR 10
10910 GOTO 9960
10920 IF PG = 7 THEN 10930 ELSE 11080
10930 COLOR 30: LOCATE 3, 2: PRINT "Disk Drives"; : COLOR 10: PRINT "Ё": LOCATE 2, 13: PRINT "б": LOCATE 4, 1: PRINT "цддддддддддды"
10940 LOCATE 3, 15: PRINT "Ч Access a file allows you to run an EXE or a COM file in the"
10950 LOCATE 4, 17: PRINT "directory. A text file's contents will be shown on the screen."
10960 LOCATE 6, 2: PRINT "Ч Delete file or directory allows you to delete a file, but for deleting a"
10970 LOCATE 7, 4: PRINT "directory, the directory should not contain any files.Deleting a directory"
10980 LOCATE 8, 4: PRINT "is possible if files are in it,but to safeguard data,this methord is adopted"
10990 LOCATE 10, 2: PRINT "Ч You can rename any file or subdirectory with, Rename File or Directory."
11000 LOCATE 12, 2: PRINT "Ч View the Directory allows you to see which files are present in the"
11010 LOCATE 13, 4: PRINT "directory.The only difference from Dos is,you don't have to type DIR."
11020 LOCATE 15, 2: PRINT "Ч Transfer files allows you to copy files from one directory to another ,"
11030 LOCATE 16, 4: PRINT "or from one drive to another."
11040 LOCATE 18, 2: PRINT "Ч Format allows you to format a 3.5 inch ,High Density 1.44 MB floppy disk."
11050 LOCATE 20, 2: PRINT "Ч Disk Status gives you physical information about the Hard or Floppy disk."
11060 LOCATE 21, 38: PRINT "- И -": LOCATE 21, 70: COLOR 15: PRINT "[More 1]": COLOR 10
11070 GOTO 9960
11080 IF PG = 8 THEN 11090 ELSE 11220
11090 COLOR 30: LOCATE 3, 2: PRINT "Explore"; : COLOR 10: PRINT "Ё": LOCATE 2, 9: PRINT "б": LOCATE 4, 1: PRINT "цддддддды"
11100 LOCATE 3, 11: PRINT "Ч Explore allows you explore the depths of data in any disk."
11110 LOCATE 5, 2: PRINT "Ч Change Directory is the same as in Disk Drives.See Disk Drives above."
11120 LOCATE 7, 2: PRINT "Ч See any file allows you to see the contents of ANY file in the hard disk."
11130 LOCATE 8, 4: PRINT "Executable and encrypted files will show only junk characters for program"
11140 LOCATE 9, 4: PRINT "protection.MsDos Editor can also display files & allow changes in it."
11150 LOCATE 11, 2: PRINT "Ч The Time & Date of the computers Real time clock can be changed here."
11160 LOCATE 12, 4: PRINT "Enter time in the format :    [ hour : minute : second ]"
11170 LOCATE 13, 4: PRINT "Enter date in the format :    [ month - day - year ]"
11180 LOCATE 14, 4: PRINT "The year, if 1999 can be entered as either 99 or 1999."
11190 LOCATE 16, 2: PRINT "Ч See Disk Drives above for information on Directory Tree."
11200 LOCATE 18, 38: PRINT "- И -": LOCATE 21, 70: COLOR 15: PRINT "[More 1]": COLOR 10
11210 GOTO 9960
11220 IF PG = 9 THEN 11230 ELSE 11380
11230 COLOR 30: LOCATE 3, 2: PRINT "Recycle"; : COLOR 10: PRINT "Ё": LOCATE 2, 9: PRINT "б": LOCATE 4, 1: PRINT "цддддддды"
11240 LOCATE 3, 11: PRINT "Ч Recycle can recover files from the ravenous mouth of deletion."
11250 LOCATE 5, 2: PRINT "Ч Undelete uses the help of Dos to recover deleted files.The Norton Utilities"
11260 LOCATE 6, 4: PRINT "is more effecient in file recoverey.The percentage of success in recovering"
11270 LOCATE 7, 4: PRINT "a file depends on the period of time it has stayed deleted."
11280 LOCATE 9, 2: PRINT "Ч Unformat may not always be successful because a formatted floppy has all"
11290 LOCATE 10, 4: PRINT "data wiped out from it.Unformat particularly will not work with a floppy"
11300 LOCATE 11, 4: PRINT "which has been formatted simultaneously more than once."
11310 LOCATE 13, 2: PRINT "Ч Change the name of a disk enables you to change the volume label of a"
11320 LOCATE 14, 4: PRINT "hard disk or a floppy disk."
11330 LOCATE 16, 2: PRINT "Ч An interesting function of Vein is that Unlike Dos, it can change the"
11340 LOCATE 17, 4: PRINT "shape of its cursor.The cursor is the character which keeps blinking &"
11350 LOCATE 18, 4: PRINT "can be moved around with the arrow key."
11360 LOCATE 20, 38: PRINT "- И -": LOCATE 21, 70: COLOR 15: PRINT "[More 1]": COLOR 10
11370 GOTO 9960
11380 IF PG = 10 THEN 11390 ELSE 11550
11390 LOCATE 9, 20: PRINT "юддддддддддддддддддддддддддддддддддддддды"
11400 LOCATE 4, 20: PRINT "зддддддддддддддддддддддддддддддддддддддд©"
11410 LOCATE 5, 20: PRINT "Ё        "; : COLOR 15: PRINT "Vein Operating System"; : COLOR 10: PRINT "          Ё"
11420 LOCATE 6, 20: PRINT "цддддддддддддддддддддддддддддддддддддддд╢"
11430 LOCATE 7, 20: PRINT "Ё   Copyright (C)  S.D.International    Ё"
11440 LOCATE 8, 20: PRINT "Ё     Computer Corporation. [2001].     Ё"
11450 LOCATE 10, 10: PRINT "зддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд©"
11460 LOCATE 11, 10: PRINT "Ё This software is furnished under a licence agreement. The Ё"
11470 LOCATE 12, 10: PRINT "Ё software may be used or copied only in accordance with theЁ"
11480 LOCATE 13, 10: PRINT "Ё terms of the agreement.It is against the law to copy this Ё"
11490 LOCATE 14, 10: PRINT "Ё software on magnetic tape, disk  or any other medium, for Ё"
11500 LOCATE 15, 10: PRINT "Ё any purpose other than the purchaser's personal use.      Ё"
11510 LOCATE 16, 10: PRINT "юддддддддддддддддддддддддддддддддддддддддддддддддддддддддддды"
11520 LOCATE 18, 38: PRINT "- И -"
11530 LOCATE 21, 30: PRINT "╝ End of Vein Help ╞"
11540 GOTO 9960
11550 IF PG = 3 THEN 11560 ELSE 9860
11560 COLOR 30: LOCATE 3, 2: PRINT "Features of Vein"; : COLOR 10: PRINT "Ё": LOCATE 2, 18: PRINT "б": LOCATE 4, 1: PRINT "цдддддддддддддддды"
11570 LOCATE 3, 20: PRINT "Ч Vein has some special key's."
11580 LOCATE 5, 5: PRINT "Ч F1 key, for online help on any part of Vein."
11590 LOCATE 7, 5: PRINT "Ч F2 key, to close all programs and restart Vein."
11600 LOCATE 9, 5: PRINT "Ч F3 key, for anytime shutdown."
11610 LOCATE 11, 5: PRINT "Ч F4 key, for"
11620 LOCATE 13, 5: PRINT "Ч Shutdown takes you to MsDos.Either work in Dos or switch off the system."
11625 LOCATE 14, 7: PRINT "Vein stops working after shutdown."
11630 LOCATE 16, 7: COLOR 15: PRINT "WARNING:"; : COLOR 10: PRINT " DO NOT switch off the system while Vein is working."
11640 GOTO 9960
11650 '
11660 COLOR 7, 2: CLS
11670 PRINT STRING$(37, CHR$(220)) + " VEIN " + STRING$(37, CHR$(223))
11680 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
11690 COLOR 1, 15: LOCATE 3, 2: PRINT "здддддддддддддддддддбд"; STRING$(LEN(DR$), "д"); "ддд©"
11700 LOCATE 4, 2: PRINT "Ё Current Directory Ё "; DR$; "   Ё"
11710 LOCATE 5, 2: PRINT "юдддддддддддддддддддад"; STRING$(LEN(DR$), "д"); "ддды"
11720 COLOR 4, 1: COLOR 10
11730 LOCATE 7, 16: PRINT "зддддддддддддддддддддддддддддддддддддддддддддд©"
11740 LOCATE 8, 16: PRINT "Ё This Option allows You to run an Executable Ё"
11750 LOCATE 9, 16: PRINT "Ё file or a command file in the current dire- Ё"
11760 LOCATE 10, 16: PRINT "Ёctory.Batch files are also run by this optionЁ"
11770 LOCATE 11, 16: PRINT "Ё A text file's contents will be shown to you.Ё"
11775 LOCATE 12, 16: PRINT "Ё Type files Extension also. Eg: SCANDISK.EXE Ё"
11780 LOCATE 13, 16: PRINT "цддддддддддддддддддддддддддддддддддддддддддддд╢"
11790 LOCATE 14, 16: PRINT "Ё Enter name of file : "; : COLOR 30: PRINT CSR$; : COLOR 10: PRINT "                      Ё"
11800 LOCATE 15, 16: PRINT "юддддддддддддддддддддддддддддддддддддддддддддды"
11810 I = 39: Y$ = ""
11820 IF I = 59 THEN 11890
11830 X$ = INPUT$(1)
11835 LOCATE 23, 38: PRINT "[ DATE :" + DATE$ + " ]": LOCATE 23, 60: PRINT "[ TIME :" + TIME$ + " ]"
11840 IF X$ = CHR$(27) THEN 2670
11850 IF X$ = CHR$(13) THEN 11890
11860 IF X$ = CHR$(8) THEN Y$ = "": GOTO 11650
11870 LOCATE 14, I: PRINT X$: Y$ = Y$ + X$: I = I + 1
11880 GOTO 11820
11890 X$ = RIGHT$(Y$, 3)
11900 IF X$ = "BAS" OR X$ = "bas" THEN SHELL "QBASIC/RUN " + DR$ + Y$: X$ = INPUT$(1): GOTO 11650
11905 IF X$ = "EXE" OR X$ = "exe" OR X$ = "COM" OR X$ = "com" OR X$ = "BAT" OR X$ = "bat" THEN 11910 ELSE 11920
11910 SHELL Y$: X$ = INPUT$(1)
11920 IF X$ = "TXT" OR X$ = "txt" THEN DDRI = 1: GOTO 8130
11930 LOCATE 17, 16: PRINT "Sorry, file `"; Y$; "' cannot be accessed."
11940 GOTO 11650
11950 'RESTART
11960 COLOR 7, 2: CLS : COLOR 1, 4
11970 LOCATE 10, 20: PRINT "зддддддддддддддддддддддддддддддддддддддддддддд©"
11980 LOCATE 11, 20: PRINT "Ё    Closing all programs and Restarting      Ё"
12000 LOCATE 13, 20: PRINT "Ё                    - 5 -                    Ё"
12010 LOCATE 14, 20: PRINT "юддддддддддддддддддддддддддддддддддддддддддддды"
12020 FOR I = 5 TO 1 STEP -1
12030 T = TIMER + 1: WHILE T > TIMER: WEND
12040 LOCATE 13, 42: PRINT I:NEXT I
12060 CLEAR:GOTO 10
12070 COLOR 1, 8: COLOR 15: LOCATE 10, 20: PRINT "здддддддддддддддддддддддддддддддддддддддддддддд©"
12080 LOCATE 11, 20: PRINT "Ё Error Detected.You have either tried to gain Ё"
12090 LOCATE 12, 20: PRINT "Ё access to a directory that dosent exist or   Ё"
12100 LOCATE 13, 20: PRINT "Ё you have done something or the other wrong.  Ё"
12110 LOCATE 14, 20: PRINT "Ё        <<<Press a key to Restart>>>          Ё"
12130 LOCATE 15, 20: PRINT "юдддддддддддддддддддддддддддддддддддддддддддддды"
12140 X$=INPUT$(1):GOTO 12060
