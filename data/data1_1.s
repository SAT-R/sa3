.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

.if 0
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
.endif
