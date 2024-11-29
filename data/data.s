.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

    .global gUnknown_080CE438
gUnknown_080CE438:
    .incbin "baserom.gba", 0x000CE438, 0x7A

    .global gUnknown_080CE4B2
gUnknown_080CE4B2:
    .incbin "baserom.gba", 0x000CE4B2, 0x7A

    .global gUnknown_080CE52C
gUnknown_080CE52C:
    .incbin "baserom.gba", 0x000CE52C, 0x1C

    .global gUnknown_080CE548
gUnknown_080CE548:
    .incbin "baserom.gba", 0x000CE548, 0x4

    .global gUnknown_080CE54C
gUnknown_080CE54C:
    .incbin "baserom.gba", 0x000CE54C, 0x6C

    .global gUnknown_080CE5B8
gUnknown_080CE5B8:
    .incbin "baserom.gba", 0x000CE5B8, 0x12

    .global gUnknown_080CE5CA
gUnknown_080CE5CA:
    .incbin "baserom.gba", 0x000CE5CA, 0x14

    .global gUnknown_080CE5DE
gUnknown_080CE5DE:
    .incbin "baserom.gba", 0x000CE5DE, 0xA

    .global gUnknown_080CE5E8
gUnknown_080CE5E8:
    .incbin "baserom.gba", 0x000CE5E8, 0xA

    .global gUnknown_080CE5F2
gUnknown_080CE5F2:
    .incbin "baserom.gba", 0x000CE5F2, 0xA

    .global gUnknown_080CE5FC
gUnknown_080CE5FC:
    .incbin "baserom.gba", 0x000CE5FC, 0x10

    .global gUnknown_080CE60C
gUnknown_080CE60C:
    .incbin "baserom.gba", 0x000CE60C, 0x10

    .global gUnknown_080CE61C
gUnknown_080CE61C:
    .incbin "baserom.gba", 0x000CE61C, 0x20

    .global gUnknown_080CE63C
gUnknown_080CE63C:
    .incbin "baserom.gba", 0x000CE63C, 0x8

    .global gUnknown_080CE644
gUnknown_080CE644:
    .incbin "baserom.gba", 0x000CE644, 0x64

    .global gUnknown_080CE6A8
gUnknown_080CE6A8:
    .incbin "baserom.gba", 0x000CE6A8, 0x10

    .global gUnknown_080CE6B8
gUnknown_080CE6B8:
    .incbin "baserom.gba", 0x000CE6B8, 0x14

    .global gUnknown_080CE6CC
gUnknown_080CE6CC:
    .incbin "baserom.gba", 0x000CE6CC, 0xD8

    .global gUnknown_080CE7A4
gUnknown_080CE7A4:
    .incbin "baserom.gba", 0x000CE7A4, 0x4

    .global gUnknown_080CE7A8
gUnknown_080CE7A8:
    .incbin "baserom.gba", 0x000CE7A8, 0x8

    .global gUnknown_080CE7B0
gUnknown_080CE7B0:
    .incbin "baserom.gba", 0x000CE7B0, 0x8

    .global gUnknown_080CE7B8
gUnknown_080CE7B8:
    .incbin "baserom.gba", 0x000CE7B8, 0x8

    .global gUnknown_080CE7C0
gUnknown_080CE7C0:
    .incbin "baserom.gba", 0x000CE7C0, 0x8

    .global gUnknown_080CE7C8
gUnknown_080CE7C8:
    .incbin "baserom.gba", 0x000CE7C8, 0x10

    @ NOTE: Should likely belong to player.c!
    .global gPlayerCharacterIdleAnims
gPlayerCharacterIdleAnims:
    .2byte 0x0000, 0x00A3, 0x0146, 0x01E9, 0x028C

    @ TODO: Maybe sCharStateAnimInfo ?
    .global gUnknown_080CE7E2
gUnknown_080CE7E2:
    .incbin "baserom.gba", 0x000CE7E2, 0x4D0

    .global gUnknown_080CECB2
gUnknown_080CECB2:
    .incbin "baserom.gba", 0x000CECB2, 0x14

    .global gUnknown_080CECC6
gUnknown_080CECC6:
    .incbin "baserom.gba", 0x000CECC6, 0xA

    .global gUnknown_080CECD0
gUnknown_080CECD0:
    .incbin "baserom.gba", 0x000CECD0, 0x14

    .global gUnknown_080CECE4
gUnknown_080CECE4:
    .incbin "baserom.gba", 0x000CECE4, 0x14

    .global gUnknown_080CECF8
gUnknown_080CECF8:
    .incbin "baserom.gba", 0x000CECF8, 0x60

    .global gUnknown_080CED58
gUnknown_080CED58:
    .incbin "baserom.gba", 0x000CED58, 0x38

    .global gUnknown_080CED90
gUnknown_080CED90:
    .incbin "baserom.gba", 0x000CED90, 0x58

    .global gUnknown_080CEDE8
gUnknown_080CEDE8:
    .incbin "baserom.gba", 0x000CEDE8, 0x38

    .global gUnknown_080CEE20
gUnknown_080CEE20:
    .incbin "baserom.gba", 0x000CEE20, 0x5

    .global gUnknown_080CEE25
gUnknown_080CEE25:
    .incbin "baserom.gba", 0x000CEE25, 0x1B

    .global gUnknown_080CEE40
gUnknown_080CEE40:
    .incbin "baserom.gba", 0x000CEE40, 0x80

    .global gUnknown_080CEEC0
gUnknown_080CEEC0:
    .incbin "baserom.gba", 0x000CEEC0, 0xC

    .global gUnknown_080CEECC
gUnknown_080CEECC:
    .incbin "baserom.gba", 0x000CEECC, 0xC

    .global gUnknown_080CEED8
gUnknown_080CEED8:
    .4byte gPayload_08E2F418
    .4byte gPayload_08E31880
    .4byte gPayload_08E31880
    .4byte gPayload_08E33C30
    .4byte gPayload_08E33C30
    .4byte gUnknown_08E360A4
    .4byte gUnknown_08E360A4
    .4byte gPayload_08E38464
    .4byte gPayload_08E38464
    .4byte gPayload_08E3A7F0
    .4byte gPayload_08E3A7F0
    .4byte gUnknown_08E3CB98

    .global gUnknown_080CEF08
gUnknown_080CEF08:
    .4byte gUnknown_08E6DBE4
    .4byte gUnknown_08E74E1C
    .4byte gUnknown_08E66DB4
    .4byte gUnknown_08E62B0C
    .4byte NULL
    .4byte gPayload_08E3CB9C
    .4byte gUnknown_08E44B9C
    .4byte gUnknown_08E4CB9C
    .4byte gUnknown_08E54B9C

    .global gUnknown_080CEF2C
gUnknown_080CEF2C:
    .incbin "baserom.gba", 0x000CEF2C, 0x24

    .global gUnknown_080CEF50
gUnknown_080CEF50:
    .incbin "baserom.gba", 0x000CEF50, 0x8

    .global gUnknown_080CEF58
gUnknown_080CEF58:
    .incbin "baserom.gba", 0x000CEF58, 73*4 @ size = <number of maps> * <size of pointer>

    .global gSpriteInits_Enemies
gSpriteInits_Enemies: @ 0x080CF07C
    .4byte CreateEntity_Spinner
    .4byte CreateEntity_Akatento
    .4byte CreateEntity_Aotento
    .4byte CreateEntity_Condor
    .4byte CreateEntity_GekoGeko
    .4byte CreateEntity_Buzzer
    .4byte CreateEntity_Minimole
    .4byte CreateEntity_Ape_0
    .4byte CreateEntity_Ape_1
    .4byte CreateEntity_Takkon
    .4byte CreateEntity_Jousun_0
    .4byte CreateEntity_Jousun_1
    .4byte CreateEntity_Uutsubo_0
    .4byte CreateEntity_Uutsubo_1
    .4byte CreateEntity_Uutsubo_2
    .4byte CreateEntity_Uutsubo_3
    .4byte CreateEntity_Guard
    .4byte CreateEntity_Juggling
    .4byte CreateEntity_GaoGao
    .4byte CreateEntity_BuBu
    .4byte CreateEntity_Ginpe
    .4byte CreateEntity_Yadokk
    .4byte CreateEntity_Yukigasen_Right
    .4byte CreateEntity_Yukigasen_Left
    .4byte CreateEntity_Yukigasen_Right_HighCooldown
    .4byte CreateEntity_Yukigasen_Left_HighCooldown
    .4byte CreateEntity_Hariisen
    .4byte CreateEntity_Clam
    .4byte CreateEntity_Kyacchaa
    .4byte CreateEntity_Kamaki
    .4byte CreateEntity_GuruGuru
    .4byte CreateEntity_Marun
    .4byte CreateEntity_Muukaden_0
    .4byte CreateEntity_Muukaden_1

    .global gUnknown_080CF104
gUnknown_080CF104:
    .byte 3, 5, 9, 17, 26, 30, 31, 255, 255, 0, 0, 0

    .global gSpriteInits_Interactables
