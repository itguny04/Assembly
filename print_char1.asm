.model small
.code
main proc
    
    mov bx, 0100h
    add bx, 0003h
    
    mov dl, bh      ; setup for print character
    mov ah, 2
    int 21h
    
    mov dl, bl
    mov ah, 2
    int 21h

main endp
end main