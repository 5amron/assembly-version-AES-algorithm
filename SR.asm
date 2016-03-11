;samanSadeghyan
;samronsadeghyan@gmail.com

%define state [ebp+8]
%define INDX(x,y) (4*x+y)
global _ShiftRows_ASM
section .text
_ShiftRows_ASM:
enter 0,0
mov eax,0
mov edx,0
mov esi, state
mov al, [esi+INDX(1,0)]


;Sl1
mov dl, al
mov dl, [esi+INDX(1,1)]
mov [esi+INDX(1,0)], dl

mov dl, [esi+INDX(1,2)]
mov [esi+INDX(1,1)], dl

mov dl, [esi+INDX(1,3)]
mov [esi+INDX(1,2)], dl

mov [esi+INDX(1,3)], al


;Sl2
mov al, [esi+INDX(2,0)]
mov dl, [esi+INDX(2,2)]
mov [esi+INDX(2,0)], dl

mov [esi+INDX(2,2)], al
mov al, [esi+INDX(2,1)]
mov dl, [esi+INDX(2,3)]
mov [esi+INDX(2,1)], dl

mov [esi+INDX(2,3)], al
;Sl3
mov al, [esi+INDX(3,0)]
mov dl, [esi+INDX(3,3)]
mov [esi+INDX(3,0)], dl

mov dl, [esi+INDX(3,2)]
mov [esi+INDX(3,3)], dl

mov dl, [esi+INDX(3,1)]
mov [esi+INDX(3,2)], dl


mov [esi+INDX(3,1)], al

leave
ret