.model small
.code
main proc
   
mov ax, 1234h
mov bx, 2345h
mov cx, 6789h
mov dx, 0abcdh

add cx, dx
adc ax, bx

mov ax, 1234h
mov bx, 2345h
mov cx, 6789h
mov dx, 0abcdh

sub cx, dx
sbb ax, bx


   
main endp
end main