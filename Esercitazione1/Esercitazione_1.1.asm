
name "es_1.1" ; W = X-2Y+3Z

.model small

.data
    X DW 100
    Y DW 45
    Z DW 15
    W DW ?
 
.code
    .startup
    
    MOV AX, X   ;AX=X
    
    SUB AX, Y   ;AX=X-Y
    SUB AX, Y   ;AX=X-2Y
    
    ADD AX, Z   ;AX=X-2Y+Z
    ADD AX, Z   ;AX=X-2Y+2Z
    ADD AX, Z   ;AX=X-2Y+3Z
    
    MOV W, AX   ;W=AX
        
        
    .exit
 end
