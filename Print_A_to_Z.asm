.model small
.stack 100h
.data
m db 'Loop concept $'
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,m
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov cx,26
    mov ah,2
    mov dl,'A'
    
    Level1:
    int 21h
    inc dl
    loop Level1
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main