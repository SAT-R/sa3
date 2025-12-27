
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r1, #0
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x10]
	str r1, [sp, #0xc]
	ldr r3, [r7, #0x14]
	str r3, [sp, #0x10]
	adds r1, r7, #0
	adds r1, #0x27
	ldrb r1, [r1]
	mov sl, r1
	lsrs r1, r0, #0x10
	str r1, [sp, #8]
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _08011A10
	cmp r0, #1
	bgt _080119AC
	cmp r0, #0
	beq _080119B8
	b _08011B40
_080119AC:
	cmp r0, #2
	beq _08011A74
	cmp r0, #3
	bne _080119B6
	b _08011ADC
_080119B6:
	b _08011B40
_080119B8:
	ldr r2, [sp, #0x10]
	asrs r5, r2, #8
	movs r3, #0x25
	adds r3, r3, r7
	mov sb, r3
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r5, r0
	ldr r1, [sp, #0xc]
	asrs r4, r1, #8
	subs r1, r4, #2
	movs r2, #0x24
	adds r2, r2, r7
	mov r8, r2
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	adds r2, r7, #0
	adds r2, #0x28
	str r2, [sp]
	ldr r3, _08011A0C @ =sub_805217C
	str r3, [sp, #4]
	mov r2, sl
	movs r3, #8
	bl sub_80517FC
	str r0, [sp, #0x14]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	adds r4, #2
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x29
	str r0, [sp]
	ldr r3, _08011A0C @ =sub_805217C
	b _08011B30
	.align 2, 0
_08011A0C: .4byte sub_805217C
_08011A10:
	ldr r0, [sp, #0x10]
	asrs r5, r0, #8
	adds r6, r7, #0
	adds r6, #0x25
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r0, r5, r0
	ldr r1, [sp, #0xc]
	asrs r4, r1, #8
	adds r1, r4, #2
	movs r2, #0x24
	adds r2, r2, r7
	mov r8, r2
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	movs r3, #8
	rsbs r3, r3, #0
	mov sb, r3
	adds r2, r7, #0
	adds r2, #0x28
	str r2, [sp]
	ldr r2, _08011A70 @ =sub_805217C
	str r2, [sp, #4]
	mov r2, sl
	bl sub_80517FC
	str r0, [sp, #0x14]
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r5, r5, r0
	subs r4, #2
	mov r3, r8
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x29
	str r0, [sp]
	ldr r0, _08011A70 @ =sub_805217C
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sl
	mov r3, sb
	b _08011B3A
	.align 2, 0
_08011A70: .4byte sub_805217C
_08011A74:
	ldr r1, [sp, #0xc]
	asrs r5, r1, #8
	adds r2, r7, #0
	adds r2, #0x25
	str r2, [sp, #0x18]
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r0, r5, r0
	ldr r3, [sp, #0x10]
	asrs r4, r3, #8
	subs r1, r4, #2
	movs r2, #0x24
	adds r2, r2, r7
	mov r8, r2
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	movs r3, #8
	rsbs r3, r3, #0
	mov sb, r3
	adds r2, r7, #0
	adds r2, #0x28
	str r2, [sp]
	ldr r2, _08011AD8 @ =sub_805203C
	str r2, [sp, #4]
	mov r2, sl
	bl sub_80517FC
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r5, r5, r0
	adds r4, #2
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x29
	str r0, [sp]
	ldr r2, _08011AD8 @ =sub_805203C
	str r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sl
	mov r3, sb
	b _08011B3A
	.align 2, 0
_08011AD8: .4byte sub_805203C
_08011ADC:
	ldr r3, [sp, #0xc]
	asrs r5, r3, #8
	movs r0, #0x25
	adds r0, r0, r7
	mov sb, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r5, r0
	ldr r1, [sp, #0x10]
	asrs r4, r1, #8
	adds r1, r4, #2
	movs r2, #0x24
	adds r2, r2, r7
	mov r8, r2
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	adds r2, r7, #0
	adds r2, #0x28
	str r2, [sp]
	ldr r3, _08011B64 @ =sub_805203C
	str r3, [sp, #4]
	mov r2, sl
	movs r3, #8
	bl sub_80517FC
	str r0, [sp, #0x14]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	subs r4, #2
	mov r2, r8
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r4, r4, r0
	adds r0, r7, #0
	adds r0, #0x29
	str r0, [sp]
	ldr r3, _08011B64 @ =sub_805203C
_08011B30:
	str r3, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sl
	movs r3, #8
_08011B3A:
	bl sub_80517FC
	adds r2, r0, #0
_08011B40:
	adds r0, r2, #0
	ldr r1, [sp, #0x14]
	cmp r2, r1
	ble _08011B4A
	adds r0, r1, #0
_08011B4A:
	ldr r1, [sp, #8]
	lsls r3, r1, #0x10
	cmp r0, #0
	beq _08011B96
	asrs r1, r3, #0x10
	cmp r1, #1
	beq _08011B7C
	cmp r1, #1
	bgt _08011B68
	cmp r1, #0
	beq _08011B72
	b _08011B96
	.align 2, 0
_08011B64: .4byte sub_805203C
_08011B68:
	cmp r1, #2
	beq _08011B86
	cmp r1, #3
	beq _08011B8E
	b _08011B96
_08011B72:
	lsls r0, r0, #8
	ldr r1, [sp, #0x10]
	adds r1, r1, r0
	str r1, [sp, #0x10]
	b _08011B96
_08011B7C:
	lsls r0, r0, #8
	ldr r1, [sp, #0x10]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	b _08011B96
_08011B86:
	lsls r0, r0, #8
	ldr r1, [sp, #0xc]
	subs r1, r1, r0
	b _08011B94
_08011B8E:
	lsls r0, r0, #8
	ldr r1, [sp, #0xc]
	adds r1, r1, r0
_08011B94:
	str r1, [sp, #0xc]
_08011B96:
	ldr r0, [sp, #0x14]
	cmp r0, r2
	bge _08011BA2
	adds r0, r7, #0
	adds r0, #0x28
	b _08011BA6
_08011BA2:
	adds r0, r7, #0
	adds r0, #0x29
_08011BA6:
	ldrb r0, [r0]
	adds r2, r0, #0
	asrs r0, r3, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08011BBA
	ldr r1, [sp, #0x10]
	str r1, [r7, #0x14]
	b _08011BBE
_08011BBA:
	ldr r3, [sp, #0xc]
	str r3, [r7, #0x10]
_08011BBE:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08011BEA
	adds r3, r7, #0
	adds r3, #0x26
	strb r2, [r3]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08011BEA
	ldrb r2, [r3]
	adds r0, r2, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r2, r0, #0x18
	adds r0, r2, #0
	subs r0, #0x40
	strb r0, [r3]
_08011BEA:
	movs r0, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided
