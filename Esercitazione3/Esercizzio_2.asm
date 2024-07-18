name "Esercizio_2"

; Si definiscano due variabili intere : -ammalati che rappresenta un numero di ammalati; - percentuale_ammalati che rappresenta la percentuale di ammalati che ogni giorno guarisce. Si calcoli quanti giorni sono necessari affinché il numero di ammalati sia minore di 100

.model small
.stack

.data

    ammalati dw 200
    percentuale_ammalati dw 10
    giorni dw ?

.code
    .startup
    
    MOV giorni, 0
    
    MOV AX, ammalati    ;AX=ammalati
    MOV BX, 100         ;BX=100
    MUL BX              ;AX=ammalati*100
    MOV CX, AX
    
    DAY:
    
    MOV AX, ammalati            ;AX=amalati
    MUL percentuale_ammalati    ;AX=amalati*percentuale_ammalati    
    
    MOV BX, 0
    
    
    SUB BX, AX
    MOV ammalati, BX
    INC giorni
    
    CMP BX, 10000
    JGE DAY
                                     
    
    
    
    
    
.exit
end