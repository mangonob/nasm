; ------------------------------------------------------------
; int memoryAddress(int n)
;
; Return: 
;   fibonacci (n)
; ------------------------------------------------------------

    global      _memoryAddress

    section .text
_memoryAddress:
    push    rbp
    mov     rbp, rsp

    xor     eax, eax
    cmp     edi, 0
    jl      end
    cmp     edi, [rel length]
    jge     end

    lea     rbx, [rel fibVals]
    mov     ax, [rbx+rdi*2]
end:
    pop     rbp
    ret

    section .data
fibVals:
    dw  0, 1, 1, 2, 3, 5, 8, 13
    dw  21, 34, 55, 89, 144, 233, 377, 610
length:
    dw ($ - fibVals) / 2
