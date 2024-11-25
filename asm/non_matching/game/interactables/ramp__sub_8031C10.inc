
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0          @ sb = param0
	ldr r0, _08031C78 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0     @ r7 = ramp
	adds r0, #0xc
	adds r0, r0, r1
	mov r8, r0          @ r8 = s
	ldrh r1, [r7, #0x34]
	str r1, [sp, #0xc]  @ sp0C = worldX
	ldrh r3, [r7, #0x36]
	str r3, [sp, #0x10] @ sp10 = worldY
	movs r0, #0
	str r0, [sp, #0x14] @ sp14 = i
	lsls r1, r1, #0x10
	str r1, [sp, #0x18] @ sp18 = Q(worldX)
	asrs r3, r1, #0x10
	str r3, [sp, #0x1c] @ sp1C = worldX
_08031C48_loop:
	ldr r1, _08031C7C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _08031C58
	ldr r3, [sp, #0x14]
	cmp r3, #0
	beq _08031C58
	b _0803203C_continue
_08031C58:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08031C84
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
	ldr r1, _08031C80 @ =gPlayers
	adds r5, r0, r1
	b _08031C96
	.align 2, 0
_08031C78: .4byte gCurTask
_08031C7C: .4byte gStageData
_08031C80: .4byte gPlayers
_08031C84:
	ldr r1, _08031D20 @ =gStageData
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08031D24 @ =gPlayers
	adds r5, r1, r0     @ r5 = p
_08031C96:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08031CAE
	cmp r1, #8
	beq _08031CAE
	cmp r1, #0x10
	beq _08031CAE
	b _0803203C_continue
_08031CAE:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08031CBA
	b _0803203C_continue
_08031CBA:
	ldr r4, [r5, #4]
	movs r0, #0x24
	ands r4, r0
	cmp r4, #0
	bne _08031D68
	ldr r3, [sp, #0x10] @ r3 = worldY
	lsls r2, r3, #0x10
	str r5, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, r8          @ r8 = s
	ldr r3, [sp, #0x18] @ r3 = Q(worldX)
	asrs r1, r3, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_8020874
	adds r2, r0, #0
	mov r0, sb
	cmp r0, #0
	beq _08031D28
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08031D68
	ldrh r1, [r5, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08031D0A
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #4]
_08031D0A:
	movs r3, #0xff
	lsls r3, r3, #8
	adds r0, r3, #0
	ands r2, r0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	strh r4, [r5, #0x1c]
	b _0803203C_continue
	.align 2, 0
_08031D20: .4byte gStageData
_08031D24: .4byte gPlayers
_08031D28:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _08031D68
	ldrh r1, [r5, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08031D4C
	ldr r0, [r5, #0x10]
	ldr r1, _08031D64 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #4]
_08031D4C:
	movs r3, #0xff
	lsls r3, r3, #8
	adds r0, r3, #0
	ands r2, r0
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	mov r0, sb              @ r0 = sb = 0
	strh r0, [r5, #0x1c]
	b _0803203C_continue
	.align 2, 0
_08031D64: .4byte 0xFFFFFF00
_08031D68:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_803205C
	cmp r0, #0
	beq _08031D76
	b _08031E82
_08031D76:
	ldr r1, [r5, #4]
	movs r0, #0x20
	ands r0, r1
	adds r4, r1, #0
	cmp r0, #0
	bne _08031D84
	b _0803203C_continue
_08031D84:
	ldr r0, [r5, #0x6c]
	cmp r0, r8
	beq _08031D8C
	b _0803203C_continue
_08031D8C:
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r1, [sp, #0xc]      @ r1 = worldX
	lsls r3, r1, #0x10
	ldr r6, [r5, #0x10]
	cmp r0, #1
	bls _08031DEA
	asrs r0, r6, #8
	ldr r1, [sp, #0x1c]     @ r1 = worldX
	cmp r0, r1
	bge _08031DB6
	mov r0, sb
	cmp r0, #0
	beq _08031DB6
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08031DCC
_08031DB6:
	asrs r1, r6, #8
	asrs r0, r3, #0x10
	cmp r1, r0
	ble _08031DEA
	mov r0, sb
	cmp r0, #0
	bne _08031DEA
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _08031DEA
_08031DCC:
	adds r0, r7, #0
	adds r0, #0x39
	ldrb r1, [r0]
	subs r0, #1
	ldrb r2, [r0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_80322D8
	ldr r0, [r5, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	b _0803203C_continue
_08031DEA:
	asrs r2, r6, #8
	asrs r0, r3, #0x10
	subs r1, r2, r0
	cmp r1, #0
	blt _08031DFA
	cmp r1, #0x13
	ble _08031E00
	b _08031E74
_08031DFA:
	subs r0, r0, r2
	cmp r0, #0x13
	bgt _08031E74
_08031E00:
	movs r3, #0x1a
	ldrsh r0, [r5, r3]
	cmp r0, #0
	blt _08031E74
	asrs r0, r6, #8
	ldrh r1, [r7, #0x34]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031E22
	lsls r0, r1, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x10
_08031E22:
	lsls r0, r1, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031E36
	movs r1, #0
	b _08031E3C
_08031E36:
	cmp r0, #0x27
	ble _08031E3C
	movs r1, #0x27
_08031E3C:
	movs r0, #0x36
	ldrsh r3, [r7, r0]
	ldr r4, _08031E70 @ =gUnknown_080CF51C
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r4
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r3, r3, r0
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r3, r3, r0
	lsls r3, r3, #8
	str r3, [r5, #0x14]
	b _0803203C_continue
	.align 2, 0
_08031E70: .4byte gUnknown_080CF51C
_08031E74:
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r4
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5, #0x6c]
	b _0803203C_continue
_08031E82:
	ldr r2, [r5, #4]
	movs r1, #0x20
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08031E94
	ldr r0, [r5, #0x6c]
	cmp r0, r8
	beq _08031ECC
_08031E94:
	orrs r1, r2
	str r1, [r5, #4]
	mov r3, r8          @ r3 = r8 = s
	str r3, [r5, #0x6c]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08031EA8
	ldrh r0, [r5, #0x18]
	strh r0, [r5, #0x1c]
_08031EA8:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08031EC4
	adds r0, r5, #0
	ldr r1, _08031EC0 @ =Player_80077CC
	bl SetPlayerCallback
	b _08031ECC
	.align 2, 0
_08031EC0: .4byte Player_80077CC
_08031EC4:
	adds r0, r5, #0
	ldr r1, _08031F14 @ =Player_8005528
	bl SetPlayerCallback
_08031ECC:
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	ldr r3, _08031F18 @ =gStageData
	mov sl, r3
	ldrh r1, [r5, #0x20]
	mov ip, r1
	cmp r0, #0
	blt _08031F86
	ldrh r0, [r3, #0x14]
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	bne _08031F86
	ldr r1, [r5, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08031F86
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08031F86
	ldr r0, [r5, #0x6c]
	cmp r0, r8
	bne _08031F86
	ldr r0, [r5, #0x10]
	asrs r4, r0, #8
	ldr r1, [sp, #0x18] @ r1 = Q(worldX)
	asrs r3, r1, #0x10
	subs r2, r4, r3
	adds r6, r0, #0
	cmp r2, #0
	blt _08031F1C
	cmp r2, #0x13
	ble _08031F22
	b _08031F86
	.align 2, 0
_08031F14: .4byte Player_8005528
_08031F18: .4byte gStageData
_08031F1C:
	subs r0, r3, r4
	cmp r0, #0x13
	bgt _08031F86
_08031F22:
	asrs r0, r6, #8
	ldrh r1, [r7, #0x34]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r7, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031F3C
	lsls r0, r1, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x10
_08031F3C:
	lsls r0, r1, #0x10
	movs r3, #0xa0
	lsls r3, r3, #0xd
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08031F50
	movs r1, #0
	b _08031F56
_08031F50:
	cmp r0, #0x27
	ble _08031F56
	movs r1, #0x27
_08031F56:
	movs r0, #0x36
	ldrsh r3, [r7, r0]
	ldr r4, _08031FA0 @ =gUnknown_080CF51C
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r2, [r0]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r4
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r3, r3, r0
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r3, r3, r0
	lsls r3, r3, #8
	str r3, [r5, #0x14]
_08031F86:
	movs r3, #0x1c
	ldrsh r1, [r5, r3]
	ldr r0, _08031FA4 @ =0x0000093F
	ldrh r3, [r5, #0x1c]
	cmp r1, r0
	ble _08031FB8
	cmp r1, #0
	bge _08031FA8
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	b _08031FAC
	.align 2, 0
_08031FA0: .4byte gUnknown_080CF51C
_08031FA4: .4byte 0x0000093F
_08031FA8:
	ldr r0, [r5, #0x10]
	ldr r1, _08032000 @ =0xFFFFFD00
_08031FAC:
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	ldr r1, _08032004 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r5, #0x14]
_08031FB8:
	mov r1, sl      @ r1 = sl = gStageData
	ldrh r0, [r1, #0x14]
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _0803203C_continue
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bls _0803203C_continue
	adds r2, r7, #0
	adds r2, #0x39
	ldrb r0, [r2]
	cmp r0, #0
	bne _08032008
	lsls r0, r3, #0x10
	cmp r0, #0
	ble _0803203C_continue
	movs r3, #0x34
	ldrsh r1, [r7, r3]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	cmp r1, r0
	blt _0803201A
	ldrb r1, [r2]
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	movs r3, #2
	bl sub_80322D8
	b _0803203C_continue
	.align 2, 0
_08032000: .4byte 0xFFFFFD00
_08032004: .4byte 0xFFFFFF00
_08032008:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _0803203C_continue
	movs r0, #0x34
	ldrsh r1, [r7, r0]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	cmp r1, r0
	ble _0803202C
_0803201A:
	ldrb r1, [r2]
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	movs r3, #1
	bl sub_80322D8
	b _0803203C_continue
_0803202C:
	ldrb r1, [r2]
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	movs r3, #2
	bl sub_80322D8
_0803203C_continue:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _0803204C
	b _08031C48_loop
_0803204C:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
.syntax divided
