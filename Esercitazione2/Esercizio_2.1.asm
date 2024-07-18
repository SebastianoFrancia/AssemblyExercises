
name "esercizo_2.1" 

; Effettuare la seguente espressione senza l'utilizzo del MUL per le moltiplicazioni fra termine noto e incognita. Commentare le parti di codice significative.
; Y = 8X^2 + 12X + 32

.model small
    .data
    
        Y DW ?
        X DW 1

    .code
    .startup
        
        MOV AX, X       ;AX=X
        MUL X           ;AX=X^2
        SHL AX, 3       ;AX=AX*2^3
        
        MOV Y, AX       ;Y=AX
        
        MOV AX, X       ;AX=X       
        MOV BX, X       ;BX=X
        SHL AX, 2       ;AX=4X
        SHL BX, 4       ;BX=16X
        SUB BX, AX      ;BX=16X-4X
        
        ADD Y, BX       ;Y=Y+BX
        ADD Y, 32       ;Y=Y+32
        
        
                    
    
    .exit
end