gSpriteInits_Interactables:
    .4byte CreateEntity_Toggle_PlayerLayer_Swap
    .4byte CreateEntity_Toggle_PlayerLayer_Front
    .4byte CreateEntity_Toggle_PlayerLayer_Back
    .4byte CreateEntity_ZoneWarp        @ 003 - ActRing and ZoneWarp are 2 IAs
    .4byte CreateEntity_Warp            @ 004
    .4byte CreateEntity_Spring_Up
    .4byte CreateEntity_Spring_Down
    .4byte CreateEntity_Spring_Left
    .4byte CreateEntity_Spring_Right
    .4byte CreateEntity_Spring_UpLeft
    .4byte CreateEntity_Spring_DownLeft
    .4byte CreateEntity_Spring_UpRight
    .4byte CreateEntity_Spring_DownRight
    .4byte CreateEntity_Spring_Small_UpRight
    .4byte CreateEntity_Spring_Small_UpLeft
    .4byte CreateEntity_Interactable015
    .4byte CreateEntity_Platform_0_0
    .4byte CreateEntity_Platform_0_1
    .4byte CreateEntity_Platform_0_2
    .4byte CreateEntity_Platform_0_3
    .4byte CreateEntity_Platform_1_0
    .4byte CreateEntity_Platform_1_1
    .4byte CreateEntity_Platform_1_2
    .4byte CreateEntity_Platform_1_3
    .4byte CreateEntity_Platform_2_0
    .4byte CreateEntity_Platform_2_1
    .4byte CreateEntity_Platform_2_2
    .4byte CreateEntity_Platform_2_3
    .4byte CreateEntity_BlueButton @ 028 - Same code as 071
    .4byte CreateEntity_Spikes_Up               @ 029
    .4byte CreateEntity_Spikes_Down             @ 030
    .4byte CreateEntity_Spikes_Left             @ 031
    .4byte CreateEntity_Spikes_Right            @ 032
    .4byte CreateEntity_Spikes_HidingUp         @ 033
    .4byte CreateEntity_Spikes_HidingDown       @ 034
    .4byte CreateEntity_Booster_Default         @ 035
    .4byte CreateEntity_Booster_TiltLeft_Small  @ 036
    .4byte CreateEntity_Booster_TiltRight_Small @ 037
    .4byte CreateEntity_Booster_TiltLeft_Big    @ 038
    .4byte CreateEntity_Booster_TiltRight_Big   @ 039
    .4byte CreateEntity_Booster_Wall            @ 040
    .4byte CreateEntity_TrampolineA
    .4byte CreateEntity_TrampolineB
    .4byte CreateEntity_Ramp
    .4byte CreateEntity_RotatingHandle
    .4byte CreateEntity_Lift
    .4byte CreateEntity_Interactable046
    .4byte CreateEntity_Interactable047
    .4byte CreateEntity_Interactable048
    .4byte CreateEntity_Interactable049
    .4byte CreateEntity_Interactable050
    .4byte CreateEntity_Interactable051
    .4byte CreateEntity_Interactable052
    .4byte CreateEntity_Interactable053
    .4byte CreateEntity_Checkpoint
    .4byte CreateEntity_GoalRing
    .4byte CreateEntity_BouncyBar
    .4byte CreateEntity_Interactable057
    .4byte CreateEntity_DashRing0
    .4byte CreateEntity_DashRing1
    .4byte CreateEntity_Interactable060
    .4byte CreateEntity_PlatformRaisingWheel
    .4byte CreateEntity_PlatformRaisingWheelPlatform
    .4byte CreateEntity_Seesaw
    .4byte CreateEntity_DecoRock
    .4byte CreateEntity_FlatSpring
    .4byte CreateEntity_Omochao
    .4byte CreateEntity_ButtonPlatformA
    .4byte CreateEntity_ButtonPlatformB
    .4byte CreateEntity_PlatformCrumblingA
    .4byte CreateEntity_PlatformCrumblingB
    .4byte CreateEntity_RedButton @ 071 - Same code as 028
    .4byte CreateEntity_GrindRail0 @ 072 Grind Rail
    .4byte CreateEntity_Interactable073
    .4byte CreateEntity_Interactable074
    .4byte CreateEntity_BonusCapsule
    .4byte CreateEntity_Interactable073 @ 076 Grind Rail
    .4byte CreateEntity_GrindRail1 @ 077 Grind Rail
    .4byte CreateEntity_GrindRail2
    .4byte CreateEntity_GrindRail3 @ 079 Grind Rail
    .4byte CreateEntity_GrindRail4 @ 080 Grind Rail
    .4byte CreateEntity_Interactable081
    .4byte CreateEntity_Interactable082
    .4byte CreateEntity_BonusGameUI
    .4byte CreateEntity_SlowChaosLift
    .4byte CreateEntity_Interactable085
    .4byte CreateEntity_Interactable085 @ 086
    .4byte CreateEntity_TriggerBossOrGoal
    .4byte CreateEntity_AttachedPlatform
    .4byte CreateEntity_WaterCannon
    .4byte CreateEntity_Interactable090
    .4byte CreateEntity_AccordionSpring
    .4byte CreateEntity_BungeeCord
    .4byte CreateEntity_Interactable093
    .4byte CreateEntity_Interactable094
    .4byte CreateEntity_WaterfallResist 
    .4byte CreateEntity_ActRing         @ 096 - ActRing and ZoneWarp are 2 IAs
    .4byte CreateEntity_SpecialSpring
    .4byte CreateEntity_FactoryRing
    .4byte CreateEntity_BonusUfo
    .4byte CreateEntity_DeathCrusher
    .4byte CreateEntity_PlatformOnAPath
    .4byte CreateEntity_PlatformPropelled
    .4byte CreateEntity_PlatformMaybeFalling
    .4byte CreateEntity_Suction
    .4byte CreateEntity_AirBubbles
    .4byte CreateEntity_IceSpike
    .4byte CreateEntity_PlatformSquare
    .4byte CreateEntity_SunsetBridge
    .4byte CreateEntity_PlatformSpiked
    .4byte CreateEntity_SpringInABox
    .4byte CreateEntity_Rocket
    .4byte CreateEntity_FerrisWheel
    .4byte CreateEntity_WindupBlock
    .4byte CreateEntity_Minecart
    .4byte CreateEntity_Interactable115
    .4byte CreateEntity_Interactable116
    .4byte CreateEntity_Interactable117
    .4byte CreateEntity_Interactable118
    .4byte CreateEntity_Interactable119
    .4byte CreateEntity_Gondola         @ In Chaos Angel
    .4byte CreateEntity_Boulder
    .4byte CreateEntity_UfoPlatform
    .4byte CreateEntity_ClosingWall
    .4byte CreateEntity_IceLauncher
    .4byte CreateEntity_Interactable125
    .4byte CreateEntity_Interactable126
    .4byte CreateEntity_Interactable127
    .4byte CreateEntity_Interactable128
    .4byte CreateEntity_Interactable129
    .4byte CreateEntity_Interactable130
    .4byte CreateEntity_Pendulum
    .4byte CreateEntity_SpringPlatformA
    .4byte CreateEntity_SpringPlatformB
    .4byte CreateEntity_Interactable134
    .4byte CreateEntity_Interactable135
    .4byte CreateEntity_MazeEnter
    .4byte CreateEntity_MazeCorner
    .4byte CreateEntity_MazeExit
    .4byte CreateEntity_PlatformChaosAngel
    .4byte CreateEntity_ChaoInStage
    .4byte CreateEntity_SpecialKey
    .4byte CreateEntity_FinalZoneRing
    .4byte CreateEntity_ChaoInPlayground
    .4byte CreateEntity_EmeraldInPlayground

    .global gSpriteInits_InteractablesMultiplayer
gSpriteInits_InteractablesMultiplayer: @ 0x080CF354
    .4byte CreateEntity_Toggle_PlayerLayer_Swap @ 000
    .4byte CreateEntity_Toggle_PlayerLayer_Front @ 001
    .4byte CreateEntity_Toggle_PlayerLayer_Back @ 002
    .4byte CreateEntity_Interactable015 @ 003
    .4byte CreateEntity_Spring_Up @ 004
    .4byte CreateEntity_Spring_Left @ 005
    .4byte CreateEntity_Spring_Right @ 006
    .4byte CreateEntity_Spring_Small_UpRight @ 007
    .4byte CreateEntity_Platform_0_0 @ 008
    .4byte CreateEntity_Platform_0_3 @ 009
    .4byte CreateEntity_Platform_1_0 @ 010
    .4byte CreateEntity_Platform_1_3 @ 011
    .4byte CreateEntity_Ramp @ 012
    .4byte CreateEntity_Spikes_Up @ 013
    .4byte CreateEntity_Booster_Default @ 014
    .4byte CreateEntity_GrindRail0 @ 015
    .4byte CreateEntity_Interactable073 @ 016
    .4byte CreateEntity_Interactable074 @ 017
    .4byte CreateEntity_Interactable073 @ 018
    .4byte CreateEntity_GrindRail1 @ 019
    .4byte CreateEntity_GrindRail2 @ 020
    .4byte CreateEntity_GrindRail3 @ 021
    .4byte CreateEntity_GrindRail4 @ 022
    .4byte CreateEntity_MultiplayerItemBox @ 023
    .4byte CreateEntity_MultiplayerChao @ 024

    .global gUnknown_080CF3B8
gUnknown_080CF3B8:
    .incbin "baserom.gba", 0x000CF3B8, 0x8

    .global gUnknown_080CF3C0
gUnknown_080CF3C0:
    .incbin "baserom.gba", 0x000CF3C0, 0x60

    .global gUnknown_080CF420
gUnknown_080CF420:
    .incbin "baserom.gba", 0x000CF420, 0x1E

    .global gUnknown_080CF43E
gUnknown_080CF43E:
    .incbin "baserom.gba", 0x000CF43E, 0x10

    .global gUnknown_080CF44E
gUnknown_080CF44E:
    .incbin "baserom.gba", 0x000CF44E, 0x1A

    .global gUnknown_080CF468
gUnknown_080CF468:
    .byte 0x78, 0x90, 0xA8, 0xC0, 0xD8, 0xF0, 0xFF, 0x78

    .global gUnknown_080CF470
gUnknown_080CF470:
    .incbin "baserom.gba", 0x000CF470, 0x28

    .global sPlatformAnimsDefault
sPlatformAnimsDefault:
    .incbin "baserom.gba", 0x000CF498, 0x30

    .global sPlatformAnimsHubworld
sPlatformAnimsHubworld:
    .incbin "baserom.gba", 0x000CF4C8, 0x2A

    .global gUnknown_080CF4F2
gUnknown_080CF4F2:
    .incbin "baserom.gba", 0x000CF4F2, 0x2A

    .global gUnknown_080CF51C
gUnknown_080CF51C:
    .incbin "baserom.gba", 0x000CF51C, 0x50

    .global gUnknown_080CF56C
gUnknown_080CF56C:
    .incbin "baserom.gba", 0x000CF56C, 0x18

    .global sWindupOffsets
sWindupOffsets:
    .incbin "baserom.gba", 0x000CF584, 0xC

    .global gUnknown_080CF590
gUnknown_080CF590:
    .incbin "baserom.gba", 0x000CF590, 0x48

    .global gUnknown_080CF5D8
gUnknown_080CF5D8:
    .incbin "baserom.gba", 0x000CF5D8, 0x60

    .global gUnknown_080CF638
gUnknown_080CF638:
    .incbin "baserom.gba", 0x000CF638, 0x48

    @ IA065 (CreateEntity_FlatSpring)
    .global sOamFlags
sOamFlags:
    .incbin "baserom.gba", 0x000CF680, 0x10

    .global gUnknown_080CF690
gUnknown_080CF690:
    .incbin "baserom.gba", 0x000CF690, 0xC

    .global sTileInfoBtnPlatforms
sTileInfoBtnPlatforms:
    .incbin "baserom.gba", 0x000CF69C, 0x2C

@ Bonus Capsule Data Start
    .global sTileInfoTimerDigits
sTileInfoTimerDigits:
    .incbin "baserom.gba", 0x000CF6C8, 21*8

    .global gUnknown_080CF770
gUnknown_080CF770:
    .incbin "baserom.gba", 0x000CF770, 0x38

    .global gTileInfoAnimals
gTileInfoAnimals:
    .incbin "baserom.gba", 0x000CF7A8, 0xA8

    .global sSwitchesPositions
sSwitchesPositions:
    .2byte 144, 62
    .2byte 112, 96
    .2byte 90, 128
    .2byte 176, 96
    .2byte 198, 128

    .global gUnknown_080CF864
gUnknown_080CF864:
    .incbin "baserom.gba", 0x000CF864, 0x7

    .global gUnknown_080CF86B
gUnknown_080CF86B:
    .incbin "baserom.gba", 0x000CF86B, 0x5

    .global gUnknown_080CF870
gUnknown_080CF870:
    .incbin "baserom.gba", 0x000CF870, 0x30

    .global gUnknown_080CF8A0
gUnknown_080CF8A0:
    .byte 1, 1, 1, 1

    @ Appears to be unused?
    .global gUnknown_080CF8A4
gUnknown_080CF8A4:
    .incbin "baserom.gba", 0x000CF8A4, 0x18

    .global gUnknown_080CF8BC
gUnknown_080CF8BC:
    .incbin "baserom.gba", 0x000CF8BC, 0x7A

    .global gUnknown_080CF936
gUnknown_080CF936:
    .incbin "baserom.gba", 0x000CF936, 0x78

    .global sFrameCountPerSecond
sFrameCountPerSecond:
    .incbin "baserom.gba", 0x000CF9AE, 0x7A

    .global gUnknown_080CFA28
gUnknown_080CFA28:
    .incbin "baserom.gba", 0x000CFA28, 0x16

    @ s16 Q_8_8 values
    .global gUnknown_080CFA3E
gUnknown_080CFA3E:
    .incbin "baserom.gba", 0x000CFA3E, 0x10

    .global gUnknown_080CFA4E
gUnknown_080CFA4E:
    .byte +1, -1

    .global sBonusLifeIconVariants
sBonusLifeIconVariants:
    .incbin "baserom.gba", 0x000CFA50, 0x8

    .global gUnknown_080CFA58
gUnknown_080CFA58:
    .4byte CreateGmerl1
    .incbin "baserom.gba", 0x000CFA5C, (0x10 + 17 * 0x14)

    .global sUfoActs
sUfoActs:
    .short 7, 8, 9, 0
    
    .global gUnknown_080CFBC8
gUnknown_080CFBC8:
    .incbin "baserom.gba", 0x000CFBC8, 0xC
        
    .global gUnknown_080CFBD4
gUnknown_080CFBD4:
    .incbin "baserom.gba", 0x000CFBD4, 0x24

    .global gUnknown_080CFBF8
gUnknown_080CFBF8:
    .incbin "baserom.gba", 0x000CFBF8, 0x12

    .global gUnknown_080CFC0A
gUnknown_080CFC0A:
    .incbin "baserom.gba", 0x000CFC0A, 0x24

    .global gUnknown_080CFC2E
gUnknown_080CFC2E:
    .incbin "baserom.gba", 0x000CFC2E, 0x12

    .global gUnknown_080CFC40
gUnknown_080CFC40:
    .incbin "baserom.gba", 0x000CFC40, 0x30

    .global gUnknown_080CFC70
gUnknown_080CFC70:
    .incbin "baserom.gba", 0x000CFC70, 0x1E
    
    .global gUnknown_080CFC8E
gUnknown_080CFC8E:
    .incbin "baserom.gba", 0x000CFC8E, 0x24

    .global gUnknown_080CFCB2
gUnknown_080CFCB2:
    .incbin "baserom.gba", 0x000CFCB2, 0x1E

    .global gUnknown_080CFCD0
