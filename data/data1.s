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

    .global gUnknown_082B48B4
gUnknown_082B48B4:
    .incbin "baserom.gba", 0x002B48B4, 0xA00

    .global gUnknown_082B52B4
gUnknown_082B52B4:
    .incbin "baserom.gba", 0x002B52B4, 0x8

    .global gUnknown_082B52BC
gUnknown_082B52BC:
    .incbin "baserom.gba", 0x002B52BC, 0x30

    .global gUnknown_082B52EC
gUnknown_082B52EC:
    .incbin "baserom.gba", 0x002B52EC, 0x1

    .global gUnknown_082B52ED
gUnknown_082B52ED:
    .incbin "baserom.gba", 0x002B52ED, 0x17

    .global gUnknown_082B5304
gUnknown_082B5304:
    .incbin "baserom.gba", 0x002B5304, 0x38

    .global gUnknown_082B533C
gUnknown_082B533C:
    .incbin "baserom.gba", 0x002B533C, 0x8

    .global gUnknown_082B5344
gUnknown_082B5344:
    .incbin "baserom.gba", 0x002B5344, 0x200

    .global gUnknown_082B5544
gUnknown_082B5544:
    .incbin "baserom.gba", 0x002B5544, 0x4000

    .global gUnknown_082B9544
gUnknown_082B9544:
    .incbin "baserom.gba", 0x002B9544, 0x500
