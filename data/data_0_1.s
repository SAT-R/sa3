.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

    .global gUnknown_080CF3B8
gUnknown_080CF3B8:
    .incbin "baserom_sa3.gba", 0x000CF3B8, 0x8

    .global gUnknown_080CF3C0
gUnknown_080CF3C0:
    .incbin "baserom_sa3.gba", 0x000CF3C0, 0x60

    .global gUnknown_080CF420
gUnknown_080CF420:
    .incbin "baserom_sa3.gba", 0x000CF420, 0x1E

    .global gUnknown_080CF43E
gUnknown_080CF43E:
    .incbin "baserom_sa3.gba", 0x000CF43E, 0x10

    .global gUnknown_080CF44E
gUnknown_080CF44E:
    .incbin "baserom_sa3.gba", 0x000CF44E, 0x1A

    .global gUnknown_080CF468
gUnknown_080CF468:
    .byte 0x78, 0x90, 0xA8, 0xC0, 0xD8, 0xF0, 0xFF, 0x78

    .global gUnknown_080CF470
gUnknown_080CF470:
    .incbin "baserom_sa3.gba", 0x000CF470, 0x28

    .global sPlatformAnimsDefault
sPlatformAnimsDefault:
    .incbin "baserom_sa3.gba", 0x000CF498, 0x30

    .global sPlatformAnimsHubworld
sPlatformAnimsHubworld:
    .incbin "baserom_sa3.gba", 0x000CF4C8, 0x2A

    .global gUnknown_080CF4F2
gUnknown_080CF4F2:
    .incbin "baserom_sa3.gba", 0x000CF4F2, 0x2A

    .global gUnknown_080CF51C
gUnknown_080CF51C:
    .incbin "baserom_sa3.gba", 0x000CF51C, 0x50

    .global gUnknown_080CF56C
gUnknown_080CF56C:
    .incbin "baserom_sa3.gba", 0x000CF56C, 0x18

    .global sWindupOffsets
sWindupOffsets:
    .incbin "baserom_sa3.gba", 0x000CF584, 0xC

    .global gUnknown_080CF590
gUnknown_080CF590:
    .incbin "baserom_sa3.gba", 0x000CF590, 0x48

    .global gUnknown_080CF5D8
gUnknown_080CF5D8:
    .incbin "baserom_sa3.gba", 0x000CF5D8, 0x60

    .global gUnknown_080CF638
gUnknown_080CF638:
    .incbin "baserom_sa3.gba", 0x000CF638, 0x48

    @ IA065 (CreateEntity_FlatSpring)
    .global sOamFlags
sOamFlags:
    .incbin "baserom_sa3.gba", 0x000CF680, 0x10

    .global gUnknown_080CF690
gUnknown_080CF690:
    .incbin "baserom_sa3.gba", 0x000CF690, 0xC

    .global sTileInfoBtnPlatforms
sTileInfoBtnPlatforms:
    .incbin "baserom_sa3.gba", 0x000CF69C, 0x2C

@ Bonus Capsule Data Start
    .global sTileInfoTimerDigits
sTileInfoTimerDigits:
    .incbin "baserom_sa3.gba", 0x000CF6C8, 21*8

    .global gUnknown_080CF770
gUnknown_080CF770:
    .incbin "baserom_sa3.gba", 0x000CF770, 0x38

    .global gTileInfoAnimals
gTileInfoAnimals:
    .incbin "baserom_sa3.gba", 0x000CF7A8, 0xA8

    .global sSwitchesPositions
sSwitchesPositions:
    .short 144, 62
    .short 112, 96
    .short 90, 128
    .short 176, 96
    .short 198, 128

    .global gUnknown_080CF864
gUnknown_080CF864:
    .incbin "baserom_sa3.gba", 0x000CF864, 0x7

    .global gUnknown_080CF86B
gUnknown_080CF86B:
    .incbin "baserom_sa3.gba", 0x000CF86B, 0x5

    .global gUnknown_080CF870
gUnknown_080CF870:
    .incbin "baserom_sa3.gba", 0x000CF870, 0x30

    .global gUnknown_080CF8A0
gUnknown_080CF8A0:
    .byte 1, 1, 1, 1

    @ Appears to be unused?
    .global gUnknown_080CF8A4
gUnknown_080CF8A4:
    .incbin "baserom_sa3.gba", 0x000CF8A4, 0x18

    .global gUnknown_080CF8BC
gUnknown_080CF8BC:
    .incbin "baserom_sa3.gba", 0x000CF8BC, 0x7A

    .global gUnknown_080CF936
gUnknown_080CF936:
    .incbin "baserom_sa3.gba", 0x000CF936, 0x78

    .global sFrameCountPerSecond
sFrameCountPerSecond:
    .incbin "baserom_sa3.gba", 0x000CF9AE, 0x7A

    .global gUnknown_080CFA28
gUnknown_080CFA28:
    .incbin "baserom_sa3.gba", 0x000CFA28, 0x16

    @ s16 Q_8_8 values
    .global gUnknown_080CFA3E
gUnknown_080CFA3E:
    .incbin "baserom_sa3.gba", 0x000CFA3E, 0x10

    .global gUnknown_080CFA4E
gUnknown_080CFA4E:
    .byte +1, -1

    .global sBonusLifeIconVariants
sBonusLifeIconVariants:
    .incbin "baserom_sa3.gba", 0x000CFA50, 0x8

    .global gUnknown_080CFA58
gUnknown_080CFA58:
    mPtr CreateGmerl1
    .int -1, 0x1D40, 0, 0xC60
    mPtr CreateGmerl1
    .int -1, 0x1FE0, 0, 0xB40
    mPtr CreateGmerl1
    .int -1, 0x32A0, 0, 0x660
    mPtr CreateGmerl1
    .int -1, 0x0960, -1, -1
    mPtr CreateBoss_8068B3C
    .int -1, 0x0960, -1, -1
    mPtr CreateBoss_806A90C
    .int -1, -1, -1, -1
    mPtr CreateBoss_806D1A0
    .int -1, -1, -1, -1
    mPtr CreateBoss_806EADC
    .int -1, 0x8A0, -1, -1
    mPtr CreateBoss_8071A08
    .int -1, 0x7E0, -1, -1
    mPtr CreateBoss_8073640
    .int -1, 0x9C0, 0, 0x1E0
    mPtr CreateBoss_8074E88
    .int -1, 0x6C0, -1, -1
    mPtr CreateBoss_80581C8
    .int -1, -1, -1, -1
    mPtr NULL
    .int 0, 0, 0, 0
    mPtr NULL
    .int 0, 0, 0, 0
    mPtr NULL
    .int 0, 0, 0, 0
    mPtr NULL
    .int 0, 0, 0, 0
    mPtr NULL
    .int 0, 0, 0, 0
    mPtr CreateGoalRing
    .int -1, -1, -1, -1

    .global sUfoActs
sUfoActs:
    .short 7, 8, 9, 0
    
    .global gUnknown_080CFBC8
gUnknown_080CFBC8:
    .incbin "baserom_sa3.gba", 0x000CFBC8, 0xC
        
    .global gUnknown_080CFBD4
gUnknown_080CFBD4:
    .incbin "baserom_sa3.gba", 0x000CFBD4, 0x24

    .global gUnknown_080CFBF8
gUnknown_080CFBF8:
    .incbin "baserom_sa3.gba", 0x000CFBF8, 0x12

    .global gUnknown_080CFC0A
gUnknown_080CFC0A:
    .incbin "baserom_sa3.gba", 0x000CFC0A, 0x24

    .global gUnknown_080CFC2E
gUnknown_080CFC2E:
    .incbin "baserom_sa3.gba", 0x000CFC2E, 0x12

    .global gUnknown_080CFC40
gUnknown_080CFC40:
    .incbin "baserom_sa3.gba", 0x000CFC40, 0x30

    .global gUnknown_080CFC70
gUnknown_080CFC70:
    .incbin "baserom_sa3.gba", 0x000CFC70, 0x1E
    
    .global gUnknown_080CFC8E
gUnknown_080CFC8E:
    .incbin "baserom_sa3.gba", 0x000CFC8E, 0x24

    .global gUnknown_080CFCB2
gUnknown_080CFCB2:
    .incbin "baserom_sa3.gba", 0x000CFCB2, 0x1E

    .global gUnknown_080CFCD0
