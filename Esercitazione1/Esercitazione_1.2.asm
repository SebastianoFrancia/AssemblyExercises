
name "es_1.2"  ;Y = 6X - 9Z + 3W + 2T - 4(Z+T)

.model small

.data
    Y DW ?
    X DW 1
    Z DW 2
    W DW 3
    T DW 4
 
.code
    .startup
    
    MOV AX, X   ;AX=X
    ADD AX, X   ;AX=2X
    ADD AX, X   ;AX=3X
    ADD AX, X   ;AX=4X
    ADD AX, X   ;AX=5X
    ADD AX, X   ;AX=6X
    
    SUB AX, Z   ;AX=6X-Y
    SUB AX, Z   ;AX=6X-2Y
    SUB AX, Z   ;AX=6X-3Y
    SUB AX, Z   ;AX=6X-4Y
    SUB AX, Z   ;AX=6X-5Y
    SUB AX, Z   ;AX=6X-6Y
    SUB AX, Z   ;AX=6X-7Y
    SUB AX, Z   ;AX=6X-8Y
    SUB AX, Z   ;AX=6X-9Y
    
    ADD AX, W   ;AX=6X-9Y+W
    ADD AX, W   ;AX=6X-9Y+2W
    ADD AX, W   ;AX=6X-9Y+3W
    
    ADD AX, T   ;AX=6X-9Y+3W+T
    ADD AX, T   ;AX=6X-9Y+3W+2T
    
    SUB AX, Z   ;AX=6X-9Y+3W+2T-Z
    SUB AX, Z   ;AX=6X-9Y+3W+2T-2Z
    SUB AX, Z   ;AX=6X-9Y+3W+2T-3Z
    SUB AX, Z   ;AX=6X-9Y+3W+2T-4Z
    
    SUB AX, T   ;AX=6X-9Y+3W+2T-4Z-T
    SUB AX, T   ;AX=6X-9Y+3W+2T-4Z-2T
    SUB AX, T   ;AX=6X-9Y+3W+2T-4Z-3T
    SUB AX, T   ;AX=6X-9Y+3W+2T-4Z-4T
    
    MOV Y, AX   ;Y=AX
    
    
        
        
    .exit
 end