gUnknown_080CFCD0:
    .incbin "baserom.gba", 0x000CFCD0, 0x18

    .global gUnknown_080CFCE8
gUnknown_080CFCE8:
    .incbin "baserom.gba", 0x000CFCE8, 0x1E

    .global gUnknown_080CFD06
gUnknown_080CFD06:
    .incbin "baserom.gba", 0x000CFD06, 0x3C

    .global gUnknown_080CFD42
gUnknown_080CFD42:
    .incbin "baserom.gba", 0x000CFD42, 0x1E

    .global gUnknown_080CFD60
gUnknown_080CFD60:
    .incbin "baserom.gba", 0x000CFD60, 0x18

    .global gUnknown_080CFD78
gUnknown_080CFD78:
    .incbin "baserom.gba", 0x000CFD78, 0x42

    .global gUnknown_080CFDBA
gUnknown_080CFDBA:
    .incbin "baserom.gba", 0x000CFDBA, 0x24

    .global gUnknown_080CFDDE
gUnknown_080CFDDE:
    .incbin "baserom.gba", 0x000CFDDE, 0x12

    .global gUnknown_080CFDF0
gUnknown_080CFDF0:
    .incbin "baserom.gba", 0x000CFDF0, 0x24

    .global gUnknown_080CFE14
gUnknown_080CFE14:
    .incbin "baserom.gba", 0x000CFE14, 0x12

    .global gUnknown_080CFE26
gUnknown_080CFE26:
    .incbin "baserom.gba", 0x000CFE26, 0x1E

    .global gUnknown_080CFE44
gUnknown_080CFE44:
    .incbin "baserom.gba", 0x000CFE44, 0x12

    .global gUnknown_080CFE56
gUnknown_080CFE56:
    .incbin "baserom.gba", 0x000CFE56, 0x18

    .global gUnknown_080CFE6E
gUnknown_080CFE6E:
    .incbin "baserom.gba", 0x000CFE6E, 0x1E

    .global gUnknown_080CFE8C
gUnknown_080CFE8C:
    .incbin "baserom.gba", 0x000CFE8C, 0x1E

    .global gUnknown_080CFEAA
gUnknown_080CFEAA:
    .incbin "baserom.gba", 0x000CFEAA, 0x1E

    .global gUnknown_080CFEC8
gUnknown_080CFEC8:
    .incbin "baserom.gba", 0x000CFEC8, 0x24

    .global gUnknown_080CFEEC
gUnknown_080CFEEC:
    .incbin "baserom.gba", 0x000CFEEC, 0x1E

    .global gUnknown_080CFF0A
gUnknown_080CFF0A:
    .incbin "baserom.gba", 0x000CFF0A, 0x18

    .global gUnknown_080CFF22
gUnknown_080CFF22:
    .incbin "baserom.gba", 0x000CFF22, 0x24

    .global gUnknown_080CFF46
gUnknown_080CFF46:
    .incbin "baserom.gba", 0x000CFF46, 0x18

    .global gUnknown_080CFF5E
gUnknown_080CFF5E:
    .incbin "baserom.gba", 0x000CFF5E, 0x1E

    .global gUnknown_080CFF7C
gUnknown_080CFF7C:
    .incbin "baserom.gba", 0x000CFF7C, 0x12

    .global gUnknown_080CFF8E
gUnknown_080CFF8E:
    .incbin "baserom.gba", 0x000CFF8E, 0x1E

    .global gUnknown_080CFFAC
gUnknown_080CFFAC:
    .incbin "baserom.gba", 0x000CFFAC, 0x18

    .global gUnknown_080CFFC4
gUnknown_080CFFC4:
    .incbin "baserom.gba", 0x000CFFC4, 0x12

    .global gUnknown_080CFFD6
gUnknown_080CFFD6:
    .incbin "baserom.gba", 0x000CFFD6, 0x1E

    .global gUnknown_080CFFF4
gUnknown_080CFFF4:
    .incbin "baserom.gba", 0x000CFFF4, 0x12

    .global gUnknown_080D0006
gUnknown_080D0006:
    .incbin "baserom.gba", 0x000D0006, 0x12

    .global gUnknown_080D0018
gUnknown_080D0018:
    .incbin "baserom.gba", 0x000D0018, 0x12

    .global gUnknown_080D002A
gUnknown_080D002A:
    .incbin "baserom.gba", 0x000D002A, 0x2A

    .global gUnknown_080D0054
gUnknown_080D0054:
    .incbin "baserom.gba", 0x000D0054, 0x1E

    .global gUnknown_080D0072
gUnknown_080D0072:
    .incbin "baserom.gba", 0x000D0072, 0x18

    .global gUnknown_080D008A
gUnknown_080D008A:
    .incbin "baserom.gba", 0x000D008A, 0x2A

    .global gUnknown_080D00B4
gUnknown_080D00B4:
    .incbin "baserom.gba", 0x000D00B4, 0x18

    .global gUnknown_080D00CC
gUnknown_080D00CC:
    .incbin "baserom.gba", 0x000D00CC, 0x12

    .global gUnknown_080D00DE
gUnknown_080D00DE:
    .incbin "baserom.gba", 0x000D00DE, 0x1E

    .global gUnknown_080D00FC
gUnknown_080D00FC:
    .incbin "baserom.gba", 0x000D00FC, 0x12

    .global gUnknown_080D010E
gUnknown_080D010E:
    .incbin "baserom.gba", 0x000D010E, 0x24

    .global gUnknown_080D0132
gUnknown_080D0132:
    .incbin "baserom.gba", 0x000D0132, 0x12
    
    .global gUnknown_080D0144
gUnknown_080D0144:
    .2byte 0x0040, 0x0020, 0x0020

    .align 2 , 0
    .global gUnknown_080D014C
gUnknown_080D014C:
    .incbin "baserom.gba", 0x000D014C, 0x1C0

    .global gUnknown_080D030C
gUnknown_080D030C:
    .incbin "baserom.gba", 0x000D030C, 0x1C

    .global gUnknown_080D0328
gUnknown_080D0328:
    .incbin "baserom.gba", 0x000D0328, 0x8

    .global gUnknown_080D0330
gUnknown_080D0330:
    .incbin "baserom.gba", 0x000D0330, 0x80

    .global gUnknown_080D03B0
gUnknown_080D03B0:
    .incbin "baserom.gba", 0x000D03B0, 0x10

    .global gUnknown_080D03C0
gUnknown_080D03C0:
    .incbin "baserom.gba", 0x000D03C0, 0x8

    .global gUnknown_080D03C8
gUnknown_080D03C8:
    .incbin "baserom.gba", 0x000D03C8, 0x10

    .global gUnknown_080D03D8
gUnknown_080D03D8:
    .incbin "baserom.gba", 0x000D03D8, 0x10

    .global gUnknown_080D03E8
gUnknown_080D03E8:
    .incbin "baserom.gba", 0x000D03E8, 0x10

    .global sChaoIATilesInfo
sChaoIATilesInfo:
    .incbin "baserom.gba", 0x000D03F8, 0x18

@ u8 gUnknown_080D0410[7][10][2];
    .global gUnknown_080D0410
gUnknown_080D0410:
    .incbin "baserom.gba", 0x000D0410, 0x8C

    .global gUnknown_080D049C
gUnknown_080D049C:
    .incbin "baserom.gba", 0x000D049C, 0xC

    .global gUnknown_080D04A8
gUnknown_080D04A8:
    .incbin "baserom.gba", 0x000D04A8, 0x100

    .global gUnknown_080D05A8
gUnknown_080D05A8:
    .incbin "baserom.gba", 0x000D05A8, 0x124

    .global gUnknown_080D06CC
gUnknown_080D06CC:
    .incbin "baserom.gba", 0x000D06CC, 0x248

    .global gUnknown_080D0914
gUnknown_080D0914:
    .incbin "baserom.gba", 0x000D0914, 0xC

    .global gUnknown_080D0920
gUnknown_080D0920:
    .incbin "baserom.gba", 0x000D0920, 0xC

    .global gUnknown_080D092C
gUnknown_080D092C:
    .incbin "baserom.gba", 0x000D092C, 0x20

    .global gUnknown_080D094C
gUnknown_080D094C:
    .incbin "baserom.gba", 0x000D094C, 0x20

    .global gUnknown_080D096C
gUnknown_080D096C:
    .incbin "baserom.gba", 0x000D096C, 0x20

    .global gUnknown_080D098C
gUnknown_080D098C:
    .incbin "baserom.gba", 0x000D098C, 0x20

    .global gTilemaps
gTilemaps:
    .incbin "baserom.gba", 0x000D09AC, 0x754

    .global gUnknown_080D1100
gUnknown_080D1100:
    .incbin "baserom.gba", 0x000D1100, 0x124

    .global gUnknown_080D1224
gUnknown_080D1224:
    .incbin "baserom.gba", 0x000D1224, 0x124

    .global gUnknown_080D1348
gUnknown_080D1348:
    .incbin "baserom.gba", 0x000D1348, 0x124

    .global gUnknown_080D146C
gUnknown_080D146C:
    .incbin "baserom.gba", 0x000D146C, 0x2E4

    .global gUnknown_080D1750
gUnknown_080D1750:
    .incbin "baserom.gba", 0x000D1750, 0x1CC

    .global gUnknown_080D191C
gUnknown_080D191C:
    .incbin "baserom.gba", 0x000D191C, 0x124

    .global gUnknown_080D1A40
gUnknown_080D1A40:
    .incbin "baserom.gba", 0x000D1A40, 0x124

    .global gUnknown_080D1B64
gUnknown_080D1B64:
    .incbin "baserom.gba", 0x000D1B64, 0xC

    .global gUnknown_080D1B70
gUnknown_080D1B70:
    .incbin "baserom.gba", 0x000D1B70, 0xC

    .global gUnknown_080D1B7C
gUnknown_080D1B7C:
    .incbin "baserom.gba", 0x000D1B7C, 0xC
    
    .global gUnknown_080D1B88
gUnknown_080D1B88:
    .incbin "baserom.gba", 0x000D1B88, 0xC
    
    .global gUnknown_080D1B94
gUnknown_080D1B94:
    .incbin "baserom.gba", 0x000D1B94, 0xC
    
    .global gUnknown_080D1BA0
gUnknown_080D1BA0:
    .incbin "baserom.gba", 0x000D1BA0, 0xC
    
    .global gUnknown_080D1BAC
gUnknown_080D1BAC:
    .incbin "baserom.gba", 0x000D1BAC, 0xC
    
    .global gUnknown_080D1BB8
gUnknown_080D1BB8:
    .incbin "baserom.gba", 0x000D1BB8, 0xC

    .global gUnknown_080D1BC4
gUnknown_080D1BC4:
    .incbin "baserom.gba", 0x000D1BC4, 0x28

    .global gUnknown_080D1BEC
gUnknown_080D1BEC:
    .incbin "baserom.gba", 0x000D1BEC, 0xA

    .global gUnknown_080D1BF6
gUnknown_080D1BF6:
    .incbin "baserom.gba", 0x000D1BF6, 0x16

    .global gUnknown_080D1C0C
gUnknown_080D1C0C:
    .incbin "baserom.gba", 0x000D1C0C, 0x24

    .global gUnknown_080D1C30
gUnknown_080D1C30:
    .incbin "baserom.gba", 0x000D1C30, 0x18

    .global gUnknown_080D1C48
gUnknown_080D1C48:
    .incbin "baserom.gba", 0x000D1C48, 0x2

    .global gUnknown_080D1C4A
gUnknown_080D1C4A:
    .incbin "baserom.gba", 0x000D1C4A, 0x5E

    .global gUnknown_080D1CA8
gUnknown_080D1CA8:
    .incbin "baserom.gba", 0x000D1CA8, 0x6

    .global gUnknown_080D1CAE
gUnknown_080D1CAE:
    .incbin "baserom.gba", 0x000D1CAE, 0x2

    .global gUnknown_080D1CB0
gUnknown_080D1CB0:
    .incbin "baserom.gba", 0x000D1CB0, 0x2

    .global gUnknown_080D1CB2
gUnknown_080D1CB2:
    .incbin "baserom.gba", 0x000D1CB2, 0x20

    .global gUnknown_080D1CD2
gUnknown_080D1CD2:
    .incbin "baserom.gba", 0x000D1CD2, 0x12

    .global gUnknown_080D1CE4
