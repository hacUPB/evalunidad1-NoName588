// TU NOMBRE COMPLETO = EMMANUEL ECHEVERRI SEPULVEDA
// TU ID = 00448007
// TU CORREO ELECTRÓNICO = emmanuel.echeverri@upb.edu.co


(INIZIO)

            @16400
            D=A
            @pscreen
            M=D
            @256
            D=A
            @conte
            M=D
            @32
            D=A
            @conta
            M=D
            @4096
            D=A
            @initio
            M=D
            @KBD
            D=M
            @84
            D=D-A
            @COLUM
            D;JEQ
            @KBD
            D=M
            @67
            D=D-A
            @SCHERMO1
            D;JEQ
            @INIZIO
            0;JMP

(FILIA)
            @initio
            D=M
            @SCREEN
            A=A+D
            M=-1
            @initio
            M=M+1
            @conta
            M=M-1
            D=M
            @FINALE
            D;JEQ
            @FILIA
            0;JMP

(COLUM)


            @conte
            D=M
            @FILIA
            D;JEQ
            @256
            D=A
            @pscreen
            A=M
            M=D
            @conte
            M=M-1
            @32
            D=A
            @pscreen
            M=M+D
            @COLUM
            0;JMP


(SCHERMO1)


            @16384
            D=A
            @coord
            M=D
            @8192
            D=A
            @conte
            M=D
            @1
            D=A
            @salto
            M=D
            @color
            M=0
            @CANCELLARE
            0;JMP

(CANCELLARE)


            @coord
            D=M
            @pscreen
            M=D

(PRINTO)
            @conte
            D=M
            @FINALE
            D;JEQ
            @color
            D=M
            @pscreen
            A=M
            M=D
            @conte
            M=M-1
            @salto
            D=M
            @pscreen
            M=M+D
            @PRINTO
            0;JMP

(FINALE)
            @INIZIO
            0;JMP