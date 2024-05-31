.MODEL SMALL
.STACK 100H
.DATA 
    MSG1    DB  ,"Enter string: $"
    MSG2    DB  10,13,,"Reversed: $"
    BUFFER  DB  80 DUP("$")
.CODE
    START:
        MOV AX,@DATA
        MOV DS,AX
                 
        MOV AH,9         
        LEA DX,MSG1
        INT 21H 
        
        LEA SI,BUFFER
        LEA DI,BUFFER
        
        MOV AH,1
        
    INPUT:
        INT 21H
        CMP AL,0DH
        JE OUTPUT
        MOV [DI],AL
        INC DI
        JMP INPUT
    OUTPUT: 
        LEA DX,MSG2
        MOV AH,9
        INT 21H
        MOV AH,02
        PRINT:
            DEC DI
            MOV DL,[DI]
            INT 21H 
            CMP SI,DI
            JE EXIT
            JMP PRINT
    EXIT:
        MOV AH, 04CH
        INT 21H
        