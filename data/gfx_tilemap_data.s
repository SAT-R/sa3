.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

@ --- This is after the tilemap-data ---

    .global gUnknown_08360BCC
gUnknown_08360BCC: @ --> 0x085D8C64
    .incbin "baserom_sa3.gba", 0x0038B978, 0x24D2EC
