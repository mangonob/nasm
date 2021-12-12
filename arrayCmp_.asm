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

_arrayReverse:              ; Produce of reverse array
    push    rbp
    mov     rbp, rsp
    push    rbx
    push    rsi
    push    rdi

    mov     ecx, esi        ; Set size to ecx
    mov     rsi, rdi
    mov     ebx, ecx
    dec     ebx
    imul    ebx, 4
    add     rsi, rbx 
    sar     ecx, 1
.loop:
    mov     ebx, [rdi]
    mov     eax, [rsi]
    mov     [rdi], eax 
    mov     [rsi], ebx
    add     rdi, 4
    sub     rsi, 4
    dec     ecx
    jnz     .loop

    pop     rdi
    pop     rsi
    pop     rbx
    pop     rbp
    ret