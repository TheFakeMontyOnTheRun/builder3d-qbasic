'*****************************************************************************
'* 3-D Builder 2.5  - 6 anos depois                                          *
'*****************************************************************************
'*Programador:Daniel Monteiro              \ Builder 2.5, uma opá∆o antiquada*
'*idealizadorde rotinas:o mesmo cara!!       \Formato de gravacao:Texto      *
'*Ajudante:ninguem                             \se vc for usar isso, me avise*
'*----------------------- e-mail:JunkyBox2002@yahoo.com.br-------------------*
'*****************************************************************************


'// nota em 4/junho/2003:
'// bug:ao abrir uma janela (interaá∆o com obejtos 7 e 5) em rotaá‰es diferentes
'// de 1 , a mudanáa somente afetara a copia do mapa daquela rotaá∆o. ao sair do
'// modo 3D, toda alteraá∆o que n∆o na rotaá∆o 1 eh apagada;

'//   lista de objetos:
'//   1-pilar estilizado (eh chapado, mas a engine eh capaz de criar um com volume)
'//   2-pilar redondo  (tem volume)
'//   3-entrada de tele-transportador (evento)
'//   4-saida de tele-transportador (colocada automaticamente pela interface do editor)
'//   5-janela fechada
'//   6-parede comum
'//   7-janela aberta

'// mais objetos podem ser facilmente acrescentados...se vc os programar no braáo.

'//   Alterando a engine:
'//     Gostaria muito que alguem pegasse a engine e finalmente criasse um jogo com ela
'// pois durante uns 3 anos, esses eram meus planos,mas eu passei esse tempo tentando melhorar
'// ou tentando criar novas engines... apenas 5 anos depois eu conssegui criar BZKLITE
'// cujas fotos est∆o em www.pdj.com.br
'// se vc for criar algo com ela, me avise por favor, pois eu posso lhe dar algumas dicas valiosas
'// alem disso, junto do pacote, estou enviando um mapa mostrando oque pode ser feito.





DECLARE SUB obj7 ()
DECLARE SUB end.program ()
DECLARE SUB def.ambience.music ()

DECLARE SUB obj6 ()
DECLARE SUB obj5 ()
DECLARE SUB startup.menu ()
DECLARE SUB wallfilled ()
DECLARE SUB event.mananger ()
DECLARE SUB check.events.r2 ()
DECLARE SUB check.events.r3 ()
DECLARE SUB check.events.r4 ()
DECLARE SUB check.events.r1 ()
DECLARE SUB traduz.posicoes ()
DECLARE SUB obj1 ()
DECLARE SUB obj3 ()
DECLARE SUB show.map ()
DECLARE SUB limpa ()
DECLARE SUB startup.3d ()
DECLARE SUB interface2 ()
DECLARE SUB movimentos ()
DECLARE SUB entra.dados ()
DECLARE SUB limit.table ()
DECLARE SUB start.up ()
DECLARE SUB cria.mapa.r2 ()
DECLARE SUB cria.mapa.r3 ()
DECLARE SUB cria.mapa.r4 ()
DECLARE SUB load.default ()
DECLARE SUB moviment.table ()
DECLARE SUB graf ()
DECLARE SUB obj4 ()
DECLARE SUB load.obj.list ()
DECLARE SUB load.avatar.list ()
DECLARE SUB load.obj.file ()
DECLARE SUB finish ()
DECLARE SUB change.map ()
DECLARE SUB target ()
DECLARE SUB check.events ()
DECLARE SUB viewfiles ()
DECLARE SUB walls ()
DECLARE SUB matematica ()
DECLARE SUB obj2 ()
DECLARE SUB notobj ()
DECLARE SUB lemapa ()
DECLARE SUB new ()
DECLARE SUB sure ()
DECLARE SUB calc.pos ()
DECLARE SUB escolha ()
DECLARE SUB Def.pos ()
DECLARE SUB save.map ()
DECLARE SUB load.map ()
DECLARE SUB grid.init ()
DECLARE SUB borda ()
DECLARE SUB msg ()
DECLARE SUB botao ()
DECLARE SUB interface ()
DECLARE SUB text ()
COMMON SHARED posy AS INTEGER
COMMON SHARED posx AS INTEGER
COMMON SHARED obj  AS INTEGER
COMMON SHARED r  AS INTEGER
COMMON SHARED ch  AS INTEGER
COMMON SHARED startup.flag
COMMON SHARED continue.flag AS INTEGER
COMMON SHARED r3x AS INTEGER
COMMON SHARED r3y AS INTEGER
COMMON SHARED i13 AS INTEGER
COMMON SHARED i24 AS INTEGER
COMMON SHARED i4 AS INTEGER
COMMON SHARED old  AS INTEGER
COMMON SHARED tempmap AS INTEGER
COMMON SHARED rota  AS INTEGER
COMMON SHARED cursorx AS INTEGER
COMMON SHARED cursory AS INTEGER
COMMON SHARED rot AS INTEGER
COMMON SHARED r1x AS INTEGER
COMMON SHARED cx2 AS INTEGER
COMMON SHARED events.counter AS INTEGER
COMMON SHARED ty  AS INTEGER
COMMON SHARED vx  AS INTEGER
COMMON SHARED vy  AS INTEGER
COMMON SHARED r1y  AS INTEGER
COMMON SHARED D  AS INTEGER
COMMON SHARED dpx AS INTEGER
COMMON SHARED dpy  AS INTEGER
COMMON SHARED det  AS INTEGER
COMMON SHARED valxy  AS INTEGER
COMMON SHARED vlxy  AS INTEGER
COMMON SHARED movimentflag1  AS INTEGER
COMMON SHARED dify  AS INTEGER
COMMON SHARED difx  AS INTEGER
COMMON SHARED y  AS INTEGER
COMMON SHARED index AS INTEGER
COMMON SHARED x  AS INTEGER
COMMON SHARED yb  AS INTEGER
COMMON SHARED xb  AS INTEGER
COMMON SHARED fileobj AS STRING
COMMON SHARED c   AS INTEGER
COMMON SHARED d2  AS INTEGER
COMMON SHARED rotat AS INTEGER
COMMON SHARED co  AS INTEGER
COMMON SHARED jump AS INTEGER
COMMON SHARED tecla AS STRING
COMMON SHARED jmpy AS INTEGER
COMMON SHARED jmpx AS INTEGER
COMMON SHARED room AS INTEGER
COMMON SHARED andar AS INTEGER
COMMON SHARED py    AS INTEGER
COMMON SHARED px    AS INTEGER
COMMON SHARED tx AS INTEGER
COMMON SHARED x1 AS INTEGER
COMMON SHARED y1 AS INTEGER
COMMON SHARED r4x AS INTEGER
COMMON SHARED r4y AS INTEGER
COMMON SHARED r2x AS INTEGER
COMMON SHARED r2y AS INTEGER
COMMON SHARED texto   AS STRING
COMMON SHARED file AS STRING
COMMON SHARED title AS STRING
COMMON SHARED m AS STRING
SCREEN 13
COLOR 3
PRINT "inicializando..."
REM FOR tempo = 1 TO 15000: NEXT tempo
DIM SHARED filename$(1 TO 10)
'*** matrizes ***'
DIM SHARED events.x(0 TO 125)                       AS INTEGER
DIM SHARED events.y(0 TO 125)                       AS INTEGER
DIM SHARED events.z(0 TO 125)                       AS INTEGER
DIM SHARED events.x2(0 TO 125)                       AS INTEGER
DIM SHARED events.y2(0 TO 125)                       AS INTEGER
DIM SHARED events.z2(0 TO 125)                       AS INTEGER
DIM SHARED cont(1 TO 10)  AS INTEGER
DIM SHARED mapa.r1(0 TO 10, 0 TO 25, 0 TO 25)   AS INTEGER
DIM SHARED rotacao.r1(0 TO 10, 0 TO 25, 0 TO 25)   AS INTEGER
DIM SHARED mapa.r2(0 TO 25, 0 TO 25)   AS INTEGER
DIM SHARED rotacao.r2(0 TO 25, 0 TO 25)   AS INTEGER
DIM SHARED mapa.r3(0 TO 25, 0 TO 25)   AS INTEGER
DIM SHARED rotacao.r3(0 TO 25, 0 TO 25)   AS INTEGER
DIM SHARED mapa.r4(0 TO 25, 0 TO 25)   AS INTEGER
DIM SHARED rotacao.r4(0 TO 25, 0 TO 25)   AS INTEGER
DIM SHARED v(0 TO 20, 0 TO 20, 0 TO 20) AS INTEGER
'destacar depois
DIM SHARED ambience.music(1 TO 10) AS STRING
DIM SHARED pre.def.sound(1 TO 256) AS STRING
'*** fim bloco.matrizes ***
CONST true = -1, false = 0
CLEAR , 9999
fileobj = "default.scp"
room = 1
CLS
start.up

