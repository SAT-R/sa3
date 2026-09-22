.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

    .global gUnknown_080D03C8
gUnknown_080D03C8:
    .incbin "baserom_sa3.gba", 0x000D03C8, 0x10

    .global gUnknown_080D03D8
gUnknown_080D03D8:
    .incbin "baserom_sa3.gba", 0x000D03D8, 0x10

    .global gUnknown_080D03E8
gUnknown_080D03E8:
    .incbin "baserom_sa3.gba", 0x000D03E8, 0x10

    .global sChaoIATilesInfo
sChaoIATilesInfo:
    .incbin "baserom_sa3.gba", 0x000D03F8, 0x18

@ u8 gUnknown_080D0410[7][10][2];
    .global gUnknown_080D0410
gUnknown_080D0410:
    .incbin "baserom_sa3.gba", 0x000D0410, 0x8C

    .global gUnknown_080D049C
gUnknown_080D049C:
    .incbin "baserom_sa3.gba", 0x000D049C, 0xC
