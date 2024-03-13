.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable134
CreateEntity_Interactable134: @ 0x0804C6E8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804C768 @ =sub_804C770
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804C76C @ =sub_804C99C
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r3, #0
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r0, r8
	str r0, [r1]
	ldrb r0, [r0]
	strb r0, [r1, #0xa]
	strb r6, [r1, #0xb]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r1, #0xe]
	ldrb r2, [r2, #7]
	movs r0, #1
	ands r0, r2
	strb r0, [r1, #0x10]
	strb r3, [r1, #0x11]
	strb r3, [r1, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, r8
	strb r0, [r2]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C768: .4byte sub_804C770
_0804C76C: .4byte sub_804C99C

	thumb_func_start sub_804C770
sub_804C770: @ 0x0804C770
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0804C7FC @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sb, r1
	ldr r7, [r1]
	movs r3, #4
	ldrsb r3, [r7, r3]
	lsls r3, r3, #3
	movs r2, #0xe
	ldrsh r1, [r1, r2]
	adds r3, r1, r3
	lsls r3, r3, #0x10
	ldrb r5, [r7, #6]
	lsls r0, r5, #3
	lsrs r4, r3, #0x10
	str r4, [sp, #4]
	asrs r3, r3, #0x10
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r2, #3
	ldrsb r2, [r7, r2]
	lsls r2, r2, #3
	mov sl, r2
	mov r2, sb
	movs r4, #0xc
	ldrsh r0, [r2, r4]
	mov r4, sl
	adds r2, r0, r4
	lsls r2, r2, #0x10
	ldrb r4, [r7, #5]
	lsls r4, r4, #3
	mov sl, r4
	lsrs r4, r2, #0x10
	str r4, [sp]
	asrs r2, r2, #0x10
	add r2, sl
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r5, r5, #2
	adds r3, r3, r5
	adds r3, #4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x10]
	bl sub_802C198
	cmp r0, #0
	bne _0804C800
	mov r1, sb
	ldrb r0, [r1, #0xa]
	strb r0, [r7]
	mov r2, r8
	ldr r0, [r2]
	bl TaskDestroy
	b _0804C98C
	.align 2, 0
_0804C7FC: .4byte gCurTask
_0804C800:
	movs r1, #0
_0804C802:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0804C814
	ldr r0, _0804C810 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804C81E
	.align 2, 0
_0804C810: .4byte gUnknown_030008A0
_0804C814:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804C81E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804C85C @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804C844
	cmp r1, #8
	beq _0804C844
	cmp r1, #0x10
	beq _0804C844
	b _0804C97C
_0804C844:
	adds r0, r6, #0
	bl sub_802C0D4
	mov sl, r0
	cmp r0, #0
	beq _0804C864
	adds r0, r6, #0
	ldr r1, _0804C860 @ =0x0000025F
	bl sub_8004F10
	b _0804C97C
	.align 2, 0
_0804C85C: .4byte gUnknown_030015C0
_0804C860: .4byte 0x0000025F
_0804C864:
	ldr r7, [r6]
	ldr r0, _0804C8F4 @ =sub_8008A8C
	cmp r7, r0
	bne _0804C86E
	b _0804C97C
_0804C86E:
	ldr r0, _0804C8F8 @ =sub_800ED80
	cmp r7, r0
	bne _0804C876
	b _0804C97C
_0804C876:
	ldr r0, [r6, #0x10]
	lsls r0, r0, #8
	ldr r1, [r6, #0x14]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	asrs r2, r0, #0x10
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0804C96E
	ldr r4, [sp, #8]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804C96E
	lsls r0, r1, #0x10
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r3, r0, #0x10
	adds r5, r0, #0
	cmp r5, r1
	ble _0804C96E
	ldr r4, [sp, #0xc]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r3, r0
	bge _0804C96E
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	subs r1, r4, #4
	adds r2, r0, #0
	cmp r1, r3
	bgt _0804C908
	adds r0, r4, #4
	cmp r0, r3
	blt _0804C908
	ldr r0, _0804C8FC @ =sub_800A724
	cmp r7, r0
	beq _0804C97C
	ldr r0, _0804C900 @ =sub_800A860
	cmp r7, r0
	beq _0804C97C
	adds r0, r6, #0
	bl sub_8016F28
	lsls r0, r4, #8
	str r0, [r6, #0x14]
	mov r2, r8
	asrs r1, r2, #0x10
	mov r0, sb
	adds r0, #0x11
	adds r0, r0, r1
	mov r3, sl
	strb r3, [r0]
	mov r4, sb
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _0804C938
	ldr r0, _0804C904 @ =0xFFFFFE80
	strh r0, [r6, #0x18]
	b _0804C950
	.align 2, 0
_0804C8F4: .4byte sub_8008A8C
_0804C8F8: .4byte sub_800ED80
_0804C8FC: .4byte sub_800A724
_0804C900: .4byte sub_800A860
_0804C904: .4byte 0xFFFFFE80
_0804C908:
	asrs r4, r2, #0x10
	movs r0, #2
	cmp r2, r5
	ble _0804C912
	movs r0, #1
_0804C912:
	adds r3, r0, #0
	mov r1, r8
	asrs r0, r1, #0x10
	mov r1, sb
	adds r1, #0x11
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0804C964
	cmp r0, r3
	beq _0804C964
	lsls r0, r4, #8
	str r0, [r6, #0x14]
	movs r0, #0
	strb r0, [r2]
	mov r2, sb
	ldrb r0, [r2, #0x10]
	cmp r0, #0
	beq _0804C94C
_0804C938:
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r6, #0x18]
	adds r0, r6, #0
	ldr r1, _0804C948 @ =sub_800A690
	bl sub_800D87C
	b _0804C97C
	.align 2, 0
_0804C948: .4byte sub_800A690
_0804C94C:
	ldr r3, _0804C95C @ =0xFFFFFE80
	strh r3, [r6, #0x18]
_0804C950:
	adds r0, r6, #0
	ldr r1, _0804C960 @ =sub_800A7CC
	bl sub_800D87C
	b _0804C97C
	.align 2, 0
_0804C95C: .4byte 0xFFFFFE80
_0804C960: .4byte sub_800A7CC
_0804C964:
	mov r4, r8
	asrs r0, r4, #0x10
	adds r0, r1, r0
	strb r3, [r0]
	b _0804C97C
_0804C96E:
	mov r1, r8
	asrs r0, r1, #0x10
	mov r1, sb
	adds r1, #0x11
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
_0804C97C:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804C98C
	b _0804C802
_0804C98C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804C99C
sub_804C99C: @ 0x0804C99C
	bx lr
	.align 2, 0
