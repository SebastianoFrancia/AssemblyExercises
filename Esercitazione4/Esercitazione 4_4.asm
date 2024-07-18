name "Esercizzio4_4"

; Calcolare la somma di tutti i numeri interi compresi fra due valori positivi, dichiarati inizialmente.

.model small
.data

    Nminore dw 5
    Nmaggiore dw 8
    somma dw ?
    
.code
    .startup
        mov ax, Nminore
        mov somma, 0
               
        aggiungi:
        inc ax
        add somma, ax
        cmp ax, Nmaggiore 
        jc aggiungi
        
        
        
.exit
end