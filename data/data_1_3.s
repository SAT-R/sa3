.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

@ --- Main Menu ---
    .global gUnknown_080D6114
gUnknown_080D6114:
    .incbin "baserom_sa3.gba", 0x000D6114, 0x60

    .global gUnknown_080D6174
gUnknown_080D6174:
    .incbin "baserom_sa3.gba", 0x000D6174, 0x60

    .global gUnknown_080D61D4
gUnknown_080D61D4:
    .incbin "baserom_sa3.gba", 0x000D61D4, 0x60

    .global gUnknown_080D6234
gUnknown_080D6234:
    .incbin "baserom_sa3.gba", 0x000D6234, 0x60

    .global gUnknown_080D6294
gUnknown_080D6294:
    .incbin "baserom_sa3.gba", 0x000D6294, 0x60

    .global gUnknown_080D62F4
gUnknown_080D62F4:
    .incbin "baserom_sa3.gba", 0x000D62F4, 0x60

    .global gUnknown_080D6354
gUnknown_080D6354:
    .incbin "baserom_sa3.gba", 0x000D6354, 0x60

    .global gUnknown_080D63B4
gUnknown_080D63B4:
    .incbin "baserom_sa3.gba", 0x000D63B4, 0x60

    .global gUnknown_080D6414
gUnknown_080D6414:
    .incbin "baserom_sa3.gba", 0x000D6414, 0x60

    .global gUnknown_080D6474
gUnknown_080D6474:
    .incbin "baserom_sa3.gba", 0x000D6474, 0x60

    .global gUnknown_080D64D4
gUnknown_080D64D4:
    .incbin "baserom_sa3.gba", 0x000D64D4, 0x60

    .global gUnknown_080D6534
gUnknown_080D6534:
    .incbin "baserom_sa3.gba", 0x000D6534, 0x60

    .global gUnknown_080D6594
gUnknown_080D6594:
    .incbin "baserom_sa3.gba", 0x000D6594, 0x60

    .global gUnknown_080D65F4
gUnknown_080D65F4:
    .incbin "baserom_sa3.gba", 0x000D65F4, 0x60

    .global gUnknown_080D6654
gUnknown_080D6654:
    .incbin "baserom_sa3.gba", 0x000D6654, 0x20

    .global gUnknown_080D6674
gUnknown_080D6674:
    .incbin "baserom_sa3.gba", 0x000D6674, 0x20

    .global gUnknown_080D6694
gUnknown_080D6694:
    .incbin "baserom_sa3.gba", 0x000D6694, 0x20

    .global sAnimsMenuChao
sAnimsMenuChao:
    .incbin "baserom_sa3.gba", 0x000D66B4, 0x10

    .global gUnknown_080D66C4
gUnknown_080D66C4:
    .incbin "baserom_sa3.gba", 0x000D66C4, 0x8

    .global gUnknown_080D66CC
gUnknown_080D66CC:
    .incbin "baserom_sa3.gba", 0x000D66CC, 0xC

    .global gUnknown_080D66D8
gUnknown_080D66D8:
    .incbin "baserom_sa3.gba", 0x000D66D8, 0x80

    .global gUnknown_080D6758
gUnknown_080D6758:
    mPtr Task_3F0_8088770
    mPtr Task_3F0_8087B80
    mPtr Task_3F0_8087B80
    mPtr Task_3F0_8087B80
    mPtr Task_3F0_8088440
    mPtr Task_3F0_80885CC

    .global gUnknown_080D6770
gUnknown_080D6770:
    .incbin "baserom_sa3.gba", 0x000D6770, 0x10

    .global gUnknown_080D6780
gUnknown_080D6780:
    .incbin "baserom_sa3.gba", 0x000D6780, 0x18

    .global gUnknown_080D6798
gUnknown_080D6798:
    .incbin "baserom_sa3.gba", 0x000D6798, 0x30

    .global gUnknown_080D67C8
gUnknown_080D67C8:
    .incbin "baserom_sa3.gba", 0x000D67C8, 0x30

    .global gUnknown_080D67F8
gUnknown_080D67F8:
    .incbin "baserom_sa3.gba", 0x000D67F8, 0x30

    .global gUnknown_080D6828
gUnknown_080D6828:
    .incbin "baserom_sa3.gba", 0x000D6828, 0x30

    .global gUnknown_080D6858
gUnknown_080D6858:
    .incbin "baserom_sa3.gba", 0x000D6858, 0x40

    .global gUnknown_080D6898
gUnknown_080D6898:
    .incbin "baserom_sa3.gba", 0x000D6898, 0x30

    .global gUnknown_080D68C8
gUnknown_080D68C8:
    .incbin "baserom_sa3.gba", 0x000D68C8, 0x8

    .global gUnknown_080D68D0
gUnknown_080D68D0:
    .incbin "baserom_sa3.gba", 0x000D68D0, 0x10

    .global gUnknown_080D68E0
gUnknown_080D68E0:
    .incbin "baserom_sa3.gba", 0x000D68E0, 0x22

    .global gUnknown_080D6902
gUnknown_080D6902:
    .incbin "baserom_sa3.gba", 0x000D6902, 0xC

    .global gUnknown_080D690E
gUnknown_080D690E:
    .incbin "baserom_sa3.gba", 0x000D690E, 0xE

    .global gUnknown_080D691C
gUnknown_080D691C:
    .incbin "baserom_sa3.gba", 0x000D691C, 0x30

    .global gUnknown_080D694C
gUnknown_080D694C:
    .incbin "baserom_sa3.gba", 0x000D694C, 0xA

    .global gUnknown_080D6956
gUnknown_080D6956:
    .incbin "baserom_sa3.gba", 0x000D6956, 0xA

    .global gUnknown_080D6960
gUnknown_080D6960:
    .incbin "baserom_sa3.gba", 0x000D6960, 0x180

    .global gUnknown_080D6AE0
gUnknown_080D6AE0:
    .incbin "baserom_sa3.gba", 0x000D6AE0, 0x8

    .global gUnknown_080D6AE8
gUnknown_080D6AE8:
    .incbin "baserom_sa3.gba", 0x000D6AE8, 0x60

    .global gUnknown_080D6B48
gUnknown_080D6B48:
    .incbin "baserom_sa3.gba", 0x000D6B48, 0x60

    .global gUnknown_080D6BA8
gUnknown_080D6BA8:
    .incbin "baserom_sa3.gba", 0x000D6BA8, 0x30

    .global gUnknown_080D6BD8
gUnknown_080D6BD8:
    .incbin "baserom_sa3.gba", 0x000D6BD8, 0x30

    .global gUnknown_080D6C08
gUnknown_080D6C08:
    .incbin "baserom_sa3.gba", 0x000D6C08, 0x14

    .global gOptionsBgPalette
gOptionsBgPalette:
    .incbin "baserom_sa3.gba", 0x000D6C1C, 0x200

    .global sOptionsSlideInits
sOptionsSlideInits:
    mPtr Options_PlayerData
    mPtr Options_Difficulty
    mPtr Options_TimeUp
    mPtr Options_Language
    mPtr Options_ButtonConfig
    mPtr Options_SoundTest
    mPtr Options_DeleteSaveData

    .global gUnknown_080D6E38
gUnknown_080D6E38:
    mPtr sub_808C390
    mPtr sub_808C424
    mPtr sub_808C424
    mPtr sub_808C514
    mPtr sub_808C5D4
    mPtr sub_808CE88
    mPtr sub_808C704

    .global gUnknown_080D6E54
gUnknown_080D6E54:
    .incbin "baserom_sa3.gba", 0x000D6E54, 0x80

    .global gUnknown_080D6ED4
gUnknown_080D6ED4:
    .incbin "baserom_sa3.gba", 0x000D6ED4, 0xC

    .global gUnknown_080D6EE0
