.model small    ; �޸� �𵨻���� ������
.code           ; �ڵ� ���׸�Ʈ�� ������
main proc       ; main procedure(�Լ�) ����

mov ah, 42
int 21h         ; CX:year, DH:month, DL:day, AL:���� 
    
main endp       ; main procedure ����
end main        ; ���α׷� ����
