.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable087
CreateEntity_Interactable087: @ 0x0803E424
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldrb r0, [r7, #7]
	movs r6, #0x1f
	ands r6, r0
	ldr r0, _0803E524 @ =gUnknown_030008A0
	ldrb r0, [r0, #3]
	cmp r0, #6
	bne _0803E456
	cmp r6, #3
	bls _0803E50C
_0803E456:
	ldr r0, _0803E528 @ =sub_803E544
	ldr r2, _0803E52C @ =0x00000FFF
	ldr r1, _0803E530 @ =sub_803E7D8
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r4, r3
	ldr r2, _0803E534 @ =0x03000014
	adds r0, r4, r2
	movs r1, #0
	mov ip, r1
	movs r5, #0
	mov r2, sb
	strh r2, [r3, #4]
	mov r1, r8
	strh r1, [r3, #6]
	str r7, [r3]
	ldrb r1, [r7]
	strb r1, [r3, #0xa]
	mov r2, sl
	strb r2, [r3, #0xb]
	ldr r1, _0803E538 @ =0x0300002F
	adds r2, r4, r1
	movs r1, #1
	strb r1, [r2]
	str r5, [r3, #0x30]
	ldr r2, _0803E53C @ =0x0300002E
	adds r4, r4, r2
	strb r6, [r4]
	ldrb r1, [r7, #7]
	lsrs r1, r1, #5
	lsls r1, r1, #6
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	strh r1, [r3, #0x2c]
	str r5, [r3, #0x3c]
	ldrb r1, [r3, #0xa]
	lsls r1, r1, #3
	ldrh r2, [r3, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #8
	str r1, [r3, #0xc]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	ldrh r2, [r3, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #8
	str r1, [r3, #0x10]
	ldr r1, _0803E524 @ =gUnknown_030008A0
	adds r1, #0xbd
	mov r2, ip
	strb r2, [r1]
	ldr r2, _0803E540 @ =gUnknown_03001D10
	ldr r1, [r2, #0x18]
	strh r1, [r3, #0x34]
	ldr r1, [r2, #0x10]
	strh r1, [r3, #0x36]
	ldr r1, [r2, #0x1c]
	strh r1, [r3, #0x38]
	ldr r1, [r2, #0x14]
	strh r1, [r3, #0x3a]
	movs r1, #3
	ldrsb r1, [r7, r1]
	lsls r1, r1, #0xb
	ldr r2, [r3, #0xc]
	adds r2, r2, r1
	str r2, [r0]
	ldrb r1, [r7, #5]
	lsls r1, r1, #0xb
	adds r2, r2, r1
	str r2, [r0, #4]
	movs r1, #4
	ldrsb r1, [r7, r1]
	lsls r1, r1, #0xb
	ldr r2, [r3, #0x10]
	adds r2, r2, r1
	str r2, [r0, #8]
	ldrb r1, [r7, #6]
	lsls r1, r1, #0xb
	adds r2, r2, r1
	str r2, [r0, #0xc]
	bl sub_803E900
_0803E50C:
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r7]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E524: .4byte gUnknown_030008A0
_0803E528: .4byte sub_803E544
_0803E52C: .4byte 0x00000FFF
_0803E530: .4byte sub_803E7D8
_0803E534: .4byte 0x03000014
_0803E538: .4byte 0x0300002F
_0803E53C: .4byte 0x0300002E
_0803E540: .4byte gUnknown_03001D10

	thumb_func_start sub_803E544
sub_803E544: @ 0x0803E544
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803E5A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0x14
	adds r4, r3, r0
	ldr r0, [r6, #0x3c]
	adds r7, r0, #1
	str r7, [r6, #0x3c]
	ldr r0, [r6, #0x30]
	cmp r0, #0
	bne _0803E58E
	ldr r2, _0803E5AC @ =gUnknown_080CFA58
	ldr r1, _0803E5B0 @ =0x0300002E
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r5, [r0]
	cmp r5, #0
	beq _0803E58E
	cmp r7, #4
	ble _0803E58E
	ldr r2, _0803E5B4 @ =0x0300002F
	adds r0, r3, r2
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	ldr r2, [r6, #0x10]
	asrs r2, r2, #8
	bl _call_via_r5
	str r0, [r6, #0x30]
_0803E58E:
	ldr r2, [r4, #0x10]
	ldr r1, [r4]
	cmp r2, r1
	bge _0803E5B8
	movs r3, #0x2c
	ldrsh r0, [r6, r3]
	adds r0, r2, r0
	str r0, [r4, #0x10]
	cmp r0, r1
	ble _0803E5DC
	str r1, [r4, #0x10]
	b _0803E5DC
	.align 2, 0
_0803E5A8: .4byte gCurTask
_0803E5AC: .4byte gUnknown_080CFA58
_0803E5B0: .4byte 0x0300002E
_0803E5B4: .4byte 0x0300002F
_0803E5B8:
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r2, r1
	ldr r1, [r4, #4]
	cmp r0, r1
	ble _0803E5DC
	movs r3, #0x2c
	ldrsh r0, [r6, r3]
	subs r0, r2, r0
	str r0, [r4, #0x10]
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r0, r0, r2
	cmp r0, r1
	bge _0803E5DC
	ldr r3, _0803E5F8 @ =0xFFFF1000
	adds r0, r1, r3
	str r0, [r4, #0x10]
_0803E5DC:
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #8]
	cmp r2, r1
	bge _0803E5FC
	ldrh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, r2, r0
	str r0, [r4, #0x14]
	cmp r0, r1
	ble _0803E622
	str r1, [r4, #0x14]
	b _0803E622
	.align 2, 0
_0803E5F8: .4byte 0xFFFF1000
_0803E5FC:
	movs r1, #0xa0
	lsls r1, r1, #8
	adds r0, r2, r1
	ldr r1, [r4, #0xc]
	cmp r0, r1
	ble _0803E622
	ldrh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	subs r0, r2, r0
	str r0, [r4, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #8
	adds r0, r0, r2
	cmp r0, r1
	bge _0803E622
	ldr r3, _0803E630 @ =0xFFFF6000
	adds r0, r1, r3
	str r0, [r4, #0x14]
_0803E622:
	ldr r2, [r4]
	ldr r0, [r4, #0x10]
	cmp r2, r0
	blt _0803E638
	ldr r1, _0803E634 @ =gUnknown_03001D10
	asrs r0, r0, #8
	b _0803E63C
	.align 2, 0
_0803E630: .4byte 0xFFFF6000
_0803E634: .4byte gUnknown_03001D10
_0803E638:
	ldr r1, _0803E654 @ =gUnknown_03001D10
	asrs r0, r2, #8
_0803E63C:
	str r0, [r1, #0x18]
	adds r3, r1, #0
	ldr r2, [r4, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r2, r1
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _0803E658
	asrs r0, r2, #8
	adds r0, #0xf0
	b _0803E65A
	.align 2, 0
_0803E654: .4byte gUnknown_03001D10
_0803E658:
	asrs r0, r1, #8
_0803E65A:
	str r0, [r3, #0x1c]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	blt _0803E668
	asrs r0, r0, #8
	b _0803E66A
_0803E668:
	asrs r0, r1, #8
_0803E66A:
	str r0, [r3, #0x10]
	ldr r2, [r4, #0x14]
	movs r1, #0xa0
	lsls r1, r1, #8
	adds r0, r2, r1
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bgt _0803E680
	asrs r0, r2, #8
	adds r0, #0xa0
	b _0803E682
_0803E680:
	asrs r0, r1, #8
_0803E682:
	str r0, [r3, #0x14]
	ldr r0, [r4]
	asrs r5, r0, #8
	ldr r1, [r3]
	cmp r1, r5
	blt _0803E6E8
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	cmp r2, r0
	blt _0803E6E8
	adds r1, #0xf0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0803E6E8
	adds r1, r2, #0
	adds r1, #0xa0
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	cmp r1, r0
	bgt _0803E6E8
	ldr r0, [r6, #0x3c]
	cmp r0, #4
	ble _0803E6E8
	str r5, [r3, #0x18]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	str r0, [r3, #0x1c]
	ldr r0, [r4, #8]
	asrs r5, r0, #8
	str r5, [r3, #0x10]
	ldr r0, [r4, #0xc]
	asrs r2, r0, #8
	str r2, [r3, #0x14]
	ldr r1, _0803E6F4 @ =gUnknown_030008A0
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	bne _0803E6D8
	ldrb r1, [r1, #9]
	subs r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0803E6D8:
	adds r1, r6, #0
	adds r1, #0x2f
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0803E6F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803E6FC @ =sub_803E7DC
	str r0, [r1, #8]
_0803E6E8:
	bl sub_803E700
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E6F4: .4byte gUnknown_030008A0
_0803E6F8: .4byte gCurTask
_0803E6FC: .4byte sub_803E7DC

	thumb_func_start sub_803E700
sub_803E700: @ 0x0803E700
	push {r4, r5, lr}
	ldr r2, _0803E768 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, _0803E76C @ =gUnknown_030008A0
	movs r0, #0xbd
	adds r0, r0, r1
	mov ip, r0
	ldrb r0, [r0]
	adds r5, r2, #0
	cmp r0, #0
	beq _0803E7C8
	ldrb r1, [r1, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803E770 @ =gUnknown_030015C0
	adds r0, r0, r1
	ldr r1, [r0, #0x10]
	lsls r1, r1, #8
	ldr r0, [r0, #0x14]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	asrs r3, r1, #0x10
	ldr r1, _0803E774 @ =gUnknown_03001D10
	ldr r0, [r1, #0x18]
	subs r0, #0xa
	cmp r3, r0
	blt _0803E778
	ldr r0, [r1, #0x1c]
	adds r0, #0xa
	cmp r3, r0
	bgt _0803E778
	lsls r0, r2, #0x10
	asrs r3, r0, #0x10
	ldr r0, [r1, #0x10]
	subs r0, #0xa
	cmp r3, r0
	blt _0803E778
	ldr r0, [r1, #0x14]
	adds r0, #0xa
	cmp r3, r0
	bgt _0803E778
	movs r0, #0
	mov r1, ip
	strb r0, [r1]
	b _0803E7C8
	.align 2, 0
_0803E768: .4byte gCurTask
_0803E76C: .4byte gUnknown_030008A0
_0803E770: .4byte gUnknown_030015C0
_0803E774: .4byte gUnknown_03001D10
_0803E778:
	ldrh r0, [r4, #0x34]
	str r0, [r1, #0x18]
	ldrh r0, [r4, #0x36]
	str r0, [r1, #0x10]
	ldrh r0, [r4, #0x38]
	str r0, [r1, #0x1c]
	ldrh r0, [r4, #0x3a]
	str r0, [r1, #0x14]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0803E7A4
	ldr r1, [r5]
	ldr r0, _0803E7A0 @ =sub_803E884
	b _0803E7C6
	.align 2, 0
_0803E7A0: .4byte sub_803E884
_0803E7A4:
	ldr r0, [r4]
	ldrb r1, [r4, #0xa]
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0803E7C0
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #0x30]
_0803E7C0:
	ldr r0, _0803E7D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803E7D4 @ =sub_803E964
_0803E7C6:
	str r0, [r1, #8]
_0803E7C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E7D0: .4byte gCurTask
_0803E7D4: .4byte sub_803E964

	thumb_func_start sub_803E7D8
sub_803E7D8: @ 0x0803E7D8
	bx lr
	.align 2, 0

	thumb_func_start sub_803E7DC
sub_803E7DC: @ 0x0803E7DC
	push {r4, r5, r6, lr}
	ldr r6, _0803E810 @ =gCurTask
	ldr r0, [r6]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	adds r1, #0x2f
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0
	bne _0803E806
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0803E800
	bl TaskDestroy
	str r4, [r5, #0x30]
_0803E800:
	ldr r1, [r6]
	ldr r0, _0803E814 @ =sub_803E818
	str r0, [r1, #8]
_0803E806:
	bl sub_803E700
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803E810: .4byte gCurTask
_0803E814: .4byte sub_803E818

	thumb_func_start sub_803E818
sub_803E818: @ 0x0803E818
	push {r4, lr}
	ldr r4, _0803E868 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r1, _0803E86C @ =0x0300002E
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0803E870 @ =gUnknown_080CFA58
	adds r2, r0, r1
	ldr r1, [r2, #4]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r1, r3
	beq _0803E83E
	ldr r0, _0803E874 @ =gUnknown_03001D10
	str r1, [r0, #0x18]
_0803E83E:
	ldr r1, [r2, #0xc]
	cmp r1, r3
	beq _0803E848
	ldr r0, _0803E874 @ =gUnknown_03001D10
	str r1, [r0, #0x10]
_0803E848:
	ldr r1, [r2, #8]
	cmp r1, r3
	beq _0803E852
	ldr r0, _0803E874 @ =gUnknown_03001D10
	str r1, [r0, #0x1c]
_0803E852:
	ldr r1, [r2, #0x10]
	cmp r1, r3
	beq _0803E85C
	ldr r0, _0803E874 @ =gUnknown_03001D10
	str r1, [r0, #0x14]
_0803E85C:
	ldr r0, [r4]
	bl TaskDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E868: .4byte gCurTask
_0803E86C: .4byte 0x0300002E
_0803E870: .4byte gUnknown_080CFA58
_0803E874: .4byte gUnknown_03001D10

	thumb_func_start sub_803E878
sub_803E878: @ 0x0803E878
	push {lr}
	bl sub_803E700
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803E884
sub_803E884: @ 0x0803E884
	push {r4, r5, r6, lr}
	ldr r6, _0803E8EC @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0x14
	adds r2, r1, r0
	ldr r0, _0803E8F0 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803E8F4 @ =gUnknown_030015C0
	adds r3, r0, r1
	ldr r0, [r2]
	ldr r1, _0803E8F8 @ =0xFFFF8000
	adds r0, r0, r1
	ldr r1, [r3, #0x10]
	cmp r1, r0
	blt _0803E8E4
	ldr r0, [r2, #4]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r0, r4
	cmp r1, r0
	bgt _0803E8E4
	ldr r0, [r2, #8]
	ldr r1, _0803E8F8 @ =0xFFFF8000
	adds r0, r0, r1
	ldr r1, [r3, #0x14]
	cmp r1, r0
	blt _0803E8E4
	ldr r0, [r2, #0xc]
	adds r0, r0, r4
	cmp r1, r0
	bgt _0803E8E4
	movs r0, #0
	str r0, [r5, #0x3c]
	adds r0, r2, #0
	bl sub_803E900
	ldr r1, [r6]
	ldr r0, _0803E8FC @ =sub_803E544
	str r0, [r1, #8]
_0803E8E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803E8EC: .4byte gCurTask
_0803E8F0: .4byte gUnknown_030008A0
_0803E8F4: .4byte gUnknown_030015C0
_0803E8F8: .4byte 0xFFFF8000
_0803E8FC: .4byte sub_803E544

	thumb_func_start sub_803E900
sub_803E900: @ 0x0803E900
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, _0803E938 @ =gUnknown_03001D10
	ldr r5, [r0]
	lsls r1, r5, #8
	str r1, [r2, #0x10]
	ldr r4, _0803E93C @ =gUnknown_030008A0
	ldrb r1, [r4, #0xa]
	adds r3, r0, #0
	cmp r1, #7
	bne _0803E956
	ldrb r1, [r4, #9]
	subs r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803E956
	cmp r1, #4
	bne _0803E956
	ldr r0, _0803E940 @ =0x000004FF
	cmp r5, r0
	bgt _0803E948
	ldr r0, [r3, #4]
	lsls r0, r0, #8
	str r0, [r2, #0x14]
	ldr r0, _0803E944 @ =0x00053C00
	str r0, [r2, #8]
	b _0803E95C
	.align 2, 0
_0803E938: .4byte gUnknown_03001D10
_0803E93C: .4byte gUnknown_030008A0
_0803E940: .4byte 0x000004FF
_0803E944: .4byte 0x00053C00
_0803E948:
	ldr r0, [r3, #4]
	lsls r0, r0, #8
	str r0, [r2, #0x14]
	movs r0, #0xa3
	lsls r0, r0, #0xb
	str r0, [r2, #8]
	b _0803E95C
_0803E956:
	ldr r0, [r3, #4]
	lsls r0, r0, #8
	str r0, [r2, #0x14]
_0803E95C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803E964
sub_803E964: @ 0x0803E964
	push {lr}
	ldr r0, _0803E974 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0803E974: .4byte gCurTask
