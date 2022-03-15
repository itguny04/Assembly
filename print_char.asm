.model small    ; 메모리 모델사이즈를 정의함
.code           ; 코드 세그먼트를 정의함
main proc       ; main procedure(함수) 시작

mov dl, 'A'     ; dl에 문자 'A' 저장 
mov ah, 2       ; 문자 출력 서비스 번호
int 21h         ; dos 인터럽트 시스템 호출 (int란 인터럽트를 의미함!)

mov ah, 4ch     ; 종료 스크립트 번호
int 21h         ; dos 인터럽트 시스템 호출
    
main endp       ; main procedure 종료
end main        ; 프로그램 종료
