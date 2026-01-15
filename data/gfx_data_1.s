.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

    .global gUnknown_08768FB0
gUnknown_08768FB0:
    .incbin "baserom_sa3.gba", 0x00768FB0, 0x3EE8

    .global gObjTiles_4bpp
gObjTiles_4bpp: @ 0x0876CE98
    .incbin "baserom_sa3.gba", 0x0076CE98, 0x691860

    .global gObjTiles_8bpp
gObjTiles_8bpp:
    .incbin "baserom_sa3.gba", 0x00DFE6F8, 0x11100
