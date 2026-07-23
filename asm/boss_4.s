.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_806FE98
sub_806FE98: @ 0x0806FE98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	ldr r0, _0806FF1C @ =sub_806FFCC
	movs r1, #0x9b
	lsls r1, r1, #2
	movs r2, #0x8c
	lsls r2, r2, #6
	movs r3, #0
	str r3, [sp]
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r0, [sp, #0xc]
	ldr r0, _0806FF20 @ =0x03000268
	adds r1, r2, r0
	movs r0, #0x96
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r3, r0, r3
	str r3, [sp, #4]
	ldr r0, [r1, #4]
	ldr r7, _0806FF24 @ =0xFFFFD800
	adds r7, r0, r7
	str r7, [sp, #8]
	movs r5, #0
	ldr r0, _0806FF28 @ =0x03000148
	adds r0, r0, r2
	mov sl, r0
	ldr r1, _0806FF2C @ =0x0300014C
	adds r1, r1, r2
	mov sb, r1
_0806FEEC:
	lsls r1, r5, #3
	mov r2, sl
	adds r0, r2, r1
	ldr r3, [sp, #4]
	str r3, [r0]
	add r1, sb
	ldr r7, [sp, #8]
	str r7, [r1]
	lsls r1, r5, #2
	ldr r2, [sp, #0xc]
	movs r3, #0x82
	lsls r3, r3, #2
	adds r0, r2, r3
	adds r3, r0, r1
	adds r0, r5, #0
	subs r0, #0x10
	lsls r2, r0, #4
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0806FF30
	adds r0, r2, #0
	subs r0, #0x10
	b _0806FF34
	.align 2, 0
_0806FF1C: .4byte sub_806FFCC
_0806FF20: .4byte 0x03000268
_0806FF24: .4byte 0xFFFFD800
_0806FF28: .4byte 0x03000148
_0806FF2C: .4byte 0x0300014C
_0806FF30:
	adds r0, r2, #0
	adds r0, #0x10
_0806FF34:
	movs r7, #0
	mov ip, r7
	movs r6, #0
	strh r0, [r3]
	ldr r0, [sp, #0xc]
	ldr r3, _0806FFC0 @ =0x0000020A
	adds r2, r0, r3
	adds r2, r2, r1
	movs r0, #2
	ands r0, r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r0, r0, #5
	ldr r7, _0806FFC4 @ =0xFFFFFE00
	adds r1, r7, #0
	subs r1, r1, r0
	movs r0, #1
	ands r0, r5
	lsls r0, r0, #6
	subs r1, r1, r0
	strh r1, [r2]
	movs r4, #7
	ands r4, r5
	adds r2, r4, #0
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #8
	ldr r1, [sp, #0xc]
	adds r3, r1, r0
	lsls r1, r2, #5
	mov r7, r8
	ldr r0, [r7, #0x3c]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, _0806FFC8 @ =0x000004D4
	strh r0, [r3, #0xc]
	strb r4, [r3, #0x1a]
	cmp r2, #5
	bls _0806FF88
	subs r0, r4, #6
	strb r0, [r3, #0x1a]
_0806FF88:
	strh r6, [r3, #0x14]
	strh r6, [r3, #0xe]
	strh r6, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	mov r0, ip
	strb r0, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x17
	bls _0806FEEC
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806FFC0: .4byte 0x0000020A
_0806FFC4: .4byte 0xFFFFFE00
_0806FFC8: .4byte 0x000004D4

	thumb_func_start sub_806FFCC
sub_806FFCC: @ 0x0806FFCC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r2, _08070004 @ =gCurTask
	ldr r0, [r2]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r0
	mov sb, r1
	ldr r1, _08070008 @ =0x03000148
	adds r6, r0, r1
	adds r1, #0xc0
	adds r4, r0, r1
	adds r1, #0x60
	adds r0, r0, r1
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0807000C
	ldr r0, [r2]
	bl TaskDestroy
	b _08070126
	.align 2, 0
_08070004: .4byte gCurTask
_08070008: .4byte 0x03000148
_0807000C:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _0807001E
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0807001E
	b _08070126
_0807001E:
	movs r7, #0
	ldr r2, _08070134 @ =gCamera
	mov r8, r2
_08070024:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	adds r0, #8
	mov r1, sb
	adds r5, r1, r0
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r0, [r6]
	adds r0, r0, r1
	stm r6!, {r0}
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	adds r4, #2
	ldrh r0, [r4]
	adds r0, #7
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	stm r6!, {r0}
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r4, #2
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _08070024
	cmp r7, #0xf
	bhi _080700CE
	ldr r2, _08070134 @ =gCamera
_0807007C:
	movs r1, #7
	ands r1, r7
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	mov r1, sb
	adds r5, r1, r0
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	stm r6!, {r0}
	asrs r0, r0, #8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	adds r4, #2
	ldrh r0, [r4]
	adds r0, #8
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	stm r6!, {r0}
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r4, #2
	adds r0, r5, #0
	str r2, [sp]
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, [sp]
	cmp r7, #0xf
	bls _0807007C
_080700CE:
	cmp r7, #0x17
	bhi _08070126
	ldr r2, _08070134 @ =gCamera
_080700D4:
	movs r1, #7
	ands r1, r7
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	mov r1, sb
	adds r5, r1, r0
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	stm r6!, {r0}
	asrs r0, r0, #8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	adds r4, #2
	ldrh r0, [r4]
	adds r0, #7
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	stm r6!, {r0}
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r4, #2
	adds r0, r5, #0
	str r2, [sp]
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, [sp]
	cmp r7, #0x17
	bls _080700D4
_08070126:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070134: .4byte gCamera

	thumb_func_start sub_8070138
sub_8070138: @ 0x08070138
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	movs r0, #0x40
	bl VramMalloc
	adds r3, r4, #0
	adds r3, #0xc8
	str r0, [r3]
	movs r0, #0
	mov sb, r0
	movs r5, #0
	strh r5, [r4, #0x22]
	strh r5, [r4, #0x24]
	movs r0, #1
	strh r0, [r4, #0x26]
	adds r1, r4, #0
	adds r1, #0xa0
	ldr r0, _080701F4 @ =0xFFFFE800
	str r0, [r1]
	adds r2, r4, #0
	adds r2, #0xa4
	ldr r0, _080701F8 @ =0xFFFFE400
	str r0, [r2]
	adds r6, r4, #0
	adds r6, #0x98
	ldr r0, [r4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r6]
	movs r1, #0x9c
	adds r1, r1, r4
	mov r8, r1
	ldr r0, [r4, #4]
	ldr r1, [r2]
	adds r0, r0, r1
	mov r2, r8
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0xd0
	adds r4, #0xf8
	ldr r1, [r3]
	str r1, [r0]
	ldr r1, _080701FC @ =0x000004CB
	strh r1, [r0, #0xc]
	mov r1, sb
	strb r1, [r0, #0x1a]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r2, sb
	strb r2, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	ldr r1, _08070200 @ =0x0000103E
	str r1, [r0, #8]
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r3, _08070204 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	mov r2, r8
	ldr r1, [r2]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	strh r5, [r4]
	ldrh r1, [r0, #0x10]
	strh r1, [r4, #6]
	ldrh r1, [r0, #0x12]
	strh r1, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r4, #2]
	strh r1, [r4, #4]
	bl UpdateSpriteAnimation
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080701F4: .4byte 0xFFFFE800
_080701F8: .4byte 0xFFFFE400
_080701FC: .4byte 0x000004CB
_08070200: .4byte 0x0000103E
_08070204: .4byte gCamera

	thumb_func_start sub_8070208
sub_8070208: @ 0x08070208
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x24]
	cmp r0, #0x78
	beq _08070284
	cmp r0, #0x78
	bgt _0807022E
	cmp r0, #0x64
	beq _0807024A
	adds r5, r4, #0
	adds r5, #0xa0
	cmp r0, #0x64
	bgt _08070224
	b _08070350
_08070224:
	cmp r0, #0x65
	beq _08070252
	cmp r0, #0x6e
	beq _08070262
	b _08070350
_0807022E:
	cmp r0, #0xd2
	beq _080702DE
	cmp r0, #0xd2
	bgt _08070240
	cmp r0, #0x82
	beq _0807029C
	cmp r0, #0xc8
	beq _080702CC
	b _0807034C
_08070240:
	cmp r0, #0xdc
	beq _080702F4
	cmp r0, #0xe6
	beq _0807031C
	b _0807034C
_0807024A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_806FAFC
_08070252:
	adds r0, r4, #0
	movs r1, #2
	bl sub_8071968
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r0, #0x6e
	b _0807034A
_08070262:
	ldrh r0, [r4, #0x26]
	subs r0, #1
	strh r0, [r4, #0x26]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bne _08070350
	adds r0, r4, #0
	movs r1, #0
	bl sub_8071968
	strh r6, [r4, #0x22]
	movs r0, #0x78
	strh r0, [r4, #0x24]
	bl sub_807A468
	b _08070350
_08070284:
	ldrh r0, [r4, #0x22]
	adds r0, #0x10
	strh r0, [r4, #0x22]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r4, #0
	adds r5, #0xa0
	cmp r0, #0xff
	bls _08070350
	movs r0, #0x82
	strh r0, [r4, #0x24]
	b _08070350
_0807029C:
	ldrh r1, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _080702AC
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r4, #0x22]
_080702AC:
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	str r1, [r0]
	ldr r2, _080702C8 @ =0xFFFFF800
	adds r5, r0, #0
	cmp r1, r2
	blt _08070350
	movs r0, #0
	strh r0, [r4, #0x24]
	b _08070350
	.align 2, 0
_080702C8: .4byte 0xFFFFF800
_080702CC:
	movs r0, #0x3c
	strh r0, [r4, #0x26]
	movs r0, #0xd2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #2
	bl sub_806FAFC
	b _0807034C
_080702DE:
	ldrh r0, [r4, #0x26]
	subs r0, #1
	strh r0, [r4, #0x26]
	lsls r0, r0, #0x10
	adds r5, r4, #0
	adds r5, #0xa0
	cmp r0, #0
	bne _08070350
	movs r0, #0xdc
	strh r0, [r4, #0x24]
	b _08070350
_080702F4:
	ldrh r0, [r4, #0x22]
	subs r0, #0x10
	strh r0, [r4, #0x22]
	adds r1, r4, #0
	adds r1, #0xa0
	ldr r0, [r1]
	ldr r2, _08070314 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08070318 @ =0xFFFFE800
	adds r5, r1, #0
	cmp r0, r2
	bgt _08070350
	movs r0, #0xe6
	strh r0, [r4, #0x24]
	b _08070350
	.align 2, 0
_08070314: .4byte 0xFFFFFF00
_08070318: .4byte 0xFFFFE800
_0807031C:
	ldrh r0, [r4, #0x22]
	subs r0, #0x10
	strh r0, [r4, #0x22]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, r4, #0
	adds r5, #0xa0
	cmp r6, #0
	bne _08070350
	adds r0, r4, #0
	movs r1, #0
	bl sub_806FAFC
	ldrh r0, [r4, #0x10]
	cmp r0, #1
	beq _08070346
	movs r0, #1
	strh r0, [r4, #0x10]
	subs r0, #9
	str r0, [r4, #8]
	str r6, [r4, #0xc]
_08070346:
	movs r0, #0
	strb r0, [r4, #0x13]
_0807034A:
	strh r0, [r4, #0x24]
_0807034C:
	adds r5, r4, #0
	adds r5, #0xa0
_08070350:
	adds r2, r4, #0
	adds r2, #0x98
	ldr r0, [r4]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	adds r1, r4, #0
	adds r1, #0xa4
	ldr r0, [r4, #4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8070370
sub_8070370: @ 0x08070370
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0xd0
	adds r5, r3, #0
	adds r5, #0xf8
	adds r0, #0x98
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, _080703CC @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r3, #0
	adds r0, #0x9c
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldrh r1, [r4, #0xc]
	ldr r0, _080703D0 @ =0x000004CB
	cmp r1, r0
	bne _080703BA
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _080703BA
	ldrh r0, [r3, #0x22]
	strh r0, [r5]
	ldrh r0, [r4, #0x10]
	strh r0, [r5, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r5, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	bl TransformSprite
_080703BA:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080703CC: .4byte gCamera
_080703D0: .4byte 0x000004CB

	thumb_func_start sub_80703D4
sub_80703D4: @ 0x080703D4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08070400 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r4, [r6]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r7, r4, r0
	ldrh r0, [r6, #4]
	cmp r0, #0
	beq _080703F8
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _08070404
_080703F8:
	adds r0, r2, #0
	bl TaskDestroy
	b _08070448
	.align 2, 0
_08070400: .4byte gCurTask
_08070404:
	adds r0, r4, #0
	bl sub_8071034
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _08070442
	adds r5, r4, #0
	adds r5, #0xa8
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r4, #0xac
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x40]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x44]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
_08070442:
	ldr r0, [r6]
	bl sub_80711C8
_08070448:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8070450
sub_8070450: @ 0x08070450
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r7, [r0]
	adds r0, r7, #0
	adds r0, #0xcc
	ldr r5, [r0]
	cmp r6, #1
	beq _08070568
	cmp r6, #1
	bgt _08070476
	cmp r6, #0
	beq _0807047E
	b _08070782
_08070476:
	cmp r6, #2
	bne _0807047C
	b _080706BC
_0807047C:
	b _08070782
_0807047E:
	strh r6, [r7, #0x28]
	movs r0, #0xa8
	adds r0, r0, r7
	mov sb, r0
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	mov r2, sb
	str r0, [r2]
	adds r4, r7, #0
	adds r4, #0xac
	str r4, [sp]
	ldr r0, [r7, #4]
	ldr r1, _08070558 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r3, r7, r2
	movs r4, #0x96
	lsls r4, r4, #1
	adds r2, r7, r4
	str r5, [r3]
	ldr r0, _0807055C @ =0x000004CF
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r6, [r3, #0xe]
	strh r6, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r4, #0
	strb r4, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp, #4]
	ldr r0, _08070560 @ =0x0000103F
	str r0, [r3, #8]
	mov r4, sb
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, _08070564 @ =gCamera
	mov sl, r1
	ldr r1, [r1]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r4, [sp]
	ldr r0, [r4]
	asrs r0, r0, #8
	mov r4, sl
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	strh r6, [r2]
	ldrh r0, [r3, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r3, #0x12]
	strh r0, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r3, r7, r1
	str r5, [r3]
	movs r0, #0x9a
	lsls r0, r0, #3
	strh r0, [r3, #0xc]
	movs r2, #0
	strb r2, [r3, #0x1a]
	subs r0, #0x10
	strh r0, [r3, #0x14]
	strh r6, [r3, #0xe]
	strh r6, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r4, #0x10
	strb r4, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	str r0, [r3, #0x20]
	ldr r0, [sp, #4]
	str r0, [r3, #8]
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	mov r2, sl
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r4, [sp]
	b _08070696
	.align 2, 0
_08070558: .4byte 0xFFFFE000
_0807055C: .4byte 0x000004CF
_08070560: .4byte 0x0000103F
_08070564: .4byte gCamera
_08070568:
	adds r0, r7, #0
	adds r0, #0xa8
	str r0, [sp, #8]
	ldr r0, [r7]
	ldr r1, [sp, #8]
	str r0, [r1]
	adds r2, r7, #0
	adds r2, #0xac
	str r2, [sp, #0xc]
	ldr r0, [r7, #4]
	ldr r4, _080706A8 @ =0xFFFFE000
	adds r0, r0, r4
	str r0, [r2]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r3, r7, r0
	movs r1, #0x96
	lsls r1, r1, #1
	adds r2, r7, r1
	str r5, [r3]
	ldr r0, _080706AC @ =0x000004D1
	strh r0, [r3, #0xc]
	movs r0, #4
	strb r0, [r3, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	movs r4, #0
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r1, #0
	strb r1, [r3, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r3, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	ldr r1, [sp, #8]
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r4, _080706B0 @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r1, [sp, #0xc]
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	movs r4, #0
	strh r4, [r2]
	ldrh r0, [r3, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r3, #0x12]
	strh r0, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	mov r1, r8
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r2, #0x80
	lsls r2, r2, #4
	adds r5, r5, r2
	movs r4, #0x9c
	lsls r4, r4, #1
	adds r3, r7, r4
	str r5, [r3]
	ldr r0, _080706B4 @ =0x000004D2
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r3, #0x14]
	movs r2, #0
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r4, #0x10
	strb r4, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r3, #0x20]
	movs r2, #0x80
	lsls r2, r2, #5
	str r2, [r3, #8]
	ldr r4, [sp, #8]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r2, _080706B0 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r4, [sp, #0xc]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	add r5, r8
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r3, r7, r0
	str r5, [r3]
	ldr r0, _080706B8 @ =0x000004D3
	strh r0, [r3, #0xc]
	movs r1, #0
	strb r1, [r3, #0x1a]
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r3, #0x14]
	movs r4, #0
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r1, [r3, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r3, #0x20]
	movs r4, #0x80
	lsls r4, r4, #5
	str r4, [r3, #8]
	ldr r1, [sp, #8]
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r2, _080706B0 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r4, [sp, #0xc]
_08070696:
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	b _08070782
	.align 2, 0
_080706A8: .4byte 0xFFFFE000
_080706AC: .4byte 0x000004D1
_080706B0: .4byte gCamera
_080706B4: .4byte 0x000004D2
_080706B8: .4byte 0x000004D3
_080706BC:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r3, r7, r0
	adds r1, r7, #0
	adds r1, #0xa8
	movs r2, #0xfa
	lsls r2, r2, #9
	str r2, [r1]
	adds r2, r7, #0
	adds r2, #0xac
	movs r4, #0
	str r4, [r2]
	str r5, [r3]
	ldr r0, _08070794 @ =0x000004CC
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r4, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	movs r4, #0x80
	lsls r4, r4, #5
	str r4, [r3, #8]
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r4, _08070798 @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r5, r5, r0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r3, r7, r1
	adds r1, r7, #0
	adds r1, #0xb8
	movs r2, #0xfa
	lsls r2, r2, #9
	str r2, [r1]
	adds r2, r7, #0
	adds r2, #0xbc
	movs r0, #0
	str r0, [r2]
	str r5, [r3]
	ldr r0, _0807079C @ =0x000004CE
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0x14]
	movs r0, #0
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
_08070782:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08070794: .4byte 0x000004CC
_08070798: .4byte gCamera
_0807079C: .4byte 0x000004CE

	thumb_func_start sub_80707A0
sub_80707A0: @ 0x080707A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	mov sb, r0
	movs r1, #0x82
	lsls r1, r1, #1
	adds r4, r6, r1
	ldr r2, [r6, #0x40]
	mov sl, r2
	ldrh r1, [r5, #6]
	movs r2, #0x96
	lsls r2, r2, #1
	cmp r1, r2
	bne _080707CA
	b _080708EC
_080707CA:
	cmp r1, r2
	bgt _080707EA
	cmp r1, #0x64
	beq _08070874
	cmp r1, #0x64
	bgt _080707E0
	cmp r1, #0
	beq _08070822
	cmp r1, #0xa
	beq _0807082A
	b _08070AAC
_080707E0:
	cmp r1, #0xc8
	beq _08070898
	cmp r1, #0xd2
	beq _080708AE
	b _08070AAC
_080707EA:
	movs r2, #0xd2
	lsls r2, r2, #1
	cmp r1, r2
	bne _080707F4
	b _080709FC
_080707F4:
	cmp r1, r2
	bgt _0807080C
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r1, r0
	bne _08070802
	b _080709B0
_08070802:
	adds r0, #0xa
	cmp r1, r0
	bne _0807080A
	b _080709D0
_0807080A:
	b _08070AAC
_0807080C:
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r1, r0
	bne _08070816
	b _08070A54
_08070816:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _08070820
	b _08070AA4
_08070820:
	b _08070AAC
_08070822:
	movs r0, #0x3c
	strh r0, [r5, #8]
	movs r0, #0xa
	b _08070AAA
_0807082A:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08070838
	b _08070AAC
_08070838:
	mov r3, sb
	strh r3, [r5, #0xa]
	adds r1, r6, #0
	adds r1, #0xa8
	ldr r0, [r6]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r6, #4]
	ldr r2, _08070868 @ =0xFFFFE400
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0xb0
	mov r3, sb
	str r3, [r0]
	adds r1, #8
	ldr r0, _0807086C @ =0xFFFFFC00
	str r0, [r1]
	movs r0, #0x64
	strh r0, [r5, #6]
	ldr r0, _08070870 @ =0x0000022A
	bl m4aSongNumStart
	b _08070AAC
	.align 2, 0
_08070868: .4byte 0xFFFFE400
_0807086C: .4byte 0xFFFFFC00
_08070870: .4byte 0x0000022A
_08070874:
	adds r2, r6, #0
	adds r2, #0xac
	adds r1, r6, #0
	adds r1, #0xb4
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	asrs r0, r0, #8
	movs r1, #0x28
	rsbs r1, r1, #0
	cmp r0, r1
	blt _08070890
	b _08070AAC
_08070890:
	movs r0, #0xb4
	strh r0, [r5, #8]
	movs r0, #0xc8
	b _08070AAA
_08070898:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080708A6
	b _08070AB2
_080708A6:
	movs r0, #0xa
	strh r0, [r5, #8]
	movs r0, #0xd2
	b _08070AAA
_080708AE:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080708BC
	b _08070AAC
_080708BC:
	ldr r0, _080708E8 @ =0x000004CC
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r1, r6, #0
	adds r1, #0xa8
	adds r0, r6, #0
	adds r0, #0xb8
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #0xc
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r1]
	adds r1, #8
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r1]
	strh r2, [r5, #6]
	b _08070AAC
	.align 2, 0
_080708E8: .4byte 0x000004CC
_080708EC:
	adds r7, r6, #0
	adds r7, #0xac
	adds r1, r6, #0
	adds r1, #0xb4
	ldr r0, [r7]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r7]
	asrs r0, r0, #8
	movs r1, #0xa8
	adds r1, r1, r6
	mov r8, r1
	ldr r1, [r1]
	asrs r1, r1, #8
	mov r2, sb
	str r2, [sp]
	ldr r2, _08070998 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801E4E4
	adds r2, r0, #0
	cmp r2, #0
	blt _0807092C
	ldr r0, [r7]
	asrs r0, r0, #8
	ldr r1, _0807099C @ =gCamera
	ldr r1, [r1, #0x14]
	cmp r0, r1
	bgt _0807092C
	b _08070AAC
_0807092C:
	lsls r1, r2, #8
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	movs r2, #0
	ldr r0, _080709A0 @ =0x000004CD
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r4, r6, r3
	adds r1, r6, #0
	adds r1, #0xb8
	mov r3, r8
	ldr r0, [r3]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r7]
	ldr r3, _080709A4 @ =0xFFFFF600
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _080709A8 @ =0x00000506
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl CreateScreenShake
	ldr r0, _080709AC @ =0x0000022B
	bl m4aSongNumStart
	movs r0, #0x22
	strh r0, [r5, #8]
	movs r0, #0xc8
	lsls r0, r0, #1
	b _08070AAA
	.align 2, 0
_08070998: .4byte sa2__sub_801EE64
_0807099C: .4byte gCamera
_080709A0: .4byte 0x000004CD
_080709A4: .4byte 0xFFFFF600
_080709A8: .4byte 0x00000506
_080709AC: .4byte 0x0000022B
_080709B0:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08070AAC
	adds r1, r6, #0
	adds r1, #0xa8
	movs r0, #0xfa
	lsls r0, r0, #9
	str r0, [r1]
	movs r0, #0x78
	strh r0, [r5, #8]
	movs r0, #0xcd
	lsls r0, r0, #1
	b _08070AAA
_080709D0:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08070AAC
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r0, _080709F8 @ =0x0000050B
	strh r0, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x64
	strh r0, [r5, #8]
	strh r2, [r5, #6]
	b _08070AAC
	.align 2, 0
_080709F8: .4byte 0x0000050B
_080709FC:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08070AAC
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r4, r6, r1
	ldr r0, _08070A50 @ =0x0000050A
	strh r0, [r4, #0xc]
	movs r0, #0
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r0, r6, #0
	adds r0, #0xb8
	ldr r1, [r6]
	ldr r0, [r0]
	adds r2, r6, #0
	adds r2, #0xb0
	subs r0, r1, r0
	cmp r0, #0
	bge _08070A2E
	adds r0, #0x3f
_08070A2E:
	asrs r0, r0, #6
	str r0, [r2]
	adds r1, r6, #0
	adds r1, #0xac
	adds r0, r6, #0
	adds r0, #0xbc
	ldr r0, [r0]
	str r0, [r1]
	mov r2, sb
	strh r2, [r5, #0xa]
	movs r0, #0xfa
	lsls r0, r0, #1
	strh r0, [r5, #6]
	movs r0, #0x74
	bl m4aSongNumStart
	b _08070AAC
	.align 2, 0
_08070A50: .4byte 0x0000050A
_08070A54:
	ldr r1, _08070AA0 @ =gSineTable
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	cmp r0, #0
	bge _08070A6C
	adds r0, #0x3f
_08070A6C:
	asrs r1, r0, #6
	adds r2, r6, #0
	adds r2, #0xbc
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	subs r0, r0, r1
	str r0, [r2]
	subs r2, #4
	adds r1, r6, #0
	adds r1, #0xb0
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldrh r0, [r5, #0xa]
	adds r0, #8
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _08070AAC
	movs r0, #0xfa
	lsls r0, r0, #2
	b _08070AAA
	.align 2, 0
_08070AA0: .4byte gSineTable
_08070AA4:
	mov r0, sb
	strh r0, [r5, #4]
	ldr r0, _08070ACC @ =0x000003F2
_08070AAA:
	strh r0, [r5, #6]
_08070AAC:
	mov r1, sb
	cmp r1, #0
	beq _08070AF8
_08070AB2:
	mov r3, sl
	ldr r2, [r3, #0x10]
	asrs r1, r2, #8
	movs r0, #0xa8
	lsls r0, r0, #3
	cmp r1, r0
	bgt _08070AD0
	adds r1, r6, #0
	adds r1, #0xb8
	movs r0, #0xa8
	lsls r0, r0, #0xb
	str r0, [r1]
	b _08070AEE
	.align 2, 0
_08070ACC: .4byte 0x000003F2
_08070AD0:
	ldr r0, _08070AE4 @ =0x0000063F
	cmp r1, r0
	ble _08070AE8
	adds r1, r6, #0
	adds r1, #0xb8
	movs r0, #0xc8
	lsls r0, r0, #0xb
	str r0, [r1]
	b _08070AEE
	.align 2, 0
_08070AE4: .4byte 0x0000063F
_08070AE8:
	adds r0, r6, #0
	adds r0, #0xb8
	str r2, [r0]
_08070AEE:
	adds r1, r6, #0
	adds r1, #0xbc
	movs r0, #0x96
	lsls r0, r0, #8
	str r0, [r1]
_08070AF8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8070B08
sub_8070B08: @ 0x08070B08
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r1, [r5, #6]
	cmp r1, #0xe6
	bne _08070B18
	b _08070D38
_08070B18:
	cmp r1, #0xe6
	bgt _08070B46
	cmp r1, #0x64
	beq _08070BBC
	cmp r1, #0x64
	bgt _08070B2E
	cmp r1, #0
	beq _08070B8C
	cmp r1, #0xa
	beq _08070B96
	b _08071028
_08070B2E:
	cmp r1, #0xd2
	bne _08070B34
	b _08070C74
_08070B34:
	cmp r1, #0xd2
	bgt _08070B3E
	cmp r1, #0xc8
	beq _08070BF4
	b _08071028
_08070B3E:
	cmp r1, #0xdc
	bne _08070B44
	b _08070CD8
_08070B44:
	b _08071028
_08070B46:
	movs r0, #0xc8
	lsls r0, r0, #1
	cmp r1, r0
	bne _08070B50
	b _08070F0C
_08070B50:
	cmp r1, r0
	bgt _08070B66
	subs r0, #0x64
	cmp r1, r0
	bne _08070B5C
	b _08070D80
_08070B5C:
	adds r0, #0x32
	cmp r1, r0
	bne _08070B64
	b _08070E20
_08070B64:
	b _08071028
_08070B66:
	movs r2, #0xfa
	lsls r2, r2, #2
	cmp r1, r2
	bne _08070B70
	b _08071020
_08070B70:
	cmp r1, r2
	bgt _08070B80
	movs r0, #0xcd
	lsls r0, r0, #1
	cmp r1, r0
	bne _08070B7E
	b _08070F58
_08070B7E:
	b _08071028
_08070B80:
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bne _08070B8A
	b _08071010
_08070B8A:
	b _08071028
_08070B8C:
	movs r0, #0x3c
	strh r0, [r5, #8]
	strh r1, [r4, #0x28]
	movs r0, #0xa
	b _08071026
_08070B96:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08070BA6
	b _08071028
_08070BA6:
	adds r0, r4, #0
	adds r0, #0xb0
	str r1, [r0]
	adds r1, r4, #0
	adds r1, #0xb4
	ldr r0, _08070BB8 @ =0xFFFFFC00
	str r0, [r1]
	movs r0, #0x64
	b _08071026
	.align 2, 0
_08070BB8: .4byte 0xFFFFFC00
_08070BBC:
	adds r2, r4, #0
	adds r2, #0xac
	adds r3, r4, #0
	adds r3, #0xb4
	ldr r1, [r2]
	ldr r0, [r3]
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, [r4, #4]
	ldr r2, _08070BE8 @ =0xFFFFB000
	adds r0, r0, r2
	cmp r1, r0
	ble _08070BD8
	b _08071028
_08070BD8:
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, _08070BEC @ =0xFFFFFF00
	str r0, [r1]
	ldr r0, _08070BF0 @ =0xFFFFFD00
	str r0, [r3]
	movs r0, #0xc8
	b _08071026
	.align 2, 0
_08070BE8: .4byte 0xFFFFB000
_08070BEC: .4byte 0xFFFFFF00
_08070BF0: .4byte 0xFFFFFD00
_08070BF4:
	adds r2, r4, #0
	adds r2, #0xa8
	adds r6, r4, #0
	adds r6, #0xb0
	ldr r0, [r2]
	ldr r1, [r6]
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r4, #0
	adds r3, #0xb4
	ldr r1, [r3]
	adds r1, #0x20
	str r1, [r3]
	adds r2, #4
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08070C64 @ =0x0000ADFF
	cmp r0, r1
	ble _08070C4A
	movs r0, #0xae
	lsls r0, r0, #8
	str r0, [r2]
	ldr r0, _08070C68 @ =0xFFFFFF00
	str r0, [r6]
	ldr r0, _08070C6C @ =0xFFFFFD00
	str r0, [r3]
	movs r0, #0x8b
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl CreateScreenShake
	movs r0, #0xd2
	strh r0, [r5, #6]
_08070C4A:
	ldrh r1, [r4, #0x28]
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r1, r0
	bne _08070C56
	b _08071028
_08070C56:
	subs r0, r1, #2
	ldr r2, _08070C70 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	b _08071028
	.align 2, 0
_08070C64: .4byte 0x0000ADFF
_08070C68: .4byte 0xFFFFFF00
_08070C6C: .4byte 0xFFFFFD00
_08070C70: .4byte 0x000003FF
_08070C74:
	adds r2, r4, #0
	adds r2, #0xa8
	adds r6, r4, #0
	adds r6, #0xb0
	ldr r0, [r2]
	ldr r1, [r6]
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r4, #0
	adds r3, #0xb4
	ldr r1, [r3]
	adds r1, #0x20
	str r1, [r3]
	adds r2, #4
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08070CCC @ =0x0000ADFF
	cmp r0, r1
	bgt _08070C9E
	b _08071028
_08070C9E:
	movs r0, #0xae
	lsls r0, r0, #8
	str r0, [r2]
	ldr r0, _08070CD0 @ =0xFFFFFF00
	str r0, [r6]
	ldr r0, _08070CD4 @ =0xFFFFFE00
	str r0, [r3]
	movs r0, #0x8b
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl CreateScreenShake
	movs r0, #0xdc
	b _08071026
	.align 2, 0
_08070CCC: .4byte 0x0000ADFF
_08070CD0: .4byte 0xFFFFFF00
_08070CD4: .4byte 0xFFFFFE00
_08070CD8:
	adds r2, r4, #0
	adds r2, #0xa8
	adds r6, r4, #0
	adds r6, #0xb0
	ldr r0, [r2]
	ldr r1, [r6]
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r4, #0
	adds r3, #0xb4
	ldr r1, [r3]
	adds r1, #0x20
	str r1, [r3]
	adds r2, #4
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08070D34 @ =0x0000ADFF
	cmp r0, r1
	bgt _08070D02
	b _08071028
_08070D02:
	movs r0, #0xae
	lsls r0, r0, #8
	str r0, [r2]
	movs r0, #0
	str r0, [r6]
	str r0, [r3]
	movs r0, #0x8b
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x80
	movs r2, #0
	bl CreateScreenShake
	movs r0, #0x3c
	strh r0, [r5, #8]
	movs r0, #0xe6
	b _08071026
	.align 2, 0
_08070D34: .4byte 0x0000ADFF
_08070D38:
	ldrh r0, [r5, #8]
	subs r0, #1
	movs r1, #0
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08070D4A
	b _08071028
_08070D4A:
	strh r0, [r5, #0xa]
	adds r0, r4, #0
	adds r0, #0x2a
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x28]
	ldrh r1, [r4, #0x20]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08070D6C
	movs r0, #0x96
	lsls r0, r0, #1
	b _08070D70
_08070D6C:
	movs r0, #0xaf
	lsls r0, r0, #1
_08070D70:
	strh r0, [r5, #6]
	ldr r0, _08070D7C @ =0x0000022D
	bl m4aSongNumStart
	b _08071028
	.align 2, 0
_08070D7C: .4byte 0x0000022D
_08070D80:
	adds r3, r4, #0
	adds r3, #0xb0
	ldr r1, _08070DB8 @ =gSineTable
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bge _08070D96
	adds r2, #0x3f
_08070D96:
	asrs r2, r2, #6
	str r2, [r3]
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r2, [r0]
	adds r6, r1, #0
	adds r3, r0, #0
	cmp r2, #0
	beq _08070DBC
	cmp r2, #1
	beq _08070DD8
	b _08070DF0
	.align 2, 0
_08070DB8: .4byte gSineTable
_08070DBC:
	ldrh r0, [r4, #0x28]
	subs r0, #4
	ldr r2, _08070DD4 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _08070DF0
	movs r0, #1
	b _08070DEE
	.align 2, 0
_08070DD4: .4byte 0x000003FF
_08070DD8:
	ldrh r0, [r4, #0x28]
	adds r0, #4
	ldr r2, _08070E18 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	movs r1, #0xe0
	lsls r1, r1, #2
	cmp r0, r1
	bne _08070DF0
	movs r0, #2
_08070DEE:
	strb r0, [r3]
_08070DF0:
	ldrh r0, [r5, #0xa]
	adds r0, #8
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	ldr r1, _08070E1C @ =0x01FF0000
	cmp r0, r1
	bls _08070ED2
	movs r0, #0
	strh r0, [r5, #0xa]
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x2a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08070EB6
	b _08070ECC
	.align 2, 0
_08070E18: .4byte 0x000003FF
_08070E1C: .4byte 0x01FF0000
_08070E20:
	adds r3, r4, #0
	adds r3, #0xb0
	ldr r1, _08070E58 @ =gSineTable
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #0
	bge _08070E36
	adds r2, #0x3f
_08070E36:
	asrs r2, r2, #6
	str r2, [r3]
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r2, [r0]
	adds r6, r1, #0
	adds r3, r0, #0
	cmp r2, #0
	beq _08070E5C
	cmp r2, #1
	beq _08070E78
	b _08070E90
	.align 2, 0
_08070E58: .4byte gSineTable
_08070E5C:
	ldrh r0, [r4, #0x28]
	subs r0, #8
	ldr r2, _08070E74 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _08070E90
	movs r0, #1
	b _08070E8E
	.align 2, 0
_08070E74: .4byte 0x000003FF
_08070E78:
	ldrh r0, [r4, #0x28]
	adds r0, #8
	ldr r2, _08070EC4 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	movs r1, #0xe0
	lsls r1, r1, #2
	cmp r0, r1
	bne _08070E90
	movs r0, #2
_08070E8E:
	strb r0, [r3]
_08070E90:
	ldrh r0, [r5, #0xa]
	adds r0, #0x10
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	ldr r1, _08070EC8 @ =0x01FF0000
	cmp r0, r1
	bls _08070ED2
	movs r0, #0
	strh r0, [r5, #0xa]
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x2a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08070ECC
_08070EB6:
	movs r0, #0x3c
	strh r0, [r5, #8]
	movs r0, #0xc8
	lsls r0, r0, #1
	strh r0, [r5, #6]
	b _08070ED2
	.align 2, 0
_08070EC4: .4byte 0x000003FF
_08070EC8: .4byte 0x01FF0000
_08070ECC:
	ldr r0, _08070F08 @ =0x0000022D
	bl m4aSongNumStart
_08070ED2:
	ldrh r0, [r5, #0xa]
	movs r3, #0x7f
	ands r3, r0
	cmp r3, #0
	beq _08070EDE
	b _08071028
_08070EDE:
	ldr r1, [r6]
	asrs r1, r1, #8
	subs r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	subs r2, #4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #8
	movs r3, #0
	bl sub_8079758
	b _08071028
	.align 2, 0
_08070F08: .4byte 0x0000022D
_08070F0C:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08070F1C
	b _08071028
_08070F1C:
	strh r0, [r5, #0xa]
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	ldr r1, _08070F54 @ =0xFFFFF800
	adds r0, r0, r1
	ldr r1, [r4]
	adds r2, r4, #0
	adds r2, #0xb0
	subs r0, r1, r0
	cmp r0, #0
	bge _08070F3E
	adds r0, #0x3f
_08070F3E:
	asrs r0, r0, #6
	str r0, [r2]
	adds r1, r4, #0
	adds r1, #0xbc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0xcd
	lsls r0, r0, #1
	b _08071026
	.align 2, 0
_08070F54: .4byte 0xFFFFF800
_08070F58:
	adds r2, r4, #0
	adds r2, #0xa8
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08070FA8 @ =gSineTable
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	cmp r0, #0
	bge _08070F80
	adds r0, #0x3f
_08070F80:
	asrs r1, r0, #6
	adds r2, r4, #0
	adds r2, #0xac
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	subs r0, r0, r1
	str r0, [r2]
	adds r3, r4, #0
	adds r3, #0x2b
	ldrb r0, [r3]
	cmp r0, #1
	beq _08070FD4
	cmp r0, #1
	bgt _08070FAC
	cmp r0, #0
	beq _08070FB4
	ldrh r2, [r5, #0xa]
	b _08070FF6
	.align 2, 0
_08070FA8: .4byte gSineTable
_08070FAC:
	cmp r0, #2
	beq _08070FE0
	ldrh r2, [r5, #0xa]
	b _08070FF6
_08070FB4:
	ldrh r0, [r4, #0x28]
	subs r0, #0x10
	ldr r2, _08070FD0 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	movs r1, #0xa0
	lsls r1, r1, #2
	ldrh r2, [r5, #0xa]
	cmp r0, r1
	bne _08070FF6
	movs r0, #2
	b _08070FF4
	.align 2, 0
_08070FD0: .4byte 0x000003FF
_08070FD4:
	ldrh r0, [r5, #0xa]
	adds r2, r0, #0
	cmp r2, #0xff
	bls _08070FF6
	movs r0, #2
	b _08070FF4
_08070FE0:
	ldrh r0, [r4, #0x28]
	adds r0, #0x10
	ldr r2, _0807100C @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x28]
	ldrh r2, [r5, #0xa]
	cmp r0, #0
	bne _08070FF6
	movs r0, #0xa
_08070FF4:
	strb r0, [r3]
_08070FF6:
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08071028
	movs r0, #0xfa
	lsls r0, r0, #2
	b _08071026
	.align 2, 0
_0807100C: .4byte 0x000003FF
_08071010:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08071028
	strh r2, [r5, #6]
	b _08071028
_08071020:
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, _08071030 @ =0x000003F2
_08071026:
	strh r0, [r5, #6]
_08071028:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08071030: .4byte 0x000003F2

	thumb_func_start sub_8071034
sub_8071034: @ 0x08071034
	push {r4, r5, r6, lr}
	mov ip, r0
	movs r6, #0
	ldr r0, _08071068 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r4, #0x82
	lsls r4, r4, #1
	add r4, ip
	ldrh r1, [r3, #6]
	cmp r1, #0xc8
	bne _08071054
	b _08071160
_08071054:
	cmp r1, #0xc8
	bgt _08071072
	cmp r1, #0xa
	beq _080710A8
	cmp r1, #0xa
	bgt _0807106C
	cmp r1, #0
	beq _08071094
	b _080711A6
	.align 2, 0
_08071068: .4byte gCurTask
_0807106C:
	cmp r1, #0x64
	beq _080710C8
	b _080711A6
_08071072:
	movs r2, #0x96
	lsls r2, r2, #1
	cmp r1, r2
	bne _0807107C
	b _08071184
_0807107C:
	cmp r1, r2
	bgt _08071088
	cmp r1, #0xd2
	bne _08071086
	b _08071174
_08071086:
	b _080711A6
_08071088:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _08071092
	b _080711A0
_08071092:
	b _080711A6
_08071094:
	strh r6, [r3, #8]
	strh r6, [r3, #0xa]
	ldr r0, _080710A4 @ =0xFFFFE000
	str r0, [r3, #0xc]
	movs r0, #0x18
	strh r0, [r3, #0x10]
	movs r0, #0xa
	b _080711A4
	.align 2, 0
_080710A4: .4byte 0xFFFFE000
_080710A8:
	ldr r0, [r3, #0xc]
	ldr r1, _080710C0 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r3, #0xc]
	ldr r1, _080710C4 @ =0xFFFF9C00
	cmp r0, r1
	ble _080710B8
	b _080711A6
_080710B8:
	str r1, [r3, #0xc]
	movs r0, #0x64
	b _080711A4
	.align 2, 0
_080710C0: .4byte 0xFFFFF800
_080710C4: .4byte 0xFFFF9C00
_080710C8:
	ldr r1, _08071120 @ =gSineTable
	ldrh r2, [r3, #0xa]
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r5, #0x10
	ldrsh r0, [r3, r5]
	muls r1, r0, r1
	cmp r1, #0
	bge _080710E0
	adds r1, #0x3f
_080710E0:
	asrs r6, r1, #6
	adds r0, r2, #0
	subs r0, #0x20
	ldr r2, _08071124 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r3, #0xa]
	cmp r0, #0
	bne _08071102
	ldrh r0, [r3, #0x10]
	subs r0, #8
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08071102
	movs r0, #0xc8
	strh r0, [r3, #6]
_08071102:
	ldr r5, _08071128 @ =0x000004D1
	strh r5, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0x1a]
	ldrh r2, [r3, #0xa]
	adds r0, r2, #0
	subs r0, #0xc0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x80
	bhi _0807112C
	movs r0, #1
	strb r0, [r4, #0x1a]
	b _080711A6
	.align 2, 0
_08071120: .4byte gSineTable
_08071124: .4byte 0x000003FF
_08071128: .4byte 0x000004D1
_0807112C:
	ldr r1, _08071144 @ =0xFFFFFEBF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	movs r1, #0xbf
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08071148
	strh r5, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x1a]
	b _080711A6
	.align 2, 0
_08071144: .4byte 0xFFFFFEBF
_08071148:
	ldr r1, _0807115C @ =0xFFFFFD40
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x80
	bhi _080711A6
	strh r5, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1a]
	b _080711A6
	.align 2, 0
_0807115C: .4byte 0xFFFFFD40
_08071160:
	movs r1, #0
	ldr r0, _08071170 @ =0x000004D1
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r0, #0x3c
	strh r0, [r3, #8]
	movs r0, #0xd2
	b _080711A4
	.align 2, 0
_08071170: .4byte 0x000004D1
_08071174:
	ldrh r0, [r3, #8]
	subs r0, #1
	strh r0, [r3, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080711A6
	strh r2, [r3, #6]
	b _080711A6
_08071184:
	ldr r0, [r3, #0xc]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r3, #0xc]
	ldr r1, _0807119C @ =0xFFFFE000
	cmp r0, r1
	blt _080711A6
	str r1, [r3, #0xc]
	movs r0, #0xfa
	lsls r0, r0, #2
	b _080711A4
	.align 2, 0
_0807119C: .4byte 0xFFFFE000
_080711A0:
	strh r6, [r3, #4]
	ldr r0, _080711C4 @ =0x000003F2
_080711A4:
	strh r0, [r3, #6]
_080711A6:
	mov r1, ip
	adds r1, #0xa8
	mov r5, ip
	ldr r0, [r5]
	str r0, [r1]
	mov r2, ip
	adds r2, #0xac
	ldr r0, [r5, #4]
	ldr r1, [r3, #0xc]
	adds r0, r0, r1
	adds r0, r0, r6
	str r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080711C4: .4byte 0x000003F2

	thumb_func_start sub_80711C8
sub_80711C8: @ 0x080711C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	movs r7, #0x82
	lsls r7, r7, #1
	add r7, r8
	movs r2, #0x96
	lsls r2, r2, #1
	add r2, r8
	ldrb r0, [r0, #0x18]
	cmp r0, #1
	bne _080711EA
	b _08071308
_080711EA:
	cmp r0, #1
	bgt _080711F4
	cmp r0, #0
	beq _080711FC
	b _080713FC
_080711F4:
	cmp r0, #2
	bne _080711FA
	b _080713A4
_080711FA:
	b _080713FC
_080711FC:
	mov r5, r8
	adds r5, #0xa8
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, _080712F4 @ =gCamera
	mov sl, r1
	ldr r1, [r1]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r4, r8
	adds r4, #0xac
	ldr r0, [r4]
	asrs r0, r0, #8
	mov r3, sl
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	mov r1, r8
	ldrh r0, [r1, #0x28]
	strh r0, [r2]
	ldrh r0, [r7, #0x10]
	strh r0, [r2, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r2, #8]
	adds r0, r7, #0
	adds r1, r2, #0
	bl TransformSprite
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r2, r8
	ldr r1, [r2, #4]
	ldr r3, _080712F8 @ =0xFFFFE000
	adds r0, r1, r3
	ldr r4, [r4]
	cmp r4, r0
	bne _08071250
	b _080713FC
_08071250:
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, r8
	ldr r0, [r2]
	mov sb, r0
	ldr r2, _080712FC @ =0xFFFFC800
	adds r2, r2, r1
	mov r8, r2
	ldr r0, [r5]
	mov r3, sb
	subs r6, r0, r3
	subs r5, r4, r2
	lsls r0, r5, #8
	asrs r0, r0, #0x10
	lsls r1, r6, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, r6, #0
	muls r1, r6, r1
	adds r0, r5, #0
	muls r0, r5, r0
	adds r2, r1, r0
	adds r0, r2, #0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r6, #0
	asrs r2, r0, #3
	ldr r1, _08071300 @ =gSineTable
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	cmp r0, #0
	bge _080712AA
	ldr r3, _08071304 @ =0x00003FFF
	adds r0, r0, r3
_080712AA:
	asrs r6, r0, #0xe
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _080712BE
	ldr r2, _08071304 @ =0x00003FFF
	adds r0, r0, r2
_080712BE:
	asrs r5, r0, #0xe
	movs r4, #0
	mov r2, sl
_080712C4:
	mov r3, sb
	asrs r0, r3, #8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, r8
	asrs r0, r1, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	str r2, [sp]
	bl DisplaySprite
	add sb, r6
	add r8, r5
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp]
	cmp r4, #7
	bls _080712C4
	b _080713FC
	.align 2, 0
_080712F4: .4byte gCamera
_080712F8: .4byte 0xFFFFE000
_080712FC: .4byte 0xFFFFC800
_08071300: .4byte gSineTable
_08071304: .4byte 0x00003FFF
_08071308:
	movs r2, #0xa8
	add r2, r8
	mov sb, r2
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r5, _080713A0 @ =gCamera
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r4, r8
	adds r4, #0xac
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, [r4]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r1, r4, r3
	mov r2, r8
	ldr r0, [r2, #4]
	subs r6, r0, r1
	adds r0, r6, #0
	movs r1, #5
	bl __divsi3
	adds r6, r0, #0
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r2, r4, r3
	movs r4, #0
_08071354:
	cmp r4, #1
	bhi _08071372
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r3, r8
	adds r7, r3, r0
	adds r0, r7, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldr r2, [sp]
_08071372:
	mov r1, sb
	ldr r0, [r1]
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	asrs r0, r2, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	str r2, [sp]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp]
	adds r2, r2, r6
	cmp r4, #4
	bls _08071354
	b _080713FC
	.align 2, 0
_080713A0: .4byte gCamera
_080713A4:
	mov r0, r8
	adds r0, #0xa8
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r4, _0807140C @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r0, r8
	adds r0, #0xac
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, r8
	mov r0, r8
	adds r0, #0xb8
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r0, r8
	adds r0, #0xbc
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080713FC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807140C: .4byte gCamera

	thumb_func_start sub_8071410
sub_8071410: @ 0x08071410
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x19
	ldrsb r5, [r4, r5]
	cmp r5, #0
	bne _080714B6
	ldr r0, _08071440 @ =0x000004D5
	movs r1, #0
	movs r2, #0x40
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0x40
	strb r0, [r4, #0x19]
	movs r0, #0x64
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_806F2B8
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	bne _08071448
	ldr r0, _08071444 @ =0x0000022E
	b _0807144A
	.align 2, 0
_08071440: .4byte 0x000004D5
_08071444: .4byte 0x0000022E
_08071448:
	ldr r0, _08071480 @ =0x00000229
_0807144A:
	bl m4aSongNumStart
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	beq _0807146C
	movs r0, #2
	strh r0, [r4, #0x10]
	movs r0, #0x80
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, _08071484 @ =0x0000066F
	cmp r0, r1
	ble _0807146C
	movs r0, #3
	strh r0, [r4, #0x10]
_0807146C:
	ldr r0, _08071488 @ =gStageData
	ldrb r1, [r0, #1]
	adds r2, r0, #0
	cmp r1, #0
	bne _0807148C
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #5
	b _08071492
	.align 2, 0
_08071480: .4byte 0x00000229
_08071484: .4byte 0x0000066F
_08071488: .4byte gStageData
_0807148C:
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #5
_08071492:
	adds r0, r0, r1
	ldr r1, _080714BC @ =0x000677FF
	cmp r0, r1
	ble _080714A2
	adds r1, r4, #0
	adds r1, #0x32
	movs r0, #1
	strb r0, [r1]
_080714A2:
	ldrb r0, [r2, #3]
	cmp r0, #5
	bne _080714B6
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _080714B6
	ldrb r1, [r4, #0x18]
	movs r0, #3
	bl sub_8027674
_080714B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080714BC: .4byte 0x000677FF

	thumb_func_start sub_80714C0
sub_80714C0: @ 0x080714C0
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0807158A
	ldr r0, _080714F8 @ =0x000004D5
	movs r1, #0
	movs r2, #0x40
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0x40
	strb r0, [r4, #0x19]
	movs r0, #0x64
	strh r0, [r4, #0x24]
	strb r5, [r4, #0x18]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	beq _0807150A
	cmp r0, #1
	bgt _080714FC
	cmp r0, #0
	beq _08071502
	b _0807151E
	.align 2, 0
_080714F8: .4byte 0x000004D5
_080714FC:
	cmp r0, #2
	beq _08071518
	b _0807151E
_08071502:
	adds r0, r4, #0
	bl sub_8071720
	b _0807151E
_0807150A:
	adds r0, r4, #0
	bl sub_8071764
	adds r0, r4, #0
	bl sub_806FE98
	b _0807151E
_08071518:
	adds r0, r4, #0
	bl sub_80717A8
_0807151E:
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	bne _08071534
	ldr r0, _08071530 @ =0x0000022E
	b _08071536
	.align 2, 0
_08071530: .4byte 0x0000022E
_08071534:
	ldr r0, _08071568 @ =0x00000229
_08071536:
	bl m4aSongNumStart
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	beq _08071558
	movs r0, #2
	strh r0, [r4, #0x10]
	movs r0, #0x80
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, _0807156C @ =0x0000066F
	cmp r0, r1
	ble _08071558
	movs r0, #3
	strh r0, [r4, #0x10]
_08071558:
	ldr r0, _08071570 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08071574
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #5
	b _0807157A
	.align 2, 0
_08071568: .4byte 0x00000229
_0807156C: .4byte 0x0000066F
_08071570: .4byte gStageData
_08071574:
	ldr r0, [r4]
	movs r1, #0xc0
	lsls r1, r1, #5
_0807157A:
	adds r0, r0, r1
	ldr r1, _08071590 @ =0x000677FF
	cmp r0, r1
	ble _0807158A
	adds r1, r4, #0
	adds r1, #0x32
	movs r0, #1
	strb r0, [r1]
_0807158A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071590: .4byte 0x000677FF

	thumb_func_start sub_8071594
sub_8071594: @ 0x08071594
	push {r4, r5, r6, lr}
	ldr r1, _080715C0 @ =gStageData
	adds r6, r1, #0
	adds r6, #0x88
	ldr r1, [r6]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldrb r1, [r0, #2]
	movs r2, #0x7f
	ands r2, r1
	ldrb r1, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r1, r0
	cmp r2, #1
	beq _080715C4
	cmp r2, #3
	beq _08071604
	b _0807160E
	.align 2, 0
_080715C0: .4byte gStageData
_080715C4:
	lsls r0, r1, #8
	str r0, [r5]
	movs r2, #0
	strb r2, [r5, #0x1c]
	ldr r1, [r5, #0x40]
	ldr r0, [r1, #4]
	movs r4, #0x80
	lsls r4, r4, #0x14
	orrs r0, r4
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r0, r3
	str r0, [r1, #4]
	strh r2, [r1, #0x1c]
	ldr r0, [r5, #0x40]
	strh r2, [r0, #0x18]
	ldr r1, [r5, #0x44]
	ldr r0, [r1, #4]
	orrs r0, r4
	ands r0, r3
	str r0, [r1, #4]
	strh r2, [r1, #0x1c]
	ldr r0, [r5, #0x44]
	strh r2, [r0, #0x18]
	strh r2, [r5, #0x2c]
	ldr r1, [r6]
	ldr r0, _08071600 @ =Task_EggCube_806F3A0
	str r0, [r1, #8]
	b _0807160E
	.align 2, 0
_08071600: .4byte Task_EggCube_806F3A0
_08071604:
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_80714C0
_0807160E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start Task_EggCubeInit
Task_EggCubeInit: @ 0x08071614
	push {r4, r5, lr}
	ldr r4, _08071634 @ =gCurTask
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x14]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08071638
	adds r0, r2, #0
	bl TaskDestroy
	b _08071658
	.align 2, 0
_08071634: .4byte gCurTask
_08071638:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807164C
	ldr r1, [r4]
	ldr r0, _08071648 @ =Task_EggCube_806EC50
	b _08071650
	.align 2, 0
_08071648: .4byte Task_EggCube_806EC50
_0807164C:
	ldr r1, [r4]
	ldr r0, _08071660 @ =Task_EggCube_806ED00
_08071650:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_806FA0C
_08071658:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071660: .4byte Task_EggCube_806ED00

	thumb_func_start sub_8071664
sub_8071664: @ 0x08071664
	push {lr}
	ldr r0, _08071690 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r2, [r0, #0x40]
	ldr r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #0x14
	orrs r1, r3
	str r1, [r2, #4]
	ldr r2, [r0, #0x44]
	ldr r1, [r2, #4]
	orrs r1, r3
	str r1, [r2, #4]
	bl sub_806FA0C
	pop {r0}
	bx r0
	.align 2, 0
_08071690: .4byte gCurTask

	thumb_func_start TaskDestructor_EggCube
TaskDestructor_EggCube: @ 0x08071694
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _080716A8
	bl VramFree
_080716A8:
	ldr r1, _080716D4 @ =0x030000C8
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080716B6
	bl VramFree
_080716B6:
	ldr r1, _080716D8 @ =0x030000CC
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080716C4
	bl VramFree
_080716C4:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _080716CE
	bl VramFree
_080716CE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080716D4: .4byte 0x030000C8
_080716D8: .4byte 0x030000CC

	thumb_func_start sub_80716DC
sub_80716DC: @ 0x080716DC
	push {r4, lr}
	adds r4, r0, #0
	strb r1, [r4, #0x18]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	beq _08071700
	cmp r0, #1
	bgt _080716F2
	cmp r0, #0
	beq _080716F8
	b _08071714
_080716F2:
	cmp r0, #2
	beq _0807170E
	b _08071714
_080716F8:
	adds r0, r4, #0
	bl sub_8071720
	b _08071714
_08071700:
	adds r0, r4, #0
	bl sub_8071764
	adds r0, r4, #0
	bl sub_806FE98
	b _08071714
_0807170E:
	adds r0, r4, #0
	bl sub_80717A8
_08071714:
	movs r0, #1
	strb r0, [r4, #0x13]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8071720
sub_8071720: @ 0x08071720
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0807175C @ =sub_80717EC
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _08071760 @ =sub_80718DC
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	movs r1, #0
	bl sub_8070450
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0807175C: .4byte sub_80717EC
_08071760: .4byte sub_80718DC

	thumb_func_start sub_8071764
sub_8071764: @ 0x08071764
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080717A0 @ =sub_80703D4
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _080717A4 @ =sub_80718DC
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	bl sub_8070450
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080717A0: .4byte sub_80703D4
_080717A4: .4byte sub_80718DC

	thumb_func_start sub_80717A8
sub_80717A8: @ 0x080717A8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080717E4 @ =sub_8071864
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r1, _080717E8 @ =sub_80718DC
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	movs r1, #2
	bl sub_8070450
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080717E4: .4byte sub_8071864
_080717E8: .4byte sub_80718DC

	thumb_func_start sub_80717EC
sub_80717EC: @ 0x080717EC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08071818 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r4, [r6]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r7, r4, r0
	ldrh r0, [r6, #4]
	cmp r0, #0
	beq _08071810
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _0807181C
_08071810:
	adds r0, r2, #0
	bl TaskDestroy
	b _0807185C
	.align 2, 0
_08071818: .4byte gCurTask
_0807181C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8070B08
	adds r5, r4, #0
	adds r5, #0xa8
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r4, #0xac
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x40]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x44]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r0, [r6]
	bl sub_80711C8
_0807185C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8071864
sub_8071864: @ 0x08071864
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08071890 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r4, [r6]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r7, r4, r0
	ldrh r0, [r6, #4]
	cmp r0, #0
	beq _08071888
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _08071894
_08071888:
	adds r0, r2, #0
	bl TaskDestroy
	b _080718D4
	.align 2, 0
_08071890: .4byte gCurTask
_08071894:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80707A0
	adds r5, r4, #0
	adds r5, #0xa8
	ldr r1, [r5]
	asrs r1, r1, #8
	adds r4, #0xac
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x40]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, [r4]
	asrs r2, r2, #8
	ldr r0, [r6]
	ldr r0, [r0, #0x44]
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r0, [r6]
	bl sub_80711C8
_080718D4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80718DC
sub_80718DC: @ 0x080718DC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r1, #0x12]
	cmp r0, #0
	beq _080718F2
	movs r0, #0
	b _080718F4
_080718F2:
	movs r0, #0xc8
_080718F4:
	strh r0, [r1, #0x24]
	pop {r0}
	bx r0
	.align 2, 0

    thumb_func_start sub_80718FC
sub_80718FC:
    bx lr

    thumb_func_start sub_8071900
sub_8071900:
    bx lr

    @ matched as sub_8071904_inline in boss_4.c
	thumb_func_start sub_8071904
sub_8071904: @ 0x08071904
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2, #0x10]
	cmp r0, r1
	beq _08071962
	movs r4, #0
	movs r3, #0
	strh r1, [r2, #0x10]
	ldrh r0, [r2, #0x10]
	cmp r0, #1
	beq _08071938
	cmp r0, #1
	bgt _08071928
	cmp r0, #0
	beq _08071932
	b _08071962
_08071928:
	cmp r0, #2
	beq _0807193E
	cmp r0, #4
	beq _08071958
	b _08071962
_08071932:
	strb r4, [r2, #0x1a]
	str r3, [r2, #8]
	b _08071960
_08071938:
	movs r0, #8
	rsbs r0, r0, #0
	b _0807195E
_0807193E:
	movs r0, #0x80
	str r0, [r2, #8]
	str r3, [r2, #0xc]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, _08071954 @ =0x0000066F
	cmp r0, r1
	ble _08071962
	movs r0, #3
	strh r0, [r2, #0x10]
	b _08071962
	.align 2, 0
_08071954: .4byte 0x0000066F
_08071958:
	strb r4, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #4
_0807195E:
	str r0, [r2, #8]
_08071960:
	str r3, [r2, #0xc]
_08071962:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8071968
sub_8071968: @ 0x08071968
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r0, #0
	adds r2, #0xd0
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r2, #8]
	cmp r1, #1
	beq _080719A0
	cmp r1, #1
	bgt _08071986
	cmp r1, #0
	beq _0807198C
	b _080719A6
_08071986:
	cmp r1, #2
	beq _080719A0
	b _080719A6
_0807198C:
	movs r1, #0
	ldr r0, _0807199C @ =0x000004CB
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	movs r0, #0x3e
	orrs r0, r3
	str r0, [r2, #8]
	b _080719A6
	.align 2, 0
_0807199C: .4byte 0x000004CB
_080719A0:
	ldr r0, _080719B0 @ =0x000004CB
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
_080719A6:
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	pop {r0}
	bx r0
	.align 2, 0
_080719B0: .4byte 0x000004CB

	thumb_func_start sub_80719B4
sub_80719B4: @ 0x080719B4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x54
	bl VramMalloc
	adds r4, #0xcc
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80719C8
sub_80719C8: @ 0x080719C8
	push {r4, r5, lr}
	movs r3, #0
	strb r3, [r0, #0x1c]
	ldr r2, [r0, #0x40]
	ldr r1, [r2, #4]
	movs r5, #0x80
	lsls r5, r5, #0x14
	orrs r1, r5
	movs r4, #0x21
	rsbs r4, r4, #0
	ands r1, r4
	str r1, [r2, #4]
	strh r3, [r2, #0x1c]
	ldr r1, [r0, #0x40]
	strh r3, [r1, #0x18]
	ldr r2, [r0, #0x44]
	ldr r1, [r2, #4]
	orrs r1, r5
	ands r1, r4
	str r1, [r2, #4]
	strh r3, [r2, #0x1c]
	ldr r1, [r0, #0x44]
	strh r3, [r1, #0x18]
	strh r3, [r0, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

    thumb_func_start sub_8071A00
sub_8071A00:
    bx lr
	.align 2, 0

    thumb_func_start sub_8071A04
sub_8071A04:
    bx lr
	.align 2, 0
