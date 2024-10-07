.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
