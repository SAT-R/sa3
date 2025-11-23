.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8036D94
sub_8036D94: @ 0x08036D94
	push {r4, r5, lr}
	ldr r5, _08036DD4 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #1
	bl sub_80368E4
	ldr r0, _08036DD8 @ =0x03000068
	adds r4, r4, r0
	ldrh r0, [r4]
	subs r0, #0x14
	ldr r1, _08036DDC @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	ldr r1, _08036DE0 @ =0xFFFFFDFF
	adds r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0xd5
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08036DCA
	movs r0, #0xeb
	lsls r0, r0, #2
	strh r0, [r4]
	ldr r1, [r5]
	ldr r0, _08036DE4 @ =sub_803724C
	str r0, [r1, #8]
_08036DCA:
	bl sub_8036FBC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036DD4: .4byte gCurTask
_08036DD8: .4byte 0x03000068
_08036DDC: .4byte 0x000003FF
_08036DE0: .4byte 0xFFFFFDFF
_08036DE4: .4byte sub_803724C

	thumb_func_start sub_8036DE8
sub_8036DE8: @ 0x08036DE8
	push {r4, r5, lr}
	ldr r5, _08036E24 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0
	bl sub_80368E4
	ldr r0, _08036E28 @ =0x03000068
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r0, #0x14
	ldr r1, _08036E2C @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	subs r0, #0x55
	lsls r0, r0, #0x10
	movs r1, #0xd5
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08036E1A
	movs r0, #0x54
	strh r0, [r4]
	ldr r1, [r5]
	ldr r0, _08036E30 @ =sub_8037224
	str r0, [r1, #8]
_08036E1A:
	bl sub_8036FBC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036E24: .4byte gCurTask
_08036E28: .4byte 0x03000068
_08036E2C: .4byte 0x000003FF
_08036E30: .4byte sub_8037224

	thumb_func_start sub_8036E34
sub_8036E34: @ 0x08036E34
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	ldr r0, _08036E90 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r3, [r1]
	ldr r2, _08036E94 @ =0x0300000C
	adds r6, r0, r2
	adds r2, #0x5c
	adds r0, r0, r2
	ldrh r5, [r0]
	ldrb r2, [r1, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	ldrh r1, [r1, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08036E80
	rsbs r0, r2, #0
_08036E80:
	cmp r0, #0x20
	ble _08036E98
	adds r0, r6, #0
	adds r1, r4, #0
	bl ResolvePlayerSpriteCollision
	movs r0, #0
	b _08036F04
	.align 2, 0
_08036E90: .4byte gCurTask
_08036E94: .4byte 0x0300000C
_08036E98:
	ldr r1, _08036EDC @ =gSineTable
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r2, #0
	muls r1, r0, r1
	lsls r1, r1, #2
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	adds r5, r0, r1
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	adds r2, r4, #0
	adds r2, #0x25
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, r0, r1
	ldrh r0, [r4, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08036EE2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08036EE0
	subs r3, #0x20
	b _08036EE2
	.align 2, 0
_08036EDC: .4byte gSineTable
_08036EE0:
	adds r3, #0x20
_08036EE2:
	cmp r3, r5
	ble _08036F02
	adds r0, r5, #0
	adds r0, #8
	cmp r3, r0
	bge _08036F02
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _08036F02
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r0, r3, r0
	lsls r0, r0, #8
	str r0, [r4, #0x14]
	movs r7, #1
_08036F02:
	adds r0, r7, #0
_08036F04:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8036F0C
sub_8036F0C: @ 0x08036F0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08036F38 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #6
	bne _08036F3C
	movs r5, #0xf2
	lsls r5, r5, #2
	movs r0, #0
	mov sb, r0
	movs r1, #3
	mov sl, r1
	movs r0, #0x28
	mov r8, r0
	movs r0, #0x2c
	b _08036F4C
	.align 2, 0
_08036F38: .4byte gStageData
_08036F3C:
	ldr r5, _08036FB8 @ =0x00000375
	movs r1, #0
	mov sb, r1
	movs r0, #3
	mov sl, r0
	movs r1, #0x30
	mov r8, r1
	movs r0, #0x34
_08036F4C:
	bl VramMalloc
	str r0, [r6]
	movs r1, #0
	mov ip, r1
	movs r4, #0
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r6, #0x14]
	strh r5, [r6, #0xc]
	mov r1, sb
	strb r1, [r6, #0x1a]
	strh r4, [r6, #0x16]
	movs r1, #0xff
	strb r1, [r6, #0x1b]
	movs r3, #0x10
	strb r3, [r6, #0x1c]
	mov r1, ip
	strb r1, [r6, #0x1f]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r6, #8]
	mov r1, r8
	lsls r1, r1, #5
	mov r8, r1
	add r0, r8
	str r0, [r7]
	movs r0, #0xb8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xc]
	mov r0, sl
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	strb r3, [r7, #0x1c]
	mov r1, ip
	strb r1, [r7, #0x1f]
	str r2, [r7, #8]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036FB8: .4byte 0x00000375

	thumb_func_start sub_8036FBC
sub_8036FBC: @ 0x08036FBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08037024 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	adds r0, #0xc
	adds r5, r6, r0
	ldr r1, [r7]
	mov r8, r1
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	mov r2, r8
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	lsrs r2, r1, #0x10
	mov sb, r2
	asrs r1, r1, #0x10
	bl IsWorldPtActive
	cmp r0, #0
	bne _08037070
	movs r1, #0
	ldr r2, _08037028 @ =gPlayers
_0803700E:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	beq _0803702C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08037030
	.align 2, 0
_08037024: .4byte gCurTask
_08037028: .4byte gPlayers
_0803702C:
	ldr r0, _08037068 @ =gStageData
	ldrb r1, [r0, #6]
_08037030:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r5, #0
	adds r1, r4, #0
	str r2, [sp]
	bl ResolvePlayerSpriteCollision
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _0803700E
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _0803706C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803711A
	.align 2, 0
_08037068: .4byte gStageData
_0803706C: .4byte gCurTask
_08037070:
	ldr r1, _0803708C @ =0x03000068
	adds r0, r6, r1
	ldrh r0, [r0]
	ldr r2, _08037090 @ =0x000003FF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bls _08037098
	ldr r0, [r5, #8]
	ldr r1, _08037094 @ =0xFFFFFBFF
	ands r0, r1
	b _080370A0
	.align 2, 0
_0803708C: .4byte 0x03000068
_08037090: .4byte 0x000003FF
_08037094: .4byte 0xFFFFFBFF
_08037098:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_080370A0:
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bls _080370C4
	movs r0, #0x80
	lsls r0, r0, #3
	subs r0, r0, r2
	cmp r0, #0
	bge _080370BA
	ldr r1, _080370C0 @ =0xFFFFFC00
	adds r0, r1, #0
	adds r0, r2, r0
_080370BA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080370C6
	.align 2, 0
_080370C0: .4byte 0xFFFFFC00
_080370C4:
	adds r0, r2, #0
_080370C6:
	movs r1, #0
	cmp r0, #0x1b
	bls _080370D4
	movs r1, #2
	cmp r0, #0x37
	bhi _080370D4
	movs r1, #1
_080370D4:
	strb r1, [r5, #0x1a]
	ldr r4, _0803712C @ =gCamera
	ldr r1, [r4]
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #4]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r5, r7, #0
	adds r5, #0x40
	ldr r0, [r7, #0x6c]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r7, #0x70]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
_0803711A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803712C: .4byte gCamera

	thumb_func_start sub_8037130
sub_8037130: @ 0x08037130
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8037144
sub_8037144: @ 0x08037144
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r0, #0
	mov r8, r0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, #0
	cmp r2, #0
	bge _0803717A
	rsbs r1, r2, #0
_0803717A:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0803718E
	adds r0, r6, #0
	adds r1, r4, #0
	bl ResolvePlayerSpriteCollision
	movs r0, #0
	b _08037212
_0803718E:
	ldr r1, _080371B8 @ =gSineTable
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r2, #0
	muls r1, r0, r1
	lsls r1, r1, #2
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	adds r3, r0, r1
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _080371BC
	adds r0, r3, #0
	subs r0, #0xb
	b _080371C0
	.align 2, 0
_080371B8: .4byte gSineTable
_080371BC:
	adds r0, r3, #0
	subs r0, #0x10
_080371C0:
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	cmp r0, r1
	bge _080371D6
	movs r0, #0x24
	ands r0, r2
	cmp r0, #0x20
	bne _08037210
	ldr r0, [r4, #0x6c]
	cmp r0, r6
	bne _08037210
_080371D6:
	movs r0, #1
	mov r8, r0
	str r1, [r4, #0x14]
	asrs r0, r1, #8
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	adds r2, r4, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #0
	str r3, [sp]
	ldr r3, _08037220 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bge _08037202
	lsls r1, r0, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08037202:
	ldr r0, [r4, #4]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x25
	ands r0, r1
	str r0, [r4, #4]
	str r6, [r4, #0x6c]
_08037210:
	mov r0, r8
_08037212:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08037220: .4byte sub_805217C

	thumb_func_start sub_8037224
sub_8037224: @ 0x08037224
	push {r4, lr}
	ldr r4, _08037244 @ =gCurTask
	movs r0, #1
	bl sub_8036584
	cmp r0, #0
	beq _08037238
	ldr r1, [r4]
	ldr r0, _08037248 @ =sub_8036D94
	str r0, [r1, #8]
_08037238:
	bl sub_8036FBC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037244: .4byte gCurTask
_08037248: .4byte sub_8036D94

	thumb_func_start sub_803724C
sub_803724C: @ 0x0803724C
	push {r4, lr}
	ldr r4, _0803726C @ =gCurTask
	movs r0, #0
	bl sub_8036584
	cmp r0, #0
	beq _08037260
	ldr r1, [r4]
	ldr r0, _08037270 @ =sub_8036DE8
	str r0, [r1, #8]
_08037260:
	bl sub_8036FBC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803726C: .4byte gCurTask
_08037270: .4byte sub_8036DE8
