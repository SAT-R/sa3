.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_PlatformSpiked
CreateEntity_PlatformSpiked: @ 0x0804514C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804522C @ =Task_80452AC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08045230 @ =sub_804564C
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r0, #0
	mov r8, r0
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r1, sb
	str r1, [r7]
	ldrb r0, [r1]
	strb r0, [r7, #8]
	strb r6, [r7, #9]
	ldrb r1, [r1]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	str r1, [r7, #0xc]
	mov r3, sb
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	str r2, [r7, #0x10]
	strh r1, [r7, #0x34]
	strh r2, [r7, #0x36]
	movs r4, #4
	ldrsb r4, [r3, r4]
	lsls r4, r4, #3
	adds r4, r2, r4
	lsls r4, r4, #8
	str r4, [r7, #0x1c]
	ldrb r5, [r3, #6]
	lsls r5, r5, #0xa
	str r5, [r7, #0x20]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #3
	adds r0, r1, r0
	lsls r0, r0, #8
	str r0, [r7, #0x24]
	ldrb r3, [r3, #5]
	lsls r3, r3, #0xa
	str r3, [r7, #0x28]
	adds r0, r0, r3
	str r0, [r7, #0x2c]
	adds r4, r4, r5
	str r4, [r7, #0x30]
	ldr r0, _08045234 @ =gStageData
	ldrb r3, [r0, #6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	ldr r4, _08045238 @ =gPlayers
	adds r0, r0, r4
	str r0, [r7, #0x38]
	adds r0, #0x2b
	ldrb r3, [r0]
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1e
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, r0, r4
	str r0, [r7, #0x3c]
	movs r0, #0
	mov r3, sb
	bl sub_804DC38
	strh r0, [r7, #0x16]
	mov r6, r8
	strh r6, [r7, #0x14]
	ldr r0, [r7, #0xc]
	lsls r0, r0, #8
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #8
	str r0, [r7, #0x10]
	movs r2, #0
	mov r1, sb
	ldrb r0, [r1, #7]
	movs r1, #1
	b _0804524C
	.align 2, 0
_0804522C: .4byte Task_80452AC
_08045230: .4byte sub_804564C
_08045234: .4byte gStageData
_08045238: .4byte gPlayers
_0804523C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bhi _08045252
	mov r3, sb
	ldrb r0, [r3, #7]
	asrs r0, r2
_0804524C:
	ands r0, r1
	cmp r0, #0
	beq _0804523C
_08045252:
	adds r0, r2, #1
	movs r5, #0
	strb r0, [r7, #0x18]
	movs r6, #2
	rsbs r6, r6, #0
	adds r0, r6, #0
	mov r1, sb
	strb r0, [r1]
	adds r4, r7, #0
	adds r4, #0x40
	movs r0, #0x18
	bl VramMalloc
	str r0, [r7, #0x40]
	movs r1, #0
	ldr r0, _080452A8 @ =0x00000399
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r1, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080452A8: .4byte 0x00000399

	thumb_func_start Task_80452AC
Task_80452AC: @ 0x080452AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _080452F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	str r0, [sp, #4]
	ldr r2, _080452F4 @ =0x03000040
	adds r2, r2, r1
	mov r8, r2
	ldr r4, [r5, #0xc]
	ldr r3, [r5, #0x10]
	mov ip, r3
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _08045300
	ldr r0, _080452F8 @ =gStageData
	ldrb r1, [r5, #0x18]
	ldr r0, [r0, #0x1c]
	muls r0, r1, r0
	ldrh r6, [r5, #0x16]
	adds r0, r0, r6
	ldr r2, _080452FC @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5, #0x14]
	b _08045312
	.align 2, 0
_080452F0: .4byte gCurTask
_080452F4: .4byte 0x03000040
_080452F8: .4byte gStageData
_080452FC: .4byte 0x000003FF
_08045300:
	ldr r0, _08045448 @ =gStageData
	ldr r1, [r0, #0x1c]
	ldrh r0, [r5, #0x16]
	lsrs r0, r0, #2
	adds r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #2
	strh r1, [r5, #0x14]
_08045312:
	ldr r6, [r5, #0xc]
	ldr r3, [r5, #0x10]
	mov sb, r3
	ldr r3, _0804544C @ =gSineTable
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x28]
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldr r2, [r5, #0x2c]
	adds r2, r2, r0
	str r2, [r5, #0xc]
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #0x20]
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldr r1, [r5, #0x30]
	adds r1, r1, r0
	str r1, [r5, #0x10]
	subs r6, r6, r2
	mov r0, sb
	subs r0, r0, r1
	mov sb, r0
	movs r7, #0
	movs r1, #0x38
	adds r1, r1, r5
	mov sl, r1
	asrs r4, r4, #8
	str r4, [sp, #8]
	mov r2, ip
	asrs r2, r2, #8
	str r2, [sp, #0xc]
_08045360:
	lsls r0, r7, #2
	add r0, sl
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804537E
	cmp r1, #8
	beq _0804537E
	cmp r1, #0x10
	beq _0804537E
	b _08045554
_0804537E:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _0804538A
	b _08045554
_0804538A:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080453AE
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _080453AE
	ldr r0, [r4, #0x10]
	subs r0, r0, r6
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	mov r1, sb
	subs r0, r0, r1
	str r0, [r4, #0x14]
_080453AE:
	adds r0, r4, #0
	adds r0, #0x4c
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08045400
	adds r0, r4, #0
	adds r0, #0x4a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _08045400
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08045400
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	ldr r2, [r5, #0x10]
	asrs r2, r2, #8
	str r4, [sp]
	mov r0, r8
	movs r3, #1
	bl sub_8020CE0
	cmp r0, #0
	beq _080453E8
	b _08045554
_080453E8:
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	ldr r2, [r5, #0x10]
	asrs r2, r2, #8
	str r4, [sp]
	mov r0, r8
	movs r3, #2
	bl sub_8020CE0
	cmp r0, #0
	beq _08045400
	b _08045554
_08045400:
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	ldr r2, [r5, #0x10]
	asrs r2, r2, #8
	movs r0, #0
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	adds r2, r1, #0
	ands r2, r3
	cmp r2, #0
	beq _08045464
	lsls r0, r1, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldrh r0, [r4, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0804545C
	ldr r0, [r4, #4]
	ands r0, r3
	cmp r0, #0
	beq _08045454
	ldr r2, _08045450 @ =0xFFFFE000
	adds r0, r1, r2
	b _0804545A
	.align 2, 0
_08045448: .4byte gStageData
_0804544C: .4byte gSineTable
_08045450: .4byte 0xFFFFE000
_08045454:
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r1, r3
_0804545A:
	str r0, [r4, #0x14]
_0804545C:
	adds r0, r4, #0
	bl sub_801226C
	b _080454D8
_08045464:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08045488
	ldr r0, [r4, #0x14]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r4, #0x14]
	strh r2, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8012368
	b _080454D8
_08045488:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080454EE
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080454D2
	ldr r1, [r5, #0xc]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [r4, #0x10]
	cmp r6, #0
	beq _080454BE
	movs r3, #0x90
	lsls r3, r3, #5
	adds r0, r1, r3
	b _080454C4
_080454BE:
	movs r2, #0x88
	lsls r2, r2, #5
	adds r0, r1, r2
_080454C4:
	str r0, [r4, #0x10]
	rsbs r0, r6, #0
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_080454D2:
	adds r0, r4, #0
	bl sub_801246C
_080454D8:
	cmp r0, #0
	bge _08045554
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08045554
	adds r0, r4, #0
	bl sub_8008E38
	b _08045554
_080454EE:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08045554
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0804553A
	ldr r1, [r5, #0xc]
	ldr r3, _08045520 @ =0xFFFFF000
	adds r0, r1, r3
	str r0, [r4, #0x10]
	cmp r6, #0
	beq _08045528
	ldr r2, _08045524 @ =0xFFFFEE00
	adds r0, r1, r2
	b _0804552C
	.align 2, 0
_08045520: .4byte 0xFFFFF000
_08045524: .4byte 0xFFFFEE00
_08045528:
	ldr r3, _08045598 @ =0xFFFFEF00
	adds r0, r1, r3
_0804552C:
	str r0, [r4, #0x10]
	rsbs r0, r6, #0
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_0804553A:
	adds r0, r4, #0
	bl sub_8012550
	cmp r0, #0
	bge _08045554
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08045554
	adds r0, r4, #0
	bl sub_8008E38
_08045554:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bhi _08045560
	b _08045360
_08045560:
	movs r6, #0x34
	ldrsh r0, [r5, r6]
	movs r2, #0x36
	ldrsh r1, [r5, r2]
	ldr r3, _0804559C @ =gCamera
	ldr r2, [r3]
	ldr r6, [sp, #8]
	subs r2, r6, r2
	ldr r3, [r3, #4]
	ldr r6, [sp, #0xc]
	subs r3, r6, r3
	bl sub_802C140
	cmp r0, #0
	bne _080455E4
	movs r1, #0
	ldr r7, _080455A0 @ =gPlayers
_08045582:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	beq _080455A4
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080455A8
	.align 2, 0
_08045598: .4byte 0xFFFFEF00
_0804559C: .4byte gCamera
_080455A0: .4byte gPlayers
_080455A4:
	ldr r0, _080455DC @ =gStageData
	ldrb r1, [r0, #6]
_080455A8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	mov r0, r8
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08045582
	ldrb r0, [r5, #8]
	ldr r2, [sp, #4]
	strb r0, [r2]
	ldr r0, _080455E0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080455EA
	.align 2, 0
_080455DC: .4byte gStageData
_080455E0: .4byte gCurTask
_080455E4:
	adds r0, r5, #0
	bl sub_80455FC
_080455EA:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80455FC
sub_80455FC: @ 0x080455FC
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x40
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	ldr r3, _08045644 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #8]
	ldr r1, _08045648 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08045644: .4byte gCamera
_08045648: .4byte 0xFFFFFBFF

	thumb_func_start sub_804564C
sub_804564C: @ 0x0804564C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x40]
	bl VramFree
	pop {r0}
	bx r0
