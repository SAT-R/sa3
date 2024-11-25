.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_803205C
sub_803205C: @ 0x0803205C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0xc
	movs r2, #0x34
	ldrsh r1, [r4, r2]
	movs r3, #0x36
	ldrsh r2, [r4, r3]
	str r5, [sp]
	movs r3, #0
	str r3, [sp, #4]
	bl sub_8020700
	cmp r0, #0
	beq _08032108
	ldr r1, [r5, #0x10]
	lsls r1, r1, #8
	ldr r2, [r5, #0x14]
	asrs r2, r2, #8
	adds r3, r5, #0
	adds r3, #0x25
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r2
	ldrh r2, [r4, #0x34]
	asrs r1, r1, #0x10
	subs r1, r1, r2
	ldrh r2, [r4, #0x36]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r0, #0x98
	lsls r0, r0, #0xd
	adds r1, r1, r0
	lsrs r1, r1, #0x10
	cmp r1, #0x26
	bhi _08032108
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r1, [r0]
	subs r0, #1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080320E0
	cmp r1, #0
	beq _080320D0
	ldr r1, _080320CC @ =gUnknown_080CF51C
	movs r0, #0x14
	subs r0, r0, r2
	adds r0, r0, r1
	b _080320FA
	.align 2, 0
_080320CC: .4byte gUnknown_080CF51C
_080320D0:
	ldr r1, _080320DC @ =gUnknown_080CF51C
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r1
	b _080320FA
	.align 2, 0
_080320DC: .4byte gUnknown_080CF51C
_080320E0:
	cmp r1, #0
	beq _080320F4
	ldr r1, _080320F0 @ =gUnknown_080CF51C
	movs r0, #0x14
	subs r0, r0, r2
	adds r1, #0x28
	adds r0, r0, r1
	b _080320FA
	.align 2, 0
_080320F0: .4byte gUnknown_080CF51C
_080320F4:
	ldr r0, _0803210C @ =gUnknown_080CF51C
	adds r0, r0, r2
	adds r0, #0x3c
_080320FA:
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08032110
_08032108:
	movs r0, #0
	b _08032132
	.align 2, 0
_0803210C: .4byte gUnknown_080CF51C
_08032110:
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	subs r1, r1, r0
	lsls r1, r1, #8
	str r1, [r5, #0x14]
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _08032130
	movs r0, #0
	strh r0, [r5, #0x1a]
_08032130:
	movs r0, #1
_08032132:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_803213C
sub_803213C: @ 0x0803213C
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r6, #1
	ands r1, r6
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r5, r0, #0x1f
	movs r0, #0x80
	lsls r0, r0, #3
	ands r5, r0
	ldr r0, _08032178 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08032194
	cmp r2, #0
	beq _08032180
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _0803217C @ =0x00000366
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	b _080321A8
	.align 2, 0
_08032178: .4byte gStageData
_0803217C: .4byte 0x00000366
_08032180:
	movs r0, #0xf
	bl VramMalloc
	str r0, [r4]
	ldr r0, _08032190 @ =0x00000366
	strh r0, [r4, #0xc]
	strb r6, [r4, #0x1a]
	b _080321A8
	.align 2, 0
_08032190: .4byte 0x00000366
_08032194:
	movs r0, #0xf
	bl VramMalloc
	str r0, [r4]
	ldr r0, _080321D4 @ =0x00000366
	strh r0, [r4, #0xc]
	strb r6, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r5, r0
_080321A8:
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r5, r0
	str r5, [r4, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080321D4: .4byte 0x00000366

	thumb_func_start sub_80321D8
sub_80321D8: @ 0x080321D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08032228 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _0803222C @ =0x0300000C
	adds r7, r1, r0
	mov r1, r8
	ldr r1, [r1]
	mov sb, r1
	mov r0, r8
	movs r1, #0x34
	ldrsh r5, [r0, r1]
	movs r1, #0x36
	ldrsh r6, [r0, r1]
	adds r0, r5, #0
	adds r1, r6, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08032274
	movs r1, #0
	ldr r6, _08032230 @ =gPlayers
_08032212:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08032234
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08032238
	.align 2, 0
_08032228: .4byte gCurTask
_0803222C: .4byte 0x0300000C
_08032230: .4byte gPlayers
_08032234:
	ldr r0, _0803226C @ =gStageData
	ldrb r1, [r0, #6]
_08032238:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	adds r0, r7, #0
	adds r1, r4, #0
	bl ResolvePlayerSpriteCollision
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08032212
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _08032270 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08032290
	.align 2, 0
_0803226C: .4byte gStageData
_08032270: .4byte gCurTask
_08032274:
	ldr r0, _0803229C @ =gCamera
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r7, #0x10]
	ldr r0, [r0, #4]
	subs r0, r6, r0
	subs r0, #2
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08032290:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803229C: .4byte gCamera

	thumb_func_start TaskDestructor_Ramp
TaskDestructor_Ramp: @ 0x080322A0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start Task_Ramp
Task_Ramp: @ 0x080322B4
	push {lr}
	ldr r0, _080322D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _080322D4 @ =0x03000039
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8031C10
	bl sub_80321D8
	pop {r0}
	bx r0
	.align 2, 0
_080322D0: .4byte gCurTask
_080322D4: .4byte 0x03000039

	thumb_func_start sub_80322D8
sub_80322D8: @ 0x080322D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _08032324 @ =gUnknown_080CF56C
	mov r0, sp
	movs r2, #0x18
	bl memcpy
	lsls r1, r4, #1
	adds r1, r1, r4
	adds r1, r1, r5
	lsls r1, r1, #2
	mov r2, sp
	adds r0, r2, r1
	ldrh r3, [r0]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r2, [r0]
	cmp r6, #0
	beq _08032328
	lsls r0, r3, #0x10
	rsbs r0, r0, #0
	lsrs r3, r0, #0x10
	ldr r0, [r7, #4]
	movs r1, #1
	orrs r0, r1
	b _08032330
	.align 2, 0
_08032324: .4byte gUnknown_080CF56C
_08032328:
	ldr r0, [r7, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_08032330:
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #4]
	movs r0, #0
	str r0, [r7, #0x6c]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_8009F7C
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
