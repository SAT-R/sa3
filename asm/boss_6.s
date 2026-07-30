.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

    @ R0: EggPinball *boss
	thumb_func_start sub_80740CC
sub_80740CC: @ 0x080740CC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x46
	ldrh r5, [r2]
	cmp r5, #0
	bne _0807410C
	bl sub_8074D1C
	adds r1, r4, #0
	adds r1, #0x4a
	ldrh r0, [r1]
	adds r0, #3
	strh r0, [r1]
	ldr r2, _08074104 @ =gSineTable
	ldr r1, _08074108 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #5
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r4, #0xc]
	strh r5, [r4, #0xe]
	b _0807413C
	.align 2, 0
_08074104: .4byte gSineTable
_08074108: .4byte 0x000003FF
_0807410C:
	ldr r3, _08074144 @ =gSineTable
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x16
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #6
	strh r1, [r4, #0xe]
	ldrh r2, [r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, r1, r0
	strh r1, [r4, #0xe]
_0807413C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08074144: .4byte gSineTable

    @ R0: EggPinball *boss
	thumb_func_start sub_8074148
sub_8074148: @ 0x08074148
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	mov r7, sl
	adds r7, #0x70
	movs r0, #0xb0
	lsls r0, r0, #1
	add r0, sl
	mov sb, r0
	mov r0, sl
	adds r0, #0x3c
	ldrb r0, [r0]
	str r0, [sp]
	mov r2, sl
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r5, _08074310 @ =gCamera
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	movs r6, #0xe
	ldrsh r1, [r2, r6]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	adds r7, #0x50
	mov r0, sl
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	ldr r0, [r0]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r3, sl
	movs r6, #0xe
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0x88
	lsls r7, r7, #1
	add r7, sl
	mov r0, sl
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	ldr r0, [r0]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r3, sl
	movs r6, #0xe
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, sl
	adds r0, #0x5a
	ldr r1, _08074314 @ =0xFFFFFF00
	adds r4, r1, #0
	ldrh r0, [r0]
	adds r4, r4, r0
	ldr r2, _08074318 @ =0x000003FF
	adds r0, r2, #0
	ands r4, r0
	ldr r2, _0807431C @ =gSineTable
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r6, #0
	ldrsh r3, [r0, r6]
	mov ip, r3
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r6, #0
	ldrsh r3, [r0, r6]
	mov r8, r3
	mov r0, sl
	adds r0, #0x46
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r3, [r0]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1b
	mov r7, sl
	adds r7, #0x98
	mov r1, sl
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldr r2, [r1]
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r0, [r5]
	subs r2, r2, r0
	strh r2, [r7, #0x10]
	movs r6, #0xe
	ldrsh r0, [r1, r6]
	ldr r1, [r1, #4]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r0, [r5, #4]
	subs r1, r1, r0
	mov r0, r8
	muls r0, r3, r0
	asrs r0, r0, #0xe
	subs r2, r2, r0
	strh r2, [r7, #0x10]
	mov r0, ip
	muls r0, r3, r0
	asrs r0, r0, #0xe
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	ldr r2, _08074320 @ =gNextFreeAffineIndex
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r7, #8]
	ldrh r0, [r7, #0x10]
	mov r1, sb
	strh r0, [r1, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r1, #8]
	strh r4, [r1]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	mov r1, sb
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	adds r7, #0x50
	ldr r2, [sp]
	lsls r2, r2, #2
	str r2, [sp, #4]
	add r2, sl
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	mov r6, sl
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0x12
	ldrsh r1, [r2, r0]
	ldr r0, [r6, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [r7, #8]
	ldr r1, _08074324 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	bl DisplaySprite
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074310: .4byte gCamera
_08074314: .4byte 0xFFFFFF00
_08074318: .4byte 0x000003FF
_0807431C: .4byte gSineTable
_08074320: .4byte gNextFreeAffineIndex
_08074324: .4byte 0xFFFFFBFF

    @ R0: EggPinball *boss
	thumb_func_start CreateEggPinballBall
CreateEggPinballBall: @ 0x08074328
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08074414 @ =Task_Ball_807442C
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov sb, r1
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	ldr r2, _08074418 @ =0x0300001C
	adds r0, r0, r2
	adds r1, r6, #0
	adds r1, #0x5a
	ldr r5, _0807441C @ =0xFFFFFF00
	adds r4, r5, #0
	ldrh r1, [r1]
	adds r4, r4, r1
	ldr r7, _08074420 @ =0x000003FF
	adds r1, r7, #0
	ands r4, r1
	ldr r2, _08074424 @ =gSineTable
	lsls r1, r4, #1
	adds r1, r1, r2
	movs r7, #0
	ldrsh r5, [r1, r7]
	mov sl, r5
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r7, [r1, r2]
	mov r8, r7
	adds r1, r6, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	movs r5, #0x41
	subs r5, r5, r1
	str r6, [r3]
	movs r7, #0xc
	ldrsh r2, [r6, r7]
	ldr r1, [r6]
	adds r1, r1, r2
	mov r7, r8
	asrs r2, r7, #1
	adds r1, r1, r2
	str r1, [r3, #4]
	movs r1, #0xe
	ldrsh r2, [r6, r1]
	ldr r1, [r6, #4]
	adds r1, r1, r2
	mov r7, sl
	asrs r2, r7, #1
	adds r1, r1, r2
	str r1, [r3, #8]
	mov r1, r8
	muls r1, r5, r1
	asrs r1, r1, #8
	movs r2, #0
	strh r1, [r3, #0xc]
	mov r1, sl
	muls r1, r5, r1
	asrs r1, r1, #8
	strh r1, [r3, #0xe]
	str r5, [r3, #0x10]
	strh r4, [r3, #0x14]
	movs r1, #0xc
	strb r1, [r3, #0x18]
	strb r2, [r3, #0x19]
	strb r2, [r3, #0x1a]
	strb r2, [r3, #0x1b]
	ldr r1, [r6, #0x68]
	str r1, [r3, #0x44]
	ldr r1, [r6, #0x6c]
	str r1, [r3, #0x48]
	ldr r1, [r6, #0x50]
	str r1, [r0]
	ldr r1, _08074428 @ =0x000004E4
	strh r1, [r0, #0xc]
	strb r2, [r0, #0x1a]
	subs r1, #0xe4
	strh r1, [r0, #0x14]
	mov r1, sb
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074414: .4byte Task_Ball_807442C
_08074418: .4byte 0x0300001C
_0807441C: .4byte 0xFFFFFF00
_08074420: .4byte 0x000003FF
_08074424: .4byte gSineTable
_08074428: .4byte 0x000004E4

	thumb_func_start Task_Ball_807442C
Task_Ball_807442C: @ 0x0807442C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r3, #0
	ldr r0, _080744B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r6, [r4]
	adds r0, #0x1c
	adds r7, r1, r0
	movs r1, #0x70
	adds r1, r1, r6
	mov r8, r1
	ldrb r1, [r4, #0x18]
	movs r0, #0x18
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _08074488
	subs r0, r1, #1
	strb r0, [r4, #0x18]
	ldr r1, [r4, #0x10]
	subs r1, #4
	str r1, [r4, #0x10]
	ldr r2, _080744BC @ =gSineTable
	ldrh r0, [r4, #0x14]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0xe]
_08074488:
	movs r5, #0xc
	ldrsh r0, [r4, r5]
	ldr r1, [r4, #4]
	adds r1, r1, r0
	str r1, [r4, #4]
	movs r0, #0xe
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, r2
	str r0, [r4, #8]
	ldr r2, _080744C0 @ =0x00054400
	cmp r1, r2
	bgt _080744C4
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080744C4
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
	str r2, [r4, #4]
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	b _080744E2
	.align 2, 0
_080744B8: .4byte gCurTask
_080744BC: .4byte gSineTable
_080744C0: .4byte 0x00054400
_080744C4:
	ldr r1, [r4, #4]
	ldr r0, _0807452C @ =0x00065BFF
	cmp r1, r0
	ble _080744E8
	movs r5, #0xc
	ldrsh r0, [r4, r5]
	cmp r0, #0
	ble _080744E8
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
	ldr r0, _08074530 @ =0x00065C00
	str r0, [r4, #4]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
_080744E2:
	rsbs r0, r0, #0
	strh r0, [r4, #0xc]
	movs r3, #1
_080744E8:
	ldr r0, [r4, #8]
	movs r1, #0xb8
	lsls r1, r1, #8
	cmp r0, r1
	bgt _08074510
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08074510
	cmp r3, #0
	bne _08074504
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
_08074504:
	str r1, [r4, #8]
	movs r5, #0xe
	ldrsh r0, [r4, r5]
	rsbs r0, r0, #0
	strh r0, [r4, #0xe]
	movs r3, #1
_08074510:
	cmp r3, #0
	beq _0807451A
	ldr r0, _08074534 @ =0x00000232
	bl m4aSongNumStart
_0807451A:
	ldr r1, [r4, #8]
	ldr r0, _08074538 @ =0x00015FFF
	cmp r1, r0
	ble _08074540
	ldr r0, _0807453C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08074668
	.align 2, 0
_0807452C: .4byte 0x00065BFF
_08074530: .4byte 0x00065C00
_08074534: .4byte 0x00000232
_08074538: .4byte 0x00015FFF
_0807453C: .4byte gCurTask
_08074540:
	ldrb r0, [r4, #0x19]
	cmp r0, #9
	bhi _08074550
	adds r5, r6, #0
	adds r5, #0x3d
	ldrb r0, [r5]
	cmp r0, #0
	bne _0807456C
_08074550:
	movs r0, #0x1e
	strb r0, [r4, #0x1b]
	ldr r0, _08074564 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08074568 @ =Task_Ball_8074DC4
	str r0, [r1, #8]
	bl _call_via_r0
	b _08074668
	.align 2, 0
_08074564: .4byte gCurTask
_08074568: .4byte Task_Ball_8074DC4
_0807456C:
	ldr r1, [r4, #0x44]
	adds r0, r4, #0
	bl sub_807467C
	ldr r1, [r4, #0x48]
	adds r0, r4, #0
	bl sub_807467C
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _08074662
	movs r1, #0x3e
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08074662
	ldrb r0, [r5]
	cmp r0, #0
	beq _08074662
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	adds r1, r7, #0
	adds r1, #0x24
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r2, r0, r3
	movs r5, #0xc
	ldrsh r1, [r6, r5]
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	mov r1, r8
	adds r1, #0x24
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _080745CC
	adds r0, r7, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _080745DE
	cmp r2, r1
	blt _08074662
_080745CC:
	mov r0, r8
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _08074662
_080745DE:
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r7, #0
	adds r1, #0x25
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r3, r0, r5
	movs r0, #0xe
	ldrsh r1, [r6, r0]
	ldr r0, [r6, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	mov r1, r8
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	cmp r3, r2
	bgt _0807461C
	adds r0, r7, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r2
	bge _0807462E
	cmp r3, r2
	blt _08074662
_0807461C:
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	blt _08074662
_0807462E:
	adds r0, r6, #0
	bl sub_Boss_8074AF0
	ldr r2, _0807464C @ =0x0000FE80
	strh r2, [r4, #0xe]
	movs r1, #0xc
	ldrsh r0, [r6, r1]
	ldr r1, [r6]
	adds r1, r1, r0
	ldr r0, [r4, #4]
	cmp r0, r1
	bge _08074650
	strh r2, [r4, #0xc]
	b _08074656
	.align 2, 0
_0807464C: .4byte 0x0000FE80
_08074650:
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r4, #0xc]
_08074656:
	movs r0, #0x1e
	strb r0, [r4, #0x1b]
	ldr r0, _08074674 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08074678 @ =Task_Ball_8074DC4
	str r0, [r1, #8]
_08074662:
	adds r0, r4, #0
	bl sub_8074E18
_08074668:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074674: .4byte gCurTask
_08074678: .4byte Task_Ball_8074DC4

	thumb_func_start sub_807467C
sub_807467C: @ 0x0807467C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4]
	mov r8, r0
	adds r7, r4, #0
	adds r7, #0x1c
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _0807469C
	subs r0, #1
	strb r0, [r4, #0x1b]
	b _080747E6
_0807469C:
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	beq _080746A8
	b _080747E6
_080746A8:
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r2, [r4, #8]
	asrs r2, r2, #8
	str r6, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #0
	bne _080746C0
	b _080747D4
_080746C0:
	ldr r0, [r6, #4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080746CC
	b _080747D4
_080746CC:
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0xf7
	bne _080746D6
	b _080747D4
_080746D6:
	movs r0, #0xa
	strb r0, [r4, #0x1b]
	movs r0, #1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x19]
	adds r0, #1
	strb r0, [r4, #0x19]
	ldr r0, [r6, #0x14]
	ldr r1, [r4, #8]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x10]
	ldr r2, [r4, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #0x14]
	adds r1, r5, #0
	movs r2, #0xa
	bl sa2__sub_808558C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08074734
	ldrh r1, [r4, #0x14]
	subs r0, r1, r5
	cmp r0, #0
	blt _08074724
	subs r1, r1, r0
	ldr r0, _08074720 @ =0x000003FF
	b _0807472A
	.align 2, 0
_08074720: .4byte 0x000003FF
_08074724:
	subs r0, r5, r1
	subs r0, r1, r0
	ldr r1, _08074730 @ =0x000003FF
_0807472A:
	ands r0, r1
	strh r0, [r4, #0x14]
	b _08074750
	.align 2, 0
_08074730: .4byte 0x000003FF
_08074734:
	ldrh r1, [r4, #0x14]
	subs r0, r1, r5
	cmp r0, #0
	blt _08074748
	adds r1, r1, r0
	ldr r0, _08074744 @ =0x000003FF
	b _0807474C
	.align 2, 0
_08074744: .4byte 0x000003FF
_08074748:
	ldr r0, _080747C4 @ =0x000003FF
	adds r1, r5, #0
_0807474C:
	ands r1, r0
	strh r1, [r4, #0x14]
_08074750:
	ldr r2, _080747C8 @ =gSineTable
	ldrh r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r4, #0x10]
	muls r0, r1, r0
	rsbs r0, r0, #0
	asrs r0, r0, #8
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	rsbs r0, r0, #0
	asrs r0, r0, #8
	strh r0, [r4, #0xe]
	ldrh r0, [r6, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r6, #0x1c]
	ldrh r0, [r6, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r6, #0x18]
	ldrh r0, [r6, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	rsbs r0, r0, #0
	strh r0, [r6, #0x1a]
	mov r1, r8
	ldr r0, [r1, #0x54]
	str r0, [r7]
	ldr r0, _080747CC @ =0x000004E4
	strh r0, [r7, #0xc]
	movs r0, #1
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	cmp r0, #0xd4
	bne _080747BC
	adds r0, r6, #0
	bl Player_800DB30
_080747BC:
	ldr r0, _080747D0 @ =0x00000233
	bl m4aSongNumStart
	b _080747E6
	.align 2, 0
_080747C4: .4byte 0x000003FF
_080747C8: .4byte gSineTable
_080747CC: .4byte 0x000004E4
_080747D0: .4byte 0x00000233
_080747D4:
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r2, [r4, #8]
	asrs r2, r2, #8
	str r6, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
_080747E6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	@ R0: 0x648
	@ R1: 0x125 (293)
	@ R2: EggPinball *boss
	@ R3: bool8
	thumb_func_start CreateEggPinballOuterPlatform
CreateEggPinballOuterPlatform: @ 0x080747F4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0     @ r5 = r2 = EggPinball *boss
	lsls r3, r3, #0x18
	mov sb, r3
	mov r0, sb
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _080748B8 @ =Task_Platform_OuterPlat
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080748BC @ =TaskDestructor_EggPinballOuterPlatform
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	ldr r1, _080748C0 @ =0x03000028
	adds r4, r3, r1
	str r5, [r2]
	lsls r6, r6, #8
	str r6, [r2, #0xc]
	mov r0, r8
	lsls r0, r0, #8
	str r0, [r2, #0x10]
	ldr r0, [r2, #0xc]
	ldr r1, [r2, #0x10]
	str r0, [r2, #4]
	str r1, [r2, #8]
	movs r1, #0
	mov r8, r1
	movs r6, #0
	strh r6, [r2, #0x14]
	strh r6, [r2, #0x16]
	ldr r1, _080748C4 @ =0x03000020
	adds r0, r3, r1
	mov r1, r8
	strb r1, [r0]
	movs r0, #0xfa
	lsls r0, r0, #3
	strh r0, [r2, #0x24]
	strh r6, [r2, #0x26]
	ldr r0, [r5, #0x68]
	str r0, [r2, #0x18]
	ldr r0, [r5, #0x6c]
	str r0, [r2, #0x1c]
	mov r0, sb
	lsls r0, r0, #2
	mov sb, r0
	adds r5, #0x34
	add r5, sb
	ldr r1, _080748C8 @ =0x03000024
	adds r3, r3, r1
	str r3, [r5]
	movs r0, #0x12
	bl VramMalloc
	str r0, [r4]
	ldr r0, _080748CC @ =0x000003A9 @ ANIM_PLATFORM_BOSS_6
	strh r0, [r4, #0xc]
	mov r0, r8
	strb r0, [r4, #0x1a]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r1, r8
	strb r1, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080748B8: .4byte Task_Platform_OuterPlat
_080748BC: .4byte TaskDestructor_EggPinballOuterPlatform
_080748C0: .4byte 0x03000028
_080748C4: .4byte 0x03000020
_080748C8: .4byte 0x03000024
_080748CC: .4byte 0x000003A9

	thumb_func_start Task_Platform_OuterPlat
Task_Platform_OuterPlat: @ 0x080748D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08074960 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	ldr r2, [r7]
	adds r1, #0x28
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r1, _08074964 @ =0x03000020
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrh r1, [r7, #0x24]
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bne _08074910
	adds r0, r2, #0
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #0
	beq _08074910
	movs r0, #0
	strh r0, [r7, #0x24]
_08074910:
	movs r5, #0
	movs r2, #0x18
	adds r2, r2, r7
	mov sl, r2
	movs r0, #0x20
	adds r0, r0, r7
	mov r8, r0
	mov r6, r8
	movs r1, #1
	mov sb, r1
_08074924:
	lsls r0, r5, #2
	add r0, sl
	ldr r4, [r0]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	ldr r2, [r7, #0x10]
	asrs r2, r2, #8
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08074968
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	mov r0, sb
	lsls r0, r5
	ldrb r1, [r6]
	orrs r0, r1
	b _08074970
	.align 2, 0
_08074960: .4byte gCurTask
_08074964: .4byte 0x03000020
_08074968:
	mov r1, sb
	lsls r1, r5
	ldrb r0, [r6]
	bics r0, r1
_08074970:
	strb r0, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08074924
	ldrh r2, [r7, #0x24]
	subs r0, r2, #2
	lsls r0, r0, #0x10
	ldr r1, _080749C4 @ =0x03E50000
	cmp r0, r1
	bhi _0807498C
	subs r0, r2, #1
	strh r0, [r7, #0x24]
_0807498C:
	ldr r3, [r7, #0x10]
	ldr r2, [r7, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080749AE
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080749A0
	b _08074AA8
_080749A0:
	ldrh r0, [r7, #0x24]
	cmp r0, #0
	bne _080749AE
	cmp r3, r2
	bne _080749AE
	movs r0, #0x3c
	strh r0, [r7, #0x26]
_080749AE:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08074AA8
	subs r1, r3, r2
	cmp r1, #0
	blt _080749CC
	ldr r0, _080749C8 @ =0x00005FFF
	cmp r1, r0
	ble _080749D6
	b _08074ADA
	.align 2, 0
_080749C4: .4byte 0x03E50000
_080749C8: .4byte 0x00005FFF
_080749CC:
	subs r1, r2, r3
	ldr r0, _080749E8 @ =0x00005FFF
	cmp r1, r0
	ble _080749D6
	b _08074ADA
_080749D6:
	ldrh r1, [r7, #0x24]
	cmp r1, #1
	beq _08074A36
	cmp r1, #1
	bgt _080749EC
	cmp r1, #0
	beq _080749F6
	b _08074ADA
	.align 2, 0
_080749E8: .4byte 0x00005FFF
_080749EC:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	beq _08074A6C
	b _08074ADA
_080749F6:
	ldrh r1, [r7, #0x26]
	movs r2, #0x26
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _08074A04
	subs r0, r1, #1
	b _08074AD8
_08074A04:
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r7, #0x10]
	movs r5, #0
	mov r3, sl
	mov r2, r8
	movs r6, #1
_08074A14:
	lsls r0, r5, #2
	adds r0, r3, r0
	ldr r4, [r0]
	ldrb r0, [r2]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	beq _08074A2A
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08074A2A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08074A14
	b _08074ADA
_08074A36:
	ldr r1, _08074A68 @ =0xFFFFFA00
	adds r0, r3, r1
	str r0, [r7, #0x10]
	movs r5, #0
	mov r3, r8
	movs r6, #1
	mov r2, sl
_08074A44:
	ldrb r0, [r3]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	beq _08074A5A
	lsls r0, r5, #2
	adds r0, r2, r0
	ldr r4, [r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08074A5A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08074A44
	b _08074ADA
	.align 2, 0
_08074A68: .4byte 0xFFFFFA00
_08074A6C:
	cmp r3, r2
	bgt _08074A74
	str r2, [r7, #0x10]
	b _08074ADA
_08074A74:
	ldr r1, _08074AA4 @ =0xFFFFFA00
	adds r0, r3, r1
	str r0, [r7, #0x10]
	movs r5, #0
	mov r3, r8
	movs r6, #1
	mov r2, sl
_08074A82:
	ldrb r0, [r3]
	asrs r0, r5
	ands r0, r6
	cmp r0, #0
	beq _08074A98
	lsls r0, r5, #2
	adds r0, r2, r0
	ldr r4, [r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08074A98:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08074A82
	b _08074ADA
	.align 2, 0
_08074AA4: .4byte 0xFFFFFA00
_08074AA8:
	adds r0, r3, #0
	adds r1, r2, #0
	cmp r0, r1
	beq _08074AD6
	cmp r0, r1
	ble _08074AC8
	ldr r2, _08074AC4 @ =0xFFFFFA00
	adds r0, r0, r2
	str r0, [r7, #0x10]
	cmp r0, r1
	bgt _08074AD6
	str r1, [r7, #0x10]
	b _08074AD6
	.align 2, 0
_08074AC4: .4byte 0xFFFFFA00
_08074AC8:
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r7, #0x10]
	cmp r0, r2
	blt _08074AD6
	str r2, [r7, #0x10]
_08074AD6:
	movs r0, #0
_08074AD8:
	strh r0, [r7, #0x26]
_08074ADA:
	adds r0, r7, #0
	bl sub_8074D90
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_Boss_8074AF0
sub_Boss_8074AF0: @ 0x08074AF0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x88
	lsls r0, r0, #1
	adds r6, r4, r0
	movs r1, #0x3e
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08074B98
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _08074B12
	subs r0, r1, #1
	strb r0, [r5]
_08074B12:
	ldr r0, _08074B28 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08074B2C
	ldrb r0, [r5]
	cmp r0, #4
	bne _08074B38
	movs r0, #0x33
	bl sub_80299D4
	b _08074B38
	.align 2, 0
_08074B28: .4byte gStageData
_08074B2C:
	ldrb r0, [r5]
	cmp r0, #3
	bne _08074B38
	movs r0, #0x33
	bl sub_80299D4
_08074B38:
	movs r0, #0xeb
	bl m4aSongNumStart
	bl PlayVoiceEggmanHit
	movs r0, #0xb4
	strh r0, [r4, #0x3e]
	movs r0, #2
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r0, _08074B84 @ =0x000004E6
	movs r1, #0
	movs r2, #0xb4
	movs r3, #0
	bl sub_8078DB0
	ldr r0, _08074B88 @ =0x000004E7
	movs r1, #0
	movs r2, #0xb4
	movs r3, #0
	bl sub_8078DB0
	ldr r1, _08074B8C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08074B98
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08074B90
	ldrb r0, [r5]
	cmp r0, #0
	beq _08074B98
	adds r1, r0, #0
	movs r0, #3
	bl sub_8027674
	b _08074B98
	.align 2, 0
_08074B84: .4byte 0x000004E6
_08074B88: .4byte 0x000004E7
_08074B8C: .4byte gStageData
_08074B90:
	ldrb r1, [r5]
	movs r0, #4
	bl sub_8027674
_08074B98:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8074BA0
sub_8074BA0: @ 0x08074BA0
	push {r4, r5, lr}
	ldr r1, _08074C10 @ =gStageData
	adds r5, r1, #0
	adds r5, #0x88
	ldr r1, [r5]
	ldrh r3, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r3, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	cmp r1, #1
	bne _08074C28
	ldr r1, _08074C14 @ =0x0300003D
	adds r0, r3, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08074C18 @ =0x03000044
	adds r2, r3, r0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2]
	ldr r2, _08074C1C @ =0x0300005C
	adds r0, r3, r2
	strh r1, [r0]
	adds r2, #2
	adds r0, r3, r2
	strh r1, [r0]
	ldr r1, _08074C20 @ =0x03000060
	adds r0, r3, r1
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	adds r2, #4
	adds r0, r3, r2
	strh r1, [r0]
	ldr r1, [r4, #0x68]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4, #0x6c]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r5]
	ldr r0, _08074C24 @ =Task_Boss_8073CE4
	str r0, [r1, #8]
	b _08074C48
	.align 2, 0
_08074C10: .4byte gStageData
_08074C14: .4byte 0x0300003D
_08074C18: .4byte 0x03000044
_08074C1C: .4byte 0x0300005C
_08074C20: .4byte 0x03000060
_08074C24: .4byte Task_Boss_8073CE4
_08074C28:
	cmp r1, #1
	blt _08074C48
	cmp r1, #4
	bgt _08074C48
	cmp r1, #3
	blt _08074C48
	ldr r1, _08074C50 @ =0x0300003D
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08074C48
	adds r0, r4, #0
	bl sub_Boss_8074AF0
_08074C48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08074C50: .4byte 0x0300003D

	thumb_func_start Task_EggPinballInit
Task_EggPinballInit: @ 0x08074C54
	push {r4, r5, lr}
	ldr r4, _08074C74 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08074C7C
	ldr r1, [r4]
	ldr r0, _08074C78 @ =Task_Boss_807391C
	b _08074C80
	.align 2, 0
_08074C74: .4byte gCurTask
_08074C78: .4byte Task_Boss_807391C
_08074C7C:
	ldr r1, [r4]
	ldr r0, _08074C90 @ =Task_Boss_8073ACC
_08074C80:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_8074148
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08074C90: .4byte Task_Boss_8073ACC

	thumb_func_start Task_Boss_8074C94
Task_Boss_8074C94: @ 0x08074C94
	push {lr}
	ldr r0, _08074CC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r2, [r0, #0x68]
	ldr r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #0x14
	orrs r1, r3
	str r1, [r2, #4]
	ldr r2, [r0, #0x6c]
	ldr r1, [r2, #4]
	orrs r1, r3
	str r1, [r2, #4]
	bl sub_8074148
	pop {r0}
	bx r0
	.align 2, 0
_08074CC0: .4byte gCurTask

	thumb_func_start TaskDestructor_EggPinball
TaskDestructor_EggPinball: @ 0x08074CC4
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _08074CD8
	bl VramFree
_08074CD8:
	ldr r0, [r4, #0x4c]
	bl VramFree
	ldr r0, [r4, #0x50]
	bl VramFree
	ldr r0, [r4, #0x54]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

    @ R0: EggPinball *boss
	thumb_func_start sub_8074CF0
sub_8074CF0: @ 0x08074CF0
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x3c
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x10
	adds r1, r1, r0
	ldr r0, [r2, #0xc]
	str r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _08074D18
	movs r0, #0
	strb r0, [r3]
_08074D18:
	pop {r0}
	bx r0

    @ R0: EggPinball *boss
	thumb_func_start sub_8074D1C
sub_8074D1C: @ 0x08074D1C
	adds r2, r0, #0
	adds r2, #0x58
	ldrh r1, [r2]
	adds r1, #7
	strh r1, [r2]
	ldr r3, _08074D3C @ =gSineTable
	ldr r2, _08074D40 @ =0x000003FF
	ands r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	asrs r1, r1, #7
	adds r0, #0x5a
	strh r1, [r0]
	bx lr
	.align 2, 0
_08074D3C: .4byte gSineTable
_08074D40: .4byte 0x000003FF

    @ inline?
	thumb_func_start sub_8074D44
sub_8074D44: @ 0x08074D44
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r4, #0
	adds r6, #0x70
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _08074D72
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	ldr r1, [r4]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
_08074D72:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_EggPinballOuterPlatform
TaskDestructor_EggPinballOuterPlatform: @ 0x08074D7C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8074D90
sub_8074D90: @ 0x08074D90
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x28
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	ldr r3, _08074DC0 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08074DC0: .4byte gCamera

	thumb_func_start Task_Ball_8074DC4
Task_Ball_8074DC4: @ 0x08074DC4
	push {lr}
	ldr r3, _08074E00 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldrh r0, [r2, #0xe]
	adds r0, #0x18
	strh r0, [r2, #0xe]
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0xe
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	ldrb r0, [r2, #0x1b]
	subs r1, r0, #1
	strb r1, [r2, #0x1b]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08074E04
	ldr r0, [r3]
	bl TaskDestroy
	b _08074E12
	.align 2, 0
_08074E00: .4byte gCurTask
_08074E04:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08074E12
	adds r0, r2, #0
	bl sub_8074E18
_08074E12:
	pop {r0}
	bx r0
	.align 2, 0

    @ R0: EggPinballBall *ball
	thumb_func_start sub_8074E18
sub_8074E18: @ 0x08074E18
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x1c
	ldr r1, [r0, #4]
	asrs r1, r1, #8
	ldr r3, _08074E48 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r0, [r0, #8]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08074E48: .4byte gCamera

    @ R0: EggPinball *boss
	thumb_func_start sub_8074E4C
sub_8074E4C: @ 0x08074E4C
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x44
	movs r2, #0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x5c
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r3, #0x68]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r3, #0x6c]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	bx lr
	.align 2, 0
