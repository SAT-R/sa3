.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

    .global gUnknown_080CE548
gUnknown_080CE548:
    .incbin "baserom_sa3.gba", 0x000CE548, 0x4

    .global gUnknown_080CE54C
gUnknown_080CE54C:
    .incbin "baserom_sa3.gba", 0x000CE54C, 0x6C

    .global gUnknown_080CE5B8
gUnknown_080CE5B8:
    .incbin "baserom_sa3.gba", 0x000CE5B8, 0x12

    .global gUnknown_080CE5CA
gUnknown_080CE5CA:
    .incbin "baserom_sa3.gba", 0x000CE5CA, 0x14

    .global gCharVoicesLifeLost
gCharVoicesLifeLost:
    .short 0x267, 0x27A, 0x26B, 0x270, 0x276

    .global gUnknown_080CE5E8
gUnknown_080CE5E8:
    .incbin "baserom_sa3.gba", 0x000CE5E8, 0xA

    .global gUnknown_080CE5F2
gUnknown_080CE5F2:
    .incbin "baserom_sa3.gba", 0x000CE5F2, 0xA

    .global gUnknown_080CE5FC
gUnknown_080CE5FC:
    .incbin "baserom_sa3.gba", 0x000CE5FC, 0x10

    .global gUnknown_080CE60C
gUnknown_080CE60C:
    .incbin "baserom_sa3.gba", 0x000CE60C, 0x10

    .global gUnknown_080CE61C
gUnknown_080CE61C:
    .incbin "baserom_sa3.gba", 0x000CE61C, 0x20

    .global gUnknown_080CE63C
gUnknown_080CE63C:
    .incbin "baserom_sa3.gba", 0x000CE63C, 0x8

    .global gUnknown_080CE644
gUnknown_080CE644:
    .incbin "baserom_sa3.gba", 0x000CE644, 0x64

    .global gUnknown_080CE6A8
gUnknown_080CE6A8:
    .incbin "baserom_sa3.gba", 0x000CE6A8, 0x10

    .global gUnknown_080CE6B8
gUnknown_080CE6B8:
    .incbin "baserom_sa3.gba", 0x000CE6B8, 0x14

    .global gUnknown_080CE6CC
gUnknown_080CE6CC:
    mPtr Player_8005BD4
    mPtr Player_8005CB8
    mPtr Player_8005DAC
    mPtr sub_800D8DC
    mPtr Player_8005E80
    mPtr Player_800D944
    mPtr Player_800613C
    mPtr Player_80061D8
    mPtr Player_800A168
    mPtr sub_800DF9C
    mPtr Player_HitWithoutRingsUpdate
    mPtr sub_800913C
    mPtr sub_8009518
    mPtr sub_80095E8
    mPtr Player_800AAC0
    mPtr Player_800AB48
    mPtr Player_800E348
    mPtr Player_800E370
    mPtr Player_800E398
    mPtr Player_800E3C4
    mPtr sub_800AF98
    mPtr Player_800E3EC
    mPtr Player_800B004
    mPtr Player_800E468
    mPtr Player_800E490
    mPtr Player_800E4B8
    mPtr Player_800E4E0
    mPtr Player_800B128
    mPtr Player_800E564
    mPtr Player_800ED14
    mPtr Player_800ED34
    mPtr Player_800ED4C
    mPtr Player_800DD0C
    mPtr Player_800DD28
    mPtr Player_800B5A4
    mPtr Player_800DD44
    mPtr Player_800DDB4
    mPtr Player_800B628
    mPtr Player_800DDD0
    mPtr Player_800DE48
    mPtr Player_800B6C4
    mPtr Player_800B748
    mPtr Player_IceLauncherLaunch
    mPtr Player_800B920
    mPtr Player_800DEC4
    mPtr Player_CollideGroundAfterIceLauncher
    mPtr Player_800B81C
    mPtr Player_nullsub_800EAA8
    mPtr Player_800E604
    mPtr Player_800DB7C
    mPtr Player_800DCB4
    mPtr Player_800DBE8
    mPtr sub_800DC50
    mPtr 0

    .global gUnknown_080CE7A4
gUnknown_080CE7A4:
    .incbin "baserom_sa3.gba", 0x000CE7A4, 0x4

    .global gUnknown_080CE7A8
gUnknown_080CE7A8:
    .incbin "baserom_sa3.gba", 0x000CE7A8, 0x8

    .global gUnknown_080CE7B0
