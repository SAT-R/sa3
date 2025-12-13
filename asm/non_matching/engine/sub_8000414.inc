
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	ldr r1, _08000478 @ =gStageData
	adds r1, #0xae
	ldrh r6, [r1]
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	mov r4, sp
	adds r4, #1
	mov r1, sp
	adds r2, r4, #0
	bl GetZoneAndActTypeFromStageID
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800052C
	ldr r3, _0800047C @ =gLoadedSaveGame
	mov r0, sp
	adds r1, r3, #0
	adds r1, #0x29
	ldrb r0, [r0]
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r4]
	cmp r0, #8
	bne _08000490
	ldrb r0, [r3, #0x11]
	mov r1, sp
	ldrb r1, [r1]
	adds r1, #2
	cmp r0, r1
	bge _08000490
	strb r1, [r3, #0x11]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0800046A
	movs r0, #9
	strb r0, [r3, #0x11]
_0800046A:
	ldrb r2, [r3, #0x12]
	ldrb r0, [r3, #0x11]
	subs r1, r0, #2
	cmp r1, #6
	ble _08000480
	movs r0, #0
	b _0800048E
	.align 2, 0
_08000478: .4byte gStageData
_0800047C: .4byte gLoadedSaveGame
_08000480:
	cmp r1, #5
	ble _08000488
	movs r0, #6
	b _0800048E
_08000488:
	cmp r1, r2
	blt _08000490
	adds r0, #0xff
_0800048E:
	strb r0, [r3, #0x12]
_08000490:
	ldrb r2, [r4]
	cmp r2, #2
	beq _080004AE
	cmp r2, #2
	bgt _080004A0
	cmp r2, #1
	beq _080004AA
	b _080004BA
_080004A0:
	cmp r2, #4
	beq _080004B2
	cmp r2, #8
	beq _080004B6
	b _080004BA
_080004AA:
	movs r5, #0
	b _080004BC
_080004AE:
	movs r5, #1
	b _080004BC
_080004B2:
	movs r5, #2
	b _080004BC
_080004B6:
	movs r5, #3
	b _080004BC
_080004BA:
	movs r5, #0xff
_080004BC:
	cmp r5, #0xff
	beq _0800050A
	ldr r2, _080004D0 @ =gMedalTimes
	lsls r1, r7, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r6, r0
	bhi _080004D4
	movs r4, #0
	b _080004E2
	.align 2, 0
_080004D0: .4byte gMedalTimes
_080004D4:
	adds r0, r2, #2
	adds r0, r1, r0
	movs r4, #2
	ldrh r0, [r0]
	cmp r6, r0
	bhi _080004E2
	movs r4, #1
_080004E2:
	ldr r0, _08000534 @ =gStageData
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _080004EE
	movs r4, #2
_080004EE:
	mov r0, sp
	ldrb r2, [r0]
	lsls r2, r2, #2
	adds r2, r5, r2
	adds r0, r3, #0
	adds r0, #0x37
	adds r2, r2, r0
	movs r1, #2
	subs r1, r1, r4
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_0800050A:
	movs r0, #0x3c
	bl sub_802616C
	ldr r1, _08000534 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0800051E
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _0800052C
_0800051E:
	bl sub_80020F0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800052C
	bl sub_8001FD4
_0800052C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000534: .4byte gStageData

.syntax divided
