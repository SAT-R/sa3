
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sb, r1
	mov sl, r2
	ldr r0, [sp, #0x24]
	mov ip, r0
	ldr r0, [sp, #0x28]
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, ip
	adds r0, #0xe0
	ldr r3, [r0]
	adds r6, r3, #0
	adds r6, #0xc
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802073A
	b _08020860
_0802073A:
	lsls r2, r2, #0x10
	asrs r1, r2, #0xd
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	mov r8, r2
	cmp r0, r4
	bne _08020752
	b _08020860
_08020752:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	lsls r2, r1, #3
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, r4
	bne _08020766
	b _08020860
_08020766:
	cmp r1, #0
	bne _08020788
	mov r1, sp
	mov r0, ip
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	mov r0, sp
	strb r3, [r0, #2]
	strb r2, [r0, #3]
	b _080207AC
_08020788:
	mov r1, sp
	adds r2, r6, r2
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	strb r0, [r1, #3]
_080207AC:
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r2, r0, #8
	ldr r0, [r1, #0x14]
	asrs r5, r0, #8
	ldrh r0, [r1, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080207D4
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080207D2
	subs r5, #0x20
	b _080207D4
_080207D2:
	adds r5, #0x20
_080207D4:
	mov r1, r8
	asrs r0, r1, #0xd
	adds r3, r7, r0
	adds r0, r3, #0
	adds r0, #0x24
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, sb
	adds r1, r0, r4
	mov r0, sp
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r2, r2, r6
	cmp r1, r2
	bgt _08020808
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	bge _08020818
	cmp r1, r2
	blt _08020860
_08020808:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r2, r0
	cmp r0, r1
	blt _08020860
_08020818:
	mov r1, r8
	asrs r0, r1, #0xd
	adds r3, r7, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, sl
	adds r2, r0, r4
	mov r0, sp
	movs r6, #1
	ldrsb r6, [r0, r6]
	adds r1, r5, r6
	cmp r2, r1
	bgt _0802084C
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0802085C
	cmp r2, r1
	blt _08020860
_0802084C:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _08020860
_0802085C:
	movs r0, #1
	b _08020862
_08020860:
	movs r0, #0
_08020862:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
