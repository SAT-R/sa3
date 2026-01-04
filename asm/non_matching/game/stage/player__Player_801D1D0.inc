
.syntax unified
.text
	push {lr}
	mov ip, r0
	movs r1, #0x1c
	ldrsh r3, [r0, r1]
	cmp r3, #0
	bge _0801D1DE
	rsbs r3, r3, #0
_0801D1DE:
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	ldr r0, _0801D1F0 @ =0x000002FF
	cmp r3, r0
	bgt _0801D1F4
	adds r3, #6
	b _0801D204
	.align 2, 0
_0801D1F0: .4byte 0x000002FF
_0801D1F4:
	ldr r0, _0801D238 @ =0x00000EFF
	cmp r3, r0
	bgt _0801D204
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0
	bne _0801D204
	adds r3, #3
_0801D204:
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801D220
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r3, r0
	ble _0801D220
	subs r3, #9
	cmp r3, r0
	bge _0801D220
	adds r3, r0, #0
_0801D220:
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0801D23C
	rsbs r0, r3, #0
	mov r1, ip
	strh r0, [r1, #0x1c]
	b _0801D240
	.align 2, 0
_0801D238: .4byte 0x00000EFF
_0801D23C:
	mov r0, ip
	strh r3, [r0, #0x1c]
_0801D240:
	mov r0, ip
	ldrh r1, [r0, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801D26A
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0x80
	beq _0801D2A0
	asrs r0, r1, #0x18
	cmp r0, #0
	bge _0801D260
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0801D260:
	lsls r0, r2, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801D29E
_0801D26A:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801D28E
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0801D2A0
	cmp r0, #0
	ble _0801D284
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0801D284:
	lsls r0, r2, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x12
	adds r0, r0, r2
	b _0801D29E
_0801D28E:
	lsls r0, r2, #0x18
	asrs r1, r0, #0x18
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0801D2A0
	adds r0, r1, #2
	lsls r0, r0, #0x18
_0801D29E:
	lsrs r2, r0, #0x18
_0801D2A0:
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, ip
	strb r2, [r0]
	ldr r1, _0801D2D4 @ =gSineTable
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x15
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	mov r3, ip
	strh r0, [r3, #0x18]
	ldrh r1, [r3, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r3, r2]
	cmp r0, #0x7f
	bgt _0801D2D8
	adds r0, r1, #0
	adds r0, #0x18
	b _0801D2DE
	.align 2, 0
_0801D2D4: .4byte gSineTable
_0801D2D8:
	adds r0, r1, #0
	subs r0, #0x18
	mov r3, ip
_0801D2DE:
	strh r0, [r3, #0x1a]
	ldr r1, _0801D2EC @ =gCamera
	ldr r0, [r1, #0x40]
	cmp r0, #0
	ble _0801D2F0
	subs r0, #2
	b _0801D2F6
	.align 2, 0
_0801D2EC: .4byte gCamera
_0801D2F0:
	cmp r0, #0
	bge _0801D2F8
	adds r0, #4
_0801D2F6:
	str r0, [r1, #0x40]
_0801D2F8:
	pop {r0}
	bx r0
.syntax divided