gUnknown_080D1CE4:
    .incbin "baserom.gba", 0x000D1CE4, 0x6C

    .global gUnknown_080D1D50
gUnknown_080D1D50:
    .incbin "baserom.gba", 0x000D1D50, 0x8

    .global gUnknown_080D1D58
gUnknown_080D1D58:
    .incbin "baserom.gba", 0x000D1D58, 0x24

    .global gUnknown_080D1D7C
gUnknown_080D1D7C:
    .incbin "baserom.gba", 0x000D1D7C, 0xC

    .global gUnknown_080D1D88
gUnknown_080D1D88:
    .incbin "baserom.gba", 0x000D1D88, 0x90

    .global gUnknown_080D1E18
gUnknown_080D1E18:
    .incbin "baserom.gba", 0x000D1E18, 0x8

    .global gUnknown_080D1E20
gUnknown_080D1E20:
    .incbin "baserom.gba", 0x000D1E20, 0x10

    .global gUnknown_080D1E30
gUnknown_080D1E30:
    .incbin "baserom.gba", 0x000D1E30, 0x20

    .global gUnknown_080D1E50
gUnknown_080D1E50:
    .incbin "baserom.gba", 0x000D1E50, 0x4

    .global gUnknown_080D1E54
gUnknown_080D1E54:
    .incbin "baserom.gba", 0x000D1E54, 0x30

    .global gUnknown_080D1E84
gUnknown_080D1E84:
    .incbin "baserom.gba", 0x000D1E84, 0x10

    .global sTileInfoGekoGeko
sTileInfoGekoGeko:
    .incbin "baserom.gba", 0x000D1E94, 0x18

    .global gUnknown_080D1EAC
gUnknown_080D1EAC:
    .incbin "baserom.gba", 0x000D1EAC, 0x18

    .global gUnknown_080D1EC4
gUnknown_080D1EC4:
    .incbin "baserom.gba", 0x000D1EC4, 0x8

    .global gUnknown_080D1ECC
gUnknown_080D1ECC:
    .incbin "baserom.gba", 0x000D1ECC, 0x18

    .global gUnknown_080D1EE4
gUnknown_080D1EE4:
    .incbin "baserom.gba", 0x000D1EE4, 0x10

    .global gUnknown_080D1EF4
gUnknown_080D1EF4:
    .incbin "baserom.gba", 0x000D1EF4, 0x18

    .global gUnknown_080D1F0C
gUnknown_080D1F0C:
    .incbin "baserom.gba", 0x000D1F0C, 0x10

    .global gUnknown_080D1F1C
gUnknown_080D1F1C:
    .incbin "baserom.gba", 0x000D1F1C, 0x10

    .global gUnknown_080D1F2C
gUnknown_080D1F2C:
    .incbin "baserom.gba", 0x000D1F2C, 0x20

    .global gUnknown_080D1F4C
gUnknown_080D1F4C:
    .incbin "baserom.gba", 0x000D1F4C, 0x10

    .global gUnknown_080D1F5C
gUnknown_080D1F5C:
    .incbin "baserom.gba", 0x000D1F5C, 0x10

    .global gUnknown_080D1F6C
gUnknown_080D1F6C:
    .incbin "baserom.gba", 0x000D1F6C, 0x10

    .global gUnknown_080D1F7C
gUnknown_080D1F7C:
    .incbin "baserom.gba", 0x000D1F7C, 0x10

    .global gUnknown_080D1F8C
gUnknown_080D1F8C:
    .incbin "baserom.gba", 0x000D1F8C, 0x20

    .global gUnknown_080D1FAC
gUnknown_080D1FAC:
    .incbin "baserom.gba", 0x000D1FAC, 0x4

    .global gUnknown_080D1FB0
gUnknown_080D1FB0:
    .incbin "baserom.gba", 0x000D1FB0, 0x10

    .global gUnknown_080D1FC0
gUnknown_080D1FC0:
    .incbin "baserom.gba", 0x000D1FC0, 0x10

    .global gUnknown_080D1FD0
gUnknown_080D1FD0:
    .incbin "baserom.gba", 0x000D1FD0, 0x20

    .global gUnknown_080D1FF0
gUnknown_080D1FF0:
    .incbin "baserom.gba", 0x000D1FF0, 0x8

    .global gUnknown_080D1FF8
gUnknown_080D1FF8:
    .incbin "baserom.gba", 0x000D1FF8, 0xC

    .global gUnknown_080D2004
gUnknown_080D2004:
    .incbin "baserom.gba", 0x000D2004, 0x10

    .global gUnknown_080D2014
gUnknown_080D2014:
    .incbin "baserom.gba", 0x000D2014, 0x10

    .global gUnknown_080D2024
gUnknown_080D2024:
    .incbin "baserom.gba", 0x000D2024, 0x10

    .global gUnknown_080D2034
gUnknown_080D2034:
    .incbin "baserom.gba", 0x000D2034, 0x10

    .global gUnknown_080D2044
gUnknown_080D2044:
    .incbin "baserom.gba", 0x000D2044, 0x28

    .global gUnknown_080D206C
gUnknown_080D206C:
    .incbin "baserom.gba", 0x000D206C, 0x20

    .global gUnknown_080D208C
gUnknown_080D208C:
    .incbin "baserom.gba", 0x000D208C, 0x20

    .global gUnknown_080D20AC
gUnknown_080D20AC:
    .incbin "baserom.gba", 0x000D20AC, 0x4

    .global gUnknown_080D20B0
gUnknown_080D20B0:
    .incbin "baserom.gba", 0x000D20B0, 0x8

    .global gUnknown_080D20B8
gUnknown_080D20B8:
    .incbin "baserom.gba", 0x000D20B8, 0xC

    .global gUnknown_080D20C4
gUnknown_080D20C4:
    .incbin "baserom.gba", 0x000D20C4, 0x42

    .global gUnknown_080D2106
gUnknown_080D2106:
    .incbin "baserom.gba", 0x000D2106, 0x6

    .global gUnknown_080D210C
gUnknown_080D210C:
    .incbin "baserom.gba", 0x000D210C, 0x20

    .global gUnknown_080D212C
gUnknown_080D212C:
    .incbin "baserom.gba", 0x000D212C, 0x30

    .global gUnknown_080D215C
gUnknown_080D215C:
    .incbin "baserom.gba", 0x000D215C, 0x20

    .global gUnknown_080D217C
gUnknown_080D217C:
    .incbin "baserom.gba", 0x000D217C, 0x4

    .global gUnknown_080D2180
gUnknown_080D2180:
    .incbin "baserom.gba", 0x000D2180, 0x18

    .global gUnknown_080D2198
gUnknown_080D2198:
    .incbin "baserom.gba", 0x000D2198, 0x130

    .global gUnknown_080D22C8
gUnknown_080D22C8:
    .incbin "baserom.gba", 0x000D22C8, 0x120

    .global gUnknown_080D23E8
gUnknown_080D23E8:
    .incbin "baserom.gba", 0x000D23E8, 0x44C

    .global gUnknown_080D2834
gUnknown_080D2834:
    .incbin "baserom.gba", 0x000D2834, 0x510
    
    .global gUnknown_080D2D44
gUnknown_080D2D44:
    .incbin "baserom.gba", 0x000D2D44, 0x244
    
    .global gUnknown_080D2F88
gUnknown_080D2F88:
    .incbin "baserom.gba", 0x000D2F88, 0x87C
    
    .global gUnknown_080D3804
gUnknown_080D3804:
    .incbin "baserom.gba", 0x000D3804, 0x5D4
    
    .global gUnknown_080D3DD8
gUnknown_080D3DD8:
    .incbin "baserom.gba", 0x000D3DD8, 0x1320
    
    .global gUnknown_080D50F8
gUnknown_080D50F8:
    .incbin "baserom.gba", 0x000D50F8, 0xA8
    
    .global gUnknown_080D51A0
gUnknown_080D51A0:
    .incbin "baserom.gba", 0x000D51A0, 0x9C

    .global gUnknown_080D523C
gUnknown_080D523C:
    .incbin "baserom.gba", 0x000D523C, 0xC

    .global gUnknown_080D5248
gUnknown_080D5248:
    .incbin "baserom.gba", 0x000D5248, 0x34

    .global gUnknown_080D527C
gUnknown_080D527C:
    .incbin "baserom.gba", 0x000D527C, 0x64

    .global gUnknown_080D52E0
gUnknown_080D52E0:
    .incbin "baserom.gba", 0x000D52E0, 0x1E0

    .global gUnknown_080D54C0
gUnknown_080D54C0:
    .incbin "baserom.gba", 0x000D54C0, 0x21C

    .global gUnknown_080D56DC
gUnknown_080D56DC:
    .incbin "baserom.gba", 0x000D56DC, 0x14

    .global gUnknown_080D56F0
gUnknown_080D56F0:
    .incbin "baserom.gba", 0x000D56F0, 0x34

    .global gUnknown_080D5724
gUnknown_080D5724:
    .incbin "baserom.gba", 0x000D5724, 0x8

    .global gUnknown_080D572C
gUnknown_080D572C:
    .incbin "baserom.gba", 0x000D572C, 0x10

    .global gUnknown_080D573C
gUnknown_080D573C:
    .incbin "baserom.gba", 0x000D573C, 0x10

    .global gUnknown_080D574C
gUnknown_080D574C:
    .incbin "baserom.gba", 0x000D574C, 0x10

    .global gUnknown_080D575C
gUnknown_080D575C:
    .incbin "baserom.gba", 0x000D575C, 0x24

    .global gUnknown_080D5780
gUnknown_080D5780:
    .incbin "baserom.gba", 0x000D5780, 0x40

    .global gUnknown_080D57C0
gUnknown_080D57C0:
    .incbin "baserom.gba", 0x000D57C0, 0x5

    .global gUnknown_080D57C5
gUnknown_080D57C5:
    .incbin "baserom.gba", 0x000D57C5, 0x7

    .global gUnknown_080D57CC
gUnknown_080D57CC:
    .incbin "baserom.gba", 0x000D57CC, 0x80

    .global gUnknown_080D584C
gUnknown_080D584C:
    .incbin "baserom.gba", 0x000D584C, 0x24

    .global gUnknown_080D5870
gUnknown_080D5870:
    .incbin "baserom.gba", 0x000D5870, 0x10

    .global gUnknown_080D5880
gUnknown_080D5880:
    .incbin "baserom.gba", 0x000D5880, 0x8

    .global gUnknown_080D5888
gUnknown_080D5888:
    .incbin "baserom.gba", 0x000D5888, 0x44

    .global gUnknown_080D58CC
gUnknown_080D58CC:
    .incbin "baserom.gba", 0x000D58CC, 0x14

    .global gUnknown_080D58E0
gUnknown_080D58E0:
    .incbin "baserom.gba", 0x000D58E0, 0x14

    .global gUnknown_080D58F4
gUnknown_080D58F4:
    .incbin "baserom.gba", 0x000D58F4, 0x10

    .global gUnknown_080D5904
gUnknown_080D5904:
    .incbin "baserom.gba", 0x000D5904, 0x28

    .global gUnknown_080D592C
gUnknown_080D592C:
    .incbin "baserom.gba", 0x000D592C, 0x14

    .global gUnknown_080D5940
gUnknown_080D5940:
    .incbin "baserom.gba", 0x000D5940, 0x14

    .global gUnknown_080D5954
gUnknown_080D5954:
    .incbin "baserom.gba", 0x000D5954, 0x24

    .global gUnknown_080D5978
gUnknown_080D5978:
    .incbin "baserom.gba", 0x000D5978, 0x4

    .global gUnknown_080D597C
gUnknown_080D597C:
    .incbin "baserom.gba", 0x000D597C, 0x1C

    .global gUnknown_080D5998
gUnknown_080D5998:
    .incbin "baserom.gba", 0x000D5998, 0x54

    .global gUnknown_080D59EC
gUnknown_080D59EC:
    .incbin "baserom.gba", 0x000D59EC, 0x10

    .global gUnknown_080D59FC
gUnknown_080D59FC:
    .incbin "baserom.gba", 0x000D59FC, 0x18

    .global gUnknown_080D5A14
gUnknown_080D5A14:
    .incbin "baserom.gba", 0x000D5A14, 0x30

    .global gUnknown_080D5A44
gUnknown_080D5A44:
    .incbin "baserom.gba", 0x000D5A44, 0x20

    .global gUnknown_080D5A64
