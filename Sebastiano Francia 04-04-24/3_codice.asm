name "rane.asm"

.model small

.data
    
   a dw 3
   b dw 4
   stringa1 db "somma minore di 10$"
   stringa2 db "somma maggiore o uguale a 10$"
   somma dw ? 
    
.code

    .startup
        
        mov ax,@data
        mov ds, ax
        
        mov ax, a   
        add ax, b
        
        CMP AX,10
        JAE STAMPA          ;salta a 'STAMPA' se AX >= 10
                            ;altrimenti prosegue nel codice e
                            ;stampa stringa1.
        
        lea dx, stringa1
        mov ah,9
        int 21h
        jmp FINE            ;salto non condizionato a 'FINE'
                            ;senza questo salto, stampa anche la
                            ;la seconda stringa
                
        STAMPA:
        lea dx, stringa2
        mov ah,9
        int 21h  
            
        
        FINE:
    .exit

end



