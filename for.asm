.model small 

.code 
main proc
    mov ah, 2
    mov dl, 0x21
    
for:
    int 21h
    inc dl
    
    cmp DL, 0x7F
    jbe for:         
         
main endp 
end main
    
    
    