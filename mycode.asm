   .MODEL SMALL
   .STACK 100H
   .DATA
   .CODE
    MAIN PROC    
        MOV AH,1 ;TAKING INPUT
        INT 21H 
        
        MOV CL,AL
        
        MOV AH,2
        MOV DL,CL ;SHOW OUTPUT VALUE
        INT 21H                     
        
        
        
        MOV AH,4CH
        INT 21H
       MAIN ENDP
    END MAIN



