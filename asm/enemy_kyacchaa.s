.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Kyacchaa
CreateEntity_Kyacchaa: @ 0x080658D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0806595C @ =Task_Kyacchaa
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08065960 @ =TaskDestructor_Kyacchaa
	str r1, [sp]
	movs r1, #0x8c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	movs r2, #0
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	movs r3, #0
	strh r2, [r7, #0xc]
	strh r5, [r7, #8]
	strh r6, [r7, #0xa]
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	str r1, [r7, #0x20]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x24]
	str r1, [r7, #0x18]
	str r0, [r7, #0x1c]
	str r2, [r7, #0x10]
	str r2, [r7, #0x14]
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x30]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x2c]
	strb r3, [r7, #6]
	ldrb r1, [r4, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08065964
	movs r0, #0xff
	b _08065966
	.align 2, 0
_0806595C: .4byte Task_Kyacchaa
_08065960: .4byte TaskDestructor_Kyacchaa
_08065964:
	movs r0, #1
_08065966:
	strb r0, [r7, #7]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x88
	ldr r2, _08065998 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_806599C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, r8
	strb r0, [r2]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065998: .4byte 0x01000002

	thumb_func_start sub_806599C
sub_806599C: @ 0x0806599C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x15
	bl VramMalloc
	adds r5, r0, #0
	adds r3, r7, #0
	adds r3, #0x5c
	str r5, [r7, #0x5c]
	ldr r4, _08065A84 @ =gUnknown_080D2198
	ldr r0, [r4, #4]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4]
	movs r2, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _08065A88 @ =gCamera
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
	strb r0, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sb, r0
	str r0, [r3, #8]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r3, #0x20]
	adds r0, r3, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	adds r3, r7, #0
	adds r3, #0x34
	str r5, [r7, #0x34]
	ldrh r0, [r4, #0x18]
	strh r0, [r3, #0xc]
	ldrb r0, [r4, #0x1a]
	strb r0, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	ldr r2, [sp]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	mov r0, sl
	strb r0, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	mov r0, sb
	str r0, [r3, #8]
	mov r0, r8
	str r0, [r3, #0x20]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065A84: .4byte gUnknown_080D2198
_08065A88: .4byte gCamera

	thumb_func_start sub_8065A8C
sub_8065A8C: @ 0x08065A8C
	push {r4, r5, lr}
	ldr r0, _08065AD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _08065AD4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08065AB6
	cmp r1, #4
	beq _08065AB6
	adds r0, r4, #0
	bl sub_8065C48
	adds r5, r0, #0
_08065AB6:
	adds r0, r4, #0
	bl sub_8065CE0
	adds r0, r4, #0
	bl sub_8065F5C
	cmp r0, #1
	bne _08065AD8
	ldr r0, _08065AD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08065AFA
	.align 2, 0
_08065AD0: .4byte gCurTask
_08065AD4: .4byte gUnknown_030008A0
_08065AD8:
	cmp r5, #1
	bne _08065AFA
	adds r0, r4, #0
	adds r0, #0x5c
	ldr r2, _08065B00 @ =gUnknown_080D2198
	ldrh r1, [r2, #8]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	ldr r0, _08065B04 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08065B08 @ =sub_8065B0C
	str r0, [r1, #8]
_08065AFA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065B00: .4byte gUnknown_080D2198
_08065B04: .4byte gCurTask
_08065B08: .4byte sub_8065B0C

	thumb_func_start sub_8065B0C
sub_8065B0C: @ 0x08065B0C
	push {r4, r5, r6, r7, lr}
	ldr r6, _08065B34 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8065CE0
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_8065F5C
	cmp r0, #1
	bne _08065B38
	ldr r0, [r6]
	bl TaskDestroy
	b _08065B7A
	.align 2, 0
_08065B34: .4byte gCurTask
_08065B38:
	ldr r0, _08065B80 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08065B7A
	cmp r1, #4
	beq _08065B7A
	cmp r7, #0
	bne _08065B7A
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _08065B7A
	ldr r1, _08065B84 @ =0x0300005C
	adds r0, r5, r1
	ldr r2, _08065B88 @ =gUnknown_080D2198
	ldrh r1, [r2, #0x10]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0x12]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bl UpdateSpriteAnimation
	strh r7, [r4, #0xc]
	ldr r1, [r6]
	ldr r0, _08065B8C @ =sub_8065E48
	str r0, [r1, #8]
_08065B7A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065B80: .4byte gUnknown_030008A0
_08065B84: .4byte 0x0300005C
_08065B88: .4byte gUnknown_080D2198
_08065B8C: .4byte sub_8065E48

	thumb_func_start sub_8065B90
sub_8065B90: @ 0x08065B90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x20]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r7, #0x24]
	asrs r0, r0, #8
	mov sb, r0
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	add sl, r0
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	add sb, r0
	movs r0, #0
	b _08065C24
_08065BB8:
	mov r1, sl
	lsls r2, r1, #8
	ldr r1, [r4, #0x10]
	subs r0, r1, r2
	adds r6, r2, #0
	adds r5, r1, #0
	ldr r3, _08065C14 @ =0x000027FF
	cmp r0, r3
	bgt _08065BE0
	cmp r1, r2
	blt _08065BE0
	mov r0, sb
	lsls r3, r0, #8
	ldr r2, [r4, #0x14]
	subs r1, r2, r3
	ldr r0, _08065C18 @ =0x00004FFF
	cmp r1, r0
	bgt _08065BE0
	cmp r2, r3
	bge _08065BFE
_08065BE0:
	subs r0, r6, r5
	ldr r1, _08065C14 @ =0x000027FF
	cmp r0, r1
	bgt _08065C1C
	cmp r6, r5
	blt _08065C1C
	mov r0, sb
	lsls r3, r0, #8
	ldr r2, [r4, #0x14]
	subs r1, r2, r3
	ldr r0, _08065C18 @ =0x00004FFF
	cmp r1, r0
	bgt _08065C1C
	cmp r2, r3
	blt _08065C1C
_08065BFE:
	ldrh r0, [r7, #8]
	lsls r0, r0, #0x10
	subs r0, r5, r0
	str r0, [r7, #0x10]
	ldrh r1, [r7, #0xa]
	lsls r1, r1, #0x10
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #1
	b _08065C3A
	.align 2, 0
_08065C14: .4byte 0x000027FF
_08065C18: .4byte 0x00004FFF
_08065C1C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08065C24:
	mov r8, r0
	mov r1, r8
	cmp r1, #1
	bhi _08065C38
	mov r0, r8
	bl sub_805CD20
	adds r4, r0, #0
	cmp r4, #0
	bne _08065BB8
_08065C38:
	movs r0, #0
_08065C3A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8065C48
sub_8065C48: @ 0x08065C48
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0x80
	lsls r5, r5, #2
	ldr r4, [r2, #0x20]
	ldr r3, [r2, #0x10]
	cmp r4, r3
	bgt _08065C7E
	cmp r4, r3
	beq _08065C74
	ldr r0, [r2, #0x64]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #0x64]
	ldr r0, [r2, #0x3c]
	orrs r0, r1
	str r0, [r2, #0x3c]
	adds r0, r4, r5
	str r0, [r2, #0x20]
	cmp r0, r3
	bgt _08065C96
_08065C74:
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x2c]
	cmp r0, r1
	ble _08065CAC
	b _08065CAA
_08065C7E:
	ldr r0, [r2, #0x64]
	ldr r1, _08065C9C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x64]
	ldr r0, [r2, #0x3c]
	ands r0, r1
	str r0, [r2, #0x3c]
	ldr r1, _08065CA0 @ =0xFFFFFE00
	adds r0, r4, r1
	str r0, [r2, #0x20]
	cmp r0, r3
	bge _08065CA4
_08065C96:
	str r3, [r2, #0x20]
	b _08065CAC
	.align 2, 0
_08065C9C: .4byte 0xFFFFFBFF
_08065CA0: .4byte 0xFFFFFE00
_08065CA4:
	ldr r1, [r2, #0x30]
	cmp r0, r1
	bge _08065CAC
_08065CAA:
	str r1, [r2, #0x20]
_08065CAC:
	ldr r1, [r2, #0x20]
	ldr r0, [r2, #0x10]
	cmp r1, r0
	beq _08065CC0
	ldr r0, [r2, #0x2c]
	cmp r1, r0
	beq _08065CC0
	ldr r0, [r2, #0x30]
	cmp r1, r0
	bne _08065CD6
_08065CC0:
	ldr r0, [r2, #0x24]
	ldr r1, [r2, #0x14]
	cmp r0, r1
	bgt _08065CD6
	adds r0, r0, r5
	str r0, [r2, #0x24]
	cmp r0, r1
	ble _08065CD6
	str r1, [r2, #0x24]
	movs r0, #1
	b _08065CD8
_08065CD6:
	movs r0, #0
_08065CD8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8065CE0
sub_8065CE0: @ 0x08065CE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x5c
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r6, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r4, _08065D50 @ =gCamera
	ldr r0, [r4]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	subs r5, #0x28
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r6, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4]
	subs r2, r1, r0
	strh r2, [r5, #0x10]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	subs r1, #0x13
	strh r1, [r5, #0x12]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08065D54
	subs r0, r2, #1
	b _08065D56
	.align 2, 0
_08065D50: .4byte gCamera
_08065D54:
	adds r0, r2, #1
_08065D56:
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r7, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r6, #0x24]
	movs r1, #0xe0
	lsls r1, r1, #3
	adds r4, r0, r1
	ldr r0, [r6, #0x1c]
	cmp r4, r0
	ble _08065DD0
	adds r5, r6, #0
	adds r5, #0x34
	ldr r2, _08065DB0 @ =gCamera
	mov r8, r2
_08065D7C:
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r6, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r3, r8
	ldr r0, [r3]
	subs r2, r1, r0
	strh r2, [r5, #0x10]
	asrs r1, r4, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	subs r1, #0x13
	strh r1, [r5, #0x12]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08065DB4
	subs r0, r2, #1
	b _08065DB6
	.align 2, 0
_08065DB0: .4byte gCamera
_08065DB4:
	adds r0, r2, #1
_08065DB6:
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r7, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _08065DDC @ =0xFFFFF800
	adds r4, r4, r0
	ldr r0, [r6, #0x1c]
	cmp r4, r0
	bgt _08065D7C
_08065DD0:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08065DDC: .4byte 0xFFFFF800

	thumb_func_start Task_Kyacchaa
Task_Kyacchaa: @ 0x08065DE0
	push {r4, r5, lr}
	ldr r5, _08065E08 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8065CE0
	adds r0, r4, #0
	bl sub_8065B90
	cmp r0, #1
	bne _08065E10
	ldr r1, [r5]
	ldr r0, _08065E0C @ =sub_8065A8C
	str r0, [r1, #8]
	b _08065E3A
	.align 2, 0
_08065E08: .4byte gCurTask
_08065E0C: .4byte sub_8065A8C
_08065E10:
	ldr r0, _08065E40 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08065E28
	cmp r1, #4
	beq _08065E28
	adds r0, r4, #0
	bl sub_8065EB0
_08065E28:
	adds r0, r4, #0
	bl sub_8065F5C
	cmp r0, #1
	bne _08065E3A
	ldr r0, _08065E44 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08065E3A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065E40: .4byte gUnknown_030008A0
_08065E44: .4byte gCurTask

	thumb_func_start sub_8065E48
sub_8065E48: @ 0x08065E48
	push {r4, r5, lr}
	ldr r0, _08065E8C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _08065E90 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08065E72
	cmp r1, #4
	beq _08065E72
	adds r0, r4, #0
	bl sub_8065F10
	adds r5, r0, #0
_08065E72:
	adds r0, r4, #0
	bl sub_8065CE0
	adds r0, r4, #0
	bl sub_8065F5C
	cmp r0, #1
	bne _08065E94
	ldr r0, _08065E8C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08065EA0
	.align 2, 0
_08065E8C: .4byte gCurTask
_08065E90: .4byte gUnknown_030008A0
_08065E94:
	cmp r5, #1
	bne _08065EA0
	ldr r0, _08065EA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08065EAC @ =Task_Kyacchaa
	str r0, [r1, #8]
_08065EA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065EA8: .4byte gCurTask
_08065EAC: .4byte Task_Kyacchaa

	thumb_func_start sub_8065EB0
sub_8065EB0: @ 0x08065EB0
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x2c]
	ldr r3, [r2, #0x64]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	beq _08065EE8
	ldr r0, [r2, #0x20]
	cmp r0, r1
	bgt _08065F06
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r2, #0x20]
	cmp r0, r1
	ble _08065F06
	str r1, [r2, #0x20]
	ldr r1, _08065EE4 @ =0xFFFFFBFF
	ands r3, r1
	str r3, [r2, #0x64]
	ldr r0, [r2, #0x3c]
	ands r0, r1
	b _08065F04
	.align 2, 0
_08065EE4: .4byte 0xFFFFFBFF
_08065EE8:
	ldrh r1, [r2, #0x30]
	ldr r0, [r2, #0x20]
	cmp r0, r1
	blt _08065F06
	ldr r5, _08065F0C @ =0xFFFFFF00
	adds r0, r0, r5
	str r0, [r2, #0x20]
	cmp r0, r1
	bge _08065F06
	str r1, [r2, #0x20]
	orrs r3, r4
	str r3, [r2, #0x64]
	ldr r0, [r2, #0x3c]
	orrs r0, r4
_08065F04:
	str r0, [r2, #0x3c]
_08065F06:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065F0C: .4byte 0xFFFFFF00

	thumb_func_start sub_8065F10
sub_8065F10: @ 0x08065F10
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x24]
	ldr r2, [r1, #0x1c]
	cmp r0, r2
	blt _08065F2A
	subs r0, #0x80
	str r0, [r1, #0x24]
	cmp r0, r2
	bge _08065F2A
	str r2, [r1, #0x24]
	movs r0, #1
	b _08065F2C
_08065F2A:
	movs r0, #0
_08065F2C:
	pop {r1}
	bx r1

	thumb_func_start sub_8065F30
sub_8065F30: @ 0x08065F30
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x5c
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x20]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #8]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8065F5C
sub_8065F5C: @ 0x08065F5C
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8065F30
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x5c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #8]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start TaskDestructor_Kyacchaa
TaskDestructor_Kyacchaa: @ 0x08065F98
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	bl VramFree
	pop {r0}
	bx r0
