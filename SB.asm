;samanSadeghyan
;samronsadeghyan@gmail.com

%define state [ebp + 8]
%define INDX(x,y) (4*x+y)
extern _sbox
section .data

section .bss
section .text
global _SubBytes_ASM
_SubBytes_ASM:
    enter 0,0
    mov edi , state
    mov esi , _sbox
    
    
    mov eax, 0
    mov ebx, 0
    
    mov al, [edi + INDX(0,0)]
    mov bl, al
    shr al, 4
    
    and bl, 15
    imul eax, 16
    
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(0,0)], al
    
    
    
    mov eax, 0
    mov ebx, 0
    
    mov al, [edi + INDX(0,1)]
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(0,1)], al
    
    
    mov eax, 0
    
    mov ebx, 0
    mov al, [edi + INDX(0,2)]
    mov bl, al
    shr al, 4
    
    and bl, 15
    
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(0,2)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [edi + INDX(0,3)]
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(0,3)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [edi + INDX(1,0)]
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    
    mov al, [esi + ebx]
    mov [edi + INDX(1,0)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [edi + INDX(1,1)]
    mov bl, al
    shr al, 4
    
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(1,1)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [edi + INDX(1,2)]
    mov bl, al
    
    
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(1,2)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [edi + INDX(1,3)]
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(1,3)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [edi + INDX(2,0)]
    
    
    
    
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(2,0)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [edi + INDX(2,1)]
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(2,1)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [edi + INDX(2,2)]
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(2,2)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [edi + INDX(2,3)]
    mov bl, al
    shr al, 4
    
    
    
    
    
    
    
    
    
    
    
 
    
    
    
    
    
    
    
    
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(2,3)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [edi + INDX(3,0)]
    mov bl, al
    
    shr al, 4
    
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(3,0)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [edi + INDX(3,1)]
    
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(3,1)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [edi + INDX(3,2)]
    
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(3,2)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [edi + INDX(3,3)]
    mov bl, al
    
    shr al, 4
    
    and bl, 15
    
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [esi + ebx]
    mov [edi + INDX(3,3)], al
    
    
    leave
    ret