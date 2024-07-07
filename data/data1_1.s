.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

@ From sprite.c
    .global unkFractions
unkFractions:
    .incbin "baserom.gba", 0x002B52B4, 0x8

    .global animCmdTable
animCmdTable:
    .incbin "baserom.gba", 0x002B52BC, 0x30

    .global gOamShapesSizes
gOamShapesSizes:
    .incbin "baserom.gba", 0x002B52EC, 0x18


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