SUB bar
LINE (y1, x1)-(y2, x2), 8, BF
END SUB

SUB borda
LINE (y1, x1)-(y2, x2), 8, B
END SUB

SUB botao
t$ = texto
x1 = (tx * 7) - 6
y1 = (ty * 7) - 6
x2 = x1 + 12
y2 = y1 + ((LEN(t$) * 8) + 13)
LINE (y1, x1)-(y2, x2 + 2), 8, BF
LINE (y1, x1)-(y2, x2 + 2), 0, B
text
tx = 1: ty = 1: texto = ""
END SUB

SUB calc.pos
mapa.r1(room, posx, posy) = obj
rotacao.r1(room, posx, posy) = rotat
IF obj <> 0 THEN cor = obj
IF obj = 0 THEN cor = 15
LINE (40 + 5 * posy - 2, 30 + 5 * posx - 2)-(40 + 5 * posy + 2, 30 + 5 * posx + 2), cor, BF
END SUB

SUB change.map
tx = 1: ty = 1: texto = "Qual mapa deseja usar?": text
INPUT room
limpa
CLS
IF room > 10 THEN change.map
LINE (0, 28)-(320, 200), 15, BF
interface
show.map
END SUB

SUB check.events.r1
tx = 1: ty = 2: texto = "varrendo indice de eventos:": text
FOR l1 = 1 TO 125
LOCATE tx, ty + (LEN(texto) + 1): PRINT l1
IF events.x(l1) = r1x AND events.y(l1) = r1y THEN
r1x = events.x2(l1)
r1y = events.y2(l1)
r2x = 26 - r1y
r2y = r1x
r3x = 26 - r1x
r3y = 26 - r1y
r4x = 26 - r2x
r4y = 26 - r2y
room = events.z2(l1)
l1 = 125
END IF
NEXT l1
END SUB

SUB check.events.r2
tx = 1: ty = 2: texto = "varrendo indice de eventos:": text
FOR l1 = 1 TO 125
LOCATE tx, ty + (LEN(texto) + 1): PRINT l1
IF events.x(l1) = r1x AND events.y(l1) = r1y THEN
r2x = 26 - events.x2(l1)
r2y = events.y2(l1)
r1x = events.x2(l1)
r1y = events.y2(l1)
r3x = 26 - r1x
r3y = 26 - r1y
r4x = 26 - r2x
r4y = 26 - r2y
room = events.z2(l1)
l1 = 125
END IF
NEXT l1
END SUB

SUB check.events.r3
tx = 1: ty = 2: texto = "varrendo indice de eventos:": text
FOR l1 = 1 TO 125
LOCATE tx, ty + (LEN(texto) + 1): PRINT l1
IF events.x(l1) = r1x AND events.y(l1) = r1y THEN
r1x = events.x2(l1)
r1y = events.y2(l1)
r2x = 26 - r1y
r2y = r1x
r3x = 26 - r1x
r3y = 26 - r1y
r4x = 26 - r2x
r4y = 26 - r2y
room = events.z2(l1)
l1 = 125
END IF
NEXT l1


 'tx = 1: ty = 2: texto = "varrendo indice de eventos:": text
'FOR l1 = 1 TO 125
'LOCATE tx, ty + (LEN(texto) + 1): PRINT l1
'IF events.x(l1) = r1x AND events.y(l1) = r1y THEN
'r1x = events.x2(l1)
'r1y = events.y2(l1)
'r2x = 26 - r1y
'r2y = r1x
'r3x = 26 - r1x
'r3y = 26 - r1y
'r4x = 26 - r2x
'r4y = 26 - r2y
'room = events.z2(l1)
'l1 = 125
'END IF
'NEXT l1

END SUB

SUB check.events.r4
tx = 1: ty = 2: texto = "varrendo indice de eventos:": text
FOR l1 = 1 TO 125
LOCATE tx, ty + (LEN(texto) + 1): PRINT l1
IF events.x(l1) = r1x AND events.y(l1) = r1y THEN
r2x = 26 - events.x2(l1)
r2y = events.y2(l1)
r1x = events.x2(l1)
r1y = events.y2(l1)
r3x = 26 - r1x
r3y = 26 - r1y
r4x = 26 - r2x
r4y = 26 - r2y
room = events.z2(l1)
l1 = 125
END IF
NEXT l1
END SUB

SUB cria.mapa.r2
FOR y = 1 TO 25
FOR x = 1 TO 25
mapa.r2(y, x) = mapa.r1(room, x, 26 - y)
rotacao.r2(y, x) = rotacao.r1(room, x, 26 - y)
NEXT x
NEXT y

FOR y = 1 TO 25
FOR x = 1 TO 25
IF rotacao.r2(x, y) = 3 THEN rotacao.r2(x, y) = 2
IF rotacao.r2(x, y) = 4 THEN rotacao.r2(x, y) = 3
IF rotacao.r2(x, y) = 1 THEN rotacao.r2(x, y) = 4
IF rotacao.r2(x, y) = 2 THEN rotacao.r2(x, y) = 1
NEXT x
NEXT y
END SUB

SUB cria.mapa.r3
FOR sw = 1 TO 25
FOR sw2 = 1 TO 25
mapa.r3(sw2, sw) = mapa.r1(room, 26 - sw2, 26 - sw)
rotacao.r3(sw2, sw) = rotacao.r1(room, 26 - sw2, 26 - sw)
NEXT sw2
NEXT sw
END SUB

SUB cria.mapa.r4
FOR sw = 1 TO 25
FOR sw2 = 1 TO 25
mapa.r4(sw2, sw) = mapa.r2(26 - sw2, 26 - sw)
rotacao.r4(sw2, sw) = rotacao.r2(26 - sw2, 26 - sw)
NEXT sw2
NEXT sw
END SUB

SUB def.ambience.music
SCREEN 12
CLS
COLOR 4
tx = 1: ty = 1: texto = "definindo musica para o sub-mapa:": text: LOCATE tx, ty + LEN(texto): PRINT room
COLOR 3
tx = 2: ty = 1: texto = "musica no formato midi disponiveis": text
LOCATE 3, 1
COLOR 15
FILES "*.mid"
INPUT ambience.music(room)
CLS
SCREEN 13
LINE (0, 28)-(320, 200), 15, BF
interface
LINE (40 + 5 * r1y - 2, 30 + 5 * r1x - 2)-(40 + 5 * r1y + 2, 30 + 5 * r1x + 2), 0, BF
show.map
END SUB

SUB Def.pos
LINE (40 + 5 * r1y - 2, 30 + 5 * r1x - 2)-(40 + 5 * r1y + 2, 30 + 5 * r1x + 2), 15, BF

tx = 1: ty = 1: texto = "para onde o avatar deve ser realocado": text
17
tx = 2: ty = 1: texto = "Rotaá∆o": text
INPUT rot
limpa
18
tx = 2: ty = 1: texto = "X": text
INPUT r1x
limpa
19
tx = 2: ty = 1: texto = "Y": text
INPUT r1y
limpa
IF rot > 4 THEN GOTO 17
IF r1x = 0 THEN GOTO 18
IF r1y = 0 THEN GOTO 19
IF room > 10 THEN GOTO 17
show.map
LINE (40 + 5 * r1y - 2, 30 + 5 * r1x - 2)-(40 + 5 * r1y + 2, 30 + 5 * r1x + 2), 0, BF
END SUB

SUB end.program
CLS : SYSTEM
END SUB

SUB entra.dados
LOCATE 1, 1: PRINT "posiá∆o?"
11
LOCATE 2, 1: PRINT "x"
INPUT posx
limpa
13
LOCATE 2, 1: PRINT "y"
INPUT posy
limpa
LOCATE 2, 1: PRINT "valor"
INPUT obj
limpa
IF obj = 0 THEN GOTO 15
IF obj = 3 THEN target: GOTO 15
14
LOCATE 2, 1: PRINT "rotaá∆o"
INPUT rotat
limpa
15
IF rotat > 4 THEN GOTO 14
IF posx < 0 THEN GOTO 11
IF posy < 0 THEN GOTO 13
calc.pos
END SUB

