.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Yadokk
CreateEntity_Yadokk: @ 0x0805FC08
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
	ldr r0, _0805FC80 @ =sub_805FD48
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805FC84 @ =sub_8060134
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #0xb
	str r1, [r7, #0x18]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x1c]
	str r1, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r0, #3
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x20]
	ldrb r0, [r2, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	ldrb r1, [r2, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805FC88
	movs r0, #0xff
	b _0805FC8A
	.align 2, 0
_0805FC80: .4byte sub_805FD48
_0805FC84: .4byte sub_8060134
_0805FC88:
	movs r0, #1
_0805FC8A:
	strb r0, [r7, #8]
	movs r0, #0
	strb r0, [r7, #6]
	strb r0, [r7, #7]
	add r1, sp, #4
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x54
	ldr r2, _0805FCC0 @ =0x01000002
	add r0, sp, #4
	bl CpuSet
	adds r0, r7, #0
	bl sub_805FCC4
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
_0805FCC0: .4byte 0x01000002

	thumb_func_start sub_805FCC4
sub_805FCC4: @ 0x0805FCC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x28
	str r0, [r4, #0x28]
	ldr r1, _0805FD40 @ =gUnknown_080D1FD0
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0805FD44 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #8
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805FD2E
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805FD2E:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FD40: .4byte gUnknown_080D1FD0
_0805FD44: .4byte gCamera

	thumb_func_start sub_805FD48
sub_805FD48: @ 0x0805FD48
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0805FDA4 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	adds r0, #0x28
	adds r4, r3, r0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
	ldr r1, _0805FDA8 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #3
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
	ldr r0, _0805FDAC @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805FD90
	cmp r1, #4
	beq _0805FD90
	adds r0, r5, #0
	bl sub_805FFEC
_0805FD90:
	adds r0, r5, #0
	bl sub_80600F8
	cmp r0, #1
	bne _0805FDB0
	ldr r0, _0805FDA4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805FE30
	.align 2, 0
_0805FDA4: .4byte gCurTask
_0805FDA8: .4byte 0x03000018
_0805FDAC: .4byte gUnknown_030008A0
_0805FDB0:
	adds r0, r5, #0
	bl sub_8060088
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x20]
	cmp r1, r0
	ble _0805FDC4
	ldr r0, [r5, #0x24]
	cmp r1, r0
	blt _0805FDF4
_0805FDC4:
	ldrb r0, [r5, #6]
	movs r2, #3
	cmp r0, #0
	bne _0805FDCE
	movs r2, #1
_0805FDCE:
	ldr r1, _0805FDE8 @ =gUnknown_080D1FD0
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r0, _0805FDEC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805FDF0 @ =sub_805FE40
	str r0, [r1, #8]
	b _0805FE30
	.align 2, 0
_0805FDE8: .4byte gUnknown_080D1FD0
_0805FDEC: .4byte gCurTask
_0805FDF0: .4byte sub_805FE40
_0805FDF4:
	adds r0, r5, #0
	bl sub_8060030
	adds r7, r0, #0
	cmp r7, #1
	bne _0805FE30
	ldrb r6, [r5, #6]
	cmp r6, #0
	bne _0805FE30
	adds r4, r5, #0
	adds r4, #0x28
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldrh r2, [r5, #0xa]
	ldrh r3, [r5, #0xc]
	bl sub_8060148
	strb r7, [r5, #6]
	mov r0, sp
	strh r6, [r0]
	adds r1, r5, #0
	adds r1, #0x54
	ldr r2, _0805FE38 @ =0x01000002
	bl CpuSet
	ldr r1, _0805FE3C @ =gUnknown_080D1FD0
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r4, #0x1a]
_0805FE30:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FE38: .4byte 0x01000002
_0805FE3C: .4byte gUnknown_080D1FD0

	thumb_func_start sub_805FE40
sub_805FE40: @ 0x0805FE40
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805FE68 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8060088
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_80600F8
	cmp r0, #1
	bne _0805FE6C
	ldr r0, [r7]
	bl TaskDestroy
	b _0805FECE
	.align 2, 0
_0805FE68: .4byte gCurTask
_0805FE6C:
	ldr r0, _0805FEA8 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805FECE
	cmp r1, #4
	beq _0805FECE
	cmp r6, #0
	bne _0805FECE
	ldr r0, _0805FEAC @ =0x03000028
	adds r2, r5, r0
	ldrb r0, [r4, #6]
	movs r4, #2
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	ands r4, r1
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0805FEB4
	ldr r0, _0805FEB0 @ =0xFFFFFBFF
	ands r1, r0
	b _0805FEB6
	.align 2, 0
_0805FEA8: .4byte gUnknown_030008A0
_0805FEAC: .4byte 0x03000028
_0805FEB0: .4byte 0xFFFFFBFF
_0805FEB4:
	orrs r1, r3
_0805FEB6:
	str r1, [r2, #8]
	ldr r1, _0805FED4 @ =gUnknown_080D1FD0
	lsls r0, r4, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r2, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	ldr r0, _0805FED8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805FEDC @ =sub_805FD48
	str r0, [r1, #8]
_0805FECE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FED4: .4byte gUnknown_080D1FD0
_0805FED8: .4byte gCurTask
_0805FEDC: .4byte sub_805FD48

	thumb_func_start sub_805FEE0
sub_805FEE0: @ 0x0805FEE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x14
	str r1, [r4, #0x14]
	ldr r2, _0805FF40 @ =gUnknown_080D1FF0
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	ldr r3, _0805FF44 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x20
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FF40: .4byte gUnknown_080D1FF0
_0805FF44: .4byte gCamera

	thumb_func_start sub_805FF48
sub_805FF48: @ 0x0805FF48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0xc]
	asrs r7, r1, #8
	ldr r1, [r0, #0x10]
	asrs r6, r1, #8
	ldrh r1, [r0, #2]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x14
	mov r8, r0
	movs r5, #0
_0805FF6C:
	cmp r5, #0
	bne _0805FF7C
	ldr r0, _0805FF78 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0805FF86
	.align 2, 0
_0805FF78: .4byte gUnknown_030008A0
_0805FF7C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805FF86:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805FFD0 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0805FFD4
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805FFD4
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805FFCC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805FFCC:
	movs r0, #1
	b _0805FFE0
	.align 2, 0
_0805FFD0: .4byte gUnknown_030015C0
_0805FFD4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805FF6C
	movs r0, #0
_0805FFE0:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805FFEC
sub_805FFEC: @ 0x0805FFEC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08060012
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x24]
	cmp r0, r1
	bgt _08060026
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x18]
	cmp r0, r1
	ble _08060026
	b _08060024
_08060012:
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	blt _08060026
	ldr r3, _0806002C @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x18]
	cmp r0, r1
	bge _08060026
_08060024:
	str r1, [r2, #0x18]
_08060026:
	pop {r0}
	bx r0
	.align 2, 0
_0806002C: .4byte 0xFFFFFF00

	thumb_func_start sub_8060030
sub_8060030: @ 0x08060030
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r6, #0x28
	ldr r1, [r0, #0x18]
	asrs r5, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	b _0806006E
_08060044:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08060058
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r5
	b _0806005E
_08060058:
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r5, r0
_0806005E:
	subs r0, #1
	cmp r0, #0x26
	bhi _08060068
	movs r0, #1
	b _08060080
_08060068:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0806006E:
	cmp r4, #1
	bhi _0806007E
	adds r0, r4, #0
	bl sub_805CD20
	adds r2, r0, #0
	cmp r2, #0
	bne _08060044
_0806007E:
	movs r0, #0
_08060080:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8060088
sub_8060088: @ 0x08060088
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x28
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080600C8 @ =gCamera
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
_080600C8: .4byte gCamera

	thumb_func_start sub_80600CC
sub_80600CC: @ 0x080600CC
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x28
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

	thumb_func_start sub_80600F8
sub_80600F8: @ 0x080600F8
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_80600CC
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x28
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
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8060134
sub_8060134: @ 0x08060134
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8060148
sub_8060148: @ 0x08060148
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _080601B4 @ =sub_80601C8
	ldr r2, _080601B8 @ =0x00004040
	ldr r1, _080601BC @ =sub_80602B4
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r0, r8
	str r0, [r4, #0xc]
	mov r0, sb
	str r0, [r4, #0x10]
	movs r2, #0
	strh r5, [r4, #2]
	strh r6, [r4, #4]
	strh r2, [r4]
	strh r2, [r4, #6]
	strh r2, [r4, #8]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _080601C0 @ =0x03000040
	adds r1, r1, r0
	ldr r2, _080601C4 @ =0x01000002
	add r0, sp, #4
	bl CpuSet
	adds r0, r4, #0
	bl sub_805FEE0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080601B4: .4byte sub_80601C8
_080601B8: .4byte 0x00004040
_080601BC: .4byte sub_80602B4
_080601C0: .4byte 0x03000040
_080601C4: .4byte 0x01000002

	thumb_func_start sub_80601C8
sub_80601C8: @ 0x080601C8
	push {r4, r5, lr}
	ldr r5, _08060200 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8060204
	adds r0, r4, #0
	bl sub_8060238
	adds r0, r4, #0
	bl sub_805FF48
	adds r0, r4, #0
	bl sub_806027C
	cmp r0, #1
	bne _080601F8
	ldr r0, [r5]
	bl TaskDestroy
_080601F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08060200: .4byte gCurTask

	thumb_func_start sub_8060204
sub_8060204: @ 0x08060204
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2]
	ldr r0, _08060230 @ =0x000009FF
	cmp r1, r0
	bhi _08060216
	adds r0, r1, #0
	adds r0, #0x40
	strh r0, [r2]
_08060216:
	ldr r1, _08060234 @ =gUnknown_080D1FF8
	ldrh r0, [r2]
	lsrs r0, r0, #8
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r1, r1, #7
	ldr r0, [r2, #0x10]
	subs r0, r0, r1
	str r0, [r2, #0x10]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08060230: .4byte 0x000009FF
_08060234: .4byte gUnknown_080D1FF8

	thumb_func_start sub_8060238
sub_8060238: @ 0x08060238
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x14
	ldr r2, [r0, #0xc]
	asrs r2, r2, #8
	ldrh r1, [r0, #2]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08060278 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r0, #4]
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
_08060278: .4byte gCamera

	thumb_func_start sub_806027C
sub_806027C: @ 0x0806027C
	push {r4, lr}
	sub sp, #0x28
	movs r4, #0
	str r4, [sp, #4]
	adds r1, r0, #0
	adds r1, #0x14
	str r1, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r0, #0x10]
	str r1, [sp, #0x14]
	mov r2, sp
	ldrh r1, [r0, #2]
	movs r3, #0
	strh r1, [r2, #0xc]
	mov r1, sp
	ldrh r0, [r0, #4]
	strh r0, [r1, #0xe]
	str r4, [sp]
	mov r0, sp
	strb r3, [r0, #8]
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80602B4
sub_80602B4: @ 0x080602B4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	bl VramFree
	pop {r0}
	bx r0
