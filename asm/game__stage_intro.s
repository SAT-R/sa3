.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8057054
sub_8057054: @ 0x08057054
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
	ldr r0, _08057228 @ =sub_8057F7C
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
_08057228: .4byte sub_8057F7C

	thumb_func_start sub_805722C
sub_805722C: @ 0x0805722C
	push {r4, r5, r6, r7, lr}
	ldr r7, _08057268 @ =gCurTask
	ldr r0, [r7]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldrb r1, [r5, #1]
	adds r1, #4
	movs r6, #0
	strb r1, [r5, #1]
	ldrb r0, [r5, #2]
	subs r0, #4
	strb r0, [r5, #2]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	cmp r1, r0
	bhs _08057274
	ldr r1, _0805726C @ =0x03000048
	adds r0, r2, r1
	bl DisplaySprite
	ldr r2, _08057270 @ =gWinRegs
	ldrb r1, [r5, #1]
	lsls r1, r1, #8
	ldrb r0, [r5, #2]
	orrs r0, r1
	strh r0, [r2, #6]
	b _080572B2
	.align 2, 0
_08057268: .4byte gCurTask
_0805726C: .4byte 0x03000048
_08057270: .4byte gWinRegs
_08057274:
	ldr r2, _080572B8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080572BC @ =0x0000BEFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r4, _080572C0 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r4]
	movs r0, #0xa0
	strh r0, [r4, #4]
	ldr r0, [r5, #0x48]
	bl VramFree
	movs r0, #0x3f
	strh r0, [r4, #8]
	strh r6, [r4, #0xa]
	ldr r1, _080572C4 @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r6, [r1, #2]
	movs r2, #0x10
	movs r0, #0x10
	strh r0, [r1, #4]
	strb r2, [r5, #3]
	ldr r1, [r7]
	ldr r0, _080572C8 @ =sub_80572CC
	str r0, [r1, #8]
_080572B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080572B8: .4byte gDispCnt
_080572BC: .4byte 0x0000BEFF
_080572C0: .4byte gWinRegs
_080572C4: .4byte gBldRegs
_080572C8: .4byte sub_80572CC

	thumb_func_start sub_80572CC
sub_80572CC: @ 0x080572CC
	push {lr}
	ldr r3, _08057300 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #3]
	subs r0, #1
	strb r0, [r1, #3]
	ldr r2, _08057304 @ =gBldRegs
	ldrb r0, [r1, #3]
	strh r0, [r2, #4]
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _08057320
	ldr r0, _08057308 @ =gStageData
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #4
	bls _0805730C
	cmp r1, #7
	beq _0805730C
	movs r0, #2
	b _0805730E
	.align 2, 0
_08057300: .4byte gCurTask
_08057304: .4byte gBldRegs
_08057308: .4byte gStageData
_0805730C:
	movs r0, #3
_0805730E:
	strb r0, [r2, #4]
	ldr r2, _08057324 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08057328 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
_08057320:
	pop {r0}
	bx r0
	.align 2, 0
_08057324: .4byte gDispCnt
_08057328: .4byte 0x0000DFFF

	thumb_func_start Task_805732C
Task_805732C: @ 0x0805732C
	push {r4, r5, lr}
	ldr r0, _0805736C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x20
	adds r5, r1, r0
	ldrh r1, [r4, #0xa]
	adds r1, #1
	strh r1, [r4, #0xa]
	ldrh r2, [r4, #0xa]
	lsls r0, r2, #3
	subs r0, r0, r2
	asrs r0, r0, #1
	adds r0, #0x50
	strb r0, [r4, #5]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	bls _08057370
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _08057362
	subs r0, #0x10
	strh r0, [r4, #0xc]
_08057362:
	movs r0, #1
	movs r1, #0
	bl sub_80578EC
	b _08057378
	.align 2, 0
_0805736C: .4byte gCurTask
_08057370:
	movs r0, #1
	movs r1, #1
	bl sub_80578EC
_08057378:
	ldrh r0, [r4, #0xa]
	cmp r0, #0x10
	bne _0805738A
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r0, _080573A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080573A8 @ =Task_80573AC
	str r0, [r1, #8]
_0805738A:
	bl sub_8057848
	ldrb r0, [r4, #5]
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080573A4: .4byte gCurTask
_080573A8: .4byte Task_80573AC

	thumb_func_start Task_80573AC
Task_80573AC: @ 0x080573AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _080573F0 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldrh r0, [r7, #0xc]
	cmp r0, #0
	beq _080573CE
	subs r0, #0x10
	strh r0, [r7, #0xc]
_080573CE:
	ldr r0, _080573F4 @ =0x03000020
	adds r6, r2, r0
	ldrh r0, [r7, #0xa]
	adds r0, #1
	strh r0, [r7, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x69
	bne _080573FC
	movs r0, #0
	strh r0, [r7, #0xa]
	ldr r1, [r1]
	ldr r0, _080573F8 @ =sub_80575F0
	str r0, [r1, #8]
	bl _call_via_r0
	b _080575D4
	.align 2, 0
_080573F0: .4byte gCurTask
_080573F4: .4byte 0x03000020
_080573F8: .4byte sub_80575F0
_080573FC:
	cmp r0, #0
	beq _0805742C
	ldrh r0, [r7, #0xa]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #0x78
	strh r1, [r6, #0x10]
	ldr r3, _080574AC @ =gUnknown_080D1D58
	ldrb r2, [r7]
	lsls r0, r2, #3
	adds r0, r0, r2
	ldrb r2, [r7, #1]
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	blt _0805742C
	strh r2, [r6, #0x10]
_0805742C:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldrh r0, [r7, #0xa]
	movs r1, #0x10
	cmp r0, #0x10
	bhi _08057442
	adds r1, r0, #0
_08057442:
	movs r4, #0
	adds r0, r7, #7
	mov r8, r0
	movs r2, #0x70
	adds r2, r2, r7
	mov sl, r2
	adds r3, r7, #0
	adds r3, #0x98
	str r3, [sp]
	adds r0, #0x41
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r5, r0, #1
_08057462:
	mov r1, r8
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08057490
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc0
	adds r6, r7, r0
	movs r0, #2
	subs r0, r0, r4
	lsls r0, r0, #5
	subs r0, r5, r0
	strh r0, [r6, #0x10]
	ldrb r0, [r7, #5]
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08057490:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08057462
	ldrh r1, [r7, #0xa]
	adds r0, r1, #0
	cmp r0, #0x10
	bls _080574BA
	movs r3, #0
	cmp r0, #0x24
	bls _080574B0
	movs r2, #0
	b _080574C4
	.align 2, 0
_080574AC: .4byte gUnknown_080D1D58
_080574B0:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _080574C4
_080574BA:
	movs r2, #0
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080574C4:
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r6, r7, r0
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r4, r7, r1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, #0xc7
	strh r0, [r6, #0x10]
	ldr r2, _080575E4 @ =gNextFreeAffineIndex
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r1, #0x60
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r6, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0xc
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	ldrh r0, [r6, #0x10]
	strh r0, [r4, #6]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r4, #0
	bl TransformSprite
	adds r0, r6, #0
	bl DisplaySprite
	ldr r2, [r7, #0x1c]
	adds r2, #0x20
	str r2, [r7, #0x1c]
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	ldr r0, [r7, #0x14]
	adds r0, r0, r2
	str r0, [r7, #0x14]
	lsls r1, r1, #8
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xdb
	bgt _08057536
	movs r5, #0xdc
_08057536:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _08057544
	movs r0, #0x78
	mov r8, r0
_08057544:
	ldr r4, _080575E8 @ =gUnknown_080D1D7C
	ldrb r0, [r7, #4]
	lsls r0, r0, #1
	adds r1, r4, #1
	mov sb, r1
	add r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r6, sl
	strh r5, [r6, #0x10]
	mov r2, r8
	strh r2, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldrb r0, [r7, #4]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ldr r3, _080575EC @ =0xFFFB0000
	adds r0, r0, r3
	lsrs r5, r0, #0x10
	ldr r6, [sp]
	strh r5, [r6, #0x10]
	mov r0, r8
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	lsls r1, r5, #0x10
	ldrb r0, [r7, #3]
	lsls r0, r0, #1
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, _080575EC @ =0xFFFB0000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r6, [sp, #4]
	strh r1, [r6, #0x10]
	mov r3, r8
	strh r3, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	bl sub_8057848
	movs r0, #1
	movs r1, #0
	bl sub_80578EC
_080575D4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080575E4: .4byte gNextFreeAffineIndex
_080575E8: .4byte gUnknown_080D1D7C
_080575EC: .4byte 0xFFFB0000

	thumb_func_start sub_80575F0
sub_80575F0: @ 0x080575F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _08057668 @ =gCurTask
	ldr r0, [r2]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov r8, r0
	ldrh r0, [r0, #0xa]
	adds r0, #1
	mov r1, r8
	strh r0, [r1, #0xa]
	ldrh r1, [r1, #0xa]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r5, r0, #0x10
	adds r7, r2, #0
	cmp r1, #0xc
	bne _08057696
	ldr r0, _0805766C @ =gStageData
	ldrb r1, [r0, #9]
	adds r5, r0, #0
	cmp r1, #8
	bne _0805767C
	adds r6, r5, #0
	adds r6, #0xba
	ldrb r0, [r6]
	cmp r0, #0
	bne _0805767C
	ldrb r0, [r5, #3]
	cmp r0, #5
	beq _0805767C
	ldr r0, _08057670 @ =0x00000CAC
	bl EwramMalloc
	adds r2, r0, #0
	ldr r0, _08057674 @ =0x0300016C
	adds r4, r4, r0
	str r2, [r4]
	movs r0, #0
	movs r1, #0x2d
	bl sub_80236C8
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0x1f]
	adds r1, r5, #0
	adds r1, #0x85
	strb r0, [r1]
	strb r0, [r6]
	ldr r1, [r7]
	ldr r0, _08057678 @ =sub_80577D4
	str r0, [r1, #8]
	b _080577A8
	.align 2, 0
_08057668: .4byte gCurTask
_0805766C: .4byte gStageData
_08057670: .4byte 0x00000CAC
_08057674: .4byte 0x0300016C
_08057678: .4byte sub_80577D4
_0805767C:
	ldrb r0, [r5, #3]
	cmp r0, #4
	bls _0805768A
	cmp r0, #7
	beq _0805768A
	movs r0, #2
	b _0805768C
_0805768A:
	movs r0, #3
_0805768C:
	strb r0, [r5, #4]
	ldr r0, [r7]
	bl TaskDestroy
	b _080577A8
_08057696:
	ldr r1, _080577B8 @ =0x03000020
	adds r7, r4, r1
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r6, #0
	ldr r0, _080577BC @ =0x03000007
	adds r0, r0, r4
	mov sb, r0
	lsls r5, r5, #0x10
	ldr r1, _080577C0 @ =0x03000070
	adds r1, r1, r4
	mov sl, r1
	ldr r0, _080577C4 @ =0x03000098
	adds r0, r4, r0
	str r0, [sp]
	ldr r1, _080577C8 @ =0x03000048
	adds r1, r4, r1
	str r1, [sp, #4]
_080576C2:
	mov r1, sb
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080576E8
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0xc0
	mov r1, r8
	adds r7, r1, r0
	ldrb r0, [r1, #5]
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080576E8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _080576C2
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, r8
	movs r0, #0xc8
	asrs r5, r5, #0x10
	subs r0, r0, r5
	movs r1, #0
	strh r0, [r7, #0x10]
	movs r0, #0x96
	strh r0, [r7, #0x12]
	str r1, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r4, #0xdc
	subs r4, r4, r5
	ldr r5, _080577CC @ =gUnknown_080D1D7C
	mov r1, r8
	ldrb r0, [r1, #4]
	lsls r0, r0, #1
	adds r6, r5, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r7, sl
	strh r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r1, r8
	ldrb r0, [r1, #4]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	ldr r0, _080577D0 @ =0xFFFB0000
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	ldr r7, [sp]
	strh r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	lsls r4, r4, #0x10
	mov r1, r8
	ldrb r0, [r1, #3]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _080577D0 @ =0xFFFB0000
	adds r4, r4, r1
	asrs r4, r4, #0x10
	subs r4, r4, r0
	ldr r7, [sp, #4]
	strh r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, r8
	ldrb r1, [r0, #0xa]
	movs r0, #0xb
	subs r0, r0, r1
	mov r1, r8
	strb r0, [r1, #6]
	bl sub_8057848
_080577A8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080577B8: .4byte 0x03000020
_080577BC: .4byte 0x03000007
_080577C0: .4byte 0x03000070
_080577C4: .4byte 0x03000098
_080577C8: .4byte 0x03000048
_080577CC: .4byte gUnknown_080D1D7C
_080577D0: .4byte 0xFFFB0000

	thumb_func_start sub_80577D4
sub_80577D4: @ 0x080577D4
	push {r4, lr}
	ldr r0, _08057814 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08057818 @ =0x0300016C
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_8023734
	cmp r0, #0
	beq _0805783C
	ldr r1, _0805781C @ =gCamera
	adds r1, #0x5c
	ldrh r2, [r1]
	ldr r0, _08057820 @ =0x0000FFFE
	ands r0, r2
	movs r2, #0
	strh r0, [r1]
	ldr r0, _08057824 @ =gStageData
	adds r1, r0, #0
	adds r1, #0x85
	strb r2, [r1]
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #4
	bls _08057828
	cmp r1, #7
	beq _08057828
	movs r0, #2
	b _0805782A
	.align 2, 0
_08057814: .4byte gCurTask
_08057818: .4byte 0x0300016C
_0805781C: .4byte gCamera
_08057820: .4byte 0x0000FFFE
_08057824: .4byte gStageData
_08057828:
	movs r0, #3
_0805782A:
	strb r0, [r2, #4]
	ldr r0, _08057838 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08057842
	.align 2, 0
_08057838: .4byte gCurTask
_0805783C:
	adds r0, r4, #0
	bl sub_80239A8
_08057842:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8057848
sub_8057848: @ 0x08057848
	push {r4, r5, lr}
	ldr r0, _080578C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _080578CC @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrb r2, [r5, #5]
	ldrb r1, [r5, #6]
	subs r0, r2, r1
	lsls r0, r0, #0x10
	adds r3, r2, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08057876
	movs r4, #0
_08057876:
	cmp r3, #0xa0
	ble _0805787C
	movs r3, #0xa0
_0805787C:
	ldr r1, _080578D0 @ =gWinRegs
	movs r2, #0xf0
	strh r2, [r1]
	lsls r0, r4, #0x10
	asrs r0, r0, #8
	orrs r3, r0
	strh r3, [r1, #4]
	strh r2, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldr r0, _080578D4 @ =0x00003F10
	strh r0, [r1, #8]
	movs r0, #0x3f
	strh r0, [r1, #0xa]
	ldr r0, _080578D8 @ =0x00007FFF
	bl sub_80C4C0C
	ldr r1, _080578DC @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080578E0 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r2, _080578E4 @ =gBldRegs
	ldr r0, _080578E8 @ =0x00003FEF
	strh r0, [r2]
	ldrh r0, [r5, #0xc]
	lsrs r0, r0, #4
	strh r0, [r2, #4]
	ldrh r1, [r5, #0xc]
	lsrs r1, r1, #4
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080578C8: .4byte gCurTask
_080578CC: .4byte gDispCnt
_080578D0: .4byte gWinRegs
_080578D4: .4byte 0x00003F10
_080578D8: .4byte 0x00007FFF
_080578DC: .4byte gBgPalette
_080578E0: .4byte gFlags
_080578E4: .4byte gBldRegs
_080578E8: .4byte 0x00003FEF

	thumb_func_start sub_80578EC
sub_80578EC: @ 0x080578EC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldr r3, _08057970 @ =gStageData
	adds r2, r3, #0
	adds r2, #0xbc
	movs r1, #0
	strb r1, [r2]
	mov ip, r3
	cmp r0, #0
	beq _08057978
	movs r3, #0
	ldr r5, _08057974 @ =gPlayers
_08057904:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r2, r0, r5
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0
	beq _0805793C
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldr r0, [r1, #0x14]
	movs r4, #0x80
	orrs r0, r4
	str r0, [r1, #0x14]
	adds r0, r2, #0
	adds r0, #0xe4
	ldr r1, [r0]
	cmp r1, #0
	beq _0805793C
	ldr r0, [r1, #0x14]
	orrs r0, r4
	str r0, [r1, #0x14]
_0805793C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08057904
	mov r0, ip
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _08057960
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldr r0, [r2, #0x28]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2, #0x28]
_08057960:
	mov r2, ip
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	b _080579DC
	.align 2, 0
_08057970: .4byte gStageData
_08057974: .4byte gPlayers
_08057978:
	movs r3, #0
	ldr r5, _08057A3C @ =gPlayers
_0805797C:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r2, r0, r5
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0
	beq _080579B6
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldr r0, [r1, #0x14]
	movs r4, #0x81
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r1, #0x14]
	adds r0, r2, #0
	adds r0, #0xe4
	ldr r1, [r0]
	cmp r1, #0
	beq _080579B6
	ldr r0, [r1, #0x14]
	ands r0, r4
	str r0, [r1, #0x14]
_080579B6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0805797C
	mov r0, ip
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _080579DC
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldr r0, [r2, #0x28]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x28]
_080579DC:
	cmp r6, #0
	beq _08057A40
	movs r3, #0
	ldr r5, _08057A3C @ =gPlayers
	movs r6, #0x1c
	movs r4, #0x80
	lsls r4, r4, #0x13
_080579EA:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r2, r0, r5
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08057A0A
	ldr r0, [r2, #4]
	orrs r0, r4
	str r0, [r2, #4]
_08057A0A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080579EA
	mov r0, ip
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _08057A2E
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r2, [r1, #0x16]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x16]
_08057A2E:
	mov r2, ip
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _08057A8C
	.align 2, 0
_08057A3C: .4byte gPlayers
_08057A40:
	movs r3, #0
	ldr r5, _08057A94 @ =gPlayers
	movs r6, #0x1c
	ldr r4, _08057A98 @ =0xFBFFFFFF
_08057A48:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r2, r0, r5
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08057A68
	ldr r0, [r2, #4]
	ands r0, r4
	str r0, [r2, #4]
_08057A68:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08057A48
	mov r0, ip
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _08057A8C
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r2, [r1, #0x16]
	ldr r0, _08057A9C @ =0x0000FFF7
	ands r0, r2
	strh r0, [r1, #0x16]
_08057A8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057A94: .4byte gPlayers
_08057A98: .4byte 0xFBFFFFFF
_08057A9C: .4byte 0x0000FFF7

@ TODO: This is not called in regular stage intro.
@       Maybe multiplayer?
	thumb_func_start StageIntro_ShowZoneName
StageIntro_ShowZoneName: @ 0x08057AA0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08057B50 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08057B54 @ =sub_8057B70
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08057B58 @ =sub_80580EC
	str r1, [sp]
	movs r1, #0x84
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0]
	strb r2, [r0, #1]
	movs r3, #0
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r5, [r0, #6]
	strh r6, [r0, #8]
	strh r2, [r0, #0xa]
	str r2, [r0, #0xc]
	movs r1, #0xa0
	str r1, [r0, #0x10]
	movs r1, #0xa8
	lsls r1, r1, #8
	str r1, [r0, #0x14]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r0, #0x18]
	str r2, [sp, #4]
	ldr r2, _08057B5C @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _08057B60 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08057B64 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r4, _08057B68 @ =gBgSprites_Unknown1
	strb r3, [r4]
	ldr r0, _08057B6C @ =gBgSprites_Unknown2
	strb r3, [r0]
	strb r3, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x40
	strb r2, [r0, #3]
	strb r3, [r4, #1]
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r3, [r4, #2]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057B50: .4byte gDispCnt
_08057B54: .4byte sub_8057B70
_08057B58: .4byte sub_80580EC
_08057B5C: .4byte 0x040000D4
_08057B60: .4byte gBgCntRegs
_08057B64: .4byte 0x85000010
_08057B68: .4byte gBgSprites_Unknown1
_08057B6C: .4byte gBgSprites_Unknown2

	thumb_func_start sub_8057B70
sub_8057B70: @ 0x08057B70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08057C50 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, sb
	adds r7, r1, r0
	ldr r0, _08057C54 @ =gLoadedSaveGame
	ldr r2, _08057C58 @ =0x00000366
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	beq _08057B9C
	movs r1, #9
_08057B9C:
	ldr r5, _08057C5C @ =gUnknown_080D1D88
	movs r0, #8
	ldrsh r6, [r7, r0]
	adds r4, r6, r1
	lsls r4, r4, #3
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	ldr r0, _08057C60 @ =0x0300001C
	add r0, sb
	str r1, [r0]
	adds r4, r4, r5
	ldrh r1, [r4]
	movs r2, #0
	mov r8, r2
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x14]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xc0
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r4, #0x10
	strb r4, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r1, _08057C64 @ =gBgCntRegs
	ldr r0, _08057C68 @ =0x0000140B
	strh r0, [r1]
	ldr r1, _08057C6C @ =gBgScrollRegs
	strh r5, [r1]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	subs r0, #0x44
	strh r0, [r1, #2]
	ldr r0, _08057C70 @ =0x03000044
	add r0, sb
	ldr r1, _08057C74 @ =0x06008000
	str r1, [r0, #4]
	strh r5, [r0, #0xa]
	ldr r1, _08057C78 @ =0x0600A000
	str r1, [r0, #0xc]
	strh r5, [r0, #0x18]
	strh r5, [r0, #0x1a]
	movs r1, #0xb1
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r5, [r0, #0x1e]
	strh r5, [r0, #0x20]
	strh r5, [r0, #0x22]
	strh r5, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	movs r1, #0x15
	strh r1, [r0, #0x28]
	ldr r1, _08057C7C @ =0x0300006E
	add r1, sb
	mov r2, r8
	strb r2, [r1]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _08057C80 @ =sub_8057C84
	str r0, [r1, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057C50: .4byte gCurTask
_08057C54: .4byte gLoadedSaveGame
_08057C58: .4byte 0x00000366
_08057C5C: .4byte gUnknown_080D1D88
_08057C60: .4byte 0x0300001C
_08057C64: .4byte gBgCntRegs
_08057C68: .4byte 0x0000140B
_08057C6C: .4byte gBgScrollRegs
_08057C70: .4byte 0x03000044
_08057C74: .4byte 0x06008000
_08057C78: .4byte 0x0600A000
_08057C7C: .4byte 0x0300006E
_08057C80: .4byte sub_8057C84

	thumb_func_start sub_8057C84
sub_8057C84: @ 0x08057C84
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _08057D0C @ =0x0000FFFF
	mov r0, sp
	strh r1, [r0]
	ldr r5, _08057D10 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r0, [r3, #4]
	ldr r4, _08057D14 @ =gBldRegs
	cmp r0, #0
	bne _08057CF4
	ldr r2, _08057D18 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08057D1C @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _08057D20 @ =0x00003FBF
	strh r0, [r4]
	movs r0, #0x10
	strh r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #2]
	movs r2, #1
	strh r2, [r3, #4]
	ldr r1, _08057D24 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08057D28 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08057D2C @ =0x80000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08057D30 @ =gFlags
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
_08057CF4:
	ldrh r2, [r4, #4]
	cmp r2, #0
	beq _08057D38
	ldrh r0, [r3, #2]
	lsrs r0, r0, #8
	strh r0, [r4, #4]
	ldr r1, _08057D34 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r6, [r3, #2]
	adds r0, r0, r6
	strh r0, [r3, #2]
	b _08057D52
	.align 2, 0
_08057D0C: .4byte 0x0000FFFF
_08057D10: .4byte gCurTask
_08057D14: .4byte gBldRegs
_08057D18: .4byte gDispCnt
_08057D1C: .4byte gWinRegs
_08057D20: .4byte 0x00003FBF
_08057D24: .4byte 0x040000D4
_08057D28: .4byte gBgPalette
_08057D2C: .4byte 0x80000001
_08057D30: .4byte gFlags
_08057D34: .4byte 0xFFFFFF00
_08057D38:
	ldr r1, _08057D5C @ =gWinRegs
	movs r0, #0x1f
	strh r0, [r1, #8]
	movs r0, #0x3f
	strh r0, [r1, #0xa]
	movs r0, #0xff
	strh r0, [r4]
	strh r2, [r4, #2]
	movs r0, #0x10
	strh r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, _08057D60 @ =sub_8057DEC
	str r0, [r1, #8]
_08057D52:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057D5C: .4byte gWinRegs
_08057D60: .4byte sub_8057DEC

	thumb_func_start sub_8057D64
sub_8057D64: @ 0x08057D64
	push {r4, r5, r6, lr}
	ldr r6, _08057DC8 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #4]
	ldr r5, _08057DCC @ =gBldRegs
	cmp r0, #0
	beq _08057DAC
	ldr r2, _08057DD0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08057DD4 @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _08057DD8 @ =0x00003FBF
	strh r0, [r5]
	strh r3, [r4, #2]
	strh r3, [r4, #4]
_08057DAC:
	ldrh r0, [r5, #4]
	cmp r0, #0xf
	bhi _08057DDC
	ldrh r0, [r4, #2]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r4, #2]
	adds r0, r0, r3
	strh r0, [r4, #2]
	b _08057DE2
	.align 2, 0
_08057DC8: .4byte gCurTask
_08057DCC: .4byte gBldRegs
_08057DD0: .4byte gDispCnt
_08057DD4: .4byte gWinRegs
_08057DD8: .4byte 0x00003FBF
_08057DDC:
	ldr r1, [r6]
	ldr r0, _08057DE8 @ =Task_805818C
	str r0, [r1, #8]
_08057DE2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057DE8: .4byte Task_805818C

	thumb_func_start sub_8057DEC
sub_8057DEC: @ 0x08057DEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r1, _08057E24 @ =0x0000FFFF
	mov r0, sp
	strh r1, [r0]
	ldr r0, _08057E28 @ =gCurTask
	ldr r7, [r0]
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, [r1, #0xc]
	adds r3, r0, #0
	adds r3, #8
	str r3, [r1, #0xc]
	ldr r0, [r1, #0x10]
	adds r2, r0, #0
	subs r2, #8
	str r2, [r1, #0x10]
	cmp r3, #0x43
	bgt _08057E30
	ldr r1, _08057E2C @ =gWinRegs
	lsls r0, r3, #8
	orrs r2, r0
	strh r2, [r1, #4]
	b _08057E92
	.align 2, 0
_08057E24: .4byte 0x0000FFFF
_08057E28: .4byte gCurTask
_08057E2C: .4byte gWinRegs
_08057E30:
	movs r0, #0x44
	str r0, [r1, #0xc]
	movs r0, #0x5c
	str r0, [r1, #0x10]
	ldr r6, _08057EA0 @ =gWinRegs
	ldr r0, _08057EA4 @ =0x0000445C
	movs r1, #0
	mov r8, r1
	strh r0, [r6, #4]
	ldr r1, _08057EA8 @ =0x040000D4
	ldr r0, _08057EAC @ =Palette_unknown_354 + 0xE0
	str r0, [r1]
	ldr r2, _08057EB0 @ =gBgPalette + 0xE0
	str r2, [r1, #4]
	ldr r0, _08057EB4 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _08057EB8 @ =gFlags
	ldr r3, [r4]
	movs r5, #1
	mov r0, sp
	str r0, [r1]
	subs r2, #0xe0
	str r2, [r1, #4]
	ldr r0, _08057EBC @ =0x80000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	orrs r3, r5
	str r3, [r4]
	ldr r2, _08057EC0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x1f
	strh r0, [r6, #8]
	movs r0, #0x3f
	strh r0, [r6, #0xa]
	ldr r1, _08057EC4 @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	mov r0, r8
	strh r0, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r0, _08057EC8 @ =sub_80580F0
	str r0, [r7, #8]
_08057E92:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057EA0: .4byte gWinRegs
_08057EA4: .4byte 0x0000445C
_08057EA8: .4byte 0x040000D4
_08057EAC: .4byte Palette_unknown_354 + 0xE0
_08057EB0: .4byte gBgPalette + 0xE0
_08057EB4: .4byte 0x80000090
_08057EB8: .4byte gFlags
_08057EBC: .4byte 0x80000001
_08057EC0: .4byte gDispCnt
_08057EC4: .4byte gBldRegs
_08057EC8: .4byte sub_80580F0

	thumb_func_start sub_8057ECC
sub_8057ECC: @ 0x08057ECC
	push {r4, lr}
	sub sp, #4
	ldr r0, _08057F08 @ =sub_8057F0C
	movs r2, #0x84
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	movs r1, #2
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	adds r1, #0xfe
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	bl ScreenFadeUpdateValues
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057F08: .4byte sub_8057F0C

	thumb_func_start sub_8057F0C
sub_8057F0C: @ 0x08057F0C
	push {lr}
	ldr r0, _08057F38 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057F4C
	ldr r0, _08057F3C @ =gStageData
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #4
	bls _08057F40
	cmp r1, #7
	beq _08057F40
	movs r0, #2
	b _08057F42
	.align 2, 0
_08057F38: .4byte gCurTask
_08057F3C: .4byte gStageData
_08057F40:
	movs r0, #3
_08057F42:
	strb r0, [r2, #4]
	ldr r0, _08057F50 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08057F4C:
	pop {r0}
	bx r0
	.align 2, 0
_08057F50: .4byte gCurTask

	thumb_func_start sub_8057F54
sub_8057F54: @ 0x08057F54
	push {r4, lr}
	ldr r4, _08057F78 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057F72
	ldr r0, [r4]
	bl TaskDestroy
_08057F72:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057F78: .4byte gCurTask

	thumb_func_start sub_8057F7C
sub_8057F7C: @ 0x08057F7C
	push {r4, r5, lr}
	ldr r5, _08057FB0 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x48
	adds r0, r0, r1
	bl DisplaySprite
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08057FA8
	strh r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, _08057FB4 @ =sub_805722C
	str r0, [r1, #8]
_08057FA8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057FB0: .4byte gCurTask
_08057FB4: .4byte sub_805722C

	thumb_func_start TaskDestructor_StageIntro
TaskDestructor_StageIntro: @ 0x08057FB8
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r0, [r0, #0x20]
	bl VramFree
	ldr r0, _08057FE4 @ =0x0300016C
	adds r4, r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08057FD6
	bl EwramFree
_08057FD6:
	movs r0, #0
	movs r1, #0
	bl sub_80578EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057FE4: .4byte 0x0300016C

	thumb_func_start Task_8057FE8
Task_8057FE8: @ 0x08057FE8
	push {r4, lr}
	ldr r4, _08058030 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r2, [r3, #0xa]
	adds r2, #1
	strh r2, [r3, #0xa]
	ldrh r0, [r3, #0xa]
	lsls r1, r0, #3
	adds r1, r1, r0
	movs r0, #0x50
	subs r0, r0, r1
	strb r0, [r3, #6]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #8
	bne _0805801E
	movs r0, #0xc
	strb r0, [r3, #6]
	movs r0, #0x10
	strh r0, [r3, #0xa]
	ldr r1, [r4]
	ldr r0, _08058034 @ =Task_8058038
	str r0, [r1, #8]
_0805801E:
	bl sub_8057848
	movs r0, #1
	movs r1, #1
	bl sub_80578EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058030: .4byte gCurTask
_08058034: .4byte Task_8058038

	thumb_func_start Task_8058038
Task_8058038: @ 0x08058038
	push {r4, r5, lr}
	ldr r0, _0805808C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x20
	adds r5, r1, r0
	ldrh r0, [r4, #0xa]
	subs r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805805A
	ldr r0, _08058090 @ =Task_8058094
	str r0, [r2, #8]
_0805805A:
	bl sub_8057848
	movs r0, #1
	movs r1, #1
	bl sub_80578EC
	ldrh r0, [r4, #0xa]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	movs r0, #0x78
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldrb r0, [r4, #5]
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805808C: .4byte gCurTask
_08058090: .4byte Task_8058094

	thumb_func_start Task_8058094
Task_8058094: @ 0x08058094
	push {r4, r5, lr}
	ldr r0, _080580E4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x20
	adds r5, r1, r0
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	bne _080580BC
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r0, _080580E8 @ =Task_805732C
	str r0, [r2, #8]
_080580BC:
	bl sub_8057848
	movs r0, #1
	movs r1, #1
	bl sub_80578EC
	movs r0, #0x78
	strh r0, [r5, #0x10]
	ldrb r0, [r4, #5]
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080580E4: .4byte gCurTask
_080580E8: .4byte Task_805732C

	thumb_func_start sub_80580EC
sub_80580EC: @ 0x080580EC
	bx lr
	.align 2, 0

	thumb_func_start sub_80580F0
sub_80580F0: @ 0x080580F0
	push {r4, r5, lr}
	ldr r5, _08058120 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _08058124 @ =0x0300001C
	adds r0, r0, r1
	bl DisplaySprite
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _0805811A
	ldr r1, [r5]
	ldr r0, _08058128 @ =sub_8057D64
	str r0, [r1, #8]
_0805811A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058120: .4byte gCurTask
_08058124: .4byte 0x0300001C
_08058128: .4byte sub_8057D64

	thumb_func_start sub_805812C
sub_805812C: @ 0x0805812C
	push {r4, r5, lr}
	ldr r5, _08058160 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x1c
	adds r0, r0, r1
	bl DisplaySprite
	ldr r0, [r4, #0xc]
	adds r3, r0, #0
	adds r3, #8
	str r3, [r4, #0xc]
	ldr r0, [r4, #0x10]
	adds r2, r0, #0
	subs r2, #8
	str r2, [r4, #0x10]
	cmp r3, #0x4f
	bgt _08058168
	ldr r1, _08058164 @ =gWinRegs
	lsls r0, r3, #8
	orrs r2, r0
	strh r2, [r1, #6]
	b _0805817A
	.align 2, 0
_08058160: .4byte gCurTask
_08058164: .4byte gWinRegs
_08058168:
	movs r0, #0x50
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r1, _08058180 @ =gWinRegs
	ldr r0, _08058184 @ =0x00005050
	strh r0, [r1, #6]
	ldr r1, [r5]
	ldr r0, _08058188 @ =sub_8057D64
	str r0, [r1, #8]
_0805817A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058180: .4byte gWinRegs
_08058184: .4byte 0x00005050
_08058188: .4byte sub_8057D64

	thumb_func_start Task_805818C
Task_805818C: @ 0x0805818C
	push {lr}
	ldr r0, _080581B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #8
	ldrsh r1, [r0, r2]
	cmp r1, #7
	beq _080581B8
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	b _080581BA
	.align 2, 0
_080581B4: .4byte gCurTask
_080581B8:
	movs r0, #0x47
_080581BA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	bl WarpToMap
	pop {r0}
	bx r0
