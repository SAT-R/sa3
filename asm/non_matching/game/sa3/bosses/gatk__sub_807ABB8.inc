
.syntax unified
.text
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807ABDC
	ldrh r2, [r4, #0x14]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x12
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r0, [r4, #0x16]
	adds r1, r1, r0
	strh r1, [r4, #0x16]
	b _0807ABF2
_0807ABDC:
	ldrh r2, [r4, #0x14]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x12
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r0, [r4, #0x16]
	subs r0, r0, r1
	strh r0, [r4, #0x16]
_0807ABF2:
	ldrh r1, [r4, #0x18]
	adds r1, #0x20
	lsls r0, r2, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r4, #0x18]
	movs r1, #0x16
	ldrsh r0, [r4, r1]
	ldr r2, [r4, #4]
	adds r2, r2, r0
	str r2, [r4, #4]
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0xc]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	adds r2, r4, #0
	adds r2, #0x60
	ldr r1, _0807AC40 @ =0xFFFFFF00
	adds r0, r0, r1
	ldr r3, _0807AC44 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0807AC40: .4byte 0xFFFFFF00
_0807AC44: .4byte 0x000003FF

.syntax divided
