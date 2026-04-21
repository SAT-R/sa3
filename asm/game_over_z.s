.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8003F8C
sub_8003F8C: @ 0x08003F8C
	push {r4, r5, lr}
	ldr r0, _08003FC4 @ =gStageData
	ldrh r2, [r0, #0xe]
	movs r1, #0
	str r1, [r0, #0x1c]
	adds r0, #0x21
	strb r1, [r0]
	movs r0, #0
	lsls r5, r2, #0x10
_08003F9E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	asrs r0, r5, #0x10
	adds r1, r4, #0
	bl sub_80040D8
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _08003F9E
	bl m4aMPlayAllStop
	bl sub_8003FC8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003FC4: .4byte gStageData

	thumb_func_start sub_8003FC8
sub_8003FC8: @ 0x08003FC8
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _08003FE4 @ =gCamera
	ldr r2, _08003FE8 @ =0x0500001B
	mov r0, sp
	bl CpuSet
	bl sub_80026BC
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08003FE4: .4byte gCamera
_08003FE8: .4byte 0x0500001B

	thumb_func_start Task_60_8003FEC
Task_60_8003FEC: @ 0x08003FEC
	push {r4, r5, r6, lr}
	ldr r0, _08004010 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r6, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _08004014 @ =0x01A30000
	cmp r0, r1
	bls _08004018
	bl sub_8003CA4
	b _08004048
	.align 2, 0
_08004010: .4byte gCurTask
_08004014: .4byte 0x01A30000
_08004018:
	ldrh r5, [r2]
	cmp r5, #0x78
	bls _08004020
	movs r5, #0x78
_08004020:
	ldr r0, _08004050 @ =0x03000004
	adds r4, r6, r0
	strh r5, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _08004054 @ =0x0300002C
	adds r4, r6, r0
	movs r0, #0xf0
	subs r0, r0, r5
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08004048:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004050: .4byte 0x03000004
_08004054: .4byte 0x0300002C

	thumb_func_start Task_8004058
Task_8004058: @ 0x08004058
	push {lr}
	ldr r0, _0800409C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _080040A0 @ =0x03000054
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08004098
	ldr r1, _080040A4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080040A8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080040AC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080040B0 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080040B4 @ =gVramGraphicsCopyCursor
	ldr r0, _080040B8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_8001E84
	bl sub_80260F0
	bl LaunchGameIntro
_08004098:
	pop {r0}
	bx r0
	.align 2, 0
_0800409C: .4byte gCurTask
_080040A0: .4byte 0x03000054
_080040A4: .4byte 0x0000FFFF
_080040A8: .4byte gBackgroundsCopyQueueCursor
_080040AC: .4byte gBackgroundsCopyQueueIndex
_080040B0: .4byte gBgSpritesCount
_080040B4: .4byte gVramGraphicsCopyCursor
_080040B8: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start TaskDestructor_80040BC
TaskDestructor_80040BC: @ 0x080040BC
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #4]
	bl VramFree
	ldr r0, [r4, #0x2c]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80040D8
sub_80040D8: @ 0x080040D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r3, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r3
	lsls r1, r1, #4
	ldr r0, _08004170 @ =gPlayers
	adds r1, r1, r0
	adds r7, r1, #0
	adds r7, #0x2b
	ldrb r4, [r7]
	lsls r0, r4, #0x1e
	lsrs r0, r0, #0x1e
	mov r8, r0
	movs r0, #0x2a
	adds r0, r0, r1
	mov sb, r0
	ldrb r6, [r0]
	lsls r6, r6, #0x1c
	lsrs r6, r6, #0x1c
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1d
	movs r0, #0
	str r0, [sp]
	ldr r2, _08004174 @ =0x05000054
	mov r0, sp
	str r3, [sp, #4]
	bl CpuSet
	ldrb r1, [r7]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r7]
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	mov r1, sb
	strb r0, [r1]
	lsls r4, r4, #2
	ldrb r1, [r7]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r7]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, #0
	ldr r3, [sp, #4]
	adds r1, r3, #0
	bl sub_8013D70
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004170: .4byte gPlayers
_08004174: .4byte 0x05000054
