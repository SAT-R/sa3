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
	bl sub_80C7520
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
	ldr r2, _0805FD44 @ =gUnknown_03001D10
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
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FD40: .4byte gUnknown_080D1FD0
_0805FD44: .4byte gUnknown_03001D10

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
	bl sub_80C7520
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
	ldr r3, _0805FF44 @ =gUnknown_03001D10
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
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FF40: .4byte gUnknown_080D1FF0
_0805FF44: .4byte gUnknown_03001D10

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
	ldr r3, _080600C8 @ =gUnknown_03001D10
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
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080600C8: .4byte gUnknown_03001D10

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
	bl sub_80C7520
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
	ldr r3, _08060278 @ =gUnknown_03001D10
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
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08060278: .4byte gUnknown_03001D10

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

	thumb_func_start CreateEntity_Ginpe
CreateEntity_Ginpe: @ 0x080602C8
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
	ldr r0, _08060344 @ =sub_8060408
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060348 @ =sub_80607B0
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
	movs r2, #0
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	str r1, [r7, #0x18]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x1c]
	str r1, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x20]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	strb r2, [r7, #6]
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806034C
	movs r0, #0xff
	b _0806034E
	.align 2, 0
_08060344: .4byte sub_8060408
_08060348: .4byte sub_80607B0
_0806034C:
	movs r0, #1
_0806034E:
	strb r0, [r7, #8]
	movs r1, #0
	strb r1, [r7, #7]
	add r0, sp, #4
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x54
	ldr r2, _08060380 @ =0x01000002
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_8060384
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, r8
	strb r0, [r3]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060380: .4byte 0x01000002

	thumb_func_start sub_8060384
sub_8060384: @ 0x08060384
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x28
	str r0, [r4, #0x28]
	ldr r1, _08060400 @ =gUnknown_080D2004
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
	ldr r2, _08060404 @ =gUnknown_03001D10
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
	bge _080603EE
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_080603EE:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060400: .4byte gUnknown_080D2004
_08060404: .4byte gUnknown_03001D10

	thumb_func_start sub_8060408
sub_8060408: @ 0x08060408
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08060468 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r0, #0x28
	adds r6, r3, r0
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r6, #8]
	ldr r1, _0806046C @ =0x03000018
	adds r0, r3, r1
	ldr r2, _08060470 @ =0x03000010
	adds r1, r3, r2
	ldr r5, _08060474 @ =0x0300000A
	adds r2, r3, r5
	subs r5, #3
	adds r3, r3, r5
	bl sub_805CD70
	ldr r0, _08060478 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08060452
	cmp r1, #4
	beq _08060452
	adds r0, r4, #0
	bl sub_80606CC
_08060452:
	adds r0, r4, #0
	bl sub_8060774
	cmp r0, #1
	bne _0806047C
	ldr r0, _08060468 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080604E4
	.align 2, 0
_08060468: .4byte gCurTask
_0806046C: .4byte 0x03000018
_08060470: .4byte 0x03000010
_08060474: .4byte 0x0300000A
_08060478: .4byte gUnknown_030008A0
_0806047C:
	adds r0, r4, #0
	bl sub_8060704
	ldr r5, [r4, #0x18]
	ldr r0, [r4, #0x20]
	cmp r5, r0
	ble _08060490
	ldr r0, [r4, #0x24]
	cmp r5, r0
	blt _080604B0
_08060490:
	ldr r1, _080604A4 @ =gUnknown_080D2004
	ldrh r0, [r1, #8]
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	ldr r0, _080604A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080604AC @ =sub_8060654
	str r0, [r1, #8]
	b _080604E4
	.align 2, 0
_080604A4: .4byte gUnknown_080D2004
_080604A8: .4byte gCurTask
_080604AC: .4byte sub_8060654
_080604B0:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x59
	bls _080604E4
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	movs r6, #1
	cmp r0, #0
	beq _080604CE
	movs r6, #0
_080604CE:
	ldr r1, [r4, #0x1c]
	ldr r0, _080604EC @ =0xFFFFEA00
	adds r1, r1, r0
	ldrh r2, [r4, #0xa]
	ldrh r3, [r4, #0xc]
	str r6, [sp]
	adds r0, r5, #0
	bl sub_80607C4
	movs r0, #0
	strb r0, [r4, #6]
_080604E4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080604EC: .4byte 0xFFFFEA00

	thumb_func_start sub_80604F0
sub_80604F0: @ 0x080604F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	str r1, [r4, #0x18]
	ldr r2, _08060550 @ =gUnknown_080D2014
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r3, _08060554 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060550: .4byte gUnknown_080D2014
_08060554: .4byte gUnknown_03001D10

	thumb_func_start sub_8060558
sub_8060558: @ 0x08060558
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0x10]
	asrs r7, r1, #8
	ldr r1, [r0, #0x14]
	asrs r6, r1, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x18
	mov r8, r0
	movs r5, #0
_0806057C:
	cmp r5, #0
	bne _0806058C
	ldr r0, _08060588 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08060596
	.align 2, 0
_08060588: .4byte gUnknown_030008A0
_0806058C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08060596:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080605E0 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _080605E4
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _080605E4
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080605DC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_080605DC:
	movs r0, #1
	b _080605F0
	.align 2, 0
_080605E0: .4byte gUnknown_030015C0
_080605E4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0806057C
	movs r0, #0
_080605F0:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80605FC
sub_80605FC: @ 0x080605FC
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r0, #2
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _08060616
	adds r1, r0, #0
	adds r0, r1, #4
	b _0806061C
_08060616:
	movs r1, #1
	ldrsb r1, [r3, r1]
	subs r0, r1, #4
_0806061C:
	lsls r0, r0, #0x17
	lsrs r5, r0, #0x10
	adds r4, r1, #0
	ldrh r0, [r3, #0xc]
	adds r0, #0x10
	strh r0, [r3, #0xc]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	ldrh r0, [r3, #0xa]
	adds r0, #1
	strh r0, [r3, #0xa]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	str r0, [r3, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8060654
sub_8060654: @ 0x08060654
	push {r4, r5, r6, r7, lr}
	ldr r7, _0806067C @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r6, r4
	adds r0, r4, #0
	bl sub_8060704
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_8060774
	cmp r0, #1
	bne _08060680
	ldr r0, [r7]
	bl TaskDestroy
	b _080606BA
	.align 2, 0
_0806067C: .4byte gCurTask
_08060680:
	cmp r5, #0
	bne _080606BA
	ldr r0, _0806069C @ =0x03000028
	adds r4, r6, r0
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _080606A4
	ldr r0, _080606A0 @ =0xFFFFFBFF
	ands r1, r0
	b _080606A6
	.align 2, 0
_0806069C: .4byte 0x03000028
_080606A0: .4byte 0xFFFFFBFF
_080606A4:
	orrs r1, r2
_080606A6:
	str r1, [r4, #8]
	ldr r1, _080606C0 @ =gUnknown_080D2004
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	ldr r0, _080606C4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080606C8 @ =sub_8060408
	str r0, [r1, #8]
_080606BA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080606C0: .4byte gUnknown_080D2004
_080606C4: .4byte gCurTask
_080606C8: .4byte sub_8060408

	thumb_func_start sub_80606CC
sub_80606CC: @ 0x080606CC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080606EE
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x24]
	cmp r0, r1
	bgt _08060700
	adds r0, #0x80
	str r0, [r2, #0x18]
	cmp r0, r1
	ble _08060700
	b _080606FE
_080606EE:
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	blt _08060700
	subs r0, #0x80
	str r0, [r2, #0x18]
	cmp r0, r1
	bge _08060700
_080606FE:
	str r1, [r2, #0x18]
_08060700:
	pop {r0}
	bx r0

	thumb_func_start sub_8060704
sub_8060704: @ 0x08060704
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x28
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08060744 @ =gUnknown_03001D10
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
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08060744: .4byte gUnknown_03001D10

	thumb_func_start sub_8060748
sub_8060748: @ 0x08060748
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

	thumb_func_start sub_8060774
sub_8060774: @ 0x08060774
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8060748
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

	thumb_func_start sub_80607B0
sub_80607B0: @ 0x080607B0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80607C4
sub_80607C4: @ 0x080607C4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r0, [sp, #0x24]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08060848 @ =sub_806085C
	ldr r2, _0806084C @ =0x00004040
	ldr r1, _08060850 @ =sub_8060978
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r0, sb
	str r0, [r4, #0x10]
	mov r0, sl
	str r0, [r4, #0x14]
	movs r0, #0
	movs r2, #0
	strh r5, [r4, #4]
	strh r6, [r4, #6]
	strb r0, [r4]
	mov r0, r8
	strb r0, [r4, #1]
	movs r0, #0xff
	strb r0, [r4, #2]
	strh r2, [r4, #0xa]
	strh r2, [r4, #0xc]
	strh r2, [r4, #8]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _08060854 @ =0x03000044
	adds r1, r1, r0
	ldr r2, _08060858 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_80604F0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060848: .4byte sub_806085C
_0806084C: .4byte 0x00004040
_08060850: .4byte sub_8060978
_08060854: .4byte 0x03000044
_08060858: .4byte 0x01000002

	thumb_func_start sub_806085C
sub_806085C: @ 0x0806085C
	push {r4, r5, r6, r7, lr}
	ldr r7, _080608A4 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	movs r6, #0
	adds r0, r4, #0
	bl sub_80605FC
	adds r0, r4, #0
	bl sub_80608FC
	adds r0, r4, #0
	bl sub_8060558
	cmp r0, #1
	bne _08060884
	movs r6, #1
_08060884:
	cmp r6, #1
	bne _080608B4
	ldr r0, _080608A8 @ =0x03000018
	adds r1, r5, r0
	ldr r2, _080608AC @ =gUnknown_080D2014
	ldrh r0, [r2, #8]
	movs r3, #0
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r3, [r1, #8]
	ldr r1, [r7]
	ldr r0, _080608B0 @ =sub_80608CC
	str r0, [r1, #8]
	b _080608C4
	.align 2, 0
_080608A4: .4byte gCurTask
_080608A8: .4byte 0x03000018
_080608AC: .4byte gUnknown_080D2014
_080608B0: .4byte sub_80608CC
_080608B4:
	adds r0, r4, #0
	bl sub_8060940
	cmp r0, #1
	bne _080608C4
	ldr r0, [r7]
	bl TaskDestroy
_080608C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80608CC
sub_80608CC: @ 0x080608CC
	push {r4, r5, r6, lr}
	ldr r6, _080608F8 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80608FC
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_8060558
	cmp r5, #0
	bne _080608F2
	ldr r0, [r6]
	bl TaskDestroy
_080608F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080608F8: .4byte gCurTask

	thumb_func_start sub_80608FC
sub_80608FC: @ 0x080608FC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0806093C @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806093C: .4byte gUnknown_03001D10

	thumb_func_start sub_8060940
sub_8060940: @ 0x08060940
	push {r4, lr}
	sub sp, #0x28
	movs r4, #0
	str r4, [sp, #4]
	adds r1, r0, #0
	adds r1, #0x18
	str r1, [sp, #0x1c]
	ldr r1, [r0, #0x10]
	str r1, [sp, #0x10]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0x14]
	mov r2, sp
	ldrh r1, [r0, #4]
	movs r3, #0
	strh r1, [r2, #0xc]
	mov r1, sp
	ldrh r0, [r0, #6]
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

	thumb_func_start sub_8060978
sub_8060978: @ 0x08060978
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_806098C
sub_806098C: @ 0x0806098C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0x10
	bl VramMalloc
	adds r7, r4, #0
	adds r7, #0x20
	str r0, [r4, #0x20]
	ldr r1, _08060A08 @ =gUnknown_080D2024
	ldrh r0, [r1]
	movs r6, #0
	movs r3, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08060A0C @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r3, [r7, #0xe]
	strh r3, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r6, [r7, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r7, #8]
	cmp r5, #2
	bne _080609F6
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r7, #8]
_080609F6:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	adds r0, r7, #0
	bl sub_80BF44C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060A08: .4byte gUnknown_080D2024
_08060A0C: .4byte gUnknown_03001D10

	thumb_func_start sub_8060A10
sub_8060A10: @ 0x08060A10
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r7, _08060A54 @ =gCurTask
	ldr r0, [r7]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r0, #0x20
	adds r5, r3, r0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #8]
	ldr r1, _08060A58 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
	adds r0, r4, #0
	bl sub_8061054
	cmp r0, #1
	bne _08060A5C
	ldr r0, [r7]
	bl TaskDestroy
	b _08060AB0
	.align 2, 0
_08060A54: .4byte gCurTask
_08060A58: .4byte 0x03000018
_08060A5C:
	adds r0, r4, #0
	bl sub_8061010
	adds r2, r0, #0
	ldr r0, _08060AB8 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08060AB0
	cmp r1, #4
	beq _08060AB0
	cmp r2, #0
	bne _08060AB0
	ldr r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	movs r6, #0xff
	cmp r0, #0
	beq _08060A8A
	movs r6, #1
_08060A8A:
	ldr r1, _08060ABC @ =gUnknown_080D2024
	ldrh r0, [r1, #8]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r5, #0x1a]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, _08060AC0 @ =0xFFFFE800
	adds r1, r1, r2
	ldrh r2, [r4, #0xa]
	ldrh r3, [r4, #0xc]
	lsls r4, r6, #0x18
	asrs r4, r4, #0x18
	str r4, [sp]
	bl sub_80610D0
	ldr r1, [r7]
	ldr r0, _08060AC4 @ =sub_8060AC8
	str r0, [r1, #8]
_08060AB0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060AB8: .4byte gUnknown_030008A0
_08060ABC: .4byte gUnknown_080D2024
_08060AC0: .4byte 0xFFFFE800
_08060AC4: .4byte sub_8060AC8

	thumb_func_start sub_8060AC8
sub_8060AC8: @ 0x08060AC8
	push {r4, r5, r6, lr}
	ldr r6, _08060AFC @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08060B00 @ =0x03000018
	adds r0, r5, r1
	subs r1, #0xe
	adds r2, r5, r1
	subs r1, #2
	adds r3, r5, r1
	movs r1, #0
	bl sub_805CD70
	adds r0, r4, #0
	bl sub_8061054
	cmp r0, #1
	bne _08060B04
	ldr r0, [r6]
	bl TaskDestroy
	b _08060B48
	.align 2, 0
_08060AFC: .4byte gCurTask
_08060B00: .4byte 0x03000018
_08060B04:
	adds r0, r4, #0
	bl sub_8061010
	adds r2, r0, #0
	ldr r0, _08060B50 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08060B48
	cmp r1, #4
	beq _08060B48
	cmp r2, #0
	bne _08060B28
	ldrb r0, [r4, #7]
	adds r0, #1
	strb r0, [r4, #7]
_08060B28:
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #6]
	cmp r0, r1
	blo _08060B48
	ldr r0, _08060B54 @ =0x03000020
	adds r2, r5, r0
	ldr r1, _08060B58 @ =gUnknown_080D2024
	ldrh r0, [r1]
	movs r3, #0
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	strb r3, [r4, #7]
	ldr r1, [r6]
	ldr r0, _08060B5C @ =sub_8060A10
	str r0, [r1, #8]
_08060B48:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060B50: .4byte gUnknown_030008A0
_08060B54: .4byte 0x03000020
_08060B58: .4byte gUnknown_080D2024
_08060B5C: .4byte sub_8060A10

	thumb_func_start sub_8060B60
sub_8060B60: @ 0x08060B60
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	str r1, [r4, #0x18]
	ldr r2, _08060BC0 @ =gUnknown_080D2034
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r3, _08060BC4 @ =gUnknown_03001D10
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060BC0: .4byte gUnknown_080D2034
_08060BC4: .4byte gUnknown_03001D10

	thumb_func_start sub_8060BC8
sub_8060BC8: @ 0x08060BC8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _08060C50 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	movs r5, #0
	adds r0, r4, #0
	bl sub_80611A0
	ldr r0, _08060C54 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08060C48
	cmp r1, #4
	beq _08060C48
	adds r0, r4, #0
	bl sub_8060D0C
	adds r0, r4, #0
	bl sub_8060C68
	cmp r0, #1
	bne _08060C04
	movs r5, #1
_08060C04:
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldrh r2, [r4, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	movs r4, #0
	str r4, [sp]
	ldr r2, _08060C58 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	cmp r0, #0
	bge _08060C2E
	movs r5, #1
_08060C2E:
	cmp r5, #1
	bne _08060C48
	ldr r0, _08060C5C @ =0x03000018
	adds r1, r6, r0
	ldr r2, _08060C60 @ =gUnknown_080D2034
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r4, [r1, #8]
	ldr r1, [r7]
	ldr r0, _08060C64 @ =sub_8061170
	str r0, [r1, #8]
_08060C48:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060C50: .4byte gCurTask
_08060C54: .4byte gUnknown_030008A0
_08060C58: .4byte sub_805217C
_08060C5C: .4byte 0x03000018
_08060C60: .4byte gUnknown_080D2034
_08060C64: .4byte sub_8061170

	thumb_func_start sub_8060C68
sub_8060C68: @ 0x08060C68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0x10]
	asrs r7, r1, #8
	ldr r1, [r0, #0x14]
	asrs r6, r1, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x18
	mov r8, r0
	movs r5, #0
_08060C8C:
	cmp r5, #0
	bne _08060C9C
	ldr r0, _08060C98 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08060CA6
	.align 2, 0
_08060C98: .4byte gUnknown_030008A0
_08060C9C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08060CA6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08060CF0 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08060CF4
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08060CF4
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08060CEC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_08060CEC:
	movs r0, #1
	b _08060D00
	.align 2, 0
_08060CF0: .4byte gUnknown_030015C0
_08060CF4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08060C8C
	movs r0, #0
_08060D00:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8060D0C
sub_8060D0C: @ 0x08060D0C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r0, #2
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x19
	lsrs r4, r0, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _08060D26
	adds r1, r0, #0
	adds r0, r1, #4
	b _08060D2C
_08060D26:
	movs r1, #1
	ldrsb r1, [r3, r1]
	subs r0, r1, #4
_08060D2C:
	lsls r0, r0, #0x17
	lsrs r5, r0, #0x10
	adds r2, r1, #0
	ldrh r0, [r3, #0xc]
	adds r0, #0x10
	strh r0, [r3, #0xc]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _08060D5C
	ldrh r0, [r3, #0xa]
	movs r6, #0xa
	ldrsh r1, [r3, r6]
	cmp r1, #0
	bgt _08060D58
	cmp r1, #0
	bge _08060D5C
_08060D58:
	adds r0, r0, r2
	strh r0, [r3, #0xa]
_08060D5C:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r3, #0xa]
	adds r1, r1, r0
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	str r0, [r3, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Yukigasen_Right
CreateEntity_Yukigasen_Right: @ 0x08060D80
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08060E08 @ =sub_8060A10
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060E0C @ =sub_80610BC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r8, r1
	add r8, r4
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, r8
	movs r1, #0x3c
	mov r2, sl
	mov r3, sb
	bl sub_8060FE0
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08060E10 @ =0x0300004C
	adds r4, r4, r0
	ldr r2, _08060E14 @ =0x01000002
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_80C7520
	mov r0, r8
	movs r1, #2
	bl sub_806098C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060E08: .4byte sub_8060A10
_08060E0C: .4byte sub_80610BC
_08060E10: .4byte 0x0300004C
_08060E14: .4byte 0x01000002

	thumb_func_start CreateEntity_Yukigasen_Left
CreateEntity_Yukigasen_Left: @ 0x08060E18
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08060EA0 @ =sub_8060A10
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060EA4 @ =sub_80610BC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r8, r1
	add r8, r4
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, r8
	movs r1, #0x3c
	mov r2, sl
	mov r3, sb
	bl sub_8060FE0
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08060EA8 @ =0x0300004C
	adds r4, r4, r0
	ldr r2, _08060EAC @ =0x01000002
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_80C7520
	mov r0, r8
	movs r1, #3
	bl sub_806098C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060EA0: .4byte sub_8060A10
_08060EA4: .4byte sub_80610BC
_08060EA8: .4byte 0x0300004C
_08060EAC: .4byte 0x01000002

	thumb_func_start CreateEntity_Yukigasen_Right_HighCooldown
CreateEntity_Yukigasen_Right_HighCooldown: @ 0x08060EB0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08060F38 @ =sub_8060A10
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060F3C @ =sub_80610BC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r8, r1
	add r8, r4
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	mov r2, sl
	mov r3, sb
	bl sub_8060FE0
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08060F40 @ =0x0300004C
	adds r4, r4, r0
	ldr r2, _08060F44 @ =0x01000002
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_80C7520
	mov r0, r8
	movs r1, #2
	bl sub_806098C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060F38: .4byte sub_8060A10
_08060F3C: .4byte sub_80610BC
_08060F40: .4byte 0x0300004C
_08060F44: .4byte 0x01000002

	thumb_func_start CreateEntity_Yukigasen_Left_HighCooldown
CreateEntity_Yukigasen_Left_HighCooldown: @ 0x08060F48
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	mov sl, r0
	mov sb, r1
	adds r5, r2, #0
	adds r6, r3, #0
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08060FD0 @ =sub_8060A10
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060FD4 @ =sub_80610BC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov r8, r1
	add r8, r4
	str r5, [sp]
	str r6, [sp, #4]
	mov r0, r8
	movs r1, #0x78
	mov r2, sl
	mov r3, sb
	bl sub_8060FE0
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08060FD8 @ =0x0300004C
	adds r4, r4, r0
	ldr r2, _08060FDC @ =0x01000002
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_80C7520
	mov r0, r8
	movs r1, #3
	bl sub_806098C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sl
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060FD0: .4byte sub_8060A10
_08060FD4: .4byte sub_80610BC
_08060FD8: .4byte 0x0300004C
_08060FDC: .4byte 0x01000002

	thumb_func_start sub_8060FE0
sub_8060FE0: @ 0x08060FE0
	push {r4, r5, lr}
	ldr r5, [sp, #0xc]
	ldr r4, [sp, #0x10]
	strb r4, [r0, #4]
	str r2, [r0]
	ldrb r4, [r2]
	strb r4, [r0, #5]
	movs r4, #0
	strh r3, [r0, #0xa]
	strh r5, [r0, #0xc]
	ldrb r3, [r2]
	lsls r3, r3, #0xb
	str r3, [r0, #0x18]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0xb
	str r2, [r0, #0x1c]
	str r3, [r0, #0x10]
	str r2, [r0, #0x14]
	strb r4, [r0, #8]
	strb r1, [r0, #6]
	strb r4, [r0, #7]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8061010
sub_8061010: @ 0x08061010
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x20
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08061050 @ =gUnknown_03001D10
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
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08061050: .4byte gUnknown_03001D10

	thumb_func_start sub_8061054
sub_8061054: @ 0x08061054
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8061090
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
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8061090
sub_8061090: @ 0x08061090
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

	thumb_func_start sub_80610BC
sub_80610BC: @ 0x080610BC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x20]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80610D0
sub_80610D0: @ 0x080610D0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r6, r2, #0
	mov r8, r3
	ldr r5, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0806115C @ =sub_8060BC8
	ldr r2, _08061160 @ =0x00004040
	ldr r1, _08061164 @ =sub_80611E4
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r3, sb
	str r3, [r4, #0x10]
	mov r0, sl
	str r0, [r4, #0x14]
	movs r0, #0
	movs r2, #0
	strh r6, [r4, #4]
	mov r3, r8
	strh r3, [r4, #6]
	strb r0, [r4]
	strb r5, [r4, #1]
	strb r0, [r4, #2]
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	strh r2, [r4, #0xc]
	strh r2, [r4, #8]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _08061168 @ =0x03000044
	adds r1, r1, r0
	ldr r2, _0806116C @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_8060B60
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806115C: .4byte sub_8060BC8
_08061160: .4byte 0x00004040
_08061164: .4byte sub_80611E4
_08061168: .4byte 0x03000044
_0806116C: .4byte 0x01000002

	thumb_func_start sub_8061170
sub_8061170: @ 0x08061170
	push {r4, r5, r6, lr}
	ldr r6, _0806119C @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80611A0
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_8060C68
	cmp r5, #0
	bne _08061196
	ldr r0, [r6]
	bl TaskDestroy
_08061196:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806119C: .4byte gCurTask

	thumb_func_start sub_80611A0
sub_80611A0: @ 0x080611A0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080611E0 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080611E0: .4byte gUnknown_03001D10

	thumb_func_start sub_80611E4
sub_80611E4: @ 0x080611E4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Hariisen
CreateEntity_Hariisen: @ 0x080611F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
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
	ldr r0, _0806131C @ =sub_8061474
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08061320 @ =sub_80625E8
	str r1, [sp]
	movs r1, #0xec
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	strb r4, [r7, #4]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strh r5, [r7, #6]
	strh r6, [r7, #8]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #0xb
	str r0, [r7, #0x24]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x28]
	movs r2, #0
	movs r0, #6
	add r0, sp
	mov sl, r0
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0xc]
	ldr r0, _08061324 @ =0x0300002C
	adds r6, r1, r0
	movs r3, #0
	adds r0, #4
	adds r5, r1, r0
	subs r0, #0x20
	adds r4, r1, r0
_0806126A:
	lsls r1, r2, #3
	adds r0, r6, r1
	str r3, [r0]
	adds r1, r5, r1
	str r3, [r1]
	lsls r0, r2, #1
	adds r0, r4, r0
	strh r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0806126A
	movs r2, #0
	movs r1, #0x88
	adds r1, r1, r7
	mov ip, r1
	movs r0, #0xb8
	adds r0, r0, r7
	mov sb, r0
	adds r1, r7, #0
	adds r1, #0xe8
	str r1, [sp, #0x10]
	adds r6, r7, #0
	adds r6, #0x3c
	movs r3, #0
	adds r5, r7, #0
	adds r5, #0x40
	adds r4, r7, #0
	adds r4, #0x14
_080612A6:
	lsls r1, r2, #3
	adds r0, r6, r1
	str r3, [r0]
	adds r1, r5, r1
	str r3, [r1]
	lsls r0, r2, #1
	adds r0, r4, r0
	strh r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080612A6
	ldr r0, [r7, #0x24]
	str r0, [r7, #0x1c]
	ldr r0, [r7, #0x28]
	str r0, [r7, #0x20]
	movs r4, #0
	strh r4, [r7, #0xa]
	strh r4, [r7, #0xc]
	strh r4, [r7, #0xe]
	add r0, sp, #4
	strh r4, [r0]
	ldr r5, _08061328 @ =0x01000002
	mov r1, ip
	adds r2, r5, #0
	bl sub_80C7520
	mov r2, sl
	strh r4, [r2]
	mov r0, sl
	mov r1, sb
	adds r2, r5, #0
	bl sub_80C7520
	ldr r0, [sp, #0xc]
	strh r4, [r0]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	adds r2, r5, #0
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_806132C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, r8
	strb r0, [r2]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806131C: .4byte sub_8061474
_08061320: .4byte sub_80625E8
_08061324: .4byte 0x0300002C
_08061328: .4byte 0x01000002

	thumb_func_start sub_806132C
sub_806132C: @ 0x0806132C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0x12
	bl VramMalloc
	adds r5, r0, #0
	adds r2, r7, #0
	adds r2, #0x5c
	str r5, [r7, #0x5c]
	ldr r4, _0806146C @ =gUnknown_080D2044
	ldr r0, [r4, #4]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4]
	movs r1, #0
	mov r8, r1
	strh r0, [r2, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08061470 @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r0, r8
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r3, #0
	strb r3, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sl, r0
	str r0, [r2, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	str r1, [r2, #0x20]
	adds r0, r2, #0
	bl sub_80BF44C
	adds r2, r7, #0
	adds r2, #0x8c
	str r5, [r2]
	ldr r0, [r4, #0x1c]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4, #0x18]
	strh r0, [r2, #0xc]
	ldrb r0, [r4, #0x1a]
	strb r0, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08061470 @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r6, #0x98
	lsls r6, r6, #3
	strh r6, [r2, #0x14]
	mov r0, r8
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r3, #0
	strb r3, [r2, #0x1f]
	mov r0, sl
	str r0, [r2, #8]
	mov r1, sb
	str r1, [r2, #0x20]
	adds r0, r2, #0
	bl sub_80BF44C
	adds r2, r7, #0
	adds r2, #0xbc
	str r5, [r2]
	ldrh r0, [r4, #0x20]
	strh r0, [r2, #0xc]
	adds r4, #0x22
	ldrb r0, [r4]
	strb r0, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08061470 @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	strh r6, [r2, #0x14]
	mov r0, r8
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	movs r1, #0x10
	strb r1, [r2, #0x1c]
	movs r3, #0
	strb r3, [r2, #0x1f]
	mov r0, sl
	str r0, [r2, #8]
	mov r1, sb
	str r1, [r2, #0x20]
	adds r0, r2, #0
	bl sub_80BF44C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806146C: .4byte gUnknown_080D2044
_08061470: .4byte gUnknown_03001D10

	thumb_func_start sub_8061474
sub_8061474: @ 0x08061474
	push {r4, r5, r6, r7, lr}
	ldr r7, _080614F4 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_80617E0
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_8061AC8
	adds r0, r4, #0
	bl sub_806253C
	adds r0, r4, #0
	bl sub_8061BD4
	ldr r0, _080614F8 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08061510
	cmp r1, #4
	beq _08061510
	adds r0, r4, #0
	bl sub_806172C
	cmp r0, #1
	bne _08061510
	cmp r6, #1
	bne _08061510
	ldr r0, _080614FC @ =0x0300005C
	adds r1, r5, r0
	ldr r2, _08061500 @ =gUnknown_080D2044
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0xb
	orrs r0, r2
	str r0, [r1, #8]
	ldr r0, _08061504 @ =0x03000094
	adds r1, r5, r0
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	ldr r0, _08061508 @ =0x030000C4
	adds r1, r5, r0
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
	ldr r1, [r7]
	ldr r0, _0806150C @ =sub_806152C
	str r0, [r1, #8]
	b _08061522
	.align 2, 0
_080614F4: .4byte gCurTask
_080614F8: .4byte gUnknown_030008A0
_080614FC: .4byte 0x0300005C
_08061500: .4byte gUnknown_080D2044
_08061504: .4byte 0x03000094
_08061508: .4byte 0x030000C4
_0806150C: .4byte sub_806152C
_08061510:
	adds r0, r4, #0
	bl sub_8062580
	cmp r0, #1
	bne _08061522
	ldr r0, _08061528 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08061522:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061528: .4byte gCurTask

	thumb_func_start sub_806152C
sub_806152C: @ 0x0806152C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08061648 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	adds r0, r5, #0
	movs r1, #1
	bl sub_80617E0
	adds r7, r0, #0
	adds r0, r5, #0
	bl sub_8061AC8
	adds r0, r5, #0
	bl sub_806253C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_8061BD4
	adds r0, r5, #0
	bl sub_80619EC
	ldr r0, _0806164C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08061578
	b _0806168A
_08061578:
	cmp r1, #4
	bne _0806157E
	b _0806168A
_0806157E:
	cmp r4, #0
	bne _08061678
	cmp r7, #1
	bne _08061678
	ldrh r0, [r5, #0xa]
	adds r0, #1
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x50
	bne _08061678
	ldr r0, _08061650 @ =0x0300005C
	adds r2, r6, r0
	ldr r1, _08061654 @ =gUnknown_080D2044
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r2, #0x1a]
	ldr r0, [r2, #8]
	ldr r1, _08061658 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r2, #8]
	ldr r0, [r5, #0x24]
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	str r0, [sp, #8]
	add r1, sp, #4
	ldrh r0, [r5, #6]
	strh r0, [r1, #8]
	ldrh r0, [r5, #8]
	strh r0, [r1, #0xa]
	ldr r1, _0806165C @ =0x03000010
	adds r4, r6, r1
	str r4, [sp, #0x10]
	adds r1, #4
	adds r0, r6, r1
	str r0, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	adds r3, r4, #0
	bl sub_8061D3C
	movs r3, #0
	ldr r0, _08061660 @ =0x0300003C
	adds r0, r0, r6
	mov ip, r0
	ldr r1, _08061664 @ =0x03000040
	adds r1, r1, r6
	mov r8, r1
	ldr r0, _08061668 @ =0x03000014
	adds r0, r0, r6
	mov sb, r0
	ldr r1, _0806166C @ =0x0300002C
	adds r7, r6, r1
	movs r2, #0
	ldr r0, _08061670 @ =0x03000030
	adds r6, r6, r0
_080615F4:
	lsls r1, r3, #3
	adds r0, r7, r1
	str r2, [r0]
	adds r1, r6, r1
	str r2, [r1]
	lsls r0, r3, #1
	adds r0, r4, r0
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _080615F4
	movs r3, #0
	ldr r1, _08061648 @ =gCurTask
	mov sl, r1
	mov r7, ip
	movs r2, #0
	mov r6, r8
	mov r4, sb
_0806161C:
	lsls r1, r3, #3
	adds r0, r7, r1
	str r2, [r0]
	adds r1, r6, r1
	str r2, [r1]
	lsls r0, r3, #1
	adds r0, r4, r0
	strh r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0806161C
	movs r0, #0
	strh r0, [r5, #0xa]
	strh r0, [r5, #0xc]
	strh r0, [r5, #0xe]
	mov r1, sl
	ldr r0, [r1]
	ldr r1, _08061674 @ =sub_80624E4
	str r1, [r0, #8]
	b _0806168A
	.align 2, 0
_08061648: .4byte gCurTask
_0806164C: .4byte gUnknown_030008A0
_08061650: .4byte 0x0300005C
_08061654: .4byte gUnknown_080D2044
_08061658: .4byte 0xFFFBFFFF
_0806165C: .4byte 0x03000010
_08061660: .4byte 0x0300003C
_08061664: .4byte 0x03000040
_08061668: .4byte 0x03000014
_0806166C: .4byte 0x0300002C
_08061670: .4byte 0x03000030
_08061674: .4byte sub_80624E4
_08061678:
	adds r0, r5, #0
	bl sub_8062580
	cmp r0, #1
	bne _0806168A
	ldr r0, _0806169C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0806168A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806169C: .4byte gCurTask

	thumb_func_start sub_80616A0
sub_80616A0: @ 0x080616A0
	push {r4, r5, lr}
	ldr r5, _08061700 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_806253C
	adds r0, r4, #0
	bl sub_8061AC8
	ldr r0, _08061704 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08061722
	cmp r1, #4
	beq _08061722
	ldrh r0, [r4, #0xa]
	ldr r1, _08061708 @ =0x0000012B
	cmp r0, r1
	bhi _080616E0
	adds r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _08061710
_080616E0:
	adds r0, r4, #0
	bl sub_8061BD4
	adds r0, r4, #0
	movs r1, #0
	bl sub_80617E0
	cmp r0, #1
	bne _08061710
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r1, [r5]
	ldr r0, _0806170C @ =sub_8061474
	str r0, [r1, #8]
	b _08061722
	.align 2, 0
_08061700: .4byte gCurTask
_08061704: .4byte gUnknown_030008A0
_08061708: .4byte 0x0000012B
_0806170C: .4byte sub_8061474
_08061710:
	adds r0, r4, #0
	bl sub_8062580
	cmp r0, #1
	bne _08061722
	ldr r0, _08061728 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08061722:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08061728: .4byte gCurTask

	thumb_func_start sub_806172C
sub_806172C: @ 0x0806172C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r0, #0
	mov sb, r0
	movs r7, #0xf0
	lsls r7, r7, #7
	b _080617C2
_08061740:
	ldrh r0, [r6, #8]
	lsls r1, r0, #0x10
	ldr r2, [r5, #0x14]
	subs r4, r2, r1
	ldr r1, [r6, #0x28]
	subs r3, r4, r1
	mov ip, r0
	mov r8, r2
	adds r2, r1, #0
	cmp r3, #0
	blt _0806175C
	cmp r3, r7
	ble _08061762
	b _0806177E
_0806175C:
	subs r0, r1, r4
	cmp r0, r7
	bgt _0806177E
_08061762:
	ldrh r0, [r6, #6]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r1, r1, r0
	ldr r0, [r6, #0x24]
	subs r3, r1, r0
	cmp r3, #0
	blt _08061778
	cmp r3, r7
	ble _080617B4
	b _0806177E
_08061778:
	subs r0, r0, r1
	cmp r0, r7
	ble _080617B4
_0806177E:
	mov r1, ip
	lsls r0, r1, #0x10
	mov r1, r8
	subs r0, r1, r0
	subs r1, r0, r2
	cmp r1, #0
	blt _08061792
	cmp r1, r7
	ble _08061798
	b _080617B8
_08061792:
	subs r0, r2, r0
	cmp r0, r7
	bgt _080617B8
_08061798:
	ldrh r0, [r6, #6]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r1, r1, r0
	ldr r0, [r6, #0x24]
	subs r2, r1, r0
	cmp r2, #0
	blt _080617AE
	cmp r2, r7
	ble _080617B4
	b _080617B8
_080617AE:
	subs r0, r0, r1
	cmp r0, r7
	bgt _080617B8
_080617B4:
	movs r0, #1
	b _080617D4
_080617B8:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080617C2:
	mov r0, sb
	cmp r0, #1
	bhi _080617D2
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _08061740
_080617D2:
	movs r0, #0
_080617D4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80617E0
sub_80617E0: @ 0x080617E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	movs r0, #6
	mov sl, r0
	movs r1, #0
	mov sb, r1
	movs r7, #0
_080617FE:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsls r0, r7, #1
	mov r8, r0
	ldr r0, _0806189C @ =gUnknown_080D20AC
	add r0, r8
	ldrb r2, [r0]
	lsls r0, r2, #3
	ldr r1, _080618A0 @ =gUnknown_082B48B4
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [sp, #8]
	lsls r2, r2, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r1, _080618A0 @ =gUnknown_082B48B4
	adds r2, r2, r1
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r0, r1, r0
	str r0, [sp, #0xc]
	cmp r7, #0
	beq _08061848
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0xc]
_08061848:
	lsls r0, r7, #3
	mov r2, ip
	adds r2, #0x30
	adds r2, r2, r0
	ldr r3, [sp, #4]
	str r3, [r2]
	mov r4, ip
	adds r4, #0x2c
	adds r4, r4, r0
	ldr r5, [sp]
	str r5, [r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r3
	mov r0, sl
	asrs r1, r0
	mov r6, ip
	adds r6, #0x10
	mov r0, r8
	adds r3, r6, r0
	ldrh r0, [r3]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	mov r0, sl
	asrs r1, r0
	ldrh r0, [r3]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, [sp, #0x10]
	cmp r1, #1
	bne _080618A4
	movs r2, #0x48
	movs r1, #1
	b _080618A8
	.align 2, 0
_0806189C: .4byte gUnknown_080D20AC
_080618A0: .4byte gUnknown_082B48B4
_080618A4:
	movs r2, #0x40
	movs r1, #4
_080618A8:
	lsls r0, r7, #1
	adds r6, r6, r0
	ldrh r3, [r6]
	lsrs r0, r3, #6
	cmp r0, r2
	bhs _080618C0
	adds r1, #3
	movs r0, #1
	lsls r0, r1
	adds r0, r3, r0
	strh r0, [r6]
	b _080618CE
_080618C0:
	lsls r0, r2, #6
	strh r0, [r6]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080618CE:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _080617FE
	movs r7, #0
	mov r0, ip
	adds r0, #0x40
	str r0, [sp, #0x18]
	mov r1, ip
	adds r1, #0x3c
	str r1, [sp, #0x14]
	movs r0, #0x14
	add r0, ip
	mov r8, r0
	ldr r1, _08061994 @ =gUnknown_082B48B4
	mov ip, r1
_080618F0:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsls r3, r7, #1
	ldr r1, _08061998 @ =gUnknown_080D20B0
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	add r1, ip
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #3
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0xc]
	adds r6, r3, #0
	cmp r7, #1
	bhi _08061936
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r2, r1
	str r0, [sp, #8]
_08061936:
	cmp r7, #0
	beq _0806193E
	cmp r7, #3
	bne _08061948
_0806193E:
	ldr r0, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0xc]
_08061948:
	lsls r2, r7, #3
	ldr r0, [sp, #0x18]
	adds r3, r0, r2
	ldr r0, [sp, #4]
	str r0, [r3]
	ldr r1, [sp, #0x14]
	adds r2, r1, r2
	ldr r5, [sp]
	str r5, [r2]
	ldr r1, [sp, #0xc]
	subs r1, r1, r0
	mov r0, sl
	asrs r1, r0
	mov r0, r8
	adds r4, r0, r6
	ldrh r0, [r4]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	mov r0, sl
	asrs r1, r0
	ldrh r0, [r4]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #0x10]
	cmp r1, #1
	bne _0806199C
	movs r2, #0x54
	movs r1, #1
	b _080619A0
	.align 2, 0
_08061994: .4byte gUnknown_082B48B4
_08061998: .4byte gUnknown_080D20B0
_0806199C:
	movs r2, #0x40
	movs r1, #4
_080619A0:
	mov r0, r8
	adds r3, r0, r6
	ldrh r4, [r3]
	lsrs r0, r4, #6
	cmp r0, r2
	bhs _080619B8
	adds r1, #3
	movs r0, #1
	lsls r0, r1
	adds r0, r4, r0
	strh r0, [r3]
	b _080619C6
_080619B8:
	lsls r0, r2, #6
	strh r0, [r3]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080619C6:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _080618F0
	mov r1, sb
	cmp r1, #6
	beq _080619DA
	movs r0, #0
	b _080619DC
_080619DA:
	movs r0, #1
_080619DC:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80619EC
sub_80619EC: @ 0x080619EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	ldr r2, _08061A38 @ =gUnknown_080D20B8
	ldrh r1, [r4, #0xe]
	adds r1, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1]
	cmp r0, r1
	bls _08061AB8
	movs r0, #0
	strh r0, [r4, #0xc]
	ldr r3, _08061A3C @ =gUnknown_03003370
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r5, _08061A40 @ =gUnknown_080D206C
	ldrh r0, [r0]
	ldrh r6, [r5, #0x10]
	cmp r0, r6
	bne _08061A80
	ldr r5, _08061A44 @ =gUnknown_03002B40
	ldr r2, [r5]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08061A4C
	ldr r0, _08061A48 @ =gUnknown_080D208C
	movs r1, #0xc0
	movs r2, #0x10
	bl sub_80C4564
	b _08061A66
	.align 2, 0
_08061A38: .4byte gUnknown_080D20B8
_08061A3C: .4byte gUnknown_03003370
_08061A40: .4byte gUnknown_080D206C
_08061A44: .4byte gUnknown_03002B40
_08061A48: .4byte gUnknown_080D208C
_08061A4C:
	ldr r1, _08061A74 @ =0x040000D4
	ldr r0, _08061A78 @ =gUnknown_080D208C
	str r0, [r1]
	movs r6, #0xc0
	lsls r6, r6, #1
	adds r0, r3, r6
	str r0, [r1, #4]
	ldr r0, _08061A7C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r5]
_08061A66:
	ldrh r0, [r4, #0xe]
	cmp r0, #7
	bhi _08061AB8
	adds r0, #1
	strh r0, [r4, #0xe]
	b _08061AB8
	.align 2, 0
_08061A74: .4byte 0x040000D4
_08061A78: .4byte gUnknown_080D208C
_08061A7C: .4byte 0x80000010
_08061A80:
	ldr r4, _08061A9C @ =gUnknown_03002B40
	ldr r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08061AA0
	adds r0, r5, #0
	movs r1, #0xc0
	movs r2, #0x10
	bl sub_80C4564
	b _08061AB8
	.align 2, 0
_08061A9C: .4byte gUnknown_03002B40
_08061AA0:
	ldr r1, _08061AC0 @ =0x040000D4
	str r5, [r1]
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r0, r3, r5
	str r0, [r1, #4]
	ldr r0, _08061AC4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r4]
_08061AB8:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08061AC0: .4byte 0x040000D4
_08061AC4: .4byte 0x80000010

	thumb_func_start sub_8061AC8
sub_8061AC8: @ 0x08061AC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r7, #0
	movs r0, #0
	mov sl, r0
_08061ADC:
	mov r1, sl
	cmp r1, #1
	bhi _08061B00
	movs r0, #0x8c
	adds r0, r0, r4
	mov sb, r0
	lsls r2, r1, #3
	adds r0, r4, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r6, r1, r0
	adds r0, r4, #0
	adds r0, #0x30
	b _08061B20
_08061B00:
	movs r1, #0xbc
	adds r1, r1, r4
	mov sb, r1
	mov r2, sl
	subs r2, #2
	lsls r2, r2, #3
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r6, r1, r0
	adds r0, r4, #0
	adds r0, #0x40
_08061B20:
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	adds r5, r1, r0
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r6, r6, r0
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r0, #0
	mov r8, r0
_08061B3C:
	mov r1, r8
	cmp r1, #0
	bne _08061B4C
	ldr r0, _08061B48 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08061B56
	.align 2, 0
_08061B48: .4byte gUnknown_030008A0
_08061B4C:
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08061B56:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08061BA0 @ =gUnknown_030015C0
	adds r7, r0, r1
	adds r0, r7, #0
	bl sub_802C080
	cmp r0, #0
	bne _08061BA4
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, sb
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08061BA4
	adds r0, r7, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08061B9C
	str r7, [sp]
	mov r0, sb
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020CE0
_08061B9C:
	movs r0, #1
	b _08061BC2
	.align 2, 0
_08061BA0: .4byte gUnknown_030015C0
_08061BA4:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bls _08061B3C
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #5
	bls _08061ADC
	movs r0, #0
_08061BC2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8061BD4
sub_8061BD4: @ 0x08061BD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0x8c
	ldr r7, _08061C38 @ =gUnknown_03001D10
_08061BEA:
	ldr r1, [r5, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r2, [r5, #0x28]
	asrs r2, r2, #8
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r0, [r7, #4]
	subs r2, r2, r0
	strh r2, [r4, #0x12]
	lsls r3, r6, #3
	adds r0, r5, #0
	adds r0, #0x2c
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r4, #0x12]
	cmp r6, #0
	beq _08061C40
	ldr r0, [r4, #8]
	ldr r1, _08061C3C @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r2, #2
	b _08061C4C
	.align 2, 0
_08061C38: .4byte gUnknown_03001D10
_08061C3C: .4byte 0xFFFFF7FF
_08061C40:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	subs r0, r2, #2
_08061C4C:
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08061BEA
	movs r6, #0
	movs r0, #0xbc
	adds r0, r0, r5
	mov r8, r0
	adds r1, r5, #0
	adds r1, #0x3c
	str r1, [sp]
	movs r2, #0x40
	adds r2, r2, r5
	mov sl, r2
	mov r4, r8
	ldr r7, _08061C98 @ =gUnknown_03001D10
	mov sb, r7
_08061C7E:
	cmp r6, #0
	bne _08061C9C
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #8]
	b _08061CD2
	.align 2, 0
_08061C98: .4byte gUnknown_03001D10
_08061C9C:
	cmp r6, #1
	bne _08061CB0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	ldr r1, _08061CAC @ =0xFFFFF7FF
	b _08061CCE
	.align 2, 0
_08061CAC: .4byte 0xFFFFF7FF
_08061CB0:
	cmp r6, #2
	bne _08061CC0
	ldr r0, [r4, #8]
	ldr r1, _08061CBC @ =0xFFFFF7FF
	ands r0, r1
	b _08061CCC
	.align 2, 0
_08061CBC: .4byte 0xFFFFF7FF
_08061CC0:
	cmp r6, #3
	bne _08061CD2
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
_08061CCC:
	ldr r1, _08061D38 @ =0xFFFFFBFF
_08061CCE:
	ands r0, r1
	str r0, [r4, #8]
_08061CD2:
	ldr r3, [r5, #0x24]
	asrs r3, r3, #8
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r3, r3, r0
	mov r7, sb
	ldr r0, [r7]
	subs r3, r3, r0
	strh r3, [r4, #0x10]
	ldr r1, [r5, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	lsls r2, r6, #3
	ldr r7, [sp]
	adds r0, r7, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r3, r3, r0
	strh r3, [r4, #0x10]
	add r2, sl
	ldr r0, [r2]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08061C7E
	adds r0, r7, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08061D38: .4byte 0xFFFFFBFF

	thumb_func_start sub_8061D3C
sub_8061D3C: @ 0x08061D3C
	sub sp, #0x10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r2, [sp, #0x34]
	str r3, [sp, #0x38]
	ldr r0, _08061E44 @ =sub_80625FC
	ldr r2, _08061E48 @ =0x00004040
	ldr r1, _08061E4C @ =sub_8062638
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r3, #0
	mov r0, sp
	adds r0, #6
	str r0, [sp, #8]
	ldr r2, _08061E50 @ =0x0300002C
	adds r7, r1, r2
	movs r4, #0
	ldr r0, _08061E54 @ =0x03000030
	adds r5, r1, r0
	movs r1, #1
	mov r8, r1
_08061D80:
	lsls r1, r3, #3
	adds r0, r7, r1
	str r4, [r0]
	adds r1, r5, r1
	str r4, [r1]
	adds r0, r6, r3
	mov r2, r8
	strb r2, [r0]
	lsls r0, r3, #2
	adds r1, r6, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldr r2, [sp, #0x38]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _08061D80
	movs r3, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0x88
	adds r1, r1, r6
	mov sb, r1
	movs r2, #0xb8
	adds r2, r2, r6
	mov sl, r2
	movs r0, #0x3c
	adds r0, r0, r6
	mov ip, r0
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x40
	adds r5, r6, #2
_08061DCE:
	lsls r1, r3, #3
	mov r2, ip
	adds r0, r2, r1
	str r4, [r0]
	adds r1, r7, r1
	str r4, [r1]
	adds r1, r5, r3
	movs r0, #1
	strb r0, [r1]
	lsls r1, r3, #2
	add r1, r8
	ldr r2, [sp, #0x3c]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08061DCE
	ldr r0, [sp, #0x2c]
	str r0, [r6, #0x24]
	ldr r0, [sp, #0x30]
	str r0, [r6, #0x28]
	add r0, sp, #0x2c
	ldrh r0, [r0, #8]
	movs r5, #0
	strh r0, [r6, #6]
	add r0, sp, #0x2c
	ldrh r0, [r0, #0xa]
	strh r0, [r6, #8]
	add r0, sp, #4
	strh r5, [r0]
	ldr r4, _08061E58 @ =0x01000002
	mov r1, sb
	adds r2, r4, #0
	bl sub_80C7520
	ldr r0, [sp, #8]
	strh r5, [r0]
	ldr r0, [sp, #8]
	mov r1, sl
	adds r2, r4, #0
	bl sub_80C7520
	adds r0, r6, #0
	bl sub_8061E5C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_08061E44: .4byte sub_80625FC
_08061E48: .4byte 0x00004040
_08061E4C: .4byte sub_8062638
_08061E50: .4byte 0x0300002C
_08061E54: .4byte 0x03000030
_08061E58: .4byte 0x01000002

	thumb_func_start sub_8061E5C
sub_8061E5C: @ 0x08061E5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #2
	bl VramMalloc
	adds r5, r0, #0
	adds r3, r7, #0
	adds r3, #0x5c
	str r5, [r7, #0x5c]
	ldr r4, _08061F48 @ =gUnknown_080D2044
	ldr r0, [r4, #0x1c]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r4, #0x18]
	movs r2, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r4, #0x1a]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r6, _08061F4C @ =gUnknown_03001D10
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	movs r0, #0x98
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
	bl sub_80BF44C
	adds r3, r7, #0
	adds r3, #0x8c
	str r5, [r3]
	ldrh r0, [r4, #0x20]
	strh r0, [r3, #0xc]
	adds r4, #0x22
	ldrb r0, [r4]
	strb r0, [r3, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r7, #8]
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
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061F48: .4byte gUnknown_080D2044
_08061F4C: .4byte gUnknown_03001D10

	thumb_func_start sub_8061F50
sub_8061F50: @ 0x08061F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov ip, r0
	movs r7, #6
	movs r6, #0
	ldr r0, _080620E0 @ =gUnknown_082B48B4
	mov r8, r0
_08061F66:
	mov r1, ip
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _08062000
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, _080620E4 @ =gUnknown_080D20AC
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	lsls r0, r2, #3
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [sp, #8]
	lsls r2, r2, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r2, r0
	add r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	lsls r0, r0, #1
	adds r0, r1, r0
	str r0, [sp, #0xc]
	cmp r6, #0
	beq _08061FB4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0xc]
_08061FB4:
	lsls r0, r6, #3
	mov r3, ip
	adds r3, #0x30
	adds r3, r3, r0
	ldr r2, [sp, #4]
	str r2, [r3]
	mov r4, ip
	adds r4, #0x2c
	adds r4, r4, r0
	ldr r5, [sp]
	str r5, [r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r2
	asrs r1, r7
	lsls r0, r6, #2
	mov r2, ip
	adds r2, #0xc
	adds r2, r2, r0
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	asrs r1, r7
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r0, #3
	lsls r1, r0, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_08062000:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08061F66
	movs r6, #0
	movs r1, #2
	add r1, ip
	mov sl, r1
	ldr r0, _080620E0 @ =gUnknown_082B48B4
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #2
	mov r8, r1
_0806201C:
	mov r1, sl
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080620C2
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, _080620E8 @ =gUnknown_080D20B0
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #3
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0xc]
	cmp r6, #1
	bhi _08062068
	mov r1, r8
	adds r0, r2, r1
	str r0, [sp, #8]
_08062068:
	cmp r6, #0
	beq _08062070
	cmp r6, #3
	bne _08062076
_08062070:
	ldr r0, [sp, #0xc]
	add r0, r8
	str r0, [sp, #0xc]
_08062076:
	lsls r0, r6, #3
	mov r3, ip
	adds r3, #0x40
	adds r3, r3, r0
	ldr r2, [sp, #4]
	str r2, [r3]
	mov r4, ip
	adds r4, #0x3c
	adds r4, r4, r0
	ldr r5, [sp]
	str r5, [r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r2
	asrs r1, r7
	lsls r0, r6, #2
	mov r2, ip
	adds r2, #0x14
	adds r2, r2, r0
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #8]
	subs r1, r1, r5
	asrs r1, r7
	ldr r0, [r2]
	asrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r0, #3
	lsls r1, r0, #8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_080620C2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0806201C
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080620E0: .4byte gUnknown_082B48B4
_080620E4: .4byte gUnknown_080D20AC
_080620E8: .4byte gUnknown_080D20B0

	thumb_func_start sub_80620EC
sub_80620EC: @ 0x080620EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldr r4, _08062230 @ =gUnknown_03001D10
_08062102:
	mov r2, ip
	ldr r1, [r2, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4]
	subs r1, r1, r0
	lsls r2, r6, #3
	mov r0, ip
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r3, ip
	ldr r1, [r3, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r3, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #4]
	subs r1, r1, r0
	mov r0, ip
	adds r0, #0x30
	adds r0, r0, r2
	ldr r2, [r0]
	asrs r0, r2, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r2, #0
	bge _08062152
	rsbs r2, r2, #0
_08062152:
	ldr r0, _08062234 @ =0x0000C7FF
	mov r7, ip
	adds r3, r7, r6
	cmp r2, r0
	bgt _0806216A
	cmp r5, #0xf0
	bhi _0806216A
	cmp r1, #0xa0
	bhi _0806216A
	ldrb r0, [r3]
	cmp r0, #0
	bne _08062178
_0806216A:
	movs r0, #0
	strb r0, [r3]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08062178:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08062102
	movs r6, #0
	mov r0, ip
	adds r0, #0x3c
	str r0, [sp]
	mov r1, ip
	adds r1, #0x40
	str r1, [sp, #4]
	ldr r2, _08062230 @ =gUnknown_03001D10
	mov sb, r2
	ldr r3, [r2, #4]
	mov sl, r3
	mov r7, ip
	adds r7, #2
_0806219C:
	mov r0, ip
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldr r0, [r2]
	subs r1, r1, r0
	lsls r2, r6, #3
	ldr r3, [sp]
	adds r0, r3, r2
	ldr r4, [r0]
	asrs r0, r4, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, ip
	ldr r0, [r1, #0x28]
	asrs r0, r0, #8
	ldrh r1, [r1, #8]
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r3, sl
	subs r0, r0, r3
	ldr r1, [sp, #4]
	adds r2, r1, r2
	ldr r2, [r2]
	asrs r1, r2, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r2, #0
	bge _080621EA
	rsbs r2, r2, #0
_080621EA:
	ldr r3, _08062238 @ =0x00008BFF
	cmp r2, r3
	ble _080621FC
	adds r0, r4, #0
	cmp r0, #0
	bge _080621F8
	rsbs r0, r0, #0
_080621F8:
	cmp r0, r3
	bgt _0806220C
_080621FC:
	cmp r5, #0xf0
	bhi _0806220C
	cmp r1, #0xa0
	bhi _0806220C
	adds r0, r7, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806221C
_0806220C:
	adds r1, r7, r6
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0806221C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0806219C
	mov r2, r8
	cmp r2, #6
	beq _0806223C
	movs r0, #0
	b _0806223E
	.align 2, 0
_08062230: .4byte gUnknown_03001D10
_08062234: .4byte 0x0000C7FF
_08062238: .4byte 0x00008BFF
_0806223C:
	movs r0, #1
_0806223E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8062250
sub_8062250: @ 0x08062250
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r6, #0
	mov sl, r6
_08062262:
	mov r0, sl
	cmp r0, #1
	bhi _08062296
	movs r1, #0x5c
	adds r1, r1, r4
	mov sb, r1
	lsls r2, r0, #3
	adds r0, r4, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r7, r1, r0
	adds r0, r4, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	adds r5, r1, r0
	mov r1, sl
	adds r0, r4, r1
	b _080622C6
_08062296:
	movs r0, #0x8c
	adds r0, r0, r4
	mov sb, r0
	mov r3, sl
	subs r3, #2
	lsls r2, r3, #3
	adds r0, r4, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	adds r7, r1, r0
	adds r0, r4, #0
	adds r0, #0x40
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	adds r5, r1, r0
	adds r0, r4, #2
	adds r0, r0, r3
_080622C6:
	ldrb r1, [r0]
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	adds r5, r5, r0
	cmp r1, #0
	beq _08062352
	movs r1, #0
	mov r8, r1
_080622DC:
	mov r0, r8
	cmp r0, #0
	bne _080622EC
	ldr r0, _080622E8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _080622F6
	.align 2, 0
_080622E8: .4byte gUnknown_030008A0
_080622EC:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_080622F6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08062340 @ =gUnknown_030015C0
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	bne _08062344
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08062344
	adds r0, r6, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806233C
	str r6, [sp]
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_8020CE0
_0806233C:
	movs r0, #1
	b _08062364
	.align 2, 0
_08062340: .4byte gUnknown_030015C0
_08062344:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bls _080622DC
_08062352:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #5
	bhi _08062362
	b _08062262
_08062362:
	movs r0, #0
_08062364:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8062374
sub_8062374: @ 0x08062374
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r7, #1
	movs r6, #0
	ldr r0, _080623E4 @ =gUnknown_03001D10
	mov r8, r0
_08062386:
	adds r0, r5, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _08062408
	adds r4, r5, #0
	adds r4, #0x5c
	ldr r1, [r5, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r2, [r5, #0x28]
	asrs r2, r2, #8
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r3, r8
	ldr r0, [r3, #4]
	subs r2, r2, r0
	strh r2, [r4, #0x12]
	lsls r3, r6, #3
	adds r0, r5, #0
	adds r0, #0x2c
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r4, #0x12]
	cmp r6, #0
	beq _080623EC
	ldr r0, [r4, #8]
	ldr r1, _080623E8 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r2, #2
	b _080623F8
	.align 2, 0
_080623E4: .4byte gUnknown_03001D10
_080623E8: .4byte 0xFFFFF7FF
_080623EC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	subs r0, r2, #2
_080623F8:
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_80C033C
_08062408:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08062386
	movs r6, #0
	adds r0, r5, #2
	mov sb, r0
	ldr r1, _08062440 @ =gUnknown_03001D10
	mov r8, r1
_0806241C:
	mov r2, sb
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080624C8
	adds r4, r5, #0
	adds r4, #0x8c
	cmp r6, #0
	bne _08062444
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08062478
	.align 2, 0
_08062440: .4byte gUnknown_03001D10
_08062444:
	cmp r6, #1
	bne _08062458
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	ldr r1, _08062454 @ =0xFFFFF7FF
	b _08062476
	.align 2, 0
_08062454: .4byte 0xFFFFF7FF
_08062458:
	cmp r6, #2
	bne _08062468
	ldr r0, [r4, #8]
	ldr r1, _08062464 @ =0xFFFFF7FF
	ands r0, r1
	b _08062474
	.align 2, 0
_08062464: .4byte 0xFFFFF7FF
_08062468:
	cmp r6, #3
	bne _0806247A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
_08062474:
	ldr r1, _080624E0 @ =0xFFFFFBFF
_08062476:
	ands r0, r1
_08062478:
	str r0, [r4, #8]
_0806247A:
	ldr r2, [r5, #0x24]
	asrs r2, r2, #8
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r3, r8
	ldr r0, [r3]
	subs r2, r2, r0
	strh r2, [r4, #0x10]
	ldr r1, [r5, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	lsls r3, r6, #3
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x40
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BF44C
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_80C033C
_080624C8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0806241C
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080624E0: .4byte 0xFFFFFBFF

	thumb_func_start sub_80624E4
sub_80624E4: @ 0x080624E4
	push {r4, r5, r6, lr}
	ldr r6, _08062514 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_806253C
	cmp r0, #0
	bne _08062524
	ldr r0, _08062518 @ =0x0300005C
	adds r2, r5, r0
	ldr r1, _0806251C @ =gUnknown_080D2044
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, [r6]
	ldr r0, _08062520 @ =sub_80616A0
	str r0, [r1, #8]
	b _08062534
	.align 2, 0
_08062514: .4byte gCurTask
_08062518: .4byte 0x0300005C
_0806251C: .4byte gUnknown_080D2044
_08062520: .4byte sub_80616A0
_08062524:
	adds r0, r4, #0
	bl sub_8062580
	cmp r0, #1
	bne _08062534
	ldr r0, [r6]
	bl TaskDestroy
_08062534:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806253C
sub_806253C: @ 0x0806253C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x5c
	ldr r2, [r0, #0x24]
	asrs r2, r2, #8
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0806257C @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r0, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806257C: .4byte gUnknown_03001D10

	thumb_func_start sub_8062580
sub_8062580: @ 0x08062580
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_80625BC
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x5c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #6]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #8]
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

	thumb_func_start sub_80625BC
sub_80625BC: @ 0x080625BC
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x5c
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x28]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #6]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #8]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80625E8
sub_80625E8: @ 0x080625E8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80625FC
sub_80625FC: @ 0x080625FC
	push {r4, r5, lr}
	ldr r5, _08062634 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8061F50
	adds r0, r4, #0
	bl sub_8062374
	adds r0, r4, #0
	bl sub_8062250
	adds r0, r4, #0
	bl sub_80620EC
	cmp r0, #1
	bne _0806262C
	ldr r0, [r5]
	bl TaskDestroy
_0806262C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062634: .4byte gCurTask

	thumb_func_start sub_8062638
sub_8062638: @ 0x08062638
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_806264C
sub_806264C: @ 0x0806264C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r6, r0, #0
	ldr r5, [sp, #0x64]
	str r1, [r6]
	ldrb r0, [r1]
	movs r4, #0
	strb r0, [r6, #5]
	strb r5, [r6, #4]
	movs r5, #0
	strh r2, [r6, #0x14]
	strh r3, [r6, #0x16]
	ldrb r2, [r1]
	lsls r2, r2, #0xb
	str r2, [r6, #0x64]
	ldrb r0, [r1, #1]
	lsls r0, r0, #0xb
	str r0, [r6, #0x68]
	str r2, [r6, #0x5c]
	str r0, [r6, #0x60]
	strh r4, [r6, #0x18]
	strh r4, [r6, #0x1a]
	strb r5, [r6, #7]
	adds r0, r6, #0
	adds r0, #0x6c
	strh r4, [r0]
	movs r0, #3
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0xb
	ldr r2, [r6, #0x5c]
	adds r2, r2, r0
	str r2, [r6, #0x24]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r6, #0x28]
	movs r0, #4
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0xb
	ldr r2, [r6, #0x60]
	adds r2, r2, r0
	str r2, [r6, #0x34]
	ldrb r0, [r1, #6]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r6, #0x38]
	ldrb r0, [r1, #5]
	lsls r0, r0, #0xb
	str r0, [r6, #0x2c]
	ldrb r0, [r1, #6]
	lsls r0, r0, #0xb
	str r0, [r6, #0x30]
	ldrb r1, [r1, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080626CA
	movs r0, #0xff
	b _080626CC
_080626CA:
	movs r0, #1
_080626CC:
	strb r0, [r6, #8]
	movs r3, #0
	movs r0, #0xa
	adds r0, r0, r6
	mov r8, r0
	adds r1, r6, #0
	adds r1, #0xa4
	str r1, [sp, #0x18]
	movs r0, #2
	add r0, sp
	mov sb, r0
	adds r1, #0x30
	str r1, [sp, #0x40]
	add r0, sp, #4
	mov sl, r0
	mov r1, sp
	adds r1, #6
	str r1, [sp, #0x1c]
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x24]
	adds r1, #4
	str r1, [sp, #0x28]
	adds r0, r6, #0
	adds r0, #0x9c
	str r0, [sp, #0x14]
	adds r1, #2
	str r1, [sp, #0x2c]
	adds r0, #0x30
	str r0, [sp, #0x3c]
	adds r1, #2
	str r1, [sp, #0x30]
	adds r0, #0x30
	str r0, [sp, #0x20]
	adds r1, #2
	str r1, [sp, #0x34]
	mov r0, sp
	adds r0, #0x12
	str r0, [sp, #0x38]
	adds r7, r6, #0
	adds r7, #0x3c
	adds r5, r6, #0
	adds r5, #0x40
	mov r4, r8
	mov ip, r3
_08062726:
	lsls r1, r3, #3
	adds r2, r7, r1
	ldr r0, [r6, #0x5c]
	str r0, [r2]
	adds r1, r5, r1
	ldr r0, [r6, #0x60]
	str r0, [r1]
	lsls r0, r3, #1
	adds r0, r4, r0
	mov r1, ip
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08062726
	lsls r0, r3, #1
	add r0, r8
	movs r4, #0
	strh r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r5, _080627FC @ =0x01000002
	ldr r1, [sp, #0x18]
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sb
	strh r4, [r0]
	ldr r1, [sp, #0x40]
	adds r2, r5, #0
	bl sub_80C7520
	mov r1, sl
	strh r4, [r1]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r6, r0
	mov r0, sl
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x1c]
	strh r4, [r1]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x1c]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x24]
	strh r4, [r1]
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x24]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x28]
	strh r4, [r1]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x14]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r0, [sp, #0x2c]
	strh r4, [r0]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x3c]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x30]
	strh r4, [r1]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x20]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r0, [sp, #0x34]
	strh r4, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x34]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x38]
	strh r4, [r1]
	movs r0, #0xae
	lsls r0, r0, #1
	adds r1, r6, r0
	ldr r0, [sp, #0x38]
	adds r2, r5, #0
	bl sub_80C7520
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080627FC: .4byte 0x01000002

	thumb_func_start sub_8062800
sub_8062800: @ 0x08062800
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	adds r0, #0x6c
	str r0, [sp, #4]
	ldr r0, _0806298C @ =gUnknown_030008A0
	ldr r4, [r0, #0x1c]
	movs r0, #7
	ands r4, r0
	movs r0, #0x40
	bl VramMalloc
	adds r6, r0, #0
	mov r7, sl
	adds r7, #0xa8
	str r6, [r7]
	ldr r5, _08062990 @ =gUnknown_080D20C4
	ldr r0, [r5, #0xc]
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r5, #8]
	movs r1, #0
	mov r8, r1
	strh r0, [r7, #0xc]
	ldrb r0, [r5, #0xa]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _08062994 @ =gUnknown_03001D10
	mov sb, r0
	ldr r0, [r0]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	ldr r1, [r2, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	mov r1, r8
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	adds r3, r4, #0
	bl sub_8063514
	adds r0, r7, #0
	bl sub_80BF44C
	subs r7, #0x30
	mov r2, sl
	str r6, [r2, #0x78]
	ldr r0, [r5, #4]
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r5]
	strh r0, [r7, #0xc]
	ldrb r0, [r5, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	mov r0, sl
	ldr r1, [r0, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r0, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x14]
	mov r2, r8
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	adds r3, r4, #0
	bl sub_8063514
	adds r0, r7, #0
	bl sub_80BF44C
	adds r7, #0x60
	str r6, [r7]
	ldr r0, [r5, #0x14]
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r5, #0x10]
	strh r0, [r7, #0xc]
	ldrb r0, [r5, #0x12]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r0, sl
	ldr r1, [r0, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r2, sb
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r7, #0x10]
	mov r0, sl
	ldr r1, [r0, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r0, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r7, #0x14]
	mov r2, r8
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	adds r3, r4, #0
	bl sub_8063514
	adds r0, r7, #0
	bl sub_80BF44C
	movs r7, #0x84
	lsls r7, r7, #1
	add r7, sl
	str r6, [r7]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r6, r6, r4
	ldr r0, [sp]
	cmp r0, #0
	bne _08062998
	ldrh r0, [r5, #0x28]
	strh r0, [r7, #0xc]
	adds r0, r5, #0
	adds r0, #0x2a
	b _080629A4
	.align 2, 0
_0806298C: .4byte gUnknown_030008A0
_08062990: .4byte gUnknown_080D20C4
_08062994: .4byte gUnknown_03001D10
_08062998:
	adds r0, r5, #0
	adds r0, #0x40
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	adds r0, r5, #0
	adds r0, #0x42
_080629A4:
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08062A10 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	movs r5, #0
	movs r3, #0
	strh r1, [r7, #0x10]
	mov r4, sl
	ldr r1, [r4, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r3, [r7, #0xe]
	strh r3, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	subs r0, #0x11
	str r0, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_80BF44C
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, sl
	str r6, [r7]
	ldr r0, [sp]
	cmp r0, #0
	bne _08062A18
	ldr r0, _08062A14 @ =gUnknown_080D20C4
	ldrh r1, [r0, #0x28]
	strh r1, [r7, #0xc]
	adds r0, #0x2a
	b _08062A24
	.align 2, 0
_08062A10: .4byte gUnknown_03001D10
_08062A14: .4byte gUnknown_080D20C4
_08062A18:
	ldr r0, _08062A88 @ =gUnknown_080D20C4
	adds r1, r0, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r7, #0xc]
	adds r0, #0x42
_08062A24:
	ldrb r0, [r0]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08062A8C @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	movs r5, #0
	movs r3, #0
	strh r1, [r7, #0x10]
	mov r4, sl
	ldr r1, [r4, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r3, [r7, #0xe]
	strh r3, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	subs r0, #0x11
	str r0, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_80BF44C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08062A88: .4byte gUnknown_080D20C4
_08062A8C: .4byte gUnknown_03001D10

	thumb_func_start sub_8062A90
sub_8062A90: @ 0x08062A90
	push {r4, r5, lr}
	ldr r0, _08062AEC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80631F8
	adds r0, r5, #0
	bl sub_8063260
	adds r0, r5, #0
	bl sub_8062CFC
	ldr r0, _08062AF0 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08062ACE
	cmp r1, #4
	beq _08062ACE
	ldr r0, _08062AF4 @ =0x03000064
	adds r1, r4, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8062EF8
_08062ACE:
	adds r1, r5, #0
	adds r1, #0x78
	adds r2, r5, #0
	adds r2, #0x64
	adds r0, r5, #0
	bl sub_80630AC
	cmp r0, #1
	bne _08062AF8
	ldr r0, _08062AEC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08062B88
	.align 2, 0
_08062AEC: .4byte gCurTask
_08062AF0: .4byte gUnknown_030008A0
_08062AF4: .4byte 0x03000064
_08062AF8:
	movs r4, #0
	b _08062B10
_08062AFC:
	lsls r1, r4, #3
	adds r1, #0x3c
	adds r1, r5, r1
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_8062EF8
_08062B10:
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r4, r0
	blt _08062AFC
	ldrb r2, [r5, #7]
	adds r1, r2, #0
	movs r3, #0xa
	cmp r1, #0
	bne _08062B24
	movs r3, #5
_08062B24:
	ldrh r0, [r5, #0x18]
	adds r0, #1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r3
	bls _08062B88
	movs r0, #0
	strh r0, [r5, #0x18]
	cmp r1, #5
	bne _08062B84
	ldr r0, [r5]
	ldrb r0, [r0, #7]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08062B54
	movs r1, #8
	ldrsb r1, [r5, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08062B5C
	b _08062B70
_08062B54:
	movs r0, #8
	ldrsb r0, [r5, r0]
	cmp r0, #1
	bne _08062B70
_08062B5C:
	ldr r0, _08062B68 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062B6C @ =sub_8062B90
	str r0, [r1, #8]
	b _08062B88
	.align 2, 0
_08062B68: .4byte gCurTask
_08062B6C: .4byte sub_8062B90
_08062B70:
	ldr r0, _08062B7C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062B80 @ =sub_8062C4C
	str r0, [r1, #8]
	b _08062B88
	.align 2, 0
_08062B7C: .4byte gCurTask
_08062B80: .4byte sub_8062C4C
_08062B84:
	adds r0, r2, #1
	strb r0, [r5, #7]
_08062B88:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8062B90
sub_8062B90: @ 0x08062B90
	push {r4, r5, r6, lr}
	ldr r0, _08062C14 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	movs r6, #0
	adds r0, r5, #0
	bl sub_80631F8
	adds r0, r5, #0
	bl sub_8063260
	adds r0, r5, #0
	bl sub_8062CFC
	ldr r0, _08062C18 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08062BF8
	cmp r1, #4
	beq _08062BF8
	ldr r0, _08062C1C @ =0x03000064
	adds r1, r4, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8062EF8
	movs r4, #0
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r6, r0
	bge _08062BF8
_08062BDA:
	lsls r1, r4, #3
	adds r1, #0x3c
	adds r1, r5, r1
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_8062EF8
	adds r6, r0, #0
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r4, r0
	blt _08062BDA
_08062BF8:
	adds r1, r5, #0
	adds r1, #0x78
	adds r2, r5, #0
	adds r2, #0x64
	adds r0, r5, #0
	bl sub_80630AC
	cmp r0, #1
	bne _08062C20
	ldr r0, _08062C14 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08062C3E
	.align 2, 0
_08062C14: .4byte gCurTask
_08062C18: .4byte gUnknown_030008A0
_08062C1C: .4byte 0x03000064
_08062C20:
	ldr r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	cmp r6, #1
	bne _08062C3E
	movs r0, #0xff
	strb r0, [r5, #8]
	movs r0, #0
	strb r0, [r5, #7]
	ldr r0, _08062C44 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062C48 @ =sub_8062A90
	str r0, [r1, #8]
_08062C3E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062C44: .4byte gCurTask
_08062C48: .4byte sub_8062A90

	thumb_func_start sub_8062C4C
sub_8062C4C: @ 0x08062C4C
	push {r4, r5, r6, lr}
	ldr r0, _08062CD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	movs r6, #0
	adds r0, r5, #0
	bl sub_80631F8
	adds r0, r5, #0
	bl sub_8063260
	adds r0, r5, #0
	bl sub_8062CFC
	ldr r0, _08062CD4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08062CB4
	cmp r1, #4
	beq _08062CB4
	ldr r0, _08062CD8 @ =0x03000064
	adds r1, r4, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8062EF8
	movs r4, #0
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r6, r0
	bge _08062CB4
_08062C96:
	lsls r1, r4, #3
	adds r1, #0x3c
	adds r1, r5, r1
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_8062EF8
	adds r6, r0, #0
	ldrb r0, [r5, #7]
	subs r0, #1
	cmp r4, r0
	blt _08062C96
_08062CB4:
	adds r1, r5, #0
	adds r1, #0x78
	adds r2, r5, #0
	adds r2, #0x64
	adds r0, r5, #0
	bl sub_80630AC
	cmp r0, #1
	bne _08062CDC
	ldr r0, _08062CD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08062CEE
	.align 2, 0
_08062CD0: .4byte gCurTask
_08062CD4: .4byte gUnknown_030008A0
_08062CD8: .4byte 0x03000064
_08062CDC:
	cmp r6, #1
	bne _08062CEE
	movs r0, #0
	strb r6, [r5, #8]
	strb r0, [r5, #7]
	ldr r0, _08062CF4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08062CF8 @ =sub_8062A90
	str r0, [r1, #8]
_08062CEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062CF4: .4byte gCurTask
_08062CF8: .4byte sub_8062A90

	thumb_func_start sub_8062CFC
sub_8062CFC: @ 0x08062CFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r4, r7, r0
	ldrh r0, [r7, #0x1a]
	adds r0, #1
	strh r0, [r7, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _08062D20
	b _08062EE6
_08062D20:
	adds r0, r7, #0
	bl sub_8063324
	str r0, [sp, #4]
	ldr r1, _08062DC4 @ =gUnknown_080D20C4
	ldrh r2, [r4, #0xc]
	ldrh r3, [r1, #0x18]
	cmp r2, r3
	bne _08062D3A
	ldrb r0, [r4, #0x1a]
	ldrb r3, [r1, #0x1a]
	cmp r0, r3
	beq _08062D4A
_08062D3A:
	ldrh r0, [r1, #0x30]
	cmp r2, r0
	bne _08062D54
	adds r1, #0x32
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08062D54
_08062D4A:
	ldrh r0, [r7, #0x1a]
	cmp r0, #0xb3
	bls _08062D54
	movs r1, #0
	str r1, [sp, #4]
_08062D54:
	movs r2, #0
	mov sb, r2
	ldr r3, _08062DC4 @ =gUnknown_080D20C4
	mov r8, r3
	movs r0, #0x32
	add r0, r8
	mov sl, r0
_08062D62:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08062D6A
	b _08062ED6
_08062D6A:
	mov r2, sb
	cmp r2, #0
	beq _08062D76
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r4, r7, r3
_08062D76:
	ldr r1, _08062DC4 @ =gUnknown_080D20C4
	ldrh r0, [r4, #0xc]
	adds r5, r0, #0
	adds r2, r1, #0
	adds r6, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r5, r0
	bne _08062D94
	adds r3, r2, #0
	adds r3, #0x22
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldrb r3, [r3]
	cmp r1, r3
	beq _08062DA8
_08062D94:
	ldrh r1, [r2, #0x38]
	cmp r5, r1
	bne _08062E1C
	adds r3, r2, #0
	adds r3, #0x3a
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldrb r3, [r3]
	cmp r1, r3
	bne _08062E1C
_08062DA8:
	ldrh r3, [r2, #0x20]
	cmp r6, r3
	bne _08062DC8
	adds r0, r2, #0
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r1, r0
	bne _08062DC8
	ldrh r0, [r2, #0x28]
	strh r0, [r4, #0xc]
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	b _08062DD4
	.align 2, 0
_08062DC4: .4byte gUnknown_080D20C4
_08062DC8:
	mov r0, r8
	adds r0, #0x40
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r1, _08062DF8 @ =gUnknown_080D2106
	ldrb r0, [r1]
_08062DD4:
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	mov r2, sb
	cmp r2, #0
	beq _08062E00
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r1, r7, r3
	ldr r2, _08062DFC @ =0x01000002
	bl sub_80C7520
	b _08062E12
	.align 2, 0
_08062DF8: .4byte gUnknown_080D2106
_08062DFC: .4byte 0x01000002
_08062E00:
	mov r0, sp
	mov r1, sb
	strh r1, [r0]
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r2, _08062E18 @ =0x01000002
	bl sub_80C7520
_08062E12:
	movs r0, #0
	strh r0, [r7, #0x1a]
	b _08062ED6
	.align 2, 0
_08062E18: .4byte 0x01000002
_08062E1C:
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	ldrh r3, [r2, #0x28]
	cmp r5, r3
	bne _08062E34
	adds r3, r2, #0
	adds r3, #0x2a
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldrb r3, [r3]
	cmp r1, r3
	beq _08062E4A
_08062E34:
	adds r0, r2, #0
	adds r0, #0x40
	ldrh r0, [r0]
	cmp r5, r0
	bne _08062E82
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldr r0, _08062E68 @ =gUnknown_080D2106
	ldrb r0, [r0]
	cmp r1, r0
	bne _08062E82
_08062E4A:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r2, #0x28]
	cmp r0, r3
	bne _08062E6C
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r1, r0
	bne _08062E6C
	ldrh r0, [r2, #0x18]
	strh r0, [r4, #0xc]
	ldrb r0, [r2, #0x1a]
	b _08062E76
	.align 2, 0
_08062E68: .4byte gUnknown_080D2106
_08062E6C:
	mov r1, r8
	ldrh r0, [r1, #0x30]
	strh r0, [r4, #0xc]
	mov r2, sl
	ldrb r0, [r2]
_08062E76:
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x3c
	strh r0, [r7, #0x1a]
	b _08062ED6
_08062E82:
	lsls r0, r6, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r2, #0x18]
	cmp r3, r0
	bne _08062E96
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	ldrb r0, [r2, #0x1a]
	cmp r1, r0
	beq _08062EA8
_08062E96:
	ldrh r1, [r2, #0x30]
	cmp r3, r1
	bne _08062ED6
	ldrb r0, [r4, #0x1a]
	adds r1, r0, #0
	mov r3, sl
	ldrb r3, [r3]
	cmp r1, r3
	bne _08062ED6
_08062EA8:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r2, #0x30]
	cmp r0, r3
	bne _08062EC4
	mov r0, sl
	ldrb r0, [r0]
	cmp r1, r0
	bne _08062EC4
	ldrh r0, [r2, #0x38]
	strh r0, [r4, #0xc]
	adds r0, r2, #0
	adds r0, #0x3a
	b _08062ECE
_08062EC4:
	mov r1, r8
	ldrh r0, [r1, #0x20]
	strh r0, [r4, #0xc]
	mov r0, r8
	adds r0, #0x22
_08062ECE:
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_08062ED6:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bhi _08062EE6
	b _08062D62
_08062EE6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8062EF8
sub_8062EF8: @ 0x08062EF8
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	adds r0, #0x6c
	movs r6, #0
	ldrh r0, [r0]
	cmp r0, #0
	beq _08062F58
	mov r1, ip
	movs r0, #8
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r4, #4]
	subs r1, r1, r0
	str r1, [r4, #4]
	mov r2, ip
	ldr r0, [r2, #0x34]
	cmp r0, r1
	bgt _08062F2A
	mov r7, ip
	ldr r0, [r7, #0x38]
	cmp r0, r1
	bge _08062F30
_08062F2A:
	str r0, [r4, #4]
	movs r6, #1
	b _08062FA6
_08062F30:
	ldr r1, _08062F54 @ =gUnknown_082B48B4
	lsls r0, r5, #1
	mov r3, ip
	adds r3, #0xa
	adds r3, r3, r0
	ldrh r2, [r3]
	lsrs r0, r2, #8
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #1
	mov r7, ip
	ldr r1, [r7, #0x5c]
	adds r1, r1, r0
	str r1, [r4]
	b _08062F9E
	.align 2, 0
_08062F54: .4byte gUnknown_082B48B4
_08062F58:
	mov r1, ip
	movs r0, #8
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r4]
	subs r1, r1, r0
	str r1, [r4]
	mov r2, ip
	ldr r0, [r2, #0x24]
	cmp r0, r1
	bgt _08062F76
	mov r7, ip
	ldr r0, [r7, #0x28]
	cmp r0, r1
	bge _08062F7C
_08062F76:
	str r0, [r4]
	movs r6, #1
	b _08062FA6
_08062F7C:
	ldr r1, _08062FB4 @ =gUnknown_082B48B4
	lsls r0, r5, #1
	mov r3, ip
	adds r3, #0xa
	adds r3, r3, r0
	ldrh r2, [r3]
	lsrs r0, r2, #8
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #1
	mov r7, ip
	ldr r1, [r7, #0x60]
	adds r1, r1, r0
	str r1, [r4, #4]
_08062F9E:
	movs r0, #0x80
	lsls r0, r0, #3
	adds r2, r2, r0
	strh r2, [r3]
_08062FA6:
	cmp r6, #1
	bne _08062FB8
	cmp r5, #4
	bne _08062FB8
	movs r0, #1
	b _08062FBA
	.align 2, 0
_08062FB4: .4byte gUnknown_082B48B4
_08062FB8:
	movs r0, #0
_08062FBA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8062FC0
sub_8062FC0: @ 0x08062FC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	movs r0, #0xa0
	lsls r0, r0, #3
	mov sb, r0
	b _0806308E
_08062FD6:
	adds r0, r4, #0
	adds r0, #0x6c
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _08063032
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x68]
	subs r2, r1, r0
	cmp r2, #0
	blt _08062FF8
	cmp r2, sb
	ble _08062FFE
	b _08063084
_08062FF8:
	subs r0, r0, r1
	cmp r0, sb
	bgt _08063084
_08062FFE:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08063020
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x64]
	adds r6, r1, #0
	cmp r0, r2
	ble _0806307A
	b _08063084
_08063020:
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r0, r1, r0
	ldr r2, [r4, #0x64]
	adds r6, r1, #0
	cmp r0, r2
	blt _08063084
	b _0806307A
_08063032:
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x10]
	subs r3, r1, r0
	ldr r0, [r4, #0x64]
	subs r2, r3, r0
	adds r6, r1, #0
	cmp r2, #0
	blt _0806304A
	cmp r2, sb
	ble _08063050
	b _08063084
_0806304A:
	subs r0, r0, r3
	cmp r0, sb
	bgt _08063084
_08063050:
	ldrh r2, [r7]
	cmp r2, #0
	beq _08063064
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x68]
	cmp r1, r0
	ble _0806307A
_08063064:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r2, r0
	bne _08063084
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	ldr r1, [r5, #0x14]
	subs r1, r1, r0
	ldr r0, [r4, #0x68]
	cmp r1, r0
	blt _08063084
_0806307A:
	str r6, [r4, #0x1c]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x20]
	movs r0, #1
	b _080630A0
_08063084:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0806308E:
	mov r0, r8
	cmp r0, #1
	bhi _0806309E
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _08062FD6
_0806309E:
	movs r0, #0
_080630A0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80630AC
sub_80630AC: @ 0x080630AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	adds r6, r0, #0
	movs r0, #0
	mov sb, r0
	ldrb r0, [r6, #7]
	subs r0, #1
	cmp sb, r0
	bge _08063182
	mov r8, sp
_080630C6:
	mov r1, sb
	cmp r1, #0
	beq _080630D2
	lsls r4, r1, #3
	cmp r1, #3
	bne _0806313C
_080630D2:
	mov r0, sb
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0x3c
	adds r7, r6, r0
	movs r1, #0x84
	lsls r1, r1, #1
	adds r5, r6, r1
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	mov r3, sp
	bl sub_8063574
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	ldr r0, [r7]
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x14]
	mov r1, r8
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #0x16]
	strh r0, [r1, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #5]
	strb r0, [r1, #8]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r5, r6, r0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	mov r3, sp
	bl sub_8063574
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	ldr r0, [r7]
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x14]
	mov r1, r8
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #0x16]
	strh r0, [r1, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #5]
	strb r0, [r1, #8]
_0806313C:
	adds r0, r4, #0
	adds r0, #0x3c
	adds r7, r6, r0
	adds r5, r6, #0
	adds r5, #0xa8
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	mov r3, sp
	bl sub_8063574
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	ldr r0, [r7]
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x14]
	mov r1, r8
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #0x16]
	strh r0, [r1, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #5]
	strb r0, [r1, #8]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldrb r0, [r6, #7]
	subs r0, #1
	cmp sb, r0
	blt _080630C6
_08063182:
	adds r7, r6, #0
	adds r7, #0x64
	adds r5, r6, #0
	adds r5, #0x78
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	mov r3, sp
	bl sub_8063574
	str r0, [sp, #4]
	str r5, [sp, #0x1c]
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	ldr r2, _080631F4 @ =gUnknown_03001D10
	ldr r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x10]
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [sp, #0x14]
	ldr r0, [r5, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080631CC
	ldrh r0, [r5, #0x10]
	adds r0, #0xa
	strh r0, [r5, #0x10]
	ldr r1, [sp, #0x1c]
	ldrh r0, [r1, #0x12]
	adds r0, #0x1e
	strh r0, [r1, #0x12]
_080631CC:
	mov r0, sp
	movs r1, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	mov r1, sp
	ldrb r0, [r6, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080631F4: .4byte gUnknown_03001D10

	thumb_func_start sub_80631F8
sub_80631F8: @ 0x080631F8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r2, #0
	adds r5, #0x6c
	adds r4, r2, #0
	adds r4, #0x78
	ldr r1, [r2, #0x64]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _0806325C @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r2, #0x68]
	asrs r1, r1, #8
	ldrh r0, [r2, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_806359C
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08063248
	ldrh r0, [r4, #0x10]
	strh r0, [r5, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80BF8F4
_08063248:
	adds r0, r4, #0
	bl sub_80BF44C
	adds r0, r4, #0
	bl sub_80C033C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806325C: .4byte gUnknown_03001D10

	thumb_func_start sub_8063260
sub_8063260: @ 0x08063260
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x6c
	movs r0, #0
	mov sl, r0
	movs r7, #0
_08063276:
	cmp r7, sl
	bne _08063290
	adds r0, r7, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r4, r5, #0
	adds r4, #0xd8
	mov r8, r4
	movs r2, #0xa8
	adds r2, r2, r5
	mov sb, r2
	b _0806329C
_08063290:
	adds r4, r5, #0
	adds r4, #0xa8
	movs r3, #0xd8
	adds r3, r3, r5
	mov r8, r3
	mov sb, r4
_0806329C:
	lsls r2, r7, #3
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08063320 @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x40
	adds r0, r0, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_806359C
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080632F0
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80BF8F4
_080632F0:
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08063276
	mov r4, r8
	adds r0, r4, #0
	bl sub_80BF44C
	mov r4, sb
	adds r0, r4, #0
	bl sub_80BF44C
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08063320: .4byte gUnknown_03001D10

	thumb_func_start sub_8063324
sub_8063324: @ 0x08063324
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r0, #0x6c
	str r0, [sp]
	movs r1, #0
	mov r8, r1
	mov sb, r1
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_80BF44C
	cmp r0, #0
	bne _0806334E
	movs r0, #1
	mov sb, r0
_0806334E:
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_80BF44C
	cmp r0, #0
	bne _08063366
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_08063366:
	adds r0, r6, #0
	adds r0, #0x3c
	str r0, [sp, #4]
	movs r1, #0x40
	adds r1, r1, r6
	mov sl, r1
	ldr r7, _080633E8 @ =gUnknown_03001D10
_08063374:
	movs r0, #0x84
	lsls r0, r0, #1
	adds r2, r6, r0
	mov r1, r8
	lsls r4, r1, #3
	ldr r0, [sp, #4]
	adds r5, r0, r4
	ldr r1, [r5]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	add r4, sl
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	adds r0, r2, #0
	bl sub_80C033C
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r2, r6, r1
	ldr r1, [r5]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7]
	subs r5, r1, r0
	strh r5, [r2, #0x10]
	ldr r1, [r4]
	asrs r1, r1, #8
	ldrh r0, [r6, #0x16]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r7, #4]
	subs r3, r1, r0
	strh r3, [r2, #0x12]
	ldr r1, [sp]
	ldrh r0, [r1]
	cmp r0, #0
	beq _080633EC
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r5, #1
	strh r0, [r2, #0x10]
	b _080633FA
	.align 2, 0
_080633E8: .4byte gUnknown_03001D10
_080633EC:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r3, #1
	strh r0, [r2, #0x12]
_080633FA:
	adds r0, r2, #0
	bl sub_80C033C
	mov r0, r8
	adds r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08063374
	mov r0, sb
	cmp r0, #2
	beq _08063418
	movs r0, #1
	b _0806341A
_08063418:
	movs r0, #0
_0806341A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start CreateEntity_Muukaden_0
CreateEntity_Muukaden_0: @ 0x0806342C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _08063498 @ =sub_8062A90
	movs r1, #0xb4
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0806349C @ =sub_80635E0
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_806264C
	adds r0, r4, #0
	movs r1, #0
	bl sub_8062800
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063498: .4byte sub_8062A90
_0806349C: .4byte sub_80635E0

	thumb_func_start CreateEntity_Muukaden_1
CreateEntity_Muukaden_1: @ 0x080634A0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0806350C @ =sub_8062A90
	movs r1, #0xb4
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08063510 @ =sub_80635E0
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_806264C
	adds r0, r4, #0
	movs r1, #1
	bl sub_8062800
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806350C: .4byte sub_8062A90
_08063510: .4byte sub_80635E0

	thumb_func_start sub_8063514
sub_8063514: @ 0x08063514
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r0, r3, #0x18
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r4, #8]
	cmp r2, #0
	beq _08063532
	cmp r2, #1
	beq _0806353E
	b _0806356C
_08063532:
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r3
	str r0, [r4, #8]
	strh r2, [r5]
	b _0806356C
_0806353E:
	cmp r0, #0
	beq _0806354C
	movs r1, #0x60
	orrs r1, r3
	adds r0, #0xa
	orrs r0, r1
	b _08063550
_0806354C:
	movs r0, #0x6a
	orrs r0, r3
_08063550:
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5]
	ldrh r1, [r4, #0x10]
	strh r1, [r5, #6]
	ldrh r1, [r4, #0x12]
	strh r1, [r5, #8]
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80BF8F4
_0806356C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8063574
sub_8063574: @ 0x08063574
	push {r4, lr}
	movs r4, #0
	str r4, [r3]
	strb r4, [r3, #8]
	str r4, [r3, #4]
	str r1, [r3, #0x1c]
	ldr r1, [r2]
	str r1, [r3, #0x10]
	ldr r1, [r2, #4]
	str r1, [r3, #0x14]
	ldrh r1, [r0, #0x14]
	strh r1, [r3, #0xc]
	ldrh r0, [r0, #0x16]
	strh r0, [r3, #0xe]
	adds r0, r3, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_806359C
sub_806359C: @ 0x0806359C
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080635BE
	movs r0, #8
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080635B6
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	b _080635D8
_080635B6:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _080635D8
_080635BE:
	movs r0, #8
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _080635D0
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080635D6
_080635D0:
	ldr r0, [r3, #8]
	ldr r1, _080635DC @ =0xFFFFFBFF
	ands r0, r1
_080635D6:
	str r0, [r3, #8]
_080635D8:
	pop {r0}
	bx r0
	.align 2, 0
_080635DC: .4byte 0xFFFFFBFF

	thumb_func_start sub_80635E0
sub_80635E0: @ 0x080635E0
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080635F4 @ =0x030000A8
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_080635F4: .4byte 0x030000A8

	thumb_func_start CreateEntity_Marun
CreateEntity_Marun: @ 0x080635F8
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
	ldr r0, _08063674 @ =sub_8063758
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08063678 @ =sub_8063F08
	str r1, [sp]
	movs r1, #0x68
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r2, #0
	strb r2, [r7, #4]
	strb r4, [r7, #6]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #7]
	strb r2, [r7, #8]
	movs r3, #0
	strh r5, [r7, #0xc]
	strh r6, [r7, #0xe]
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	str r1, [r7, #0x24]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x28]
	str r1, [r7, #0x1c]
	str r0, [r7, #0x20]
	strh r2, [r7, #0x10]
	strb r3, [r7, #9]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r7, #0x14]
	str r2, [r7, #0x18]
	strh r2, [r7, #0x12]
	strb r3, [r7, #5]
	ldrb r1, [r4, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806367C
	movs r0, #0xff
	b _0806367E
	.align 2, 0
_08063674: .4byte sub_8063758
_08063678: .4byte sub_8063F08
_0806367C:
	movs r0, #1
_0806367E:
	strb r0, [r7, #0xa]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r2, _080636B0 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_80636B4
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r4, r8
	strb r0, [r4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080636B0: .4byte 0x01000002

	thumb_func_start sub_80636B4
sub_80636B4: @ 0x080636B4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x11
	bl VramMalloc
	adds r4, r5, #0
	adds r4, #0x38
	adds r6, r5, #0
	adds r6, #0x2c
	str r0, [r5, #0x38]
	ldr r1, _08063750 @ =gUnknown_080D210C
	ldrh r0, [r1]
	movs r3, #0
	movs r7, #0
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r1, [r5, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08063754 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r5, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #8]
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _08063722
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r4, #8]
_08063722:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	strh r7, [r5, #0x2c]
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_80BF8F4
	adds r0, r4, #0
	bl sub_80BF44C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063750: .4byte gUnknown_080D210C
_08063754: .4byte gUnknown_03001D10

	thumb_func_start sub_8063758
sub_8063758: @ 0x08063758
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080637F8 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r6
	mov r8, r0
	ldr r1, _080637FC @ =0x03000024
	adds r0, r6, r1
	ldr r2, _08063800 @ =0x0300001C
	adds r1, r6, r2
	ldr r3, _08063804 @ =0x0300000C
	adds r2, r6, r3
	ldr r4, _08063808 @ =0x03000009
	adds r3, r6, r4
	bl sub_805CD70
	ldr r0, _0806380C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08063828
	cmp r1, #4
	beq _08063828
	mov r0, r8
	bl sub_8063C98
	mov sb, r0
	cmp r0, #1
	bne _08063828
	mov r0, r8
	ldrh r7, [r0, #4]
	cmp r7, #0
	bne _08063828
	ldr r1, _08063810 @ =0x03000038
	adds r4, r6, r1
	ldr r1, _08063814 @ =gUnknown_080D210C
	ldrh r0, [r1, #8]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	mov r0, sp
	strh r7, [r0]
	ldr r2, _08063818 @ =0x03000064
	adds r1, r6, r2
	ldr r5, _0806381C @ =0x01000002
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sp
	adds r0, #2
	strh r7, [r0]
	ldr r3, _08063820 @ =0x0300005C
	adds r1, r6, r3
	adds r2, r5, #0
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_80BF44C
	mov r0, sb
	mov r4, r8
	strb r0, [r4, #8]
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _08063824 @ =sub_8063858
	str r0, [r1, #8]
	b _08063846
	.align 2, 0
_080637F8: .4byte gCurTask
_080637FC: .4byte 0x03000024
_08063800: .4byte 0x0300001C
_08063804: .4byte 0x0300000C
_08063808: .4byte 0x03000009
_0806380C: .4byte gUnknown_030008A0
_08063810: .4byte 0x03000038
_08063814: .4byte gUnknown_080D210C
_08063818: .4byte 0x03000064
_0806381C: .4byte 0x01000002
_08063820: .4byte 0x0300005C
_08063824: .4byte sub_8063858
_08063828:
	mov r0, r8
	bl sub_8063D38
	cmp r0, #1
	bne _08063840
	ldr r0, _0806383C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08063846
	.align 2, 0
_0806383C: .4byte gCurTask
_08063840:
	mov r0, r8
	bl sub_8063E5C
_08063846:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8063858
sub_8063858: @ 0x08063858
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080638F4 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r1, _080638F8 @ =0x03000024
	adds r0, r6, r1
	ldr r2, _080638FC @ =0x0300001C
	adds r1, r6, r2
	ldr r3, _08063900 @ =0x0300000C
	adds r2, r6, r3
	ldr r4, _08063904 @ =0x03000009
	adds r3, r6, r4
	bl sub_805CD70
	ldr r0, _08063908 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08063928
	cmp r1, #4
	beq _08063928
	adds r0, r5, #0
	bl sub_8063E5C
	adds r7, r0, #0
	cmp r7, #0
	bne _08063928
	ldr r0, _0806390C @ =0x03000038
	adds r4, r6, r0
	ldr r1, _08063910 @ =gUnknown_080D210C
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r4, #8]
	movs r1, #0x6a
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r5, #0x24]
	ldr r1, _08063914 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r5, #0x24]
	mov r0, sp
	strh r7, [r0]
	ldr r2, _08063918 @ =0x03000064
	adds r1, r6, r2
	ldr r5, _0806391C @ =0x01000002
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sp
	adds r0, #2
	strh r7, [r0]
	ldr r3, _08063920 @ =0x0300005C
	adds r1, r6, r3
	adds r2, r5, #0
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_80BF44C
	mov r4, r8
	ldr r1, [r4]
	ldr r0, _08063924 @ =sub_806394C
	str r0, [r1, #8]
	b _0806393A
	.align 2, 0
_080638F4: .4byte gCurTask
_080638F8: .4byte 0x03000024
_080638FC: .4byte 0x0300001C
_08063900: .4byte 0x0300000C
_08063904: .4byte 0x03000009
_08063908: .4byte gUnknown_030008A0
_0806390C: .4byte 0x03000038
_08063910: .4byte gUnknown_080D210C
_08063914: .4byte 0xFFFFF000
_08063918: .4byte 0x03000064
_0806391C: .4byte 0x01000002
_08063920: .4byte 0x0300005C
_08063924: .4byte sub_806394C
_08063928:
	adds r0, r5, #0
	bl sub_8063D38
	cmp r0, #1
	bne _0806393A
	ldr r0, _08063948 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0806393A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063948: .4byte gCurTask

	thumb_func_start sub_806394C
sub_806394C: @ 0x0806394C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _080639AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
	adds r0, r5, #0
	bl sub_8063BB8
	ldr r0, [r5, #0x24]
	asrs r2, r0, #8
	ldr r0, [r5, #0x28]
	asrs r1, r0, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _080639B4
	subs r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	str r4, [sp]
	ldr r0, _080639B0 @ =sub_805203C
	str r0, [sp, #4]
	adds r0, r2, #0
	movs r2, #1
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080639E6
	lsls r1, r0, #8
	ldr r0, [r5, #0x24]
	subs r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	b _080639DA
	.align 2, 0
_080639AC: .4byte gCurTask
_080639B0: .4byte sub_805203C
_080639B4:
	adds r0, r2, #0
	adds r0, #8
	subs r1, #8
	str r4, [sp]
	ldr r2, _08063A68 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _080639E6
	lsls r1, r0, #8
	ldr r0, [r5, #0x24]
	adds r0, r0, r1
	ldr r1, _08063A6C @ =0xFFFFF800
_080639DA:
	adds r0, r0, r1
	str r0, [r5, #0x24]
	movs r0, #1
	strb r0, [r5, #4]
	movs r0, #0
	str r0, [r5, #0x14]
_080639E6:
	ldr r0, _08063A70 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08063AB4
	cmp r1, #4
	beq _08063AB4
	ldrh r0, [r5, #0x12]
	adds r0, #1
	movs r7, #0
	strh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bgt _08063A10
	lsls r0, r4, #0x18
	cmp r0, #0
	bge _08063AB4
_08063A10:
	adds r6, r5, #0
	adds r6, #0x38
	ldr r1, _08063A74 @ =gUnknown_080D210C
	ldrh r0, [r1, #0x18]
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #0x1a]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	add r0, sp, #8
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x64
	ldr r4, _08063A78 @ =0x01000002
	adds r2, r4, #0
	bl sub_80C7520
	mov r0, sp
	adds r0, #0xa
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x5c
	adds r2, r4, #0
	bl sub_80C7520
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _08063A58
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_08063A58:
	movs r0, #0xa
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _08063A7C
	ldr r0, [r5, #0x24]
	movs r1, #0x98
	lsls r1, r1, #5
	b _08063A82
	.align 2, 0
_08063A68: .4byte sub_805203C
_08063A6C: .4byte 0xFFFFF800
_08063A70: .4byte gUnknown_030008A0
_08063A74: .4byte gUnknown_080D210C
_08063A78: .4byte 0x01000002
_08063A7C:
	ldr r0, [r5, #0x24]
	movs r1, #0xd0
	lsls r1, r1, #4
_08063A82:
	adds r0, r0, r1
	str r0, [r5, #0x24]
	adds r0, r6, #0
	bl sub_80BF44C
	movs r2, #0
	movs r1, #0
	strh r1, [r5, #0x10]
	strh r1, [r5, #0x12]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r5, #0x14]
	str r1, [r5, #0x18]
	strb r2, [r5, #8]
	movs r0, #1
	strb r0, [r5, #5]
	ldr r0, _08063AAC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08063AB0 @ =sub_8063ADC
	str r0, [r1, #8]
	b _08063AD2
	.align 2, 0
_08063AAC: .4byte gCurTask
_08063AB0: .4byte sub_8063ADC
_08063AB4:
	adds r0, r5, #0
	bl sub_8063D38
	cmp r0, #1
	bne _08063ACC
	ldr r0, _08063AC8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08063AD2
	.align 2, 0
_08063AC8: .4byte gCurTask
_08063ACC:
	adds r0, r5, #0
	bl sub_8063E5C
_08063AD2:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8063ADC
sub_8063ADC: @ 0x08063ADC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08063B6C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _08063B0E
	ldr r1, _08063B70 @ =0x03000024
	adds r0, r6, r1
	ldr r2, _08063B74 @ =0x0300001C
	adds r1, r6, r2
	ldr r3, _08063B78 @ =0x0300000C
	adds r2, r6, r3
	ldr r4, _08063B7C @ =0x03000009
	adds r3, r6, r4
	bl sub_805CD70
_08063B0E:
	adds r0, r7, #0
	bl sub_8063E5C
	adds r5, r0, #0
	cmp r5, #0
	bne _08063B98
	ldr r0, _08063B80 @ =0x03000038
	adds r4, r6, r0
	ldr r1, _08063B84 @ =gUnknown_080D210C
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	mov r0, sp
	strh r5, [r0]
	ldr r2, _08063B88 @ =0x03000064
	adds r1, r6, r2
	ldr r3, _08063B8C @ =0x01000002
	mov r8, r3
	mov r2, r8
	bl sub_80C7520
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	ldr r2, _08063B90 @ =0x0300005C
	adds r1, r6, r2
	mov r2, r8
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_80BF44C
	strh r5, [r7, #0x10]
	strh r5, [r7, #0x12]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r7, #0x14]
	str r5, [r7, #0x18]
	mov r3, sb
	ldr r1, [r3]
	ldr r0, _08063B94 @ =sub_8063758
	str r0, [r1, #8]
	b _08063BAA
	.align 2, 0
_08063B6C: .4byte gCurTask
_08063B70: .4byte 0x03000024
_08063B74: .4byte 0x0300001C
_08063B78: .4byte 0x0300000C
_08063B7C: .4byte 0x03000009
_08063B80: .4byte 0x03000038
_08063B84: .4byte gUnknown_080D210C
_08063B88: .4byte 0x03000064
_08063B8C: .4byte 0x01000002
_08063B90: .4byte 0x0300005C
_08063B94: .4byte sub_8063758
_08063B98:
	adds r0, r7, #0
	bl sub_8063D38
	cmp r0, #1
	bne _08063BAA
	mov r4, sb
	ldr r0, [r4]
	bl TaskDestroy
_08063BAA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8063BB8
sub_8063BB8: @ 0x08063BB8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0xa
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08063BDA
	ldr r0, [r4, #0x24]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x24]
	ldrh r0, [r4, #0x10]
	adds r0, #0x10
	b _08063BEA
_08063BDA:
	ldr r0, [r4, #0x24]
	ldr r1, _08063C64 @ =0xFFFFFF00
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x24]
	ldrh r0, [r4, #0x10]
	subs r0, #0x10
_08063BEA:
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x24]
	asrs r2, r0, #8
	ldr r0, [r4, #0x28]
	asrs r1, r0, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r6, #0
	str r6, [sp]
	ldr r5, _08063C68 @ =sub_805217C
	str r5, [sp, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	movs r1, #0
	cmp r0, #0
	ble _08063C1C
	movs r1, #1
_08063C1C:
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08063C6C
	lsls r1, r1, #8
	ldr r0, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x24]
	asrs r2, r1, #8
	asrs r1, r0, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r6, [sp]
	str r5, [sp, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	cmp r0, #0
	ble _08063C82
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	adds r1, #0x20
	str r1, [r4, #0x18]
	b _08063C82
	.align 2, 0
_08063C64: .4byte 0xFFFFFF00
_08063C68: .4byte sub_805217C
_08063C6C:
	str r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x24
	adds r1, r4, #0
	adds r1, #0x1c
	adds r2, r4, #0
	adds r2, #0xc
	adds r3, r4, #0
	adds r3, #9
	bl sub_805CD70
_08063C82:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _08063C8C
	subs r0, #4
	b _08063C8E
_08063C8C:
	movs r0, #0
_08063C8E:
	str r0, [r4, #0x14]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8063C98
sub_8063C98: @ 0x08063C98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r1, #0x38
	adds r1, r1, r0
	mov r8, r1
	ldr r1, [r0, #0x24]
	asrs r7, r1, #8
	ldr r1, [r0, #0x28]
	asrs r4, r1, #8
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #8
	adds r4, r4, r0
	movs r6, #0
	b _08063D1A
_08063CBC:
	mov r0, r8
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	adds r5, r1, #0
	ldr r1, [r3, #0x10]
	cmp r0, #0
	beq _08063CF4
	asrs r0, r1, #8
	subs r0, r0, r7
	subs r0, #1
	cmp r0, #0x4e
	bhi _08063CEA
	ldr r0, [r3, #0x14]
	asrs r2, r0, #8
	adds r0, r4, #0
	adds r0, #0x50
	cmp r2, r0
	bge _08063CEA
	subs r0, #0x60
	cmp r2, r0
	bgt _08063D10
_08063CEA:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	bne _08063D14
_08063CF4:
	asrs r0, r1, #8
	subs r0, r7, r0
	subs r0, #1
	cmp r0, #0x4e
	bhi _08063D14
	ldr r0, [r3, #0x14]
	asrs r1, r0, #8
	adds r0, r4, #0
	adds r0, #0x50
	cmp r1, r0
	bge _08063D14
	subs r0, #0x60
	cmp r1, r0
	ble _08063D14
_08063D10:
	movs r0, #1
	b _08063D2C
_08063D14:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08063D1A:
	cmp r6, #1
	bhi _08063D2A
	adds r0, r6, #0
	bl sub_805CD20
	adds r3, r0, #0
	cmp r3, #0
	bne _08063CBC
_08063D2A:
	movs r0, #0
_08063D2C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8063D38
sub_8063D38: @ 0x08063D38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #1
	beq _08063DA0
	adds r5, r6, #0
	adds r5, #0x5c
	ldrb r0, [r5]
	subs r0, #0x10
	strb r0, [r5]
	adds r4, r6, #0
	adds r4, #0x5d
	ldrb r0, [r4]
	subs r0, #0x10
	strb r0, [r4]
	adds r3, r6, #0
	adds r3, #0x5e
	ldrb r0, [r3]
	subs r0, #0x10
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x5f
	ldrb r0, [r2]
	subs r0, #0x10
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	ldrb r0, [r6, #8]
	mov r8, r5
	adds r7, r4, #0
	adds r5, r3, #0
	adds r4, r2, #0
	cmp r0, #1
	bne _08063DC4
_08063DA0:
	adds r4, r6, #0
	adds r4, #0x5c
	movs r0, #0xfc
	strb r0, [r4]
	adds r3, r6, #0
	adds r3, #0x5d
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x5e
	movs r0, #4
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x5f
	strb r0, [r1]
	mov r8, r4
	adds r7, r3, #0
	adds r5, r2, #0
	adds r4, r1, #0
_08063DC4:
	adds r0, r6, #0
	mov r1, sp
	bl sub_8063EDC
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0x38
	str r0, [sp, #0x1c]
	ldr r0, [r6, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x20]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r6, #0xc]
	movs r2, #0
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #0xe]
	strh r0, [r1, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #7]
	strb r0, [r1, #8]
	mov r0, sp
	str r2, [sp, #0x28]
	bl sub_805C280
	adds r3, r0, #0
	ldrb r0, [r6, #8]
	ldr r2, [sp, #0x28]
	cmp r0, #1
	beq _08063E44
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	ldrb r0, [r7]
	adds r0, #0x10
	strb r0, [r7]
	ldrb r0, [r5]
	adds r0, #0x10
	strb r0, [r5]
	ldrb r0, [r4]
	adds r0, #0x10
	strb r0, [r4]
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	ldrb r0, [r6, #8]
	cmp r0, #1
	bne _08063E4E
_08063E44:
	mov r0, r8
	strb r2, [r0]
	strb r2, [r7]
	strb r2, [r5]
	strb r2, [r4]
_08063E4E:
	adds r0, r3, #0
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8063E5C
sub_8063E5C: @ 0x08063E5C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r3, #0
	adds r5, #0x38
	adds r4, r3, #0
	adds r4, #0x2c
	ldr r1, [r3, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r3, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08063EA4 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r3, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r3, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	ldr r2, _08063EA8 @ =gUnknown_080D210C
	ldrh r0, [r5, #0xc]
	ldrh r6, [r2, #0x10]
	cmp r0, r6
	bne _08063EAC
	ldrb r0, [r5, #0x1a]
	ldrb r2, [r2, #0x12]
	cmp r0, r2
	bne _08063EAC
	adds r0, r1, #0
	subs r0, #0xb
	b _08063EB0
	.align 2, 0
_08063EA4: .4byte gUnknown_03001D10
_08063EA8: .4byte gUnknown_080D210C
_08063EAC:
	ldrh r0, [r5, #0x12]
	adds r0, #6
_08063EB0:
	strh r0, [r5, #0x12]
	ldrh r0, [r3, #0x10]
	strh r0, [r4]
	ldrh r0, [r5, #0x10]
	strh r0, [r4, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r4, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80BF8F4
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8063EDC
sub_8063EDC: @ 0x08063EDC
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x38
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x28]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xc]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xe]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8063F08
sub_8063F08: @ 0x08063F08
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x38]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Clam
CreateEntity_Clam: @ 0x08063F1C
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
	ldr r0, _08063F8C @ =sub_8064074
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08063F90 @ =sub_80646DC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r3, #0
	strb r4, [r7, #5]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #6]
	movs r2, #0
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	str r1, [r7, #0x18]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x1c]
	str r1, [r7, #0x10]
	str r0, [r7, #0x14]
	strh r3, [r7, #0xe]
	strb r2, [r7, #7]
	strb r2, [r7, #8]
	ldrb r1, [r4, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08063F94
	movs r0, #0xff
	b _08063F96
	.align 2, 0
_08063F8C: .4byte sub_8064074
_08063F90: .4byte sub_80646DC
_08063F94:
	movs r0, #1
_08063F96:
	strb r0, [r7, #9]
	mov r0, r8
	ldrb r1, [r0, #7]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08063FAA
	movs r0, #1
_08063FAA:
	strb r0, [r7, #4]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x4c
	ldr r2, _08063FDC @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_8063FE0
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r4, r8
	strb r0, [r4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063FDC: .4byte 0x01000002

	thumb_func_start sub_8063FE0
sub_8063FE0: @ 0x08063FE0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r5, r6, #0
	adds r5, #0x20
	str r0, [r6, #0x20]
	ldr r1, _0806406C @ =gUnknown_080D212C
	ldrh r0, [r1]
	movs r4, #0
	movs r3, #0
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r1, [r6, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08064070 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r4, [r5, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	movs r0, #9
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _0806404A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r5, #8]
_0806404A:
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _0806405A
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #8]
_0806405A:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806406C: .4byte gUnknown_080D212C
_08064070: .4byte gUnknown_03001D10

	thumb_func_start sub_8064074
sub_8064074: @ 0x08064074
	push {r4, lr}
	ldr r0, _0806409C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _080640A4
	ldr r1, _080640A0 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CE14
	b _080640B6
	.align 2, 0
_0806409C: .4byte gCurTask
_080640A0: .4byte 0x03000018
_080640A4:
	ldr r2, _080640D0 @ =0x03000018
	adds r0, r3, r2
	ldr r1, _080640D4 @ =0x0300000A
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
_080640B6:
	adds r0, r4, #0
	bl sub_80645D8
	adds r0, r4, #0
	bl sub_806461C
	cmp r0, #1
	bne _080640DC
	ldr r0, _080640D8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806413A
	.align 2, 0
_080640D0: .4byte 0x03000018
_080640D4: .4byte 0x0300000A
_080640D8: .4byte gCurTask
_080640DC:
	ldr r0, _0806411C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0806413A
	cmp r1, #4
	beq _0806413A
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _0806412C
	adds r0, r4, #0
	bl sub_8064684
	cmp r0, #1
	bne _0806412C
	adds r1, r4, #0
	adds r1, #0x20
	ldr r2, _08064120 @ =gUnknown_080D212C
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, _08064124 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064128 @ =sub_8064140
	str r0, [r1, #8]
	b _0806413A
	.align 2, 0
_0806411C: .4byte gUnknown_030008A0
_08064120: .4byte gUnknown_080D212C
_08064124: .4byte gCurTask
_08064128: .4byte sub_8064140
_0806412C:
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0806413A
	subs r0, r1, #1
	strh r0, [r4, #0xe]
_0806413A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8064140
sub_8064140: @ 0x08064140
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _0806416C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08064174
	ldr r1, _08064170 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CE14
	b _08064186
	.align 2, 0
_0806416C: .4byte gCurTask
_08064170: .4byte 0x03000018
_08064174:
	ldr r1, _080641D8 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
_08064186:
	adds r0, r5, #0
	bl sub_80645D8
	adds r2, r0, #0
	ldr r0, _080641DC @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064222
	cmp r1, #4
	beq _08064222
	cmp r2, #0
	bne _08064210
	adds r1, r5, #0
	adds r1, #0x20
	ldr r3, _080641E0 @ =gUnknown_080D212C
	ldrh r0, [r3, #0x18]
	strh r0, [r1, #0xc]
	ldrb r0, [r3, #0x1a]
	strb r0, [r1, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	adds r4, r0, #0
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldrb r0, [r5, #7]
	cmp r0, #3
	bne _080641EC
	ldrh r0, [r3, #0x10]
	strh r0, [r1, #0xc]
	ldrb r0, [r3, #0x12]
	strb r0, [r1, #0x1a]
	orrs r2, r4
	strb r2, [r1, #0x1b]
	ldr r0, _080641E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080641E8 @ =sub_8064230
	str r0, [r1, #8]
	b _08064222
	.align 2, 0
_080641D8: .4byte 0x03000018
_080641DC: .4byte gUnknown_030008A0
_080641E0: .4byte gUnknown_080D212C
_080641E4: .4byte gCurTask
_080641E8: .4byte sub_8064230
_080641EC:
	ldr r4, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r4, r0
	rsbs r4, r4, #0
	lsrs r4, r4, #0x1f
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldrh r2, [r5, #0xa]
	ldrh r3, [r5, #0xc]
	str r4, [sp]
	ldrb r4, [r5, #4]
	str r4, [sp, #4]
	bl sub_80646F0
	ldrb r0, [r5, #7]
	adds r0, #1
	strb r0, [r5, #7]
_08064210:
	adds r0, r5, #0
	bl sub_806461C
	cmp r0, #1
	bne _08064222
	ldr r0, _0806422C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08064222:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806422C: .4byte gCurTask

	thumb_func_start sub_8064230
sub_8064230: @ 0x08064230
	push {r4, r5, lr}
	ldr r0, _08064258 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08064260
	ldr r1, _0806425C @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CE14
	b _08064272
	.align 2, 0
_08064258: .4byte gCurTask
_0806425C: .4byte 0x03000018
_08064260:
	ldr r1, _080642D0 @ =0x03000018
	adds r0, r3, r1
	subs r1, #0xe
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
_08064272:
	adds r0, r4, #0
	bl sub_80645D8
	adds r2, r0, #0
	ldr r0, _080642D4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080642FA
	cmp r1, #4
	beq _080642FA
	cmp r2, #0
	bne _080642E8
	adds r2, r4, #0
	adds r2, #0x20
	ldr r3, _080642D8 @ =gUnknown_080D212C
	ldrh r0, [r3, #0x20]
	strh r0, [r2, #0xc]
	adds r0, r3, #0
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	adds r5, r0, #0
	movs r1, #0xff
	strb r1, [r2, #0x1b]
	ldrb r0, [r4, #7]
	cmp r0, #4
	bne _080642E4
	ldrh r0, [r3]
	strh r0, [r2, #0xc]
	ldrb r0, [r3, #2]
	strb r0, [r2, #0x1a]
	orrs r1, r5
	strb r1, [r2, #0x1b]
	movs r0, #0x78
	strh r0, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #7]
	ldr r0, _080642DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080642E0 @ =sub_8064074
	str r0, [r1, #8]
	b _080642FA
	.align 2, 0
_080642D0: .4byte 0x03000018
_080642D4: .4byte gUnknown_030008A0
_080642D8: .4byte gUnknown_080D212C
_080642DC: .4byte gCurTask
_080642E0: .4byte sub_8064074
_080642E4:
	adds r0, #1
	strb r0, [r4, #7]
_080642E8:
	adds r0, r4, #0
	bl sub_806461C
	cmp r0, #1
	bne _080642FA
	ldr r0, _08064300 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080642FA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064300: .4byte gCurTask

	thumb_func_start sub_8064304
sub_8064304: @ 0x08064304
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x1c
	str r1, [r4, #0x1c]
	ldr r1, _08064374 @ =gUnknown_080D212C
	ldrh r2, [r1, #0x28]
	movs r6, #0
	movs r5, #0
	strh r2, [r0, #0xc]
	adds r1, #0x2a
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r2, [r4, #0xc]
	asrs r2, r2, #8
	ldrh r1, [r4, #2]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08064378 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r0, #0x10]
	ldr r2, [r4, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r1, [r3, #4]
	subs r2, r2, r1
	strh r2, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064374: .4byte gUnknown_080D212C
_08064378: .4byte gUnknown_03001D10

	thumb_func_start sub_806437C
sub_806437C: @ 0x0806437C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r6, #6
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08064396
	ldrb r0, [r5]
	movs r4, #0x60
	cmp r0, #0
	beq _080643A0
	adds r4, #0xc0
	b _080643A0
_08064396:
	ldrb r0, [r5]
	movs r4, #0xa0
	cmp r0, #0
	beq _080643A0
	movs r4, #0xe0
_080643A0:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r3, _0806441C @ =gUnknown_082B48B4
	movs r1, #0xff
	ands r1, r4
	lsls r0, r1, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #3
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0xc]
	cmp r4, #0x60
	beq _080643E2
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r4, r0
	bne _080643EA
_080643E2:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r2, r1
	str r0, [sp, #8]
_080643EA:
	ldr r1, [sp, #4]
	ldr r2, [sp]
	ldr r0, [sp, #0xc]
	subs r0, r0, r1
	asrs r0, r6
	ldr r3, [r5, #8]
	asrs r4, r3, #6
	muls r0, r4, r0
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldr r0, [sp, #8]
	subs r0, r0, r2
	asrs r0, r6
	muls r0, r4, r0
	adds r2, r2, r0
	str r2, [r5, #0x14]
	movs r0, #2
	lsls r0, r0, #8
	adds r3, r3, r0
	str r3, [r5, #8]
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806441C: .4byte gUnknown_082B48B4

	thumb_func_start sub_8064420
sub_8064420: @ 0x08064420
	push {r4, r5, lr}
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	ldrh r2, [r0, #2]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r3, _08064480 @ =gUnknown_03001D10
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
_08064480: .4byte gUnknown_03001D10
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
	ldr r0, _080644FC @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0806450A
	.align 2, 0
_080644FC: .4byte gUnknown_030008A0
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
	ldr r1, _08064548 @ =gUnknown_030015C0
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
_08064548: .4byte gUnknown_030015C0
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
	ldr r3, _080645A0 @ =gUnknown_03001D10
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
_080645A0: .4byte gUnknown_03001D10
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
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
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
	ldr r3, _08064618 @ =gUnknown_03001D10
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
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08064618: .4byte gUnknown_03001D10

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

	thumb_func_start sub_80646DC
sub_80646DC: @ 0x080646DC
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
	ldr r0, _08064798 @ =sub_80647B0
	ldr r2, _0806479C @ =0x00004040
	ldr r1, _080647A0 @ =sub_8064804
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
	bl sub_80C7520
	mov r0, sp
	adds r0, #6
	strh r5, [r0]
	ldr r3, [sp, #0xc]
	ldr r1, _080647AC @ =0x03000040
	adds r3, r3, r1
	adds r1, r3, #0
	adds r2, r6, #0
	bl sub_80C7520
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
_08064798: .4byte sub_80647B0
_0806479C: .4byte 0x00004040
_080647A0: .4byte sub_8064804
_080647A4: .4byte 0x03000048
_080647A8: .4byte 0x01000002
_080647AC: .4byte 0x03000040

	thumb_func_start sub_80647B0
sub_80647B0: @ 0x080647B0
	push {r4, lr}
	ldr r0, _080647FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08064800 @ =gUnknown_030008A0
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
_08064800: .4byte gUnknown_030008A0

	thumb_func_start sub_8064804
sub_8064804: @ 0x08064804
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Kamaki
CreateEntity_Kamaki: @ 0x08064818
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
	ldr r0, _08064898 @ =sub_8064980
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0806489C @ =sub_8065150
	str r1, [sp]
	movs r1, #0x5c
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
	strb r0, [r7, #6]
	strb r4, [r7, #5]
	movs r3, #0
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0xb
	str r1, [r7, #0x1c]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x20]
	str r1, [r7, #0x14]
	str r0, [r7, #0x18]
	movs r0, #3
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x28]
	strb r3, [r7, #7]
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x10]
	ldrb r1, [r4, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080648A0
	movs r0, #0xff
	b _080648A2
	.align 2, 0
_08064898: .4byte sub_8064980
_0806489C: .4byte sub_8065150
_080648A0:
	movs r0, #1
_080648A2:
	strb r0, [r7, #8]
	mov r0, r8
	ldrb r1, [r0, #7]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _080648B6
	movs r0, #1
_080648B6:
	strb r0, [r7, #4]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x58
	ldr r2, _080648E8 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_80648EC
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r4, r8
	strb r0, [r4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080648E8: .4byte 0x01000002

	thumb_func_start sub_80648EC
sub_80648EC: @ 0x080648EC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r5, r6, #0
	adds r5, #0x2c
	str r0, [r6, #0x2c]
	ldr r1, _08064978 @ =gUnknown_080D215C
	ldrh r0, [r1]
	movs r4, #0
	movs r3, #0
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0806497C @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r6, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r4, [r5, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	movs r0, #8
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _08064956
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r5, #8]
_08064956:
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _08064966
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #8]
_08064966:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl sub_80BF44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064978: .4byte gUnknown_080D215C
_0806497C: .4byte gUnknown_03001D10

	thumb_func_start sub_8064980
sub_8064980: @ 0x08064980
	push {r4, r5, r6, lr}
	ldr r0, _080649B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r0, #0x2c
	adds r5, r3, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _080649C0
	ldr r1, _080649B4 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _080649B8 @ =0x03000014
	adds r1, r3, r2
	ldr r6, _080649BC @ =0x0300000A
	adds r2, r3, r6
	subs r6, #3
	adds r3, r3, r6
	bl sub_805CE14
	b _080649D4
	.align 2, 0
_080649B0: .4byte gCurTask
_080649B4: .4byte 0x0300001C
_080649B8: .4byte 0x03000014
_080649BC: .4byte 0x0300000A
_080649C0:
	ldr r1, _080649E8 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _080649EC @ =0x03000014
	adds r1, r3, r2
	ldr r6, _080649F0 @ =0x0300000A
	adds r2, r3, r6
	subs r6, #3
	adds r3, r3, r6
	bl sub_805CD70
_080649D4:
	adds r0, r4, #0
	bl sub_8065104
	cmp r0, #1
	bne _080649F8
	ldr r0, _080649F4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08064A48
	.align 2, 0
_080649E8: .4byte 0x0300001C
_080649EC: .4byte 0x03000014
_080649F0: .4byte 0x0300000A
_080649F4: .4byte gCurTask
_080649F8:
	adds r0, r4, #0
	bl sub_8065084
	adds r2, r0, #0
	ldr r0, _08064A50 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064A48
	cmp r1, #4
	beq _08064A48
	cmp r2, #0
	bne _08064A1C
	strh r2, [r4, #0xe]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
_08064A1C:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _08064A48
	adds r1, r4, #0
	adds r1, #0x2c
	ldr r2, _08064A54 @ =gUnknown_080D215C
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0
	strh r0, [r4, #0x10]
	ldr r0, _08064A58 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064A5C @ =sub_8064A60
	str r0, [r1, #8]
_08064A48:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064A50: .4byte gUnknown_030008A0
_08064A54: .4byte gUnknown_080D215C
_08064A58: .4byte gCurTask
_08064A5C: .4byte sub_8064A60

	thumb_func_start sub_8064A60
sub_8064A60: @ 0x08064A60
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08064A8C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08064A9C
	ldr r1, _08064A90 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _08064A94 @ =0x03000014
	adds r1, r3, r2
	ldr r4, _08064A98 @ =0x0300000A
	adds r2, r3, r4
	subs r4, #3
	adds r3, r3, r4
	bl sub_805CE14
	b _08064AB0
	.align 2, 0
_08064A8C: .4byte gCurTask
_08064A90: .4byte 0x0300001C
_08064A94: .4byte 0x03000014
_08064A98: .4byte 0x0300000A
_08064A9C:
	ldr r1, _08064AC4 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _08064AC8 @ =0x03000014
	adds r1, r3, r2
	ldr r4, _08064ACC @ =0x0300000A
	adds r2, r3, r4
	subs r4, #3
	adds r3, r3, r4
	bl sub_805CD70
_08064AB0:
	adds r0, r5, #0
	bl sub_8065104
	cmp r0, #1
	bne _08064AD4
	ldr r0, _08064AD0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08064B3A
	.align 2, 0
_08064AC4: .4byte 0x0300001C
_08064AC8: .4byte 0x03000014
_08064ACC: .4byte 0x0300000A
_08064AD0: .4byte gCurTask
_08064AD4:
	adds r0, r5, #0
	bl sub_8065084
	adds r6, r0, #0
	ldr r0, _08064B44 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064B3A
	cmp r1, #4
	beq _08064B3A
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x61
	bne _08064B1A
	ldr r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r4, r0
	rsbs r4, r4, #0
	lsrs r4, r4, #0x1f
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	ldrh r2, [r5, #0xa]
	ldrh r3, [r5, #0xc]
	str r4, [sp]
	ldrb r4, [r5, #4]
	str r4, [sp, #4]
	bl sub_8064C18
_08064B1A:
	cmp r6, #0
	bne _08064B3A
	adds r1, r5, #0
	adds r1, #0x2c
	ldr r2, _08064B48 @ =gUnknown_080D215C
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0x12]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	strh r6, [r5, #0x10]
	ldr r0, _08064B4C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064B50 @ =sub_8064B54
	str r0, [r1, #8]
_08064B3A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064B44: .4byte gUnknown_030008A0
_08064B48: .4byte gUnknown_080D215C
_08064B4C: .4byte gCurTask
_08064B50: .4byte sub_8064B54

	thumb_func_start sub_8064B54
sub_8064B54: @ 0x08064B54
	push {r4, r5, lr}
	ldr r0, _08064B80 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08064B90
	ldr r1, _08064B84 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _08064B88 @ =0x03000014
	adds r1, r3, r2
	ldr r5, _08064B8C @ =0x0300000A
	adds r2, r3, r5
	subs r5, #3
	adds r3, r3, r5
	bl sub_805CE14
	b _08064BA4
	.align 2, 0
_08064B80: .4byte gCurTask
_08064B84: .4byte 0x0300001C
_08064B88: .4byte 0x03000014
_08064B8C: .4byte 0x0300000A
_08064B90:
	ldr r1, _08064BB8 @ =0x0300001C
	adds r0, r3, r1
	ldr r2, _08064BBC @ =0x03000014
	adds r1, r3, r2
	ldr r5, _08064BC0 @ =0x0300000A
	adds r2, r3, r5
	subs r5, #3
	adds r3, r3, r5
	bl sub_805CD70
_08064BA4:
	adds r0, r4, #0
	bl sub_8065104
	cmp r0, #1
	bne _08064BC8
	ldr r0, _08064BC4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08064C02
	.align 2, 0
_08064BB8: .4byte 0x0300001C
_08064BBC: .4byte 0x03000014
_08064BC0: .4byte 0x0300000A
_08064BC4: .4byte gCurTask
_08064BC8:
	adds r0, r4, #0
	bl sub_8065084
	adds r3, r0, #0
	ldr r0, _08064C08 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064C02
	cmp r1, #4
	beq _08064C02
	cmp r3, #0
	bne _08064C02
	adds r1, r4, #0
	adds r1, #0x2c
	ldr r2, _08064C0C @ =gUnknown_080D215C
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	strh r3, [r4, #0xe]
	ldr r0, _08064C10 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08064C14 @ =sub_8064980
	str r0, [r1, #8]
_08064C02:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064C08: .4byte gUnknown_030008A0
_08064C0C: .4byte gUnknown_080D215C
_08064C10: .4byte gCurTask
_08064C14: .4byte sub_8064980

	thumb_func_start sub_8064C18
sub_8064C18: @ 0x08064C18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r4, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	mov r8, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r0, _08064CA8 @ =sub_8064E10
	ldr r2, _08064CAC @ =0x00004040
	ldr r1, _08064CB0 @ =sub_80651BC
	str r1, [sp]
	movs r1, #0x98
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r1, #0
	strh r5, [r7, #2]
	strh r6, [r7, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r7, #0xa]
	strh r1, [r7, #0xe]
	strh r1, [r7, #6]
	strh r1, [r7, #8]
	mov r0, r8
	strb r0, [r7]
	ldr r0, _08064CB4 @ =gUnknown_080D217C
	lsls r4, r4, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #8
	ldr r2, _08064CB8 @ =0xFFFFF800
	adds r0, r1, r2
	add r0, sb
	str r0, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r1, r1, r0
	add sb, r1
	mov r2, sb
	str r2, [r7, #0x18]
	mov r0, r8
	cmp r0, #0
	beq _08064CBC
	movs r0, #0x80
	lsls r0, r0, #6
	b _08064CBE
	.align 2, 0
_08064CA8: .4byte sub_8064E10
_08064CAC: .4byte 0x00004040
_08064CB0: .4byte sub_80651BC
_08064CB4: .4byte gUnknown_080D217C
_08064CB8: .4byte 0xFFFFF800
_08064CBC:
	ldr r0, _08064CFC @ =0xFFFFE000
_08064CBE:
	add r0, sl
	str r0, [r7, #0x14]
	str r0, [r7, #0x1c]
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0x64
	ldr r5, _08064D00 @ =0x01000002
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sp
	adds r0, #6
	strh r4, [r0]
	adds r1, r7, #0
	adds r1, #0x94
	adds r2, r5, #0
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_8064D04
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064CFC: .4byte 0xFFFFE000
_08064D00: .4byte 0x01000002

	thumb_func_start sub_8064D04
sub_8064D04: @ 0x08064D04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r3, r0, #0
	movs r0, #0x10
	str r3, [sp]
	bl VramMalloc
	mov r8, r0
	ldr r3, [sp]
	adds r1, r3, #0
	adds r1, #0x20
	adds r7, r3, #0
	adds r7, #0x38
	str r0, [r3, #0x38]
	ldr r2, _08064E08 @ =gUnknown_080D215C
	ldr r0, [r2, #0x1c]
	lsls r0, r0, #5
	add r8, r0
	ldrh r5, [r2, #0x18]
	strh r5, [r7, #0xc]
	ldrb r6, [r2, #0x1a]
	strb r6, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	ldr r4, _08064E0C @ =gUnknown_03001D10
	ldr r2, [r4]
	subs r0, r0, r2
	strh r0, [r7, #0x10]
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r2, [r4, #4]
	subs r0, r0, r2
	strh r0, [r7, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r2, #0
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r4, #0x10
	mov sl, r4
	mov r0, sl
	strb r0, [r7, #0x1c]
	strb r2, [r7, #0x1f]
	movs r0, #0x6a
	str r0, [r7, #8]
	subs r4, #0x11
	mov sb, r4
	str r4, [r7, #0x20]
	movs r0, #0
	strh r0, [r3, #0x20]
	ldrh r0, [r7, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r1, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r1, #2]
	strh r4, [r1, #4]
	adds r0, r7, #0
	str r3, [sp]
	bl sub_80BF8F4
	adds r0, r7, #0
	bl sub_80BF44C
	ldr r3, [sp]
	adds r1, r3, #0
	adds r1, #0x2c
	adds r7, r3, #0
	adds r7, #0x68
	mov r2, r8
	str r2, [r3, #0x68]
	strh r5, [r7, #0xc]
	strb r6, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r0, [r3, #0x18]
	asrs r0, r0, #8
	ldr r5, _08064E0C @ =gUnknown_03001D10
	ldr r2, [r5]
	subs r0, r0, r2
	strh r0, [r7, #0x10]
	ldr r0, [r3, #0x1c]
	asrs r0, r0, #8
	ldr r2, [r5, #4]
	subs r0, r0, r2
	strh r0, [r7, #0x12]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r2, #0
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	mov r5, sl
	strb r5, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r0, #0x6b
	str r0, [r7, #8]
	mov r2, sb
	str r2, [r7, #0x20]
	strh r4, [r3, #0x2c]
	ldrh r0, [r7, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r1, #8]
	strh r4, [r1, #2]
	strh r4, [r1, #4]
	adds r0, r7, #0
	bl sub_80BF8F4
	adds r0, r7, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064E08: .4byte gUnknown_080D215C
_08064E0C: .4byte gUnknown_03001D10

	thumb_func_start sub_8064E10
sub_8064E10: @ 0x08064E10
	push {r4, r5, lr}
	ldr r0, _08064E60 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _08064E64 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08064E44
	cmp r1, #4
	beq _08064E44
	adds r0, r4, #0
	bl sub_8064F80
	ldrh r0, [r4, #6]
	adds r0, #0x40
	strh r0, [r4, #6]
	ldrh r0, [r4, #8]
	adds r0, #0x40
	strh r0, [r4, #8]
_08064E44:
	adds r0, r4, #0
	bl sub_8064EA0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8065164
	cmp r0, #1
	bne _08064E68
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08064E6E
	.align 2, 0
_08064E60: .4byte gCurTask
_08064E64: .4byte gUnknown_030008A0
_08064E68:
	adds r0, r4, #0
	bl sub_8064FCC
_08064E6E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8065164
	cmp r0, #1
	bne _08064E82
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08064E88
_08064E82:
	adds r0, r4, #0
	bl sub_8065028
_08064E88:
	cmp r5, #2
	bne _08064E94
	ldr r0, _08064E9C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08064E94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064E9C: .4byte gCurTask

	thumb_func_start sub_8064EA0
sub_8064EA0: @ 0x08064EA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r4, #0
	mov sl, r4
_08064EB2:
	mov r0, sl
	lsls r1, r0, #3
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r6, r0, #8
	ldrh r0, [r5, #2]
	lsls r0, r0, #8
	add r8, r0
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r6, r6, r0
	adds r7, r5, #0
	adds r7, #0x68
	mov r1, sl
	cmp r1, #0
	bne _08064EE4
	subs r7, #0x30
_08064EE4:
	movs r0, #0
	mov sb, r0
_08064EE8:
	mov r1, sb
	cmp r1, #0
	bne _08064EF8
	ldr r0, _08064EF4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08064F02
	.align 2, 0
_08064EF4: .4byte gUnknown_030008A0
_08064EF8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08064F02:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08064F4C @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08064F50
	str r4, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _08064F50
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08064F48
	str r4, [sp]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_08064F48:
	movs r0, #1
	b _08064F6E
	.align 2, 0
_08064F4C: .4byte gUnknown_030015C0
_08064F50:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bls _08064EE8
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bls _08064EB2
	movs r0, #0
_08064F6E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8064F80
sub_8064F80: @ 0x08064F80
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08064F98
	ldrh r1, [r2, #0xe]
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2, #0xe]
	movs r3, #0xf8
	lsls r3, r3, #1
	b _08064FA2
_08064F98:
	ldrh r1, [r2, #0xe]
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r2, #0xe]
	ldr r3, _08064FC8 @ =0xFFFFFE10
_08064FA2:
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r2, #0x18]
	adds r0, #0x80
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x10]
	subs r0, #0x80
	str r0, [r2, #0x10]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r2, #0x1c]
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	pop {r0}
	bx r0
	.align 2, 0
_08064FC8: .4byte 0xFFFFFE10

	thumb_func_start sub_8064FCC
sub_8064FCC: @ 0x08064FCC
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x38
	ldr r1, [r3, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08065024 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r3, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r1, r3, #0
	adds r1, #0x20
	ldrh r0, [r3, #6]
	strh r0, [r3, #0x20]
	ldrh r0, [r4, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl sub_80BF8F4
	adds r0, r4, #0
	bl sub_80BF44C
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08065024: .4byte gUnknown_03001D10

	thumb_func_start sub_8065028
sub_8065028: @ 0x08065028
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0x68
	ldr r1, [r3, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08065080 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r1, [r3, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r1, r3, #0
	adds r1, #0x2c
	ldrh r0, [r3, #8]
	strh r0, [r3, #0x2c]
	ldrh r0, [r4, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl sub_80BF8F4
	adds r0, r4, #0
	bl sub_80BF44C
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_80C033C
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08065080: .4byte gUnknown_03001D10

	thumb_func_start sub_8065084
sub_8065084: @ 0x08065084
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	ldr r2, [r0, #0x1c]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _080650C4 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080650C4: .4byte gUnknown_03001D10

	thumb_func_start sub_80650C8
sub_80650C8: @ 0x080650C8
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0
	str r0, [r1]
	strb r0, [r1, #8]
	str r0, [r1, #4]
	adds r0, r2, #0
	adds r0, #0x2c
	str r0, [r1, #0x1c]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0x10]
	ldr r3, [r2, #0x18]
	str r3, [r1, #0x14]
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq _080650F0
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r3, r4
	str r0, [r1, #0x14]
_080650F0:
	ldrh r0, [r2, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8065104
sub_8065104: @ 0x08065104
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_80650C8
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x10]
	ldr r1, [r4, #0x20]
	str r1, [sp, #0x14]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0806512E
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [sp, #0x14]
_0806512E:
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
	.align 2, 0

	thumb_func_start sub_8065150
sub_8065150: @ 0x08065150
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8065164
sub_8065164: @ 0x08065164
	push {r4, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x15
	adds r0, #0x10
	adds r0, r0, r1
	ldr r2, [r0]
	asrs r2, r2, #8
	mov r3, ip
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080651B0 @ =gUnknown_03001D10
	ldr r0, [r3]
	subs r2, r2, r0
	mov r0, ip
	adds r0, #0x14
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #8
	mov r4, ip
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #0xf0
	bhi _080651AC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _080651B4
_080651AC:
	movs r0, #1
	b _080651B6
	.align 2, 0
_080651B0: .4byte gUnknown_03001D10
_080651B4:
	movs r0, #0
_080651B6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80651BC
sub_80651BC: @ 0x080651BC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x38]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80651D0
sub_80651D0: @ 0x080651D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [sp, #0x4c]
	str r5, [r4]
	ldrb r0, [r5]
	strb r0, [r4, #5]
	strb r1, [r4, #4]
	strh r2, [r4, #0x12]
	strh r3, [r4, #0x14]
	ldrb r1, [r5]
	lsls r1, r1, #0xb
	str r1, [r4, #0x48]
	ldrb r0, [r5, #1]
	lsls r0, r0, #0xb
	str r0, [r4, #0x4c]
	str r1, [r4, #0x40]
	str r0, [r4, #0x44]
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldrb r0, [r5, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r4, #0x1c]
	ldrb r1, [r5, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806521E
	movs r0, #0xff
	b _08065220
_0806521E:
	movs r0, #1
_08065220:
	strb r0, [r4, #7]
	ldrb r1, [r5, #7]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08065232
	movs r0, #1
_08065232:
	strb r0, [r4, #6]
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0x7c
	str r0, [sp, #0x28]
	movs r1, #2
	add r1, sp
	mov r8, r1
	adds r0, #0x30
	str r0, [sp, #0x18]
	add r1, sp, #4
	mov sb, r1
	adds r0, #0x30
	str r0, [sp, #0x10]
	movs r1, #6
	add r1, sp
	mov sl, r1
	subs r0, #0x68
	str r0, [sp, #0x1c]
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x20]
	adds r0, #0x30
	str r0, [sp, #0x14]
	adds r1, #2
	str r1, [sp, #0x24]
	adds r0, #0x30
	str r0, [sp, #0xc]
	adds r7, r4, #0
	adds r7, #0x20
	adds r6, r4, #0
	adds r6, #0x24
	adds r5, r4, #0
	adds r5, #8
	mov ip, r3
_08065278:
	lsls r1, r3, #3
	adds r2, r7, r1
	ldr r0, [r4, #0x40]
	str r0, [r2]
	adds r1, r6, r1
	ldr r0, [r4, #0x44]
	str r0, [r1]
	lsls r0, r3, #1
	adds r0, r5, r0
	mov r1, ip
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08065278
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r5, _080652FC @ =0x01000002
	ldr r1, [sp, #0x28]
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, r8
	strh r4, [r0]
	ldr r1, [sp, #0x18]
	adds r2, r5, #0
	bl sub_80C7520
	mov r1, sb
	strh r4, [r1]
	mov r0, sb
	ldr r1, [sp, #0x10]
	adds r2, r5, #0
	bl sub_80C7520
	mov r0, sl
	strh r4, [r0]
	ldr r1, [sp, #0x1c]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r1, [sp, #0x20]
	strh r4, [r1]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x14]
	adds r2, r5, #0
	bl sub_80C7520
	ldr r0, [sp, #0x24]
	strh r4, [r0]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	adds r2, r5, #0
	bl sub_80C7520
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080652FC: .4byte 0x01000002

	thumb_func_start sub_8065300
sub_8065300: @ 0x08065300
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x16
	bl VramMalloc
	adds r5, r0, #0
	adds r2, r4, #0
	adds r2, #0xb0
	str r5, [r2]
	ldr r6, _0806547C @ =gUnknown_080D2180
	ldr r0, [r6, #0x14]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r6, #0x10]
	movs r1, #0
	mov sb, r1
	strh r0, [r2, #0xc]
	ldrb r0, [r6, #0x12]
	strb r0, [r2, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	mov r3, sp
	strb r0, [r3]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [r4, #0x48]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08065480 @ =gUnknown_03001D10
	mov r8, r3
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r1, sb
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	movs r0, #0
	strb r0, [r2, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	str r1, [r2, #0x20]
	movs r7, #0x80
	lsls r7, r7, #5
	str r7, [r2, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08065390
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r7
	str r0, [r2, #8]
_08065390:
	adds r0, r2, #0
	bl sub_80BF44C
	adds r2, r4, #0
	adds r2, #0x50
	str r5, [r4, #0x50]
	ldr r0, [r6, #4]
	lsls r0, r0, #5
	adds r5, r5, r0
	ldrh r0, [r6]
	strh r0, [r2, #0xc]
	ldrb r0, [r6, #2]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r3, sp
	ldrb r3, [r3]
	orrs r0, r3
	strb r0, [r2, #0x1b]
	ldr r1, [r4, #0x48]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r3, r8
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r1, sb
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	movs r0, #0
	strb r0, [r2, #0x1f]
	mov r1, sl
	str r1, [r2, #0x20]
	str r7, [r2, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _080653FE
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r7
	str r0, [r2, #8]
_080653FE:
	adds r0, r2, #0
	bl sub_80BF44C
	adds r2, r4, #0
	adds r2, #0x80
	str r5, [r2]
	ldrh r0, [r6, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r6, #0xa]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r3, sp
	ldrb r3, [r3]
	orrs r0, r3
	strb r0, [r2, #0x1b]
	ldr r1, [r4, #0x48]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r3, r8
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r2, #0x10]
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r2, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	mov r1, sb
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r3, #0x10
	strb r3, [r2, #0x1c]
	movs r0, #0
	strb r0, [r2, #0x1f]
	mov r1, sl
	str r1, [r2, #0x20]
	str r7, [r2, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08065466
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r7
	str r0, [r2, #8]
_08065466:
	adds r0, r2, #0
	bl sub_80BF44C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806547C: .4byte gUnknown_080D2180
_08065480: .4byte gUnknown_03001D10

	thumb_func_start sub_8065484
sub_8065484: @ 0x08065484
	push {r4, r5, r6, r7, lr}
	ldr r0, _080654F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80656B0
	ldr r0, _080654F4 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080654B6
	cmp r1, #4
	beq _080654B6
	ldr r0, _080654F8 @ =0x03000048
	adds r1, r4, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8065544
_080654B6:
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0x50
	adds r6, r5, #0
	adds r6, #0x40
_080654C0:
	lsls r1, r4, #3
	adds r1, #0x20
	adds r1, r5, r1
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_8065544
	cmp r4, #3
	bls _080654C0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_8065884
	cmp r0, #1
	bne _080654FC
	ldr r0, _080654F0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806553C
	.align 2, 0
_080654F0: .4byte gCurTask
_080654F4: .4byte gUnknown_030008A0
_080654F8: .4byte 0x03000048
_080654FC:
	movs r4, #0
_080654FE:
	cmp r4, #0
	beq _08065528
	cmp r4, #1
	bhi _08065518
	lsls r2, r4, #3
	adds r2, #0x20
	adds r2, r5, r2
	adds r0, r5, #0
	adds r1, r5, #0
	adds r1, #0xb0
	bl sub_8065884
	b _08065528
_08065518:
	lsls r2, r4, #3
	adds r2, #0x20
	adds r2, r5, r2
	adds r0, r5, #0
	adds r1, r5, #0
	adds r1, #0x80
	bl sub_8065884
_08065528:
	ldr r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080654FE
_0806553C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8065544
sub_8065544: @ 0x08065544
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r5, _08065574 @ =0x0000FFFD
	cmp r0, #0
	bge _0806555C
	movs r5, #3
_0806555C:
	cmp r1, #0
	bne _08065578
	lsls r0, r5, #0x10
	asrs r0, r0, #0xa
	mov r1, ip
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2, #8]
	movs r4, #0
	adds r2, #8
	b _080655C8
	.align 2, 0
_08065574: .4byte 0x0000FFFD
_08065578:
	cmp r1, #1
	bne _0806558C
	lsls r1, r5, #0x10
	asrs r1, r1, #7
	mov r3, ip
	ldrh r0, [r3, #8]
	subs r0, r0, r1
	strh r0, [r3, #0xa]
	movs r4, #2
	b _080655A8
_0806558C:
	cmp r1, #2
	bls _080655AE
	cmp r1, #3
	bne _080655AE
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #6
	lsls r0, r0, #9
	mov r5, ip
	ldrh r1, [r5, #0xc]
	subs r1, r1, r0
	subs r1, r1, r2
	strh r1, [r5, #0xe]
	movs r4, #6
_080655A8:
	mov r2, ip
	adds r2, #8
	b _080655C8
_080655AE:
	lsls r3, r1, #1
	mov r2, ip
	adds r2, #8
	adds r4, r2, r3
	subs r0, r1, #1
	lsls r0, r0, #1
	adds r0, r2, r0
	lsls r1, r5, #0x10
	asrs r1, r1, #7
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r4]
	adds r4, r3, #0
_080655C8:
	mov r1, ip
	movs r0, #7
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080655E4
	adds r3, r2, r4
	ldrh r1, [r3]
	movs r0, #0xff
	lsls r0, r0, #8
	cmp r1, r0
	bls _080655F2
	movs r0, #0
	strh r0, [r3]
	b _080655F2
_080655E4:
	adds r3, r2, r4
	ldrh r0, [r3]
	movs r1, #0xff
	lsls r1, r1, #8
	cmp r0, r1
	bls _080655F2
	strh r1, [r3]
_080655F2:
	ldr r3, _08065630 @ =gUnknown_082B48B4
	adds r0, r2, r4
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	movs r4, #0xff
	lsrs r0, r2, #0x18
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #5
	mov r5, ip
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r6]
	lsrs r2, r2, #0x17
	ands r2, r4
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #4
	ldr r1, [r5, #0x44]
	adds r1, r1, r0
	str r1, [r6, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08065630: .4byte gUnknown_082B48B4

	thumb_func_start sub_8065634
sub_8065634: @ 0x08065634
	push {r4, lr}
	mov ip, r0
	movs r4, #0
	str r4, [r3]
	strb r4, [r3, #8]
	str r4, [r3, #4]
	str r1, [r3, #0x1c]
	adds r0, #0x50
	cmp r1, r0
	bne _08065674
	adds r0, #0x10
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, _08065670 @ =gUnknown_03001D10
	ldr r1, [r2]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r3, #0x10]
	mov r0, ip
	adds r0, #0x62
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r3, #0x14]
	strh r4, [r3, #0xc]
	strh r4, [r3, #0xe]
	b _080656A2
	.align 2, 0
_08065670: .4byte gUnknown_03001D10
_08065674:
	adds r0, r1, #0
	adds r0, #0x2c
	movs r1, #0xfa
	strb r1, [r0]
	ldr r0, [r3, #0x1c]
	adds r0, #0x2d
	strb r1, [r0]
	ldr r0, [r3, #0x1c]
	adds r0, #0x2e
	movs r1, #6
	strb r1, [r0]
	ldr r0, [r3, #0x1c]
	adds r0, #0x2f
	strb r1, [r0]
	ldr r0, [r2]
	str r0, [r3, #0x10]
	ldr r0, [r2, #4]
	str r0, [r3, #0x14]
	mov r1, ip
	ldrh r0, [r1, #0x12]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0x14]
	strh r0, [r3, #0xe]
_080656A2:
	adds r0, r3, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80656B0
sub_80656B0: @ 0x080656B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x50
	ldr r1, [r4, #0x48]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08065704 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	ldr r1, [r4, #0x4c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	ldr r1, _08065708 @ =0xFFFFC000
	adds r0, r1, #0
	ldrh r2, [r4, #8]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	movs r1, #0x84
	lsls r1, r1, #0x18
	cmp r0, r1
	bls _08065710
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _08065724
	ldr r0, [r3, #8]
	ldr r1, _0806570C @ =0xFFFFFBFF
	ands r0, r1
	b _0806572C
	.align 2, 0
_08065704: .4byte gUnknown_03001D10
_08065708: .4byte 0xFFFFC000
_0806570C: .4byte 0xFFFFFBFF
_08065710:
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _08065724
	ldr r0, [r3, #8]
	ldr r1, _08065720 @ =0xFFFFFBFF
	ands r0, r1
	b _0806572C
	.align 2, 0
_08065720: .4byte 0xFFFFFBFF
_08065724:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0806572C:
	str r0, [r3, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0806573E
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #8]
_0806573E:
	adds r0, r3, #0
	bl sub_80C033C
	movs r5, #0
	movs r0, #0x80
	adds r0, r0, r4
	mov sl, r0
	movs r1, #0x20
	adds r1, r1, r4
	mov sb, r1
	movs r2, #0x24
	adds r2, r2, r4
	mov r8, r2
	adds r7, r4, #0
	adds r7, #8
	ldr r6, _080657B8 @ =gUnknown_03001D10
_0806575E:
	mov r3, sl
	cmp r5, #1
	bhi _08065768
	adds r3, r4, #0
	adds r3, #0xb0
_08065768:
	lsls r2, r5, #3
	mov r1, sb
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6]
	subs r1, r1, r0
	strh r1, [r3, #0x10]
	add r2, r8
	ldr r1, [r2]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #4]
	subs r1, r1, r0
	strh r1, [r3, #0x12]
	lsls r1, r5, #1
	adds r1, r7, r1
	ldr r2, _080657BC @ =0xFFFFC000
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x84
	lsls r1, r1, #8
	cmp r0, r1
	bls _080657C4
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _080657D8
	ldr r0, [r3, #8]
	ldr r1, _080657C0 @ =0xFFFFFBFF
	ands r0, r1
	b _080657E0
	.align 2, 0
_080657B8: .4byte gUnknown_03001D10
_080657BC: .4byte 0xFFFFC000
_080657C0: .4byte 0xFFFFFBFF
_080657C4:
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080657D8
	ldr r0, [r3, #8]
	ldr r1, _080657D4 @ =0xFFFFFBFF
	ands r0, r1
	b _080657E0
	.align 2, 0
_080657D4: .4byte 0xFFFFFBFF
_080657D8:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_080657E0:
	str r0, [r3, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _080657F2
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #8]
_080657F2:
	adds r0, r3, #0
	bl sub_80C033C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0806575E
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start CreateEntity_GuruGuru
CreateEntity_GuruGuru: @ 0x08065814
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0806587C @ =sub_8065484
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08065880 @ =sub_80658C0
	str r1, [sp]
	movs r1, #0xe0
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [sp]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	mov r3, r8
	bl sub_80651D0
	adds r0, r4, #0
	bl sub_8065300
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, sb
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806587C: .4byte sub_8065484
_08065880: .4byte sub_80658C0

	thumb_func_start sub_8065884
sub_8065884: @ 0x08065884
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov r3, sp
	bl sub_8065634
	str r0, [sp, #4]
	str r6, [sp, #0x1c]
	ldr r0, [r4]
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r5, #0x12]
	strh r0, [r1, #0xc]
	ldrh r0, [r5, #0x14]
	strh r0, [r1, #0xe]
	ldr r0, [r5]
	str r0, [sp]
	ldrb r0, [r5, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80658C0
sub_80658C0: @ 0x080658C0
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080658D4 @ =0x030000B0
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_080658D4: .4byte 0x030000B0

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
	ldr r6, _08065A88 @ =gUnknown_03001D10
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
	bl sub_80BF44C
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
	bl sub_80BF44C
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
_08065A88: .4byte gUnknown_03001D10

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
	bl sub_80BF44C
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
	bl sub_80BF44C
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
	ldr r4, _08065D50 @ =gUnknown_03001D10
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
	bl sub_80BF44C
	adds r0, r5, #0
	bl sub_80C033C
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
_08065D50: .4byte gUnknown_03001D10
_08065D54:
	adds r0, r2, #1
_08065D56:
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r7, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
	ldr r0, [r6, #0x24]
	movs r1, #0xe0
	lsls r1, r1, #3
	adds r4, r0, r1
	ldr r0, [r6, #0x1c]
	cmp r4, r0
	ble _08065DD0
	adds r5, r6, #0
	adds r5, #0x34
	ldr r2, _08065DB0 @ =gUnknown_03001D10
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
_08065DB0: .4byte gUnknown_03001D10
_08065DB4:
	adds r0, r2, #1
_08065DB6:
	strh r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_80BF44C
	adds r7, r0, #0
	adds r0, r5, #0
	bl sub_80C033C
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
