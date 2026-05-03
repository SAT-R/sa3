.include "asm/macros.inc"
.include "constants/constants.inc"

.section .rodata
.align 2 , 0

.text
.syntax unified
.arm

@; Something about BG palette animations
	thumb_func_start sub_80525F0
sub_80525F0: @ 0x080525F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _08052668 @ =Task_8052798
	ldr r1, _0805266C @ =0x0000043C
	ldr r2, _08052670 @ =0x0000FFFE
	ldr r3, _08052674 @ =TaskDestructor_8052C18
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldr r1, _08052678 @ =gCamera
	str r0, [r1, #0x54]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _0805267C @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #1]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r1, r5
	str r1, [r0, #8]
	str r6, [r0, #0xc]
	bl sub_8052D2C
	ldr r0, _08052680 @ =0x03000014
	adds r4, r4, r0
	ldr r0, _08052684 @ =0x06014D80
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08052688 @ =0x000003CD
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08052668: .4byte Task_8052798
_0805266C: .4byte 0x0000043C
_08052670: .4byte 0x0000FFFE
_08052674: .4byte TaskDestructor_8052C18
_08052678: .4byte gCamera
_0805267C: .4byte 0x0000FFFF
_08052680: .4byte 0x03000014
_08052684: .4byte 0x06014D80
_08052688: .4byte 0x000003CD

	thumb_func_start sub_805268C
sub_805268C: @ 0x0805268C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	asrs r7, r3, #4
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	beq _0805273E
	ldr r6, _08052744 @ =0x7BDE7BDE
	ldr r3, _08052748 @ =0x739C739C
	adds r2, r3, #0
	ands r2, r1
_080526A6:
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	bne _080526A6
_0805273E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052744: .4byte 0x7BDE7BDE
_08052748: .4byte 0x739C739C

	thumb_func_start sub_805274C
sub_805274C: @ 0x0805274C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r3, #0
	subs r3, #1
	cmp r0, #0
	beq _08052790
	movs r6, #0x1f
	movs r7, #0x1f
_0805275E:
	ldrh r0, [r4]
	adds r2, r7, #0
	ands r2, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x15
	ands r1, r7
	lsrs r0, r0, #0x1a
	ands r0, r7
	lsrs r2, r2, #1
	ands r2, r6
	lsrs r1, r1, #1
	ands r1, r6
	lsls r1, r1, #5
	orrs r2, r1
	lsrs r0, r0, #1
	ands r0, r6
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r5]
	adds r5, #2
	adds r4, #2
	adds r0, r3, #0
	subs r3, #1
	cmp r0, #0
	bne _0805275E
_08052790:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_8052798
Task_8052798: @ 0x08052798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	ldr r0, _080527D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _080527D4 @ =gCamera
	str r0, [sp, #0x68]
	movs r1, #0
	mov sb, r1
	adds r0, r7, #0
	bl sub_8052B84
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080527D8
	movs r0, #1
	strb r0, [r7]
	ldr r1, [sp, #0x68]
	adds r1, #0x69
	strb r0, [r1]
	b _080527E2
	.align 2, 0
_080527D0: .4byte gCurTask
_080527D4: .4byte gCamera
_080527D8:
	mov r2, sb
	strb r2, [r7]
	ldr r0, [sp, #0x68]
	adds r0, #0x69
	strb r2, [r0]
_080527E2:
	ldrb r0, [r7]
	cmp r0, #0
	bne _080527FC
	ldr r0, _080527F8 @ =gFlags
	ldr r1, [r0]
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	b _08052B62
	.align 2, 0
_080527F8: .4byte gFlags
_080527FC:
	ldr r0, _08052870 @ =gCamera
	ldr r1, [r0, #4]
	ldrh r0, [r7, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08052874 @ =gStageData
	ldrb r1, [r0, #3]
	mov sl, r0
	add r0, sp, #0xc
	mov r8, r0
	adds r2, r7, #0
	adds r2, #0x3c
	str r2, [sp, #0x6c]
	cmp r1, #4
	bhi _080528B0
	mov r1, sl
	ldr r0, [r1, #0x1c]
	ldr r1, _08052878 @ =0x000001FF
	ands r0, r1
	lsrs r5, r0, #1
	ldr r2, _0805287C @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08052880 @ =gHBlankCopyTarget
	ldr r0, _08052884 @ =0x0400001C
	str r0, [r1]
	ldr r1, _08052888 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0805288C @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
	movs r1, #0
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	ldr r3, _08052890 @ =gSineTable
	mov ip, r3
	ldr r6, _08052894 @ =gBgScrollRegs
_0805284C:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r3, r0, #0
	cmp r4, r1
	bge _0805289C
	lsls r0, r1, #1
	adds r0, r5, r0
	lsls r0, r0, #4
	ldr r1, _08052898 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r0, #8
	b _0805289E
	.align 2, 0
_08052870: .4byte gCamera
_08052874: .4byte gStageData
_08052878: .4byte 0x000001FF
_0805287C: .4byte gFlags
_08052880: .4byte gHBlankCopyTarget
_08052884: .4byte 0x0400001C
_08052888: .4byte gHBlankCopySize
_0805288C: .4byte gBgOffsetsHBlankPrimary
_08052890: .4byte gSineTable
_08052894: .4byte gBgScrollRegs
_08052898: .4byte 0x000003FF
_0805289C:
	ldrh r0, [r6, #0xc]
_0805289E:
	strh r0, [r2]
	adds r2, #2
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0805284C
_080528B0:
	mov r2, sl
	ldrb r0, [r2, #9]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08052A28 @ =0x040000D4
	ldr r1, _08052A2C @ =gObjPalette + 0x1F2
	str r1, [r0]
	mov r1, sp
	str r1, [r0, #4]
	ldr r1, _08052A30 @ =0x80000006
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08052A2C @ =gObjPalette + 0x1F2
	subs r1, #0xf2
	str r1, [r0]
	mov r1, r8
	str r1, [r0, #4]
	ldr r1, _08052A34 @ =0x80000010
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, [r2, #8]
	ldr r1, _08052A38 @ =0x00FFFF00
	ands r0, r1
	ldr r1, _08052A3C @ =0x00090400
	cmp r0, r1
	bne _080528F4
	mov r2, sb
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov sb, r0
_080528F4:
	mov r2, sl
	ldrb r0, [r2, #3]
	movs r5, #4
	cmp r0, #6
	beq _08052900
	movs r5, #3
_08052900:
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	lsls r0, r0, #1
	ldr r1, _08052A40 @ =gUnknown_080D1BF6
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r0, [sp, #0x6c]
	bl CopyNColorsFromAnimPalette
	lsls r0, r5, #0x10
	movs r1, #0
	adds r5, r0, #0
	cmp r5, #0
	ble _0805296A
	ldr r2, _08052A44 @ =gUnknown_080D1BC4
	mov sl, r2
	lsls r6, r4, #1
	ldr r3, _08052A48 @ =gPlayers
	mov sb, r3
_08052932:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #5
	adds r0, #0x3c
	adds r0, r7, r0
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	add r1, sb
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x19
	adds r1, r6, r1
	add r1, sl
	ldrh r1, [r1]
	movs r2, #0x10
	bl CopyNColorsFromAnimPalette
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	asrs r0, r5, #0x10
	cmp r4, r0
	blt _08052932
_0805296A:
	ldr r1, _08052A4C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bhi _0805299A
	adds r0, r7, #0
	adds r0, #0x7c
	ldr r4, _08052A50 @ =gUnknown_080D1BEC
	ldr r3, _08052A48 @ =gPlayers
	ldrb r2, [r1, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r3
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1b
	adds r1, r1, r4
	ldrh r1, [r1]
	movs r2, #0x10
	bl CopyNColorsFromAnimPalette
_0805299A:
	ldr r1, _08052A28 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _08052A54 @ =0x0000022E
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08052A30 @ =0x80000006
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r4, _08052A58 @ =gBgPalette
	cmp r0, #0
	bge _080529C0
_080529B8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080529B8
_080529C0:
	ldr r1, _08052A28 @ =0x040000D4
	mov r3, r8
	str r3, [r1]
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08052A34 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080529E6
_080529DE:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080529DE
_080529E6:
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r2, [r7, #0xc]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r4, #0
	bl sub_805268C
	ldr r3, _08052A5C @ =gVBlankCallbacks
	ldr r2, _08052A60 @ =gNumVBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _08052A64 @ =sub_8052C54
	str r1, [r0]
	ldr r2, _08052A68 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	movs r0, #4
	ldrsh r2, [r7, r0]
	ldr r3, [sp, #0x68]
	ldr r1, [r3, #4]
	cmp r2, r1
	bgt _08052A6C
	movs r0, #0
	b _08052A7C
	.align 2, 0
_08052A28: .4byte 0x040000D4
_08052A2C: .4byte gObjPalette + 0x1F2
_08052A30: .4byte 0x80000006
_08052A34: .4byte 0x80000010
_08052A38: .4byte 0x00FFFF00
_08052A3C: .4byte 0x00090400
_08052A40: .4byte gUnknown_080D1BF6
_08052A44: .4byte gUnknown_080D1BC4
_08052A48: .4byte gPlayers
_08052A4C: .4byte gStageData
_08052A50: .4byte gUnknown_080D1BEC
_08052A54: .4byte 0x0000022E
_08052A58: .4byte gBgPalette
_08052A5C: .4byte gVBlankCallbacks
_08052A60: .4byte gNumVBlankCallbacks
_08052A64: .4byte sub_8052C54
_08052A68: .4byte gFlags
_08052A6C:
	adds r0, r1, #0
	adds r0, #0xa0
	cmp r2, r0
	bge _08052A7A
	ldrb r0, [r7, #4]
	subs r0, r0, r1
	b _08052A7C
_08052A7A:
	movs r0, #0xff
_08052A7C:
	strb r0, [r7, #2]
	ldrb r0, [r7, #1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9e
	bhi _08052AFA
	adds r5, r7, #0
	adds r5, #0x14
	ldr r0, [sp, #0x68]
	ldr r1, [r0]
	ldr r4, _08052B28 @ =gStageData
	ldr r0, [r4, #0x1c]
	lsrs r0, r0, #2
	adds r1, r1, r0
	movs r0, #7
	ands r1, r0
	rsbs r1, r1, #0
	strh r1, [r5, #0x10]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldrb r0, [r7, #2]
	adds r0, #1
	strh r0, [r5, #0x12]
	mov r8, r0
	ldr r0, [r5, #8]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08052AFA
	add r4, sp, #0x2c
	adds r0, r5, #0
	bl DisplaySprite
	movs r2, #0xf
	adds r1, r4, #0
_08052AD4:
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	strh r6, [r4]
	mov r0, r8
	strh r0, [r4, #2]
	lsls r0, r2, #0x10
	ldr r2, _08052B2C @ =0xFFFF0000
	adds r0, r0, r2
	adds r4, #4
	lsrs r2, r0, #0x10
	cmp r0, #0
	bgt _08052AD4
	adds r0, r5, #0
	movs r2, #0xf
	bl DisplaySprites
_08052AFA:
	ldrb r0, [r7, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9e
	bhi _08052B44
	ldr r2, _08052B30 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08052B34 @ =gIntrTable
	ldr r0, _08052B38 @ =sub_8052CCC
	str r0, [r1, #0xc]
	movs r0, #1
	strh r0, [r2]
	ldr r1, _08052B3C @ =sa2__gUnknown_03002874
	ldrb r0, [r7, #2]
	subs r0, #1
	strb r0, [r1]
	ldr r2, _08052B40 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	b _08052B60
	.align 2, 0
_08052B28: .4byte gStageData
_08052B2C: .4byte 0xFFFF0000
_08052B30: .4byte 0x04000208
_08052B34: .4byte gIntrTable
_08052B38: .4byte sub_8052CCC
_08052B3C: .4byte sa2__gUnknown_03002874
_08052B40: .4byte gFlags
_08052B44:
	ldr r2, _08052B74 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08052B78 @ =gIntrTable
	ldr r0, _08052B7C @ =gIntrTableTemplate
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xc]
	movs r0, #1
	strh r0, [r2]
	ldr r2, _08052B80 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
_08052B60:
	str r0, [r2]
_08052B62:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052B74: .4byte 0x04000208
_08052B78: .4byte gIntrTable
_08052B7C: .4byte gIntrTableTemplate
_08052B80: .4byte gFlags

	thumb_func_start sub_8052B84
sub_8052B84: @ 0x08052B84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r3, _08052BA0 @ =gStageData
	adds r0, r3, #0
	adds r0, #0x84
	ldrb r2, [r0]
	cmp r2, #0
	bne _08052BB2
	b _08052C04
	.align 2, 0
_08052BA0: .4byte gStageData
_08052BA4:
	mov r0, sl
	strh r4, [r0, #4]
	ldrh r0, [r1, #2]
	mov r1, sl
	strh r0, [r1, #6]
	movs r0, #1
	b _08052C06
_08052BB2:
	ldr r1, _08052C14 @ =gCamera
	ldrh r7, [r1]
	adds r0, r7, #0
	adds r0, #0xf0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrh r6, [r1, #4]
	adds r0, r6, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r3, #0
	adds r0, #0x80
	ldr r1, [r0]
	movs r5, #0
	cmp r5, r2
	bge _08052C04
	mov ip, r2
_08052BDA:
	ldrh r0, [r1]
	ldrh r4, [r1, #2]
	ldrh r2, [r1, #4]
	ldrh r3, [r1, #6]
	cmp r0, sb
	bhs _08052BF2
	cmp r4, r8
	bhs _08052BF2
	cmp r2, r7
	bls _08052BF2
	cmp r3, r6
	bhi _08052BA4
_08052BF2:
	lsls r0, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r1, #8
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, ip
	blt _08052BDA
_08052C04:
	movs r0, #0
_08052C06:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08052C14: .4byte gCamera

	thumb_func_start TaskDestructor_8052C18
TaskDestructor_8052C18: @ 0x08052C18
	ldr r2, _08052C40 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r2, _08052C44 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08052C48 @ =gIntrTable
	ldr r0, _08052C4C @ =gIntrTableTemplate
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xc]
	movs r0, #1
	strh r0, [r2]
	ldr r1, _08052C50 @ =gCamera
	movs r0, #0
	str r0, [r1, #0x54]
	bx lr
	.align 2, 0
_08052C40: .4byte gFlags
_08052C44: .4byte 0x04000208
_08052C48: .4byte gIntrTable
_08052C4C: .4byte gIntrTableTemplate
_08052C50: .4byte gCamera

	thumb_func_start sub_8052C54
sub_8052C54: @ 0x08052C54
	push {r4, lr}
	ldr r0, _08052CAC @ =gCamera
	ldr r0, [r0, #0x54]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldrb r3, [r1, #2]
	strb r3, [r1, #1]
	ldr r0, [r1, #8]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #8]
	lsls r3, r3, #0x18
	cmp r3, #0
	bne _08052CA4
	ldr r1, _08052CB0 @ =0x040000D4
	ldr r2, _08052CB4 @ =0x0300023C
	adds r0, r4, r2
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08052CB8 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08052CBC @ =0x0300003C
	adds r0, r4, r2
	str r0, [r1]
	ldr r0, _08052CC0 @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _08052CC4 @ =0x84000078
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08052CC8 @ =gFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
_08052CA4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052CAC: .4byte gCamera
_08052CB0: .4byte 0x040000D4
_08052CB4: .4byte 0x0300023C
_08052CB8: .4byte 0x84000080
_08052CBC: .4byte 0x0300003C
_08052CC0: .4byte 0x05000200
_08052CC4: .4byte 0x84000078
_08052CC8: .4byte gFlags

	thumb_func_start sub_8052CCC
sub_8052CCC: @ 0x08052CCC
	ldr r0, _08052D08 @ =gCamera
	ldr r0, [r0, #0x54]
	ldrh r0, [r0, #6]
	ldr r1, _08052D0C @ =0x0300003C
	adds r2, r0, r1
	ldr r1, _08052D10 @ =0x040000D4
	ldr r3, _08052D14 @ =0x0300023C
	adds r0, r0, r3
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08052D18 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r2, [r1]
	ldr r0, _08052D1C @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _08052D20 @ =0x84000078
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08052D24 @ =gFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08052D28 @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_08052D08: .4byte gCamera
_08052D0C: .4byte 0x0300003C
_08052D10: .4byte 0x040000D4
_08052D14: .4byte 0x0300023C
_08052D18: .4byte 0x84000080
_08052D1C: .4byte 0x05000200
_08052D20: .4byte 0x84000078
_08052D24: .4byte gFlags
_08052D28: .4byte 0x04000202
