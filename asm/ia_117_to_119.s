.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8049370
sub_8049370: @ 0x08049370
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov sb, r0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r0, [sp, #0x20]
	mov r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08049424 @ =sub_804942C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08049428 @ =sub_8049600
	str r1, [sp]
	movs r1, #0x1c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	movs r1, #0
	mov sl, r1
	strh r4, [r3, #4]
	strh r5, [r3, #6]
	str r6, [r3]
	ldrb r0, [r6]
	strb r0, [r3, #0xa]
	mov r0, r8
	strb r0, [r3, #0xb]
	mov r1, sb
	strb r1, [r3, #0x18]
	ldrb r1, [r6]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	strh r1, [r3, #0xc]
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	strh r2, [r3, #0xe]
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r3, #0x10]
	ldrb r0, [r6, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r3, #0x14]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #3
	adds r2, r2, r0
	strh r2, [r3, #0x12]
	ldrb r0, [r6, #6]
	lsls r0, r0, #3
	adds r2, r2, r0
	strh r2, [r3, #0x16]
	mov r0, sb
	strb r0, [r3, #0x18]
	mov r1, sl
	strb r1, [r3, #0x19]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r6]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08049424: .4byte sub_804942C
_08049428: .4byte sub_8049600

	thumb_func_start sub_804942C
sub_804942C: @ 0x0804942C
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
	ldr r0, _080494FC @ =sub_800DDD0
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
_080494FC: .4byte sub_800DDD0
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
	bl sub_802C198
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
	bl sub_8049370
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
	bl sub_8049370
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
	bl sub_8049370
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
    
	thumb_func_start sub_8049600
sub_8049600: @ 0x08049600
	bx lr
	.align 2, 0
