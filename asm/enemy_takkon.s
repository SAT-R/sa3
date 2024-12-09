.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_805B3AC
sub_805B3AC: @ 0x0805B3AC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x18
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x24
	str r0, [r4, #0x24]
	ldr r1, _0805B428 @ =gUnknown_080D1F0C
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0805B42C @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805B416
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805B416:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B428: .4byte gUnknown_080D1F0C
_0805B42C: .4byte gCamera

	thumb_func_start Task_Takkon
Task_Takkon: @ 0x0805B430
	push {r4, r5, r6, lr}
	ldr r5, _0805B450 @ =gCurTask
	ldr r0, [r5]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_805B844
	cmp r0, #1
	bne _0805B454
	ldr r0, [r5]
	bl TaskDestroy
	b _0805B4DC
	.align 2, 0
_0805B450: .4byte gCurTask
_0805B454:
	adds r0, r4, #0
	bl sub_805B77C
	ldr r0, _0805B498 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805B4A8
	cmp r1, #4
	beq _0805B4A8
	adds r0, r4, #0
	bl sub_805B738
	adds r0, r4, #0
	bl sub_805B7C0
	cmp r0, #1
	bne _0805B4A8
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0805B4A8
	ldr r0, _0805B49C @ =0x03000024
	adds r2, r6, r0
	ldr r1, _0805B4A0 @ =gUnknown_080D1F0C
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r1, [r5]
	ldr r0, _0805B4A4 @ =sub_805B4E4
	str r0, [r1, #8]
	b _0805B4DC
	.align 2, 0
_0805B498: .4byte gStageData
_0805B49C: .4byte 0x03000024
_0805B4A0: .4byte gUnknown_080D1F0C
_0805B4A4: .4byte sub_805B4E4
_0805B4A8:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _0805B4B6
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _0805B4DC
_0805B4B6:
	adds r2, r4, #0
	adds r2, #0x24
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0805B4D4
	ldr r0, _0805B4D0 @ =0xFFFFFBFF
	ands r1, r0
	b _0805B4D6
	.align 2, 0
_0805B4D0: .4byte 0xFFFFFBFF
_0805B4D4:
	orrs r1, r3
_0805B4D6:
	str r1, [r2, #8]
	movs r0, #0
	strb r0, [r4, #6]
_0805B4DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B4E4
sub_805B4E4: @ 0x0805B4E4
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805B50C @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_805B77C
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_805B844
	cmp r0, #1
	bne _0805B510
	ldr r0, [r7]
	bl TaskDestroy
	b _0805B550
	.align 2, 0
_0805B50C: .4byte gCurTask
_0805B510:
	ldr r0, _0805B558 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805B550
	cmp r1, #4
	beq _0805B550
	cmp r6, #0
	bne _0805B550
	ldr r0, _0805B55C @ =0x03000024
	adds r2, r5, r0
	ldr r1, _0805B560 @ =gUnknown_080D1F0C
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	movs r0, #1
	strb r0, [r4, #6]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0xa]
	bl sub_805B894
	ldr r1, [r7]
	ldr r0, _0805B564 @ =Task_Takkon
	str r0, [r1, #8]
_0805B550:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B558: .4byte gStageData
_0805B55C: .4byte 0x03000024
_0805B560: .4byte gUnknown_080D1F0C
_0805B564: .4byte Task_Takkon

	thumb_func_start sub_805B568
sub_805B568: @ 0x0805B568
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xc
	str r1, [r4, #0xc]
	ldr r2, _0805B5C8 @ =gUnknown_080D1F1C
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r3, _0805B5CC @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B5C8: .4byte gUnknown_080D1F1C
_0805B5CC: .4byte gCamera

	thumb_func_start sub_805B5D0
sub_805B5D0: @ 0x0805B5D0
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _0805B65C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _0805B660 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805B5FA
	cmp r1, #4
	beq _0805B5FA
	adds r0, r4, #0
	bl sub_805B91C
_0805B5FA:
	adds r0, r4, #0
	bl sub_805B928
	adds r0, r4, #0
	bl sub_805B670
	cmp r0, #1
	bne _0805B60C
	movs r5, #1
_0805B60C:
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldrh r2, [r4]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldrh r2, [r4, #2]
	lsls r2, r2, #8
	adds r0, r0, r2
	movs r6, #0
	str r6, [sp]
	ldr r2, _0805B664 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	cmp r0, #0
	bge _0805B636
	movs r5, #1
_0805B636:
	cmp r5, #1
	bne _0805B652
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0805B668 @ =gUnknown_080D1F1C
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r6, [r1, #8]
	ldr r0, _0805B65C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805B66C @ =sub_805B8EC
	str r0, [r1, #8]
_0805B652:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B65C: .4byte gCurTask
_0805B660: .4byte gStageData
_0805B664: .4byte sub_805217C
_0805B668: .4byte gUnknown_080D1F1C
_0805B66C: .4byte sub_805B8EC

	thumb_func_start sub_805B670
sub_805B670: @ 0x0805B670
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r3, r0, #0
	movs r4, #0
	ldr r0, [r3, #4]
	asrs r7, r0, #8
	ldr r0, [r3, #8]
	asrs r6, r0, #8
	ldrh r0, [r3]
	lsls r0, r0, #8
	adds r7, r7, r0
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r6, r6, r0
	movs r0, #0xc
	adds r0, r0, r3
	mov r8, r0
	adds r1, r3, #0
	adds r1, #0x38
	movs r0, #0xfd
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xfc
	strb r0, [r1]
	adds r1, #1
	movs r0, #3
	strb r0, [r1]
	adds r1, #1
	movs r0, #4
	strb r0, [r1]
	subs r0, #7
	mov r1, r8
	str r0, [r1, #0x28]
	movs r5, #0
_0805B6B8:
	cmp r5, #0
	bne _0805B6C8
	ldr r0, _0805B6C4 @ =gStageData
	ldrb r1, [r0, #6]
	b _0805B6D2
	.align 2, 0
_0805B6C4: .4byte gStageData
_0805B6C8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805B6D2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805B71C @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0805B720
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805B720
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805B718
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805B718:
	movs r0, #1
	b _0805B72C
	.align 2, 0
_0805B71C: .4byte gPlayers
_0805B720:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805B6B8
	movs r0, #0
_0805B72C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805B738
sub_805B738: @ 0x0805B738
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805B75E
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	bge _0805B772
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r2, #0x14]
	cmp r0, r1
	ble _0805B772
	b _0805B770
_0805B75E:
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x1c]
	cmp r0, r1
	blt _0805B772
	ldr r3, _0805B778 @ =0xFFFFFF00
	adds r0, r0, r3
	str r0, [r2, #0x14]
	cmp r0, r1
	bge _0805B772
_0805B770:
	str r1, [r2, #0x14]
_0805B772:
	pop {r0}
	bx r0
	.align 2, 0
_0805B778: .4byte 0xFFFFFF00

	thumb_func_start sub_805B77C
sub_805B77C: @ 0x0805B77C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x24
	ldr r2, [r0, #0x14]
	asrs r2, r2, #8
	ldrh r1, [r0, #8]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805B7BC @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805B7BC: .4byte gCamera

	thumb_func_start sub_805B7C0
sub_805B7C0: @ 0x0805B7C0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r6, #0x24
	ldr r1, [r0, #0x14]
	asrs r5, r1, #8
	ldrh r0, [r0, #8]
	lsls r0, r0, #8
	adds r5, r5, r0
	movs r4, #0
	b _0805B7FE
_0805B7D4:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805B7E8
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r5
	b _0805B7EE
_0805B7E8:
	ldr r0, [r2, #0x10]
	asrs r0, r0, #8
	subs r0, r5, r0
_0805B7EE:
	subs r0, #1
	cmp r0, #0x62
	bhi _0805B7F8
	movs r0, #1
	b _0805B810
_0805B7F8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0805B7FE:
	cmp r4, #1
	bhi _0805B80E
	adds r0, r4, #0
	bl sub_805CD20
	adds r2, r0, #0
	cmp r2, #0
	bne _0805B7D4
_0805B80E:
	movs r0, #0
_0805B810:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805B818
sub_805B818: @ 0x0805B818
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x24
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x14]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #8]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805B844
sub_805B844: @ 0x0805B844
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805B818
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x24
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #8]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start TaskDestructor_Takkon
TaskDestructor_Takkon: @ 0x0805B880
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x24]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_805B894
sub_805B894: @ 0x0805B894
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0805B8E0 @ =sub_805B5D0
	ldr r2, _0805B8E4 @ =0x00004040
	ldr r1, _0805B8E8 @ =sub_805B96C
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r6, [r0, #4]
	mov r1, r8
	str r1, [r0, #8]
	strh r4, [r0]
	strh r5, [r0, #2]
	bl sub_805B568
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B8E0: .4byte sub_805B5D0
_0805B8E4: .4byte 0x00004040
_0805B8E8: .4byte sub_805B96C

	thumb_func_start sub_805B8EC
sub_805B8EC: @ 0x0805B8EC
	push {r4, r5, r6, lr}
	ldr r6, _0805B918 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_805B928
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805B670
	cmp r5, #0
	bne _0805B912
	ldr r0, [r6]
	bl TaskDestroy
_0805B912:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B918: .4byte gCurTask

	thumb_func_start sub_805B91C
sub_805B91C: @ 0x0805B91C
	ldr r1, [r0, #8]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_805B928
sub_805B928: @ 0x0805B928
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0xc
	ldr r2, [r0, #4]
	asrs r2, r2, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805B968 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #8]
	asrs r1, r1, #8
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805B968: .4byte gCamera

	thumb_func_start sub_805B96C
sub_805B96C: @ 0x0805B96C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