SUB escolha
tecla = INKEY$
IF tecla = "1" THEN entra.dados
IF tecla = "2" THEN walls
IF tecla = "3" THEN Def.pos
IF tecla = "4" THEN change.map
IF tecla = "5" THEN save.map
IF tecla = "6" THEN load.map
IF tecla = "7" THEN sure: IF r = 1 THEN new
IF tecla = "8" THEN CLS : startup.3d
IF tecla = "9" THEN sure: IF r = 1 THEN end.program
IF tecla = "v" OR tecla = "V" THEN viewfiles
IF tecla = "z" OR tecla = "Z" THEN finish
IF tecla = "o" OR tecla = "O" THEN load.obj.list
IF tecla = "w" OR tecla = "W" THEN wallfilled
'IF tecla = "a" OR tecla = "A" THEN def.ambience.music
'IF tecla = "m" OR tecla = "M" THEN SFX.console
END SUB

SUB event.mananger
IF rot = 1 AND mapa.r1(room, r1x, r1y) = 3 THEN
check.events.r1
cria.mapa.r2
cria.mapa.r3
cria.mapa.r4
lemapa
END IF

IF rot = 2 AND mapa.r2(r2x, r2y) = 3 THEN
check.events.r2
cria.mapa.r2
cria.mapa.r3
cria.mapa.r4
lemapa
END IF


IF rot = 3 AND mapa.r3(r3x, r3y) = 3 THEN
check.events.r3
cria.mapa.r2
cria.mapa.r3
cria.mapa.r4
lemapa
END IF


IF rot = 4 AND mapa.r4(r4x, r4y) = 3 THEN
check.events.r4
cria.mapa.r2
cria.mapa.r3
cria.mapa.r4
lemapa
END IF
END SUB

SUB finish
FOR l1 = 1 TO jump
events.x(l1) = 0
events.y(l1) = 0
events.z(l1) = 0
events.x2(l1) = 0
events.y2(l1) = 0
events.z2(l1) = 0
NEXT l1




FOR l1 = 0 TO 10
FOR l2 = 0 TO 25
FOR l3 = 0 TO 25

 IF mapa.r1(l1, l2, l3) = 3 OR mapa.r1(l1, l2, l3) = 4 THEN mapa.r1(l1, l2, l3) = 0

NEXT l3
NEXT l2
NEXT l1
jump = 0
LINE (0, 28)-(320, 200), 15, BF
interface
show.map
END SUB

SUB graf
IF tempmap = 0 THEN notobj
IF tempmap = 1 AND cont(1) > 2 THEN obj1
IF tempmap = 2 AND cont(1) > 2 THEN obj2
IF tempmap = 3 AND cont(1) > 2 THEN obj3
IF tempmap = 4 AND cont(1) > 2 THEN obj4
IF tempmap = 5 AND cont(1) > 2 THEN obj5
IF tempmap = 6 AND cont(1) > 2 THEN obj6
IF tempmap = 7 AND cont(1) > 2 THEN obj7
END SUB

SUB grid.init
SCREEN 13
DIM v0(0 TO 20, 0 TO 20, 0 TO 20) AS SINGLE


v0(1, 1, 0) = 100
v0(1, 1, 1) = 0


FOR c = 2 TO 20
v0(1, 1, c) = v0(1, 1, c - 1) + 16
NEXT c

FOR c = 2 TO 20
v0(c, 1, 0) = v0(1, 1, 0) - 25
NEXT c

FOR c2 = 1 TO 10
FOR c = 2 TO 20
v0(c2, c, 0) = v0(c2, c - 1, 0) + ((100 - (c2 * 10 - 10)) / 20) '//problema aqui
v0(c2, c, 1) = v0(1, 1, 1) - c2
NEXT c
NEXT c2



FOR c2 = 11 TO 20
FOR c = 2 TO 20
v0(c2, c, 0) = v0(c2, c - 1, 0) + (100 - ((c2 * 10) - 10)) / 20   '//aqui
NEXT c
NEXT c2
FOR c = 2 TO 20
v0(1, c, 1) = v0(1, 1, 1) - c * 5
NEXT c
FOR c2 = 2 TO 20
FOR c = 2 TO 20
v0(1, c2, c) = v0(1, c2, c - 1) + (320 + 2 * (c2 * 5)) / 20   '//aqui
NEXT c
NEXT c2
FOR c3 = 2 TO 20
FOR c2 = 2 TO 20
FOR c = 2 TO 20
v0(c3, c2, c) = v0(1, c2, c)
NEXT c
NEXT c2
NEXT c3
FOR c3 = 2 TO 20
FOR c2 = 1 TO 20
v0(c3, 1, c2) = v0(1, 1, c2)
NEXT c2
NEXT c3
c3 = 20
FOR c2 = 1 TO 20
FOR c = 1 TO 20
LINE (v0(c3, c, 1), v0(c3, c, 0))-(v0(c3, c, 20), v0(c3, c, 0)), c3 + 1
LINE (v0(c3, 1, c), v0(c3, 1, 0))-(v0(c3, 20, c), v0(c3, 20, 0)), c3 + 1
NEXT c
NEXT c2
c3 = 1
FOR c2 = 1 TO 20
FOR c = 1 TO 20
LINE (v0(c3, c, 1), v0(c3, c, 0))-(v0(c3, c, 20), v0(c3, c, 0)), c3 + 1
LINE (v0(c3, 1, c), v0(c3, 1, 0))-(v0(c3, 20, c), v0(c3, 20, 0)), c3 + 1
NEXT c
NEXT c2


FOR c = 0 TO 20
FOR c2 = 0 TO 20
FOR c3 = 0 TO 20
 v(c, c2, c3) = v0(c, c2, c3)
REM  PRINT v(c, c2, c3), v0(c, c2, c3)
NEXT c3
NEXT c2
NEXT c



END SUB

SUB interface
REM PAINT (1, 1)
LINE (0, 0)-(319, 28), 0, BF


FOR l1 = 1 TO 24
LINE (40 + 5 * l1, 35)-(40 + 5 * l1, 150), 0
NEXT l1
FOR l1 = 1 TO 24
LINE (45, 30 + 5 * l1)-(160, 30 + 5 * l1), 0
NEXT l1
LINE (45, 35)-(45, 150), 0
LINE (45, 35)-(160, 35), 0
COLOR 9
tx = 5: ty = 22: texto = "Entra posiá∆o   (1)": text
tx = 6: ty = 22: texto = "adiciona paredes(2)": text
tx = 7: ty = 22: texto = "Def.pos->avatar (3)": text
tx = 8: ty = 22: texto = "Mudar de mapa   (4)": text
tx = 9: ty = 22: texto = "Salva mapa      (5)": text
tx = 10: ty = 22: texto = "Carrega mapa    (6)": text
tx = 11: ty = 22: texto = "objetos>load    (O)": text
tx = 12: ty = 22: texto = "parede preenchid(W)": text
tx = 13: ty = 22: texto = "Ver Arquivos    (V)": text
tx = 14: ty = 22: texto = "Novo mapa       (7)": text
tx = 15: ty = 22: texto = "Visualizar em 3D(8)": text
tx = 16: ty = 22: texto = "Sair do programa(9)": text
REM tx = 17: ty = 22: texto = "SFX menu    (M)": text
COLOR 4
tx = 18: ty = 22: texto = "Eixo x": text: LOCATE tx, ty + LEN(texto): PRINT r1x
tx = 19: ty = 22: texto = "Eixo y": text: LOCATE tx, ty + LEN(texto): PRINT r1y
tx = 20: ty = 22: texto = "Rotaá∆o": text: LOCATE tx, ty + LEN(texto): PRINT rot
tx = 21: ty = 22: texto = "Eventos": text: LOCATE tx, ty + LEN(texto): PRINT jump
tx = 22: ty = 22: texto = "Mapa # ": text: LOCATE tx, ty + LEN(texto): PRINT room
'tx = 22: ty = 22: texto = "Build V1.91": text
COLOR 41
tx = 22: ty = 2: texto = "Arquivo:": text: LOCATE tx, ty + LEN(texto): PRINT file
tx = 23: ty = 2: texto = "titulo:": text: LOCATE tx, ty + LEN(texto): PRINT title
COLOR 8
tx = 21: ty = 2: texto = TIME$: text
COLOR 15
IF startup.flag = 1 THEN
show.map
startup.flag = 0
END IF
LINE (40 + 5 * r1y - 2, 30 + 5 * r1x - 2)-(40 + 5 * r1y + 2, 30 + 5 * r1x + 2), 0, BF
END SUB

