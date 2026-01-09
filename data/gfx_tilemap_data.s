.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

@ --- This is after the tilemap-data ---

    .global gUnknown_0838B978
gUnknown_0838B978: @ --> 0x085D8C64
    .incbin "baserom_sa3.gba", 0x0038FDDC, 0x248E88
