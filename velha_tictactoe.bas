1 REM JOGO DA VELHA
2 REM 06/03/2019
3 REM ANTONIO RODRIGO DOS SANTOS SILVA - RODRIGO.SEJ@GMAIL.COM
4 LET VIT=0
5 LET DER=0
20 REM -- TELA DE SELECAO --
21 CLS
22 PRINT TAB(2);"** JOGO DA VELHA **"
23 PRINT TAB(5);"BY RODRIGO SILVA (2019)"
24 PRINT ""
25 PRINT ""
26 PRINT "VITORIAS = ";VIT:PRINT "DERROTAS = ";DER
27 PRINT ""
28 PRINT ""
29 PRINT "ESCOLHA X OU O (S PARA SAIR)?"
30 INPUT J$
31 IF J$<>"X" AND J$<>"x" AND J$<>"O" AND J$<>"o" AND J$<>"S" AND J$<>"s" THEN GOTO 20
32 IF J$="S" OR J$="s" THEN GOTO 305
33 IF J$="X" OR J$="x" THEN LET M$="O":GOTO 50
34 IF J$="O" OR J$="o" THEN LET M$="X":GOTO 50
50 REM -- VARIAVEIS --
51 DIM T$(10)
52 LET VEZ=1
53 FOR I=1 TO 9
54   LET T$(I)=""
55 NEXT I
56 LET V$="VOCE VENCEU!!! PARABENS"
57 LET D$="VOCE PERDEU!!! TENTE NOVAMENTE"
58 LET E$="EMPATE!!!"
59 LET COUNT=0
70 REM -- COMECO DO JOGO --
71 RANDOMIZE
72 CLS
73 PRINT "1 2 3"
74 PRINT "4 5 6"
75 PRINT "7 8 9"
76 PRINT ""
77 PRINT "VOCE E' : ";J$
78 PRINT ""
79 PRINT ""
80 PRINT "   ";T$(1);"   !   ";T$(2);"   !   ";T$(3)
81 PRINT "------- ------- -------"
82 PRINT "   ";T$(4);"   !   ";T$(5);"   !   ";T$(6)
83 PRINT "------- ------- -------"
84 PRINT "   ";T$(7);"   !   ";T$(8);"   !   ";T$(9)
85 PRINT ""
86 REM -- CHECA VITORIA --
87 IF T$(1)=T$(2) AND T$(1)=T$(3) AND T$(1)=J$ THEN PRINT V$:PAUSE 120:LET VIT=VIT+1:GOTO 300
88 IF T$(4)=T$(5) AND T$(4)=T$(6) AND T$(4)=J$ THEN PRINT V$:PAUSE 120:LET VIT=VIT+1:GOTO 300
89 IF T$(7)=T$(8) AND T$(7)=T$(9) AND T$(7)=J$ THEN PRINT V$:PAUSE 120:LET VIT=VIT+1:GOTO 300
90 IF T$(1)=T$(4) AND T$(1)=T$(7) AND T$(1)=J$ THEN PRINT V$:PAUSE 120:LET VIT=VIT+1:GOTO 300
91 IF T$(2)=T$(5) AND T$(2)=T$(8) AND T$(2)=J$ THEN PRINT V$:PAUSE 120:LET VIT=VIT+1:GOTO 300
92 IF T$(3)=T$(6) AND T$(3)=T$(9) AND T$(3)=J$ THEN PRINT V$:PAUSE 120:LET VIT=VIT+1:GOTO 300
93 IF T$(1)=T$(5) AND T$(1)=T$(9) AND T$(1)=J$ THEN PRINT V$:PAUSE 120:LET VIT=VIT+1:GOTO 300
94 IF T$(3)=T$(5) AND T$(3)=T$(7) AND T$(3)=J$ THEN PRINT V$:PAUSE 120:LET VIT=VIT+1:GOTO 300
95 REM -- CHECA DERROTA --
96 IF T$(1)=T$(2) AND T$(1)=T$(3) AND T$(1)=M$ THEN PRINT D$:PAUSE 120:LET DER=DER+1:GOTO 300
97 IF T$(4)=T$(5) AND T$(4)=T$(6) AND T$(4)=M$ THEN PRINT D$:PAUSE 120:LET DER=DER+1:GOTO 300
98 IF T$(7)=T$(8) AND T$(7)=T$(9) AND T$(7)=M$ THEN PRINT D$:PAUSE 120:LET DER=DER+1:GOTO 300
99 IF T$(1)=T$(4) AND T$(1)=T$(7) AND T$(1)=M$ THEN PRINT D$:PAUSE 120:LET DER=DER+1:GOTO 300
100 IF T$(2)=T$(5) AND T$(2)=T$(8) AND T$(2)=M$ THEN PRINT D$:PAUSE 120:LET DER=DER+1:GOTO 300
101 IF T$(3)=T$(6) AND T$(3)=T$(9) AND T$(3)=M$ THEN PRINT D$:PAUSE 120:LET DER=DER+1:GOTO 300
102 IF T$(1)=T$(5) AND T$(1)=T$(9) AND T$(1)=M$ THEN PRINT D$:PAUSE 120:LET DER=DER+1:GOTO 300
103 IF T$(3)=T$(5) AND T$(3)=T$(7) AND T$(3)=M$ THEN PRINT D$:PAUSE 120:LET DER=DER+1:GOTO 300
104 REM -- CHECA EMPATE --
105 IF COUNT=9 THEN PRINT E$:PAUSE 60:GOTO 300
106 REM -- DESVIO PESSOA ESCOLHE NUMERO --
107 IF VEZ=1 THEN GOTO 110
108 REM -- DESVIO MAQUINA ESCOLHE NUMERO --
109 IF VEZ=2 THEN GOTO 116
110 REM -- PESSOA ESCOLHE NUMERO --
111 PRINT "SUA VEZ! ESCOLHA POSICAO (1-9): ":INPUT P$:
112 IF P$<>"1" AND P$<>"2" AND P$<>"3" AND P$<>"4" AND P$<>"5" AND P$<>"6" AND P$<>"7" AND P$<>"8" AND P$<>"9" THEN GOTO 70
113 IF T$(VAL(P$))="X" OR T$(VAL(P$))="x" OR T$(VAL(P$))="O" OR T$(VAL(P$))="o" THEN PRINT "POSICAO JA PREENCHIDA":PAUSE 10:GOTO 70
114 LET T$(VAL(P$))=J$
115 GOTO 200
116 REM -- MAQUINA ESCOLHE ALEATORIAMENTE NUMERO --
117 LET X=INT(RND*9)+1
118 LET P$=STR$ X
119 IF P$<>"1" AND P$<>"2" AND P$<>"3" AND P$<>"4" AND P$<>"5" AND P$<>"6" AND P$<>"7" AND P$<>"8" AND P$<>"9" THEN GOTO 117
120 IF T$(VAL(P$))="X" OR T$(VAL(P$))="x" OR T$(VAL(P$))="O" OR T$(VAL(P$))="o" THEN GOTO 123
121 LET T$(VAL(P$))=M$
122 GOTO 200
123 LET X=X+1
124 IF X=10 THEN LET X=1
125 GOTO 118
200 LET VEZ=VEZ+1
201 IF VEZ=3 THEN LET VEZ=1
202 LET COUNT=COUNT+1
203 GOTO 70
300 CLS
301 PRINT "MAIS UMA PARTIDA (S/N) ?"
302 INPUT K$
303 IF K$<>"S" AND K$<>"s" AND K$<>"N" AND k$<>"n" THEN GOTO 300
304 IF K$="S" OR K$="s" THEN GOTO 20
305 PRINT "FIM"
