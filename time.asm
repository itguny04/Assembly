.model small    ; �޸� �𵨻���� ������
.code           ; �ڵ� ���׸�Ʈ�� ������
main proc       ; main procedure(�Լ�) ����

mov ah, 44
int 21h         ; CH:hour, CL:minute, DH:second 
    
main endp       ; main procedure ����
end main        ; ���α׷� ����
