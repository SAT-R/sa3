.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable091
CreateEntity_Interactable091: @ 0x0803F550
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	adds r5, r1, #0
	mov r8, r2
	adds r6, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0803F61C @ =Task_Interactable091Main
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803F620 @ =sub_803FAF4
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r4, r3
	ldr r1, _0803F624 @ =0x03000014
	adds r0, r4, r1
	movs r2, #0
	strh r5, [r3, #4]
	mov r7, r8
	strh r7, [r3, #6]
	mov r1, sb
	str r1, [r3]
	ldrb r1, [r1]
	strb r1, [r3, #0xa]
	strb r6, [r3, #0xb]
	ldr r6, _0803F628 @ =0x0300003C
	adds r1, r4, r6
	strb r2, [r1]
	ldr r7, _0803F62C @ =0x0300003D
	adds r1, r4, r7
	strb r2, [r1]
	ldr r1, _0803F630 @ =gStageData
	ldrb r2, [r1, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r6, _0803F634 @ =gPlayers
	adds r1, r1, r6
	str r1, [r3, #0xc]
	adds r1, #0x2b
	ldrb r2, [r1]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1e
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r6
	str r1, [r3, #0x10]
	mov r2, sb
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r3, #0x3e]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	mov r6, r8
	lsls r6, r6, #8
	mov r8, r6
	add r1, r8
	adds r7, #3
	adds r4, r4, r7
	strh r1, [r4]
	ldrh r1, [r3, #0x3e]
	strh r1, [r0, #0x10]
	ldrh r1, [r4]
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r6, sb
	strb r1, [r6]
	bl sub_803F9F0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F61C: .4byte Task_Interactable091Main
_0803F620: .4byte sub_803FAF4
_0803F624: .4byte 0x03000014
_0803F628: .4byte 0x0300003C
_0803F62C: .4byte 0x0300003D
_0803F630: .4byte gStageData
_0803F634: .4byte gPlayers

	thumb_func_start Task_Interactable091Main
Task_Interactable091Main: @ 0x0803F638
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0803F678 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0x14
	adds r0, r0, r1
	mov sb, r0
	movs r6, #0
	movs r5, #0
	movs r1, #1
	mov r8, r1
_0803F65A:
	lsls r0, r5, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _0803F67C
	mov r0, r8
	lsls r0, r5
	bics r6, r0
	b _0803F690
	.align 2, 0
_0803F678: .4byte gCurTask
_0803F67C:
	adds r0, r4, #0
	bl sub_803F938
	cmp r0, #0
	beq _0803F690
	mov r0, r8
	lsls r0, r5
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
_0803F690:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803F65A
	cmp r6, #0
	beq _0803F6C0
	adds r2, r7, #0
	adds r2, #0x3c
	movs r1, #0
	strb r1, [r2]
	adds r0, r7, #0
	adds r0, #0x3d
	strb r6, [r0]
	strb r1, [r2]
	movs r0, #1
	mov r1, sb
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, _0803F6D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803F6D4 @ =sub_803F6D8
	str r0, [r1, #8]
_0803F6C0:
	bl sub_803FA5C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F6D0: .4byte gCurTask
_0803F6D4: .4byte sub_803F6D8

	thumb_func_start sub_803F6D8
sub_803F6D8: @ 0x0803F6D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0803F730 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0x14
	adds r0, r1, r0
	str r0, [sp]
	movs r2, #0
	mov sl, r2
	movs r6, #0
	ldr r0, _0803F734 @ =0x0300000C
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r2, _0803F738 @ =0x0300003D
	adds r2, r2, r1
	mov sb, r2
_0803F708:
	lsls r0, r6, #2
	adds r1, r7, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _0803F73C
	movs r1, #1
	lsls r1, r6
	mov r2, sb
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	movs r0, #0x3d
	adds r0, r0, r7
	mov r8, r0
	b _0803F7B2
	.align 2, 0
_0803F730: .4byte gCurTask
_0803F734: .4byte 0x0300000C
_0803F738: .4byte 0x0300003D
_0803F73C:
	adds r1, r7, #0
	adds r1, #0x3d
	ldrb r0, [r1]
	asrs r0, r6
	movs r5, #1
	ands r0, r5
	mov r8, r1
	cmp r0, #0
	beq _0803F79C
	ldr r0, _0803F76C @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0803F770
	adds r0, r5, #0
	lsls r0, r6
	mov r1, sl
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	b _0803F7B2
	.align 2, 0
_0803F76C: .4byte gStageData
_0803F770:
	ldr r0, [r4, #0x14]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_803F938
	cmp r0, #0
	bne _0803F7B2
	ldr r0, [r4, #0x14]
	ldr r1, _0803F798 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [sp]
	adds r1, r4, #0
	bl sub_80213B0
	b _0803F7B2
	.align 2, 0
_0803F798: .4byte 0xFFFFF800
_0803F79C:
	adds r0, r4, #0
	bl sub_803F938
	cmp r0, #0
	beq _0803F7B2
	adds r0, r5, #0
	lsls r0, r6
	mov r2, r8
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_0803F7B2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0803F708
	adds r1, r7, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r1, #0
	cmp r0, #0x18
	beq _0803F7D6
	mov r0, sl
	cmp r0, #0
	beq _0803F880
_0803F7D6:
	movs r6, #0
	mov r5, r8
_0803F7DA:
	lsls r0, r6, #2
	ldr r1, [sp, #4]
	adds r0, r1, r0
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803F7F8
	cmp r1, #8
	beq _0803F7F8
	cmp r1, #0x10
	bne _0803F860
_0803F7F8:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803F860
	adds r0, r4, #0
	bl sub_803F938
	cmp r0, #0
	beq _0803F846
	mov r2, r8
	ldrb r1, [r2]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803F842
	mov r0, sl
	cmp r0, #0
	beq _0803F834
	ldrb r0, [r7]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _0803F830 @ =0xFFFFFC00
	adds r0, r2, #0
	subs r0, r0, r1
	b _0803F838
	.align 2, 0
_0803F830: .4byte 0xFFFFFC00
_0803F834:
	movs r0, #0xfc
	lsls r0, r0, #8
_0803F838:
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl Player_8009E8C
	b _0803F858
_0803F842:
	strh r1, [r4, #0x1a]
	b _0803F858
_0803F846:
	cmp r6, #0
	beq _0803F850
	ldrb r1, [r5]
	movs r0, #2
	b _0803F854
_0803F850:
	ldrb r1, [r5]
	movs r0, #1
_0803F854:
	ands r0, r1
	strb r0, [r5]
_0803F858:
	adds r0, r4, #0
	ldr r1, _0803F894 @ =0x0000024E
	bl sub_8004E98
_0803F860:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0803F7DA
	movs r0, #0
	strb r0, [r7]
	movs r0, #2
	ldr r1, [sp]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, _0803F898 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803F89C @ =sub_803F8A0
	str r0, [r1, #8]
_0803F880:
	bl sub_803FA5C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F894: .4byte 0x0000024E
_0803F898: .4byte gCurTask
_0803F89C: .4byte sub_803F8A0

	thumb_func_start sub_803F8A0
sub_803F8A0: @ 0x0803F8A0
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803F930 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0x14
	adds r7, r1, r0
	movs r5, #0
_0803F8B4:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803F8D4
	cmp r1, #8
	beq _0803F8D4
	cmp r1, #0x10
	bne _0803F8F4
_0803F8D4:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803F8F4
	adds r0, r4, #0
	bl sub_803F938
	cmp r0, #0
	beq _0803F8F4
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl Player_8009E8C
_0803F8F4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803F8B4
	adds r1, r6, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bne _0803F924
	movs r0, #0
	strb r0, [r7, #0x1a]
	ldrb r0, [r7, #0x1b]
	orrs r0, r1
	strb r0, [r7, #0x1b]
	ldr r0, _0803F930 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803F934 @ =Task_Interactable091Main
	str r0, [r1, #8]
_0803F924:
	bl sub_803FA5C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F930: .4byte gCurTask
_0803F934: .4byte Task_Interactable091Main

	thumb_func_start sub_803F938
sub_803F938: @ 0x0803F938
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0803F980 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	ldr r3, _0803F984 @ =0x03000014
	adds r0, r2, r3
	adds r3, #0x2c
	adds r2, r2, r3
	movs r3, #0x3e
	ldrsh r1, [r1, r3]
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r5, #0
	str r5, [sp]
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _0803F988
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	strh r5, [r4, #0x1a]
	movs r0, #1
	b _0803F9E8
	.align 2, 0
_0803F980: .4byte gCurTask
_0803F984: .4byte 0x03000014
_0803F988:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0803F9E6
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r5, r1, r0
	str r5, [r4, #0x10]
	strh r3, [r4, #0x18]
	strh r3, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _0803F9C0
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803F9C0
	ldr r1, _0803F9BC @ =0xFFFFFF00
	adds r0, r5, r1
	b _0803F9DC
	.align 2, 0
_0803F9BC: .4byte 0xFFFFFF00
_0803F9C0:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0803F9E6
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803F9E6
	ldr r0, [r4, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
_0803F9DC:
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_0803F9E6:
	movs r0, #0
_0803F9E8:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_803F9F0
sub_803F9F0: @ 0x0803F9F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803FA10 @ =gStageData
	ldrb r0, [r1, #9]
	cmp r0, #5
	bne _0803FA18
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	beq _0803FA18
	movs r0, #0x16
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _0803FA14 @ =0x000003AD
	b _0803FA24
	.align 2, 0
_0803FA10: .4byte gStageData
_0803FA14: .4byte 0x000003AD
_0803FA18:
	movs r0, #0x2a
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _0803FA58 @ =0x00000376
_0803FA24:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803FA58: .4byte 0x00000376

	thumb_func_start sub_803FA5C
sub_803FA5C: @ 0x0803FA5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0803FAA4 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4]
	mov r8, r0
	ldr r0, _0803FAA8 @ =0x03000014
	adds r5, r1, r0
	adds r0, #0x2c
	adds r1, r1, r0
	movs r0, #0x3e
	ldrsh r6, [r4, r0]
	movs r0, #0
	ldrsh r7, [r1, r0]
	adds r0, r6, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0803FAAC
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
	b _0803FAE0
	.align 2, 0
_0803FAA4: .4byte gCurTask
_0803FAA8: .4byte 0x03000014
_0803FAAC:
	ldr r1, _0803FAEC @ =gCamera
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r5, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldrh r0, [r5, #0x10]
	adds r0, #0x10
	lsls r0, r0, #0x10
	ldr r1, _0803FAF0 @ =0x010F0000
	cmp r0, r1
	bhi _0803FADE
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0803FADE
	cmp r0, #0xb3
	bgt _0803FADE
	adds r0, r5, #0
	bl DisplaySprite
_0803FADE:
	movs r0, #1
_0803FAE0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803FAEC: .4byte gCamera
_0803FAF0: .4byte 0x010F0000

	thumb_func_start sub_803FAF4
sub_803FAF4: @ 0x0803FAF4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	bl VramFree
	pop {r0}
	bx r0
