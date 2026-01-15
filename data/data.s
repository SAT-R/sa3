.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

    .global gUnknown_080CE438
gUnknown_080CE438:
    .incbin "baserom_sa3.gba", 0x000CE438, 0x7A

    .global gUnknown_080CE4B2
gUnknown_080CE4B2:
    .incbin "baserom_sa3.gba", 0x000CE4B2, 0x7A

    .global gUnknown_080CE52C
gUnknown_080CE52C:
    .incbin "baserom_sa3.gba", 0x000CE52C, 0x1C

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
    .incbin "baserom_sa3.gba", 0x000CEF50, 0x8

    .global gUnknown_080CEF58
gUnknown_080CEF58:
    .incbin "baserom_sa3.gba", 0x000CEF58, 73*4 @ size = <number of maps> * <size of pointer>

    .global gSpriteInits_Enemies
gSpriteInits_Enemies: @ 0x080CF07C
    mPtr CreateEntity_Spinner
    mPtr CreateEntity_Akatento
    mPtr CreateEntity_Aotento
    mPtr CreateEntity_Condor
    mPtr CreateEntity_GekoGeko
    mPtr CreateEntity_Buzzer
    mPtr CreateEntity_Minimole
    mPtr CreateEntity_Ape_0
    mPtr CreateEntity_Ape_1
    mPtr CreateEntity_Takkon
    mPtr CreateEntity_Jousun_Right
    mPtr CreateEntity_Jousun_Left
    mPtr CreateEntity_Uutsubo_0
    mPtr CreateEntity_Uutsubo_1
    mPtr CreateEntity_Uutsubo_2
    mPtr CreateEntity_Uutsubo_3
    mPtr CreateEntity_Guard
    mPtr CreateEntity_Juggling
    mPtr CreateEntity_GaoGao
    mPtr CreateEntity_BuBu
    mPtr CreateEntity_Ginpe
    mPtr CreateEntity_Yadokk
    mPtr CreateEntity_Yukigasen_Right
    mPtr CreateEntity_Yukigasen_Left
    mPtr CreateEntity_Yukigasen_Right_HighCooldown
    mPtr CreateEntity_Yukigasen_Left_HighCooldown
    mPtr CreateEntity_Hariisen
    mPtr CreateEntity_Clam
    mPtr CreateEntity_Kyacchaa
    mPtr CreateEntity_Kamaki
    mPtr CreateEntity_GuruGuru
    mPtr CreateEntity_Marun
    mPtr CreateEntity_Muukaden_0
    mPtr CreateEntity_Muukaden_1

    .global gUnknown_080CF104
gUnknown_080CF104:
    .byte 3, 5, 9, 17, 26, 30, 31, 255, 255, 0, 0, 0

    .global gSpriteInits_Interactables
