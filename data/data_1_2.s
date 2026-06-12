.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

    .global gUnknown_080D1C48
gUnknown_080D1C48:
    .incbin "baserom_sa3.gba", 0x000D1C48, 0x2

    .global gUnknown_080D1C4A
gUnknown_080D1C4A:
    .incbin "baserom_sa3.gba", 0x000D1C4A, 0x5E

    .global gUnknown_080D1CA8
gUnknown_080D1CA8:
    .incbin "baserom_sa3.gba", 0x000D1CA8, 0x6

    .global gUnknown_080D1CAE
gUnknown_080D1CAE:
    .incbin "baserom_sa3.gba", 0x000D1CAE, 0x2

    .global gUnknown_080D1CB0
gUnknown_080D1CB0:
    .incbin "baserom_sa3.gba", 0x000D1CB0, 0x2

    .global gUnknown_080D1CB2
gUnknown_080D1CB2:
    .incbin "baserom_sa3.gba", 0x000D1CB2, 0x20

    .global gUnknown_080D1CD2
gUnknown_080D1CD2:
    .incbin "baserom_sa3.gba", 0x000D1CD2, 0x12

    .global gUnknown_080D1CE4
gUnknown_080D1CE4:
    .incbin "baserom_sa3.gba", 0x000D1CE4, 0x6C

    .global gUnknown_080D1D50
gUnknown_080D1D50:
    .incbin "baserom_sa3.gba", 0x000D1D50, 0x8
