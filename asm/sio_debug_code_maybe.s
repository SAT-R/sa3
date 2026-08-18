.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

    @ Possibly unused?
	thumb_func_start Task_808D00C
Task_808D00C: @ 0x0808D00C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808D054 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _0808D058 @ =0x03000FC0
	adds r4, r1, r2		@ r4 = (ScreenFade *)
	ldr r0, _0808D05C @ =gPressedKeys
	ldrh r1, [r0]
	movs r6, #9
	ands r6, r1
	cmp r6, #0
	beq _0808D060
	movs r1, #0
	strh r1, [r4]
	movs r0, #1
	strh r0, [r4, #2]
	strh r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #6]
	movs r0, #0xff
	strh r0, [r4, #8]
	strh r1, [r4, #0xa]
	adds r0, r4, #0
	bl ScreenFadeUpdateValues
	mov r3, r8
	ldr r1, [r3]
	b _0808D090
	.align 2, 0
_0808D054: .4byte gCurTask
_0808D058: .4byte 0x03000FC0
_0808D05C: .4byte gPressedKeys
_0808D060:
	movs r7, #2
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0808D09C
	movs r0, #0x6b
	bl m4aSongNumStart
	strh r7, [r5, #0x10]
	strh r6, [r4]
	movs r0, #1
	strh r0, [r4, #2]
	strh r6, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #6]
	movs r0, #0xff
	strh r0, [r4, #8]
	strh r6, [r4, #0xa]
	adds r0, r4, #0
	bl ScreenFadeUpdateValues
	mov r0, r8
	ldr r1, [r0]
_0808D090:
	ldr r0, _0808D098 @ =Task_808ECF4
	str r0, [r1, #8]
	b _0808D0E6
	.align 2, 0
_0808D098: .4byte Task_808ECF4
_0808D09C:
	ldr r0, _0808D0C4 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0808D0E6
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0808D0CC
	ldrh r1, [r5, #0x10]
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0808D0C8
	strh r7, [r5, #0x10]
	b _0808D0E6
	.align 2, 0
_0808D0C4: .4byte gRepeatedKeys
_0808D0C8:
	subs r0, r1, #1
	b _0808D0E4
_0808D0CC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808D0E6
	ldrh r1, [r5, #0x10]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	cmp r0, #2
	bne _0808D0E2
	strh r2, [r5, #0x10]
	b _0808D0E6
_0808D0E2:
	adds r0, r1, #1
_0808D0E4:
	strh r0, [r5, #0x10]
_0808D0E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	@ CreateMultiPakConnectionCheck ???
	thumb_func_start sub_808D0F0
sub_808D0F0: @ 0x0808D0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _0808D180 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0808D184 @ =Task_808D214
	movs r2, #0x80
	lsls r2, r2, #5
	movs r4, #0
	str r4, [sp]
	movs r1, #0xec
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	strh r4, [r6]
	movs r0, #2
	strh r0, [r6, #2]
	strh r4, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6, #6]
	movs r0, #0xff
	strh r0, [r6, #8]
	strh r4, [r6, #0xa]
	adds r0, r6, #0		@ r0 = r6 = (ScreenFade *)
	bl ScreenFadeUpdateValues
	movs r1, #0
	ldr r0, _0808D188 @ =0x0300000E
	adds r5, r5, r0
	movs r3, #0xff
_0808D13E:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r5, r0
	ldrb r1, [r2]
	orrs r1, r3
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808D13E
	movs r1, #0
	strb r1, [r6, #0x13]
	strb r1, [r6, #0x14]
	strb r1, [r6, #0x17]
	strb r1, [r6, #0x12]
	movs r0, #1
	strb r0, [r6, #0x16]
	strh r1, [r6, #0xc]
	ldr r0, _0808D18C @ =gLoadedSaveGame
	ldr r1, _0808D190 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r6, #0x18]
	strb r7, [r6, #0x19]
	cmp r7, #0xff
	beq _0808D194
	bl sub_80C6168
	bl sub_80258D4
	b _0808D198
	.align 2, 0
_0808D180: .4byte gDispCnt
_0808D184: .4byte Task_808D214
_0808D188: .4byte 0x0300000E
_0808D18C: .4byte gLoadedSaveGame
_0808D190: .4byte 0x00000366
_0808D194:
	bl MultiSio_SendPlayerName
_0808D198:
	movs r2, #0
	str r2, [sp, #4]
	ldr r3, _0808D200 @ =0x040000D4
	add r0, sp, #4
	str r0, [r3]
	ldr r0, _0808D204 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0808D208 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _0808D20C @ =gBgSprites_Unknown1
	strb r2, [r4, #2]
	ldr r0, _0808D210 @ =gBgSprites_Unknown2
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r3, #0x40
	strb r3, [r0, #0xb]
	strb r2, [r4, #1]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	strb r2, [r4]
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r1, [r0, #2]
	strb r3, [r0, #3]
	adds r0, r6, #0
	movs r1, #3
	bl sub_808D548
	bl m4aMPlayAllStop
	movs r0, #0x44      @ MUS_VS_MUSIC_1 @ checking connection
	bl m4aSongNumStart
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D200: .4byte 0x040000D4
_0808D204: .4byte gBgCntRegs
_0808D208: .4byte 0x85000010
_0808D20C: .4byte gBgSprites_Unknown1
_0808D210: .4byte gBgSprites_Unknown2

	thumb_func_start Task_808D214
Task_808D214: @ 0x0808D214
	push {r4, r5, r6, lr}
	ldr r6, _0808D268 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_808D5CC
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bne _0808D24C
	strh r1, [r4]
	movs r0, #2
	strh r0, [r4, #2]
	strh r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #6]
	movs r0, #0xff
	strh r0, [r4, #8]
	strh r1, [r4, #0xa]
	movs r0, #1
	strh r0, [r4, #0xc]
_0808D24C:
	adds r0, r5, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D260
	ldr r1, [r6]
	ldr r0, _0808D26C @ =sub_808D270
	str r0, [r1, #8]
_0808D260:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808D268: .4byte gCurTask
_0808D26C: .4byte sub_808D270

	thumb_func_start sub_808D270
sub_808D270: @ 0x0808D270
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808D298 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r5, r6, #0
	ldr r0, _0808D29C @ =gStageData
	ldrb r0, [r0, #6]
	mov r8, r0
	movs r4, #0
	cmp r0, #0
	bne _0808D2A0
	bl sub_802440C
	b _0808D2A4
	.align 2, 0
_0808D298: .4byte gCurTask
_0808D29C: .4byte gStageData
_0808D2A0:
	bl sub_8024584
_0808D2A4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r7, r0, #0
	cmp r2, #0
	bge _0808D2B8
	bl sub_802613C
	b _0808D444
_0808D2B8:
	movs r1, #0
	movs r3, #1
_0808D2BC:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _0808D2D0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0808D2D0:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808D2BC
	subs r1, r4, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_808D648
	adds r0, r5, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808D2F6
	b _0808D444
_0808D2F6:
	mov r0, r8
	cmp r0, #0
	bne _0808D3AC
	asrs r0, r7, #0x10
	cmp r0, #3
	bne _0808D306
	cmp r4, #2
	beq _0808D316
_0808D306:
	cmp r0, #7
	bne _0808D30E
	cmp r4, #3
	beq _0808D316
_0808D30E:
	cmp r0, #0xf
	bne _0808D400
	cmp r4, #4
	bne _0808D400
_0808D316:
	movs r4, #0
	movs r1, #0
	asrs r3, r7, #0x10
	movs r7, #1
_0808D31E:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	adds r0, r3, #0
	asrs r0, r2
	ands r0, r7
	cmp r0, #0
	bne _0808D33A
	lsls r0, r2, #1
	ldr r2, _0808D39C @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _0808D33A
	movs r4, #1
_0808D33A:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808D31E
	cmp r4, #0
	bne _0808D400
	adds r0, r6, #0
	bl sub_808D6BC
	ldr r0, _0808D3A0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808D400
	bl sub_80244E4
	movs r0, #0x63      @ MUS_VS_SUCCESS
	bl m4aSongNumStart
	strh r4, [r5]
	movs r0, #1
	strh r0, [r5, #2]
	strh r4, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #6]
	movs r0, #0xff
	strh r0, [r5, #8]
	strh r4, [r5, #0xa]
	adds r0, r5, #0
	bl ScreenFadeUpdateValues
	adds r0, r6, #0
	movs r1, #4
	bl sub_808D548
	adds r0, r6, #0
	movs r1, #2
	bl sub_808D5CC
	strh r4, [r6, #0xc]
	ldr r0, _0808D3A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808D3A8 @ =Task_808D45C
	b _0808D442
	.align 2, 0
_0808D39C: .4byte 0x04000120
_0808D3A0: .4byte gPressedKeys
_0808D3A4: .4byte gCurTask
_0808D3A8: .4byte Task_808D45C
_0808D3AC:
	asrs r0, r7, #0x10
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808D400
	bl sub_80246B4
	movs r4, #0
	strh r4, [r5]
	movs r0, #1
	strh r0, [r5, #2]
	strh r4, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #6]
	movs r0, #0xff
	strh r0, [r5, #8]
	strh r4, [r5, #0xa]
	adds r0, r5, #0
	bl ScreenFadeUpdateValues
	movs r0, #0x63      @ MUS_VS_SUCCESS
	bl m4aSongNumStart
	adds r0, r6, #0
	movs r1, #4
	bl sub_808D548
	adds r0, r6, #0
	movs r1, #2
	bl sub_808D5CC
	strh r4, [r6, #0xc]
	ldr r0, _0808D3F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808D3FC @ =Task_808D45C
	b _0808D442
	.align 2, 0
_0808D3F8: .4byte gCurTask
_0808D3FC: .4byte Task_808D45C
_0808D400:
	ldr r0, _0808D450 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808D444
	ldrb r0, [r6, #0x19]
	cmp r0, #0xff
	beq _0808D444
	movs r0, #0x6b
	bl m4aSongNumStart
	bl sub_80260F0
	movs r1, #0
	strh r1, [r5]
	movs r0, #1
	strh r0, [r5, #2]
	strh r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #6]
	movs r0, #0xff
	strh r0, [r5, #8]
	strh r1, [r5, #0xa]
	adds r0, r5, #0
	bl ScreenFadeUpdateValues
	movs r0, #0x26
	strb r0, [r6, #0x17]
	ldr r0, _0808D454 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808D458 @ =Task_808ED60
_0808D442:
	str r0, [r1, #8]
_0808D444:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D450: .4byte gPressedKeys
_0808D454: .4byte gCurTask
_0808D458: .4byte Task_808ED60

	thumb_func_start Task_808D45C
Task_808D45C: @ 0x0808D45C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0808D47C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r4, r6, #0
	ldr r0, _0808D480 @ =gStageData
	ldrb r7, [r0, #6]
	cmp r7, #0
	bne _0808D484
	bl sub_80244E4
	b _0808D488
	.align 2, 0
_0808D47C: .4byte gCurTask
_0808D480: .4byte gStageData
_0808D484:
	bl sub_80246B4
_0808D488:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bge _0808D49A
	bl sub_802613C
	b _0808D524
_0808D49A:
	ldrh r1, [r4, #0xc]
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0x77
	bgt _0808D4AA
	adds r0, r1, #1
	strh r0, [r4, #0xc]
	b _0808D524
_0808D4AA:
	adds r0, r6, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808D524
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _0808D524
	cmp r7, #0
	bne _0808D4C8
	bl sub_80258FC
	b _0808D4CC
_0808D4C8:
	bl sub_80259EC
_0808D4CC:
	movs r5, #0
	movs r4, #0
	strh r4, [r6]
	movs r0, #2
	strh r0, [r6, #2]
	strh r4, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6, #6]
	movs r0, #0xff
	strh r0, [r6, #8]
	strh r4, [r6, #0xa]
	adds r0, r6, #0
	bl ScreenFadeUpdateValues
	str r4, [sp]
	ldr r2, _0808D52C @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _0808D530 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0808D534 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0808D538 @ =gBgSprites_Unknown1
	strb r5, [r0, #2]
	ldr r1, _0808D53C @ =gBgSprites_Unknown2
	strb r5, [r1, #8]
	strb r5, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	ldr r0, _0808D540 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808D544 @ =sub_808D718
	str r0, [r1, #8]
_0808D524:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D52C: .4byte 0x040000D4
_0808D530: .4byte gBgCntRegs
_0808D534: .4byte 0x85000010
_0808D538: .4byte gBgSprites_Unknown1
_0808D53C: .4byte gBgSprites_Unknown2
_0808D540: .4byte gCurTask
_0808D544: .4byte sub_808D718

	thumb_func_start sub_808D548
sub_808D548: @ 0x0808D548
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0808D5B4 @ =gBgCntRegs
	movs r6, #0
	movs r3, #0
	ldr r0, _0808D5B8 @ =0x00000602
	strh r0, [r2, #2]
	ldr r4, _0808D5BC @ =gDispCnt
	ldrh r0, [r4]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r2, r7, #0
	orrs r0, r2
	strh r0, [r4]
	ldr r0, _0808D5C0 @ =gBgScrollRegs
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	adds r0, r5, #0
	adds r0, #0x5c			@ r0 = (Background *)
	movs r2, #0xc0
	lsls r2, r2, #0x13
	str r2, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r2, _0808D5C4 @ =0x06003000
	str r2, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	ldr r4, _0808D5C8 @ =gTilemapIdsConnectionStatus
	ldrb r2, [r5, #0x18]
	lsls r2, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r5, #0x86
	strb r6, [r5]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D5B4: .4byte gBgCntRegs
_0808D5B8: .4byte 0x00000602
_0808D5BC: .4byte gDispCnt
_0808D5C0: .4byte gBgScrollRegs
_0808D5C4: .4byte 0x06003000
_0808D5C8: .4byte gTilemapIdsConnectionStatus

	thumb_func_start sub_808D5CC
sub_808D5CC: @ 0x0808D5CC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	ldr r2, _0808D62C @ =gBgCntRegs
	movs r6, #0
	movs r3, #0
	ldr r0, _0808D630 @ =0x00000E07
	strh r0, [r2]
	ldr r4, _0808D634 @ =gDispCnt
	ldrh r0, [r4]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r2, r7, #0
	orrs r0, r2
	strh r0, [r4]
	ldr r0, _0808D638 @ =gBgScrollRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	adds r0, r5, #0
	adds r0, #0x1c		@ r0 = (Background *)
	ldr r2, _0808D63C @ =0x06004000
	str r2, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r2, _0808D640 @ =0x06007000
	str r2, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	ldr r2, _0808D644 @ =gTilemapIdsConnectionStatus
	lsrs r1, r1, #0x17
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r5, #0x46
	strb r6, [r5]
	strh r3, [r0, #0x2e]
	bl DrawBackground
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D62C: .4byte gBgCntRegs
_0808D630: .4byte 0x00000E07
_0808D634: .4byte gDispCnt
_0808D638: .4byte gBgScrollRegs
_0808D63C: .4byte 0x06004000
_0808D640: .4byte 0x06007000
_0808D644: .4byte gTilemapIdsConnectionStatus

	thumb_func_start sub_808D648
sub_808D648: @ 0x0808D648
	push {r4, lr}
	lsls r1, r1, #0x18
	asrs r2, r1, #0x18
	cmp r2, #0
	ble _0808D6A8
	adds r4, r0, #0
	adds r4, #0xc4
	ldr r1, _0808D6B0 @ =gUnknown_080D6898
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0808D6B4 @ =0x06010000
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, _0808D6B8 @ =gUnknown_080D6EE8
	subs r0, r2, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r3, #0
	movs r2, #0
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x71
	strh r0, [r4, #0x10]
	movs r0, #0x67
	strh r0, [r4, #0x12]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	str r2, [r4, #8]
	subs r0, #0x11
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0808D6A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808D6B0: .4byte gUnknown_080D6898
_0808D6B4: .4byte 0x06010000
_0808D6B8: .4byte gUnknown_080D6EE8

	thumb_func_start sub_808D6BC
sub_808D6BC: @ 0x0808D6BC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r4, #0x9c
	ldr r1, _0808D710 @ =0x06010000
	str r1, [r4]
	ldr r3, _0808D714 @ =gUnknown_080D6898
	ldrb r1, [r0, #0x18]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r5, #0
	movs r2, #0
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x8c
	strh r0, [r4, #0x12]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r5, [r4, #0x1f]
	str r2, [r4, #8]
	subs r0, #0x11
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808D710: .4byte 0x06010000
_0808D714: .4byte gUnknown_080D6898

	thumb_func_start sub_808D718
sub_808D718: @ 0x0808D718
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0808D7C4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r4, _0808D7C8 @ =gMultiSioSend
	ldr r1, _0808D7CC @ =gStageData
	ldrb r5, [r1, #6]
	bl CreateCharacterSelectMultiplayer
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strh r0, [r4, #6]
	str r0, [r4, #8]
	strh r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	movs r2, #0
	adds r4, #0xf
	movs r3, #0xff
_0808D752:
	adds r0, r4, r2
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0808D752
	movs r1, #0
	ldr r0, _0808D7C4 @ =gCurTask
	mov sb, r0
	ldr r0, _0808D7D0 @ =gMultiSioRecv
	mov r8, r0
	lsls r5, r5, #0x10
	mov ip, r5
	movs r5, #0
	movs r6, #0
	movs r7, #0xff
_0808D778:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	strh r6, [r0]
	strb r5, [r0, #2]
	strb r5, [r0, #3]
	strb r5, [r0, #4]
	strb r5, [r0, #5]
	strh r6, [r0, #6]
	str r6, [r0, #8]
	strh r6, [r0, #0xc]
	strb r5, [r0, #0xe]
	movs r2, #0
	adds r4, r1, #1
	adds r3, r0, #0
	adds r3, #0xf
_0808D79A:
	adds r0, r3, r2
	ldrb r1, [r0]
	orrs r1, r7
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0808D79A
	lsls r0, r4, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0808D778
	mov r1, ip
	asrs r0, r1, #0x10
	cmp r0, #1
	bgt _0808D7D8
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0808D7D4 @ =sub_808D7F0
	b _0808D7DE
	.align 2, 0
_0808D7C4: .4byte gCurTask
_0808D7C8: .4byte gMultiSioSend
_0808D7CC: .4byte gStageData
_0808D7D0: .4byte gMultiSioRecv
_0808D7D4: .4byte sub_808D7F0
_0808D7D8:
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0808D7EC @ =sub_808DA44
_0808D7DE:
	str r0, [r1, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D7EC: .4byte sub_808DA44

	thumb_func_start sub_808D7F0
sub_808D7F0: @ 0x0808D7F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0808D820 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	mov r8, r4
	ldr r0, _0808D824 @ =gStageData
	ldrb r0, [r0, #6]
	mov sb, r0
	cmp r0, #0
	bne _0808D82C
	ldr r1, _0808D828 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8025908
	b _0808D83A
	.align 2, 0
_0808D820: .4byte gCurTask
_0808D824: .4byte gStageData
_0808D828: .4byte gUnknown_080D8F18
_0808D82C:
	ldr r1, _0808D84C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024A4C
_0808D83A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808D850
	bl sub_802613C
	b _0808D97C
	.align 2, 0
_0808D84C: .4byte gUnknown_080D8F18
_0808D850:
	movs r2, #0
	ldr r7, _0808D8F4 @ =gUnknown_03001060
	ldr r0, _0808D8F8 @ =gMultiSioRecv
	mov ip, r0
	adds r6, r7, #0
	adds r6, #0x4c
	adds r5, r4, #0
	adds r5, #0xe
_0808D860:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, ip
	adds r3, r5, r1
	ldrb r2, [r0, #4]
	strb r2, [r3]
	adds r2, r1, r6
	adds r0, #0xf
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0808D860
	mov r0, r8
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808D97C
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _0808D97C
	ldr r0, _0808D8FC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808D930
	movs r2, #0
	ldr r6, _0808D900 @ =gUnknown_080D8F18
	movs r3, #0x13
	ldrsb r3, [r4, r3]
	ldr r7, _0808D8F4 @ =gUnknown_03001060
	movs r0, #0x4c
	adds r0, r0, r7
	mov ip, r0
	adds r0, r3, r6
	ldrb r5, [r0]
_0808D8BA:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	mov r2, ip
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, r5
	beq _0808D97C
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808D8BA
	mov r2, sb
	cmp r2, #0
	bne _0808D90C
	adds r1, r7, #0
	adds r1, #0x4c
	adds r0, r3, r6
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0xc
	strb r0, [r4, #0x17]
	ldr r0, _0808D904 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808D908 @ =sub_808DA44
	str r0, [r1, #8]
	b _0808D97C
	.align 2, 0
_0808D8F4: .4byte gUnknown_03001060
_0808D8F8: .4byte gMultiSioRecv
_0808D8FC: .4byte gPressedKeys
_0808D900: .4byte gUnknown_080D8F18
_0808D904: .4byte gCurTask
_0808D908: .4byte sub_808DA44
_0808D90C:
	adds r0, r7, #0
	adds r0, #0x4c
	adds r0, r2, r0
	adds r1, r3, r6
	ldrb r1, [r1]
	strb r1, [r0]
	movs r0, #0xc
	strb r0, [r4, #0x17]
	ldr r0, _0808D928 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808D92C @ =sub_808D988
	str r0, [r1, #8]
	b _0808D97C
	.align 2, 0
_0808D928: .4byte gCurTask
_0808D92C: .4byte sub_808D988
_0808D930:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0808D958
	movs r0, #0x67      @ SE_CHARSELECT_SLIDE
	bl m4aSongNumStart
	ldrb r1, [r4, #0x13]
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0808D952
	subs r0, r1, #1
	strb r0, [r4, #0x13]
	b _0808D978
_0808D952:
	movs r0, #4
	strb r0, [r4, #0x13]
	b _0808D978
_0808D958:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808D978
	movs r0, #0x67      @ SE_CHARSELECT_SLIDE
	bl m4aSongNumStart
	ldrb r1, [r4, #0x13]
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bgt _0808D976
	adds r0, r1, #1
	strb r0, [r4, #0x13]
	b _0808D978
_0808D976:
	strb r5, [r4, #0x13]
_0808D978:
	ldrb r0, [r4, #0x13]
	strb r0, [r4, #0x12]
_0808D97C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808D988
sub_808D988: @ 0x0808D988
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _0808D9C0 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808D9C4 @ =gStageData
	ldrb r5, [r0, #6]
	adds r6, r5, #0
	ldr r0, _0808D9C8 @ =gUnknown_080D8F18
	mov r8, r0
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	add r0, r8
	ldrb r0, [r0]
	bl sub_8024AC0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808D9CC
	bl sub_802613C
	b _0808DA2C
	.align 2, 0
_0808D9C0: .4byte gCurTask
_0808D9C4: .4byte gStageData
_0808D9C8: .4byte gUnknown_080D8F18
_0808D9CC:
	cmp r0, #1
	bne _0808D9F0
	ldr r1, _0808D9E8 @ =gUnknown_03001060
	adds r1, #0x4c
	adds r1, r5, r1
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [r7]
	ldr r0, _0808D9EC @ =sub_808DA44
	b _0808DA04
	.align 2, 0
_0808D9E8: .4byte gUnknown_03001060
_0808D9EC: .4byte sub_808DA44
_0808D9F0:
	cmp r0, #2
	bne _0808DA06
	strb r0, [r4, #0x17]
	ldr r0, _0808DA38 @ =gUnknown_03001060
	adds r0, #0x4c
	adds r0, r6, r0
	movs r1, #0xff
	strb r1, [r0]
	ldr r1, [r7]
	ldr r0, _0808DA3C @ =sub_808D7F0
_0808DA04:
	str r0, [r1, #8]
_0808DA06:
	movs r0, #0
	ldr r5, _0808DA40 @ =gMultiSioRecv
	adds r3, r4, #0
	adds r3, #0xe
_0808DA0E:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r2, r3, r1
	ldrb r0, [r0, #4]
	strb r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0808DA0E
_0808DA2C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DA38: .4byte gUnknown_03001060
_0808DA3C: .4byte sub_808D7F0
_0808DA40: .4byte gMultiSioRecv

	thumb_func_start sub_808DA44
sub_808DA44: @ 0x0808DA44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0808DA74 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r4, r7, #0
	ldr r0, _0808DA78 @ =gStageData
	ldrb r6, [r0, #6]
	cmp r6, #0
	bne _0808DA80
	ldr r1, _0808DA7C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024984
	b _0808DA8E
	.align 2, 0
_0808DA74: .4byte gCurTask
_0808DA78: .4byte gStageData
_0808DA7C: .4byte gUnknown_080D8F18
_0808DA80:
	ldr r1, _0808DAD4 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024C68
_0808DA8E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	ldr r1, _0808DAD8 @ =gMultiSioRecv
	mov r8, r1
	movs r1, #0xe
	adds r1, r1, r4
	mov sl, r1
	lsls r0, r0, #0x10
	mov ip, r0
	mov sb, r8
	mov r5, sl
_0808DAA6:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	mov r2, sb
	adds r3, r0, r2
	adds r2, r5, r1
	ldrb r0, [r3, #4]
	strb r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0808DAA6
	mov r0, ip
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0808DADC
	bl sub_802613C
	b _0808DC20
	.align 2, 0
_0808DAD4: .4byte gUnknown_080D8F18
_0808DAD8: .4byte gMultiSioRecv
_0808DADC:
	cmp r2, #2
	beq _0808DAE2
	b _0808DBEC
_0808DAE2:
	movs r0, #0x3c
	strh r0, [r4, #0xc]
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #0
	bne _0808DB28
	ldr r0, _0808DB14 @ =gUnknown_03001060
	adds r0, #0x4c
	ldrb r0, [r0]
	ldr r2, _0808DB18 @ =gCharacterSelectedVoices
	ldr r1, _0808DB1C @ =gUnknown_080D6EE0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r0, _0808DB20 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DB24 @ =sub_808DCFC
	str r0, [r1, #8]
	b _0808DC20
	.align 2, 0
_0808DB14: .4byte gUnknown_03001060
_0808DB18: .4byte gCharacterSelectedVoices
_0808DB1C: .4byte gUnknown_080D6EE0
_0808DB20: .4byte gCurTask
_0808DB24: .4byte sub_808DCFC
_0808DB28:
	cmp r1, #1
	bne _0808DB88
	ldr r0, _0808DB50 @ =gUnknown_03001060
	adds r5, r0, #0
	adds r5, #0x4c
	adds r3, r0, #0
	adds r3, #0x4d
	ldrb r0, [r3]
	mov r1, r8
	ldrb r1, [r1, #4]
	cmp r0, r1
	bne _0808DB5C
	strb r2, [r4, #0x17]
	movs r0, #0xff
	strb r0, [r3]
	ldr r0, _0808DB54 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DB58 @ =sub_808D7F0
	str r0, [r1, #8]
	b _0808DC20
	.align 2, 0
_0808DB50: .4byte gUnknown_03001060
_0808DB54: .4byte gCurTask
_0808DB58: .4byte sub_808D7F0
_0808DB5C:
	ldr r1, _0808DB7C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r4, #0xe]
	strb r0, [r5]
	ldrb r0, [r3]
	ldr r2, _0808DB80 @ =gCharacterSelectedVoices
	ldr r1, _0808DB84 @ =gUnknown_080D6EE0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	b _0808DBC2
	.align 2, 0
_0808DB7C: .4byte gUnknown_080D8F18
_0808DB80: .4byte gCharacterSelectedVoices
_0808DB84: .4byte gUnknown_080D6EE0
_0808DB88:
	movs r2, #0
	ldr r7, _0808DBD8 @ =gUnknown_03001060
	ldr r6, _0808DBDC @ =gCharacterSelectedVoices
	mov sb, r6
	ldr r0, _0808DBE0 @ =gUnknown_080D6EE0
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0x4c
	mov r3, sl
_0808DB9A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r6
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808DB9A
	asrs r0, r5, #0x10
	adds r0, r7, r0
	adds r0, #0x4a
	ldrb r0, [r0]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sb
_0808DBC2:
	ldrh r0, [r0]
	bl m4aSongNumStart
	movs r0, #0xc
	strb r0, [r4, #0x17]
	ldr r0, _0808DBE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DBE8 @ =sub_808DD6C
	str r0, [r1, #8]
	b _0808DC20
	.align 2, 0
_0808DBD8: .4byte gUnknown_03001060
_0808DBDC: .4byte gCharacterSelectedVoices
_0808DBE0: .4byte gUnknown_080D6EE0
_0808DBE4: .4byte gCurTask
_0808DBE8: .4byte sub_808DD6C
_0808DBEC:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #2
	bne _0808DC04
	ldr r0, _0808DC00 @ =gUnknown_080D6EE0
	mov r2, r8
	ldrb r1, [r2, #4]
	b _0808DC0E
	.align 2, 0
_0808DC00: .4byte gUnknown_080D6EE0
_0808DC04:
	cmp r1, #3
	bne _0808DC14
	ldr r3, _0808DC30 @ =gMultiSioRecv+1*0x18
	ldr r0, _0808DC34 @ =gUnknown_080D6EE0
	ldrb r1, [r3, #4]
_0808DC0E:
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4, #0x12]
_0808DC14:
	asrs r0, r5, #0x10
	cmp r0, #1
	ble _0808DC20
	adds r0, r7, #0
	bl UpdateScreenFade
_0808DC20:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DC30: .4byte gMultiSioRecv+1*0x18
_0808DC34: .4byte gUnknown_080D6EE0

	thumb_func_start sub_808DC38
sub_808DC38: @ 0x0808DC38
	push {r4, r5, lr}
	ldr r0, _0808DC60 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808DC64 @ =gStageData
	ldrb r5, [r0, #6]
	cmp r5, #0
	bne _0808DC6C
	ldr r1, _0808DC68 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8025948
	b _0808DC7A
	.align 2, 0
_0808DC60: .4byte gCurTask
_0808DC64: .4byte gStageData
_0808DC68: .4byte gUnknown_080D8F18
_0808DC6C:
	ldr r1, _0808DC8C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024B84
_0808DC7A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808DC90
	bl sub_802613C
	b _0808DCEA
	.align 2, 0
_0808DC8C: .4byte gUnknown_080D8F18
_0808DC90:
	cmp r0, #1
	bne _0808DCB8
	movs r0, #2
	strb r0, [r4, #0x17]
	ldr r0, _0808DCAC @ =gUnknown_03001060
	adds r0, #0x4c
	adds r0, r5, r0
	movs r1, #0xff
	strb r1, [r0]
	ldr r0, _0808DCB0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DCB4 @ =sub_808D7F0
	b _0808DCC2
	.align 2, 0
_0808DCAC: .4byte gUnknown_03001060
_0808DCB0: .4byte gCurTask
_0808DCB4: .4byte sub_808D7F0
_0808DCB8:
	cmp r0, #2
	bne _0808DCC4
	ldr r0, _0808DCF0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DCF4 @ =sub_808DA44
_0808DCC2:
	str r0, [r1, #8]
_0808DCC4:
	movs r0, #0
	ldr r5, _0808DCF8 @ =gMultiSioRecv
	adds r3, r4, #0
	adds r3, #0xe
_0808DCCC:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r2, r3, r1
	ldrb r0, [r0, #4]
	strb r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0808DCCC
_0808DCEA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808DCF0: .4byte gCurTask
_0808DCF4: .4byte sub_808DA44
_0808DCF8: .4byte gMultiSioRecv

	thumb_func_start sub_808DCFC
sub_808DCFC: @ 0x0808DCFC
	push {r4, r5, r6, lr}
	ldr r0, _0808DD40 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	bl sub_8025998
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _0808DD44 @ =0x0300000E
	adds r4, r4, r0
	ldr r5, _0808DD48 @ =gUnknown_030010AC
_0808DD1A:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r4, r0
	adds r1, r0, r5
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808DD1A
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808DD4C
	bl sub_802613C
	b _0808DD5C
	.align 2, 0
_0808DD40: .4byte gCurTask
_0808DD44: .4byte 0x0300000E
_0808DD48: .4byte gUnknown_030010AC
_0808DD4C:
	cmp r0, #1
	bne _0808DD5C
	movs r0, #0
	strh r0, [r6, #0xc]
	ldr r0, _0808DD64 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DD68 @ =sub_808DD6C
	str r0, [r1, #8]
_0808DD5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808DD64: .4byte gCurTask
_0808DD68: .4byte sub_808DD6C

	thumb_func_start sub_808DD6C
sub_808DD6C: @ 0x0808DD6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0808DD9C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _0808DDA0 @ =gStageData
	ldrb r4, [r0, #6]
	cmp r4, #0
	bne _0808DDA8
	ldr r1, _0808DDA4 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80259F8
	b _0808DDB6
	.align 2, 0
_0808DD9C: .4byte gCurTask
_0808DDA0: .4byte gStageData
_0808DDA4: .4byte gUnknown_080D8F18
_0808DDA8:
	ldr r1, _0808DDC8 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024F84
_0808DDB6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808DDCC
	bl sub_802613C
	b _0808DE90
	.align 2, 0
_0808DDC8: .4byte gUnknown_080D8F18
_0808DDCC:
	ldrh r0, [r6, #0xc]
	adds r0, #1
	strh r0, [r6, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0808DE90
	adds r3, r4, #0
	cmp r3, #1
	bgt _0808DDF8
	ldr r0, _0808DDF0 @ =gPlayers
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r3
	lsls r1, r1, #4
	adds r1, r1, r0
	b _0808DE0A
	.align 2, 0
_0808DDF0: .4byte gPlayers
_0808DDF4:
	strb r7, [r6, #0x13]
	b _0808DE7C
_0808DDF8:
	ldr r2, _0808DEA0 @ =gPlayers
	movs r0, #1
	ands r0, r3
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
_0808DE0A:
	ldr r2, _0808DEA4 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r6, r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, #0x2a
	movs r2, #0xf
	ands r2, r0
	ldrb r3, [r1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	movs r7, #0
	ldr r0, _0808DEA8 @ =gUnknown_03001060
	mov sl, r0
	adds r0, #0x4c
	ldr r1, _0808DEA4 @ =gUnknown_080D8F18
	mov ip, r1
	ldrb r0, [r0]
	mov r8, r0
	mov sb, ip
_0808DE38:
	movs r3, #0
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	mov r4, ip
	adds r1, r2, r4
	adds r4, r0, #0
	ldrb r1, [r1]
	cmp r8, r1
	beq _0808DE6A
	ldr r5, _0808DEAC @ =gUnknown_030010AC
	mov r0, sb
	adds r1, r2, r0
_0808DE50:
	lsls r0, r3, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0808DE6A
	adds r0, r0, r5
	ldrb r0, [r0]
	ldrb r2, [r1]
	cmp r0, r2
	bne _0808DE50
_0808DE6A:
	cmp r3, #2
	beq _0808DDF4
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0808DE38
_0808DE7C:
	ldrb r1, [r6, #0x13]
	mov r0, sl
	adds r0, #0x4e
	strb r1, [r0]
	ldrb r0, [r6, #0x13]
	strb r0, [r6, #0x12]
	ldr r2, _0808DEB0 @ =gCurTask
	ldr r0, [r2]
	ldr r4, _0808DEB4 @ =sub_808DEB8
	str r4, [r0, #8]
_0808DE90:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DEA0: .4byte gPlayers
_0808DEA4: .4byte gUnknown_080D8F18
_0808DEA8: .4byte gUnknown_03001060
_0808DEAC: .4byte gUnknown_030010AC
_0808DEB0: .4byte gCurTask
_0808DEB4: .4byte sub_808DEB8

	thumb_func_start sub_808DEB8
sub_808DEB8: @ 0x0808DEB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0808DEEC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808DEF0 @ =gStageData
	ldrb r6, [r0, #6]
	movs r5, #0
	cmp r6, #0
	bne _0808DEF8
	ldr r1, _0808DEF4 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80259F8
	b _0808DF06
	.align 2, 0
_0808DEEC: .4byte gCurTask
_0808DEF0: .4byte gStageData
_0808DEF4: .4byte gUnknown_080D8F18
_0808DEF8:
	ldr r1, _0808DF18 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024F84
_0808DF06:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808DF1C
_0808DF10:
	bl sub_802613C
	b _0808E050
	.align 2, 0
_0808DF18: .4byte gUnknown_080D8F18
_0808DF1C:
	lsls r0, r6, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _0808DF34
	ldr r1, _0808DF30 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r6, [r0]
	b _0808DF38
	.align 2, 0
_0808DF30: .4byte gUnknown_080D8F18
_0808DF34:
	ldr r0, _0808DF4C @ =gMultiSioRecv
	ldrb r6, [r0, #4]
_0808DF38:
	ldr r2, _0808DF50 @ =gUnknown_03001060
	ldrb r1, [r2, #7]
	adds r3, r2, #0
	cmp r1, #7
	beq _0808DF5E
	cmp r1, #7
	bgt _0808DF54
	cmp r1, #3
	beq _0808DF5A
	b _0808DF10
	.align 2, 0
_0808DF4C: .4byte gMultiSioRecv
_0808DF50: .4byte gUnknown_03001060
_0808DF54:
	cmp r1, #0xf
	beq _0808DF62
	b _0808DF10
_0808DF5A:
	movs r2, #0
	b _0808DF64
_0808DF5E:
	movs r2, #1
	b _0808DF64
_0808DF62:
	movs r2, #2
_0808DF64:
	movs r1, #0
	ldr r0, _0808DFF4 @ =gUnknown_080D6F00
	mov sl, r0
	lsls r2, r2, #2
	mov r8, r2
	asrs r2, r7, #0x10
	mov ip, r2
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	ldr r6, _0808DFF8 @ =gUnknown_030010AC
	mov sb, r6
_0808DF7C:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	add r0, r8
	add r0, sl
	ldrb r2, [r0]
	cmp r2, ip
	beq _0808DFAE
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r2, _0808DFFC @ =gMultiSioRecv
	adds r0, r0, r2
	ldrb r0, [r0, #4]
	ldr r6, [sp]
	cmp r0, r6
	bne _0808DFB4
	mov r2, sb
	ldrb r2, [r2]
	cmp r0, r2
	beq _0808DFB4
	adds r2, r3, #0
	adds r2, #0x4d
	ldrb r2, [r2]
	cmp r0, r2
	beq _0808DFB4
_0808DFAE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0808DFB4:
	movs r6, #0x80
	lsls r6, r6, #9
	adds r0, r1, r6
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808DF7C
	cmp r5, #4
	bne _0808E050
	ldrb r0, [r4, #0x17]
	cmp r0, #0xc
	bhi _0808DFD0
	movs r0, #0xd
	strb r0, [r4, #0x17]
_0808DFD0:
	ldrb r0, [r4, #0x17]
	cmp r0, #0xd
	bls _0808E050
	asrs r2, r7, #0x10
	cmp r2, #0
	beq _0808DFE0
	cmp r2, #2
	bne _0808E006
_0808DFE0:
	ldrb r0, [r3, #7]
	ands r5, r0
	cmp r5, #0
	beq _0808E000
	cmp r2, #0
	bne _0808E000
	movs r2, #0
	movs r0, #0xff
	b _0808E01E
	.align 2, 0
_0808DFF4: .4byte gUnknown_080D6F00
_0808DFF8: .4byte gUnknown_030010AC
_0808DFFC: .4byte gMultiSioRecv
_0808E000:
	movs r2, #1
	movs r0, #2
	b _0808E01E
_0808E006:
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808E01A
	cmp r2, #1
	bne _0808E01A
	movs r2, #0
	movs r0, #0xff
	b _0808E01E
_0808E01A:
	movs r2, #1
	movs r0, #3
_0808E01E:
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	adds r1, r3, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrb r1, [r4, #0x11]
	adds r0, r3, #0
	adds r0, #0x4f
	strb r1, [r0]
	cmp r2, #0
	beq _0808E048
	movs r0, #0xff
	strb r0, [r4, #0x12]
	ldr r0, _0808E040 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E044 @ =sub_808E068
	b _0808E04E
	.align 2, 0
_0808E040: .4byte gCurTask
_0808E044: .4byte sub_808E068
_0808E048:
	ldr r0, _0808E060 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E064 @ =sub_808E430
_0808E04E:
	str r0, [r1, #8]
_0808E050:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E060: .4byte gCurTask
_0808E064: .4byte sub_808E430

	thumb_func_start sub_808E068
sub_808E068: @ 0x0808E068
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808E098 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0808E09C @ =gStageData
	ldrb r6, [r0, #6]
	ldr r0, _0808E0A0 @ =gUnknown_03001060
	ldrb r7, [r0, #7]
	cmp r6, #0
	bne _0808E0A8
	ldr r1, _0808E0A4 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80259F8
	b _0808E0B6
	.align 2, 0
_0808E098: .4byte gCurTask
_0808E09C: .4byte gStageData
_0808E0A0: .4byte gUnknown_03001060
_0808E0A4: .4byte gUnknown_080D8F18
_0808E0A8:
	ldr r1, _0808E0C8 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024F84
_0808E0B6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808E0CC
	bl sub_802613C
	b _0808E2DC
	.align 2, 0
_0808E0C8: .4byte gUnknown_080D8F18
_0808E0CC:
	movs r4, #0
	movs r0, #0xe
	adds r0, r0, r5
	mov ip, r0
_0808E0D4:
	lsls r1, r4, #0x10
	asrs r2, r1, #0x10
	movs r0, #4
	lsls r0, r2
	ands r0, r7
	adds r3, r1, #0
	cmp r0, #0
	beq _0808E0F4
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E0F0 @ =gMultiSioRecv+2*0x18
	b _0808E0FC
	.align 2, 0
_0808E0F0: .4byte gMultiSioRecv+2*0x18
_0808E0F4:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E1A0 @ =gMultiSioRecv
_0808E0FC:
	adds r2, r0, r1
	asrs r0, r3, #0x10
	adds r1, r0, #2
	add r1, ip
	ldrb r2, [r2, #4]
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0808E0D4
	movs r1, #0x14
	ldrsb r1, [r5, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0808E122
	b _0808E2DC
_0808E122:
	ldrb r0, [r5, #0x16]
	cmp r0, #0
	bne _0808E12A
	b _0808E2DC
_0808E12A:
	ldr r0, _0808E1A4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808E200
	movs r4, #0
	ldr r1, _0808E1A8 @ =gUnknown_03001060
	mov ip, r1
	ldr r2, _0808E1AC @ =gUnknown_080D8F18
	mov r8, r2
	movs r3, #0x13
	ldrsb r3, [r5, r3]
	mov r7, ip
	adds r7, #0x4c
	adds r0, r3, r2
	ldrb r2, [r0]
_0808E14C:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, r2
	bne _0808E15A
	b _0808E2DC
_0808E15A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E14C
	lsls r1, r6, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #1
	bhi _0808E176
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r1, r3
	lsrs r6, r0, #0x10
_0808E176:
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	mov r1, ip
	adds r1, #0x4c
	adds r1, r2, r1
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0808E1B8
	movs r0, #0x15
	strb r0, [r5, #0x17]
	ldr r0, _0808E1B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E1B4 @ =sub_808E430
	b _0808E1C2
	.align 2, 0
_0808E1A0: .4byte gMultiSioRecv
_0808E1A4: .4byte gPressedKeys
_0808E1A8: .4byte gUnknown_03001060
_0808E1AC: .4byte gUnknown_080D8F18
_0808E1B0: .4byte gCurTask
_0808E1B4: .4byte sub_808E430
_0808E1B8:
	movs r0, #0x15
	strb r0, [r5, #0x17]
	ldr r0, _0808E1F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E1FC @ =sub_808E2E8
_0808E1C2:
	str r0, [r1, #8]
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	cmp r2, #1
	bgt _0808E1E0
	mov r0, ip
	ldrb r1, [r0, #7]
	movs r0, #4
	lsls r0, r2
	ands r1, r0
	cmp r1, #0
	bne _0808E1E0
	adds r0, r2, #2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0808E1E0:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r0, ip
	adds r0, #0x4c
	adds r1, r1, r0
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	b _0808E2DC
	.align 2, 0
_0808E1F8: .4byte gCurTask
_0808E1FC: .4byte sub_808E2E8
_0808E200:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808E26C
	movs r0, #0x67      @ SE_CHARSELECT_SLIDE
	bl m4aSongNumStart
	ldr r1, _0808E224 @ =gUnknown_030010AC
	mov ip, r1
	ldr r7, _0808E228 @ =gUnknown_080D8F18
_0808E214:
	movs r6, #0
	ldrb r1, [r5, #0x13]
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0808E22C
	subs r0, r1, #1
	b _0808E22E
	.align 2, 0
_0808E224: .4byte gUnknown_030010AC
_0808E228: .4byte gUnknown_080D8F18
_0808E22C:
	movs r0, #4
_0808E22E:
	strb r0, [r5, #0x13]
	movs r4, #0
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r2, r0, r7
	mov r3, ip
	ldrb r1, [r3]
	adds r3, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0808E248
	movs r6, #1
	b _0808E214
_0808E248:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0808E266
	add r0, ip
	adds r1, r3, r7
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0808E248
	movs r6, #1
_0808E266:
	cmp r6, #0
	bne _0808E214
	b _0808E2D8
_0808E26C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808E2D8
	movs r0, #0x67
	bl m4aSongNumStart
	ldr r2, _0808E294 @ =gUnknown_030010AC
	mov ip, r2
	ldr r7, _0808E298 @ =gUnknown_080D8F18
_0808E280:
	movs r6, #0
	ldrb r1, [r5, #0x13]
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bgt _0808E29C
	adds r0, r1, #1
	strb r0, [r5, #0x13]
	b _0808E29E
	.align 2, 0
_0808E294: .4byte gUnknown_030010AC
_0808E298: .4byte gUnknown_080D8F18
_0808E29C:
	strb r6, [r5, #0x13]
_0808E29E:
	movs r4, #0
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r2, r0, r7
	mov r3, ip
	ldrb r1, [r3]
	adds r3, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0808E2B6
	movs r6, #1
	b _0808E280
_0808E2B6:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0808E2D4
	add r0, ip
	adds r1, r3, r7
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0808E2B6
	movs r6, #1
_0808E2D4:
	cmp r6, #0
	bne _0808E280
_0808E2D8:
	ldrb r0, [r5, #0x13]
	strb r0, [r5, #0x12]
_0808E2DC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808E2E8
sub_808E2E8: @ 0x0808E2E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0808E340 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r4, _0808E344 @ =gUnknown_03001060
	ldrb r5, [r4, #7]
	ldr r0, _0808E348 @ =gStageData
	ldrb r6, [r0, #6]
	ldr r1, _0808E34C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8025024
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r1, #0
	mov r8, r5
	adds r4, #0x4c
	mov sl, r4
_0808E322:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r0, #4
	lsls r0, r2
	mov r3, r8
	ands r0, r3
	adds r5, r1, #0
	cmp r0, #0
	beq _0808E354
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E350 @ =gMultiSioRecv+2*0x18
	b _0808E35C
	.align 2, 0
_0808E340: .4byte gCurTask
_0808E344: .4byte gUnknown_03001060
_0808E348: .4byte gStageData
_0808E34C: .4byte gUnknown_080D8F18
_0808E350: .4byte gMultiSioRecv+2*0x18
_0808E354:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E38C @ =gMultiSioRecv
_0808E35C:
	adds r3, r0, r1
	asrs r0, r5, #0x10
	adds r2, r0, #2
	adds r0, r7, #0
	adds r0, #0xe
	adds r0, r0, r2
	ldrb r1, [r3, #4]
	strb r1, [r0]
	mov r0, sl
	adds r4, r2, r0
	ldrb r0, [r4]
	ldr r1, _0808E390 @ =gUnknown_03001060
	mov ip, r1
	cmp r0, #0xff
	bne _0808E396
	adds r0, r3, #0
	adds r0, #0xf
	adds r0, r0, r2
	ldrb r1, [r3, #4]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0808E394
	strb r1, [r4]
	b _0808E396
	.align 2, 0
_0808E38C: .4byte gMultiSioRecv
_0808E390: .4byte gUnknown_03001060
_0808E394:
	strb r0, [r4]
_0808E396:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0808E322
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808E3B4
	bl sub_802613C
	b _0808E418
_0808E3B4:
	cmp r0, #1
	bne _0808E40C
	lsls r1, r6, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #1
	bhi _0808E3C8
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r1, r2
	lsrs r6, r0, #0x10
_0808E3C8:
	cmp r6, #3
	bne _0808E3FC
	mov r0, ip
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0808E3EA
	mov r1, ip
	adds r1, #0x4f
	ldrb r3, [r1]
	cmp r0, r3
	bne _0808E3EA
	movs r0, #0x13
	strb r0, [r7, #0x17]
	movs r0, #0xff
	strb r0, [r1]
	b _0808E410
_0808E3EA:
	ldr r0, _0808E3F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E3F8 @ =sub_808E430
	b _0808E416
	.align 2, 0
_0808E3F4: .4byte gCurTask
_0808E3F8: .4byte sub_808E430
_0808E3FC:
	ldr r0, _0808E404 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E408 @ =sub_808E430
	b _0808E416
	.align 2, 0
_0808E404: .4byte gCurTask
_0808E408: .4byte sub_808E430
_0808E40C:
	cmp r0, #2
	bne _0808E418
_0808E410:
	ldr r0, _0808E428 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E42C @ =sub_808E068
_0808E416:
	str r0, [r1, #8]
_0808E418:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E428: .4byte gCurTask
_0808E42C: .4byte sub_808E068

	thumb_func_start sub_808E430
sub_808E430: @ 0x0808E430
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808E460 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0808E464 @ =gStageData
	ldrb r4, [r0, #6]
	ldr r0, _0808E468 @ =gUnknown_03001060
	ldrb r6, [r0, #7]
	cmp r4, #0
	bne _0808E470
	ldr r1, _0808E46C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024E1C
	b _0808E47E
	.align 2, 0
_0808E460: .4byte gCurTask
_0808E464: .4byte gStageData
_0808E468: .4byte gUnknown_03001060
_0808E46C: .4byte gUnknown_080D8F18
_0808E470:
	ldr r1, _0808E490 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80250EC
_0808E47E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808E494
	bl sub_802613C
	b _0808E6A4
	.align 2, 0
_0808E490: .4byte gUnknown_080D8F18
_0808E494:
	cmp r0, #1
	beq _0808E49A
	b _0808E634
_0808E49A:
	movs r1, #0
	ldr r0, _0808E4DC @ =gUnknown_03001060
	mov ip, r0
	lsls r4, r4, #0x10
	adds r7, r5, #0
	adds r7, #0xe
	movs r0, #0x4c
	add r0, ip
	mov r8, r0
	adds r3, r7, #0
_0808E4AE:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	adds r2, r0, r1
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E4AE
	asrs r1, r4, #0x10
	cmp r1, #1
	bgt _0808E4E0
	movs r0, #4
	lsls r0, r1
	ands r6, r0
	cmp r6, #0
	bne _0808E4E0
	adds r0, r1, #2
	b _0808E4E2
	.align 2, 0
_0808E4DC: .4byte gUnknown_03001060
_0808E4E0:
	lsrs r0, r4, #0x10
_0808E4E2:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #2
	beq _0808E4F2
	asrs r0, r4, #0x10
	cmp r0, #2
	bne _0808E5D4
_0808E4F2:
	mov r0, ip
	adds r0, #0x4f
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _0808E520
	mov r2, ip
	adds r2, #0x4e
	ldrb r0, [r2]
	cmp r0, r1
	bne _0808E520
	movs r0, #0x13
	strb r0, [r5, #0x17]
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _0808E518 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E51C @ =sub_808E068
	str r0, [r1, #8]
	b _0808E6A4
	.align 2, 0
_0808E518: .4byte gCurTask
_0808E51C: .4byte sub_808E068
_0808E520:
	movs r1, #0
	ldr r2, _0808E590 @ =gUnknown_030010AC
_0808E524:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #4
	bls _0808E532
	b _0808E6A4
_0808E532:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E524
	movs r1, #0x14
	ldrsb r1, [r5, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0808E59C
	lsrs r0, r4, #0x10
	cmp r0, #1
	bhi _0808E59C
	movs r1, #0
	ldr r5, _0808E590 @ =gUnknown_030010AC
	adds r3, r7, #0
_0808E556:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r5
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E556
	asrs r0, r4, #0x10
	add r0, ip
	adds r0, #0x4e
	ldrb r2, [r0]
	asrs r0, r6, #0x10
	cmp r0, #2
	beq _0808E5B8
	ldr r1, _0808E594 @ =gCharacterSelectedVoices
	ldr r0, _0808E598 @ =gUnknown_080D6EE0
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	b _0808E5B8
	.align 2, 0
_0808E590: .4byte gUnknown_030010AC
_0808E594: .4byte gCharacterSelectedVoices
_0808E598: .4byte gUnknown_080D6EE0
_0808E59C:
	asrs r0, r6, #0x10
	mov r1, ip
	adds r1, #0x4c
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, _0808E5C4 @ =gCharacterSelectedVoices
	ldr r1, _0808E5C8 @ =gUnknown_080D6EE0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl m4aSongNumStart
_0808E5B8:
	ldr r0, _0808E5CC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E5D0 @ =Task_808EDA8
	str r0, [r1, #8]
	b _0808E6A4
	.align 2, 0
_0808E5C4: .4byte gCharacterSelectedVoices
_0808E5C8: .4byte gUnknown_080D6EE0
_0808E5CC: .4byte gCurTask
_0808E5D0: .4byte Task_808EDA8
_0808E5D4:
	movs r1, #0
	ldr r2, _0808E620 @ =gUnknown_030010AC
_0808E5D8:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0808E6A4
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E5D8
	asrs r0, r4, #0x10
	cmp r0, #3
	bne _0808E612
	asrs r0, r6, #0x10
	mov r1, ip
	adds r1, #0x4c
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, _0808E624 @ =gCharacterSelectedVoices
	ldr r1, _0808E628 @ =gUnknown_080D6EE0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl m4aSongNumStart
_0808E612:
	movs r0, #0
	strh r0, [r5, #0xc]
	ldr r0, _0808E62C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E630 @ =sub_808E7B0
	str r0, [r1, #8]
	b _0808E6A4
	.align 2, 0
_0808E620: .4byte gUnknown_030010AC
_0808E624: .4byte gCharacterSelectedVoices
_0808E628: .4byte gUnknown_080D6EE0
_0808E62C: .4byte gCurTask
_0808E630: .4byte sub_808E7B0
_0808E634:
	movs r1, #0
	lsls r4, r4, #0x10
	adds r7, r5, #0
	adds r7, #0xe
_0808E63C:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r0, #4
	lsls r0, r2
	ands r0, r6
	adds r3, r1, #0
	cmp r0, #0
	beq _0808E65C
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E658 @ =gMultiSioRecv+2*0x18
	b _0808E664
	.align 2, 0
_0808E658: .4byte gMultiSioRecv+2*0x18
_0808E65C:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E68C @ =gMultiSioRecv
_0808E664:
	adds r2, r0, r1
	asrs r0, r3, #0x10
	adds r1, r0, #2
	adds r1, r7, r1
	ldrb r2, [r2, #4]
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0808E63C
	asrs r0, r4, #0x10
	cmp r0, #0
	bne _0808E694
	ldr r0, _0808E690 @ =gUnknown_080D6EE0
	movs r1, #0x10
	ldrsb r1, [r5, r1]
	b _0808E69E
	.align 2, 0
_0808E68C: .4byte gMultiSioRecv
_0808E690: .4byte gUnknown_080D6EE0
_0808E694:
	cmp r0, #1
	bne _0808E6A4
	ldr r0, _0808E6B0 @ =gUnknown_080D6EE0
	movs r1, #0x11
	ldrsb r1, [r5, r1]
_0808E69E:
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #0x12]
_0808E6A4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E6B0: .4byte gUnknown_080D6EE0

	thumb_func_start sub_808E6B4
sub_808E6B4: @ 0x0808E6B4
	push {r4, r5, r6, lr}
	ldr r0, _0808E6E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0808E6E4 @ =gStageData
	ldrb r4, [r0, #6]
	ldr r0, _0808E6E8 @ =gUnknown_03001060
	ldrb r6, [r0, #7]
	cmp r4, #0
	bne _0808E6F0
	ldr r1, _0808E6EC @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024F1C
	b _0808E6FE
	.align 2, 0
_0808E6E0: .4byte gCurTask
_0808E6E4: .4byte gStageData
_0808E6E8: .4byte gUnknown_03001060
_0808E6EC: .4byte gUnknown_080D8F18
_0808E6F0:
	ldr r1, _0808E710 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80251F8
_0808E6FE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808E714
	bl sub_802613C
	b _0808E7AA
	.align 2, 0
_0808E710: .4byte gUnknown_080D8F18
_0808E714:
	cmp r0, #1
	bne _0808E750
	movs r0, #0x13
	strb r0, [r5, #0x17]
	lsls r1, r4, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #1
	bhi _0808E72C
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r1, r2
	lsrs r4, r0, #0x10
_0808E72C:
	ldr r1, _0808E744 @ =gUnknown_03001060
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x4c
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	ldr r0, _0808E748 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E74C @ =sub_808E068
	b _0808E75A
	.align 2, 0
_0808E744: .4byte gUnknown_03001060
_0808E748: .4byte gCurTask
_0808E74C: .4byte sub_808E068
_0808E750:
	cmp r0, #2
	bne _0808E75C
	ldr r0, _0808E780 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E784 @ =sub_808E430
_0808E75A:
	str r0, [r1, #8]
_0808E75C:
	movs r1, #0
	adds r5, #0xe
	adds r4, r6, #0
	ldr r3, _0808E788 @ =gMultiSioRecv+2*0x18
	adds r6, r3, #0
	subs r6, #0x30
_0808E768:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r0, #4
	lsls r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0808E78C
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r2, r0, r3
	b _0808E794
	.align 2, 0
_0808E780: .4byte gCurTask
_0808E784: .4byte sub_808E430
_0808E788: .4byte gMultiSioRecv+2*0x18
_0808E78C:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r2, r0, r6
_0808E794:
	asrs r0, r1, #0x10
	adds r1, r0, #2
	adds r1, r5, r1
	ldrb r2, [r2, #4]
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0808E768
_0808E7AA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_808E7B0
sub_808E7B0: @ 0x0808E7B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0808E814 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sb, r1
	ldr r0, _0808E818 @ =gStageData
	ldrb r5, [r0, #6]
	movs r4, #0
	ldr r0, _0808E81C @ =gPlayers
	mov r8, r0
	ldr r7, _0808E820 @ =gUnknown_030010AC
	movs r1, #0x10
	rsbs r1, r1, #0
	mov ip, r1
	movs r6, #0xf
_0808E7DA:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	add r1, r8
	adds r0, r4, r7
	ldrb r0, [r0]
	adds r1, #0x2a
	adds r2, r6, #0
	ands r2, r0
	ldrb r3, [r1]
	mov r0, ip
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0808E7DA
	lsls r0, r5, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0808E824
	bl sub_8025A90
	b _0808E828
	.align 2, 0
_0808E814: .4byte gCurTask
_0808E818: .4byte gStageData
_0808E81C: .4byte gPlayers
_0808E820: .4byte gUnknown_030010AC
_0808E824:
	bl sub_80253CC
_0808E828:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808E83A
	bl sub_802613C
	b _0808E850
_0808E83A:
	cmp r0, #1
	beq _0808E842
	cmp r4, #0
	bne _0808E850
_0808E842:
	movs r0, #0x14
	mov r1, sb
	strb r0, [r1, #0x17]
	ldr r0, _0808E85C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E860 @ =Task_808EDE4
	str r0, [r1, #8]
_0808E850:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E85C: .4byte gCurTask
_0808E860: .4byte Task_808EDE4

	thumb_func_start Task_808E864
Task_808E864: @ 0x0808E864
	push {r4, r5, r6, r7, lr}
	ldr r0, _0808E884 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r6, r4, #0
	ldr r0, _0808E888 @ =gStageData
	ldrb r7, [r0, #6]
	cmp r7, #0
	bne _0808E88C
	bl sub_8025A90
	b _0808E890
	.align 2, 0
_0808E884: .4byte gCurTask
_0808E888: .4byte gStageData
_0808E88C:
	bl sub_80253CC
_0808E890:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bge _0808E8A2
	bl sub_802613C
	b _0808E8EE
_0808E8A2:
	bl sub_808EF98
	adds r0, r6, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808E8EE
	ldrh r0, [r4, #0xc]
	subs r0, #1
	movs r2, #0
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	bgt _0808E8EE
	cmp r7, #0
	bne _0808E8D8
	ldr r0, _0808E8D4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808E8DE
	b _0808E8DC
	.align 2, 0
_0808E8D4: .4byte gPressedKeys
_0808E8D8:
	cmp r5, #1
	bne _0808E8DE
_0808E8DC:
	strh r2, [r4, #0xc]
_0808E8DE:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0808E8EE
	ldr r0, _0808E8F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E8F8 @ =sub_808E8FC
	str r0, [r1, #8]
_0808E8EE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E8F4: .4byte gCurTask
_0808E8F8: .4byte sub_808E8FC

	thumb_func_start sub_808E8FC
sub_808E8FC: @ 0x0808E8FC
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0808E91C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0808E920 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0808E924
	bl sub_8025360
	b _0808E928
	.align 2, 0
_0808E91C: .4byte gCurTask
_0808E920: .4byte gStageData
_0808E924:
	bl sub_8025AA8
_0808E928:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bge _0808E93A
	bl sub_802613C
	b _0808E986
_0808E93A:
	adds r0, r5, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808E986
	cmp r4, #1
	bne _0808E986
	movs r3, #0
	str r3, [sp]
	ldr r2, _0808E990 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _0808E994 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0808E998 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0808E99C @ =gBgSprites_Unknown1
	strb r3, [r0, #2]
	ldr r1, _0808E9A0 @ =gBgSprites_Unknown2
	strb r3, [r1, #8]
	strb r3, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	ldr r0, _0808E9A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E9A8 @ =sub_808E9AC
	str r0, [r1, #8]
_0808E986:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808E990: .4byte 0x040000D4
_0808E994: .4byte gBgCntRegs
_0808E998: .4byte 0x85000010
_0808E99C: .4byte gBgSprites_Unknown1
_0808E9A0: .4byte gBgSprites_Unknown2
_0808E9A4: .4byte gCurTask
_0808E9A8: .4byte sub_808E9AC

	thumb_func_start sub_808E9AC
sub_808E9AC: @ 0x0808E9AC
	push {r4, r5, r6, lr}
	ldr r0, _0808EA10 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _0808EA14 @ =gStageData
	ldrb r5, [r0, #6]
	movs r2, #0
	strb r2, [r6, #0x13]
	strb r2, [r6, #0x15]
	ldr r1, _0808EA18 @ =gDispCnt
	movs r3, #0xb2
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r4, _0808EA1C @ =gBgSprites_Unknown1
	strb r2, [r4]
	ldr r0, _0808EA20 @ =gBgSprites_Unknown2
	strb r2, [r0]
	strb r2, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r3, #0x20
	strb r3, [r0, #3]
	strb r2, [r4, #1]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	strb r2, [r4, #2]
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	strb r2, [r4, #3]
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r3, [r0, #0xf]
	cmp r5, #0
	bne _0808EA24
	ldrb r0, [r6, #0x15]
	bl sub_8025460
	b _0808EA28
	.align 2, 0
_0808EA10: .4byte gCurTask
_0808EA14: .4byte gStageData
_0808EA18: .4byte gDispCnt
_0808EA1C: .4byte gBgSprites_Unknown1
_0808EA20: .4byte gBgSprites_Unknown2
_0808EA24:
	bl sub_8025AA8
_0808EA28:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808EA38
	bl sub_802613C
	b _0808EA5C
_0808EA38:
	movs r1, #0
	strh r1, [r6]
	movs r0, #2
	strh r0, [r6, #2]
	strh r1, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6, #6]
	movs r0, #0xff
	strh r0, [r6, #8]
	strh r1, [r6, #0xa]
	adds r0, r6, #0
	bl ScreenFadeUpdateValues
	ldr r0, _0808EA64 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EA68 @ =sub_808EA6C
	str r0, [r1, #8]
_0808EA5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808EA64: .4byte gCurTask
_0808EA68: .4byte sub_808EA6C

	thumb_func_start sub_808EA6C
sub_808EA6C: @ 0x0808EA6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0808EAA4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r7, r4, #0
	ldr r0, _0808EAA8 @ =gStageData
	ldrb r6, [r0, #6]
	ldr r1, _0808EAAC @ =gUnknown_080D6F0C
	mov r0, sp
	movs r2, #0x15
	bl memcpy
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	cmp r6, #0
	bne _0808EAB0
	ldrb r0, [r4, #0x15]
	bl sub_8025460
	b _0808EAB4
	.align 2, 0
_0808EAA4: .4byte gCurTask
_0808EAA8: .4byte gStageData
_0808EAAC: .4byte gUnknown_080D6F0C
_0808EAB0:
	bl sub_80255B0
_0808EAB4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bge _0808EAC6
	bl sub_802613C
	b _0808EB48
_0808EAC6:
	bl sub_808EBBC
	adds r0, r7, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808EB48
	cmp r5, #1
	bne _0808EAEC
	ldr r0, _0808EAE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EAE8 @ =sub_808EB50
	str r0, [r1, #8]
	b _0808EB48
	.align 2, 0
_0808EAE4: .4byte gCurTask
_0808EAE8: .4byte sub_808EB50
_0808EAEC:
	cmp r6, #0
	bne _0808EB48
	ldr r0, _0808EB08 @ =gPressedKeys
	ldrh r1, [r0]
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _0808EB14
	ldr r0, _0808EB0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EB10 @ =Task_808EE8C
	str r0, [r1, #8]
	b _0808EB48
	.align 2, 0
_0808EB08: .4byte gPressedKeys
_0808EB0C: .4byte gCurTask
_0808EB10: .4byte Task_808EE8C
_0808EB14:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808EB2E
	ldrb r1, [r4, #0x13]
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #0x13
	ble _0808EB2A
	strb r2, [r4, #0x13]
	b _0808EB48
_0808EB2A:
	adds r0, r1, #1
	b _0808EB46
_0808EB2E:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808EB48
	ldrb r1, [r4, #0x13]
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _0808EB44
	movs r0, #0x14
	b _0808EB46
_0808EB44:
	subs r0, r1, #1
_0808EB46:
	strb r0, [r4, #0x13]
_0808EB48:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808EB50
sub_808EB50: @ 0x0808EB50
	push {r4, lr}
	ldr r0, _0808EB6C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808EB70 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0808EB74
	bl sub_8025534
	b _0808EB78
	.align 2, 0
_0808EB6C: .4byte gCurTask
_0808EB70: .4byte gStageData
_0808EB74:
	bl sub_8025614
_0808EB78:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808EB88
	bl sub_802613C
	b _0808EBAC
_0808EB88:
	movs r1, #0
	strh r1, [r4]
	movs r0, #1
	strh r0, [r4, #2]
	strh r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #6]
	movs r0, #0xff
	strh r0, [r4, #8]
	strh r1, [r4, #0xa]
	adds r0, r4, #0
	bl ScreenFadeUpdateValues
	ldr r0, _0808EBB4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EBB8 @ =Task_808EEB8
	str r0, [r1, #8]
_0808EBAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808EBB4: .4byte gCurTask
_0808EBB8: .4byte Task_808EEB8

	thumb_func_start sub_808EBBC
sub_808EBBC: @ 0x0808EBBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r0, _0808EC64 @ =gStageData
	ldrb r0, [r0, #6]
	mov sl, r0
	ldr r7, _0808EC68 @ =0x06000040
	ldr r0, _0808EC6C @ =gUnknown_03001060
	adds r0, #0x50
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r5, r0, #0
	adds r5, #1
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	adds r4, r0, #0
	subs r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _0808EC70 @ =gStringSelectStage
	add r0, sp, #0xc
	bl sprintf
	ldr r0, _0808EC74 @ =gUnknown_082B5344
	mov sb, r0
	movs r1, #2
	mov r8, r1
	str r1, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	movs r6, #0
	str r6, [sp, #8]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0xa
	movs r3, #6
	bl RenderText
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r7, r7, r0
	ldr r1, _0808EC78 @ =gStringZoneNActN
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add r0, sp, #0xc
	adds r2, r5, #0
	adds r3, r4, #0
	bl sprintf
	mov r1, r8
	str r1, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r6, [sp, #8]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0xa
	movs r3, #8
	bl RenderText
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r7, r7, r1
	mov r0, sl
	cmp r0, #0
	bne _0808EC80
	ldr r1, _0808EC7C @ =gStringPressABtn
	add r0, sp, #0xc
	bl sprintf
	b _0808EC88
	.align 2, 0
_0808EC64: .4byte gStageData
_0808EC68: .4byte 0x06000040
_0808EC6C: .4byte gUnknown_03001060
_0808EC70: .4byte gStringSelectStage
_0808EC74: .4byte gUnknown_082B5344
_0808EC78: .4byte gStringZoneNActN
_0808EC7C: .4byte gStringPressABtn
_0808EC80:
	ldr r1, _0808ECB0 @ =gStringPleaseWait
	add r0, sp, #0xc
	bl sprintf
_0808EC88:
	ldr r1, _0808ECB4 @ =gUnknown_082B5344
	movs r0, #2
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r7, #0
	movs r2, #0xa
	movs r3, #0x10
	bl RenderText
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808ECB0: .4byte gStringPleaseWait
_0808ECB4: .4byte gUnknown_082B5344

	thumb_func_start sub_808ECB8
sub_808ECB8: @ 0x0808ECB8
	push {lr}
	bl sub_8027960
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808ECC4
sub_808ECC4: @ 0x0808ECC4
	push {r4, lr}
	ldr r4, _0808ECE8 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r1, _0808ECEC @ =0x03000FC0
	adds r0, r0, r1		@ r0 = (ScreenFade *)
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808ECE0
	ldr r1, [r4]
	ldr r0, _0808ECF0 @ =Task_808D00C
	str r0, [r1, #8]
_0808ECE0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808ECE8: .4byte gCurTask
_0808ECEC: .4byte 0x03000FC0
_0808ECF0: .4byte Task_808D00C

	thumb_func_start Task_808ECF4
Task_808ECF4: @ 0x0808ECF4
	push {r4, lr}
	ldr r0, _0808ED24 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r1, _0808ED28 @ =0x03000FC0
	adds r0, r0, r1		@ r0 = (ScreenFade *)
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808ED50
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _0808ED3A
	cmp r0, #1
	bgt _0808ED2C
	cmp r0, #0
	beq _0808ED32
	b _0808ED48
	.align 2, 0
_0808ED24: .4byte gCurTask
_0808ED28: .4byte 0x03000FC0
_0808ED2C:
	cmp r0, #2
	beq _0808ED40
	b _0808ED48
_0808ED32:
	movs r0, #0
	bl sub_808D0F0
	b _0808ED48
_0808ED3A:
	bl sub_8027960
	b _0808ED48
_0808ED40:
	movs r0, #0
	movs r1, #0
	bl LaunchChaoMenu
_0808ED48:
	ldr r0, _0808ED58 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808ED50:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808ED58: .4byte gCurTask

	thumb_func_start sub_808ED5C
sub_808ED5C: @ 0x0808ED5C
	bx lr
	.align 2, 0

	thumb_func_start Task_808ED60
Task_808ED60: @ 0x0808ED60
	push {r4, r5, lr}
	ldr r5, _0808EDA4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808ED9C
	ldrb r0, [r4, #0x17]
	cmp r0, #0x22
	bhi _0808ED84
	movs r0, #0x23
	strb r0, [r4, #0x17]
_0808ED84:
	ldrb r0, [r4, #0x17]
	cmp r0, #0x26
	bne _0808ED9C
	bl sub_80260F0
	movs r0, #0
	movs r1, #4
	bl LaunchChaoMenu
	ldr r0, [r5]
	bl TaskDestroy
_0808ED9C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808EDA4: .4byte gCurTask

	thumb_func_start Task_808EDA8
Task_808EDA8: @ 0x0808EDA8
	push {r4, r5, lr}
	ldr r5, _0808EDC8 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_8025A38
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808EDCC
	bl sub_802613C
	b _0808EDDA
	.align 2, 0
_0808EDC8: .4byte gCurTask
_0808EDCC:
	cmp r0, #1
	bne _0808EDDA
	movs r0, #0
	strh r0, [r4, #0xc]
	ldr r1, [r5]
	ldr r0, _0808EDE0 @ =sub_808E7B0
	str r0, [r1, #8]
_0808EDDA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808EDE0: .4byte sub_808E7B0

	thumb_func_start Task_808EDE4
Task_808EDE4: @ 0x0808EDE4
	push {r4, lr}
	ldr r0, _0808EE00 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808EE04 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0808EE08
	bl sub_8025A90
	b _0808EE0C
	.align 2, 0
_0808EE00: .4byte gCurTask
_0808EE04: .4byte gStageData
_0808EE08:
	bl sub_80253CC
_0808EE0C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808EE1C
	bl sub_802613C
	b _0808EE2A
_0808EE1C:
	ldrb r0, [r4, #0x17]
	cmp r0, #0x26
	bne _0808EE2A
	ldr r0, _0808EE30 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808EE2A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808EE30: .4byte gCurTask

	thumb_func_start Task_808EE34
Task_808EE34: @ 0x0808EE34
	push {r4, lr}
	ldr r0, _0808EE50 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808EE54 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0808EE58
	bl sub_8025A90
	b _0808EE5C
	.align 2, 0
_0808EE50: .4byte gCurTask
_0808EE54: .4byte gStageData
_0808EE58:
	bl sub_80253CC
_0808EE5C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808EE6C
	bl sub_802613C
	b _0808EE7C
_0808EE6C:
	bl sub_808EF98
	movs r0, #0x78
	strh r0, [r4, #0xc]
	ldr r0, _0808EE84 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EE88 @ =Task_808E864
	str r0, [r1, #8]
_0808EE7C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808EE84: .4byte gCurTask
_0808EE88: .4byte Task_808E864

	thumb_func_start Task_808EE8C
Task_808EE8C: @ 0x0808EE8C
	push {lr}
	bl sub_8025534
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808EEA0
	bl sub_802613C
	b _0808EEAC
_0808EEA0:
	cmp r0, #1
	bne _0808EEAC
	ldr r0, _0808EEB0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EEB4 @ =sub_808EB50
	str r0, [r1, #8]
_0808EEAC:
	pop {r0}
	bx r0
	.align 2, 0
_0808EEB0: .4byte gCurTask
_0808EEB4: .4byte sub_808EB50

	thumb_func_start Task_808EEB8
Task_808EEB8: @ 0x0808EEB8
	push {r4, lr}
	ldr r0, _0808EED4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808EED8 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0808EEDC
	bl sub_8025534
	b _0808EEE0
	.align 2, 0
_0808EED4: .4byte gCurTask
_0808EED8: .4byte gStageData
_0808EEDC:
	bl sub_8025614
_0808EEE0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808EEF0
	bl sub_802613C
	b _0808EF04
_0808EEF0:
	adds r0, r4, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808EF04
	ldr r0, _0808EF0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EF10 @ =Task_808EF14
	str r0, [r1, #8]
_0808EF04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808EF0C: .4byte gCurTask
_0808EF10: .4byte Task_808EF14

	thumb_func_start Task_808EF14
Task_808EF14: @ 0x0808EF14
	push {r4, lr}
	ldr r0, _0808EF30 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808EF34 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0808EF38
	bl sub_8025674
	b _0808EF3C
	.align 2, 0
_0808EF30: .4byte gCurTask
_0808EF34: .4byte gStageData
_0808EF38:
	bl sub_8025B48
_0808EF3C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808EF4E
	bl sub_802613C
	b _0808EF76
_0808EF4E:
	cmp r0, #1
	bne _0808EF76
	ldr r1, _0808EF7C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0808EF80 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0808EF84 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0808EF88 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0808EF8C @ =gVramGraphicsCopyCursor
	ldr r0, _0808EF90 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4, #0x15]
	bl sub_80022E8
_0808EF76:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808EF7C: .4byte 0x0000FFFF
_0808EF80: .4byte gBackgroundsCopyQueueCursor
_0808EF84: .4byte gBackgroundsCopyQueueIndex
_0808EF88: .4byte gBgSpritesCount
_0808EF8C: .4byte gVramGraphicsCopyCursor
_0808EF90: .4byte gVramGraphicsCopyQueueIndex
	.align 2, 0

	thumb_func_start sub_808EF94
sub_808EF94: @ 0x0808EF94
	bx lr
	.align 2, 0

	thumb_func_start sub_808EF98
sub_808EF98: @ 0x0808EF98
	bx lr
	.align 2, 0
