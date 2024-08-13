.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80417F0
sub_80417F0: @ 0x080417F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0x27
	bl VramMalloc
	adds r1, r6, #0
	adds r1, #0xac
	str r0, [r1]
	str r0, [sp]
	movs r1, #0x90
	lsls r1, r1, #2
	adds r1, r0, r1
	str r1, [sp, #4]
	ldr r0, _0804186C @ =gStageData
	ldrb r1, [r0, #9]
	str r1, [sp, #8]
	movs r2, #0
	movs r1, #0xb0
	adds r1, r1, r6
	mov sb, r1
	adds r0, #0xbe
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #0xc]
_0804182A:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, #0
	adds r1, #0xc
	adds r3, r6, r1
	adds r0, #0x5c
	adds r5, r6, r0
	ldr r0, [sp]
	str r0, [r3]
	adds r0, r6, #0
	adds r0, #0xb1
	ldrb r4, [r0]
	mov ip, r2
	cmp r4, #7
	bne _0804189C
	ldr r0, _08041870 @ =gSaveGame
	adds r0, #0x29
	ldr r1, [sp, #8]
	adds r0, r1, r0
	ldrb r1, [r0]
	movs r2, #8
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08041878
	ldr r0, _08041874 @ =0x00000391
	strh r0, [r3, #0xc]
	mov r1, sb
	strb r2, [r1]
	b _080418D6
	.align 2, 0
_0804186C: .4byte gStageData
_08041870: .4byte gSaveGame
_08041874: .4byte 0x00000391
_08041878:
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #7
	bne _0804188C
	ldr r0, _08041888 @ =0x00000391
	strh r0, [r3, #0xc]
	movs r0, #4
	b _080418D2
	.align 2, 0
_08041888: .4byte 0x00000391
_0804188C:
	ldr r0, _08041898 @ =0x00000391
	strh r0, [r3, #0xc]
	mov r1, sb
	strb r4, [r1]
	b _080418D6
	.align 2, 0
_08041898: .4byte 0x00000391
_0804189C:
	cmp r4, #8
	bne _080418AC
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080418BC
_080418AC:
	cmp r4, #9
	bne _080418CC
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080418CC
_080418BC:
	ldr r1, _080418C8 @ =0x00000391
	strh r1, [r3, #0xc]
	movs r1, #0
	mov r0, sb
	strb r1, [r0]
	b _080418D6
	.align 2, 0
_080418C8: .4byte 0x00000391
_080418CC:
	ldr r0, _08041980 @ =0x00000391
	strh r0, [r3, #0xc]
	movs r0, #3
_080418D2:
	mov r1, sb
	strb r0, [r1]
_080418D6:
	adds r0, r6, #0
	adds r0, #0xb0
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r3, #0x1a]
	movs r2, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	str r0, [r3, #0x20]
	movs r7, #0x80
	lsls r7, r7, #5
	str r7, [r3, #8]
	mov r0, ip
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _0804191A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r7
	str r0, [r3, #8]
_0804191A:
	adds r0, r3, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	str r0, [r5]
	ldr r0, _08041984 @ =0x00000392
	strh r0, [r5, #0xc]
	ldr r2, [sp, #0x14]
	strb r2, [r5, #0x1a]
	subs r0, #0x92
	strh r0, [r5, #0x14]
	ldr r1, [sp, #0x10]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	ldrb r0, [r5, #0x1b]
	mov r1, r8
	orrs r0, r1
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	mov r1, sl
	str r1, [r5, #0x20]
	str r7, [r5, #8]
	cmp r4, #0
	beq _0804195A
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r7
	str r0, [r5, #8]
_0804195A:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804196E
	b _0804182A
_0804196E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041980: .4byte 0x00000391
_08041984: .4byte 0x00000392

	thumb_func_start sub_8041988
sub_8041988: @ 0x08041988
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08041A08 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0xc
	adds r6, r0, r1
	adds r1, #0x28
	adds r7, r0, r1
	ldr r0, [r4]
	mov sb, r0
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	mov r0, sb
	ldrb r1, [r0, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	adds r0, r5, #0
	bl IsPointInScreenRect
	cmp r0, #0
	beq _08041A10
	ldr r0, _08041A0C @ =gCamera
	ldr r1, [r0]
	subs r1, r5, r1
	strh r1, [r6, #0x10]
	strh r1, [r7, #0x10]
	ldr r0, [r0, #4]
	mov r1, r8
	subs r0, r1, r0
	strh r0, [r6, #0x12]
	strh r0, [r7, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #1
	b _08041A20
	.align 2, 0
_08041A08: .4byte gCurTask
_08041A0C: .4byte gCamera
_08041A10:
	ldrb r0, [r4, #0xa]
	mov r1, sb
	strb r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
_08041A20:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_BonusUfo
TaskDestructor_BonusUfo: @ 0x08041A30
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08041A44 @ =0x030000AC
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_08041A44: .4byte 0x030000AC

	thumb_func_start sub_8041A48
sub_8041A48: @ 0x08041A48
	push {r4, r5, lr}
	ldr r0, _08041A8C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08041A90 @ =0x0300000C
	adds r1, r4, r0
	adds r0, #0x50
	adds r5, r4, r0
	adds r0, #0x28
	adds r4, r4, r0
	ldrh r0, [r1, #0x10]
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0x10]
	ldrh r0, [r1, #0x12]
	strh r0, [r5, #0x12]
	ldrh r0, [r1, #0x12]
	strh r0, [r4, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041A8C: .4byte gCurTask
_08041A90: .4byte 0x0300000C
