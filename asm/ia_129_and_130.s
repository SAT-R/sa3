.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_804B800
sub_804B800: @ 0x0804B800
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r1, #0
	ldr r4, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0804B8AC @ =sub_804B8B8
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804B8B0 @ =sub_804BA90
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r2, #0
	strh r6, [r3, #4]
	strh r7, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	strh r2, [r3, #0x34]
	ldrb r0, [r5, #7]
	lsrs r0, r0, #6
	ldr r2, _0804B8B4 @ =0x03000036
	adds r1, r1, r2
	strb r0, [r1]
	movs r2, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0804B870
	movs r4, #1
_0804B856:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #5
	bgt _0804B870
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0804B856
_0804B870:
	adds r1, r3, #0
	adds r1, #0x37
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r6, #8
	adds r0, r0, r1
	str r0, [r3, #0x38]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	str r0, [r3, #0x3c]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r5]
	adds r0, r3, #0
	adds r0, #0xc
	adds r1, r3, #0
	adds r1, #0x36
	ldrb r1, [r1]
	bl sub_804BAA4
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B8AC: .4byte sub_804B8B8
_0804B8B0: .4byte sub_804BA90
_0804B8B4: .4byte 0x03000036

	thumb_func_start sub_804B8B8
sub_804B8B8: @ 0x0804B8B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _0804B8EC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	movs r1, #0
	ldr r0, _0804B8F0 @ =0x00000395
	mov sb, r0
	movs r0, #0xa0
	lsls r0, r0, #2
	mov r8, r0
_0804B8DE:
	lsls r0, r1, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _0804B8F8
	ldr r0, _0804B8F4 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0804B902
	.align 2, 0
_0804B8EC: .4byte gCurTask
_0804B8F0: .4byte 0x00000395
_0804B8F4: .4byte gUnknown_030008A0
_0804B8F8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804B902:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804B948 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	adds r3, r0, #0
	cmp r3, #0
	bne _0804B980
	ldrh r0, [r6, #0xc]
	cmp r0, sb
	bne _0804B980
	ldr r1, [r5, #0x38]
	ldr r2, [r5, #0x3c]
	str r4, [sp]
	str r3, [sp, #4]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0804B980
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, r8
	ble _0804B950
	adds r0, r4, #0
	ldr r1, _0804B94C @ =sub_8009B4C
	bl sub_800D87C
	b _0804B958
	.align 2, 0
_0804B948: .4byte gUnknown_030015C0
_0804B94C: .4byte sub_8009B4C
_0804B950:
	adds r0, r4, #0
	ldr r1, _0804B9A0 @ =sub_800EA0C
	bl sub_800D87C
_0804B958:
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0xa4
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r1, [r0]
	adds r0, r6, #0
	bl sub_804BAEC
	ldr r0, _0804B9A4 @ =0x0000FFF6
	strh r0, [r5, #0x34]
	movs r0, #0x96
	lsls r0, r0, #2
	bl sub_8003DF0
_0804B980:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r7, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804B8DE
	bl sub_804B9A8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B9A0: .4byte sub_800EA0C
_0804B9A4: .4byte 0x0000FFF6

	thumb_func_start sub_804B9A8
sub_804B9A8: @ 0x0804B9A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r6, _0804B9FC @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r7, [r4]
	ldrh r1, [r4, #0x38]
	mov r8, r1
	movs r2, #0x38
	ldrsh r0, [r4, r2]
	ldrh r3, [r4, #0x3c]
	mov sb, r3
	movs r2, #0x3c
	ldrsh r1, [r4, r2]
	bl sub_802C198
	cmp r0, #0
	beq _0804B9EE
	ldrh r1, [r4, #0x34]
	movs r3, #0x34
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bge _0804BA00
	adds r0, r1, #1
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804BA00
_0804B9EE:
	ldrb r0, [r4, #0xa]
	strb r0, [r7]
	ldr r0, [r6]
	bl TaskDestroy
	b _0804BA26
	.align 2, 0
_0804B9FC: .4byte gCurTask
_0804BA00:
	ldr r2, _0804BA34 @ =gUnknown_03001D10
	ldr r1, [r2]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r1, [r2, #4]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0804BA26:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BA34: .4byte gUnknown_03001D10

	thumb_func_start CreateEntity_Interactable129
CreateEntity_Interactable129: @ 0x0804BA38
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_804B800
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable130
CreateEntity_Interactable130: @ 0x0804BA64
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_804B800
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_804BA90
sub_804BA90: @ 0x0804BA90
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_804BAA4
sub_804BAA4: @ 0x0804BAA4
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x18
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0804BAE8 @ =0x00000395
	strh r0, [r4, #0xc]
	strb r5, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804BAE8: .4byte 0x00000395

	thumb_func_start sub_804BAEC
sub_804BAEC: @ 0x0804BAEC
	movs r2, #0xf4
	lsls r2, r2, #2
	strh r2, [r0, #0xc]
	strb r1, [r0, #0x1a]
	bx lr
	.align 2, 0