gSpriteInits_Interactables:
    mPtr CreateEntity_Toggle_PlayerLayer_Swap
    mPtr CreateEntity_Toggle_PlayerLayer_Front
    mPtr CreateEntity_Toggle_PlayerLayer_Back
    mPtr CreateEntity_ZoneWarp        @ 003 - ActRing and ZoneWarp are 2 IAs
    mPtr CreateEntity_Warp            @ 004
    mPtr CreateEntity_Spring_Up
    mPtr CreateEntity_Spring_Down
    mPtr CreateEntity_Spring_Left
    mPtr CreateEntity_Spring_Right
    mPtr CreateEntity_Spring_UpLeft
    mPtr CreateEntity_Spring_DownLeft
    mPtr CreateEntity_Spring_UpRight
    mPtr CreateEntity_Spring_DownRight
    mPtr CreateEntity_Spring_Small_UpRight
    mPtr CreateEntity_Spring_Small_UpLeft
    mPtr CreateEntity_Interactable015
    mPtr CreateEntity_Platform_0_0
    mPtr CreateEntity_Platform_0_1
    mPtr CreateEntity_Platform_0_2
    mPtr CreateEntity_Platform_0_3
    mPtr CreateEntity_Platform_1_0
    mPtr CreateEntity_Platform_1_1
    mPtr CreateEntity_Platform_1_2
    mPtr CreateEntity_Platform_1_3
    mPtr CreateEntity_Platform_2_0
    mPtr CreateEntity_Platform_2_1
    mPtr CreateEntity_Platform_2_2
    mPtr CreateEntity_Platform_2_3
    mPtr CreateEntity_BlueButton @ 028 - Same code as 071
    mPtr CreateEntity_Spikes_Up               @ 029
    mPtr CreateEntity_Spikes_Down             @ 030
    mPtr CreateEntity_Spikes_Left             @ 031
    mPtr CreateEntity_Spikes_Right            @ 032
    mPtr CreateEntity_Spikes_HidingUp         @ 033
    mPtr CreateEntity_Spikes_HidingDown       @ 034
    mPtr CreateEntity_Booster_Default         @ 035
    mPtr CreateEntity_Booster_TiltLeft_Small  @ 036
    mPtr CreateEntity_Booster_TiltRight_Small @ 037
    mPtr CreateEntity_Booster_TiltLeft_Big    @ 038
    mPtr CreateEntity_Booster_TiltRight_Big   @ 039
    mPtr CreateEntity_Booster_Wall            @ 040
    mPtr CreateEntity_TrampolineA
    mPtr CreateEntity_TrampolineB
    mPtr CreateEntity_Ramp
    mPtr CreateEntity_RotatingHandle
    mPtr CreateEntity_Lift
    mPtr CreateEntity_Interactable046
    mPtr CreateEntity_Interactable047
    mPtr CreateEntity_Interactable048
    mPtr CreateEntity_Interactable049
    mPtr CreateEntity_Interactable050
    mPtr CreateEntity_Interactable051
    mPtr CreateEntity_Interactable052
    mPtr CreateEntity_Interactable053
    mPtr CreateEntity_Checkpoint
    mPtr CreateEntity_GoalRing
    mPtr CreateEntity_BouncyBar
    mPtr CreateEntity_BreakableWall
    mPtr CreateEntity_DashRing0
    mPtr CreateEntity_DashRing1
    mPtr CreateEntity_Interactable060
    mPtr CreateEntity_PlatformRaisingWheel
    mPtr CreateEntity_PlatformRaisingWheelPlatform
    mPtr CreateEntity_Seesaw
    mPtr CreateEntity_DecoRock
    mPtr CreateEntity_FlatSpring
    mPtr CreateEntity_Omochao
    mPtr CreateEntity_ButtonPlatformA
    mPtr CreateEntity_ButtonPlatformB
    mPtr CreateEntity_PlatformCrumblingA
    mPtr CreateEntity_PlatformCrumblingB
    mPtr CreateEntity_RedButton @ 071 - Same code as 028
    mPtr CreateEntity_GrindRail0 @ 072 Grind Rail
    mPtr CreateEntity_Interactable073
    mPtr CreateEntity_Interactable074
    mPtr CreateEntity_BonusCapsule
    mPtr CreateEntity_Interactable073 @ 076 Grind Rail
    mPtr CreateEntity_GrindRail1 @ 077 Grind Rail
    mPtr CreateEntity_GrindRail2
    mPtr CreateEntity_GrindRail3 @ 079 Grind Rail
    mPtr CreateEntity_GrindRail4 @ 080 Grind Rail
    mPtr CreateEntity_Interactable081
    mPtr CreateEntity_Interactable082
    mPtr CreateEntity_BonusGameUI
    mPtr CreateEntity_SlowChaosLift
    mPtr CreateEntity_Interactable085
    mPtr CreateEntity_Interactable085 @ 086
    mPtr CreateEntity_TriggerBossOrGoal
    mPtr CreateEntity_AttachedPlatform
    mPtr CreateEntity_WaterCannon
    mPtr CreateEntity_Interactable090
    mPtr CreateEntity_AccordionSpring
    mPtr CreateEntity_BungeeCord
    mPtr CreateEntity_Interactable093
    mPtr CreateEntity_Pole
    mPtr CreateEntity_WaterfallResist 
    mPtr CreateEntity_ActRing         @ 096 - ActRing and ZoneWarp are 2 IAs
    mPtr CreateEntity_SpecialSpring
    mPtr CreateEntity_FactoryRing
    mPtr CreateEntity_BonusUfo
    mPtr CreateEntity_DeathCrusher
    mPtr CreateEntity_PlatformOnAPath
    mPtr CreateEntity_PlatformPropelled
    mPtr CreateEntity_PlatformMaybeFalling
    mPtr CreateEntity_Suction
    mPtr CreateEntity_AirBubbles
    mPtr CreateEntity_IceSpike
    mPtr CreateEntity_PlatformSquare
    mPtr CreateEntity_SunsetBridge
    mPtr CreateEntity_PlatformSpiked
    mPtr CreateEntity_SpringInABox
    mPtr CreateEntity_Rocket
    mPtr CreateEntity_FerrisWheel
    mPtr CreateEntity_WindupBlock
    mPtr CreateEntity_Minecart
    mPtr CreateEntity_PandaCart
    mPtr CreateEntity_Interactable116
    mPtr CreateEntity_Interactable117
    mPtr CreateEntity_Interactable118
    mPtr CreateEntity_Interactable119
    mPtr CreateEntity_Gondola         @ In Chaos Angel
    mPtr CreateEntity_Boulder
    mPtr CreateEntity_UfoPlatform
    mPtr CreateEntity_ClosingWall
    mPtr CreateEntity_IceLauncher
    mPtr CreateEntity_Interactable125
    mPtr CreateEntity_Interactable126
    mPtr CreateEntity_Interactable127
    mPtr CreateEntity_Interactable128
    mPtr CreateEntity_Interactable129
    mPtr CreateEntity_Interactable130
    mPtr CreateEntity_Pendulum
    mPtr CreateEntity_SpringPlatformA
    mPtr CreateEntity_SpringPlatformB
    mPtr CreateEntity_Interactable134
    mPtr CreateEntity_Interactable135
    mPtr CreateEntity_MazeEnter
    mPtr CreateEntity_MazeCorner
    mPtr CreateEntity_MazeExit
    mPtr CreateEntity_PlatformChaosAngel
    mPtr CreateEntity_ChaoInStage
    mPtr CreateEntity_SpecialKey
    mPtr CreateEntity_FinalZoneRing
    mPtr CreateEntity_ChaoInPlayground
    mPtr CreateEntity_EmeraldInPlayground

    .global gSpriteInits_InteractablesMultiplayer
