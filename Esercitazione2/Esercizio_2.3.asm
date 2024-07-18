
name "esercizo_2.3" ; Y = 15X^4 - 8X^3 + 9X^2 - 5X + 7

.model small
    .data
    
        Y DW ?
        X DW 1

    .code
    .startup
        
        MOV AX, X       ;AX=X
        MUL X           ;AX=X^2
        MUL X           ;AX=X^3
        MUL X           ;AX=X^4
        PUSH AX
        SHL AX, 4       ;AX=16X^4
        POP BX
        SUB AX, BX      ;AX=15X^4
        
        PUSH AX
        
        MOV AX, X       ;AX=X
        MUL X           ;AX=X^2
        MUL X           ;AX=X^3
        SHL AX, 3       ;AX=8X^3
        
        POP BX
        
        SUB BX, AX      ;BX=15X^4-8X^3
        PUSH BX
        
        MOV AX, X       ;AX=X
        MUL X           ;AX=X^2 
        PUSH AX
        SHL AX, 3       ;AX=8X^2
        POP BX
        ADD AX, BX      ;AX=9X^2
        
        POP BX          ;BX=15X^4-8X^3
        ADD BX, AX      ;BX=15X^4-8X^3+9X^2
        
        MOV AX, X       ;AX=X
        SHL AX, 2       ;AX=4X
        ADD AX, X       ;AX=5X
        
        SUB BX, AX      ;BX=15X^4-8X^3+9X^2-5X
        ADD BX, 7       ;BX=15X^4-8X^3+9X^2-5X+7
        
        MOV Y, BX       ;Y=BX
        
        
        
                    
    
    .exit
end