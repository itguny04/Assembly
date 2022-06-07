.model small
.data
source db 'Kim gil dong$'
destination db 'Hong gil dong$'

.code
main proc
    mov ax, data
    mov ds, ax
    mov es, ax
    
    lea dx, destination
    mov ah, 9
    int 21h
    
    cld
    mov cx, 13
    lea si, source
    lea di, destination
    rep movsb
    
    lea dx, destination
    mov ah, 9
    int 21h
    
main endp
end main