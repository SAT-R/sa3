.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_InteractableMP024
CreateEntity_InteractableMP024: @ 0x0804F130
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
	ldrb r1, [r5, #7]
	ldr r0, _0804F1D0 @ =gUnknown_030008A0
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	bne _0804F1BA
	ldr r0, _0804F1D4 @ =gUnknown_03001060
	adds r0, #0x56
	ldrb r4, [r0]
	cmp r4, r1
	bne _0804F1BA
	ldr r0, _0804F1D8 @ =sub_804F1EC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804F1DC @ =sub_804F300
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	strh r6, [r3, #4]
	strh r7, [r3, #6]
	str r5, [r3]
	ldrb r1, [r5]
	strb r1, [r3, #0xa]
	mov r1, r8
	strb r1, [r3, #0xb]
	ldrb r1, [r5]
	lsls r1, r1, #3
	lsls r2, r6, #8
	adds r1, r1, r2
	strh r1, [r3, #0x34]
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	lsls r2, r7, #8
	adds r1, r1, r2
	strh r1, [r3, #0x36]
	ldr r2, _0804F1E0 @ =0x03000038
	adds r1, r0, r2
	strb r4, [r1]
	ldr r1, _0804F1E4 @ =0x0300000C
	adds r0, r0, r1
	ldr r4, _0804F1E8 @ =gCamera
	ldr r2, [r4]
	ldrh r1, [r3, #0x34]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r2, [r4, #4]
	ldrh r1, [r3, #0x36]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl sub_804F314
_0804F1BA:
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r5]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F1D0: .4byte gUnknown_030008A0
_0804F1D4: .4byte gUnknown_03001060
_0804F1D8: .4byte sub_804F1EC
_0804F1DC: .4byte sub_804F300
_0804F1E0: .4byte 0x03000038
_0804F1E4: .4byte 0x0300000C
_0804F1E8: .4byte gCamera

	thumb_func_start sub_804F1EC
sub_804F1EC: @ 0x0804F1EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	movs r7, #0
	ldr r0, _0804F268 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	ldr r1, _0804F26C @ =0x0300000C
	adds r0, r0, r1
	ldr r1, _0804F270 @ =gUnknown_030008A0
	mov r8, r1
	ldrb r2, [r1, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _0804F274 @ =gPlayers
	adds r6, r1, r2
	movs r1, #0x34
	ldrsh r5, [r3, r1]
	movs r1, #0x36
	ldrsh r4, [r3, r1]
	str r6, [sp]
	str r7, [sp, #4]
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _0804F24C
	mov r1, r8
	ldrb r0, [r1, #6]
	bl sub_80276A8
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_802954C
	movs r7, #1
_0804F24C:
	mov r0, r8
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _0804F258
	movs r7, #1
_0804F258:
	cmp r7, #0
	beq _0804F278
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804F27C
	.align 2, 0
_0804F268: .4byte gCurTask
_0804F26C: .4byte 0x0300000C
_0804F270: .4byte gUnknown_030008A0
_0804F274: .4byte gPlayers
_0804F278:
	bl sub_804F28C
_0804F27C:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804F28C
sub_804F28C: @ 0x0804F28C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804F2D0 @ =gCurTask
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
	bne _0804F2D4
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804F2EE
	.align 2, 0
_0804F2D0: .4byte gCurTask
_0804F2D4:
	ldr r0, _0804F2FC @ =gCamera
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
_0804F2EE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F2FC: .4byte gCamera

	thumb_func_start sub_804F300
sub_804F300: @ 0x0804F300
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_804F314
sub_804F314: @ 0x0804F314
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	movs r0, #0xfb
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
