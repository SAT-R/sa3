.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

    .global gUnknown_082B483C
gUnknown_082B483C:
    .incbin "baserom.gba", 0x002B483C, 0x38

    .global gUnknown_082B4874
gUnknown_082B4874:
    .incbin "baserom.gba", 0x002B4874, 0x10

    .global gUnknown_082B4884
gUnknown_082B4884:
    .incbin "baserom.gba", 0x002B4884, 0x30
