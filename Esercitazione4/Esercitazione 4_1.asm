name 'Esercitzione4_1'

; Scrivere un algoritmo che effettui la somma delle cifre di un numero. Es. 129 ---> 12.
; Stampare in output la somma.

.model small
.data

    N DB 111
    somma DB 0  
    output DB "la somma delle cifre di 111: $"
    
.code
    .startup
        
        MOV AX, @DATA
        MOV DS, AX
 
               
        MOV DI, 0
        
        CICLO:
        MOV AX, 0
        MOV AL, N
        MOV BL, 10
        DIV BL
        MOV N, AL
        
        ADD somma, AH
        
        INC DI
        
        CMP N, 0
        JNZ CICLO
        
        
        
        LEA DX, output     
        MOV AH, 9
        INT 21h
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H 
        
        MOV DL, 0AH     
        INT 21h              
        
        ADD somma, 48
        
        MOV DL, somma
        MOV AH, 2
        INT 21h
               
        MOV AH, 4CH        
        INT 21h
        
                    
    .exit
end