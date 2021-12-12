; ----------------------------------------------------------------
;
; int arrayCmp(int *a, int sizeA, int *b, int sizeB);
;
; int min(int a, int b);
;
; void arrayReverse(int *a, int size);
;
; ----------------------------------------------------------------

    global  _arrayCmp
    global  _arrayReverse
    global  _min

    section .text
_arrayCmp:
    push    rbp
    mov     rbp, rsp

    push    rdi
    push    rsi
    mov     edi, esi
    mov     esi, ecx
    call    _min
    pop     rsi
    pop     rdi

    push    rsi
    push    rcx
    mov     rsi, rdx
    mov     ecx, eax
    cld
    repe    cmpsd
    pop     rcx
    pop     rsi
    jg      .greater
    jl      .lesser

    cmp     esi, ecx
    jg      .greater
    jl      .lesser

    xor     eax, eax
    jmp     .end
.greater:
    mov     eax, -1
    jmp     .end
.lesser:
    mov     eax, 1
.end:
    pop     rbp
    ret

_min:
    push    rbp
    mov     rbp, rsp

    cmp     edi, esi
    jg      .greater
    jl      .lesser
    mov     eax, edi
    jmp     .end
.greater:
    mov     eax, esi
    jmp     .end
.lesser:
    mov     eax, edi
.end:
    pop     rbp
    ret