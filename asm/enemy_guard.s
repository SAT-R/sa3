.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_805F2C0
sub_805F2C0: @ 0x0805F2C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r0, [sp, #0x28]
	mov sb, r0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r0, sb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0805F360 @ =sub_805F418
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805F364 @ =sub_805F9A4
	str r1, [sp]
	movs r1, #0x60
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	str r5, [r7]
	ldrb r0, [r5]
	strb r0, [r7, #6]
	strb r4, [r7, #4]
	movs r2, #0
	strh r6, [r7, #0xc]
	mov r0, r8
	strh r0, [r7, #0xe]
	mov r0, sb
	lsls r1, r0, #1
	ldrb r0, [r5]
	adds r1, r1, r0
	lsls r1, r1, #0xb
	str r1, [r7, #0x20]
	ldrb r0, [r5, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x24]
	str r1, [r7, #0x18]
	str r0, [r7, #0x1c]
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x28]
	ldrb r0, [r5, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x2c]
	ldr r0, [sp, #0x24]
	str r0, [r7, #0x14]
	mov r0, sb
	strb r0, [r7, #0x10]
	strb r2, [r7, #5]
	strb r2, [r7, #7]
	strb r2, [r7, #8]
	strb r2, [r7, #9]
	ldrb r1, [r5, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805F368
	movs r0, #0xff
	b _0805F36A
	.align 2, 0
_0805F360: .4byte sub_805F418
_0805F364: .4byte sub_805F9A4
_0805F368:
	movs r0, #1
_0805F36A:
	strb r0, [r7, #0xa]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r7, #0
	adds r1, #0x5c
	ldr r2, _0805F394 @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_805F398
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F394: .4byte 0x01000002

	thumb_func_start sub_805F398
sub_805F398: @ 0x0805F398
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x30
	str r0, [r4, #0x30]
	ldr r1, _0805F410 @ =gUnknown_080D1FB0
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x20]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0805F414 @ =gUnknown_03001D10
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xe]
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
	movs r0, #0xa
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805F402
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805F402:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805F410: .4byte gUnknown_080D1FB0
_0805F414: .4byte gUnknown_03001D10

	thumb_func_start sub_805F418
sub_805F418: @ 0x0805F418
	push {r4, r5, r6, r7, lr}
	ldr r5, _0805F44C @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, _0805F450 @ =0x03000020
	adds r0, r3, r1
	ldr r2, _0805F454 @ =0x03000018
	adds r1, r3, r2
	ldr r6, _0805F458 @ =0x0300000C
	adds r2, r3, r6
	subs r6, #3
	adds r3, r3, r6
	bl sub_805CD70
	adds r0, r4, #0
	bl sub_805F89C
	cmp r0, #1
	bne _0805F45C
	ldr r0, [r5]
	bl TaskDestroy
	b _0805F504
	.align 2, 0
_0805F44C: .4byte gCurTask
_0805F450: .4byte 0x03000020
_0805F454: .4byte 0x03000018
_0805F458: .4byte 0x0300000C
_0805F45C:
	adds r0, r4, #0
	bl sub_805F8E8
	adds r7, r0, #0
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	cmp r7, #0
	beq _0805F476
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0805F47A
_0805F476:
	movs r0, #0
	strb r0, [r4, #5]
_0805F47A:
	ldr r0, _0805F4C8 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805F504
	cmp r1, #4
	beq _0805F504
	ldrb r0, [r4, #5]
	cmp r0, #0x14
	bls _0805F498
	adds r0, r4, #0
	bl sub_805F858
_0805F498:
	ldr r2, [r4, #0x20]
	ldr r5, [r4, #0x28]
	cmp r2, r5
	ble _0805F4A6
	ldr r0, [r4, #0x2c]
	cmp r2, r0
	blt _0805F4DA
_0805F4A6:
	adds r3, r4, #0
	adds r3, #0x30
	ldr r1, [r3, #8]
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _0805F4D0
	ldr r0, [r4, #0x2c]
	cmp r2, r0
	blt _0805F4DA
	ldr r0, _0805F4CC @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r3, #8]
	movs r0, #0
	b _0805F4D8
	.align 2, 0
_0805F4C8: .4byte gUnknown_030008A0
_0805F4CC: .4byte 0xFFFFFBFF
_0805F4D0:
	cmp r2, r5
	bgt _0805F4DA
	orrs r1, r6
	str r1, [r3, #8]
_0805F4D8:
	strb r0, [r4, #7]
_0805F4DA:
	cmp r7, #0
	bne _0805F504
	adds r1, r4, #0
	adds r1, #0x30
	ldr r2, _0805F50C @ =gUnknown_080D1FB0
	ldrh r0, [r2, #8]
	movs r3, #0
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	strb r3, [r4, #7]
	adds r1, #0x1b
	movs r0, #0xff
	strb r0, [r1]
	strb r3, [r4, #5]
	ldr r0, _0805F510 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805F514 @ =sub_805F518
	str r0, [r1, #8]
_0805F504:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F50C: .4byte gUnknown_080D1FB0
_0805F510: .4byte gCurTask
_0805F514: .4byte sub_805F518

	thumb_func_start sub_805F518
sub_805F518: @ 0x0805F518
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, _0805F550 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r1, _0805F554 @ =0x03000020
	adds r0, r3, r1
	ldr r2, _0805F558 @ =0x03000018
	adds r1, r3, r2
	ldr r6, _0805F55C @ =0x0300000C
	adds r2, r3, r6
	subs r6, #3
	adds r3, r3, r6
	bl sub_805CD70
	adds r0, r5, #0
	bl sub_805F89C
	cmp r0, #1
	bne _0805F560
	ldr r0, [r4]
	bl TaskDestroy
	b _0805F640
	.align 2, 0
_0805F550: .4byte gCurTask
_0805F554: .4byte 0x03000020
_0805F558: .4byte 0x03000018
_0805F55C: .4byte 0x0300000C
_0805F560:
	adds r0, r5, #0
	bl sub_805F8E8
	adds r7, r0, #0
	ldrb r0, [r5, #5]
	adds r0, #1
	strb r0, [r5, #5]
	cmp r7, #0
	beq _0805F57A
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0805F57E
_0805F57A:
	movs r0, #0
	strb r0, [r5, #5]
_0805F57E:
	ldr r0, _0805F604 @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805F640
	cmp r1, #4
	beq _0805F640
	ldrb r0, [r5, #5]
	cmp r0, #0x14
	bls _0805F59C
	adds r0, r5, #0
	bl sub_805F858
_0805F59C:
	ldrb r0, [r5, #5]
	cmp r0, #0x1d
	bne _0805F5D6
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _0805F5D6
	ldr r0, [r5, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	movs r4, #0xff
	cmp r0, #0
	beq _0805F5B8
	movs r4, #1
_0805F5B8:
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	lsls r1, r4, #0xc
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	ldr r1, [r5, #0x24]
	ldr r2, _0805F608 @ =0xFFFFE500
	adds r1, r1, r2
	ldrh r2, [r5, #0xc]
	ldrh r3, [r5, #0xe]
	str r4, [sp]
	bl sub_805F9B8
	movs r0, #1
	strb r0, [r5, #8]
_0805F5D6:
	ldr r2, [r5, #0x20]
	ldr r4, [r5, #0x28]
	cmp r2, r4
	ble _0805F5E4
	ldr r0, [r5, #0x2c]
	cmp r2, r0
	blt _0805F618
_0805F5E4:
	adds r3, r5, #0
	adds r3, #0x30
	ldr r1, [r3, #8]
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _0805F610
	ldr r0, [r5, #0x2c]
	cmp r2, r0
	blt _0805F618
	ldr r0, _0805F60C @ =0xFFFFFBFF
	ands r1, r0
	b _0805F616
	.align 2, 0
_0805F604: .4byte gUnknown_030008A0
_0805F608: .4byte 0xFFFFE500
_0805F60C: .4byte 0xFFFFFBFF
_0805F610:
	cmp r2, r4
	bgt _0805F618
	orrs r1, r6
_0805F616:
	str r1, [r3, #8]
_0805F618:
	cmp r7, #0
	bne _0805F640
	adds r1, r5, #0
	adds r1, #0x30
	ldr r2, _0805F648 @ =gUnknown_080D1FB0
	ldrh r0, [r2]
	movs r3, #0
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r1, #0x1a]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	adds r1, #0x1b
	movs r0, #0xff
	strb r0, [r1]
	strb r3, [r5, #8]
	ldr r0, _0805F64C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805F650 @ =sub_805F418
	str r0, [r1, #8]
_0805F640:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F648: .4byte gUnknown_080D1FB0
_0805F64C: .4byte gCurTask
_0805F650: .4byte sub_805F418

	thumb_func_start sub_805F654
sub_805F654: @ 0x0805F654
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x18
	str r1, [r4, #0x18]
	ldr r2, _0805F6B4 @ =gUnknown_080D1FC0
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
	ldr r3, _0805F6B8 @ =gUnknown_03001D10
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
_0805F6B4: .4byte gUnknown_080D1FC0
_0805F6B8: .4byte gUnknown_03001D10

	thumb_func_start sub_805F6BC
sub_805F6BC: @ 0x0805F6BC
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _0805F748 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _0805F74C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805F6E6
	cmp r1, #4
	beq _0805F6E6
	adds r0, r4, #0
	bl sub_805F800
_0805F6E6:
	adds r0, r4, #0
	bl sub_805FA80
	adds r0, r4, #0
	bl sub_805F75C
	cmp r0, #1
	bne _0805F6F8
	movs r5, #1
_0805F6F8:
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldrh r2, [r4, #4]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldrh r2, [r4, #6]
	lsls r2, r2, #8
	adds r0, r0, r2
	movs r6, #0
	str r6, [sp]
	ldr r2, _0805F750 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sub_8052394
	cmp r0, #0
	bge _0805F722
	movs r5, #1
_0805F722:
	cmp r5, #1
	bne _0805F73E
	adds r1, r4, #0
	adds r1, #0x18
	ldr r2, _0805F754 @ =gUnknown_080D1FC0
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r6, [r1, #8]
	ldr r0, _0805F748 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805F758 @ =sub_805FA50
	str r0, [r1, #8]
_0805F73E:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805F748: .4byte gCurTask
_0805F74C: .4byte gUnknown_030008A0
_0805F750: .4byte sub_805217C
_0805F754: .4byte gUnknown_080D1FC0
_0805F758: .4byte sub_805FA50

	thumb_func_start sub_805F75C
sub_805F75C: @ 0x0805F75C
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
_0805F780:
	cmp r5, #0
	bne _0805F790
	ldr r0, _0805F78C @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0805F79A
	.align 2, 0
_0805F78C: .4byte gUnknown_030008A0
_0805F790:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0805F79A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805F7E4 @ =gUnknown_030015C0
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _0805F7E8
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020700
	cmp r0, #0
	beq _0805F7E8
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805F7E0
	str r4, [sp]
	mov r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #1
	bl sub_8020CE0
_0805F7E0:
	movs r0, #1
	b _0805F7F4
	.align 2, 0
_0805F7E4: .4byte gUnknown_030015C0
_0805F7E8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0805F780
	movs r0, #0
_0805F7F4:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805F800
sub_805F800: @ 0x0805F800
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r0, #2
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x19
	lsrs r2, r0, #0x10
	movs r0, #1
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _0805F81A
	adds r1, r0, #0
	adds r0, r1, #4
	b _0805F820
_0805F81A:
	movs r1, #1
	ldrsb r1, [r3, r1]
	subs r0, r1, #4
_0805F820:
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

	thumb_func_start sub_805F858
sub_805F858: @ 0x0805F858
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805F87E
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x2c]
	cmp r0, r1
	bgt _0805F892
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r2, #0x20]
	cmp r0, r1
	ble _0805F892
	b _0805F890
_0805F87E:
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x28]
	cmp r0, r1
	blt _0805F892
	ldr r3, _0805F898 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r2, #0x20]
	cmp r0, r1
	bge _0805F892
_0805F890:
	str r1, [r2, #0x20]
_0805F892:
	pop {r0}
	bx r0
	.align 2, 0
_0805F898: .4byte 0xFFFFFE00

	thumb_func_start sub_805F89C
sub_805F89C: @ 0x0805F89C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0
	mov r0, sp
	strb r1, [r0]
	adds r0, r4, #0
	mov r1, sp
	bl sub_805F958
	adds r3, r0, #0
	cmp r3, #1
	bne _0805F8DC
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805F8CC
	ldr r2, [r4]
	adds r0, r3, #0
	ldrb r1, [r4, #0x10]
	lsls r0, r1
	ldrb r1, [r2, #7]
	orrs r0, r1
	strb r0, [r2, #7]
_0805F8CC:
	ldr r1, [r4, #0x14]
	ldrb r4, [r4, #0x10]
	lsls r3, r4
	ldrb r0, [r1]
	bics r0, r3
	strb r0, [r1]
	movs r0, #1
	b _0805F8DE
_0805F8DC:
	movs r0, #0
_0805F8DE:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805F8E8
sub_805F8E8: @ 0x0805F8E8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x30
	ldr r2, [r0, #0x20]
	asrs r2, r2, #8
	ldrh r1, [r0, #0xc]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805F928 @ =gUnknown_03001D10
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xe]
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
_0805F928: .4byte gUnknown_03001D10

	thumb_func_start sub_805F92C
sub_805F92C: @ 0x0805F92C
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x30
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x20]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xc]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xe]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805F958
sub_805F958: @ 0x0805F958
	push {r4, r5, lr}
	sub sp, #0x28
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	bl sub_805F92C
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x30
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #0xb
	ldrb r1, [r4, #0x10]
	lsls r1, r1, #1
	subs r0, r0, r1
	lsls r0, r0, #0xb
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #0xc]
	movs r2, #0
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xe]
	strh r0, [r1, #0xe]
	str r2, [sp]
	ldrb r0, [r4, #6]
	strb r0, [r1, #8]
	ldr r0, [sp, #4]
	strb r0, [r5]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_805F9A4
sub_805F9A4: @ 0x0805F9A4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x30]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_805F9B8
sub_805F9B8: @ 0x0805F9B8
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
	ldr r0, _0805FA3C @ =sub_805F6BC
	ldr r2, _0805FA40 @ =0x00004040
	ldr r1, _0805FA44 @ =sub_805FAC4
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
	ldr r0, _0805FA48 @ =0x03000044
	adds r1, r1, r0
	ldr r2, _0805FA4C @ =0x01000002
	add r0, sp, #4
	bl sub_80C7520
	adds r0, r4, #0
	bl sub_805F654
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FA3C: .4byte sub_805F6BC
_0805FA40: .4byte 0x00004040
_0805FA44: .4byte sub_805FAC4
_0805FA48: .4byte 0x03000044
_0805FA4C: .4byte 0x01000002

	thumb_func_start sub_805FA50
sub_805FA50: @ 0x0805FA50
	push {r4, r5, r6, lr}
	ldr r6, _0805FA7C @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_805FA80
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805F75C
	cmp r5, #0
	bne _0805FA76
	ldr r0, [r6]
	bl TaskDestroy
_0805FA76:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FA7C: .4byte gCurTask

	thumb_func_start sub_805FA80
sub_805FA80: @ 0x0805FA80
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805FAC0 @ =gUnknown_03001D10
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
_0805FAC0: .4byte gUnknown_03001D10

	thumb_func_start sub_805FAC4
sub_805FAC4: @ 0x0805FAC4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Guard
CreateEntity_Guard: @ 0x0805FAD8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r5, r3, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805FB50 @ =sub_805FB8C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805FB54 @ =sub_805FC04
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r4, [r0]
	ldrb r1, [r4]
	strb r1, [r0, #0xf]
	strb r5, [r0, #0xe]
	movs r1, #0
	strh r6, [r0, #0x10]
	mov r2, r8
	strh r2, [r0, #0x12]
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	ldrb r1, [r4]
	strb r1, [r0, #4]
	ldrb r1, [r4, #1]
	strb r1, [r0, #5]
	ldrb r1, [r4, #7]
	strb r1, [r0, #0xb]
	ldrb r1, [r4, #3]
	strb r1, [r0, #7]
	ldrb r1, [r4, #5]
	strb r1, [r0, #9]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FB50: .4byte sub_805FB8C
_0805FB54: .4byte sub_805FC04

	thumb_func_start sub_805FB58
sub_805FB58: @ 0x0805FB58
	push {lr}
	ldr r3, _0805FB88 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldrb r0, [r2, #0xd]
	cmp r0, #0
	bne _0805FB84
	ldr r0, [r2]
	ldrb r1, [r2, #0xb]
	strb r1, [r0, #7]
	ldr r1, [r2]
	ldrb r0, [r1, #7]
	cmp r0, #6
	bhi _0805FB7E
	ldrb r0, [r2, #0xf]
	strb r0, [r1]
_0805FB7E:
	ldr r0, [r3]
	bl TaskDestroy
_0805FB84:
	pop {r0}
	bx r0
	.align 2, 0
_0805FB88: .4byte gCurTask

	thumb_func_start sub_805FB8C
sub_805FB8C: @ 0x0805FB8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _0805FBF8 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldrb r0, [r5, #0xb]
	ldrb r1, [r5, #0xc]
	asrs r0, r1
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	bne _0805FBD4
	ldr r7, _0805FBFC @ =0x03000004
	adds r0, r4, r7
	ldrh r1, [r5, #0x10]
	ldrh r2, [r5, #0x12]
	ldrb r3, [r5, #0xf]
	adds r7, #9
	adds r4, r4, r7
	str r4, [sp]
	ldrb r4, [r5, #0xc]
	str r4, [sp, #4]
	bl sub_805F2C0
	adds r0, r6, #0
	ldrb r1, [r5, #0xc]
	lsls r0, r1
	ldrb r1, [r5, #0xd]
	orrs r0, r1
	strb r0, [r5, #0xd]
_0805FBD4:
	ldrb r0, [r5, #0xc]
	adds r0, #1
	strb r0, [r5, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0805FBEA
	mov r7, r8
	ldr r1, [r7]
	ldr r0, _0805FC00 @ =sub_805FB58
	str r0, [r1, #8]
_0805FBEA:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FBF8: .4byte gCurTask
_0805FBFC: .4byte 0x03000004
_0805FC00: .4byte sub_805FB58
    
    thumb_func_start sub_805FC04
sub_805FC04:
    bx lr
    .align 2 , 0
