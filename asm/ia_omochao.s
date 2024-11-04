.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start sub_80382EC
sub_80382EC: @ 0x080382EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r4, #0
	mov sb, r4
	ldr r0, _08038340 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r0, r0, r1
	mov sl, r0
	ldr r1, [r5]
	ldrb r2, [r5, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r6, #0
	lsls r7, r2, #0x10
_0803832E:
	cmp r6, #0
	beq _08038344
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08038348
	.align 2, 0
_08038340: .4byte gCurTask
_08038344:
	ldr r0, _080383F4 @ =gStageData
	ldrb r1, [r0, #6]
_08038348:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080383F8 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #8
	beq _080383B8
	cmp r1, #0x14
	beq _080383B8
	ldr r1, [r4, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080383B8
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _080383B8
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _080383B8
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _080383B8
	mov r1, r8
	lsls r2, r1, #0x10
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, sl
	asrs r1, r7, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _080383B8
	ldrh r1, [r4, #0x20]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080383B8
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r6
	lsrs r0, r0, #0x18
	mov sb, r0
_080383B8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0803832E
	mov r2, sb
	cmp r2, #0
	beq _0803849C
	adds r0, r5, #0
	adds r0, #0x62
	strb r2, [r0]
	subs r0, #0x2e
	adds r1, r5, #0
	adds r1, #0x61
	ldrb r1, [r1]
	ldr r2, [r5, #0x64]
	bl sub_80236C8
	movs r6, #0
	ldr r0, _080383FC @ =gUnknown_080CF690
	mov r8, r0
_080383E2:
	cmp r6, #0
	beq _08038400
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08038404
	.align 2, 0
_080383F4: .4byte gStageData
_080383F8: .4byte gPlayers
_080383FC: .4byte gUnknown_080CF690
_08038400:
	ldr r0, _08038478 @ =gStageData
	ldrb r1, [r0, #6]
_08038404:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803847C @ =gPlayers
	adds r4, r0, r1
	mov r0, sb
	asrs r0, r6
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq _08038484
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_800ED14
	str r4, [r5, #0x5c]
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	add r0, r8
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0xe0
	ldr r0, [r1]
	ldrh r0, [r0, #0x20]
	adds r0, #0x40
	strh r0, [r5, #0x20]
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r1, r0
	str r1, [r5, #0x14]
	ldr r0, [r4, #4]
	ands r0, r7
	cmp r0, #0
	bne _0803846A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
_0803846A:
	str r1, [r5, #0x14]
	adds r0, r4, #0
	ldr r1, _08038480 @ =0x00000202
	bl sub_8004E98
	b _0803848E
	.align 2, 0
_08038478: .4byte gStageData
_0803847C: .4byte gPlayers
_08038480: .4byte 0x00000202
_08038484:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	str r0, [r4, #4]
_0803848E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080383E2
	movs r0, #1
	b _0803849E
_0803849C:
	movs r0, #0
_0803849E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.endif

	thumb_func_start sub_80384B0
sub_80384B0: @ 0x080384B0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r0, #0
	mov sl, r0
	movs r6, #0
	ldr r0, _08038540 @ =0x000003D1
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r0, r8
	strb r0, [r4, #0x1c]
	mov r0, sl
	strb r0, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r0, #4
	bl VramMalloc
	str r0, [r5]
	ldr r0, _08038544 @ =0x00000412
	strh r0, [r5, #0xc]
	mov r0, sl
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0xe]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	mov r0, r8
	strb r0, [r5, #0x1c]
	movs r0, #0xf
	strb r0, [r5, #0x1f]
	mov r0, sb
	str r0, [r5, #0x20]
	str r6, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038540: .4byte 0x000003D1
_08038544: .4byte 0x00000412

	thumb_func_start sub_8038548
sub_8038548: @ 0x08038548
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080385A0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
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
	bne _080385A4
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
	b _080385E4
	.align 2, 0
_080385A0: .4byte gCurTask
_080385A4:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _080385C8
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r2, _080385C4 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x5c]
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	b _080385D4
	.align 2, 0
_080385C4: .4byte gCamera
_080385C8:
	ldr r0, _080385F0 @ =gCamera
	ldr r1, [r0]
	subs r1, r6, r1
	strh r1, [r5, #0x10]
	ldr r0, [r0, #4]
	subs r0, r7, r0
_080385D4:
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	movs r0, #1
_080385E4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080385F0: .4byte gCamera

	thumb_func_start TaskDestructor_Omochao
TaskDestructor_Omochao: @ 0x080385F4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, [r4, #0x64]
	bl EwramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
