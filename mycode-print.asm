.model small
.data
str1 db 'Input decimal number..$'
str2 db '-->$'

.code
main proc 
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    sub al, 30h
    mov bl, 10h
    mul bl
    mov bl, al
    
    mov ah, 9
    lea dx, str2
    int 21h
    
    mov cx, 8
    
    print:
    shl bl, 1
    lahf
    and ah,00000001
    
    mov dl, ah
    add dl, 30h
    mov ah, 2
    int 21h
    Loop print
    
    mov ah, 4ch
    int 21h
    
main endp
end main
