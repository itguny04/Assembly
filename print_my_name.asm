.model small
.code
main proc

mov ah, 2   ; ��ũ�� ����� �ǹ��� 

mov dl, 'K'
int 21h     ; 21h�� dos ó���� �ǹ��� 

mov dl, 'G'
int 21h

mov dl, 'H'
int 21h

mov ah, 4ch ; dos�� ���͸� �ǹ���
int 21h

main endp
end main
