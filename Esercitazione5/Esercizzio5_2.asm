name "Esercizio 5.2"

; tradurre in assembly il seguente programma C++.

; cout<< è l'istruzione utilizzata in C++ per visualizzare qualcosa in standard output.

; int main() {
;   int num = 99; 
;   num += 6;
;   num -= 8;
;   num += 14;
;   cout << num;
;   num = (num / 3) - 5;
;   num = (num * 2) - 6;
;   cout << num;
;   num -= 4;
;   cout << num;
;   return 0;
; }

.model small

.data
    CIFRE DW 0
    num DW ?

.code
.startup
    
    MOV AX, 99
    ADD AX, 6
    SUB AX, 8
    ADD AX, 14
    
    ;CONTA IL NUMERO DELLE CIFRE
    CONTACIFRE:
    MOV DX,0
    MOV CX,10 
    DIV CX
    INC CIFRE 
    PUSH DX 
    
    CMP AX,0
    JNE CONTACIFRE      ;ax diverso da 0
    
    ;STAMPA
    STAMPA:
    DEC CIFRE        
    POP BX          
    ADD BX,48        
    MOV AH,2
    MOV DX,BX
    INT 21H 
    CMP CIFRE,0
    JNE STAMPA
    
    MOV BH, 3
    DIV BH
    SUB AX, 5
    MOV BX, 2
    MUL BX
    SUB AX, 6
    MOV CIFRE, 0
    
    ;CONTA IL NUMERO DELLE CIFRE
    CONTACIFRE1:
    MOV DX,0
    MOV CX,10 
    DIV CX
    INC CIFRE 
    PUSH DX 
    
    CMP AX,0
    JNE CONTACIFRE1      ;ax diverso da 0
    
    
    PUSH 192
    INC CIFRE
    
    ;STAMPA
    STAMPA1:
    DEC CIFRE        
    POP BX          
    ADD BX,48        
    MOV AH,2
    MOV DX,BX
    INT 21H 
    CMP CIFRE,0
    JNE STAMPA2
        
    SUB AX, 4
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

    PUSH 192
    INC CIFRE
    
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
    
    MOV num, AX
    

.exit
end 