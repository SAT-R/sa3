
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	mov sl, r2
	str r3, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov ip, r0              @ ip = Player *
	ldr r0, [sp, #0x40]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r1, #0x14]
	asrs r7, r0, #8
	movs r6, #0
	ldrh r0, [r1, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08020AA6
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08020AA4
	subs r7, #0x20
	b _08020AA6
_08020AA4:
	adds r7, #0x20
_08020AA6:
	lsls r1, r2, #0x10
	asrs r0, r1, #0xd
	ldr r2, [sp]
	adds r4, r2, r0
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x14]
	adds r3, r0, #0
	add r3, sl
	ldr r5, [sp, #0x38]     @ r5 = void *param4
	movs r0, #0
	ldrsb r0, [r5, r0]
	mov r5, sb
	adds r2, r5, r0
	mov r8, r1
	str r0, [sp, #0x10]
	cmp r3, r2
	bgt _08020AEA
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [sp, #0x14]
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _08020AFC
	cmp r3, r2
	bge _08020AEA
	b _08020CC6
_08020AEA:
	ldr r5, [sp, #0x38]
	movs r0, #2
	ldrsb r0, [r5, r0]
	ldr r1, [sp, #0x10]
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	bge _08020AFC
	b _08020CC6
_08020AFC:
	mov r2, r8
	asrs r0, r2, #0xd
	ldr r5, [sp]
	adds r3, r5, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	ldr r0, [sp, #4]
	adds r2, r0, r4
	ldr r1, [sp, #0x38]
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r1, r7, r0
	str r0, [sp, #0xc]
	cmp r2, r1
	bgt _08020B36
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _08020B48
	cmp r2, r1
	bge _08020B36
	b _08020CC6
_08020B36:
	ldr r3, [sp, #0x38]
	movs r0, #3
	ldrsb r0, [r3, r0]
	ldr r5, [sp, #0xc]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	bge _08020B48
	b _08020CC6
_08020B48:
	mov r1, r8
	asrs r0, r1, #0xd
	ldr r2, [sp]
	adds r1, r2, r0
	adds r0, r1, #0
	adds r0, #0x24
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r0, #2
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r2, r5, r4
	asrs r2, r2, #1
	add r2, sl
	subs r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, #0x27
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, [sp, #4]
	adds r3, r1, r0
	cmp r2, sb
	bgt _08020B90
	mov r2, sl
	adds r0, r2, r4
	ldr r1, [sp, #0x10]
	add r1, sb
	subs r5, r0, r1
	movs r0, #0x80
	lsls r0, r0, #0xb
	b _08020BA2
_08020B90:
	mov r1, sl
	adds r0, r1, r5
	ldr r2, [sp, #0x38]
	movs r1, #2
	ldrsb r1, [r2, r1]
	add r1, sb
	subs r5, r0, r1
	movs r0, #0x80
	lsls r0, r0, #0xc
_08020BA2:
	orrs r6, r0
	cmp r3, r7
	ble _08020BE6
	mov r3, r8
	asrs r0, r3, #0xd
	ldr r1, [sp]
	adds r0, r1, r0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, [sp, #4]
	adds r1, r2, r1
	ldr r3, [sp, #0x38]
	movs r0, #3
	ldrsb r0, [r3, r0]
	adds r0, r7, r0
	subs r3, r1, r0
	mov r0, ip
	ldr r1, [r0, #4]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r1, #0
	ands r0, r4
	adds r7, r1, #0
	cmp r0, #0
	beq _08020BDE
	subs r1, r3, #2
	cmp r1, #0
	ble _08020C26
	b _08020C24
_08020BDE:
	adds r1, r3, #5
	cmp r1, #0
	ble _08020C1A
	b _08020C18
_08020BE6:
	mov r1, r8
	asrs r0, r1, #0xd
	ldr r2, [sp]
	adds r0, r2, r0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp, #4]
	adds r0, r3, r0
	ldr r2, [sp, #0xc]
	adds r1, r7, r2
	subs r3, r0, r1
	mov r0, ip
	ldr r1, [r0, #4]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r1, #0
	ands r0, r4
	adds r7, r1, #0
	cmp r0, #0
	beq _08020C1E
	subs r1, r3, #5
	cmp r1, #0
	bge _08020C1A
_08020C18:
	movs r1, #0
_08020C1A:
	orrs r6, r4
	b _08020C2C
_08020C1E:
	adds r1, r3, #2
	cmp r1, #0
	bge _08020C26
_08020C24:
	movs r1, #0
_08020C26:
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r6, r0
_08020C2C:
	adds r2, r5, #0
	cmp r5, #0
	bge _08020C34
	rsbs r2, r5, #0
_08020C34:
	adds r0, r1, #0
	cmp r0, #0
	bge _08020C3C
	rsbs r0, r0, #0
_08020C3C:
	cmp r2, r0
	bge _08020C48
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r6, r0
	b _08020C88
_08020C48:
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r6
	cmp r0, #0
	beq _08020C88
	mov r1, ip
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08020C6C
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08020C6C
	movs r0, #0
	b _08020CC8
_08020C6C:
	movs r2, #4
	ands r2, r7
	cmp r2, #0
	bne _08020C88
	mov r0, ip
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08020C88
	mov r1, ip
	strh r2, [r1, #0x1c]
_08020C88:
	lsls r0, r5, #8
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	movs r1, #0xff
	ands r3, r1
	orrs r0, r3
	orrs r6, r0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r6
	cmp r0, #0
	beq _08020CB4
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	bne _08020CB8
	ldr r0, _08020CB0 @ =0xFFF300FF
	b _08020CB6
	.align 2, 0
_08020CB0: .4byte 0xFFF300FF
_08020CB4:
	ldr r0, _08020CD8 @ =0xFFFF00FF
_08020CB6:
	ands r6, r0
_08020CB8:
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r6
	cmp r0, #0
	bne _08020CC6
	ldr r0, _08020CDC @ =0xFFFFFF00
	ands r6, r0
_08020CC6:
	adds r0, r6, #0
_08020CC8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020CD8: .4byte 0xFFFF00FF
_08020CDC: .4byte 0xFFFFFF00

.syntax divided
