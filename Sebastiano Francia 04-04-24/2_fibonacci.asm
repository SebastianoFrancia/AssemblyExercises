name "rane.asm"

.model small

.data
    
   num dw 20
   prec_1 dw 1
   prec_2 dw 1
   elemento dw ?
   space equ ' '
   cifre dw 0 
    
.code

    .startup 
        MOV AX, @DATA
        MOV DS, AX
        
        ;STAMPA PRIMI DUE VALORI CHE SONO FISSI 1,1
        ;CON AGGIUNTA SPAZI
        
        ADD prec_1, 48
        ADD prec_2, 48
        
        MOV DX, prec_1
        MOV AH, 2
        INT 21h
        
        MOV DX, space
        MOV AH, 2
        INT 21H     
        
        MOV DX, prec_1
        MOV AH, 2
        INT 21h
        
        MOV DX, space
        MOV AH, 2
        INT 21H
        
        SUB prec_1, 48
        SUB prec_2, 48
        SUB num, 2
        
        ;ALGORITMO FIBONACCI CON STAMPA
        
        MOV AX, 0
        INIZIO-CICLO:
        CMP num, 0
        JE FINE-CICLO
        
        MOV AX, prec_1
        MOV BX, prec_2
        MOV prec_2, AX
        
        ADD AX, BX
        
        MOV prec_1, AX
        
        dec num
        
        CONTACIFRE:
        
        MOV DX,0        ;pulisco il registro DX, dove andra' il resto della divisione
        MOV CX,10       ;CX=10
        DIV CX          ;AX=AX/10
        INC CIFRE       ;CIFRE = CIFRE+1
        PUSH DX         ;metto nello stack il resto della divisione, che e' una cifra da stampare
        
        CMP AX,0
        JNE CONTACIFRE  ;salta a 'CONTACIFRE' finche' AX e' diverso da 0
        
        
        ;CODICE PER EFFETTUARE LA STAMPA IN OUTPUT       
        STAMPA:
        DEC CIFRE
        POP BX          ;uso il POP per mettere in BX la cifra piu' significativa disponibile
        ADD BX,48       ;stampo il contenuto di BX 
        MOV AH,2
        MOV DX,BX
        INT 21H 
        CMP CIFRE,0
        JNE STAMPA
        
        MOV DX, space
        MOV AH, 2
        INT 21H
               
        
        JMP INIZIO-CICLO
        FINE-CICLO:
            
   
    .exit

end



