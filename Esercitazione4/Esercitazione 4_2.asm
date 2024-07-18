name "Esercizzio4_2"

; Scrivere un algoritmo per verificare se un numero è pari o dispari. Non utilizzare DIV, CMP

.model small
.data

    N dw 5  
    spari    db 'il numero e pari$'
    sdispari db 'il numero e dispari$'
    
.code
    .startup
        mov ax, N
        and ax, 1
        
        jz Pari
        
        mov ax, @data
        mov ds, ax
        
        lea dx, sdispari
        mov ah, 9
        int 21h
        
        mov ah, 4ch
        int 21h
        
        
        Pari:
        
        mov ax, @data
        mov ds, ax
 
        lea dx, spari
        mov ah, 9
        int 21h
        
        mov ah, 4ch
        int 21h
        
        
.exit
end