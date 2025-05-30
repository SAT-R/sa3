.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

    .global gUnknown_082B9CD4
gUnknown_082B9CD4:
    .incbin "baserom.gba", 0x002B9CD4, 0x2045C

    .global gUnknown_082DA130
gUnknown_082DA130:
    .incbin "baserom.gba", 0x002DA130, 0x55F6C

    .global gAnimations
gAnimations: @ 0x0833009C
    .incbin "baserom.gba", 0x0033009C, 1524 * 0x4

    .global gSpriteTables
gSpriteTables: @ 0x0833186C
    .4byte gAnimations
    .4byte gSpriteDimensions
    .4byte gSpriteOamData
    .4byte gSpritePalettes
    .4byte gObjTiles_4bpp
    .4byte gObjTiles_8bpp
    .4byte gUnknown_08358528 @ NOTE: Ref. to gUnknown_08358528 is SA3-only

@ OAM-Data referenced by gSpriteOamData
    .global gUnknown_08331888
gUnknown_08331888:
    .incbin "baserom.gba", 0x00331888, 0x20FF0

    .global gSpriteOamData
gSpriteOamData: @ 0x08352878
    .incbin "baserom.gba", 0x00352878, 1524 * 0x4

    .global gSpritePalettes
gSpritePalettes:
    .incbin "baserom.gba", 0x00354048, 0x44E0

    .global gUnknown_08358528
gUnknown_08358528:
    .incbin "baserom.gba", 0x00358528, 0x28073C

    .global gUnknown_085D8C64
gUnknown_085D8C64:
    .incbin "baserom.gba", 0x005D8C64, 0xAA954

    .global gUnknown_086835B8
gUnknown_086835B8:
    .incbin "baserom.gba", 0x006835B8, 0x281B0

    .global gUnknown_086AB768
gUnknown_086AB768:
    .incbin "baserom.gba", 0x006AB768, 0x42940

    .global gUnknown_086EE0A8
gUnknown_086EE0A8:
    .incbin "baserom.gba", 0x006EE0A8, 0x24D8C

    .global gUnknown_08712E34
gUnknown_08712E34:
    .incbin "baserom.gba", 0x00712E34, 0x79A4

    .global gUnknown_0871A7D8
gUnknown_0871A7D8:
    .incbin "baserom.gba", 0x0071A7D8, 0x79A4

    .global gUnknown_0872217C
gUnknown_0872217C:
    .incbin "baserom.gba", 0x0072217C, 0x7E9C

    .global gUnknown_0872A018
gUnknown_0872A018:
    .incbin "baserom.gba", 0x0072A018, 0x42E80

    .global gObjTiles_4bpp
gObjTiles_4bpp: @ 0x0876CE98
    .incbin "baserom.gba", 0x0076CE98, 0x691860

    .global gObjTiles_8bpp
gObjTiles_8bpp:
    .incbin "baserom.gba", 0x00DFE6F8, 0x2E02C
    
    .global gSpriteDimensions
gSpriteDimensions:
    .incbin "baserom.gba", 0x00E2C724, 1524 * 0x4
