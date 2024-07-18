name "Esercizio 5.1"

; Scrivere un programma che esegua l'MCD di due numeri. Stampare in output il risultato. 
; Utilizzare l'algoritmo di Euclide

; https://www.youmath.it/domande-a-risposte/view/6654-algoritmo-euclide.html#:~:text=L'algoritmo%20di%20Euclide%20%C3%A8,sul%20calcolo%20di%20alcune%20divisioni.

; https://it.wikipedia.org/wiki/Algoritmo_di_Euclide

.model small

.data
    A DW 8
    B DW 12 
    CIFRE DW 0
    MCD DW ? 

.code
.startup
    MOV AX, @DATA
    MOV DS, AX

    MOV AX, A       
    MOV BX, B       
    MOV MCD, AX    
    CMP BX, 0               
    JZ COUNTNUM   
    
    ;ALGORITMO DI EUCLIDE
    CMP AX, BX      
    JNS CONTINUA            
    XCHG AX, BX             
        
        
    CONTINUA:
    MOV DX, 0       
    DIV BX          
    MOV AX, BX     
    MOV BX, DX     
    CMP BX, 0
    JNZ CONTINUA    
    
    MOV MCD, AX     ;MCD=A
    
    
    ;CONTA IL NUMERO DELLE CIFRE
    COUNTNUM:
    
    MOV DX,0
    MOV CX,10 
    DIV CX
    INC CIFRE 
    PUSH DX 
    
    CMP AX,0
    JNE COUNTNUM  ;ax diverso da 0
    
    ;STAMPA
    STAMPA:
    DEC CIFRE        
    POP BX          
    ADD BX,48        
    MOV AH,2
    MOV DX,BX
    INT 21H 
    CMP CIFRE,0
    JNE STAMPA      ;Stampa per tutte le cifre
                

.exit
end 