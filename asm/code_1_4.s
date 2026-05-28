.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8055E50
sub_8055E50: @ 0x08055E50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r0, _08055F1C @ =gStageData
	ldrb r2, [r0]
	mov r0, sl
	adds r0, #0x5e
	ldrb r0, [r0]
	mov sb, r0
	mov r0, sl
	adds r0, #0x5f
	ldrb r1, [r0]
	mov r7, sl
	adds r7, #0xc
	ldr r5, _08055F20 @ =gUnknown_080D1CE4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r4, r2, #3
	adds r4, r4, r2
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0xc]
	adds r0, r4, r5
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r7, #0xc]
	adds r5, #2
	adds r4, r4, r5
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r1, #0x78
	strh r1, [r7, #0x10]
	movs r0, #0x50
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r7, #0x20]
	adds r7, #0x28
	ldr r5, _08055F24 @ =gUnknown_080D1CD2
	mov r1, sb
	lsls r4, r1, #1
	add r4, sb
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0x34]
	adds r0, r4, r5
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	adds r5, #2
	adds r4, r4, r5
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r1, #0x78
	strh r1, [r7, #0x10]
	movs r0, #0x28
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	subs r0, #0x29
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	mov r0, r8
	str r0, [r7, #0x20]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055F1C: .4byte gStageData
_08055F20: .4byte gUnknown_080D1CE4
_08055F24: .4byte gUnknown_080D1CD2

	thumb_func_start sub_8055F28
sub_8055F28: @ 0x08055F28
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08055F54 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #1
	bne _08055F5C
	ldr r0, _08055F58 @ =Task_38_8056714
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	bl Task_38_80566A8
	movs r0, #8
	bl sub_8001EEC
	b _08055FA6
	.align 2, 0
_08055F54: .4byte gStageData
_08055F58: .4byte Task_38_8056714
_08055F5C:
	cmp r0, #3
	bne _08055F84
	ldr r0, _08055F80 @ =Task_38_8056884
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	bl sub_8056818
	movs r0, #0x10
	bl sub_8001EEC
	b _08055FA6
	.align 2, 0
_08055F80: .4byte Task_38_8056884
_08055F84:
	cmp r0, #5
	bne _08056016
	ldr r0, _08056020 @ =Task_38_8056934
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	bl sub_80568CC
	movs r0, #2
	bl sub_8001EEC
_08055FA6:
	ldrh r0, [r4, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r5, #0
	movs r1, #0x78
	strh r1, [r0, #0x34]
	movs r1, #1
	strh r1, [r0]
	movs r1, #2
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r6, _08056024 @ =gStageData
	adds r4, r6, #0
	adds r4, #0xa4
	ldr r0, [r4]
	cmp r0, #0
	beq _08055FDC
	bl TaskDestroy
	str r5, [r4]
_08055FDC:
	movs r0, #9
	strb r0, [r6, #4]
	ldr r4, _08056028 @ =gPlayers
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r5, #0xf
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #1
	bne _08055FFA
	movs r0, #0
	adds r1, r4, #0
	bl sub_801EBC0
_08055FFA:
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #1
	bne _08056016
	movs r0, #0
	adds r1, r4, #0
	bl sub_801EBC0
_08056016:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056020: .4byte Task_38_8056934
_08056024: .4byte gStageData
_08056028: .4byte gPlayers

	thumb_func_start sub_805602C
sub_805602C: @ 0x0805602C
	push {lr}
	sub sp, #4
	bl sub_8003D2C
	ldr r1, _08056070 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08056074 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08056078 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0805607C @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08056080 @ =gVramGraphicsCopyCursor
	ldr r0, _08056084 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08056088 @ =Task_8056A20
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r3, #0
	bl TaskCreate
	ldr r1, _0805608C @ =gStageData
	movs r0, #6
	strb r0, [r1, #4]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08056070: .4byte 0x0000FFFF
_08056074: .4byte gBackgroundsCopyQueueCursor
_08056078: .4byte gBackgroundsCopyQueueIndex
_0805607C: .4byte gBgSpritesCount
_08056080: .4byte gVramGraphicsCopyCursor
_08056084: .4byte gVramGraphicsCopyQueueIndex
_08056088: .4byte Task_8056A20
_0805608C: .4byte gStageData

	thumb_func_start sub_8056090
sub_8056090: @ 0x08056090
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _080560F0 @ =Task_64_8056660
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080560F4 @ =sub_8056104
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r2, _080560F8 @ =0x0300005C
	adds r3, r1, r2
	movs r2, #0
	strh r2, [r3]
	ldr r3, _080560FC @ =0x0300005E
	adds r2, r1, r3
	strb r4, [r2]
	adds r3, #1
	adds r2, r1, r3
	strb r5, [r2]
	ldr r2, _08056100 @ =0x03000060
	adds r1, r1, r2
	strb r6, [r1]
	bl sub_8055E50
	bl sub_80299FC
	movs r0, #0x61      @ MUS_VS_BGM_4
	bl m4aSongNumStart
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080560F0: .4byte Task_64_8056660
_080560F4: .4byte sub_8056104
_080560F8: .4byte 0x0300005C
_080560FC: .4byte 0x0300005E
_08056100: .4byte 0x03000060

	thumb_func_start sub_8056104
sub_8056104: @ 0x08056104
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8056120
sub_8056120: @ 0x08056120
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08056164 @ =Task_10_8056984
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0
	str r5, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #0xc]
	strh r5, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056164: .4byte Task_10_8056984

	thumb_func_start sub_8056168
sub_8056168: @ 0x08056168
	push {r4, lr}
	sub sp, #4
	ldr r0, _080561A4 @ =Task_Fade_80569B4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r4, #0
	str r4, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080561A4: .4byte Task_Fade_80569B4

	thumb_func_start sub_80561A8
sub_80561A8: @ 0x080561A8
	push {lr}
	ldr r0, _080561D8 @ =gPlayers
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080561E0
	ldr r1, _080561DC @ =gLoadedSaveGame
	adds r0, r1, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0x7f
	bne _080561E0
	ldrb r0, [r1, #0x10]
	cmp r0, #0x1f
	bne _080561E0
	ldrh r1, [r1, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080561E0
	movs r0, #1
	b _080561E2
	.align 2, 0
_080561D8: .4byte gPlayers
_080561DC: .4byte gLoadedSaveGame
_080561E0:
	movs r0, #0
_080561E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80561E8
sub_80561E8: @ 0x080561E8
	ldr r0, _0805620C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldr r3, _08056210 @ =gWinRegs
	ldrb r1, [r2, #6]
	lsls r1, r1, #8
	ldrb r0, [r2, #8]
	orrs r0, r1
	strh r0, [r3]
	ldrb r1, [r2, #7]
	lsls r1, r1, #8
	ldrb r0, [r2, #9]
	orrs r0, r1
	strh r0, [r3, #4]
	bx lr
	.align 2, 0
_0805620C: .4byte gCurTask
_08056210: .4byte gWinRegs

	thumb_func_start sub_8056214
sub_8056214: @ 0x08056214
	push {r4, lr}
	ldr r0, _08056234 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r1, [r4, #0xa]
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r0, #0x78
	ble _08056238
	adds r0, r1, #0
	subs r0, #0xc
	b _0805623A
	.align 2, 0
_08056234: .4byte gCurTask
_08056238:
	movs r0, #0x78
_0805623A:
	strh r0, [r4, #0xa]
	bl sub_8054E38
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _0805625A
	movs r0, #0
	strh r0, [r4, #4]
	ldr r0, _08056260 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056264 @ =sub_8054764
	str r0, [r1, #8]
_0805625A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056260: .4byte gCurTask
_08056264: .4byte sub_8054764

	thumb_func_start sub_8056268
sub_8056268: @ 0x08056268
	push {r4, lr}
	ldr r0, _08056288 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r1, [r4, #0xa]
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r0, #8
	ble _0805628C
	adds r0, r1, #0
	subs r0, #8
	b _0805628E
	.align 2, 0
_08056288: .4byte gCurTask
_0805628C:
	movs r0, #8
_0805628E:
	strh r0, [r4, #0xa]
	bl sub_8054E38
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _080562AE
	movs r0, #0
	strh r0, [r4, #4]
	ldr r0, _080562B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080562B8 @ =sub_80562BC
	str r0, [r1, #8]
_080562AE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080562B4: .4byte gCurTask
_080562B8: .4byte sub_80562BC

	thumb_func_start sub_80562BC
sub_80562BC: @ 0x080562BC
	push {r4, lr}
	ldr r0, _080562DC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0x82
	ble _080562E0
	adds r0, r1, #0
	subs r0, #0xc
	b _080562E2
	.align 2, 0
_080562DC: .4byte gCurTask
_080562E0:
	movs r0, #0x82
_080562E2:
	strh r0, [r4, #0xe]
	bl sub_8054E38
	bl sub_80563BC
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _08056306
	movs r0, #0
	strh r0, [r4, #4]
	ldr r0, _0805630C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056310 @ =sub_8056314
	str r0, [r1, #8]
_08056306:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805630C: .4byte gCurTask
_08056310: .4byte sub_8056314

	thumb_func_start sub_8056314
sub_8056314: @ 0x08056314
	push {r4, lr}
	ldr r0, _08056330 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #0x18]
	cmp r0, #0x84
	bls _08056334
	subs r0, #8
	strb r0, [r4, #0x18]
	b _0805633C
	.align 2, 0
_08056330: .4byte gCurTask
_08056334:
	movs r0, #0x84
	strb r0, [r4, #0x18]
	bl sub_8056408
_0805633C:
	bl sub_8054E38
	bl sub_80563BC
	bl sub_8056430
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _08056362
	movs r0, #0
	strh r0, [r4, #4]
	ldr r0, _08056368 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805636C @ =sub_8056370
	str r0, [r1, #8]
_08056362:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056368: .4byte gCurTask
_0805636C: .4byte sub_8056370

	thumb_func_start sub_8056370
sub_8056370: @ 0x08056370
	push {r4, r5, lr}
	ldr r5, _080563B4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_8054E38
	bl sub_80563BC
	bl sub_8056430
	bl sub_8056408
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _080563AE
	movs r0, #0
	strh r0, [r4, #4]
	movs r0, #0x82
	lsls r0, r0, #2     @ SE_GOAL_RING_RESULT
	bl m4aSongNumStart
	ldr r1, [r5]
	ldr r0, _080563B8 @ =sub_80547DC
	str r0, [r1, #8]
_080563AE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080563B4: .4byte gCurTask
_080563B8: .4byte sub_80547DC

	thumb_func_start sub_80563BC
sub_80563BC: @ 0x080563BC
	push {r4, r5, r6, lr}
	ldr r0, _080563FC @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, _08056400 @ =0x03000094
	adds r6, r5, r0
	ldrh r0, [r4, #0xe]
	strh r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _08056404 @ =0x030000BC
	adds r6, r5, r0
	ldrh r0, [r4, #0xe]
	ldrb r4, [r4, #0x17]
	adds r0, r0, r4
	strh r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080563FC: .4byte gCurTask
_08056400: .4byte 0x03000094
_08056404: .4byte 0x030000BC

	thumb_func_start sub_8056408
sub_8056408: @ 0x08056408
	push {r4, lr}
	ldr r0, _08056428 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _0805642C @ =0x030000E4
	adds r4, r4, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056428: .4byte gCurTask
_0805642C: .4byte 0x030000E4

	thumb_func_start sub_8056430
sub_8056430: @ 0x08056430
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _0805648C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, _08056490 @ =gUnknown_080D1D50
	mov r0, sp
	movs r2, #7
	bl memcpy
	movs r0, #0
_0805644C:
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	movs r0, #0x86
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r4, r6, r4
	ldrb r1, [r6, #0x18]
	mov r2, sp
	adds r0, r2, r5
	ldrb r0, [r0]
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r5, #1
	lsls r5, r5, #0x10
	lsrs r0, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #6
	ble _0805644C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805648C: .4byte gCurTask
_08056490: .4byte gUnknown_080D1D50

	thumb_func_start sub_8056494
sub_8056494: @ 0x08056494
	push {r4, r5, lr}
	ldr r0, _080564C4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _080564C8 @ =0x03000224
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _080564CC @ =0x0300024C
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080564C4: .4byte gCurTask
_080564C8: .4byte 0x03000224
_080564CC: .4byte 0x0300024C

	thumb_func_start sub_80564D0
sub_80564D0: @ 0x080564D0
	push {r4, lr}
	ldr r0, _0805650C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	bl sub_8055CA8
	bl sub_8056564
	bl sub_8055D44
	bl sub_80565BC
	bl sub_80565E4
	bl sub_8056620
	ldr r0, _08056510 @ =0x03000290
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	ldr r0, _08056514 @ =gStageData
	ldrh r0, [r0, #0xe]
	cmp r0, #0x48
	beq _08056518
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _08056528
	b _08056520
	.align 2, 0
_0805650C: .4byte gCurTask
_08056510: .4byte 0x03000290
_08056514: .4byte gStageData
_08056518:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb3
	bls _08056528
_08056520:
	ldr r0, _08056530 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056534 @ =sub_80552C8
	str r0, [r1, #8]
_08056528:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056530: .4byte gCurTask
_08056534: .4byte sub_80552C8

	thumb_func_start sub_8056538
sub_8056538: @ 0x08056538
	push {r4, lr}
	ldr r4, _0805655C @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056556
	ldr r1, [r4]
	ldr r0, _08056560 @ =sub_8055378
	str r0, [r1, #8]
_08056556:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805655C: .4byte gCurTask
_08056560: .4byte sub_8055378

	thumb_func_start sub_8056564
sub_8056564: @ 0x08056564
	push {r4, r5, r6, lr}
	ldr r0, _080565A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _080565AC @ =0x03000084
	adds r6, r4, r0
	ldr r0, _080565B0 @ =0x03000296
	adds r5, r4, r0
	ldrh r0, [r5]
	strh r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _080565B4 @ =0x030000AC
	adds r6, r4, r0
	ldr r0, _080565B8 @ =0x0300029F
	adds r4, r4, r0
	ldrh r0, [r5]
	ldrb r4, [r4]
	adds r0, r0, r4
	strh r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080565A8: .4byte gCurTask
_080565AC: .4byte 0x03000084
_080565B0: .4byte 0x03000296
_080565B4: .4byte 0x030000AC
_080565B8: .4byte 0x0300029F

.if 0
.endif
