.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Ginpe
CreateEntity_Ginpe: @ 0x080602C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
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
	ldr r0, _08060344 @ =sub_8060408
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08060348 @ =TaskDestructor_Ginpe
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	movs r2, #0
	strh r5, [r7, #0xa]
	strh r6, [r7, #0xc]
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	str r1, [r7, #0x18]
	ldrb r0, [r3, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x1c]
	str r1, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x20]
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x24]
	strb r2, [r7, #6]
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806034C
	movs r0, #0xff
	b _0806034E
	.align 2, 0
_08060344: .4byte sub_8060408
_08060348: .4byte TaskDestructor_Ginpe
_0806034C:
	movs r0, #1
_0806034E:
	strb r0, [r7, #8]
	movs r1, #0
	strb r1, [r7, #7]
	add r0, sp, #4
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x54
	ldr r2, _08060380 @ =0x01000002
	bl CpuSet
	adds r0, r7, #0
	bl sub_8060384
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r3, r8
	strb r0, [r3]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060380: .4byte 0x01000002

	thumb_func_start sub_8060384
sub_8060384: @ 0x08060384
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xc
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x28
	str r0, [r4, #0x28]
	ldr r1, _08060400 @ =gUnknown_080D2004
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08060404 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #8
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080603EE
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_080603EE:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060400: .4byte gUnknown_080D2004
_08060404: .4byte gCamera

	thumb_func_start sub_8060408
sub_8060408: @ 0x08060408
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08060468 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	adds r0, #0x28
	adds r6, r3, r0
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r6, #8]
	ldr r1, _0806046C @ =0x03000018
	adds r0, r3, r1
	ldr r2, _08060470 @ =0x03000010
	adds r1, r3, r2
	ldr r5, _08060474 @ =0x0300000A
	adds r2, r3, r5
	subs r5, #3
	adds r3, r3, r5
	bl sub_805CD70
	ldr r0, _08060478 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08060452
	cmp r1, #4
	beq _08060452
	adds r0, r4, #0
	bl sub_80606CC
_08060452:
	adds r0, r4, #0
	bl sub_8060774
	cmp r0, #1
	bne _0806047C
	ldr r0, _08060468 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080604E4
	.align 2, 0
_08060468: .4byte gCurTask
_0806046C: .4byte 0x03000018
_08060470: .4byte 0x03000010
_08060474: .4byte 0x0300000A
_08060478: .4byte gUnknown_030008A0
_0806047C:
	adds r0, r4, #0
	bl sub_8060704
	ldr r5, [r4, #0x18]
	ldr r0, [r4, #0x20]
	cmp r5, r0
	ble _08060490
	ldr r0, [r4, #0x24]
	cmp r5, r0
	blt _080604B0
_08060490:
	ldr r1, _080604A4 @ =gUnknown_080D2004
	ldrh r0, [r1, #8]
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	ldr r0, _080604A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080604AC @ =sub_8060654
	str r0, [r1, #8]
	b _080604E4
	.align 2, 0
_080604A4: .4byte gUnknown_080D2004
_080604A8: .4byte gCurTask
_080604AC: .4byte sub_8060654
_080604B0:
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x59
	bls _080604E4
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	movs r6, #1
	cmp r0, #0
	beq _080604CE
	movs r6, #0
_080604CE:
	ldr r1, [r4, #0x1c]
	ldr r0, _080604EC @ =0xFFFFEA00
	adds r1, r1, r0
	ldrh r2, [r4, #0xa]
	ldrh r3, [r4, #0xc]
	str r6, [sp]
	adds r0, r5, #0
	bl CreateGinpeProjtile
	movs r0, #0
	strb r0, [r4, #6]
_080604E4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080604EC: .4byte 0xFFFFEA00

	thumb_func_start sub_80604F0
sub_80604F0: @ 0x080604F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	str r1, [r4, #0x18]
	ldr r2, _08060550 @ =gUnknown_080D2014
	ldrh r1, [r2]
	movs r6, #0
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r3, _08060554 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r6, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060550: .4byte gUnknown_080D2014
_08060554: .4byte gCamera

	thumb_func_start sub_8060558
sub_8060558: @ 0x08060558
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r4, #0
	ldr r1, [r0, #0x10]
	asrs r7, r1, #8
	ldr r1, [r0, #0x14]
	asrs r6, r1, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r7, r7, r1
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r6, r6, r1
	adds r0, #0x18
	mov r8, r0
	movs r5, #0
_0806057C:
	cmp r5, #0
	bne _0806058C
	ldr r0, _08060588 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08060596
	.align 2, 0
_08060588: .4byte gUnknown_030008A0
_0806058C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08060596:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080605E0 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _080605E4
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _080605E4
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080605DC
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_080605DC:
	movs r0, #1
	b _080605F0
	.align 2, 0
_080605E0: .4byte gUnknown_030015C0
_080605E4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0806057C
	movs r0, #0
_080605F0:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80605FC
sub_80605FC: @ 0x080605FC
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r0, #2
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _08060616
	adds r1, r0, #0
	adds r0, r1, #4
	b _0806061C
_08060616:
	movs r1, #1
	ldrsb r1, [r3, r1]
	subs r0, r1, #4
_0806061C:
	lsls r0, r0, #0x17
	lsrs r5, r0, #0x10
	adds r4, r1, #0
	ldrh r0, [r3, #0xc]
	adds r0, #0x10
	strh r0, [r3, #0xc]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r0
	ldrh r0, [r3, #0xa]
	adds r0, #1
	strh r0, [r3, #0xa]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	str r0, [r3, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8060654
sub_8060654: @ 0x08060654
	push {r4, r5, r6, r7, lr}
	ldr r7, _0806067C @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r6, r4
	adds r0, r4, #0
	bl sub_8060704
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_8060774
	cmp r0, #1
	bne _08060680
	ldr r0, [r7]
	bl TaskDestroy
	b _080606BA
	.align 2, 0
_0806067C: .4byte gCurTask
_08060680:
	cmp r5, #0
	bne _080606BA
	ldr r0, _0806069C @ =0x03000028
	adds r4, r6, r0
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _080606A4
	ldr r0, _080606A0 @ =0xFFFFFBFF
	ands r1, r0
	b _080606A6
	.align 2, 0
_0806069C: .4byte 0x03000028
_080606A0: .4byte 0xFFFFFBFF
_080606A4:
	orrs r1, r2
_080606A6:
	str r1, [r4, #8]
	ldr r1, _080606C0 @ =gUnknown_080D2004
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	ldr r0, _080606C4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080606C8 @ =sub_8060408
	str r0, [r1, #8]
_080606BA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080606C0: .4byte gUnknown_080D2004
_080606C4: .4byte gCurTask
_080606C8: .4byte sub_8060408

	thumb_func_start sub_80606CC
sub_80606CC: @ 0x080606CC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080606EE
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x24]
	cmp r0, r1
	bgt _08060700
	adds r0, #0x80
	str r0, [r2, #0x18]
	cmp r0, r1
	ble _08060700
	b _080606FE
_080606EE:
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	blt _08060700
	subs r0, #0x80
	str r0, [r2, #0x18]
	cmp r0, r1
	bge _08060700
_080606FE:
	str r1, [r2, #0x18]
_08060700:
	pop {r0}
	bx r0

	thumb_func_start sub_8060704
sub_8060704: @ 0x08060704
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x28
	ldr r2, [r0, #0x18]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xa]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _08060744 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x1c]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08060744: .4byte gCamera

	thumb_func_start sub_8060748
sub_8060748: @ 0x08060748
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x28
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x18]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x1c]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xa]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8060774
sub_8060774: @ 0x08060774
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_8060748
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start TaskDestructor_Ginpe
TaskDestructor_Ginpe: @ 0x080607B0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateGinpeProjtile
CreateGinpeProjtile: @ 0x080607C4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r0, [sp, #0x24]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08060848 @ =sub_806085C
	ldr r2, _0806084C @ =0x00004040
	ldr r1, _08060850 @ =sub_8060978
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r0, sb
	str r0, [r4, #0x10]
	mov r0, sl
	str r0, [r4, #0x14]
	movs r0, #0
	movs r2, #0
	strh r5, [r4, #4]
	strh r6, [r4, #6]
	strb r0, [r4]
	mov r0, r8
	strb r0, [r4, #1]
	movs r0, #0xff
	strb r0, [r4, #2]
	strh r2, [r4, #0xa]
	strh r2, [r4, #0xc]
	strh r2, [r4, #8]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _08060854 @ =0x03000044
	adds r1, r1, r0
	ldr r2, _08060858 @ =0x01000002
	add r0, sp, #4
	bl CpuSet
	adds r0, r4, #0
	bl sub_80604F0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060848: .4byte sub_806085C
_0806084C: .4byte 0x00004040
_08060850: .4byte sub_8060978
_08060854: .4byte 0x03000044
_08060858: .4byte 0x01000002

	thumb_func_start sub_806085C
sub_806085C: @ 0x0806085C
	push {r4, r5, r6, r7, lr}
	ldr r7, _080608A4 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	movs r6, #0
	adds r0, r4, #0
	bl sub_80605FC
	adds r0, r4, #0
	bl sub_80608FC
	adds r0, r4, #0
	bl sub_8060558
	cmp r0, #1
	bne _08060884
	movs r6, #1
_08060884:
	cmp r6, #1
	bne _080608B4
	ldr r0, _080608A8 @ =0x03000018
	adds r1, r5, r0
	ldr r2, _080608AC @ =gUnknown_080D2014
	ldrh r0, [r2, #8]
	movs r3, #0
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r3, [r1, #8]
	ldr r1, [r7]
	ldr r0, _080608B0 @ =sub_80608CC
	str r0, [r1, #8]
	b _080608C4
	.align 2, 0
_080608A4: .4byte gCurTask
_080608A8: .4byte 0x03000018
_080608AC: .4byte gUnknown_080D2014
_080608B0: .4byte sub_80608CC
_080608B4:
	adds r0, r4, #0
	bl sub_8060940
	cmp r0, #1
	bne _080608C4
	ldr r0, [r7]
	bl TaskDestroy
_080608C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80608CC
sub_80608CC: @ 0x080608CC
	push {r4, r5, r6, lr}
	ldr r6, _080608F8 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80608FC
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_8060558
	cmp r5, #0
	bne _080608F2
	ldr r0, [r6]
	bl TaskDestroy
_080608F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080608F8: .4byte gCurTask

	thumb_func_start sub_80608FC
sub_80608FC: @ 0x080608FC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0806093C @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806093C: .4byte gCamera

	thumb_func_start sub_8060940
sub_8060940: @ 0x08060940
	push {r4, lr}
	sub sp, #0x28
	movs r4, #0
	str r4, [sp, #4]
	adds r1, r0, #0
	adds r1, #0x18
	str r1, [sp, #0x1c]
	ldr r1, [r0, #0x10]
	str r1, [sp, #0x10]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0x14]
	mov r2, sp
	ldrh r1, [r0, #4]
	movs r3, #0
	strh r1, [r2, #0xc]
	mov r1, sp
	ldrh r0, [r0, #6]
	strh r0, [r1, #0xe]
	str r4, [sp]
	mov r0, sp
	strb r3, [r0, #8]
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8060978
sub_8060978: @ 0x08060978
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0
