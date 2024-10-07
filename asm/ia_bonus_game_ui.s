.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_803D248
Task_803D248: @ 0x0803D248
	push {r4, r5, lr}
	ldr r0, _0803D26C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r3, #0
	ldr r5, _0803D270 @ =gPlayers
_0803D25A:
	cmp r3, #0
	beq _0803D274
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803D278
	.align 2, 0
_0803D26C: .4byte gCurTask
_0803D270: .4byte gPlayers
_0803D274:
	ldr r0, _0803D2F4 @ =gStageData
	ldrb r1, [r0, #6]
_0803D278:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r5
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803D25A
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0803D314
	movs r0, #2
	strb r0, [r4, #0x17]
	ldrh r0, [r4, #0x12]
	movs r1, #0x12
	ldrsh r5, [r4, r1]
	cmp r5, #0
	bne _0803D310
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D314
	ldr r1, _0803D2F8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D2FC @ =gUnknown_03003F94
	ldr r0, _0803D300 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D304 @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _0803D308 @ =gUnknown_03006208
	ldr r0, _0803D30C @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D2F4 @ =gStageData
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #7
	bl sub_8002210
	b _0803D31E
	.align 2, 0
_0803D2F4: .4byte gStageData
_0803D2F8: .4byte 0x0000FFFF
_0803D2FC: .4byte gUnknown_03003F94
_0803D300: .4byte gUnknown_03003D20
_0803D304: .4byte gUnknown_03006840
_0803D308: .4byte gUnknown_03006208
_0803D30C: .4byte gUnknown_03003F34
_0803D310:
	subs r0, #1
	strh r0, [r4, #0x12]
_0803D314:
	movs r0, #1
	bl sub_803D784
	bl sub_803D4C8
_0803D31E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start Task_803D324
Task_803D324: @ 0x0803D324
	push {r4, r5, r6, lr}
	ldr r2, _0803D348 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
	adds r6, r2, #0
	ldr r2, _0803D34C @ =gPlayers
_0803D338:
	cmp r4, #0
	beq _0803D350
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803D354
	.align 2, 0
_0803D348: .4byte gCurTask
_0803D34C: .4byte gPlayers
_0803D350:
	ldr r0, _0803D394 @ =gStageData
	ldrb r1, [r0, #6]
_0803D354:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r2
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r3, #4]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803D338
	ldrb r0, [r5, #0x17]
	subs r0, #1
	strb r0, [r5, #0x17]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D38A
	movs r0, #0x80
	strb r0, [r5, #0x17]
	ldr r1, [r6]
	ldr r0, _0803D398 @ =sub_803D39C
	str r0, [r1, #8]
_0803D38A:
	bl sub_803D4C8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D394: .4byte gStageData
_0803D398: .4byte sub_803D39C

	thumb_func_start sub_803D39C
sub_803D39C: @ 0x0803D39C
	push {r4, r5, lr}
	ldr r0, _0803D3C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r3, #0
	ldr r5, _0803D3C4 @ =gPlayers
_0803D3AE:
	cmp r3, #0
	beq _0803D3C8
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803D3CC
	.align 2, 0
_0803D3C0: .4byte gCurTask
_0803D3C4: .4byte gPlayers
_0803D3C8:
	ldr r0, _0803D448 @ =gStageData
	ldrb r1, [r0, #6]
_0803D3CC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r5
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803D3AE
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0803D468
	movs r0, #2
	strb r0, [r4, #0x17]
	ldrh r0, [r4, #0x12]
	movs r1, #0x12
	ldrsh r5, [r4, r1]
	cmp r5, #0
	bne _0803D464
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D468
	ldr r1, _0803D44C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D450 @ =gUnknown_03003F94
	ldr r0, _0803D454 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D458 @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _0803D45C @ =gUnknown_03006208
	ldr r0, _0803D460 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D448 @ =gStageData
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #7
	bl sub_8002210
	b _0803D476
	.align 2, 0
_0803D448: .4byte gStageData
_0803D44C: .4byte 0x0000FFFF
_0803D450: .4byte gUnknown_03003F94
_0803D454: .4byte gUnknown_03003D20
_0803D458: .4byte gUnknown_03006840
_0803D45C: .4byte gUnknown_03006208
_0803D460: .4byte gUnknown_03003F34
_0803D464:
	subs r0, #1
	strh r0, [r4, #0x12]
_0803D468:
	bl sub_803D614
	movs r0, #1
	bl sub_803D784
	bl sub_803D4C8
_0803D476:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_803D47C
sub_803D47C: @ 0x0803D47C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803D4C4 @ =gUnknown_080CF770
	ldr r0, [r5]
	bl VramMalloc
	str r0, [r4]
	ldrh r0, [r5, #0x34]
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #0xc]
	adds r5, #0x36
	ldrb r0, [r5]
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x50
	strh r0, [r4, #0x12]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D4C4: .4byte gUnknown_080CF770

	thumb_func_start sub_803D4C8
sub_803D4C8: @ 0x0803D4C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0803D5E4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x10
	ldrsh r4, [r0, r1]
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	ldr r1, _0803D5E8 @ =gUnknown_080CF9AE
	lsls r0, r0, #1
	mov sb, r0
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r4, r4, r0
	ldr r0, _0803D5EC @ =0x03000338
	adds r7, r5, r0
	movs r0, #0x80
	strh r0, [r7, #0x10]
	movs r0, #0x16
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r5, _0803D5F0 @ =gUnknown_080CF936
	lsls r4, r4, #1
	adds r0, r4, r5
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r1, r8
	adds r7, r1, r0
	movs r0, #0x86
	strh r0, [r7, #0x10]
	movs r6, #0x12
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	adds r5, #1
	adds r4, r4, r5
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r2, r8
	adds r7, r2, r0
	movs r0, #0x8c
	strh r0, [r7, #0x10]
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, _0803D5F4 @ =gUnknown_080CF8BC
	mov r0, sb
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803D58A
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r1, r8
	adds r7, r1, r0
	movs r0, #0x70
	strh r0, [r7, #0x10]
	movs r0, #0xe
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0803D58A:
	adds r0, r4, #1
	add r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r2, r8
	adds r7, r2, r0
	movs r0, #0x78
	strh r0, [r7, #0x10]
	movs r0, #0xe
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r4, #0
_0803D5B2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r2, r8
	adds r7, r2, r0
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0803D5F8
	adds r0, r7, #0
	bl DisplaySprite
	ldrb r0, [r7, #0x1a]
	cmp r0, #1
	bne _0803D5FE
	movs r0, #2
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	b _0803D5FE
	.align 2, 0
_0803D5E4: .4byte gCurTask
_0803D5E8: .4byte gUnknown_080CF9AE
_0803D5EC: .4byte 0x03000338
_0803D5F0: .4byte gUnknown_080CF936
_0803D5F4: .4byte gUnknown_080CF8BC
_0803D5F8:
	adds r0, r7, #0
	bl DisplaySprite
_0803D5FE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803D5B2
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803D614
sub_803D614: @ 0x0803D614
	push {r4, r5, r6, lr}
	ldr r0, _0803D6A4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r0, _0803D6A8 @ =0x030004C8
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803D6AC @ =0x030004F0
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803D6B0 @ =0x03000518
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803D6B4 @ =0x03000540
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803D6B8 @ =0x03000568
	adds r5, r4, r0
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _0803D690
	ldrb r0, [r6, #0x15]
	subs r0, #1
	strb r0, [r6, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0803D690
	movs r0, #0x14
	strb r0, [r6, #0x15]
	ldr r0, _0803D6BC @ =0x0000020D
	bl sub_8003DF0
	ldrb r0, [r6, #0x14]
	subs r0, #1
	strb r0, [r6, #0x14]
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
_0803D690:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D6A4: .4byte gCurTask
_0803D6A8: .4byte 0x030004C8
_0803D6AC: .4byte 0x030004F0
_0803D6B0: .4byte 0x03000518
_0803D6B4: .4byte 0x03000540
_0803D6B8: .4byte 0x03000568
_0803D6BC: .4byte 0x0000020D

	thumb_func_start sub_803D6C0
sub_803D6C0: @ 0x0803D6C0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_BonusGameUI
TaskDestructor_BonusGameUI: @ 0x0803D6D4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r0, [r0, #0x18]
	bl VramFree
	ldr r1, _0803D734 @ =0x03000388
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D738 @ =0x03000360
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D73C @ =0x030004C8
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803D72E
	bl VramFree
	ldr r1, _0803D740 @ =0x030004F0
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D744 @ =0x03000518
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D748 @ =0x03000540
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D74C @ =0x03000568
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
_0803D72E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D734: .4byte 0x03000388
_0803D738: .4byte 0x03000360
_0803D73C: .4byte 0x030004C8
_0803D740: .4byte 0x030004F0
_0803D744: .4byte 0x03000518
_0803D748: .4byte 0x03000540
_0803D74C: .4byte 0x03000568

	thumb_func_start Task_803D750
Task_803D750: @ 0x0803D750
	push {lr}
	ldr r2, _0803D77C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #0x17]
	subs r0, #1
	strb r0, [r1, #0x17]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D774
	movs r0, #0x80
	strb r0, [r1, #0x17]
	ldr r1, [r2]
	ldr r0, _0803D780 @ =Task_803CEE4
	str r0, [r1, #8]
_0803D774:
	bl sub_803D4C8
	pop {r0}
	bx r0
	.align 2, 0
_0803D77C: .4byte gCurTask
_0803D780: .4byte Task_803CEE4

	thumb_func_start sub_803D784
sub_803D784: @ 0x0803D784
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0803D7CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #0x17]
	cmp r0, #0
	beq _0803D7C4
	subs r2, r0, #1
	strb r2, [r1, #0x17]
	cmp r3, #0
	bne _0803D7B2
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bhi _0803D7B2
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0803D7C4
_0803D7B2:
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r4, r1, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0803D7C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D7CC: .4byte gCurTask