SUB lemapa
old = true
LINE (0, 0)-(320, 200), 0, BF
IF rot = 1 THEN
cursorx = r1x - 15
cursory = r1y - 8
END IF

IF rot = 2 THEN
cursorx = r2x - 15
cursory = r2y - 8
END IF

IF rot = 3 THEN
cursorx = r3x - 15
cursory = r3y - 8
END IF

IF rot = 4 THEN
cursorx = r4x - 15
cursory = r4y - 8
END IF


FOR v = 1 TO 15
FOR verifica = 1 TO 16
IF cursory > 0 AND cursory < 26 THEN
        IF cursorx > 0 AND cursorx < 26 THEN
               
               
                IF rot = 1 THEN
                tempmap = mapa.r1(room, cursorx, cursory)
                IF cursory > r1y THEN cont(2) = (cursory - r1y) + 11
                IF cursory = r1y THEN cont(2) = 11
                IF cursory < r1y THEN cont(2) = 11 - (r1y - cursory)
                IF cursorx = r1x THEN cont(1) = 20
                IF cursorx < r1x THEN cont(1) = 20 - (r1x - cursorx)
                END IF
               
                IF rot = 2 THEN
                tempmap = mapa.r2(cursorx, cursory)
                IF cursory > r2y THEN cont(2) = (cursory - r2y) + 11
                IF cursory = r2y THEN cont(2) = 11
                IF cursory < r2y THEN cont(2) = 11 - (r2y - cursory)
                IF cursorx = r2x THEN cont(1) = 20
                IF cursorx < r2x THEN cont(1) = 20 - (r2x - cursorx)
                END IF
             
                IF rot = 3 THEN
                tempmap = mapa.r3(cursorx, cursory)
                IF cursory > r3y THEN cont(2) = (cursory - r3y) + 11
                IF cursory = r3y THEN cont(2) = 11
                IF cursory < r3y THEN cont(2) = 11 - (r3y - cursory)
                IF cursorx = r3x THEN cont(1) = 20
                IF cursorx < r3x THEN cont(1) = 20 - (r3x - cursorx)
                END IF
                          
                IF rot = 4 THEN
                tempmap = mapa.r4(cursorx, cursory)
                IF cursory > r4y THEN cont(2) = (cursory - r4y) + 11
                IF cursory = r4y THEN cont(2) = 11
                IF cursory < r4y THEN cont(2) = 11 - (r4y - cursory)
                IF cursorx = r4x THEN cont(1) = 20
                IF cursorx < r4x THEN cont(1) = 20 - (r4x - cursorx)
                END IF

IF tempmap >= 0 AND cont(2) > 0 THEN graf
       
        END IF
END IF
cursory = cursory + 1

NEXT verifica
cursorx = cursorx + 1: cursory = cursory - 16
NEXT v
END SUB

SUB limit.table
moviment.flag = 0
IF r1y < 0 THEN r1y = 1
IF r1x < 0 THEN r1x = 1
IF r1y > 25 THEN r1y = 25
IF r1x > 25 THEN r1x = 25
IF r2y < 0 THEN r2y = 1
IF r2x < 0 THEN r2x = 1
IF r2y > 25 THEN r2y = 25
IF r2x > 25 THEN r2x = 25
IF r3y < 0 THEN r3y = 1
IF r3x < 0 THEN r3x = 1
IF r3y > 25 THEN r3y = 25
IF r3x > 25 THEN r3x = 25
IF r4y < 0 THEN r4y = 1
IF r4x < 0 THEN r4x = 1
IF r4y > 25 THEN r4y = 25
IF r4x > 25 THEN r4x = 25
IF rot < 1 OR rot > 4 THEN
PRINT "erro codigo 1": END
END IF
END SUB

SUB limpa
LINE (0, 0)-(319, 28), 0, BF
END SUB

SUB load.default
IF r1x = 0 THEN r1x = 13
IF r1y = 0 THEN r1y = 13
IF rot = 0 THEN rot = 1
old = false
IF file = "" THEN file = "sem nome.map"
IF title = "" THEN title = "sem title"
IF fileobj = "" THEN fileobj = "obj.scp"
IF room = 0 THEN room = 1
startup.flag = 1
END SUB

SUB load.map
sure
IF r = 1 THEN
limpa
LINE (40 + 5 * r1y - 2, 30 + 5 * r1x - 2)-(40 + 5 * r1y + 2, 30 + 5 * r1x + 2), 15, BF
LOCATE 1, 1: PRINT "nome do arquivo de mapa"
INPUT file
OPEN file FOR INPUT ACCESS READ AS #1
new
limpa
INPUT #1, file
INPUT #1, title
INPUT #1, jump

 INPUT #1, r1y
 INPUT #1, r1x
 INPUT #1, rot
 INPUT #1, room

tx = 1: ty = 2: texto = "lendo indice de eventos:": text
FOR l1 = 1 TO jump
INPUT #1, events.x(l1)
INPUT #1, events.y(l1)
INPUT #1, events.z(l1)
INPUT #1, events.x2(l1)
INPUT #1, events.y2(l1)
INPUT #1, events.z2(l1)
NEXT l1

tx = 1: ty = 2: texto = "lendo setor:            ": text
FOR rooms = 1 TO 10
FOR posx = 1 TO 25
FOR posy = 1 TO 25
 LOCATE tx, ty + (LEN(texto) + 1): PRINT rooms; posx; posy
 INPUT #1, mapa.r1(rooms, posx, posy)
 INPUT #1, rotacao.r1(rooms, posx, posy)
IF obj <> 0 AND rooms = room THEN obj = mapa.r1(rooms, posx, posy): calc.pos
NEXT posy
NEXT posx
NEXT rooms
CLOSE #1
LINE (40 + 5 * r1y - 2, 30 + 5 * r1x - 2)-(40 + 5 * r1y + 2, 30 + 5 * r1x + 2), 4, BF
startup.flag = 1
load.default
END IF
END SUB

SUB load.obj.file
OPEN filename$(tempmap) FOR INPUT ACCESS READ AS #1
FOR conts = 3 TO 10
IF EOF(1) = false THEN INPUT #1, cont(conts)
NEXT conts
CLOSE #1
END SUB

SUB load.obj.list
IF tecla = "o" OR tecla = "O" THEN
LOCATE 1, 1: PRINT "nome do arquivo de script de objetos"
limpa
INPUT fileobj
END IF
OPEN fileobj FOR INPUT ACCESS READ AS #1
FOR conts = 1 TO 10
IF EOF(1) = false THEN INPUT #1, filename$(conts)
NEXT conts
CLOSE #1
END SUB

SUB matematica
IF cont(1) > 20 THEN cont(1) = 20
IF cont(2) > 20 THEN cont(2) = 20
IF cont(4) > 20 THEN cont(4) = 20
IF cont(5) > 20 THEN cont(5) = 20
IF cont(1) <= 0 THEN cont(1) = 1
IF cont(2) <= 0 THEN cont(2) = 1
IF cont(4) <= 0 THEN cont(4) = 1
IF cont(5) <= 0 THEN cont(5) = 1
D = cont(1) + 12: IF D < 16 THEN D = 16: IF D > 31 THEN D = 31
d2 = cont(4) + 12: IF d2 < 16 THEN d2 = 16: IF d2 > 31 THEN d2 = 31
teto = 20

x = v(valxy, cont(1), cont(2)) + ((v(valxy, cont(4), cont(5)) - v(valxy, cont(1), cont(2))) / 2)
y = v(valxy, cont(1), 0) + ((v(valxy, cont(4), 0) - v(valxy, cont(1), 0)) / 2)
xb = v(vlxy, cont(1), cont(2)) + ((v(valxy, cont(4), cont(5)) - v(valxy, cont(1), cont(2))) / 2)
yb = v(vlxy, cont(1), 0) + ((v(valxy, cont(4), 0) - v(valxy, cont(1), 0)) / 2)
dify = (v(valxy, cont(1), cont(2)) - v(valxy, cont(1), cont(5)))
difx = (v(valxy, cont(1), cont(2)) - v(valxy, cont(4), cont(2)))
END SUB

