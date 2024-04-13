.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_804B4E0
sub_804B4E0: @ 0x0804B4E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804B51C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1
	ldr r5, [r1]
	ldr r7, [r1, #0xc]
	ldr r6, [r1, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804B520
	mov r1, r8
	ldrb r0, [r1, #0xa]
	strb r0, [r5]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804B5EA
	.align 2, 0
_0804B51C: .4byte gCurTask
_0804B520:
	lsls r1, r6, #8
	movs r0, #4
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r5, #6]
	lsls r0, r0, #0xb
	add r0, sb
	mov sl, r0
	lsls r1, r7, #8
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r6, r1, r0
	ldrb r0, [r5, #5]
	lsls r0, r0, #0xb
	adds r7, r6, r0
	movs r1, #0
_0804B546:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0804B558
	ldr r0, _0804B554 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804B562
	.align 2, 0
_0804B554: .4byte gStageData
_0804B558:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804B562:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804B5C8 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804B586
	cmp r1, #8
	beq _0804B586
	cmp r1, #0x10
	bne _0804B5DC
_0804B586:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804B5DC
	ldr r1, [r4]
	ldr r0, _0804B5CC @ =sub_800E604
	cmp r1, r0
	beq _0804B5DC
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0804B5DC
	ldr r0, [r4, #0x10]
	cmp r0, r6
	ble _0804B5DC
	cmp r0, r7
	bge _0804B5DC
	ldr r0, [r4, #0x14]
	cmp r0, sb
	ble _0804B5DC
	cmp r0, sl
	bge _0804B5DC
	mov r1, r8
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	beq _0804B5D4
	adds r0, r4, #0
	ldr r1, _0804B5D0 @ =sub_800E5EC
	bl SetPlayerCallback
	b _0804B5DC
	.align 2, 0
_0804B5C8: .4byte gPlayers
_0804B5CC: .4byte sub_800E604
_0804B5D0: .4byte sub_800E5EC
_0804B5D4:
	adds r0, r4, #0
	ldr r1, _0804B5F8 @ =sub_800E5D0
	bl SetPlayerCallback
_0804B5DC:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804B546
_0804B5EA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B5F8: .4byte sub_800E5D0

	thumb_func_start sub_804B5FC
sub_804B5FC: @ 0x0804B5FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804B638 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r6, [r5]
	ldr r1, [r5, #0xc]
	mov r8, r1
	ldr r7, [r5, #0x10]
	mov r0, r8
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804B63C
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _0804B6D8
	.align 2, 0
_0804B638: .4byte gCurTask
_0804B63C:
	lsls r1, r7, #8
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	mov sb, r1
	ldrb r0, [r6, #6]
	lsls r0, r0, #0xb
	add r0, sb
	mov sl, r0
	mov r0, r8
	lsls r1, r0, #8
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r7, r1, r0
	ldrb r0, [r6, #5]
	lsls r0, r0, #0xb
	adds r6, r7, r0
	movs r1, #0
_0804B664:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0804B678
	ldr r0, _0804B674 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804B682
	.align 2, 0
_0804B674: .4byte gStageData
_0804B678:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804B682:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804B6E8 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804B6CA
	ldr r1, [r4]
	ldr r0, _0804B6EC @ =sub_800E604
	cmp r1, r0
	bne _0804B6CA
	ldr r0, [r4, #0x10]
	cmp r0, r7
	ble _0804B6CA
	cmp r0, r6
	bge _0804B6CA
	ldr r0, [r4, #0x14]
	cmp r0, sb
	ble _0804B6CA
	cmp r0, sl
	bge _0804B6CA
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	ldr r1, _0804B6F0 @ =0x00000257
	bl sub_8004F10
	adds r0, r4, #0
	bl sub_8006824
_0804B6CA:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804B664
_0804B6D8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B6E8: .4byte gPlayers
_0804B6EC: .4byte sub_800E604
_0804B6F0: .4byte 0x00000257

	thumb_func_start CreateEntity_Interactable127
CreateEntity_Interactable127: @ 0x0804B6F4
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
	ldr r0, _0804B774 @ =sub_804B4E0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804B778 @ =sub_804B7F8
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r0, r8
	str r0, [r2]
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	strb r6, [r2, #0xb]
	ldrb r1, [r2, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #0xc]
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #0x10]
	mov r0, r8
	ldrb r1, [r0, #7]
	movs r0, #1
	ands r0, r1
	strb r0, [r2, #0x14]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B774: .4byte sub_804B4E0
_0804B778: .4byte sub_804B7F8

	thumb_func_start CreateEntity_Interactable128
CreateEntity_Interactable128: @ 0x0804B77C
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
	ldr r0, _0804B7F0 @ =sub_804B5FC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804B7F4 @ =0x0804B7FD
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	strh r4, [r2, #4]
	strh r5, [r2, #6]
	mov r0, r8
	str r0, [r2]
	ldrb r0, [r0]
	strb r0, [r2, #0xa]
	strb r6, [r2, #0xb]
	ldrb r1, [r2, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #0xc]
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r1, r8
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B7F0: .4byte sub_804B5FC
_0804B7F4: .4byte sub_804B7FC

	thumb_func_start sub_804B7F8
sub_804B7F8: @ 0x0804B7F8
	bx lr
	.align 2, 0

	thumb_func_start sub_804B7FC
sub_804B7FC: @ 0x0804B7FC
	bx lr
	.align 2, 0
