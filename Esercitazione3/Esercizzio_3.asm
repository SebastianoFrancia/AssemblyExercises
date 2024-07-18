name "Esercizzio_3"

; calcolare il quadrato di un numero n useremo un algoritmo che calcola il quadrato come la somma dei primi n numeri dispari. 
; Ad esempio, nel caso del numero 5 il numero stampato dal registro AL sarà
; AL=1+3+5+7+9=25

.model small
.data

    N dw  5
    risultato dw ?
    
.code
    .startup
        mov di, 1
        mov bx, 1
        mov ax, 0
        
        Ciclo:
        inc di
        add ax, bx
        add bx, 2
        cmp di, N
        jna ciclo:
        
        
        
        MOV risultato, ax
.exit
end