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
10 SCREEN 0, 0, 0: KEY OFF
20 COLOR 4, 1: COLOR 12: CLS
30 CLS : R = 10: C = 22
40 FOR K = 1 TO 4
50 FOR J = 1 TO 7
60 READ N$: LOCATE R, C
70 FOR I = 1 TO 5
80 M$ = MID$(N$, I, 1)
90 IF M$ = "1" THEN PRINT CHR$(219);
100 IF M$ = "0" THEN PRINT " ";
110 NEXT I
120 R = R + 1
130 NEXT J
140 FOR L = 1 TO 10: NEXT L: R = 10: C = C + 10: NEXT K
150 LOCATE 18, 31: PRINT "OPERATING SYSTEM"
160 LOCATE 19, 29: PRINT STRING$(20, "Ä")
170 LOCATE 21, 10: PRINT "À" + STRING$(59, "Ä") + "Ù"
180 LOCATE 5, 10: PRINT "Ú" + STRING$(59, "Ä") + "¿"
190 C1 = 10: C2 = 70: R = 6
200 LOCATE R, C1: PRINT "³": LOCATE R, C2: PRINT "³"
210 IF R = 20 THEN 220 ELSE R = R + 1: GOTO 200
220 CHAIN "VEIN.BAS"
230 DATA 10001
240 DATA 10001
250 DATA 10001
260 DATA 10001
270 DATA 10001
280 DATA 01010
290 DATA 00100
300 DATA 11111
310 DATA 10000
320 DATA 10000
330 DATA 11111
340 DATA 10000
350 DATA 10000
360 DATA 11111
370 DATA 11111
380 DATA 00100
390 DATA 00100
400 DATA 00100
410 DATA 00100
420 DATA 00100
430 DATA 11111
440 DATA 10001
450 DATA 10001
460 DATA 11001
470 DATA 10101
480 DATA 10011
490 DATA 10001
500 DATA 10001
