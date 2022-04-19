.model small
.code

main proc
    
input:
    mov ah,1
    int 21h
    
    cmp al, 1ah
    je quit
    
    cmp al, 'A'
    jb output       ; jb <
    cmp al, 'Z'
    ja output       ; ja >
    add al, 20h  
    
output:
    mov dl, al
    mov ah, 2
    int 21h
    jmp input
    
quit: 
mov ah, 4ch
int 21h
endp