gUnknown_080CE7B0:
    .incbin "baserom_sa3.gba", 0x000CE7B0, 0x8

    .global gUnknown_080CE7B8
gUnknown_080CE7B8:
    .incbin "baserom_sa3.gba", 0x000CE7B8, 0x8

    .global gUnknown_080CE7C0
gUnknown_080CE7C0:
    .incbin "baserom_sa3.gba", 0x000CE7C0, 0x8

    .global gUnknown_080CE7C8
gUnknown_080CE7C8:
    .incbin "baserom_sa3.gba", 0x000CE7C8, 0x10

    @ NOTE: Should likely belong to player.c!
    .global gPlayerCharacterIdleAnims
gPlayerCharacterIdleAnims:
    .short 0x0000, 0x00A3, 0x0146, 0x01E9, 0x028C

    @ TODO: Maybe sCharStateAnimInfo ?
    .global gUnknown_080CE7E2
gUnknown_080CE7E2:
    .incbin "baserom_sa3.gba", 0x000CE7E2, 0x4D0

    .global gUnknown_080CECB2
gUnknown_080CECB2:
    .incbin "baserom_sa3.gba", 0x000CECB2, 0x14

    .global gUnknown_080CECC6
gUnknown_080CECC6:
    .incbin "baserom_sa3.gba", 0x000CECC6, 0xA

    .global gUnknown_080CECD0
gUnknown_080CECD0:
    .incbin "baserom_sa3.gba", 0x000CECD0, 0x14

    .global gUnknown_080CECE4
gUnknown_080CECE4:
    .incbin "baserom_sa3.gba", 0x000CECE4, 0x14

    .global gUnknown_080CECF8
gUnknown_080CECF8:
    .incbin "baserom_sa3.gba", 0x000CECF8, 0x60

    .global gUnknown_080CED58
gUnknown_080CED58:
    .incbin "baserom_sa3.gba", 0x000CED58, 0x38

    .global gUnknown_080CED90
gUnknown_080CED90:
    .incbin "baserom_sa3.gba", 0x000CED90, 0x58

    .global gUnknown_080CEDE8
gUnknown_080CEDE8:
    .incbin "baserom_sa3.gba", 0x000CEDE8, 0x38

    .global gUnknown_080CEE20
gUnknown_080CEE20:
    .incbin "baserom_sa3.gba", 0x000CEE20, 0x5

    .global gUnknown_080CEE25
gUnknown_080CEE25:
    .incbin "baserom_sa3.gba", 0x000CEE25, 0x1B

    .global gUnknown_080CEE40
gUnknown_080CEE40:
    .incbin "baserom_sa3.gba", 0x000CEE40, 0x80

    .global gUnknown_080CEEC0
gUnknown_080CEEC0:
    .incbin "baserom_sa3.gba", 0x000CEEC0, 0xC

    .global gUnknown_080CEECC
gUnknown_080CEECC:
    .incbin "baserom_sa3.gba", 0x000CEECC, 0xC

    .global gUnknown_080CEED8
gUnknown_080CEED8:
    mPtr gPayload_08E2F418
    mPtr gPayload_08E31880
    mPtr gPayload_08E31880
    mPtr gPayload_08E33C30
    mPtr gPayload_08E33C30
    mPtr gPayload_08E360A4
    mPtr gPayload_08E360A4
    mPtr gPayload_08E38464
    mPtr gPayload_08E38464
    mPtr gPayload_08E3A7F0
    mPtr gPayload_08E3A7F0
    mPtr gPayload_08E3CB98

    .global gUnknown_080CEF08
gUnknown_080CEF08:
    mPtr gUnknown_08E6DBE4
    mPtr gUnknown_08E74E1C
    mPtr gUnknown_08E66DB4
    mPtr gUnknown_08E62B0C
    mPtr NULL
    mPtr gPayload_08E3CB9C
    mPtr gUnknown_08E44B9C
    mPtr gUnknown_08E4CB9C
    mPtr gUnknown_08E54B9C

    .global gUnknown_080CEF2C
gUnknown_080CEF2C:
    .incbin "baserom_sa3.gba", 0x000CEF2C, 0x24

    .global gUnknown_080CEF50
gUnknown_080CEF50:
    .short 0x0000, 0x0146, 0x01E9, 0x028C