SUB moviment.table
IF rot = 1 THEN
        IF m = "8" THEN
                IF mapa.r1(room, r1x - 1, r1y) = 0 THEN movimentflag1 = 1
                IF mapa.r1(room, r1x - 1, r1y) > 0 THEN movimentflag1 = 0
                IF mapa.r1(room, r1x - 1, r1y) = 3 THEN movimentflag1 = 1
                IF mapa.r1(room, r1x - 1, r1y) = 4 THEN movimentflag1 = 1
                IF mapa.r1(room, r1x - 1, r1y) = 5 THEN movimentflag1 = 0: mapa.r1(room, r1x - 1, r1y) = 7: GOTO 5
                IF mapa.r1(room, r1x - 1, r1y) = 7 THEN movimentflag1 = 0: mapa.r1(room, r1x - 1, r1y) = 5
5
        END IF
        IF m = "2" THEN
                IF mapa.r1(room, r1x + 1, r1y) = 0 THEN movimentflag1 = 1
                IF mapa.r1(room, r1x + 1, r1y) > 0 THEN movimentflag1 = 0
                IF mapa.r1(room, r1x + 1, r1y) = 3 THEN movimentflag1 = 1
                IF mapa.r1(room, r1x + 1, r1y) = 4 THEN movimentflag1 = 1
                IF mapa.r1(room, r1x + 1, r1y) = 5 THEN movimentflag1 = 0: mapa.r1(room, r1x + 1, r1y) = 7: GOTO 6
                IF mapa.r1(room, r1x + 1, r1y) = 7 THEN movimentflag1 = 0: mapa.r1(room, r1x + 1, r1y) = 5
6
        END IF
END IF: IF rot = 1 THEN GOTO 3
IF rot = 2 THEN
        IF m = "8" THEN
                IF mapa.r2(r2x - 1, r2y) = 0 THEN movimentflag1 = 1
                IF mapa.r2(r2x - 1, r2y) > 0 THEN movimentflag1 = 0
                IF mapa.r2(r2x - 1, r2y) = 3 THEN movimentflag1 = 1
                IF mapa.r2(r2x - 1, r2y) = 4 THEN movimentflag1 = 1
                IF mapa.r2(r2x - 1, r2y) = 5 THEN movimentflag1 = 0: mapa.r2(r2x - 1, r2y) = 7: GOTO 7
                IF mapa.r2(r2x - 1, r2y) = 7 THEN movimentflag1 = 0: mapa.r2(r2x - 1, r2y) = 5
7
        END IF
        IF m = "2" THEN
                IF mapa.r2(r2x + 1, r2y) = 0 THEN movimentflag1 = 1
                IF mapa.r2(r2x + 1, r2y) > 0 THEN movimentflag1 = 0
                IF mapa.r2(r2x + 1, r2y) = 3 THEN movimentflag1 = 1
                IF mapa.r2(r2x + 1, r2y) = 4 THEN movimentflag1 = 1
                IF mapa.r2(r2x + 1, r2y) = 5 THEN movimentflag1 = 0: mapa.r2(r2x + 1, r2y) = 7: GOTO 12
                IF mapa.r2(r2x + 1, r2y) = 7 THEN movimentflag1 = 0: mapa.r2(r2x + 1, r2y) = 5
12
        END IF
END IF: IF rot = 2 THEN GOTO 3

IF rot = 3 THEN
        IF m = "8" THEN
                IF mapa.r3(r3x - 1, r3y) = 0 THEN movimentflag1 = 1
                IF mapa.r3(r3x - 1, r3y) > 0 THEN movimentflag1 = 0
                IF mapa.r3(r3x - 1, r3y) = 3 THEN movimentflag1 = 1
                IF mapa.r3(r3x - 1, r3y) = 4 THEN movimentflag1 = 1
                IF mapa.r3(r3x - 1, r3y) = 5 THEN movimentflag1 = 0: mapa.r3(r3x - 1, r3y) = 7: GOTO 16
                IF mapa.r3(r3x - 1, r3y) = 7 THEN movimentflag1 = 0: mapa.r3(r3x - 1, r3y) = 5
16
        END IF
        IF m = "2" THEN
                IF mapa.r3(r3x + 1, r3y) = 0 THEN movimentflag1 = 1
                IF mapa.r3(r3x + 1, r3y) > 0 THEN movimentflag1 = 0
                IF mapa.r3(r3x + 1, r3y) = 3 THEN movimentflag1 = 1
                IF mapa.r3(r3x + 1, r3y) = 4 THEN movimentflag1 = 1
                IF mapa.r3(r3x + 1, r3y) = 5 THEN movimentflag1 = 0: mapa.r3(r3x + 1, r3y) = 7: GOTO 20
                IF mapa.r3(r3x + 1, r3y) = 7 THEN movimentflag1 = 0: mapa.r3(r3x + 1, r3y) = 5
20
        END IF
END IF: IF rot = 1 THEN GOTO 3
IF rot = 4 THEN
        IF m = "8" THEN
                IF mapa.r4(r4x - 1, r4y) = 0 THEN movimentflag1 = 1
                IF mapa.r4(r4x - 1, r4y) > 0 THEN movimentflag1 = 0
                IF mapa.r4(r4x - 1, r4y) = 3 THEN movimentflag1 = 1
                IF mapa.r4(r4x - 1, r4y) = 4 THEN movimentflag1 = 1

                IF mapa.r4(r4x - 1, r4y) = 5 THEN movimentflag1 = 0: mapa.r4(r4x - 1, r4y) = 7: GOTO 22
                IF mapa.r4(r4x - 1, r4y) = 7 THEN movimentflag1 = 0: mapa.r4(r4x - 1, r4y) = 5
22
        END IF
        IF m = "2" THEN
                IF mapa.r4(r4x + 1, r4y) = 0 THEN movimentflag1 = 1
                IF mapa.r4(r4x + 1, r4y) > 0 THEN movimentflag1 = 0
                IF mapa.r4(r4x + 1, r4y) = 3 THEN movimentflag1 = 1
                IF mapa.r4(r4x + 1, r4y) = 4 THEN movimentflag1 = 1
                IF mapa.r4(r4x + 1, r4y) = 5 THEN movimentflag1 = 0: mapa.r4(r4x + 1, r4y) = 7: GOTO 23
                IF mapa.r4(r4x + 1, r4y) = 7 THEN movimentflag1 = 0: mapa.r4(r4x + 1, r4y) = 5
23
        END IF
END IF
3
END SUB

SUB movimentos
LOCATE 2, 2: PRINT room
LOCATE 23, 16: PRINT r1x
LOCATE 23, 21: PRINT r1y
LOCATE 23, 26: PRINT rot
LOCATE 22, 16: PRINT r3x
LOCATE 22, 21: PRINT r3y
m = INKEY$
IF m = "6" THEN
rot = rot + 1
IF rot = 5 THEN rot = 1
old = false
traduz.posicoes
END IF

IF m = "4" THEN
rot = rot - 1
IF rot = 0 THEN rot = 4
old = false
traduz.posicoes
END IF


IF m = "8" AND rot = 1 THEN
moviment.table
IF movimentflag1 = 1 THEN
r1x = r1x - 1
r2y = r2y - 1
r3x = r3x + 1
r4y = r4y + 1
old = false
END IF
IF movimentflag1 = 0 THEN BEEP
END IF

IF m = "8" AND rot = 2 THEN
moviment.table
IF movimentflag1 = 1 THEN
r1y = r1y + 1
r2x = r2x - 1
r3y = r3y - 1
r4x = r4x + 1
old = false
END IF
IF movimentflag1 = 0 THEN BEEP
END IF

IF m = "8" AND rot = 3 THEN
moviment.table
IF movimentflag1 = 1 THEN
r1x = r1x + 1
r2y = r2y + 1
r3x = r3x - 1
r4y = r4y - 1
old = false
END IF
IF movimentflag1 = 0 THEN BEEP
END IF

IF m = "8" AND rot = 4 THEN
moviment.table
IF movimentflag1 = 1 THEN
r1y = r1y - 1
r2x = r2x + 1
r3y = r3y + 1
r4x = r4x - 1
old = false
END IF
IF movimentflag1 = 0 THEN BEEP
END IF

IF m = "2" AND rot = 1 THEN
moviment.table
IF movimentflag1 = 1 THEN
r1x = r1x + 1
r2y = r2y + 1
r3x = r3x - 1
r4y = r4y - 1
old = false
END IF
IF movimentflag1 = 0 THEN BEEP
END IF

IF m = "2" AND rot = 2 THEN
moviment.table
IF movimentflag1 = 1 THEN
r1y = r1y - 1
r2x = r2x + 1
r3y = r3y + 1
r4x = r4x - 1
old = false
END IF
IF movimentflag1 = 0 THEN BEEP
END IF

