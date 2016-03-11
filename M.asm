;samanSadeghyan
;samronsadeghyan@gmail.com

%define state [ebp + 8]
%define INDX(x,y) (4*x+y)
extern _gf_mul
section .bss
col resb 4

section .data
section .text
global _MixColumns_ASM
_MixColumns_ASM:
    enter 0,0
    push eax
    mov ebx, 0
    mov edx, 0
    mov ecx, 0
    mov eax,state 
    mov ebx,col
    
     
    mov dl,[eax + INDX(0,0)] 
    mov [ebx],dl
    mov dl,[eax + INDX(1,0)] 
    mov [ebx+1],dl
    mov dl,[eax + INDX(2,0)] 
    mov [ebx+2],dl
    mov dl,[eax + INDX(3,0)] 
    mov [ebx+3],dl
    
    mov edx, 0
    mov ecx, 0
    
    mov edi,_gf_mul
    
    
    mov ecx,0
    mov cl,[ebx]
    
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
      
    mov [eax],dl
    
    
    mov edx,0
    mov ecx,0
    
    mov cl,[ebx+1]
    
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    xor [eax],dl
    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+2]
    xor [eax],dl 
    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+3]
    xor [eax],dl

    mov ecx,0
    mov edx,0
    mov dl,[ebx]
    mov [eax + INDX(1,0)],dl
