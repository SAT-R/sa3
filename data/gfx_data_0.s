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

    .global gTempLabel__AnimationData
gTempLabel__AnimationData:
    .incbin "baserom_sa3.gba", 0x002DA4F0, 0x55BAC

    .global gAnimations
gAnimations: @ 0x0833009C
    .incbin "baserom_sa3.gba", 0x0033009C, 1524 * 0x4

    .global gSpriteTables
gSpriteTables: @ 0x0833186C
    mPtr gAnimations
    mPtr gSpriteDimensions
    mPtr gSpriteOamData
    mPtr gSpritePalettes
    mPtr gObjTiles_4bpp
    mPtr gObjTiles_8bpp
    mPtr gUnknown_08358528 
@; NOTE: Ref. to gUnknown_08358528 is SA3-only

@ OAM-Data referenced by gSpriteOamData
@    .global spriteOamData_Data
@spriteOamData_Data:
@    .incbin "baserom_sa3.gba", 0x00331888, 0x20FF0
@
@    .global gSpriteOamData
@gSpriteOamData: @ 0x08352878
@    .incbin "baserom_sa3.gba", 0x00352878, 1524 * 0x4
