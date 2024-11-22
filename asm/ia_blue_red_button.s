.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80302A0
sub_80302A0: @ 0x080302A0
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10      @ r5 = param1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10      @ r6 = param2
	movs r3, #0
	movs r2, #0
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r1, #0xff
	strb r1, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r1, #0x11
	str r1, [r4, #0x20]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r4, #8]
	lsls r0, r0, #0x10      @ r0 = kind << 16
	cmp r0, #0
	bne _0803033E
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #1
	bne _080302E4
	movs r0, #0x80
	lsls r0, r0, #4
	b _080302EC
_080302E4:
	cmp r1, #3
	bne _080302F0
	movs r0, #0x80
	lsls r0, r0, #3
_080302EC:
	orrs r0, r2
	str r0, [r4, #8]
_080302F0:
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	ldr r0, _08030320 @ =0x0000036F
	strh r0, [r4, #0xc]
	ldr r0, _08030324 @ =gStageData
	adds r0, #0x2c
	ldrb r1, [r0]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803032C
	asrs r0, r5, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08030328
	movs r0, #9
	b _080303A4
	.align 2, 0
_08030320: .4byte 0x0000036F
_08030324: .4byte gStageData
_08030328:
	movs r0, #5
	b _080303A4
_0803032C:
	asrs r0, r5, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0803033A
	movs r0, #7
	b _080303A4
_0803033A:
	movs r0, #3
	b _080303A4
_0803033E:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #1
	bne _0803034E
	movs r0, #0x80
	lsls r0, r0, #4
	b _08030356
_0803034E:
	cmp r1, #3
	bne _0803035A
	movs r0, #0x80
	lsls r0, r0, #3
_08030356:
	orrs r0, r2
	str r0, [r4, #8]
_0803035A:
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xdc
	lsls r0, r0, #2
	strh r0, [r4, #0xc]
	ldr r0, _0803038C @ =gStageData
	adds r0, #0x2d
	ldrb r1, [r0]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08030394
	asrs r0, r5, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08030390
	movs r0, #0x15
	b _080303A4
	.align 2, 0
_0803038C: .4byte gStageData
_08030390:
	movs r0, #0x11
	b _080303A4
_08030394:
	asrs r0, r5, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080303A2
	movs r0, #0x13
	b _080303A4
_080303A2:
	movs r0, #0xf
_080303A4:
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80303B4
sub_80303B4: @ 0x080303B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0803042C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, r8
	mov sb, r0
	ldr r4, _08030430 @ =0x0300000C
	add r4, r8
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, _08030434 @ =0x03000035
	add r0, r8
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	mov r1, sb
	ldrb r2, [r1, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, [sp]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r3, sb
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r5, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0803047C
	movs r1, #0
	ldr r7, _08030438 @ =gPlayers
_08030418:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0803043C
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08030440
	.align 2, 0
_0803042C: .4byte gCurTask
_08030430: .4byte 0x0300000C
_08030434: .4byte 0x03000035
_08030438: .4byte gPlayers
_0803043C:
	ldr r0, _08030474 @ =gStageData
	ldrb r1, [r0, #6]
_08030440:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r7
	adds r0, r4, #0
	adds r1, r6, #0
	bl ResolvePlayerSpriteCollision
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08030418
	mov r3, sb
	ldrb r0, [r3, #0xa]
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, _08030478 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080305C4
	.align 2, 0
_08030474: .4byte gStageData
_08030478: .4byte gCurTask
_0803047C:
	ldr r1, _080304B8 @ =gCamera
	ldr r0, [r1]
	subs r0, r5, r0
	strh r0, [r4, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080304BC @ =0x03000034
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08030532
	movs r0, #2
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _080304F2
	cmp r2, #0
	bne _080304C0
	ldrb r0, [r4, #0x1a]
	cmp r0, #8
	bne _080304C0
	movs r0, #9
	b _080305BC
	.align 2, 0
_080304B8: .4byte gCamera
_080304BC: .4byte 0x03000034
_080304C0:
	ldr r0, _080304E0 @ =gStageData
	adds r0, #0x2c
	ldrb r0, [r0]
	mov r1, sb
	adds r1, #0x36
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080304E4
	ldrb r0, [r4, #0x1a]
	cmp r0, #9
	bne _080304E4
	movs r0, #0xa
	b _080305BC
	.align 2, 0
_080304E0: .4byte gStageData
_080304E4:
	cmp r2, #0
	bne _080305BE
	ldrb r0, [r4, #0x1a]
	cmp r0, #0xa
	bne _080305BE
	movs r0, #7
	b _080305BC
_080304F2:
	cmp r2, #0
	bne _08030500
	ldrb r0, [r4, #0x1a]
	cmp r0, #4
	bne _08030500
	movs r0, #5
	b _080305BC
_08030500:
	ldr r0, _08030520 @ =gStageData
	adds r0, #0x2c
	ldrb r0, [r0]
	mov r1, sb
	adds r1, #0x36
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08030524
	ldrb r0, [r4, #0x1a]
	cmp r0, #5
	bne _08030524
	movs r0, #6
	b _080305BC
	.align 2, 0
_08030520: .4byte gStageData
_08030524:
	cmp r2, #0
	bne _080305BE
	ldrb r0, [r4, #0x1a]
	cmp r0, #6
	bne _080305BE
	movs r0, #3
	b _080305BC
_08030532:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0803057E
	cmp r2, #0
	bne _0803054A
	ldrb r0, [r4, #0x1a]
	cmp r0, #0x14
	bne _0803054A
	movs r0, #0x15
	b _080305BC
_0803054A:
	ldr r0, _0803056C @ =gStageData
	adds r0, #0x2d
	ldrb r0, [r0]
	mov r1, sb
	adds r1, #0x36
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08030570
	ldrb r0, [r4, #0x1a]
	cmp r0, #0x15
	bne _08030570
	movs r0, #0x16
	b _080305BC
	.align 2, 0
_0803056C: .4byte gStageData
_08030570:
	cmp r2, #0
	bne _080305BE
	ldrb r0, [r4, #0x1a]
	cmp r0, #0x16
	bne _080305BE
	movs r0, #0x13
	b _080305BC
_0803057E:
	cmp r2, #0
	bne _0803058C
	ldrb r0, [r4, #0x1a]
	cmp r0, #0x10
	bne _0803058C
	movs r0, #0x11
	b _080305BC
_0803058C:
	ldr r0, _080305AC @ =gStageData
	adds r0, #0x2d
	ldrb r0, [r0]
	mov r1, sb
	adds r1, #0x36
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080305B0
	ldrb r0, [r4, #0x1a]
	cmp r0, #0x11
	bne _080305B0
	movs r0, #0x12
	b _080305BC
	.align 2, 0
_080305AC: .4byte gStageData
_080305B0:
	cmp r2, #0
	bne _080305BE
	ldrb r0, [r4, #0x1a]
	cmp r0, #0x12
	bne _080305BE
	movs r0, #0xf
_080305BC:
	strb r0, [r4, #0x1a]
_080305BE:
	adds r0, r4, #0
	bl DisplaySprite
_080305C4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_BlueButton
CreateEntity_BlueButton: @ 0x080305D4
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
	bl CreateBlueOrRedButton
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_RedButton
CreateEntity_RedButton: @ 0x08030600
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
	bl CreateBlueOrRedButton
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_BlueRedButton
TaskDestructor_BlueRedButton: @ 0x0803062C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
