DIM EQU 10
.model small
.data
    vett dw 5,7,10,42,32,6,22,4,22,9 
    min dw ?  
    cifre dw 0
.code
    .startup                
        MOV AX,DIM          ;sposto in AX la dimensione dell'array
        MOV DI,0            ;azzero DI, per utilizzarlo come indice
        MOV BX,vett[DI]     ;sposto in BX il primo valore dell'array
        
        CICLO:
        CMP vett[DI],BX
        JNC CONTINUA        ;se vett[DI] > BX salta a 'CONTINUA'
        MOV BX,vett[DI]     ;altrimenti, quindi se vett[DI] < BX, sposta in BX il valore di vett[DI]
                            ;metto in BX il valore minore provvisorio
        
        CONTINUA:
        ADD DI,2            ;aumento DI di 2 per passare al prossimo elemento del vettore
        DEC AX              ;decremento AX, che contiene il numero di elementi del vettore da scansionare
        CMP AX,0
        JNZ CICLO           ;se AX != 0 salta a 'CICLO', ripetendo quindi tutto il ciclo
        
        MOV min,BX          ;sposto il valore di BX nella variabile MIN
        
        CONTACIFRE:
        
        MOV AX,BX
        MOV DX,0            ;pulisco il registro DX, dove andra' il resto della divisione
        MOV CX,10           ;CX=10
        DIV CX              ;AX=AX/10
        INC CIFRE           ;CIFRE = CIFRE+1
        PUSH DX             ;metto nello stack il resto della divisione, che e' una cifra da stampare
        
        CMP AX,0
        JNE CONTACIFRE      ;salta a 'CONTACIFRE' finche' AX e' diverso da 0
        
        
        ;CODICE PER EFFETTUARE LA STAMPA IN OUTPUT       
        STAMPA:
        DEC CIFRE
        POP BX              ;uso il POP per mettere in BX la cifra piu' significativa disponibile
        ADD BX,48           ;stampo il contenuto di BX 
        MOV AH,2
        MOV DX,BX
        INT 21H 
        CMP CIFRE,0
        JNE STAMPA          ;salta a 'STAMPA' finche' CIFRE e' diverso da 0
        
    .exit
end




