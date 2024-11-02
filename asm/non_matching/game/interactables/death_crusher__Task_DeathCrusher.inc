
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08041C0C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov ip, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, ip
	mov r8, r0          @ r8 = crusher
	ldr r0, _08041C10 @ =0x0300000C
	add r0, ip
	mov sb, r0          @ sb = s
	mov r1, r8
	ldr r3, [r1]        @ r3 = me
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r2, r8          @ r2 = r8 = crusher
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #8     @ r1 =  qWorldX
	ldr r0, _08041C14 @ =gStageData
	ldr r2, [r0, #0x1c]
	ldr r0, _08041C18 @ =0x03000048
	add r0, ip
	ldrh r0, [r0]
	adds r4, r2, r0     @ r4 = gStageData.timer + crusher->unk48
	movs r2, #0x7f      @ r2 = 0x7F
	movs r0, #4
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r7, r1, r0     @ r7 = qPathTop
	ldrb r0, [r3, #6]
	lsls r6, r0, #0xb   @ r6 = qPathHeight
	mov r0, r8          @ r0 = r8 = crusher
	ldr r0, [r0, #0x3c]
	str r0, [sp, #4]    @ sp04 = qCrusherX = crusher->qWorldX;
	mov r1, r8          @ r1 = r8 = crusher
	ldr r1, [r1, #0x40]
	mov sl, r1          @ sl = qCrusherY = crusher->qWorldY;
	ands r4, r2
	cmp r4, #0x3f
	bgt _08041C1C
	adds r1, r7, r6
	adds r0, r6, #0
	muls r0, r4, r0
	asrs r0, r0, #6
	subs r1, r1, r0
	mov r2, r8          @ r2 = r8 = crusher
	str r1, [r2, #0x40]
	b _08041C7C
	.align 2, 0
_08041C0C: .4byte gCurTask
_08041C10: .4byte 0x0300000C
_08041C14: .4byte gStageData
_08041C18: .4byte 0x03000048
_08041C1C:
	cmp r4, #0x4f
	bgt _08041C34
	mov r0, r8          @ r0 = r8 = crusher
	str r7, [r0, #0x40]
	ldr r1, _08041C30 @ =0x03000044
	add r1, ip
	movs r0, #0
	strh r0, [r1]
	b _08041C7C
	.align 2, 0
_08041C30: .4byte 0x03000044
_08041C34:
	cmp r4, #0x5f
	bgt _08041C46
	movs r0, #4
	ands r4, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r0, r0, #6
	adds r0, r7, r0
	b _08041C70
_08041C46:
	cmp r4, #0x67
	bgt _08041C56
	adds r0, r4, #0
	subs r0, #0x60
	muls r0, r6, r0
	asrs r0, r0, #3
	adds r0, r7, r0
	b _08041C78
_08041C56:
	cmp r4, #0x77
	bgt _08041C76
	cmp r4, #0x68
	bne _08041C66
	movs r0, #0x95
	lsls r0, r0, #2
	bl sub_8003DF0
_08041C66:
	adds r0, r7, r6
	movs r1, #3
	ands r4, r1
	lsls r1, r4, #8
	adds r0, r0, r1
_08041C70:
	mov r1, r8          @ r1 = r8 = crusher
	str r0, [r1, #0x40]
	b _08041C7C
_08041C76:
	adds r0, r7, r6
_08041C78:
	mov r2, r8          @ r2 = r8 = crusher
	str r0, [r2, #0x40]
_08041C7C:
	mov r1, r8          @ r1 = r8 = crusher
	ldr r0, [r1, #0x3c]
	ldr r2, [sp, #4]
	subs r2, r2, r0
	str r2, [sp, #4]    @ qCrusherX -= crusher->qWorldX
	ldr r0, [r1, #0x40]
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1          @ qCrusherY -= crusher->qWorldY
	movs r1, #0
_08041C90_loop:
	lsls r0, r1, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _08041CA4
	ldr r0, _08041CA0 @ =gStageData
	ldrb r1, [r0, #6]
	b _08041CAE
	.align 2, 0
_08041CA0: .4byte gStageData
_08041CA4:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08041CAE:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08041D0C @ =gPlayers
	adds r5, r0, r1     @ r5 = p
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08041D10
	mov r0, r8          @ r0 = r8 = crusher
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041D10
	adds r0, r5, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08041D10
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08041D10
	mov r2, r8          @ r2 = r8 = crusher
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r2, #0x40]
	asrs r2, r2, #8
	str r5, [sp]
	mov r0, sb
	movs r3, #1
	bl sub_8020CE0
	adds r4, r0, #0
	cmp r4, #0
	beq _08041D10
	adds r0, r5, #0
	movs r1, #0x9a
	bl sub_8004E98
	b _08041E50_continue
	.align 2, 0
_08041D0C: .4byte gPlayers
_08041D10:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08041D1C
	b _08041E50_continue
_08041D1C:
	ldr r0, [r5, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08041D5A
	ldr r0, [r5, #0x6c]
	cmp r0, sb
	bne _08041D5A
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #4]    @ r1 = qCrusherX
	subs r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	mov r1, sl          @ r1 = sl = qCrusherY
	subs r0, r0, r1
	str r0, [r5, #0x14]
	mov r0, r8          @ r0 = r8 = crusher
	adds r0, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041D5A
	mov r1, r8          @ r1 = r8 = crusher
	adds r1, #0x4a
	ldrh r0, [r1]
	cmp r0, #0
	bne _08041D5A
	adds r0, #1
	strh r0, [r1]
_08041D5A:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08041D70
	cmp r1, #8
	beq _08041D70
	cmp r1, #0x10
	bne _08041E50_continue
_08041D70:
	mov r2, r8          @ r2 = r8 = crusher
	ldr r1, [r2, #0x3c]
	asrs r1, r1, #8
	ldr r2, [r2, #0x40]
	asrs r2, r2, #8
	movs r6, #0
	str r6, [sp]
	mov r0, sb
	adds r3, r5, #0
	bl sub_8020950
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #9
	ands r2, r4
	cmp r2, #0
	beq _08041DBA
	lsls r0, r4, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	strh r6, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_801226C
	cmp r0, #0
	bge _08041DF0
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08041DF0
	adds r0, r5, #0
	bl sub_8008E38
	b _08041DF0
_08041DBA:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	beq _08041DF0
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r1, r4, #0x18
	asrs r1, r1, #0x10
	adds r0, r0, r1
	str r0, [r5, #0x14]
	strh r2, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_8012368
	cmp r0, #0
	bge _08041DF0
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08041DF0
	adds r0, r5, #0
	bl sub_8008E38
_08041DF0:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r4
	cmp r0, #0
	beq _08041E50_continue
	lsls r0, r4, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r5, #0x10]
	adds r2, r1, r0
	str r2, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r4
	cmp r0, #0
	beq _08041E24
	ldrh r1, [r5, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08041E24
	ldr r1, _08041E20 @ =0xFFFFFF00
	adds r0, r2, r1
	b _08041E40
	.align 2, 0
_08041E20: .4byte 0xFFFFFF00
_08041E24:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r4
	cmp r0, #0
	beq _08041E4A
	ldrh r1, [r5, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08041E4A
	ldr r0, [r5, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
_08041E40:
	str r0, [r5, #0x10]
	ldr r0, [r5, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #4]
_08041E4A:
	movs r0, #0
	strh r0, [r5, #0x18]
	strh r0, [r5, #0x1c]
_08041E50_continue:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08041E60
	b _08041C90_loop
_08041E60:
	bl sub_8041ED4
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
