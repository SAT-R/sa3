.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable066
CreateEntity_Interactable066: @ 0x08037E08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #8]
	ldrb r0, [r7, #7]
	mov sb, r0
	ldr r0, _08037EF0 @ =gStageData
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #0
	bne _08037ED6
	mov r0, sb
	cmp r0, #0x2c
	bne _08037E44
	ldr r0, _08037EF4 @ =gSaveGame
	ldrb r0, [r0, #0x11]
	cmp r0, #7
	bls _08037ED6
_08037E44:
	mov r0, sb
	cmp r0, #3
	beq _08037E52
	cmp r0, #8
	beq _08037E52
	cmp r0, #9
	bne _08037E58
_08037E52:
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _08037ED6
_08037E58:
	ldr r0, _08037EF8 @ =sub_8037F18
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08037EFC @ =sub_80385F4
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r2, _08037F00 @ =0x0300000C
	adds r6, r5, r2
	ldr r0, _08037F04 @ =0x03000034
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _08037F08 @ =0x00000CAC
	bl EwramMalloc
	str r0, [r4, #0x64]
	movs r2, #0
	movs r3, #0
	mov r1, sl
	strh r1, [r4, #4]
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r4, #6]
	str r7, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #0xa]
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r4, #0xb]
	ldr r1, _08037F0C @ =0x03000061
	adds r0, r5, r1
	mov r1, sb
	strb r1, [r0]
	ldr r0, _08037F10 @ =0x03000060
	adds r1, r5, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08037F14 @ =0x03000062
	adds r5, r5, r1
	strb r2, [r5]
	str r3, [r4, #0x5c]
	ldrb r0, [r7]
	lsls r0, r0, #3
	mov r2, sl
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	ldr r2, [sp, #4]
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	mov r1, r8
	bl sub_80384B0
_08037ED6:
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037EF0: .4byte gStageData
_08037EF4: .4byte gSaveGame
_08037EF8: .4byte sub_8037F18
_08037EFC: .4byte sub_80385F4
_08037F00: .4byte 0x0300000C
_08037F04: .4byte 0x03000034
_08037F08: .4byte 0x00000CAC
_08037F0C: .4byte 0x03000061
_08037F10: .4byte 0x03000060
_08037F14: .4byte 0x03000062

	thumb_func_start sub_8037F18
sub_8037F18: @ 0x08037F18
	push {r4, r5, r6, lr}
	ldr r5, _08037F78 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	bl sub_80382EC
	cmp r0, #0
	beq _08037F6C
	ldr r1, [r5]
	ldr r0, _08037F7C @ =sub_8037F8C
	str r0, [r1, #8]
	ldr r0, _08037F80 @ =0x03000060
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08037F84 @ =gStageData
	movs r0, #4
	strb r0, [r1, #4]
	movs r2, #1
	adds r0, r2, #0
	ldrb r3, [r1, #6]
	lsls r0, r3
	adds r3, r1, #0
	adds r3, #0xb9
	strb r0, [r3]
	adds r1, #0x85
	strb r2, [r1]
	ldr r0, _08037F88 @ =0x00000201
	bl sub_8003DF0
	ldr r0, [r6, #0x5c]
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bgt _08037F6C
	bl sub_80299FC
_08037F6C:
	bl sub_8038548
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08037F78: .4byte gCurTask
_08037F7C: .4byte sub_8037F8C
_08037F80: .4byte 0x03000060
_08037F84: .4byte gStageData
_08037F88: .4byte 0x00000201

	thumb_func_start sub_8037F8C
sub_8037F8C: @ 0x08037F8C
	push {r4, r5, lr}
	ldr r3, _08038028 @ =gStageData
	movs r0, #4
	strb r0, [r3, #4]
	movs r1, #1
	adds r0, r1, #0
	ldrb r2, [r3, #6]
	lsls r0, r2
	adds r2, r3, #0
	adds r2, #0xb9
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x85
	strb r1, [r0]
	ldr r5, _0803802C @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	ldrb r1, [r3, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08038030 @ =gPlayers
	adds r0, r0, r1
	adds r0, #0x9e
	ldrh r1, [r0]
	subs r1, #0x40
	strh r1, [r0]
	ldr r3, _08038034 @ =0x03000060
	adds r4, r2, r3
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08037FDC
	ldr r1, [r5]
	ldr r0, _08038038 @ =sub_8038058
	str r0, [r1, #8]
_08037FDC:
	ldr r2, _0803803C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	ldr r1, _08038040 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r3, _08038044 @ =gWinRegs
	ldr r0, _08038048 @ =0x000020D0
	strh r0, [r3, #2]
	ldrb r2, [r4]
	lsls r2, r2, #1
	adds r1, r2, #0
	adds r1, #0x18
	lsls r1, r1, #8
	movs r0, #0x58
	subs r0, r0, r2
	orrs r1, r0
	strh r1, [r3, #6]
	ldr r0, _0803804C @ =0x00003F1F
	strh r0, [r3, #8]
	movs r0, #0x1f
	strh r0, [r3, #0xa]
	ldr r2, _08038050 @ =gBldRegs
	ldr r0, _08038054 @ =0x00003FAF
	strh r0, [r2]
	ldrb r1, [r4]
	lsrs r1, r1, #1
	movs r0, #8
	subs r0, r0, r1
	strh r0, [r2, #4]
	bl sub_8038548
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038028: .4byte gStageData
_0803802C: .4byte gCurTask
_08038030: .4byte gPlayers
_08038034: .4byte 0x03000060
_08038038: .4byte sub_8038058
_0803803C: .4byte gDispCnt
_08038040: .4byte 0x0000DFFF
_08038044: .4byte gWinRegs
_08038048: .4byte 0x000020D0
_0803804C: .4byte 0x00003F1F
_08038050: .4byte gBldRegs
_08038054: .4byte 0x00003FAF

	thumb_func_start sub_8038058
sub_8038058: @ 0x08038058
	push {r4, r5, r6, lr}
	ldr r2, _080380D8 @ =gStageData
	movs r0, #4
	strb r0, [r2, #4]
	movs r1, #1
	adds r0, r1, #0
	ldrb r3, [r2, #6]
	lsls r0, r3
	adds r3, r2, #0
	adds r3, #0xb9
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x85
	strb r1, [r0]
	ldr r6, _080380DC @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r5, [r0, #0x64]
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080380E0 @ =gPlayers
	adds r0, r0, r1
	ldr r2, _080380E4 @ =gWinRegs
	ldr r1, _080380E8 @ =0x000020D0
	strh r1, [r2, #2]
	ldr r1, _080380EC @ =0x00001858
	strh r1, [r2, #6]
	ldr r2, _080380F0 @ =gBldRegs
	movs r1, #8
	strh r1, [r2, #4]
	adds r0, #0x9e
	movs r1, #0xfc
	lsls r1, r1, #8
	strh r1, [r0]
	bl sub_8038548
	cmp r0, #0
	beq _080380D0
	adds r0, r5, #0
	bl sub_8023734
	cmp r0, #0
	beq _080380CA
	ldr r0, _080380F4 @ =0x03000060
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, [r6]
	ldr r0, _080380F8 @ =sub_80380FC
	str r0, [r1, #8]
_080380CA:
	adds r0, r5, #0
	bl sub_80239A8
_080380D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080380D8: .4byte gStageData
_080380DC: .4byte gCurTask
_080380E0: .4byte gPlayers
_080380E4: .4byte gWinRegs
_080380E8: .4byte 0x000020D0
_080380EC: .4byte 0x00001858
_080380F0: .4byte gBldRegs
_080380F4: .4byte 0x03000060
_080380F8: .4byte sub_80380FC

	thumb_func_start sub_80380FC
sub_80380FC: @ 0x080380FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r2, _0803816C @ =gStageData
	movs r0, #4
	strb r0, [r2, #4]
	movs r1, #1
	adds r0, r1, #0
	ldrb r3, [r2, #6]
	lsls r0, r3
	adds r3, r2, #0
	adds r3, #0xb9
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x85
	strb r1, [r0]
	ldr r0, _08038170 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _08038174 @ =gPlayers
	adds r4, r0, r2
	adds r1, r4, #0
	adds r1, #0x9e
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	ldr r1, _08038178 @ =0x03000060
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0x10
	bne _080381AE
	movs r5, #0
	ldr r0, _0803817C @ =0x03000062
	adds r0, r0, r3
	mov r8, r0
	adds r7, r2, #0
_0803815A:
	cmp r5, #0
	beq _08038180
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08038184
	.align 2, 0
_0803816C: .4byte gStageData
_08038170: .4byte gCurTask
_08038174: .4byte gPlayers
_08038178: .4byte 0x03000060
_0803817C: .4byte 0x03000062
_08038180:
	ldr r0, _080381F4 @ =gStageData
	ldrb r1, [r0, #6]
_08038184:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080381A4
	adds r0, r4, #0
	bl sub_800ED34
_080381A4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803815A
_080381AE:
	adds r5, r6, #0
	adds r5, #0x60
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _080382A8
	ldr r2, _080381F8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080381FC @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08038200 @ =gBldRegs
	strh r3, [r0]
	strh r3, [r0, #4]
	ldr r0, _08038204 @ =gCamera
	strh r3, [r0, #0xe]
	movs r5, #0
	movs r3, #0x62
	adds r3, r3, r6
	mov r8, r3
	movs r0, #0x26
	adds r0, r0, r6
	mov sb, r0
	ldr r2, _08038208 @ =gPlayers
_080381E4:
	cmp r5, #0
	beq _0803820C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08038210
	.align 2, 0
_080381F4: .4byte gStageData
_080381F8: .4byte gDispCnt
_080381FC: .4byte 0x0000BFFF
_08038200: .4byte gBldRegs
_08038204: .4byte gCamera
_08038208: .4byte gPlayers
_0803820C:
	ldr r0, _08038290 @ =gStageData
	ldrb r1, [r0, #6]
_08038210:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r0, [r4, #4]
	ldr r1, _08038294 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r5
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _0803823E
	adds r0, r4, #0
	ldr r1, _08038298 @ =PlayerCB_8005380
	str r2, [sp]
	bl SetPlayerCallback
	ldr r2, [sp]
_0803823E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080381E4
	ldr r0, [r6, #0x5c]
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bgt _0803825C
	movs r0, #0x4b
	bl sub_8029A18
_0803825C:
	ldr r0, _0803829C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080382A0 @ =sub_8037F18
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r6, #0x5c]
	movs r2, #0
	ldr r0, _080382A4 @ =0x000003D1
	strh r0, [r6, #0x18]
	mov r3, sb
	strb r7, [r3]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r6, #0x20]
	ldr r0, _08038290 @ =gStageData
	movs r1, #3
	strb r1, [r0, #4]
	adds r1, r0, #0
	adds r1, #0xb9
	strb r2, [r1]
	adds r0, #0x85
	strb r2, [r0]
	b _080382CC
	.align 2, 0
_08038290: .4byte gStageData
_08038294: .4byte 0xEFFFFFFF
_08038298: .4byte PlayerCB_8005380
_0803829C: .4byte gCurTask
_080382A0: .4byte sub_8037F18
_080382A4: .4byte 0x000003D1
_080382A8:
	ldr r3, _080382E0 @ =gWinRegs
	ldr r0, _080382E4 @ =0x000020D0
	strh r0, [r3, #2]
	ldrb r0, [r5]
	movs r2, #0x10
	subs r2, r2, r0
	lsls r2, r2, #1
	adds r1, r2, #0
	adds r1, #0x18
	lsls r1, r1, #8
	movs r0, #0x58
	subs r0, r0, r2
	orrs r1, r0
	strh r1, [r3, #6]
	ldr r1, _080382E8 @ =gBldRegs
	ldrb r0, [r5]
	lsrs r0, r0, #1
	strh r0, [r1, #4]
_080382CC:
	bl sub_8038548
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080382E0: .4byte gWinRegs
_080382E4: .4byte 0x000020D0
_080382E8: .4byte gBldRegs

	thumb_func_start sub_80382EC
sub_80382EC: @ 0x080382EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r4, #0
	mov sb, r4
	ldr r0, _08038340 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r0, r0, r1
	mov sl, r0
	ldr r1, [r5]
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r6, #0
	lsls r7, r2, #0x10
_0803832E:
	cmp r6, #0
	beq _08038344
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08038348
	.align 2, 0
_08038340: .4byte gCurTask
_08038344:
	ldr r0, _080383F4 @ =gStageData
	ldrb r1, [r0, #6]
_08038348:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080383F8 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #8
	beq _080383B8
	cmp r1, #0x14
	beq _080383B8
	ldr r1, [r4, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080383B8
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _080383B8
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _080383B8
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _080383B8
	mov r1, r8
	lsls r2, r1, #0x10
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, sl
	asrs r1, r7, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _080383B8
	ldrh r1, [r4, #0x20]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080383B8
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r6
	lsrs r0, r0, #0x18
	mov sb, r0
_080383B8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0803832E
	mov r2, sb
	cmp r2, #0
	beq _0803849C
	adds r0, r5, #0
	adds r0, #0x62
	strb r2, [r0]
	subs r0, #0x2e
	adds r1, r5, #0
	adds r1, #0x61
	ldrb r1, [r1]
	ldr r2, [r5, #0x64]
	bl sub_80236C8
	movs r6, #0
	ldr r0, _080383FC @ =gUnknown_080CF690
	mov r8, r0
_080383E2:
	cmp r6, #0
	beq _08038400
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08038404
	.align 2, 0
_080383F4: .4byte gStageData
_080383F8: .4byte gPlayers
_080383FC: .4byte gUnknown_080CF690
_08038400:
	ldr r0, _08038478 @ =gStageData
	ldrb r1, [r0, #6]
_08038404:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803847C @ =gPlayers
	adds r4, r0, r1
	mov r0, sb
	asrs r0, r6
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _08038484
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_800ED14
	str r4, [r5, #0x5c]
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	add r0, r8
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0xe0
	ldr r0, [r1]
	ldrh r0, [r0, #0x20]
	adds r0, #0x40
	strh r0, [r5, #0x20]
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r1, r0
	str r1, [r5, #0x14]
	ldr r0, [r4, #4]
	ands r0, r7
	cmp r0, #0
	bne _0803846A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
_0803846A:
	str r1, [r5, #0x14]
	adds r0, r4, #0
	ldr r1, _08038480 @ =0x00000202
	bl sub_8004E98
	b _0803848E
	.align 2, 0
_08038478: .4byte gStageData
_0803847C: .4byte gPlayers
_08038480: .4byte 0x00000202
_08038484:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #4]
_0803848E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080383E2
	movs r0, #1
	b _0803849E
_0803849C:
	movs r0, #0
_0803849E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80384B0
sub_80384B0: @ 0x080384B0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r0, #0
	mov sl, r0
	movs r6, #0
	ldr r0, _08038540 @ =0x000003D1
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r0, r8
	strb r0, [r4, #0x1c]
	mov r0, sl
	strb r0, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r0, #4
	bl VramMalloc
	str r0, [r5]
	ldr r0, _08038544 @ =0x00000412
	strh r0, [r5, #0xc]
	mov r0, sl
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0xe]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	mov r0, r8
	strb r0, [r5, #0x1c]
	movs r0, #0xf
	strb r0, [r5, #0x1f]
	mov r0, sb
	str r0, [r5, #0x20]
	str r6, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038540: .4byte 0x000003D1
_08038544: .4byte 0x00000412

	thumb_func_start sub_8038548
sub_8038548: @ 0x08038548
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080385A0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _080385A4
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
	b _080385E4
	.align 2, 0
_080385A0: .4byte gCurTask
_080385A4:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _080385C8
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r2, _080385C4 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x5c]
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	b _080385D4
	.align 2, 0
_080385C4: .4byte gCamera
_080385C8:
	ldr r0, _080385F0 @ =gCamera
	ldr r1, [r0]
	subs r1, r6, r1
	strh r1, [r5, #0x10]
	ldr r0, [r0, #4]
	subs r0, r7, r0
_080385D4:
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	movs r0, #1
_080385E4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080385F0: .4byte gCamera

	thumb_func_start sub_80385F4
sub_80385F4: @ 0x080385F4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, [r4, #0x64]
	bl EwramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