gUnknown_080D5A64:
    .incbin "baserom.gba", 0x000D5A64, 0x8

    .global gUnknown_080D5A6C
gUnknown_080D5A6C:
    .incbin "baserom.gba", 0x000D5A6C, 0x78

    .global gUnknown_080D5AE4
gUnknown_080D5AE4:
    .incbin "baserom.gba", 0x000D5AE4, 0x4

    .global gUnknown_080D5AE8
gUnknown_080D5AE8:
    .incbin "baserom.gba", 0x000D5AE8, 0xE

    .global gUnknown_080D5AF6
gUnknown_080D5AF6:
    .incbin "baserom.gba", 0x000D5AF6, 0xA

    .global gUnknown_080D5B00
gUnknown_080D5B00:
    .incbin "baserom.gba", 0x000D5B00, 0x48

    .global gUnknown_080D5B48
gUnknown_080D5B48:
    .incbin "baserom.gba", 0x000D5B48, 0x18

    .global gUnknown_080D5B60
gUnknown_080D5B60:
    .incbin "baserom.gba", 0x000D5B60, 0x18

    .global gUnknown_080D5B78
gUnknown_080D5B78:
    .incbin "baserom.gba", 0x000D5B78, 0x10

    .global gUnknown_080D5B88
gUnknown_080D5B88:
    .incbin "baserom.gba", 0x000D5B88, 0x28

    .global gUnknown_080D5BB0
gUnknown_080D5BB0:
    .incbin "baserom.gba", 0x000D5BB0, 0x28

    .global gUnknown_080D5BD8
gUnknown_080D5BD8:
    .incbin "baserom.gba", 0x000D5BD8, 0x14

    .global gUnknown_080D5BEC
gUnknown_080D5BEC:
    .incbin "baserom.gba", 0x000D5BEC, 0x1C

    .global gUnknown_080D5C08
gUnknown_080D5C08:
    .incbin "baserom.gba", 0x000D5C08, 0x18

    .global gUnknown_080D5C20
gUnknown_080D5C20:
    .incbin "baserom.gba", 0x000D5C20, 0x18

    .global gUnknown_080D5C38
gUnknown_080D5C38:
    .incbin "baserom.gba", 0x000D5C38, 0x10

    .global gUnknown_080D5C48
gUnknown_080D5C48:
    .incbin "baserom.gba", 0x000D5C48, 0x8

    .global gUnknown_080D5C50
gUnknown_080D5C50:
    .incbin "baserom.gba", 0x000D5C50, 0x20

    .global gUnknown_080D5C70
gUnknown_080D5C70:
    .incbin "baserom.gba", 0x000D5C70, 0x8

    .global gUnknown_080D5C78
gUnknown_080D5C78:
    .incbin "baserom.gba", 0x000D5C78, 0x8

    .global gUnknown_080D5C80
gUnknown_080D5C80:
    .incbin "baserom.gba", 0x000D5C80, 0x20

    .global gUnknown_080D5CA0
gUnknown_080D5CA0:
    .incbin "baserom.gba", 0x000D5CA0, 0x4

    .global gUnknown_080D5CA4
gUnknown_080D5CA4:
    .incbin "baserom.gba", 0x000D5CA4, 0x4

    .global gUnknown_080D5CA8
gUnknown_080D5CA8:
    .incbin "baserom.gba", 0x000D5CA8, 0x2C

    .global gUnknown_080D5CD4
gUnknown_080D5CD4:
    .incbin "baserom.gba", 0x000D5CD4, 0x4

    .global gUnknown_080D5CD8
gUnknown_080D5CD8:
    .incbin "baserom.gba", 0x000D5CD8, 0x34

    .global gUnknown_080D5D0C
gUnknown_080D5D0C:
    .incbin "baserom.gba", 0x000D5D0C, 0xC

    .global gUnknown_080D5D18
gUnknown_080D5D18:
    .incbin "baserom.gba", 0x000D5D18, 0x8

    .global gUnknown_080D5D20
gUnknown_080D5D20:
    .incbin "baserom.gba", 0x000D5D20, 0x10

    .global gUnknown_080D5D30
gUnknown_080D5D30:
    .incbin "baserom.gba", 0x000D5D30, 0x20

    .global gUnknown_080D5D50
gUnknown_080D5D50:
    .incbin "baserom.gba", 0x000D5D50, 0x14

    .global gUnknown_080D5D64
gUnknown_080D5D64:
    .incbin "baserom.gba", 0x000D5D64, 0x80

    .global gUnknown_080D5DE4
gUnknown_080D5DE4:
    .incbin "baserom.gba", 0x000D5DE4, 0x80

    .global gUnknown_080D5E64
gUnknown_080D5E64:
    .incbin "baserom.gba", 0x000D5E64, 0x20

    .global gUnknown_080D5E84
gUnknown_080D5E84:
    .incbin "baserom.gba", 0x000D5E84, 0x140

    .global gUnknown_080D5FC4
gUnknown_080D5FC4:
    .incbin "baserom.gba", 0x000D5FC4, 0x150

    .global gUnknown_080D6114
gUnknown_080D6114:
    .incbin "baserom.gba", 0x000D6114, 0x60

    .global gUnknown_080D6174
gUnknown_080D6174:
    .incbin "baserom.gba", 0x000D6174, 0x60

    .global gUnknown_080D61D4
gUnknown_080D61D4:
    .incbin "baserom.gba", 0x000D61D4, 0x60

    .global gUnknown_080D6234
gUnknown_080D6234:
    .incbin "baserom.gba", 0x000D6234, 0x60

    .global gUnknown_080D6294
gUnknown_080D6294:
    .incbin "baserom.gba", 0x000D6294, 0x60

    .global gUnknown_080D62F4
gUnknown_080D62F4:
    .incbin "baserom.gba", 0x000D62F4, 0x60

    .global gUnknown_080D6354
gUnknown_080D6354:
    .incbin "baserom.gba", 0x000D6354, 0x60

    .global gUnknown_080D63B4
gUnknown_080D63B4:
    .incbin "baserom.gba", 0x000D63B4, 0x60

    .global gUnknown_080D6414
gUnknown_080D6414:
    .incbin "baserom.gba", 0x000D6414, 0x60

    .global gUnknown_080D6474
gUnknown_080D6474:
    .incbin "baserom.gba", 0x000D6474, 0x60

    .global gUnknown_080D64D4
gUnknown_080D64D4:
    .incbin "baserom.gba", 0x000D64D4, 0x60

    .global gUnknown_080D6534
gUnknown_080D6534:
    .incbin "baserom.gba", 0x000D6534, 0x60

    .global gUnknown_080D6594
gUnknown_080D6594:
    .incbin "baserom.gba", 0x000D6594, 0x60

    .global gUnknown_080D65F4
gUnknown_080D65F4:
    .incbin "baserom.gba", 0x000D65F4, 0x60

    .global gUnknown_080D6654
gUnknown_080D6654:
    .incbin "baserom.gba", 0x000D6654, 0x20

    .global gUnknown_080D6674
gUnknown_080D6674:
    .incbin "baserom.gba", 0x000D6674, 0x20

    .global gUnknown_080D6694
gUnknown_080D6694:
    .incbin "baserom.gba", 0x000D6694, 0x20

    .global gUnknown_080D66B4
gUnknown_080D66B4:
    .incbin "baserom.gba", 0x000D66B4, 0x10

    .global gUnknown_080D66C4
gUnknown_080D66C4:
    .incbin "baserom.gba", 0x000D66C4, 0x8

    .global gUnknown_080D66CC
gUnknown_080D66CC:
    .incbin "baserom.gba", 0x000D66CC, 0xC

    .global gUnknown_080D66D8
gUnknown_080D66D8:
    .incbin "baserom.gba", 0x000D66D8, 0x80

    .global gUnknown_080D6758
gUnknown_080D6758:
    .incbin "baserom.gba", 0x000D6758, 0x18

    .global gUnknown_080D6770
gUnknown_080D6770:
    .incbin "baserom.gba", 0x000D6770, 0x10

    .global gUnknown_080D6780
gUnknown_080D6780:
    .incbin "baserom.gba", 0x000D6780, 0x18

    .global gUnknown_080D6798
gUnknown_080D6798:
    .incbin "baserom.gba", 0x000D6798, 0x30

    .global gUnknown_080D67C8
gUnknown_080D67C8:
    .incbin "baserom.gba", 0x000D67C8, 0x30

    .global gUnknown_080D67F8
gUnknown_080D67F8:
    .incbin "baserom.gba", 0x000D67F8, 0x30

    .global gUnknown_080D6828
gUnknown_080D6828:
    .incbin "baserom.gba", 0x000D6828, 0x30

    .global gUnknown_080D6858
gUnknown_080D6858:
    .incbin "baserom.gba", 0x000D6858, 0x40

    .global gUnknown_080D6898
gUnknown_080D6898:
    .incbin "baserom.gba", 0x000D6898, 0x30

    .global gUnknown_080D68C8
gUnknown_080D68C8:
    .incbin "baserom.gba", 0x000D68C8, 0x8

    .global gUnknown_080D68D0
gUnknown_080D68D0:
    .incbin "baserom.gba", 0x000D68D0, 0x10

    .global gUnknown_080D68E0
gUnknown_080D68E0:
    .incbin "baserom.gba", 0x000D68E0, 0x22

    .global gUnknown_080D6902
gUnknown_080D6902:
    .incbin "baserom.gba", 0x000D6902, 0xC

    .global gUnknown_080D690E
gUnknown_080D690E:
    .incbin "baserom.gba", 0x000D690E, 0xE

    .global gUnknown_080D691C
gUnknown_080D691C:
    .incbin "baserom.gba", 0x000D691C, 0x30

    .global gUnknown_080D694C
gUnknown_080D694C:
    .incbin "baserom.gba", 0x000D694C, 0xA

    .global gUnknown_080D6956
gUnknown_080D6956:
    .incbin "baserom.gba", 0x000D6956, 0xA

    .global gUnknown_080D6960
gUnknown_080D6960:
    .incbin "baserom.gba", 0x000D6960, 0x180

    .global gUnknown_080D6AE0
gUnknown_080D6AE0:
    .incbin "baserom.gba", 0x000D6AE0, 0x8

    .global gUnknown_080D6AE8
gUnknown_080D6AE8:
    .incbin "baserom.gba", 0x000D6AE8, 0x60

    .global gUnknown_080D6B48
gUnknown_080D6B48:
    .incbin "baserom.gba", 0x000D6B48, 0x60

    .global gUnknown_080D6BA8
gUnknown_080D6BA8:
    .incbin "baserom.gba", 0x000D6BA8, 0x30

    .global gUnknown_080D6BD8
gUnknown_080D6BD8:
    .incbin "baserom.gba", 0x000D6BD8, 0x30

    .global gUnknown_080D6C08
gUnknown_080D6C08:
    .incbin "baserom.gba", 0x000D6C08, 0x14

    .global gUnknown_080D6C1C
gUnknown_080D6C1C:
    .incbin "baserom.gba", 0x000D6C1C, 0x200

    .global sOptionsSlideInits
sOptionsSlideInits:
    .int OptionsSlideInit_PlayerData
    .int OptionsSlideInit_Difficulty
    .int OptionsSlideInit_TimeUp
    .int OptionsSlideInit_Language
    .int OptionsSlideInit_ButtonConfig
    .int OptionsSlideInit_SoundTest
    .int OptionsSlideInit_DeleteSaveData

    .global gUnknown_080D6E38
gUnknown_080D6E38:
    .incbin "baserom.gba", 0x000D6E38, 0x1C

    .global gUnknown_080D6E54
gUnknown_080D6E54:
    .incbin "baserom.gba", 0x000D6E54, 0x80

    .global gUnknown_080D6ED4
gUnknown_080D6ED4:
    .incbin "baserom.gba", 0x000D6ED4, 0xC

    .global gUnknown_080D6EE0
gUnknown_080D6EE0:
    .incbin "baserom.gba", 0x000D6EE0, 0x8

    .global gUnknown_080D6EE8
gUnknown_080D6EE8:
    .incbin "baserom.gba", 0x000D6EE8, 0x18

    .global gUnknown_080D6F00
gUnknown_080D6F00:
    .incbin "baserom.gba", 0x000D6F00, 0xC

    .global gUnknown_080D6F0C
