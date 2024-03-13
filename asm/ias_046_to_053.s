.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8033294
sub_8033294: @ 0x08033294
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r1, #0
	ldr r4, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08033364 @ =sub_8033374
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08033368 @ =sub_8033A30
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0xc
	adds r6, r1, r0
	movs r2, #0
	strh r7, [r3, #4]
	mov r0, r8
	strh r0, [r3, #6]
	str r5, [r3]
	ldrb r0, [r5]
	strb r0, [r3, #0xa]
	strb r4, [r3, #0xb]
	ldr r4, _0803336C @ =0x03000034
	adds r0, r1, r4
	mov r4, sb
	strb r4, [r0]
	ldr r0, _08033370 @ =0x03000038
	adds r1, r1, r0
	strb r2, [r1]
	movs r2, #0
	ldrb r0, [r5, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803331A
	movs r4, #1
_08033300:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #7
	bgt _0803331A
	ldrb r0, [r5, #7]
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08033300
_0803331A:
	adds r1, r3, #0
	adds r1, #0x35
	movs r0, #0
	strb r2, [r1]
	adds r1, #1
	strb r0, [r1]
	ldrb r1, [r5, #3]
	adds r0, r3, #0
	adds r0, #0x37
	strb r1, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	ldrb r0, [r5, #1]
	lsls r0, r0, #3
	mov r2, r8
	lsls r1, r2, #8
	adds r0, r0, r1
	strh r0, [r6, #0x12]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	strb r0, [r5]
	mov r0, sb
	adds r1, r6, #0
	bl sub_80336A0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033364: .4byte sub_8033374
_08033368: .4byte sub_8033A30
_0803336C: .4byte 0x03000034
_08033370: .4byte 0x03000038

	thumb_func_start sub_8033374
sub_8033374: @ 0x08033374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08033408 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r7, r0, r1
	adds r1, #0xc
	adds r1, r1, r0
	mov sb, r1
	ldr r2, [r7]
	ldr r3, _0803340C @ =0x03000034
	adds r0, r0, r3
	ldrb r0, [r0]
	movs r1, #0
	str r1, [sp, #8]
	cmp r0, #1
	bls _080333AE
	movs r3, #0xa
	str r3, [sp, #8]
	cmp r0, #3
	bhi _080333AE
	movs r0, #5
	str r0, [sp, #8]
_080333AE:
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r7, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, _08033410 @ =gUnknown_030008A0
	adds r0, r2, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x35
	ldrb r3, [r1]
	asrs r0, r3
	movs r6, #1
	ands r0, r6
	mov r3, sb
	ldrb r4, [r3, #0x1a]
	adds r3, r7, #0
	adds r3, #0x36
	cmp r0, #0
	beq _08033426
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _08033414
	ldrb r0, [r3]
	cmp r0, #0
	bne _08033414
	ldr r0, [sp, #8]
	adds r0, #1
	mov r1, sb
	strb r0, [r1, #0x1a]
	strb r6, [r3]
	b _08033440
	.align 2, 0
_08033408: .4byte gCurTask
_0803340C: .4byte 0x03000034
_08033410: .4byte gUnknown_030008A0
_08033414:
	adds r0, r2, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08033440
_08033426:
	ldr r0, [sp, #8]
	adds r0, #2
	cmp r4, r0
	bne _08033440
	ldrb r0, [r3]
	cmp r0, #1
	bne _08033440
	ldr r0, [sp, #8]
	adds r0, #4
	movs r1, #0
	mov r2, sb
	strb r0, [r2, #0x1a]
	strb r1, [r3]
_08033440:
	ldrb r0, [r3]
	cmp r0, #0
	bne _08033448
	b _0803368A
_08033448:
	movs r1, #0
_0803344A:
	lsls r0, r1, #0x10
	mov r8, r0
	cmp r0, #0
	bne _0803345C
	ldr r0, _08033458 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _08033466
	.align 2, 0
_08033458: .4byte gUnknown_030008A0
_0803345C:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08033466:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08033574 @ =gUnknown_030015C0
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803348C
	cmp r1, #8
	beq _0803348C
	cmp r1, #0x10
	beq _0803348C
	b _0803367A
_0803348C:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08033498
	b _0803367A
_08033498:
	movs r3, #0
	mov sl, r3
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	cmp r1, #0xa8
	beq _080334DC
	cmp r1, #0xb8
	beq _080334DC
	cmp r1, #0xcc
	beq _080334DC
	cmp r1, #0xd5
	bne _080334B6
	ldrh r0, [r5, #0x36]
	cmp r0, #1
	beq _080334DC
_080334B6:
	cmp r1, #0xe6
	beq _080334DC
	cmp r1, #0xfe
	beq _080334DC
	cmp r1, #0xff
	beq _080334DC
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	beq _080334DC
	adds r0, #1
	cmp r1, r0
	beq _080334DC
	adds r0, #1
	cmp r1, r0
	beq _080334DC
	subs r0, #4
	cmp r1, r0
	bne _080334FE
_080334DC:
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	movs r0, #1
	str r0, [sp, #4]
	mov r0, sb
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _080334FE
	movs r0, #1
	mov sl, r0
_080334FE:
	mov r1, sl
	cmp r1, #0
	bne _08033524
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x10]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	mov r0, sl
	str r0, [sp, #4]
	mov r0, sb
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08033524
	b _08033668
_08033524:
	movs r6, #0
	adds r4, r7, #0
	adds r4, #0x38
	ldrb r1, [r4]
	mov r3, r8
	asrs r2, r3, #0x10
	adds r0, r1, #0
	asrs r0, r2
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	bne _0803354C
	adds r0, r3, #0
	lsls r0, r2
	orrs r1, r0
	strb r1, [r4]
	adds r0, r5, #0
	movs r1, #0x94
	bl sub_8004E98
_0803354C:
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	ldr r1, [sp, #8]
	adds r1, #3
	cmp r0, r1
	beq _0803355C
	mov r2, sb
	strb r1, [r2, #0x1a]
_0803355C:
	adds r0, r7, #0
	adds r0, #0x34
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #7
	bhi _080335AA
	lsls r0, r1, #2
	ldr r1, _08033578 @ =_0803357C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08033574: .4byte gUnknown_030015C0
_08033578: .4byte _0803357C
_0803357C: @ jump table
	.4byte _0803359C @ case 0
	.4byte _080335D4 @ case 1
	.4byte _080335AE @ case 2
	.4byte _080335AE @ case 3
	.4byte _080335AE @ case 4
	.4byte _080335D4 @ case 5
	.4byte _080335AE @ case 6
	.4byte _080335A8 @ case 7
_0803359C:
	ldr r0, _080335A4 @ =0x0000FFFF
	strh r0, [r5, #0x32]
	b _080335AE
	.align 2, 0
_080335A4: .4byte 0x0000FFFF
_080335A8:
	movs r6, #1
_080335AA:
	cmp r6, #0
	bne _080335D4
_080335AE:
	movs r3, #0x18
	ldrsh r1, [r5, r3]
	movs r0, #0xa0
	lsls r0, r0, #2
	cmp r1, r0
	ble _080335C4
	ldr r1, _080335C0 @ =sub_8007044
	b _080335C6
	.align 2, 0
_080335C0: .4byte sub_8007044
_080335C4:
	ldr r1, _080335D0 @ =sub_8006F98
_080335C6:
	adds r0, r5, #0
	bl sub_800D87C
	b _080335DC
	.align 2, 0
_080335D0: .4byte sub_8006F98
_080335D4:
	ldr r1, _0803365C @ =sub_8009BF0
	adds r0, r5, #0
	bl sub_800D87C
_080335DC:
	ldr r2, _08033660 @ =gUnknown_080CF470
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r0, r1, r2
	ldrh r3, [r0]
	adds r2, #2
	adds r1, r1, r2
	ldrh r4, [r1]
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #0
	beq _08033612
	ldr r1, _08033664 @ =gUnknown_080CF468
	adds r0, r7, #0
	adds r0, #0x37
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	muls r0, r3, r0
	asrs r0, r0, #4
	strh r0, [r5, #0x18]
_08033612:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _0803362C
	ldr r1, _08033664 @ =gUnknown_080CF468
	adds r0, r7, #0
	adds r0, #0x37
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	muls r0, r2, r0
	asrs r0, r0, #4
	strh r0, [r5, #0x1a]
_0803362C:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08033640
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1a]
_08033640:
	mov r2, sl
	cmp r2, #0
	beq _0803367A
	ldrh r1, [r5, #0x18]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r5, #0x18]
	ldrh r1, [r5, #0x1a]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x11
	adds r1, r1, r0
	strh r1, [r5, #0x1a]
	b _0803367A
	.align 2, 0
_0803365C: .4byte sub_8009BF0
_08033660: .4byte gUnknown_080CF470
_08033664: .4byte gUnknown_080CF468
_08033668:
	adds r2, r7, #0
	adds r2, #0x38
	mov r3, r8
	asrs r0, r3, #0x10
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
_0803367A:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0803368A
	b _0803344A
_0803368A:
	bl sub_8033778
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80336A0
sub_80336A0: @ 0x080336A0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r6, #0
	cmp r5, #7
	bhi _08033724
	lsls r0, r5, #2
	ldr r1, _080336B8 @ =_080336BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080336B8: .4byte _080336BC
_080336BC: @ jump table
	.4byte _080336E0 @ case 0
	.4byte _080336DC @ case 1
	.4byte _080336F2 @ case 2
	.4byte _080336EE @ case 3
	.4byte _08033700 @ case 4
	.4byte _08033700 @ case 5
	.4byte _08033700 @ case 6
	.4byte _08033700 @ case 7
_080336DC:
	movs r6, #0x80
	lsls r6, r6, #4
_080336E0:
	movs r0, #0x14
	bl VramMalloc
	str r0, [r4]
	movs r0, #0
	strb r0, [r4, #0x1a]
	b _08033724
_080336EE:
	movs r6, #0x80
	lsls r6, r6, #3
_080336F2:
	movs r0, #0xf
	bl VramMalloc
	str r0, [r4]
	movs r0, #5
	strb r0, [r4, #0x1a]
	b _08033724
_08033700:
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xa
	strb r0, [r4, #0x1a]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08033718
	movs r6, #0x80
	lsls r6, r6, #4
_08033718:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _08033724
	movs r6, #0x80
	lsls r6, r6, #3
_08033724:
	ldr r1, _08033738 @ =gUnknown_030008A0
	ldrb r0, [r1, #9]
	cmp r0, #5
	bne _08033740
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	beq _08033740
	ldr r0, _0803373C @ =0x000003E3
	b _08033744
	.align 2, 0
_08033738: .4byte gUnknown_030008A0
_0803373C: .4byte 0x000003E3
_08033740:
	movs r0, #0xdc
	lsls r0, r0, #2
_08033744:
	strh r0, [r4, #0xc]
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
	orrs r6, r0
	str r6, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8033778
sub_8033778: @ 0x08033778
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080337E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r0, [r7]
	mov sl, r0
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	mov r2, sl
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r3, _080337E4 @ =0x0300000C
	adds r6, r5, r3
	lsrs r2, r0, #0x10
	mov sb, r2
	asrs r0, r0, #0x10
	lsrs r3, r1, #0x10
	mov r8, r3
	asrs r1, r1, #0x10
	bl sub_802C198
	cmp r0, #0
	bne _08033830
	movs r1, #0
	ldr r2, _080337E8 @ =gUnknown_030015C0
_080337CA:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _080337EC
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _080337F0
	.align 2, 0
_080337E0: .4byte gCurTask
_080337E4: .4byte 0x0300000C
_080337E8: .4byte gUnknown_030015C0
_080337EC:
	ldr r0, _08033828 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_080337F0:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r6, #0
	adds r1, r4, #0
	str r2, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #1
	ble _080337CA
	ldrb r0, [r7, #0xa]
	mov r2, sl
	strb r0, [r2]
	ldr r0, _0803382C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080338BE
	.align 2, 0
_08033828: .4byte gUnknown_030008A0
_0803382C: .4byte gCurTask
_08033830:
	ldr r3, _08033898 @ =0x03000034
	adds r0, r5, r3
	ldrb r0, [r0]
	movs r4, #0
	cmp r0, #1
	bls _08033844
	movs r4, #0xa
	cmp r0, #3
	bhi _08033844
	movs r4, #5
_08033844:
	ldr r2, _0803389C @ =gUnknown_03001D10
	ldr r1, [r2]
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r1, [r2, #4]
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080338B8
	ldrb r2, [r6, #0x1a]
	adds r1, r4, #0
	adds r0, r1, #1
	cmp r2, r0
	beq _08033890
	adds r0, r1, #3
	cmp r2, r0
	bne _080338B0
	ldr r0, _080338A0 @ =gUnknown_030008A0
	adds r0, #0x2d
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x35
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080338A4
_08033890:
	adds r0, r4, #2
	strb r0, [r6, #0x1a]
	b _080338B8
	.align 2, 0
_08033898: .4byte 0x03000034
_0803389C: .4byte gUnknown_03001D10
_080338A0: .4byte gUnknown_030008A0
_080338A4:
	strb r4, [r6, #0x1a]
	adds r1, r7, #0
	adds r1, #0x36
	movs r0, #0
	strb r0, [r1]
	b _080338B8
_080338B0:
	adds r0, r1, #4
	cmp r2, r0
	bne _080338B8
	strb r4, [r6, #0x1a]
_080338B8:
	adds r0, r6, #0
	bl DisplaySprite
_080338BE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable046
CreateEntity_Interactable046: @ 0x080338D0
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
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable047
CreateEntity_Interactable047: @ 0x080338FC
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
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable048
CreateEntity_Interactable048: @ 0x08033928
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
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable049
CreateEntity_Interactable049: @ 0x08033954
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
	movs r0, #2
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable050
CreateEntity_Interactable050: @ 0x08033980
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
	movs r0, #6
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable051
CreateEntity_Interactable051: @ 0x080339AC
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
	movs r0, #7
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable052
CreateEntity_Interactable052: @ 0x080339D8
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
	movs r0, #4
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable053
CreateEntity_Interactable053: @ 0x08033A04
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
	movs r0, #5
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8033294
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8033A30
sub_8033A30: @ 0x08033A30
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