gUnknown_080CFCD0:
    .incbin "baserom_sa3.gba", 0x000CFCD0, 0x18

    .global gUnknown_080CFCE8
gUnknown_080CFCE8:
    .incbin "baserom_sa3.gba", 0x000CFCE8, 0x1E

    .global gUnknown_080CFD06
gUnknown_080CFD06:
    .incbin "baserom_sa3.gba", 0x000CFD06, 0x3C

    .global gUnknown_080CFD42
gUnknown_080CFD42:
    .incbin "baserom_sa3.gba", 0x000CFD42, 0x1E

    .global gUnknown_080CFD60
gUnknown_080CFD60:
    .incbin "baserom_sa3.gba", 0x000CFD60, 0x18

    .global gUnknown_080CFD78
gUnknown_080CFD78:
    .incbin "baserom_sa3.gba", 0x000CFD78, 0x42

    .global gUnknown_080CFDBA
gUnknown_080CFDBA:
    .incbin "baserom_sa3.gba", 0x000CFDBA, 0x24

    .global gUnknown_080CFDDE
gUnknown_080CFDDE:
    .incbin "baserom_sa3.gba", 0x000CFDDE, 0x12

    .global gUnknown_080CFDF0
gUnknown_080CFDF0:
    .incbin "baserom_sa3.gba", 0x000CFDF0, 0x24

    .global gUnknown_080CFE14
gUnknown_080CFE14:
    .incbin "baserom_sa3.gba", 0x000CFE14, 0x12

    .global gUnknown_080CFE26
gUnknown_080CFE26:
    .incbin "baserom_sa3.gba", 0x000CFE26, 0x1E

    .global gUnknown_080CFE44
gUnknown_080CFE44:
    .incbin "baserom_sa3.gba", 0x000CFE44, 0x12

    .global gUnknown_080CFE56
gUnknown_080CFE56:
    .incbin "baserom_sa3.gba", 0x000CFE56, 0x18

    .global gUnknown_080CFE6E
gUnknown_080CFE6E:
    .incbin "baserom_sa3.gba", 0x000CFE6E, 0x1E

    .global gUnknown_080CFE8C
gUnknown_080CFE8C:
    .incbin "baserom_sa3.gba", 0x000CFE8C, 0x1E

    .global gUnknown_080CFEAA
gUnknown_080CFEAA:
    .incbin "baserom_sa3.gba", 0x000CFEAA, 0x1E

    .global gUnknown_080CFEC8
gUnknown_080CFEC8:
    .incbin "baserom_sa3.gba", 0x000CFEC8, 0x24

    .global gUnknown_080CFEEC
gUnknown_080CFEEC:
    .incbin "baserom_sa3.gba", 0x000CFEEC, 0x1E

    .global gUnknown_080CFF0A
gUnknown_080CFF0A:
    .incbin "baserom_sa3.gba", 0x000CFF0A, 0x18

    .global gUnknown_080CFF22
gUnknown_080CFF22:
    .incbin "baserom_sa3.gba", 0x000CFF22, 0x24

    .global gUnknown_080CFF46
gUnknown_080CFF46:
    .incbin "baserom_sa3.gba", 0x000CFF46, 0x18

    .global gUnknown_080CFF5E
gUnknown_080CFF5E:
    .incbin "baserom_sa3.gba", 0x000CFF5E, 0x1E

    .global gUnknown_080CFF7C
gUnknown_080CFF7C:
    .incbin "baserom_sa3.gba", 0x000CFF7C, 0x12

    .global gUnknown_080CFF8E
gUnknown_080CFF8E:
    .incbin "baserom_sa3.gba", 0x000CFF8E, 0x1E

    .global gUnknown_080CFFAC
gUnknown_080CFFAC:
    .incbin "baserom_sa3.gba", 0x000CFFAC, 0x18

    .global gUnknown_080CFFC4
gUnknown_080CFFC4:
    .incbin "baserom_sa3.gba", 0x000CFFC4, 0x12

    .global gUnknown_080CFFD6
gUnknown_080CFFD6:
    .incbin "baserom_sa3.gba", 0x000CFFD6, 0x1E

    .global gUnknown_080CFFF4
gUnknown_080CFFF4:
    .incbin "baserom_sa3.gba", 0x000CFFF4, 0x12

    .global gUnknown_080D0006
