.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable043
CreateEntity_Interactable043: @ 0x08031AD8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08031B48 @ =Task_Interactable043
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08031B4C @ =TaskDestructor_Interactable043
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov ip, r0
	strh r4, [r3, #4]
	strh r5, [r3, #6]
	str r7, [r3]
	ldrb r0, [r7]
	strb r0, [r3, #0xa]
	strb r6, [r3, #0xb]
	ldrb r0, [r7]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r3, #0x34]
	ldrb r0, [r7, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r3, #0x36]
	ldr r0, _08031B50 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08031B58
	ldrb r0, [r7, #7]
	movs r1, #1
	ands r1, r0
	ldr r4, _08031B54 @ =0x03000038
	adds r0, r2, r4
	strb r1, [r0]
	b _08031B60
	.align 2, 0
_08031B48: .4byte Task_Interactable043
_08031B4C: .4byte TaskDestructor_Interactable043
_08031B50: .4byte gStageData
_08031B54: .4byte 0x03000038
_08031B58:
	ldr r0, _08031BA4 @ =0x03000038
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
_08031B60:
	ldrb r0, [r7, #7]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	adds r4, r3, #0
	adds r4, #0x39
	strb r0, [r4]
	ldr r2, _08031BA8 @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r3, #0x34]
	subs r0, r0, r1
	mov r1, ip
	strh r0, [r1, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r3, #0x36]
	subs r0, r0, r1
	mov r1, ip
	strh r0, [r1, #0x12]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r0, [r0]
	ldrb r1, [r4]
	mov r2, ip
	bl sub_803213C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031BA4: .4byte 0x03000038
_08031BA8: .4byte gCamera

	thumb_func_start sub_8031BAC
sub_8031BAC: @ 0x08031BAC
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08031BCE
	ldr r2, [r3, #0x6c]
	cmp r2, #0
	beq _08031BCE
	ldrh r1, [r2, #0xc]
	ldr r0, _08031BD4 @ =0x00000366
	cmp r1, r0
	bne _08031BCE
	ldrb r0, [r2, #0x1a]
	cmp r0, #1
	bls _08031BD8
_08031BCE:
	movs r0, #0
	b _08031C0A
	.align 2, 0
_08031BD4: .4byte 0x00000366
_08031BD8:
	adds r0, r3, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bls _08031C04
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08031BFC
	movs r1, #0x1c
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bgt _08031C04
	b _08031C08
_08031BFC:
	movs r1, #0x1c
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _08031C08
_08031C04:
	movs r0, #1
	b _08031C0A
_08031C08:
	movs r0, #2
_08031C0A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8031C10
sub_8031C10: @ 0x08031C10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _08031C78 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r0, #0xc
	adds r0, r0, r1
	mov r8, r0
	ldrh r1, [r7, #0x34]
	str r1, [sp, #0xc]
	ldrh r3, [r7, #0x36]
	str r3, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	lsls r1, r1, #0x10
	str r1, [sp, #0x18]
	asrs r3, r1, #0x10
	str r3, [sp, #0x1c]
_08031C48:
	ldr r1, _08031C7C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _08031C58
	ldr r3, [sp, #0x14]
	cmp r3, #0
	beq _08031C58
	b _0803203C
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
	adds r5, r1, r0
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
	b _0803203C
_08031CAE:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08031CBA
	b _0803203C
_08031CBA:
	ldr r4, [r5, #4]
	movs r0, #0x24
	ands r4, r0
	cmp r4, #0
	bne _08031D68
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x10
	str r5, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, r8
	ldr r3, [sp, #0x18]
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
	b _0803203C
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
	mov r0, sb
	strh r0, [r5, #0x1c]
	b _0803203C
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
	b _0803203C
_08031D84:
	ldr r0, [r5, #0x6c]
	cmp r0, r8
	beq _08031D8C
	b _0803203C
_08031D8C:
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r1, [sp, #0xc]
	lsls r3, r1, #0x10
	ldr r6, [r5, #0x10]
	cmp r0, #1
	bls _08031DEA
	asrs r0, r6, #8
	ldr r1, [sp, #0x1c]
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
	b _0803203C
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
	b _0803203C
	.align 2, 0
_08031E70: .4byte gUnknown_080CF51C
_08031E74:
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r4
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5, #0x6c]
	b _0803203C
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
	mov r3, r8
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
	ldr r1, _08031EC0 @ =PlayerCB_80077CC
	bl SetPlayerCallback
	b _08031ECC
	.align 2, 0
_08031EC0: .4byte PlayerCB_80077CC
_08031EC4:
	adds r0, r5, #0
	ldr r1, _08031F14 @ =sub_8005528
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
	ldr r1, [sp, #0x18]
	asrs r3, r1, #0x10
	subs r2, r4, r3
	adds r6, r0, #0
	cmp r2, #0
	blt _08031F1C
	cmp r2, #0x13
	ble _08031F22
	b _08031F86
	.align 2, 0
_08031F14: .4byte sub_8005528
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
	mov r1, sl
	ldrh r0, [r1, #0x14]
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _0803203C
	adds r0, r5, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bls _0803203C
	adds r2, r7, #0
	adds r2, #0x39
	ldrb r0, [r2]
	cmp r0, #0
	bne _08032008
	lsls r0, r3, #0x10
	cmp r0, #0
	ble _0803203C
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
	b _0803203C
	.align 2, 0
_08032000: .4byte 0xFFFFFD00
_08032004: .4byte 0xFFFFFF00
_08032008:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _0803203C
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
	b _0803203C
_0803202C:
	ldrb r1, [r2]
	adds r0, r7, #0
	adds r0, #0x38
	ldrb r2, [r0]
	adds r0, r5, #0
	movs r3, #2
	bl sub_80322D8
_0803203C:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _0803204C
	b _08031C48
_0803204C:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803205C
sub_803205C: @ 0x0803205C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0xc
	movs r2, #0x34
	ldrsh r1, [r4, r2]
	movs r3, #0x36
	ldrsh r2, [r4, r3]
	str r5, [sp]
	movs r3, #0
	str r3, [sp, #4]
	bl sub_8020700
	cmp r0, #0
	beq _08032108
	ldr r1, [r5, #0x10]
	lsls r1, r1, #8
	ldr r2, [r5, #0x14]
	asrs r2, r2, #8
	adds r3, r5, #0
	adds r3, #0x25
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r2
	ldrh r2, [r4, #0x34]
	asrs r1, r1, #0x10
	subs r1, r1, r2
	ldrh r2, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r0, #0x98
	lsls r0, r0, #0xd
	adds r1, r1, r0
	lsrs r1, r1, #0x10
	cmp r1, #0x26
	bhi _08032108
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r1, [r0]
	subs r0, #1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080320E0
	cmp r1, #0
	beq _080320D0
	ldr r1, _080320CC @ =gUnknown_080CF51C
	movs r0, #0x14
	subs r0, r0, r2
	adds r0, r0, r1
	b _080320FA
	.align 2, 0
_080320CC: .4byte gUnknown_080CF51C
_080320D0:
	ldr r1, _080320DC @ =gUnknown_080CF51C
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r1
	b _080320FA
	.align 2, 0
_080320DC: .4byte gUnknown_080CF51C
_080320E0:
	cmp r1, #0
	beq _080320F4
	ldr r1, _080320F0 @ =gUnknown_080CF51C
	movs r0, #0x14
	subs r0, r0, r2
	adds r1, #0x28
	adds r0, r0, r1
	b _080320FA
	.align 2, 0
_080320F0: .4byte gUnknown_080CF51C
_080320F4:
	ldr r0, _0803210C @ =gUnknown_080CF51C
	adds r0, r0, r2
	adds r0, #0x3c
_080320FA:
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08032110
_08032108:
	movs r0, #0
	b _08032132
	.align 2, 0
_0803210C: .4byte gUnknown_080CF51C
_08032110:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r1, r1, r0
	lsls r1, r1, #8
	str r1, [r5, #0x14]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _08032130
	movs r0, #0
	strh r0, [r5, #0x1a]
_08032130:
	movs r0, #1
_08032132:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_803213C
sub_803213C: @ 0x0803213C
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r6, #1
	ands r1, r6
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r5, r0, #0x1f
	movs r0, #0x80
	lsls r0, r0, #3
	ands r5, r0
	ldr r0, _08032178 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08032194
	cmp r2, #0
	beq _08032180
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _0803217C @ =0x00000366
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	b _080321A8
	.align 2, 0
_08032178: .4byte gStageData
_0803217C: .4byte 0x00000366
_08032180:
	movs r0, #0xf
	bl VramMalloc
	str r0, [r4]
	ldr r0, _08032190 @ =0x00000366
	strh r0, [r4, #0xc]
	strb r6, [r4, #0x1a]
	b _080321A8
	.align 2, 0
_08032190: .4byte 0x00000366
_08032194:
	movs r0, #0xf
	bl VramMalloc
	str r0, [r4]
	ldr r0, _080321D4 @ =0x00000366
	strh r0, [r4, #0xc]
	strb r6, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r5, r0
_080321A8:
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r5, r0
	str r5, [r4, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080321D4: .4byte 0x00000366

	thumb_func_start sub_80321D8
sub_80321D8: @ 0x080321D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08032228 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _0803222C @ =0x0300000C
	adds r7, r1, r0
	mov r1, r8
	ldr r1, [r1]
	mov sb, r1
	mov r0, r8
	movs r1, #0x34
	ldrsh r5, [r0, r1]
	movs r1, #0x36
	ldrsh r6, [r0, r1]
	adds r0, r5, #0
	adds r1, r6, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08032274
	movs r1, #0
	ldr r6, _08032230 @ =gPlayers
_08032212:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08032234
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08032238
	.align 2, 0
_08032228: .4byte gCurTask
_0803222C: .4byte 0x0300000C
_08032230: .4byte gPlayers
_08032234:
	ldr r0, _0803226C @ =gStageData
	ldrb r1, [r0, #6]
_08032238:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08032212
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08032270 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08032290
	.align 2, 0
_0803226C: .4byte gStageData
_08032270: .4byte gCurTask
_08032274:
	ldr r0, _0803229C @ =gCamera
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r7, #0x10]
	ldr r0, [r0, #4]
	subs r0, r6, r0
	subs r0, #2
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08032290:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803229C: .4byte gCamera

	thumb_func_start TaskDestructor_Interactable043
TaskDestructor_Interactable043: @ 0x080322A0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start Task_Interactable043
Task_Interactable043: @ 0x080322B4
	push {lr}
	ldr r0, _080322D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _080322D4 @ =0x03000039
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8031C10
	bl sub_80321D8
	pop {r0}
	bx r0
	.align 2, 0
_080322D0: .4byte gCurTask
_080322D4: .4byte 0x03000039

	thumb_func_start sub_80322D8
sub_80322D8: @ 0x080322D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _08032324 @ =gUnknown_080CF56C
	mov r0, sp
	movs r2, #0x18
	bl memcpy
	lsls r1, r4, #1
	adds r1, r1, r4
	adds r1, r1, r5
	lsls r1, r1, #2
	mov r2, sp
	adds r0, r2, r1
	ldrh r3, [r0]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r2, [r0]
	cmp r6, #0
	beq _08032328
	lsls r0, r3, #0x10
	rsbs r0, r0, #0
	lsrs r3, r0, #0x10
	ldr r0, [r7, #4]
	movs r1, #1
	orrs r0, r1
	b _08032330
	.align 2, 0
_08032324: .4byte gUnknown_080CF56C
_08032328:
	ldr r0, [r7, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08032330:
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #4]
	movs r0, #0
	str r0, [r7, #0x6c]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_8009F7C
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
