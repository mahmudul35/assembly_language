.model small
.stack 100h
.data
m db 'i love bangladesh $'
.code
main proc  
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9;
    lea dx,m
    int 21h
    
    mov ah,1 
    int 21h
    mov bl,al  
    
    mov ah,1
    int 21h
    mov cl,al
    
    
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov dl,cl
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main