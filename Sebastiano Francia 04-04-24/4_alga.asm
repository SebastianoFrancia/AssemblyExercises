name "rane.asm"

.model small

.data
    
   popIniziale dw 10
   popFinale dw 110
   popAttuale dw 0
   anni dw 0 
    
.code

    .startup 
        
        mov ax, popIniziale          ;AX = popIniziale
        
        INIZIO-CICLO:
        cmp ax, popFinale            
        JNC FINE-CICLO               ;se AX >= popFinale salta a 'FINE-CICLO', altrimenti continua
        
        inc anni                     ;anni++
        shl ax,1                     ;AX = AX * 2
        push ax                      ;metto AX nello stack. AX contiene la popolazione attuale
               
        ;controllo se anni e' divisibile per 3
        mov ax, anni                 ;AX = giorni
        mov bx, 3                    ;BX = 3 ---> serve per dividere per 3
        mov dx, 0                    ;pulisco il resto
        div bx                       ;AX = AX / 3
        pop ax                       ;posso rimettere in AX il valore della popolazione, perche' mi serve solo DX
        
        cmp dx,0
        JNE SALTA                    ;se DX != 0 salta a 'SALTA', altrimenti prosegui e decrementa di un terzo
        
        mov dx,0                     
        shl ax,1                     ;AX = AX * 2
        div bx                       ;AX = AX / 3   con queste due righe calcolo i 2/3 di AX, cioe' sottraggo 1/3
        
        
        SALTA:
         
        mov popAttuale, ax           ;metto il valore di AX in una variabile solo per controllare
        JMP INIZIO-CICLO
        
        FINE-CICLO:
   
    .exit

end



