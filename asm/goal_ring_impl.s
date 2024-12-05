.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_GoalRingImplInit
Task_GoalRingImplInit: @ 0x08046484
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0804655C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r2, _08046560 @ =0x0300000C
	adds r2, r2, r0
	mov r8, r2
	ldr r0, [r1, #0x64]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	str r6, [sp, #8]
	ldr r0, [r1, #0x68]
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov sb, r4
	bl sub_80467F0
	ldr r0, _08046564 @ =gStageData
	mov sl, r0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _08046568 @ =gPlayers
	adds r5, r0, r2
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r7, r0, r2
	mov r1, sl
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08046574
	ldr r0, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	ands r0, r2
	cmp r0, #0
	bne _0804650E
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08046538
_0804650E:
	ldr r3, [r7, #4]
	mov r0, sb
	ands r3, r0
	cmp r3, #0
	bne _08046530
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r7, [sp]
	str r3, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08046538
_08046530:
	mov r1, sl
	ldrb r0, [r1, #4]
	cmp r0, #5
	bne _080465E0
_08046538:
	ldr r1, _0804656C @ =0x00000207
	adds r0, r5, #0
	bl Player_PlaySong
	adds r0, r5, #0
	bl sub_8016F28
	ldr r1, _08046564 @ =gStageData
	movs r0, #5
	strb r0, [r1, #4]
	ldr r1, _08046570 @ =sub_800613C
	adds r0, r5, #0
	bl SetPlayerCallback
	bl sub_80469AC
	b _080465E0
	.align 2, 0
_0804655C: .4byte gCurTask
_08046560: .4byte 0x0300000C
_08046564: .4byte gStageData
_08046568: .4byte gPlayers
_0804656C: .4byte 0x00000207
_08046570: .4byte sub_800613C
_08046574:
	ldr r3, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r3, r0
	cmp r3, #0
	bne _080465E0
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	str r3, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _080465E0
	ldr r1, _080465CC @ =0x00000207
	adds r0, r5, #0
	bl Player_PlaySong
	adds r0, r5, #0
	bl sub_8016F28
	movs r0, #5
	mov r1, sl
	strb r0, [r1, #4]
	ldrb r0, [r1, #3]
	cmp r0, #4
	beq _080465D4
	ldr r4, _080465D0 @ =sub_800613C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r7, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	b _080465DC
	.align 2, 0
_080465CC: .4byte 0x00000207
_080465D0: .4byte sub_800613C
_080465D4:
	ldr r1, _080465F0 @ =Player_8005BD4
	adds r0, r5, #0
	bl SetPlayerCallback
_080465DC:
	bl sub_80469AC
_080465E0:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080465F0: .4byte Player_8005BD4

	thumb_func_start sub_80465F4
sub_80465F4: @ 0x080465F4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08046630 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08046634 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x54
	adds r3, r0, r1
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	bgt _08046614
	b _08046710
_08046614:
	ldr r7, _08046638 @ =gStageData
	ldrb r0, [r7, #3]
	cmp r0, #4
	bne _08046680
	movs r5, #0
	ldr r6, _0804663C @ =gPlayers
_08046620:
	lsls r0, r5, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _08046640
	ldr r0, _08046638 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804664A
	.align 2, 0
_08046630: .4byte gCurTask
_08046634: .4byte 0x0300000C
_08046638: .4byte gStageData
_0804663C: .4byte gPlayers
_08046640:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804664A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	adds r0, r4, #0
	ldr r1, _08046678 @ =Player_8005E80
	bl SetPlayerCallback
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08046620
	ldr r0, _0804667C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08046754
	.align 2, 0
_08046678: .4byte Player_8005E80
_0804667C: .4byte gCurTask
_08046680:
	ldrb r1, [r7, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _080466F4 @ =gPlayers
	adds r4, r0, r2
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r6, r0, #0x1c
	adds r4, #0x2b
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r5, r0, #0x1c
	bl sub_8003D2C
	ldr r1, _080466F8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080466FC @ =gBackgroundsCopyQueueCursor
	ldr r0, _08046700 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08046704 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08046708 @ =gVramGraphicsCopyCursor
	ldr r0, _0804670C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	ldrb r1, [r7, #6]
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bls _080466EA
	adds r0, r6, #0
	adds r6, r5, #0
	adds r5, r0, #0
_080466EA:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_8053128
	b _08046754
	.align 2, 0
_080466F4: .4byte gPlayers
_080466F8: .4byte 0x0000FFFF
_080466FC: .4byte gBackgroundsCopyQueueCursor
_08046700: .4byte gBackgroundsCopyQueueIndex
_08046704: .4byte gUnknown_03006840
_08046708: .4byte gVramGraphicsCopyCursor
_0804670C: .4byte gVramGraphicsCopyQueueIndex
_08046710:
	movs r5, #0
	movs r6, #0x10
	rsbs r6, r6, #0
	ldr r4, _0804675C @ =0x0000FFF0
_08046718:
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	ldrh r0, [r2, #0x12]
	subs r0, r0, r1
	strh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bge _0804672E
	strh r4, [r2, #0x12]
_0804672E:
	ldrb r1, [r2, #0x1c]
	cmp r1, #0x3f
	bhi _0804673E
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, r1, r0
	strb r0, [r2, #0x1c]
_0804673E:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r2, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08046718
	bl sub_80469E0
_08046754:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804675C: .4byte 0x0000FFF0

	thumb_func_start sub_8046760
sub_8046760: @ 0x08046760
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r6, #0
	movs r5, #0
	movs r0, #0xed
	lsls r0, r0, #2
	mov sl, r0
	mov r0, sl
	strh r0, [r4, #0xc]
	strb r6, [r4, #0x1a]
	movs r7, #0xc0
	lsls r7, r7, #3
	strh r7, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	mov sb, r0
	mov r0, sb
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r4, #0x28
	movs r0, #6
	bl VramMalloc
	str r0, [r4]
	mov r0, sl
	strh r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0x1a]
	strh r7, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	subs r0, #9
	strb r0, [r4, #0x1b]
	mov r0, sb
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	mov r0, r8
	str r0, [r4, #0x20]
	movs r0, #0x82
	lsls r0, r0, #0xb
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80467F0
sub_80467F0: @ 0x080467F0
	push {r4, r5, r6, r7, lr}
	ldr r7, _0804681C @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r6, [r5]
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x68]
	bl IsWorldPtActive
	cmp r0, #0
	bne _08046820
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	ldr r0, [r7]
	bl TaskDestroy
	b _0804685A
	.align 2, 0
_0804681C: .4byte gCurTask
_08046820:
	ldr r0, [r5, #0x64]
	ldr r2, _08046860 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [r5, #0x68]
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r5, #0
_08046838:
	strh r7, [r4, #0x10]
	strh r6, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08046838
_0804685A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046860: .4byte gCamera

	thumb_func_start CreateGoalRing
CreateGoalRing: @ 0x08046864
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, _080468D4 @ =Task_GoalRingImplInit
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080468D8 @ =Task_GoalRingImpl
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0xc
	adds r2, r1, r0
	str r4, [r3, #0x5c]
	adds r0, #0x54
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	str r6, [r3, #0x64]
	str r5, [r3, #0x68]
	movs r1, #0
_0804689E:
	strh r6, [r2, #0x10]
	strh r5, [r2, #0x12]
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r2, #0x28
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804689E
	adds r0, r3, #0
	adds r0, #0xc
	bl sub_8046760
	ldr r0, _080468DC @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bne _080468C8
	ldr r0, _080468E0 @ =sub_8046900
	str r0, [r7, #8]
_080468C8:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080468D4: .4byte Task_GoalRingImplInit
_080468D8: .4byte Task_GoalRingImpl
_080468DC: .4byte gStageData
_080468E0: .4byte sub_8046900

	thumb_func_start Task_GoalRingImpl
Task_GoalRingImpl: @ 0x080468E4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8046900
sub_8046900: @ 0x08046900
	push {r4, lr}
	ldr r4, _08046920 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08046924
	adds r0, r2, #0
	bl TaskDestroy
	b _0804693C
	.align 2, 0
_08046920: .4byte gCurTask
_08046924:
	cmp r0, #2
	bne _08046938
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08046938
	ldr r1, [r4]
	ldr r0, _08046944 @ =sub_8046948
	str r0, [r1, #8]
_08046938:
	bl sub_80467F0
_0804693C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046944: .4byte sub_8046948

	thumb_func_start sub_8046948
sub_8046948: @ 0x08046948
	push {r4, r5, lr}
	ldr r5, _08046974 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804696A
	movs r0, #0
	strh r0, [r4, #8]
	ldr r1, [r5]
	ldr r0, _08046978 @ =sub_804697C
	str r0, [r1, #8]
_0804696A:
	bl sub_80467F0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08046974: .4byte gCurTask
_08046978: .4byte sub_804697C

	thumb_func_start sub_804697C
sub_804697C: @ 0x0804697C
	push {lr}
	ldr r0, _080469A4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	adds r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0804699C
	ldr r0, _080469A8 @ =Task_GoalRingImplInit
	str r0, [r2, #8]
_0804699C:
	bl sub_80467F0
	pop {r0}
	bx r0
	.align 2, 0
_080469A4: .4byte gCurTask
_080469A8: .4byte Task_GoalRingImplInit

	thumb_func_start sub_80469AC
sub_80469AC: @ 0x080469AC
	ldr r3, _080469D0 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r0, _080469D4 @ =0x03000060
	adds r2, r1, r0
	movs r0, #0
	strh r0, [r2]
	ldr r0, _080469D8 @ =0x0300000C
	adds r1, r1, r0
	movs r0, #4
	strb r0, [r1, #0x1a]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	ldr r1, [r3]
	ldr r0, _080469DC @ =sub_80465F4
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_080469D0: .4byte gCurTask
_080469D4: .4byte 0x03000060
_080469D8: .4byte 0x0300000C
_080469DC: .4byte sub_80465F4

	thumb_func_start sub_80469E0
sub_80469E0: @ 0x080469E0
	push {r4, r5, lr}
	ldr r0, _08046A38 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08046A3C @ =0x0300000C
	adds r4, r0, r1
	ldrh r2, [r4, #0x12]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08046A32
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08046A32
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	bgt _08046A32
	movs r5, #0
_08046A14:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08046A14
_08046A32:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08046A38: .4byte gCurTask
_08046A3C: .4byte 0x0300000C
