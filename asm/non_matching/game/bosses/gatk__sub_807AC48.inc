
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807AC74 @ =gUnknown_080D5B00
	adds r3, r0, r1
	movs r7, #0
	ldrh r2, [r4, #0x18]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, _0807AC78 @ =0xFFFFFD00
	cmp r1, r0
	ble _0807AC7C
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r4, #0x18]
	adds r5, r4, #0
	adds r5, #0x27
	b _0807AC94
	.align 2, 0
_0807AC74: .4byte gUnknown_080D5B00
_0807AC78: .4byte 0xFFFFFD00
_0807AC7C:
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _0807AC8E
	ldrh r0, [r4, #0x16]
	adds r0, #0x50
	b _0807AC92
_0807AC8E:
	ldrh r0, [r4, #0x16]
	subs r0, #0x50
_0807AC92:
	strh r0, [r4, #0x16]
_0807AC94:
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	adds r2, r0, r1
	str r2, [r4, #4]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	ldrb r0, [r5]
	cmp r0, #0
	beq _0807ACC4
	ldr r1, _0807ACC0 @ =gCamera
	ldr r0, [r1, #0x1c]
	adds r0, #0x14
	lsls r0, r0, #8
	adds r6, r1, #0
	cmp r2, r0
	ble _0807ACD4
	b _0807ACD8
	.align 2, 0
_0807ACC0: .4byte gCamera
_0807ACC4:
	ldr r1, _0807AD14 @ =gCamera
	ldr r0, [r1, #0x18]
	subs r0, #0x14
	lsls r0, r0, #8
	adds r6, r1, #0
	cmp r2, r0
	bge _0807ACD4
	movs r7, #1
_0807ACD4:
	cmp r7, #0
	beq _0807AD4E
_0807ACD8:
	ldr r0, [r3, #4]
	str r0, [r4]
	movs r0, #0
	strh r0, [r4, #0x16]
	strh r0, [r4, #0x18]
	ldr r2, [r6, #0x14]
	subs r2, #0x28
	adds r3, r4, #0
	adds r3, #0x26
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	movs r1, #0x46
	muls r0, r1, r0
	subs r2, r2, r0
	lsls r2, r2, #8
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	cmp r1, #1
	bne _0807AD20
	ldrb r0, [r3]
	ands r1, r0
	cmp r1, #0
	beq _0807AD18
	ldrb r0, [r3]
	lsls r0, r0, #8
	adds r0, r2, r0
	b _0807AD1E
	.align 2, 0
_0807AD14: .4byte gCamera
_0807AD18:
	ldrb r0, [r3]
	lsls r0, r0, #8
	subs r0, r2, r0
_0807AD1E:
	str r0, [r4, #8]
_0807AD20:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0807AD3A
	ldr r0, [r6, #0x1c]
	adds r0, #0x14
	lsls r0, r0, #8
	ldrb r2, [r3]
	lsls r2, r2, #2
	movs r1, #0x32
	subs r1, r1, r2
	lsls r1, r1, #0xa
	adds r0, r0, r1
	b _0807AD4C
_0807AD3A:
	ldr r0, [r6, #0x18]
	subs r0, #0x14
	lsls r0, r0, #8
	ldrb r2, [r3]
	lsls r2, r2, #2
	movs r1, #0x32
	subs r1, r1, r2
	lsls r1, r1, #0xa
	subs r0, r0, r1
_0807AD4C:
	str r0, [r4, #4]
_0807AD4E:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	adds r2, r4, #0
	adds r2, #0x60
	ldr r1, _0807AD80 @ =0xFFFFFF00
	adds r0, r0, r1
	ldr r3, _0807AD84 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807AD80: .4byte 0xFFFFFF00
_0807AD84: .4byte 0x000003FF

.syntax divided
