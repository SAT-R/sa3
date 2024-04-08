.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_Interactable094Main
Task_Interactable094Main: @ 0x080402AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0804036C @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	str r0, [sp, #0x10]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	mov sb, r0
	ldr r6, [r0]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #3
	mov r2, sb
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	ldrh r2, [r2, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	movs r2, #4
	ldrsb r2, [r6, r2]
	lsls r2, r2, #3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, r2
	lsls r2, r2, #0x10
	ldrb r3, [r6, #6]
	lsls r3, r3, #3
	lsrs r4, r2, #0x10
	str r4, [sp, #4]
	asrs r2, r2, #0x10
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	movs r2, #3
	ldrsb r2, [r6, r2]
	lsls r2, r2, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r2
	lsls r2, r2, #0x10
	ldrb r4, [r6, #5]
	lsls r3, r4, #3
	lsrs r7, r2, #0x10
	str r7, [sp]
	asrs r2, r2, #0x10
	adds r3, r2, r3
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #8]
	lsls r4, r4, #2
	adds r2, r2, r4
	adds r2, #4
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	bl sub_802C198
	cmp r0, #0
	bne _08040378
	ldr r0, _08040370 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08040374 @ =gPlayers
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r0, #0x85
	beq _0804035A
	movs r1, #0x91
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_8004F10
_0804035A:
	mov r1, sb
	ldrb r0, [r1, #0xa]
	strb r0, [r6]
	mov r2, r8
	ldr r0, [r2]
	bl TaskDestroy
	b _080404E8
	.align 2, 0
_0804036C: .4byte gCurTask
_08040370: .4byte gUnknown_030008A0
_08040374: .4byte gPlayers
_08040378:
	movs r1, #0
	ldr r3, _08040390 @ =0x0300000D
	ldr r4, [sp, #0x10]
	adds r3, r3, r4
	mov r8, r3
_08040382:
	lsls r0, r1, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _08040398
	ldr r0, _08040394 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _080403A2
	.align 2, 0
_08040390: .4byte 0x0300000D
_08040394: .4byte gUnknown_030008A0
_08040398:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_080403A2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080403E0 @ =gPlayers
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080403C8
	cmp r1, #8
	beq _080403C8
	cmp r1, #0x10
	beq _080403C8
	b _080404D8
_080403C8:
	adds r0, r5, #0
	bl sub_802C0D4
	adds r4, r0, #0
	cmp r4, #0
	beq _080403E4
	adds r0, r5, #0
	movs r1, #0x91
	lsls r1, r1, #1
	bl sub_8004F10
	b _080404D8
	.align 2, 0
_080403E0: .4byte gPlayers
_080403E4:
	ldr r0, [r5, #0x10]
	lsls r0, r0, #8
	ldr r1, [r5, #0x14]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	lsrs r2, r0, #0x10
	mov ip, r2
	asrs r3, r0, #0x10
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r3, r0
	ble _080404D0
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r3, r0
	bge _080404D0
	lsls r0, r1, #0x10
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r2, r0, #0x10
	cmp r0, r1
	ble _080404D0
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _080404D0
	mov r2, sb
	ldrb r6, [r2, #0xc]
	cmp r6, #0
	beq _0804044E
	movs r3, #0x30
	ldrsh r0, [r5, r3]
	cmp r0, #0x85
	bne _080404D8
	adds r0, r5, #0
	movs r1, #0x91
	lsls r1, r1, #1
	bl sub_8004F10
	adds r0, r5, #0
	bl sub_800E6CC
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #8
	str r0, [r5, #0x10]
	asrs r0, r7, #0x10
	add r0, r8
	strb r4, [r0]
	b _080404D8
_0804044E:
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	subs r1, r4, #4
	adds r2, r0, #0
	cmp r1, r3
	bgt _08040488
	adds r0, r4, #4
	cmp r0, r3
	blt _08040488
	movs r3, #0x30
	ldrsh r0, [r5, r3]
	cmp r0, #0x85
	beq _080404D8
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	ldr r1, _08040484 @ =sub_800A5B0
	bl sub_800D87C
	lsls r0, r4, #8
	str r0, [r5, #0x10]
	asrs r0, r7, #0x10
	add r0, r8
	strb r6, [r0]
	b _080404D8
	.align 2, 0
_08040484: .4byte sub_800A5B0
_08040488:
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r6, r2, #0x10
	movs r1, #2
	cmp r2, r0
	ble _08040496
	movs r1, #1
_08040496:
	adds r2, r1, #0
	asrs r0, r7, #0x10
	mov r1, r8
	adds r4, r1, r0
	ldrb r0, [r4]
	mov r1, sb
	adds r1, #0xd
	cmp r0, #0
	beq _080404C8
	cmp r0, r2
	beq _080404C8
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	ldr r1, _080404C4 @ =sub_800A5B0
	bl sub_800D87C
	lsls r0, r6, #8
	str r0, [r5, #0x10]
	movs r0, #0
	strb r0, [r4]
	b _080404D8
	.align 2, 0
_080404C4: .4byte sub_800A5B0
_080404C8:
	asrs r0, r7, #0x10
	adds r0, r1, r0
	strb r2, [r0]
	b _080404D8
_080404D0:
	asrs r0, r7, #0x10
	add r0, r8
	movs r1, #0
	strb r1, [r0]
_080404D8:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r7, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _080404E8
	b _08040382
_080404E8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable094
CreateEntity_Interactable094: @ 0x080404F8
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
	ldr r0, _08040560 @ =Task_Interactable094Main
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r2, #0
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r0, r8
	str r0, [r1]
	ldrb r0, [r0]
	strb r0, [r1, #0xa]
	strb r6, [r1, #0xb]
	mov r3, r8
	ldrb r0, [r3, #7]
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xd]
	strb r2, [r1, #0xe]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r3]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08040560: .4byte Task_Interactable094Main