gUnknown_080D6EE0:
    .incbin "baserom_sa3.gba", 0x000D6EE0, 0x8

    .global gUnknown_080D6EE8
gUnknown_080D6EE8:
    .incbin "baserom_sa3.gba", 0x000D6EE8, 0x18

    .global gUnknown_080D6F00
gUnknown_080D6F00:
    .incbin "baserom_sa3.gba", 0x000D6F00, 0xC

    .global gUnknown_080D6F0C
gUnknown_080D6F0C:
    .incbin "baserom_sa3.gba", 0x000D6F0C, 0x18

    .global gStringSelectStage
gStringSelectStage:
    .ascii "SELECT STAGE\0"
    mAlignWord

    .global gStringZoneNActN
gStringZoneNActN:
    .ascii "ZONE %d  ACT %d\0"
    mAlignWord

    .global gStringPressABtn
gStringPressABtn:
    .ascii "PRESS A BTN\0"

    .global gStringPleaseWait
gStringPleaseWait:
    .ascii "PLEASE WAIT\0"
    mAlignWord

    .global gUnknown_080D6F5C
gUnknown_080D6F5C:
    .incbin "baserom_sa3.gba", 0x000D6F5C, 0xC0

    .global gUnknown_080D701C
gUnknown_080D701C:
    .incbin "baserom_sa3.gba", 0x000D701C, 0x8

    .global gUnknown_080D7024
gUnknown_080D7024:
    .incbin "baserom_sa3.gba", 0x000D7024, 0x30

    .global gUnknown_080D7054
gUnknown_080D7054:
    .incbin "baserom_sa3.gba", 0x000D7054, 0x30

    .global gUnknown_080D7084
gUnknown_080D7084:
    .incbin "baserom_sa3.gba", 0x000D7084, 0x30

    .global gUnknown_080D70B4
gUnknown_080D70B4:
    .incbin "baserom_sa3.gba", 0x000D70B4, 0x8

    .global gUnknown_080D70BC
gUnknown_080D70BC:
    .incbin "baserom_sa3.gba", 0x000D70BC, 0x10

    .global gUnknown_080D70CC
gUnknown_080D70CC:
    .incbin "baserom_sa3.gba", 0x000D70CC, 0x30

    .global gUnknown_080D70FC
gUnknown_080D70FC:
    .incbin "baserom_sa3.gba", 0x000D70FC, 0x38

    .global gUnknown_080D7134
gUnknown_080D7134:
    .incbin "baserom_sa3.gba", 0x000D7134, 0x60

    .global gUnknown_080D7194
gUnknown_080D7194:
    .incbin "baserom_sa3.gba", 0x000D7194, 0x30

    .global gUnknown_080D71C4
gUnknown_080D71C4:
    .incbin "baserom_sa3.gba", 0x000D71C4, 0x30

    .global gUnknown_080D71F4
gUnknown_080D71F4:
    .incbin "baserom_sa3.gba", 0x000D71F4, 0x8

    .global gUnknown_080D71FC
gUnknown_080D71FC:
    .incbin "baserom_sa3.gba", 0x000D71FC, 0x30

    .global gUnknown_080D722C
gUnknown_080D722C:
    .incbin "baserom_sa3.gba", 0x000D722C, 0x8

    .global gUnknown_080D7234
gUnknown_080D7234:
    .incbin "baserom_sa3.gba", 0x000D7234, 0x30

    .global gUnknown_080D7264
gUnknown_080D7264:
    .incbin "baserom_sa3.gba", 0x000D7264, 0xB8

    .global gUnknown_080D731C
gUnknown_080D731C:
    .incbin "baserom_sa3.gba", 0x000D731C, 0x18

    .global gUnknown_080D7334
gUnknown_080D7334:
    .incbin "baserom_sa3.gba", 0x000D7334, 0x30

    .global gUnknown_080D7364
