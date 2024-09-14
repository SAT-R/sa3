.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_804A800
sub_804A800: @ 0x0804A800
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0804A870 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0x10
	adds r6, r3, r0
	ldr r1, [r7]
	mov r8, r1
	ldr r0, [r7, #0x38]
	lsls r0, r0, #8
	ldr r1, [r7, #0x3c]
	lsls r1, r1, #8
	ldr r4, _0804A874 @ =gCamera
	ldr r2, [r4]
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r6, #0x10]
	ldr r0, [r4, #4]
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	ldr r2, _0804A878 @ =0x03000044
	adds r0, r3, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r1, _0804A87C @ =0x03000046
	adds r3, r3, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r3, #0x10
	ldrsh r2, [r6, r3]
	movs r4, #0x12
	ldrsh r3, [r6, r4]
	bl sub_802C140
	cmp r0, #0
	bne _0804A8C8
	movs r1, #0
	ldr r2, _0804A880 @ =gPlayers
_0804A85A:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _0804A884
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804A888
	.align 2, 0
_0804A870: .4byte gCurTask
_0804A874: .4byte gCamera
_0804A878: .4byte 0x03000044
_0804A87C: .4byte 0x03000046
_0804A880: .4byte gPlayers
_0804A884:
	ldr r0, _0804A8C0 @ =gStageData
	ldrb r1, [r0, #6]
_0804A888:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r2
	adds r0, r6, #0
	adds r1, r5, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _0804A85A
	ldrb r0, [r7, #0xb]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _0804A8C4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804A8D4
	.align 2, 0
_0804A8C0: .4byte gStageData
_0804A8C4: .4byte gCurTask
_0804A8C8:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_0804A8D4:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_UfoPlatform
TaskDestructor_UfoPlatform: @ 0x0804A8E0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_804A8F4
sub_804A8F4: @ 0x0804A8F4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _0804A934 @ =0x000003A3
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
_0804A934: .4byte 0x000003A3
