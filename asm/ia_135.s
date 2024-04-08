.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_804C9A0
sub_804C9A0: @ 0x0804C9A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0804C9E8 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r6, [r5]
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	mov r8, r1
	movs r3, #0xe
	ldrsh r7, [r5, r3]
	mov r0, r8
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804C9F0
	ldr r0, _0804C9EC @ =0x00000262
	bl sub_8003E28
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	mov r5, sb
	ldr r0, [r5]
	bl TaskDestroy
	b _0804CB1C
	.align 2, 0
_0804C9E8: .4byte gCurTask
_0804C9EC: .4byte 0x00000262
_0804C9F0:
	movs r1, #4
	ldrsb r1, [r6, r1]
	lsls r1, r1, #3
	adds r1, r7, r1
	lsls r1, r1, #0x10
	ldrb r3, [r6, #6]
	lsls r0, r3, #3
	lsrs r2, r1, #0x10
	str r2, [sp]
	asrs r1, r1, #0x10
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	add r0, r8
	lsls r0, r0, #0x10
	ldrb r2, [r6, #5]
	lsls r2, r2, #3
	lsrs r5, r0, #0x10
	mov sb, r5
	asrs r0, r0, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r3, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r1, #0
_0804CA32:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _0804CA44
	ldr r0, _0804CA40 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804CA4E
	.align 2, 0
_0804CA40: .4byte gStageData
_0804CA44:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804CA4E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804CAC0 @ =gPlayers
	adds r4, r0, r1
	ldr r1, [r4]
	ldr r0, _0804CAC4 @ =sub_8008A8C
	cmp r1, r0
	beq _0804CB0E
	ldr r0, _0804CAC8 @ =sub_800ED80
	cmp r1, r0
	beq _0804CB0E
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804CB0E
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	ldr r1, [r4, #0x14]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	asrs r2, r0, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0804CB0E
	mov r5, r8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804CB0E
	lsls r0, r1, #0x10
	ldr r2, [sp]
	lsls r1, r2, #0x10
	asrs r2, r0, #0x10
	adds r3, r0, #0
	cmp r3, r1
	ble _0804CB0E
	mov r5, sl
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804CB0E
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r2, r1
	bge _0804CACC
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0804CB0E
	b _0804CAD4
	.align 2, 0
_0804CAC0: .4byte gPlayers
_0804CAC4: .4byte sub_8008A8C
_0804CAC8: .4byte sub_800ED80
_0804CACC:
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _0804CB0E
_0804CAD4:
	ldr r1, [r4]
	ldr r0, _0804CAF0 @ =sub_800A98C
	cmp r1, r0
	beq _0804CB0E
	asrs r0, r5, #0x10
	lsls r1, r0, #8
	str r1, [r4, #0x74]
	asrs r1, r3, #0x10
	cmp r1, r0
	bge _0804CAF4
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0x80
	b _0804CAFA
	.align 2, 0
_0804CAF0: .4byte sub_800A98C
_0804CAF4:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0
_0804CAFA:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	asrs r0, r5, #8
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_800A90C
_0804CB0E:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r6, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804CA32
_0804CB1C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable135
CreateEntity_Interactable135: @ 0x0804CB2C
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
	ldr r0, _0804CB9C @ =sub_804C9A0
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804CBA0 @ =sub_804CBA4
	str r1, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	strh r4, [r1, #4]
	strh r5, [r1, #6]
	mov r0, r8
	str r0, [r1]
	ldrb r0, [r0]
	strb r0, [r1, #0xa]
	strb r6, [r1, #0xb]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r1, #0xe]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r2]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804CB9C: .4byte sub_804C9A0
_0804CBA0: .4byte sub_804CBA4

    thumb_func_start sub_804CBA4
sub_804CBA4:
    bx lr
    .align 2 , 0