gUnknown_080D7364:
    .incbin "baserom_sa3.gba", 0x000D7364, 0x8

    .global gUnknown_080D736C
gUnknown_080D736C:
    .incbin "baserom_sa3.gba", 0x000D736C, 0x10

    .global gUnknown_080D737C
gUnknown_080D737C:
    .incbin "baserom_sa3.gba", 0x000D737C, 0x20

    .global gUnknown_080D739C
gUnknown_080D739C:
    .incbin "baserom_sa3.gba", 0x000D739C, 0x20

    .global gUnknown_080D73BC
gUnknown_080D73BC:
    .incbin "baserom_sa3.gba", 0x000D73BC, 0x4

    .global gUnknown_080D73C0
gUnknown_080D73C0:
    .incbin "baserom_sa3.gba", 0x000D73C0, 0x8

    .global gUnknown_080D73C8
gUnknown_080D73C8:
    .incbin "baserom_sa3.gba", 0x000D73C8, 0x8

    .global gUnknown_080D73D0
gUnknown_080D73D0:
    .incbin "baserom_sa3.gba", 0x000D73D0, 0x60

    .global gUnknown_080D7430
gUnknown_080D7430:
    .incbin "baserom_sa3.gba", 0x000D7430, 0x8

    .global gUnknown_080D7438
gUnknown_080D7438:
    .incbin "baserom_sa3.gba", 0x000D7438, 0x8

    .global gUnknown_080D7440
gUnknown_080D7440:
    .incbin "baserom_sa3.gba", 0x000D7440, 0x8

    .global gUnknown_080D7448
gUnknown_080D7448:
    .incbin "baserom_sa3.gba", 0x000D7448, 0x8

    .global gUnknown_080D7450
gUnknown_080D7450:
    .incbin "baserom_sa3.gba", 0x000D7450, 0x8

    .global gUnknown_080D7458
gUnknown_080D7458:
    .incbin "baserom_sa3.gba", 0x000D7458, 0x8

    .global gUnknown_080D7460
gUnknown_080D7460:
    .incbin "baserom_sa3.gba", 0x000D7460, 0x8

    .global gUnknown_080D7468
gUnknown_080D7468:
    .incbin "baserom_sa3.gba", 0x000D7468, 0x8

    .global gUnknown_080D7470
gUnknown_080D7470:
    .incbin "baserom_sa3.gba", 0x000D7470, 0x38

    .global gUnknown_080D74A8
gUnknown_080D74A8:
    .incbin "baserom_sa3.gba", 0x000D74A8, 0x10

    .global gUnknown_080D74B8
gUnknown_080D74B8:
    .incbin "baserom_sa3.gba", 0x000D74B8, 0x16

    .global gUnknown_080D74CE
gUnknown_080D74CE:
    .incbin "baserom_sa3.gba", 0x000D74CE, 0x62

    .global sSoundTestSongIds
sSoundTestSongIds:
    .incbin "baserom_sa3.gba", 0x000D7530, 0xF8

    .global gUnknown_080D7628
gUnknown_080D7628:
    .incbin "baserom_sa3.gba", 0x000D7628, 0x30

    .global gUnknown_080D7658
gUnknown_080D7658:
    .incbin "baserom_sa3.gba", 0x000D7658, 0x60

    .global gUnknown_080D76B8
gUnknown_080D76B8:
    .incbin "baserom_sa3.gba", 0x000D76B8, 0x8

    .global gUnknown_080D76C0
gUnknown_080D76C0:
    .incbin "baserom_sa3.gba", 0x000D76C0, 0x30

    .global gUnknown_080D76F0
gUnknown_080D76F0:
    .incbin "baserom_sa3.gba", 0x000D76F0, 0x50

    .global gUnknown_080D7740
gUnknown_080D7740:
    .incbin "baserom_sa3.gba", 0x000D7740, 0x8

    .global sSongNames