gUnknown_080D6F0C:
    .incbin "baserom.gba", 0x000D6F0C, 0x18

    .global gStringSelectStage
gStringSelectStage:
    .ascii "SELECT STAGE\0"
    .align 2, 0

    .global gStringZoneNActN
gStringZoneNActN:
    .ascii "ZONE %d  ACT %d\0"
    .align 2, 0

    .global gStringPressABtn
gStringPressABtn:
    .ascii "PRESS A BTN\0"

    .global gStringPleaseWait
gStringPleaseWait:
    .ascii "PLEASE WAIT\0"
    .align 2, 0

    .global gUnknown_080D6F5C
gUnknown_080D6F5C:
    .incbin "baserom.gba", 0x000D6F5C, 0xC0

    .global gUnknown_080D701C
gUnknown_080D701C:
    .incbin "baserom.gba", 0x000D701C, 0x8

    .global gUnknown_080D7024
gUnknown_080D7024:
    .incbin "baserom.gba", 0x000D7024, 0x30

    .global gUnknown_080D7054
gUnknown_080D7054:
    .incbin "baserom.gba", 0x000D7054, 0x30

    .global gUnknown_080D7084
gUnknown_080D7084:
    .incbin "baserom.gba", 0x000D7084, 0x30

    .global gUnknown_080D70B4
gUnknown_080D70B4:
    .incbin "baserom.gba", 0x000D70B4, 0x8

    .global gUnknown_080D70BC
gUnknown_080D70BC:
    .incbin "baserom.gba", 0x000D70BC, 0x10

    .global gUnknown_080D70CC
gUnknown_080D70CC:
    .incbin "baserom.gba", 0x000D70CC, 0x30

    .global gUnknown_080D70FC
gUnknown_080D70FC:
    .incbin "baserom.gba", 0x000D70FC, 0x38

    .global gUnknown_080D7134
gUnknown_080D7134:
    .incbin "baserom.gba", 0x000D7134, 0x60

    .global gUnknown_080D7194
gUnknown_080D7194:
    .incbin "baserom.gba", 0x000D7194, 0x30

    .global gUnknown_080D71C4
gUnknown_080D71C4:
    .incbin "baserom.gba", 0x000D71C4, 0x30

    .global gUnknown_080D71F4
gUnknown_080D71F4:
    .incbin "baserom.gba", 0x000D71F4, 0x8

    .global gUnknown_080D71FC
gUnknown_080D71FC:
    .incbin "baserom.gba", 0x000D71FC, 0x30

    .global gUnknown_080D722C
gUnknown_080D722C:
    .incbin "baserom.gba", 0x000D722C, 0x8

    .global gUnknown_080D7234
gUnknown_080D7234:
    .incbin "baserom.gba", 0x000D7234, 0x30

    .global gUnknown_080D7264
gUnknown_080D7264:
    .incbin "baserom.gba", 0x000D7264, 0xB8

    .global gUnknown_080D731C
gUnknown_080D731C:
    .incbin "baserom.gba", 0x000D731C, 0x18

    .global gUnknown_080D7334
gUnknown_080D7334:
    .incbin "baserom.gba", 0x000D7334, 0x30

    .global gUnknown_080D7364
gUnknown_080D7364:
    .incbin "baserom.gba", 0x000D7364, 0x8

    .global gUnknown_080D736C
gUnknown_080D736C:
    .incbin "baserom.gba", 0x000D736C, 0x10

    .global gUnknown_080D737C
gUnknown_080D737C:
    .incbin "baserom.gba", 0x000D737C, 0x20

    .global gUnknown_080D739C
gUnknown_080D739C:
    .incbin "baserom.gba", 0x000D739C, 0x20

    .global gUnknown_080D73BC
gUnknown_080D73BC:
    .incbin "baserom.gba", 0x000D73BC, 0x4

    .global gUnknown_080D73C0
gUnknown_080D73C0:
    .incbin "baserom.gba", 0x000D73C0, 0x8

    .global gUnknown_080D73C8
gUnknown_080D73C8:
    .incbin "baserom.gba", 0x000D73C8, 0x8

    .global gUnknown_080D73D0
gUnknown_080D73D0:
    .incbin "baserom.gba", 0x000D73D0, 0x60

    .global gUnknown_080D7430
gUnknown_080D7430:
    .incbin "baserom.gba", 0x000D7430, 0x8

    .global gUnknown_080D7438
gUnknown_080D7438:
    .incbin "baserom.gba", 0x000D7438, 0x8

    .global gUnknown_080D7440
gUnknown_080D7440:
    .incbin "baserom.gba", 0x000D7440, 0x8

    .global gUnknown_080D7448
gUnknown_080D7448:
    .incbin "baserom.gba", 0x000D7448, 0x8

    .global gUnknown_080D7450
gUnknown_080D7450:
    .incbin "baserom.gba", 0x000D7450, 0x8

    .global gUnknown_080D7458
gUnknown_080D7458:
    .incbin "baserom.gba", 0x000D7458, 0x8

    .global gUnknown_080D7460
gUnknown_080D7460:
    .incbin "baserom.gba", 0x000D7460, 0x8

    .global gUnknown_080D7468
gUnknown_080D7468:
    .incbin "baserom.gba", 0x000D7468, 0x8

    .global gUnknown_080D7470
gUnknown_080D7470:
    .incbin "baserom.gba", 0x000D7470, 0x38

    .global gUnknown_080D74A8
gUnknown_080D74A8:
    .incbin "baserom.gba", 0x000D74A8, 0x10

    .global gUnknown_080D74B8
gUnknown_080D74B8:
    .incbin "baserom.gba", 0x000D74B8, 0x16

    .global gUnknown_080D74CE
gUnknown_080D74CE:
    .incbin "baserom.gba", 0x000D74CE, 0x62

    .global gUnknown_080D7530
gUnknown_080D7530:
    .incbin "baserom.gba", 0x000D7530, 0xF8

    .global gUnknown_080D7628
gUnknown_080D7628:
    .incbin "baserom.gba", 0x000D7628, 0x30

    .global gUnknown_080D7658
gUnknown_080D7658:
    .incbin "baserom.gba", 0x000D7658, 0x60

    .global gUnknown_080D76B8
gUnknown_080D76B8:
    .incbin "baserom.gba", 0x000D76B8, 0x8

    .global gUnknown_080D76C0
gUnknown_080D76C0:
    .incbin "baserom.gba", 0x000D76C0, 0x30

    .global gUnknown_080D76F0
gUnknown_080D76F0:
    .incbin "baserom.gba", 0x000D76F0, 0x50

    .global gUnknown_080D7740
gUnknown_080D7740:
    .incbin "baserom.gba", 0x000D7740, 0x8

    .global sSongNames
sSongNames:
    .incbin "baserom.gba", 0x000D7748, 0x133C

    .global gUnknown_080D8A84
gUnknown_080D8A84:
    .2byte 0x462 @ ANIM_ASCII
    .byte  0x00, 0x00
    .4byte 0

    .global gUnknown_080D8A8C
gUnknown_080D8A8C:
    .incbin "baserom.gba", 0x000D8A8C, 0x20

    .global gUnknown_080D8AAC
gUnknown_080D8AAC:
    .incbin "baserom.gba", 0x000D8AAC, 0x20

    .global gUnknown_080D8ACC
gUnknown_080D8ACC:
    .incbin "baserom.gba", 0x000D8ACC, 0x10

    .global gUnknown_080D8ADC
gUnknown_080D8ADC:
    .incbin "baserom.gba", 0x000D8ADC, 0x8

    .global gUnknown_080D8AE4
gUnknown_080D8AE4:
    .incbin "baserom.gba", 0x000D8AE4, 0x8

    .global gUnknown_080D8AEC
gUnknown_080D8AEC:
    .incbin "baserom.gba", 0x000D8AEC, 0x8

    .global gUnknown_080D8AF4
gUnknown_080D8AF4:
    .incbin "baserom.gba", 0x000D8AF4, 0x50

    .global gUnknown_080D8B44
gUnknown_080D8B44:
    .incbin "baserom.gba", 0x000D8B44, 0x8

    .global gUnknown_080D8B4C
gUnknown_080D8B4C:
    .incbin "baserom.gba", 0x000D8B4C, 0x50

    .global gUnknown_080D8B9C
gUnknown_080D8B9C:
    .incbin "baserom.gba", 0x000D8B9C, 0x14

    .global gUnknown_080D8BB0
gUnknown_080D8BB0:
    .incbin "baserom.gba", 0x000D8BB0, 0x28

    .global gUnknown_080D8BD8
gUnknown_080D8BD8:
    .incbin "baserom.gba", 0x000D8BD8, 0xA

    .global gUnknown_080D8BE2
gUnknown_080D8BE2:
    .incbin "baserom.gba", 0x000D8BE2, 0x5

    .global gUnknown_080D8BE7
gUnknown_080D8BE7:
    .incbin "baserom.gba", 0x000D8BE7, 0xD

    .global gUnknown_080D8BF4
gUnknown_080D8BF4:
    .incbin "baserom.gba", 0x000D8BF4, 0x30

    .global gUnknown_080D8C24
gUnknown_080D8C24:
    .incbin "baserom.gba", 0x000D8C24, 0x30

    .global gUnknown_080D8C54
gUnknown_080D8C54:
    .incbin "baserom.gba", 0x000D8C54, 0x8

    .global gUnknown_080D8C5C
gUnknown_080D8C5C:
    .incbin "baserom.gba", 0x000D8C5C, 0x8

    .global gUnknown_080D8C64
gUnknown_080D8C64:
    .incbin "baserom.gba", 0x000D8C64, 0x8

    .global gUnknown_080D8C6C
gUnknown_080D8C6C:
    .incbin "baserom.gba", 0x000D8C6C, 0x8

    .global gUnknown_080D8C74
gUnknown_080D8C74:
    .incbin "baserom.gba", 0x000D8C74, 0x60

    .global gUnknown_080D8CD4
gUnknown_080D8CD4:
    .incbin "baserom.gba", 0x000D8CD4, 0x8

    .global gUnknown_080D8CDC
gUnknown_080D8CDC:
    .incbin "baserom.gba", 0x000D8CDC, 0x24

    .global gUnknown_080D8D00
gUnknown_080D8D00:
    .incbin "baserom.gba", 0x000D8D00, 0x8

    .global gUnknown_080D8D08
gUnknown_080D8D08:
    .incbin "baserom.gba", 0x000D8D08, 0x178

    .global gUnknown_080D8E80
gUnknown_080D8E80:
    .incbin "baserom.gba", 0x000D8E80, 0x78

    .global gUnknown_080D8EF8
gUnknown_080D8EF8:
    .incbin "baserom.gba", 0x000D8EF8, 0x8

    .global gUnknown_080D8F00
gUnknown_080D8F00:
    .incbin "baserom.gba", 0x000D8F00, 0x8

    .global gUnknown_080D8F08
gUnknown_080D8F08:
    .incbin "baserom.gba", 0x000D8F08, 0x8

    .global gUnknown_080D8F10
gUnknown_080D8F10:
    .incbin "baserom.gba", 0x000D8F10, 0x8

    .global gUnknown_080D8F18
gUnknown_080D8F18:
    .incbin "baserom.gba", 0x000D8F18, 0x5

    .global gUnknown_080D8F1D
gUnknown_080D8F1D:
    .incbin "baserom.gba", 0x000D8F1D, 0x78

    .global gUnknown_080D8F95
gUnknown_080D8F95:
    .incbin "baserom.gba", 0x000D8F95, 0x79

    .global gUnknown_080D900E
gUnknown_080D900E:
    .incbin "baserom.gba", 0x000D900E, 0xA

    .global gUnknown_080D9018
gUnknown_080D9018:
    .incbin "baserom.gba", 0x000D9018, 0xA

    .global gUnknown_080D9022
gUnknown_080D9022:
    .incbin "baserom.gba", 0x000D9022, 0xA

    .global gUnknown_080D902C
gUnknown_080D902C:
    .incbin "baserom.gba", 0x000D902C, 0x28

    .global gUnknown_080D9054
gUnknown_080D9054:
    .incbin "baserom.gba", 0x000D9054, 0x28

    .global gUnknown_080D907C
gUnknown_080D907C:
    .incbin "baserom.gba", 0x000D907C, 0x48

    .global gUnknown_080D90C4
gUnknown_080D90C4:
    .incbin "baserom.gba", 0x000D90C4, 0x38

    .global gUnknown_080D90FC
