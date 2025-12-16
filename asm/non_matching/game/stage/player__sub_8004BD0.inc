
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	mov sb, r2
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004C24 @ =gPlayers
	adds r0, r0, r1
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #1
	bne _08004CB8
	ldr r3, [r5, #0x10]
	ldr r7, [r5, #0x14]
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	adds r4, r3, #0
	adds r6, r1, #0
	cmp r0, #0
	beq _08004C28
	cmp r7, sb
	blt _08004CB8
	ands r2, r6
	cmp r2, #0
	bne _08004C38
	b _08004C32
	.align 2, 0
_08004C24: .4byte gPlayers
_08004C28:
	cmp r7, sb
	bgt _08004CB8
	ands r2, r6
	cmp r2, #0
	beq _08004C38
_08004C32:
	cmp r3, r8
	blt _08004CB8
	b _08004C3C
_08004C38:
	cmp r3, r8
	bgt _08004CB8
_08004C3C:
	mov r1, r8
	subs r0, r1, r4
	asrs r4, r0, #8
	mov r2, sb
	subs r0, r2, r7
	asrs r3, r0, #8
	movs r2, #0xc8
	lsls r2, r2, #5
	adds r1, r4, #0
	muls r1, r4, r1
	adds r0, r3, #0
	muls r0, r3, r0
	adds r7, r1, r0
	cmp r2, r7
	blt _08004CB8
	adds r0, r5, #0
	adds r0, #0xb8
	str r0, [sp]
	ldr r0, [r0]
	cmp r0, r7
	blo _08004CB8
	movs r1, #0x80
	lsls r1, r1, #9
	mov sl, r1
	ands r6, r1
	cmp r6, #0
	beq _08004C74
	rsbs r3, r3, #0
_08004C74:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r5, #4]
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq _08004CA0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r0, r1
	subs r2, #1
	adds r0, r2, #0
	ands r1, r0
_08004CA0:
	adds r0, r5, #0
	adds r0, #0xa8
	mov r2, r8
	str r2, [r0]
	adds r0, #4
	mov r2, sb
	str r2, [r0]
	ldr r0, [sp]
	str r7, [r0]
	adds r0, r5, #0
	adds r0, #0xc0
	strh r1, [r0]
_08004CB8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
