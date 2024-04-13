.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable095
CreateEntity_Interactable095: @ 0x08040564
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov sb, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0804064C @ =sub_8040664
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08040650 @ =sub_804087C
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov sl, r0
	movs r4, #0xc0
	lsls r4, r4, #0x12
	add r4, sl
	ldr r0, _08040654 @ =0x03000030
	add r0, sl
	movs r1, #0
	mov ip, r1
	strh r5, [r4, #4]
	strh r6, [r4, #6]
	mov r2, sb
	str r2, [r4]
	ldrb r1, [r2]
	strb r1, [r4, #8]
	mov r1, r8
	strb r1, [r4, #9]
	ldrb r2, [r2]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	lsls r2, r2, #8
	str r2, [r4, #0xc]
	mov r5, sb
	ldrb r3, [r5, #1]
	lsls r3, r3, #3
	lsls r6, r6, #8
	adds r3, r3, r6
	lsls r3, r3, #8
	str r3, [r4, #0x10]
	movs r1, #3
	ldrsb r1, [r5, r1]
	lsls r1, r1, #0xb
	adds r2, r2, r1
	str r2, [r4, #0x1c]
	ldrb r1, [r5, #5]
	lsls r1, r1, #0xb
	adds r2, r2, r1
	str r2, [r4, #0x20]
	movs r1, #4
	ldrsb r1, [r5, r1]
	lsls r1, r1, #0xb
	adds r3, r3, r1
	str r3, [r4, #0x14]
	ldrb r1, [r5, #6]
	lsls r1, r1, #0xb
	adds r3, r3, r1
	str r3, [r4, #0x18]
	ldr r1, _08040658 @ =0x03000024
	add sl, r1
	mov r5, ip
	mov r2, sl
	strb r5, [r2]
	ldr r1, _0804065C @ =gStageData
	ldrb r2, [r1, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r3, _08040660 @ =gPlayers
	adds r1, r1, r3
	str r1, [r4, #0x28]
	adds r1, #0x2b
	ldrb r2, [r1]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1e
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r3
	str r1, [r4, #0x2c]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r5, sb
	strb r1, [r5]
	bl sub_80407AC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804064C: .4byte sub_8040664
_08040650: .4byte sub_804087C
_08040654: .4byte 0x03000030
_08040658: .4byte 0x03000024
_0804065C: .4byte gStageData
_08040660: .4byte gPlayers

	thumb_func_start sub_8040664
sub_8040664: @ 0x08040664
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0804073C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	mov r8, r0
	movs r7, #0
	ldr r0, _08040740 @ =0x03000024
	adds r6, r1, r0
_08040680:
	lsls r0, r7, #2
	adds r1, r5, #0
	adds r1, #0x28
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080406A4
	cmp r1, #8
	beq _080406A4
	adds r2, r5, #0
	adds r2, #0x24
	cmp r1, #0x10
	bne _08040762
_080406A4:
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08040754
	ldr r3, [r4]
	ldr r0, _08040744 @ =PlayerCB_8008A8C
	adds r2, r5, #0
	adds r2, #0x24
	cmp r3, r0
	beq _08040762
	ldr r0, _08040748 @ =PlayerCB_800ED80
	cmp r3, r0
	beq _08040762
	ldr r0, [r5, #0x1c]
	ldr r1, [r4, #0x10]
	cmp r0, r1
	bge _08040754
	ldr r0, [r5, #0x20]
	cmp r0, r1
	ble _08040754
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x14]
	cmp r0, r1
	bge _08040754
	ldr r0, [r5, #0x18]
	cmp r0, r1
	ble _08040754
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	asrs r0, r0, #4
	strh r0, [r4, #0x18]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	asrs r0, r0, #4
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0804070E
	ldr r1, _0804074C @ =sub_800EB5C
	cmp r3, r1
	beq _0804070E
	movs r0, #0xb
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl SetPlayerCallback
_0804070E:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08040730
	ldr r0, _08040750 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08040730
	adds r0, r4, #0
	bl sub_8006CF0
	adds r0, r4, #0
	movs r1, #0x74
	bl sub_8004E98
_08040730:
	movs r0, #1
	lsls r0, r7
	ldrb r1, [r6]
	orrs r0, r1
	b _0804075C
	.align 2, 0
_0804073C: .4byte gCurTask
_08040740: .4byte 0x03000024
_08040744: .4byte PlayerCB_8008A8C
_08040748: .4byte PlayerCB_800ED80
_0804074C: .4byte sub_800EB5C
_08040750: .4byte gStageData
_08040754:
	movs r1, #1
	lsls r1, r7
	ldrb r0, [r6]
	bics r0, r1
_0804075C:
	strb r0, [r6]
	adds r2, r5, #0
	adds r2, #0x24
_08040762:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _08040680
	ldrb r0, [r2]
	cmp r0, #0
	bne _0804079C
	ldr r0, [r5, #0xc]
	lsls r0, r0, #8
	ldr r1, [r5, #0x10]
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl IsPointInScreenRect
	cmp r0, #0
	bne _080407A0
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _08040798 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080407A0
	.align 2, 0
_08040798: .4byte gCurTask
_0804079C:
	bl sub_8040814
_080407A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80407AC
sub_80407AC: @ 0x080407AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080407C8 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _080407D0
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _080407CC @ =0x000003E7
	b _080407DC
	.align 2, 0
_080407C8: .4byte gStageData
_080407CC: .4byte 0x000003E7
_080407D0:
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _08040810 @ =0x000003B1
_080407DC:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040810: .4byte 0x000003B1

	thumb_func_start sub_8040814
sub_8040814: @ 0x08040814
	push {r4, r5, r6, r7, lr}
	ldr r0, _08040874 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0x30
	adds r4, r1, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r5, #0
	ldr r7, _08040878 @ =gCamera
_08040830:
	lsls r1, r5, #2
	adds r0, r6, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r0, [r0]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08040864
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r2, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_08040864:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08040830
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040874: .4byte gCurTask
_08040878: .4byte gCamera

	thumb_func_start sub_804087C
sub_804087C: @ 0x0804087C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x30]
	bl VramFree
	pop {r0}
	bx r0
