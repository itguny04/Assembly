.model small    ; �޸� �𵨻���� ������
.code           ; �ڵ� ���׸�Ʈ�� ������
main proc       ; main procedure(�Լ�) ����

mov dl, 'A'     ; dl�� ���� 'A' ���� 
mov ah, 2       ; ���� ��� ���� ��ȣ
int 21h         ; dos ���ͷ�Ʈ �ý��� ȣ�� (int�� ���ͷ�Ʈ�� �ǹ���!)

mov ah, 4ch     ; ���� ��ũ��Ʈ ��ȣ
int 21h         ; dos ���ͷ�Ʈ �ý��� ȣ��
    
main endp       ; main procedure ����
end main        ; ���α׷� ����
