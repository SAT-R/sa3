.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_FactoryRingMain
Task_FactoryRingMain: @ 0x080410C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _080411A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	ldr r1, _080411AC @ =0x0300000C
	adds r7, r0, r1
	ldr r3, [r2]
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r6, _080411B0 @ =gStageData
	ldrb r3, [r6, #6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	ldr r1, _080411B4 @ =gPlayers
	mov r8, r1
	adds r4, r0, r1
	ldr r1, [r4]
	ldr r0, _080411B8 @ =PlayerCB_80052C8
	cmp r1, r0
	beq _080411CC
	ldr r0, _080411BC @ =PlayerCB_800522C
	cmp r1, r0
	beq _080411CC
	ldr r0, [r4, #4]
	ldr r1, _080411C0 @ =0x01000300
	ands r0, r1
	cmp r0, #0
	beq _08041124
	b _08041238
_08041124:
	adds r0, r3, #0
	cmp r0, #0
	beq _0804112C
	b _08041238
_0804112C:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r4, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08041238
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8019A64
	ldr r1, _080411C4 @ =0x00000209
	adds r0, r4, #0
	bl sub_8004E98
	ldr r5, _080411C8 @ =sub_800AE14
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, r8
	adds r2, r0, r1
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _08041190
	adds r0, r2, #0
	adds r1, r5, #0
	bl SetPlayerCallback
_08041190:
	ldrb r0, [r6, #3]
	cmp r0, #4
	bls _080411A0
	ldrb r1, [r6, #9]
	movs r0, #1
	movs r2, #1
	bl sub_80275B8
_080411A0:
	movs r0, #8
	strb r0, [r6, #4]
	b _08041238
	.align 2, 0
_080411A8: .4byte gCurTask
_080411AC: .4byte 0x0300000C
_080411B0: .4byte gStageData
_080411B4: .4byte gPlayers
_080411B8: .4byte PlayerCB_80052C8
_080411BC: .4byte PlayerCB_800522C
_080411C0: .4byte 0x01000300
_080411C4: .4byte 0x00000209
_080411C8: .4byte sub_800AE14
_080411CC:
	movs r1, #0
	ldr r5, _080411E0 @ =gStageData
	ldr r3, _080411E4 @ =gPlayers
_080411D2:
	lsls r0, r1, #0x10
	adds r2, r0, #0
	cmp r2, #0
	bne _080411E8
	ldrb r1, [r5, #6]
	b _080411F2
	.align 2, 0
_080411E0: .4byte gStageData
_080411E4: .4byte gPlayers
_080411E8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_080411F2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r3
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08041214
	cmp r1, #8
	beq _08041214
	cmp r1, #0x10
	bne _0804122A
_08041214:
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0804122A
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
_0804122A:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080411D2
_08041238:
	bl sub_8041248
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
    
.if 0
.endif
