.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

    @ Input:
    @ R0 : Player *p
	thumb_func_start sub_80293E8
sub_80293E8: @ 0x080293E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, _0802944C @ =gStageData
	adds r0, r1, #0
	adds r0, #0xae
	ldrh r0, [r0]
	cmp r0, #0
	beq _08029466
	adds r1, #0x98
	mov r8, r1
	ldr r6, [r1]
	cmp r6, #0
	bne _0802945C
	ldr r5, [r7, #0x10]
	lsls r5, r5, #8
	asrs r5, r5, #0x10
	ldr r4, [r7, #0x14]
	lsls r4, r4, #8
	asrs r4, r4, #0x10
	movs r0, #0x81
	lsls r0, r0, #2     @ VOICE__CHAO__COLLECTED
	bl m4aSongNumStart
	ldr r0, _08029450 @ =Task_40_8029474
	str r6, [sp]
	movs r1, #0x40
	ldr r2, _08029454 @ =0x00003010
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r0, r2
	lsls r5, r5, #8
	str r5, [r1]
	lsls r4, r4, #8
	str r4, [r1, #4]
	str r7, [r1, #0x3c]
	ldr r1, _08029458 @ =0x03000014
	adds r0, r0, r1
	bl sub_80295C0
	b _08029466
	.align 2, 0
_0802944C: .4byte gStageData
_08029450: .4byte Task_40_8029474
_08029454: .4byte 0x00003010
_08029458: .4byte 0x03000014
_0802945C:
	ldrh r0, [r6, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r7, [r0, #0x3c]
_08029466:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_40_8029474
Task_40_8029474: @ 0x08029474
	push {r4, lr}
	ldr r0, _080294A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r4, [r2, #0x3c]
	ldr r3, [r4, #0x10]
	ldr r0, _080294A4 @ =0xFFFFFF00
	ands r3, r0
	str r3, [r2, #8]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080294A8
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r3, r3, r0
	b _080294AC
	.align 2, 0
_080294A0: .4byte gCurTask
_080294A4: .4byte 0xFFFFFF00
_080294A8:
	ldr r1, _080294D4 @ =0xFFFFE800
	adds r3, r3, r1
_080294AC:
	str r3, [r2, #8]
	ldr r0, [r4, #0x14]
	ldr r1, _080294D8 @ =0xFFFFFF00
	ands r0, r1
	ldr r1, _080294D4 @ =0xFFFFE800
	adds r0, r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r2]
	cmp r0, r3
	ble _080294E4
	ldr r1, _080294DC @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r2]
	cmp r0, r3
	bge _080294CC
	str r3, [r2]
_080294CC:
	ldr r0, [r2, #0x1c]
	ldr r1, _080294E0 @ =0xFFFFFBFF
	ands r0, r1
	b _08029516
	.align 2, 0
_080294D4: .4byte 0xFFFFE800
_080294D8: .4byte 0xFFFFFF00
_080294DC: .4byte 0xFFFFF800
_080294E0: .4byte 0xFFFFFBFF
_080294E4:
	cmp r0, r3
	blt _08029500
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802950E
	ldr r0, [r2, #0x1c]
	ldr r1, _080294FC @ =0xFFFFFBFF
	ands r0, r1
	b _08029516
	.align 2, 0
_080294FC: .4byte 0xFFFFFBFF
_08029500:
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2]
	cmp r0, r3
	ble _0802950E
	str r3, [r2]
_0802950E:
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_08029516:
	str r0, [r2, #0x1c]
	ldr r0, [r2, #4]
	ldr r1, [r2, #0xc]
	cmp r0, r1
	ble _08029530
	ldr r3, _0802952C @ =0xFFFFF800
	adds r0, r0, r3
	str r0, [r2, #4]
	cmp r0, r1
	bge _08029542
	b _08029540
	.align 2, 0
_0802952C: .4byte 0xFFFFF800
_08029530:
	cmp r0, r1
	bge _08029542
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r2, #4]
	cmp r0, r1
	ble _08029542
_08029540:
	str r1, [r2, #4]
_08029542:
	bl sub_8029600
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_802954C
sub_802954C: @ 0x0802954C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _080295B0 @ =gStageData
	adds r5, r0, #0
	adds r5, #0x98
	ldr r4, [r5]
	cmp r4, #0
	bne _080295A2
	movs r0, #0x81
	lsls r0, r0, #2     @ VOICE__CHAO__COLLECTED
	bl m4aSongNumStart
	ldr r0, _080295B4 @ =Task_40_8029474
	ldr r2, _080295B8 @ =0x00003010
	str r4, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	str r0, [r5]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	lsls r1, r6, #0x10
	asrs r1, r1, #8
	str r1, [r2]
	lsls r1, r7, #0x10
	asrs r1, r1, #8
	str r1, [r2, #4]
	mov r1, r8
	str r1, [r2, #0x3c]
	ldr r1, _080295BC @ =0x03000014
	adds r0, r0, r1
	bl sub_80295C0
_080295A2:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080295B0: .4byte gStageData
_080295B4: .4byte Task_40_8029474
_080295B8: .4byte 0x00003010
_080295BC: .4byte 0x03000014

	thumb_func_start sub_80295C0
sub_80295C0: @ 0x080295C0
	push {lr}
	ldr r1, _080295F8 @ =0x06012580
	str r1, [r0]
	movs r3, #0
	movs r2, #0
	ldr r1, _080295FC @ =0x0000032F		@ ANIM_CHEESE_IDLE
	strh r1, [r0, #0xc]
	strb r3, [r0, #0x1a]
	subs r1, #0xaf
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r0}
	bx r0
	.align 2, 0
_080295F8: .4byte 0x06012580
_080295FC: .4byte 0x0000032F

	thumb_func_start sub_8029600
sub_8029600: @ 0x08029600
	push {r4, lr}
	ldr r0, _0802963C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r4, r2
	ldr r0, _08029640 @ =0x03000014
	adds r4, r4, r0
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r3, _08029644 @ =gCamera
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802963C: .4byte gCurTask
_08029640: .4byte 0x03000014
_08029644: .4byte gCamera
