5 CLS
10 PRINT "INPUT A WORD"
15 INPUT A$
20 LET L=0
25 LET B$=A$
30 IF B$="" THEN GOTO 100
35 LET B$=B$(2 TO)
40 LET L=L+1
45 GOTO 30
100 PRINT A$;" HAS A LENGHT OF ";L