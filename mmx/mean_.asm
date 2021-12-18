; ----------------------------------------------------------------
;
; void mmxMean(const uint8_t *arr, int length, uint32_t *sum, double *mean);
;
; ----------------------------------------------------------------

    global  _mmxMean

    section .text
_mmxMean:
    push    rbp
    mov     rbp, rsp
    push    rdi

    mov     [rbp-8], rsi
    shr     rsi, 4
    pxor    mm4, mm4        ; mm5:mm4
    pxor    mm5, mm5
    pxor    mm7, mm7

scan_loop:                  ; Scan loop begin
    movq    mm0, [rdi]
    movq    mm1, [rdi+8]
    movq    mm2, mm0
    movq    mm3, mm1
    punpcklbw   mm0, mm7
    punpcklbw   mm1, mm7
    punpckhbw   mm2, mm7
    punpckhbw   mm3, mm7
    paddw   mm0, mm2
    paddw   mm1, mm3
    paddw   mm0, mm1
    movq    mm1, mm0
    punpcklwd   mm0, mm7
    punpckhwd   mm1, mm7
    paddd   mm4, mm0
    paddd   mm5, mm1

    add     rdi, 16
    dec     rsi
    jnz     scan_loop       ; Scan loop end

    paddd   mm5, mm4        ; Sum
    pshufw  mm6, mm5, 00001110b
    paddd   mm6, mm5
    movd    eax, mm6
    mov     dword [rdx], eax    ; Save sum
    emms

    mov     [rbp-16], rax
    fild    qword [rbp-16]
    fild    qword [rbp-8]
    fdivp
    fstp    qword [rcx]

    pop     rdi
    pop     rbp
    ret