.model small
.stack 100h
.data 
MSG2 db "enter f digit : $"
MSG3 db 10,13,"Enter sen: $"
MSG4 db 10,13,"result: $"


.code
main proc
    mov ax,@data
    mov ds,ax
    
    m ov ah,9
    lea dx,MSG2
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov bl,al
    
    mov ah,9
    lea dx,MSG3
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    mul bl
    aam
    mov bx,ax
    
    mov ah,9
    lea dx,MSG4
    int 21h
    
    mov ah,2
    mov dl,bh
    add dl,48
    int 21h
    mov dl,bl
    add dl,48
    int 21h
    
    EXIT:
    mov ah,4ch
    int 21h 