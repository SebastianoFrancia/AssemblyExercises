;contare i numeri pari contenuti in un array di 5 elementi
.model small

DIM EQU 5 

.data
    VETT DW 3,1,10,14,1 
    PARI DW 0
.code
    .startup
        MOV AX,DIM
        MOV DI,0
        
        CICLO:
        MOV BX,vett[DI]
        AND BX,1
        JNZ CONTINUA
        INC PARI
        
        CONTINUA:
        ADD DI,2
        DEC AX
        CMP AX,0
        JNZ CICLO
        
    .exit
end




