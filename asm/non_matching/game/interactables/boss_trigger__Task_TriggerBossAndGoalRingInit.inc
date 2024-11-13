
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803E5A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0     @ r6 = trig
	adds r0, #0x14
	adds r4, r3, r0     @ r4 = camState
	ldr r0, [r6, #0x3c]
	adds r7, r0, #1
	str r7, [r6, #0x3c] @ trig->unk3C++
	ldr r0, [r6, #0x30]
	cmp r0, #0
	bne _0803E58E
	ldr r2, _0803E5AC @ =gUnknown_080CFA58
	ldr r1, _0803E5B0 @ =0x0300002E
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r5, [r0]
	cmp r5, #0
	beq _0803E58E
	cmp r7, #4
	ble _0803E58E
	ldr r2, _0803E5B4 @ =0x0300002F
	adds r0, r3, r2
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	ldr r2, [r6, #0x10]
	asrs r2, r2, #8
	bl _call_via_r5
	str r0, [r6, #0x30]
_0803E58E:
	ldr r2, [r4, #0x10]
	ldr r1, [r4]
	cmp r2, r1
	bge _0803E5B8
	movs r3, #0x2c
	ldrsh r0, [r6, r3]
	adds r0, r2, r0
	str r0, [r4, #0x10]
	cmp r0, r1
	ble _0803E5DC
	str r1, [r4, #0x10]
	b _0803E5DC
	.align 2, 0
_0803E5A8: .4byte gCurTask
_0803E5AC: .4byte gUnknown_080CFA58
_0803E5B0: .4byte 0x0300002E
_0803E5B4: .4byte 0x0300002F
_0803E5B8:
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r2, r1     @ r0 = camState->qCamX + Q(128)
	ldr r1, [r4, #4]    @ r1 = camState->unk4
	cmp r0, r1
	ble _0803E5DC
	movs r3, #0x2c
	ldrsh r0, [r6, r3]
	subs r0, r2, r0
	str r0, [r4, #0x10]
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r0, r0, r2
	cmp r0, r1
	bge _0803E5DC
	ldr r3, _0803E5F8 @ =0xFFFF1000
	adds r0, r1, r3
	str r0, [r4, #0x10]
_0803E5DC:
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #8]
	cmp r2, r1
	bge _0803E5FC
	ldrh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, r2, r0
	str r0, [r4, #0x14]
	cmp r0, r1
	ble _0803E622
	str r1, [r4, #0x14]
	b _0803E622
	.align 2, 0
_0803E5F8: .4byte 0xFFFF1000
_0803E5FC:
	movs r1, #0xa0
	lsls r1, r1, #8
	adds r0, r2, r1
	ldr r1, [r4, #0xc]
	cmp r0, r1
	ble _0803E622
	ldrh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	subs r0, r2, r0
	str r0, [r4, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #8
	adds r0, r0, r2
	cmp r0, r1
	bge _0803E622
	ldr r3, _0803E630 @ =0xFFFF6000
	adds r0, r1, r3
	str r0, [r4, #0x14]
_0803E622:
	ldr r2, [r4]
	ldr r0, [r4, #0x10]
	cmp r2, r0
	blt _0803E638
	ldr r1, _0803E634 @ =gCamera
	asrs r0, r0, #8
	b _0803E63C
	.align 2, 0
_0803E630: .4byte 0xFFFF6000
_0803E634: .4byte gCamera
_0803E638:
	ldr r1, _0803E654 @ =gCamera
	asrs r0, r2, #8
_0803E63C:
	str r0, [r1, #0x18]
	adds r3, r1, #0     @ r3 = r1 = gCamera
	ldr r2, [r4, #0x10] @ r2 = camState->qCamX
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r2, r1
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _0803E658
	asrs r0, r2, #8
	adds r0, #0xf0
	b _0803E65A
	.align 2, 0
_0803E654: .4byte gCamera
_0803E658:
	asrs r0, r1, #8
_0803E65A:
	str r0, [r3, #0x1c]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	blt _0803E668
	asrs r0, r0, #8
	b _0803E66A
_0803E668:
	asrs r0, r1, #8
_0803E66A:
	str r0, [r3, #0x10]
	ldr r2, [r4, #0x14]
	movs r1, #0xa0
	lsls r1, r1, #8
	adds r0, r2, r1
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bgt _0803E680
	asrs r0, r2, #8
	adds r0, #0xa0
	b _0803E682
_0803E680:
	asrs r0, r1, #8
_0803E682:
	str r0, [r3, #0x14]
	ldr r0, [r4]
	asrs r5, r0, #8
	ldr r1, [r3]
	cmp r1, r5
	blt _0803E6E8
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	cmp r2, r0
	blt _0803E6E8
	adds r1, #0xf0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0803E6E8
	adds r1, r2, #0
	adds r1, #0xa0
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0803E6E8
	ldr r0, [r6, #0x3c]
	cmp r0, #4
	ble _0803E6E8
	str r5, [r3, #0x18]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	str r0, [r3, #0x1c]
	ldr r0, [r4, #8]
	asrs r5, r0, #8
	str r5, [r3, #0x10]
	ldr r0, [r4, #0xc]
	asrs r2, r0, #8
	str r2, [r3, #0x14]
	ldr r1, _0803E6F4 @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	bne _0803E6D8
	ldrb r1, [r1, #9]
	subs r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0803E6D8:
	adds r1, r6, #0
	adds r1, #0x2f
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0803E6F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803E6FC @ =Task_803E7DC
	str r0, [r1, #8]
_0803E6E8:
	bl sub_803E700
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E6F4: .4byte gStageData
_0803E6F8: .4byte gCurTask
_0803E6FC: .4byte Task_803E7DC

.syntax divided
