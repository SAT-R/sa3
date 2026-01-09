.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

@ --- This is after the tilemap-data ---

    .global gUnknown_083B44BC
gUnknown_083B44BC: @ --> 0x085D8C64
    .incbin "baserom_sa3.gba", 0x003FCC64, 0x1DC000