IF m = "2" AND rot = 3 THEN
moviment.table
IF movimentflag1 = 1 THEN
r1x = r1x - 1
r2y = r2y - 1
r3x = r3x + 1
r4y = r4y + 1
old = false
END IF
IF movimentflag1 = 0 THEN BEEP
END IF

IF m = "2" AND rot = 4 THEN
moviment.table
IF movimentflag1 = 1 THEN
r1y = r1y + 1
r2x = r2x - 1
r3y = r3y - 1
r4x = r4x + 1
old = false
END IF
IF movimentflag1 = 0 THEN BEEP
END IF

IF m = "0" AND rot = 2 THEN rot = 4: old = false: GOTO 1
IF m = "0" AND rot = 1 THEN rot = 3: old = false: GOTO 1
IF m = "0" AND rot = 4 THEN rot = 2: : old = false: GOTO 1
IF m = "0" AND rot = 3 THEN rot = 1: old = false: GOTO 1
IF m = "q" THEN continue.flag = 0
1
END SUB

SUB msg
t$ = texto
x1 = (tx * 7)
y1 = (ty * 7)
x2 = x1 + 12
y2 = y1 + (LEN(t$) * 8)
LINE (y1, x1)-(y2, x2), 8, BF
LINE (y1 + 2, x1 + 2)-(y2 - 2, r2x - 2), 0, BF
text
tx = 1: ty = 1: texto = ""
END SUB

SUB new
limpa
LINE (40 + 5 * r1y - 2, 30 + 5 * r1x - 2)-(40 + 5 * r1y + 2, 30 + 5 * r1x + 2), 15, BF
tx = 1: ty = 2: texto = "limpando setor:": text
FOR rooms = 1 TO 10
FOR posy = 1 TO 25
FOR posx = 1 TO 25
 LOCATE tx, ty + (LEN(texto) + 1): PRINT rooms; posy; posx
mapa.r1(rooms, posy, posx) = 0
rotacao.r1(rooms, posy, posx) = 0
jump = 0
IF rooms = room THEN obj = mapa.r1(rooms, posy, posx)
calc.pos
NEXT posx
NEXT posy
NEXT rooms
r1y = 13
r1x = 13
rot = 1
END SUB

SUB notobj
cont(4) = cont(1) - 1
cont(5) = cont(2) - 1
valxy = 1
matematica
COLOR D
teto = 20
LINE (v(teto, cont(1), cont(2)), v(teto, cont(1), 0))-(v(teto, cont(1), cont(5)), v(teto, cont(1), 0))
LINE (v(teto, cont(4), cont(2)), v(teto, cont(4), 0))-(v(teto, cont(4), cont(5)), v(teto, cont(4), 0))
LINE (v(teto, cont(4), cont(5)), v(teto, cont(4), 0))-(v(teto, cont(1), cont(5)), v(teto, cont(1), 0))
LINE (v(teto, cont(4), cont(2)), v(teto, cont(4), 0))-(v(teto, cont(1), cont(2)), v(teto, cont(1), 0))
LINE (v(1, cont(1), cont(2)), v(1, cont(1), 0))-(v(1, cont(1), cont(5)), v(1, cont(1), 0))
LINE (v(1, cont(4), cont(2)), v(1, cont(4), 0))-(v(1, cont(4), cont(5)), v(1, cont(4), 0))
LINE (v(1, cont(4), cont(5)), v(1, cont(4), 0))-(v(1, cont(1), cont(5)), v(1, cont(1), 0))
LINE (v(1, cont(4), cont(2)), v(1, cont(4), 0))-(v(1, cont(1), cont(2)), v(1, cont(1), 0))
IF x < 320 AND x > 1 AND y < 200 AND y > 1 THEN PAINT (x, y)
valxy = 20
matematica
IF x < 320 AND x > 1 AND y < 200 AND y > 1 THEN PAINT (x, y)
COLOR 0
LINE (v(teto, cont(1), cont(2)), v(teto, cont(1), 0))-(v(teto, cont(1), cont(5)), v(teto, cont(1), 0))
LINE (v(teto, cont(4), cont(2)), v(teto, cont(4), 0))-(v(teto, cont(4), cont(5)), v(teto, cont(4), 0))
LINE (v(teto, cont(4), cont(5)), v(teto, cont(4), 0))-(v(teto, cont(1), cont(5)), v(teto, cont(1), 0))
LINE (v(teto, cont(4), cont(2)), v(teto, cont(4), 0))-(v(teto, cont(1), cont(2)), v(teto, cont(1), 0))
LINE (v(1, cont(1), cont(2)), v(1, cont(1), 0))-(v(1, cont(1), cont(5)), v(1, cont(1), 0))
LINE (v(1, cont(4), cont(2)), v(1, cont(4), 0))-(v(1, cont(4), cont(5)), v(1, cont(4), 0))
LINE (v(1, cont(4), cont(5)), v(1, cont(4), 0))-(v(1, cont(1), cont(5)), v(1, cont(1), 0))
LINE (v(1, cont(4), cont(2)), v(1, cont(4), 0))-(v(1, cont(1), cont(2)), v(1, cont(1), 0))
COLOR 15
END SUB

SUB obj1
tempmap = 1
load.obj.file
cont(4) = cont(1) + cont(4)
cont(5) = cont(2) + cont(5)
valxy = 10
matematica
cor = 16
LINE (v(cont(3), cont(1), cont(5)), v(cont(3), cont(1), 0))-(v(cont(6), cont(1), cont(2)), v(cont(6), cont(1), 0)), 0, BF

FOR c = 1 TO (dify / 2)
cor = cor + 1
IF cor > 31 THEN cor = 31
LINE (v(cont(3), cont(1), cont(2)) - c, v(cont(3), cont(1), 0))-(v(cont(6), cont(1), cont(2)) - c, v(cont(6), cont(1), 0)), cor
NEXT c


FOR c = (dify / 2) TO dify
cor = cor - 1
IF cor < 16 THEN cor = 16
LINE (v(cont(3), cont(1), cont(2)) - c, v(cont(3), cont(1), 0))-(v(cont(6), cont(1), cont(2)) - c, v(cont(6), cont(1), 0)), cor
NEXT c
cor = 16
FOR c = 1 TO (dify / 2)
cor = cor + 1
IF cor > 31 THEN cor = 31
LINE (v(cont(3), cont(1), cont(2)) - c, v(cont(3), cont(1), 0))-(x, y), cor
NEXT c
FOR c = (dify / 2) TO dify
cor = cor - 1
IF cor < 16 THEN cor = 16
LINE (v(cont(3), cont(1), cont(2)) - c, v(cont(3), cont(1), 0))-(x, y), cor
NEXT c
cor = 16
alt = v(cont(6), cont(1), 0) + (dify / 2)
FOR c = 1 TO dify / 2
cor = cor + 1
IF cor > 31 THEN cor = 31
LINE (v(cont(6), cont(1), cont(2)) - c, alt - c)-(x, y), cor
NEXT c
FOR c = (dify / 2) TO dify
cor = cor - 1
IF cor < 16 THEN cor = 16
LINE (v(cont(6), cont(1), cont(2)) - c, (alt - dify) + c)-(x, y), cor
NEXT c
COLOR 15
END SUB

SUB obj2
load.obj.file
cont(4) = cont(1) + cont(4)
cont(5) = cont(2) + cont(5)
valxy = cont(3)
vlxy = cont(6)
matematica
LINE (v(cont(3), cont(1), cont(5)), v(cont(3), cont(1), 0))-(v(cont(6), cont(1), cont(2)), v(cont(6), cont(1), 0)), 0, BF
notobj
th = x - v(cont(3), cont(4), cont(5))
td = v(cont(6), cont(4), 0) - v(cont(6), cont(1), 0)
td2 = v(cont(3), cont(1), 0) - v(cont(3), cont(4), 0)
alt = v(cont(6), cont(4), 0)
alt2 = v(cont(3), cont(4), 0)
cor = D
FOR h = v(cont(3), cont(4), cont(5)) TO x STEP .5
alt = alt - ((td / th) / 2)
alt2 = alt2 + ((td2 / th) / 2)
cor = cor + .5
IF cor > 31 THEN cor = 31
LINE (h, alt)-(h, alt2), cor
NEXT h
cor = 21 + (D * .5)'// boa ideia seria colocar -distancia...iria tornar mais suave!
FOR h = x TO v(cont(3), cont(1), cont(2)) STEP .5
alt = alt + ((td / th) / 2)
alt2 = alt2 - ((td2 / th) / 2)
cor = cor - .5
IF cor > 31 THEN cor = 31
LINE (h, alt)-(h, alt2), cor
NEXT h
LINE (x, v(cont(6), cont(1), 0))-(x, v(cont(3), cont(1), 0)), 31
LINE (v(cont(3), cont(1), cont(2)), y)-(v(cont(3), cont(1), cont(2)), alt), 17
LINE (v(cont(3), cont(4), cont(5)), y)-(v(cont(3), cont(4), cont(5)), alt), 17
END SUB

SUB obj3
cont(4) = cont(1) - 1
cont(5) = cont(2) - 1
valxy = 1
matematica
COLOR 3
LINE (v(20, cont(1), cont(2)), v(20, cont(1), 0))-(v(20, cont(1), cont(5)), v(20, cont(1), 0))
LINE (v(20, cont(4), cont(2)), v(20, cont(4), 0))-(v(20, cont(4), cont(5)), v(20, cont(4), 0))
LINE (v(20, cont(4), cont(5)), v(20, cont(4), 0))-(v(20, cont(1), cont(5)), v(20, cont(1), 0))
LINE (v(20, cont(4), cont(2)), v(20, cont(4), 0))-(v(20, cont(1), cont(2)), v(20, cont(1), 0))
LINE (v(1, cont(1), cont(2)), v(1, cont(1), 0))-(v(1, cont(1), cont(5)), v(1, cont(1), 0))
LINE (v(1, cont(4), cont(2)), v(1, cont(4), 0))-(v(1, cont(4), cont(5)), v(1, cont(4), 0))
LINE (v(1, cont(4), cont(5)), v(1, cont(4), 0))-(v(1, cont(1), cont(5)), v(1, cont(1), 0))
LINE (v(1, cont(4), cont(2)), v(1, cont(4), 0))-(v(1, cont(1), cont(2)), v(1, cont(1), 0))
IF x < 320 AND x > 1 AND y < 200 AND y > 1 THEN PAINT (x, y)
valxy = 20
matematica
IF x < 320 AND x > 1 AND y < 200 AND y > 1 THEN PAINT (x, y)
COLOR 4
LINE (v(20, cont(1), cont(2)), v(20, cont(1), 0))-(v(20, cont(1), cont(5)), v(20, cont(1), 0))
LINE (v(20, cont(4), cont(2)), v(20, cont(4), 0))-(v(20, cont(4), cont(5)), v(20, cont(4), 0))
LINE (v(20, cont(4), cont(5)), v(20, cont(4), 0))-(v(20, cont(1), cont(5)), v(20, cont(1), 0))
LINE (v(20, cont(4), cont(2)), v(20, cont(4), 0))-(v(20, cont(1), cont(2)), v(20, cont(1), 0))
LINE (v(1, cont(1), cont(2)), v(1, cont(1), 0))-(v(1, cont(1), cont(5)), v(1, cont(1), 0))
LINE (v(1, cont(4), cont(2)), v(1, cont(4), 0))-(v(1, cont(4), cont(5)), v(1, cont(4), 0))
LINE (v(1, cont(4), cont(5)), v(1, cont(4), 0))-(v(1, cont(1), cont(5)), v(1, cont(1), 0))
LINE (v(1, cont(4), cont(2)), v(1, cont(4), 0))-(v(1, cont(1), cont(2)), v(1, cont(1), 0))
COLOR 15
END SUB

SUB obj4
cont(4) = cont(1) - 1
cont(5) = cont(2) - 1
valxy = 1
matematica
COLOR 4
LINE (v(20, cont(1), cont(2)), v(20, cont(1), 0))-(v(20, cont(1), cont(5)), v(20, cont(1), 0))
LINE (v(20, cont(4), cont(2)), v(20, cont(4), 0))-(v(20, cont(4), cont(5)), v(20, cont(4), 0))
LINE (v(20, cont(4), cont(5)), v(20, cont(4), 0))-(v(20, cont(1), cont(5)), v(20, cont(1), 0))
LINE (v(20, cont(4), cont(2)), v(20, cont(4), 0))-(v(20, cont(1), cont(2)), v(20, cont(1), 0))
LINE (v(1, cont(1), cont(2)), v(1, cont(1), 0))-(v(1, cont(1), cont(5)), v(1, cont(1), 0))
LINE (v(1, cont(4), cont(2)), v(1, cont(4), 0))-(v(1, cont(4), cont(5)), v(1, cont(4), 0))
LINE (v(1, cont(4), cont(5)), v(1, cont(4), 0))-(v(1, cont(1), cont(5)), v(1, cont(1), 0))
LINE (v(1, cont(4), cont(2)), v(1, cont(4), 0))-(v(1, cont(1), cont(2)), v(1, cont(1), 0))
IF x < 320 AND x > 1 AND y < 200 AND y > 1 THEN PAINT (x, y)
valxy = 20
matematica
IF x < 320 AND x > 1 AND y < 200 AND y > 1 THEN PAINT (x, y)
COLOR 3
LINE (v(20, cont(1), cont(2)), v(20, cont(1), 0))-(v(20, cont(1), cont(5)), v(20, cont(1), 0))
LINE (v(20, cont(4), cont(2)), v(20, cont(4), 0))-(v(20, cont(4), cont(5)), v(20, cont(4), 0))
LINE (v(20, cont(4), cont(5)), v(20, cont(4), 0))-(v(20, cont(1), cont(5)), v(20, cont(1), 0))
LINE (v(20, cont(4), cont(2)), v(20, cont(4), 0))-(v(20, cont(1), cont(2)), v(20, cont(1), 0))
LINE (v(1, cont(1), cont(2)), v(1, cont(1), 0))-(v(1, cont(1), cont(5)), v(1, cont(1), 0))
LINE (v(1, cont(4), cont(2)), v(1, cont(4), 0))-(v(1, cont(4), cont(5)), v(1, cont(4), 0))
LINE (v(1, cont(4), cont(5)), v(1, cont(4), 0))-(v(1, cont(1), cont(5)), v(1, cont(1), 0))
LINE (v(1, cont(4), cont(2)), v(1, cont(4), 0))-(v(1, cont(1), cont(2)), v(1, cont(1), 0))
COLOR 15

END SUB

SUB obj5
notobj
'LINE (v(4, cont(1), cont(2)), v(4, cont(1), 0))-(v(4, cont(4), cont(5)), v(4, cont(4), 0)), d2 - 2
'LINE (v(16, cont(1), cont(2)), v(16, cont(1), 0))-(v(16, cont(4), cont(5)), v(16, cont(4), 0)), d + 1
'LINE (v(16, cont(1), cont(2)), v(16, cont(1), 0))-(v(4, cont(1), cont(2)), v(4, cont(1), 0)), d + 1
'LINE (v(16, cont(4), cont(5)), v(16, cont(4), 0))-(v(4, cont(4), cont(5)), v(4, cont(4), 0)), d2 - 2
'LINE (v(1, cont(1), cont(2)), v(1, cont(1), 0))-(v(1, cont(4), cont(5)), v(1, cont(4), 0)), 0

tempmap = 1
load.obj.file
cont(4) = cont(1) + cont(4)
cont(5) = cont(2) + cont(5)
valxy = 10
matematica
cor = 16
notobj
LINE (v(15, cont(1), cont(2)) + 2, v(15, cont(1), 0))-(v(cont(6), cont(4), cont(5)), v(cont(6), cont(4), 0)), D, BF


LINE (v(15, cont(1), cont(2)) + 2, v(15, cont(1), 0))-(v(5, cont(4), cont(5)), v(5, cont(4), 0)), 14 + (D / 2), B

LINE (v(cont(3), cont(1), cont(2)) + 2, v(cont(3), cont(1), 0))-(v(5, cont(4), cont(5)), v(5, cont(4), 0)), D, BF



END SUB

SUB obj6
tempmap = 1
load.obj.file
cont(4) = cont(1) + cont(4)
cont(5) = cont(2) + cont(5)
valxy = 10
matematica
cor = 16
notobj
LINE (v(cont(3), cont(1), cont(2)) + 4, v(cont(3), cont(1), 0))-(v(cont(6), cont(4), cont(5)), v(cont(6), cont(4), 0)), D, BF
END SUB

SUB obj7
notobj


