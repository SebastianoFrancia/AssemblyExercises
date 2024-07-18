
name "es_1.3" ; Y = 4X^3 - 3X^2 + 2X +7 (utilizzare valori di X<=25)

.model small

.data
    Y DW ?
    X DW 2
    
    X2 DW ?
    X3 DW ?
 
.code
    .startup
    
    MOV AX, X   	;AX=X
    
    MUL X      	    ;AX=AX*X
    MOV X2, AX  	;X2=AX
    
    MUL X         	;AX=AX*X*X
    MOV X3, AX  	;X3=AX
    
    ADD AX, X3  	;AX=2X^3
    ADD AX, X3  	;AX=3X^3
    ADD AX, X3  	;AX=4X^3
    
    MOV BX, X2  	;BX=X^2
    
    ADD BX, X2  	;BX=2X^2
    ADD BX, X2  	;BX=3X^2
    
    SUB AX,BX   	;AX=AX-BX
    
    ADD AX, X   	;AX=AX+X
    ADD AX, X   	;AX=AX+2X
    ADD AX, 7   	;AX=AX+7
    
    MOV Y,AX		;Y=AX
    
    
        
        
    .exit
 end
