.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable144
CreateEntity_Interactable144: @ 0x0804F5B0
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
	ldr r0, _0804F644 @ =gSaveGame
	adds r0, #0x32
	ldrb r0, [r0]
	ldr r1, _0804F648 @ =gStageData
	ldrb r1, [r1, #9]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804F638
	ldr r0, _0804F64C @ =Task_Interactable144
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804F650 @ =TaskDestructor_Interactable144
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	strh r6, [r0, #4]
	strh r7, [r0, #6]
	str r5, [r0]
	ldrb r1, [r5]
	strb r1, [r0, #0xa]
	mov r1, r8
	strb r1, [r0, #0xb]
	ldrb r3, [r5]
	lsls r3, r3, #3
	lsls r1, r6, #8
	adds r3, r3, r1
	strh r3, [r0, #0x34]
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	lsls r2, r7, #8
	adds r1, r1, r2
	strh r1, [r0, #0x36]
	ldr r2, _0804F654 @ =0x0300000C
	adds r4, r4, r2
	ldr r2, _0804F658 @ =gCamera
	ldr r1, [r2]
	subs r3, r3, r1
	strh r3, [r4, #0x10]
	ldr r2, [r2, #4]
	ldrh r1, [r0, #0x36]
	subs r1, r1, r2
	strh r1, [r4, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r5]
	bl sub_804F6F0
_0804F638:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F644: .4byte gSaveGame
_0804F648: .4byte gStageData
_0804F64C: .4byte Task_Interactable144
_0804F650: .4byte TaskDestructor_Interactable144
_0804F654: .4byte 0x0300000C
_0804F658: .4byte gCamera

	thumb_func_start sub_804F65C
sub_804F65C: @ 0x0804F65C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804F6A0 @ =gCurTask
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
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804F6A4
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804F6BE
	.align 2, 0
_0804F6A0: .4byte gCurTask
_0804F6A4:
	ldr r0, _0804F6CC @ =gCamera
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
_0804F6BE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804F6CC: .4byte gCamera

	thumb_func_start TaskDestructor_Interactable144
TaskDestructor_Interactable144: @ 0x0804F6D0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start Task_Interactable144
Task_Interactable144: @ 0x0804F6E4
	push {lr}
	bl sub_804F65C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804F6F0
sub_804F6F0: @ 0x0804F6F0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xc
	movs r0, #6
	bl VramMalloc
	str r0, [r5, #0xc]
	movs r2, #0
	movs r1, #0
	ldr r0, _0804F738 @ =0x0000035A
	strh r0, [r4, #0xc]
	ldr r0, _0804F73C @ =gStageData
	ldrb r0, [r0, #9]
	strb r0, [r4, #0x1a]
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
_0804F738: .4byte 0x0000035A
_0804F73C: .4byte gStageData
