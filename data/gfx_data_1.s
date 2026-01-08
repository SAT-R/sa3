.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

    .global gUnknown_085D8C64
gUnknown_085D8C64:
    .incbin "baserom_sa3.gba", 0x005D8C64, 0xAA954

    .global gUnknown_086835B8
gUnknown_086835B8:
    .incbin "baserom_sa3.gba", 0x006835B8, 0x281B0

    .global gUnknown_086AB768
gUnknown_086AB768:
    .incbin "baserom_sa3.gba", 0x006AB768, 0x42940

    .global gUnknown_086EE0A8
gUnknown_086EE0A8:
    .incbin "baserom_sa3.gba", 0x006EE0A8, 0x24D8C

    .global gUnknown_08712E34
gUnknown_08712E34:
    .incbin "baserom_sa3.gba", 0x00712E34, 0x79A4

    .global gUnknown_0871A7D8
gUnknown_0871A7D8:
    .incbin "baserom_sa3.gba", 0x0071A7D8, 0x79A4

    .global gUnknown_0872217C
gUnknown_0872217C:
    .incbin "baserom_sa3.gba", 0x0072217C, 0x7E9C

    .global gUnknown_0872A018
gUnknown_0872A018:
    .incbin "baserom_sa3.gba", 0x0072A018, 0x42E80

    .global gObjTiles_4bpp
gObjTiles_4bpp: @ 0x0876CE98
    .incbin "baserom_sa3.gba", 0x0076CE98, 0x691860

    .global gObjTiles_8bpp
gObjTiles_8bpp:
    .incbin "baserom_sa3.gba", 0x00DFE6F8, 0x11100
