
.syntax unified
.text
	push {lr}
	adds r2, r0, #0
	ldr r1, _0805F060 @ =gUnknown_080D1FAC
	ldrb r0, [r2, #6]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldr r1, [r2, #0x20]
	subs r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x18]
	ldr r3, _0805F064 @ =0xFFFFC000
	adds r0, r0, r3
	cmp r1, r0
	bge _0805F044
	str r0, [r2, #0x20]
_0805F044:
	ldr r0, [r2, #0x18]
	ldr r1, _0805F064 @ =0xFFFFC000
	adds r0, r0, r1
	ldr r1, [r2, #0x20]
	cmp r1, r0
	bne _0805F06C
	ldrh r0, [r2, #0xe]
	cmp r0, #0
	bne _0805F068
	movs r0, #0x5a
	strh r0, [r2, #0xe]
	movs r0, #1
	b _0805F08E
	.align 2, 0
_0805F060: .4byte gUnknown_080D1FAC
_0805F064: .4byte 0xFFFFC000
_0805F068:
	subs r0, #1
	strh r0, [r2, #0xe]
_0805F06C:
	ldrh r0, [r2, #0x10]
	cmp r0, #5
	bhi _0805F076
	adds r0, #1
	b _0805F08A
_0805F076:
	ldrb r0, [r2, #6]
	adds r0, #1
	strb r0, [r2, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0805F088
	movs r0, #2
	strb r0, [r2, #6]
_0805F088:
	movs r0, #0
_0805F08A:
	strh r0, [r2, #0x10]
	movs r0, #0
_0805F08E:
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
