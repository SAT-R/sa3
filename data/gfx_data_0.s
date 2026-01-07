.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

    .global gUnknown_082B9CD4
gUnknown_082B9CD4:
    .incbin "baserom_sa3.gba", 0x002B9CD4, 0x2045C

    .global gUnknown_082DA130
gUnknown_082DA130:
    .incbin "baserom_sa3.gba", 0x002DA130, 0x3C0
