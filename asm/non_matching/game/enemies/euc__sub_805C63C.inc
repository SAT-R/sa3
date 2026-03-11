
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	movs r5, #0
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	asrs r7, r0, #8
	ldr r0, [r4, #0x14]
	asrs r6, r0, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #8
	adds r6, r6, r0
	ldr r1, [r4, #0x1c]
	mov r8, r1
	lsls r2, r7, #8
	lsls r1, r6, #8
	mov r3, r8
	ldrh r0, [r3, #0xc]
	ldr r3, _0805C6A8 @ =0x000004B1
	mov sb, r3
	cmp r0, sb
	bne _0805C67E
	ldr r0, _0805C6AC @ =0xFFFFF000
	adds r1, r1, r0
	adds r2, r2, r0
_0805C67E:
	adds r0, r2, #0
	bl sub_8004D68
	mov r1, r8
	ldrh r0, [r1, #0xc]
	movs r3, #0
	mov sl, r3
_0805C68C:
	mov r0, sl
	cmp r0, #0
	bne _0805C6B8
	ldr r1, _0805C6B0 @ =gStageData
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0805C6B4 @ =gPlayers
	adds r5, r1, r0
	b _0805C6D0
	.align 2, 0
_0805C6A8: .4byte 0x000004B1
_0805C6AC: .4byte 0xFFFFF000
_0805C6B0: .4byte gStageData
_0805C6B4: .4byte gPlayers
_0805C6B8:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805C748 @ =gPlayers
	adds r5, r0, r1
_0805C6D0:
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	beq _0805C6DC
	b _0805C86C
_0805C6DC:
	ldr r3, _0805C74C @ =gStageData + 0x98
	ldr r0, [r3]
	cmp r0, #0
	beq _0805C700
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x50]
	cmp r0, r5
	bne _0805C700
	mov r0, r8
	bl sub_805C510
	cmp r0, #1
	bne _0805C700
	movs r3, #1
	str r3, [sp, #8]
_0805C700:
	str r5, [sp]
	movs r0, #0
	mov sb, r0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805C754
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805C7C4
	str r5, [sp]
	mov r3, sb
	str r3, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _0805C73C
	b _0805C86C
_0805C73C:
	mov r0, sl
	cmp r0, #0
	bne _0805C81C
	ldr r1, _0805C750 @ =gStageData
	ldrb r0, [r1, #6]
	b _0805C826
	.align 2, 0
_0805C748: .4byte gPlayers
_0805C74C: .4byte gStageData + 0x98
_0805C750: .4byte gStageData
_0805C754:
	str r5, [sp]
	movs r0, #1
	mov sb, r0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0805C7A4
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0805C77A
	mov r1, sb
	strb r1, [r4, #0xa]
	b _0805C77E
_0805C77A:
	movs r0, #0xff
	strb r0, [r4, #0xa]
_0805C77E:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0805C78A
	movs r0, #1
	b _0805C78C
_0805C78A:
	movs r0, #0xff
_0805C78C:
	strb r0, [r4, #0xb]
	adds r0, r5, #0
	bl sub_80044CC
	mov r3, sl
	cmp r3, #0
	bne _0805C81C
	ldr r1, _0805C7A0 @ =gStageData
	ldrb r0, [r1, #6]
	b _0805C826
	.align 2, 0
_0805C7A0: .4byte gStageData
_0805C7A4:
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0805C82E
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805C7E2
_0805C7C4:
	str r5, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r5, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
	b _0805C86C
_0805C7E2:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	cmp r0, r7
	bge _0805C7F0
	mov r3, sb
	strb r3, [r4, #0xa]
	b _0805C7F4
_0805C7F0:
	movs r0, #0xff
	strb r0, [r4, #0xa]
_0805C7F4:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	cmp r0, r6
	bge _0805C800
	movs r0, #1
	b _0805C802
_0805C800:
	movs r0, #0xff
_0805C802:
	strb r0, [r4, #0xb]
	adds r0, r5, #0
	bl sub_80044CC
	mov r0, sl
	cmp r0, #0
	bne _0805C81C
	ldr r1, _0805C818 @ =gStageData
	ldrb r0, [r1, #6]
	b _0805C826
	.align 2, 0
_0805C818: .4byte gStageData
_0805C81C:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
_0805C826:
	strb r0, [r4, #9]
	movs r3, #1
	str r3, [sp, #8]
	b _0805C86C
_0805C82E:
	str r5, [sp]
	mov r0, sb
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805C86C
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805C86C
	str r5, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_8020CE0
	str r5, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805C86C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bhi _0805C87C
	b _0805C68C
_0805C87C:
	str r5, [r4, #0x18]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided
