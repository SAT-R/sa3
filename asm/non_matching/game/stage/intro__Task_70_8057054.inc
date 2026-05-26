
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08057090 @ =gCurTask
	ldr r0, [r1]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldrb r1, [r7, #1]
	adds r1, #8
	movs r3, #0
	strb r1, [r7, #1]
	ldrb r0, [r7, #2]
	subs r0, #8
	strb r0, [r7, #2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x43
	bhi _08057098
	ldr r2, _08057094 @ =gWinRegs
	ldrb r1, [r7, #1]
	lsls r1, r1, #8
	ldrb r0, [r7, #2]
	orrs r0, r1
	strh r0, [r2, #6]
	b _080571C0
	.align 2, 0
_08057090: .4byte gCurTask
_08057094: .4byte gWinRegs
_08057098:
	movs r0, #0x44
	strb r0, [r7, #1]
	movs r1, #0x5c
	strb r1, [r7, #2]
	ldr r2, _080571D0 @ =gWinRegs
	mov sl, r2
	lsls r0, r0, #8
	orrs r0, r1
	movs r6, #0
	mov r8, r6
	strh r0, [r2, #6]
	ldr r0, _080571D4 @ =gStageData
	ldrb r4, [r0, #9]
	ldr r1, _080571D8 @ =0x03000008
	adds r0, r5, r1
	ldr r1, _080571DC @ =0x06008000
	str r1, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r1, _080571E0 @ =0x0600A000
	str r1, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	movs r1, #0xb1
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	movs r1, #0x15
	strh r1, [r0, #0x28]
	ldr r2, _080571E4 @ =0x03000032
	adds r1, r5, r2
	mov r6, r8
	strb r6, [r1]
	adds r2, #1
	adds r1, r5, r2
	strb r6, [r1]
	ldr r6, _080571E8 @ =0x03000034
	adds r1, r5, r6
	mov r2, r8
	strb r2, [r1]
	movs r6, #0x10
	mov sb, r6
	mov r1, sb
	strh r1, [r0, #0x2e]
	strh r3, [r0, #0x30]
	strh r3, [r0, #0x32]
	str r3, [sp]
	bl DrawBackground
	ldr r2, _080571EC @ =gDispCnt
	ldrh r0, [r2]
	adds r6, #0xf0
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080571F0 @ =gBgCntRegs
	ldr r0, _080571F4 @ =0x00001408
	strh r0, [r1]
	ldr r1, _080571F8 @ =gBgScrollRegs
	ldr r3, [sp]
	strh r3, [r1]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	subs r0, #0x44
	strh r0, [r1, #2]
	ldr r1, _080571FC @ =0x040000D4
	ldr r0, _08057200 @ =Palette_unknown_354 + 0xE0
	str r0, [r1]
	ldr r0, _08057204 @ =gBgPalette + 0xE0
	str r0, [r1, #4]
	ldr r0, _08057208 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0805720C @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08057210 @ =gLoadedSaveGame
	ldr r1, _08057214 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	beq _0805714E
	movs r1, #9
_0805714E:
	ldr r2, _08057218 @ =0x03000048
	adds r5, r5, r2
	ldr r6, _0805721C @ =gUnknown_080D1D88
	adds r4, r4, r1
	lsls r4, r4, #3
	adds r0, r6, #4
	adds r0, r4, r0
	ldr r0, [r0]
	str r3, [sp]
	bl VramMalloc
	str r0, [r5]
	adds r4, r4, r6
	ldrh r0, [r4]
	strh r0, [r5, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r5, #0x1a]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	ldr r3, [sp]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	mov r6, r8
	strb r6, [r5, #0x1f]
	str r3, [r5, #8]
	movs r0, #0xa8
	strh r0, [r5, #0x10]
	movs r0, #0x50
	strh r0, [r5, #0x12]
	subs r0, #0x51
	str r0, [r5, #0x20]
	adds r0, r5, #0
	str r3, [sp]
	bl UpdateSpriteAnimation
	movs r0, #0x3c
	strh r0, [r7, #4]
	movs r0, #0xfc
	lsls r0, r0, #6
	mov r1, sl
	strh r0, [r1, #8]
	ldr r0, _08057220 @ =gBldRegs
	movs r1, #0xae
	strh r1, [r0]
	ldr r3, [sp]
	strh r3, [r0, #2]
	mov r2, sb
	strh r2, [r0, #4]
	ldr r6, _08057224 @ =gCurTask
	ldr r1, [r6]
	ldr r0, _08057228 @ =Task_70_8057F7C
	str r0, [r1, #8]
_080571C0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080571D0: .4byte gWinRegs
_080571D4: .4byte gStageData
_080571D8: .4byte 0x03000008
_080571DC: .4byte 0x06008000
_080571E0: .4byte 0x0600A000
_080571E4: .4byte 0x03000032
_080571E8: .4byte 0x03000034
_080571EC: .4byte gDispCnt
_080571F0: .4byte gBgCntRegs
_080571F4: .4byte 0x00001408
_080571F8: .4byte gBgScrollRegs
_080571FC: .4byte 0x040000D4
_08057200: .4byte Palette_unknown_354 + 0xE0
_08057204: .4byte gBgPalette + 0xE0
_08057208: .4byte 0x80000090
_0805720C: .4byte gFlags
_08057210: .4byte gLoadedSaveGame
_08057214: .4byte 0x00000366
_08057218: .4byte 0x03000048
_0805721C: .4byte gUnknown_080D1D88
_08057220: .4byte gBldRegs
_08057224: .4byte gCurTask
_08057228: .4byte Task_70_8057F7C
 
.syntax divided
