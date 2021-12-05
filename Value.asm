; ----------------------------------------------------------------

struc   Value
    .val8:   
            resb    1
            alignb  2
    .val16: resw    1
    .val32: resd    1
    .val64: resd    2
endstruc
