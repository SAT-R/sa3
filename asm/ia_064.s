.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable064
CreateEntity_Interactable064: @ 0x08037274
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08037364 @ =sub_80379E4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08037368 @ =sub_80379D0
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	ldr r1, _0803736C @ =0x0300000C
	adds r6, r5, r1
	ldr r2, _08037370 @ =0x03000034
	adds r2, r2, r5
	mov ip, r2
	ldr r3, _08037374 @ =0x0300005C
	adds r3, r3, r5
	mov sb, r3
	movs r2, #0
	strh r7, [r0, #4]
	mov r1, sl
	strh r1, [r0, #6]
	mov r3, r8
	str r3, [r0]
	ldrb r1, [r3]
	strb r1, [r0, #0xa]
	strb r4, [r0, #0xb]
	ldr r1, _08037378 @ =0x03000086
	adds r0, r5, r1
	strb r2, [r0]
	ldrb r0, [r3, #3]
	ldr r2, _0803737C @ =0x03000085
	adds r1, r5, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080372E8
	movs r0, #1
	strb r0, [r1]
_080372E8:
	mov r3, r8
	ldrb r2, [r3]
	lsls r2, r2, #3
	lsls r0, r7, #8
	adds r2, r2, r0
	strh r2, [r6, #0x10]
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	mov r3, sl
	lsls r1, r3, #8
	adds r0, r0, r1
	strh r0, [r6, #0x12]
	mov r0, ip
	strh r2, [r0, #0x10]
	ldrh r0, [r6, #0x12]
	mov r1, ip
	strh r0, [r1, #0x12]
	ldrh r0, [r6, #0x10]
	mov r2, sb
	strh r0, [r2, #0x10]
	ldrh r0, [r6, #0x12]
	strh r0, [r2, #0x12]
	movs r3, #0
	ldr r0, _08037380 @ =0x03000088
	adds r7, r5, r0
	ldr r1, _08037384 @ =0x0300008C
	adds r4, r5, r1
_0803731E:
	lsls r1, r3, #3
	adds r2, r7, r1
	movs r5, #0x10
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	str r0, [r2]
	adds r1, r4, r1
	movs r2, #0x12
	ldrsh r0, [r6, r2]
	lsls r0, r0, #8
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0803731E
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r5, r8
	strb r0, [r5]
	adds r0, r6, #0
	mov r1, ip
	mov r2, sb
	bl sub_803765C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037364: .4byte sub_80379E4
_08037368: .4byte sub_80379D0
_0803736C: .4byte 0x0300000C
_08037370: .4byte 0x03000034
_08037374: .4byte 0x0300005C
_08037378: .4byte 0x03000086
_0803737C: .4byte 0x03000085
_08037380: .4byte 0x03000088
_08037384: .4byte 0x0300008C

	thumb_func_start sub_8037388
sub_8037388: @ 0x08037388
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0
	mov sb, r0
	ldr r0, _080373E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r2, _080373EC @ =0x0300000C
	adds r2, r1, r2
	str r2, [sp, #8]
	ldr r2, [r0]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #3
	ldr r3, [sp, #4]
	ldrh r1, [r3, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	movs r7, #0
	mov sl, r7
_080373D4:
	mov r0, sl
	cmp r0, #0
	beq _080373F0
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080373F4
	.align 2, 0
_080373E8: .4byte gCurTask
_080373EC: .4byte 0x0300000C
_080373F0:
	ldr r0, _08037490 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080373F4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08037494 @ =gUnknown_030015C0
	adds r6, r0, r1
	movs r1, #0
	mov r8, r1
	adds r0, r6, #0
	bl sub_802C0D4
	mov r2, sl
	adds r2, #1
	str r2, [sp, #0x14]
	cmp r0, #0
	beq _08037418
	b _080375CC
_08037418:
	ldr r3, [sp, #0xc]
	lsls r4, r3, #0x10
	ldr r7, [sp, #0x10]
	lsls r5, r7, #0x10
	str r6, [sp]
	ldr r0, [sp, #8]
	asrs r1, r4, #0x10
	asrs r2, r5, #0x10
	movs r3, #0
	bl sub_8020E3C
	adds r2, r5, #0
	ldr r7, [sp, #4]
	adds r7, #0x85
	cmp r0, #1
	bne _08037466
	movs r1, #0x1a
	ldrsh r0, [r6, r1]
	cmp r0, #0
	blt _08037466
	ldr r0, [r6, #4]
	movs r3, #0x10
	ands r0, r3
	cmp r0, #0
	bne _08037466
	ldr r0, [sp, #4]
	adds r0, #0x86
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #7
	bhi _08037458
	strb r3, [r5]
_08037458:
	movs r3, #1
	mov r8, r3
	ldrb r0, [r7]
	cmp r0, #0
	beq _08037466
	subs r0, #1
	strb r0, [r7]
_08037466:
	asrs r1, r4, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r1
	cmp r3, #0
	beq _08037498
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	b _08037500
	.align 2, 0
_08037490: .4byte gUnknown_030008A0
_08037494: .4byte gUnknown_030015C0
_08037498:
	movs r4, #0x80
	lsls r4, r4, #0xb
	ands r4, r1
	cmp r4, #0
	beq _080374C8
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r1, r0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x10]
	adds r2, r1, r0
	str r2, [r6, #0x10]
	strh r3, [r6, #0x1c]
	ldrh r1, [r6, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08037500
	ldr r3, _080374C4 @ =0xFFFFFF00
	b _080374F4
	.align 2, 0
_080374C4: .4byte 0xFFFFFF00
_080374C8:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08037500
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r1, r0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x10]
	adds r2, r1, r0
	str r2, [r6, #0x10]
	strh r4, [r6, #0x1c]
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08037500
	movs r3, #0x80
	lsls r3, r3, #1
_080374F4:
	adds r0, r2, r3
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #4]
_08037500:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08037530
	mov r7, sl
	adds r7, #1
	str r7, [sp, #0x14]
	mov r0, r8
	cmp r0, #0
	beq _080375CC
	ldr r0, _0803752C @ =sub_8005380
	str r0, [r6]
	ldr r0, [r6, #4]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #0xe
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #4]
	b _080375CC
	.align 2, 0
_0803752C: .4byte sub_8005380
_08037530:
	movs r4, #0
	ldr r5, [sp, #4]
	adds r5, #0x86
	ldr r1, [sp, #4]
	adds r1, #0xa8
	mov sb, r1
	ldr r2, [sp, #4]
	adds r2, #0xaa
	mov r8, r2
	mov r3, sl
	adds r3, #1
	str r3, [sp, #0x14]
	movs r7, #2
	mov ip, r7
_0803754C:
	lsls r1, r4, #2
	mov r0, sb
	adds r2, r0, r1
	movs r0, #1
	ands r0, r4
	movs r3, #0xd0
	cmp r0, #0
	beq _08037562
	movs r7, #0xd0
	rsbs r7, r7, #0
	adds r3, r7, #0
_08037562:
	strh r3, [r2]
	adds r3, r2, #0
	movs r0, #0
	ldrsh r2, [r3, r0]
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	cmp r0, #0
	beq _0803757A
	adds r0, r2, #0
	adds r0, #0x30
	b _0803757E
_0803757A:
	adds r0, r2, #0
	subs r0, #0x30
_0803757E:
	strh r0, [r3]
	add r1, r8
	adds r0, r4, #0
	mov r2, ip
	ands r0, r2
	ldr r3, _080375F8 @ =0xFFFFFA00
	adds r2, r3, #0
	cmp r0, #0
	beq _08037594
	ldr r7, _080375FC @ =0xFFFFFB00
	adds r2, r7, #0
_08037594:
	strh r2, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0803754C
	movs r0, #0x5a
	strb r0, [r5]
	ldr r1, _08037600 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _08037604 @ =sub_80379F4
	str r2, [r0, #8]
	movs r3, #1
	mov sb, r3
	ldrh r0, [r6, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r6, #0x18]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r6, #0x1a]
	adds r0, r6, #0
	ldr r1, _08037608 @ =sub_800DB30
	bl sub_800D87C
	ldr r0, _0803760C @ =0x0000024D
	bl sub_8003DF0
_080375CC:
	ldr r7, [sp, #0x14]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bhi _080375DA
	b _080373D4
_080375DA:
	mov r0, sb
	cmp r0, #0
	beq _08037646
	movs r1, #0
	mov sl, r1
	ldr r4, _08037610 @ =gUnknown_030015C0
_080375E6:
	mov r2, sl
	cmp r2, #0
	beq _08037614
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08037618
	.align 2, 0
_080375F8: .4byte 0xFFFFFA00
_080375FC: .4byte 0xFFFFFB00
_08037600: .4byte gCurTask
_08037604: .4byte sub_80379F4
_08037608: .4byte sub_800DB30
_0803760C: .4byte 0x0000024D
_08037610: .4byte gUnknown_030015C0
_08037614:
	ldr r0, _08037658 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_08037618:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r4
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _08037638
	ldr r0, [sp, #8]
	adds r1, r6, #0
	bl sub_80213B0
_08037638:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #1
	bls _080375E6
_08037646:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037658: .4byte gUnknown_030008A0

	thumb_func_start sub_803765C
sub_803765C: @ 0x0803765C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0x18
	bl VramMalloc
	str r0, [r5]
	movs r1, #0
	mov sl, r1
	movs r2, #0
	ldr r1, _0803770C @ =0x00000372
	mov sb, r1
	mov r1, sb
	strh r1, [r5, #0xc]
	mov r1, sl
	strb r1, [r5, #0x1a]
	movs r1, #0xb8
	lsls r1, r1, #3
	strh r1, [r5, #0x14]
	strh r2, [r5, #0xe]
	strh r2, [r5, #0x16]
	movs r1, #0xff
	strb r1, [r5, #0x1b]
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r5, #0x1c]
	mov r1, sl
	strb r1, [r5, #0x1f]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r5, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r5, #8]
	str r0, [r4]
	mov r1, sb
	strh r1, [r4, #0xc]
	movs r1, #1
	strb r1, [r4, #0x1a]
	movs r1, #0x80
	lsls r1, r1, #2
	mov ip, r1
	mov r1, ip
	strh r1, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	adds r1, r3, #0
	strb r1, [r4, #0x1b]
	mov r1, r8
	strb r1, [r4, #0x1c]
	mov r1, sl
	strb r1, [r4, #0x1f]
	str r3, [r4, #0x20]
	str r2, [r4, #8]
	adds r0, #0x80
	str r0, [r6]
	mov r0, sb
	strh r0, [r6, #0xc]
	movs r0, #2
	strb r0, [r6, #0x1a]
	mov r1, ip
	strh r1, [r6, #0x14]
	strh r2, [r6, #0xe]
	strh r2, [r6, #0x16]
	adds r0, r3, #0
	strb r0, [r6, #0x1b]
	mov r0, r8
	strb r0, [r6, #0x1c]
	mov r1, sl
	strb r1, [r6, #0x1f]
	str r3, [r6, #0x20]
	str r2, [r6, #8]
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
_0803770C: .4byte 0x00000372

	thumb_func_start sub_8037710
sub_8037710: @ 0x08037710
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08037768 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov r8, r0
	ldr r1, [r7]
	mov sb, r1
	ldrb r2, [r7, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsrs r0, r2, #0x10
	mov ip, r0
	asrs r2, r2, #0x10
	ldr r4, _0803776C @ =gCamera
	ldr r0, [r4]
	subs r2, r2, r0
	ldr r1, _08037770 @ =0x03000086
	adds r3, r3, r1
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08037774
	subs r0, r2, #2
	b _08037776
	.align 2, 0
_08037768: .4byte gCurTask
_0803776C: .4byte gCamera
_08037770: .4byte 0x03000086
_08037774:
	adds r0, r2, #2
_08037776:
	mov r1, r8
	strh r0, [r1, #0x10]
	lsls r3, r6, #0x10
	asrs r1, r3, #0x10
	ldr r0, [r4, #4]
	subs r4, r1, r0
	adds r2, r7, #0
	adds r2, #0x86
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08037794
	subs r0, r4, #1
	b _08037796
_08037794:
	adds r0, r4, #1
_08037796:
	mov r1, r8
	strh r0, [r1, #0x12]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080377A4
	subs r0, #1
	strb r0, [r2]
_080377A4:
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	asrs r1, r3, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08037810
	movs r1, #0
	ldr r6, _080377CC @ =gUnknown_030015C0
_080377B8:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _080377D0
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080377D4
	.align 2, 0
_080377CC: .4byte gUnknown_030015C0
_080377D0:
	ldr r0, _08037808 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080377D4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r5, r0, r6
	mov r0, r8
	adds r1, r5, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080377B8
	ldrb r0, [r7, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0803780C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803781C
	.align 2, 0
_08037808: .4byte gUnknown_030008A0
_0803780C: .4byte gCurTask
_08037810:
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
_0803781C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8037828
sub_8037828: @ 0x08037828
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, _080378AC @ =gCurTask
	ldr r0, [r4]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov sl, r0
	ldr r0, _080378B0 @ =0x0300000C
	adds r0, r0, r5
	mov r8, r0
	mov r1, sl
	ldr r6, [r1]
	ldrb r1, [r1, #0xa]
	lsls r1, r1, #3
	mov r2, sl
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	mov r3, sl
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080378B4 @ =gCamera
	ldr r0, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r0, r8
	strh r1, [r0, #0x10]
	ldr r0, [r3, #4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r0
	mov r3, r8
	strh r2, [r3, #0x12]
	adds r1, #0x80
	lsls r1, r1, #0x10
	movs r0, #0xf8
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _0803789E
	movs r1, #0x12
	ldrsh r0, [r3, r1]
	adds r0, #0x80
	cmp r0, #0
	blt _0803789E
	lsls r1, r2, #0x10
	movs r0, #0x90
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080378B8
_0803789E:
	mov r2, sl
	ldrb r0, [r2, #0xa]
	strb r0, [r6]
	ldr r0, [r4]
	bl TaskDestroy
	b _080379B8
	.align 2, 0
_080378AC: .4byte gCurTask
_080378B0: .4byte 0x0300000C
_080378B4: .4byte gCamera
_080378B8:
	movs r3, #0
	mov sb, r3
	ldr r0, _080378E4 @ =0x030000AA
	adds r0, r5, r0
	str r0, [sp, #8]
	ldr r1, _080378E8 @ =0x03000088
	adds r1, r5, r1
	str r1, [sp, #0xc]
	ldr r2, _080378EC @ =0x030000A8
	adds r2, r5, r2
	str r2, [sp, #4]
	ldr r3, _080378F0 @ =0x0300008C
	adds r3, r5, r3
	str r3, [sp, #0x10]
_080378D4:
	mov r0, sb
	cmp r0, #1
	beq _08037908
	cmp r0, #1
	bgt _080378F4
	cmp r0, #0
	beq _08037900
	b _0803791E
	.align 2, 0
_080378E4: .4byte 0x030000AA
_080378E8: .4byte 0x03000088
_080378EC: .4byte 0x030000A8
_080378F0: .4byte 0x0300008C
_080378F4:
	mov r1, sb
	cmp r1, #2
	beq _08037910
	cmp r1, #3
	beq _08037918
	b _0803791E
_08037900:
	movs r2, #0x34
	add r2, sl
	mov r8, r2
	b _0803791E
_08037908:
	movs r3, #0x5c
	add r3, sl
	mov r8, r3
	b _0803791E
_08037910:
	movs r0, #0x5c
	add r0, sl
	mov r8, r0
	b _0803791E
_08037918:
	movs r1, #0x34
	add r1, sl
	mov r8, r1
_0803791E:
	mov r2, sb
	lsls r1, r2, #2
	ldr r3, [sp, #8]
	adds r5, r3, r1
	ldrh r0, [r5]
	adds r0, #0x80
	strh r0, [r5]
	lsls r2, r2, #3
	ldr r0, [sp, #0xc]
	adds r6, r0, r2
	ldr r3, [sp, #4]
	adds r7, r3, r1
	movs r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	ldr r1, [sp, #0x10]
	adds r4, r1, r2
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r2, _080379C8 @ =sub_8051F54
	str r2, [sp]
	movs r2, #1
	movs r3, #8
	bl sub_8052418
	cmp r0, #0
	bge _08037986
	lsls r1, r0, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	movs r3, #0
	ldrsh r1, [r7, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #2
	strh r0, [r7]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	strh r0, [r5]
_08037986:
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r2, _080379CC @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	mov r3, r8
	strh r1, [r3, #0x10]
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	mov r0, r8
	bl UpdateSpriteAnimation
	mov r0, r8
	bl DisplaySprite
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bls _080378D4
_080379B8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080379C8: .4byte sub_8051F54
_080379CC: .4byte gCamera

	thumb_func_start sub_80379D0
sub_80379D0: @ 0x080379D0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80379E4
sub_80379E4: @ 0x080379E4
	push {lr}
	bl sub_8037388
	bl sub_8037710
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80379F4
sub_80379F4: @ 0x080379F4
	push {r4, r5, r6, lr}
	ldr r0, _08037A3C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r6, [r5]
	bl sub_8037A44
	ldr r0, _08037A40 @ =0x03000086
	adds r4, r4, r0
	ldrb r4, [r4]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	bne _08037A1A
	cmp r4, #0x1e
	bls _08037A1E
_08037A1A:
	bl sub_8037828
_08037A1E:
	adds r0, r5, #0
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, #0
	bne _08037A34
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	ldr r0, _08037A3C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08037A34:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08037A3C: .4byte gCurTask
_08037A40: .4byte 0x03000086

	thumb_func_start sub_8037A44
sub_8037A44: @ 0x08037A44
	push {lr}
	ldr r0, _08037A60 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r2, _08037A64 @ =0x03000086
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08037A5A
	subs r0, #1
	strb r0, [r1]
_08037A5A:
	pop {r0}
	bx r0
	.align 2, 0
_08037A60: .4byte gCurTask
_08037A64: .4byte 0x03000086
