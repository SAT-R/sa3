
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _0806FC8C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r6, [r0]
	ldr r2, _0806FC90 @ =0x03000004
	adds r5, r1, r2
	ldrb r0, [r6, #0x1c]
	cmp r0, #0
	bne _0806FC72
	ldrh r0, [r5, #0xc]
	ldr r1, _0806FC94 @ =0x0000053A
	cmp r0, r1
	beq _0806FC7A
	movs r0, #0
	strh r1, [r5, #0xc]
	strb r0, [r5, #0x1a]
	ldr r0, _0806FC98 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x8a      @ SE_POOF
	bl m4aSongNumStart
_0806FC72:
	ldrh r1, [r5, #0xc]
	ldr r0, _0806FC94 @ =0x0000053A
	cmp r1, r0
	bne _0806FC9C
_0806FC7A:
	mov r1, r8
	adds r1, #0x39
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806FCBA
	b _0806FCD8
	.align 2, 0
_0806FC8C: .4byte gCurTask
_0806FC90: .4byte 0x03000004
_0806FC94: .4byte 0x0000053A
_0806FC98: .4byte 0x0000FFFF
_0806FC9C:
	mov r1, r8
	ldrh r0, [r1, #0x36]
	adds r0, #0x18
	strh r0, [r1, #0x36]
	movs r2, #0x34
	ldrsh r1, [r1, r2]
	mov r2, r8
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r2, #0x2c]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r2, #0x30]
_0806FCBA:
	mov r1, r8
	ldr r0, [r1, #0x2c]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [r1, #0x30]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	str r2, [sp, #0xc]
	asrs r3, r0, #0x10
	ldr r0, _0806FCE4 @ =gCamera
	ldr r0, [r0, #0x14]
	adds r0, #0x20
	cmp r3, r0
	ble _0806FCEC
_0806FCD8:
	ldr r0, _0806FCE8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0806FE84
	.align 2, 0
_0806FCE4: .4byte gCamera
_0806FCE8: .4byte gCurTask
_0806FCEC:
	mov r4, r8
	adds r4, #0x38
	ldrb r2, [r4]
	cmp r2, #0
	bne _0806FD36
	ldrh r1, [r5, #0xc]
	ldr r0, _0806FE28 @ =0x0000053A
	cmp r1, r0
	beq _0806FD36
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	str r2, [sp]
	ldr r0, _0806FE2C @ =sa2__sub_801EE64
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #0
	bgt _0806FD36
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	mov r2, r8
	ldr r0, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r2, #0x30]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #3
	strh r0, [r2, #0x36]
	movs r0, #1
	strb r0, [r4]
_0806FD36:
	movs r1, #0
	mov sb, r1
	adds r6, #0x40
	str r6, [sp, #0x10]
_0806FD3E:
	mov r2, sb
	lsls r0, r2, #2
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0806FE4E
	ldrh r0, [r5, #0xc]
	ldr r2, _0806FE28 @ =0x0000053A
	cmp r0, r2
	beq _0806FE4E
	movs r0, #0x10
	ldrsh r1, [r5, r0]
	ldr r3, _0806FE30 @ =gCamera
	ldr r0, [r3]
	adds r0, r0, r1
	lsls r0, r0, #8
	movs r1, #0x12
	ldrsh r2, [r5, r1]
	ldr r1, [r3, #4]
	adds r1, r1, r2
	lsls r1, r1, #8
	bl sub_8004D68
	ldr r2, _0806FE34 @ =gPlayers
	ldr r0, _0806FE38 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0806FDB6
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _0806FDC4
_0806FDB6:
	adds r0, r5, #0
	bl sub_807A1DC
	cmp r0, #1
	bne _0806FDC4
	movs r2, #1
	str r2, [sp, #8]
_0806FDC4:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #0
	beq _0806FDEC
	ldr r0, [r4, #4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0806FDF2
_0806FDEC:
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _0806FE40
_0806FDF2:
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0806FE0E
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806FE0E
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
	strh r0, [r4, #0x1a]
_0806FE0E:
	movs r0, #0
	ldr r1, _0806FE28 @ =0x0000053A
	strh r1, [r5, #0xc]
	strb r0, [r5, #0x1a]
	ldr r0, _0806FE3C @ =0x0000FFFF
	strh r0, [r5, #0x18]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x8a      @ SE_POOF
	bl m4aSongNumStart
	b _0806FE4E
	.align 2, 0
_0806FE28: .4byte 0x0000053A
_0806FE2C: .4byte sa2__sub_801EE64
_0806FE30: .4byte gCamera
_0806FE34: .4byte gPlayers
_0806FE38: .4byte gStageData
_0806FE3C: .4byte 0x0000FFFF
_0806FE40:
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
_0806FE4E:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bhi _0806FE5E
	b _0806FD3E
_0806FE5E:
	mov r2, r8
	ldr r0, [r2, #0x2c]
	asrs r0, r0, #8
	ldr r2, _0806FE94 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	mov r1, r8
	ldr r0, [r1, #0x30]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0806FE84:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FE94: .4byte gCamera

.syntax divided
