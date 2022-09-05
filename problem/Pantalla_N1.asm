
(INICIO)
@KBD
 D=M
 @84  //T//
 D=D-A
 @VERTICAL//salto a realizar el rectangulo con estos parametros
 D;JEQ
 
@KBD
 D=M
 @67   //C//
 D=D-A 
 @BORRAR
 D;JEQ

 @KBD
 D=M
 @84  //T//
 D=D-A 
 @HORIZONTAL
 D;JEQ
 
@INICIO
 0;JMP

(VERTICAL)
@16400//16384 + (128*32)
 D=A
@coord//variable donde inicia el dibujo
 M=D 
@256//candidad de registros a pintar
 D=A
@cont//contador filas pantalla
 M=D
@32
 D=A 
@salto
 M=D

@color
M= 1
 
 @RECT
 0;JMP


(BORRAR)
@16384
 D=A
@coord//variable donde inicia el dibujo
 M=D 
@8300//candidad de registros a pintar
 D=A
@cont//contador filas pantalla
 M=D
@1
 D=A 
@salto
 M=D

@color
M = 0

@RECT
 0;JMP
 
 
(HORIZONTAL)
@20480//16384 + (128*32)
 D=A
@coord//variable donde inicia el dibujo
 M=D 
@32//candidad de registros a pintar
 D=A
@cont//contador filas pantalla
 M=D
@1
 D=A 
@salto
 M=D


@color
M= -1
 
@RECT
0;JMP


(RECT)
@coord//16384 + (128*32)
 D=M
@pscreen
 M=D //memoria donde inicia la pantalla
 
(PAINT)
@cont//D=cont
 D=M 
 
 @END
 D;JEQ//if cont = 0 goto END
 
@color
D=M 
@pscreen
A=M 
M=D //Pinto de negro el registro inicial
 
@cont//cont = cont-1
M=M-1
 
@salto
 D=M
 
@pscreen
 M=M+D //M+D
 
@PAINT
 0;JMP
 
(END)
 @INICIO
 0;JMP


