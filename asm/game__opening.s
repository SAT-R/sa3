.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateGameIntroState
CreateGameIntroState: @ 0x080A209C
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080A20D4 @ =Task_GameIntroInit
	movs r1, #0xb8
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r3, _080A20D8 @ =TaskDestructor_GameIntro
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	lsls r0, r4, #0x10
	ldr r1, _080A20DC @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080A20E4
	ldr r1, _080A20E0 @ =gStageData
	movs r0, #0
	b _080A20E8
	.align 2, 0
_080A20D4: .4byte Task_GameIntroInit
_080A20D8: .4byte TaskDestructor_GameIntro
_080A20DC: .4byte 0xFFFF0000
_080A20E0: .4byte gStageData
_080A20E4:
	ldr r1, _080A216C @ =gStageData
	movs r0, #1
_080A20E8:
	strb r0, [r1, #7]
	movs r1, #0x9a
	lsls r1, r1, #1
	add r1, ip
	movs r2, #0
	ldr r0, _080A2170 @ =0x0000FF10
	strh r0, [r1]
	movs r1, #0x9b
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0x8c
	strh r0, [r1]
	adds r0, #0xac
	add r0, ip
	strh r2, [r0]
	movs r0, #0x9d
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	movs r0, #0x9e
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	movs r0, #0x9f
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	movs r1, #0xa1
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080A2174 @ =0x0000FFD0
	strh r0, [r1]
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, ip
	movs r3, #0x10
	strh r3, [r0]
	movs r0, #0xa3
	lsls r0, r0, #1
	add r0, ip
	strh r3, [r0]
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	movs r0, #0xa5
	lsls r0, r0, #1
	add r0, ip
	strh r2, [r0]
	movs r0, #0x94
	lsls r0, r0, #1
	add r0, ip
	strh r4, [r0]
	ldr r0, _080A2178 @ =gBldRegs
	movs r1, #0xff
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r3, [r0, #4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A216C: .4byte gStageData
_080A2170: .4byte 0x0000FF10
_080A2174: .4byte 0x0000FFD0
_080A2178: .4byte gBldRegs

	thumb_func_start sub_80A217C
sub_80A217C: @ 0x080A217C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x68
	ldr r2, _080A2274 @ =gDispCnt
	movs r1, #0x42
	strh r1, [r2]
	ldr r2, _080A2278 @ =gBgCntRegs
	movs r7, #0
	movs r4, #0
	ldr r1, _080A227C @ =0x00001F0C
	strh r1, [r2]
	ldr r1, _080A2280 @ =0x00001708
	strh r1, [r2, #2]
	ldr r1, _080A2284 @ =0x00006B81
	strh r1, [r2, #4]
	ldr r1, _080A2288 @ =gBgScrollRegs
	strh r4, [r1]
	strh r4, [r1, #2]
	movs r2, #0x10
	strh r2, [r1, #4]
	movs r2, #0x74
	strh r2, [r1, #6]
	strh r4, [r1, #8]
	strh r4, [r1, #0xa]
	strh r4, [r1, #0xc]
	strh r4, [r1, #0xe]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A228C @ =0x06005800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0xd4
	lsls r1, r1, #1         @ 424 - Opening Sky/Grass Tilemap
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r6, #0x20
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	adds r1, r5, #0
	adds r1, #0x92
	strb r7, [r1]
	adds r1, #1
	strb r7, [r1]
	adds r1, #1
	strb r7, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	strh r4, [r0, #0x30]
	strh r4, [r0, #0x32]
	bl DrawBackground
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #3
	beq _080A2200
	cmp r0, #5
	bne _080A2242
_080A2200:
	adds r0, r5, #0
	adds r0, #0xe8
	ldr r1, _080A2290 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A2294 @ =0x0600B800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080A2298 @ =0x000001A7 @ Opening Circular Flash
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	movs r2, #0x89
	lsls r2, r2, #1
	adds r1, r5, r2
	strb r7, [r1]
	adds r2, #1
	adds r1, r5, r2
	strb r7, [r1]
	adds r2, #1
	adds r1, r5, r2
	strb r7, [r1]
	movs r1, #0x11
	strh r1, [r0, #0x2e]
	strh r4, [r0, #0x30]
	strh r4, [r0, #0x32]
	bl DrawBackground
_080A2242:
	movs r0, #0x94
	lsls r0, r0, #1
	adds r2, r5, r0
	ldrh r0, [r2]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080A22DA
	adds r3, r5, #0
	adds r3, #0xa8
	ldr r0, _080A229C @ =0x0600C000
	str r0, [r3, #4]
	movs r1, #0
	strh r1, [r3, #0xa]
	ldr r0, _080A22A0 @ =0x0600F800
	str r0, [r3, #0xc]
	strh r1, [r3, #0x18]
	strh r1, [r3, #0x1a]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #1
	bne _080A22A8
	ldr r0, _080A22A4 @ =0x000001A9 @ Presented by SEGA logo
	b _080A22AC
	.align 2, 0
_080A2274: .4byte gDispCnt
_080A2278: .4byte gBgCntRegs
_080A227C: .4byte 0x00001F0C
_080A2280: .4byte 0x00001708
_080A2284: .4byte 0x00006B81
_080A2288: .4byte gBgScrollRegs
_080A228C: .4byte 0x06005800
_080A2290: .4byte 0x06008000
_080A2294: .4byte 0x0600B800
_080A2298: .4byte 0x000001A7
_080A229C: .4byte 0x0600C000
_080A22A0: .4byte 0x0600F800
_080A22A4: .4byte 0x000001A9
_080A22A8:
	movs r0, #0xd5
	lsls r0, r0, #1         @ Create by Sonic Team Logo
_080A22AC:
	strh r0, [r3, #0x1c]
	movs r2, #0
	movs r1, #0
	strh r1, [r3, #0x1e]
	strh r1, [r3, #0x20]
	strh r1, [r3, #0x22]
	strh r1, [r3, #0x24]
	movs r0, #0x20
	strh r0, [r3, #0x26]
	strh r0, [r3, #0x28]
	adds r0, r3, #0
	adds r0, #0x2a
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	strh r1, [r3, #0x2e]
	strh r1, [r3, #0x30]
	strh r1, [r3, #0x32]
	adds r0, r3, #0
	bl DrawBackground
_080A22DA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A22E0
sub_80A22E0: @ 0x080A22E0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	mov r6, ip
	adds r6, #0x50
	ldr r0, _080A238C @ =0x06010000
	mov r1, ip
	str r0, [r1]
	movs r0, #0x81
	lsls r0, r0, #5
	str r0, [r1, #8]
	movs r1, #0
	movs r2, #0
	movs r0, #0xa1
	mov r3, ip
	strh r0, [r3, #0xc]
	movs r0, #0x82
	strh r0, [r3, #0x10]
	movs r5, #0x8c
	strh r5, [r3, #0x12]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	strh r2, [r3, #0x16]
	ldr r0, _080A2390 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #3
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r3, #0x10
	mov r7, ip
	strb r3, [r7, #0x1c]
	strb r1, [r7, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x20]
	strh r2, [r6]
	ldr r0, _080A2394 @ =0x0000FF20
	strh r0, [r6, #2]
	movs r0, #0xe0
	strh r0, [r6, #4]
	ldrh r0, [r7, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r6, #8]
	mov r1, ip
	adds r1, #0x28
	adds r6, #0xc
	ldr r0, _080A2398 @ =0x06010800
	str r0, [r7, #0x28]
	ldr r0, _080A239C @ =0x00001021
	str r0, [r1, #8]
	ldr r0, _080A23A0 @ =0x000001E7
	strh r0, [r1, #0xc]
	movs r0, #0x64
	strh r0, [r1, #0x10]
	strh r5, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	strh r2, [r1, #0x16]
	adds r0, r4, #0
	strh r0, [r1, #0x18]
	movs r0, #4
	strb r0, [r1, #0x1a]
	adds r0, r4, #0
	strb r0, [r1, #0x1b]
	strb r3, [r1, #0x1c]
	movs r0, #1
	strb r0, [r1, #0x1f]
	str r4, [r1, #0x20]
	strh r2, [r6]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r6, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #4]
	ldrh r0, [r1, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r1, #0x12]
	strh r0, [r6, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A238C: .4byte 0x06010000
_080A2390: .4byte 0x0000FFFF
_080A2394: .4byte 0x0000FF20
_080A2398: .4byte 0x06010800
_080A239C: .4byte 0x00001021
_080A23A0: .4byte 0x000001E7

	thumb_func_start sub_80A23A4
sub_80A23A4: @ 0x080A23A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080A244C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _080A2450 @ =gHBlankCopySize
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080A2454 @ =gHBlankCopyTarget
	ldr r0, _080A2458 @ =0x04000020
	str r0, [r1]
	ldr r1, _080A245C @ =gBgOffsetsHBlankPrimary
	ldr r3, _080A2460 @ =0x0300012C
	adds r0, r2, r3
	ldr r4, [r0]
	str r4, [r1]
	ldr r3, _080A2464 @ =gFlags
	ldr r0, [r3]
	movs r1, #4
	orrs r0, r1
	str r0, [r3]
	ldr r5, _080A2468 @ =0x03000138
	adds r3, r2, r5
	ldr r1, _080A246C @ =0x03000140
	adds r0, r2, r1
	ldrh r0, [r0]
	ldrh r5, [r3]
	adds r0, r0, r5
	ldr r1, _080A2470 @ =0x00000FFF
	ands r0, r1
	strh r0, [r3]
	ldr r0, _080A2474 @ =0x0300013A
	adds r3, r2, r0
	ldr r1, _080A2478 @ =0x03000142
	adds r0, r2, r1
	ldrh r0, [r0]
	ldrh r5, [r3]
	adds r0, r0, r5
	ldr r1, _080A247C @ =0x000007FF
	ands r0, r1
	strh r0, [r3]
	ldr r0, _080A2480 @ =0x03000148
	adds r1, r2, r0
	ldr r3, _080A2484 @ =0x03000144
	adds r0, r2, r3
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	ldr r0, _080A2488 @ =0x0300014A
	adds r1, r2, r0
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	movs r1, #0
	ldr r0, _080A248C @ =0x03000136
	adds r6, r2, r0
	subs r3, #0x16
	adds r3, r3, r2
	mov ip, r3
	ldr r5, _080A2474 @ =0x0300013A
	adds r5, r5, r2
	mov sb, r5
_080A2434:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r3, #0
	ldrsh r0, [r6, r3]
	subs r0, r2, r0
	adds r7, r1, #0
	cmp r0, #0
	blt _080A2490
	ldrh r0, [r6]
	subs r0, r2, r0
	b _080A2494
	.align 2, 0
_080A244C: .4byte gCurTask
_080A2450: .4byte gHBlankCopySize
_080A2454: .4byte gHBlankCopyTarget
_080A2458: .4byte 0x04000020
_080A245C: .4byte gBgOffsetsHBlankPrimary
_080A2460: .4byte 0x0300012C
_080A2464: .4byte gFlags
_080A2468: .4byte 0x03000138
_080A246C: .4byte 0x03000140
_080A2470: .4byte 0x00000FFF
_080A2474: .4byte 0x0300013A
_080A2478: .4byte 0x03000142
_080A247C: .4byte 0x000007FF
_080A2480: .4byte 0x03000148
_080A2484: .4byte 0x03000144
_080A2488: .4byte 0x0300014A
_080A248C: .4byte 0x03000136
_080A2490:
	ldrh r0, [r6]
	subs r0, r0, r2
_080A2494:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	mov r0, ip
	ldr r2, [r0]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	muls r1, r0, r1
	lsls r1, r1, #1
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r7, #0x10
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r1, r0
	bge _080A24D4
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _080A24E4
	ldr r1, _080A24D0 @ =0xFFFF8000
	adds r0, r3, r1
	b _080A24E0
	.align 2, 0
_080A24D0: .4byte 0xFFFF8000
_080A24D4:
	lsls r0, r3, #0x10
	cmp r0, #0
	blt _080A24E4
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r3, r2
_080A24E0:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080A24E4:
	lsls r2, r5, #0x10
	mov r5, ip
	ldr r0, [r5]
	asrs r2, r2, #0xe
	adds r0, r2, r0
	ldr r0, [r0]
	lsrs r0, r0, #2
	strh r0, [r4]
	ldr r0, [r5]
	adds r2, r2, r0
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, r8
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, [r2]
	muls r1, r0, r1
	lsrs r1, r1, #2
	movs r0, #0x9c
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	strh r1, [r4, #8]
	strh r3, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	adds r4, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _080A2434
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start Task_GameIntroInit
Task_GameIntroInit: @ 0x080A2534
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, _080A2654 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	mov r5, sp
	mov r0, sp
	movs r1, #0
	movs r2, #0x10
	bl memset
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5]
	strh r0, [r5, #6]
	ldr r1, _080A2658 @ =gDispCnt
	movs r0, #0x42
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_80A217C
	adds r0, r6, #0
	bl sub_80A22E0
	movs r0, #0xa0
	lsls r0, r0, #4
	bl EwramMalloc
	ldr r1, _080A265C @ =0x0300012C
	adds r4, r4, r1
	str r0, [r4]
	adds r4, r0, #0
	movs r5, #0
_080A257C:
	mov r0, sp
	adds r1, r4, #0
	movs r2, #8
	bl CpuSet
	lsls r0, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r4, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _080A257C
	movs r0, #0x80
	lsls r0, r0, #3
	bl EwramMalloc
	movs r2, #0x98
	lsls r2, r2, #1
	adds r1, r6, r2
	str r0, [r1]
	movs r5, #0
_080A25AA:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	lsls r5, r4, #2
	adds r5, r5, r0
	lsls r1, r4, #4
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl __divsi3
	str r0, [r5]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xff
	ble _080A25AA
	movs r5, #0
	ldr r4, _080A2660 @ =gBgPalette
_080A25DC:
	movs r0, #0
	bl sub_80C4C0C
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	adds r1, #0x50
	lsls r1, r1, #1
	adds r1, r1, r4
	strh r0, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0xf
	ble _080A25DC
	ldr r2, _080A2664 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080A2668 @ =gBldRegs
	movs r2, #0
	ldr r0, _080A266C @ =0x00001D42
	strh r0, [r1]
	ldr r0, _080A2670 @ =0x00001010
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	strh r2, [r0]
	movs r5, #0
	movs r0, #0xa7
	lsls r0, r0, #1
	adds r2, r6, r0
	movs r3, #0
_080A2626:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r2, r0
	strh r3, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xf
	ble _080A2626
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #5
	bhi _080A26EE
	lsls r0, r0, #2
	ldr r1, _080A2674 @ =_080A2678
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A2654: .4byte gCurTask
_080A2658: .4byte gDispCnt
_080A265C: .4byte 0x0300012C
_080A2660: .4byte gBgPalette
_080A2664: .4byte gFlags
_080A2668: .4byte gBldRegs
_080A266C: .4byte 0x00001D42
_080A2670: .4byte 0x00001010
_080A2674: .4byte _080A2678
_080A2678: @ jump table
	.4byte _080A2690 @ case 0
	.4byte _080A26A0 @ case 1
	.4byte _080A26AA @ case 2
	.4byte _080A26C4 @ case 3
	.4byte _080A26CC @ case 4
	.4byte _080A26DC @ case 5
_080A2690:
	ldr r0, _080A2698 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A269C @ =Task_80A2A9C
	b _080A26EC
	.align 2, 0
_080A2698: .4byte gCurTask
_080A269C: .4byte Task_80A2A9C
_080A26A0:
	bl m4aMPlayAllStop
	movs r0, #0         @ MUS_INTRO
	bl m4aSongNumStart
_080A26AA:
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #0xa
	strh r0, [r1]
	ldr r0, _080A26BC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A26C0 @ =Task_80A2A9C
	b _080A26EC
	.align 2, 0
_080A26BC: .4byte gCurTask
_080A26C0: .4byte Task_80A2A9C
_080A26C4:
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r6, r2
	b _080A26E2
_080A26CC:
	ldr r0, _080A26D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A26D8 @ =Task_80A2A9C
	b _080A26EC
	.align 2, 0
_080A26D4: .4byte gCurTask
_080A26D8: .4byte Task_80A2A9C
_080A26DC:
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r6, r0
_080A26E2:
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080A26F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A26FC @ =sub_80A2700
_080A26EC:
	str r0, [r1, #8]
_080A26EE:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A26F8: .4byte gCurTask
_080A26FC: .4byte sub_80A2700

	thumb_func_start sub_80A2700
sub_80A2700: @ 0x080A2700
	push {r4, r5, r6, lr}
	ldr r6, _080A274C @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	ldr r1, _080A2750 @ =gDispCnt
	ldr r2, _080A2754 @ =0x00001641
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_80A2DD8
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bne _080A2768
	ldr r3, _080A2758 @ =0x0300013E
	adds r0, r5, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80A2978
	movs r0, #0
	bl sub_80A2A40
	bl sub_80A2D80
	bl sub_80A23A4
	ldr r2, _080A275C @ =0x0300013C
	adds r1, r5, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _080A2760
	subs r0, r2, #1
	strh r0, [r1]
	b _080A2768
	.align 2, 0
_080A274C: .4byte gCurTask
_080A2750: .4byte gDispCnt
_080A2754: .4byte 0x00001641
_080A2758: .4byte 0x0300013E
_080A275C: .4byte 0x0300013C
_080A2760:
	strh r4, [r1]
	ldr r1, [r6]
	ldr r0, _080A2770 @ =sub_80A2774
	str r0, [r1, #8]
_080A2768:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A2770: .4byte sub_80A2774

	thumb_func_start sub_80A2774
sub_80A2774: @ 0x080A2774
	push {r4, r5, r6, lr}
	ldr r6, _080A27C4 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	bl sub_80A2DD8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A27E2
	ldr r0, _080A27C8 @ =0x0300013E
	adds r5, r4, r0
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	bl sub_80A2978
	ldr r0, _080A27CC @ =0x0300013C
	adds r4, r4, r0
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	bl sub_80A2A40
	bl sub_80A2D80
	bl sub_80A23A4
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3f
	bgt _080A27D0
	cmp r0, #0x20
	ble _080A27E2
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	b _080A27E2
	.align 2, 0
_080A27C4: .4byte gCurTask
_080A27C8: .4byte 0x0300013E
_080A27CC: .4byte 0x0300013C
_080A27D0:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	movs r0, #7
	bl sub_80A2A40
	ldr r1, [r6]
	ldr r0, _080A27E8 @ =sub_80A27EC
	str r0, [r1, #8]
_080A27E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A27E8: .4byte sub_80A27EC

	thumb_func_start sub_80A27EC
sub_80A27EC: @ 0x080A27EC
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A2948 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r0, _080A294C @ =0x0300014C
	adds r5, r6, r0
	ldrh r0, [r5]
	adds r0, #1
	movs r1, #0xff
	ands r0, r1
	strh r0, [r5]
	bl sub_80A2DD8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080A2814
	b _080A2940
_080A2814:
	ldr r1, _080A2950 @ =0x0300013E
	adds r4, r6, r1
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	bl sub_80A2978
	ldr r2, _080A2954 @ =0x0300013C
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080A2858
	movs r5, #0
	adds r2, #0x12
	adds r4, r6, r2
	movs r2, #0
_080A2842:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r4, r0
	strh r2, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xf
	ble _080A2842
_080A2858:
	movs r5, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r1, #0xa7
	lsls r1, r1, #1
	adds r6, r7, r1
_080A2866:
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	lsls r2, r3, #2
	cmp r1, r2
	ble _080A288E
	ldrh r0, [r4]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r3, #1
	adds r1, r6, r1
	adds r2, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080A288C
	movs r2, #0x1f
_080A288C:
	strh r2, [r1]
_080A288E:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _080A2866
	movs r5, #0
	ldr r6, _080A2958 @ =gBgPalette
_080A28A2:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #1
	movs r2, #0xa7
	lsls r2, r2, #1
	adds r0, r7, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0x1f
	ands r1, r0
	lsls r0, r1, #5
	orrs r0, r1
	lsls r1, r1, #0xa
	orrs r0, r1
	bl sub_80C4C0C
	adds r1, r4, #0
	adds r1, #0x50
	lsls r1, r1, #1
	adds r1, r1, r6
	strh r0, [r1]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	ble _080A28A2
	ldr r5, _080A295C @ =gFlags
	ldr r0, [r5]
	movs r1, #1
	orrs r0, r1
	str r0, [r5]
	bl sub_80A2D80
	bl sub_80A23A4
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x95
	bne _080A2918
	ldr r0, _080A2960 @ =gMPlayInfo_BGM
	movs r1, #5
	bl m4aMPlayFadeOut
	ldr r0, _080A2964 @ =gMPlayInfo_SE1
	movs r1, #5
	bl m4aMPlayFadeOut
	ldr r0, _080A2968 @ =gMPlayInfo_SE2
	movs r1, #5
	bl m4aMPlayFadeOut
	ldr r0, _080A296C @ =gMPlayInfo_SE3
	movs r1, #5
	bl m4aMPlayFadeOut
_080A2918:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x9f
	ble _080A2940
	ldr r1, _080A2970 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r0, [r5]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	ldr r0, _080A2948 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A2974 @ =Task_80A2D34
	str r0, [r1, #8]
_080A2940:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2948: .4byte gCurTask
_080A294C: .4byte 0x0300014C
_080A2950: .4byte 0x0300013E
_080A2954: .4byte 0x0300013C
_080A2958: .4byte gBgPalette
_080A295C: .4byte gFlags
_080A2960: .4byte gMPlayInfo_BGM
_080A2964: .4byte gMPlayInfo_SE1
_080A2968: .4byte gMPlayInfo_SE2
_080A296C: .4byte gMPlayInfo_SE3
_080A2970: .4byte gBldRegs
_080A2974: .4byte Task_80A2D34

	thumb_func_start sub_80A2978
sub_80A2978: @ 0x080A2978
	push {r4, r5, r6, r7, lr}
	ldr r1, _080A2A20 @ =gCurTask
	ldr r1, [r1]
	ldrh r3, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r3, r1
	lsls r5, r0, #0x10
	asrs r4, r5, #0x10
	cmp r4, #0xff
	bgt _080A2A18
	ldr r0, _080A2A24 @ =0x03000136
	adds r2, r3, r0
	adds r0, r4, #0
	adds r0, #0x20
	asrs r0, r0, #4
	subs r0, #4
	ldrh r1, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	ldr r7, _080A2A28 @ =0x03000058
	adds r0, r3, r7
	strh r1, [r0]
	asrs r0, r5, #0x14
	subs r0, #4
	ldrh r1, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x3a]
	ldr r2, _080A2A2C @ =0x03000064
	adds r0, r3, r2
	strh r1, [r0]
	asrs r2, r5, #0x11
	adds r0, r2, #0
	adds r0, #0x82
	adds r0, r4, r0
	strh r0, [r6, #0x10]
	subs r7, #2
	adds r1, r3, r7
	strh r0, [r1]
	adds r2, r2, r4
	mov ip, r2
	movs r0, #0xe0
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _080A29E6
	rsbs r0, r0, #0
	subs r7, #4
	adds r1, r3, r7
	strh r0, [r1]
	ldr r1, _080A2A30 @ =0x03000054
	adds r0, r3, r1
	strh r2, [r0]
_080A29E6:
	lsls r1, r4, #1
	asrs r0, r5, #0x12
	subs r0, #0x64
	subs r1, r1, r0
	strh r1, [r6, #0x38]
	ldr r2, _080A2A34 @ =0x03000062
	adds r0, r3, r2
	strh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	mov r7, ip
	subs r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _080A2A18
	rsbs r0, r0, #0
	ldr r4, _080A2A38 @ =0x0300005E
	adds r1, r3, r4
	strh r0, [r1]
	ldr r7, _080A2A3C @ =0x03000060
	adds r0, r3, r7
	strh r2, [r0]
_080A2A18:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2A20: .4byte gCurTask
_080A2A24: .4byte 0x03000136
_080A2A28: .4byte 0x03000058
_080A2A2C: .4byte 0x03000064
_080A2A30: .4byte 0x03000054
_080A2A34: .4byte 0x03000062
_080A2A38: .4byte 0x0300005E
_080A2A3C: .4byte 0x03000060

	thumb_func_start sub_80A2A40
sub_80A2A40: @ 0x080A2A40
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080A2A50
	movs r1, #0
	b _080A2A56
_080A2A50:
	cmp r0, #7
	ble _080A2A56
	movs r1, #7
_080A2A56:
	lsls r0, r1, #0x10
	asrs r0, r0, #0xa
	ldr r1, _080A2A90 @ =Palette_unknown_424
	adds r6, r0, r1
	movs r0, #0
_080A2A60:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r5, r4, #1
	adds r0, r5, r6
	ldrh r0, [r0]
	bl sub_80C4C0C
	ldr r1, _080A2A94 @ =gBgPalette
	adds r5, r5, r1
	strh r0, [r5]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1f
	ble _080A2A60
	ldr r0, _080A2A98 @ =gFlags
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A2A90: .4byte Palette_unknown_424
_080A2A94: .4byte gBgPalette
_080A2A98: .4byte gFlags

	thumb_func_start Task_80A2A9C
Task_80A2A9C: @ 0x080A2A9C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A2B30 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r7, _080A2B34 @ =gDispCnt
	ldr r1, _080A2B38 @ =0x00001441
	adds r0, r1, #0
	strh r0, [r7]
	ldr r1, _080A2B3C @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r2, _080A2B40 @ =0x0300013C
	adds r4, r5, r2
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	bl sub_80A2DD8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A2B28
	bl sub_80A2D80
	bl sub_80A23A4
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _080A2B28
	movs r0, #0x96
	strh r0, [r4]
	ldr r2, _080A2B44 @ =0x03000128
	adds r0, r5, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080A2AFA
	cmp r0, #3
	bgt _080A2AFA
	ldr r2, _080A2B48 @ =0x00001541
	adds r0, r2, #0
	strh r0, [r7]
_080A2AFA:
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #5
	bne _080A2B10
	ldr r1, _080A2B34 @ =gDispCnt
	ldr r2, _080A2B48 @ =0x00001541
	adds r0, r2, #0
	strh r0, [r1]
_080A2B10:
	ldr r1, _080A2B3C @ =gBldRegs
	movs r2, #0
	ldr r0, _080A2B4C @ =0x00003F41
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	ldr r0, _080A2B30 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A2B50 @ =sub_80A2B54
	str r0, [r1, #8]
_080A2B28:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2B30: .4byte gCurTask
_080A2B34: .4byte gDispCnt
_080A2B38: .4byte 0x00001441
_080A2B3C: .4byte gBldRegs
_080A2B40: .4byte 0x0300013C
_080A2B44: .4byte 0x03000128
_080A2B48: .4byte 0x00001541
_080A2B4C: .4byte 0x00003F41
_080A2B50: .4byte sub_80A2B54

	thumb_func_start sub_80A2B54
sub_80A2B54: @ 0x080A2B54
	push {r4, lr}
	ldr r0, _080A2B8C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r1, _080A2B90 @ =0x0300013C
	adds r0, r0, r1
	ldrh r1, [r0]
	subs r2, r1, #1
	strh r2, [r0]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x8d
	ble _080A2B98
	movs r0, #0x96
	subs r0, r0, r2
	ldr r2, _080A2B94 @ =gBldRegs
	movs r1, #0x10
	lsls r0, r0, #0x11
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #8
	orrs r1, r0
	strh r1, [r2, #2]
	b _080A2BBA
	.align 2, 0
_080A2B8C: .4byte gCurTask
_080A2B90: .4byte 0x0300013C
_080A2B94: .4byte gBldRegs
_080A2B98:
	cmp r0, #8
	bgt _080A2BB4
	ldr r0, _080A2BB0 @ =gBldRegs
	movs r1, #0x10
	lsls r2, r2, #0x11
	asrs r2, r2, #0x10
	subs r1, r1, r2
	lsls r1, r1, #8
	orrs r1, r2
	strh r1, [r0, #2]
	b _080A2BBA
	.align 2, 0
_080A2BB0: .4byte gBldRegs
_080A2BB4:
	ldr r1, _080A2BF0 @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #2]
_080A2BBA:
	bl sub_80A2DD8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A2C4A
	bl sub_80A2D80
	bl sub_80A23A4
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r4, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080A2C4A
	subs r2, #0x14
	adds r0, r4, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #5
	bhi _080A2C30
	lsls r0, r0, #2
	ldr r1, _080A2BF4 @ =_080A2BF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A2BF0: .4byte gBldRegs
_080A2BF4: .4byte _080A2BF8
_080A2BF8: @ jump table
	.4byte _080A2C3A @ case 0
	.4byte _080A2C10 @ case 1
	.4byte _080A2C1A @ case 2
	.4byte _080A2C30 @ case 3
	.4byte _080A2C30 @ case 4
	.4byte _080A2C30 @ case 5
_080A2C10:
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #0xa
	b _080A2C38
_080A2C1A:
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x78
	strh r0, [r1]
	ldr r1, _080A2C2C @ =gStageData
	movs r0, #1
	strb r0, [r1, #7]
	b _080A2C3A
	.align 2, 0
_080A2C2C: .4byte gStageData
_080A2C30:
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #1
_080A2C38:
	strh r0, [r1]
_080A2C3A:
	ldr r1, _080A2C50 @ =gDispCnt
	ldr r2, _080A2C54 @ =0x00001441
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A2C58 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A2C5C @ =sub_80A2C60
	str r0, [r1, #8]
_080A2C4A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2C50: .4byte gDispCnt
_080A2C54: .4byte 0x00001441
_080A2C58: .4byte gCurTask
_080A2C5C: .4byte sub_80A2C60

	thumb_func_start sub_80A2C60
sub_80A2C60: @ 0x080A2C60
	push {r4, r5, lr}
	ldr r0, _080A2C90 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	ldr r0, _080A2C94 @ =0x0300013C
	adds r4, r5, r0
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	bl sub_80A2DD8
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _080A2CF2
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080A2C98
	bl sub_80A2D80
	bl sub_80A23A4
	b _080A2CF2
	.align 2, 0
_080A2C90: .4byte gCurTask
_080A2C94: .4byte 0x0300013C
_080A2C98:
	ldr r1, _080A2CBC @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, _080A2CC0 @ =0x03000128
	adds r0, r5, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	beq _080A2CD6
	cmp r0, #1
	bgt _080A2CC4
	cmp r0, #0
	beq _080A2CCE
	b _080A2CEA
	.align 2, 0
_080A2CBC: .4byte gBldRegs
_080A2CC0: .4byte 0x03000128
_080A2CC4:
	cmp r0, #2
	beq _080A2CDE
	cmp r0, #4
	beq _080A2CE4
	b _080A2CEA
_080A2CCE:
	movs r0, #1
	bl sub_80A2E38
	b _080A2CEA
_080A2CD6:
	movs r0, #0
	bl sub_80A2E38
	b _080A2CEA
_080A2CDE:
	bl sub_80A3F18
	b _080A2CEA
_080A2CE4:
	movs r0, #1
	bl CreateIntroEggmanCutscene
_080A2CEA:
	ldr r0, _080A2CF8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080A2CF2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A2CF8: .4byte gCurTask

	thumb_func_start TaskDestructor_GameIntro
TaskDestructor_GameIntro: @ 0x080A2CFC
	push {r4, lr}
	ldrh r4, [r0, #6]
	ldr r1, _080A2D28 @ =0x0300012C
	adds r0, r4, r1
	ldr r0, [r0]
	bl EwramFree
	ldr r0, _080A2D2C @ =0x03000130
	adds r4, r4, r0
	ldr r0, [r4]
	bl EwramFree
	ldr r2, _080A2D30 @ =gFlags
	ldr r0, [r2]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2D28: .4byte 0x0300012C
_080A2D2C: .4byte 0x03000130
_080A2D30: .4byte gFlags

	thumb_func_start Task_80A2D34
Task_80A2D34: @ 0x080A2D34
	push {lr}
	ldr r0, _080A2D50 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _080A2D54 @ =0x03000128
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #3
	beq _080A2D58
	cmp r0, #5
	beq _080A2D60
	b _080A2D76
	.align 2, 0
_080A2D50: .4byte gCurTask
_080A2D54: .4byte 0x03000128
_080A2D58:
	movs r0, #2
	bl sub_808ADF0
	b _080A2D76
_080A2D60:
	ldr r2, _080A2D7C @ =gLoadedSaveGame
	ldrh r1, [r2, #0x34]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x34]
	bl sub_8001E58
	movs r0, #2
	movs r1, #0
	bl WarpToMap
_080A2D76:
	pop {r0}
	bx r0
	.align 2, 0
_080A2D7C: .4byte gLoadedSaveGame

	thumb_func_start sub_80A2D80
sub_80A2D80: @ 0x080A2D80
	push {r4, r5, lr}
	ldr r0, _080A2DC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _080A2DCC @ =0x03000050
	adds r1, r5, r0
	adds r0, r4, #0
	bl TransformSprite
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _080A2DD0 @ =0x03000028
	adds r4, r5, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _080A2DD4 @ =0x0300005C
	adds r5, r5, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl TransformSprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A2DC8: .4byte gCurTask
_080A2DCC: .4byte 0x03000050
_080A2DD0: .4byte 0x03000028
_080A2DD4: .4byte 0x0300005C

	thumb_func_start sub_80A2DD8
sub_80A2DD8: @ 0x080A2DD8
	push {lr}
	ldr r0, _080A2E1C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	ldr r0, _080A2E20 @ =gStageData
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _080A2E30
	ldr r2, _080A2E24 @ =0x03000128
	adds r0, r1, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080A2E30
	cmp r0, #3
	bgt _080A2E30
	ldr r0, _080A2E28 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A2E30
	ldr r0, _080A2E2C @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	movs r0, #2
	bl sub_808ADF0
	movs r0, #1
	b _080A2E32
	.align 2, 0
_080A2E1C: .4byte gCurTask
_080A2E20: .4byte gStageData
_080A2E24: .4byte 0x03000128
_080A2E28: .4byte gPressedKeys
_080A2E2C: .4byte gFlags
_080A2E30:
	movs r0, #0
_080A2E32:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A2E38
sub_80A2E38: @ 0x080A2E38
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _080A2EE4 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A2EE8 @ =Task_80A2FF4
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A2EEC @ =sub_80A3E34
	str r1, [sp]
	movs r1, #0xa0
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	str r1, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	str r1, [r0, #0xc]
	movs r2, #0
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	movs r1, #2
	strb r1, [r0, #1]
	movs r4, #0
	strh r2, [r0, #4]
	strb r5, [r0]
	str r2, [sp, #4]
	ldr r3, _080A2EF0 @ =0x040000D4
	add r1, sp, #4
	str r1, [r3]
	ldr r1, _080A2EF4 @ =gBgCntRegs
	ldrh r2, [r1]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r3, #4]
	ldr r1, _080A2EF8 @ =0x85000010
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r5, _080A2EFC @ =gBgSprites_Unknown1
	strb r4, [r5, #1]
	ldr r1, _080A2F00 @ =gBgSprites_Unknown2
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	movs r2, #0xff
	strb r2, [r1, #6]
	movs r3, #0x40
	strb r3, [r1, #7]
	strb r4, [r5, #2]
	strb r4, [r1, #8]
	strb r4, [r1, #9]
	movs r2, #1
	rsbs r2, r2, #0
	strb r2, [r1, #0xa]
	strb r3, [r1, #0xb]
	bl sub_80A2F0C
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A2F04 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A2F08 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A2EE4: .4byte gDispCnt
_080A2EE8: .4byte Task_80A2FF4
_080A2EEC: .4byte sub_80A3E34
_080A2EF0: .4byte 0x040000D4
_080A2EF4: .4byte gBgCntRegs
_080A2EF8: .4byte 0x85000010
_080A2EFC: .4byte gBgSprites_Unknown1
_080A2F00: .4byte gBgSprites_Unknown2
_080A2F04: .4byte gBgPalette
_080A2F08: .4byte gFlags

	thumb_func_start sub_80A2F0C
sub_80A2F0C: @ 0x080A2F0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r2, _080A2FD0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080A2FD4 @ =gBgCntRegs
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r4, #0
	ldr r0, _080A2FD8 @ =0x00000C81
	mov r3, r8
	strh r0, [r3, #2]
	ldr r6, _080A2FDC @ =gBgScrollRegs
	strh r4, [r6, #4]
	strh r4, [r6, #6]
	adds r0, r7, #0
	adds r0, #0x60
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A2FE0 @ =0x06006000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0x97
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r5, #0x20
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x8a
	mov r3, sb
	strb r3, [r1]
	movs r1, #5
	strh r1, [r0, #0x2e]
	str r2, [sp]
	bl DrawBackground
	ldr r2, [sp]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080A2FE4 @ =0x00005888
	mov r1, r8
	strh r0, [r1, #4]
	strh r4, [r6, #8]
	strh r4, [r6, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	ldr r1, _080A2FE8 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A2FEC @ =0x0600C000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080A2FF0 @ =0x0000012D
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x4a
	mov r2, sb
	strb r2, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2FD0: .4byte gDispCnt
_080A2FD4: .4byte gBgCntRegs
_080A2FD8: .4byte 0x00000C81
_080A2FDC: .4byte gBgScrollRegs
_080A2FE0: .4byte 0x06006000
_080A2FE4: .4byte 0x00005888
_080A2FE8: .4byte 0x06008000
_080A2FEC: .4byte 0x0600C000
_080A2FF0: .4byte 0x0000012D

	thumb_func_start Task_80A2FF4
Task_80A2FF4: @ 0x080A2FF4
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A3058 @ =gCurTask
	ldr r6, [r0]
	ldrh r3, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	ldr r4, _080A305C @ =gBldRegs
	movs r5, #0
	ldr r0, _080A3060 @ =0x00003FFF
	strh r0, [r4]
	ldr r2, _080A3064 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080A3068 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #6]
	ldr r0, _080A306C @ =0x00003117
	strh r0, [r2, #8]
	strh r5, [r2, #0xa]
	movs r5, #0x10
	strh r5, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #6]
	movs r0, #1
	strh r0, [r3, #8]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	movs r0, #0x1f
	strh r0, [r4, #2]
	strh r5, [r4, #4]
	ldr r0, _080A3070 @ =Task_80A3074
	str r0, [r6, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3058: .4byte gCurTask
_080A305C: .4byte gBldRegs
_080A3060: .4byte 0x00003FFF
_080A3064: .4byte gDispCnt
_080A3068: .4byte gWinRegs
_080A306C: .4byte 0x00003117
_080A3070: .4byte Task_80A3074

	thumb_func_start Task_80A3074
Task_80A3074: @ 0x080A3074
	push {r4, lr}
	ldr r0, _080A30E4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r4, #0
	ldrh r0, [r3, #4]
	cmp r0, #4
	bhi _080A3096
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _080A30B2
_080A3096:
	ldr r1, [r3, #0x18]
	ldr r2, _080A30E8 @ =0x00004FFF
	cmp r1, r2
	bgt _080A30B2
	ldrb r0, [r3, #1]
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [r3, #0x18]
	cmp r0, r2
	ble _080A30B2
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r3, #0x18]
	movs r4, #1
_080A30B2:
	ldr r2, _080A30EC @ =gWinRegs
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A30F0 @ =gBgScrollRegs
	ldr r0, [r3, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r3, #0x1c]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	cmp r4, #0
	beq _080A3102
	ldrb r0, [r3]
	cmp r0, #0
	bne _080A30F4
	movs r0, #2
	bl CreateGameIntroState
	b _080A30FA
	.align 2, 0
_080A30E4: .4byte gCurTask
_080A30E8: .4byte 0x00004FFF
_080A30EC: .4byte gWinRegs
_080A30F0: .4byte gBgScrollRegs
_080A30F4:
	movs r0, #4
	bl CreateGameIntroState
_080A30FA:
	ldr r0, _080A3108 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080A3102:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A3108: .4byte gCurTask

	thumb_func_start CreateIntroEggmanCutscene
CreateIntroEggmanCutscene: @ 0x080A310C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _080A31D4 @ =gDispCnt
	ldr r0, _080A31D8 @ =0x00007140
	strh r0, [r1]
	ldr r0, _080A31DC @ =sub_80A3444
	movs r1, #0xba
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080A31E0 @ =sub_80A3E38
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r1, #0
	strb r5, [r4]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #8]
	str r1, [r4, #0x14]
	ldr r0, _080A31E4 @ =0xFFFF9C00
	str r0, [r4, #0x18]
	movs r0, #0xe6
	lsls r0, r0, #8
	str r0, [r4, #0x24]
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r4, #0x28]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r4, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	movs r6, #1
	strb r6, [r4, #1]
	movs r3, #0
	strh r1, [r4, #6]
	strh r1, [r4, #4]
	strh r1, [r4, #2]
	str r1, [sp, #4]
	ldr r2, _080A31E8 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _080A31EC @ =gBgCntRegs
	ldrh r1, [r0]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080A31F0 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r5, _080A31F4 @ =gBgSprites_Unknown1
	strb r3, [r5, #1]
	ldr r0, _080A31F8 @ =gBgSprites_Unknown2
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	movs r1, #0xff
	strb r1, [r0, #6]
	movs r2, #0x40
	strb r2, [r0, #7]
	strb r3, [r5, #2]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	adds r0, r4, #0
	bl sub_80A3354
	ldr r2, _080A31FC @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldrb r0, [r4]
	cmp r0, #0
	beq _080A3200
	movs r0, #0
	b _080A3202
	.align 2, 0
_080A31D4: .4byte gDispCnt
_080A31D8: .4byte 0x00007140
_080A31DC: .4byte sub_80A3444
_080A31E0: .4byte sub_80A3E38
_080A31E4: .4byte 0xFFFF9C00
_080A31E8: .4byte 0x040000D4
_080A31EC: .4byte gBgCntRegs
_080A31F0: .4byte 0x85000010
_080A31F4: .4byte gBgSprites_Unknown1
_080A31F8: .4byte gBgSprites_Unknown2
_080A31FC: .4byte gWinRegs
_080A3200:
	ldr r0, _080A321C @ =0x0000FFFF
_080A3202:
	bl sub_80C4C0C
	ldr r1, _080A3220 @ =gBgPalette
	strh r0, [r1]
	ldr r1, _080A3224 @ =gFlags
	ldr r0, [r1]
	orrs r0, r6
	str r0, [r1]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A321C: .4byte 0x0000FFFF
_080A3220: .4byte gBgPalette
_080A3224: .4byte gFlags

	thumb_func_start sub_80A3228
sub_80A3228: @ 0x080A3228
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	ldr r7, _080A334C @ =0x06010000
	adds r0, #0xac
	str r7, [r0]
	ldr r4, _080A3350 @ =gUnknown_080D9980
	ldr r1, [r4, #4]
	lsls r1, r1, #5
	adds r7, r1, r7
	ldrh r1, [r4]
	movs r2, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	mov sb, r4
	movs r0, #0
	mov sl, r0
	movs r3, #0
_080A327A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0xd4
	adds r0, r6, r0
	str r7, [r0]
	adds r4, r5, #1
	lsls r2, r4, #3
	movs r1, #4
	add r1, sb
	mov r8, r1
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r7, r7, r1
	add r2, sb
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r5, sl
	strb r5, [r0, #0x1f]
	str r3, [r0, #8]
	str r3, [sp]
	bl UpdateSpriteAnimation
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x18
	ldr r3, [sp]
	cmp r5, #1
	bls _080A327A
	movs r5, #0
	mov r3, r8
	subs r3, #4
	movs r0, #0
	mov r8, r0
	movs r4, #0
_080A32E0:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r6, r0
	str r7, [r0]
	adds r2, r5, #3
	lsls r2, r2, #3
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r7, r7, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	str r3, [sp]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp]
	cmp r5, #1
	bls _080A32E0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A334C: .4byte 0x06010000
_080A3350: .4byte gUnknown_080D9980

	thumb_func_start sub_80A3354
sub_80A3354: @ 0x080A3354
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r2, _080A3420 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080A3424 @ =gBgCntRegs
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r4, #0
	ldr r0, _080A3428 @ =0x00005888
	mov r3, r8
	strh r0, [r3, #4]
	ldr r6, _080A342C @ =gBgScrollRegs
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	strh r0, [r6, #8]
	ldr r0, [r7, #0x18]
	asrs r0, r0, #8
	strh r0, [r6, #0xa]
	adds r0, r7, #0
	adds r0, #0x2c
	ldr r1, _080A3430 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A3434 @ =0x0600C000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0x96
	lsls r1, r1, #1         @ Opening Eggman
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r5, #0x20
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x56
	mov r3, sb
	strb r3, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	str r2, [sp]
	bl DrawBackground
	ldr r2, [sp]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080A3438 @ =0x00000681
	mov r1, r8
	strh r0, [r1, #2]
	strh r4, [r6, #4]
	strh r4, [r6, #6]
	adds r0, r7, #0
	adds r0, #0x6c
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A343C @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080A3440 @ =0x0000012B
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0x96
	mov r2, sb
	strb r2, [r1]
	movs r1, #5
	strh r1, [r0, #0x2e]
	bl DrawBackground
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3420: .4byte gDispCnt
_080A3424: .4byte gBgCntRegs
_080A3428: .4byte 0x00005888
_080A342C: .4byte gBgScrollRegs
_080A3430: .4byte 0x06008000
_080A3434: .4byte 0x0600C000
_080A3438: .4byte 0x00000681
_080A343C: .4byte 0x06003000
_080A3440: .4byte 0x0000012B

	thumb_func_start sub_80A3444
sub_80A3444: @ 0x080A3444
	push {r4, r5, r6, lr}
	ldr r0, _080A34F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r6, #0
	ldrh r0, [r5, #6]
	cmp r0, #0
	bne _080A349A
	ldr r2, _080A34F4 @ =gBldRegs
	movs r0, #0xc2
	strh r0, [r2]
	ldr r4, _080A34F8 @ =gDispCnt
	ldrh r0, [r4]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _080A34FC @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _080A3500 @ =0x00001137
	strh r0, [r1, #8]
	strh r6, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5, #4]
	movs r0, #1
	strh r0, [r5, #6]
	adds r0, r5, #0
	bl sub_80A3228
	ldrh r1, [r4]
	ldr r0, _080A3504 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r4]
_080A349A:
	ldr r1, [r5, #0x10]
	ldr r0, _080A3508 @ =0x00002FFF
	cmp r1, r0
	ble _080A34B4
	ldr r2, _080A350C @ =0xFFFFFF00
	adds r0, r1, r2
	str r0, [r5, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #6
	cmp r0, r1
	bgt _080A34B4
	str r1, [r5, #0x10]
	movs r6, #1
_080A34B4:
	ldr r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	cmp r1, r2
	bgt _080A34D4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	str r1, [r5, #8]
	ldr r0, _080A3510 @ =0x00003FFF
	cmp r1, r0
	ble _080A34D4
	str r2, [r5, #8]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080A34D4:
	ldr r0, _080A34F4 @ =gBldRegs
	ldrh r1, [r0, #4]
	adds r3, r0, #0
	cmp r1, #0
	beq _080A3514
	ldrh r0, [r5, #4]
	lsrs r0, r0, #8
	strh r0, [r3, #4]
	ldr r1, _080A350C @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r5, #4]
	adds r0, r0, r2
	strh r0, [r5, #4]
	b _080A351A
	.align 2, 0
_080A34F0: .4byte gCurTask
_080A34F4: .4byte gBldRegs
_080A34F8: .4byte gDispCnt
_080A34FC: .4byte gWinRegs
_080A3500: .4byte 0x00001137
_080A3504: .4byte 0x0000FEFF
_080A3508: .4byte 0x00002FFF
_080A350C: .4byte 0xFFFFFF00
_080A3510: .4byte 0x00003FFF
_080A3514:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080A351A:
	ldr r4, _080A3554 @ =gWinRegs
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r2, #0
	strh r1, [r4, #4]
	cmp r6, #3
	bne _080A354C
	movs r0, #0xf0
	strh r0, [r3]
	ldr r0, _080A3558 @ =0x00003017
	strh r0, [r4, #8]
	movs r0, #0x1f
	strh r0, [r3, #2]
	strh r2, [r3, #4]
	strh r2, [r5, #6]
	strh r2, [r5, #4]
	ldr r0, _080A355C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A3560 @ =sub_80A3564
	str r0, [r1, #8]
_080A354C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A3554: .4byte gWinRegs
_080A3558: .4byte 0x00003017
_080A355C: .4byte gCurTask
_080A3560: .4byte sub_80A3564

	thumb_func_start sub_80A3564
sub_80A3564: @ 0x080A3564
	push {r4, r5, lr}
	ldr r0, _080A3590 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A3E3C
	ldr r1, _080A3594 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080A3598
	ldrh r0, [r4, #4]
	adds r0, #0x80
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
	b _080A35AC
	.align 2, 0
_080A3590: .4byte gCurTask
_080A3594: .4byte gBldRegs
_080A3598:
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A35FC @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A3600 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_080A35AC:
	ldrh r0, [r4, #2]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x96
	bls _080A3618
	movs r3, #0x80
	lsls r3, r3, #5
	strh r3, [r4, #4]
	strh r5, [r4, #2]
	ldr r2, _080A3604 @ =gBldRegs
	movs r0, #0xd0
	strh r0, [r2]
	ldr r1, _080A3608 @ =gWinRegs
	ldr r0, _080A360C @ =0x00003017
	strh r0, [r1, #8]
	movs r0, #0x1f
	strh r0, [r2, #2]
	movs r0, #0x10
	strh r0, [r2, #4]
	strh r5, [r4, #6]
	strh r3, [r4, #4]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A35FC @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A3600 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080A3610 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A3614 @ =sub_80A3664
	str r0, [r1, #8]
	b _080A3650
	.align 2, 0
_080A35FC: .4byte gBgPalette
_080A3600: .4byte gFlags
_080A3604: .4byte gBldRegs
_080A3608: .4byte gWinRegs
_080A360C: .4byte 0x00003017
_080A3610: .4byte gCurTask
_080A3614: .4byte sub_80A3664
_080A3618:
	ldr r2, _080A3658 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A365C @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A3650
	ldr r0, _080A3660 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A3650
	movs r0, #2
	bl sub_808ADF0
_080A3650:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A3658: .4byte gWinRegs
_080A365C: .4byte gBgScrollRegs
_080A3660: .4byte gPressedKeys

	thumb_func_start sub_80A3664
sub_80A3664: @ 0x080A3664
	push {r4, r5, lr}
	ldr r5, _080A36A4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A367E
	adds r0, r4, #0
	bl sub_80A3E90
_080A367E:
	ldr r2, _080A36A8 @ =gBldRegs
	ldrh r1, [r2, #4]
	cmp r1, #0
	bne _080A36B0
	strh r1, [r2, #4]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _080A36C0
	strh r1, [r4, #2]
	strh r1, [r4, #4]
	ldr r1, [r5]
	ldr r0, _080A36AC @ =sub_80A3710
	str r0, [r1, #8]
	b _080A36F8
	.align 2, 0
_080A36A4: .4byte gCurTask
_080A36A8: .4byte gBldRegs
_080A36AC: .4byte sub_80A3710
_080A36B0:
	ldr r1, _080A3700 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r2, #4]
_080A36C0:
	ldr r2, _080A3704 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A3708 @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A36F8
	ldr r0, _080A370C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A36F8
	movs r0, #2
	bl sub_808ADF0
_080A36F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A3700: .4byte 0xFFFFFF00
_080A3704: .4byte gWinRegs
_080A3708: .4byte gBgScrollRegs
_080A370C: .4byte gPressedKeys

	thumb_func_start sub_80A3710
sub_80A3710: @ 0x080A3710
	push {r4, r5, lr}
	ldr r5, _080A3748 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A372A
	adds r0, r4, #0
	bl sub_80A3E90
_080A372A:
	ldr r1, _080A374C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bls _080A375C
	movs r2, #0
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, _080A3750 @ =gWinRegs
	ldr r0, _080A3754 @ =0x00002017
	strh r0, [r1, #8]
	strh r2, [r4, #2]
	ldr r1, [r5]
	ldr r0, _080A3758 @ =sub_80A37B8
	str r0, [r1, #8]
	b _080A37A6
	.align 2, 0
_080A3748: .4byte gCurTask
_080A374C: .4byte gBldRegs
_080A3750: .4byte gWinRegs
_080A3754: .4byte 0x00002017
_080A3758: .4byte sub_80A37B8
_080A375C:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
	ldr r2, _080A37AC @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A37B0 @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A37A6
	ldr r0, _080A37B4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A37A6
	movs r0, #2
	bl sub_808ADF0
_080A37A6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A37AC: .4byte gWinRegs
_080A37B0: .4byte gBgScrollRegs
_080A37B4: .4byte gPressedKeys

	thumb_func_start sub_80A37B8
sub_80A37B8: @ 0x080A37B8
	push {r4, r5, lr}
	ldr r5, _080A37F0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A3EAC
	adds r0, r4, #0
	bl sub_80A3E60
	cmp r0, #1
	bne _080A37F8
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _080A37F8
	movs r0, #0
	strh r0, [r4, #2]
	ldr r1, [r5]
	ldr r0, _080A37F4 @ =sub_80A3844
	str r0, [r1, #8]
	b _080A3830
	.align 2, 0
_080A37F0: .4byte gCurTask
_080A37F4: .4byte sub_80A3844
_080A37F8:
	ldr r2, _080A3838 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A383C @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A3830
	ldr r0, _080A3840 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A3830
	movs r0, #2
	bl sub_808ADF0
_080A3830:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A3838: .4byte gWinRegs
_080A383C: .4byte gBgScrollRegs
_080A3840: .4byte gPressedKeys

	thumb_func_start sub_80A3844
sub_80A3844: @ 0x080A3844
	push {r4, r5, lr}
	ldr r5, _080A386C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A3EDC
	ldrh r0, [r4, #2]
	cmp r0, #0x13
	bls _080A3870
	ldrb r0, [r4]
	bl sub_80A38C0
	ldr r0, [r5]
	bl TaskDestroy
	b _080A38AC
	.align 2, 0
_080A386C: .4byte gCurTask
_080A3870:
	adds r0, #1
	strh r0, [r4, #2]
	ldr r2, _080A38B4 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A38B8 @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A38AC
	ldr r0, _080A38BC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A38AC
	movs r0, #2
	bl sub_808ADF0
_080A38AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A38B4: .4byte gWinRegs
_080A38B8: .4byte gBgScrollRegs
_080A38BC: .4byte gPressedKeys

	thumb_func_start sub_80A38C0
sub_80A38C0: @ 0x080A38C0
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080A3964 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A3968 @ =sub_80A39FC
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A396C @ =sub_80A3F10
	str r1, [sp]
	movs r1, #0x94
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0]
	movs r1, #0xc0
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	str r1, [r0, #8]
	movs r4, #0
	strh r2, [r0, #2]
	str r2, [sp, #4]
	ldr r3, _080A3970 @ =0x040000D4
	add r1, sp, #4
	str r1, [r3]
	ldr r1, _080A3974 @ =gBgCntRegs
	ldrh r2, [r1]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r3, #4]
	ldr r1, _080A3978 @ =0x85000010
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r5, _080A397C @ =gBgSprites_Unknown1
	strb r4, [r5, #1]
	ldr r1, _080A3980 @ =gBgSprites_Unknown2
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	movs r2, #0xff
	strb r2, [r1, #6]
	movs r3, #0x40
	strb r3, [r1, #7]
	strb r4, [r5, #2]
	strb r4, [r1, #8]
	strb r4, [r1, #9]
	movs r2, #1
	rsbs r2, r2, #0
	strb r2, [r1, #0xa]
	strb r3, [r1, #0xb]
	bl sub_80A398C
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A3984 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A3988 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A3964: .4byte gDispCnt
_080A3968: .4byte sub_80A39FC
_080A396C: .4byte sub_80A3F10
_080A3970: .4byte 0x040000D4
_080A3974: .4byte gBgCntRegs
_080A3978: .4byte 0x85000010
_080A397C: .4byte gBgSprites_Unknown1
_080A3980: .4byte gBgSprites_Unknown2
_080A3984: .4byte gBgPalette
_080A3988: .4byte gFlags

	thumb_func_start sub_80A398C
sub_80A398C: @ 0x080A398C
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _080A39E8 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A39EC @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	ldr r0, _080A39F0 @ =0x00000D81
	strh r0, [r1, #2]
	ldr r0, _080A39F4 @ =gBgScrollRegs
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	adds r0, r3, #0
	adds r0, #0x54
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080A39F8 @ =0x06006800
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	movs r1, #0x97
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r3, #0x7e
	strb r4, [r3]
	movs r1, #5
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A39E8: .4byte gDispCnt
_080A39EC: .4byte gBgCntRegs
_080A39F0: .4byte 0x00000D81
_080A39F4: .4byte gBgScrollRegs
_080A39F8: .4byte 0x06006800

	thumb_func_start sub_80A39FC
sub_80A39FC: @ 0x080A39FC
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A3A60 @ =gCurTask
	ldr r6, [r0]
	ldrh r3, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	ldr r4, _080A3A64 @ =gBldRegs
	movs r5, #0
	ldr r0, _080A3A68 @ =0x00003FFF
	strh r0, [r4]
	ldr r2, _080A3A6C @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080A3A70 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #6]
	ldr r0, _080A3A74 @ =0x00003117
	strh r0, [r2, #8]
	strh r5, [r2, #0xa]
	movs r5, #0x10
	strh r5, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #4]
	movs r0, #1
	strh r0, [r3, #6]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	movs r0, #0x1f
	strh r0, [r4, #2]
	strh r5, [r4, #4]
	ldr r0, _080A3A78 @ =sub_80A3A7C
	str r0, [r6, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3A60: .4byte gCurTask
_080A3A64: .4byte gBldRegs
_080A3A68: .4byte 0x00003FFF
_080A3A6C: .4byte gDispCnt
_080A3A70: .4byte gWinRegs
_080A3A74: .4byte 0x00003117
_080A3A78: .4byte sub_80A3A7C

	thumb_func_start sub_80A3A7C
sub_80A3A7C: @ 0x080A3A7C
	push {r4, r5, r6, r7, lr}
	ldr r6, _080A3B14 @ =gCurTask
	ldr r0, [r6]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r2, _080A3B18 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r5, #0
	strh r1, [r2, #4]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bne _080A3ABA
	ldr r0, _080A3B1C @ =gDispCnt
	ldrh r1, [r0]
	movs r7, #0x80
	lsls r7, r7, #3
	adds r2, r7, #0
	orrs r1, r2
	strh r1, [r0]
_080A3ABA:
	ldrh r0, [r4, #2]
	cmp r0, #5
	bne _080A3B02
	ldr r1, _080A3B20 @ =gBgCntRegs
	ldr r0, _080A3B24 @ =0x00005D88
	strh r0, [r1, #4]
	ldr r0, _080A3B28 @ =gBgScrollRegs
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r1, _080A3B2C @ =0x03000014
	adds r0, r3, r1
	ldr r1, _080A3B30 @ =0x06008000
	str r1, [r0, #4]
	strh r5, [r0, #0xa]
	ldr r1, _080A3B34 @ =0x0600E800
	str r1, [r0, #0xc]
	strh r5, [r0, #0x18]
	strh r5, [r0, #0x1a]
	movs r1, #0x98
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r5, [r0, #0x1e]
	strh r5, [r0, #0x20]
	strh r5, [r0, #0x22]
	strh r5, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r7, _080A3B38 @ =0x0300003E
	adds r2, r3, r7
	movs r1, #0
	strb r1, [r2]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
_080A3B02:
	ldrh r0, [r4, #2]
	cmp r0, #0xa
	bls _080A3B40
	strh r5, [r4, #6]
	ldr r1, [r6]
	ldr r0, _080A3B3C @ =sub_80A3B64
	str r0, [r1, #8]
	b _080A3B58
	.align 2, 0
_080A3B14: .4byte gCurTask
_080A3B18: .4byte gWinRegs
_080A3B1C: .4byte gDispCnt
_080A3B20: .4byte gBgCntRegs
_080A3B24: .4byte 0x00005D88
_080A3B28: .4byte gBgScrollRegs
_080A3B2C: .4byte 0x03000014
_080A3B30: .4byte 0x06008000
_080A3B34: .4byte 0x0600E800
_080A3B38: .4byte 0x0300003E
_080A3B3C: .4byte sub_80A3B64
_080A3B40:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A3B58
	ldr r0, _080A3B60 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A3B58
	movs r0, #2
	bl sub_808ADF0
_080A3B58:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3B60: .4byte gPressedKeys

	thumb_func_start sub_80A3B64
sub_80A3B64: @ 0x080A3B64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080A3BD0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r5, _080A3BD4 @ =gWinRegs
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r5, #4]
	ldrh r4, [r3, #6]
	ldr r6, _080A3BD8 @ =gBldRegs
	cmp r4, #0
	bne _080A3BBA
	ldr r0, _080A3BDC @ =0x00003FBF
	strh r0, [r6]
	ldr r2, _080A3BE0 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xff
	strh r0, [r5]
	strh r0, [r5, #2]
	strh r0, [r5, #6]
	movs r0, #0x24
	strh r0, [r5, #8]
	strh r4, [r5, #0xa]
	strh r4, [r3, #4]
	movs r0, #1
	strh r0, [r3, #6]
	strh r4, [r6, #4]
_080A3BBA:
	ldrh r0, [r6, #4]
	cmp r0, #0xe
	bhi _080A3BE4
	ldrh r0, [r3, #4]
	adds r0, #0x30
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r6, #4]
	b _080A3BF2
	.align 2, 0
_080A3BD0: .4byte gCurTask
_080A3BD4: .4byte gWinRegs
_080A3BD8: .4byte gBldRegs
_080A3BDC: .4byte 0x00003FBF
_080A3BE0: .4byte gDispCnt
_080A3BE4:
	ldrb r0, [r3]
	bl sub_80A3BFC
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
_080A3BF2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A3BFC
sub_80A3BFC: @ 0x080A3BFC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080A3C9C @ =gDispCnt
	ldr r2, _080A3CA0 @ =0x00007040
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A3CA4 @ =sub_80A3D3C
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A3CA8 @ =sub_80A3F14
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0]
	movs r1, #0xc0
	lsls r1, r1, #6
	str r1, [r0, #0x10]
	movs r1, #0x80
	lsls r1, r1, #7
	str r1, [r0, #8]
	movs r4, #0
	strh r2, [r0, #2]
	str r2, [sp, #4]
	ldr r3, _080A3CAC @ =0x040000D4
	add r1, sp, #4
	str r1, [r3]
	ldr r1, _080A3CB0 @ =gBgCntRegs
	ldrh r2, [r1]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r3, #4]
	ldr r1, _080A3CB4 @ =0x85000010
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r5, _080A3CB8 @ =gBgSprites_Unknown1
	strb r4, [r5, #1]
	ldr r1, _080A3CBC @ =gBgSprites_Unknown2
	strb r4, [r1, #4]
	strb r4, [r1, #5]
	movs r2, #0xff
	strb r2, [r1, #6]
	movs r3, #0x40
	strb r3, [r1, #7]
	strb r4, [r5, #2]
	strb r4, [r1, #8]
	strb r4, [r1, #9]
	movs r2, #1
	rsbs r2, r2, #0
	strb r2, [r1, #0xa]
	strb r3, [r1, #0xb]
	bl sub_80A3CC8
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A3CC0 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A3CC4 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A3C9C: .4byte gDispCnt
_080A3CA0: .4byte 0x00007040
_080A3CA4: .4byte sub_80A3D3C
_080A3CA8: .4byte sub_80A3F14
_080A3CAC: .4byte 0x040000D4
_080A3CB0: .4byte gBgCntRegs
_080A3CB4: .4byte 0x85000010
_080A3CB8: .4byte gBgSprites_Unknown1
_080A3CBC: .4byte gBgSprites_Unknown2
_080A3CC0: .4byte gBgPalette
_080A3CC4: .4byte gFlags

	thumb_func_start sub_80A3CC8
sub_80A3CC8: @ 0x080A3CC8
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _080A3D20 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A3D24 @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	ldr r0, _080A3D28 @ =0x00005888
	strh r0, [r1]
	ldr r0, _080A3D2C @ =gBgScrollRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, r3, #0
	adds r0, #0x14
	ldr r1, _080A3D30 @ =0x06008000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080A3D34 @ =0x0600C000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080A3D38 @ =0x0000012F
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r3, #0x3e
	strb r4, [r3]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A3D20: .4byte gDispCnt
_080A3D24: .4byte gBgCntRegs
_080A3D28: .4byte 0x00005888
_080A3D2C: .4byte gBgScrollRegs
_080A3D30: .4byte 0x06008000
_080A3D34: .4byte 0x0600C000
_080A3D38: .4byte 0x0000012F

	thumb_func_start sub_80A3D3C
sub_80A3D3C: @ 0x080A3D3C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A3D94 @ =gCurTask
	ldr r6, [r0]
	ldrh r3, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	ldr r5, _080A3D98 @ =gBldRegs
	movs r4, #0
	ldr r0, _080A3D9C @ =0x00003FBF
	strh r0, [r5]
	ldr r2, _080A3DA0 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080A3DA4 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #6]
	movs r0, #0x21
	strh r0, [r2, #8]
	strh r4, [r2, #0xa]
	strh r4, [r5, #4]
	strh r4, [r3, #4]
	movs r0, #1
	strh r0, [r3, #6]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r0, _080A3DA8 @ =sub_80A3DAC
	str r0, [r6, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3D94: .4byte gCurTask
_080A3D98: .4byte gBldRegs
_080A3D9C: .4byte 0x00003FBF
_080A3DA0: .4byte gDispCnt
_080A3DA4: .4byte gWinRegs
_080A3DA8: .4byte sub_80A3DAC

	thumb_func_start sub_80A3DAC
sub_80A3DAC: @ 0x080A3DAC
	push {lr}
	ldr r0, _080A3DF4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r2, _080A3DF8 @ =gWinRegs
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080A3DFC @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xe
	bhi _080A3E04
	ldrh r0, [r3, #4]
	adds r0, #0x30
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
	ldrb r0, [r3]
	cmp r0, #0
	bne _080A3E2E
	ldr r0, _080A3E00 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A3E2E
	b _080A3E28
	.align 2, 0
_080A3DF4: .4byte gCurTask
_080A3DF8: .4byte gWinRegs
_080A3DFC: .4byte gBldRegs
_080A3E00: .4byte gPressedKeys
_080A3E04:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A3E12
	movs r0, #5
	bl CreateGameIntroState
	b _080A3E18
_080A3E12:
	movs r0, #3
	bl CreateGameIntroState
_080A3E18:
	ldr r0, _080A3E24 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080A3E2E
	.align 2, 0
_080A3E24: .4byte gCurTask
_080A3E28:
	movs r0, #2
	bl sub_808ADF0
_080A3E2E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A3E34
sub_80A3E34: @ 0x080A3E34
	bx lr
	.align 2, 0

	thumb_func_start sub_80A3E38
sub_80A3E38: @ 0x080A3E38
	bx lr
	.align 2, 0

	thumb_func_start sub_80A3E3C
sub_80A3E3C: @ 0x080A3E3C
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x18]
	cmp r2, #0
	bge _080A3E5A
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	adds r0, r2, r0
	str r0, [r1, #0x18]
	cmp r0, #0
	blt _080A3E5A
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #1
	b _080A3E5C
_080A3E5A:
	movs r0, #0
_080A3E5C:
	pop {r1}
	bx r1

	thumb_func_start sub_80A3E60
sub_80A3E60: @ 0x080A3E60
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x20]
	ldr r0, _080A3E84 @ =0x00006FFF
	cmp r1, r0
	ble _080A3E88
	subs r1, #0x80
	ldrb r0, [r2, #1]
	lsls r0, r0, #7
	subs r1, r1, r0
	str r1, [r2, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _080A3E88
	str r0, [r2, #0x20]
	movs r0, #1
	b _080A3E8A
	.align 2, 0
_080A3E84: .4byte 0x00006FFF
_080A3E88:
	movs r0, #0
_080A3E8A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A3E90
sub_80A3E90: @ 0x080A3E90
	push {lr}
	adds r2, r0, #0
	adds r2, #0xac
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x28]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_80A3EAC
sub_80A3EAC: @ 0x080A3EAC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_080A3EB2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xd4
	adds r0, r5, r0
	ldr r1, [r5, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080A3EB2
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80A3EDC
sub_80A3EDC: @ 0x080A3EDC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_080A3EE2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x92
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r5, r0
	ldr r1, [r5, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080A3EE2
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80A3F10
sub_80A3F10: @ 0x080A3F10
	bx lr
	.align 2, 0

	thumb_func_start sub_80A3F14
sub_80A3F14: @ 0x080A3F14
	bx lr
	.align 2, 0

	thumb_func_start sub_80A3F18
sub_80A3F18: @ 0x080A3F18
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _080A3FB4 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A3FB8 @ =sub_80A40A0
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A3FBC @ =sub_80A43DC
	str r1, [sp]
	movs r1, #0x94
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r4, #0x14]
	movs r2, #0
	str r2, [r4, #0xc]
	ldr r0, _080A3FC0 @ =0xFFFF8800
	str r0, [r4, #0x18]
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r4, #0x20]
	str r1, [r4, #0x24]
	str r1, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4]
	movs r6, #1
	strb r6, [r4, #3]
	strb r2, [r4, #2]
	movs r0, #0x19
	strb r0, [r4, #1]
	movs r5, #0
	strh r2, [r4, #8]
	strh r2, [r4, #6]
	strh r2, [r4, #4]
	adds r0, r4, #0
	bl sub_80A3FDC
	ldr r0, _080A3FC4 @ =0x0000FFFF
	bl sub_80C4C0C
	ldr r1, _080A3FC8 @ =gBgPalette
	strh r0, [r1]
	ldr r1, _080A3FCC @ =gFlags
	ldr r0, [r1]
	orrs r0, r6
	str r0, [r1]
	ldr r0, _080A3FD0 @ =gBgSprites_Unknown1
	strb r5, [r0]
	ldr r1, _080A3FD4 @ =gBgSprites_Unknown2
	strb r5, [r1]
	strb r5, [r1, #1]
	movs r0, #0xff
	strb r0, [r1, #2]
	movs r0, #0x40
	strb r0, [r1, #3]
	ldr r2, _080A3FD8 @ =gWinRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A3FB4: .4byte gDispCnt
_080A3FB8: .4byte sub_80A40A0
_080A3FBC: .4byte sub_80A43DC
_080A3FC0: .4byte 0xFFFF8800
_080A3FC4: .4byte 0x0000FFFF
_080A3FC8: .4byte gBgPalette
_080A3FCC: .4byte gFlags
_080A3FD0: .4byte gBgSprites_Unknown1
_080A3FD4: .4byte gBgSprites_Unknown2
_080A3FD8: .4byte gWinRegs

	thumb_func_start sub_80A3FDC
sub_80A3FDC: @ 0x080A3FDC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r3, [r6, #2]
	ldr r1, _080A407C @ =0x06010000
	adds r0, #0x2c
	str r1, [r6, #0x2c]
	movs r2, #0xd0
	lsls r2, r2, #3
	adds r1, r1, r2
	str r1, [r6, #0x28]
	ldr r1, _080A4080 @ =gUnknown_080D99A8
	lsls r3, r3, #3
	adds r3, r3, r1
	ldrh r1, [r3]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r2, _080A4084 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A4088 @ =gBgCntRegs
	ldr r0, _080A408C @ =0x00005888
	strh r0, [r1]
	ldr r1, _080A4090 @ =gBgScrollRegs
	strh r4, [r1]
	movs r0, #0x6e
	strh r0, [r1, #2]
	adds r0, r6, #0
	adds r0, #0x54
	ldr r1, _080A4094 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080A4098 @ =0x0600C000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080A409C @ =0x0000012F
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r1, r6, #0
	adds r1, #0x7e
	strb r5, [r1]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A407C: .4byte 0x06010000
_080A4080: .4byte gUnknown_080D99A8
_080A4084: .4byte gDispCnt
_080A4088: .4byte gBgCntRegs
_080A408C: .4byte 0x00005888
_080A4090: .4byte gBgScrollRegs
_080A4094: .4byte 0x06008000
_080A4098: .4byte 0x0600C000
_080A409C: .4byte 0x0000012F

	thumb_func_start sub_80A40A0
sub_80A40A0: @ 0x080A40A0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080A4178 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	movs r6, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _080A4102
	ldr r3, _080A417C @ =gBldRegs
	ldr r0, _080A4180 @ =0x00003FFF
	strh r0, [r3]
	ldr r2, _080A4184 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A4188 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _080A418C @ =0x00001011
	strh r0, [r1, #8]
	strh r6, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5, #6]
	movs r0, #1
	strh r0, [r5, #8]
	ldr r1, _080A4190 @ =0x03000002
	adds r0, r4, r1
	ldr r2, _080A4194 @ =0x03000001
	adds r1, r4, r2
	ldr r3, _080A4198 @ =0x03000018
	adds r2, r4, r3
	ldr r7, _080A419C @ =0x0300001C
	adds r3, r4, r7
	ldr r4, [r5, #0x28]
	str r4, [sp]
	bl CreateSomeTask_809BF3C
_080A4102:
	ldr r1, [r5, #0x14]
	ldr r0, _080A4180 @ =0x00003FFF
	cmp r1, r0
	ble _080A411C
	ldr r2, _080A41A0 @ =0xFFFFFF00
	adds r0, r1, r2
	str r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	cmp r0, r1
	bgt _080A411C
	str r1, [r5, #0x14]
	movs r6, #1
_080A411C:
	ldr r1, [r5, #0xc]
	movs r2, #0x80
	lsls r2, r2, #6
	cmp r1, r2
	bgt _080A413C
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	str r1, [r5, #0xc]
	ldr r0, _080A41A4 @ =0x00001FFF
	cmp r1, r0
	ble _080A413C
	str r2, [r5, #0xc]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080A413C:
	ldr r3, _080A4188 @ =gWinRegs
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r2, #0
	strh r1, [r3, #4]
	cmp r6, #2
	bne _080A416E
	ldr r1, _080A417C @ =gBldRegs
	ldr r0, _080A4180 @ =0x00003FFF
	strh r0, [r1]
	ldr r0, _080A418C @ =0x00001011
	strh r0, [r3, #8]
	strh r2, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	strh r2, [r5, #8]
	ldr r0, _080A4178 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A41A8 @ =sub_80A41AC
	str r0, [r1, #8]
_080A416E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A4178: .4byte gCurTask
_080A417C: .4byte gBldRegs
_080A4180: .4byte 0x00003FFF
_080A4184: .4byte gDispCnt
_080A4188: .4byte gWinRegs
_080A418C: .4byte 0x00001011
_080A4190: .4byte 0x03000002
_080A4194: .4byte 0x03000001
_080A4198: .4byte 0x03000018
_080A419C: .4byte 0x0300001C
_080A41A0: .4byte 0xFFFFFF00
_080A41A4: .4byte 0x00001FFF
_080A41A8: .4byte sub_80A41AC

	thumb_func_start sub_80A41AC
sub_80A41AC: @ 0x080A41AC
	push {r4, r5, lr}
	ldr r5, _080A41EC @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A4598
	ldr r2, _080A41F0 @ =gWinRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	adds r0, r4, #0
	bl sub_80A43E0
	ldrh r2, [r4, #4]
	cmp r2, #0x2c
	bls _080A41F8
	movs r0, #0
	strh r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, _080A41F4 @ =Task_80A4228
	str r0, [r1, #8]
	b _080A4220
	.align 2, 0
_080A41EC: .4byte gCurTask
_080A41F0: .4byte gWinRegs
_080A41F4: .4byte Task_80A4228
_080A41F8:
	ldr r0, _080A4218 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A421C
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x18]
	movs r0, #0x1d
	strb r0, [r4, #1]
	movs r0, #2
	bl sub_808ADF0
	b _080A4220
	.align 2, 0
_080A4218: .4byte gPressedKeys
_080A421C:
	adds r0, r2, #1
	strh r0, [r4, #4]
_080A4220:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_80A4228
Task_80A4228: @ 0x080A4228
	push {r4, r5, lr}
	ldr r5, _080A4264 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80A4598
	adds r0, r4, #0
	bl sub_80A453C
	cmp r0, #1
	bne _080A424A
	movs r0, #0x1b
	strb r0, [r4, #1]
_080A424A:
	adds r0, r4, #0
	bl sub_80A4440
	ldrh r2, [r4, #4]
	cmp r2, #0x77
	bls _080A426C
	movs r0, #0
	strh r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, _080A4268 @ =sub_80A429C
	str r0, [r1, #8]
	b _080A4294
	.align 2, 0
_080A4264: .4byte gCurTask
_080A4268: .4byte sub_80A429C
_080A426C:
	ldr r0, _080A428C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A4290
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x18]
	movs r0, #0x1d
	strb r0, [r4, #1]
	movs r0, #2
	bl sub_808ADF0
	b _080A4294
	.align 2, 0
_080A428C: .4byte gPressedKeys
_080A4290:
	adds r0, r2, #1
	strh r0, [r4, #4]
_080A4294:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A429C
sub_80A429C: @ 0x080A429C
	push {r4, r5, lr}
	ldr r5, _080A42F4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r2, #0x9b
	lsls r2, r2, #9
	str r2, [r3, #0x18]
	movs r4, #0
	movs r1, #0x1d
	strb r1, [r3, #1]
	ldrb r0, [r3, #2]
	adds r0, #1
	strb r0, [r3, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080A430C
	strh r4, [r3, #4]
	ldr r2, _080A42F8 @ =gBldRegs
	movs r0, #0xa0
	strh r0, [r2]
	ldr r1, _080A42FC @ =gWinRegs
	movs r0, #0xc0
	lsls r0, r0, #6
	strh r0, [r1, #8]
	strh r4, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r2, #4]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080A4300 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080A4304 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, [r5]
	ldr r0, _080A4308 @ =sub_80A4384
	b _080A436A
	.align 2, 0
_080A42F4: .4byte gCurTask
_080A42F8: .4byte gBldRegs
_080A42FC: .4byte gWinRegs
_080A4300: .4byte gBgPalette
_080A4304: .4byte gFlags
_080A4308: .4byte sub_80A4384
_080A430C:
	movs r0, #0x19
	strb r0, [r3, #1]
	movs r0, #3
	ldrsb r0, [r3, r0]
	movs r1, #1
	cmp r0, #0
	ble _080A4320
	movs r0, #1
	rsbs r0, r0, #0
	adds r1, r0, #0
_080A4320:
	strb r1, [r3, #3]
	lsls r0, r1, #0x18
	cmp r0, #0
	ble _080A4338
	ldr r0, _080A4334 @ =0xFFFF8800
	str r0, [r3, #0x18]
	movs r0, #0x96
	lsls r0, r0, #9
	b _080A4340
	.align 2, 0
_080A4334: .4byte 0xFFFF8800
_080A4338:
	movs r0, #0xb4
	lsls r0, r0, #9
	str r0, [r3, #0x18]
	ldr r0, _080A4374 @ =0xFFFFC400
_080A4340:
	str r0, [r3, #0x20]
	adds r0, r3, #0
	adds r0, #0x2c
	ldr r2, _080A4378 @ =gUnknown_080D99A8
	ldrb r1, [r3, #2]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	ldr r0, _080A437C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A4380 @ =sub_80A41AC
_080A436A:
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A4374: .4byte 0xFFFFC400
_080A4378: .4byte gUnknown_080D99A8
_080A437C: .4byte gCurTask
_080A4380: .4byte sub_80A41AC

	thumb_func_start sub_80A4384
sub_80A4384: @ 0x080A4384
	push {r4, r5, r6, lr}
	ldr r6, _080A43C4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0xa0
	lsls r4, r4, #0x13
	ldr r2, _080A43C8 @ =gBldRegs
	movs r3, #0
	movs r0, #0xa0
	strh r0, [r2]
	ldr r1, _080A43CC @ =gWinRegs
	movs r0, #0xc0
	lsls r0, r0, #6
	strh r0, [r1, #8]
	strh r3, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r2, #4]
	str r3, [r4]
	ldrh r0, [r5, #4]
	cmp r0, #2
	bls _080A43D0
	movs r0, #0
	bl CreateIntroEggmanCutscene
	ldr r0, [r6]
	bl TaskDestroy
	b _080A43D4
	.align 2, 0
_080A43C4: .4byte gCurTask
_080A43C8: .4byte gBldRegs
_080A43CC: .4byte gWinRegs
_080A43D0:
	adds r0, #1
	strh r0, [r5, #4]
_080A43D4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A43DC
sub_80A43DC: @ 0x080A43DC
	bx lr
	.align 2, 0

	thumb_func_start sub_80A43E0
sub_80A43E0: @ 0x080A43E0
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	cmp r0, #0xe
	bls _080A4438
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _080A4414
	ldr r1, [r2, #0x18]
	movs r3, #0x96
	lsls r3, r3, #8
	cmp r1, r3
	bgt _080A4438
	ldrb r0, [r2]
	lsls r0, r0, #9
	adds r0, r1, r0
	str r0, [r2, #0x18]
	ldr r1, _080A4410 @ =0x000095FF
	cmp r0, r1
	ble _080A4438
	str r3, [r2, #0x18]
	movs r0, #1
	b _080A443A
	.align 2, 0
_080A4410: .4byte 0x000095FF
_080A4414:
	ldr r1, [r2, #0x18]
	ldr r0, _080A4434 @ =0x000059FF
	cmp r1, r0
	ble _080A4438
	ldrb r0, [r2]
	lsls r0, r0, #9
	subs r0, r1, r0
	str r0, [r2, #0x18]
	movs r1, #0xb4
	lsls r1, r1, #7
	cmp r0, r1
	bgt _080A4438
	str r1, [r2, #0x18]
	movs r0, #1
	b _080A443A
	.align 2, 0
_080A4434: .4byte 0x000059FF
_080A4438:
	movs r0, #0
_080A443A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A4440
sub_80A4440: @ 0x080A4440
	push {lr}
	adds r2, r0, #0
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _080A4470
	ldr r1, [r2, #0x18]
	movs r3, #0xf0
	lsls r3, r3, #8
	cmp r1, r3
	bgt _080A448C
	ldrb r0, [r2]
	lsls r0, r0, #5
	adds r0, r1, r0
	str r0, [r2, #0x18]
	ldr r1, _080A446C @ =0x0000EFFF
	cmp r0, r1
	ble _080A448C
	str r3, [r2, #0x18]
	movs r0, #1
	b _080A448E
	.align 2, 0
_080A446C: .4byte 0x0000EFFF
_080A4470:
	ldr r1, [r2, #0x18]
	cmp r1, #0xff
	ble _080A448C
	ldrb r0, [r2]
	lsls r0, r0, #5
	subs r0, r1, r0
	str r0, [r2, #0x18]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bgt _080A448C
	str r1, [r2, #0x18]
	movs r0, #1
	b _080A448E
_080A448C:
	movs r0, #0
_080A448E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A4494
sub_80A4494: @ 0x080A4494
	push {lr}
	adds r2, r0, #0
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _080A44C0
	ldr r1, [r2, #0x18]
	movs r3, #0x9b
	lsls r3, r3, #9
	cmp r1, r3
	bgt _080A44E0
	ldrb r0, [r2]
	lsls r0, r0, #0xa
	adds r0, r1, r0
	str r0, [r2, #0x18]
	ldr r1, _080A44BC @ =0x000135FF
	cmp r0, r1
	ble _080A44E0
	b _080A44D4
	.align 2, 0
_080A44BC: .4byte 0x000135FF
_080A44C0:
	ldr r1, [r2, #0x18]
	ldr r3, _080A44DC @ =0xFFFFBA00
	cmp r1, r3
	blt _080A44E0
	ldrb r0, [r2]
	lsls r0, r0, #0xa
	subs r0, r1, r0
	str r0, [r2, #0x18]
	cmp r0, r3
	bgt _080A44E0
_080A44D4:
	str r3, [r2, #0x18]
	movs r0, #1
	b _080A44E2
	.align 2, 0
_080A44DC: .4byte 0xFFFFBA00
_080A44E0:
	movs r0, #0
_080A44E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A44E8
sub_80A44E8: @ 0x080A44E8
	push {lr}
	adds r2, r0, #0
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _080A4510
	ldr r1, [r2, #0x20]
	ldr r3, _080A450C @ =0xFFFF3800
	cmp r1, r3
	blt _080A4534
	ldrb r0, [r2]
	lsls r0, r0, #0xb
	subs r0, r1, r0
	str r0, [r2, #0x20]
	cmp r0, r3
	bgt _080A4534
	b _080A4528
	.align 2, 0
_080A450C: .4byte 0xFFFF3800
_080A4510:
	ldr r1, [r2, #0x20]
	movs r3, #0xdc
	lsls r3, r3, #9
	cmp r1, r3
	bgt _080A4534
	ldrb r0, [r2]
	lsls r0, r0, #0xb
	adds r0, r1, r0
	str r0, [r2, #0x20]
	ldr r1, _080A4530 @ =0x0001B7FF
	cmp r0, r1
	ble _080A4534
_080A4528:
	str r3, [r2, #0x20]
	movs r0, #1
	b _080A4536
	.align 2, 0
_080A4530: .4byte 0x0001B7FF
_080A4534:
	movs r0, #0
_080A4536:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A453C
sub_80A453C: @ 0x080A453C
	push {lr}
	adds r2, r0, #0
	movs r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble _080A456C
	ldr r1, [r2, #0x20]
	ldr r0, _080A4568 @ =0x000009FF
	cmp r1, r0
	ble _080A4590
	ldrb r0, [r2]
	lsls r0, r0, #0xb
	subs r0, r1, r0
	str r0, [r2, #0x20]
	movs r1, #0xa0
	lsls r1, r1, #4
	cmp r0, r1
	bgt _080A4590
	str r1, [r2, #0x20]
	movs r0, #1
	b _080A4592
	.align 2, 0
_080A4568: .4byte 0x000009FF
_080A456C:
	ldr r1, [r2, #0x20]
	movs r3, #0xe6
	lsls r3, r3, #8
	cmp r1, r3
	bgt _080A4590
	ldrb r0, [r2]
	lsls r0, r0, #0xb
	adds r0, r1, r0
	str r0, [r2, #0x20]
	ldr r1, _080A458C @ =0x0000E5FF
	cmp r0, r1
	ble _080A4590
	str r3, [r2, #0x20]
	movs r0, #1
	b _080A4592
	.align 2, 0
_080A458C: .4byte 0x0000E5FF
_080A4590:
	movs r0, #0
_080A4592:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A4598
sub_80A4598: @ 0x080A4598
	push {lr}
	adds r2, r0, #0
	adds r2, #0x2c
	ldr r1, [r0, #0x20]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x24]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