gUnknown_080D90FC:
    .incbin "baserom.gba", 0x000D90FC, 0x38

    .global gUnknown_080D9134
gUnknown_080D9134:
    .incbin "baserom.gba", 0x000D9134, 0x30

    .global gUnknown_080D9164
gUnknown_080D9164:
    .incbin "baserom.gba", 0x000D9164, 0x48

    .global gUnknown_080D91AC
gUnknown_080D91AC:
    .incbin "baserom.gba", 0x000D91AC, 0x20

    .global gUnknown_080D91CC
gUnknown_080D91CC:
    .incbin "baserom.gba", 0x000D91CC, 0x50

    .global gUnknown_080D921C
gUnknown_080D921C:
    .incbin "baserom.gba", 0x000D921C, 0x30

    .global gUnknown_080D924C
gUnknown_080D924C:
    .incbin "baserom.gba", 0x000D924C, 0x18

    .global gUnknown_080D9264
gUnknown_080D9264:
    .incbin "baserom.gba", 0x000D9264, 0x18

    .global gUnknown_080D927C
gUnknown_080D927C:
    .incbin "baserom.gba", 0x000D927C, 0x30

    .global gUnknown_080D92AC
gUnknown_080D92AC:
    .incbin "baserom.gba", 0x000D92AC, 0x28

    .global gUnknown_080D92D4
gUnknown_080D92D4:
    .incbin "baserom.gba", 0x000D92D4, 0x38

    .global gUnknown_080D930C
gUnknown_080D930C:
    .incbin "baserom.gba", 0x000D930C, 0x18

    .global gUnknown_080D9324
gUnknown_080D9324:
    .incbin "baserom.gba", 0x000D9324, 0x18

    .global gUnknown_080D933C
gUnknown_080D933C:
    .incbin "baserom.gba", 0x000D933C, 0x28

    .global gUnknown_080D9364
gUnknown_080D9364:
    .incbin "baserom.gba", 0x000D9364, 0x30

    .global gUnknown_080D9394
gUnknown_080D9394:
    .incbin "baserom.gba", 0x000D9394, 0x18

    .global gUnknown_080D93AC
gUnknown_080D93AC:
    .incbin "baserom.gba", 0x000D93AC, 0x28

    .global gUnknown_080D93D4
gUnknown_080D93D4:
    .word gUnknown_080D902C
    .word gUnknown_080D9164
    .word gUnknown_080D907C
    .word gUnknown_080D90FC
    .word gUnknown_080D91CC
    .word gUnknown_080D924C

    .global gUnknown_080D93EC
gUnknown_080D93EC:
    .word gUnknown_080D9054
    .word gUnknown_080D91AC
    .word gUnknown_080D90C4
    .word gUnknown_080D9134
    .word gUnknown_080D921C
    .word gUnknown_080D9264

    .global gUnknown_080D9404
gUnknown_080D9404:
    .word gUnknown_080D927C
    .word gUnknown_080D92AC
    .word gUnknown_080D92D4
    .word gUnknown_080D930C
    .word gUnknown_080D9324
    .word gUnknown_080D933C
    .word gUnknown_080D9364
    .word gUnknown_080D9394
    .word gUnknown_080D93AC

    .global gUnknown_080D9428
gUnknown_080D9428:
    .incbin "baserom.gba", 0x000D9428, 0xA

    .global gUnknown_080D9432
gUnknown_080D9432:
    .incbin "baserom.gba", 0x000D9432, 0x6

    .global gUnknown_080D9438
gUnknown_080D9438:
    .incbin "baserom.gba", 0x000D9438, 0x6

    .global gUnknown_080D943E
gUnknown_080D943E:
    .incbin "baserom.gba", 0x000D943E, 0x3

    .global gUnknown_080D9441
gUnknown_080D9441:
    .incbin "baserom.gba", 0x000D9441, 0x3

    .global gUnknown_080D9444
gUnknown_080D9444:
    .incbin "baserom.gba", 0x000D9444, 0x4

    .global gUnknown_080D9448
gUnknown_080D9448:
    .incbin "baserom.gba", 0x000D9448, 0x20

    .global gUnknown_080D9468
gUnknown_080D9468:
    .incbin "baserom.gba", 0x000D9468, 0x5

    .global gUnknown_080D946D
gUnknown_080D946D:
    .incbin "baserom.gba", 0x000D946D, 0x7

    .global gUnknown_080D9474
gUnknown_080D9474:
    .incbin "baserom.gba", 0x000D9474, 0x30

    .global gUnknown_080D94A4
gUnknown_080D94A4:
    .incbin "baserom.gba", 0x000D94A4, 0x40

    .global gUnknown_080D94E4
gUnknown_080D94E4:
    .incbin "baserom.gba", 0x000D94E4, 0x28

    .global gUnknown_080D950C
gUnknown_080D950C:
    .incbin "baserom.gba", 0x000D950C, 0x30
    
    .global gUnknown_080D953C
gUnknown_080D953C:
    .incbin "baserom.gba", 0x000D953C, 0x28

    .global gUnknown_080D9564
gUnknown_080D9564:
    .4byte gUnknown_080D9474
    .4byte gUnknown_080D94A4
    .4byte gUnknown_080D94E4
    .4byte gUnknown_080D950C
    .4byte gUnknown_080D953C

    .global gUnknown_080D9578
gUnknown_080D9578:
    .incbin "baserom.gba", 0x000D9578, 0x20

    .global gUnknown_080D9598
gUnknown_080D9598:
    .incbin "baserom.gba", 0x000D9598, 0x20

    .global gUnknown_080D95B8
gUnknown_080D95B8:
    .incbin "baserom.gba", 0x000D95B8, 0x20

    .global gUnknown_080D95D8
gUnknown_080D95D8:
    .incbin "baserom.gba", 0x000D95D8, 0x20

    .global gUnknown_080D95F8
gUnknown_080D95F8:
    .incbin "baserom.gba", 0x000D95F8, 0x20

    .global gUnknown_080D9618
gUnknown_080D9618:
    .incbin "baserom.gba", 0x000D9618, 0x5

    .global gUnknown_080D961D
gUnknown_080D961D:
    .incbin "baserom.gba", 0x000D961D, 0x7

    .global gUnknown_080D9624
gUnknown_080D9624:
    .incbin "baserom.gba", 0x000D9624, 0x10

    .global gUnknown_080D9634
gUnknown_080D9634:
    .incbin "baserom.gba", 0x000D9634, 0xC

    .global gUnknown_080D9640
gUnknown_080D9640:
    .incbin "baserom.gba", 0x000D9640, 0x4

    .global gUnknown_080D9644
gUnknown_080D9644:
    .incbin "baserom.gba", 0x000D9644, 0x24

    .global gUnknown_080D9668
gUnknown_080D9668:
    .incbin "baserom.gba", 0x000D9668, 0x10

    .global gUnknown_080D9678
gUnknown_080D9678:
    .incbin "baserom.gba", 0x000D9678, 0xC0

    .global gUnknown_080D9738
gUnknown_080D9738:
    .incbin "baserom.gba", 0x000D9738, 0xC0

    .global gUnknown_080D97F8
gUnknown_080D97F8:
    .incbin "baserom.gba", 0x000D97F8, 0xA0

    .global gUnknown_080D9898
gUnknown_080D9898:
    .incbin "baserom.gba", 0x000D9898, 0x40

    .global gUnknown_080D98D8
gUnknown_080D98D8:
    .incbin "baserom.gba", 0x000D98D8, 0x30

    .global gUnknown_080D9908
gUnknown_080D9908:
    .incbin "baserom.gba", 0x000D9908, 0x78

    .global gUnknown_080D9980
gUnknown_080D9980:
    .incbin "baserom.gba", 0x000D9980, 0x28

    .global gUnknown_080D99A8
gUnknown_080D99A8:
    .incbin "baserom.gba", 0x000D99A8, 0x28

    .global gUnknown_080D99D0
gUnknown_080D99D0:
    .incbin "baserom.gba", 0x000D99D0, 0xC

    .global gUnknown_080D99DC
gUnknown_080D99DC:
    .incbin "baserom.gba", 0x000D99DC, 0x40

    .global gUnknown_080D9A1C
gUnknown_080D9A1C:
    .incbin "baserom.gba", 0x000D9A1C, 0x40

    .global gUnknown_080D9A5C
gUnknown_080D9A5C:
    .incbin "baserom.gba", 0x000D9A5C, 0x40
    
    .global gUnknown_080D9A9C
gUnknown_080D9A9C:
    .incbin "baserom.gba", 0x000D9A9C, 0x40

    .global gUnknown_080D9ADC
gUnknown_080D9ADC:
    .incbin "baserom.gba", 0x000D9ADC, 0x40

    .global gUnknown_080D9B1C
gUnknown_080D9B1C:
    .incbin "baserom.gba", 0x000D9B1C, 0x40

    .global gUnknown_080D9B5C
gUnknown_080D9B5C:
    .int gUnknown_080D99DC
    .int gUnknown_080D9A1C, gUnknown_080D9A5C, gUnknown_080D9A9C, gUnknown_080D9ADC
    .int gUnknown_080D9B1C

    .global gUnknown_080D9B74
gUnknown_080D9B74:
    .incbin "baserom.gba", 0x000D9B74, 0x5

    .global gUnknown_080D9B79
gUnknown_080D9B79:
    .incbin "baserom.gba", 0x000D9B79, 0x5

    .global gUnknown_080D9B7E
gUnknown_080D9B7E:
    .incbin "baserom.gba", 0x000D9B7E, 0xA

    .global gUnknown_080D9B88
gUnknown_080D9B88:
    .incbin "baserom.gba", 0x000D9B88, 0x22

    .global gUnknown_080D9BAA
gUnknown_080D9BAA:
    .incbin "baserom.gba", 0x000D9BAA, 0x8

    .global gUnknown_080D9BB2
gUnknown_080D9BB2:
    .incbin "baserom.gba", 0x000D9BB2, 0xE

    .global gUnknown_080D9BC0
gUnknown_080D9BC0:
    .incbin "baserom.gba", 0x000D9BC0, 0xD0

    .global gUnknown_080D9C90
gUnknown_080D9C90:
    .incbin "baserom.gba", 0x000D9C90, 0x78

    .global gUnknown_080D9D08
gUnknown_080D9D08:
    .incbin "baserom.gba", 0x000D9D08, 0x138

    .global gUnknown_080D9E40
gUnknown_080D9E40:
    .incbin "baserom.gba", 0x000D9E40, 0x18

    .global gUnknown_080D9E58
gUnknown_080D9E58:
    .incbin "baserom.gba", 0x000D9E58, 0x10

    .global gUnknown_080D9E68
gUnknown_080D9E68:
    .incbin "baserom.gba", 0x000D9E68, 0x18

    .global gUnknown_080D9E80
gUnknown_080D9E80:
    .incbin "baserom.gba", 0x000D9E80, 0x10

    .global gUnknown_080D9E90
gUnknown_080D9E90:
    .incbin "baserom.gba", 0x000D9E90, 0x78

    .global gUnknown_080D9F08
gUnknown_080D9F08:
    .incbin "baserom.gba", 0x000D9F08, 0x50

    .global gUnknown_080D9F58
gUnknown_080D9F58:
    .incbin "baserom.gba", 0x000D9F58, 0x4

    .global gUnknown_080D9F5C
gUnknown_080D9F5C:
    .incbin "baserom.gba", 0x000D9F5C, 0x21

    .global gUnknown_080D9F7D
gUnknown_080D9F7D:
    .incbin "baserom.gba", 0x000D9F7D, 0x6

    .global gUnknown_080D9F83
gUnknown_080D9F83:
    .incbin "baserom.gba", 0x000D9F83, 0x9

    .global gUnknown_080D9F8C
gUnknown_080D9F8C:
    .incbin "baserom.gba", 0x000D9F8C, 0x18

    .global gUnknown_080D9FA4
gUnknown_080D9FA4:
    .incbin "baserom.gba", 0x000D9FA4, 0x18

    .global gUnknown_080D9FBC
gUnknown_080D9FBC:
    .incbin "baserom.gba", 0x000D9FBC, 0x7

    .global gUnknown_080D9FC3
gUnknown_080D9FC3:
    .incbin "baserom.gba", 0x000D9FC3, 0x7

    .global gUnknown_080D9FCA
