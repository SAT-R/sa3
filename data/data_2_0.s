.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

    mAlignWord
    .global gUnknown_082B5344
gUnknown_082B5344:
    .incbin "baserom_sa3.gba", 0x002B5344, 0x200

    .global gUnknown_082B5544
gUnknown_082B5544:
    .incbin "baserom_sa3.gba", 0x002B5544, 0x4000

    .global gUnknown_082B9544
gUnknown_082B9544:
    .incbin "baserom_sa3.gba", 0x002B9544, 0x500
