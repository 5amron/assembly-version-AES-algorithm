;samanSadeghyan
;samronsadeghyan@gmail.com

%define state [ebp + 8]
%define INDX(x,y) (4*x+y)
extern _gf_mul
section .bss
col resb 4
section .data
section .text
global _InvMixColumns_ASM
_InvMixColumns_ASM:
       
    enter 0,0
    push ebx
    
    mov eax, 0
    mov edx, 0
    mov ecx, 0    
    mov eax,col
    mov ebx,state 
     
    mov dl,[ebx + INDX(0,0)] 
    mov [eax],dl
    
    
    mov dl,[ebx + INDX(1,0)] 
    mov [eax+1],dl

    mov dl,[ebx + INDX(2,0)] 
    mov [eax+2],dl

    mov dl,[ebx + INDX(3,0)] 
    mov [eax+3],dl
    
        
    mov edx, 0
    mov ecx, 0
    
    mov edi,_gf_mul
    
    
    mov ecx,0
    mov cl,[eax]
    
    imul cx,6
    add cx,5
    mov dl,[edi+ecx]      
    mov [ebx],dl
    
    mov ecx,0
    mov edx,0    
    mov cl,[eax+1]
    
    imul cx,6
    add cx,3
    mov dl,[edi+ecx]    
    xor [ebx],dl
        
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+2]
    
    imul cx, 6
    add cx, 4
    mov dl, [edi+ecx]
    xor [ebx],dl
        
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+3]
    
    imul cx,6
    add cx, 2
    mov dl, [edi+ecx]
    xor [ebx],dl
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax]
    imul cx,6
    add cx,2
    mov dl , [edi+ecx]
    mov [ebx + INDX(1,0)],dl
        
    mov ecx,0
    mov edx,0        
    mov cl,[eax+1]
    imul cx,6
    add cx,5
    mov dl,[edi+ecx] 
    xor [ebx + INDX(1,0)],dl
    
    
    mov ecx,0
    mov edx,0
        
    mov cl,[eax+2]
    imul cx,6
    add cx,3
    mov dl,[edi+ecx]
    xor [ebx + INDX(1,0)],dl
        
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+3]
    imul cx,6
    add cx,4
    mov dl,[edi+ecx]
    xor [ebx + INDX(1,0)],dl
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax]
    imul cx,6
    add cx,4
    mov dl,[edi+ecx]
    mov [ebx + INDX(2,0)],dl    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+1]
    imul cx,6
    add cx,2
    mov dl,[edi+ecx]
    xor [ebx + INDX(2,0)],dl    
        
    mov ecx,0
    mov edx,0
        
    mov cl,[eax+2]
    imul cx,6
    add cx,5
    mov dl,[edi+ecx]
    xor [ebx + INDX(2,0)],dl
            
    mov ecx,0
    mov edx,0
        
    mov cl,[eax+3]
    imul cx,6
    add cx,3
    mov dl,[edi+ecx] 
    xor [ebx + INDX(2,0)],dl
        
    
    mov ecx,0
    mov edx,0    
    
    mov cl,[eax]
    imul cx,6
    add cx,3
    mov dl,[edi+ecx]    
    mov [ebx + INDX(3,0)],dl    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+1]
    imul cx,6
    add cx,4
    mov dl,[edi+ecx]
    xor [ebx + INDX(3,0)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+2]
    imul cx,6
    add cx,2
    mov dl,[edi+ecx]
    xor [ebx + INDX(3,0)],dl
    
           
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax+3]
    imul cx,6
    add cx,5
    mov dl,[edi+ecx]
    
    xor [ebx + INDX(3,0)],dl
    
    
    ;column2
    
    
    mov dl,[ebx + INDX(0,1)] 
    mov [eax],dl
    
    
    mov dl,[ebx + INDX(1,1)] 
    mov [eax+1],dl
    
    
    mov dl,[ebx + INDX(2,1)] 
    mov [eax+2],dl
        
    mov dl,[ebx + INDX(3,1)] 
    mov [eax+3],dl    
    
    mov edx, 0
    mov ecx, 0
    
    
    mov cl,[eax] 
    imul cx,6
    add cx,5
    mov dl,[edi+ecx]      
    mov [ebx + INDX(0,1)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+1]    
    imul cx,6
    add cx,3
    mov dl,[edi+ecx]    
    xor [ebx + INDX(0,1)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+2]    
    imul cx, 6
    add cx, 4
    mov dl, [edi+ecx]
    xor [ebx + INDX(0,1)],dl
    
    
    mov ecx,0
    mov edx,0
    mov cl,[eax+3]  
    imul cx,6
    add cx, 2
    mov dl, [edi+ecx]
    xor [ebx + INDX(0,1)],dl

    
    mov ecx,0
    mov edx,0    
    mov cl,[eax]
    imul cx,6
    add cx,2
    mov dl , [edi+ecx]
    mov [ebx + INDX(1,1)],dl    
    
    mov ecx,0
    mov edx,0
    mov cl,[eax+1]
    imul cx,6
    add cx,5
    mov dl,[edi+ecx] 
    xor [ebx + INDX(1,1)],dl    
    
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax+2]
    imul cx,6
    add cx,3
    mov dl,[edi+ecx]
    xor [ebx + INDX(1,1)],dl
        
    mov ecx,0
    mov edx,0  
    mov cl,[eax+3]
    imul cx,6
    add cx,4
    mov dl,[edi+ecx]
    xor [ebx + INDX(1,1)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax]
    imul cx,6
    add cx,4
    mov dl,[edi+ecx]
    mov [ebx + INDX(2,1)],dl
        
    
    mov ecx,0
    mov edx,0    
    mov cl,[eax+1]
    imul cx,6
    add cx,2
    mov dl,[edi+ecx]
    xor [ebx + INDX(2,1)],dl
    
    
            
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+2]
    imul cx,6
    add cx,5
    mov dl,[edi+ecx]
    xor [ebx + INDX(2,1)],dl
    
    
    
    mov ecx,0
    mov edx,0
        
    mov cl,[eax+3]
    imul cx,6
    add cx,3
    mov dl,[edi+ecx] 
    xor [ebx + INDX(2,1)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax]
    imul cx,6
    add cx,3
    mov dl,[edi+ecx]    
    mov [ebx + INDX(3,1)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+1]
    imul cx,6
    add cx,4
    mov dl,[edi+ecx]
    xor [ebx + INDX(3,1)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+2]
    imul cx,6
    add cx,2
    mov dl,[edi+ecx]
    xor [ebx + INDX(3,1)],dl
    
    
    
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax+3]
    imul cx,6
    add cx,5
    mov dl,[edi+ecx]
    xor [ebx + INDX(3,1)],dl
     
    
    ;column3
    
        
    mov dl,[ebx + INDX(0,2)] 
    mov [eax],dl
    
    
    mov dl,[ebx + INDX(1,2)] 
    mov [eax+1],dl    
    
    mov dl,[ebx + INDX(2,2)] 
    mov [eax+2],dl
        
    mov dl,[ebx + INDX(3,2)] 
    mov [eax+3],dl
    
    mov edx, 0
    mov ecx, 0
    
    
    mov cl,[eax] 
    imul cx,6
    add cx,5
    mov dl,[edi+ecx]      
    mov [ebx + INDX(0,2)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+1]    
    imul cx,6
    add cx,3
    mov dl,[edi+ecx]    
    xor [ebx + INDX(0,2)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+2]    
    imul cx, 6
    add cx, 4
    mov dl, [edi+ecx]
    xor [ebx + INDX(0,2)],dl
   
     
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+3]  
    imul cx,6
    add cx, 2
    mov dl, [edi+ecx]
    xor [ebx + INDX(0,2)],dl

    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax]
    imul cx,6
    add cx,2
    mov dl , [edi+ecx]
    mov [ebx + INDX(1,2)],dl
    
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax+1]
    imul cx,6
    add cx,5
    mov dl,[edi+ecx] 
    xor [ebx + INDX(1,2)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax+2]
    imul cx,6
    add cx,3
    mov dl,[edi+ecx]
    xor [ebx + INDX(1,2)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+3]
    imul cx,6
    add cx,4
    mov dl,[edi+ecx]
    xor [ebx + INDX(1,2)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax]
    imul cx,6
    add cx,4
    mov dl,[edi+ecx]
    mov [ebx + INDX(2,2)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+1]
    imul cx,6
    add cx,2
    mov dl,[edi+ecx]
    xor [ebx + INDX(2,2)],dl
    
    
    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+2]
    imul cx,6
    add cx,5
    mov dl,[edi+ecx]
    xor [ebx + INDX(2,2)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax+3]
    imul cx,6
    add cx,3
    mov dl,[edi+ecx] 
    xor [ebx + INDX(2,2)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax]
    imul cx,6
    add cx,3
    mov dl,[edi+ecx]    
    mov [ebx + INDX(3,2)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+1]
    imul cx,6
    add cx,4
    mov dl,[edi+ecx]
    xor [ebx + INDX(3,2)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+2]
    imul cx,6
    add cx,2
    mov dl,[edi+ecx]
    xor [ebx + INDX(3,2)],dl
    
       
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax+3]
    imul cx,6
    add cx,5
    mov dl,[edi+ecx]
    xor [ebx + INDX(3,2)],dl
  
    
    ;column4
    
    
    mov dl,[ebx + INDX(0,3)] 
    mov [eax],dl
    
    
    mov dl,[ebx + INDX(1,3)] 
    mov [eax+1],dl
    
    
    mov dl,[ebx + INDX(2,3)] 
    mov [eax+2],dl
    
    
    mov dl,[ebx + INDX(3,3)] 
    mov [eax+3],dl
    

    mov edx, 0
    mov ecx, 0
    
    
    mov cl,[eax] 
    imul cx,6
    add cx,5
    mov dl,[edi+ecx]      
    mov [ebx + INDX(0,3)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+1]    
    imul cx,6
    add cx,3
    mov dl,[edi+ecx]    
    xor [ebx + INDX(0,3)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+2]    
    imul cx, 6
    add cx, 4
    mov dl, [edi+ecx]
    xor [ebx + INDX(0,3)],dl
   
     
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+3]  
    imul cx,6
    add cx, 2
    mov dl, [edi+ecx]
    xor [ebx + INDX(0,3)],dl

    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax]
    imul cx,6
    add cx,2
    mov dl , [edi+ecx]
    mov [ebx + INDX(1,3)],dl
    
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax+1]
    imul cx,6
    add cx,5
    mov dl,[edi+ecx] 
    xor [ebx + INDX(1,3)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax+2]
    imul cx,6
    add cx,3
    mov dl,[edi+ecx]
    xor [ebx + INDX(1,3)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+3]
    imul cx,6
    add cx,4
    mov dl,[edi+ecx]
    xor [ebx + INDX(1,3)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax]
    imul cx,6
    add cx,4
    mov dl,[edi+ecx]
    mov [ebx + INDX(2,3)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+1]
    imul cx,6
    add cx,2
    mov dl,[edi+ecx]
    xor [ebx + INDX(2,3)],dl
    
    
    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+2]
    imul cx,6
    add cx,5
    mov dl,[edi+ecx]
    xor [ebx + INDX(2,3)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax+3]
    imul cx,6
    add cx,3
    mov dl,[edi+ecx] 
    xor [ebx + INDX(2,3)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax]
    imul cx,6
    add cx,3
    mov dl,[edi+ecx]    
    mov [ebx + INDX(3,3)],dl
    
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+1]
    imul cx,6
    add cx,4
    mov dl,[edi+ecx]
    xor [ebx + INDX(3,3)],dl
    
    
    mov ecx,0
    mov edx,0
    
    mov cl,[eax+2]
    imul cx,6
    add cx,2
    mov dl,[edi+ecx]
    xor [ebx + INDX(3,3)],dl
    
    
    mov ecx,0
    mov edx,0
    
    
    mov cl,[eax+3]
    imul cx,6
    add cx,5
    mov dl,[edi+ecx]
    xor [ebx + INDX(3,3)],dl
    
    
    pop ebx
    leave
    ret