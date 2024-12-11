
.syntax unified
.text
	push {lr}
	adds r2, r0, #0     @ r2 = enemy
	ldr r1, _08058B1C @ =gUnknown_080D1E50
	ldrb r0, [r2, #6]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldr r1, [r2, #0x20]
	subs r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x18]
	ldr r3, _08058B20 @ =0xFFFFC000
	adds r0, r0, r3
	cmp r1, r0
	bge _08058B00
	str r0, [r2, #0x20]
_08058B00:
	ldr r0, [r2, #0x18]
	ldr r1, _08058B20 @ =0xFFFFC000
	adds r0, r0, r1
	ldr r1, [r2, #0x20]
	cmp r1, r0
	bne _08058B28
	ldrh r0, [r2, #0xe]
	cmp r0, #0
	bne _08058B24
	movs r0, #0x5a
	strh r0, [r2, #0xe]
	movs r0, #1
	b _08058B4A
	.align 2, 0
_08058B1C: .4byte gUnknown_080D1E50
_08058B20: .4byte 0xFFFFC000
_08058B24:
	subs r0, #1
	strh r0, [r2, #0xe]
_08058B28:
	ldrh r0, [r2, #0x10]
	cmp r0, #5
	bhi _08058B32
	adds r0, #1
	b _08058B46
_08058B32:
	ldrb r0, [r2, #6]
	adds r0, #1
	strb r0, [r2, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08058B44
	movs r0, #2
	strb r0, [r2, #6]
_08058B44:
	movs r0, #0
_08058B46:
	strh r0, [r2, #0x10]
	movs r0, #0
_08058B4A:
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
