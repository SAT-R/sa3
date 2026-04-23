
.syntax unified
.text
	push {r4, r5, r6, lr}
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08003096
	bl sub_802613C
	b _080031B0
_08003096:
	ldr r2, _080030D0 @ =gPlayers
	ldr r3, _080030D4 @ =gStageData
	ldrb r1, [r3, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r1, r2
	str r1, [r0]
	ldrb r0, [r3, #6]
	adds r5, r3, #0
	cmp r0, #0
	bne _080030E0
	ldr r1, _080030D8 @ =gMultiSioSend
	ldr r0, _080030DC @ =0x000068E8
	strh r0, [r1]
	ldrb r0, [r5, #5]
	strb r0, [r1, #0x12]
	adds r0, r5, #0
	adds r0, #0xae
	ldrh r0, [r0]
	b _08003100
	.align 2, 0
_080030D0: .4byte gPlayers
_080030D4: .4byte gStageData
_080030D8: .4byte gMultiSioSend
_080030DC: .4byte 0x000068E8
_080030E0:
	ldr r1, _08003154 @ =gMultiSioRecv
	ldrh r2, [r1]
	ldr r0, _08003158 @ =0x000068E8
	cmp r2, r0
	bne _08003102
	ldrb r0, [r1, #0x12]
	strb r0, [r5, #5]
	ldrh r0, [r1, #0x14]
	adds r4, r5, #0
	adds r4, #0xae
	strh r0, [r4]
	ldr r1, _0800315C @ =gMultiSioSend
	strh r2, [r1]
	ldrb r0, [r5, #5]
	strb r0, [r1, #0x12]
	ldrh r0, [r4]
_08003100:
	strh r0, [r1, #0x14]
_08003102:
	movs r1, #0
	ldr r0, _08003160 @ =gUnknown_03001060
	ldrb r3, [r0, #7]
	ldr r6, _08003158 @ =0x000068E8
	movs r4, #1
_0800310C:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r0, r3, #0
	asrs r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0800312A
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08003154 @ =gMultiSioRecv
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, r6
	bne _080031B0
_0800312A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0800310C
	adds r4, r5, #0
	ldrb r3, [r4, #5]
	ldrb r2, [r4, #6]
	lsls r0, r2, #1
	asrs r3, r0
	movs r0, #3
	ands r3, r0
	adds r1, r3, #0
	cmp r1, #2
	bne _08003164
	adds r0, r4, #0
	adds r0, #0xb8
	strb r1, [r0]
	b _0800317C
	.align 2, 0
_08003154: .4byte gMultiSioRecv
_08003158: .4byte 0x000068E8
_0800315C: .4byte gMultiSioSend
_08003160: .4byte gUnknown_03001060
_08003164:
	cmp r1, #0
	bne _08003170
	movs r0, #1
	ands r2, r0
	adds r0, r4, #0
	b _08003178
_08003170:
	movs r0, #1
	eors r2, r0
	ands r2, r0
	adds r0, r5, #0
_08003178:
	adds r0, #0xb8
	strb r2, [r0]
_0800317C:
	adds r1, r3, #0
	movs r0, #0
	movs r2, #0
	bl sub_8056090
	ldr r0, _080031B8 @ =gUnknown_030010C0
	movs r2, #0
	strh r2, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	movs r1, #0x80
	strh r1, [r0, #6]
	movs r1, #0xff
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	bl ScreenFadeUpdateValues
	ldr r1, _080031BC @ =gStageData
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1, #0x3c]
	ldr r0, _080031C0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080031C4 @ =sub_80031C8
	str r0, [r1, #8]
_080031B0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080031B8: .4byte gUnknown_030010C0
_080031BC: .4byte gStageData
_080031C0: .4byte gCurTask
_080031C4: .4byte sub_80031C8

.syntax divided