gUnknown_080D0006:
    .incbin "baserom_sa3.gba", 0x000D0006, 0x12

    .global gUnknown_080D0018
gUnknown_080D0018:
    .incbin "baserom_sa3.gba", 0x000D0018, 0x12

    .global gUnknown_080D002A
gUnknown_080D002A:
    .incbin "baserom_sa3.gba", 0x000D002A, 0x2A

    .global gUnknown_080D0054
gUnknown_080D0054:
    .incbin "baserom_sa3.gba", 0x000D0054, 0x1E

    .global gUnknown_080D0072
gUnknown_080D0072:
    .incbin "baserom_sa3.gba", 0x000D0072, 0x18

    .global gUnknown_080D008A
gUnknown_080D008A:
    .incbin "baserom_sa3.gba", 0x000D008A, 0x2A

    .global gUnknown_080D00B4
gUnknown_080D00B4:
    .incbin "baserom_sa3.gba", 0x000D00B4, 0x18

    .global gUnknown_080D00CC
gUnknown_080D00CC:
    .incbin "baserom_sa3.gba", 0x000D00CC, 0x12

    .global gUnknown_080D00DE
gUnknown_080D00DE:
    .incbin "baserom_sa3.gba", 0x000D00DE, 0x1E

    .global gUnknown_080D00FC
gUnknown_080D00FC:
    .incbin "baserom_sa3.gba", 0x000D00FC, 0x12

    .global gUnknown_080D010E
gUnknown_080D010E:
    .incbin "baserom_sa3.gba", 0x000D010E, 0x24

    .global gUnknown_080D0132
gUnknown_080D0132:
    .incbin "baserom_sa3.gba", 0x000D0132, 0x12
    
    .global gUnknown_080D0144
gUnknown_080D0144:
    .short 0x0040, 0x0020, 0x0020

    mAlignWord
    .global gUnknown_080D014C
gUnknown_080D014C:
    .incbin "baserom_sa3.gba", 0x000D014C, 0x1C0

    .global gUnknown_080D030C
gUnknown_080D030C:
    .incbin "baserom_sa3.gba", 0x000D030C, 0x1C

    .global gUnknown_080D0328
gUnknown_080D0328:
    .incbin "baserom_sa3.gba", 0x000D0328, 0x8

    .global gUnknown_080D0330
gUnknown_080D0330:
    .incbin "baserom_sa3.gba", 0x000D0330, 0x80

    .global gUnknown_080D03B0
gUnknown_080D03B0:
    .byte 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1

    .global gUnknown_080D03C0
gUnknown_080D03C0:
    .byte 1, 2, 2, 1, 3, 1, 0, 0

    .global gUnknown_080D03C8
gUnknown_080D03C8:
    .incbin "baserom_sa3.gba", 0x000D03C8, 0x10

    .global gUnknown_080D03D8
gUnknown_080D03D8:
    .incbin "baserom_sa3.gba", 0x000D03D8, 0x10

    .global gUnknown_080D03E8
gUnknown_080D03E8:
    .incbin "baserom_sa3.gba", 0x000D03E8, 0x10

    .global sChaoIATilesInfo
sChaoIATilesInfo:
    .incbin "baserom_sa3.gba", 0x000D03F8, 0x18

@ u8 gUnknown_080D0410[7][10][2];
    .global gUnknown_080D0410
gUnknown_080D0410:
    .incbin "baserom_sa3.gba", 0x000D0410, 0x8C

    .global gUnknown_080D049C
gUnknown_080D049C:
    .incbin "baserom_sa3.gba", 0x000D049C, 0xC

    .global gUnknown_080D04A8
gUnknown_080D04A8:
    .incbin "baserom_sa3.gba", 0x000D04A8, 0x100

    .global gUnknown_080D05A8
gUnknown_080D05A8:
    .incbin "baserom_sa3.gba", 0x000D05A8, 0x124

@ Pointer-Array
@ (73*2) * sizeof(uintptr_t) @; 73 = Stage count, 2 = procedures per stage
@ [i][0] = StageBackground Init
@ [i][1] = StageBackground Update
    .global gUnknown_080D06CC
