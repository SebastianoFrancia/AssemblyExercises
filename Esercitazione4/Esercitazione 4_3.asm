name "Esercizzio4_3"

; Scrivere un programma in assembly che verifica se un numero n>1 è primo.

.model small
.data

    N dw 4  
    snotprimo    db 'il numero non e primo$'
    sprimo db 'il numero e primo $'
    
.code
    .startup
        mov cx, 2
        
        divisione:
        mov ax, N
        mov dx, 0
        div cx
        inc cx
        cmp dx, 0
        jnz primo
        
        mov ax, @data
        mov ds, ax
        
        lea dx, snotprimo
        mov ah, 9
        int 21h
        
        mov ah, 4ch
        int 21h 
        
        
        primo:
        cmp cx, N
        jnz divisione
        
        mov ax, @data
        mov ds, ax
        
        lea dx, sprimo
        mov ah, 9
        int 21h
        
        mov ah, 4ch
        int 21h
        
        
        
        
.exit
end