
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r1, #0
	lsls r0, r0, #0x10
	ldr r1, [r7, #0x10]
	str r1, [sp, #0xc]
	ldr r2, [r7, #0x14]
	str r2, [sp, #0x10]
	adds r1, r7, #0
	adds r1, #0x27
	ldrb r1, [r1]
	str r1, [sp, #0x14]
	lsrs r1, r0, #0x10
	str r1, [sp, #8]
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _0801174C
	cmp r0, #1
	bgt _080116D8
	cmp r0, #0
	beq _080116E4
	b _08011964
_080116D8:
	cmp r0, #2
	beq _080117A0
	cmp r0, #3
	bne _080116E2
	b _08011808
_080116E2:
	b _08011964
_080116E4:
	ldr r2, [sp, #0x10]
	asrs r5, r2, #8
	movs r0, #0x25
	adds r0, r0, r7
	mov sl, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r5, r0
	ldr r1, [sp, #0xc]
	asrs r4, r1, #8
	subs r1, r4, #2
	adds r6, r7, #0
	adds r6, #0x24
	movs r2, #0
	ldrsb r2, [r6, r2]
	subs r1, r1, r2
	adds r2, r7, #0
	adds r2, #0x28
	str r2, [sp, #0x1c]
	str r2, [sp]
	ldr r2, _08011748 @ =sub_805217C
	str r2, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sub_80517FC
	str r0, [sp, #0x18]
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	adds r4, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r4, r4, r0
	adds r6, #5
	str r6, [sp]
	ldr r2, _08011748 @ =sub_805217C
	str r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sub_80517FC
	adds r3, r0, #0
	ldr r4, [sp, #0x1c]
	b _08011866
	.align 2, 0
_08011748: .4byte sub_805217C
_0801174C:
	ldr r0, [sp, #0x10]
	asrs r5, r0, #8
	movs r1, #0x25
	adds r1, r1, r7
	mov sb, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r0, r5, r0
	ldr r2, [sp, #0xc]
	asrs r4, r2, #8
	adds r1, r4, #2
	adds r6, r7, #0
	adds r6, #0x24
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r1, r1, r2
	movs r2, #0x28
	adds r2, r2, r7
	mov sl, r2
	str r2, [sp]
	ldr r2, _0801179C @ =sub_805217C
	str r2, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	str r0, [sp, #0x18]
	mov r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r5, r5, r0
	subs r4, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r4, r4, r0
	adds r6, #5
	str r6, [sp]
	ldr r2, _0801179C @ =sub_805217C
	b _080117EE
	.align 2, 0
_0801179C: .4byte sub_805217C
_080117A0:
	ldr r0, [sp, #0xc]
	asrs r5, r0, #8
	movs r1, #0x25
	adds r1, r1, r7
	mov r8, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r0, r5, r0
	ldr r2, [sp, #0x10]
	asrs r4, r2, #8
	subs r1, r4, #2
	adds r6, r7, #0
	adds r6, #0x24
	movs r2, #0
	ldrsb r2, [r6, r2]
	subs r1, r1, r2
	movs r2, #0x28
	adds r2, r2, r7
	mov sl, r2
	str r2, [sp]
	ldr r2, _08011804 @ =sub_805203C
	str r2, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	str r0, [sp, #0x18]
	mov r1, r8
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r5, r5, r0
	adds r4, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r4, r4, r0
	adds r6, #5
	str r6, [sp]
	ldr r2, _08011804 @ =sub_805203C
_080117EE:
	str r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x14]
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80517FC
	adds r3, r0, #0
	mov r4, sl
	b _08011866
	.align 2, 0
_08011804: .4byte sub_805203C
_08011808:
	ldr r0, [sp, #0xc]
	asrs r5, r0, #8
	movs r1, #0x25
	adds r1, r1, r7
	mov sl, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, r5, r0
	ldr r2, [sp, #0x10]
	asrs r4, r2, #8
	adds r1, r4, #2
	adds r6, r7, #0
	adds r6, #0x24
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r1, r1, r2
	adds r2, r7, #0
	adds r2, #0x28
	str r2, [sp, #0x20]
	str r2, [sp]
	ldr r2, _08011898 @ =sub_805203C
	str r2, [sp, #4]
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sub_80517FC
	str r0, [sp, #0x18]
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r5, r5, r0
	subs r4, #2
	movs r0, #0
	ldrsb r0, [r6, r0]
	subs r4, r4, r0
	adds r6, #5
	str r6, [sp]
	ldr r2, _08011898 @ =sub_805203C
	str r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [sp, #0x14]
	movs r3, #8
	bl sub_80517FC
	adds r3, r0, #0
	ldr r4, [sp, #0x20]
_08011866:
	adds r2, r3, #0
	ldr r0, [sp, #0x18]
	cmp r3, r0
	ble _08011870
	adds r2, r0, #0
_08011870:
	cmp r2, #0
	beq _08011912
	cmp r2, #0
	bge _0801189C
	movs r0, #0xe
	rsbs r0, r0, #0
	cmp r2, r0
	blt _08011964
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _080118F0
	cmp r0, #1
	ble _080118D6
	cmp r0, #2
	beq _080118FA
	cmp r0, #3
	bne _08011912
	b _08011904
	.align 2, 0
_08011898: .4byte sub_805203C
_0801189C:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080118B0
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	b _080118B4
_080118B0:
	movs r1, #0x1a
	ldrsh r0, [r7, r1]
_080118B4:
	cmp r0, #0
	bge _080118BA
	rsbs r0, r0, #0
_080118BA:
	asrs r0, r0, #8
	adds r0, #3
	cmp r0, #0xb
	ble _080118C4
	movs r0, #0xb
_080118C4:
	cmp r2, r0
	bgt _0801190E
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _080118F0
	cmp r0, #1
	bgt _080118DC
_080118D6:
	cmp r0, #0
	beq _080118E6
	b _08011912
_080118DC:
	cmp r0, #2
	beq _080118FA
	cmp r0, #3
	beq _08011904
	b _08011912
_080118E6:
	lsls r0, r2, #8
	ldr r2, [sp, #0x10]
	adds r2, r2, r0
	str r2, [sp, #0x10]
	b _08011912
_080118F0:
	lsls r0, r2, #8
	ldr r1, [sp, #0x10]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	b _08011912
_080118FA:
	lsls r0, r2, #8
	ldr r2, [sp, #0xc]
	subs r2, r2, r0
	str r2, [sp, #0xc]
	b _08011912
_08011904:
	lsls r0, r2, #8
	ldr r1, [sp, #0xc]
	adds r1, r1, r0
	str r1, [sp, #0xc]
	b _08011912
_0801190E:
	movs r0, #1
	b _08011966
_08011912:
	ldr r2, [sp, #0x18]
	cmp r2, r3
	bge _0801191C
	ldrb r0, [r4]
	b _0801191E
_0801191C:
	ldrb r0, [r6]
_0801191E:
	adds r6, r0, #0
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08011934
	ldr r2, [sp, #0x10]
	str r2, [r7, #0x14]
	b _08011938
_08011934:
	ldr r0, [sp, #0xc]
	str r0, [r7, #0x10]
_08011938:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _08011964
	adds r2, r7, #0
	adds r2, #0x26
	strb r6, [r2]
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08011964
	ldrb r6, [r2]
	adds r0, r6, #0
	adds r0, #0x40
	lsls r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r6, r0, #0x18
	adds r0, r6, #0
	subs r0, #0x40
	strb r0, [r2]
_08011964:
	movs r0, #0
_08011966:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
