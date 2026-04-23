
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	ldr r2, _080032C8 @ =gPlayers
	ldr r3, _080032CC @ =gStageData
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
	movs r0, #5
	strb r0, [r3, #4]
	ldrb r0, [r3, #6]
	mov ip, r3
	cmp r0, #0
	bne _080032DC
	ldr r2, _080032D0 @ =gMultiSioSend
	ldr r0, _080032D4 @ =0x0000600E
	strh r0, [r2]
	ldr r0, _080032D8 @ =gUnknown_03001060
	ldrb r0, [r0, #7]
	strb r0, [r2, #2]
	mov r0, ip
	adds r0, #0x8e
	ldrb r0, [r0]
	b _080032FE
	.align 2, 0
_080032C8: .4byte gPlayers
_080032CC: .4byte gStageData
_080032D0: .4byte gMultiSioSend
_080032D4: .4byte 0x0000600E
_080032D8: .4byte gUnknown_03001060
_080032DC:
	ldr r2, _0800338C @ =gMultiSioRecv
	ldrh r3, [r2]
	ldr r0, _08003390 @ =0x0000600E
	cmp r3, r0
	bne _08003300
	ldr r1, _08003394 @ =gUnknown_03001060
	ldrb r0, [r2, #2]
	strb r0, [r1, #7]
	ldrb r0, [r2, #3]
	mov r4, ip
	adds r4, #0x8e
	strb r0, [r4]
	ldr r2, _08003398 @ =gMultiSioSend
	strh r3, [r2]
	ldrb r0, [r1, #7]
	strb r0, [r2, #2]
	ldrb r0, [r4]
_080032FE:
	strb r0, [r2, #3]
_08003300:
	movs r2, #0
	ldr r0, _08003394 @ =gUnknown_03001060
	ldrb r5, [r0, #7]
	ldr r7, _08003390 @ =0x0000600E
	ldr r6, _0800339C @ =0x00006001
_0800330A:
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	adds r1, r5, #0
	asrs r1, r3
	movs r0, #1
	ands r1, r0
	adds r4, r2, #0
	cmp r1, #0
	beq _08003330
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _0800338C @ =gMultiSioRecv
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, r7
	beq _08003330
	cmp r0, r6
	bne _08003386
_08003330:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0800330A
	mov r2, ip
	adds r2, #0x8e
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _08003358
	ldr r1, _080033A0 @ =gUnknown_03000970
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1, #1]
	cmp r0, #0x62
	bhi _08003358
	adds r0, #1
	strb r0, [r1, #1]
_08003358:
	ldr r0, _080033A4 @ =0x00000325
	bl m4aSongNumStart
	ldr r0, _080033A8 @ =gUnknown_030010C0
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
	ldr r1, _080033AC @ =gStageData
	movs r0, #0xf0
	strh r0, [r1, #0x2e]
	ldr r0, _080033B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080033B4 @ =Task_80033B8
	str r0, [r1, #8]
_08003386:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800338C: .4byte gMultiSioRecv
_08003390: .4byte 0x0000600E
_08003394: .4byte gUnknown_03001060
_08003398: .4byte gMultiSioSend
_0800339C: .4byte 0x00006001
_080033A0: .4byte gUnknown_03000970
_080033A4: .4byte 0x00000325
_080033A8: .4byte gUnknown_030010C0
_080033AC: .4byte gStageData
_080033B0: .4byte gCurTask
_080033B4: .4byte Task_80033B8

.syntax divided
