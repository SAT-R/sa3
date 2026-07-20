.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

@ --- Bosses Start ---
.if 0
.endif

    .global gUnknown_080D56DC
gUnknown_080D56DC:
    .incbin "baserom_sa3.gba", 0x000D56DC, 0x14

    .global gUnknown_080D56F0
gUnknown_080D56F0:
    .incbin "baserom_sa3.gba", 0x000D56F0, 0x34

    .global gUnknown_080D5724
gUnknown_080D5724:
    .incbin "baserom_sa3.gba", 0x000D5724, 0x8

    .global gUnknown_080D572C
gUnknown_080D572C:
    .incbin "baserom_sa3.gba", 0x000D572C, 0x10

    .global gUnknown_080D573C
gUnknown_080D573C:
    .incbin "baserom_sa3.gba", 0x000D573C, 0x10

    .global gUnknown_080D574C
gUnknown_080D574C:
    .incbin "baserom_sa3.gba", 0x000D574C, 0x10

    .global gUnknown_080D575C
gUnknown_080D575C:
    .incbin "baserom_sa3.gba", 0x000D575C, 0x24

    .global gUnknown_080D5780
gUnknown_080D5780:
    .incbin "baserom_sa3.gba", 0x000D5780, 0x40

    .global gUnknown_080D57C0
gUnknown_080D57C0:
    .incbin "baserom_sa3.gba", 0x000D57C0, 0x5

    .global gUnknown_080D57C5
gUnknown_080D57C5:
    .incbin "baserom_sa3.gba", 0x000D57C5, 0x7
