.model small    ; 메모리 모델사이즈를 정의함
.code           ; 코드 세그먼트를 정의함
main proc       ; main procedure(함수) 시작

mov ah, 44
int 21h         ; CH:hour, CL:minute, DH:second 
    
main endp       ; main procedure 종료
end main        ; 프로그램 종료
