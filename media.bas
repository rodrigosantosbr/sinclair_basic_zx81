20 CLS
25 PRINT "DIGITE A LISTA DE NOTAS"
30 PRINT "DIGITE -99 PARA TERMINAR"
35 LET T=0
40 LET C=0
45 INPUT N
50 IF N=-99 AND C=0 THEN PRINT "MEDIA=0":STOP
55 IF N=-99 THEN PRINT "MEDIA=";T/C:STOP
60 LET T=T+N
65 LET C=C+1
70 GOTO 45
