
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0xc]
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	movs r6, #0
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	mov r8, r0
	ldr r0, [r1, #0x14]
	asrs r7, r0, #8
	ldrh r0, [r1, #0xc]
	lsls r0, r0, #8
	add r8, r0
	ldrh r0, [r1, #0xe]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldr r0, [r1, #0x1c]
	mov sb, r0
	mov r1, r8
	lsls r0, r1, #8
	lsls r1, r7, #8
	bl sub_8004D68
	movs r0, #0
	str r0, [sp, #0x14]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	str r4, [sp, #0x18]
_0805C8D8:
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _0805C8FC
	ldr r2, _0805C8F4 @ =gStageData
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C8F8 @ =gPlayers
	adds r6, r0, r1
	b _0805C916
	.align 2, 0
_0805C8F4: .4byte gStageData
_0805C8F8: .4byte gPlayers
_0805C8FC:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C9F8 @ =gPlayers
	adds r6, r0, r1
	ldr r2, _0805C9FC @ =gStageData
_0805C916:
	adds r0, r2, #0
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _0805C93C
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x50]
	cmp r0, r6
	bne _0805C93C
	mov r0, sb
	bl sub_805C510
	cmp r0, #1
	bne _0805C93C
	movs r0, #1
	str r0, [sp, #0x10]
_0805C93C:
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805C94A
	b _0805CB4A
_0805C94A:
	adds r1, r6, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	movs r2, #0x1c
	ands r2, r0
	mov sl, r1
	cmp r2, #4
	beq _0805C964
	cmp r2, #8
	beq _0805C964
	cmp r2, #0x10
	beq _0805C964
	b _0805CB4A
_0805C964:
	str r6, [sp]
	movs r4, #1
	str r4, [sp, #4]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805CA4C
	ldr r1, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0805C988
	b _0805CB4A
_0805C988:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0805CA38
	adds r0, r6, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805CA38
	adds r0, r6, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r5, [r0, r1]
	cmp r5, #0
	bne _0805CA38
	str r6, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020874
	adds r4, r0, #0
	ldr r0, [r6, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0805CA04
	str r7, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	mov r3, r8
	bl sub_805CFE8
	str r7, [sp]
	ldr r1, [sp, #0x18]
	str r1, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	mov r3, r8
	bl sub_805CC5C
	strh r5, [r6, #0x36]
	adds r0, r6, #0
	ldr r1, _0805CA00 @ =Player_800DB30
	bl SetPlayerCallback
	b _0805CA1C
	.align 2, 0
_0805C9F8: .4byte gPlayers
_0805C9FC: .4byte gStageData
_0805CA00: .4byte Player_800DB30
_0805CA04:
	str r7, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	mov r3, r8
	bl sub_805CB70
	adds r0, r6, #0
	bl Player_800891C
_0805CA1C:
	ldr r1, [r6, #4]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0805CA32
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r6, #4]
	b _0805CB4A
_0805CA32:
	orrs r1, r2
	str r1, [r6, #4]
	b _0805CB4A
_0805CA38:
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r1, [r0, #0x34]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805CA4A
	b _0805CB4A
_0805CA4A:
	b _0805CB04
_0805CA4C:
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805CB10
	ldr r0, [r6, #4]
	movs r4, #0x80
	lsls r4, r4, #0x11
	ands r0, r4
	cmp r0, #0
	bne _0805CB4A
	adds r0, r6, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805CB4A
	adds r0, r6, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805CB04
	str r6, [sp]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #0
	bl sub_8020CE0
	str r6, [sp]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020CE0
	ldr r5, _0805CB00 @ =gPlayers
	mov r1, sl
	ldrb r0, [r1]
	lsls r2, r0, #0x1e
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r5, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ands r0, r4
	cmp r0, #0
	beq _0805CB4A
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	str r0, [sp]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #0
	bl sub_8020CE0
	mov r0, sl
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	str r0, [sp]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #1
	bl sub_8020CE0
	b _0805CB4A
	.align 2, 0
_0805CB00: .4byte gPlayers
_0805CB04:
	adds r0, r6, #0
	bl sub_80044CC
	movs r1, #1
	str r1, [sp, #0x10]
	b _0805CB4A
_0805CB10:
	str r6, [sp]
	str r4, [sp, #4]
	mov r0, sb
	mov r1, r8
	adds r2, r7, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0805CB4A
	ldr r1, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0805CB4A
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0805CB40
	adds r0, r6, #0
	bl sub_8016F28
_0805CB40:
	adds r0, r6, #0
	bl sub_80044CC
	movs r0, #1
	str r0, [sp, #0x10]
_0805CB4A:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #1
	bhi _0805CB5A
	b _0805C8D8
_0805CB5A:
	ldr r1, [sp, #0xc]
	str r6, [r1, #0x18]
	ldr r0, [sp, #0x10]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided
