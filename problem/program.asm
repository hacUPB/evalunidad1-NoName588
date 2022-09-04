// COLOCA AQUÍ TU NOMBRE COMPLETO
// COLOCA AQUÍ TU ID
// COLOCA AQUÍ TU CORREO ELECTRÓNICO

(INICIO)
         @KBD
         D=M
         @84
         D=D-A
         @DLINEA
         D;JEQ

         @KBD
         D=M
         @67
         D=D-A
         @LIMPIAR
         D;JEQ

         @INICIO
         0;JMP

(LIMPIAR)
         @16384
         D=A
         @Coord1
         M=D
         @8192
         M=O
         @Cont1
         @1
         D=A
         @salto1
         A=D
         @colo1
         M=0
         @LIMPIAR
         0;JMP

(DLINEA)
         @16400
         D=A
         @Coord
         M=D
         @256
         D=A
         @Cont
         M=O
         @32
         D=A
         @salto
         M=D
         @256
         D=A
         @color
         M=O

         @DRAW
         0;JMP

(CLINEA)
         @20480
         D=A



