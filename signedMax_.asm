; ----------------------------------------------------------------
; int signedMax(int a, int b, int c);
; 
; Return: max(a, b, c)
; ----------------------------------------------------------------

    global  _signedMax

    section .text
_signedMax:
    push    rbp
    mov     rbp, rsp

    xor     eax, eax
    cmp     edi, esi
    jl      b_c
    cmp     esi, edx
    jl      a_c
    jmp     a

b_c:
    cmp     esi, edx
    jl      c
    jmp     b

a_c:
    cmp     edi, edx
    jl      c
    jmp     b

a:  mov     eax, edi
    jmp     end
b:  mov     eax, esi
    jmp     end
c:  mov     eax, edx
end:
    pop     rbp
    ret