.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8033FD4
sub_8033FD4: @ 0x08033FD4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08034010 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0xc
	adds r2, r0, r1
	ldr r3, _08034014 @ =0x0300005C
	adds r1, r0, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _08034064
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
	ldr r6, _08034018 @ =gPlayers
_08034000:
	lsls r0, r3, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _08034020
	ldr r0, _0803401C @ =gStageData
	ldrb r1, [r0, #6]
	b _0803402A
	.align 2, 0
_08034010: .4byte gCurTask
_08034014: .4byte 0x0300005C
_08034018: .4byte gPlayers
_0803401C: .4byte gStageData
_08034020:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803402A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	adds r0, r4, #0
	ldr r1, _0803405C @ =sub_8005E80
	bl SetPlayerCallback
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08034000
	ldr r1, [r7]
	ldrb r0, [r7, #0xa]
	strb r0, [r1]
	ldr r0, _08034060 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080340AA
	.align 2, 0
_0803405C: .4byte sub_8005E80
_08034060: .4byte gCurTask
_08034064:
	movs r3, #0
	adds r4, r1, #0
	movs r6, #0x10
	rsbs r6, r6, #0
	ldr r5, _080340B0 @ =0x0000FFF0
_0803406E:
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	ldrh r0, [r2, #0x12]
	subs r0, r0, r1
	strh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bge _08034084
	strh r5, [r2, #0x12]
_08034084:
	ldrb r1, [r2, #0x1c]
	cmp r1, #0x3f
	bhi _08034094
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, r1, r0
	strb r0, [r2, #0x1c]
_08034094:
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	adds r2, #0x28
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803406E
	bl sub_8034250
_080340AA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080340B0: .4byte 0x0000FFF0

	thumb_func_start sub_80340B4
sub_80340B4: @ 0x080340B4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r4, r0, #0
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r6, #0
	movs r5, #0
	movs r0, #0xed
	lsls r0, r0, #2
	mov sb, r0
	mov r0, sb
	strh r0, [r4, #0xc]
	strb r6, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
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
	mov r0, sb
	strh r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0x1a]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	mov r0, sl
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
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803414C
sub_803414C: @ 0x0803414C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080341AC @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r5, r1, r0
	ldr r4, _080341B0 @ =0x0300000C
	add r4, r8
	ldr r0, [r5]
	mov sb, r0
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _080341B4
	ldrb r0, [r5, #0xa]
	mov r1, sb
	strb r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _080341EA
	.align 2, 0
_080341AC: .4byte gCurTask
_080341B0: .4byte 0x0300000C
_080341B4:
	ldr r0, _080341F8 @ =gCamera
	ldr r1, [r0]
	subs r1, r6, r1
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, [r0, #4]
	subs r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	strh r6, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r4, _080341FC @ =0x03000034
	add r4, r8
	strh r6, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl sub_80C07E0
_080341EA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080341F8: .4byte gCamera
_080341FC: .4byte 0x03000034

	thumb_func_start TaskDestructor_GoalRing
TaskDestructor_GoalRing: @ 0x08034200
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

	thumb_func_start sub_803421C
sub_803421C: @ 0x0803421C
	ldr r3, _08034240 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r0, _08034244 @ =0x0300005C
	adds r2, r1, r0
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08034248 @ =0x0300000C
	adds r1, r1, r0
	movs r0, #4
	strb r0, [r1, #0x1a]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	ldr r1, [r3]
	ldr r0, _0803424C @ =sub_8033FD4
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08034240: .4byte gCurTask
_08034244: .4byte 0x0300005C
_08034248: .4byte 0x0300000C
_0803424C: .4byte sub_8033FD4

	thumb_func_start sub_8034250
sub_8034250: @ 0x08034250
	push {r4, r5, lr}
	ldr r0, _080342A4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	ldr r0, _080342A8 @ =0x0300000C
	adds r4, r5, r0
	ldrh r2, [r4, #0x12]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0803429E
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0803429E
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0803429E
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _080342AC @ =0x03000034
	adds r4, r5, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl sub_80C07E0
_0803429E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080342A4: .4byte gCurTask
_080342A8: .4byte 0x0300000C
_080342AC: .4byte 0x03000034
