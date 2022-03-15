.model small    ; 메모리 모델사이즈를 정의함
.code           ; 코드 세그먼트를 정의함
main proc       ; main procedure(함수) 시작

mov ah, 42
int 21h         ; CX:year, DH:month, DL:day, AL:요일 
    
main endp       ; main procedure 종료
end main        ; 프로그램 종료
