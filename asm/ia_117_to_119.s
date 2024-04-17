.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_Interactable117_to_119
Task_Interactable117_to_119: @ 0x0804942C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0804944C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r7, [r5]
	movs r1, #0
_0804943E:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	bne _08049454
	ldr r0, _08049450 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804945E
	.align 2, 0
_0804944C: .4byte gCurTask
_08049450: .4byte gStageData
_08049454:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804945E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080494F8 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08049482
	cmp r1, #8
	beq _08049482
	cmp r1, #0x10
	bne _08049540
_08049482:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08049540
	ldr r1, [r4]
	ldr r0, _080494FC @ =PlayerCB_800DDD0
	cmp r1, r0
	beq _08049540
	ldr r0, [r4, #0x10]
	lsls r0, r0, #8
	ldr r1, [r4, #0x14]
	lsls r1, r1, #8
	lsrs r3, r1, #0x10
	movs r2, #0x10
	ldrsh r1, [r5, r2]
	asrs r2, r0, #0x10
	cmp r1, r2
	bgt _080494C4
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	cmp r0, r2
	blt _080494C4
	movs r2, #0x12
	ldrsh r1, [r5, r2]
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	cmp r1, r2
	bgt _080494C4
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	cmp r0, r2
	bge _0804950A
_080494C4:
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _08049540
	ldrb r1, [r5, #0x19]
	asrs r2, r6, #0x10
	adds r0, r1, #0
	asrs r0, r2
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08049540
	adds r0, r3, #0
	lsls r0, r2
	bics r1, r0
	strb r1, [r5, #0x19]
	ldr r1, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08049504
	ldr r0, _08049500 @ =0xFFFEFFFF
	ands r1, r0
	str r1, [r4, #4]
	b _08049540
	.align 2, 0
_080494F8: .4byte gPlayers
_080494FC: .4byte PlayerCB_800DDD0
_08049500: .4byte 0xFFFEFFFF
_08049504:
	orrs r1, r2
	str r1, [r4, #4]
	b _08049540
_0804950A:
	ldrb r0, [r5, #0x18]
	cmp r0, #1
	beq _0804952E
	cmp r0, #1
	bgt _0804951A
	cmp r0, #0
	beq _08049520
	b _08049540
_0804951A:
	cmp r0, #2
	beq _08049538
	b _08049540
_08049520:
	asrs r0, r6, #0x10
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r5, #0x19]
	orrs r1, r0
	strb r1, [r5, #0x19]
	b _08049540
_0804952E:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	b _0804953E
_08049538:
	ldr r0, [r4, #4]
	ldr r1, _08049574 @ =0xFFFEFFFF
	ands r0, r1
_0804953E:
	str r0, [r4, #4]
_08049540:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r6, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08049550
	b _0804943E
_08049550:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804956C
	ldrb r0, [r5, #0xa]
	strb r0, [r7]
	ldr r0, _08049578 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0804956C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049574: .4byte 0xFFFEFFFF
_08049578: .4byte gCurTask

	thumb_func_start CreateEntity_Interactable117
CreateEntity_Interactable117: @ 0x0804957C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Interactable117_to_119
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable118
CreateEntity_Interactable118: @ 0x080495A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Interactable117_to_119
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable119
CreateEntity_Interactable119: @ 0x080495D4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #2
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_Interactable117_to_119
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
    
	thumb_func_start TaskDestructor_Interactable117_to_119
TaskDestructor_Interactable117_to_119: @ 0x08049600
	bx lr
	.align 2, 0
