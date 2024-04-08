.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable142
CreateEntity_Interactable142: @ 0x0804F358
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	ldr r0, _0804F3E0 @ =gUnknown_03000530
	ldrb r0, [r0, #0x11]
	cmp r0, #7
	bls _0804F3CC
	ldr r0, _0804F3E4 @ =sub_804F3F4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804F3E8 @ =sub_804F558
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	strh r6, [r4, #4]
	strh r7, [r4, #6]
	str r5, [r4]
	ldrb r1, [r5]
	strb r1, [r4, #0xa]
	mov r1, r8
	strb r1, [r4, #0xb]
	ldrb r3, [r5]
	lsls r3, r3, #3
	lsls r1, r6, #8
	adds r3, r3, r1
	strh r3, [r4, #0x34]
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	lsls r2, r7, #8
	adds r1, r1, r2
	strh r1, [r4, #0x36]
	ldr r1, _0804F3EC @ =0x0300000C
	adds r0, r0, r1
	ldr r2, _0804F3F0 @ =gCamera
	ldr r1, [r2]
	subs r3, r3, r1
	strh r3, [r0, #0x10]
	ldr r2, [r2, #4]
	ldrh r1, [r4, #0x36]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl sub_804F56C
_0804F3CC:
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r5]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F3E0: .4byte gUnknown_03000530
_0804F3E4: .4byte sub_804F3F4
_0804F3E8: .4byte sub_804F558
_0804F3EC: .4byte 0x0300000C
_0804F3F0: .4byte gCamera

	thumb_func_start sub_804F3F4
sub_804F3F4: @ 0x0804F3F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _0804F4C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r7, _0804F4CC @ =gUnknown_030008A0
	ldrb r2, [r7, #6]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r1, _0804F4D0 @ =gPlayers
	mov sb, r1
	adds r4, r0, r1
	ldr r0, [r4, #4]
	ldr r1, _0804F4D4 @ =0x01000300
	ands r0, r1
	cmp r0, #0
	bne _0804F4B4
	adds r3, r2, #0
	cmp r3, #0
	bne _0804F4B4
	ldr r2, _0804F4D8 @ =0x0300000C
	adds r0, r6, r2
	movs r6, #0x34
	ldrsh r1, [r5, r6]
	movs r6, #0x36
	ldrsh r2, [r5, r6]
	str r4, [sp]
	str r3, [sp, #4]
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0804F4B4
	adds r0, r4, #0
	bl sub_8016F28
	movs r1, #0
	movs r0, #0x47
	strh r0, [r7, #0x12]
	strb r1, [r7, #0xc]
	ldr r0, _0804F4DC @ =sub_800AD24
	mov r8, r0
	adds r0, r4, #0
	mov r1, r8
	bl sub_800D87C
	adds r5, r4, #0
	adds r5, #0x2b
	ldrb r1, [r5]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sb
	adds r2, r0, r1
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r6, #0x1c
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #8
	bne _0804F492
	adds r0, r2, #0
	mov r1, r8
	bl sub_800D87C
_0804F492:
	ldr r1, _0804F4E0 @ =0x00000209
	adds r0, r4, #0
	bl sub_8004E98
	ldrb r0, [r7, #3]
	cmp r0, #4
	bls _0804F4B4
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #4
	bne _0804F4B4
	ldrb r2, [r7, #0xc]
	movs r0, #0x47
	movs r1, #0
	bl sub_80275B8
_0804F4B4:
	bl sub_804F4E4
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F4C8: .4byte gCurTask
_0804F4CC: .4byte gUnknown_030008A0
_0804F4D0: .4byte gPlayers
_0804F4D4: .4byte 0x01000300
_0804F4D8: .4byte 0x0300000C
_0804F4DC: .4byte sub_800AD24
_0804F4E0: .4byte 0x00000209

	thumb_func_start sub_804F4E4
sub_804F4E4: @ 0x0804F4E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804F528 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r4]
	mov r8, r1
	movs r0, #0x34
	ldrsh r6, [r4, r0]
	movs r1, #0x36
	ldrsh r7, [r4, r1]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_802C198
	cmp r0, #0
	bne _0804F52C
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804F546
	.align 2, 0
_0804F528: .4byte gCurTask
_0804F52C:
	ldr r0, _0804F554 @ =gCamera
	ldr r1, [r0]
	subs r1, r6, r1
	strh r1, [r5, #0x10]
	ldr r0, [r0, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0804F546:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F554: .4byte gCamera

	thumb_func_start sub_804F558
sub_804F558: @ 0x0804F558
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_804F56C
sub_804F56C: @ 0x0804F56C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x24
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0xf9
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
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
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
