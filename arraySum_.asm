; ----------------------------------------------------------------
; int arraySum(int *a, int length);
; 
; Return: Sum of array a
; ----------------------------------------------------------------

    global  _arraySum

    section .text
_arraySum:
    push    rbp
    mov     rbp, rsp
    push    rbx

    xor     eax, eax
    xor     rbx, rbx

    mov     ecx, esi
loop:
    add     eax, [rdi+rbx]
    add     rbx, 4
    dec     ecx
    jnz     loop
end:
    pop     rbx
    pop     rbp
    ret