.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8064420
sub_8064420: @ 0x08064420
	push {r4, r5, lr}
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	ldrh r2, [r0, #2]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r3, _08064480 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	ldr r4, [r0, #0x14]
	asrs r2, r4, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	ldrh r2, [r0, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r3, #4]
	subs r1, r1, r2
	ldr r2, [r0, #0x18]
	asrs r0, r2, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r2, #0
	bge _08064462
	rsbs r2, r2, #0
_08064462:
	ldr r0, _08064484 @ =0x00008BFF
	cmp r2, r0
	ble _08064474
	adds r2, r4, #0
	cmp r2, #0
	bge _08064470
	rsbs r2, r2, #0
_08064470:
	cmp r2, r0
	bgt _0806447C
_08064474:
	cmp r5, #0xf0
	bhi _0806447C
	cmp r1, #0xa0
	bls _08064488
_0806447C:
	movs r0, #1
	b _0806448A
	.align 2, 0
_08064480: .4byte gCamera
_08064484: .4byte 0x00008BFF
_08064488:
	movs r0, #0
_0806448A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8064490
sub_8064490: @ 0x08064490
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r3, r0, #0
	movs r7, #0
	movs r0, #0x1c
	adds r0, r0, r3
	mov r8, r0
	ldr r1, [r3, #0xc]
	asrs r1, r1, #8
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r4, r1, r0
	ldr r1, [r3, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r5, r1, r0
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	adds r4, r4, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080644C8
	adds r1, r5, #0
	adds r1, #0x14
	b _080644CC
_080644C8:
	adds r1, r5, #0
	subs r1, #0x14
_080644CC:
	ldr r0, [r3, #0x18]
	asrs r0, r0, #8
	adds r5, r1, r0
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080644EE
	adds r4, #0xa
	b _080644F0
_080644DC:
	str r7, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020CE0
	movs r0, #1
	b _08064558
_080644EE:
	subs r4, #0xa
_080644F0:
	movs r6, #0
_080644F2:
	cmp r6, #0
	bne _08064500
	ldr r0, _080644FC @ =gStageData
	ldrb r1, [r0, #6]
	b _0806450A
	.align 2, 0
_080644FC: .4byte gStageData
_08064500:
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806450A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08064548 @ =gPlayers
	adds r7, r0, r1
	adds r0, r7, #0
	bl sub_802C080
	cmp r0, #0
	bne _0806454C
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0806454C
	adds r0, r7, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080644DC
	movs r0, #1
	b _08064558
	.align 2, 0
_08064548: .4byte gPlayers
_0806454C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080644F2
	movs r0, #0
_08064558:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8064564
sub_8064564: @ 0x08064564
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x1c
	ldr r2, [r4, #0xc]
	asrs r2, r2, #8
	ldrh r0, [r4, #2]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080645A0 @ =gCamera
	ldr r0, [r3]
	subs r2, r2, r0
	strh r2, [r5, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r5, #0x10]
	ldrb r0, [r4]
	cmp r0, #0
	beq _080645A4
	adds r1, #0x14
	b _080645A6
	.align 2, 0
_080645A0: .4byte gCamera
_080645A4:
	subs r1, #0x14
_080645A6:
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r5, #0x12]
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _080645BA
	ldrh r0, [r5, #0x10]
	adds r0, #0xa
	b _080645BE
_080645BA:
	ldrh r0, [r5, #0x10]
	subs r0, #0xa
_080645BE:
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80645D8
sub_80645D8: @ 0x080645D8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x20
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08064618 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08064618: .4byte gCamera

	thumb_func_start sub_806461C
sub_806461C: @ 0x0806461C
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8064658
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #6]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8064658
sub_8064658: @ 0x08064658
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x20
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xa]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8064684
sub_8064684: @ 0x08064684
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r6, #0x20
	ldr r1, [r0, #0x18]
	asrs r5, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	b _080646C2
_08064698:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080646AC
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r5
	b _080646B2
_080646AC:
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r5, r0
_080646B2:
	subs r0, #1
	cmp r0, #0x76
	bhi _080646BC
	movs r0, #1
	b _080646D4
_080646BC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080646C2:
	cmp r4, #1
	bhi _080646D2
	adds r0, r4, #0
	bl sub_805CD20
	adds r2, r0, #0
	cmp r2, #0
	bne _08064698
_080646D2:
	movs r0, #0
_080646D4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_80646DC
TaskDestructor_80646DC: @ 0x080646DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80646F0
sub_80646F0: @ 0x080646F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	str r1, [sp, #8]
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x30]
	mov sl, r0
	ldr r6, [sp, #0x34]
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r1, sl
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08064798 @ =Task_80647B0
	ldr r2, _0806479C @ =0x00004040
	ldr r1, _080647A0 @ =TaskDestructor_8064804
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r3, r4
	movs r5, #0
	strb r6, [r4]
	str r5, [r4, #0x14]
	str r5, [r4, #0x18]
	str r5, [r4, #8]
	str r7, [r4, #0xc]
	ldr r0, [sp, #8]
	str r0, [r4, #0x10]
	mov r1, r8
	strh r1, [r4, #2]
	mov r0, sb
	strh r0, [r4, #4]
	mov r1, sl
	strb r1, [r4, #1]
	add r0, sp, #4
	strh r5, [r0]
	ldr r0, _080647A4 @ =0x03000048
	adds r1, r3, r0
	ldr r6, _080647A8 @ =0x01000002
	add r0, sp, #4
	adds r2, r6, #0
	str r3, [sp, #0xc]
	bl CpuSet
	mov r0, sp
	adds r0, #6
	strh r5, [r0]
	ldr r3, [sp, #0xc]
	ldr r1, _080647AC @ =0x03000040
	adds r3, r3, r1
	adds r1, r3, #0
	adds r2, r6, #0
	bl CpuSet
	adds r0, r4, #0
	bl sub_8064304
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064798: .4byte Task_80647B0
_0806479C: .4byte 0x00004040
_080647A0: .4byte TaskDestructor_8064804
_080647A4: .4byte 0x03000048
_080647A8: .4byte 0x01000002
_080647AC: .4byte 0x03000040

	thumb_func_start Task_80647B0
Task_80647B0: @ 0x080647B0
	push {r4, lr}
	ldr r0, _080647FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08064800 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080647D6
	cmp r1, #4
	beq _080647D6
	adds r0, r4, #0
	bl sub_806437C
_080647D6:
	adds r0, r4, #0
	bl sub_8064564
	adds r0, r4, #0
	bl sub_8064490
	adds r0, r4, #0
	bl sub_8064420
	cmp r0, #1
	bne _080647F4
	ldr r0, _080647FC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080647F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080647FC: .4byte gCurTask
_08064800: .4byte gStageData

	thumb_func_start TaskDestructor_8064804
TaskDestructor_8064804: @ 0x08064804
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0