gUnknown_080D06CC:
    mPtr NULL
    mPtr NULL
    mPtr sub_805068C
    mPtr sub_80512D8
    mPtr sub_8050628
    mPtr sub_805130C
    mPtr sub_805068C
    mPtr sub_80506E8
    mPtr sub_805068C
    mPtr sub_80506E8
    mPtr sub_805068C
    mPtr sub_80506E8
    mPtr NULL
    mPtr NULL
    mPtr sub_805146C
    mPtr sub_80514A0
    mPtr sub_8050570
    mPtr sub_805129C
    mPtr sub_80505CC
    mPtr sub_80512AC
    mPtr NULL
    mPtr NULL
    mPtr sub_8050440
    mPtr sub_80512F4
    mPtr sub_8050628
    mPtr sub_8051344
    mPtr sub_8050804
    mPtr sub_80514C0
    mPtr sub_8050804
    mPtr sub_80514C0
    mPtr sub_8050804
    mPtr sub_80514C0
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr sub_8050570
    mPtr sub_805129C
    mPtr sub_80505CC
    mPtr sub_80512AC
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr sub_8050628
    mPtr sub_805137C
    mPtr sub_8050864
    mPtr sub_80508D4
    mPtr sub_8050864
    mPtr sub_80508D4
    mPtr sub_8050864
    mPtr sub_80508D4
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr sub_8050570
    mPtr sub_805129C
    mPtr sub_80505CC
    mPtr sub_80512AC
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr sub_8050628
    mPtr sub_80513B4
    mPtr sub_80509B4
    mPtr sub_8050A0C
    mPtr sub_80509B4
    mPtr sub_8050A0C
    mPtr sub_80509B4
    mPtr sub_8050A0C
    mPtr NULL
    mPtr NULL
    mPtr sub_80511E4
    mPtr sub_8051514
    mPtr sub_8050570
    mPtr sub_805129C
    mPtr sub_80505CC
    mPtr sub_80512AC
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr sub_8050628
    mPtr sub_80513EC
    mPtr sub_8050B14
    mPtr sub_8050B84
    mPtr sub_8050B14
    mPtr sub_8050B84
    mPtr sub_8050B14
    mPtr sub_8050B84
    mPtr NULL
    mPtr NULL
    mPtr sub_8050CA4
    mPtr sub_8051534
    mPtr sub_8050570
    mPtr sub_805129C
    mPtr sub_80505CC
    mPtr sub_80512AC
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr sub_8050628
    mPtr sub_80513FC
    mPtr sub_805120C
    mPtr sub_8050D40
    mPtr sub_805120C
    mPtr sub_8050D40
    mPtr sub_805120C
    mPtr sub_8050D40
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr sub_8050570
    mPtr sub_805129C
    mPtr sub_80505CC
    mPtr sub_80512AC
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr sub_8050628
    mPtr sub_8051418
    mPtr sub_8050E18
    mPtr sub_8051558
    mPtr sub_8050E18
    mPtr sub_80515A0
    mPtr sub_8050E18
    mPtr sub_8050E78
    mPtr NULL
    mPtr NULL
    mPtr sub_8051250
    mPtr sub_80515FC
    mPtr sub_8050570
    mPtr sub_805129C
    mPtr sub_80505CC
    mPtr sub_80512AC
    mPtr NULL
    mPtr NULL
    mPtr sub_8051634
    mPtr sub_8051660
    mPtr sub_8051094
    mPtr sub_8051664

    .global gUnknown_080D0914
gUnknown_080D0914:
    .incbin "baserom_sa3.gba", 0x000D0914, 0xC

    .global gUnknown_080D0920
gUnknown_080D0920:
    .incbin "baserom_sa3.gba", 0x000D0920, 0xC

    .global gUnknown_080D092C
gUnknown_080D092C:
    .incbin "baserom_sa3.gba", 0x000D092C, 0x20

    .global gUnknown_080D094C
gUnknown_080D094C:
    .incbin "baserom_sa3.gba", 0x000D094C, 0x20

    .global gUnknown_080D096C
gUnknown_080D096C:
    .incbin "baserom_sa3.gba", 0x000D096C, 0x20

    .global gUnknown_080D098C
gUnknown_080D098C:
    .incbin "baserom_sa3.gba", 0x000D098C, 0x20
