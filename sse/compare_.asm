; ----------------------------------------------------------------
;
; void compareFloat(float a, float b, int *results);
;
; void compareDouble(double a, double b, int *results);
; ----------------------------------------------------------------

    global  _compareFloat
    global  _compareDouble

    section .text
_compareFloat:
    push    rbp
    mov     rbp, rsp

    xor     eax, eax
    comiss  xmm0, xmm1
    mov     [rdi+0], eax
    mov     [rdi+4], eax
    mov     [rdi+8], eax
    mov     [rdi+12], eax
    mov     [rdi+16], eax
    mov     [rdi+20], eax
    mov     [rdi+24], eax
    setp    [rdi]
    jp     .end
.set_fields:
    setb    [rdi+4]
    setbe   [rdi+8]
    sete    [rdi+12]
    setne   [rdi+16]
    seta    [rdi+20]
    setae   [rdi+24]
.end:
    pop     rbp
    ret

_compareDouble:
    push    rbp
    mov     rbp, rsp

    xor     eax, eax
    comisd  xmm0, xmm1
    mov     [rdi+0], eax
    mov     [rdi+4], eax
    mov     [rdi+8], eax
    mov     [rdi+12], eax
    mov     [rdi+16], eax
    mov     [rdi+20], eax
    mov     [rdi+24], eax
    setp    [rdi]
    jp     .end
.set_fields:
    setb    [rdi+4]
    setbe   [rdi+8]
    sete    [rdi+12]
    setne   [rdi+16]
    seta    [rdi+20]
    setae   [rdi+24]
.end:
    pop     rbp
    ret