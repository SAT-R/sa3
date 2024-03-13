.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable124
CreateEntity_Interactable124: @ 0x0804AE78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804AF18 @ =sub_804AF2C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804AF1C @ =sub_804B3CC
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	movs r3, #0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r1, r8
	str r1, [r2]
	ldrb r1, [r1]
	strb r1, [r2, #0xa]
	strb r6, [r2, #0xb]
	strh r3, [r2, #0x3c]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r2, #0x3e]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	ldr r7, _0804AF20 @ =0x03000040
	adds r5, r0, r7
	strh r1, [r5]
	ldrb r3, [r3, #7]
	movs r1, #3
	ands r1, r3
	ldr r3, _0804AF24 @ =0x03000042
	adds r6, r0, r3
	strb r1, [r6]
	subs r7, #0x34
	adds r0, r0, r7
	ldr r4, _0804AF28 @ =gUnknown_03001D10
	ldr r3, [r4]
	ldrh r1, [r2, #0x3e]
	subs r1, r1, r3
	strh r1, [r0, #0x10]
	ldr r2, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r3, r8
	strb r1, [r3]
	ldrb r1, [r6]
	bl sub_804B0F8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AF18: .4byte sub_804AF2C
_0804AF1C: .4byte sub_804B3CC
_0804AF20: .4byte 0x03000040
_0804AF24: .4byte 0x03000042
_0804AF28: .4byte gUnknown_03001D10

	thumb_func_start sub_804AF2C
sub_804AF2C: @ 0x0804AF2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _0804AF68 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	adds r1, #0xc
	adds r1, r1, r0
	mov sb, r1
	ldrh r1, [r5, #0x3e]
	ldr r2, _0804AF6C @ =0x03000040
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r3, #0
	lsls r1, r1, #0x10
	mov r8, r1
	lsls r7, r0, #0x10
_0804AF58:
	lsls r0, r3, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _0804AF74
	ldr r0, _0804AF70 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804AF7E
	.align 2, 0
_0804AF68: .4byte gCurTask
_0804AF6C: .4byte 0x03000040
_0804AF70: .4byte gUnknown_030008A0
_0804AF74:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804AF7E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804AFF4 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	adds r2, r0, #0
	cmp r2, #0
	bne _0804B004
	ldr r1, [r4]
	ldr r0, _0804AFF8 @ =sub_800B920
	cmp r1, r0
	bne _0804AFA2
	b _0804B0D6
_0804AFA2:
	ldr r0, _0804AFFC @ =sub_800DEC4
	cmp r1, r0
	bne _0804AFAA
	b _0804B0D6
_0804AFAA:
	str r4, [sp]
	str r2, [sp, #4]
	mov r0, sb
	mov r3, r8
	asrs r1, r3, #0x10
	asrs r2, r7, #0x10
	movs r3, #1
	bl sub_8020700
	adds r2, r0, #0
	cmp r2, #0
	beq _0804B004
	movs r0, #0x1e
	strh r0, [r5, #0x3c]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	lsls r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r0, [r0]
	orrs r1, r0
	str r1, [r4, #0x70]
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x74]
	adds r0, r4, #0
	ldr r1, _0804B000 @ =sub_800B8A8
	bl sub_800D87C
	adds r0, r4, #0
	bl sub_8016F28
	b _0804B0D6
	.align 2, 0
_0804AFF4: .4byte gUnknown_030015C0
_0804AFF8: .4byte sub_800B920
_0804AFFC: .4byte sub_800DEC4
_0804B000: .4byte sub_800B8A8
_0804B004:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804B01A
	cmp r1, #8
	beq _0804B01A
	cmp r1, #0x10
	bne _0804B0D6
_0804B01A:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804B0D6
	str r0, [sp]
	mov r0, sb
	mov r2, r8
	asrs r1, r2, #0x10
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	ldr r1, [r4]
	ldr r0, _0804B068 @ =sub_800B9CC
	cmp r1, r0
	bne _0804B070
	cmp r2, #0
	beq _0804B070
	movs r3, #0x3e
	ldrsh r1, [r5, r3]
	lsls r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r0, [r0]
	orrs r1, r0
	str r1, [r4, #0x70]
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x74]
	adds r0, r4, #0
	ldr r1, _0804B06C @ =sub_800B8A8
	bl sub_800D87C
	b _0804B0D6
	.align 2, 0
_0804B068: .4byte sub_800B9CC
_0804B06C: .4byte sub_800B8A8
_0804B070:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0804B088
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _0804B0BA
_0804B088:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0804B0BA
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	ands r0, r3
	cmp r0, #0
	beq _0804B0AC
	ldr r3, _0804B0A8 @ =0xFFFFFF00
	b _0804B0B0
	.align 2, 0
_0804B0A8: .4byte 0xFFFFFF00
_0804B0AC:
	movs r3, #0x80
	lsls r3, r3, #1
_0804B0B0:
	adds r0, r1, r3
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x1c]
_0804B0BA:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0804B0D6
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
_0804B0D6:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804B0E6
	b _0804AF58
_0804B0E6:
	bl sub_804B168
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_804B0F8
sub_804B0F8: @ 0x0804B0F8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	movs r6, #0
	movs r0, #0x30
	bl VramMalloc
	str r0, [r5]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	bne _0804B120
	movs r1, #0
	ldr r0, _0804B11C @ =0x0000039B
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	b _0804B130
	.align 2, 0
_0804B11C: .4byte 0x0000039B
_0804B120:
	ldr r0, _0804B164 @ =0x0000039B
	strh r0, [r5, #0xc]
	movs r0, #2
	strb r0, [r5, #0x1a]
	cmp r4, #1
	bne _0804B130
	movs r6, #0x80
	lsls r6, r6, #3
_0804B130:
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r6, r0
	str r6, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B164: .4byte 0x0000039B

	thumb_func_start sub_804B168
sub_804B168: @ 0x0804B168
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804B1B0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	ldr r1, _0804B1B4 @ =0x0300000C
	adds r4, r5, r1
	ldr r7, [r6]
	ldr r2, _0804B1B8 @ =0x03000040
	adds r1, r5, r2
	ldrh r3, [r6, #0x3e]
	mov sb, r3
	movs r2, #0x3e
	ldrsh r0, [r6, r2]
	ldrh r3, [r1]
	mov sl, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_802C198
	cmp r0, #0
	bne _0804B1BC
	ldrb r0, [r6, #0xa]
	strb r0, [r7]
	mov r3, r8
	ldr r0, [r3]
	bl TaskDestroy
	b _0804B232
	.align 2, 0
_0804B1B0: .4byte gCurTask
_0804B1B4: .4byte 0x0300000C
_0804B1B8: .4byte 0x03000040
_0804B1BC:
	ldrh r0, [r6, #0x3c]
	cmp r0, #0
	beq _0804B1DC
	subs r0, #1
	strh r0, [r6, #0x3c]
	ldr r1, _0804B1D4 @ =0x03000042
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B1D8
	movs r0, #1
	b _0804B1E8
	.align 2, 0
_0804B1D4: .4byte 0x03000042
_0804B1D8:
	movs r0, #3
	b _0804B1E8
_0804B1DC:
	ldr r2, _0804B240 @ =0x03000042
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B1E8
	movs r0, #2
_0804B1E8:
	strb r0, [r4, #0x1a]
	ldr r2, _0804B244 @ =gUnknown_03001D10
	ldr r1, [r2]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r6, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804B226
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #8]
	ldr r1, _0804B248 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
_0804B226:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0804B232:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B240: .4byte 0x03000042
_0804B244: .4byte gUnknown_03001D10
_0804B248: .4byte 0xFFFFFBFF

	thumb_func_start sub_804B24C
sub_804B24C: @ 0x0804B24C
	push {r4, lr}
	ldr r2, _0804B274 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x10
	adds r4, r1, r0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B278
	ldr r0, [r2]
	bl TaskDestroy
	b _0804B2B8
	.align 2, 0
_0804B274: .4byte gCurTask
_0804B278:
	movs r1, #8
	ldrsh r0, [r3, r1]
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	ldrh r0, [r3, #0xc]
	ldrh r2, [r3, #0xa]
	adds r0, r0, r2
	strh r0, [r3, #0xa]
	movs r0, #0xa
	ldrsh r2, [r3, r0]
	ldr r0, [r3, #4]
	adds r0, r0, r2
	str r0, [r3, #4]
	asrs r1, r1, #8
	ldr r2, _0804B2C0 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldrb r1, [r3, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804B2B8
	adds r0, r4, #0
	bl DisplaySprite
_0804B2B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B2C0: .4byte gUnknown_03001D10

	thumb_func_start sub_804B2C4
sub_804B2C4: @ 0x0804B2C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	mov sl, r1
	adds r5, r2, #0
	ldr r0, [sp, #0x30]
	mov r8, r0
	mov r2, sb
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	mov r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	mov r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, _0804B3B4 @ =gUnknown_080D03D8
	add r0, sp, #4
	movs r2, #6
	bl sub_80CA3B0
	ldr r0, _0804B3B8 @ =sub_804B24C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804B3BC @ =sub_804B3E0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r6, r4, r6
	ldr r3, _0804B3C0 @ =0x03000010
	adds r4, r4, r3
	movs r7, #0
	mov r0, r8
	strb r0, [r6, #0xe]
	movs r2, #0
	mov r8, r2
	movs r0, #0x20
	strh r0, [r6, #0xc]
	ldr r2, _0804B3C4 @ =gUnknown_082B48B4
	ldr r1, _0804B3C8 @ =0x000003FF
	ldr r3, [sp, #0xc]
	ands r1, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	muls r0, r5, r0
	asrs r0, r0, #0xe
	strh r0, [r6, #8]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r5, r0
	asrs r0, r0, #0xe
	strh r0, [r6, #0xa]
	movs r0, #4
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	mov r3, r8
	strb r3, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r7, [r4, #8]
	mov r0, sb
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r6]
	mov r2, sl
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	str r2, [r6, #4]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B3B4: .4byte gUnknown_080D03D8
_0804B3B8: .4byte sub_804B24C
_0804B3BC: .4byte sub_804B3E0
_0804B3C0: .4byte 0x03000010
_0804B3C4: .4byte gUnknown_082B48B4
_0804B3C8: .4byte 0x000003FF

	thumb_func_start sub_804B3CC
sub_804B3CC: @ 0x0804B3CC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_804B3E0
sub_804B3E0: @ 0x0804B3E0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
