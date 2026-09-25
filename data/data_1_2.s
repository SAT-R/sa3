.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

@    .global gUnknown_080D1C48
@gUnknown_080D1C48:
@    .incbin "baserom_sa3.gba", 0x000D1C48, 0x60

    .global gUnknown_080D1CA8
gUnknown_080D1CA8:
    .byte 48, 48, 48, 56, 45

    .align 1
    .global gUnknown_080D1CAE
gUnknown_080D1CAE:
    .incbin "baserom_sa3.gba", 0x000D1CAE, 0x24

    .global gUnknown_080D1CD2
gUnknown_080D1CD2:
    .incbin "baserom_sa3.gba", 0x000D1CD2, 0x12

    .global gUnknown_080D1CE4
gUnknown_080D1CE4:
    .incbin "baserom_sa3.gba", 0x000D1CE4, 0x6C

    .global gUnknown_080D1D50
gUnknown_080D1D50:
    .incbin "baserom_sa3.gba", 0x000D1D50, 0x8