gSpriteInits_InteractablesMultiplayer: @ 0x080CF354
    mPtr CreateEntity_Toggle_PlayerLayer_Swap @ 000
    mPtr CreateEntity_Toggle_PlayerLayer_Front @ 001
    mPtr CreateEntity_Toggle_PlayerLayer_Back @ 002
    mPtr CreateEntity_Interactable015 @ 003
    mPtr CreateEntity_Spring_Up @ 004
    mPtr CreateEntity_Spring_Left @ 005
    mPtr CreateEntity_Spring_Right @ 006
    mPtr CreateEntity_Spring_Small_UpRight @ 007
    mPtr CreateEntity_Platform_0_0 @ 008
    mPtr CreateEntity_Platform_0_3 @ 009
    mPtr CreateEntity_Platform_1_0 @ 010
    mPtr CreateEntity_Platform_1_3 @ 011
    mPtr CreateEntity_Ramp @ 012
    mPtr CreateEntity_Spikes_Up @ 013
    mPtr CreateEntity_Booster_Default @ 014
    mPtr CreateEntity_GrindRail0 @ 015
    mPtr CreateEntity_Interactable073 @ 016
    mPtr CreateEntity_Interactable074 @ 017
    mPtr CreateEntity_Interactable073 @ 018
    mPtr CreateEntity_GrindRail1 @ 019
    mPtr CreateEntity_GrindRail2 @ 020
    mPtr CreateEntity_GrindRail3 @ 021
    mPtr CreateEntity_GrindRail4 @ 022
    mPtr CreateEntity_MultiplayerItemBox @ 023
    mPtr CreateEntity_MultiplayerChao @ 024

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

    .global gTilemaps
gTilemaps:
    .incbin "baserom_sa3.gba", 0x000D09AC, 0x754
