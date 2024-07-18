name "Esercizzio_1"

; Controllare se una parola è dispari.

.model small
.data

    num dw 4
    parita dw ?
    
.code
    .startup
    
        MOV BX, 0       ;BX=0
        ADD BX, num     ;BX=BA+num      
        MOV BX, 1       ;BX=0
        
        JP FINE         ;salta se e' dispari
        
        MOV BX, 0       ;BX=0
        
        FINE:
        
        MOV parita, BX  ;parita = 0 se num pari, parita = 1 se num dispari

.exit
end