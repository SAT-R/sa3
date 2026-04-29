.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8052E30
sub_8052E30: @ 0x08052E30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08052F18 @ =Task_DemoPlaySplashText
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08052F1C @ =TaskDestructor_DemoPlaySplashText
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	movs r0, #0
	mov sl, r0
	movs r5, #0
	movs r0, #0xe1
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r2, _08052F20 @ =0x03000062
	adds r0, r4, r2
	strh r5, [r0]
	subs r2, #2
	adds r0, r4, r2
	strh r5, [r0]
	strh r5, [r1, #2]
	ldr r0, _08052F24 @ =0x03000004
	adds r7, r4, r0
	ldr r0, _08052F28 @ =0x06013800
	str r0, [r7]
	ldr r2, _08052F2C @ =gUnknown_080D1C30
	ldr r1, _08052F30 @ =gStageData
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	movs r6, #0x78
	strh r6, [r7, #0x10]
	strh r6, [r7, #0x12]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x16]
	ldr r0, _08052F34 @ =0x0000FFFF
	strh r0, [r7, #0x18]
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	mov sb, r2
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r0, #0xf
	strb r0, [r7, #0x1f]
	str r5, [r7, #8]
	subs r2, #0x11
	mov r8, r2
	str r2, [r7, #0x20]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _08052F38 @ =0x0300002C
	adds r7, r4, r0
	movs r0, #0x18
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08052F3C @ =0x00000594 @ ANIM_DEMO_PLAY
	strh r0, [r7, #0xc]
	strh r6, [r7, #0x10]
	movs r0, #0x60
	strh r0, [r7, #0x12]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x16]
	subs r0, #0x61
	strh r0, [r7, #0x18]
	mov r2, sl
	strb r2, [r7, #0x1a]
	strb r0, [r7, #0x1b]
	mov r0, sb
	strb r0, [r7, #0x1c]
	strb r2, [r7, #0x1f]
	str r5, [r7, #8]
	mov r2, r8
	str r2, [r7, #0x20]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _08052F40 @ =0x03000054
	adds r4, r4, r0
	strh r5, [r4]
	movs r0, #1
	strh r0, [r4, #2]
	strh r5, [r4, #4]
	movs r0, #0x80
	strh r0, [r4, #6]
	movs r0, #0xbf
	strh r0, [r4, #8]
	strh r5, [r4, #0xa]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052F18: .4byte Task_DemoPlaySplashText
_08052F1C: .4byte TaskDestructor_DemoPlaySplashText
_08052F20: .4byte 0x03000062
_08052F24: .4byte 0x03000004
_08052F28: .4byte 0x06013800
_08052F2C: .4byte gUnknown_080D1C30
_08052F30: .4byte gStageData
_08052F34: .4byte 0x0000FFFF
_08052F38: .4byte 0x0300002C
_08052F3C: .4byte 0x00000594
_08052F40: .4byte 0x03000054

	thumb_func_start Task_DemoPlaySplashText
Task_DemoPlaySplashText: @ 0x08052F44
	push {r4, r5, r6, lr}
	ldr r0, _08052F94 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0x47
	bgt _08052F62
	ldr r2, _08052F98 @ =0x03000054
	adds r0, r6, r2
	bl UpdateScreenFade
_08052F62:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _08052FB4
	ldr r1, _08052F9C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08052FA0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08052FA4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08052FA8 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08052FAC @ =gVramGraphicsCopyCursor
	ldr r0, _08052FB0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl m4aMPlayAllStop
	bl LaunchGameIntro
	b _0805301E
	.align 2, 0
_08052F94: .4byte gCurTask
_08052F98: .4byte 0x03000054
_08052F9C: .4byte 0x0000FFFF
_08052FA0: .4byte gBackgroundsCopyQueueCursor
_08052FA4: .4byte gBackgroundsCopyQueueIndex
_08052FA8: .4byte gBgSpritesCount
_08052FAC: .4byte gVramGraphicsCopyCursor
_08052FB0: .4byte gVramGraphicsCopyQueueIndex
_08052FB4:
	ldr r0, _08052FD4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08052FD8
	bl sub_8003D2C
	bl m4aMPlayAllStop
	bl LaunchTitleScreen
	b _0805301E
	.align 2, 0
_08052FD4: .4byte gPressedKeys
_08052FD8:
	ldr r0, _08053024 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _08053012
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r0, #0x5a
	ble _08052FEA
	strh r1, [r5, #2]
_08052FEA:
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #0x1d
	ble _08053002
	ldr r2, _08053028 @ =0x03000004
	adds r4, r6, r2
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08053002:
	ldr r0, _0805302C @ =0x0300002C
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08053012:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
_0805301E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053024: .4byte gStageData
_08053028: .4byte 0x03000004
_0805302C: .4byte 0x0300002C

	thumb_func_start sub_8053030
sub_8053030: @ 0x08053030
	push {r4, lr}
	sub sp, #4
	ldr r0, _08053078 @ =Task_8053094
	movs r2, #0x80
	lsls r2, r2, #5
	movs r4, #0
	str r4, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	movs r2, #0x96
	lsls r2, r2, #2
	strh r2, [r1]
	ldr r1, _0805307C @ =0x03000004
	adds r0, r0, r1
	strh r4, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	movs r1, #0x80
	strh r1, [r0, #6]
	movs r1, #0xff
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	bl ScreenFadeUpdateValues
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08053078: .4byte Task_8053094
_0805307C: .4byte 0x03000004

	thumb_func_start TaskDestructor_DemoPlaySplashText
TaskDestructor_DemoPlaySplashText: @ 0x08053080
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start Task_8053094
Task_8053094: @ 0x08053094
	push {r4, lr}
	ldr r0, _080530B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
	ldrh r0, [r1]
	movs r3, #0
	ldrsh r4, [r1, r3]
	cmp r4, #0
	beq _080530B8
	subs r0, #1
	strh r0, [r1]
	b _080530FC
	.align 2, 0
_080530B4: .4byte gCurTask
_080530B8:
	ldr r1, _08053104 @ =0x03000004
	adds r0, r2, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080530FC
	ldr r0, _08053108 @ =gPlayers
	bl DemoPlayFree @ apparently never called?
	bl sub_8003D2C
	ldr r1, _0805310C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08053110 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08053114 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08053118 @ =gBgSpritesCount
	strb r4, [r0]
	ldr r1, _0805311C @ =gVramGraphicsCopyCursor
	ldr r0, _08053120 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08053124 @ =gStageData
	ldrb r1, [r0, #9]
	movs r0, #7
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80A872C
_080530FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08053104: .4byte 0x03000004
_08053108: .4byte gPlayers
_0805310C: .4byte 0x0000FFFF
_08053110: .4byte gBackgroundsCopyQueueCursor
_08053114: .4byte gBackgroundsCopyQueueIndex
_08053118: .4byte gBgSpritesCount
_0805311C: .4byte gVramGraphicsCopyCursor
_08053120: .4byte gVramGraphicsCopyQueueIndex
_08053124: .4byte gStageData
