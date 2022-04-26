.model small
.data
holsu db '--> odd number$'
jjaksu db '--> even number$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    start:
    mov ah, 1
    int 21h
    
    cmp al, '0'
    jb proc_end
    cmp al, '9'
    ja proc_end
    
    mov bl, 2
    div bl 
    
    cmp ah, 0
    jne print_holsu
    
    print_jjacksu:
    mov ah, 9
    lea dx, jjaksu
    int 21h
    jmp newline
    
    print_holsu:
    mov ah, 9
    lea dx, holsu
    int 21h
    jmp newline
    
    newline:
    mov ah, 2
    
    mov dl, 0dh
    int 21h
    
    mov dl, 0ah
    int 21h
    
    jmp start
    
    proc_end:
    mov ah, 4ch
    int 21h
    
main endp
end main