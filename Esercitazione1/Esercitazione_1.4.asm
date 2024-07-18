
name "es_1.1" ; Z = (X + Y)^2 -> X^2+Y^2+2XY calcolo di (X + Y)^2 (Utilizzare la formula del quadrato di binomio. Esercizio utile solo a fini didattici)

.model small

.data
    Z DW ?
    Y DW 1
    X DW 1
    
    X2 DW ?
    Y2 DW ?
    XY DW ?
    
 
.code
    .startup
    
    MOV AX, X       ;AX=X
    MUL X           ;AX=AX*X
    MOV X2, AX      ;X3=AX
    
    MOV AX, Y       ;AX=Y
    MUL Y           ;AX=AX*Y
    MOV Y2, AX      ;Y2=AX
    
    MOV AX, X       ;AX=X
    MUL Y           ;AX=AX*Y
    MOV XY, AX      ;XY=AX
    
    ADD AX, XY      ;AX=2XY
    ADD AX, X2      ;AX=X^2+2XY
    ADD AX, Y2      ;AX=X^X+Y^2+2XY    
    
    MOV Z, AX       ;Z=AX
    
    
    
    
    
    
    
    
    
    
        
        
    .exit
 end
