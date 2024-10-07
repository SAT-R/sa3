
.syntax unified
.text
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
	mov r8, r0          @ r8 = ui
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
	adds r7, r2, r0     @ r7 = s
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
.syntax divided
