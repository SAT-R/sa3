.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Task_Interactable090Main
Task_Interactable090Main: @ 0x0803F3C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r7, #0
	ldr r0, _0803F3F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	mov r8, r0
	movs r6, #0
_0803F3DE:
	cmp r6, #0
	beq _0803F3F4
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803F3F8
	.align 2, 0
_0803F3F0: .4byte gCurTask
_0803F3F4:
	ldr r0, _0803F4A8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803F3F8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803F4AC @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803F41E
	cmp r1, #8
	beq _0803F41E
	adds r2, r6, #1
	cmp r1, #0x10
	bne _0803F470
_0803F41E:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r2, r6, #1
	cmp r0, #0
	bne _0803F470
	ldr r0, [r5, #0x1c]
	ldr r1, [r4, #0x10]
	cmp r0, r1
	bge _0803F470
	ldr r0, [r5, #0x20]
	cmp r0, r1
	ble _0803F470
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x14]
	cmp r0, r1
	bge _0803F470
	ldr r0, [r5, #0x18]
	cmp r0, r1
	ble _0803F470
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	lsls r0, r1, #5
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r4, #0x1c]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	lsls r0, r1, #5
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r4, #0x18]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	lsls r0, r1, #5
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r4, #0x1a]
	orrs r7, r2
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x18
_0803F470:
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0803F3DE
	cmp r7, #0
	bne _0803F49E
	ldr r0, [r5, #0xc]
	lsls r0, r0, #8
	ldr r1, [r5, #0x10]
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _0803F49E
	ldrb r0, [r5, #8]
	mov r1, r8
	strb r0, [r1]
	ldr r0, _0803F4B0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0803F49E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F4A8: .4byte gUnknown_030008A0
_0803F4AC: .4byte gUnknown_030015C0
_0803F4B0: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable090
CreateEntity_Interactable090: @ 0x0803F4B4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0803F54C @ =Task_Interactable090Main
	movs r2, #0x84
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x24
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	strh r4, [r3, #4]
	strh r5, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #8]
	mov r1, r8
	strb r1, [r3, #9]
	ldrb r1, [r6]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #8
	str r1, [r3, #0xc]
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	lsls r2, r2, #8
	str r2, [r3, #0x10]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r3, #0x1c]
	ldrb r0, [r6, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r3, #0x20]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r3, #0x14]
	ldrb r0, [r6, #6]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r3, #0x18]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F54C: .4byte Task_Interactable090Main
