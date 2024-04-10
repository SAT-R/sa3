.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable056
CreateEntity_Interactable056: @ 0x080342B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08034358 @ =sub_8034370
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803435C @ =sub_8034684
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	ldr r1, _08034360 @ =0x0300000C
	adds r0, r3, r1
	movs r7, #0
	mov sb, r7
	movs r1, #0
	mov sl, r1
	strh r5, [r2, #4]
	strh r6, [r2, #6]
	mov r7, r8
	str r7, [r2]
	ldrb r1, [r7]
	strb r1, [r2, #0xa]
	strb r4, [r2, #0xb]
	ldrb r4, [r7, #7]
	movs r1, #1
	ands r1, r4
	ldr r7, _08034364 @ =0x03000034
	adds r4, r3, r7
	strb r1, [r4]
	mov r1, sl
	str r1, [r2, #0x38]
	ldr r2, _08034368 @ =0x03000036
	adds r1, r3, r2
	mov r7, sb
	strb r7, [r1]
	ldr r1, _0803436C @ =0x03000035
	adds r3, r3, r1
	mov r2, sb
	strb r2, [r3]
	mov r7, r8
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	strh r1, [r0, #0x10]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r6, r6, #8
	adds r1, r1, r6
	strh r1, [r0, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r7]
	ldrb r1, [r4]
	bl sub_8034698
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034358: .4byte sub_8034370
_0803435C: .4byte sub_8034684
_08034360: .4byte 0x0300000C
_08034364: .4byte 0x03000034
_08034368: .4byte 0x03000036
_0803436C: .4byte 0x03000035

	thumb_func_start sub_8034370
sub_8034370: @ 0x08034370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _080343D8 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r5, r3, r0
	ldr r2, [r6]
	ldrb r1, [r6, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r6, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r6, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sl, r1
	ldr r0, _080343DC @ =0x03000036
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080343B4
	subs r0, #1
	strb r0, [r1]
_080343B4:
	ldr r0, _080343E0 @ =0x03000035
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080343C0
	b _080344EA
_080343C0:
	movs r7, #0
	mov sb, r1
_080343C4:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _080343CE
	b _080344DE
_080343CE:
	cmp r7, #0
	bne _080343E8
	ldr r0, _080343E4 @ =gStageData
	ldrb r1, [r0, #6]
	b _080343F2
	.align 2, 0
_080343D8: .4byte gCurTask
_080343DC: .4byte 0x03000036
_080343E0: .4byte 0x03000035
_080343E4: .4byte gStageData
_080343E8:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_080343F2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08034484 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08034416
	cmp r1, #8
	beq _08034416
	cmp r1, #0x10
	bne _080344DE
_08034416:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r2, r0, #0
	cmp r2, #0
	bne _080344DE
	ldr r1, [r4]
	ldr r0, _08034488 @ =PlayerCB_8008A8C
	cmp r1, r0
	beq _080344DE
	ldr r0, _0803448C @ =PlayerCB_800ED80
	cmp r1, r0
	beq _080344DE
	ldr r0, [r6, #0x38]
	cmp r0, r4
	bne _08034440
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _080344DE
_08034440:
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	bne _0803444C
	ldrh r0, [r5, #0x12]
	adds r0, #0x10
	strh r0, [r5, #0x12]
_0803444C:
	str r4, [sp]
	str r2, [sp, #4]
	adds r0, r5, #0
	mov r1, r8
	mov r2, sl
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _080344D2
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	bne _0803446A
	movs r0, #1
	strb r0, [r5, #0x1a]
_0803446A:
	adds r0, r6, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034490
	mov r0, r8
	adds r0, #0x10
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _080344A0
	.align 2, 0
_08034484: .4byte gPlayers
_08034488: .4byte PlayerCB_8008A8C
_0803448C: .4byte PlayerCB_800ED80
_08034490:
	mov r0, r8
	subs r0, #0x10
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080344A0:
	str r0, [r4, #4]
	mov r0, sl
	adds r0, #0x14
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	adds r0, r4, #0
	ldr r1, _080344FC @ =sub_800BEE8
	bl sub_800D87C
	str r4, [r6, #0x38]
	adds r1, r6, #0
	adds r1, #0x36
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa9
	bl sub_8004E98
	ldr r0, _08034500 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08034504 @ =sub_8034508
	str r0, [r1, #8]
_080344D2:
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	bne _080344DE
	ldrh r0, [r5, #0x12]
	subs r0, #0x10
	strh r0, [r5, #0x12]
_080344DE:
	adds r7, #1
	cmp r7, #1
	bgt _080344E6
	b _080343C4
_080344E6:
	bl sub_80345EC
_080344EA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080344FC: .4byte sub_800BEE8
_08034500: .4byte gCurTask
_08034504: .4byte sub_8034508

	thumb_func_start sub_8034508
sub_8034508: @ 0x08034508
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r1, _08034550 @ =gUnknown_080CF584
	mov r0, sp
	movs r2, #0xb
	bl memcpy
	ldr r0, _08034554 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldr r7, [r5]
	ldr r4, [r5, #0x38]
	bl sub_80345EC
	ldr r1, [r4]
	ldr r0, _08034558 @ =sub_800EAA8
	cmp r1, r0
	bne _08034542
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08034560
_08034542:
	ldr r3, _0803455C @ =0x03000035
	adds r1, r6, r3
	movs r0, #0
	strb r0, [r1]
	mov r0, r8
	b _080345CA
	.align 2, 0
_08034550: .4byte gUnknown_080CF584
_08034554: .4byte gCurTask
_08034558: .4byte sub_800EAA8
_0803455C: .4byte 0x03000035
_08034560:
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r5, #4]
	lsls r0, r0, #8
	adds r2, r1, r0
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r3, _08034584 @ =0x03000034
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034588
	adds r0, r2, #0
	adds r0, #0x10
	b _0803458C
	.align 2, 0
_08034584: .4byte 0x03000034
_08034588:
	adds r0, r2, #0
	subs r0, #0x10
_0803458C:
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	adds r2, r5, #0
	adds r2, #0x36
	ldrb r0, [r2]
	add r0, sp
	ldrb r0, [r0]
	adds r0, #0x14
	adds r0, r1, r0
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _080345D0
	ldr r1, _080345DC @ =sub_8006DB8
	adds r0, r4, #0
	bl sub_800D87C
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x18]
	ldr r0, _080345E0 @ =0x0000F880
	strh r0, [r4, #0x1a]
	adds r0, r5, #0
	adds r0, #0x35
	strb r1, [r0]
	ldr r0, _080345E4 @ =gCurTask
_080345CA:
	ldr r1, [r0]
	ldr r0, _080345E8 @ =sub_8034370
	str r0, [r1, #8]
_080345D0:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080345DC: .4byte sub_8006DB8
_080345E0: .4byte 0x0000F880
_080345E4: .4byte gCurTask
_080345E8: .4byte sub_8034370

	thumb_func_start sub_80345EC
sub_80345EC: @ 0x080345EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08034644 @ =gCurTask
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
	bne _08034648
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08034672
	.align 2, 0
_08034644: .4byte gCurTask
_08034648:
	ldr r1, _08034680 @ =gCamera
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r5, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803466C
	ldrb r0, [r5, #0x1a]
	cmp r0, #1
	bne _0803466C
	movs r0, #0
	strb r0, [r5, #0x1a]
_0803466C:
	adds r0, r5, #0
	bl DisplaySprite
_08034672:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034680: .4byte gCamera

	thumb_func_start sub_8034684
sub_8034684: @ 0x08034684
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8034698
sub_8034698: @ 0x08034698
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	movs r0, #0xc
	bl VramMalloc
	str r0, [r5]
	movs r2, #0
	movs r1, #0
	ldr r0, _080346E8 @ =0x00000369
	strh r0, [r5, #0xc]
	strb r2, [r5, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	cmp r4, #0
	bne _080346DC
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r5, #8]
_080346DC:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080346E8: .4byte 0x00000369
