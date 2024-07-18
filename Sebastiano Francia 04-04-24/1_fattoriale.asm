name "rane.asm"

.model small

.data
    
   num dw 9
   fattoriale dw ?
   cifre dw 0 
    
.code

    .startup
        
        MOV AX, @DATA
        MOV DS, AX 
        
        mov ax, num
        
        INIZIO:        
        dec num        
        mul num
        CMP num,1
        JG INIZIO       ;se num > 1 salta ad 'INIZIO' altrimenti continua
        
        mov fattoriale, ax  ;per versione senza stampa
        
        
        
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
        JNE STAMPA      ;salta a 'STAMPA' finche' CIFRE e' diverso da 0
            
   
    .exit

end



