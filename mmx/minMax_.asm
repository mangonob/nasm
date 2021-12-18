; ----------------------------------------------------------------
;
; void minMax(uint8_t *arr, int length, uint8_t *min, uint8_t *max);
;
; ----------------------------------------------------------------

    global  _minMax
    section .text
_minMax:
    push    rbp
    mov     rbp, rsp
    push    rdi
    push    rsi

    shr     rsi, 4      ; count = length / 16
    movq    mm2, [rel min]
    movq    mm3, mm2
    movq    mm4, [rel max]
    movq    mm5, mm4

scan_loop:
    movq    mm0, [rdi]
    movq    mm1, [rdi+8]
    pminub  mm2, mm0
    pminub  mm3, mm1
    pmaxub  mm4, mm0
    pmaxub  mm5, mm1

    add     rdi, 16
    dec     rsi
    jnz     scan_loop       ; scan_loop end

; Find min byte
find_min:
    pminub  mm2, mm3
    pshufw  mm0, mm2, 00001110b
    pminub  mm2, mm0
    pshufw  mm0, mm2, 00000001b
    pminub  mm2, mm0
    pextrw  eax, mm2, 0
    cmp     ah, al
    jl      .lesser
    mov     [rdx], al
    jmp     .end
.lesser:
    mov     [rdx], ah
.end:

; Find max byte
find_max:
    pmaxub  mm4, mm5
    pshufw  mm0, mm4, 00001110b
    pmaxub  mm4, mm0
    pshufw  mm0, mm4, 00000001b
    pmaxub  mm4, mm0
    pextrw  eax, mm4, 0
    cmp     ah, al
    jl      .lesser
    mov     [rcx], ah
    jmp     .end
.lesser:
    mov     [rcx], al
.end:

    pop     rsi
    pop     rdi
    pop     rbp
    ret

    section .data
min:
    dq      -1
max:
    dq      0

