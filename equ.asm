.model small

.data
msg1 db 'Hello',0dh,0ah,'$'
msg2 db 'Bye$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 9
    lea dx, msg1
    int 21h

    cr equ 0dh      ; cr�̶�� ��뱸 ����

    mov ah, 2
    mov dl, cr      ; ��뱸 ��� 
    int 21h
 
    mov dl, 0ah
    int 21h

    mov ah, 9
    lea dx, msg2
    int 21h

    mov ah, 4ch
    int 21h

main endp
end main