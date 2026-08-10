
.syntax unified
.text
	push {r4, lr}
	adds r3, r0, #0
	ldrb r4, [r3, #5]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r1, _08097870 @ =gUnknown_080D6ED4
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	cmp r4, #0
	bne _08097854
	ldr r0, _08097874 @ =0x000009FF
	cmp r1, r0
	bgt _08097866
_08097854:
	cmp r4, #1
	bne _0809787C
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r0]
	ldr r0, _08097878 @ =0xFFFFF600
	cmp r1, r0
	bgt _0809787C
_08097866:
	ldrb r0, [r3, #5]
	adds r0, #1
	strb r0, [r3, #5]
	b _08097894
	.align 2, 0
_08097870: .4byte gUnknown_080D6ED4
_08097874: .4byte 0x000009FF
_08097878: .4byte 0xFFFFF600
_0809787C:
	cmp r4, #2
	bne _08097894
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	cmp r0, #0
	ble _08097894
	movs r0, #0
	str r0, [r2]
	movs r0, #1
	b _08097896
_08097894:
	movs r0, #0
_08097896:
	pop {r4}
	pop {r1}
	bx r1

.syntax divided
