.model small
.data
msg_sp db 0dh, 0ah, 'Spring$'
msg_su db 0dh, 0ah, 'Summer$'
msg_fa db 0dh, 0ah, 'Fall$'
msg_wi db 0dh, 0ah, 'Winter$'
msg_er db 0dh, 0ah, 'Error$'

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h     
    
    mov ah, 9
    
    cmp al, '1'
    je spring
    
    cmp al, '2'
    je summer
    
    cmp al, '3'
    je fall
    
    cmp al, '4'
    je winter
    
    jmp error   
    
    spring:
        lea dx, msg_sp
        int 21h
        jmp end
         
    summer:
        lea dx, msg_su
        int 21h
        jmp end
        
    fall:
        lea dx, msg_fa
        int 21h
        jmp end
        
    winter:
        lea dx, msg_wi
        int 21h
        jmp end
        
    error:
        lea dx, msg_er
        int 21h
        jmp end
        
    end:
    
    
main endp

end main
