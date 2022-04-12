.model small
.data
MSG db '^^Kim$'

.code
main proc
    mov ax, @data
    mov ds, ax
  
    
Input:
    mov ah, 1
    int 21h
    
    cmp al, 'K'
    je Looop
    jmp input
    
Looop:
    mov ah, 9
    lea dx, MSG
    Int 21h
    
    mov ah, 4ch
    int 21h

main endp
end main