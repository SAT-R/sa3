.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ TODO: game__code_2_0.s, game__code_2_1.s and game__code_2_2.s might be the same module?

.if 0
.else
	thumb_func_start Task_570_809E0D4
Task_570_809E0D4: @ 0x0809E0D4
	push {r4, r5, r6, lr}
	ldr r6, _0809E114 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E130
	ldr r1, _0809E118 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E11C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E120 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E124 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E128 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E12C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E154
	.align 2, 0
_0809E114: .4byte gCurTask
_0809E118: .4byte 0x0000FFFF
_0809E11C: .4byte gBackgroundsCopyQueueCursor
_0809E120: .4byte gBackgroundsCopyQueueIndex
_0809E124: .4byte gBgSpritesCount
_0809E128: .4byte gVramGraphicsCopyCursor
_0809E12C: .4byte gVramGraphicsCopyQueueIndex
_0809E130:
	adds r0, r4, #0
	bl sub_809C8C4
	adds r0, r4, #0
	bl sub_809C810
	cmp r0, #1
	bne _0809E154
	strb r0, [r4, #4]
	ldr r0, [r4, #0xc]
	ldr r2, _0809E15C @ =0x03000004
	adds r1, r5, r2
	ldrb r2, [r4, #5]
	bl sub_809CC80
	ldr r1, [r6]
	ldr r0, _0809E160 @ =Task_570_809C620
	str r0, [r1, #8]
_0809E154:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809E15C: .4byte 0x03000004
_0809E160: .4byte Task_570_809C620

	thumb_func_start Task_570_809E164
Task_570_809E164: @ 0x0809E164
	push {r4, r5, lr}
	ldr r5, _0809E1A4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E1C0
	ldr r1, _0809E1A8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E1AC @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E1B0 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E1B4 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E1B8 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E1BC @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E1E0
	.align 2, 0
_0809E1A4: .4byte gCurTask
_0809E1A8: .4byte 0x0000FFFF
_0809E1AC: .4byte gBackgroundsCopyQueueCursor
_0809E1B0: .4byte gBackgroundsCopyQueueIndex
_0809E1B4: .4byte gBgSpritesCount
_0809E1B8: .4byte gVramGraphicsCopyCursor
_0809E1BC: .4byte gVramGraphicsCopyQueueIndex
_0809E1C0:
	ldrb r0, [r4, #4]
	cmp r0, #0xa
	bne _0809E1E0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0809E1D4
	ldr r0, [r5]
	bl TaskDestroy
	b _0809E1E0
_0809E1D4:
	movs r0, #0
	bl sub_809E85C
	ldr r0, [r5]
	bl TaskDestroy
_0809E1E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_60_809E1E8
Task_60_809E1E8: @ 0x0809E1E8
	push {r4, r5, lr}
	ldr r0, _0809E20C @ =gStageData
	ldrb r4, [r0, #6]
	ldr r0, _0809E210 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_809E384
	cmp r4, #0
	bne _0809E214
	bl sub_8025360
	b _0809E218
	.align 2, 0
_0809E20C: .4byte gStageData
_0809E210: .4byte gCurTask
_0809E214:
	bl sub_8025AA8
_0809E218:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0809E264
	ldr r1, _0809E24C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E250 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E254 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E258 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E25C @ =gVramGraphicsCopyCursor
	ldr r0, _0809E260 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E276
	.align 2, 0
_0809E24C: .4byte 0x0000FFFF
_0809E250: .4byte gBackgroundsCopyQueueCursor
_0809E254: .4byte gBackgroundsCopyQueueIndex
_0809E258: .4byte gBgSpritesCount
_0809E25C: .4byte gVramGraphicsCopyCursor
_0809E260: .4byte gVramGraphicsCopyQueueIndex
_0809E264:
	cmp r0, #1
	bne _0809E276
	ldr r1, [r5]
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _0809E27C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0809E276:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E27C: .4byte gCurTask

	thumb_func_start TaskDestructor_809E280
TaskDestructor_809E280: @ 0x0809E280
	bx lr
	.align 2, 0

	thumb_func_start Task_60_809E284
Task_60_809E284: @ 0x0809E284
	push {r4, r5, lr}
	ldr r0, _0809E2A8 @ =gStageData
	ldrb r4, [r0, #6]
	ldr r0, _0809E2AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_809E384
	cmp r4, #0
	bne _0809E2B0
	bl sub_8025A90
	b _0809E2B4
	.align 2, 0
_0809E2A8: .4byte gStageData
_0809E2AC: .4byte gCurTask
_0809E2B0:
	bl sub_80253CC
_0809E2B4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E2FC
	ldr r1, _0809E2E4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E2E8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E2EC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E2F0 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E2F4 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E2F8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E30E
	.align 2, 0
_0809E2E4: .4byte 0x0000FFFF
_0809E2E8: .4byte gBackgroundsCopyQueueCursor
_0809E2EC: .4byte gBackgroundsCopyQueueIndex
_0809E2F0: .4byte gBgSpritesCount
_0809E2F4: .4byte gVramGraphicsCopyCursor
_0809E2F8: .4byte gVramGraphicsCopyQueueIndex
_0809E2FC:
	adds r0, r5, #0
	bl sub_809E354
	cmp r0, #1
	bne _0809E30E
	ldr r0, _0809E314 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809E318 @ =Task_60_809CA64
	str r0, [r1, #8]
_0809E30E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E314: .4byte gCurTask
_0809E318: .4byte Task_60_809CA64

	thumb_func_start Task_809E31C
Task_809E31C: @ 0x0809E31C
	push {r4, lr}
	ldr r4, _0809E350 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	subs r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809E348
	ldr r0, [r1]
	movs r1, #0xa
	strb r1, [r0]
	movs r0, #1
	bl sub_808ADF0
	ldr r0, [r4]
	bl TaskDestroy
_0809E348:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E350: .4byte gCurTask

	thumb_func_start sub_809E354
sub_809E354: @ 0x0809E354
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0xc]
	ldr r2, _0809E378 @ =0x00004FFF
	cmp r0, r2
	bgt _0809E36C
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r1, #0xc]
	cmp r0, r2
	ble _0809E37C
_0809E36C:
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r1, #0xc]
	movs r0, #1
	b _0809E37E
	.align 2, 0
_0809E378: .4byte 0x00004FFF
_0809E37C:
	movs r0, #0
_0809E37E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809E384
sub_809E384: @ 0x0809E384
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #0
	adds r0, #0x38
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_809E3B4
TaskDestructor_809E3B4: @ 0x0809E3B4
	bx lr
	.align 2, 0

	thumb_func_start Task_F4_809E3B8
Task_F4_809E3B8: @ 0x0809E3B8
	push {r4, lr}
	ldr r0, _0809E3F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E414
	ldr r1, _0809E3FC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E400 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E404 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E408 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E40C @ =gVramGraphicsCopyCursor
	ldr r0, _0809E410 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E448
	.align 2, 0
_0809E3F8: .4byte gCurTask
_0809E3FC: .4byte 0x0000FFFF
_0809E400: .4byte gBackgroundsCopyQueueCursor
_0809E404: .4byte gBackgroundsCopyQueueIndex
_0809E408: .4byte gBgSpritesCount
_0809E40C: .4byte gVramGraphicsCopyCursor
_0809E410: .4byte gVramGraphicsCopyQueueIndex
_0809E414:
	adds r0, r4, #0
	bl sub_809CE58
	adds r0, r4, #0
	bl sub_809CDC8
	cmp r0, #1
	bne _0809E448
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0809E434
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl sub_809C970
	b _0809E440
_0809E434:
	cmp r0, #1
	bne _0809E440
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl sub_809CF04
_0809E440:
	ldr r0, _0809E450 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809E454 @ =Task_809E458
	str r0, [r1, #8]
_0809E448:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E450: .4byte gCurTask
_0809E454: .4byte Task_809E458

	thumb_func_start Task_809E458
Task_809E458: @ 0x0809E458
	push {r4, r5, lr}
	ldr r5, _0809E498 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E4B4
	ldr r1, _0809E49C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E4A0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E4A4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E4A8 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E4AC @ =gVramGraphicsCopyCursor
	ldr r0, _0809E4B0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E4D4
	.align 2, 0
_0809E498: .4byte gCurTask
_0809E49C: .4byte 0x0000FFFF
_0809E4A0: .4byte gBackgroundsCopyQueueCursor
_0809E4A4: .4byte gBackgroundsCopyQueueIndex
_0809E4A8: .4byte gBgSpritesCount
_0809E4AC: .4byte gVramGraphicsCopyCursor
_0809E4B0: .4byte gVramGraphicsCopyQueueIndex
_0809E4B4:
	adds r0, r4, #0
	bl sub_809CE58
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809E4CA
	ldr r0, [r5]
	bl TaskDestroy
	b _0809E4D4
_0809E4CA:
	cmp r0, #0
	bne _0809E4D4
	ldr r0, [r5]
	bl TaskDestroy
_0809E4D4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_809E4DC
TaskDestructor_809E4DC: @ 0x0809E4DC
	bx lr
	.align 2, 0

	thumb_func_start Task_3C_809E4E0
Task_3C_809E4E0: @ 0x0809E4E0
	push {r4, r5, lr}
	ldr r5, _0809E520 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E53C
	ldr r1, _0809E524 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E528 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E52C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E530 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E534 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E538 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E56A
	.align 2, 0
_0809E520: .4byte gCurTask
_0809E524: .4byte 0x0000FFFF
_0809E528: .4byte gBackgroundsCopyQueueCursor
_0809E52C: .4byte gBackgroundsCopyQueueIndex
_0809E530: .4byte gBgSpritesCount
_0809E534: .4byte gVramGraphicsCopyCursor
_0809E538: .4byte gVramGraphicsCopyQueueIndex
_0809E53C:
	adds r0, r4, #0
	bl sub_809E5E4
	adds r0, r4, #0
	bl sub_809E5AC
	cmp r0, #1
	bne _0809E56A
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _0809E55C
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl sub_809CFA8
	b _0809E564
_0809E55C:
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl sub_809D27C
_0809E564:
	ldr r1, [r5]
	ldr r0, _0809E570 @ =Task_809E574
	str r0, [r1, #8]
_0809E56A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E570: .4byte Task_809E574

	thumb_func_start Task_809E574
Task_809E574: @ 0x0809E574
	push {r4, r5, lr}
	ldr r5, _0809E598 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_809E5E4
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809E59C
	ldr r0, [r5]
	bl TaskDestroy
	b _0809E5A6
	.align 2, 0
_0809E598: .4byte gCurTask
_0809E59C:
	cmp r0, #0
	bne _0809E5A6
	ldr r0, [r5]
	bl TaskDestroy
_0809E5A6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_809E5AC
sub_809E5AC: @ 0x0809E5AC
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0xc]
	ldr r0, _0809E5D0 @ =0x000077FF
	cmp r2, r0
	bgt _0809E5D4
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r2, r3
	str r0, [r1, #0xc]
	movs r2, #0xf0
	lsls r2, r2, #7
	cmp r0, r2
	ble _0809E5DE
	str r2, [r1, #0xc]
	movs r0, #1
	b _0809E5E0
	.align 2, 0
_0809E5D0: .4byte 0x000077FF
_0809E5D4:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0xc]
	movs r0, #1
	b _0809E5E0
_0809E5DE:
	movs r0, #0
_0809E5E0:
	pop {r1}
	bx r1

	thumb_func_start sub_809E5E4
sub_809E5E4: @ 0x0809E5E4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x14
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _0809E62C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	movs r0, #0xf0
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E62C: .4byte 0xFFFFFBFF
    
	thumb_func_start TaskDestructor_809E630
TaskDestructor_809E630: @ 0x0809E630
	bx lr
	.align 2, 0

	thumb_func_start sub_809E634
sub_809E634: @ 0x0809E634
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0xc]
	ldr r0, _0809E658 @ =0x000077FF
	cmp r2, r0
	bgt _0809E65C
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r2, r3
	str r0, [r1, #0xc]
	movs r2, #0xf0
	lsls r2, r2, #7
	cmp r0, r2
	ble _0809E666
	str r2, [r1, #0xc]
	movs r0, #1
	b _0809E668
	.align 2, 0
_0809E658: .4byte 0x000077FF
_0809E65C:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0xc]
	movs r0, #1
	b _0809E668
_0809E666:
	movs r0, #0
_0809E668:
	pop {r1}
	bx r1

	thumb_func_start sub_809E66C
sub_809E66C: @ 0x0809E66C
	push {lr}
	adds r2, r0, #0
	adds r2, #0x14
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_809E688
TaskDestructor_809E688: @ 0x0809E688
	bx lr
	.align 2, 0

	thumb_func_start Task_64_809E68C
Task_64_809E68C: @ 0x0809E68C
	push {r4, r5, lr}
	ldr r5, _0809E6CC @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E6E8
	ldr r1, _0809E6D0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E6D4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E6D8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E6DC @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E6E0 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E6E4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E702
	.align 2, 0
_0809E6CC: .4byte gCurTask
_0809E6D0: .4byte 0x0000FFFF
_0809E6D4: .4byte gBackgroundsCopyQueueCursor
_0809E6D8: .4byte gBackgroundsCopyQueueIndex
_0809E6DC: .4byte gBgSpritesCount
_0809E6E0: .4byte gVramGraphicsCopyCursor
_0809E6E4: .4byte gVramGraphicsCopyQueueIndex
_0809E6E8:
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809E6F8
	ldr r0, [r5]
	bl TaskDestroy
	b _0809E702
_0809E6F8:
	cmp r0, #0
	bne _0809E702
	ldr r0, [r5]
	bl TaskDestroy
_0809E702:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_809E708
sub_809E708: @ 0x0809E708
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0xc]
	ldr r0, _0809E72C @ =0x000027FF
	cmp r2, r0
	bgt _0809E730
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r2, r3
	str r0, [r1, #0xc]
	movs r2, #0xa0
	lsls r2, r2, #6
	cmp r0, r2
	ble _0809E73A
	str r2, [r1, #0xc]
	movs r0, #1
	b _0809E73C
	.align 2, 0
_0809E72C: .4byte 0x000027FF
_0809E730:
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r1, #0xc]
	movs r0, #1
	b _0809E73C
_0809E73A:
	movs r0, #0
_0809E73C:
	pop {r1}
	bx r1

	thumb_func_start sub_809E740
sub_809E740: @ 0x0809E740
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x14
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #0
	adds r0, #0x3c
	ldr r2, [r4, #0xc]
	asrs r2, r2, #8
	movs r1, #0xf0
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_809E774
TaskDestructor_809E774: @ 0x0809E774
	bx lr
	.align 2, 0

	thumb_func_start Task_D4_809E778
Task_D4_809E778: @ 0x0809E778
	push {r4, lr}
	ldr r4, _0809E7AC @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809E7D0
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _0809E7B8
	ldr r2, _0809E7B0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0809E7B4 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	bl sub_80AD9E4
	ldr r0, [r4]
	bl TaskDestroy
	b _0809E7D0
	.align 2, 0
_0809E7AC: .4byte gCurTask
_0809E7B0: .4byte gDispCnt
_0809E7B4: .4byte 0x00009FFF
_0809E7B8:
	adds r0, r1, #0
	bl sub_809DE9C
	ldr r0, _0809E7D8 @ =gStageData
	movs r1, #6
	strb r1, [r0, #3]
	movs r0, #0xff
	bl CreateMultiPakConnectionCheck
	ldr r0, [r4]
	bl TaskDestroy
_0809E7D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E7D8: .4byte gStageData

	thumb_func_start sub_809E7DC
sub_809E7DC: @ 0x0809E7DC
	push {lr}
	adds r2, r0, #0
	adds r2, #0x34
	ldr r1, [r0, #0x1c]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x20]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_809E7F8
sub_809E7F8: @ 0x0809E7F8
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x20]
	ldr r2, _0809E81C @ =0x000031FF
	cmp r0, r2
	bgt _0809E810
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r1, #0x20]
	cmp r0, r2
	ble _0809E820
_0809E810:
	movs r0, #0xc8
	lsls r0, r0, #6
	str r0, [r1, #0x20]
	movs r0, #1
	b _0809E822
	.align 2, 0
_0809E81C: .4byte 0x000031FF
_0809E820:
	movs r0, #0
_0809E822:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809E828
sub_809E828: @ 0x0809E828
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x24]
	ldr r2, _0809E84C @ =0x00003BFF
	cmp r0, r2
	bgt _0809E840
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r1, #0x24]
	cmp r0, r2
	ble _0809E850
_0809E840:
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r1, #0x24]
	movs r0, #1
	b _0809E852
	.align 2, 0
_0809E84C: .4byte 0x00003BFF
_0809E850:
	movs r0, #0
_0809E852:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_809E858
TaskDestructor_809E858: @ 0x0809E858
	bx lr
	.align 2, 0
.endif
