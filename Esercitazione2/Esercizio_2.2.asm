
name "esercizo_2.2" 

; Rifare l'esercizio seguente utilizzando PUSH, POP e SHL.
; Y = 4X^3 - 3X^2 + 2X +7

.model small
    .data
    
        Y DW ?
        X DW 1

    .code
    .startup
        
        MOV AX, X       ;AX=X
        MUL X           ;AX=X*X
        MUL X           ;AX=X*X*X
        SHL AX, 2       ;AX=4X^3
        
        PUSH AX         
        
        MOV AX, X       ;AX=X
        MUL X           ;AX=X*X
        
        POP BX          ;BX=4X^3
        PUSH BX
        
        SUB BX, AX      ;BX=3X^2
        
        POP AX          ;AX=4X^3
        
        SUB AX, BX      ;AX=4X^3-3X^2
        
        MOV BX, X       ;BX=X
        SHL BX, 1       ;BX=2X
        
        ADD AX, BX      ;AX=4X^3-3X^2+2X
        ADD AX, 7       ;AX=4X^3-3X^2+2X+7
        
        MOV Y, AX       ;Y=AX
        
        
                    
    
    .exit
end