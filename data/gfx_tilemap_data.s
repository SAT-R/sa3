.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

@ --- This is after the tilemap-data ---

    .global gUnknown_08394A4C
gUnknown_08394A4C: @ --> 0x085D8C64
    .incbin "baserom_sa3.gba", 0x003AA2BC, 0x22E9A8
