
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	asrs r7, r0, #8
	ldr r0, [r5, #0x14]
	asrs r6, r0, #8
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #8
	adds r6, r6, r0
	ldr r1, [r5, #0x1c]
	mov r8, r1
	lsls r0, r7, #8
	lsls r1, r6, #8
	bl sub_8004D68
	movs r0, #0
	mov sl, r0
_0806CADC:
	mov r1, sl
	cmp r1, #0
	bne _0806CAEC
	ldr r0, _0806CAE8 @ =gStageData
	ldrb r1, [r0, #6]
	b _0806CAF6
	.align 2, 0
_0806CAE8: .4byte gStageData
_0806CAEC:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0806CAF6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0806CB60 @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0806CB12
	b _0806CC8C
_0806CB12:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0806CB2E
	mov r0, r8
	bl sub_805C510
	cmp r0, #1
	bne _0806CB2E
	movs r0, #1
	str r0, [sp, #8]
_0806CB2E:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _0806CB3A
	b _0806CC8C
_0806CB3A:
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0806CB64
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806CB5C
	b _0806CC8C
_0806CB5C:
	b _0806CBE6
	.align 2, 0
_0806CB60: .4byte gPlayers
_0806CB64:
	str r4, [sp]
	movs r0, #1
	mov sb, r0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0806CBC6
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0806CB8A
	mov r1, sb
	strb r1, [r5, #0xa]
	b _0806CB8E
_0806CB8A:
	movs r0, #0xff
	strb r0, [r5, #0xa]
_0806CB8E:
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0806CB9A
	movs r0, #1
	b _0806CB9C
_0806CB9A:
	movs r0, #0xff
_0806CB9C:
	strb r0, [r5, #0xb]
	adds r0, r4, #0
	bl sub_806CCB0
	mov r0, sl
	cmp r0, #0
	bne _0806CBB4
	ldr r0, _0806CBB0 @ =gStageData
	ldrb r0, [r0, #6]
	b _0806CBBE
	.align 2, 0
_0806CBB0: .4byte gStageData
_0806CBB4:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
_0806CBBE:
	strb r0, [r5, #9]
	movs r1, #1
	str r1, [sp, #8]
	b _0806CC8C
_0806CBC6:
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0806CC4E
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806CC04
_0806CBE6:
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
	b _0806CC8C
_0806CC04:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0806CC10
	mov r0, sb
	b _0806CC12
_0806CC10:
	movs r0, #0xff
_0806CC12:
	strb r0, [r5, #0xa]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0806CC20
	movs r0, #1
	b _0806CC22
_0806CC20:
	movs r0, #0xff
_0806CC22:
	strb r0, [r5, #0xb]
	adds r0, r4, #0
	bl sub_806CCB0
	mov r1, sl
	cmp r1, #0
	bne _0806CC3C
	ldr r0, _0806CC38 @ =gStageData
	ldrb r0, [r0, #6]
	b _0806CC46
	.align 2, 0
_0806CC38: .4byte gStageData
_0806CC3C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
_0806CC46:
	strb r0, [r5, #9]
	movs r0, #1
	str r0, [sp, #8]
	b _0806CC8C
_0806CC4E:
	str r4, [sp]
	mov r1, sb
	str r1, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0806CC8C
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806CC8C
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0806CC8C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bhi _0806CC9C
	b _0806CADC
_0806CC9C:
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
