;samanSadeghyan
;samronsadeghyan@gmail.com

%define INDX(x,y) (4*x+y)
%define state [ebp + 8]
extern _invsbox
section .data
section .bss
section .text
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
global _InvSubBytes_ASM
_InvSubBytes_ASM:
    enter 0,0
    mov edi , _invsbox 
    mov esi , state
    ;;;;;;;;;;;;;;;;;;;;;;;;
    mov ebx, 0   
    mov eax, 0
    
    mov al, [esi + INDX(0,0)]
    mov bl, al
    ;;;;;;;;;;;;;;;;;
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(0,0)], al
    ;;;;;;;;;;;;;;;;;    
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(0,1)]
    ;;;;;;;;;;;;;;;;;
    
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(0,1)], al 
    ;;;;;;;;;;;;;;;;
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(0,2)]
    mov bl, al
    ;;;;;;;;;;;;;;;;
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(0,2)], al
    ;;;;;;;;;;;;;;;;    
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(0,3)]
    mov bl, al
    ;;;;;;;;;;;;;;;;
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(0,3)], al
    ;;;;;;;;;;;;;;;;;   
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(1,0)]
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(1,0)], al    
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(1,1)]
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(1,1)], al
    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov eax, 0
    
    mov ebx, 0
    mov al, [esi + INDX(1,2)]
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(1,2)], al
        
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(1,3)]
    mov bl, al
    shr al, 4

        and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(1,3)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(2,0)]
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(2,0)], al
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(2,1)]
    mov bl, al
    
    
    
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(2,1)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(2,2)]
    
    
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(2,2)], al
    
   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(2,3)]
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    
    
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(2,3)], al
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(3,0)]
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(3,0)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(3,1)]
    mov bl, al
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(3,1)], al
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(3,2)]
    mov bl, al
    
    shr al, 4
    and bl, 15
    imul eax, 16
    
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(3,2)], al
    
    
    
    
    
    
    
    
    
    
    
            
    
    
    
    
    
    mov eax, 0
    mov ebx, 0
    mov al, [esi + INDX(3,3)]
    mov bl, al
;;;;;;;;;;;;;;;;;;;;;;;
    shr al, 4
    and bl, 15
    imul eax, 16
    add  ebx, eax
    mov eax, 0
    mov al, [edi + ebx]
    mov [esi + INDX(3,3)], al
    
    
    leave
    
    
    
    
    
ret