gUnknown_080D9FCA:
    .incbin "baserom.gba", 0x000D9FCA, 0x6

    .global gUnknown_080D9FD0
gUnknown_080D9FD0:
    .incbin "baserom.gba", 0x000D9FD0, 0x14

    .global gUnknown_080D9FE4
gUnknown_080D9FE4:
    .incbin "baserom.gba", 0x000D9FE4, 0x28

    .global gUnknown_080DA00C
gUnknown_080DA00C:
    .incbin "baserom.gba", 0x000DA00C, 0x28

    .global gUnknown_080DA034
gUnknown_080DA034:
    .incbin "baserom.gba", 0x000DA034, 0x20

    .global gUnknown_080DA054
gUnknown_080DA054:
    .incbin "baserom.gba", 0x000DA054, 0x18

    .global gUnknown_080DA06C
gUnknown_080DA06C:
    .incbin "baserom.gba", 0x000DA06C, 0x18

    .global gUnknown_080DA084
gUnknown_080DA084:
    .incbin "baserom.gba", 0x000DA084, 0x200

    .global gUnknown_080DA284
gUnknown_080DA284:
    .incbin "baserom.gba", 0x000DA284, 0x8

    .global gUnknown_080DA28C
gUnknown_080DA28C:
    .incbin "baserom.gba", 0x000DA28C, 0x1E

    .global gUnknown_080DA2AA
gUnknown_080DA2AA:
    .incbin "baserom.gba", 0x000DA2AA, 0xF

    .global gUnknown_080DA2B9
gUnknown_080DA2B9:
    .incbin "baserom.gba", 0x000DA2B9, 0xF

    .global gUnknown_080DA2C8
gUnknown_080DA2C8:
    .incbin "baserom.gba", 0x000DA2C8, 0x20

    .global gUnknown_080DA2E8
gUnknown_080DA2E8:
    .incbin "baserom.gba", 0x000DA2E8, 0x10

    .global gUnknown_080DA2F8
gUnknown_080DA2F8:
    .incbin "baserom.gba", 0x000DA2F8, 0x30

    .global gUnknown_080DA328
gUnknown_080DA328:
    .incbin "baserom.gba", 0x000DA328, 0x8

    .global gUnknown_080DA330
gUnknown_080DA330:
    .incbin "baserom.gba", 0x000DA330, 0x28

    .global gUnknown_080DA358
gUnknown_080DA358:
    .incbin "baserom.gba", 0x000DA358, 0x8

    .global gUnknown_080DA360
gUnknown_080DA360:
    .incbin "baserom.gba", 0x000DA360, 0xC0

    .global gUnknown_080DA420
gUnknown_080DA420:
    .incbin "baserom.gba", 0x000DA420, 0x8

    .global strCredits_CreatedBy
strCredits_CreatedBy:       @ 0x080DA428
    .byte 10    @ strlen("CREATED0BY")
    .ascii "CREATED0BY\0"
    .space 0x080DA44A - 0x080DA434
    .byte 0x4B, 0, 0, 0, 3, 0

    .global strCredits_SonicTeam
strCredits_SonicTeam:       @ 0x080DA450
    .byte 10
    .ascii "SONIC0TEAM\0"
    .space 0x080DA472 - 0x080DA45C
    .byte 0x78, 0, 0x28, 0, 2, 0
    
    .global strCredits_Producer
strCredits_Producer:        @ 0x080DA478
    .byte 0x08
    .ascii "PRODUCER\0"
    .incbin "baserom.gba", 0x000DA482, 0x080DB804-0x080DA482

    .global gUnknown_080DB804
gUnknown_080DB804:
    .incbin "baserom.gba", 0x000DB804, 0x20

    .global gUnknown_080DB824
gUnknown_080DB824:
    .incbin "baserom.gba", 0x000DB824, 0x20

    .global gUnknown_080DB844
gUnknown_080DB844:
    .incbin "baserom.gba", 0x000DB844, 0x20

    .global gUnknown_080DB864
gUnknown_080DB864:
    .incbin "baserom.gba", 0x000DB864, 0x4

    .global gUnknown_080DB868
gUnknown_080DB868:
    .incbin "baserom.gba", 0x000DB868, 0xC8

    .global gUnknown_080DB930
gUnknown_080DB930:
    .incbin "baserom.gba", 0x000DB930, 0x20

    .global gUnknown_080DB950
gUnknown_080DB950:
    .incbin "baserom.gba", 0x000DB950, 0x8

    .global gUnknown_080DB958
gUnknown_080DB958:
    .incbin "baserom.gba", 0x000DB958, 0x26

    .global gUnknown_080DB97E
gUnknown_080DB97E:
    .incbin "baserom.gba", 0x000DB97E, 0x16

    .global gUnknown_080DB994
gUnknown_080DB994:
    .incbin "baserom.gba", 0x000DB994, 0x8

    .global gUnknown_080DB99C
gUnknown_080DB99C:
    .incbin "baserom.gba", 0x000DB99C, 0x18

    .global gUnknown_080DB9B4
gUnknown_080DB9B4:
    .incbin "baserom.gba", 0x000DB9B4, 0x20

    .global gUnknown_080DB9D4
gUnknown_080DB9D4:
    .incbin "baserom.gba", 0x000DB9D4, 0x10

    .global gUnknown_080DB9E4
gUnknown_080DB9E4:
    .incbin "baserom.gba", 0x000DB9E4, 0x8
    
    .global gUnknown_080DB9EC
gUnknown_080DB9EC:
    .incbin "baserom.gba", 0x000DB9EC, 0x18

    .global gUnknown_080DBA04
gUnknown_080DBA04:
    .incbin "baserom.gba", 0x000DBA04, 0x20

    .global gUnknown_080DBA24
gUnknown_080DBA24:
    .incbin "baserom.gba", 0x000DBA24, 0x10

    .global gUnknown_080DBA34
gUnknown_080DBA34:
    .incbin "baserom.gba", 0x000DBA34, 0x10

    .global gUnknown_080DBA44
gUnknown_080DBA44:
    .incbin "baserom.gba", 0x000DBA44, 0x10

    .global gUnknown_080DBA54
gUnknown_080DBA54:
    .incbin "baserom.gba", 0x000DBA54, 0x10

    .global gUnknown_080DBA64
gUnknown_080DBA64:
    .incbin "baserom.gba", 0x000DBA64, 0x8

    .global gUnknown_080DBA6C
gUnknown_080DBA6C:
    .incbin "baserom.gba", 0x000DBA6C, 0x8

    .global gUnknown_080DBA74
gUnknown_080DBA74:
    .incbin "baserom.gba", 0x000DBA74, 0x18

    .global gUnknown_080DBA8C
gUnknown_080DBA8C:
    .incbin "baserom.gba", 0x000DBA8C, 0x8

    .global gUnknown_080DBA94
gUnknown_080DBA94:
    .incbin "baserom.gba", 0x000DBA94, 0x10

    .global gUnknown_080DBAA4
gUnknown_080DBAA4:
    .int gUnknown_080DB99C, gUnknown_080DB9B4, gUnknown_080DB9D4, gUnknown_080DB9E4

    .global gUnknown_080DBAB4
gUnknown_080DBAB4:
    .int gUnknown_080DBA44, gUnknown_080DBA54, gUnknown_080DBA54

    .global gUnknown_080DBAC0
gUnknown_080DBAC0:
    .int gUnknown_080DB9EC, gUnknown_080DBA04

    .global gUnknown_080DBAC8
gUnknown_080DBAC8:
    .int gUnknown_080DBA24, gUnknown_080DBA34

    .global gUnknown_080DBAD0
gUnknown_080DBAD0:
    .int gUnknown_080DBA64, gUnknown_080DBA6C

    .global gUnknown_080DBAD8
gUnknown_080DBAD8:
    .incbin "baserom.gba", 0x000DBAD8, 0xA0

    .global gUnknown_080DBB78
gUnknown_080DBB78:
    .incbin "baserom.gba", 0x000DBB78, 0x20
    
    .global gUnknown_080DBB98
gUnknown_080DBB98:
    .incbin "baserom.gba", 0x000DBB98, 0x20

    .global gUnknown_080DBBB8
gUnknown_080DBBB8:
    .incbin "baserom.gba", 0x000DBBB8, 0x20

    .global gUnknown_080DBBD8
gUnknown_080DBBD8:
    .incbin "baserom.gba", 0x000DBBD8, 0x20

    .global gUnknown_080DBBF8
gUnknown_080DBBF8:
    .incbin "baserom.gba", 0x000DBBF8, 0x20

    .global gUnknown_080DBC18
gUnknown_080DBC18:
    .incbin "baserom.gba", 0x000DBC18, 0x20

    .global gUnknown_080DBC38
gUnknown_080DBC38:
    .incbin "baserom.gba", 0x000DBC38, 0x20

    .global gUnknown_080DBC58
gUnknown_080DBC58:
    .incbin "baserom.gba", 0x000DBC58, 0x20

    .global gUnknown_080DBC78
gUnknown_080DBC78:
    .incbin "baserom.gba", 0x000DBC78, 0x1B

    .global gUnknown_080DBC93
gUnknown_080DBC93:
    .incbin "baserom.gba", 0x000DBC93, 0x1B

    .global gUnknown_080DBCAE
gUnknown_080DBCAE:
    .incbin "baserom.gba", 0x000DBCAE, 0x4

    .global gUnknown_080DBCB2
gUnknown_080DBCB2:
    .incbin "baserom.gba", 0x000DBCB2, 0x3

    .global gUnknown_080DBCB5
gUnknown_080DBCB5:
    .incbin "baserom.gba", 0x000DBCB5, 0x2

    .global gUnknown_080DBCB7
gUnknown_080DBCB7:
    .incbin "baserom.gba", 0x000DBCB7, 0x2

    .global gUnknown_080DBCB9
gUnknown_080DBCB9:
    .incbin "baserom.gba", 0x000DBCB9, 0x2

    .global gUnknown_080DBCBB
gUnknown_080DBCBB:
    .incbin "baserom.gba", 0x000DBCBB, 0x3

    .global gUnknown_080DBCBE
gUnknown_080DBCBE:
    .incbin "baserom.gba", 0x000DBCBE, 0x1B

    .global gUnknown_080DBCD9
gUnknown_080DBCD9:
    .incbin "baserom.gba", 0x000DBCD9, 0x1B

    .global gUnknown_080DBCF4
gUnknown_080DBCF4:
    .incbin "baserom.gba", 0x000DBCF4, 0x5

    .global gUnknown_080DBCF9
gUnknown_080DBCF9:
    .incbin "baserom.gba", 0x000DBCF9, 0x3

    .global gUnknown_080DBCFC
gUnknown_080DBCFC:
    .incbin "baserom.gba", 0x000DBCFC, 0x20

    .global gUnknown_080DBD1C
gUnknown_080DBD1C:
    .incbin "baserom.gba", 0x000DBD1C, 0x18

    .global gUnknown_080DBD34
gUnknown_080DBD34:
    .incbin "baserom.gba", 0x000DBD34, 0x8

    .global gUnknown_080DBD3C
gUnknown_080DBD3C:
    .incbin "baserom.gba", 0x000DBD3C, 0x18

    .global gUnknown_080DBD54
gUnknown_080DBD54:
    .incbin "baserom.gba", 0x000DBD54, 0x8

    .global gUnknown_080DBD5C
gUnknown_080DBD5C:
    .incbin "baserom.gba", 0x000DBD5C, 0x8

    .global gUnknown_080DBD64
gUnknown_080DBD64:
    .incbin "baserom.gba", 0x000DBD64, 0x24

    .global gUnknown_080DBD88
gUnknown_080DBD88:
    .incbin "baserom.gba", 0x000DBD88, 0x8

    .global gPalette_080DBD90
gPalette_080DBD90:
    .incbin "graphics/gPalette_080DBD90.gbapal"
    .incbin "graphics/gPalette_080DBDB0.gbapal"

    .global gPalette_080DBDD0
gPalette_080DBDD0:
    .incbin "graphics/gPalette_080DBDD0.gbapal"
    .incbin "graphics/gPalette_080DBDF0.gbapal"

    .global gPalette_080DBE10
gPalette_080DBE10:
    .incbin "graphics/gPalette_080DBE10.gbapal"
    .incbin "graphics/gPalette_080DBE30.gbapal"

    .global gUnknown_080DBE50
gUnknown_080DBE50:
    .byte 2, 3, 4, 0
