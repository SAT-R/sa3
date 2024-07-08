.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_SpecialSpring
CreateEntity_SpecialSpring: @ 0x08040CDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
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
	ldr r0, _08040D78 @ =Task_SpecialSpringMain
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08040D7C @ =TaskDestructor_SpecialSpring
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	mov r6, r8
	ldrb r1, [r6]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	ldr r7, _08040D80 @ =0x030000AC
	adds r6, r3, r7
	strh r1, [r6]
	mov r4, r8
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	adds r7, #2
	adds r5, r3, r7
	strh r1, [r5]
	ldr r4, _08040D84 @ =0x030000B0
	adds r1, r3, r4
	strb r2, [r1]
	subs r7, #0xa2
	adds r3, r3, r7
	ldr r4, _08040D88 @ =gCamera
	ldr r2, [r4]
	ldrh r1, [r6]
	subs r1, r1, r2
	strh r1, [r3, #0x10]
	ldr r2, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r2
	strh r1, [r3, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r4, r8
	strb r1, [r4]
	bl sub_8040F10
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040D78: .4byte Task_SpecialSpringMain
_08040D7C: .4byte TaskDestructor_SpecialSpring
_08040D80: .4byte 0x030000AC
_08040D84: .4byte 0x030000B0
_08040D88: .4byte gCamera

	thumb_func_start Task_SpecialSpringMain
Task_SpecialSpringMain: @ 0x08040D8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08040E6C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	ldr r1, _08040E70 @ =0x0300000C
	adds r1, r1, r0
	mov r8, r1
	ldr r3, [r2]
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r2, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r2, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _08040E74 @ =gStageData
	ldrb r1, [r7, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08040E78 @ =gPlayers
	mov sb, r1
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _08040DE6
	b _08040EFE
_08040DE6:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	cmp r2, #0
	bne _08040E00
	b _08040EFE
_08040E00:
	movs r1, #0x80
	lsls r1, r1, #9
	ands r1, r2
	cmp r1, #0
	beq _08040E8C
	ldr r0, _08040E7C @ =gSaveGame
	adds r0, #0x22
	ldrb r1, [r7, #9]
	adds r3, r0, r1
	ldrb r1, [r3]
	cmp r1, #0
	beq _08040EF4
	ldrb r0, [r7, #3]
	cmp r0, #0
	bne _08040EF4
	subs r0, r1, #1
	strb r0, [r3]
	ldr r1, _08040E80 @ =sub_800ABD4
	adds r0, r4, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sb
	adds r3, r0, r1
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _08040E58
	ldr r1, _08040E84 @ =Player_800AD24
	adds r0, r3, #0
	bl SetPlayerCallback
_08040E58:
	movs r0, #2
	mov r1, r8
	strb r0, [r1, #0x1a]
	ldr r0, _08040E88 @ =0x00000206
	bl sub_8003DF0
	movs r0, #4
	strb r0, [r7, #4]
	b _08040EFE
	.align 2, 0
_08040E6C: .4byte gCurTask
_08040E70: .4byte 0x0300000C
_08040E74: .4byte gStageData
_08040E78: .4byte gPlayers
_08040E7C: .4byte gSaveGame
_08040E80: .4byte sub_800ABD4
_08040E84: .4byte Player_800AD24
_08040E88: .4byte 0x00000206
_08040E8C:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08040EF4
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1c]
	movs r0, #0xff
	lsls r0, r0, #8
	adds r1, r0, #0
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	adds r3, r1, r0
	str r3, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _08040ECC
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08040ECC
	ldr r1, _08040EC8 @ =0xFFFFFF00
	adds r0, r3, r1
	b _08040EE8
	.align 2, 0
_08040EC8: .4byte 0xFFFFFF00
_08040ECC:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08040EFE
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08040EFE
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
_08040EE8:
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
	b _08040EFE
_08040EF4:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08040EFE:
	bl sub_8040FD8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8040F10
sub_8040F10: @ 0x08040F10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xc
	movs r0, #0x18
	bl VramMalloc
	str r0, [r5, #0xc]
	movs r7, #0
	movs r6, #0
	movs r0, #0xe4
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	strb r7, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	str r1, [r4, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	mov sl, r1
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _08040FB8 @ =gSaveGame
	adds r0, #0x32
	ldrb r0, [r0]
	ldr r1, _08040FBC @ =gStageData
	ldrb r1, [r1, #9]
	asrs r0, r1
	movs r1, #1
	mov sb, r1
	ands r0, r1
	cmp r0, #0
	beq _08040FC4
	adds r4, #0x28
	movs r0, #6
	bl VramMalloc
	str r0, [r5, #0x34]
	ldr r0, _08040FC0 @ =0x000003D7
	strh r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	ldrb r0, [r4, #0x1b]
	mov r1, r8
	orrs r0, r1
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r7, [r4, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r4, #0x20]
	mov r0, sl
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r0, #0xb0
	mov r1, sb
	strb r1, [r0]
	b _08040FCA
	.align 2, 0
_08040FB8: .4byte gSaveGame
_08040FBC: .4byte gStageData
_08040FC0: .4byte 0x000003D7
_08040FC4:
	adds r0, r5, #0
	adds r0, #0xb0
	strb r7, [r0]
_08040FCA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8040FD8
sub_8040FD8: @ 0x08040FD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08041028 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _0804102C @ =0x0300000C
	adds r4, r5, r1
	ldr r2, [r0]
	mov sb, r2
	adds r1, #0xa0
	adds r0, r5, r1
	ldr r2, _08041030 @ =0x030000AE
	adds r1, r5, r2
	movs r2, #0
	ldrsh r6, [r0, r2]
	movs r0, #0
	ldrsh r7, [r1, r0]
	adds r0, r6, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08041034
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sb
	strb r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _0804107A
	.align 2, 0
_08041028: .4byte gCurTask
_0804102C: .4byte 0x0300000C
_08041030: .4byte 0x030000AE
_08041034:
	ldr r2, _08041088 @ =gCamera
	mov r8, r2
	ldr r0, [r2]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r2, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _0804108C @ =0x030000B0
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804107A
	ldr r2, _08041090 @ =0x03000034
	adds r4, r5, r2
	mov r1, r8
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r4, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	subs r0, #0x18
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0804107A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041088: .4byte gCamera
_0804108C: .4byte 0x030000B0
_08041090: .4byte 0x03000034

	thumb_func_start TaskDestructor_SpecialSpring
TaskDestructor_SpecialSpring: @ 0x08041094
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, [r5, #0xc]
	bl VramFree
	ldr r0, _080410BC @ =0x030000B0
	adds r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080410B4
	ldr r0, [r5, #0x34]
	bl VramFree
_080410B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080410BC: .4byte 0x030000B0