tempmap = 1
load.obj.file
cont(4) = cont(1) + cont(4)
cont(5) = cont(2) + cont(5)
valxy = 10
matematica
cor = 16
notobj
LINE (v(15, cont(1), cont(2)) + 2, v(15, cont(1), 0))-(v(cont(6), cont(4), cont(5)), v(cont(6), cont(4), 0)), D, BF

LINE (v(cont(3), cont(1), cont(2)) + 2, v(cont(3), cont(1), 0))-(v(5, cont(4), cont(5)), v(5, cont(4), 0)), D, BF
LINE (v(5, cont(1), cont(2)), v(5, cont(1), 0))-(v(5, cont(4), cont(5)), v(5, cont(4), 0)), d2
LINE (v(15, cont(1), cont(2)), v(15, cont(1), 0))-(v(15, cont(4), cont(5)), v(15, cont(4), 0)), d2
LINE (v(15, cont(1), cont(2)), v(15, cont(1), 0))-(v(5, cont(1), cont(2)), v(5, cont(1), 0)), d2
LINE (v(15, cont(4), cont(5)), v(15, cont(4), 0))-(v(5, cont(4), cont(5)), v(5, cont(4), 0)), d2




END SUB

SUB save.map
LOCATE 1, 1: PRINT "nome do arquivo de mapa"
INPUT file
limpa
LOCATE 1, 1: PRINT "Titulo do local"
INPUT title
limpa
OPEN file FOR OUTPUT ACCESS WRITE AS #1
WRITE #1, file
WRITE #1, title
WRITE #1, jump

WRITE #1, ply
WRITE #1, plx
WRITE #1, rot
WRITE #1, room

FOR l1 = 1 TO jump
IF events.x(l1) <> 0 THEN WRITE #1, events.x(l1)
IF events.y(l1) <> 0 THEN WRITE #1, events.y(l1)
IF events.z(l1) <> 0 THEN WRITE #1, events.z(l1)
IF events.x2(l1) <> 0 THEN WRITE #1, events.x2(l1)
IF events.y2(l1) <> 0 THEN WRITE #1, events.y2(l1)
IF events.z2(l1) <> 0 THEN WRITE #1, events.z2(l1)
NEXT l1

FOR l1 = 1 TO 10
FOR l2 = 1 TO 25
FOR l3 = 1 TO 25
 LOCATE 1, 1: PRINT "gravando setor:"; l1; l2; l3
WRITE #1, mapa.r1(l1, l2, l3)
WRITE #1, rotacao.r1(l1, l2, l3)
NEXT l3
NEXT l2
NEXT l1
CLOSE #1
END SUB

SUB SFX.console
'comming soon
END SUB

SUB show.map
FOR rooms = 1 TO 10
FOR posy = 1 TO 25
FOR posx = 1 TO 25
IF rooms = room THEN obj = mapa.r1(rooms, posx, posy)
IF obj <> 0 AND rooms = room THEN calc.pos
NEXT posx
NEXT posy
NEXT rooms
END SUB

SUB start.up
grid.init
tx = 1: ty = 2: texto = "Sistema Grid 3-D carregado": text
FOR cont = 1 TO 150000: NEXT cont
load.obj.list
tx = 2: ty = 2: texto = "script de objetos carregado": text
FOR cont = 1 TO 150000: NEXT cont
load.default
tx = 3: ty = 2: texto = "defaults de sistema carregados": text
FOR cont = 1 TO 150000: NEXT cont
tx = 4: ty = 2: texto = "inicializando menu": text
FOR cont = 1 TO 150000: NEXT cont
CLS
COLOR 15
startup.menu
END SUB

SUB startup.3d
cria.mapa.r2
cria.mapa.r3
cria.mapa.r4
traduz.posicoes
continue.flag = 1
old = false
DO WHILE continue.flag = 1
limit.table
IF old = false THEN lemapa
 movimentos
event.mananger
LOOP
startup.flag = 1
LINE (0, 28)-(320, 200), 15, BF
END SUB

SUB startup.menu
LINE (0, 28)-(320, 200), 15, BF
DO
interface
escolha
LOOP
END SUB

SUB sure
r = 0
4 LOCATE 1, 2: PRINT "tem certeza?": LOCATE 2, 2: PRINT "Vocà podera perder dados!!!"
m = INKEY$
IF m = "s" THEN r = 1
IF m = "S" THEN r = 1
IF m = "n" THEN r = 2
IF m = "N" THEN r = 2
IF m = " " THEN GOTO 4
IF m = "" THEN GOTO 4
END SUB

SUB target
LOCATE 1, 1: PRINT "entre a posiá∆o de lancamento do Avatar?"
21
LOCATE 2, 1: PRINT "mapa"
INPUT andar
limpa

9
LOCATE 2, 1: PRINT "x"
INPUT jmpx
limpa
10
LOCATE 2, 1: PRINT "y"
INPUT jmpy
limpa
jump = jump + 1
IF jmpx = 0 THEN GOTO 9
IF jmpy = 0 THEN GOTO 10

events.x(jump) = posx
events.y(jump) = posy
events.z(jump) = room

mapa.r1(andar, jmpx, jmpy) = 4

events.x2(jump) = jmpx
events.y2(jump) = jmpy
events.z2(jump) = andar



LINE (40 + 5 * posy - 2, 30 + 5 * posx - 2)-(40 + 5 * posy + 2, 30 + 5 * posx + 2), 3, BF
IF andar = room THEN
LINE (40 + 5 * jmpy - 2, 30 + 5 * jmpx - 2)-(40 + 5 * jmpy + 2, 30 + 5 * jmpx + 2), 4, BF
END IF
END SUB

SUB text
LOCATE tx, ty: PRINT texto
END SUB

SUB traduz.posicoes
IF rot <> 2 THEN r2x = 26 - r1y
IF rot <> 2 THEN r2y = r1x

IF rot <> 3 THEN r3x = 26 - r1x
IF rot <> 3 THEN r3y = 26 - r1y

IF rot <> 4 THEN r4x = 26 - r2x
IF rot <> 4 THEN r4y = 26 - r2y
END SUB

SUB viewfiles
SCREEN 12
CLS
tx = 1: ty = 2: texto = "que tipo de arquivo deseja ver (enter para TODOS)": text
INPUT a$
FILES "*." + a$
8 IF INKEY$ = "" THEN GOTO 8
CLS
SCREEN 13
LINE (0, 28)-(320, 200), 15, BF
interface
LINE (40 + 5 * r1y - 2, 30 + 5 * r1x - 2)-(40 + 5 * r1y + 2, 30 + 5 * r1x + 2), 0, BF
show.map
END SUB

SUB wallfilled
tx = 1: ty = 1: texto = "posiá∆o do primeiro ponto:": text
tx = 2: ty = 1: texto = "em x:": text
INPUT px
limpa
tx = 2: ty = 1: texto = "em y:": text
INPUT py
limpa
tx = 2: ty = 1: texto = "limite em x:": text
INPUT lx
limpa
tx = 2: ty = 1: texto = "limite em y:": text
INPUT ly
limpa
tx = 2: ty = 1: texto = "material da parede:": text
INPUT valor
limpa
FOR l1 = py TO ly
FOR l2 = px TO lx
mapa.r1(room, l2, l1) = valor
mapa.r1(room, l2, l1) = valor
NEXT l2
NEXT l1


LINE (0, 28)-(320, 200), 15, BF
interface
LINE (40 + 5 * r1y - 2, 30 + 5 * r1x - 2)-(40 + 5 * r1y + 2, 30 + 5 * r1x + 2), 0, BF
show.map
END SUB

SUB walls
tx = 1: ty = 1: texto = "posiá∆o do primeiro ponto:": text
tx = 2: ty = 1: texto = "em x:": text
INPUT px
limpa
tx = 2: ty = 1: texto = "em y:": text
INPUT py
limpa
tx = 2: ty = 1: texto = "limite em x:": text
INPUT lx
limpa
tx = 2: ty = 1: texto = "limite em y:": text
INPUT ly
limpa
tx = 2: ty = 1: texto = "material da parede:": text
INPUT valor
limpa
FOR l1 = py TO ly
mapa.r1(room, px, l1) = valor
mapa.r1(room, lx, l1) = valor
NEXT l1
FOR l1 = px TO lx
mapa.r1(room, l1, py) = valor
mapa.r1(room, l1, ly) = valor
NEXT l1


LINE (0, 28)-(320, 200), 15, BF
interface
LINE (40 + 5 * r1y - 2, 30 + 5 * r1x - 2)-(40 + 5 * r1y + 2, 30 + 5 * r1x + 2), 0, BF
show.map
END SUB

