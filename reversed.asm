.model small

.code
main proc
    mov ah, 1
    
    int 21h
    mov cl, al
    
    int 21h
    mov ch, al
    
    int 21h
    mov bl, al
    
    mov ah, 2
    
    mov dl, 0dh
    int 21h
    
    mov dl, 0ah
    int 21h
    
    mov dl, bl 
    int 21h
    
    mov dl, ch
    int 21h
    
    mov dl, cl
    int 21h
    
    
    


main endp
end main