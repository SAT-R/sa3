
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x24
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807AE80 @ =gUnknown_080D5B00
	adds r7, r0, r1
	movs r6, #0
	ldr r3, _0807AE84 @ =gCamera
	ldr r1, [r3, #0x14]
	subs r1, #0xa0
	adds r5, r4, #0
	adds r5, #0x26
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4, #8]
	mov ip, r3
	cmp r0, r1
	bgt _0807AE88
	ldrh r0, [r4, #0x1a]
	adds r0, #1
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bgt _0807AEFA
	movs r6, #1
	b _0807AF30
	.align 2, 0
_0807AE80: .4byte gUnknown_080D5B00
_0807AE84: .4byte gCamera
_0807AE88:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	ldrh r3, [r4, #0x1a]
	cmp r0, #0
	bne _0807AEBC
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807AEA0
	movs r0, #0xd0
	b _0807AEA2
_0807AEA0:
	ldr r0, _0807AF28 @ =0x0000FF30
_0807AEA2:
	strh r0, [r4, #0x16]
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r2]
	movs r0, #6
	subs r0, r0, r1
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r5, _0807AF2C @ =0xFFFFFD00
	adds r0, r5, #0
	subs r0, r0, r1
	strh r0, [r4, #0x18]
	adds r5, r2, #0
_0807AEBC:
	adds r0, r3, #1
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x18]
	adds r0, #0x20
	strh r0, [r4, #0x18]
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	ldr r3, [r4, #8]
	adds r3, r3, r0
	str r3, [r4, #8]
	mov r2, ip
	ldr r1, [r2, #0x14]
	subs r1, #0xa0
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	cmp r3, r1
	bge _0807AEF4
	movs r0, #0
	strh r0, [r4, #0x1a]
_0807AEF4:
	movs r0, #0
	cmp r0, #0
	beq _0807AF7C
_0807AEFA:
	cmp r6, #0
	bne _0807AF30
	ldr r0, [r7, #4]
	str r0, [r4]
	strh r6, [r4, #0x1a]
	ldr r2, [r4, #0x2c]
	ldr r0, [r4, #8]
	ldr r1, [r2, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #4]
	ldr r2, [r2, #0x10]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	adds r1, r4, #0
	adds r1, #0x60
	strh r0, [r1]
	adds r3, r1, #0
	b _0807AF56
	.align 2, 0
_0807AF28: .4byte 0x0000FF30
_0807AF2C: .4byte 0xFFFFFD00
_0807AF30:
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807AF44
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r1, #0x40
	b _0807AF4C
_0807AF44:
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	subs r1, #0x40
_0807AF4C:
	ldr r3, _0807AF74 @ =0x000003FF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	adds r3, r0, #0
_0807AF56:
	movs r0, #0
	strh r0, [r4, #0x16]
	strh r0, [r4, #0x18]
	ldr r0, _0807AF78 @ =gCamera
	ldr r1, [r0, #0x14]
	subs r1, #0xa0
	ldrb r2, [r5]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #8
	str r1, [r4, #8]
	b _0807AF9C
	.align 2, 0
_0807AF74: .4byte 0x000003FF
_0807AF78: .4byte gCamera
_0807AF7C:
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
	adds r1, r4, #0
	adds r1, #0x60
	strh r0, [r1]
	adds r3, r1, #0
_0807AF9C:
	ldr r5, _0807AFB4 @ =0xFFFFFF00
	adds r0, r5, #0
	ldrh r1, [r3]
	adds r0, r0, r1
	ldr r2, _0807AFB8 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3]
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807AFB4: .4byte 0xFFFFFF00
_0807AFB8: .4byte 0x000003FF

.syntax divided
