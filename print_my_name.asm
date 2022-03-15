.model small
.code
main proc

mov ah, 2   ; 스크린 출력을 의미함 

mov dl, 'K'
int 21h     ; 21h는 dos 처리를 의미함 

mov dl, 'G'
int 21h

mov dl, 'H'
int 21h

mov ah, 4ch ; dos로 복귀를 의미함
int 21h

main endp
end main
