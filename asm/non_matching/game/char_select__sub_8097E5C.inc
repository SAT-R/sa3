
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r5, _0809805C @ =0x06010000
	adds r0, #0xc4
	str r5, [r0]
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r5, r5, r1
	ldr r2, _08098060 @ =gUnknown_080D8D00
	ldrh r1, [r2]
	movs r3, #0
	mov r8, r3
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x2c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x30]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	strb r3, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x9c
	str r5, [r0]
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r5, r5, r3
	ldr r2, _08098064 @ =gUnknown_080D8D08
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #6
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r7, #0xa]
	lsls r1, r1, #6
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r7, r1
	str r5, [r0]
	adds r5, #0x80
	ldr r1, _08098068 @ =0x00000574
	strh r1, [r0, #0xc]
	movs r1, #5
	strb r1, [r0, #0x1a]
	subs r1, #6
	strb r1, [r0, #0x1b]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x68]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	strb r3, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x74
	str r5, [r7, #0x74]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r5, r5, r3
	ldr r2, _0809806C @ =gUnknown_080D8F08
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x5c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x60]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	ldr r1, _08098070 @ =0x0000FFC0
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xec
	ldrb r1, [r7, #0xa]
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	ldr r1, _08098074 @ =gUnknown_080D8F18
	mov sl, r1
	ldrb r1, [r7, #5]
	add r1, sl
	ldrb r1, [r1]
	str r5, [r0]
	movs r3, #0xe0
	lsls r3, r3, #1
	mov sb, r3
	add r5, sb
	ldr r6, _08098078 @ =gUnknown_080D8E80
	lsls r2, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrh r2, [r1]
	strh r2, [r0, #0xc]
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x64]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x68]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r1, [r7, #0xa]
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	ldrb r1, [r7, #5]
	add r1, sl
	ldrb r1, [r1]
	str r5, [r0]
	add r5, sb
	lsls r2, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrh r2, [r1]
	strh r2, [r0, #0xc]
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x6c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x70]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	strb r3, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r0, r7, r3
	str r5, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r2, _0809807C @ =gUnknown_080D8EF8
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x64]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x68]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r3, #0x40
	strh r3, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	str r5, [r7, #0x1c]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809805C: .4byte 0x06010000
_08098060: .4byte gUnknown_080D8D00
_08098064: .4byte gUnknown_080D8D08
_08098068: .4byte 0x00000574
_0809806C: .4byte gUnknown_080D8F08
_08098070: .4byte 0x0000FFC0
_08098074: .4byte gUnknown_080D8F18
_08098078: .4byte gUnknown_080D8E80
_0809807C: .4byte gUnknown_080D8EF8

.syntax divided