sSongNames:
    .incbin "baserom_sa3.gba", 0x000D7748, 123 * 0x28
    .int 123 @ String count

    .global gUnknown_080D8A84
gUnknown_080D8A84:
    .short 0x462 @ ANIM_ASCII
    .byte  0x00, 0x00
    mPtr 0

    .global gUnknown_080D8A8C
gUnknown_080D8A8C:
    .incbin "baserom_sa3.gba", 0x000D8A8C, 0x20

    .global gUnknown_080D8AAC
gUnknown_080D8AAC:
    .incbin "baserom_sa3.gba", 0x000D8AAC, 0x20

    .global gUnknown_080D8ACC
gUnknown_080D8ACC:
    .incbin "baserom_sa3.gba", 0x000D8ACC, 0x10

    .global sAnimsTimeAttackDigits
sAnimsTimeAttackDigits:
    .incbin "baserom_sa3.gba", 0x000D8ADC, 0x8

    .global gUnknown_080D8AE4
gUnknown_080D8AE4:
    .incbin "baserom_sa3.gba", 0x000D8AE4, 0x8

    .global gUnknown_080D8AEC
gUnknown_080D8AEC:
    .incbin "baserom_sa3.gba", 0x000D8AEC, 0x8

    .global gUnknown_080D8AF4
gUnknown_080D8AF4:
    .incbin "baserom_sa3.gba", 0x000D8AF4, 0x50

    .global gUnknown_080D8B44
gUnknown_080D8B44:
    .incbin "baserom_sa3.gba", 0x000D8B44, 0x8

    .global gUnknown_080D8B4C
gUnknown_080D8B4C:
    mPtr sub_809508C
    mPtr sub_809514C
    mPtr sub_80951B0
    mPtr sub_809514C
    mPtr sub_80951B0

    .global gUnknown_080D8B60
gUnknown_080D8B60:
    .incbin "baserom_sa3.gba", 0x000D8B60, 0x3C

    .global gUnknown_080D8B9C
gUnknown_080D8B9C:
    .incbin "baserom_sa3.gba", 0x000D8B9C, 0x14

    .global gUnknown_080D8BB0
gUnknown_080D8BB0:
    .incbin "baserom_sa3.gba", 0x000D8BB0, 0x28

    .global gUnknown_080D8BD8
gUnknown_080D8BD8:
    .incbin "baserom_sa3.gba", 0x000D8BD8, 0xA

    .global gUnknown_080D8BE2
gUnknown_080D8BE2:
    .incbin "baserom_sa3.gba", 0x000D8BE2, 0x5

    .global gUnknown_080D8BE7
gUnknown_080D8BE7:
    .incbin "baserom_sa3.gba", 0x000D8BE7, 0xD

    .global gUnknown_080D8BF4
gUnknown_080D8BF4:
    .incbin "baserom_sa3.gba", 0x000D8BF4, 0x30

    .global gUnknown_080D8C24
gUnknown_080D8C24:
    .incbin "baserom_sa3.gba", 0x000D8C24, 0x30

    .global gUnknown_080D8C54
gUnknown_080D8C54:
    .incbin "baserom_sa3.gba", 0x000D8C54, 0x8

    .global gUnknown_080D8C5C
gUnknown_080D8C5C:
    .incbin "baserom_sa3.gba", 0x000D8C5C, 0x8

    .global gUnknown_080D8C64
gUnknown_080D8C64:
    .incbin "baserom_sa3.gba", 0x000D8C64, 0x8

    .global gUnknown_080D8C6C
gUnknown_080D8C6C:
    .incbin "baserom_sa3.gba", 0x000D8C6C, 0x8

    .global gUnknown_080D8C74
gUnknown_080D8C74:
    .incbin "baserom_sa3.gba", 0x000D8C74, 0x60

    .global gUnknown_080D8CD4
gUnknown_080D8CD4:
    .incbin "baserom_sa3.gba", 0x000D8CD4, 0x8
