;samanSadeghyan
;samronsadeghyan@gmail.com

%define state [ebp+8]
%define w [ebp+12]
%define INDX(x,y) (4*x+y)
global _AddRoundKey_ASM
section .text
_AddRoundKey_ASM:
enter 0,0

mov esi, w
mov edi, state
;******************************************

mov eax,[esi];  eax=w[0]

xor [edi+INDX(3,0)], al ; state[3][0] ^= first 8 bit of w[0]


shr eax,8;  shift out first 8 bit of w[0]. Therefore second 8 bit is in al
xor [edi+INDX(2,0)], al ; state[2][0] ^= second 8 bit of w[0]

shr eax,8
xor [edi+INDX(1,0)], al

shr eax,8
xor [edi+INDX(0,0)], al
;************************Subkey2***************
mov eax,[esi+4];  eax=w[1]

xor [edi+INDX(3,1)], al ; state[3][1] ^= first 8 bit of w[1]

shr eax,8;  shift out first 8 bit of w[1]. Therefore second 8 bit is in al
xor [edi+INDX(2,1)], al ; state[2][1] ^= second 8 bit of w[1]

shr eax,8
xor [edi+INDX(1,1)], al

shr eax,8
xor [edi+INDX(0,1)], al
;**************************Subkey3**********
mov eax,[esi+8];  eax=w[1]

xor [edi+INDX(3,2)], al ; state[3][2] ^= first 8 bit of w[1]

shr eax,8;  shift out first 8 bit of w[1]. Therefore second 8 bit is in al
xor [edi+INDX(2,2)], al ; state[2][2] ^= second 8 bit of w[1]

shr eax,8
xor [edi+INDX(1,2)], al

shr eax,8
xor [edi+INDX(0,2)], al
;************************Subkey4*************
mov eax,[esi+12];  eax=w[1]

xor [edi+INDX(3,3)], al ; state[3][3] ^= first 8 bit of w[1]

shr eax,8;  shift out first 8 bit of w[1]. Therefore second 8 bit is in al
xor [edi+INDX(2,3)], al ; state[2][3] ^= second 8 bit of w[1]

shr eax,8
xor [edi+INDX(1,3)], al

shr eax,8
xor [edi+INDX(0,3)], al

leave 
ret