mov edx,0
    mov ecx,0
    

    mov cl,[ebx+1]
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
    
    xor [eax + INDX(1,0)],dl
    mov edx,0 
    mov ecx,0
    
    
    
    mov cl,[ebx+2]
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    xor [eax + INDX(1,0)],dl
    
    mov edx,0
    mov ecx,0
    
    
    mov dl,[ebx+3]
    xor [eax + INDX(1,0)],dl
    mov edx,0
    mov ecx,0
    
    
    mov dl,[ebx]
    mov [eax + INDX(2,0)],dl
    
    
    mov edx,0
    mov ecx,0
    
    
    mov dl,[ebx+1]
    xor [eax + INDX(2,0)],dl
    mov edx,0
    mov ecx,0
    
  
    mov cl,[ebx+2]
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
    
    xor [eax + INDX(2,0)],dl    
    
    mov edx,0
    mov ecx,0
    

    mov cl,[ebx+3]
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    xor [eax + INDX(2,0)],dl
    
    
    mov edx,0
    mov ecx,0
    
    
    
    mov cl,[ebx]
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    mov [eax + INDX(3,0)],dl

    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+1]
    xor [eax + INDX(3,0)],dl
    
    mov edx,0
    mov ecx,0
    
    
    mov dl,[ebx+2]
    xor [eax + INDX(3,0)],dl
    mov edx,0
    mov ecx,0
        
    
    mov cl,[ebx+3]
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
    
    xor [eax + INDX(3,0)],dl
    
    
    ;column2   

    mov dl,[eax + INDX(0,1)] 
    mov [ebx],dl    
    
    mov dl,[eax + INDX(1,1)] 
    mov [ebx+1],dl    
    
    mov dl,[eax + INDX(2,1)] 
    mov [ebx+2],dl    
    
    mov dl,[eax + INDX(3,1)] 
    mov [ebx+3],dl
     mov ecx, 0 
    mov edx, 0

    
    mov edi,_gf_mul

    mov ecx,0
    mov cl,[ebx]
    
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
      
    mov [eax + INDX(0,1)],dl
    
    mov edx,0        
    mov ecx,0

    
    mov cl,[ebx+1]
    
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    xor [eax + INDX(0,1)],dl
    
    mov ecx,0    
    
    mov edx,0    
    mov dl,[ebx+2]
    xor [eax + INDX(0,1)],dl
    mov edx,0
    mov ecx,0
    
    
    mov dl,[ebx+3]
    xor [eax + INDX(0,1)],dl
    mov edx,0
    mov ecx,0
    
    mov dl,[ebx]
    mov [eax + INDX(1,1)],dl
    
    
    mov ecx,0
    mov edx,0    
    
    mov cl,[ebx+1]
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
    
    xor [eax + INDX(1,1)],dl
    
    
    mov edx,0
    mov ecx,0
    
    mov cl,[ebx+2]
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    xor [eax + INDX(1,1)],dl
    
    mov edx,0
    mov ecx,0
    
    
    mov dl,[ebx+3]
    xor [eax + INDX(1,1)],dl
    
    
    mov edx,0
    mov ecx,0
    
    
    mov dl,[ebx]
    mov [eax + INDX(2,1)],dl
    
    
    mov edx,0
    mov ecx,0
    
    mov dl,[ebx+1]
    xor [eax + INDX(2,1)],dl
 
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx+2]
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
    
    xor [eax + INDX(2,1)],dl
        
    
    mov ecx,0
    mov edx,0    
    
    mov cl,[ebx+3]
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    xor [eax + INDX(2,1)],dl

    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx]
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    mov [eax + INDX(3,1)],dl
        
    
    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+1]
    xor [eax + INDX(3,1)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+2]
    xor [eax + INDX(3,1)],dl

    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx+3]
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
    
    xor [eax + INDX(3,1)],dl
    
        
    ;column3
    

    mov dl,[eax + INDX(0,2)] 
    mov [ebx],dl
    
    
    mov dl,[eax + INDX(1,2)] 
    mov [ebx+1],dl
    
    
    mov dl,[eax + INDX(2,2)] 
    mov [ebx+2],dl
    
    
    mov dl,[eax + INDX(3,2)] 
    mov [ebx+3],dl

    
    mov edx, 0
    mov ecx, 0
    
    mov edi,_gf_mul
    
    
    mov ecx,0
    mov cl,[ebx]
    
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
      
    mov [eax + INDX(0,2)],dl

    mov ecx,0
    mov edx,0
    
    mov cl,[ebx+1]
    
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]    
    xor [eax + INDX(0,2)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+2]
    xor [eax + INDX(0,2)],dl

    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+3]
    xor [eax + INDX(0,2)],dl

    mov ecx,0
    mov edx,0
    
    
    
    mov dl,[ebx]
    mov [eax + INDX(1,2)],dl
    
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx+1]
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
    
    xor [eax + INDX(1,2)],dl

    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx+2]
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    xor [eax + INDX(1,2)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+3]
    xor [eax + INDX(1,2)],dl
    

    mov ecx,0
    mov edx,0
    
    mov dl,[ebx]
    mov [eax + INDX(2,2)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+1]
    xor [eax + INDX(2,2)],dl
    
    
        
    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx+2]
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]    
    xor [eax + INDX(2,2)],dl
        
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx+3]
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    xor [eax + INDX(2,2)],dl

    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx]
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    mov [eax + INDX(3,2)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+1]
    xor [eax + INDX(3,2)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+2]
    xor [eax + INDX(3,2)],dl

    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx+3]
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
    
    xor [eax + INDX(3,2)],dl
    
    ;column4

    
    mov dl,[eax + INDX(0,3)] 
    mov [ebx],dl
    
    
    mov dl,[eax + INDX(1,3)] 
    mov [ebx+1],dl
    
    
    mov dl,[eax + INDX(2,3)] 
    mov [ebx+2],dl
    
    
    mov dl,[eax + INDX(3,3)] 
    mov [ebx+3],dl

    
    mov edx, 0
    mov ecx, 0
    
    mov edi,_gf_mul
    
    
    mov ecx,0
    mov cl,[ebx]
    
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
      
    mov [eax + INDX(0,3)],dl

    mov ecx,0
    mov edx,0    
    mov cl,[ebx+1]    
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]    
    xor [eax + INDX(0,3)],dl
    
    
    mov ecx,0
    mov edx,0    
    mov dl,[ebx+2]
    xor [eax + INDX(0,3)],dl
    

    
    mov ecx,0
    mov edx,0   
    mov dl,[ebx+3]
    xor [eax + INDX(0,3)],dl

    mov ecx,0
    mov edx,0   
    mov dl,[ebx]
    mov [eax + INDX(1,3)],dl
    
    
    mov ecx,0
    mov edx,0   
    mov cl,[ebx+1]
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
    
    xor [eax + INDX(1,3)],dl

    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx+2]
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    xor [eax + INDX(1,3)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+3]
    xor [eax + INDX(1,3)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov dl,[ebx]
    mov [eax + INDX(2,3)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+1]
    xor [eax + INDX(2,3)],dl
   
    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx+2]
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]
    
    xor [eax + INDX(2,3)],dl

    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx+3]
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    xor [eax + INDX(2,3)],dl

    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx]
    imul cx,6
    add cx,1
    mov dl,[edi+ecx]
    
    mov [eax + INDX(3,3)],dl

    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+1]
    xor [eax + INDX(3,3)],dl

    mov ecx,0
    mov edx,0
    
    mov dl,[ebx+2]
    xor [eax + INDX(3,3)],dl

    mov ecx,0
    mov edx,0
    
    
    mov cl,[ebx+3]
    imul cx,6
    add cx,0
    mov dl,[edi+ecx]    
    xor [eax + INDX(3,3)],dl
    

    
    pop eax
    leave
    ret