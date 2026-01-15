.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

    .global gUnknown_086835B8
gUnknown_086835B8:
    .incbin "baserom_sa3.gba", 0x006835B8, 0xA88


    .global gUnknown_08684040
gUnknown_08684040:
    .incbin "baserom_sa3.gba", 0x00684040, 0x2544

    .global gUnknown_08686584
gUnknown_08686584:
    .incbin "baserom_sa3.gba", 0x00686584, 0x5D18

@ Target of ptr array 'gUnknown_08E7E678'
    .global gUnknown_0868C29C
gUnknown_0868C29C:
    .byte 0x55, 0x01
    
@ Target of ptr array 'gUnknown_08E7E678'
    .global gUnknown_0868C29E
gUnknown_0868C29E:
    .byte 0x55, 0x01
