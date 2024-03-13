.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable060
CreateEntity_Interactable060: @ 0x08035C38
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
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
	ldr r0, _08035C94 @ =sub_8035CA0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08035C98 @ =sub_8035C9C
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035C94: .4byte sub_8035CA0
_08035C98: .4byte sub_8035C9C

	thumb_func_start sub_8035C9C
sub_8035C9C: @ 0x08035C9C
	bx lr
	.align 2, 0

	thumb_func_start sub_8035CA0
sub_8035CA0: @ 0x08035CA0
	push {r4, r5, r6, lr}
	ldr r6, _08035CE4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r5, [r4]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r4, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08035CDE
	ldrb r0, [r4, #0xa]
	strb r0, [r5]
	ldr r0, [r6]
	bl TaskDestroy
_08035CDE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035CE4: .4byte gCurTask
