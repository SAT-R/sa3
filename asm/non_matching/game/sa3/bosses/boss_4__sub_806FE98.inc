
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	ldr r0, _0806FF1C @ =Task_26C_806FFCC
	movs r1, #0x9b
	lsls r1, r1, #2     @ 0x26C
	movs r2, #0x8c
	lsls r2, r2, #6
	movs r3, #0
	str r3, [sp]
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #0xc]
	ldr r0, _0806FF20 @ =0x03000268
	adds r1, r2, r0
	movs r0, #0x96
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r3, r0, r3
	str r3, [sp, #4]
	ldr r0, [r1, #4]
	ldr r7, _0806FF24 @ =0xFFFFD800
	adds r7, r0, r7
	str r7, [sp, #8]
	movs r5, #0
	ldr r0, _0806FF28 @ =0x03000148
	adds r0, r0, r2
	mov sl, r0
	ldr r1, _0806FF2C @ =0x0300014C
	adds r1, r1, r2
	mov sb, r1
_0806FEEC:
	lsls r1, r5, #3
	mov r2, sl
	adds r0, r2, r1
	ldr r3, [sp, #4]
	str r3, [r0]
	add r1, sb
	ldr r7, [sp, #8]
	str r7, [r1]
	lsls r1, r5, #2
	ldr r2, [sp, #0xc]
	movs r3, #0x82
	lsls r3, r3, #2
	adds r0, r2, r3
	adds r3, r0, r1
	adds r0, r5, #0
	subs r0, #0x10
	lsls r2, r0, #4
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0806FF30
	adds r0, r2, #0
	subs r0, #0x10
	b _0806FF34
	.align 2, 0
_0806FF1C: .4byte Task_26C_806FFCC
_0806FF20: .4byte 0x03000268
_0806FF24: .4byte 0xFFFFD800
_0806FF28: .4byte 0x03000148
_0806FF2C: .4byte 0x0300014C
_0806FF30:
	adds r0, r2, #0
	adds r0, #0x10
_0806FF34:
	movs r7, #0
	mov ip, r7
	movs r6, #0
	strh r0, [r3]
	ldr r0, [sp, #0xc]
	ldr r3, _0806FFC0 @ =0x0000020A
	adds r2, r0, r3
	adds r2, r2, r1
	movs r0, #2
	ands r0, r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r0, r0, #5
	ldr r7, _0806FFC4 @ =0xFFFFFE00
	adds r1, r7, #0
	subs r1, r1, r0
	movs r0, #1
	ands r0, r5
	lsls r0, r0, #6
	subs r1, r1, r0
	strh r1, [r2]
	movs r4, #7
	ands r4, r5
	adds r2, r4, #0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #8
	ldr r1, [sp, #0xc]
	adds r3, r1, r0
	lsls r1, r2, #5
	mov r7, r8
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, _0806FFC8 @ =0x000004D4
	strh r0, [r3, #0xc]
	strb r4, [r3, #0x1a]
	cmp r2, #5
	bls _0806FF88
	subs r0, r4, #6
	strb r0, [r3, #0x1a]
_0806FF88:
	strh r6, [r3, #0x14]
	strh r6, [r3, #0xe]
	strh r6, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	mov r0, ip
	strb r0, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x17
	bls _0806FEEC
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FFC0: .4byte 0x0000020A
_0806FFC4: .4byte 0xFFFFFE00
_0806FFC8: .4byte 0x000004D4

.syntax divided
