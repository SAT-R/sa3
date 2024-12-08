.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

    .global gUnknown_082B5308
gUnknown_082B5308: @ SA2: gUnknown_080984F8
    .ascii "MultiSio4Sio32Load010528\0"
    .align 2, 0
    .ascii "Sio32MultiLoad010214\0"
    .align 2, 0

    .global gUnknown_082B533C
gUnknown_082B533C:
    .ascii "NINTENDO"

    .global gUnknown_082B5344
gUnknown_082B5344:
    .incbin "baserom.gba", 0x002B5344, 0x200

    .global gUnknown_082B5544
gUnknown_082B5544:
    .incbin "baserom.gba", 0x002B5544, 0x4000

    .global gUnknown_082B9544
gUnknown_082B9544:
    .incbin "baserom.gba", 0x002B9544, 0x500
