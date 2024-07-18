
name "es_1.5" ; Y = Z^3 + 8X - 3W^2 + Z^2 + T^2 - 2TZ + W - 6


.model small

.data
    Y DW ?
    
    Z DW 1
    Z2 DW ?
    Z3 DW ?
 
    X DW 2
    
    W DW 3
    W2 DW ?
    
    T DW 5
    T2 DW ?
    
    
 
.code
    .startup
    
    MOV AX, Z       ;AX=Z
    MUL Z           ;AX=AX*Z
    MOV Z2, AX      ;Z2=AX
    MUL Z           ;AX=AX*Z*Z
    MOV Z3, AX      ;Z3=AX
    
    MOV AX, 8       ;AX=8
    MUL X           ;AX=X*8
    MOV BX, AX      ;BX=AX
    
    ADD BX, Z3      ;BX=BX+Z3
    
    MOV AX, W       ;AX=W
    MUL W           ;AX=AX*W
    MOV W2, AX      ;W2=AX
    MOV AX, 3       ;AX=3
    MUL W2          ;AX=W2*3
    
    SUB BX, AX     ;AX=AX-3W2
    
    MOV AX, BX      ;AX=BX
    ADD AX, Z2      ;AX=AX+Z2
    
    MOV BX, AX      ;BX=AX
    
    MOV AX, T       ;AX=T 
    MUL T           ;AX=AX*T
    MOV T2, AX      ;T2=AX
    
    MOV AX, T       ;AX=T
    MUL Z           ;AX=AX*Z
    
    ADD BX, T2      ;BX=BX+T2
    SUB BX, AX      ;BX=BX-AX
    SUB BX, AX      ;BX=BX-2AX
    
    MOV AX, BX      ;AX=BX
    
    ADD AX, W       ;AX=AX+W
    SUB AX, 6       ;AX=AX-6
    
    
    MOV Y, AX       ;Y=AX
    
        
    .exit
 end
