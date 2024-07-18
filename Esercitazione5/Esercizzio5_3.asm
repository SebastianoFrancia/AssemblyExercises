name "Esercizio 5.2"

; Tradurre in linguaggio assembly il seguente programma C++. 
; Si provi ad utilizzare lo stack.

; int main() {
;   int x = 99;
;   int y = 65;
;   int temp;
;   cout << x;
;   cout << y; 
;   temp = x;
;   x = y;
;   y = temp;
;   cout << x;
;   cout << y;
;   return 0;
; }

.model small

.data
    Y DW 65
    X DW 99
    CIFRE DW 0
    temp DW ?

.code
.startup
    
    MOV AX, X
       
    ;CONTA IL NUMERO DELLE CIFRE
    CONTACIFRE1:
    MOV DX,0
    MOV CX,10 
    DIV CX
    INC CIFRE 
    PUSH DX 
    
    CMP AX,0
    JNE CONTACIFRE1      ;ax diverso da 0
    
    
    ;STAMPA
    STAMPA1:
    DEC CIFRE        
    POP BX          
    ADD BX,48        
    MOV AH,2
    MOV DX,BX
    INT 21H 
    CMP CIFRE,0
    JNE STAMPA1
    
    MOV AX, Y
    MOV CIFRE, 0
    
    ;CONTA IL NUMERO DELLE CIFRE
    CONTACIFRE2:
    MOV DX,0
    MOV CX,10 
    DIV CX
    INC CIFRE 
    PUSH DX 
    
    CMP AX,0
    JNE CONTACIFRE2      ;ax diverso da 0
    
    INC CIFRE
    PUSH 192
    
    ;STAMPA
    STAMPA2:
    DEC CIFRE        
    POP BX          
    ADD BX,48        
    MOV AH,2
    MOV DX,BX
    INT 21H 
    CMP CIFRE,0
    JNE STAMPA2
    
    MOV AX, Y
    MOV temp, AX
    MOV AX, Y
    MOV X, AX
    MOV AX,X
    MOV CIFRE, 0
    
    ;CONTA IL NUMERO DELLE CIFRE
    CONTACIFRE3:
    MOV DX,0
    MOV CX,10 
    DIV CX
    INC CIFRE 
    PUSH DX 
    
    CMP AX,0
    JNE CONTACIFRE3      ;ax diverso da 0
    
    INC CIFRE
    PUSH 192
    
    ;STAMPA
    STAMPA3:
    DEC CIFRE        
    POP BX          
    ADD BX,48        
    MOV AH,2
    MOV DX,BX
    INT 21H 
    CMP CIFRE,0
    JNE STAMPA3
    
    MOV AX, temp
    MOV Y, AX
    MOV AX, Y
    MOV CIFRE, 0
    
    ;CONTA IL NUMERO DELLE CIFRE
    CONTACIFRE4:
    MOV DX,0
    MOV CX,10 
    DIV CX
    INC CIFRE 
    PUSH DX 
    
    CMP AX,0
    JNE CONTACIFRE4      ;ax diverso da 0
    
    INC CIFRE
    PUSH 192
    
    ;STAMPA
    STAMPA4:
    DEC CIFRE        
    POP BX          
    ADD BX,48        
    MOV AH,2
    MOV DX,BX
    INT 21H 
    CMP CIFRE,0
    JNE STAMPA4
    

.exit
end 