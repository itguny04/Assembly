.model small

.data
high db '--> Your number is above.$'
low db '--> Your naumber is below.$'
con db 'Congratulation! $'
omg db 'Sorry.. Please try again.$'
thx db 'Thanks for playing game! Bye!$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    result equ '7'
    mov cx, 5
    
    input:
    mov ah, 1
    int 21h 
    cmp al, result
    je same
    ja hi
    jb lo
    Loop input
    
    jmp over

    same:
    
    mov ah, 2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    mov ah, 9
    lea dx, con
    int 21h 
        
    lea dx, thx
    int 21h
    
    jmp end
                     
    hi:
    mov ah, 9
    lea dx, high    
    int 21h
    
    jmp enter
    
    lo:
    mov ah, 9
    lea dx, low    
    int 21h
    
    jmp enter
    
    enter:
    mov ah, 2
    
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    loop input
    
    over:
    mov ah, 9
    lea dx, omg
    int 21h 
        
    jmp end
    
    end:

main endp         
end main