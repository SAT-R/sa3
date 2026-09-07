.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ Probably VERY similar to the Singleplayer Character Select
@ Called as follows in Task_EC_808D718();
@ extern void CreateCharacterSelectMultiplayer(SDC_EC *strcEC);
	thumb_func_start CreateCharacterSelectMultiplayer
CreateCharacterSelectMultiplayer: @ 0x0809F850
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0809F944 @ =gDispCnt
	ldr r2, _0809F948 @ =0x00001541
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0809F94C @ =Task_809FCFC
	movs r1, #0xad
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0809F950 @ =TaskDestructor_80A13B0
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0809F954 @ =gLoadedSaveGame
	ldr r2, _0809F958 @ =0x00000366
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4]
	movs r2, #0
	ldr r0, _0809F95C @ =0x0300001C
	adds r3, r1, r0
_0809F88A:
	lsls r0, r2, #2
	adds r0, r3, r0
	adds r1, r2, #0
	adds r1, #0xe
	adds r1, r5, r1
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0809F88A
	adds r0, r5, #0
	adds r0, #0x12
	str r0, [r4, #0x30]
	adds r0, #2
	str r0, [r4, #0x2c]
	adds r0, #3
	str r0, [r4, #0x18]
	ldrb r0, [r5, #0x17]
	movs r1, #0
	strb r0, [r4, #3]
	adds r0, r5, #0
	adds r0, #0x16
	str r0, [r4, #0x14]
	movs r0, #1
	strb r0, [r5, #0x16]
	ldrb r0, [r5, #0x12]
	strb r0, [r4, #1]
	movs r0, #1
	strh r0, [r4, #6]
	strh r1, [r4, #8]
	strh r1, [r4, #4]
	strh r1, [r4, #0xa]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0xc]
	movs r2, #0xf0
	lsls r2, r2, #7
	str r2, [r4, #0x4c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x50]
	str r2, [r4, #0x54]
	str r0, [r4, #0x58]
	str r2, [r4, #0x34]
	movs r0, #0x88
	lsls r0, r0, #5
	str r0, [r4, #0x38]
	str r2, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r1, [r4, #0x44]
	str r1, [r4, #0x48]
	str r1, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	str r2, [r4, #0x6c]
	movs r0, #0xaa
	lsls r0, r0, #7
	str r0, [r4, #0x70]
	movs r0, #0xc9
	lsls r0, r0, #8
	str r0, [r4, #0x74]
	movs r0, #0xb0
	lsls r0, r0, #5
	str r0, [r4, #0x78]
	str r2, [r4, #0x5c]
	movs r1, #0x91
	lsls r1, r1, #8
	str r1, [r4, #0x60]
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r4, #0x64]
	str r1, [r4, #0x68]
	adds r1, r4, #0
	adds r1, #0x84
	ldr r0, _0809F960 @ =0x06010000
	str r0, [r1]
	adds r0, r4, #0
	bl sub_809F964
	adds r0, r4, #0
	bl sub_809FBD0
	bl m4aMPlayAllStop
	movs r0, #3         @ MUS_CHARACTER_SELECT
	bl m4aSongNumStart
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F944: .4byte gDispCnt
_0809F948: .4byte 0x00001541
_0809F94C: .4byte Task_809FCFC
_0809F950: .4byte TaskDestructor_80A13B0
_0809F954: .4byte gLoadedSaveGame
_0809F958: .4byte 0x00000366
_0809F95C: .4byte 0x0300001C
_0809F960: .4byte 0x06010000

	thumb_func_start sub_809F964
sub_809F964: @ 0x0809F964
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r5, _0809FBA8 @ =0x06010000
	adds r0, #0xdc
	str r5, [r0]
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r5, r5, r1
	ldr r2, _0809FBAC @ =gUnknown_080D8D00
	ldrh r1, [r2]
	movs r3, #0
	mov r8, r3
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x3c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x40]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	strb r3, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xb4
	str r5, [r0]
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r5, r5, r3
	ldr r2, _0809FBB0 @ =gUnknown_080D8D08
	ldrb r1, [r7]
	lsls r1, r1, #6
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #6
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x34]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r0, r7, r1
	str r5, [r0]
	adds r5, #0x80
	ldr r1, _0809FBB4 @ =0x00000574
	strh r1, [r0, #0xc]
	movs r1, #5
	strb r1, [r0, #0x1a]
	subs r1, #6
	strb r1, [r0, #0x1b]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x60]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	strb r3, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x8c
	str r5, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r5, r5, r3
	ldr r2, _0809FBB8 @ =gUnknown_080D8F08
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x44]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x48]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	ldr r1, _0809FBBC @ =0x0000FFC0
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r1, [r7]
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	ldr r3, _0809FBC0 @ =gUnknown_080D8F18
	mov sl, r3
	ldrb r1, [r7, #1]
	add r1, sl
	ldrb r1, [r1]
	str r5, [r0]
	movs r3, #0xe0
	lsls r3, r3, #1
	mov sb, r3
	add r5, sb
	ldr r6, _0809FBC4 @ =gUnknown_080D8E80
	lsls r2, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrh r2, [r1]
	strh r2, [r0, #0xc]
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x5c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x60]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r1, [r7]
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	ldrb r1, [r7, #1]
	add r1, sl
	ldrb r1, [r1]
	str r5, [r0]
	add r5, sb
	lsls r2, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrh r2, [r1]
	strh r2, [r0, #0xc]
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x64]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x68]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	strb r3, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r7, r3
	str r5, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r2, _0809FBC8 @ =gUnknown_080D8EF8
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x5c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x60]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r3, #0x40
	strh r3, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r7, r1
	str r5, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r5, r5, r3
	ldr r2, _0809FBCC @ =gUnknown_080D8F10
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x4c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x50]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x84
	str r5, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809FBA8: .4byte 0x06010000
_0809FBAC: .4byte gUnknown_080D8D00
_0809FBB0: .4byte gUnknown_080D8D08
_0809FBB4: .4byte 0x00000574
_0809FBB8: .4byte gUnknown_080D8F08
_0809FBBC: .4byte 0x0000FFC0
_0809FBC0: .4byte gUnknown_080D8F18
_0809FBC4: .4byte gUnknown_080D8E80
_0809FBC8: .4byte gUnknown_080D8EF8
_0809FBCC: .4byte gUnknown_080D8F10

	thumb_func_start sub_809FBD0
sub_809FBD0: @ 0x0809FBD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, _0809FCC0 @ =gBgCntRegs
	mov sl, r0
	movs r7, #0
	movs r4, #0
	ldr r0, _0809FCC4 @ =0x00004E07
	mov r1, sl
	strh r0, [r1]
	ldr r2, _0809FCC8 @ =gBgScrollRegs
	mov r8, r2
	strh r4, [r2]
	strh r4, [r2, #2]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, _0809FCCC @ =0x06004000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0809FCD0 @ =0x06007000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r2, _0809FCD4 @ =gUnknown_080D8CDC
	mov sb, r2
	ldrh r1, [r2]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x2d
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	ldr r2, _0809FCD8 @ =0x0000021E
	adds r1, r5, r2
	strb r7, [r1]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _0809FCDC @ =0x0000030E
	mov r1, sl
	strh r0, [r1, #2]
	mov r2, r8
	strh r4, [r2, #4]
	strh r4, [r2, #6]
	movs r1, #0x8d
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _0809FCE0 @ =0x0600C000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0809FCE4 @ =0x06001800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	mov r2, sb
	ldrh r1, [r2, #0x16]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r6, #0x10
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r2, _0809FCE8 @ =0x0000025E
	adds r1, r5, r2
	strb r7, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _0809FCEC @ =0x00001B89
	mov r1, sl
	strh r0, [r1, #4]
	mov r2, r8
	strh r4, [r2, #8]
	strh r4, [r2, #0xa]
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, _0809FCF0 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0809FCF4 @ =0x0600D800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldrb r1, [r5, #1]
	adds r1, #5
	lsls r1, r1, #1
	add r1, sb
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r2, _0809FCF8 @ =0x0000029E
	adds r5, r5, r2
	strb r7, [r5]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809FCC0: .4byte gBgCntRegs
_0809FCC4: .4byte 0x00004E07
_0809FCC8: .4byte gBgScrollRegs
_0809FCCC: .4byte 0x06004000
_0809FCD0: .4byte 0x06007000
_0809FCD4: .4byte gUnknown_080D8CDC
_0809FCD8: .4byte 0x0000021E
_0809FCDC: .4byte 0x0000030E
_0809FCE0: .4byte 0x0600C000
_0809FCE4: .4byte 0x06001800
_0809FCE8: .4byte 0x0000025E
_0809FCEC: .4byte 0x00001B89
_0809FCF0: .4byte 0x06008000
_0809FCF4: .4byte 0x0600D800
_0809FCF8: .4byte 0x0000029E

	thumb_func_start Task_809FCFC
Task_809FCFC: @ 0x0809FCFC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0809FDEC @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	adds r0, r7, #0
	bl sub_80A19C0
	adds r0, r7, #0
	bl sub_80A1030
	adds r0, r7, #0
	bl sub_80A10B0
	adds r0, r7, #0
	bl sub_80A1110
	adds r0, r7, #0
	bl sub_80A11B8
	ldr r1, _0809FDF0 @ =0x03000001
	adds r0, r5, r1
	ldr r2, _0809FDF4 @ =0x03000003
	adds r1, r5, r2
	ldr r3, _0809FDF8 @ =0x0300004C
	adds r2, r5, r3
	ldr r4, _0809FDFC @ =0x03000050
	adds r3, r5, r4
	ldr r6, _0809FE00 @ =0x03000084
	adds r4, r5, r6
	ldr r4, [r4]
	str r4, [sp]
	bl CreateSomeTask_809BF3C
	ldr r1, _0809FE04 @ =0x03000088
	adds r5, r5, r1
	str r0, [r5]
	ldr r5, _0809FE08 @ =gPlayers
	adds r3, r5, #0
	adds r3, #0x2a
	ldrb r1, [r3]
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r1, [r4]
	movs r3, #4
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	movs r6, #2
	orrs r0, r6
	strb r0, [r4]
	movs r0, #0xbd
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r4]
	ldr r1, _0809FE0C @ =0x0000017B
	adds r4, r5, r1
	ldrb r0, [r4]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _0809FE10 @ =0x000002CA
	adds r4, r5, r0
	ldrb r1, [r4]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r4]
	ldr r1, _0809FE14 @ =0x000002CB
	adds r4, r5, r1
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r4]
	ldr r4, _0809FE18 @ =0x0000041A
	adds r1, r5, r4
	ldrb r0, [r1]
	ands r2, r0
	orrs r2, r6
	strb r2, [r1]
	ldr r6, _0809FE1C @ =0x0000041B
	adds r1, r5, r6
	ldrb r0, [r1]
	ands r3, r0
	movs r0, #1
	orrs r3, r0
	strb r3, [r1]
	movs r4, #0
	movs r6, #0x1d
	rsbs r6, r6, #0
_0809FDC6:
	ldr r0, _0809FE20 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, r4
	bne _0809FE24
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0x2b
	ldrb r2, [r0]
	adds r1, r6, #0
	ands r1, r2
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	b _0809FE4E
	.align 2, 0
_0809FDEC: .4byte gCurTask
_0809FDF0: .4byte 0x03000001
_0809FDF4: .4byte 0x03000003
_0809FDF8: .4byte 0x0300004C
_0809FDFC: .4byte 0x03000050
_0809FE00: .4byte 0x03000084
_0809FE04: .4byte 0x03000088
_0809FE08: .4byte gPlayers
_0809FE0C: .4byte 0x0000017B
_0809FE10: .4byte 0x000002CA
_0809FE14: .4byte 0x000002CB
_0809FE18: .4byte 0x0000041A
_0809FE1C: .4byte 0x0000041B
_0809FE20: .4byte gStageData
_0809FE24:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	adds r1, r1, r5
	adds r3, r1, #0
	adds r3, #0x2b
	ldrb r2, [r3]
	adds r0, r6, #0
	ands r0, r2
	movs r2, #0xc
	orrs r0, r2
	strb r0, [r3]
	adds r1, #0x2a
	lsls r3, r4, #4
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
_0809FE4E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0809FDC6
	ldr r1, [r7, #0x18]
	ldrb r0, [r1]
	cmp r0, #0x23
	bne _0809FE84
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r7, #0x18]
	ldrb r0, [r0]
	strb r0, [r7, #3]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r7, #0x4c]
	str r0, [r7, #0x54]
	ldr r0, _0809FE7C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809FE80 @ =Task_80A13F4
	b _0809FE9E
	.align 2, 0
_0809FE7C: .4byte gCurTask
_0809FE80: .4byte Task_80A13F4
_0809FE84:
	cmp r0, #0x22
	bne _0809FE98
	ldr r0, _0809FE90 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809FE94 @ =Task_80A14AC
	b _0809FE9E
	.align 2, 0
_0809FE90: .4byte gCurTask
_0809FE94: .4byte Task_80A14AC
_0809FE98:
	ldr r0, _0809FEA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809FEAC @ =Task_809FEB0
_0809FE9E:
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809FEA8: .4byte gCurTask
_0809FEAC: .4byte Task_809FEB0

	thumb_func_start Task_809FEB0
Task_809FEB0: @ 0x0809FEB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _0809FED8 @ =gCurTask
	ldr r2, [r7]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, _0809FEDC @ =gStageData
	ldrb r5, [r0, #6]
	movs r6, #0
	ldr r1, [r4, #0x18]
	ldrb r0, [r1]
	cmp r0, #0x22
	bne _0809FEE4
	ldr r0, _0809FEE0 @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A006C
	.align 2, 0
_0809FED8: .4byte gCurTask
_0809FEDC: .4byte gStageData
_0809FEE0: .4byte Task_80A14AC
_0809FEE4:
	cmp r0, #0x23
	bne _0809FF1C
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	ldrb r0, [r4, #1]
	strb r0, [r4, #2]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	ldr r1, [r7]
	ldr r0, _0809FF18 @ =Task_80A13F4
	b _080A006A
	.align 2, 0
_0809FF18: .4byte Task_80A13F4
_0809FF1C:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	lsls r0, r5, #0x10
	lsrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r1, #1
	bhi _0809FF7C
	ldrb r0, [r4, #1]
	ldr r1, [r4, #0x30]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bne _0809FF7C
	movs r5, #0
	ldr r0, _0809FF98 @ =gUnknown_030010AC
	mov sb, r0
	ldr r0, _0809FF9C @ =gUnknown_080D8F18
	mov r8, r0
_0809FF50:
	asrs r0, r7, #0x10
	cmp r0, r5
	beq _0809FF72
	mov r0, sb
	adds r1, r5, r0
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, r8
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0809FF72
	adds r0, r4, #0
	bl sub_80A1A28
_0809FF72:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0809FF50
_0809FF7C:
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0xb
	bls _0809FFA8
	ldr r1, [r4, #0x14]
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	ldr r0, _0809FFA0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809FFA4 @ =sub_80A021C
	b _080A006A
	.align 2, 0
_0809FF98: .4byte gUnknown_030010AC
_0809FF9C: .4byte gUnknown_080D8F18
_0809FFA0: .4byte gCurTask
_0809FFA4: .4byte sub_80A021C
_0809FFA8:
	ldrb r0, [r4, #1]
	ldr r1, [r4, #0x30]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	beq _0809FFF6
	ldr r0, [r4, #0x14]
	movs r1, #0
	strb r1, [r0]
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0809FFCE
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	beq _0809FFEC
_0809FFCE:
	ldrb r0, [r4, #1]
	ldr r2, [r4, #0x30]
	cmp r0, #4
	bne _0809FFE2
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _0809FFE2
	movs r6, #2
	b _0809FFFA
_0809FFE2:
	ldrb r1, [r4, #1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	ble _0809FFF0
_0809FFEC:
	movs r6, #1
	b _0809FFFA
_0809FFF0:
	cmp r1, r0
	bge _0809FFF6
	movs r6, #2
_0809FFF6:
	cmp r6, #0
	beq _080A0002
_0809FFFA:
	adds r0, r4, #0
	bl sub_80A18B8
	b _080A000E
_080A0002:
	adds r0, r4, #0
	bl sub_80A18E0
	adds r0, r4, #0
	bl sub_80A1030
_080A000E:
	cmp r6, #1
	beq _080A0018
	cmp r6, #2
	beq _080A0048
	b _080A006C
_080A0018:
	adds r0, r4, #0
	bl sub_80A14E4
	cmp r0, #1
	bne _080A006C
	ldr r0, _080A003C @ =0xFFFFC400
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	strb r0, [r4, #1]
	adds r0, r4, #0
	bl sub_80A0DC8
	ldr r0, _080A0040 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A0044 @ =sub_80A0080
	b _080A006A
	.align 2, 0
_080A003C: .4byte 0xFFFFC400
_080A0040: .4byte gCurTask
_080A0044: .4byte sub_80A0080
_080A0048:
	adds r0, r4, #0
	bl sub_80A1540
	cmp r0, #1
	bne _080A006C
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	strb r0, [r4, #1]
	adds r0, r4, #0
	bl sub_80A0DC8
	ldr r0, _080A0078 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A007C @ =sub_80A010C
_080A006A:
	str r0, [r1, #8]
_080A006C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0078: .4byte gCurTask
_080A007C: .4byte sub_80A010C

	thumb_func_start sub_80A0080
sub_80A0080: @ 0x080A0080
	push {r4, r5, lr}
	ldr r5, _080A009C @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A00A4
	ldr r0, _080A00A0 @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A00FE
	.align 2, 0
_080A009C: .4byte gCurTask
_080A00A0: .4byte Task_80A14AC
_080A00A4:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A15E8
	cmp r0, #1
	bne _080A00DC
	adds r0, r4, #0
	bl sub_80A1888
	adds r1, r0, #0
	cmp r1, #1
	bne _080A00DC
	ldr r0, [r4, #0x14]
	strb r1, [r0]
	ldr r1, [r5]
	ldr r0, _080A00D8 @ =Task_809FEB0
	b _080A00FC
	.align 2, 0
_080A00D8: .4byte Task_809FEB0
_080A00DC:
	ldr r1, [r4, #0x18]
	ldrb r0, [r1]
	cmp r0, #0x23
	bne _080A00FE
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	ldr r0, _080A0104 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A0108 @ =Task_80A13F4
_080A00FC:
	str r0, [r1, #8]
_080A00FE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0104: .4byte gCurTask
_080A0108: .4byte Task_80A13F4

	thumb_func_start sub_80A010C
sub_80A010C: @ 0x080A010C
	push {r4, r5, lr}
	ldr r5, _080A0128 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0130
	ldr r0, _080A012C @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A018A
	.align 2, 0
_080A0128: .4byte gCurTask
_080A012C: .4byte Task_80A14AC
_080A0130:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A1598
	cmp r0, #1
	bne _080A0168
	adds r0, r4, #0
	bl sub_80A1888
	adds r1, r0, #0
	cmp r1, #1
	bne _080A0168
	ldr r0, [r4, #0x14]
	strb r1, [r0]
	ldr r1, [r5]
	ldr r0, _080A0164 @ =Task_809FEB0
	b _080A0188
	.align 2, 0
_080A0164: .4byte Task_809FEB0
_080A0168:
	ldr r1, [r4, #0x18]
	ldrb r0, [r1]
	cmp r0, #0x23
	bne _080A018A
	movs r0, #0x1d
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	ldr r0, _080A0190 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A0194 @ =Task_80A13F4
_080A0188:
	str r0, [r1, #8]
_080A018A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0190: .4byte gCurTask
_080A0194: .4byte Task_80A13F4

	thumb_func_start sub_80A0198
sub_80A0198: @ 0x080A0198
	push {r4, r5, r6, lr}
	ldr r6, _080A01B8 @ =gCurTask
	ldr r2, [r6]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A01C0
	ldr r0, _080A01BC @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A0210
	.align 2, 0
_080A01B8: .4byte gCurTask
_080A01BC: .4byte Task_80A14AC
_080A01C0:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	adds r0, r4, #0
	bl sub_80A1694
	cmp r0, #1
	bne _080A01EA
	movs r5, #1
_080A01EA:
	adds r0, r4, #0
	movs r1, #0x78
	bl sub_80A1740
	cmp r0, #1
	bne _080A01FC
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A01FC:
	cmp r5, #2
	bne _080A0210
	movs r0, #0x1d
	strb r0, [r4, #3]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x54]
	ldr r1, [r6]
	ldr r0, _080A0218 @ =Task_80A1430
	str r0, [r1, #8]
_080A0210:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A0218: .4byte Task_80A1430

	thumb_func_start sub_80A021C
sub_80A021C: @ 0x080A021C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r6, _080A023C @ =gCurTask
	ldr r1, [r6]
	ldrh r4, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, [r5, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0244
	ldr r0, _080A0240 @ =Task_80A14AC
	str r0, [r1, #8]
	b _080A033C
	.align 2, 0
_080A023C: .4byte gCurTask
_080A0240: .4byte Task_80A14AC
_080A0244:
	cmp r0, #0xd
	bne _080A02EC
	ldr r1, _080A02D4 @ =0x030000B4
	adds r0, r4, r1
	ldr r2, _080A02D8 @ =gUnknown_080D8D08
	ldrb r1, [r5]
	lsls r1, r1, #3
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r5]
	lsls r1, r1, #3
	adds r1, #1
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	bl UpdateSpriteAnimation
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r5, #0x6c]
	str r0, [r5, #0x4c]
	ldrb r0, [r5, #1]
	strb r0, [r5, #2]
	ldr r0, [r5, #0x30]
	ldrb r0, [r0]
	strb r0, [r5, #1]
	movs r0, #0xc9
	lsls r0, r0, #8
	str r0, [r5, #0x74]
	adds r0, r5, #0
	bl sub_80A0EA8
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r5, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r5, #0x58]
	ldr r2, _080A02DC @ =0x03000002
	adds r0, r4, r2
	ldr r3, _080A02E0 @ =0x03000003
	adds r1, r4, r3
	ldr r7, _080A02E4 @ =0x03000054
	adds r2, r4, r7
	adds r7, #4
	adds r3, r4, r7
	adds r7, #0x30
	adds r4, r4, r7
	ldr r4, [r4]
	str r4, [sp]
	bl CreateSomeTask_809BF3C
	ldr r0, [r5, #0x18]
	ldrb r0, [r0]
	strb r0, [r5, #3]
	adds r0, r5, #0
	bl sub_80A19C0
	adds r0, r5, #0
	bl sub_80A1A04
	adds r0, r5, #0
	bl sub_80A10B0
	ldr r1, [r6]
	ldr r0, _080A02E8 @ =sub_80A0344
	str r0, [r1, #8]
	b _080A033C
	.align 2, 0
_080A02D4: .4byte 0x030000B4
_080A02D8: .4byte gUnknown_080D8D08
_080A02DC: .4byte 0x03000002
_080A02E0: .4byte 0x03000003
_080A02E4: .4byte 0x03000054
_080A02E8: .4byte sub_80A0344
_080A02EC:
	cmp r0, #2
	bne _080A0324
	adds r0, r5, #0
	bl sub_80A19C0
	adds r0, r5, #0
	bl sub_80A1A04
	adds r0, r5, #0
	bl sub_80A10B0
	adds r0, r5, #0
	bl sub_80A1110
	ldr r0, [r5, #0x14]
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r5, #0x18]
	strb r1, [r0]
	ldr r0, [r5, #0x18]
	ldrb r0, [r0]
	strb r0, [r5, #3]
	ldr r1, [r6]
	ldr r0, _080A0320 @ =Task_809FEB0
	str r0, [r1, #8]
	b _080A033C
	.align 2, 0
_080A0320: .4byte Task_809FEB0
_080A0324:
	adds r0, r5, #0
	bl sub_80A19C0
	adds r0, r5, #0
	bl sub_80A1A04
	adds r0, r5, #0
	bl sub_80A10B0
	adds r0, r5, #0
	bl sub_80A1110
_080A033C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A0344
sub_80A0344: @ 0x080A0344
	push {r4, r5, r6, lr}
	ldr r6, _080A0364 @ =gCurTask
	ldr r2, [r6]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A036C
	ldr r0, _080A0368 @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A03EE
	.align 2, 0
_080A0364: .4byte gCurTask
_080A0368: .4byte Task_80A14AC
_080A036C:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	adds r0, r4, #0
	bl sub_80A1798
	cmp r0, #1
	bne _080A0396
	movs r5, #1
_080A0396:
	adds r0, r4, #0
	bl sub_80A17FC
	cmp r0, #1
	bne _080A03A6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A03A6:
	adds r0, r4, #0
	bl sub_80A1668
	cmp r0, #1
	bne _080A03B6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A03B6:
	adds r0, r4, #0
	bl sub_80A163C
	cmp r0, #1
	bne _080A03C6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A03C6:
	ldr r0, [r4, #0x54]
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x4c]
	str r0, [r4, #0x64]
	cmp r5, #4
	bne _080A03EE
	adds r0, r4, #0
	bl sub_80A1908
	cmp r0, #1
	bne _080A03EE
	ldr r1, [r4, #0x18]
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	ldr r1, [r6]
	ldr r0, _080A03F4 @ =sub_80A03F8
	str r0, [r1, #8]
_080A03EE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A03F4: .4byte sub_80A03F8

	thumb_func_start sub_80A03F8
sub_80A03F8: @ 0x080A03F8
	push {r4, r5, r6, lr}
	ldr r6, _080A0418 @ =gCurTask
	ldr r2, [r6]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0420
	ldr r0, _080A041C @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A04C8
	.align 2, 0
_080A0418: .4byte gCurTask
_080A041C: .4byte Task_80A14AC
_080A0420:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	ldr r1, [r4, #0x18]
	ldrb r0, [r4, #3]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A04C8
	adds r0, r4, #0
	bl sub_80A1798
	cmp r0, #1
	bne _080A0454
	movs r5, #1
_080A0454:
	adds r0, r4, #0
	bl sub_80A17FC
	cmp r0, #1
	bne _080A0464
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A0464:
	adds r0, r4, #0
	bl sub_80A1668
	cmp r0, #1
	bne _080A0474
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A0474:
	adds r0, r4, #0
	bl sub_80A163C
	cmp r0, #1
	bne _080A0484
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A0484:
	adds r0, r4, #0
	bl sub_80A1908
	cmp r0, #1
	bne _080A0494
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A0494:
	cmp r5, #5
	bne _080A04C8
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	ldr r1, [r4, #0x14]
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080A04D0 @ =0x00010500
	str r0, [r4, #0x74]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x7c]
	movs r1, #0xb4
	lsls r1, r1, #8
	str r1, [r4, #0x6c]
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r4, #0x54]
	str r1, [r4, #0x4c]
	movs r0, #0x91
	lsls r0, r0, #8
	str r0, [r4, #0x68]
	ldr r1, [r6]
	ldr r0, _080A04D4 @ =sub_80A0644
	str r0, [r1, #8]
_080A04C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A04D0: .4byte 0x00010500
_080A04D4: .4byte sub_80A0644

	thumb_func_start sub_80A04D8
sub_80A04D8: @ 0x080A04D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080A0504 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _080A0508 @ =gStageData
	ldrb r7, [r0, #6]
	movs r0, #0
	mov r8, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0510
	ldr r0, _080A050C @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A0638
	.align 2, 0
_080A0504: .4byte gCurTask
_080A0508: .4byte gStageData
_080A050C: .4byte Task_80A14AC
_080A0510:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	lsls r0, r7, #0x10
	lsrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #1
	bhi _080A0540
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r6, r1
	lsrs r7, r0, #0x10
_080A0540:
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _080A0550
	ldr r0, [r4, #0x14]
	mov r1, r8
	strb r1, [r0]
	b _080A0638
_080A0550:
	movs r5, #0
	lsls r6, r7, #0x10
	ldr r0, _080A05A4 @ =gUnknown_030010AC
	mov sb, r0
	ldr r7, _080A05A8 @ =gUnknown_080D8F18
_080A055A:
	asrs r0, r6, #0x10
	cmp r0, r5
	beq _080A057C
	mov r0, sb
	adds r1, r5, r0
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r7
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _080A057C
	adds r0, r4, #0
	bl sub_80A1A28
_080A057C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080A055A
	ldr r1, [r4, #0x18]
	ldrb r0, [r1]
	cmp r0, #0x14
	bne _080A05B4
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	strb r0, [r4, #1]
	ldrb r0, [r1]
	strb r0, [r4, #3]
	ldr r0, _080A05AC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A05B0 @ =sub_80A06E8
	str r0, [r1, #8]
	b _080A0638
	.align 2, 0
_080A05A4: .4byte gUnknown_030010AC
_080A05A8: .4byte gUnknown_080D8F18
_080A05AC: .4byte gCurTask
_080A05B0: .4byte sub_80A06E8
_080A05B4:
	cmp r0, #0x13
	bne _080A05BE
	ldr r1, [r4, #0x14]
	movs r0, #1
	strb r0, [r1]
_080A05BE:
	ldrb r0, [r4, #1]
	ldr r1, [r4, #0x30]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	beq _080A0624
	ldr r0, [r4, #0x14]
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_80A1694
	cmp r0, #1
	bne _080A05E6
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A05E6:
	adds r0, r4, #0
	bl sub_80A1938
	cmp r0, #1
	bne _080A05FA
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080A05FA:
	mov r1, r8
	cmp r1, #2
	bne _080A0638
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x30]
	ldrb r0, [r0]
	strb r0, [r4, #1]
	adds r0, r4, #0
	bl sub_80A0DC8
	ldr r0, _080A061C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A0620 @ =sub_80A0644
	str r0, [r1, #8]
	b _080A0638
	.align 2, 0
_080A061C: .4byte gCurTask
_080A0620: .4byte sub_80A0644
_080A0624:
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _080A0638
	adds r0, r4, #0
	bl sub_80A18E0
	adds r0, r4, #0
	bl sub_80A1030
_080A0638:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A0644
sub_80A0644: @ 0x080A0644
	push {r4, r5, lr}
	ldr r0, _080A0664 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A066C
	ldr r0, _080A0668 @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A06DA
	.align 2, 0
_080A0664: .4byte gCurTask
_080A0668: .4byte Task_80A14AC
_080A066C:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	adds r0, r4, #0
	bl sub_80A16EC
	cmp r0, #1
	bne _080A0696
	movs r5, #1
_080A0696:
	ldr r1, [r4, #0x68]
	movs r2, #0x91
	lsls r2, r2, #8
	cmp r1, r2
	ble _080A06AC
	ldr r0, _080A06B4 @ =0xFFFFFA00
	adds r1, r1, r0
	str r1, [r4, #0x68]
	ldr r0, _080A06B8 @ =0x000090FF
	cmp r1, r0
	bgt _080A06BC
_080A06AC:
	str r2, [r4, #0x68]
	movs r0, #1
	b _080A06BE
	.align 2, 0
_080A06B4: .4byte 0xFFFFFA00
_080A06B8: .4byte 0x000090FF
_080A06BC:
	movs r0, #0
_080A06BE:
	cmp r0, #1
	bne _080A06C8
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A06C8:
	cmp r5, #2
	bne _080A06DA
	ldr r1, [r4, #0x14]
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080A06E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A06E4 @ =sub_80A04D8
	str r0, [r1, #8]
_080A06DA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A06E0: .4byte gCurTask
_080A06E4: .4byte sub_80A04D8

	thumb_func_start sub_80A06E8
sub_80A06E8: @ 0x080A06E8
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A0704 @ =gCurTask
	ldr r1, [r7]
	ldrh r6, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r0, [r5, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A070C
	ldr r0, _080A0708 @ =Task_80A14AC
	b _080A07A0
	.align 2, 0
_080A0704: .4byte gCurTask
_080A0708: .4byte Task_80A14AC
_080A070C:
	ldr r0, _080A07A8 @ =gBgSprites_Unknown1
	movs r3, #0
	strb r3, [r0, #2]
	ldr r1, _080A07AC @ =gBgSprites_Unknown2
	strb r3, [r1, #8]
	strb r3, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	movs r0, #0x8e
	lsls r0, r0, #8
	str r0, [r5, #0x6c]
	movs r0, #0xb0
	lsls r0, r0, #5
	str r0, [r5, #0x70]
	ldr r1, _080A07B0 @ =gBgScrollRegs
	movs r4, #0
	movs r0, #0x8e
	strh r0, [r1, #8]
	ldr r0, _080A07B4 @ =0x0000FFEA
	strh r0, [r1, #0xa]
	ldr r1, _080A07B8 @ =gDispCnt
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080A07BC @ =gBgCntRegs
	ldr r0, _080A07C0 @ =0x00001B09
	strh r0, [r1, #4]
	ldr r1, _080A07C4 @ =0x03000274
	adds r0, r6, r1
	ldr r2, _080A07C8 @ =gUnknown_080D8F18
	ldrb r1, [r5, #1]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, _080A07CC @ =0x06008000
	str r2, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r2, _080A07D0 @ =0x0600D800
	str r2, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	ldr r2, _080A07D4 @ =gUnknown_080D8CDC
	adds r1, #0xa
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x10
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080A07D8 @ =0x0300029E
	adds r1, r6, r2
	strb r4, [r1]
	movs r1, #2
	strh r1, [r0, #0x2e]
	bl DrawBackground
	adds r0, r5, #0
	bl sub_80A10B0
	adds r0, r5, #0
	bl sub_80A1110
	adds r0, r5, #0
	bl sub_80A11B8
	ldr r1, [r7]
	ldr r0, _080A07DC @ =sub_80A07E0
_080A07A0:
	str r0, [r1, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A07A8: .4byte gBgSprites_Unknown1
_080A07AC: .4byte gBgSprites_Unknown2
_080A07B0: .4byte gBgScrollRegs
_080A07B4: .4byte 0x0000FFEA
_080A07B8: .4byte gDispCnt
_080A07BC: .4byte gBgCntRegs
_080A07C0: .4byte 0x00001B09
_080A07C4: .4byte 0x03000274
_080A07C8: .4byte gUnknown_080D8F18
_080A07CC: .4byte 0x06008000
_080A07D0: .4byte 0x0600D800
_080A07D4: .4byte gUnknown_080D8CDC
_080A07D8: .4byte 0x0300029E
_080A07DC: .4byte sub_80A07E0

	thumb_func_start sub_80A07E0
sub_80A07E0: @ 0x080A07E0
	push {r4, r5, r6, lr}
	ldr r6, _080A0800 @ =gCurTask
	ldr r2, [r6]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0808
	ldr r0, _080A0804 @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A0872
	.align 2, 0
_080A0800: .4byte gCurTask
_080A0804: .4byte Task_80A14AC
_080A0808:
	adds r0, r4, #0
	bl sub_80A137C
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	adds r0, r4, #0
	movs r1, #0x5a
	bl sub_80A1740
	cmp r0, #1
	bne _080A082E
	movs r5, #1
_080A082E:
	adds r0, r4, #0
	bl sub_80A1768
	cmp r0, #1
	bne _080A083E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A083E:
	adds r0, r4, #0
	bl sub_80A185C
	cmp r0, #1
	bne _080A084E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A084E:
	adds r0, r4, #0
	bl sub_80A182C
	cmp r0, #1
	bne _080A085E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080A085E:
	ldr r0, [r4, #0x54]
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x4c]
	adds r0, #5
	str r0, [r4, #0x64]
	cmp r5, #4
	bne _080A0872
	ldr r1, [r6]
	ldr r0, _080A0878 @ =sub_80A087C
	str r0, [r1, #8]
_080A0872:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A0878: .4byte sub_80A087C

	thumb_func_start sub_80A087C
sub_80A087C: @ 0x080A087C
	push {r4, r5, lr}
	ldr r5, _080A0898 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A08A0
	ldr r0, _080A089C @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A0942
	.align 2, 0
_080A0898: .4byte gCurTask
_080A089C: .4byte Task_80A14AC
_080A08A0:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080A08FA
	ldr r2, _080A0918 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A091C @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A0920 @ =gBldRegs
	ldr r0, _080A0924 @ =0x00003FBF
	strh r0, [r1]
	strh r3, [r1, #4]
	strh r3, [r4, #6]
	strh r3, [r4, #8]
_080A08FA:
	ldr r1, _080A0920 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080A0928
	ldrh r0, [r4, #8]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r4, #8]
	b _080A0942
	.align 2, 0
_080A0918: .4byte gDispCnt
_080A091C: .4byte gWinRegs
_080A0920: .4byte gBldRegs
_080A0924: .4byte 0x00003FBF
_080A0928:
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, [r4, #0x18]
	movs r0, #0x16
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	movs r0, #1
	strh r0, [r4, #6]
	ldr r1, [r5]
	ldr r0, _080A0948 @ =sub_80A094C
	str r0, [r1, #8]
_080A0942:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0948: .4byte sub_80A094C

	thumb_func_start sub_80A094C
sub_80A094C: @ 0x080A094C
	push {r4, r5, r6, lr}
	ldr r6, _080A0968 @ =gCurTask
	ldr r1, [r6]
	ldrh r5, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0970
	ldr r0, _080A096C @ =Task_80A14AC
	b _080A09D2
	.align 2, 0
_080A0968: .4byte gCurTask
_080A096C: .4byte Task_80A14AC
_080A0970:
	ldr r1, _080A09DC @ =gDispCnt
	ldr r2, _080A09E0 @ =0x00001541
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080A09E4 @ =gBgCntRegs
	movs r3, #0
	movs r2, #0
	ldr r0, _080A09E8 @ =0x00001B89
	strh r0, [r1, #4]
	ldr r0, _080A09EC @ =gBgScrollRegs
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x6c]
	movs r0, #0xaa
	lsls r0, r0, #7
	str r0, [r4, #0x70]
	ldr r1, _080A09F0 @ =0x03000274
	adds r0, r5, r1
	ldr r1, _080A09F4 @ =0x06008000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080A09F8 @ =0x0600D800
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080A09FC @ =gUnknown_080D8CDC
	ldrh r1, [r1, #0x1e]
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x10
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080A0A00 @ =0x0300029E
	adds r1, r5, r2
	strb r3, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	adds r0, r4, #0
	bl sub_80A0A08
	ldr r1, [r6]
	ldr r0, _080A0A04 @ =sub_80A0ADC
_080A09D2:
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A09DC: .4byte gDispCnt
_080A09E0: .4byte 0x00001541
_080A09E4: .4byte gBgCntRegs
_080A09E8: .4byte 0x00001B89
_080A09EC: .4byte gBgScrollRegs
_080A09F0: .4byte 0x03000274
_080A09F4: .4byte 0x06008000
_080A09F8: .4byte 0x0600D800
_080A09FC: .4byte gUnknown_080D8CDC
_080A0A00: .4byte 0x0300029E
_080A0A04: .4byte sub_80A0ADC

	thumb_func_start sub_80A0A08
sub_80A0A08: @ 0x080A0A08
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r2, _080A0A78 @ =gUnknown_080D8F00
	ldrh r1, [r2]
	movs r3, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x60]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r7, r6, #0
	adds r7, #0xb4
	ldr r1, _080A0A7C @ =gUnknown_080D8F18
	ldrb r0, [r6, #2]
	adds r0, r0, r1
	ldrb r4, [r0]
	ldrb r0, [r6, #1]
	adds r0, r0, r1
	ldrb r5, [r0]
	cmp r4, #4
	bhi _080A0A5E
	cmp r5, #4
	bls _080A0A62
_080A0A5E:
	bl sub_802613C
_080A0A62:
	cmp r4, #0
	beq _080A0A6A
	cmp r5, #0
	bne _080A0A98
_080A0A6A:
	cmp r4, #2
	beq _080A0A72
	cmp r5, #2
	bne _080A0A80
_080A0A72:
	movs r4, #4
	b _080A0AAE
	.align 2, 0
_080A0A78: .4byte gUnknown_080D8F00
_080A0A7C: .4byte gUnknown_080D8F18
_080A0A80:
	cmp r4, #3
	beq _080A0A88
	cmp r5, #3
	bne _080A0A8C
_080A0A88:
	movs r4, #6
	b _080A0AAE
_080A0A8C:
	cmp r4, #4
	beq _080A0A94
	cmp r5, #4
	bne _080A0AAC
_080A0A94:
	movs r4, #3
	b _080A0AAE
_080A0A98:
	cmp r4, #4
	bne _080A0AA0
	cmp r5, #1
	beq _080A0AA8
_080A0AA0:
	cmp r4, #1
	bne _080A0AAC
	cmp r5, #4
	bne _080A0AAC
_080A0AA8:
	movs r4, #5
	b _080A0AAE
_080A0AAC:
	movs r4, #2
_080A0AAE:
	ldr r1, _080A0AD8 @ =gUnknown_080D8D08
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r4, r0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r4, r0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1a]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0AD8: .4byte gUnknown_080D8D08

	thumb_func_start sub_80A0ADC
sub_80A0ADC: @ 0x080A0ADC
	push {r4, r5, lr}
	ldr r5, _080A0AF8 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0B00
	ldr r0, _080A0AFC @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A0B90
	.align 2, 0
_080A0AF8: .4byte gCurTask
_080A0AFC: .4byte Task_80A14AC
_080A0B00:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A124C
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080A0B54
	ldr r2, _080A0B70 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A0B74 @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A0B78 @ =gBldRegs
	ldr r0, _080A0B7C @ =0x00003FBF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #8]
	strh r3, [r4, #6]
_080A0B54:
	ldr r2, _080A0B78 @ =gBldRegs
	ldrh r1, [r2, #4]
	cmp r1, #0
	beq _080A0B84
	ldrh r0, [r4, #8]
	lsrs r0, r0, #8
	strh r0, [r2, #4]
	ldr r1, _080A0B80 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r4, #8]
	b _080A0B90
	.align 2, 0
_080A0B70: .4byte gDispCnt
_080A0B74: .4byte gWinRegs
_080A0B78: .4byte gBldRegs
_080A0B7C: .4byte 0x00003FBF
_080A0B80: .4byte 0xFFFFFF00
_080A0B84:
	movs r0, #1
	strh r0, [r4, #6]
	strh r1, [r2, #4]
	ldr r1, [r5]
	ldr r0, _080A0B98 @ =sub_80A0B9C
	str r0, [r1, #8]
_080A0B90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0B98: .4byte sub_80A0B9C

	thumb_func_start sub_80A0B9C
sub_80A0B9C: @ 0x080A0B9C
	push {r4, r5, r6, lr}
	ldr r0, _080A0BC8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, _080A0BCC @ =gUnknown_080D8F18
	ldrb r0, [r4, #2]
	adds r0, r0, r1
	ldrb r5, [r0]
	ldrb r0, [r4, #1]
	adds r0, r0, r1
	ldrb r6, [r0]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0BD4
	ldr r0, _080A0BD0 @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A0C44
	.align 2, 0
_080A0BC8: .4byte gCurTask
_080A0BCC: .4byte gUnknown_080D8F18
_080A0BD0: .4byte Task_80A14AC
_080A0BD4:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A124C
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _080A0C08
	ldr r1, _080A0C00 @ =gAnnouncerSelect1st
	ldr r0, _080A0C04 @ =gCharacterSelectOrderLUT
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	b _080A0C2E
	.align 2, 0
_080A0C00: .4byte gAnnouncerSelect1st
_080A0C04: .4byte gCharacterSelectOrderLUT
_080A0C08:
	cmp r0, #0x3c
	bne _080A0C18
	ldr r0, _080A0C14 @ =0x000001FF @ VOICE__ANNOUNCER__AND
	bl m4aSongNumStart
	b _080A0C2E
	.align 2, 0
_080A0C14: .4byte 0x000001FF
_080A0C18:
	cmp r0, #0x5a
	bne _080A0C2E
	ldr r1, _080A0C4C @ =gAnnouncerSelect2nd
	ldr r0, _080A0C50 @ =gCharacterSelectOrderLUT
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
_080A0C2E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _080A0C44
	ldr r0, _080A0C54 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A0C58 @ =sub_80A0C5C
	str r0, [r1, #8]
_080A0C44:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A0C4C: .4byte gAnnouncerSelect2nd
_080A0C50: .4byte gCharacterSelectOrderLUT
_080A0C54: .4byte gCurTask
_080A0C58: .4byte sub_80A0C5C

	thumb_func_start sub_80A0C5C
sub_80A0C5C: @ 0x080A0C5C
	push {r4, r5, lr}
	ldr r5, _080A0C78 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0C80
	ldr r0, _080A0C7C @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A0D16
	.align 2, 0
_080A0C78: .4byte gCurTask
_080A0C7C: .4byte Task_80A14AC
_080A0C80:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A124C
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080A0CCC
	ldr r2, _080A0CE8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A0CEC @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080A0CF0 @ =gBldRegs
	ldr r0, _080A0CF4 @ =0x00003FFF
	strh r0, [r1]
	strh r3, [r4, #6]
	strh r3, [r4, #8]
_080A0CCC:
	ldr r1, _080A0CF0 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080A0CF8
	ldrh r0, [r4, #8]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r4, #8]
	b _080A0D16
	.align 2, 0
_080A0CE8: .4byte gDispCnt
_080A0CEC: .4byte gWinRegs
_080A0CF0: .4byte gBldRegs
_080A0CF4: .4byte 0x00003FFF
_080A0CF8:
	movs r2, #0
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	str r0, [r4, #0x54]
	movs r1, #0x1d
	strb r1, [r4, #3]
	ldr r0, [r4, #0x18]
	strb r1, [r0]
	strh r2, [r4, #4]
	ldr r1, [r5]
	ldr r0, _080A0D1C @ =Task_80A13B4
	str r0, [r1, #8]
_080A0D16:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0D1C: .4byte Task_80A13B4

	thumb_func_start sub_80A0D20
sub_80A0D20: @ 0x080A0D20
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A0D3C @ =gCurTask
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A0D44
	ldr r0, _080A0D40 @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A0DA0
	.align 2, 0
_080A0D3C: .4byte gCurTask
_080A0D40: .4byte Task_80A14AC
_080A0D44:
	movs r4, #0
	ldr r0, _080A0DA8 @ =gPlayers
	mov ip, r0
	ldr r6, _080A0DAC @ =gUnknown_030010AC
	movs r7, #0x10
	rsbs r7, r7, #0
	movs r5, #0xf
_080A0D52:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	add r1, ip
	adds r0, r4, r6
	ldrb r0, [r0]
	adds r1, #0x2a
	adds r2, r5, #0
	ands r2, r0
	ldrb r3, [r1]
	adds r0, r7, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080A0D52
	ldr r1, _080A0DB0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080A0DB4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080A0DB8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080A0DBC @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080A0DC0 @ =gVramGraphicsCopyCursor
	ldr r0, _080A0DC4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	bl sub_809BFE8
_080A0DA0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0DA8: .4byte gPlayers
_080A0DAC: .4byte gUnknown_030010AC
_080A0DB0: .4byte 0x0000FFFF
_080A0DB4: .4byte gBackgroundsCopyQueueCursor
_080A0DB8: .4byte gBackgroundsCopyQueueIndex
_080A0DBC: .4byte gBgSpritesCount
_080A0DC0: .4byte gVramGraphicsCopyCursor
_080A0DC4: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80A0DC8
sub_80A0DC8: @ 0x080A0DC8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #0x9d
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _080A0E48 @ =gUnknown_080D8F18
	ldrb r1, [r4, #1]
	adds r1, r1, r2
	ldrb r6, [r1]
	adds r7, r6, #0
	movs r5, #0
	ldr r1, _080A0E4C @ =0x06008000
	str r1, [r0, #4]
	movs r3, #0
	strh r5, [r0, #0xa]
	ldr r1, _080A0E50 @ =0x0600D800
	str r1, [r0, #0xc]
	strh r5, [r0, #0x18]
	strh r5, [r0, #0x1a]
	ldr r2, _080A0E54 @ =gUnknown_080D8CDC
	adds r1, r6, #5
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r5, [r0, #0x1e]
	strh r5, [r0, #0x20]
	strh r5, [r0, #0x22]
	strh r5, [r0, #0x24]
	movs r1, #0x10
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080A0E58 @ =0x0000029E
	adds r1, r4, r2
	strb r3, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x50]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	movs r5, #7
	cmp r0, #0xb
	bhi _080A0E28
	movs r5, #6
_080A0E28:
	ldr r4, _080A0E5C @ =gFlags
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _080A0E64
	lsls r0, r6, #5
	ldr r1, _080A0E60 @ =gUnknown_08E2EE50
	adds r0, r0, r1
	lsls r1, r5, #4
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _080A0E82
	.align 2, 0
_080A0E48: .4byte gUnknown_080D8F18
_080A0E4C: .4byte 0x06008000
_080A0E50: .4byte 0x0600D800
_080A0E54: .4byte gUnknown_080D8CDC
_080A0E58: .4byte 0x0000029E
_080A0E5C: .4byte gFlags
_080A0E60: .4byte gUnknown_08E2EE50
_080A0E64:
	ldr r2, _080A0E94 @ =0x040000D4
	lsls r0, r7, #5
	ldr r1, _080A0E98 @ =gUnknown_08E2EE50
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r5, #5
	ldr r1, _080A0E9C @ =gObjPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080A0EA0 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r4]
_080A0E82:
	ldr r0, _080A0EA4 @ =gFlags
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0E94: .4byte 0x040000D4
_080A0E98: .4byte gUnknown_08E2EE50
_080A0E9C: .4byte gObjPalette
_080A0EA0: .4byte 0x80000010
_080A0EA4: .4byte gFlags

	thumb_func_start sub_80A0EA8
sub_80A0EA8: @ 0x080A0EA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _080A0EDC @ =gUnknown_080D8F18
	ldrb r1, [r7, #1]
	adds r1, r1, r0
	ldrb r1, [r1]
	ldr r4, _080A0EE0 @ =gFlags
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _080A0EE8
	lsls r0, r1, #5
	ldr r1, _080A0EE4 @ =gUnknown_08E2EE50
	adds r0, r0, r1
	movs r1, #0x70
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _080A0F02
	.align 2, 0
_080A0EDC: .4byte gUnknown_080D8F18
_080A0EE0: .4byte gFlags
_080A0EE4: .4byte gUnknown_08E2EE50
_080A0EE8:
	ldr r2, _080A0FDC @ =0x040000D4
	lsls r0, r1, #5
	ldr r1, _080A0FE0 @ =gUnknown_08E2EE50
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _080A0FE4 @ =gObjPalette + 0xE0
	str r0, [r2, #4]
	ldr r0, _080A0FE8 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r4]
_080A0F02:
	ldr r2, _080A0FEC @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080A0FF0 @ =gDispCnt
	ldr r2, _080A0FF4 @ =0x00001741
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A0FF8 @ =gBgSprites_Unknown1
	movs r4, #0
	strb r4, [r0, #1]
	ldr r1, _080A0FFC @ =gBgSprites_Unknown2
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	movs r0, #0xff
	strb r0, [r1, #6]
	movs r0, #0x40
	strb r0, [r1, #7]
	ldr r0, _080A1000 @ =gBgCntRegs
	mov sl, r0
	ldr r0, _080A1004 @ =0x0000030E
	mov r1, sl
	strh r0, [r1, #2]
	ldr r6, _080A1008 @ =gBgScrollRegs
	strh r4, [r6, #4]
	strh r4, [r6, #6]
	movs r2, #0x8d
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r1, _080A100C @ =gUnknown_080D8F18
	mov r8, r1
	ldrb r1, [r7, #2]
	add r1, r8
	ldrb r1, [r1]
	ldr r2, _080A1010 @ =0x0600C000
	str r2, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r2, _080A1014 @ =0x06001800
	str r2, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r2, _080A1018 @ =gUnknown_080D8CDC
	mov sb, r2
	adds r1, #0xa
	lsls r1, r1, #1
	add r1, sb
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r5, #0x10
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	ldr r2, _080A101C @ =0x0000025E
	adds r1, r7, r2
	movs r2, #0
	strb r2, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _080A1020 @ =0x00001B89
	mov r1, sl
	strh r0, [r1, #4]
	strh r4, [r6, #8]
	strh r4, [r6, #0xa]
	movs r2, #0x9d
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r1, [r7, #1]
	add r1, r8
	ldrb r1, [r1]
	ldr r2, _080A1024 @ =0x06008000
	str r2, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r2, _080A1028 @ =0x0600D800
	str r2, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	adds r1, #5
	lsls r1, r1, #1
	add r1, sb
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	ldr r2, _080A102C @ =0x0000029E
	adds r1, r7, r2
	movs r2, #0
	strb r2, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0FDC: .4byte 0x040000D4
_080A0FE0: .4byte gUnknown_08E2EE50
_080A0FE4: .4byte gObjPalette + 0xE0
_080A0FE8: .4byte 0x80000010
_080A0FEC: .4byte gFlags
_080A0FF0: .4byte gDispCnt
_080A0FF4: .4byte 0x00001741
_080A0FF8: .4byte gBgSprites_Unknown1
_080A0FFC: .4byte gBgSprites_Unknown2
_080A1000: .4byte gBgCntRegs
_080A1004: .4byte 0x0000030E
_080A1008: .4byte gBgScrollRegs
_080A100C: .4byte gUnknown_080D8F18
_080A1010: .4byte 0x0600C000
_080A1014: .4byte 0x06001800
_080A1018: .4byte gUnknown_080D8CDC
_080A101C: .4byte 0x0000025E
_080A1020: .4byte 0x00001B89
_080A1024: .4byte 0x06008000
_080A1028: .4byte 0x0600D800
_080A102C: .4byte 0x0000029E

	thumb_func_start sub_80A1030
sub_80A1030: @ 0x080A1030
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x8c
	movs r0, #2
	mov sb, r0
	ldr r0, [r5, #0x18]
	ldrb r0, [r0]
	movs r1, #0x78
	cmp r0, #0xd
	bls _080A104E
	movs r1, #0xb4
_080A104E:
	movs r6, #0
	movs r0, #0x28
	rsbs r0, r0, #0
	adds r0, r0, r1
	mov r8, r0
	adds r7, r1, #0
	adds r7, #0x28
_080A105C:
	cmp r6, #0
	beq _080A106A
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov r1, r8
	subs r0, r1, r0
	b _080A1070
_080A106A:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, r7, r0
_080A1070:
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x48]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	cmp r6, #0
	beq _080A1086
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A108C
_080A1086:
	ldr r0, [r4, #8]
	ldr r1, _080A10AC @ =0xFFFFFBFF
	ands r0, r1
_080A108C:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, sb
	blo _080A105C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A10AC: .4byte 0xFFFFFBFF

	thumb_func_start sub_80A10B0
sub_80A10B0: @ 0x080A10B0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0xdc
_080A10BA:
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	cmp r6, #0
	beq _080A10D8
	ldr r0, [r4, #8]
	ldr r1, _080A10D4 @ =0xFFFFFBFF
	ands r0, r1
	b _080A10E0
	.align 2, 0
_080A10D4: .4byte 0xFFFFFBFF
_080A10D8:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_080A10E0:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080A10BA
	adds r4, r5, #0
	adds r4, #0xb4
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A1110
sub_80A1110: @ 0x080A1110
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r0, #0x96
	lsls r0, r0, #1
	adds r4, r5, r0
	movs r7, #0
_080A111E:
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x60]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	strb r7, [r4, #0x1f]
	cmp r6, #0
	beq _080A113A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A1140
_080A113A:
	ldr r0, [r4, #8]
	ldr r1, _080A1168 @ =0xFFFFFBFF
	ands r0, r1
_080A1140:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080A111E
	ldrb r1, [r5]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
	ldr r0, [r5, #0x18]
	ldrb r0, [r0]
	cmp r0, #0xc
	bls _080A1170
	ldr r1, _080A116C @ =gUnknown_080D8F18
	ldrb r0, [r5, #2]
	b _080A1174
	.align 2, 0
_080A1168: .4byte 0xFFFFFBFF
_080A116C: .4byte gUnknown_080D8F18
_080A1170:
	ldr r1, _080A11B0 @ =gUnknown_080D8F18
	ldrb r0, [r5, #1]
_080A1174:
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, _080A11B4 @ =gUnknown_080D8E80
	lsls r0, r3, #3
	adds r0, r2, r0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x60]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A11B0: .4byte gUnknown_080D8F18
_080A11B4: .4byte gUnknown_080D8E80

	thumb_func_start sub_80A11B8
sub_80A11B8: @ 0x080A11B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r0, #0x96
	lsls r0, r0, #1
	adds r4, r5, r0
_080A11C4:
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #1
	strb r0, [r4, #0x1f]
	cmp r6, #0
	beq _080A11E2
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A11E8
_080A11E2:
	ldr r0, [r4, #8]
	ldr r1, _080A1240 @ =0xFFFFFBFF
	ands r0, r1
_080A11E8:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080A11C4
	ldrb r1, [r5]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ldr r2, _080A1244 @ =gUnknown_080D8F18
	ldrb r1, [r5, #1]
	adds r1, r1, r2
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r2, _080A1248 @ =gUnknown_080D8E80
	lsls r0, r0, #3
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A1240: .4byte 0xFFFFFBFF
_080A1244: .4byte gUnknown_080D8F18
_080A1248: .4byte gUnknown_080D8E80

	thumb_func_start sub_80A124C
sub_80A124C: @ 0x080A124C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #1]
	ldrb r0, [r5, #2]
	cmp r0, #4
	bhi _080A125C
	cmp r1, #4
	bls _080A1298
_080A125C:
	ldr r3, _080A1278 @ =gStageData
	ldrb r2, [r3, #6]
	cmp r2, #1
	bls _080A1280
	ldr r1, _080A127C @ =gUnknown_03001060
	movs r0, #1
	ands r0, r2
	adds r1, #0x4c
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #2]
	ldrb r0, [r3, #6]
	b _080A1292
	.align 2, 0
_080A1278: .4byte gStageData
_080A127C: .4byte gUnknown_03001060
_080A1280:
	ldr r1, _080A12B0 @ =gUnknown_03001060
	ldrb r0, [r3, #6]
	adds r1, #0x4c
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #2]
	movs r0, #1
	ands r0, r2
	adds r0, #2
_080A1292:
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #1]
_080A1298:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080A12B8
	ldrb r0, [r5, #2]
	lsls r0, r0, #3
	ldrb r1, [r5, #1]
	adds r0, r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, _080A12B4 @ =gUnknown_080D8F95
	b _080A12C6
	.align 2, 0
_080A12B0: .4byte gUnknown_03001060
_080A12B4: .4byte gUnknown_080D8F95
_080A12B8:
	ldrb r0, [r5, #2]
	lsls r0, r0, #3
	ldrb r1, [r5, #1]
	adds r0, r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, _080A1300 @ =gUnknown_080D8F1D
_080A12C6:
	adds r7, r1, r0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080A12DA
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _080A12DA
	ldrb r0, [r7, #2]
	cmp r0, #0
	bne _080A12DE
_080A12DA:
	bl sub_802613C
_080A12DE:
	movs r6, #0
	movs r0, #0x96
	lsls r0, r0, #1
	adds r4, r5, r0
_080A12E6:
	movs r0, #0x78
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x60]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	cmp r6, #0
	beq _080A1304
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080A130A
	.align 2, 0
_080A1300: .4byte gUnknown_080D8F1D
_080A1304:
	ldr r0, [r4, #8]
	ldr r1, _080A1378 @ =0xFFFFFBFF
	ands r0, r1
_080A130A:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080A12E6
	movs r1, #0x82
	lsls r1, r1, #1
	adds r4, r5, r1
	ldrb r0, [r7]
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x60]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r4, r5, r0
	ldrb r0, [r7, #1]
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x60]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r4, r5, r1
	ldrb r0, [r7, #2]
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A1378: .4byte 0xFFFFFBFF

	thumb_func_start sub_80A137C
sub_80A137C: @ 0x080A137C
	ldr r2, _080A13AC @ =gBgScrollRegs
	ldr r1, [r0, #0x74]
	asrs r1, r1, #8
	strh r1, [r2, #4]
	ldr r1, [r0, #0x78]
	asrs r1, r1, #8
	rsbs r1, r1, #0
	strh r1, [r2, #6]
	ldr r1, [r0, #0x7c]
	asrs r1, r1, #8
	strh r1, [r2]
	adds r1, r0, #0
	adds r1, #0x80
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r2, #2]
	ldr r1, [r0, #0x6c]
	asrs r1, r1, #8
	strh r1, [r2, #8]
	ldr r0, [r0, #0x70]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r2, #0xa]
	bx lr
	.align 2, 0
_080A13AC: .4byte gBgScrollRegs

	thumb_func_start TaskDestructor_80A13B0
TaskDestructor_80A13B0: @ 0x080A13B0
	bx lr
	.align 2, 0

	thumb_func_start Task_80A13B4
Task_80A13B4: @ 0x080A13B4
	push {r4, lr}
	ldr r4, _080A13D0 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r3, [r1, #0x18]
	ldrb r0, [r3]
	cmp r0, #0x22
	bne _080A13D8
	ldr r0, _080A13D4 @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A13E8
	.align 2, 0
_080A13D0: .4byte gCurTask
_080A13D4: .4byte Task_80A14AC
_080A13D8:
	ldrb r0, [r1, #3]
	cmp r0, #0x25
	bne _080A13E8
	movs r0, #0x26
	strb r0, [r3]
	ldr r1, [r4]
	ldr r0, _080A13F0 @ =sub_80A0D20
	str r0, [r1, #8]
_080A13E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A13F0: .4byte sub_80A0D20

	thumb_func_start Task_80A13F4
Task_80A13F4: @ 0x080A13F4
	push {r4, lr}
	ldr r4, _080A1410 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r3, [r1, #0x18]
	ldrb r0, [r3]
	cmp r0, #0x22
	bne _080A1418
	ldr r0, _080A1414 @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A1428
	.align 2, 0
_080A1410: .4byte gCurTask
_080A1414: .4byte Task_80A14AC
_080A1418:
	ldrb r0, [r1, #3]
	cmp r0, #0x25
	bne _080A1428
	movs r0, #0x26
	strb r0, [r3]
	ldr r0, [r4]
	bl TaskDestroy
_080A1428:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_80A1430
Task_80A1430: @ 0x080A1430
	push {r4, r5, lr}
	ldr r5, _080A144C @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	cmp r0, #0x22
	bne _080A1454
	ldr r0, _080A1450 @ =Task_80A14AC
	str r0, [r2, #8]
	b _080A148E
	.align 2, 0
_080A144C: .4byte gCurTask
_080A1450: .4byte Task_80A14AC
_080A1454:
	adds r0, r4, #0
	bl sub_80A19C0
	adds r0, r4, #0
	bl sub_80A1A04
	adds r0, r4, #0
	bl sub_80A10B0
	adds r0, r4, #0
	bl sub_80A1110
	adds r0, r4, #0
	bl sub_80A11B8
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x14]
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4, #0x18]
	strb r1, [r0]
	ldr r0, [r4, #0x18]
	ldrb r0, [r0]
	strb r0, [r4, #3]
	ldr r1, [r5]
	ldr r0, _080A1494 @ =Task_809FEB0
	str r0, [r1, #8]
_080A148E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A1494: .4byte Task_809FEB0

	thumb_func_start Task_CallDestroy_80A1498
Task_CallDestroy_80A1498: @ 0x080A1498
	push {lr}
	ldr r0, _080A14A8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_080A14A8: .4byte gCurTask

	thumb_func_start Task_80A14AC
Task_80A14AC: @ 0x080A14AC
	push {r4, lr}
	ldr r4, _080A14DC @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0x9b
	lsls r1, r1, #9
	str r1, [r0, #0x4c]
	str r1, [r0, #0x54]
	movs r3, #0
	movs r2, #0x1d
	strb r2, [r0, #3]
	ldr r1, [r0, #0x18]
	strb r2, [r1]
	strh r3, [r0, #4]
	ldr r1, [r4]
	ldr r0, _080A14E0 @ =Task_CallDestroy_80A1498
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A14DC: .4byte gCurTask
_080A14E0: .4byte Task_CallDestroy_80A1498

	thumb_func_start sub_80A14E4
sub_80A14E4: @ 0x080A14E4
	push {r4, lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #0x4c]
	ldr r3, _080A152C @ =0x00012BFF
	cmp r0, r3
	bgt _080A14FE
	movs r4, #0xe0
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r1, #0x4c]
	cmp r0, r3
	ble _080A1506
_080A14FE:
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r1, #0x4c]
	movs r2, #1
_080A1506:
	ldr r0, [r1, #0x6c]
	ldr r3, _080A1530 @ =0x000149FF
	cmp r0, r3
	bgt _080A151A
	movs r4, #0xe0
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r1, #0x6c]
	cmp r0, r3
	ble _080A1524
_080A151A:
	ldr r0, _080A1534 @ =0xFFFFC400
	str r0, [r1, #0x6c]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080A1524:
	cmp r2, #2
	beq _080A1538
	movs r0, #0
	b _080A153A
	.align 2, 0
_080A152C: .4byte 0x00012BFF
_080A1530: .4byte 0x000149FF
_080A1534: .4byte 0xFFFFC400
_080A1538:
	movs r0, #1
_080A153A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A1540
sub_80A1540: @ 0x080A1540
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r0, [r1, #0x4c]
	ldr r2, _080A1584 @ =0xFFFFC400
	cmp r0, r2
	ble _080A1558
	ldr r4, _080A1588 @ =0xFFFFF200
	adds r0, r0, r4
	str r0, [r1, #0x4c]
	cmp r0, r2
	bgt _080A155C
_080A1558:
	str r2, [r1, #0x4c]
	movs r3, #1
_080A155C:
	ldr r0, [r1, #0x6c]
	ldr r2, _080A158C @ =0xFFFFA600
	cmp r0, r2
	ble _080A156E
	ldr r4, _080A1588 @ =0xFFFFF200
	adds r0, r0, r4
	str r0, [r1, #0x6c]
	cmp r0, r2
	bgt _080A157A
_080A156E:
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r1, #0x6c]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080A157A:
	cmp r3, #2
	beq _080A1590
	movs r0, #0
	b _080A1592
	.align 2, 0
_080A1584: .4byte 0xFFFFC400
_080A1588: .4byte 0xFFFFF200
_080A158C: .4byte 0xFFFFA600
_080A1590:
	movs r0, #1
_080A1592:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A1598
sub_80A1598: @ 0x080A1598
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r0, [r1, #0x4c]
	movs r2, #0xf0
	lsls r2, r2, #7
	cmp r0, r2
	ble _080A15B2
	ldr r4, _080A15DC @ =0xFFFFF200
	adds r0, r0, r4
	str r0, [r1, #0x4c]
	cmp r0, r2
	bgt _080A15B6
_080A15B2:
	str r2, [r1, #0x4c]
	movs r3, #1
_080A15B6:
	movs r0, #0x78
	lsls r2, r0, #8
	ldr r0, [r1, #0x6c]
	cmp r0, r2
	ble _080A15CA
	ldr r4, _080A15DC @ =0xFFFFF200
	adds r0, r0, r4
	str r0, [r1, #0x6c]
	cmp r0, r2
	bgt _080A15D2
_080A15CA:
	str r2, [r1, #0x6c]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080A15D2:
	cmp r3, #2
	beq _080A15E0
	movs r0, #0
	b _080A15E2
	.align 2, 0
_080A15DC: .4byte 0xFFFFF200
_080A15E0:
	movs r0, #1
_080A15E2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A15E8
sub_80A15E8: @ 0x080A15E8
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	ldr r0, [r2, #0x4c]
	ldr r1, _080A1630 @ =0x000077FF
	cmp r0, r1
	bgt _080A1602
	movs r4, #0xe0
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r2, #0x4c]
	cmp r0, r1
	ble _080A160A
_080A1602:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x4c]
	movs r3, #1
_080A160A:
	movs r0, #0x78
	lsls r1, r0, #8
	ldr r0, [r2, #0x6c]
	cmp r0, r1
	bge _080A1620
	movs r4, #0xe0
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r2, #0x6c]
	cmp r0, r1
	blt _080A1628
_080A1620:
	str r1, [r2, #0x6c]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080A1628:
	cmp r3, #2
	beq _080A1634
	movs r0, #0
	b _080A1636
	.align 2, 0
_080A1630: .4byte 0x000077FF
_080A1634:
	movs r0, #1
_080A1636:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A163C
sub_80A163C: @ 0x080A163C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x4c]
	movs r2, #0xb4
	lsls r2, r2, #8
	cmp r0, r2
	ble _080A1654
	ldr r3, _080A165C @ =0xFFFFF740
	adds r0, r0, r3
	str r0, [r1, #0x4c]
	cmp r0, #0xb3
	bgt _080A1660
_080A1654:
	str r2, [r1, #0x4c]
	movs r0, #1
	b _080A1662
	.align 2, 0
_080A165C: .4byte 0xFFFFF740
_080A1660:
	movs r0, #0
_080A1662:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1668
sub_80A1668: @ 0x080A1668
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x54]
	movs r2, #0xf0
	lsls r2, r2, #6
	cmp r0, r2
	ble _080A1680
	ldr r3, _080A1688 @ =0xFFFFF740
	adds r0, r0, r3
	str r0, [r1, #0x54]
	cmp r0, #0x3b
	bgt _080A168C
_080A1680:
	str r2, [r1, #0x54]
	movs r0, #1
	b _080A168E
	.align 2, 0
_080A1688: .4byte 0xFFFFF740
_080A168C:
	movs r0, #0
_080A168E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1694
sub_80A1694: @ 0x080A1694
	push {r4, lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #0x4c]
	ldr r3, _080A16E0 @ =0x00012BFF
	cmp r0, r3
	bgt _080A16AE
	movs r4, #0x8c
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r1, #0x4c]
	cmp r0, r3
	ble _080A16B6
_080A16AE:
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r1, #0x4c]
	movs r2, #1
_080A16B6:
	ldr r0, [r1, #0x6c]
	ldr r3, _080A16E0 @ =0x00012BFF
	cmp r0, r3
	bgt _080A16CA
	movs r4, #0x84
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [r1, #0x6c]
	cmp r0, r3
	ble _080A16D6
_080A16CA:
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r1, #0x6c]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080A16D6:
	cmp r2, #2
	beq _080A16E4
	movs r0, #0
	b _080A16E6
	.align 2, 0
_080A16E0: .4byte 0x00012BFF
_080A16E4:
	movs r0, #1
_080A16E6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A16EC
sub_80A16EC: @ 0x080A16EC
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r0, [r1, #0x4c]
	movs r2, #0xb4
	lsls r2, r2, #8
	cmp r0, r2
	ble _080A1706
	ldr r4, _080A1730 @ =0xFFFFF740
	adds r0, r0, r4
	str r0, [r1, #0x4c]
	cmp r0, r2
	bgt _080A170A
_080A1706:
	str r2, [r1, #0x4c]
	movs r3, #1
_080A170A:
	ldr r0, [r1, #0x6c]
	movs r2, #0xb4
	lsls r2, r2, #8
	cmp r0, r2
	ble _080A171E
	ldr r4, _080A1734 @ =0xFFFFF7C0
	adds r0, r0, r4
	str r0, [r1, #0x6c]
	cmp r0, r2
	bgt _080A1726
_080A171E:
	str r2, [r1, #0x6c]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080A1726:
	cmp r3, #2
	beq _080A1738
	movs r0, #0
	b _080A173A
	.align 2, 0
_080A1730: .4byte 0xFFFFF740
_080A1734: .4byte 0xFFFFF7C0
_080A1738:
	movs r0, #1
_080A173A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A1740
sub_80A1740: @ 0x080A1740
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x10
	ldr r0, [r2, #0x54]
	cmp r0, r1
	bge _080A175A
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r2, #0x54]
	cmp r0, r1
	ble _080A1760
_080A175A:
	str r1, [r2, #0x54]
	movs r0, #1
	b _080A1762
_080A1760:
	movs r0, #0
_080A1762:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1768
sub_80A1768: @ 0x080A1768
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x4c]
	movs r3, #0x96
	lsls r3, r3, #8
	cmp r1, r3
	ble _080A1782
	ldr r0, _080A1788 @ =0xFFFFFD00
	adds r1, r1, r0
	str r1, [r2, #0x4c]
	ldr r0, _080A178C @ =0x000095FF
	cmp r1, r0
	bgt _080A1790
_080A1782:
	str r3, [r2, #0x4c]
	movs r0, #1
	b _080A1792
	.align 2, 0
_080A1788: .4byte 0xFFFFFD00
_080A178C: .4byte 0x000095FF
_080A1790:
	movs r0, #0
_080A1792:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1798
sub_80A1798: @ 0x080A1798
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r0, [r1, #0x74]
	ldr r2, _080A17D4 @ =0x000104FF
	cmp r0, r2
	bgt _080A17B2
	movs r4, #0xc0
	lsls r4, r4, #3
	adds r0, r0, r4
	str r0, [r1, #0x74]
	cmp r0, r2
	ble _080A17B8
_080A17B2:
	ldr r0, _080A17D8 @ =0x00010500
	str r0, [r1, #0x74]
	movs r3, #1
_080A17B8:
	ldr r2, [r1, #0x7c]
	ldr r0, _080A17DC @ =0x000077FF
	cmp r2, r0
	bgt _080A17E0
	movs r4, #0xfc
	lsls r4, r4, #3
	adds r0, r2, r4
	str r0, [r1, #0x7c]
	movs r2, #0xf0
	lsls r2, r2, #7
	cmp r0, r2
	ble _080A17EC
	str r2, [r1, #0x7c]
	b _080A17E6
	.align 2, 0
_080A17D4: .4byte 0x000104FF
_080A17D8: .4byte 0x00010500
_080A17DC: .4byte 0x000077FF
_080A17E0:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0x7c]
_080A17E6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080A17EC:
	cmp r3, #2
	beq _080A17F4
	movs r0, #0
	b _080A17F6
_080A17F4:
	movs r0, #1
_080A17F6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A17FC
sub_80A17FC: @ 0x080A17FC
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x6c]
	movs r3, #0xb4
	lsls r3, r3, #8
	cmp r1, r3
	ble _080A1816
	ldr r0, _080A181C @ =0xFFFFF7C0
	adds r1, r1, r0
	str r1, [r2, #0x6c]
	ldr r0, _080A1820 @ =0x0000B3FF
	cmp r1, r0
	bgt _080A1824
_080A1816:
	str r3, [r2, #0x6c]
	movs r0, #1
	b _080A1826
	.align 2, 0
_080A181C: .4byte 0xFFFFF7C0
_080A1820: .4byte 0x0000B3FF
_080A1824:
	movs r0, #0
_080A1826:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A182C
sub_80A182C: @ 0x080A182C
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x6c]
	ldr r3, _080A1850 @ =0x0000C8FF
	cmp r2, r3
	bgt _080A1844
	movs r0, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	str r0, [r1, #0x6c]
	cmp r0, r3
	ble _080A1854
_080A1844:
	movs r0, #0xc9
	lsls r0, r0, #8
	str r0, [r1, #0x6c]
	movs r0, #1
	b _080A1856
	.align 2, 0
_080A1850: .4byte 0x0000C8FF
_080A1854:
	movs r0, #0
_080A1856:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A185C
sub_80A185C: @ 0x080A185C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x74]
	movs r2, #0xc9
	lsls r2, r2, #8
	cmp r0, r2
	ble _080A1874
	ldr r3, _080A187C @ =0xFFFFFD00
	adds r0, r0, r3
	str r0, [r1, #0x74]
	cmp r0, r2
	bgt _080A1880
_080A1874:
	str r2, [r1, #0x74]
	movs r0, #1
	b _080A1882
	.align 2, 0
_080A187C: .4byte 0xFFFFFD00
_080A1880:
	movs r0, #0
_080A1882:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1888
sub_80A1888: @ 0x080A1888
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x60]
	movs r3, #0x91
	lsls r3, r3, #8
	cmp r1, r3
	bgt _080A189C
	str r3, [r2, #0x60]
	movs r0, #1
	b _080A18AC
_080A189C:
	ldr r0, _080A18B0 @ =0xFFFFFA00
	adds r1, r1, r0
	str r1, [r2, #0x60]
	ldr r0, _080A18B4 @ =0x000090FF
	cmp r1, r0
	bgt _080A18AA
	str r3, [r2, #0x60]
_080A18AA:
	movs r0, #0
_080A18AC:
	pop {r1}
	bx r1
	.align 2, 0
_080A18B0: .4byte 0xFFFFFA00
_080A18B4: .4byte 0x000090FF

	thumb_func_start sub_80A18B8
sub_80A18B8: @ 0x080A18B8
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x60]
	ldr r0, _080A18CC @ =0x0000B3FF
	cmp r2, r0
	ble _080A18D0
	adds r0, #1
	str r0, [r1, #0x60]
	movs r0, #1
	b _080A18DA
	.align 2, 0
_080A18CC: .4byte 0x0000B3FF
_080A18D0:
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r2, r3
	str r0, [r1, #0x60]
	movs r0, #0
_080A18DA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A18E0
sub_80A18E0: @ 0x080A18E0
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x44]
	ldr r0, _080A18F4 @ =0x000004FF
	cmp r2, r0
	bgt _080A18F8
	adds r0, r2, #0
	adds r0, #0x40
	b _080A18FA
	.align 2, 0
_080A18F4: .4byte 0x000004FF
_080A18F8:
	movs r0, #0
_080A18FA:
	str r0, [r1, #0x44]
	movs r0, #0xb4
	lsls r0, r0, #7
	str r0, [r1, #0x48]
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_80A1908
sub_80A1908: @ 0x080A1908
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x68]
	movs r3, #0x91
	lsls r3, r3, #8
	cmp r1, r3
	ble _080A1922
	ldr r0, _080A1928 @ =0xFFFFFA00
	adds r1, r1, r0
	str r1, [r2, #0x68]
	ldr r0, _080A192C @ =0x000090FF
	cmp r1, r0
	bgt _080A1930
_080A1922:
	str r3, [r2, #0x68]
	movs r0, #1
	b _080A1932
	.align 2, 0
_080A1928: .4byte 0xFFFFFA00
_080A192C: .4byte 0x000090FF
_080A1930:
	movs r0, #0
_080A1932:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1938
sub_80A1938: @ 0x080A1938
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x68]
	ldr r2, _080A195C @ =0x0000B3FF
	cmp r0, r2
	bgt _080A1950
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r1, #0x68]
	cmp r0, r2
	ble _080A1960
_080A1950:
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r1, #0x68]
	movs r0, #1
	b _080A1962
	.align 2, 0
_080A195C: .4byte 0x0000B3FF
_080A1960:
	movs r0, #0
_080A1962:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A1968
sub_80A1968: @ 0x080A1968
	push {r4, lr}
	adds r1, r0, #0
	movs r3, #0
	ldr r0, [r1, #0x5c]
	ldr r2, _080A19B0 @ =0x000077FF
	cmp r0, r2
	bgt _080A1982
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r0, r0, r4
	str r0, [r1, #0x5c]
	cmp r0, r2
	ble _080A198A
_080A1982:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0x5c]
	movs r3, #1
_080A198A:
	ldr r0, [r1, #0x64]
	movs r2, #0xf0
	lsls r2, r2, #7
	cmp r0, r2
	ble _080A199E
	ldr r4, _080A19B4 @ =0xFFFFFD00
	adds r0, r0, r4
	str r0, [r1, #0x64]
	cmp r0, r2
	bgt _080A19A6
_080A199E:
	str r2, [r1, #0x64]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080A19A6:
	cmp r3, #2
	beq _080A19B8
	movs r0, #0
	b _080A19BA
	.align 2, 0
_080A19B0: .4byte 0x000077FF
_080A19B4: .4byte 0xFFFFFD00
_080A19B8:
	movs r0, #1
_080A19BA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A19C0
sub_80A19C0: @ 0x080A19C0
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrh r0, [r4, #0xa]
	adds r0, #0xc0
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	ldrh r1, [r4, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0x40
	str r3, [sp]
	ldr r3, [r4, #0x6c]
	lsls r3, r3, #8
	asrs r3, r3, #0x10
	str r3, [sp, #4]
	ldr r3, [r4, #0x70]
	lsls r3, r3, #8
	asrs r3, r3, #0x10
	str r3, [sp, #8]
	ldr r3, _080A1A00 @ =gBgAffineRegs
	str r3, [sp, #0xc]
	movs r3, #0x40
	bl sa2__sub_8003EE4
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1A00: .4byte gBgAffineRegs

	thumb_func_start sub_80A1A04
sub_80A1A04: @ 0x080A1A04
	ldr r2, _080A1A24 @ =gBgScrollRegs
	ldr r1, [r0, #0x74]
	asrs r1, r1, #8
	strh r1, [r2, #4]
	ldr r1, [r0, #0x78]
	asrs r1, r1, #8
	rsbs r1, r1, #0
	strh r1, [r2, #6]
	ldr r1, [r0, #0x7c]
	asrs r1, r1, #8
	strh r1, [r2]
	adds r0, #0x80
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_080A1A24: .4byte gBgScrollRegs

	thumb_func_start sub_80A1A28
sub_80A1A28: @ 0x080A1A28
	push {lr}
	adds r1, r0, #0
	movs r0, #0xe6
	lsls r0, r0, #1
	adds r2, r1, r0
	ldr r0, [r1, #0x18]
	ldrb r0, [r0]
	ldr r0, [r1, #0x4c]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r1, #0x50]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
