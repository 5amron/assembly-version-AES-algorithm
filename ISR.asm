;samanSadeghyan
;samronsadeghyan@gmail.com

%define state [ebp+8]
%define INDX(x,y) (4*x+y)
global _InvShiftRows_ASM
section .text
_InvShiftRows_ASM:
    enter 0,0
    
    
    mov eax,0
    mov edi, state
    mov eax, [edi+INDX(1,3)]
    
    mov ebx,0
    ;sl1
    mov bl, al
    mov bl, [edi+INDX(1,2)]
    mov [edi+INDX(1,3)], bl
    
    mov bl, [edi+INDX(1,1)]
    mov [edi+INDX(1,2)], bl
    
    mov bl, [edi+INDX(1,0)]
    mov [edi+INDX(1,1)], bl
    
    mov [edi+INDX(1,0)], al
    
    ;Sl2
    mov al, [edi+INDX(2,3)]
    mov bl, [edi+INDX(2,1)]
    mov [edi+INDX(2,3)], bl
    
    mov [edi+INDX(2,1)], al
    mov al, [edi+INDX(2,2)]
    mov bl, [edi+INDX(2,0)]
    mov [edi+INDX(2,2)], bl
    
    mov [edi+INDX(2,0)], al
    ;Sl3
    mov al, [edi+INDX(3,3)]
    mov bl, [edi+INDX(3,0)]
    mov [edi+INDX(3,3)], bl
    
    mov bl, [edi+INDX(3,1)]
    mov [edi+INDX(3,0)], bl
    
    mov bl, [edi+INDX(3,2)]
    mov [edi+INDX(3,1)], bl
    
    mov [edi+INDX(3,2)], al
    
    leave
    ret