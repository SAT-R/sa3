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
	adds r5, r1, r0     @ r5 = ia
	ldr r0, [r5]
	mov r8, r0          @ r8 = me
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
	ldr r0, _0803F4A8 @ =gStageData
	ldrb r1, [r0, #6]
_0803F3F8:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803F4AC @ =gPlayers
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
_0803F4A8: .4byte gStageData
_0803F4AC: .4byte gPlayers
_0803F4B0: .4byte gCurTask

.if 0
.endif
