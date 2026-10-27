
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r5, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r4, r2, r0
	movs r3, #0
	mov r8, r3
	ldrh r0, [r4, #0x16]
	cmp r0, #0xa
	beq _0807DD3C
	cmp r0, #0xa
	bgt _0807DD06
	cmp r0, #0
	beq _0807DD0C
	b _0807DE14
_0807DD06:
	cmp r0, #0x14
	beq _0807DE04
	b _0807DE14
_0807DD0C:
	cmp r7, #0
	bne _0807DD1A
	ldr r0, [r4]
	movs r6, #0xc8
	lsls r6, r6, #6
	adds r1, r0, r6
	b _0807DD20
_0807DD1A:
	ldr r0, [r4]
	ldr r3, _0807DD38 @ =0xFFFFCE00
	adds r1, r0, r3
_0807DD20:
	adds r0, r2, #0
	adds r2, r7, #0
	bl sub_807D610
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _0807DE14
	strb r3, [r4, #0x19]
	movs r0, #0xa
	b _0807DE12
	.align 2, 0
_0807DD38: .4byte 0xFFFFCE00
_0807DD3C:
	ldrb r0, [r4, #0x19]
	movs r3, #0x7f
	ands r3, r0
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r1, r0, #2
	adds r0, r2, r1
	movs r6, #0xd6
	lsls r6, r6, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	cmp r0, #0
	bne _0807DD62
	mov r0, r8
	strb r0, [r4, #0x19]
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	movs r0, #0x14
	b _0807DE12
_0807DD62:
	movs r6, #0xcc
	lsls r6, r6, #1
	adds r0, r2, r6
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _0807DD7E
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r0, r0, r5
	adds r1, #0xb0
	b _0807DD88
_0807DD7E:
	movs r6, #0xa8
	lsls r6, r6, #1
	adds r0, r2, r6
	adds r0, r0, r5
	ldr r1, _0807DE00 @ =0xFFFFFE00
_0807DD88:
	str r1, [r0]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	adds r6, r1, r0
	str r6, [r4, #4]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r5, r0, #2
	movs r0, #0xca
	lsls r0, r0, #1
	mov ip, r0
	adds r0, r2, r0
	adds r0, r0, r5
	ldr r1, [r4]
	ldr r0, [r0]
	subs r3, r1, r0
	adds r0, r3, #0
	cmp r3, #0
	bge _0807DDB0
	rsbs r0, r3, #0
_0807DDB0:
	asrs r3, r0, #8
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r0, r0, r5
	ldr r0, [r0]
	subs r1, r6, r0
	adds r0, r1, #0
	cmp r1, #0
	bge _0807DDC6
	rsbs r0, r1, #0
_0807DDC6:
	asrs r1, r0, #8
	cmp r3, #0xf
	bgt _0807DDE4
	cmp r1, #0x1f
	bgt _0807DDE4
	mov r3, ip
	adds r0, r5, r3
	adds r0, r2, r0
	adds r1, r7, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_807D2A4
	movs r6, #1
	mov r8, r6
_0807DDE4:
	mov r0, r8
	cmp r0, #0
	beq _0807DE14
	movs r0, #0x8e
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r0, #0
	strb r0, [r4, #0x19]
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	movs r0, #0x14
	b _0807DE12
	.align 2, 0
_0807DE00: .4byte 0xFFFFFE00
_0807DE04:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0807DE14
_0807DE12:
	strh r0, [r4, #0x16]
_0807DE14:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
