.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_80BD384
sub_80BD384: @ 0x080BD384
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldrh r0, [r4, #0x1c]
	ldr r1, _080BD424 @ =gUnknown_03003570
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r6, [r0]
	ldrh r0, [r6]
	strh r0, [r4, #0x14]
	ldrh r0, [r6, #2]
	strh r0, [r4, #0x16]
	ldr r5, [r6, #8]
	ldrh r7, [r6, #0xc]
	ldrh r1, [r4, #0x2e]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080BD3EC
	ldr r3, _080BD428 @ =gUnknown_030035D0
	ldr r2, _080BD42C @ =gUnknown_03003F34
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	str r5, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	ldr r1, [r4, #4]
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r7, [r0, #8]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldrh r0, [r4, #0x2e]
	movs r1, #8
	eors r0, r1
	strh r0, [r4, #0x2e]
_080BD3EC:
	ldr r7, [r6, #0x10]
	ldrh r5, [r6, #0x16]
	ldrh r0, [r6, #0x14]
	movs r1, #0x2a
	adds r1, r1, r4
	mov ip, r1
	strb r0, [r1]
	ldrh r1, [r4, #0x2e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080BD45E
	ldr r0, _080BD430 @ =gFlags
	mov r8, r0
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _080BD434
	mov r0, ip
	ldrb r1, [r0]
	adds r2, r5, #0
	adds r0, r7, #0
	bl sub_80C460C
	b _080BD456
	.align 2, 0
_080BD424: .4byte gUnknown_03003570
_080BD428: .4byte gUnknown_030035D0
_080BD42C: .4byte gUnknown_03003F34
_080BD430: .4byte gFlags
_080BD434:
	ldr r2, _080BD498 @ =0x040000D4
	str r7, [r2]
	mov r1, ip
	ldrb r0, [r1]
	lsls r0, r0, #1
	ldr r1, _080BD49C @ =gUnknown_03003D30
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r5, r0
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	mov r0, r8
	str r3, [r0]
_080BD456:
	ldrh r0, [r4, #0x2e]
	movs r1, #0x10
	eors r0, r1
	strh r0, [r4, #0x2e]
_080BD45E:
	ldr r0, [r6, #0x18]
	str r0, [r4, #0x10]
	ldrh r1, [r4, #0x2e]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BD478
	ldr r0, [r6, #0x1c]
	str r0, [r4, #0x38]
	ldrh r0, [r6, #0x20]
	strh r0, [r4, #0x3c]
	ldrh r0, [r6, #0x22]
	strh r0, [r4, #0x3e]
_080BD478:
	ldr r1, _080BD4A0 @ =gUnknown_03002B00
	ldr r2, _080BD4A4 @ =gUnknown_03003D20
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BD498: .4byte 0x040000D4
_080BD49C: .4byte gUnknown_03003D30
_080BD4A0: .4byte gUnknown_03002B00
_080BD4A4: .4byte gUnknown_03003D20

	thumb_func_start sub_80BD4A8
sub_80BD4A8: @ 0x080BD4A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _080BD4E0 @ =gUnknown_03003F94
	ldr r1, _080BD4E4 @ =gUnknown_03003D20
	ldrb r2, [r0]
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r1, [r4]
	cmp r2, r1
	bne _080BD4CC
	bl _080BDFBA
_080BD4CC:
	ldr r0, _080BD4E8 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080BD4EC
	movs r0, #0
	bl sub_80BDFBC
	.align 2, 0
_080BD4E0: .4byte gUnknown_03003F94
_080BD4E4: .4byte gUnknown_03003D20
_080BD4E8: .4byte 0x04000004
_080BD4EC:
	ldr r0, _080BD54C @ =0x04000006
	ldrh r0, [r0]
	ldr r2, _080BD550 @ =gUnknown_03002B00
	ldrb r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r6, [r0]
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	strb r1, [r3]
	ldrh r2, [r6, #0x2e]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080BD518
	ldr r1, [r6, #0x30]
	ldr r0, [r6, #0x34]
	cmp r1, r0
	bne _080BD518
	bl sub_80BDFAE
_080BD518:
	ldrh r3, [r6, #0x14]
	str r3, [sp]
	movs r3, #3
	adds r4, r3, #0
	ands r4, r2
	ldr r7, [sp]
	cmp r4, #1
	bls _080BD55C
	ldr r0, _080BD554 @ =gUnknown_03003C20
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080BD55C
	ldr r1, _080BD558 @ =gUnknown_030035C0
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r3, r0, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #1
	b _080BD57A
	.align 2, 0
_080BD54C: .4byte 0x04000006
_080BD550: .4byte gUnknown_03002B00
_080BD554: .4byte gUnknown_03003C20
_080BD558: .4byte gUnknown_030035C0
_080BD55C:
	movs r1, #0x20
	str r1, [sp, #0xc]
	ldr r0, _080BD650 @ =gUnknown_030035C0
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	lsrs r3, r0, #0xe
	cmp r3, #1
	beq _080BD572
	cmp r3, #3
	bne _080BD578
_080BD572:
	movs r2, #0x80
	lsls r2, r2, #4
	str r2, [sp, #4]
_080BD578:
	movs r0, #2
_080BD57A:
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	adds r0, r1, #0
	muls r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r6, #0x2e]
	movs r0, #0x20
	mov sb, r0
	ands r0, r2
	cmp r0, #0
	beq _080BD598
	b _080BD978
_080BD598:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080BD5A2
	b _080BD868
_080BD5A2:
	ldrh r0, [r6, #0x24]
	ldr r1, [sp, #0xc]
	muls r0, r1, r0
	ldr r1, [r6, #0xc]
	adds r1, r1, r0
	ldrh r4, [r6, #0x22]
	mov r8, r4
	ldr r4, [sp, #8]
	mov r0, r8
	muls r0, r4, r0
	adds r4, r1, r0
	ldrh r5, [r6, #0x28]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080BD5C8
	b _080BD6D4
_080BD5C8:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080BD658
	ldrh r0, [r6, #0x20]
	adds r0, r0, r5
	subs r0, #1
	muls r0, r7, r0
	ldr r2, [sp, #8]
	muls r0, r2, r0
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	ldrh r0, [r6, #0x1e]
	ldrh r1, [r6, #0x26]
	adds r0, r0, r1
	subs r0, #1
	ldr r3, [sp, #8]
	muls r0, r3, r0
	adds r2, r2, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _080BD654 @ =0x0000FFFF
	cmp r5, r7
	bne _080BD5FE
	bl _080BDF9E
_080BD5FE:
	ldr r1, [sp]
	adds r0, r1, #0
	muls r0, r3, r0
	mov r8, r0
	adds r3, r7, #0
	mov sl, r3
_080BD60A:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _080BD63C
	movs r0, #0xc0
	lsls r0, r0, #4
	mov sb, r0
_080BD61E:
	lsls r0, r3, #1
	adds r1, r0, r4
	mov ip, r1
	subs r0, r2, r0
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _080BD61E
_080BD63C:
	adds r4, r5, #0
	mov r1, r8
	subs r2, r2, r1
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _080BD60A
	bl _080BDF9E
	.align 2, 0
_080BD650: .4byte gUnknown_030035C0
_080BD654: .4byte 0x0000FFFF
_080BD658:
	ldrh r0, [r6, #0x20]
	muls r0, r7, r0
	ldr r2, [sp, #8]
	muls r0, r2, r0
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	ldrh r0, [r6, #0x1e]
	ldrh r1, [r6, #0x26]
	adds r0, r0, r1
	subs r0, #1
	ldr r3, [sp, #8]
	muls r0, r3, r0
	adds r2, r2, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _080BD6D0 @ =0x0000FFFF
	cmp r5, r7
	bne _080BD682
	bl _080BDF9E
_080BD682:
	ldr r1, [sp]
	adds r0, r1, #0
	muls r0, r3, r0
	mov r8, r0
	adds r3, r7, #0
	mov sl, r3
_080BD68E:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _080BD6C0
	movs r0, #0x80
	lsls r0, r0, #3
	mov sb, r0
_080BD6A2:
	lsls r0, r3, #1
	adds r1, r0, r4
	mov ip, r1
	subs r0, r2, r0
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _080BD6A2
_080BD6C0:
	adds r4, r5, #0
	add r2, r8
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _080BD68E
	bl _080BDF9E
	.align 2, 0
_080BD6D0: .4byte 0x0000FFFF
_080BD6D4:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080BD758
	ldrh r0, [r6, #0x20]
	adds r0, r0, r5
	subs r0, #1
	muls r0, r7, r0
	ldr r1, [sp, #8]
	muls r0, r1, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	ldr r2, [sp, #8]
	muls r0, r2, r0
	adds r2, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _080BD754 @ =0x0000FFFF
	cmp r5, r3
	bne _080BD704
	bl _080BDF9E
_080BD704:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	adds r7, r0, #0
	muls r7, r1, r7
	mov r8, r7
	mov sl, r3
_080BD710:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _080BD742
	movs r0, #0x80
	lsls r0, r0, #4
	mov sb, r0
_080BD724:
	lsls r0, r3, #1
	adds r1, r0, r4
	mov ip, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _080BD724
_080BD742:
	adds r4, r5, #0
	mov r1, r8
	subs r2, r2, r1
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _080BD710
	bl _080BDF9E
	.align 2, 0
_080BD754: .4byte 0x0000FFFF
_080BD758:
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _080BD804
	ldr r2, [sp, #8]
	cmp r2, #2
	bne _080BD804
	mov r3, sb
	mov r0, r8
	subs r3, r3, r0
	mov sb, r3
	cmp r3, #0
	ble _080BD804
	ldrh r0, [r6, #0x26]
	add r0, r8
	adds r3, r0, #0
	subs r3, #0x20
	cmp r3, #0
	ble _080BD804
	ldrh r0, [r6, #0x20]
	muls r0, r7, r0
	lsls r0, r0, #1
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	lsls r0, r0, #1
	adds r2, r1, r0
	mov r1, sb
	lsls r1, r1, #1
	mov sb, r1
	lsls r3, r3, #1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _080BD7FC @ =0x0000FFFF
	cmp r5, r7
	bne _080BD7A6
	bl _080BDF9E
_080BD7A6:
	ldr r1, _080BD800 @ =0x040000D4
	mov r0, sb
	asrs r0, r0, #1
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #0x18
	mov r7, r8
	orrs r7, r0
	mov r8, r7
	asrs r3, r3, #1
	mov ip, r3
	orrs r3, r0
	mov ip, r3
_080BD7C0:
	str r2, [r1]
	str r4, [r1, #4]
	mov r7, r8
	str r7, [r1, #8]
	ldr r0, [r1, #8]
	mov r3, sb
	adds r0, r2, r3
	str r0, [r1]
	ldr r7, [sp, #4]
	adds r0, r4, r7
	str r0, [r1, #4]
	mov r0, ip
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, [sp, #0xc]
	adds r4, r4, r3
	ldr r0, [sp]
	ldr r3, [sp, #8]
	adds r7, r0, #0
	muls r7, r3, r7
	mov sl, r7
	add r2, sl
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _080BD7FC @ =0x0000FFFF
	cmp r5, r7
	bne _080BD7C0
	b _080BDF9E
	.align 2, 0
_080BD7FC: .4byte 0x0000FFFF
_080BD800: .4byte 0x040000D4
_080BD804:
	ldrh r0, [r6, #0x20]
	muls r0, r7, r0
	ldr r1, [sp, #8]
	muls r0, r1, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	ldr r2, [sp, #8]
	muls r0, r2, r0
	adds r2, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _080BD860 @ =0x0000FFFF
	cmp r5, r3
	bne _080BD826
	b _080BDF9E
_080BD826:
	ldr r1, _080BD864 @ =0x040000D4
	movs r7, #0x80
	lsls r7, r7, #0x18
	mov r8, r7
	mov sb, r3
	ldr r0, [sp]
	ldr r7, [sp, #8]
	adds r3, r0, #0
	muls r3, r7, r3
_080BD838:
	str r2, [r1]
	str r4, [r1, #4]
	ldrh r0, [r6, #0x26]
	ldr r7, [sp, #8]
	muls r0, r7, r0
	asrs r0, r0, #1
	mov r7, r8
	orrs r0, r7
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [sp, #0xc]
	adds r4, r4, r0
	adds r2, r2, r3
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sb
	bne _080BD838
	b _080BDF9E
	.align 2, 0
_080BD860: .4byte 0x0000FFFF
_080BD864: .4byte 0x040000D4
_080BD868:
	ldrh r1, [r6, #0x1e]
	str r1, [sp, #0x10]
	ldrh r2, [r6, #0x20]
	str r2, [sp, #0x14]
	movs r3, #0
	mov sl, r3
	ldrh r4, [r6, #0x26]
	cmp sl, r4
	blt _080BD87C
	b _080BDF9E
_080BD87C:
	ldr r4, [sp, #0x10]
	add r4, sl
	ldrh r1, [r6, #0x14]
	adds r0, r4, #0
	bl Div
	str r0, [sp, #0x18]
	ldrh r1, [r6, #0x14]
	adds r7, r0, #0
	adds r0, r7, #0
	muls r0, r1, r0
	subs r4, r4, r0
	str r4, [sp, #0x1c]
	ldrh r0, [r6, #0x28]
	mov r8, r0
	ldrh r0, [r6, #0x26]
	mov r2, sl
	subs r0, r0, r2
	subs r1, r1, r4
	cmp r1, r0
	ble _080BD8A8
	adds r1, r0, #0
_080BD8A8:
	ldr r4, [sp, #8]
	adds r3, r1, #0
	muls r3, r4, r3
	str r3, [sp, #0x20]
	movs r7, #0
	mov sb, r7
	add r1, sl
	str r1, [sp, #0x38]
	cmp sb, r8
	bge _080BD968
_080BD8BC:
	ldr r4, [sp, #0x14]
	add r4, sb
	ldrh r1, [r6, #0x16]
	adds r0, r4, #0
	bl Div
	ldrh r3, [r6, #0x16]
	adds r1, r0, #0
	muls r1, r3, r1
	subs r4, r4, r1
	subs r5, r3, r4
	ldrh r1, [r6, #0x3c]
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, [sp, #0x18]
	lsls r2, r0, #1
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r2, [r6, #0x14]
	muls r0, r2, r0
	adds r1, r0, #0
	muls r1, r3, r1
	adds r0, r4, #0
	muls r0, r2, r0
	ldr r2, [sp, #0x1c]
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r3, [sp, #8]
	muls r1, r3, r1
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [sp, #0x40]
	ldrh r1, [r6, #0x24]
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	ldr r4, [sp, #0xc]
	mov r1, sb
	muls r1, r4, r1
	adds r0, r0, r1
	ldrh r7, [r6, #0x22]
	adds r0, r0, r7
	mov r1, sl
	muls r1, r3, r1
	adds r3, r0, r1
	add sb, r5
	cmp r5, r8
	ble _080BD920
	mov r5, r8
_080BD920:
	mov r0, r8
	subs r0, r0, r5
	mov r8, r0
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	beq _080BD962
	ldr r2, _080BD974 @ =0x040000D4
	ldr r1, [sp, #0x20]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	ldr r7, [sp]
	ldr r0, [sp, #8]
	adds r4, r7, #0
	muls r4, r0, r4
	mov ip, r4
_080BD948:
	ldr r4, [sp, #0x40]
	str r4, [r2]
	str r3, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r7, [sp, #0xc]
	adds r3, r3, r7
	add r4, ip
	str r4, [sp, #0x40]
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	bne _080BD948
_080BD962:
	ldrh r0, [r6, #0x28]
	cmp sb, r0
	blt _080BD8BC
_080BD968:
	ldr r1, [sp, #0x38]
	mov sl, r1
	ldrh r2, [r6, #0x26]
	cmp sl, r2
	blt _080BD87C
	b _080BDF9E
	.align 2, 0
_080BD974: .4byte 0x040000D4
_080BD978:
	movs r0, #0x40
	ands r0, r2
	ldrh r3, [r6, #0x30]
	ldr r1, _080BDA48 @ =gUnknown_03003C10
	mov sb, r1
	lsls r4, r4, #2
	mov r8, r4
	cmp r0, #0
	bne _080BD9C4
	adds r2, r7, #0
	lsls r0, r7, #3
	ldrh r4, [r6, #0x16]
	ldrh r5, [r6, #0x32]
	cmp r3, r0
	blt _080BD9A8
_080BD996:
	lsls r1, r2, #3
	ldrh r0, [r6, #0x30]
	subs r0, r0, r1
	strh r0, [r6, #0x30]
	ldrh r1, [r6, #0x30]
	adds r2, r7, #0
	lsls r0, r7, #3
	cmp r1, r0
	bge _080BD996
_080BD9A8:
	adds r2, r4, #0
	lsls r0, r2, #3
	ldrh r3, [r6, #0x30]
	cmp r5, r0
	blt _080BD9C4
_080BD9B2:
	lsls r1, r2, #3
	ldrh r0, [r6, #0x32]
	subs r0, r0, r1
	strh r0, [r6, #0x32]
	ldrh r1, [r6, #0x32]
	adds r2, r4, #0
	lsls r0, r2, #3
	cmp r1, r0
	bge _080BD9B2
_080BD9C4:
	mov r0, r8
	add r0, sb
	movs r2, #7
	ands r3, r2
	strh r3, [r0]
	mov r1, sb
	adds r1, #2
	add r1, r8
	ldrh r0, [r6, #0x32]
	ands r0, r2
	strh r0, [r1]
	ldrh r0, [r6, #0x34]
	ldrh r4, [r6, #0x30]
	lsrs r2, r4, #3
	lsrs r0, r0, #3
	cmp r0, r2
	bne _080BD9F4
	ldrh r1, [r6, #0x36]
	ldrh r0, [r6, #0x32]
	lsrs r1, r1, #3
	lsrs r0, r0, #3
	cmp r1, r0
	bne _080BD9F4
	b _080BDF9E
_080BD9F4:
	ldrh r1, [r6, #0x2e]
	movs r0, #0x40
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080BDA02
	b _080BDE84
_080BDA02:
	ldrh r0, [r6, #0x1e]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #3
	ldrh r2, [r6, #0x20]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldrh r0, [r6, #0x24]
	ldr r4, [sp, #0xc]
	muls r0, r4, r0
	ldr r1, [r6, #0xc]
	adds r1, r1, r0
	ldrh r0, [r6, #0x22]
	ldr r7, [sp, #8]
	muls r0, r7, r0
	adds r4, r1, r0
	ldrh r0, [r6, #0x26]
	ldr r1, [sp, #0x10]
	adds r2, r1, r0
	adds r1, r2, #1
	ldrh r7, [r6, #0x14]
	mov sb, r0
	cmp r1, r7
	ble _080BDA4C
	subs r0, r7, #1
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _080BDA50
	.align 2, 0
_080BDA48: .4byte gUnknown_03003C10
_080BDA4C:
	movs r2, #0
	mov r8, r2
_080BDA50:
	ldrh r0, [r6, #0x28]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _080BDA66
	b _080BDB6C
_080BDA66:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080BDAF0
	ldrh r0, [r6, #0x20]
	adds r0, r0, r5
	subs r0, #1
	muls r0, r7, r0
	ldr r2, [sp, #8]
	muls r0, r2, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	add r0, sb
	subs r0, #1
	muls r0, r2, r0
	adds r2, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r3, r8
	lsls r3, r3, #0x10
	mov sl, r3
	ldr r7, _080BDAEC @ =0x0000FFFF
	cmp r5, r7
	bne _080BDA9C
	b _080BDC66
_080BDA9C:
	ldr r1, [sp]
	ldr r3, [sp, #8]
	adds r0, r1, #0
	muls r0, r3, r0
	mov r8, r0
	mov ip, r7
_080BDAA8:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _080BDADA
	movs r0, #0xc0
	lsls r0, r0, #4
	mov sb, r0
_080BDABC:
	lsls r0, r3, #1
	adds r1, r0, r4
	str r1, [sp, #0x3c]
	subs r0, r2, r0
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _080BDABC
_080BDADA:
	adds r4, r5, #0
	mov r1, r8
	subs r2, r2, r1
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, ip
	bne _080BDAA8
	b _080BDC66
	.align 2, 0
_080BDAEC: .4byte 0x0000FFFF
_080BDAF0:
	ldrh r0, [r6, #0x20]
	muls r0, r7, r0
	ldr r2, [sp, #8]
	muls r0, r2, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	ldrh r0, [r6, #0x1e]
	add r0, sb
	subs r0, #1
	muls r0, r2, r0
	adds r2, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r3, r8
	lsls r3, r3, #0x10
	mov sl, r3
	ldr r7, _080BDB68 @ =0x0000FFFF
	cmp r5, r7
	bne _080BDB1A
	b _080BDC66
_080BDB1A:
	ldr r1, [sp]
	ldr r3, [sp, #8]
	adds r0, r1, #0
	muls r0, r3, r0
	mov r8, r0
	mov ip, r7
_080BDB26:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _080BDB58
	movs r0, #0x80
	lsls r0, r0, #3
	mov sb, r0
_080BDB3A:
	lsls r0, r3, #1
	adds r1, r0, r4
	str r1, [sp, #0x3c]
	subs r0, r2, r0
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _080BDB3A
_080BDB58:
	adds r4, r5, #0
	add r2, r8
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, ip
	bne _080BDB26
	b _080BDC66
	.align 2, 0
_080BDB68: .4byte 0x0000FFFF
_080BDB6C:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080BDBF4
	ldr r1, [sp, #0x14]
	adds r0, r1, r5
	subs r0, #1
	muls r0, r7, r0
	ldr r2, [sp, #8]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	ldr r3, [sp, #0x10]
	adds r1, r3, #0
	muls r1, r2, r1
	adds r2, r0, r1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r7, r8
	lsls r7, r7, #0x10
	mov sl, r7
	ldr r0, _080BDBF0 @ =0x0000FFFF
	cmp r5, r0
	beq _080BDC66
	ldr r3, [sp]
	ldr r7, [sp, #8]
	adds r1, r3, #0
	muls r1, r7, r1
	mov r8, r1
	mov ip, r0
_080BDBAC:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _080BDBDE
	movs r0, #0x80
	lsls r0, r0, #4
	mov sb, r0
_080BDBC0:
	lsls r0, r3, #1
	adds r1, r0, r4
	str r1, [sp, #0x3c]
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _080BDBC0
_080BDBDE:
	adds r4, r5, #0
	mov r1, r8
	subs r2, r2, r1
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, ip
	bne _080BDBAC
	b _080BDC66
	.align 2, 0
_080BDBF0: .4byte 0x0000FFFF
_080BDBF4:
	ldr r2, [sp, #0x14]
	adds r0, r2, #0
	muls r0, r7, r0
	ldr r3, [sp, #8]
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	ldr r7, [sp, #0x10]
	adds r1, r7, #0
	muls r1, r3, r1
	adds r2, r0, r1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	mov sl, r0
	ldr r1, _080BDD1C @ =0x0000FFFF
	cmp r5, r1
	beq _080BDC66
	ldr r3, _080BDD20 @ =0x040000D4
	asrs r0, r0, #0x10
	subs r0, #1
	mov r8, r0
	mov ip, r1
	movs r7, #0x80
	lsls r7, r7, #0x18
	mov sb, r7
	ldr r1, [sp]
	ldr r7, [sp, #8]
	adds r0, r1, #0
	muls r0, r7, r0
	str r0, [sp, #0x40]
_080BDC38:
	str r2, [r3]
	str r4, [r3, #4]
	ldrh r0, [r6, #0x26]
	mov r1, r8
	subs r0, r0, r1
	ldr r7, [sp, #8]
	muls r0, r7, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov r1, sb
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r7, [sp, #0xc]
	adds r4, r4, r7
	ldr r0, [sp, #0x40]
	adds r2, r2, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, ip
	bne _080BDC38
_080BDC66:
	mov r1, sl
	asrs r7, r1, #0x10
	cmp r7, #0
	bne _080BDC70
	b _080BDF9E
_080BDC70:
	ldrh r0, [r6, #0x24]
	ldr r2, [sp, #0xc]
	muls r0, r2, r0
	ldr r1, [r6, #0xc]
	adds r1, r1, r0
	ldrh r0, [r6, #0x22]
	ldrh r2, [r6, #0x14]
	adds r0, r0, r2
	ldr r3, [sp, #0x10]
	subs r0, r0, r3
	ldr r4, [sp, #8]
	muls r0, r4, r0
	adds r4, r1, r0
	ldrh r0, [r6, #0x28]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r1, [r6, #0x2e]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080BDD98
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080BDD24
	ldr r1, [sp, #0x14]
	adds r0, r1, r5
	subs r0, #1
	muls r0, r2, r0
	ldr r2, [sp, #8]
	muls r0, r2, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	subs r0, r7, #1
	muls r0, r2, r0
	adds r2, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _080BDD1C @ =0x0000FFFF
	cmp r5, r3
	bne _080BDCCC
	b _080BDF9E
_080BDCCC:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	adds r7, r0, #0
	muls r7, r1, r7
	mov r8, r7
	mov sl, r3
_080BDCD8:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _080BDD0A
	movs r0, #0xc0
	lsls r0, r0, #4
	mov sb, r0
_080BDCEC:
	lsls r0, r3, #1
	adds r1, r0, r4
	mov ip, r1
	subs r0, r2, r0
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _080BDCEC
_080BDD0A:
	adds r4, r5, #0
	mov r1, r8
	subs r2, r2, r1
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _080BDCD8
	b _080BDF9E
	.align 2, 0
_080BDD1C: .4byte 0x0000FFFF
_080BDD20: .4byte 0x040000D4
_080BDD24:
	ldr r3, [sp, #0x14]
	adds r0, r3, #0
	muls r0, r2, r0
	ldr r1, [sp, #8]
	muls r0, r1, r0
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	subs r0, r7, #1
	ldr r2, [sp, #8]
	muls r0, r2, r0
	adds r2, r1, r0
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _080BDD94 @ =0x0000FFFF
	cmp r5, r3
	bne _080BDD48
	b _080BDF9E
_080BDD48:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	adds r7, r0, #0
	muls r7, r1, r7
	mov r8, r7
	mov sl, r3
_080BDD54:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	ldrh r1, [r6, #0x26]
	cmp r3, r1
	bhs _080BDD86
	movs r0, #0x80
	lsls r0, r0, #3
	mov sb, r0
_080BDD68:
	lsls r0, r3, #1
	adds r1, r0, r4
	mov ip, r1
	subs r0, r2, r0
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	mov r1, ip
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r0, [r6, #0x26]
	cmp r3, r0
	blo _080BDD68
_080BDD86:
	adds r4, r5, #0
	add r2, r8
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	bne _080BDD54
	b _080BDF9E
	.align 2, 0
_080BDD94: .4byte 0x0000FFFF
_080BDD98:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080BDE1C
	ldr r1, [sp, #0x14]
	adds r0, r1, r5
	subs r0, #1
	muls r0, r2, r0
	ldr r2, [sp, #8]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r6, #0x10]
	adds r2, r0, r1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _080BDE18 @ =0x0000FFFF
	cmp r5, r3
	bne _080BDDC0
	b _080BDF9E
_080BDDC0:
	mov r0, sl
	str r0, [sp, #0x30]
	mov sl, r7
	ldr r3, [sp]
	ldr r7, [sp, #8]
	adds r1, r3, #0
	muls r1, r7, r1
	mov r8, r1
_080BDDD0:
	movs r3, #0
	subs r7, r5, #1
	ldr r0, [sp, #0xc]
	adds r5, r4, r0
	cmp r3, sl
	bge _080BDE04
	movs r1, #0x80
	lsls r1, r1, #4
	mov sb, r1
	ldr r0, [sp, #0x30]
	asrs r0, r0, #0x10
	mov ip, r0
_080BDDE8:
	lsls r0, r3, #1
	adds r1, r0, r4
	str r1, [sp, #0x3c]
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r1, sb
	eors r0, r1
	ldr r1, [sp, #0x3c]
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, ip
	blt _080BDDE8
_080BDE04:
	adds r4, r5, #0
	mov r3, r8
	subs r2, r2, r3
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _080BDE18 @ =0x0000FFFF
	cmp r5, r7
	bne _080BDDD0
	b _080BDF9E
	.align 2, 0
_080BDE18: .4byte 0x0000FFFF
_080BDE1C:
	ldr r1, [sp, #0x14]
	adds r0, r1, #0
	muls r0, r2, r0
	ldr r2, [sp, #8]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r6, #0x10]
	adds r2, r0, r1
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, _080BDE7C @ =0x0000FFFF
	cmp r5, r3
	bne _080BDE3A
	b _080BDF9E
_080BDE3A:
	ldr r3, _080BDE80 @ =0x040000D4
	ldr r1, [sp, #8]
	adds r0, r7, #0
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #0x18
	mov r7, r8
	orrs r7, r0
	mov r8, r7
	ldr r1, [sp]
	ldr r7, [sp, #8]
	adds r0, r1, #0
	muls r0, r7, r0
	mov sb, r0
_080BDE5E:
	str r2, [r3]
	str r4, [r3, #4]
	mov r0, r8
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [sp, #0xc]
	adds r4, r4, r1
	add r2, sb
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, _080BDE7C @ =0x0000FFFF
	cmp r5, r7
	bne _080BDE5E
	b _080BDF9E
	.align 2, 0
_080BDE7C: .4byte 0x0000FFFF
_080BDE80: .4byte 0x040000D4
_080BDE84:
	lsrs r0, r4, #3
	ldrh r1, [r6, #0x1e]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r0, [r6, #0x32]
	lsrs r0, r0, #3
	ldrh r2, [r6, #0x20]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r3, #0
	mov sl, r3
	ldrh r4, [r6, #0x26]
	cmp sl, r4
	bge _080BDF9E
_080BDEA8:
	ldr r4, [sp, #0x10]
	add r4, sl
	ldrh r1, [r6, #0x14]
	adds r0, r4, #0
	bl Div
	str r0, [sp, #0x24]
	ldrh r1, [r6, #0x14]
	adds r7, r0, #0
	adds r0, r7, #0
	muls r0, r1, r0
	subs r4, r4, r0
	str r4, [sp, #0x28]
	ldrh r0, [r6, #0x28]
	mov r8, r0
	ldrh r0, [r6, #0x26]
	mov r2, sl
	subs r0, r0, r2
	subs r1, r1, r4
	cmp r1, r0
	ble _080BDED4
	adds r1, r0, #0
_080BDED4:
	ldr r4, [sp, #8]
	adds r3, r1, #0
	muls r3, r4, r3
	str r3, [sp, #0x2c]
	movs r7, #0
	mov sb, r7
	add r1, sl
	str r1, [sp, #0x34]
	cmp sb, r8
	bge _080BDF94
_080BDEE8:
	ldr r4, [sp, #0x14]
	add r4, sb
	ldrh r1, [r6, #0x16]
	adds r0, r4, #0
	bl Div
	ldrh r3, [r6, #0x16]
	adds r1, r0, #0
	muls r1, r3, r1
	subs r4, r4, r1
	subs r5, r3, r4
	ldrh r1, [r6, #0x3c]
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, [sp, #0x24]
	lsls r2, r0, #1
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r2, [r6, #0x14]
	muls r0, r2, r0
	adds r1, r0, #0
	muls r1, r3, r1
	adds r0, r4, #0
	muls r0, r2, r0
	ldr r2, [sp, #0x28]
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r3, [sp, #8]
	muls r1, r3, r1
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [sp, #0x40]
	ldrh r1, [r6, #0x24]
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	ldr r4, [sp, #0xc]
	mov r1, sb
	muls r1, r4, r1
	adds r0, r0, r1
	ldrh r7, [r6, #0x22]
	adds r0, r0, r7
	mov r1, sl
	muls r1, r3, r1
	adds r3, r0, r1
	add sb, r5
	cmp r5, r8
	ble _080BDF4C
	mov r5, r8
_080BDF4C:
	mov r0, r8
	subs r0, r0, r5
	mov r8, r0
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	beq _080BDF8E
	ldr r2, _080BDFCC @ =0x040000D4
	ldr r1, [sp, #0x2c]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	ldr r7, [sp]
	ldr r0, [sp, #8]
	adds r4, r7, #0
	muls r4, r0, r4
	mov ip, r4
_080BDF74:
	ldr r4, [sp, #0x40]
	str r4, [r2]
	str r3, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r7, [sp, #0xc]
	adds r3, r3, r7
	add r4, ip
	str r4, [sp, #0x40]
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	bne _080BDF74
_080BDF8E:
	ldrh r0, [r6, #0x28]
	cmp sb, r0
	blt _080BDEE8
_080BDF94:
	ldr r1, [sp, #0x34]
	mov sl, r1
	ldrh r2, [r6, #0x26]
	cmp sl, r2
	blt _080BDEA8
_080BDF9E:
	ldr r0, _080BDFD0 @ =0x04000006
	ldrh r0, [r0]
	ldrh r0, [r6, #0x30]
	strh r0, [r6, #0x34]
	ldrh r0, [r6, #0x32]
	strh r0, [r6, #0x36]
	ldr r3, _080BDFD4 @ =gUnknown_03003F94
	ldr r4, _080BDFD8 @ =gUnknown_03003D20

	non_word_aligned_thumb_func_start sub_80BDFAE
sub_80BDFAE: @ 0x080BDFAE
	ldrb r0, [r3]
	ldrb r7, [r4]
	cmp r0, r7
	beq _080BDFBA
	bl _080BD4CC
_080BDFBA:
	movs r0, #1
sub_80BDFBC:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BDFCC: .4byte 0x040000D4
_080BDFD0: .4byte 0x04000006
_080BDFD4: .4byte gUnknown_03003F94
_080BDFD8: .4byte gUnknown_03003D20

	thumb_func_start sub_80BDFDC
sub_80BDFDC: @ 0x080BDFDC
	push {r4, r5, lr}
	mov ip, r0
	ldrh r0, [r0, #0x1c]
	ldr r1, _080BE038 @ =gUnknown_03003570
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	ldrb r0, [r3, #6]
	cmp r0, #0
	beq _080BE08E
	mov r2, ip
	adds r2, #0x2c
	ldrb r0, [r2]
	adds r0, #1
	movs r5, #0
	strb r0, [r2]
	movs r4, #0xff
	ldrb r1, [r3, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bhi _080BE08E
	strb r5, [r2]
	subs r2, #1
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r3, #6]
	ands r0, r4
	cmp r1, r0
	bhi _080BE01E
	strb r5, [r2]
_080BE01E:
	ldrh r5, [r3, #4]
	mov r0, ip
	ldrh r1, [r0, #0x2e]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BE048
	ldrb r0, [r2]
	cmp r0, #0
	bne _080BE03C
	ldr r4, [r3, #8]
	b _080BE056
	.align 2, 0
_080BE038: .4byte gUnknown_03003570
_080BE03C:
	ldr r1, [r3, #8]
	ldr r0, [r3, #0xc]
	adds r1, r1, r0
	ldrb r0, [r2]
	subs r0, #1
	b _080BE052
_080BE048:
	mov r4, ip
	ldr r1, [r4, #4]
	ldr r0, [r3, #0xc]
	adds r1, r1, r0
	ldrb r0, [r2]
_080BE052:
	muls r0, r5, r0
	adds r4, r1, r0
_080BE056:
	ldr r3, _080BE094 @ =gUnknown_030035D0
	ldr r2, _080BE098 @ =gUnknown_03003F34
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	str r4, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	mov r4, ip
	ldr r1, [r4, #4]
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r5, [r0, #8]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
_080BE08E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BE094: .4byte gUnknown_030035D0
_080BE098: .4byte gUnknown_03003F34

	thumb_func_start sub_80BE09C
sub_80BE09C: @ 0x080BE09C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, r2
	bne _080BE0B0
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	beq _080BE0C4
_080BE0B0:
	movs r1, #0
	strb r2, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _080BE0D4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
_080BE0C4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080BE0D8
	movs r0, #0
	b _080BE180
	.align 2, 0
_080BE0D4: .4byte 0xFFFFBFFF
_080BE0D8:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _080BE0F0
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	b _080BE17E
_080BE0EC:
	adds r0, r1, #0
	b _080BE180
_080BE0F0:
	ldr r0, _080BE188 @ =gUnknown_03003C04
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, #0
	bge _080BE15A
	ldr r6, _080BE18C @ =gUnknown_082B4884
_080BE114:
	mvns r0, r0
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	cmp r1, #1
	beq _080BE14E
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080BE0EC
	ldr r0, _080BE188 @ =gUnknown_03003C04
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r4, #0xe]
	adds r5, r1, #0
_080BE14E:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, #0
	blt _080BE114
_080BE15A:
	ldr r0, [r3]
	lsls r0, r0, #8
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	ldrb r1, [r4, #0x1c]
	lsls r1, r1, #4
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #0xe]
	adds r0, #2
	strh r0, [r4, #0xe]
_080BE17E:
	movs r0, #1
_080BE180:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BE188: .4byte gUnknown_03003C04
_080BE18C: .4byte gUnknown_082B4884

	thumb_func_start sub_80BE190
sub_80BE190: @ 0x080BE190
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r3, #0
	mov sb, r3
	ldrb r0, [r5, #0x1a]
	strb r0, [r5, #0x1b]
	ldrh r0, [r5, #0xc]
	strh r0, [r5, #0x18]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	ldr r0, [r5, #8]
	ldr r1, _080BE214 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _080BE218 @ =gUnknown_03003C04
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	cmp r6, #0
	blt _080BE294
_080BE1D2:
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4]
	cmp r1, #0
	bge _080BE248
	ldr r0, _080BE21C @ =gUnknown_082B4884
	mov r8, r0
_080BE1E2:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080BE1EC
	mov sb, r3
_080BE1EC:
	mvns r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	str r3, [sp]
	bl _call_via_r2
	adds r1, r0, #0
	ldr r3, [sp]
	cmp r1, #1
	beq _080BE23C
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080BE220
	adds r0, r1, #0
	b _080BE296
	.align 2, 0
_080BE214: .4byte 0xFFFFBFFF
_080BE218: .4byte gUnknown_03003C04
_080BE21C: .4byte gUnknown_082B4884
_080BE220:
	ldr r0, _080BE274 @ =gUnknown_03003C04
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r5, #0xe]
	adds r7, r1, #0
_080BE23C:
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4]
	cmp r1, #0
	blt _080BE1E2
_080BE248:
	ldr r0, [r4]
	lsls r0, r0, #8
	strh r0, [r5, #0x16]
	ldr r0, [r4]
	subs r6, r6, r0
	lsls r0, r6, #8
	rsbs r0, r0, #0
	strh r0, [r5, #0x16]
	mov r0, sb
	cmp r0, #0
	beq _080BE278
	cmp r6, #0
	ble _080BE278
	adds r0, r6, #0
	mov r1, sb
	str r3, [sp]
	bl DivMod
	adds r6, r0, #0
	ldr r3, [sp]
	b _080BE27C
	.align 2, 0
_080BE274: .4byte gUnknown_03003C04
_080BE278:
	ldr r0, [r4]
	adds r3, r3, r0
_080BE27C:
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r5, #8]
	ldrh r0, [r5, #0xe]
	adds r0, #2
	strh r0, [r5, #0xe]
	cmp r6, #0
	bge _080BE1D2
_080BE294:
	movs r0, #1
_080BE296:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80BE2A4
sub_80BE2A4: @ 0x080BE2A4
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldrh r0, [r4, #0xe]
	adds r0, #3
	strh r0, [r4, #0xe]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _080BE31E
	ldr r1, [r2, #4]
	cmp r1, #0
	bge _080BE2D8
	ldr r0, _080BE2D4 @ =gUnknown_03003C04
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r5, r0, r1
	ldr r0, [r2, #8]
	lsls r0, r0, #0x16
	b _080BE2E6
	.align 2, 0
_080BE2D4: .4byte gUnknown_03003C04
_080BE2D8:
	ldr r0, _080BE328 @ =gUnknown_03003C04
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r5, r0, r1
	ldr r0, [r2, #8]
	lsls r0, r0, #0x15
_080BE2E6:
	lsrs r6, r0, #0x10
	ldr r3, _080BE32C @ =gUnknown_030035D0
	ldr r2, _080BE330 @ =gUnknown_03003F34
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	str r5, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	ldr r1, [r4]
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r6, [r0, #8]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
_080BE31E:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BE328: .4byte gUnknown_03003C04
_080BE32C: .4byte gUnknown_030035D0
_080BE330: .4byte gUnknown_03003F34

	thumb_func_start sub_80BE334
sub_80BE334: @ 0x080BE334
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0xe]
	adds r0, #3
	strh r0, [r3, #0xe]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _080BE3B4
	ldr r1, [r5, #4]
	ldr r6, _080BE37C @ =gFlags
	ldr r4, [r6]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r4
	cmp r0, #0
	beq _080BE384
	ldr r0, _080BE380 @ =gUnknown_03003C04
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	ldrb r1, [r3, #0x1f]
	lsls r1, r1, #4
	ldrb r2, [r5, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r2, [r5, #8]
	bl sub_80C460C
	b _080BE3B4
	.align 2, 0
_080BE37C: .4byte gFlags
_080BE380: .4byte gUnknown_03003C04
_080BE384:
	ldr r2, _080BE3BC @ =0x040000D4
	ldr r0, _080BE3C0 @ =gUnknown_03003C04
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3, #0x1f]
	lsls r0, r0, #4
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080BE3C4 @ =gUnknown_03003D30
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r4, r0
	str r4, [r6]
_080BE3B4:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BE3BC: .4byte 0x040000D4
_080BE3C0: .4byte gUnknown_03003C04
_080BE3C4: .4byte gUnknown_03003D30

	thumb_func_start sub_80BE3C8
sub_80BE3C8: @ 0x080BE3C8
	push {r4, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0xe]
	adds r1, #3
	strh r1, [r4, #0xe]
	ldr r2, _080BE404 @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _080BE408 @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080BE40C
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _080BE462
	.align 2, 0
_080BE404: .4byte 0x040000D4
_080BE408: .4byte 0x84000002
_080BE40C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080BE43A
	adds r2, r4, r3
	movs r0, #0x25
	adds r0, r0, r2
	mov ip, r0
	adds r2, #0x27
	ldrb r1, [r0]
	ldrb r0, [r2]
	eors r1, r0
	mov r0, ip
	strb r1, [r0]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	mov r2, ip
	ldrb r1, [r2]
	eors r0, r1
	strb r0, [r2]
_080BE43A:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080BE462
	adds r2, r4, r3
	adds r3, r2, #0
	adds r3, #0x24
	adds r2, #0x26
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	strb r0, [r3]
_080BE462:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80BE46C
sub_80BE46C: @ 0x080BE46C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r2, _080BE4B8 @ =gUnknown_030061C0
	ldr r1, _080BE4BC @ =gUnknown_03006840
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r6, [r0]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r2, [r6, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _080BE498
	b _080BE676
_080BE498:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080BE4C4
	ldr r0, _080BE4C0 @ =gUnknown_03003C04
	ldr r0, [r0]
	ldrh r1, [r6, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov r8, r1
	b _080BE4D8
	.align 2, 0
_080BE4B8: .4byte gUnknown_030061C0
_080BE4BC: .4byte gUnknown_03006840
_080BE4C0: .4byte gUnknown_03003C04
_080BE4C4:
	ldr r0, _080BE584 @ =gUnknown_03003C04
	ldr r1, [r0]
	ldrh r0, [r6, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov r8, r0
_080BE4D8:
	ldr r0, [r6, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r7, r0, #0xf
	cmp r7, #1
	bls _080BE4F2
	ldr r0, _080BE588 @ =gUnknown_03003C20
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _080BE524
_080BE4F2:
	mov r1, r8
	movs r2, #8
	ldrsh r0, [r1, r2]
	movs r2, #0x10
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	movs r1, #0x10
	bl DivMod
	ldr r4, _080BE58C @ =gUnknown_03003C10
	lsls r5, r7, #2
	adds r1, r5, r4
	strh r0, [r1]
	mov r1, r8
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	movs r2, #0x12
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	movs r1, #8
	bl DivMod
	adds r4, #2
	adds r5, r5, r4
	strh r0, [r5]
_080BE524:
	ldr r0, _080BE590 @ =gUnknown_030035C0
	lsls r3, r7, #1
	adds r3, r3, r0
	ldrh r0, [r3]
	ldr r2, _080BE594 @ =0x0000FFFC
	ands r2, r0
	strh r2, [r3]
	ldr r0, [r6, #8]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r0, r0, #0xc
	orrs r0, r2
	strh r0, [r3]
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _080BE54A
	b _080BE676
_080BE54A:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _080BE558
	b _080BE676
_080BE558:
	ldr r0, _080BE598 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r6, #8]
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r1, _080BE59C @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, _080BE584 @ =gUnknown_03003C04
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r0]
	cmp r0, #0
	blt _080BE5A0
	movs r0, #0x20
	mov ip, r0
	ldr r2, [r2, #0x10]
	b _080BE5A6
	.align 2, 0
_080BE584: .4byte gUnknown_03003C04
_080BE588: .4byte gUnknown_03003C20
_080BE58C: .4byte gUnknown_03003C10
_080BE590: .4byte gUnknown_030035C0
_080BE594: .4byte 0x0000FFFC
_080BE598: .4byte 0xFBFFFFFF
_080BE59C: .4byte 0x00FFFFFF
_080BE5A0:
	movs r1, #0x40
	mov ip, r1
	ldr r2, [r2, #0x14]
_080BE5A6:
	mov r8, r2
	mov r3, ip
	mov r2, sl
	adds r2, #4
	mov sl, r2
	subs r2, #4
	ldm r2!, {r0}
	muls r0, r3, r0
	mov r1, r8
	adds r2, r1, r0
	ldr r6, [r6]
	movs r7, #1
	ldr r0, [sp]
	cmp r7, r0
	bhs _080BE63C
	ldr r1, _080BE5F0 @ =gUnknown_030035D0
	mov sb, r1
	ldr r5, _080BE5F4 @ =gUnknown_03003F34
_080BE5CA:
	mov r1, sl
	adds r1, #4
	mov sl, r1
	subs r1, #4
	ldm r1!, {r0}
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, r8
	adds r4, r1, r0
	adds r0, r2, r3
	cmp r0, r4
	bne _080BE5F8
	mov r1, ip
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _080BE630
	.align 2, 0
_080BE5F0: .4byte gUnknown_030035D0
_080BE5F4: .4byte gUnknown_03003F34
_080BE5F8:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sb
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	strh r3, [r0, #8]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5]
	adds r6, r6, r3
	mov r3, ip
	adds r2, r4, #0
_080BE630:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	blo _080BE5CA
_080BE63C:
	ldr r0, _080BE688 @ =gUnknown_03003F34
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BE68C @ =gUnknown_030035D0
	adds r0, r0, r1
	str r2, [r0]
	ldr r2, _080BE688 @ =gUnknown_03003F34
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BE68C @ =gUnknown_030035D0
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080BE68C @ =gUnknown_030035D0
	adds r0, r0, r1
	strh r3, [r0, #8]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
_080BE676:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BE688: .4byte gUnknown_03003F34
_080BE68C: .4byte gUnknown_030035D0

	thumb_func_start sub_80BE690
sub_80BE690: @ 0x080BE690
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	movs r0, #5
	str r0, [sp, #0x28]
	ldr r0, _080BE6B0 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080BE6B4
	movs r0, #0
	b _080BEBB2
	.align 2, 0
_080BE6B0: .4byte 0x04000004
_080BE6B4:
	ldr r0, _080BE704 @ =gUnknown_03006840
	ldrb r1, [r0]
	cmp r1, #0
	bne _080BE6BE
	b _080BEBB0
_080BE6BE:
	movs r6, #0
	cmp r6, r1
	blo _080BE6C6
	b _080BEBAA
_080BE6C6:
	lsls r0, r6, #2
	ldr r1, _080BE708 @ =gUnknown_030061C0
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r3, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	adds r2, r6, #1
	str r2, [sp, #0x3c]
	cmp r3, r0
	bne _080BE6E0
	b _080BEB9A
_080BE6E0:
	lsrs r0, r3, #0x1c
	cmp r0, #0
	bne _080BE710
	ldr r4, _080BE70C @ =gUnknown_03003C04
	ldr r0, [r4]
	ldr r5, [sp, #0xc]
	ldrh r2, [r5, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
	adds r7, r4, #0
	b _080BE726
	.align 2, 0
_080BE704: .4byte gUnknown_03006840
_080BE708: .4byte gUnknown_030061C0
_080BE70C: .4byte gUnknown_03003C04
_080BE710:
	ldr r7, _080BE89C @ =gUnknown_03003C04
	ldr r0, [r7]
	ldr r1, [sp, #0xc]
	ldrh r2, [r1, #0xc]
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	lsls r1, r3, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sl, r0
_080BE726:
	ldr r3, [sp, #0xc]
	ldr r0, [r3, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r4, r0, #0xf
	lsls r0, r4, #1
	ldr r5, _080BE8A0 @ =gUnknown_030035C0
	adds r0, r0, r5
	ldrh r3, [r0]
	movs r0, #0xc
	ands r0, r3
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	str r0, [sp, #0x18]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _080BE760
	movs r0, #6
	str r0, [sp, #0x28]
_080BE760:
	cmp r4, #1
	bhi _080BE766
	b _080BE922
_080BE766:
	ldr r0, _080BE8A4 @ =gUnknown_03003C20
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080BE774
	b _080BE922
_080BE774:
	lsrs r1, r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r7]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	mov r1, sl
	ldrh r0, [r1]
	ldr r1, _080BE8A8 @ =0x00003FFF
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x1c]
	movs r3, #0
	str r3, [sp, #8]
	adds r6, #1
	str r6, [sp, #0x3c]
	mov r4, sl
	ldrh r4, [r4, #2]
	cmp r3, r4
	blo _080BE7B2
	b _080BEB9A
_080BE7B2:
	mov sb, sp
	ldr r5, [sp, #0x10]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
_080BE7BC:
	ldr r1, _080BE8AC @ =0x040000D4
	ldr r6, [sp, #0x1c]
	str r6, [r1]
	mov r7, sp
	str r7, [r1, #4]
	ldr r0, _080BE8B0 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r6, #6
	str r6, [sp, #0x1c]
	mov r0, sb
	ldrh r3, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r3
	lsrs r1, r1, #0xc
	ldrh r2, [r0, #2]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r2
	lsrs r0, r0, #0xe
	orrs r1, r0
	lsls r1, r1, #1
	ldr r2, _080BE8B4 @ =gUnknown_082B52EC
	adds r0, r1, r2
	ldrb r0, [r0]
	lsrs r0, r0, #3
	str r0, [sp, #0x20]
	ldr r4, _080BE8B8 @ =gUnknown_082B52ED
	adds r1, r1, r4
	ldrb r0, [r1]
	lsrs r0, r0, #3
	mov ip, r0
	mov r4, ip
	ldr r5, [sp, #0xc]
	movs r6, #0x12
	ldrsh r1, [r5, r6]
	mov r7, sl
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	subs r5, r1, r0
	ldr r6, [sp, #0xc]
	movs r7, #0x10
	ldrsh r1, [r6, r7]
	mov r2, sl
	movs r6, #8
	ldrsh r0, [r2, r6]
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x10
	rsbs r0, r0, #0
	mov r7, r8
	ands r7, r0
	mov r8, r7
	movs r0, #0xff
	ands r0, r3
	adds r0, r5, r0
	asrs r0, r0, #3
	ldr r1, [sp, #0x10]
	muls r0, r1, r0
	ldr r2, [sp, #0x18]
	adds r7, r2, r0
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	ldr r5, [sp, #0x14]
	subs r1, r1, r5
	ldr r6, [sp, #0x28]
	lsrs r1, r6
	mov r0, sb
	ldrh r2, [r0, #4]
	ldr r0, _080BE8BC @ =0x000003FF
	ands r0, r2
	adds r5, r1, r0
	movs r1, #0xff
	ands r5, r1
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	ldr r2, [sp, #8]
	adds r2, #1
	str r2, [sp, #0x40]
	cmp r4, #0
	beq _080BE90E
	ldr r3, [sp, #0x30]
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x34]
_080BE86C:
	mov r4, sb
	ldrh r0, [r4, #2]
	ldr r1, _080BE8C0 @ =0x000001FF
	ands r1, r0
	add r1, r8
	asrs r1, r1, #3
	adds r2, r7, r1
	ldr r0, [sp, #0x20]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r6, ip
	subs r6, #1
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _080BE8E6
	movs r4, #1
_080BE88E:
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	bne _080BE8C4
	str r5, [sp, #0x24]
	b _080BE8D2
	.align 2, 0
_080BE89C: .4byte gUnknown_03003C04
_080BE8A0: .4byte gUnknown_030035C0
_080BE8A4: .4byte gUnknown_03003C20
_080BE8A8: .4byte 0x00003FFF
_080BE8AC: .4byte 0x040000D4
_080BE8B0: .4byte 0x80000003
_080BE8B4: .4byte gUnknown_082B52EC
_080BE8B8: .4byte gUnknown_082B52ED
_080BE8BC: .4byte 0x000003FF
_080BE8C0: .4byte 0x000001FF
_080BE8C4:
	lsls r0, r5, #8
	ldr r1, [sp, #0x24]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
	strh r0, [r2]
_080BE8D2:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #1
	adds r1, r3, #0
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r1, #0
	bne _080BE88E
_080BE8E6:
	adds r0, r2, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BE8FE
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldr r3, [sp, #0x24]
	orrs r0, r3
	strh r0, [r2]
_080BE8FE:
	ldr r4, [sp, #0x34]
	adds r7, r7, r4
	mov r1, ip
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r1, #0
	bne _080BE86C
_080BE90E:
	ldr r5, [sp, #0x40]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	mov r6, sl
	ldrh r6, [r6, #2]
	cmp r0, r6
	bhs _080BE920
	b _080BE7BC
_080BE920:
	b _080BEB9A
_080BE922:
	movs r0, #0x20
	str r0, [sp, #0x10]
	lsls r0, r4, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsrs r1, r0, #0xe
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080BE93C
	movs r1, #0x40
	str r1, [sp, #0x10]
_080BE93C:
	ldr r0, [r7]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	mov r2, sl
	ldrh r0, [r2]
	ldr r1, _080BE9FC @ =0x00003FFF
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, [sp, #0x1c]
	adds r3, r3, r0
	str r3, [sp, #0x1c]
	movs r4, #0
	str r4, [sp, #8]
	adds r6, #1
	str r6, [sp, #0x3c]
	ldrh r5, [r2, #2]
	cmp r4, r5
	blo _080BE96C
	b _080BEB9A
_080BE96C:
	mov sb, sp
_080BE96E:
	ldr r1, _080BEA00 @ =0x040000D4
	ldr r6, [sp, #0x1c]
	str r6, [r1]
	mov r7, sp
	str r7, [r1, #4]
	ldr r0, _080BEA04 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r6, #6
	str r6, [sp, #0x1c]
	mov r0, sb
	ldrh r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r2
	lsrs r1, r1, #0xc
	ldrh r3, [r0, #2]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r3
	lsrs r0, r0, #0xe
	orrs r1, r0
	lsls r1, r1, #1
	ldr r4, _080BEA08 @ =gUnknown_082B52EC
	adds r0, r1, r4
	ldrb r0, [r0]
	lsrs r0, r0, #3
	str r0, [sp, #0x20]
	ldr r5, _080BEA0C @ =gUnknown_082B52ED
	adds r1, r1, r5
	ldrb r0, [r1]
	lsrs r0, r0, #3
	mov ip, r0
	ldr r4, _080BEA10 @ =0x000001FF
	ands r4, r3
	movs r6, #0xff
	ands r6, r2
	ldr r7, [sp, #0xc]
	ldrb r0, [r7, #0x1f]
	lsls r0, r0, #0xc
	mov r1, sb
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	mov r2, sb
	strh r0, [r2, #4]
	ldr r1, [r7, #8]
	lsrs r1, r1, #0xb
	movs r5, #1
	ands r1, r5
	mov r7, sl
	ldrh r0, [r7]
	lsrs r0, r0, #0xf
	cmp r1, r0
	beq _080BEA32
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	eors r0, r3
	strh r0, [r2, #2]
	ldrh r1, [r7]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080BEA14
	ldr r2, [sp, #0xc]
	movs r3, #0x12
	ldrsh r0, [r2, r3]
	movs r5, #0xa
	ldrsh r1, [r7, r5]
	b _080BEA24
	.align 2, 0
_080BE9FC: .4byte 0x00003FFF
_080BEA00: .4byte 0x040000D4
_080BEA04: .4byte 0x80000003
_080BEA08: .4byte gUnknown_082B52EC
_080BEA0C: .4byte gUnknown_082B52ED
_080BEA10: .4byte 0x000001FF
_080BEA14:
	ldr r7, [sp, #0xc]
	movs r1, #0x12
	ldrsh r0, [r7, r1]
	mov r2, sl
	ldrh r1, [r2, #6]
	movs r3, #0xa
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
_080BEA24:
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #8
	lsls r0, r6, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x10
	b _080BEA40
_080BEA32:
	ldr r5, [sp, #0xc]
	movs r7, #0x12
	ldrsh r1, [r5, r7]
	mov r2, sl
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	subs r5, r1, r0
_080BEA40:
	ldr r7, [sp, #0xc]
	ldr r1, [r7, #8]
	lsrs r1, r1, #0xa
	mov r2, sl
	ldrh r0, [r2]
	lsrs r0, r0, #0xe
	eors r0, r1
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080BEA9C
	mov r7, sb
	ldrh r0, [r7, #2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r7, #2]
	mov r3, sl
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080BEA7E
	ldr r7, [sp, #0xc]
	movs r1, #0x10
	ldrsh r0, [r7, r1]
	movs r2, #8
	ldrsh r1, [r3, r2]
	b _080BEA8E
_080BEA7E:
	ldr r3, [sp, #0xc]
	movs r7, #0x10
	ldrsh r0, [r3, r7]
	mov r2, sl
	ldrh r1, [r2, #4]
	movs r3, #8
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
_080BEA8E:
	adds r0, r0, r1
	subs r0, #8
	mov r8, r0
	lsls r0, r4, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x10
	b _080BEAAC
_080BEA9C:
	ldr r7, [sp, #0xc]
	movs r0, #0x10
	ldrsh r1, [r7, r0]
	mov r2, sl
	movs r3, #8
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	mov r8, r1
_080BEAAC:
	movs r0, #0x10
	rsbs r0, r0, #0
	mov r7, r8
	ands r7, r0
	mov r8, r7
	adds r0, #8
	ands r5, r0
	mov r0, sb
	ldrh r1, [r0, #2]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	movs r2, #2
	str r2, [sp, #0x2c]
	cmp r0, #0
	beq _080BEAD0
	movs r3, #0xfe
	str r3, [sp, #0x2c]
_080BEAD0:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080BEAE2
	ldr r7, [sp, #0x10]
	lsls r0, r7, #0x19
	rsbs r0, r0, #0
	b _080BEAE6
_080BEAE2:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x19
_080BEAE6:
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r5, r0
	asrs r0, r0, #2
	ldr r2, [sp, #0x10]
	muls r0, r2, r0
	ldr r3, [sp, #0x18]
	adds r7, r3, r0
	ldr r5, [sp, #0xc]
	ldr r1, [r5]
	ldr r6, [sp, #0x14]
	subs r1, r1, r6
	ldr r0, [sp, #0x28]
	lsrs r1, r0
	mov r3, sb
	ldrh r2, [r3, #4]
	ldr r0, _080BEBC4 @ =0x0000F3FF
	ands r0, r2
	adds r1, r1, r0
	ldrh r2, [r3, #2]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r2
	lsrs r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, ip
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	ldr r6, [sp, #8]
	adds r6, #1
	str r6, [sp, #0x40]
	cmp r1, #0
	beq _080BEB88
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	asrs r0, r0, #2
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x30]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
_080BEB46:
	ldr r3, [sp, #0x38]
	adds r2, r7, r3
	ldr r0, [sp, #0x20]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r6, ip
	subs r6, #1
	ldr r4, [sp, #0x20]
	cmp r4, #0
	beq _080BEB7A
	ldr r1, [sp, #0x2c]
	lsls r0, r1, #0x18
	asrs r4, r0, #0x18
_080BEB62:
	adds r1, r5, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	strh r1, [r2]
	adds r2, r2, r4
	adds r1, r3, #0
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r1, #0
	bne _080BEB62
_080BEB7A:
	add r7, r8
	mov r1, ip
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r1, #0
	bne _080BEB46
_080BEB88:
	ldr r2, [sp, #0x40]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	mov r3, sl
	ldrh r3, [r3, #2]
	cmp r0, r3
	bhs _080BEB9A
	b _080BE96E
_080BEB9A:
	ldr r4, [sp, #0x3c]
	lsls r0, r4, #0x18
	lsrs r6, r0, #0x18
	ldr r5, _080BEBC8 @ =gUnknown_03006840
	ldrb r5, [r5]
	cmp r6, r5
	bhs _080BEBAA
	b _080BE6C6
_080BEBAA:
	movs r0, #0
	ldr r6, _080BEBC8 @ =gUnknown_03006840
	strb r0, [r6]
_080BEBB0:
	movs r0, #1
_080BEBB2:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BEBC4: .4byte 0x0000F3FF
_080BEBC8: .4byte gUnknown_03006840

	thumb_func_start sub_80BEBCC
sub_80BEBCC: @ 0x080BEBCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	mov sb, r1
	adds r5, r2, #0
	ldr r0, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r8, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r7, #0x80
	lsls r7, r7, #9
	mov r3, sb
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov sb, r3
	adds r0, r7, #0
	mov r1, sb
	bl Div
	ldr r1, _080BECF4 @ =gUnknown_082B48B4
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	add r1, sl
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	str r1, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r3, [sp, #0x38]
	strh r0, [r3]
	adds r0, r7, #0
	mov r1, sb
	bl Div
	lsls r4, r4, #1
	add r4, sl
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r1, [sp, #0x38]
	strh r0, [r1, #2]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	bl Div
	movs r2, #0
	ldrsh r1, [r4, r2]
	rsbs r1, r1, #0
	asrs r1, r1, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r3, [sp, #0x38]
	strh r0, [r3, #4]
	adds r0, r7, #0
	adds r1, r5, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #8]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r2, [sp, #0x38]
	strh r0, [r2, #6]
	lsls r6, r6, #0x10
	rsbs r6, r6, #0
	mov r3, r8
	lsls r3, r3, #0x10
	rsbs r3, r3, #0
	mov r8, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	asrs r6, r6, #0x10
	adds r1, r0, #0
	muls r1, r6, r1
	movs r3, #2
	ldrsh r0, [r2, r3]
	mov r2, r8
	asrs r2, r2, #0x10
	mov r8, r2
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	ldr r0, [sp]
	lsls r3, r0, #0x10
	asrs r3, r3, #8
	adds r1, r1, r3
	ldr r2, [sp, #0x38]
	str r1, [r2, #8]
	movs r3, #4
	ldrsh r0, [r2, r3]
	adds r1, r0, #0
	muls r1, r6, r1
	movs r3, #6
	ldrsh r0, [r2, r3]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r0, [sp, #0x38]
	str r1, [r0, #0xc]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BECF4: .4byte gUnknown_082B48B4

	thumb_func_start sub_80BECF8
sub_80BECF8: @ 0x080BECF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	ldr r2, [r5, #4]
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080BED2C
	ldr r0, _080BED28 @ =gUnknown_03003C04
	ldr r0, [r0]
	ldrh r1, [r5, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	b _080BED3E
	.align 2, 0
_080BED28: .4byte gUnknown_03003C04
_080BED2C:
	ldr r0, _080BEE30 @ =gUnknown_03003C04
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r1, r0, r1
_080BED3E:
	ldrh r0, [r1, #8]
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #0xa]
	strh r0, [r5, #0x12]
	movs r4, #0x80
	lsls r4, r4, #9
	movs r0, #2
	ldrsh r1, [r7, r0]
	adds r0, r4, #0
	bl Div
	ldr r1, _080BEE34 @ =gUnknown_082B48B4
	mov r8, r1
	ldrh r1, [r7]
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	add r1, sb
	lsls r1, r1, #1
	add r1, r8
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
	movs r3, #2
	ldrsh r1, [r7, r3]
	adds r0, r4, #0
	bl Div
	ldrh r1, [r7]
	lsls r1, r1, #1
	add r1, r8
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #2]
	movs r0, #4
	ldrsh r1, [r7, r0]
	adds r0, r4, #0
	bl Div
	ldrh r1, [r7]
	lsls r1, r1, #1
	add r1, r8
	movs r2, #0
	ldrsh r1, [r1, r2]
	rsbs r1, r1, #0
	asrs r1, r1, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #4]
	movs r3, #4
	ldrsh r1, [r7, r3]
	adds r0, r4, #0
	bl Div
	ldrh r1, [r7]
	add r1, sb
	lsls r1, r1, #1
	add r1, r8
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #6]
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #6
	ldrsh r0, [r7, r2]
	rsbs r0, r0, #0
	muls r1, r0, r1
	movs r3, #2
	ldrsh r2, [r6, r3]
	movs r3, #8
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	muls r0, r2, r0
	adds r1, r1, r0
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r6, #8]
	movs r3, #4
	ldrsh r1, [r6, r3]
	movs r2, #6
	ldrsh r0, [r7, r2]
	rsbs r0, r0, #0
	muls r1, r0, r1
	movs r3, #6
	ldrsh r2, [r6, r3]
	movs r3, #8
	ldrsh r0, [r7, r3]
	rsbs r0, r0, #0
	muls r0, r2, r0
	adds r1, r1, r0
	movs r2, #0x12
	ldrsh r0, [r5, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r6, #0xc]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BEE30: .4byte gUnknown_03003C04
_080BEE34: .4byte gUnknown_082B48B4

	thumb_func_start sub_80BEE38
sub_80BEE38: @ 0x080BEE38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0
	mov r8, r0
	mov r1, sp
	str r1, [sp, #0x10]
_080BEE4C:
	mov r2, r8
	lsls r0, r2, #2
	ldr r1, _080BEF04 @ =gUnknown_03003590
	adds r1, #1
	adds r4, r0, r1
	ldr r6, _080BEF08 @ =gUnknown_03003593
	adds r6, r0, r6
	str r6, [sp, #0xc]
	ldrb r1, [r4]
	ldrb r2, [r6]
	mov ip, r2
	mov sl, r0
	cmp r1, ip
	bne _080BEE7E
	ldr r0, _080BEF04 @ =gUnknown_03003590
	add r0, sl
	ldr r1, _080BEF0C @ =gUnknown_03003592
	add r1, sl
	ldrb r0, [r0]
	mov r7, r8
	adds r7, #1
	ldrb r1, [r1]
	cmp r0, r1
	bne _080BEE7E
	b _080BF06A
_080BEE7E:
	ldr r2, _080BEF10 @ =gUnknown_030035C0
	mov r6, r8
	lsls r3, r6, #1
	adds r0, r3, r2
	ldrh r6, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r6
	lsls r0, r0, #3
	adds r5, r0, r1
	ldrb r4, [r4]
	ldr r0, _080BEF04 @ =gUnknown_03003590
	add r0, sl
	ldrb r0, [r0]
	str r0, [sp, #8]
	adds r7, r2, #0
	adds r2, r3, #0
	mov r0, r8
	cmp r0, #1
	bls _080BEF90
	ldr r0, _080BEF14 @ =gUnknown_03003C20
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080BEF90
	ldr r1, [sp, #8]
	adds r5, r5, r1
	lsrs r2, r6, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r2
	lsrs r3, r0, #0x10
	mov r2, ip
	cmp r2, #0xff
	bne _080BEF20
	ldr r0, _080BEF18 @ =gUnknown_03006230
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	ldr r2, _080BEF1C @ =0x040000D4
	str r1, [r2]
	str r0, [r2, #4]
	ldr r6, [sp, #0xc]
	ldrb r0, [r6]
	subs r0, r0, r4
	muls r0, r3, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add r2, sp, #4
	mov sb, r2
	b _080BEFE8
	.align 2, 0
_080BEF04: .4byte gUnknown_03003590
_080BEF08: .4byte gUnknown_03003593
_080BEF0C: .4byte gUnknown_03003592
_080BEF10: .4byte gUnknown_030035C0
_080BEF14: .4byte gUnknown_03003C20
_080BEF18: .4byte gUnknown_03006230
_080BEF1C: .4byte 0x040000D4
_080BEF20:
	add r6, sp, #4
	mov sb, r6
	mov r7, r8
	adds r7, #1
	cmp r4, ip
	bls _080BEF2E
	b _080BF054
_080BEF2E:
	ldr r0, _080BEF84 @ =gUnknown_03006230
	add r0, r8
	mov ip, r0
	ldr r2, _080BEF88 @ =0x040000D4
	ldr r1, _080BEF8C @ =gUnknown_03003592
	add r1, sl
	mov r8, r1
	ldr r6, [sp, #0xc]
	str r6, [sp, #0x14]
_080BEF40:
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	str r1, [r2]
	str r0, [r2, #4]
	mov r6, r8
	ldrb r0, [r6]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	adds r0, #1
	asrs r1, r0, #1
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r6, #0x81
	lsls r6, r6, #0x18
	orrs r1, r6
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r4, r0
	bls _080BEF40
	b _080BF054
	.align 2, 0
_080BEF84: .4byte gUnknown_03006230
_080BEF88: .4byte 0x040000D4
_080BEF8C: .4byte gUnknown_03003592
_080BEF90:
	ldr r1, [sp, #8]
	lsls r0, r1, #1
	adds r5, r5, r0
	movs r3, #0x20
	adds r0, r2, r7
	ldrh r0, [r0]
	lsrs r2, r0, #0xe
	subs r0, r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080BEFAA
	movs r3, #0x40
_080BEFAA:
	ldr r1, _080BEFF0 @ =gUnknown_03003592
	add r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _080BF000
	ldr r0, _080BEFF4 @ =gUnknown_03006230
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r3, #1
	muls r0, r4, r0
	adds r0, r5, r0
	ldr r2, [sp, #0x10]
	strh r1, [r2]
	mov r6, sp
	ldr r1, _080BEFF8 @ =0x040000D4
	str r6, [r1]
	str r0, [r1, #4]
	ldr r0, _080BEFFC @ =gUnknown_03003593
	add r0, sl
	ldrb r0, [r0]
	subs r0, r0, r4
	muls r0, r3, r0
	lsls r0, r0, #1
	asrs r0, r0, #1
	movs r2, #0x81
	lsls r2, r2, #0x18
	orrs r0, r2
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r6, sp, #4
	mov sb, r6
_080BEFE8:
	mov r7, r8
	adds r7, #1
	b _080BF054
	.align 2, 0
_080BEFF0: .4byte gUnknown_03003592
_080BEFF4: .4byte gUnknown_03006230
_080BEFF8: .4byte 0x040000D4
_080BEFFC: .4byte gUnknown_03003593
_080BF000:
	ldr r0, _080BF088 @ =gUnknown_03003593
	add r0, sl
	add r2, sp, #4
	mov sb, r2
	mov r7, r8
	adds r7, #1
	ldrb r6, [r0]
	cmp r4, r6
	bhi _080BF054
	ldr r2, _080BF08C @ =gUnknown_03006230
	add r8, r2
	ldr r2, _080BF090 @ =0x040000D4
	mov ip, r1
	str r0, [sp, #0x14]
	lsls r3, r3, #1
_080BF01E:
	mov r6, r8
	ldrb r1, [r6]
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	str r1, [r2]
	str r0, [r2, #4]
	mov r6, ip
	ldrb r0, [r6]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	adds r0, #1
	movs r6, #0x81
	lsls r6, r6, #0x18
	orrs r0, r6
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r4, r0
	bls _080BF01E
_080BF054:
	movs r0, #0
	str r0, [sp, #4]
	mov r1, sb
	ldr r2, _080BF090 @ =0x040000D4
	str r1, [r2]
	ldr r0, _080BF094 @ =gUnknown_03003590
	add r0, sl
	str r0, [r2, #4]
	ldr r0, _080BF098 @ =0x85000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_080BF06A:
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _080BF076
	b _080BEE4C
_080BF076:
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BF088: .4byte gUnknown_03003593
_080BF08C: .4byte gUnknown_03006230
_080BF090: .4byte 0x040000D4
_080BF094: .4byte gUnknown_03003590
_080BF098: .4byte 0x85000001

	thumb_func_start sub_80BF09C
sub_80BF09C: @ 0x080BF09C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	ldr r0, [sp, #0x24]
	ldr r7, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	movs r5, #0
	ldr r1, _080BF138 @ =gUnknown_030035C0
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r4, [r0]
	movs r0, #0xc
	ands r0, r4
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	lsrs r3, r3, #0xa
	adds r0, r0, r3
	lsrs r2, r2, #0xf
	adds r6, r0, r2
	ldrb r0, [r7]
	cmp r0, #0
	beq _080BF126
_080BF0EE:
	lsls r4, r5, #5
	ldr r0, [sp]
	adds r4, r0, r4
	adds r0, r7, r5
	ldrb r0, [r0]
	lsls r0, r0, #5
	add r0, sl
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	mov r2, r8
	subs r4, r4, r2
	lsls r4, r4, #0xb
	lsrs r4, r4, #0x10
	lsls r1, r5, #1
	adds r1, r6, r1
	mov r2, sb
	lsls r0, r2, #0xc
	orrs r4, r0
	strh r4, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r7, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _080BF0EE
_080BF126:
	lsls r0, r5, #5
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080BF138: .4byte gUnknown_030035C0

	thumb_func_start sub_80BF13C
sub_80BF13C: @ 0x080BF13C
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start sub_80BF148
sub_80BF148: @ 0x080BF148
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_80BF158
sub_80BF158: @ 0x080BF158
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl sub_80BA57C
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_80BF16C
sub_80BF16C: @ 0x080BF16C
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r2, [r0, #4]
	ldrh r3, [r1, #0x10]
	adds r2, r2, r3
	strh r2, [r1, #0x10]
	ldrh r0, [r0, #6]
	ldrh r2, [r1, #0x12]
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_80BF188
sub_80BF188: @ 0x080BF188
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_80BF194
sub_80BF194: @ 0x080BF194
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r2, [r0, #4]
	strh r2, [r1, #0xc]
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldrh r0, [r0, #6]
	strb r0, [r1, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	bx lr

	thumb_func_start sub_80BF1AC
sub_80BF1AC: @ 0x080BF1AC
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start sub_80BF1B4
sub_80BF1B4: @ 0x080BF1B4
	ldrh r0, [r1, #0xe]
	adds r0, #2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_80BF1C0
sub_80BF1C0: @ 0x080BF1C0
	ldrh r0, [r1, #0xe]
	adds r0, #2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_80BF1CC
sub_80BF1CC: @ 0x080BF1CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	ldr r0, [sp, #0x44]
	ldr r4, [sp, #0x48]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	ldrh r1, [r6, #0x26]
	cmp r0, r1
	bge _080BF2F6
_080BF206:
	ldr r2, [sp]
	ldr r0, [sp, #0x10]
	adds r4, r2, r0
	ldrh r1, [r6, #0x14]
	adds r0, r4, #0
	bl Div
	str r0, [sp, #0x14]
	ldrh r1, [r6, #0x14]
	adds r2, r0, #0
	adds r0, r2, #0
	muls r0, r1, r0
	subs r4, r4, r0
	str r4, [sp, #0x18]
	ldrh r0, [r6, #0x28]
	mov r8, r0
	ldrh r0, [r6, #0x26]
	ldr r2, [sp, #0x10]
	subs r0, r0, r2
	subs r1, r1, r4
	cmp r1, r0
	ble _080BF234
	adds r1, r0, #0
_080BF234:
	mov r0, sl
	muls r0, r1, r0
	str r0, [sp, #0x1c]
	movs r2, #0
	mov sb, r2
	ldr r0, [sp, #0x10]
	adds r1, r0, r1
	str r1, [sp, #0x20]
	cmp sb, r8
	bge _080BF2EC
_080BF248:
	ldr r4, [sp, #4]
	add r4, sb
	ldrh r1, [r6, #0x16]
	adds r0, r4, #0
	bl Div
	ldrh r3, [r6, #0x16]
	adds r1, r0, #0
	muls r1, r3, r1
	subs r4, r4, r1
	subs r5, r3, r4
	ldrh r1, [r6, #0x3c]
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, [sp, #0x14]
	lsls r2, r0, #1
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r6, #0x14]
	muls r0, r1, r0
	adds r2, r0, #0
	muls r2, r3, r2
	adds r0, r4, #0
	muls r0, r1, r0
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	adds r2, r2, r0
	mov r1, sl
	muls r1, r2, r1
	ldr r0, [r6, #0x10]
	adds r7, r0, r1
	ldrh r1, [r6, #0x24]
	ldr r0, [r6, #0xc]
	adds r0, r0, r1
	ldr r2, [sp, #8]
	mov r1, sb
	muls r1, r2, r1
	adds r0, r0, r1
	ldrh r1, [r6, #0x22]
	adds r0, r0, r1
	ldr r2, [sp, #0x10]
	mov r1, sl
	muls r1, r2, r1
	adds r3, r0, r1
	add sb, r5
	cmp r5, r8
	ble _080BF2AC
	mov r5, r8
_080BF2AC:
	mov r0, r8
	subs r0, r0, r5
	mov r8, r0
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	beq _080BF2E6
	ldr r2, _080BF308 @ =0x040000D4
	ldr r1, [sp, #0x1c]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	ldr r0, [sp, #0xc]
	mov r4, sl
	muls r4, r0, r4
_080BF2D0:
	str r7, [r2]
	str r3, [r2, #4]
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, [sp, #8]
	adds r3, r3, r0
	adds r7, r7, r4
	adds r0, r5, #0
	subs r5, #1
	cmp r0, #0
	bne _080BF2D0
_080BF2E6:
	ldrh r1, [r6, #0x28]
	cmp sb, r1
	blt _080BF248
_080BF2EC:
	ldr r2, [sp, #0x20]
	str r2, [sp, #0x10]
	ldrh r0, [r6, #0x26]
	cmp r2, r0
	blt _080BF206
_080BF2F6:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BF308: .4byte 0x040000D4

	thumb_func_start sub_80BF30C
sub_80BF30C: @ 0x080BF30C
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldr r1, _080BF33C @ =gUnknown_082B52B4
	mov r0, sp
	movs r2, #8
	bl sub_80CA3B0
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r0, r1, #0
	orrs r0, r2
	cmp r0, #0
	bne _080BF340
	movs r0, #1
	rsbs r0, r0, #0
	b _080BF3C2
	.align 2, 0
_080BF33C: .4byte gUnknown_082B52B4
_080BF340:
	cmp r1, #0
	bgt _080BF34C
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #4
_080BF34C:
	cmp r2, #0
	bgt _080BF35C
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080BF35C:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	blt _080BF37C
	lsls r0, r1, #0x17
	lsrs r5, r0, #0x10
	cmp r2, #0
	bne _080BF374
	adds r2, r5, #0
	b _080BF39A
_080BF374:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r1, r2, #0
	b _080BF392
_080BF37C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r2, #0x17
	lsrs r4, r0, #0x10
	cmp r1, #0
	bne _080BF38E
	adds r2, r4, #0
	b _080BF39A
_080BF38E:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
_080BF392:
	bl sub_80C8960
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080BF39A:
	mov r0, sp
	adds r3, r0, r6
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF3B4
	movs r1, #0x80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
_080BF3B4:
	ldrb r1, [r3]
	lsls r1, r1, #7
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
_080BF3C2:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80BF3CC
sub_80BF3CC: @ 0x080BF3CC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r2, #0
	movs r5, #0xf0
	lsls r5, r5, #8
_080BF3DA:
	adds r0, r3, #0
	ands r0, r5
	lsrs r0, r0, #0xc
	cmp r0, #9
	bls _080BF3EA
	adds r1, r4, r2
	adds r0, #0x57
	b _080BF3EE
_080BF3EA:
	adds r1, r4, r2
	adds r0, #0x30
_080BF3EE:
	strb r0, [r1]
	lsls r0, r3, #0x14
	lsrs r3, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080BF3DA
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80BF40C
sub_80BF40C: @ 0x080BF40C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	movs r5, #0
_080BF416:
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r1, r4, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r5, #2
	lsls r1, r0
	orrs r6, r1
	lsls r0, r6, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080BF416
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start UpdateSpriteAnimation
UpdateSpriteAnimation: @ 0x080BF44C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, r2
	bne _080BF460
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	beq _080BF474
_080BF460:
	movs r1, #0
	strb r2, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _080BF484 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
_080BF474:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080BF488
	movs r0, #0
	b _080BF530
	.align 2, 0
_080BF484: .4byte 0xFFFFBFFF
_080BF488:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _080BF4A0
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	b _080BF52E
_080BF49C:
	adds r0, r1, #0
	b _080BF530
_080BF4A0:
	ldr r0, _080BF538 @ =gUnknown_03003C04
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, #0
	bge _080BF50A
	ldr r6, _080BF53C @ =gUnknown_082B52BC
_080BF4C4:
	mvns r0, r0
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	cmp r1, #1
	beq _080BF4FE
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080BF49C
	ldr r0, _080BF538 @ =gUnknown_03003C04
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r4, #0xe]
	adds r5, r1, #0
_080BF4FE:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r0, [r3]
	cmp r0, #0
	blt _080BF4C4
_080BF50A:
	ldr r0, [r3]
	lsls r0, r0, #8
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	ldrb r1, [r4, #0x1c]
	lsls r1, r1, #4
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #0xe]
	adds r0, #2
	strh r0, [r4, #0xe]
_080BF52E:
	movs r0, #1
_080BF530:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BF538: .4byte gUnknown_03003C04
_080BF53C: .4byte gUnknown_082B52BC

	thumb_func_start sub_80BF540
sub_80BF540: @ 0x080BF540
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r3, #0
	mov sb, r3
	ldrb r0, [r5, #0x1a]
	strb r0, [r5, #0x1b]
	ldrh r0, [r5, #0xc]
	strh r0, [r5, #0x18]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	ldr r0, [r5, #8]
	ldr r1, _080BF5C4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _080BF5C8 @ =gUnknown_03003C04
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	cmp r6, #0
	blt _080BF644
_080BF582:
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4]
	cmp r1, #0
	bge _080BF5F8
	ldr r0, _080BF5CC @ =gUnknown_082B52BC
	mov r8, r0
_080BF592:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080BF59C
	mov sb, r3
_080BF59C:
	mvns r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	str r3, [sp]
	bl _call_via_r2
	adds r1, r0, #0
	ldr r3, [sp]
	cmp r1, #1
	beq _080BF5EC
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080BF5D0
	adds r0, r1, #0
	b _080BF646
	.align 2, 0
_080BF5C4: .4byte 0xFFFFBFFF
_080BF5C8: .4byte gUnknown_03003C04
_080BF5CC: .4byte gUnknown_082B52BC
_080BF5D0:
	ldr r0, _080BF624 @ =gUnknown_03003C04
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r5, #0xe]
	adds r7, r1, #0
_080BF5EC:
	ldrh r0, [r5, #0xe]
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4]
	cmp r1, #0
	blt _080BF592
_080BF5F8:
	ldr r0, [r4]
	lsls r0, r0, #8
	strh r0, [r5, #0x16]
	ldr r0, [r4]
	subs r6, r6, r0
	lsls r0, r6, #8
	rsbs r0, r0, #0
	strh r0, [r5, #0x16]
	mov r0, sb
	cmp r0, #0
	beq _080BF628
	cmp r6, #0
	ble _080BF628
	adds r0, r6, #0
	mov r1, sb
	str r3, [sp]
	bl DivMod
	adds r6, r0, #0
	ldr r3, [sp]
	b _080BF62C
	.align 2, 0
_080BF624: .4byte gUnknown_03003C04
_080BF628:
	ldr r0, [r4]
	adds r3, r3, r0
_080BF62C:
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r5, #8]
	ldrh r0, [r5, #0xe]
	adds r0, #2
	strh r0, [r5, #0xe]
	cmp r6, #0
	bge _080BF582
_080BF644:
	movs r0, #1
_080BF646:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80BF654
sub_80BF654: @ 0x080BF654
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldrh r0, [r4, #0xe]
	adds r0, #3
	strh r0, [r4, #0xe]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _080BF6CE
	ldr r1, [r2, #4]
	cmp r1, #0
	bge _080BF688
	ldr r0, _080BF684 @ =gUnknown_03003C04
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r5, r0, r1
	ldr r0, [r2, #8]
	lsls r0, r0, #0x16
	b _080BF696
	.align 2, 0
_080BF684: .4byte gUnknown_03003C04
_080BF688:
	ldr r0, _080BF6D8 @ =gUnknown_03003C04
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r5, r0, r1
	ldr r0, [r2, #8]
	lsls r0, r0, #0x15
_080BF696:
	lsrs r6, r0, #0x10
	ldr r3, _080BF6DC @ =gUnknown_030035D0
	ldr r2, _080BF6E0 @ =gUnknown_03003F34
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	str r5, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	ldr r1, [r4]
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r6, [r0, #8]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
_080BF6CE:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BF6D8: .4byte gUnknown_03003C04
_080BF6DC: .4byte gUnknown_030035D0
_080BF6E0: .4byte gUnknown_03003F34

	thumb_func_start sub_80BF6E4
sub_80BF6E4: @ 0x080BF6E4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0xe]
	adds r0, #3
	strh r0, [r3, #0xe]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _080BF764
	ldr r1, [r5, #4]
	ldr r6, _080BF72C @ =gFlags
	ldr r4, [r6]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	beq _080BF734
	ldr r0, _080BF730 @ =gUnknown_03003C04
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	ldrb r1, [r3, #0x1f]
	lsls r1, r1, #4
	ldrb r2, [r5, #0xa]
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r2, [r5, #8]
	bl sub_80C4564
	b _080BF764
	.align 2, 0
_080BF72C: .4byte gFlags
_080BF730: .4byte gUnknown_03003C04
_080BF734:
	ldr r2, _080BF76C @ =0x040000D4
	ldr r0, _080BF770 @ =gUnknown_03003C04
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3, #0x1f]
	lsls r0, r0, #4
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _080BF774 @ =gUnknown_03003370
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r4, r0
	str r4, [r6]
_080BF764:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BF76C: .4byte 0x040000D4
_080BF770: .4byte gUnknown_03003C04
_080BF774: .4byte gUnknown_03003370

	thumb_func_start sub_80BF778
sub_80BF778: @ 0x080BF778
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r5, [r3, #4]
	movs r0, #0xf
	ands r5, r0
	ldrh r0, [r4, #0xe]
	adds r0, #3
	strh r0, [r4, #0xe]
	ldr r1, _080BF7C0 @ =0x040000D4
	adds r0, r3, #4
	str r0, [r1]
	lsls r2, r5, #3
	adds r0, r2, #0
	adds r0, #0x20
	adds r0, r4, r0
	str r0, [r1, #4]
	ldr r0, _080BF7C4 @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r3, #8]
	ldrb r1, [r3, #0xa]
	cmp r0, r1
	bne _080BF7C8
	ldrb r0, [r3, #9]
	ldrb r3, [r3, #0xb]
	cmp r0, r3
	bne _080BF7C8
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _080BF82C
	.align 2, 0
_080BF7C0: .4byte 0x040000D4
_080BF7C4: .4byte 0x84000002
_080BF7C8:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080BF7FA
	lsls r2, r5, #3
	adds r2, r4, r2
	adds r3, r2, #0
	adds r3, #0x25
	adds r2, #0x27
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	rsbs r0, r0, #0
	strb r0, [r3]
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r2]
_080BF7FA:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080BF82C
	lsls r2, r5, #3
	adds r2, r4, r2
	adds r3, r2, #0
	adds r3, #0x24
	adds r2, #0x26
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	rsbs r0, r0, #0
	strb r0, [r3]
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r2]
_080BF82C:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80BF834
sub_80BF834: @ 0x080BF834
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0xb
	ldr r0, _080BF8EC @ =gUnknown_03006246
	adds r6, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl Div
	ldr r7, _080BF8F0 @ =gUnknown_082B48B4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	mov sb, r1
	mov r1, sb
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	mov sb, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	asrs r0, r0, #8
	strh r0, [r6]
	mov r0, sl
	mov r1, r8
	bl Div
	lsls r4, r4, #1
	adds r4, r4, r7
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #8]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sl
	adds r1, r5, #0
	bl Div
	movs r2, #0
	ldrsh r1, [r4, r2]
	rsbs r1, r1, #0
	asrs r1, r1, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #0x10]
	mov r0, sl
	adds r1, r5, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BF8EC: .4byte gUnknown_03006246
_080BF8F0: .4byte gUnknown_082B48B4

	thumb_func_start sub_80BF8F4
sub_80BF8F4: @ 0x080BF8F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #0x24]
	adds r7, r1, #0
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _080BF910
	b _080BFB7E
_080BF910:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080BF934
	ldr r0, _080BF930 @ =gUnknown_03003C04
	ldr r0, [r0]
	ldr r3, [sp, #0x24]
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r6, r1, r0
	b _080BF948
	.align 2, 0
_080BF930: .4byte gUnknown_03003C04
_080BF934:
	ldr r0, _080BFAE8 @ =gUnknown_03003C04
	ldr r1, [r0]
	ldr r5, [sp, #0x24]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r6, r0, r1
_080BF948:
	add r2, sp, #0x20
	ldr r1, [sp, #0x24]
	ldr r0, [r1, #8]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldrh r4, [r2]
	lsls r4, r4, #5
	ldr r0, _080BFAEC @ =gUnknown_03006246
	adds r4, r4, r0
	subs r2, #0x18
	str r2, [sp, #0x28]
	ldr r2, _080BFAF0 @ =gUnknown_082B48B4
	ldrh r0, [r7]
	ldr r1, _080BFAF4 @ =0x000003FF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r5, [sp, #0x28]
	strh r0, [r5]
	movs r0, #0xa
	add r0, sp
	mov sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r1, sl
	strh r0, [r1]
	add r2, sp, #0xc
	mov r8, r2
	ldrh r0, [r7, #2]
	strh r0, [r2]
	movs r3, #0xe
	add r3, sp
	mov sb, r3
	ldrh r0, [r7, #4]
	strh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	mov r3, r8
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, sl
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r3, sb
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	ldrh r0, [r7, #2]
	movs r2, #2
	ldrsh r1, [r7, r2]
	str r1, [sp, #0x2c]
	cmp r1, #0
	bge _080BFA38
	rsbs r0, r0, #0
	mov r3, r8
	strh r0, [r3]
_080BFA38:
	movs r5, #4
	ldrsh r0, [r7, r5]
	ldrh r1, [r7, #4]
	mov ip, r1
	cmp r0, #0
	bge _080BFA4C
	mov r2, ip
	rsbs r0, r2, #0
	mov r3, sb
	strh r0, [r3]
_080BFA4C:
	mov r2, sp
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	mov r4, sp
	adds r4, #2
	mov r5, sl
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	add r3, sp, #4
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	mov r2, sp
	adds r2, #6
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r5, sb
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	add r0, sp, #0x18
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	add r0, sp, #0x1c
	strh r1, [r0]
	adds r0, #2
	movs r5, #0x80
	lsls r5, r5, #1
	strh r5, [r0]
	movs r1, #6
	ldrsh r0, [r7, r1]
	str r0, [sp, #0x10]
	movs r5, #8
	ldrsh r0, [r7, r5]
	str r0, [sp, #0x14]
	adds r7, r4, #0
	mov r8, r3
	mov sb, r2
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	ble _080BFAF8
	ldrh r4, [r6, #8]
	ldrh r2, [r6, #4]
	b _080BFB04
	.align 2, 0
_080BFAE8: .4byte gUnknown_03003C04
_080BFAEC: .4byte gUnknown_03006246
_080BFAF0: .4byte gUnknown_082B48B4
_080BFAF4: .4byte 0x000003FF
_080BFAF8:
	ldrh r1, [r6, #4]
	ldrh r0, [r6, #8]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_080BFB04:
	mov r1, ip
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _080BFB12
	ldrh r3, [r6, #0xa]
	ldrh r5, [r6, #6]
	b _080BFB1E
_080BFB12:
	ldrh r1, [r6, #6]
	ldrh r0, [r6, #0xa]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
_080BFB1E:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsrs r2, r2, #1
	subs r4, r4, r2
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsrs r5, r5, #1
	subs r3, r3, r5
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r2, r2, #8
	adds r1, r1, r2
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	mov r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r5, r5, #8
	adds r1, r1, r5
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x24]
	strh r0, [r3, #0x10]
	ldr r0, [sp, #0x14]
	strh r0, [r3, #0x12]
_080BFB7E:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80BFB90
sub_80BFB90: @ 0x080BFB90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	str r0, [sp, #0x24]
	adds r7, r1, #0
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _080BFBAC
	b _080BFF18
_080BFBAC:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080BFBD4
	ldr r0, _080BFBD0 @ =gUnknown_03003C04
	ldr r0, [r0]
	ldr r3, [sp, #0x24]
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sb, r1
	b _080BFBEA
	.align 2, 0
_080BFBD0: .4byte gUnknown_03003C04
_080BFBD4:
	ldr r0, _080BFE68 @ =gUnknown_03003C04
	ldr r1, [r0]
	ldr r4, [sp, #0x24]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sb, r0
_080BFBEA:
	add r2, sp, #0x20
	ldr r5, [sp, #0x24]
	ldr r0, [r5, #8]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldrh r4, [r2]
	lsls r4, r4, #5
	ldr r0, _080BFE6C @ =gUnknown_03006246
	adds r4, r4, r0
	mov r6, sp
	adds r6, #8
	str r6, [sp, #0x28]
	ldrh r0, [r7]
	ldr r2, _080BFE70 @ =gUnknown_03002C54
	ldrh r1, [r2]
	adds r0, r0, r1
	ldr r2, _080BFE74 @ =0x000003FF
	ands r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r5, _080BFE78 @ =gUnknown_082B48B4
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r6]
	movs r6, #0xa
	add r6, sp
	mov r8, r6
	ldrh r0, [r7]
	ldr r3, _080BFE70 @ =gUnknown_03002C54
	ldrh r1, [r3]
	adds r0, r0, r1
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r6]
	add r6, sp, #0xc
	movs r5, #2
	ldrsh r1, [r7, r5]
	ldr r2, _080BFE7C @ =gUnknown_03002AF0
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
	movs r3, #0xe
	add r3, sp
	mov sl, r3
	movs r5, #4
	ldrsh r1, [r7, r5]
	ldr r2, _080BFE80 @ =gUnknown_03006844
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r3, [sp, #0x28]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	movs r1, #2
	ldrsh r0, [r7, r1]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bge _080BFD00
	movs r2, #2
	ldrsh r0, [r7, r2]
	rsbs r0, r0, #0
	ldr r3, _080BFE7C @ =gUnknown_03002AF0
	ldrh r1, [r3]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
_080BFD00:
	movs r4, #4
	ldrsh r0, [r7, r4]
	ldr r5, _080BFE80 @ =gUnknown_03006844
	ldrh r3, [r5]
	ldrh r2, [r7, #4]
	mov r1, sp
	strh r2, [r1, #0x34]
	cmp r0, #0
	bge _080BFD24
	movs r4, #4
	ldrsh r0, [r7, r4]
	rsbs r0, r0, #0
	muls r0, r3, r0
	asrs r0, r0, #8
	mov r5, sl
	strh r0, [r5]
	ldr r0, _080BFE80 @ =gUnknown_03006844
	ldrh r3, [r0]
_080BFD24:
	mov r2, sp
	ldr r4, [sp, #0x28]
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	mov r5, sp
	adds r5, #2
	str r5, [sp, #0x30]
	mov r0, r8
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	add r1, sp, #4
	mov ip, r1
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r4, sl
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	mov r5, ip
	strh r0, [r5]
	mov r6, sp
	adds r6, #6
	str r6, [sp, #0x38]
	ldr r0, [sp, #0x28]
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6]
	add r5, sp, #0x18
	ldr r1, _080BFE70 @ =gUnknown_03002C54
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r4, _080BFE78 @ =gUnknown_082B48B4
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r6, _080BFE7C @ =gUnknown_03002AF0
	ldrh r1, [r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r2, sp
	adds r2, #0x1a
	ldr r1, _080BFE70 @ =gUnknown_03002C54
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	rsbs r0, r0, #0
	asrs r0, r0, #6
	ldrh r1, [r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	add r4, sp, #0x1c
	ldr r6, _080BFE70 @ =gUnknown_03002C54
	ldrh r0, [r6]
	lsls r0, r0, #1
	ldr r1, _080BFE78 @ =gUnknown_082B48B4
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	strh r0, [r4]
	mov r3, sp
	adds r3, #0x1e
	ldrh r0, [r6]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r6, _080BFE80 @ =gUnknown_03006844
	ldrh r1, [r6]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #6
	ldrsh r1, [r7, r5]
	muls r1, r0, r1
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r6, #8
	ldrsh r2, [r7, r6]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _080BFE84 @ =gUnknown_03002C5C
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x10]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #6
	ldrsh r1, [r7, r4]
	muls r1, r0, r1
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #8
	ldrsh r2, [r7, r5]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _080BFE88 @ =gUnknown_03003C0C
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x14]
	ldr r7, [sp, #0x30]
	mov r8, ip
	ldr r6, [sp, #0x38]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	ble _080BFE8C
	mov r1, sb
	ldrh r4, [r1, #8]
	ldrh r2, [r1, #4]
	b _080BFE9A
	.align 2, 0
_080BFE68: .4byte gUnknown_03003C04
_080BFE6C: .4byte gUnknown_03006246
_080BFE70: .4byte gUnknown_03002C54
_080BFE74: .4byte 0x000003FF
_080BFE78: .4byte gUnknown_082B48B4
_080BFE7C: .4byte gUnknown_03002AF0
_080BFE80: .4byte gUnknown_03006844
_080BFE84: .4byte gUnknown_03002C5C
_080BFE88: .4byte gUnknown_03003C0C
_080BFE8C:
	mov r2, sb
	ldrh r1, [r2, #4]
	ldrh r0, [r2, #8]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_080BFE9A:
	mov r3, sp
	ldrh r3, [r3, #0x34]
	lsls r0, r3, #0x10
	cmp r0, #0
	ble _080BFEAC
	mov r5, sb
	ldrh r3, [r5, #0xa]
	ldrh r5, [r5, #6]
	b _080BFEBA
_080BFEAC:
	mov r0, sb
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #0xa]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
_080BFEBA:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsrs r2, r2, #1
	subs r4, r4, r2
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsrs r5, r5, #1
	subs r3, r3, r5
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r2, r2, #8
	adds r1, r1, r2
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r5, r5, #8
	adds r1, r1, r5
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x24]
	strh r0, [r2, #0x10]
	ldr r0, [sp, #0x14]
	strh r0, [r2, #0x12]
_080BFF18:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80BFF28
sub_80BFF28: @ 0x080BFF28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r0, [sp, #0x24]
	adds r6, r1, #0
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _080BFF44
	b _080C032C
_080BFF44:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080BFF6C
	ldr r0, _080BFF68 @ =gUnknown_03003C04
	ldr r0, [r0]
	ldr r3, [sp, #0x24]
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sb, r1
	b _080BFF82
	.align 2, 0
_080BFF68: .4byte gUnknown_03003C04
_080BFF6C:
	ldr r0, _080C0278 @ =gUnknown_03003C04
	ldr r1, [r0]
	ldr r4, [sp, #0x24]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sb, r0
_080BFF82:
	add r2, sp, #0x20
	ldr r5, [sp, #0x24]
	ldr r0, [r5, #8]
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r2]
	ldrh r4, [r2]
	lsls r4, r4, #5
	ldr r0, _080C027C @ =gUnknown_03006246
	adds r4, r4, r0
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x28]
	ldrh r0, [r6]
	ldr r2, _080C0280 @ =gUnknown_03002C54
	ldrh r1, [r2]
	adds r0, r0, r1
	ldr r2, _080C0284 @ =0x000003FF
	ands r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r5, _080C0288 @ =gUnknown_082B48B4
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r7]
	movs r7, #0xa
	add r7, sp
	mov r8, r7
	ldrh r0, [r6]
	ldr r3, _080C0280 @ =gUnknown_03002C54
	ldrh r1, [r3]
	adds r0, r0, r1
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r7]
	add r7, sp, #0xc
	movs r5, #2
	ldrsh r1, [r6, r5]
	ldr r2, _080C028C @ =gUnknown_03002AF0
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r7]
	movs r3, #0xe
	add r3, sp
	mov sl, r3
	movs r5, #4
	ldrsh r1, [r6, r5]
	ldr r2, _080C0290 @ =gUnknown_03006844
	ldrh r0, [r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r3, [sp, #0x28]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	ldrh r1, [r7]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl Div
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	movs r1, #2
	ldrsh r0, [r6, r1]
	str r0, [sp, #0x2c]
	cmp r0, #0
	bge _080C0098
	movs r2, #2
	ldrsh r0, [r6, r2]
	rsbs r0, r0, #0
	ldr r3, _080C028C @ =gUnknown_03002AF0
	ldrh r1, [r3]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r7]
_080C0098:
	movs r4, #4
	ldrsh r0, [r6, r4]
	ldr r5, _080C0290 @ =gUnknown_03006844
	ldrh r4, [r5]
	ldrh r2, [r6, #4]
	mov r1, sp
	strh r2, [r1, #0x3c]
	cmp r0, #0
	bge _080C00BA
	movs r3, #4
	ldrsh r0, [r6, r3]
	rsbs r0, r0, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	mov r4, sl
	strh r0, [r4]
	ldrh r4, [r5]
_080C00BA:
	mov r2, sp
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	mov r0, sp
	adds r0, #2
	str r0, [sp, #0x30]
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r3, [sp, #0x30]
	strh r0, [r3]
	mov r5, sp
	adds r5, #4
	str r5, [sp, #0x34]
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, sl
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r3, sp
	adds r3, #6
	str r3, [sp, #0x38]
	ldr r5, [sp, #0x28]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r3]
	add r0, sp, #0x18
	mov r8, r0
	ldr r1, _080C0280 @ =gUnknown_03002C54
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r3, _080C0288 @ =gUnknown_082B48B4
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r5, _080C028C @ =gUnknown_03002AF0
	ldrh r1, [r5]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080C0294 @ =gUnknown_03006848
	movs r5, #0
	ldrsh r1, [r3, r5]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	mov r1, r8
	strh r0, [r1]
	movs r2, #0x1a
	add r2, sp
	mov ip, r2
	ldr r5, _080C0280 @ =gUnknown_03002C54
	ldrh r0, [r5]
	lsls r0, r0, #1
	ldr r1, _080C0288 @ =gUnknown_082B48B4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	rsbs r0, r0, #0
	asrs r0, r0, #6
	ldr r5, _080C028C @ =gUnknown_03002AF0
	ldrh r1, [r5]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r3, r7]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	mov r1, ip
	strh r0, [r1]
	add r5, sp, #0x1c
	ldr r2, _080C0280 @ =gUnknown_03002C54
	ldrh r0, [r2]
	lsls r0, r0, #1
	ldr r7, _080C0288 @ =gUnknown_082B48B4
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	adds r2, r0, #0
	muls r2, r4, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r3, r4]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r5]
	mov r4, sp
	adds r4, #0x1e
	ldr r7, _080C0280 @ =gUnknown_03002C54
	ldrh r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, _080C0288 @ =gUnknown_082B48B4
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r7, _080C0290 @ =gUnknown_03006844
	ldrh r1, [r7]
	adds r2, r0, #0
	muls r2, r1, r2
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	mov r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #0
	ldrsh r1, [r3, r7]
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r0, [r4]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #6
	ldrsh r1, [r6, r2]
	muls r1, r0, r1
	mov r3, ip
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r7, #8
	ldrsh r2, [r6, r7]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _080C0298 @ =gUnknown_03002C5C
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x10]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #6
	ldrsh r1, [r6, r3]
	muls r1, r0, r1
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #8
	ldrsh r2, [r6, r4]
	muls r0, r2, r0
	adds r1, r1, r0
	ldr r0, _080C029C @ =gUnknown_03003C0C
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r0, r0, #8
	adds r1, r1, r0
	asrs r1, r1, #8
	str r1, [sp, #0x14]
	ldr r6, [sp, #0x30]
	ldr r7, [sp, #0x34]
	ldr r0, [sp, #0x38]
	mov r8, r0
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	ble _080C02A0
	mov r2, sb
	ldrh r4, [r2, #8]
	ldrh r2, [r2, #4]
	b _080C02AE
	.align 2, 0
_080C0278: .4byte gUnknown_03003C04
_080C027C: .4byte gUnknown_03006246
_080C0280: .4byte gUnknown_03002C54
_080C0284: .4byte 0x000003FF
_080C0288: .4byte gUnknown_082B48B4
_080C028C: .4byte gUnknown_03002AF0
_080C0290: .4byte gUnknown_03006844
_080C0294: .4byte gUnknown_03006848
_080C0298: .4byte gUnknown_03002C5C
_080C029C: .4byte gUnknown_03003C0C
_080C02A0:
	mov r3, sb
	ldrh r1, [r3, #4]
	ldrh r0, [r3, #8]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r1, #0
_080C02AE:
	mov r5, sp
	ldrh r5, [r5, #0x3c]
	lsls r0, r5, #0x10
	cmp r0, #0
	ble _080C02C0
	mov r0, sb
	ldrh r3, [r0, #0xa]
	ldrh r5, [r0, #6]
	b _080C02CE
_080C02C0:
	mov r3, sb
	ldrh r1, [r3, #6]
	ldrh r0, [r3, #0xa]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r1, #0
_080C02CE:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsrs r2, r2, #1
	subs r4, r4, r2
	adds r1, r0, #0
	muls r1, r4, r1
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsrs r5, r5, #1
	subs r3, r3, r5
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r2, r2, #8
	adds r1, r1, r2
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	mov r4, r8
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	adds r1, r1, r0
	lsls r5, r5, #8
	adds r1, r1, r5
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r5, [sp, #0x24]
	strh r0, [r5, #0x10]
	ldr r0, [sp, #0x14]
	strh r0, [r5, #0x12]
_080C032C:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start DisplaySprite
DisplaySprite: @ 0x080C033C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sb, r0
	movs r0, #0
	str r0, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r3, #0
	str r3, [sp, #0x20]
	movs r4, #0
	str r4, [sp, #0x24]
	mov r0, sb
	ldr r4, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _080C036C
	b _080C07C8
_080C036C:
	lsrs r0, r4, #0x1c
	cmp r0, #0
	bne _080C0394
	ldr r3, _080C0390 @ =gUnknown_03003C04
	ldr r0, [r3]
	mov r1, sb
	ldrh r2, [r1, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov r8, r1
	b _080C03AA
	.align 2, 0
_080C0390: .4byte gUnknown_03003C04
_080C0394:
	ldr r3, _080C0460 @ =gUnknown_03003C04
	ldr r0, [r3]
	mov r1, sb
	ldrh r2, [r1, #0xc]
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	lsls r1, r4, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov r8, r0
_080C03AA:
	mov r4, r8
	ldrh r0, [r4, #2]
	mov r1, sb
	strb r0, [r1, #0x1e]
	movs r0, #0x10
	ldrsh r4, [r1, r0]
	str r4, [sp]
	movs r4, #0x12
	ldrsh r1, [r1, r4]
	mov sl, r1
	mov r0, sb
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	adds r5, r1, #0
	cmp r0, #0
	beq _080C03E4
	ldr r0, _080C0464 @ =gUnknown_03002AF4
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r4, [sp]
	subs r4, r4, r1
	str r4, [sp]
	movs r1, #2
	ldrsh r0, [r0, r1]
	mov r4, sl
	subs r4, r4, r0
	mov sl, r4
_080C03E4:
	mov r0, r8
	ldrh r0, [r0, #4]
	str r0, [sp, #4]
	mov r1, r8
	ldrh r1, [r1, #6]
	str r1, [sp, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080C0408
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ldr r4, [sp, #0x14]
	orrs r4, r0
	str r4, [sp, #0x14]
_080C0408:
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _080C0468
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ldr r4, [sp, #0x14]
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	movs r0, #0x1f
	ands r0, r5
	lsls r0, r0, #9
	ldr r4, [sp, #0x18]
	orrs r4, r0
	str r4, [sp, #0x18]
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _080C04DE
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x11
	ldr r4, [sp]
	subs r4, r4, r0
	str r4, [sp]
	ldr r4, [sp, #8]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x11
	mov r4, sl
	subs r4, r4, r0
	mov sl, r4
	ldr r0, [sp, #4]
	lsls r0, r0, #1
	str r0, [sp, #4]
	ldr r4, [sp, #8]
	lsls r4, r4, #1
	str r4, [sp, #8]
	ldr r0, [sp, #0x14]
	orrs r0, r1
	str r0, [sp, #0x14]
	b _080C04DE
	.align 2, 0
_080C0460: .4byte gUnknown_03003C04
_080C0464: .4byte gUnknown_03002AF4
_080C0468:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _080C0484
	mov r1, r8
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	ldr r1, [sp, #8]
	subs r0, r1, r0
	mov r4, sl
	subs r4, r4, r0
	mov sl, r4
	b _080C0490
_080C0484:
	mov r1, r8
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	mov r1, sl
	subs r1, r1, r0
	mov sl, r1
_080C0490:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080C04AC
	mov r4, r8
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #4]
	subs r0, r4, r0
	ldr r1, [sp]
	subs r1, r1, r0
	str r1, [sp]
	b _080C04B8
_080C04AC:
	mov r4, r8
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp]
	subs r4, r4, r0
	str r4, [sp]
_080C04B8:
	lsrs r0, r5, #0xb
	movs r6, #1
	ands r0, r6
	mov r4, r8
	ldrh r1, [r4]
	lsls r4, r1, #0x10
	lsrs r1, r4, #0x1f
	cmp r0, r1
	beq _080C04CE
	movs r0, #1
	str r0, [sp, #0x20]
_080C04CE:
	lsrs r1, r5, #0xa
	lsrs r0, r4, #0x1e
	eors r0, r1
	ands r0, r6
	cmp r0, #0
	beq _080C04DE
	movs r1, #1
	str r1, [sp, #0x24]
_080C04DE:
	ldr r4, [sp, #4]
	cmp r4, #0
	beq _080C0506
	ldr r1, [sp]
	adds r0, r1, r4
	cmp r0, #0
	bge _080C04EE
	b _080C07C8
_080C04EE:
	cmp r1, #0xf0
	ble _080C04F4
	b _080C07C8
_080C04F4:
	ldr r0, [sp, #8]
	add r0, sl
	cmp r0, #0
	bge _080C04FE
	b _080C07C8
_080C04FE:
	mov r4, sl
	cmp r4, #0xa0
	ble _080C0506
	b _080C07C8
_080C0506:
	mov r0, sb
	ldrb r1, [r0, #0x1f]
	lsls r1, r1, #0xc
	ldr r4, [sp, #0x1c]
	adds r1, r4, r1
	lsls r1, r1, #0x10
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r0, r5
	lsls r0, r0, #3
	ldr r4, [sp, #0x14]
	orrs r4, r0
	str r4, [sp, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r5
	lsls r0, r0, #0xe
	orrs r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [r3]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x10]
	ldr r0, _080C06C0 @ =gUnknown_03002C00
	ldrb r0, [r0]
	mov r1, sb
	strb r0, [r1, #0x1d]
	movs r2, #0
	str r2, [sp, #0xc]
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp r2, r3
	blo _080C0550
	b _080C0678
_080C0550:
	mov r4, sb
	ldrh r0, [r4, #0x14]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_80C108C
	adds r4, r0, #0
	ldr r0, _080C06C4 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r4
	bne _080C056E
	b _080C07C8
_080C056E:
	mov r3, r8
	ldrh r0, [r3]
	ldr r2, _080C06C8 @ =0x00003FFF
	adds r1, r2, #0
	ands r1, r0
	ldr r3, [sp, #0xc]
	adds r1, r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	ldr r2, _080C06CC @ =0x040000D4
	str r0, [r2]
	str r4, [r2, #4]
	ldr r0, _080C06D0 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r4, #2]
	ldr r3, _080C06D4 @ =0x000001FF
	adds r0, r3, #0
	adds r7, r0, #0
	ands r7, r1
	ldrh r2, [r4]
	ldrb r5, [r4]
	movs r0, #0xfe
	lsls r0, r0, #8
	adds r3, r0, #0
	ands r3, r1
	strh r3, [r4, #2]
	adds r1, r0, #0
	ands r1, r2
	strh r1, [r4]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x24]
	orrs r0, r2
	cmp r0, #0
	beq _080C060E
	adds r0, r1, #0
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r0, r1
	lsrs r2, r0, #0xc
	adds r0, r3, #0
	ands r0, r1
	lsrs r0, r0, #0xe
	orrs r2, r0
	adds r6, r2, #0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _080C05EE
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r0, #0
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r4, #2]
	lsls r0, r2, #1
	ldr r1, _080C06D8 @ =gUnknown_082B52ED
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, [sp, #8]
	subs r0, r2, r0
	subs r5, r0, r5
_080C05EE:
	ldr r3, [sp, #0x24]
	cmp r3, #0
	beq _080C060E
	ldrh r0, [r4, #2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r4, #2]
	lsls r0, r6, #1
	ldr r3, _080C06DC @ =gUnknown_082B52EC
	adds r0, r0, r3
	ldrb r0, [r0]
	ldr r1, [sp, #4]
	subs r0, r1, r0
	subs r7, r0, r7
_080C060E:
	mov r3, sl
	adds r2, r3, r5
	movs r0, #0xff
	ands r2, r0
	ldrh r0, [r4]
	adds r2, r2, r0
	ldr r1, [sp]
	adds r0, r1, r7
	ldr r3, _080C06D4 @ =0x000001FF
	adds r1, r3, #0
	ands r0, r1
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	ldr r3, [sp, #0x14]
	orrs r2, r3
	strh r2, [r4]
	ldr r1, [sp, #0x18]
	orrs r0, r1
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	ldr r3, [sp, #0x1c]
	orrs r3, r0
	strh r3, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	ands r2, r0
	cmp r2, #0
	beq _080C0654
	ldr r2, _080C06E0 @ =0x000003FF
	adds r1, r2, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r4, #4]
_080C0654:
	mov r3, sb
	ldr r0, [r3]
	ldr r1, _080C06E4 @ =0xF9FF0000
	adds r0, r0, r1
	lsrs r0, r0, #5
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r4, #4]
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp r0, r3
	bhs _080C0678
	b _080C0550
_080C0678:
	mov r4, sb
	ldr r0, [r4, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _080C0684
	b _080C07C8
_080C0684:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _080C0692
	b _080C07C8
_080C0692:
	ldr r0, _080C06E8 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r4, #8]
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r1, _080C06EC @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	ldr r0, _080C06F0 @ =gUnknown_03003C04
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	mov sl, r0
	ldr r0, [r0]
	cmp r0, #0
	blt _080C06F4
	movs r3, #0x20
	mov ip, r3
	ldr r2, [r2, #0x10]
	b _080C06FA
	.align 2, 0
_080C06C0: .4byte gUnknown_03002C00
_080C06C4: .4byte iwram_end
_080C06C8: .4byte 0x00003FFF
_080C06CC: .4byte 0x040000D4
_080C06D0: .4byte 0x80000003
_080C06D4: .4byte 0x000001FF
_080C06D8: .4byte gUnknown_082B52ED
_080C06DC: .4byte gUnknown_082B52EC
_080C06E0: .4byte 0x000003FF
_080C06E4: .4byte 0xF9FF0000
_080C06E8: .4byte 0xFBFFFFFF
_080C06EC: .4byte 0x00FFFFFF
_080C06F0: .4byte gUnknown_03003C04
_080C06F4:
	movs r4, #0x40
	mov ip, r4
	ldr r2, [r2, #0x14]
_080C06FA:
	mov r8, r2
	mov r3, ip
	mov r1, sl
	adds r1, #4
	mov sl, r1
	subs r1, #4
	ldm r1!, {r0}
	muls r0, r3, r0
	mov r4, r8
	adds r2, r4, r0
	mov r0, sb
	ldr r6, [r0]
	movs r7, #1
	ldr r1, [sp, #0x28]
	cmp r7, r1
	bhs _080C0790
	ldr r4, _080C0744 @ =gUnknown_030035D0
	mov sb, r4
	ldr r5, _080C0748 @ =gUnknown_03003F34
_080C0720:
	mov r1, sl
	adds r1, #4
	mov sl, r1
	subs r1, #4
	ldm r1!, {r0}
	mov r4, ip
	muls r4, r0, r4
	adds r0, r4, #0
	mov r1, r8
	adds r4, r1, r0
	adds r0, r2, r3
	cmp r0, r4
	bne _080C074C
	mov r4, ip
	adds r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _080C0784
	.align 2, 0
_080C0744: .4byte gUnknown_030035D0
_080C0748: .4byte gUnknown_03003F34
_080C074C:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sb
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	strh r3, [r0, #8]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5]
	adds r6, r6, r3
	mov r3, ip
	adds r2, r4, #0
_080C0784:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp, #0x28]
	cmp r7, r0
	blo _080C0720
_080C0790:
	ldr r4, _080C07D8 @ =gUnknown_03003F34
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C07DC @ =gUnknown_030035D0
	adds r0, r0, r1
	str r2, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C07DC @ =gUnknown_030035D0
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080C07DC @ =gUnknown_030035D0
	adds r0, r0, r2
	strh r3, [r0, #8]
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4]
_080C07C8:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C07D8: .4byte gUnknown_03003F34
_080C07DC: .4byte gUnknown_030035D0

	thumb_func_start sub_80C07E0
sub_80C07E0: @ 0x080C07E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0x20]
	movs r1, #0
	str r1, [sp, #0x24]
	movs r2, #0
	str r2, [sp, #0x28]
	movs r3, #0
	str r3, [sp, #0x2c]
	movs r4, #0
	str r4, [sp, #0x30]
	mov r0, sl
	ldr r4, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _080C0810
	b _080C0C90
_080C0810:
	lsrs r0, r4, #0x1c
	cmp r0, #0
	bne _080C0838
	ldr r3, _080C0834 @ =gUnknown_03003C04
	ldr r0, [r3]
	mov r1, sl
	ldrh r2, [r1, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sb, r1
	b _080C084E
	.align 2, 0
_080C0834: .4byte gUnknown_03003C04
_080C0838:
	ldr r3, _080C08EC @ =gUnknown_03003C04
	ldr r0, [r3]
	mov r1, sl
	ldrh r2, [r1, #0xc]
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	lsls r1, r4, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sb, r0
_080C084E:
	mov r4, sb
	ldrh r0, [r4, #2]
	mov r1, sl
	strb r0, [r1, #0x1e]
	movs r0, #0x10
	ldrsh r4, [r1, r0]
	str r4, [sp, #8]
	movs r4, #0x12
	ldrsh r1, [r1, r4]
	str r1, [sp, #0xc]
	mov r0, sl
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	adds r5, r1, #0
	cmp r0, #0
	beq _080C0888
	ldr r0, _080C08F0 @ =gUnknown_03002AF4
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r4, [sp, #8]
	subs r4, r4, r1
	str r4, [sp, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	ldr r4, [sp, #0xc]
	subs r4, r4, r0
	str r4, [sp, #0xc]
_080C0888:
	mov r0, sb
	ldrh r0, [r0, #4]
	str r0, [sp, #0x10]
	mov r1, sb
	ldrh r1, [r1, #6]
	str r1, [sp, #0x14]
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _080C08F4
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ldr r1, [sp, #0x20]
	orrs r1, r0
	str r1, [sp, #0x20]
	movs r0, #0x1f
	ands r0, r5
	lsls r0, r0, #9
	ldr r4, [sp, #0x24]
	orrs r4, r0
	str r4, [sp, #0x24]
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _080C096A
	ldr r1, [sp, #0x10]
	lsrs r0, r1, #1
	ldr r4, [sp, #8]
	subs r4, r4, r0
	str r4, [sp, #8]
	ldr r1, [sp, #0x14]
	lsrs r0, r1, #1
	ldr r4, [sp, #0xc]
	subs r4, r4, r0
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x10]
	lsls r0, r0, #1
	str r0, [sp, #0x10]
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldr r4, [sp, #0x20]
	orrs r4, r0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	b _080C096A
	.align 2, 0
_080C08EC: .4byte gUnknown_03003C04
_080C08F0: .4byte gUnknown_03002AF4
_080C08F4:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _080C0910
	mov r1, sb
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	ldr r1, [sp, #0x14]
	subs r0, r1, r0
	ldr r4, [sp, #0xc]
	subs r4, r4, r0
	str r4, [sp, #0xc]
	b _080C091C
_080C0910:
	mov r1, sb
	movs r4, #0xa
	ldrsh r0, [r1, r4]
	ldr r1, [sp, #0xc]
	subs r1, r1, r0
	str r1, [sp, #0xc]
_080C091C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _080C0938
	mov r4, sb
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #0x10]
	subs r0, r4, r0
	ldr r1, [sp, #8]
	subs r1, r1, r0
	str r1, [sp, #8]
	b _080C0944
_080C0938:
	mov r4, sb
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #8]
	subs r4, r4, r0
	str r4, [sp, #8]
_080C0944:
	lsrs r0, r5, #0xb
	movs r6, #1
	ands r0, r6
	mov r4, sb
	ldrh r1, [r4]
	lsls r4, r1, #0x10
	lsrs r1, r4, #0x1f
	cmp r0, r1
	beq _080C095A
	movs r0, #1
	str r0, [sp, #0x2c]
_080C095A:
	lsrs r1, r5, #0xa
	lsrs r0, r4, #0x1e
	eors r0, r1
	ands r0, r6
	cmp r0, #0
	beq _080C096A
	movs r1, #1
	str r1, [sp, #0x30]
_080C096A:
	ldr r4, [sp, #0x10]
	cmp r4, #0
	beq _080C0992
	ldr r1, [sp, #8]
	adds r0, r1, r4
	cmp r0, #0
	bge _080C097A
	b _080C0C90
_080C097A:
	cmp r1, #0xf0
	ble _080C0980
	b _080C0C90
_080C0980:
	ldr r4, [sp, #0xc]
	ldr r1, [sp, #0x14]
	adds r0, r4, r1
	cmp r0, #0
	bge _080C098C
	b _080C0C90
_080C098C:
	cmp r4, #0xa0
	ble _080C0992
	b _080C0C90
_080C0992:
	mov r4, sl
	ldrb r1, [r4, #0x1f]
	lsls r1, r1, #0xc
	ldr r0, [sp, #0x28]
	adds r1, r0, r1
	lsls r1, r1, #0x10
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r0, r5
	lsls r0, r0, #3
	ldr r4, [sp, #0x20]
	orrs r4, r0
	str r4, [sp, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r5
	lsls r0, r0, #0xe
	orrs r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
	ldr r0, [r3]
	ldr r1, [r0, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	ldr r0, _080C0B84 @ =gUnknown_03002C00
	ldrb r0, [r0]
	mov r1, sl
	strb r0, [r1, #0x1d]
	movs r2, #0
	str r2, [sp, #0x18]
	mov r3, sb
	ldrh r3, [r3, #2]
	cmp r2, r3
	blo _080C09DC
	b _080C0B3C
_080C09DC:
	ldr r4, _080C0B88 @ =0x040000D4
	mov r8, r4
	mov r4, sp
_080C09E2:
	mov r1, sb
	ldrh r0, [r1]
	ldr r2, _080C0B8C @ =0x00003FFF
	adds r1, r2, #0
	ands r1, r0
	ldr r3, [sp, #0x18]
	adds r1, r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp, #0x1c]
	adds r0, r1, r0
	mov r2, r8
	str r0, [r2]
	mov r3, sp
	str r3, [r2, #4]
	ldr r0, _080C0B90 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r2, [r4, #2]
	ldr r1, _080C0B94 @ =0x000001FF
	adds r0, r1, #0
	adds r6, r0, #0
	ands r6, r2
	cmp r6, #0xff
	ble _080C0A1A
	ldr r3, _080C0B98 @ =0xFFFFFE00
	adds r6, r6, r3
_080C0A1A:
	ldrh r0, [r4]
	ldrb r5, [r4]
	cmp r5, #0x7f
	ble _080C0A26
	ldr r1, _080C0B9C @ =0xFFFFFF00
	adds r5, r5, r1
_080C0A26:
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r3, r1, #0
	ands r3, r2
	strh r3, [r4, #2]
	ands r1, r0
	strh r1, [r4]
	movs r2, #0xc0
	lsls r2, r2, #8
	ands r1, r2
	lsrs r1, r1, #0xc
	adds r0, r3, #0
	ands r0, r2
	lsrs r0, r0, #0xe
	orrs r1, r0
	ldr r2, _080C0BA0 @ =gUnknown_082B52EC
	lsls r1, r1, #1
	adds r0, r2, #1
	adds r0, r1, r0
	ldrb r7, [r0]
	adds r1, r1, r2
	ldrb r1, [r1]
	mov ip, r1
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	orrs r0, r1
	cmp r0, #0
	beq _080C0A90
	ldr r2, [sp, #0x2c]
	cmp r2, #0
	beq _080C0A76
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	adds r1, r3, #0
	eors r1, r0
	strh r1, [r4, #2]
	ldr r2, [sp, #0x14]
	subs r0, r2, r7
	subs r5, r0, r5
_080C0A76:
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _080C0A90
	ldrh r0, [r4, #2]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r4, #2]
	ldr r3, [sp, #0x10]
	mov r1, ip
	subs r0, r3, r1
	subs r6, r0, r6
_080C0A90:
	ldr r2, [sp, #0xc]
	adds r1, r2, r5
	adds r0, r1, r7
	cmp r0, #0
	blt _080C0B28
	cmp r1, #0xa0
	bgt _080C0B28
	ldr r3, [sp, #8]
	adds r2, r3, r6
	mov r3, ip
	adds r0, r2, r3
	cmp r0, #0
	blt _080C0B28
	cmp r2, #0xf0
	bgt _080C0B28
	movs r0, #0xff
	ands r1, r0
	ldrh r0, [r4]
	adds r1, r1, r0
	ldr r3, _080C0B94 @ =0x000001FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #2]
	adds r0, r0, r2
	ldr r2, [sp, #0x20]
	orrs r1, r2
	strh r1, [r4]
	ldr r3, [sp, #0x24]
	orrs r0, r3
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	ldr r2, [sp, #0x28]
	orrs r2, r0
	strh r2, [r4, #4]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	ands r1, r0
	cmp r1, #0
	beq _080C0AEC
	ldr r0, _080C0BA4 @ =0x000003FF
	adds r1, r0, #0
	adds r0, r2, #0
	ands r0, r1
	adds r0, r2, r0
	strh r0, [r4, #4]
_080C0AEC:
	mov r1, sl
	ldr r0, [r1]
	ldr r2, _080C0BA8 @ =0xF9FF0000
	adds r0, r0, r2
	lsrs r0, r0, #5
	ldrh r3, [r4, #4]
	adds r0, r0, r3
	strh r0, [r4, #4]
	ldrh r0, [r1, #0x14]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_80C108C
	adds r1, r0, #0
	ldr r0, _080C0BAC @ =iwram_end
	ldr r0, [r0]
	cmp r0, r1
	bne _080C0B18
	b _080C0C90
_080C0B18:
	mov r3, sp
	mov r0, r8
	str r3, [r0]
	str r1, [r0, #4]
	ldr r0, _080C0B90 @ =0x80000003
	mov r1, r8
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080C0B28:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	mov r2, sb
	ldrh r2, [r2, #2]
	cmp r0, r2
	bhs _080C0B3C
	b _080C09E2
_080C0B3C:
	mov r3, sl
	ldr r0, [r3, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _080C0B48
	b _080C0C90
_080C0B48:
	ldr r1, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _080C0B56
	b _080C0C90
_080C0B56:
	ldr r0, _080C0BB0 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r3, #8]
	mov r4, sb
	ldr r0, [r4, #0xc]
	ldr r1, _080C0BB4 @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x34]
	ldr r0, _080C0BB8 @ =gUnknown_03003C04
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	mov ip, r0
	ldr r0, [r0]
	cmp r0, #0
	blt _080C0BBC
	movs r0, #0x20
	mov r8, r0
	ldr r2, [r2, #0x10]
	b _080C0BC2
	.align 2, 0
_080C0B84: .4byte gUnknown_03002C00
_080C0B88: .4byte 0x040000D4
_080C0B8C: .4byte 0x00003FFF
_080C0B90: .4byte 0x80000003
_080C0B94: .4byte 0x000001FF
_080C0B98: .4byte 0xFFFFFE00
_080C0B9C: .4byte 0xFFFFFF00
_080C0BA0: .4byte gUnknown_082B52EC
_080C0BA4: .4byte 0x000003FF
_080C0BA8: .4byte 0xF9FF0000
_080C0BAC: .4byte iwram_end
_080C0BB0: .4byte 0xFBFFFFFF
_080C0BB4: .4byte 0x00FFFFFF
_080C0BB8: .4byte gUnknown_03003C04
_080C0BBC:
	movs r1, #0x40
	mov r8, r1
	ldr r2, [r2, #0x14]
_080C0BC2:
	mov sb, r2
	mov r3, r8
	mov r2, ip
	adds r2, #4
	mov ip, r2
	subs r2, #4
	ldm r2!, {r0}
	muls r0, r3, r0
	mov r4, sb
	adds r2, r4, r0
	mov r0, sl
	ldr r6, [r0]
	movs r7, #1
	ldr r1, [sp, #0x34]
	cmp r7, r1
	bhs _080C0C58
	ldr r4, _080C0C0C @ =gUnknown_030035D0
	mov sl, r4
	ldr r5, _080C0C10 @ =gUnknown_03003F34
_080C0BE8:
	mov r1, ip
	adds r1, #4
	mov ip, r1
	subs r1, #4
	ldm r1!, {r0}
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	mov r1, sb
	adds r4, r1, r0
	adds r0, r2, r3
	cmp r0, r4
	bne _080C0C14
	mov r4, r8
	adds r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _080C0C4C
	.align 2, 0
_080C0C0C: .4byte gUnknown_030035D0
_080C0C10: .4byte gUnknown_03003F34
_080C0C14:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, sl
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	strh r3, [r0, #8]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r5]
	adds r6, r6, r3
	mov r3, r8
	adds r2, r4, #0
_080C0C4C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp, #0x34]
	cmp r7, r0
	blo _080C0BE8
_080C0C58:
	ldr r4, _080C0CA0 @ =gUnknown_03003F34
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C0CA4 @ =gUnknown_030035D0
	adds r0, r0, r1
	str r2, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080C0CA4 @ =gUnknown_030035D0
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080C0CA4 @ =gUnknown_030035D0
	adds r0, r0, r2
	strh r3, [r0, #8]
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r4]
_080C0C90:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C0CA0: .4byte gUnknown_03003F34
_080C0CA4: .4byte gUnknown_030035D0

	thumb_func_start sub_80C0CA8
sub_80C0CA8: @ 0x080C0CA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sb, r0
	str r1, [sp, #8]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _080C0CCA
	b _080C1060
_080C0CCA:
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080C0CF0
	ldr r0, _080C0CEC @ =gUnknown_03003C04
	ldr r0, [r0]
	mov r3, sb
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
	b _080C0D06
	.align 2, 0
_080C0CEC: .4byte gUnknown_03003C04
_080C0CF0:
	ldr r0, _080C0D7C @ =gUnknown_03003C04
	ldr r1, [r0]
	mov r4, sb
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov sl, r0
_080C0D06:
	mov r5, sl
	ldrh r0, [r5, #2]
	mov r1, sb
	strb r0, [r1, #0x1e]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	str r0, [sp]
	movs r3, #0x12
	ldrsh r0, [r1, r3]
	str r0, [sp, #4]
	ldr r1, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080C0D3E
	ldr r2, _080C0D80 @ =gUnknown_03002AF4
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
	movs r5, #2
	ldrsh r1, [r2, r5]
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #4]
_080C0D3E:
	mov r0, sl
	ldrh r0, [r0, #4]
	str r0, [sp, #0x10]
	mov r1, sl
	ldrh r1, [r1, #6]
	str r1, [sp, #0x14]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _080C0D84
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _080C0DC8
	ldr r2, [sp, #0x10]
	lsrs r1, r2, #1
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
	mov r3, sl
	ldrh r1, [r3, #6]
	lsrs r1, r1, #1
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #4]
	lsls r2, r2, #1
	str r2, [sp, #0x10]
	ldr r4, [sp, #0x14]
	lsls r4, r4, #1
	str r4, [sp, #0x14]
	b _080C0DC8
	.align 2, 0
_080C0D7C: .4byte gUnknown_03003C04
_080C0D80: .4byte gUnknown_03002AF4
_080C0D84:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	cmp r0, #0
	beq _080C0D9A
	mov r5, sl
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldr r2, [sp, #0x14]
	subs r1, r2, r1
	b _080C0DA0
_080C0D9A:
	mov r4, sl
	movs r5, #0xa
	ldrsh r1, [r4, r5]
_080C0DA0:
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _080C0DBC
	mov r0, sl
	movs r2, #8
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0x10]
	subs r1, r3, r1
	b _080C0DC2
_080C0DBC:
	mov r4, sl
	movs r5, #8
	ldrsh r1, [r4, r5]
_080C0DC2:
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp]
_080C0DC8:
	mov r0, sb
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	ldr r0, [sp]
	subs r0, r0, r1
	str r0, [sp, #0x24]
	mov r3, sb
	movs r4, #0x12
	ldrsh r1, [r3, r4]
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp]
	ldr r5, [sp, #0x10]
	adds r0, r0, r5
	cmp r0, #0
	bge _080C0DEC
	b _080C1060
_080C0DEC:
	ldr r0, [sp]
	cmp r0, #0xf0
	ble _080C0DF4
	b _080C1060
_080C0DF4:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	cmp r0, #0
	bge _080C0E00
	b _080C1060
_080C0E00:
	ldr r0, [sp, #4]
	cmp r0, #0xa0
	ble _080C0E08
	b _080C1060
_080C0E08:
	movs r2, #0
	str r2, [sp, #0x18]
	mov r3, sl
	ldrh r3, [r3, #2]
	cmp r2, r3
	blo _080C0E16
	b _080C1060
_080C0E16:
	ldr r0, _080C0ED4 @ =gUnknown_03003C04
	ldr r1, [r0]
	mov r4, sb
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	mov r5, sb
	ldrh r0, [r5, #0x14]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_80C108C
	adds r6, r0, #0
	ldr r0, _080C0ED8 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r6
	bne _080C0E44
	b _080C1060
_080C0E44:
	ldr r2, _080C0EDC @ =0x040000D4
	mov r3, sl
	ldrh r0, [r3]
	ldr r5, _080C0EE0 @ =0x00003FFF
	adds r1, r5, #0
	ands r1, r0
	ldr r0, [sp, #0x18]
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r4, r0
	str r0, [r2]
	str r6, [r2, #4]
	ldr r0, _080C0EE4 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrh r1, [r6, #2]
	ldr r2, _080C0EE8 @ =0x000001FF
	adds r0, r2, #0
	adds r3, r0, #0
	ands r3, r1
	str r3, [sp, #0x1c]
	ldrh r0, [r6]
	ldrb r4, [r6]
	str r4, [sp, #0x20]
	movs r3, #0xfe
	lsls r3, r3, #8
	ands r3, r1
	movs r5, #0
	strh r3, [r6, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	strh r2, [r6]
	mov r1, sb
	ldrb r0, [r1, #0x1f]
	lsls r0, r0, #0xc
	ldrh r4, [r6, #4]
	adds r0, r0, r4
	strh r0, [r6, #4]
	ldr r4, [r1, #8]
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _080C0EEC
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	orrs r2, r0
	orrs r2, r5
	strh r2, [r6]
	mov r3, sb
	ldr r0, [r3, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080C0EC2
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	orrs r2, r0
	strh r2, [r6]
_080C0EC2:
	mov r5, sb
	ldr r0, [r5, #8]
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #9
	ldrh r1, [r6, #2]
	orrs r0, r1
	strh r0, [r6, #2]
	b _080C0F60
	.align 2, 0
_080C0ED4: .4byte gUnknown_03003C04
_080C0ED8: .4byte iwram_end
_080C0EDC: .4byte 0x040000D4
_080C0EE0: .4byte 0x00003FFF
_080C0EE4: .4byte 0x80000003
_080C0EE8: .4byte 0x000001FF
_080C0EEC:
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r2, #0
	ands r0, r1
	lsrs r2, r0, #0xc
	adds r0, r3, #0
	ands r0, r1
	lsrs r0, r0, #0xe
	orrs r2, r0
	lsrs r1, r4, #0xb
	movs r4, #1
	ands r1, r4
	mov r5, sl
	ldrh r0, [r5]
	lsrs r0, r0, #0xf
	cmp r1, r0
	beq _080C0F2E
	movs r0, #0x80
	lsls r0, r0, #6
	adds r1, r0, #0
	adds r0, r3, #0
	eors r0, r1
	strh r0, [r6, #2]
	ldr r0, _080C1070 @ =gUnknown_082B52EC
	lsls r1, r2, #1
	adds r0, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	ldr r1, [sp, #0x14]
	subs r0, r1, r0
	ldr r3, [sp, #0x20]
	subs r3, r0, r3
	str r3, [sp, #0x20]
_080C0F2E:
	mov r5, sb
	ldr r1, [r5, #8]
	lsrs r1, r1, #0xa
	mov r3, sl
	ldrh r0, [r3]
	lsrs r0, r0, #0xe
	eors r0, r1
	ands r0, r4
	cmp r0, #0
	beq _080C0F60
	ldrh r0, [r6, #2]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r1, r4, #0
	eors r0, r1
	strh r0, [r6, #2]
	ldr r1, _080C1070 @ =gUnknown_082B52EC
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r5, [sp, #0x10]
	subs r0, r5, r0
	ldr r1, [sp, #0x1c]
	subs r1, r0, r1
	str r1, [sp, #0x1c]
_080C0F60:
	mov r3, sb
	ldr r2, [r3, #8]
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r2, r0
	lsls r2, r2, #3
	ldrh r0, [r6]
	orrs r2, r0
	strh r2, [r6]
	ldr r0, [r3, #8]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	lsrs r3, r0, #2
	ldrh r0, [r6, #4]
	orrs r3, r0
	strh r3, [r6, #4]
	ldr r0, [sp, #4]
	ldr r4, [sp, #0x20]
	adds r0, r0, r4
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r6]
	ldr r0, [sp]
	ldr r5, [sp, #0x1c]
	adds r0, r0, r5
	ldr r4, _080C1074 @ =0x000001FF
	adds r1, r4, #0
	ands r0, r1
	ldrh r5, [r6, #2]
	adds r0, r0, r5
	strh r0, [r6, #2]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	ands r2, r0
	cmp r2, #0
	beq _080C0FBA
	ldr r2, _080C1078 @ =0x000003FF
	adds r1, r2, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r6, #4]
_080C0FBA:
	mov r3, sb
	ldr r0, [r3]
	ldr r4, _080C107C @ =0xF9FF0000
	adds r0, r0, r4
	lsrs r0, r0, #5
	ldrh r5, [r6, #4]
	adds r0, r0, r5
	strh r0, [r6, #4]
	movs r7, #0
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bhs _080C104C
	ldr r1, _080C1080 @ =0x040000D4
	mov r8, r1
_080C0FD6:
	mov r2, sb
	ldrh r0, [r2, #0x14]
	movs r3, #0xf8
	lsls r3, r3, #3
	adds r1, r3, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_80C108C
	adds r5, r0, #0
	ldr r0, _080C1084 @ =iwram_end
	ldr r0, [r0]
	cmp r0, r6
	beq _080C1060
	mov r4, r8
	str r6, [r4]
	str r5, [r4, #4]
	ldr r0, _080C1088 @ =0x80000003
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r4, [r5, #2]
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r4, r0
	strh r4, [r5, #2]
	ldrh r2, [r5]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r5]
	lsls r3, r7, #2
	ldr r0, [sp, #8]
	adds r3, r3, r0
	ldrh r0, [r3, #2]
	ldr r1, [sp, #0x28]
	adds r0, r0, r1
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r5]
	ldrh r0, [r3]
	ldr r2, [sp, #0x24]
	adds r0, r0, r2
	ldr r3, [sp, #0x1c]
	adds r0, r0, r3
	ldr r2, _080C1074 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	adds r4, r4, r0
	strh r4, [r5, #2]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [sp, #0xc]
	cmp r7, r3
	blo _080C0FD6
_080C104C:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	mov r4, sl
	ldrh r4, [r4, #2]
	cmp r0, r4
	bhs _080C1060
	b _080C0E16
_080C1060:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1070: .4byte gUnknown_082B52EC
_080C1074: .4byte 0x000001FF
_080C1078: .4byte 0x000003FF
_080C107C: .4byte 0xF9FF0000
_080C1080: .4byte 0x040000D4
_080C1084: .4byte iwram_end
_080C1088: .4byte 0x80000003

	thumb_func_start sub_80C108C
sub_80C108C: @ 0x080C108C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _080C1098
	movs r5, #0x1f
_080C1098:
	ldr r0, _080C10AC @ =gUnknown_03002C00
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r4, r0, #0
	cmp r1, #0
	bge _080C10B4
	ldr r0, _080C10B0 @ =iwram_end
	ldr r0, [r0]
	b _080C1110
	.align 2, 0
_080C10AC: .4byte gUnknown_03002C00
_080C10B0: .4byte iwram_end
_080C10B4:
	ldr r0, _080C10D8 @ =gUnknown_03002B50
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _080C10E4
	ldr r1, _080C10DC @ =gUnknown_03003750
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0, #6]
	ldrb r0, [r4]
	strb r0, [r2]
	ldr r0, _080C10E0 @ =gUnknown_03006210
	adds r0, r5, r0
	ldrb r1, [r4]
	strb r1, [r0]
	b _080C1102
	.align 2, 0
_080C10D8: .4byte gUnknown_03002B50
_080C10DC: .4byte gUnknown_03003750
_080C10E0: .4byte gUnknown_03006210
_080C10E4:
	ldr r3, _080C1118 @ =gUnknown_03003750
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r3
	movs r1, #0xff
	strb r1, [r0, #6]
	ldr r2, _080C111C @ =gUnknown_03006210
	adds r2, r5, r2
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r1, [r4]
	strb r1, [r0, #6]
	ldrb r0, [r4]
	strb r0, [r2]
_080C1102:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #3
	ldr r1, _080C1120 @ =gUnknown_03003748
	adds r0, r0, r1
_080C1110:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C1118: .4byte gUnknown_03003750
_080C111C: .4byte gUnknown_03006210
_080C1120: .4byte gUnknown_03003748

	thumb_func_start sub_80C1124
sub_80C1124: @ 0x080C1124
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r5, _080C11D4 @ =gUnknown_03006240
	movs r0, #0
	mov sb, r0
	movs r3, #0
	ldr r1, _080C11D8 @ =gUnknown_03003F90
	mov sl, r1
	mov r2, sp
	adds r2, #8
	str r2, [sp, #0xc]
_080C1142:
	ldr r1, _080C11DC @ =gUnknown_03002B50
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r2, r0, #0x18
	asrs r0, r2, #0x18
	adds r6, r3, #1
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080C118A
	ldr r4, _080C11E0 @ =0x040000D4
	mov r8, r1
	ldr r0, _080C11E4 @ =gUnknown_03003B80
	mov ip, r0
	ldr r7, _080C11E8 @ =gUnknown_03003750
_080C1160:
	asrs r2, r2, #0x18
	lsls r3, r2, #3
	adds r3, r3, r7
	str r3, [r4]
	str r5, [r4, #4]
	ldr r0, _080C11EC @ =0x80000003
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r5, #8
	add r2, ip
	mov r1, sb
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	strb r1, [r2]
	ldrb r0, [r3, #6]
	lsls r2, r0, #0x18
	asrs r0, r2, #0x18
	cmp r0, r8
	bne _080C1160
_080C118A:
	adds r3, r6, #0
	cmp r3, #0x1f
	ble _080C1142
	ldr r2, _080C11F0 @ =gFlags
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C11FC
	ldr r0, _080C11F4 @ =gUnknown_03002C00
	ldrb r3, [r0]
	lsls r0, r3, #3
	ldr r1, _080C11D4 @ =gUnknown_03006240
	adds r5, r0, r1
	mov r2, sl
	ldrb r0, [r2]
	cmp r3, r0
	bge _080C1288
	mov r4, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r7, r1, #0
	ldr r1, _080C11E0 @ =0x040000D4
	ldr r6, _080C11F8 @ =0x81000003
_080C11BC:
	strh r7, [r4]
	mov r0, sp
	str r0, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #8
	adds r3, #1
	ldrb r0, [r2]
	cmp r3, r0
	blt _080C11BC
	b _080C1288
	.align 2, 0
_080C11D4: .4byte gUnknown_03006240
_080C11D8: .4byte gUnknown_03003F90
_080C11DC: .4byte gUnknown_03002B50
_080C11E0: .4byte 0x040000D4
_080C11E4: .4byte gUnknown_03003B80
_080C11E8: .4byte gUnknown_03003750
_080C11EC: .4byte 0x80000003
_080C11F0: .4byte gFlags
_080C11F4: .4byte gUnknown_03002C00
_080C11F8: .4byte 0x81000003
_080C11FC:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080C1284
	ldr r1, _080C1270 @ =gUnknown_03002C00
	ldrb r0, [r1]
	subs r3, r0, #1
	lsls r0, r3, #3
	ldr r2, _080C1274 @ =gUnknown_03006240
	adds r5, r0, r2
	cmp r3, #0
	blt _080C1236
	ldr r2, _080C1278 @ =0x040000D4
	ldr r6, _080C127C @ =0x80000003
	ldr r0, _080C1274 @ =gUnknown_03006240
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r4, r0, r1
	adds r1, r5, #0
_080C1224:
	str r1, [r2]
	str r4, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	subs r1, #8
	subs r3, #1
	subs r4, #8
	cmp r3, #0
	bge _080C1224
_080C1236:
	ldr r2, _080C1270 @ =gUnknown_03002C00
	ldrb r1, [r2]
	movs r0, #0x80
	subs r0, r0, r1
	mov r1, sl
	strb r0, [r1]
	movs r3, #0
	ldrb r0, [r1]
	cmp r3, r0
	bge _080C1288
	mov r5, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r7, r2, #0
	ldr r1, _080C1278 @ =0x040000D4
	adds r4, r0, #0
	ldr r6, _080C1280 @ =0x81000003
	ldr r2, _080C1274 @ =gUnknown_03006240
_080C125A:
	strh r7, [r5]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #8
	adds r3, #1
	cmp r3, r4
	blt _080C125A
	b _080C1288
	.align 2, 0
_080C1270: .4byte gUnknown_03002C00
_080C1274: .4byte gUnknown_03006240
_080C1278: .4byte 0x040000D4
_080C127C: .4byte 0x80000003
_080C1280: .4byte 0x81000003
_080C1284:
	mov r1, sl
	strb r0, [r1]
_080C1288:
	movs r0, #0
	ldr r2, _080C12BC @ =gUnknown_03002C00
	strb r0, [r2]
	ldr r1, _080C12C0 @ =gFlags
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080C12D0
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r5, _080C12C4 @ =0x05000008
	ldr r1, _080C12C8 @ =gUnknown_03002B50
	adds r2, r5, #0
	bl CpuSet
	str r4, [sp, #8]
	ldr r1, _080C12CC @ =gUnknown_03006210
	ldr r0, [sp, #0xc]
	adds r2, r5, #0
	bl CpuSet
	b _080C12F4
	.align 2, 0
_080C12BC: .4byte gUnknown_03002C00
_080C12C0: .4byte gFlags
_080C12C4: .4byte 0x05000008
_080C12C8: .4byte gUnknown_03002B50
_080C12CC: .4byte gUnknown_03006210
_080C12D0:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #8]
	ldr r0, _080C1304 @ =0x040000D4
	ldr r2, [sp, #0xc]
	str r2, [r0]
	ldr r2, _080C1308 @ =gUnknown_03002B50
	str r2, [r0, #4]
	ldr r2, _080C130C @ =0x85000008
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	str r1, [sp, #8]
	ldr r1, [sp, #0xc]
	str r1, [r0]
	ldr r1, _080C1310 @ =gUnknown_03006210
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_080C12F4:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1304: .4byte 0x040000D4
_080C1308: .4byte gUnknown_03002B50
_080C130C: .4byte 0x85000008
_080C1310: .4byte gUnknown_03006210

	thumb_func_start sub_80C1314
sub_80C1314: @ 0x080C1314
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start sub_80C1320
sub_80C1320: @ 0x080C1320
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_80C1330
sub_80C1330: @ 0x080C1330
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl sub_80BA57C
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_80C1344
sub_80C1344: @ 0x080C1344
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r2, [r0, #4]
	ldrh r3, [r1, #0x10]
	adds r2, r2, r3
	strh r2, [r1, #0x10]
	ldrh r0, [r0, #6]
	ldrh r2, [r1, #0x12]
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_80C1360
sub_80C1360: @ 0x080C1360
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_80C136C
sub_80C136C: @ 0x080C136C
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r2, [r0, #4]
	strh r2, [r1, #0xc]
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldrh r0, [r0, #6]
	strb r0, [r1, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	bx lr

	thumb_func_start sub_80C1384
sub_80C1384: @ 0x080C1384
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start sub_80C138C
sub_80C138C: @ 0x080C138C
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r2, [r1, #8]
	ldr r3, _080C13A4 @ =0xFFFFCFFF
	ands r2, r3
	ldr r0, [r0, #4]
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r1, #8]
	movs r0, #1
	bx lr
	.align 2, 0
_080C13A4: .4byte 0xFFFFCFFF

	thumb_func_start sub_80C13A8
sub_80C13A8: @ 0x080C13A8
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r0, [r0, #4]
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

	thumb_func_start sub_80C13B8
sub_80C13B8: @ 0x080C13B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r4, [sp, #0x4c]
	ldr r5, [sp, #0x50]
	mov sb, r5
	ldr r5, [sp, #0x54]
	ldr r6, [sp, #0x58]
	ldr r7, [sp, #0x5c]
	mov r8, r7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #8]
	mov r0, sb
	lsls r0, r0, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0xc]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	movs r2, #1
	str r2, [sp, #0x14]
	lsrs r5, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080C141A
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bne _080C142C
_080C141A:
	ldr r0, _080C1428 @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	b _080C1702
	.align 2, 0
_080C1428: .4byte gFlags
_080C142C:
	ldr r3, [sp, #0xc]
	mov r4, ip
	subs r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r7, [sp, #4]
	subs r0, r7, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r2, #0
	bge _080C146C
	movs r0, #0xff
	str r0, [sp, #0x14]
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, [sp, #0xc]
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	subs r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	eors r1, r3
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	eors r3, r0
	lsls r0, r3, #0x10
	eors r0, r1
	lsrs r1, r0, #0x10
_080C146C:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	lsls r1, r5, #0x10
	asrs r7, r1, #0x10
	adds r0, r4, #0
	muls r0, r7, r0
	asrs r0, r0, #8
	mov r5, sl
	subs r2, r6, r5
	str r1, [sp, #0x20]
	lsls r3, r3, #0x10
	mov r8, r3
	ldr r1, [sp, #8]
	subs r1, r1, r6
	str r1, [sp, #0x28]
	ldr r3, [sp]
	lsls r3, r3, #2
	str r3, [sp, #0x1c]
	ldr r5, [sp, #0x14]
	lsls r5, r5, #0x18
	str r5, [sp, #0x24]
	cmp r0, r2
	bge _080C14E0
	mov r3, sl
	lsls r0, r7, #8
	muls r0, r4, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x18
	subs r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r1, r3, #2
	ldr r7, _080C158C @ =gUnknown_03002B84
	ldr r0, [r7]
	adds r4, r0, r1
	mov r0, ip
	subs r5, r0, r3
	ldr r1, _080C1590 @ =0x000001FF
	adds r0, r1, #0
	ands r5, r0
	cmp r3, sl
	bhs _080C14E0
_080C14C2:
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r4]
	adds r4, #2
	adds r0, r5, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	strh r0, [r4]
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, sl
	blo _080C14C2
_080C14E0:
	mov r3, r8
	asrs r2, r3, #0x10
	ldr r4, [sp, #0x20]
	asrs r1, r4, #0x10
	adds r0, r2, #0
	muls r0, r1, r0
	asrs r0, r0, #8
	mov r5, sl
	subs r5, r6, r5
	mov r8, r5
	mov r7, sl
	lsls r7, r7, #2
	mov sb, r7
	ldr r3, [sp, #0x28]
	cmp r0, r3
	bge _080C1548
	ldr r7, [sp, #8]
	lsls r0, r1, #8
	muls r0, r2, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r3, r0, #0
	lsls r1, r0, #2
	ldr r4, _080C158C @ =gUnknown_03002B84
	ldr r0, [r4]
	adds r4, r0, r1
	ldr r0, [sp, #4]
	subs r5, r0, r3
	ldr r1, _080C1590 @ =0x000001FF
	adds r0, r1, #0
	ands r5, r0
	cmp r3, r7
	bhs _080C1548
_080C152A:
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r4]
	adds r4, #2
	adds r0, r5, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	strh r0, [r4]
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r7
	blo _080C152A
_080C1548:
	ldr r3, _080C1594 @ =gFlags
	ldr r0, [r3]
	movs r1, #4
	orrs r0, r1
	str r0, [r3]
	ldr r4, [sp, #0x1c]
	ldr r5, _080C1598 @ =0x04000010
	adds r0, r4, r5
	ldr r7, _080C159C @ =gUnknown_03003C5C
	str r0, [r7]
	ldr r0, _080C15A0 @ =gUnknown_03003F30
	strb r1, [r0]
	ldr r1, _080C158C @ =gUnknown_03002B84
	ldr r0, [r1]
	mov r2, sb
	adds r4, r0, r2
	mov r3, r8
	lsls r6, r3, #8
	lsls r0, r3, #0x10
	ldr r5, [sp, #0x20]
	asrs r1, r5, #0x10
	bl sub_80C8960
	asrs r2, r0, #8
	ldr r7, [sp, #0x24]
	asrs r1, r7, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080C15A4
	ldr r1, [sp, #0xc]
	subs r0, r1, r2
	b _080C15A8
	.align 2, 0
_080C158C: .4byte gUnknown_03002B84
_080C1590: .4byte 0x000001FF
_080C1594: .4byte gFlags
_080C1598: .4byte 0x04000010
_080C159C: .4byte gUnknown_03003C5C
_080C15A0: .4byte gUnknown_03003F30
_080C15A4:
	ldr r1, [sp, #0xc]
	adds r0, r1, r2
_080C15A8:
	mov r3, sl
	subs r5, r0, r3
	ldr r7, _080C1650 @ =0x000001FF
	adds r0, r7, #0
	ands r5, r0
	ldr r0, [sp, #0x20]
	asrs r7, r0, #0x10
	adds r0, r2, #0
	muls r0, r7, r0
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080C15D6
	ldr r2, [sp, #0x24]
	asrs r0, r2, #0x18
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	subs r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080C15D6:
	movs r3, #0x80
	lsls r3, r3, #1
	mov r8, r3
	cmp r7, r8
	ble _080C1654
	mov r3, sl
	ldr r0, [sp, #8]
	cmp r3, r0
	blo _080C15EA
	b _080C1702
_080C15EA:
	ldr r1, [sp, #0x20]
	mov sl, r1
	mov sb, r7
	ldr r2, _080C1650 @ =0x000001FF
	mov ip, r2
_080C15F4:
	mov r7, sp
	ldrh r7, [r7, #0x10]
	strh r7, [r4]
	adds r4, #2
	strh r5, [r4]
	adds r4, #2
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	mov r7, sl
	adds r3, #1
	mov r8, r3
	cmp r0, sb
	ble _080C163E
	ldr r0, [sp, #0x24]
	asrs r3, r0, #0x18
_080C1626:
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r2, #0x10
	asrs r1, r7, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	cmp r0, r1
	bgt _080C1626
_080C163E:
	mov r1, ip
	ands r5, r1
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	ldr r7, [sp, #8]
	cmp r3, r7
	blo _080C15F4
	b _080C1702
	.align 2, 0
_080C1650: .4byte 0x000001FF
_080C1654:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r7, #0
	bl sub_80C8B50
	lsrs r0, r0, #8
	movs r1, #0xff
	ands r0, r1
	adds r1, r0, #0
	muls r1, r7, r1
	mov r2, r8
	subs r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r3, [sp, #0x24]
	asrs r1, r3, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080C1694
	mov r1, sb
	lsls r0, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r0, r3
	rsbs r0, r0, #0
	lsrs r0, r0, #0x10
	mov sb, r0
_080C1694:
	mov r3, sl
	ldr r0, [sp, #8]
	cmp r3, r0
	bhs _080C1702
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	mov ip, r1
	mov sl, r7
_080C16A8:
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r4]
	adds r4, #2
	strh r5, [r4]
	adds r4, #2
	mov r7, sb
	adds r0, r5, r7
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	mov r7, ip
	adds r3, #1
	mov r8, r3
	cmp r0, sl
	ble _080C16F2
	ldr r0, [sp, #0x24]
	asrs r3, r0, #0x18
_080C16DA:
	adds r0, r5, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r2, #0x10
	asrs r1, r7, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r6, #0x10
	asrs r0, r2, #0x10
	cmp r0, r1
	bgt _080C16DA
_080C16F2:
	ldr r1, _080C1714 @ =0x000001FF
	ands r5, r1
	mov r2, r8
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	ldr r7, [sp, #8]
	cmp r3, r7
	blo _080C16A8
_080C1702:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1714: .4byte 0x000001FF

	thumb_func_start sub_80C1718
sub_80C1718: @ 0x080C1718
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r2, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080C175C @ =gFlags
	ldr r0, [r1]
	movs r7, #4
	orrs r0, r7
	str r0, [r1]
	cmp r6, #1
	bls _080C1774
	ldr r1, _080C1760 @ =gUnknown_03003F30
	strb r7, [r1]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080C1768
	ldr r0, _080C1764 @ =gUnknown_03002B84
	ldr r0, [r0]
	adds r3, r0, #2
	b _080C179C
	.align 2, 0
_080C175C: .4byte gFlags
_080C1760: .4byte gUnknown_03003F30
_080C1764: .4byte gUnknown_03002B84
_080C1768:
	ldr r0, _080C1770 @ =gUnknown_03002B84
	ldr r3, [r0]
	b _080C179C
	.align 2, 0
_080C1770: .4byte gUnknown_03002B84
_080C1774:
	ldr r1, _080C178C @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C1790 @ =gUnknown_03002B84
	ldr r3, [r0]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080C179C
	ldr r1, _080C1794 @ =gUnknown_03003C5C
	ldr r0, _080C1798 @ =0x04000042
	b _080C17A0
	.align 2, 0
_080C178C: .4byte gUnknown_03003F30
_080C1790: .4byte gUnknown_03002B84
_080C1794: .4byte gUnknown_03003C5C
_080C1798: .4byte 0x04000042
_080C179C:
	ldr r1, _080C1804 @ =gUnknown_03003C5C
	ldr r0, _080C1808 @ =0x04000040
_080C17A0:
	str r0, [r1]
	subs r1, r2, r5
	mov r2, sl
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r7, r1, #0x10
	asrs r2, r7, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080C17B8
	rsbs r0, r2, #0
_080C17B8:
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r1, #0
	mov sb, r0
	cmp r1, #0
	bge _080C17CC
	rsbs r4, r1, #0
_080C17CC:
	lsls r0, r4, #0x11
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r4, _080C180C @ =gUnknown_03003F30
	ldrb r0, [r4]
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r3, r3, r0
	adds r6, r2, #0
	cmp r2, #0
	bge _080C17E6
	rsbs r6, r2, #0
_080C17E6:
	adds r0, r1, #0
	cmp r1, #0
	bge _080C17EE
	rsbs r0, r1, #0
_080C17EE:
	cmp r6, r0
	ble _080C18C0
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080C1860
	strb r5, [r3, #1]
	movs r2, #0
	adds r6, r7, #0
	b _080C1848
	.align 2, 0
_080C1804: .4byte gUnknown_03003C5C
_080C1808: .4byte 0x04000040
_080C180C: .4byte gUnknown_03003F30
_080C1810:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080C1842
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r5, [r3]
	ldr r1, _080C185C @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r3, r3, r0
	strb r5, [r3, #1]
_080C1842:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1848:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r6, #0x10
	cmp r0, #0
	bge _080C1854
	rsbs r0, r0, #0
_080C1854:
	cmp r2, r0
	blt _080C1810
	strb r5, [r3]
	b _080C1978
	.align 2, 0
_080C185C: .4byte gUnknown_03003F30
_080C1860:
	strb r5, [r3]
	adds r3, #1
	movs r2, #0
	adds r6, r7, #0
	b _080C18A6
_080C186A:
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080C18A0
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r5, [r3]
	ldr r1, _080C18BC @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	strb r5, [r3]
	adds r3, #1
_080C18A0:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C18A6:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r6, #0x10
	cmp r0, #0
	bge _080C18B2
	rsbs r0, r0, #0
_080C18B2:
	cmp r2, r0
	blt _080C186A
	strb r5, [r3]
	b _080C1978
	.align 2, 0
_080C18BC: .4byte gUnknown_03003F30
_080C18C0:
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080C1924
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	b _080C190C
_080C18DC:
	adds r2, r5, #1
	strb r2, [r3]
	adds r3, #1
	strb r5, [r3]
	ldr r1, _080C1920 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080C1906
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	subs r0, r1, r7
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C1906:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C190C:
	lsls r0, r2, #0x10
	asrs r6, r0, #0x10
	mov r2, sb
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _080C191A
	rsbs r0, r0, #0
_080C191A:
	cmp r6, r0
	blt _080C18DC
	b _080C1978
	.align 2, 0
_080C1920: .4byte gUnknown_03003F30
_080C1924:
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	b _080C1966
_080C1934:
	adds r0, r5, #1
	strb r0, [r3]
	adds r3, #1
	strb r5, [r3]
	ldr r1, _080C1988 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080C1960
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	subs r0, r1, r6
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C1960:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1966:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080C1974
	rsbs r0, r0, #0
_080C1974:
	cmp r2, r0
	blt _080C1934
_080C1978:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1988: .4byte gUnknown_03003F30

	thumb_func_start sub_80C198C
sub_80C198C: @ 0x080C198C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	ldr r1, _080C19DC @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _080C19F4
	ldr r1, _080C19E0 @ =gUnknown_03003F30
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C19E8
	ldr r0, _080C19E4 @ =gUnknown_03002B84
	ldr r0, [r0]
	adds r3, r0, #2
	b _080C1A1C
	.align 2, 0
_080C19DC: .4byte gFlags
_080C19E0: .4byte gUnknown_03003F30
_080C19E4: .4byte gUnknown_03002B84
_080C19E8:
	ldr r0, _080C19F0 @ =gUnknown_03002B84
	ldr r3, [r0]
	b _080C1A1C
	.align 2, 0
_080C19F0: .4byte gUnknown_03002B84
_080C19F4:
	ldr r1, _080C1A0C @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C1A10 @ =gUnknown_03002B84
	ldr r3, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C1A1C
	ldr r1, _080C1A14 @ =gUnknown_03003C5C
	ldr r0, _080C1A18 @ =0x04000042
	b _080C1A20
	.align 2, 0
_080C1A0C: .4byte gUnknown_03003F30
_080C1A10: .4byte gUnknown_03002B84
_080C1A14: .4byte gUnknown_03003C5C
_080C1A18: .4byte 0x04000042
_080C1A1C:
	ldr r1, _080C1A84 @ =gUnknown_03003C5C
	ldr r0, _080C1A88 @ =0x04000040
_080C1A20:
	str r0, [r1]
	mov r0, r8
	subs r1, r0, r6
	mov r2, sl
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r5, r1, #0x10
	asrs r2, r5, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080C1A3A
	rsbs r0, r2, #0
_080C1A3A:
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r1, #0
	mov sb, r0
	cmp r1, #0
	bge _080C1A4E
	rsbs r4, r1, #0
_080C1A4E:
	lsls r0, r4, #0x11
	lsrs r7, r0, #0x10
	ldr r4, _080C1A8C @ =gUnknown_03003F30
	ldrb r0, [r4]
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r3, r3, r0
	adds r4, r2, #0
	cmp r2, #0
	bge _080C1A66
	rsbs r4, r2, #0
_080C1A66:
	adds r0, r1, #0
	cmp r1, #0
	bge _080C1A6E
	rsbs r0, r1, #0
_080C1A6E:
	cmp r4, r0
	ble _080C1B40
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080C1AE0
	mov r0, ip
	strb r0, [r3, #1]
	movs r2, #0
	b _080C1AC8
	.align 2, 0
_080C1A84: .4byte gUnknown_03003C5C
_080C1A88: .4byte 0x04000040
_080C1A8C: .4byte gUnknown_03003F30
_080C1A90:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080C1AC2
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r6, [r3]
	ldr r1, _080C1ADC @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r3, r3, r0
	mov r0, ip
	strb r0, [r3, #1]
_080C1AC2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1AC8:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _080C1AD4
	rsbs r0, r0, #0
_080C1AD4:
	cmp r2, r0
	blt _080C1A90
	strb r6, [r3]
	b _080C1BFA
	.align 2, 0
_080C1ADC: .4byte gUnknown_03003F30
_080C1AE0:
	strb r6, [r3]
	adds r3, #1
	movs r2, #0
	b _080C1B24
_080C1AE8:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080C1B1E
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, ip
	strb r0, [r3]
	ldr r1, _080C1B3C @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	strb r6, [r3]
	adds r3, #1
_080C1B1E:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1B24:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _080C1B30
	rsbs r0, r0, #0
_080C1B30:
	cmp r2, r0
	blt _080C1AE8
	mov r2, ip
	strb r2, [r3]
	b _080C1BFA
	.align 2, 0
_080C1B3C: .4byte gUnknown_03003F30
_080C1B40:
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080C1BA4
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r7, r0, #0x10
	b _080C1B8C
_080C1B5A:
	adds r2, r6, #1
	strb r2, [r3]
	adds r3, #1
	mov r0, ip
	strb r0, [r3]
	ldr r1, _080C1BA0 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080C1B86
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r7
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C1B86:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1B8C:
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov r2, sb
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _080C1B9A
	rsbs r0, r0, #0
_080C1B9A:
	cmp r5, r0
	blt _080C1B5A
	b _080C1BFA
	.align 2, 0
_080C1BA0: .4byte gUnknown_03003F30
_080C1BA4:
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	b _080C1BE8
_080C1BB4:
	adds r0, r6, #1
	strb r0, [r3]
	adds r3, #1
	mov r0, ip
	strb r0, [r3]
	ldr r1, _080C1C08 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080C1BE2
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C1BE2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1BE8:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080C1BF6
	rsbs r0, r0, #0
_080C1BF6:
	cmp r2, r0
	blt _080C1BB4
_080C1BFA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1C08: .4byte gUnknown_03003F30

	thumb_func_start sub_80C1C0C
sub_80C1C0C: @ 0x080C1C0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov ip, r5
	ldr r1, _080C1C5C @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _080C1C74
	ldr r1, _080C1C60 @ =gUnknown_03003F30
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C1C68
	ldr r0, _080C1C64 @ =gUnknown_03002B84
	ldr r0, [r0]
	adds r3, r0, #2
	b _080C1C9C
	.align 2, 0
_080C1C5C: .4byte gFlags
_080C1C60: .4byte gUnknown_03003F30
_080C1C64: .4byte gUnknown_03002B84
_080C1C68:
	ldr r0, _080C1C70 @ =gUnknown_03002B84
	ldr r3, [r0]
	b _080C1C9C
	.align 2, 0
_080C1C70: .4byte gUnknown_03002B84
_080C1C74:
	ldr r1, _080C1C8C @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C1C90 @ =gUnknown_03002B84
	ldr r3, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C1C9C
	ldr r1, _080C1C94 @ =gUnknown_03003C5C
	ldr r0, _080C1C98 @ =0x04000042
	b _080C1CA0
	.align 2, 0
_080C1C8C: .4byte gUnknown_03003F30
_080C1C90: .4byte gUnknown_03002B84
_080C1C94: .4byte gUnknown_03003C5C
_080C1C98: .4byte 0x04000042
_080C1C9C:
	ldr r1, _080C1D04 @ =gUnknown_03003C5C
	ldr r0, _080C1D08 @ =0x04000040
_080C1CA0:
	str r0, [r1]
	mov r0, r8
	subs r1, r0, r6
	mov r2, sl
	subs r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r5, r1, #0x10
	asrs r2, r5, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080C1CBA
	rsbs r0, r2, #0
_080C1CBA:
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r4, r1, #0
	mov sb, r0
	cmp r1, #0
	bge _080C1CCE
	rsbs r4, r1, #0
_080C1CCE:
	lsls r0, r4, #0x11
	lsrs r7, r0, #0x10
	ldr r4, _080C1D0C @ =gUnknown_03003F30
	ldrb r0, [r4]
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, #0
	adds r3, r3, r0
	adds r4, r2, #0
	cmp r2, #0
	bge _080C1CE6
	rsbs r4, r2, #0
_080C1CE6:
	adds r0, r1, #0
	cmp r1, #0
	bge _080C1CEE
	rsbs r0, r1, #0
_080C1CEE:
	cmp r4, r0
	ble _080C1DC4
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080C1D64
	strb r6, [r3, #1]
	movs r2, #0
	b _080C1D48
	.align 2, 0
_080C1D04: .4byte gUnknown_03003C5C
_080C1D08: .4byte 0x04000040
_080C1D0C: .4byte gUnknown_03003F30
_080C1D10:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080C1D42
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, ip
	strb r0, [r3]
	ldr r1, _080C1D60 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r3, r3, r0
	strb r6, [r3, #1]
_080C1D42:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1D48:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _080C1D54
	rsbs r0, r0, #0
_080C1D54:
	cmp r2, r0
	blt _080C1D10
	mov r2, ip
	strb r2, [r3]
	b _080C1E7C
	.align 2, 0
_080C1D60: .4byte gUnknown_03003F30
_080C1D64:
	mov r0, ip
	strb r0, [r3]
	adds r3, #1
	movs r2, #0
	b _080C1DAA
_080C1D6E:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	blt _080C1DA4
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	strb r6, [r3]
	ldr r1, _080C1DC0 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	mov r0, ip
	strb r0, [r3]
	adds r3, #1
_080C1DA4:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1DAA:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #0x10
	cmp r0, #0
	bge _080C1DB6
	rsbs r0, r0, #0
_080C1DB6:
	cmp r2, r0
	blt _080C1D6E
	strb r6, [r3]
	b _080C1E7C
	.align 2, 0
_080C1DC0: .4byte gUnknown_03003F30
_080C1DC4:
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	ble _080C1E28
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	b _080C1E10
_080C1DDE:
	mov r0, ip
	strb r0, [r3]
	adds r3, #1
	strb r6, [r3]
	ldr r1, _080C1E24 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080C1E0A
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C1E0A:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1E10:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080C1E1E
	rsbs r0, r0, #0
_080C1E1E:
	cmp r2, r0
	blt _080C1DDE
	b _080C1E7C
	.align 2, 0
_080C1E24: .4byte gUnknown_03003F30
_080C1E28:
	movs r2, #0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	b _080C1E6A
_080C1E38:
	mov r0, ip
	strb r0, [r3]
	adds r3, #1
	strb r6, [r3]
	ldr r1, _080C1E8C @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r0, r0, r3
	subs r3, r0, #1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080C1E64
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	subs r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C1E64:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C1E6A:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080C1E78
	rsbs r0, r0, #0
_080C1E78:
	cmp r2, r0
	blt _080C1E38
_080C1E7C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C1E8C: .4byte gUnknown_03003F30

	thumb_func_start sub_80C1E90
sub_80C1E90: @ 0x080C1E90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov ip, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _080C1EC4 @ =gFlags
	ldr r0, [r1]
	movs r3, #4
	orrs r0, r3
	str r0, [r1]
	cmp r2, #1
	bls _080C1EDC
	ldr r1, _080C1EC8 @ =gUnknown_03003F30
	strb r3, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080C1ED0
	ldr r0, _080C1ECC @ =gUnknown_03002B84
	ldr r0, [r0]
	adds r7, r0, #2
	b _080C1F04
	.align 2, 0
_080C1EC4: .4byte gFlags
_080C1EC8: .4byte gUnknown_03003F30
_080C1ECC: .4byte gUnknown_03002B84
_080C1ED0:
	ldr r0, _080C1ED8 @ =gUnknown_03002B84
	ldr r7, [r0]
	b _080C1F04
	.align 2, 0
_080C1ED8: .4byte gUnknown_03002B84
_080C1EDC:
	ldr r1, _080C1EF4 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C1EF8 @ =gUnknown_03002B84
	ldr r7, [r0]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080C1F04
	ldr r1, _080C1EFC @ =gUnknown_03003C5C
	ldr r0, _080C1F00 @ =0x04000042
	b _080C1F08
	.align 2, 0
_080C1EF4: .4byte gUnknown_03003F30
_080C1EF8: .4byte gUnknown_03002B84
_080C1EFC: .4byte gUnknown_03003C5C
_080C1F00: .4byte 0x04000042
_080C1F04:
	ldr r1, _080C2008 @ =gUnknown_03003C5C
	ldr r0, _080C200C @ =0x04000040
_080C1F08:
	str r0, [r1]
	mov r2, sp
	mov r1, ip
	ldrb r0, [r1, #2]
	ldrb r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	add r2, sp, #4
	mov r3, ip
	ldrb r0, [r3, #3]
	ldrb r1, [r3, #1]
	subs r0, r0, r1
	strh r0, [r2]
	mov r0, sp
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrb r3, [r3]
	mov r1, ip
	ldrb r4, [r1, #1]
	adds r2, #8
	str r2, [sp, #0x24]
	cmp r0, #0
	bge _080C1F38
	rsbs r0, r0, #0
_080C1F38:
	lsls r0, r0, #1
	ldr r5, [sp, #0x24]
	strh r0, [r5]
	mov r1, sp
	movs r2, #4
	ldrsh r0, [r1, r2]
	adds r1, #0x10
	str r1, [sp, #0x28]
	cmp r0, #0
	bge _080C1F4E
	rsbs r0, r0, #0
_080C1F4E:
	lsls r0, r0, #1
	ldr r5, [sp, #0x28]
	strh r0, [r5]
	mov r1, sp
	mov r2, ip
	ldrb r0, [r2, #4]
	subs r0, r0, r3
	strh r0, [r1, #2]
	ldrb r0, [r2, #5]
	subs r0, r0, r4
	strh r0, [r1, #6]
	mov r0, sp
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _080C1F70
	rsbs r0, r0, #0
_080C1F70:
	lsls r0, r0, #1
	ldr r5, [sp, #0x24]
	strh r0, [r5, #2]
	mov r1, sp
	movs r2, #6
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080C1F82
	rsbs r0, r0, #0
_080C1F82:
	lsls r0, r0, #1
	ldr r3, [sp, #0x28]
	strh r0, [r3, #2]
	add r2, sp, #0x14
	mov r5, ip
	ldrb r0, [r5]
	strb r0, [r2, #1]
	strb r0, [r2]
	ldr r1, _080C2010 @ =gUnknown_03003F30
	ldrb r0, [r1]
	muls r0, r4, r0
	adds r7, r7, r0
	add r1, sp, #8
	mov r3, sp
	ldrh r0, [r3, #4]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldrh r0, [r3, #6]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	ldrb r0, [r5, #5]
	ldrb r3, [r5, #3]
	adds r6, r2, #0
	mov sb, r1
	cmp r0, r3
	bls _080C1FB8
	adds r0, r3, #0
_080C1FB8:
	str r0, [sp, #0x18]
	cmp r4, r0
	bhs _080C209E
	mov r8, sb
_080C1FC0:
	ldrb r0, [r6, #1]
	strb r0, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #1]
	mov r3, r8
	mov r5, sp
	ldrh r2, [r5, #0xc]
	ldrh r0, [r3]
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r0, [r3, #2]
	ldrh r1, [r5, #0xe]
	adds r0, r0, r1
	strh r0, [r3, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sl, r4
	cmp r2, #0
	blt _080C203A
	str r6, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov r2, sb
_080C1FEC:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C2014
	ldr r5, [sp, #0x2c]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _080C2030
	.align 2, 0
_080C2008: .4byte gUnknown_03003C5C
_080C200C: .4byte 0x04000040
_080C2010: .4byte gUnknown_03003F30
_080C2014:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080C201E
	subs r0, #1
	strb r0, [r6]
_080C201E:
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2030
	ldrb r0, [r6]
	strb r0, [r7, #1]
_080C2030:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080C1FEC
_080C203A:
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C208C
	adds r3, r6, #0
	ldr r5, [sp, #0x28]
	mov r4, sb
_080C204A:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2070
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2082
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r7]
	b _080C2082
_080C2070:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080C207A
	subs r0, #1
	strb r0, [r6, #1]
_080C207A:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
_080C2082:
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C204A
_080C208C:
	ldr r2, _080C2150 @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r7, r7, r0
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r5, [sp, #0x18]
	cmp r4, r5
	blo _080C1FC0
_080C209E:
	mov r1, ip
	ldrb r0, [r1, #3]
	ldrb r2, [r1, #5]
	cmp r0, r2
	bne _080C20AA
	b _080C2394
_080C20AA:
	ldr r3, [sp, #0x18]
	cmp r3, r0
	beq _080C20B2
	b _080C2218
_080C20B2:
	mov r2, sp
	ldrb r0, [r1, #6]
	ldrb r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r2]
	mov r5, ip
	ldrb r0, [r5, #7]
	ldrb r1, [r5, #3]
	subs r0, r0, r1
	strh r0, [r2, #4]
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080C20D2
	rsbs r0, r0, #0
_080C20D2:
	lsls r0, r0, #1
	ldr r2, [sp, #0x24]
	strh r0, [r2]
	mov r3, sp
	movs r5, #4
	ldrsh r0, [r3, r5]
	cmp r0, #0
	bge _080C20E4
	rsbs r0, r0, #0
_080C20E4:
	lsls r0, r0, #1
	ldr r1, [sp, #0x28]
	strh r0, [r1]
	mov r2, sp
	ldrh r0, [r2, #4]
	rsbs r0, r0, #0
	mov r3, sb
	strh r0, [r3]
	mov r5, ip
	ldrb r0, [r5, #2]
	strb r0, [r6]
	ldrb r0, [r5, #5]
	str r0, [sp, #0x18]
	cmp r4, r0
	bhs _080C21DE
	mov r8, sb
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x1c]
_080C2108:
	ldrb r0, [r6, #1]
	strb r0, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #1]
	mov r3, r8
	ldr r5, [sp, #0x1c]
	ldrh r2, [r5]
	ldrh r0, [r3]
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r0, [r3, #2]
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sl, r4
	cmp r2, #0
	blt _080C217A
	str r6, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov r2, sb
_080C2134:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C2154
	ldr r5, [sp, #0x2c]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _080C2170
	.align 2, 0
_080C2150: .4byte gUnknown_03003F30
_080C2154:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080C215E
	subs r0, #1
	strb r0, [r6]
_080C215E:
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2170
	ldrb r0, [r6]
	strb r0, [r7, #1]
_080C2170:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080C2134
_080C217A:
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C21CC
	adds r3, r6, #0
	ldr r5, [sp, #0x28]
	mov r4, sb
_080C218A:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C21B0
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C21C2
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r7]
	b _080C21C2
_080C21B0:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080C21BA
	subs r0, #1
	strb r0, [r6, #1]
_080C21BA:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
_080C21C2:
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C218A
_080C21CC:
	ldr r2, _080C2214 @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r7, r7, r0
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r5, [sp, #0x18]
	cmp r4, r5
	blo _080C2108
_080C21DE:
	mov r2, sp
	mov r1, ip
	ldrb r0, [r1, #6]
	ldrb r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r2, #2]
	mov r2, ip
	ldrb r0, [r2, #7]
	ldrb r1, [r2, #5]
	subs r0, r0, r1
	mov r3, sp
	strh r0, [r3, #6]
	mov r0, sp
	movs r5, #2
	ldrsh r0, [r0, r5]
	ldrb r3, [r2, #7]
	cmp r0, #0
	bge _080C2204
	rsbs r0, r0, #0
_080C2204:
	lsls r0, r0, #1
	ldr r1, [sp, #0x24]
	strh r0, [r1, #2]
	mov r2, sp
	movs r5, #6
	ldrsh r0, [r2, r5]
	b _080C2408
	.align 2, 0
_080C2214: .4byte gUnknown_03003F30
_080C2218:
	mov r2, sp
	mov r3, ip
	ldrb r0, [r3, #6]
	ldrb r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r2, #2]
	ldrb r0, [r3, #7]
	ldrb r1, [r3, #5]
	subs r0, r0, r1
	strh r0, [r2, #6]
	mov r0, sp
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	bge _080C2238
	rsbs r0, r0, #0
_080C2238:
	lsls r0, r0, #1
	ldr r1, [sp, #0x24]
	strh r0, [r1, #2]
	mov r2, sp
	movs r3, #6
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _080C224A
	rsbs r0, r0, #0
_080C224A:
	lsls r0, r0, #1
	ldr r5, [sp, #0x28]
	strh r0, [r5, #2]
	mov r1, sp
	ldrh r0, [r1, #6]
	rsbs r0, r0, #0
	mov r2, sb
	strh r0, [r2, #2]
	mov r3, ip
	ldrb r0, [r3, #4]
	strb r0, [r6, #1]
	ldrb r5, [r3, #3]
	str r5, [sp, #0x18]
	cmp r4, r5
	bhs _080C2340
	mov r8, sb
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x20]
_080C226E:
	ldrb r0, [r6, #1]
	strb r0, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #1]
	mov r3, r8
	ldr r1, [sp, #0x20]
	ldrh r2, [r1]
	ldrh r5, [r3]
	adds r2, r2, r5
	strh r2, [r3]
	ldrh r0, [r3, #2]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sl, r4
	cmp r2, #0
	blt _080C22DC
	str r6, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov r2, sb
_080C229A:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C22B6
	ldr r5, [sp, #0x2c]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _080C22D2
_080C22B6:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080C22C0
	subs r0, #1
	strb r0, [r6]
_080C22C0:
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C22D2
	ldrb r0, [r6]
	strb r0, [r7, #1]
_080C22D2:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080C229A
_080C22DC:
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C232E
	adds r3, r6, #0
	ldr r5, [sp, #0x28]
	mov r4, sb
_080C22EC:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2312
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2324
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r7]
	b _080C2324
_080C2312:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080C231C
	subs r0, #1
	strb r0, [r6, #1]
_080C231C:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
_080C2324:
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C22EC
_080C232E:
	ldr r2, _080C2390 @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r7, r7, r0
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r5, [sp, #0x18]
	cmp r4, r5
	blo _080C226E
_080C2340:
	mov r2, sp
	mov r1, ip
	ldrb r0, [r1, #6]
	ldrb r1, [r1, #2]
	subs r0, r0, r1
	strh r0, [r2]
	mov r2, ip
	ldrb r0, [r2, #7]
	ldrb r1, [r2, #3]
	subs r0, r0, r1
	mov r3, sp
	strh r0, [r3, #4]
	mov r0, sp
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrb r3, [r2, #7]
	cmp r0, #0
	bge _080C2366
	rsbs r0, r0, #0
_080C2366:
	lsls r0, r0, #1
	ldr r1, [sp, #0x24]
	strh r0, [r1]
	mov r2, sp
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _080C2378
	rsbs r0, r0, #0
_080C2378:
	lsls r0, r0, #1
	ldr r1, [sp, #0x28]
	strh r0, [r1]
	mov r2, sp
	ldrh r0, [r2, #4]
	rsbs r0, r0, #0
	mov r5, sb
	strh r0, [r5]
	mov r1, ip
	ldrb r0, [r1, #2]
	strb r0, [r6]
	b _080C2424
	.align 2, 0
_080C2390: .4byte gUnknown_03003F30
_080C2394:
	mov r2, sp
	mov r3, ip
	ldrb r0, [r3, #6]
	ldrb r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2]
	add r2, sp, #4
	ldrb r0, [r3, #7]
	ldrb r1, [r3, #3]
	subs r0, r0, r1
	strh r0, [r2]
	mov r0, sp
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldrb r1, [r3, #6]
	mov r8, r1
	ldrb r3, [r3, #7]
	cmp r0, #0
	bge _080C23BC
	rsbs r0, r0, #0
_080C23BC:
	lsls r0, r0, #1
	ldr r5, [sp, #0x24]
	strh r0, [r5]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080C23CC
	rsbs r0, r0, #0
_080C23CC:
	lsls r0, r0, #1
	ldr r5, [sp, #0x28]
	strh r0, [r5]
	ldrh r0, [r2]
	rsbs r0, r0, #0
	mov r1, sb
	strh r0, [r1]
	mov r5, ip
	ldrb r0, [r5, #2]
	strb r0, [r6]
	mov r1, sp
	ldrb r0, [r5, #4]
	mov r5, r8
	subs r0, r5, r0
	strh r0, [r1, #2]
	mov r1, ip
	ldrb r0, [r1, #5]
	subs r0, r3, r0
	strh r0, [r2, #2]
	mov r0, sp
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	bge _080C23FE
	rsbs r0, r0, #0
_080C23FE:
	lsls r0, r0, #1
	ldr r1, [sp, #0x24]
	strh r0, [r1, #2]
	movs r5, #2
	ldrsh r0, [r2, r5]
_080C2408:
	cmp r0, #0
	bge _080C240E
	rsbs r0, r0, #0
_080C240E:
	lsls r0, r0, #1
	ldr r1, [sp, #0x28]
	strh r0, [r1, #2]
	mov r2, sp
	ldrh r0, [r2, #6]
	rsbs r0, r0, #0
	mov r5, sb
	strh r0, [r5, #2]
	mov r1, ip
	ldrb r0, [r1, #4]
	strb r0, [r6, #1]
_080C2424:
	str r3, [sp, #0x18]
	cmp r4, r3
	bhs _080C2502
	mov r8, sb
	ldr r2, [sp, #0x24]
	mov ip, r2
_080C2430:
	ldrb r0, [r6, #1]
	strb r0, [r7]
	ldrb r0, [r6]
	strb r0, [r7, #1]
	mov r3, r8
	mov r5, ip
	ldrh r2, [r5]
	ldrh r0, [r3]
	adds r2, r2, r0
	strh r2, [r3]
	ldrh r0, [r3, #2]
	ldrh r1, [r5, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sl, r4
	cmp r2, #0
	blt _080C249E
	str r6, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	mov r2, sb
_080C245C:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C2478
	ldr r5, [sp, #0x2c]
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _080C2494
_080C2478:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080C2482
	subs r0, #1
	strb r0, [r6]
_080C2482:
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2494
	ldrb r0, [r6]
	strb r0, [r7, #1]
_080C2494:
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080C245C
_080C249E:
	mov r2, r8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C24F0
	adds r3, r6, #0
	ldr r5, [sp, #0x28]
	mov r4, sb
_080C24AE:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C24D4
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C24E6
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r7]
	b _080C24E6
_080C24D4:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _080C24DE
	subs r0, #1
	strb r0, [r6, #1]
_080C24DE:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	strh r0, [r4, #2]
_080C24E6:
	mov r2, sb
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C24AE
_080C24F0:
	ldr r2, _080C2514 @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r7, r7, r0
	mov r3, sl
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r5, [sp, #0x18]
	cmp r4, r5
	blo _080C2430
_080C2502:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C2514: .4byte gUnknown_03003F30

	thumb_func_start sub_80C2518
sub_80C2518: @ 0x080C2518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sl, r1
	mov sb, r3
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	add r6, sp, #4
	ldr r1, _080C2574 @ =gUnknown_082B5304
	adds r0, r6, #0
	movs r2, #4
	bl sub_80CA3B0
	add r5, sp, #0xc
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl sub_80CA410
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_80CA410
	ldr r1, _080C2578 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _080C2590
	ldr r1, _080C257C @ =gUnknown_03003F30
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C2584
	ldr r0, _080C2580 @ =gUnknown_03002B84
	ldr r0, [r0]
	adds r4, r0, #2
	b _080C25B8
	.align 2, 0
_080C2574: .4byte gUnknown_082B5304
_080C2578: .4byte gFlags
_080C257C: .4byte gUnknown_03003F30
_080C2580: .4byte gUnknown_03002B84
_080C2584:
	ldr r0, _080C258C @ =gUnknown_03002B84
	ldr r4, [r0]
	b _080C25B8
	.align 2, 0
_080C258C: .4byte gUnknown_03002B84
_080C2590:
	ldr r1, _080C25A8 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C25AC @ =gUnknown_03002B84
	ldr r4, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C25B8
	ldr r1, _080C25B0 @ =gUnknown_03003C5C
	ldr r0, _080C25B4 @ =0x04000042
	b _080C25BC
	.align 2, 0
_080C25A8: .4byte gUnknown_03003F30
_080C25AC: .4byte gUnknown_03002B84
_080C25B0: .4byte gUnknown_03003C5C
_080C25B4: .4byte 0x04000042
_080C25B8:
	ldr r1, _080C26CC @ =gUnknown_03003C5C
	ldr r0, _080C26D0 @ =0x04000040
_080C25BC:
	str r0, [r1]
	mov r1, sl
	ldrb r0, [r1, #5]
	ldrb r2, [r1, #1]
	adds r5, r2, #0
	adds r1, r0, #0
	cmp r0, r5
	bls _080C25CE
	adds r0, r2, #0
_080C25CE:
	adds r3, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp ip, r5
	bhs _080C25DC
	adds r1, r2, #0
_080C25DC:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r2, _080C26D4 @ =gUnknown_03003F30
	ldrb r0, [r2]
	muls r0, r3, r0
	adds r4, r4, r0
	mov r2, sp
	mov r7, sl
	ldrb r0, [r7, #2]
	ldrb r1, [r7]
	subs r0, r0, r1
	strh r0, [r2]
	adds r7, r6, #0
	mov r1, sl
	ldrb r0, [r1, #3]
	ldrb r1, [r1, #1]
	subs r0, r0, r1
	strh r0, [r7]
	mov r0, sp
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _080C260E
	rsbs r0, r0, #0
_080C260E:
	lsls r0, r0, #1
	mov r1, sp
	strh r0, [r1, #0xc]
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bge _080C261E
	rsbs r0, r0, #0
_080C261E:
	lsls r0, r0, #1
	mov r1, sp
	strh r0, [r1, #0x10]
	mov r2, sp
	mov r1, sl
	ldrb r0, [r1, #6]
	ldrb r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r2, #2]
	mov r2, sl
	ldrb r0, [r2, #7]
	ldrb r1, [r2, #5]
	subs r0, r0, r1
	strh r0, [r7, #2]
	mov r0, sp
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080C2646
	rsbs r0, r0, #0
_080C2646:
	lsls r0, r0, #1
	mov r2, sp
	strh r0, [r2, #0xe]
	movs r1, #2
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bge _080C2656
	rsbs r0, r0, #0
_080C2656:
	lsls r0, r0, #1
	mov r2, sp
	strh r0, [r2, #0x12]
	add r2, sp, #0x14
	mov r7, sl
	ldrb r0, [r7]
	strb r0, [r2]
	ldrb r0, [r7, #4]
	strb r0, [r2, #1]
	add r1, sp, #8
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldrh r0, [r6, #2]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	adds r6, r2, #0
	cmp r3, r8
	bne _080C267E
	b _080C2790
_080C267E:
	cmp r5, ip
	bhs _080C2714
	cmp r3, r8
	blo _080C2688
	b _080C2790
_080C2688:
	adds r7, r6, #0
	adds r5, r1, #0
_080C268C:
	mov r0, sb
	strb r0, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #1]
	mov r1, sp
	ldrh r0, [r1, #0xc]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	lsls r0, r0, #0x10
	adds r3, #1
	mov ip, r3
	cmp r0, #0
	blt _080C26FC
	add r2, sp, #8
	add r3, sp, #0x10
_080C26AC:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C26D8
	ldrb r0, [r7]
	cmp sb, r0
	ble _080C26C0
	adds r0, #1
	strb r0, [r6]
_080C26C0:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	b _080C26F4
	.align 2, 0
_080C26CC: .4byte gUnknown_03003C5C
_080C26D0: .4byte 0x04000040
_080C26D4: .4byte gUnknown_03003F30
_080C26D8:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080C26E2
	subs r0, #1
	strb r0, [r6]
_080C26E2:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C26F4
	ldrb r0, [r6]
	strb r0, [r4, #1]
_080C26F4:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080C26AC
_080C26FC:
	ldr r2, _080C2710 @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r4, r4, r0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _080C268C
	b _080C2790
	.align 2, 0
_080C2710: .4byte gUnknown_03003F30
_080C2714:
	cmp r3, r8
	bhs _080C2790
	adds r7, r6, #0
	add r5, sp, #8
_080C271C:
	ldrb r0, [r7, #1]
	strb r0, [r4]
	movs r0, #0
	strb r0, [r4, #1]
	ldrh r1, [r5, #2]
	mov r2, sp
	ldrh r0, [r2, #0xe]
	adds r1, r1, r0
	strh r1, [r5, #2]
	lsls r1, r1, #0x10
	adds r3, #1
	mov ip, r3
	cmp r1, #0
	blt _080C2780
	add r2, sp, #8
	add r3, sp, #0x10
_080C273C:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2766
	ldrb r0, [r6, #1]
	cmp sb, r0
	ble _080C2750
	adds r0, #1
	strb r0, [r6, #1]
_080C2750:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2778
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r4]
	b _080C2778
_080C2766:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _080C2770
	subs r0, #1
	strb r0, [r6, #1]
_080C2770:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
_080C2778:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C273C
_080C2780:
	ldr r1, _080C27F4 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r4, r4, r0
	mov r2, ip
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _080C271C
_080C2790:
	mov r7, sl
	ldrb r0, [r7, #7]
	ldrb r1, [r7, #3]
	cmp r0, r1
	bls _080C279C
	adds r0, r1, #0
_080C279C:
	mov r8, r0
	cmp r3, r8
	bhs _080C287C
	adds r7, r6, #0
	add r5, sp, #8
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x18]
_080C27AC:
	ldrb r0, [r7, #1]
	strb r0, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #1]
	ldr r1, [sp, #0x18]
	ldrh r2, [r1]
	ldrh r0, [r5]
	adds r2, r2, r0
	strh r2, [r5]
	ldrh r1, [r1, #2]
	mov ip, r1
	ldrh r0, [r5, #2]
	add r0, ip
	strh r0, [r5, #2]
	lsls r2, r2, #0x10
	adds r3, #1
	mov ip, r3
	cmp r2, #0
	blt _080C281C
	add r2, sp, #8
	add r3, sp, #0x10
_080C27D6:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C27F8
	ldrb r0, [r7]
	cmp sb, r0
	ble _080C27EA
	adds r0, #1
	strb r0, [r6]
_080C27EA:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	b _080C2814
	.align 2, 0
_080C27F4: .4byte gUnknown_03003F30
_080C27F8:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080C2802
	subs r0, #1
	strb r0, [r6]
_080C2802:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2814
	ldrb r0, [r6]
	strb r0, [r4, #1]
_080C2814:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080C27D6
_080C281C:
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C286C
	add r2, sp, #8
	add r3, sp, #0x10
_080C2828:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2852
	ldrb r0, [r6, #1]
	cmp sb, r0
	ble _080C283C
	adds r0, #1
	strb r0, [r6, #1]
_080C283C:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2864
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r4]
	b _080C2864
_080C2852:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _080C285C
	subs r0, #1
	strb r0, [r6, #1]
_080C285C:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
_080C2864:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C2828
_080C286C:
	ldr r2, _080C28EC @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r4, r4, r0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _080C27AC
_080C287C:
	mov r2, sl
	ldrb r0, [r2, #7]
	ldrb r1, [r2, #3]
	adds r2, r1, #0
	adds r7, r0, #0
	cmp r0, r2
	bhs _080C288C
	adds r0, r1, #0
_080C288C:
	mov r8, r0
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r2, r0
	bhi _080C2920
	cmp r3, r8
	blo _080C289C
	b _080C299C
_080C289C:
	adds r7, r6, #0
	add r5, sp, #8
_080C28A0:
	ldrb r0, [r7, #1]
	strb r0, [r4]
	movs r0, #0
	strb r0, [r4, #1]
	ldrh r1, [r5, #2]
	mov r2, sp
	ldrh r0, [r2, #0xe]
	adds r1, r1, r0
	strh r1, [r5, #2]
	lsls r1, r1, #0x10
	adds r3, #1
	mov ip, r3
	cmp r1, #0
	blt _080C290A
	add r2, sp, #8
	add r3, sp, #0x10
_080C28C0:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C28F0
	ldrb r0, [r6, #1]
	cmp sb, r0
	ble _080C28D4
	adds r0, #1
	strb r0, [r6, #1]
_080C28D4:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2902
	ldrb r0, [r6, #1]
	adds r0, #1
	strb r0, [r4]
	b _080C2902
	.align 2, 0
_080C28EC: .4byte gUnknown_03003F30
_080C28F0:
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _080C28FA
	subs r0, #1
	strb r0, [r6, #1]
_080C28FA:
	ldrh r0, [r2, #2]
	ldrh r1, [r3, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
_080C2902:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C28C0
_080C290A:
	ldr r1, _080C291C @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r4, r4, r0
	mov r2, ip
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _080C28A0
	b _080C299C
	.align 2, 0
_080C291C: .4byte gUnknown_03003F30
_080C2920:
	cmp r3, r8
	bhs _080C299C
	adds r7, r6, #0
	add r5, sp, #8
_080C2928:
	mov r0, sb
	strb r0, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #1]
	mov r1, sp
	ldrh r0, [r1, #0xc]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	lsls r0, r0, #0x10
	adds r3, #1
	mov ip, r3
	cmp r0, #0
	blt _080C298C
	add r2, sp, #8
	add r3, sp, #0x10
_080C2948:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080C2966
	ldrb r0, [r7]
	cmp sb, r0
	ble _080C295C
	adds r0, #1
	strb r0, [r6]
_080C295C:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	b _080C2984
_080C2966:
	adds r1, r6, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080C2972
	subs r0, #1
	strb r0, [r1]
_080C2972:
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2984
	ldrb r0, [r6]
	strb r0, [r4, #1]
_080C2984:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080C2948
_080C298C:
	ldr r2, _080C29AC @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r4, r4, r0
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _080C2928
_080C299C:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C29AC: .4byte gUnknown_03003F30

	thumb_func_start sub_80C29B0
sub_80C29B0: @ 0x080C29B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sl, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	add r6, sp, #4
	ldr r1, _080C2A0C @ =gUnknown_082B5304
	adds r0, r6, #0
	movs r2, #4
	bl sub_80CA3B0
	add r5, sp, #0xc
	adds r0, r5, #0
	movs r1, #0
	movs r2, #4
	bl sub_80CA410
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_80CA410
	ldr r1, _080C2A10 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	mov r8, r6
	cmp r7, #1
	bls _080C2A28
	ldr r1, _080C2A14 @ =gUnknown_03003F30
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C2A1C
	ldr r0, _080C2A18 @ =gUnknown_03002B84
	ldr r0, [r0]
	adds r5, r0, #2
	b _080C2A50
	.align 2, 0
_080C2A0C: .4byte gUnknown_082B5304
_080C2A10: .4byte gFlags
_080C2A14: .4byte gUnknown_03003F30
_080C2A18: .4byte gUnknown_03002B84
_080C2A1C:
	ldr r0, _080C2A24 @ =gUnknown_03002B84
	ldr r5, [r0]
	b _080C2A50
	.align 2, 0
_080C2A24: .4byte gUnknown_03002B84
_080C2A28:
	ldr r1, _080C2A40 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C2A44 @ =gUnknown_03002B84
	ldr r5, [r0]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080C2A50
	ldr r1, _080C2A48 @ =gUnknown_03003C5C
	ldr r0, _080C2A4C @ =0x04000042
	b _080C2A54
	.align 2, 0
_080C2A40: .4byte gUnknown_03003F30
_080C2A44: .4byte gUnknown_03002B84
_080C2A48: .4byte gUnknown_03003C5C
_080C2A4C: .4byte 0x04000042
_080C2A50:
	ldr r1, _080C2B64 @ =gUnknown_03003C5C
	ldr r0, _080C2B68 @ =0x04000040
_080C2A54:
	str r0, [r1]
	mov r1, sl
	ldrb r0, [r1, #5]
	ldrb r2, [r1, #1]
	adds r7, r2, #0
	adds r1, r0, #0
	cmp r0, r7
	bls _080C2A66
	adds r0, r2, #0
_080C2A66:
	adds r4, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp sb, r7
	bhs _080C2A74
	adds r1, r2, #0
_080C2A74:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r2, _080C2B6C @ =gUnknown_03003F30
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r5, r5, r0
	mov r2, sp
	mov r3, sl
	ldrb r0, [r3, #2]
	ldrb r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	mov r3, r8
	mov r6, sl
	ldrb r0, [r6, #3]
	ldrb r1, [r6, #1]
	subs r0, r0, r1
	strh r0, [r3]
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080C2AA6
	rsbs r0, r0, #0
_080C2AA6:
	lsls r0, r0, #1
	mov r2, sp
	strh r0, [r2, #0xc]
	movs r6, #0
	ldrsh r0, [r3, r6]
	cmp r0, #0
	bge _080C2AB6
	rsbs r0, r0, #0
_080C2AB6:
	lsls r0, r0, #1
	mov r1, sp
	strh r0, [r1, #0x10]
	mov r2, sp
	mov r6, sl
	ldrb r0, [r6, #6]
	ldrb r1, [r6, #4]
	subs r0, r0, r1
	strh r0, [r2, #2]
	ldrb r0, [r6, #7]
	ldrb r1, [r6, #5]
	subs r0, r0, r1
	strh r0, [r3, #2]
	mov r0, sp
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080C2ADC
	rsbs r0, r0, #0
_080C2ADC:
	lsls r0, r0, #1
	mov r2, sp
	strh r0, [r2, #0xe]
	movs r6, #2
	ldrsh r0, [r3, r6]
	cmp r0, #0
	bge _080C2AEC
	rsbs r0, r0, #0
_080C2AEC:
	lsls r0, r0, #1
	mov r1, sp
	strh r0, [r1, #0x12]
	add r2, sp, #0x14
	mov r3, sl
	ldrb r0, [r3]
	strb r0, [r2]
	ldrb r0, [r3, #4]
	strb r0, [r2, #1]
	add r1, sp, #8
	mov r6, r8
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldrh r0, [r6, #2]
	rsbs r0, r0, #0
	strh r0, [r1, #2]
	mov r8, r2
	mov ip, r1
	ldr r0, [sp, #0x18]
	cmp r4, r0
	bne _080C2B1A
	b _080C2C2C
_080C2B1A:
	cmp r7, sb
	bhs _080C2BAC
	cmp r4, r0
	blo _080C2B24
	b _080C2C2C
_080C2B24:
	movs r0, #0xf0
	strb r0, [r5]
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #1]
	add r2, sp, #8
	mov r3, sp
	ldrh r0, [r3, #0xc]
	ldrh r6, [r2]
	adds r0, r0, r6
	strh r0, [r2]
	lsls r0, r0, #0x10
	adds r4, #1
	mov sb, r4
	cmp r0, #0
	blt _080C2B94
	mov r3, r8
	add r4, sp, #0x10
	mov r6, ip
_080C2B4A:
	mov r0, sp
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	ble _080C2B70
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrh r0, [r2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r2]
	b _080C2B8A
	.align 2, 0
_080C2B64: .4byte gUnknown_03003C5C
_080C2B68: .4byte 0x04000040
_080C2B6C: .4byte gUnknown_03003F30
_080C2B70:
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	ldrh r0, [r6]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2B8A
	mov r1, r8
	ldrb r0, [r1]
	strb r0, [r5, #1]
_080C2B8A:
	mov r2, ip
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bge _080C2B4A
_080C2B94:
	ldr r1, _080C2BA8 @ =gUnknown_03003F30
	ldrb r0, [r1]
	adds r5, r5, r0
	mov r2, sb
	lsls r0, r2, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp, #0x18]
	cmp r4, r3
	blo _080C2B24
	b _080C2C2C
	.align 2, 0
_080C2BA8: .4byte gUnknown_03003F30
_080C2BAC:
	ldr r6, [sp, #0x18]
	cmp r4, r6
	bhs _080C2C2C
	mov r7, ip
_080C2BB4:
	mov r1, r8
	ldrb r0, [r1, #1]
	strb r0, [r5]
	movs r0, #0
	strb r0, [r5, #1]
	adds r2, r7, #0
	ldrh r1, [r2, #2]
	mov r3, sp
	ldrh r0, [r3, #0xe]
	adds r1, r1, r0
	strh r1, [r2, #2]
	lsls r1, r1, #0x10
	adds r4, #1
	mov sb, r4
	cmp r1, #0
	blt _080C2C1A
	mov r3, r8
	add r4, sp, #0x10
	mov r6, ip
_080C2BDA:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2C02
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2C10
	mov r1, r8
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r5]
	b _080C2C10
_080C2C02:
	ldrb r0, [r3, #1]
	subs r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r6, #2]
_080C2C10:
	mov r2, ip
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C2BDA
_080C2C1A:
	ldr r2, _080C2C90 @ =gUnknown_03003F30
	ldrb r0, [r2]
	adds r5, r5, r0
	mov r3, sb
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	ldr r6, [sp, #0x18]
	cmp r4, r6
	blo _080C2BB4
_080C2C2C:
	mov r7, sl
	ldrb r0, [r7, #7]
	ldrb r1, [r7, #3]
	cmp r0, r1
	bls _080C2C38
	adds r0, r1, #0
_080C2C38:
	str r0, [sp, #0x18]
	cmp r4, r0
	bhs _080C2D1E
	mov r7, ip
	add r0, sp, #0xc
	mov sl, r0
_080C2C44:
	mov r1, r8
	ldrb r0, [r1, #1]
	strb r0, [r5]
	ldrb r0, [r1]
	strb r0, [r5, #1]
	adds r3, r7, #0
	mov r6, sl
	ldrh r2, [r6]
	ldrh r0, [r7]
	adds r2, r2, r0
	strh r2, [r7]
	ldrh r0, [r7, #2]
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	strh r0, [r7, #2]
	lsls r2, r2, #0x10
	adds r4, #1
	mov sb, r4
	cmp r2, #0
	blt _080C2CBC
	mov r2, r8
	add r4, sp, #0x10
	mov r1, ip
	str r1, [sp, #0x1c]
_080C2C74:
	mov r0, sp
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	ble _080C2C94
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrh r0, [r3]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r3]
	b _080C2CB2
	.align 2, 0
_080C2C90: .4byte gUnknown_03003F30
_080C2C94:
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ldr r1, [sp, #0x1c]
	ldrh r0, [r1]
	ldrh r1, [r4]
	subs r0, r0, r1
	ldr r3, [sp, #0x1c]
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2CB2
	mov r6, r8
	ldrb r0, [r6]
	strb r0, [r5, #1]
_080C2CB2:
	mov r3, ip
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _080C2C74
_080C2CBC:
	adds r2, r7, #0
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2D0C
	mov r3, r8
	add r4, sp, #0x10
	mov r6, ip
_080C2CCC:
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C2CF4
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r2, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080C2D02
	mov r2, r8
	ldrb r0, [r2, #1]
	adds r0, #1
	strb r0, [r5]
	b _080C2D02
_080C2CF4:
	ldrb r0, [r3, #1]
	subs r0, #1
	strb r0, [r3, #1]
	ldrh r0, [r6, #2]
	ldrh r1, [r4, #2]
	subs r0, r0, r1
	strh r0, [r6, #2]
_080C2D02:
	mov r2, ip
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C2CCC
_080C2D0C:
	ldr r3, _080C2D30 @ =gUnknown_03003F30
	ldrb r0, [r3]
	adds r5, r5, r0
	mov r6, sb
	lsls r0, r6, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x18]
	cmp r4, r0
	blo _080C2C44
_080C2D1E:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C2D30: .4byte gUnknown_03003F30

	thumb_func_start sub_80C2D34
sub_80C2D34: @ 0x080C2D34
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov ip, r3
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	muls r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _080C2D8C @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r7, #1
	bls _080C2DA4
	ldr r1, _080C2D90 @ =gUnknown_03003F30
	strb r2, [r1]
	movs r0, #1
	ands r0, r7
	adds r2, r1, #0
	cmp r0, #0
	beq _080C2D98
	ldr r0, _080C2D94 @ =gUnknown_03002B84
	ldr r0, [r0]
	adds r4, r0, #2
	b _080C2DD0
	.align 2, 0
_080C2D8C: .4byte gFlags
_080C2D90: .4byte gUnknown_03003F30
_080C2D94: .4byte gUnknown_03002B84
_080C2D98:
	ldr r0, _080C2DA0 @ =gUnknown_03002B84
	ldr r4, [r0]
	b _080C2DD0
	.align 2, 0
_080C2DA0: .4byte gUnknown_03002B84
_080C2DA4:
	ldr r1, _080C2DC0 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C2DC4 @ =gUnknown_03002B84
	ldr r4, [r0]
	movs r0, #1
	ands r0, r7
	adds r2, r1, #0
	cmp r0, #0
	beq _080C2DD0
	ldr r1, _080C2DC8 @ =gUnknown_03003C5C
	ldr r0, _080C2DCC @ =0x04000042
	b _080C2DD4
	.align 2, 0
_080C2DC0: .4byte gUnknown_03003F30
_080C2DC4: .4byte gUnknown_03002B84
_080C2DC8: .4byte gUnknown_03003C5C
_080C2DCC: .4byte 0x04000042
_080C2DD0:
	ldr r1, _080C2E3C @ =gUnknown_03003C5C
	ldr r0, _080C2E40 @ =0x04000040
_080C2DD4:
	str r0, [r1]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	subs r0, r1, r6
	cmp r0, r5
	ble _080C2DE6
	subs r0, r3, r5
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080C2DE6:
	mov r7, r8
	subs r0, r7, r1
	cmp r0, r5
	ble _080C2DF6
	adds r0, r3, r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080C2DF6:
	ldrb r0, [r2]
	muls r0, r6, r0
	adds r4, r4, r0
	cmp r6, r8
	bhs _080C2E88
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
_080C2E06:
	subs r0, r6, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r0, #0
	muls r7, r0, r7
	adds r0, r7, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	subs r0, r1, r0
	str r3, [sp]
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp]
	cmp r0, #0
	bge _080C2E44
	movs r0, #0
	strb r0, [r4]
	b _080C2E50
	.align 2, 0
_080C2E3C: .4byte gUnknown_03003C5C
_080C2E40: .4byte 0x04000040
_080C2E44:
	cmp r0, #0xf0
	ble _080C2E4E
	movs r0, #0xf0
	strb r0, [r4]
	b _080C2E50
_080C2E4E:
	strb r1, [r4]
_080C2E50:
	adds r4, #1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _080C2E68
	movs r0, #0xf0
	strb r0, [r4]
	b _080C2E74
_080C2E68:
	cmp r0, #0
	bge _080C2E72
	movs r0, #0
	strb r0, [r4]
	b _080C2E74
_080C2E72:
	strb r1, [r4]
_080C2E74:
	adds r4, #1
	ldr r0, _080C2E98 @ =gUnknown_03003F30
	ldrb r0, [r0]
	subs r0, #2
	adds r4, r4, r0
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, r8
	blo _080C2E06
_080C2E88:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C2E98: .4byte gUnknown_03003F30

	thumb_func_start sub_80C2E9C
sub_80C2E9C: @ 0x080C2E9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, [sp, #0x38]
	ldr r5, [sp, #0x3c]
	ldr r6, [sp, #0x40]
	ldr r7, [sp, #0x44]
	mov r8, r7
	ldr r7, [sp, #0x48]
	mov sb, r7
	ldr r7, [sp, #0x4c]
	mov sl, r7
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov ip, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #4]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r5, [sp, #8]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r1, r8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	mov r2, sb
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	mov r5, sl
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, [sp, #0x50]
	lsls r1, r1, #0x10
	str r1, [sp, #0x14]
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r2, _080C2F9C @ =gFlags
	ldr r1, [r2]
	movs r3, #4
	orrs r1, r3
	str r1, [r2]
	ldr r1, _080C2FA0 @ =gUnknown_03003C5C
	lsrs r0, r0, #0x16
	ldr r2, _080C2FA4 @ =0x04000010
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _080C2FA8 @ =gUnknown_03003F30
	strb r3, [r0]
	ldr r0, _080C2FAC @ =gUnknown_03002B84
	lsls r1, r7, #2
	ldr r0, [r0]
	adds r1, r0, r1
	ldr r0, [sp]
	cmp r7, r0
	bhs _080C2F8A
	ldr r4, _080C2FB0 @ =gUnknown_082B48B4
	ldr r3, _080C2FB4 @ =0x000003FF
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r5, _080C2FB8 @ =0x000001FF
	adds r2, r5, #0
	mov r5, r8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
_080C2F38:
	mov r0, ip
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldr r5, [sp, #4]
	muls r0, r5, r0
	asrs r0, r0, #0xe
	add r0, sb
	ands r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r0, r6, #0
	ands r0, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldr r5, [sp, #0xc]
	muls r0, r5, r0
	asrs r0, r0, #0xe
	add r0, r8
	ands r0, r2
	strh r0, [r1]
	adds r1, #2
	ldr r0, [sp, #8]
	add r0, ip
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r5, [sp, #0x10]
	adds r0, r6, r5
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	blo _080C2F38
_080C2F8A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C2F9C: .4byte gFlags
_080C2FA0: .4byte gUnknown_03003C5C
_080C2FA4: .4byte 0x04000010
_080C2FA8: .4byte gUnknown_03003F30
_080C2FAC: .4byte gUnknown_03002B84
_080C2FB0: .4byte gUnknown_082B48B4
_080C2FB4: .4byte 0x000003FF
_080C2FB8: .4byte 0x000001FF

	thumb_func_start sub_80C2FBC
sub_80C2FBC: @ 0x080C2FBC
	push {r4, r5, r6, r7, lr}
	adds r7, r3, #0
	ldr r3, [sp, #0x14]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _080C3020 @ =gFlags
	ldr r1, [r2]
	movs r3, #4
	orrs r1, r3
	str r1, [r2]
	ldr r1, _080C3024 @ =gUnknown_03003C5C
	lsrs r0, r0, #0x16
	ldr r2, _080C3028 @ =0x04000010
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _080C302C @ =gUnknown_03003F30
	strb r3, [r0]
	ldr r0, _080C3030 @ =gUnknown_03002B84
	lsls r1, r5, #2
	ldr r0, [r0]
	adds r2, r0, r1
	subs r4, r4, r5
	ldr r1, _080C3034 @ =0x000001FF
	adds r0, r1, #0
	ands r4, r0
	ands r7, r0
	cmp r5, r6
	bhs _080C3018
_080C2FFE:
	strh r7, [r2]
	adds r2, #2
	adds r0, r4, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	strh r0, [r2]
	adds r2, #2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r6
	blo _080C2FFE
_080C3018:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3020: .4byte gFlags
_080C3024: .4byte gUnknown_03003C5C
_080C3028: .4byte 0x04000010
_080C302C: .4byte gUnknown_03003F30
_080C3030: .4byte gUnknown_03002B84
_080C3034: .4byte 0x000001FF

	thumb_func_start sub_80C3038
sub_80C3038: @ 0x080C3038
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r4, [sp, #0x18]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _080C30A0 @ =gFlags
	ldr r1, [r2]
	movs r3, #4
	orrs r1, r3
	str r1, [r2]
	ldr r1, _080C30A4 @ =gUnknown_03003C5C
	lsrs r0, r0, #0x16
	ldr r2, _080C30A8 @ =0x04000010
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _080C30AC @ =gUnknown_03003F30
	strb r3, [r0]
	cmp r5, r7
	bhs _080C3098
	ldr r2, _080C30B0 @ =0x000001FF
	adds r1, r6, #0
	ands r1, r2
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [sp]
	ldr r2, _080C30B4 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _080C30B8 @ =gUnknown_03002B84
	lsls r1, r5, #2
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [r2, #4]
	subs r0, r7, r5
	movs r1, #0x85
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_080C3098:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C30A0: .4byte gFlags
_080C30A4: .4byte gUnknown_03003C5C
_080C30A8: .4byte 0x04000010
_080C30AC: .4byte gUnknown_03003F30
_080C30B0: .4byte 0x000001FF
_080C30B4: .4byte 0x040000D4
_080C30B8: .4byte gUnknown_03002B84

	thumb_func_start sub_80C30BC
sub_80C30BC: @ 0x080C30BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	ldr r6, [sp, #0x28]
	mov r8, r6
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov sb, r5
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r2, _080C3154 @ =gFlags
	ldr r1, [r2]
	movs r3, #4
	orrs r1, r3
	str r1, [r2]
	ldr r1, _080C3158 @ =gUnknown_03003C5C
	lsrs r0, r0, #0x16
	ldr r2, _080C315C @ =0x04000010
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _080C3160 @ =gUnknown_03003F30
	strb r3, [r0]
	ldr r0, _080C3164 @ =gUnknown_03002B84
	lsls r1, r7, #2
	ldr r0, [r0]
	adds r2, r0, r1
	cmp r7, ip
	bhs _080C3144
	ldr r0, _080C3168 @ =0x000001FF
	adds r3, r0, #0
_080C3116:
	mov r1, sb
	adds r0, r1, r6
	ands r0, r3
	strh r0, [r2]
	adds r2, #2
	strh r5, [r2]
	adds r2, #2
	lsls r1, r4, #0x18
	asrs r1, r1, #0x18
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, ip
	blo _080C3116
_080C3144:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3154: .4byte gFlags
_080C3158: .4byte gUnknown_03003C5C
_080C315C: .4byte 0x04000010
_080C3160: .4byte gUnknown_03003F30
_080C3164: .4byte gUnknown_03002B84
_080C3168: .4byte 0x000001FF

	thumb_func_start sub_80C316C
sub_80C316C: @ 0x080C316C
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080C31A8 @ =gFlags
	ldr r0, [r1]
	movs r2, #4
	orrs r0, r2
	str r0, [r1]
	cmp r6, #1
	bls _080C31C0
	ldr r1, _080C31AC @ =gUnknown_03003F30
	strb r2, [r1]
	movs r0, #1
	ands r0, r6
	adds r6, r1, #0
	cmp r0, #0
	beq _080C31B4
	ldr r0, _080C31B0 @ =gUnknown_03002B84
	ldr r0, [r0]
	adds r2, r0, #2
	b _080C31EC
	.align 2, 0
_080C31A8: .4byte gFlags
_080C31AC: .4byte gUnknown_03003F30
_080C31B0: .4byte gUnknown_03002B84
_080C31B4:
	ldr r0, _080C31BC @ =gUnknown_03002B84
	ldr r2, [r0]
	b _080C31EC
	.align 2, 0
_080C31BC: .4byte gUnknown_03002B84
_080C31C0:
	ldr r1, _080C31DC @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080C31E0 @ =gUnknown_03002B84
	ldr r2, [r0]
	movs r0, #1
	ands r0, r6
	adds r6, r1, #0
	cmp r0, #0
	beq _080C31EC
	ldr r1, _080C31E4 @ =gUnknown_03003C5C
	ldr r0, _080C31E8 @ =0x04000042
	b _080C31F0
	.align 2, 0
_080C31DC: .4byte gUnknown_03003F30
_080C31E0: .4byte gUnknown_03002B84
_080C31E4: .4byte gUnknown_03003C5C
_080C31E8: .4byte 0x04000042
_080C31EC:
	ldr r1, _080C321C @ =gUnknown_03003C5C
	ldr r0, _080C3220 @ =0x04000040
_080C31F0:
	str r0, [r1]
	ldrb r0, [r6]
	muls r0, r5, r0
	adds r2, r2, r0
	cmp r5, r4
	bhs _080C3214
	adds r1, r6, #0
_080C31FE:
	strb r3, [r2]
	adds r2, #1
	strb r7, [r2]
	ldrb r0, [r1]
	adds r0, r0, r2
	subs r2, r0, #1
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r4
	blo _080C31FE
_080C3214:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C321C: .4byte gUnknown_03003C5C
_080C3220: .4byte 0x04000040

	thumb_func_start VramMalloc
VramMalloc: @ 0x080C3224
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, r5, #3
	lsrs r5, r0, #2
	movs r4, #0
	ldr r1, _080C3260 @ =gVramHeapMaxTileSlots
	ldrh r0, [r1]
	lsrs r0, r0, #2
	mov sb, r1
	cmp r4, r0
	bhs _080C32C2
	ldr r0, _080C3264 @ =gVramHeapState
	mov r8, r0
_080C3246:
	lsls r1, r4, #1
	mov r2, r8
	adds r0, r1, r2
	ldrh r2, [r0]
	cmp r2, #0
	bne _080C32A8
	movs r3, #0
	ldr r7, _080C3260 @ =gVramHeapMaxTileSlots
	mov ip, r7
	ldr r0, _080C3264 @ =gVramHeapState
	mov sl, r0
	ldr r6, _080C3268 @ =ewram_end
	b _080C3272
	.align 2, 0
_080C3260: .4byte gVramHeapMaxTileSlots
_080C3264: .4byte gVramHeapState
_080C3268: .4byte ewram_end
_080C326C:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080C3272:
	cmp r3, r5
	bhs _080C3290
	adds r2, r4, r3
	mov r7, ip
	ldrh r0, [r7]
	lsrs r0, r0, #2
	cmp r2, r0
	blt _080C3286
	ldr r0, [r6]
	b _080C32C6
_080C3286:
	lsls r0, r2, #1
	add r0, sl
	ldrh r0, [r0]
	cmp r0, #0
	beq _080C326C
_080C3290:
	cmp r3, r5
	bne _080C32B2
	mov r2, r8
	adds r0, r1, r2
	strh r5, [r0]
	ldr r0, _080C32A4 @ =gUnknown_03002C50
	lsls r1, r4, #7
	ldr r0, [r0]
	adds r0, r0, r1
	b _080C32C6
	.align 2, 0
_080C32A4: .4byte gUnknown_03002C50
_080C32A8:
	ldr r7, _080C32D4 @ =0x0000FFFF
	adds r0, r4, r7
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C32B2:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #2
	cmp r4, r0
	blo _080C3246
_080C32C2:
	ldr r0, _080C32D8 @ =ewram_end
	ldr r0, [r0]
_080C32C6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C32D4: .4byte 0x0000FFFF
_080C32D8: .4byte ewram_end

	thumb_func_start VramResetHeapState
VramResetHeapState: @ 0x080C32DC
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080C32F8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _080C32FC @ =gVramHeapState
	str r0, [r1, #4]
	ldr r0, _080C3300 @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_080C32F8: .4byte 0x040000D4
_080C32FC: .4byte gVramHeapState
_080C3300: .4byte 0x81000100

	thumb_func_start VramFree
VramFree: @ 0x080C3304
	push {lr}
	adds r1, r0, #0
	ldr r0, _080C3328 @ =ewram_end
	ldr r0, [r0]
	cmp r0, r1
	beq _080C3324
	ldr r0, _080C332C @ =gUnknown_03002C50
	ldr r0, [r0]
	subs r0, r1, r0
	lsls r0, r0, #9
	lsrs r0, r0, #0x10
	ldr r1, _080C3330 @ =gVramHeapState
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_080C3324:
	pop {r0}
	bx r0
	.align 2, 0
_080C3328: .4byte ewram_end
_080C332C: .4byte gUnknown_03002C50
_080C3330: .4byte gVramHeapState

@ -- End of malloc_vram ---

	thumb_func_start sub_80C3334
sub_80C3334: @ 0x080C3334
	push {r4, r5, r6, lr}
	movs r3, #0
	movs r2, #0
	ldr r0, _080C3378 @ =gVramHeapMaxTileSlots
	ldrh r0, [r0]
	lsrs r0, r0, #2
	cmp r3, r0
	bhs _080C336E
	ldr r6, _080C337C @ =gVramHeapState
	adds r4, r0, #0
	ldr r0, _080C3380 @ =0x0000FFFF
	adds r5, r0, #0
_080C334C:
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	cmp r1, #0
	beq _080C3364
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r2, r5
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C3364:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	blo _080C334C
_080C336E:
	lsls r0, r3, #0x12
	lsrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C3378: .4byte gVramHeapMaxTileSlots
_080C337C: .4byte gVramHeapState
_080C3380: .4byte 0x0000FFFF

	thumb_func_start sub_80C3384
sub_80C3384: @ 0x080C3384
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r3, _080C345C @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _080C3460 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C3464 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r0, _080C3468 @ =0x04000134
	strh r4, [r0]
	subs r2, #0xd8
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2]
	ldrh r0, [r2]
	ldr r3, _080C346C @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r4, _080C3470 @ =gUnknown_03006990
	ldr r2, _080C3474 @ =0x05000088
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _080C3478 @ =sub_80C6964
	ldr r1, _080C347C @ =gUnknown_03006BB0
	ldr r2, _080C3480 @ =0x04000010
	bl CpuSet
	ldr r0, _080C3484 @ =sub_80C69A4
	ldr r1, _080C3488 @ =gUnknown_03006870
	ldr r2, _080C348C @ =0x04000048
	bl CpuSet
	strb r5, [r4, #2]
	movs r0, #0xf
	str r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x60
	str r0, [r4, #0x28]
	adds r0, #0x20
	str r0, [r4, #0x2c]
	movs r3, #0
	adds r5, r4, #0
	adds r5, #0xe0
	movs r2, #0
	movs r7, #0x30
	adds r7, r7, r4
	mov r8, r7
	movs r0, #0xa0
	adds r0, r0, r4
	mov ip, r0
	adds r6, r4, #0
	adds r6, #0xc0
	movs r7, #0x40
	adds r7, r7, r4
	mov sb, r7
_080C340C:
	lsls r1, r3, #2
	mov r7, ip
	adds r0, r2, r7
	mov r7, r8
	adds r7, #4
	mov r8, r7
	subs r7, #4
	stm r7!, {r0}
	adds r0, r2, r6
	mov r7, sb
	adds r7, #4
	mov sb, r7
	subs r7, #4
	stm r7!, {r0}
	adds r0, r4, #0
	adds r0, #0x50
	adds r1, r1, r0
	str r5, [r1]
	adds r5, #0x60
	adds r2, #0x60
	adds r3, #1
	cmp r3, #3
	ble _080C340C
	movs r0, #0
	ldr r3, _080C345C @ =0x04000208
	strh r0, [r3]
	ldr r2, _080C3460 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C345C: .4byte 0x04000208
_080C3460: .4byte 0x04000200
_080C3464: .4byte 0x0000FF3F
_080C3468: .4byte 0x04000134
_080C346C: .4byte 0x00004003
_080C3470: .4byte gUnknown_03006990
_080C3474: .4byte 0x05000088
_080C3478: .4byte sub_80C6964
_080C347C: .4byte gUnknown_03006BB0
_080C3480: .4byte 0x04000010
_080C3484: .4byte sub_80C69A4
_080C3488: .4byte gUnknown_03006870
_080C348C: .4byte 0x04000048

	thumb_func_start sub_80C3490
sub_80C3490: @ 0x080C3490
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov ip, r1
	mov r8, r2
	ldr r5, _080C34B0 @ =0x04000128
	ldr r6, [r5]
	ldr r7, _080C34B4 @ =gUnknown_03006990
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _080C34B8
	cmp r0, #1
	beq _080C3520
	b _080C352E
	.align 2, 0
_080C34B0: .4byte 0x04000128
_080C34B4: .4byte gUnknown_03006990
_080C34B8:
	movs r1, #0x30
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080C351A
	movs r0, #0x88
	adds r4, r6, #0
	ands r4, r0
	cmp r4, #8
	bne _080C352E
	movs r1, #4
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080C351A
	ldr r0, [r7, #0x14]
	cmp r0, #0xf
	bne _080C351A
	ldr r3, _080C3560 @ =0x04000208
	strh r1, [r3]
	ldr r2, _080C3564 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C3568 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldrb r1, [r5, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #1]
	ldr r1, _080C356C @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _080C3570 @ =0x0000C352
	str r0, [r1]
	strb r4, [r7]
	ldrb r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
_080C351A:
	ldr r1, _080C3574 @ =gUnknown_03006990
	movs r0, #1
	strb r0, [r1, #1]
_080C3520:
	mov r0, ip
	bl sub_80C3678
	mov r0, sb
	mov r1, r8
	bl sub_80C35A8
_080C352E:
	ldr r1, _080C3574 @ =gUnknown_03006990
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrb r3, [r1, #3]
	ldrb r2, [r1, #8]
	movs r0, #0x10
	ands r0, r2
	orrs r3, r0
	movs r0, #0x20
	ands r0, r2
	orrs r3, r0
	movs r0, #0x40
	ands r0, r2
	orrs r3, r0
	ldrb r0, [r1, #2]
	lsls r2, r0, #8
	ldrb r0, [r1]
	cmp r0, #8
	bne _080C3578
	movs r0, #0x80
	orrs r0, r2
	orrs r0, r3
	b _080C357C
	.align 2, 0
_080C3560: .4byte 0x04000208
_080C3564: .4byte 0x04000200
_080C3568: .4byte 0x0000FF7F
_080C356C: .4byte 0x04000202
_080C3570: .4byte 0x0000C352
_080C3574: .4byte gUnknown_03006990
_080C3578:
	adds r0, r3, #0
	orrs r0, r2
_080C357C:
	adds r2, r0, #0
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _080C358A
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
_080C358A:
	adds r1, r2, #0
	lsls r0, r6, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _080C359A
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r1, r0
_080C359A:
	adds r0, r1, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80C35A8
sub_80C35A8: @ 0x080C35A8
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _080C3668 @ =gUnknown_03006990
	ldr r4, [r5, #0x28]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r4, #1]
	ldr r6, [r5, #0x28]
	ldr r1, _080C366C @ =gUnknown_03006BF0
	ldrb r1, [r1, #3]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	lsls r2, r2, #5
	ldrb r4, [r6, #1]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r6, #1]
	ldr r4, [r5, #0x28]
	ldrb r1, [r5, #8]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ands r3, r1
	lsls r3, r3, #6
	ldrb r2, [r4, #1]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4, #1]
	ldr r2, [r5, #0x28]
	ldrb r1, [r5, #0xb]
	strb r1, [r2]
	ldr r4, [r5, #0x28]
	ldrb r2, [r5, #2]
	ldrb r1, [r5, #3]
	eors r2, r1
	movs r1, #0xf
	ands r2, r1
	ldrb r3, [r4, #1]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #1]
	ldr r1, [r5, #0x28]
	strh r7, [r1, #2]
	ldr r1, [r5, #0x28]
	adds r1, #4
	ldr r2, _080C3670 @ =0x04000006
	bl CpuSet
	movs r2, #0
	ldr r1, [r5, #0x28]
_080C3624:
	ldrh r0, [r1]
	adds r7, r7, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #0xd
	bls _080C3624
	adds r2, r5, #0
	ldr r1, [r2, #0x28]
	mvns r0, r7
	strh r0, [r1, #2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080C3644
	ldr r1, _080C3674 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_080C3644:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x14]
	ldrb r0, [r5]
	cmp r0, #0
	beq _080C3660
	ldrb r1, [r5, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C3660
	ldr r1, _080C3674 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_080C3660:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C3668: .4byte gUnknown_03006990
_080C366C: .4byte gUnknown_03006BF0
_080C3670: .4byte 0x04000006
_080C3674: .4byte 0x0400010E

	thumb_func_start sub_80C3678
sub_80C3678: @ 0x080C3678
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, _080C3784 @ =gUnknown_03006BB0
	movs r4, #0
	str r4, [sp]
	bl _call_via_r0
	str r0, [sp, #4]
	ldr r0, _080C3788 @ =gUnknown_03006990
	strb r4, [r0, #3]
	add r1, sp, #4
	mov sl, r1
	add r2, sp, #8
	mov sb, r2
	adds r5, r0, #0
	adds r6, r5, #0
	movs r7, #0x50
	adds r7, r7, r6
	mov r8, r7
_080C36A8:
	movs r3, #0
	movs r2, #0
	lsls r5, r4, #2
	adds r0, r4, #1
	str r0, [sp, #0x10]
	mov r1, r8
	adds r0, r5, r1
	ldr r1, [r0]
_080C36B8:
	ldrh r0, [r1]
	adds r3, r3, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #0xd
	bls _080C36B8
	mov r2, sl
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C371C
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r7, #1
	rsbs r7, r7, #0
	cmp r0, r7
	bne _080C371C
	movs r0, #1
	lsls r0, r4
	ldrb r1, [r6, #3]
	orrs r0, r1
	strb r0, [r6, #3]
	ldrb r2, [r6, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	mov r0, r8
	adds r3, r5, r0
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r4
	orrs r0, r1
	movs r1, #0xf
	ands r0, r1
	subs r7, #0xf
	adds r1, r7, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r6, #8]
	ldr r0, [r3]
	adds r0, #4
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	ldr r2, [sp, #0xc]
	adds r1, r2, r1
	ldr r2, _080C378C @ =0x04000006
	bl CpuSet
_080C371C:
	movs r0, #0
	str r0, [sp, #8]
	mov r7, r8
	adds r0, r5, r7
	ldr r1, [r0]
	adds r1, #4
	mov r0, sb
	ldr r2, _080C3790 @ =0x05000006
	bl CpuSet
	ldr r4, [sp, #0x10]
	cmp r4, #3
	ble _080C36A8
	ldr r0, _080C3788 @ =gUnknown_03006990
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #3]
	adds r3, r1, #0
	orrs r3, r2
	strb r3, [r0, #2]
	movs r1, #1
	ands r1, r2
	adds r5, r0, #0
	cmp r1, #0
	beq _080C37D0
	ldrb r0, [r5]
	cmp r0, #8
	bne _080C3794
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _080C376A
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bne _080C376A
	ldrb r0, [r5, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #8]
_080C376A:
	ldrb r4, [r5, #8]
	lsls r2, r4, #0x1c
	lsrs r2, r2, #0x1c
	movs r0, #0xe
	ldrb r3, [r5, #2]
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne _080C37B4
	movs r0, #0x40
	orrs r0, r4
	b _080C37B2
	.align 2, 0
_080C3784: .4byte gUnknown_03006BB0
_080C3788: .4byte gUnknown_03006990
_080C378C: .4byte 0x04000006
_080C3790: .4byte 0x05000006
_080C3794:
	ldrb r2, [r5, #8]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
_080C37B2:
	strb r0, [r5, #8]
_080C37B4:
	ldrb r2, [r5, #8]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1f
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	orrs r0, r1
	lsls r0, r0, #5
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #8]
_080C37D0:
	ldrb r0, [r5, #3]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C37E4
sub_80C37E4: @ 0x080C37E4
	push {lr}
	ldr r2, _080C37FC @ =gUnknown_03006990
	ldrb r0, [r2]
	cmp r0, #0
	beq _080C37F6
	ldrb r0, [r2, #8]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #8]
_080C37F6:
	pop {r0}
	bx r0
	.align 2, 0
_080C37FC: .4byte gUnknown_03006990

	thumb_func_start sub_80C3800
sub_80C3800: @ 0x080C3800
	ldr r3, _080C3834 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _080C3838 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C383C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _080C3840 @ =0x04000128
	ldr r2, _080C3844 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _080C3848 @ =0x0000C352
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r2, _080C384C @ =gUnknown_03006990
	ldrb r1, [r2, #8]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #8]
	bx lr
	.align 2, 0
_080C3834: .4byte 0x04000208
_080C3838: .4byte 0x04000200
_080C383C: .4byte 0x0000FF3F
_080C3840: .4byte 0x04000128
_080C3844: .4byte 0x00002003
_080C3848: .4byte 0x0000C352
_080C384C: .4byte gUnknown_03006990

	thumb_func_start sub_80C3850
sub_80C3850: @ 0x080C3850
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	bl sub_80C40D0
	cmp r0, #0
	beq _080C3868
	b _080C3D58
_080C3868:
	adds r0, r7, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	str r0, [sp]
	cmp r1, #0xf
	bls _080C387C
	subs r0, r1, #1
	ldr r1, [sp]
	strb r0, [r1]
	b _080C3D58
_080C387C:
	adds r0, r7, #0
	adds r0, #0x48
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0
	beq _080C38D0
	movs r1, #0
	strb r1, [r0]
	ldr r2, _080C38C0 @ =0x04000128
	ldrh r0, [r2]
	movs r5, #0xfc
	ands r5, r0
	cmp r5, #8
	beq _080C38D0
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r3, [sp]
	strb r0, [r3]
	mov r0, sl
	strb r1, [r0]
	strh r1, [r7, #0x16]
	ldr r0, _080C38C4 @ =0x04000134
	strh r1, [r0]
	ldr r3, _080C38C8 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C38CC @ =0x0400012A
	strh r1, [r0]
	movs r0, #8
	eors r0, r5
	b _080C3D5A
	.align 2, 0
_080C38C0: .4byte 0x04000128
_080C38C4: .4byte 0x04000134
_080C38C8: .4byte 0x00002003
_080C38CC: .4byte 0x0400012A
_080C38D0:
	ldrb r0, [r7, #0x18]
	cmp r0, #0xdf
	bls _080C3952
	adds r0, r7, #0
	bl sub_80C3F78
	adds r5, r0, #0
	cmp r5, #0
	beq _080C38E4
	b _080C3D5A
_080C38E4:
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _080C3900
	ldrb r0, [r7, #0x18]
	cmp r0, #0xe1
	bls _080C3900
	adds r0, r7, #0
	bl sub_80C40D0
	cmp r0, #0
	bne _080C3900
	b _080C3CE4
_080C3900:
	adds r0, r7, #0
	bl sub_80C40D0
	cmp r0, #0
	beq _080C390C
	b _080C3D58
_080C390C:
	ldrh r0, [r7, #0x16]
	adds r2, r0, #0
	cmp r2, #0
	bne _080C394C
	strb r2, [r7, #0x1e]
	strb r2, [r7, #0x18]
	strb r2, [r7, #0x1d]
	movs r0, #0xf
	ldr r1, [sp]
	strb r0, [r1]
	mov r3, sl
	strb r2, [r3]
	strh r2, [r7, #0x16]
	ldr r0, _080C393C @ =0x04000134
	strh r2, [r0]
	ldr r1, _080C3940 @ =0x04000128
	ldr r3, _080C3944 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080C3948 @ =0x0400012A
	strh r2, [r0]
	movs r0, #0x71
	b _080C3D5A
	.align 2, 0
_080C393C: .4byte 0x04000134
_080C3940: .4byte 0x04000128
_080C3944: .4byte 0x00002003
_080C3948: .4byte 0x0400012A
_080C394C:
	subs r0, #1
	strh r0, [r7, #0x16]
	b _080C3D58
_080C3952:
	ldrb r0, [r7, #0x18]
	cmp r0, #2
	bne _080C395A
	b _080C3A94
_080C395A:
	cmp r0, #2
	bgt _080C3968
	cmp r0, #0
	beq _080C3976
	cmp r0, #1
	beq _080C3A34
	b _080C3C04
_080C3968:
	cmp r0, #0xd0
	bne _080C396E
	b _080C3AE0
_080C396E:
	cmp r0, #0xd1
	bne _080C3974
	b _080C3B80
_080C3974:
	b _080C3C04
_080C3976:
	movs r3, #0xe
	movs r5, #3
	ldr r0, _080C39BC @ =0x04000120
	ldrh r0, [r0, #6]
	adds r1, r0, #0
	ldr r0, _080C39C0 @ =0x0000FFFF
	ldrb r2, [r7, #0x1e]
	adds r6, r2, #0
	cmp r1, r0
	bne _080C399E
	adds r4, r1, #0
	ldr r1, _080C39C4 @ =0x04000126
_080C398E:
	asrs r3, r3, #1
	subs r1, #2
	subs r5, #1
	cmp r5, #0
	beq _080C399E
	ldrh r0, [r1]
	cmp r0, r4
	beq _080C398E
_080C399E:
	movs r0, #0xe
	ands r3, r0
	strb r3, [r7, #0x1d]
	movs r5, #3
	ldr r0, _080C39BC @ =0x04000120
	ldrh r0, [r0, #6]
	adds r4, r0, #0
	asrs r0, r2, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C39CC
	ldr r0, _080C39C8 @ =0x00007208
	b _080C39F2
	.align 2, 0
_080C39BC: .4byte 0x04000120
_080C39C0: .4byte 0x0000FFFF
_080C39C4: .4byte 0x04000126
_080C39C8: .4byte 0x00007208
_080C39CC:
	subs r5, #1
	cmp r5, #0
	beq _080C39F8
	lsls r0, r5, #1
	ldr r1, _080C3A20 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	adds r0, r2, #0
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C39CC
	adds r0, r1, #0
	lsls r0, r5
	movs r1, #0xe4
	lsls r1, r1, #7
	orrs r0, r1
_080C39F2:
	cmp r4, r0
	beq _080C39CC
	movs r3, #0
_080C39F8:
	adds r0, r3, #0
	ands r0, r6
	strb r0, [r7, #0x1e]
	cmp r3, #0
	bne _080C3A08
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
_080C3A08:
	ldr r3, [sp]
	ldrb r0, [r3]
	cmp r0, #0
	bne _080C3A24
	ldrb r0, [r7, #0x1d]
	ldrb r1, [r7, #0x1e]
	cmp r0, r1
	beq _080C3A2A
	adds r0, r7, #0
	bl sub_80C3DE4
	b _080C3A34
	.align 2, 0
_080C3A20: .4byte 0x04000120
_080C3A24:
	subs r0, #1
	ldr r2, [sp]
	strb r0, [r2]
_080C3A2A:
	ldrb r1, [r7, #0x1e]
	movs r3, #0xc4
	lsls r3, r3, #7
	adds r0, r3, #0
	b _080C3B3E
_080C3A34:
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #0
	strb r0, [r1]
	movs r5, #3
	mov ip, r1
	ldr r3, _080C3A8C @ =0x0300041C
_080C3A42:
	lsls r0, r5, #1
	ldr r2, _080C3A90 @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r0, r4, #8
	subs r2, r5, #1
	cmp r0, #0x72
	bne _080C3A6C
	lsls r0, r2, #1
	adds r0, r0, r3
	strh r4, [r0]
	movs r0, #0xff
	ands r4, r0
	movs r0, #1
	lsls r0, r5
	cmp r4, r0
	bne _080C3A6C
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
_080C3A6C:
	adds r5, r2, #0
	cmp r5, #0
	bne _080C3A42
	ldrb r0, [r7, #0x1d]
	mov r3, ip
	ldrb r3, [r3]
	cmp r0, r3
	bne _080C3A2A
	movs r0, #2
	strb r0, [r7, #0x18]
	mov r0, ip
	ldrb r1, [r0]
	movs r2, #0xc2
	lsls r2, r2, #7
	b _080C3B3C
	.align 2, 0
_080C3A8C: .4byte 0x0300041C
_080C3A90: .4byte 0x04000120
_080C3A94:
	movs r5, #3
	movs r3, #0x49
	adds r3, r3, r7
	mov ip, r3
	mov r4, ip
	movs r6, #1
	ldr r0, _080C3AD8 @ =0x0300041C
	mov sb, r0
	ldr r1, _080C3ADC @ =0x04000120
	mov r8, r1
_080C3AA8:
	ldrb r3, [r4]
	adds r0, r3, #0
	asrs r0, r5
	ands r0, r6
	subs r2, r5, #1
	cmp r0, #0
	beq _080C3ACE
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	lsls r0, r2, #1
	add r0, sb
	ldrh r0, [r0]
	cmp r1, r0
	beq _080C3ACE
	adds r0, r6, #0
	lsls r0, r5
	eors r3, r0
	strb r3, [r4]
_080C3ACE:
	adds r5, r2, #0
	cmp r5, #0
	bne _080C3AA8
	b _080C3C6C
	.align 2, 0
_080C3AD8: .4byte 0x0300041C
_080C3ADC: .4byte 0x04000120
_080C3AE0:
	movs r3, #1
	movs r5, #3
	movs r2, #0x49
	adds r2, r2, r7
	mov ip, r2
	movs r0, #0x19
	adds r0, r0, r7
	mov r8, r0
	movs r6, #0
	ldr r1, _080C3B48 @ =0x0300041C
	mov sb, r1
_080C3AF6:
	lsls r0, r5, #1
	ldr r2, _080C3B4C @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r2, r5, #1
	mov r1, r8
	adds r0, r1, r2
	strb r4, [r0]
	mov r0, ip
	ldrb r1, [r0]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080C3B2C
	asrs r0, r4, #8
	subs r0, #0x72
	cmp r0, #1
	bls _080C3B20
	b _080C3CEA
_080C3B20:
	lsls r0, r2, #1
	add r0, sb
	ldrh r0, [r0]
	cmp r4, r0
	bne _080C3B2C
	movs r3, #0
_080C3B2C:
	adds r5, r2, #0
	cmp r5, #0
	bne _080C3AF6
	cmp r3, #0
	bne _080C3B50
	ldrb r1, [r7, #0x1c]
	movs r2, #0xc6
	lsls r2, r2, #7
_080C3B3C:
	adds r0, r2, #0
_080C3B3E:
	orrs r1, r0
	adds r0, r7, #0
	bl sub_80C3D6C
	b _080C3D5A
	.align 2, 0
_080C3B48: .4byte 0x0300041C
_080C3B4C: .4byte 0x04000120
_080C3B50:
	movs r0, #0xd1
	strb r0, [r7, #0x18]
	movs r3, #0x11
	movs r5, #3
	mov r1, r8
	adds r1, #2
_080C3B5C:
	ldrb r0, [r1]
	adds r3, r3, r0
	subs r1, #1
	subs r5, #1
	cmp r5, #0
	bne _080C3B5C
	strb r3, [r7, #0x14]
	movs r0, #0xff
	ands r3, r0
	movs r1, #0xc8
	lsls r1, r1, #7
	adds r0, r1, #0
	orrs r3, r0
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_80C3D6C
	b _080C3D5A
_080C3B80:
	movs r5, #3
	movs r2, #0x49
	ldrb r1, [r2, r7]
	ldr r2, _080C3BC0 @ =0x04000126
	movs r3, #1
_080C3B8A:
	ldrh r0, [r2]
	adds r4, r0, #0
	adds r0, r1, #0
	asrs r0, r5
	ands r0, r3
	cmp r0, #0
	beq _080C3BA0
	asrs r0, r4, #8
	cmp r0, #0x73
	beq _080C3BA0
	b _080C3D20
_080C3BA0:
	subs r2, #2
	subs r5, #1
	cmp r5, #0
	bne _080C3B8A
	adds r0, r7, #0
	bl MultiBoot_4Players
	adds r5, r0, #0
	cmp r5, #0
	bne _080C3BC4
	movs r0, #0xe0
	strb r0, [r7, #0x18]
	adds r0, #0xb0
	strh r0, [r7, #0x16]
	b _080C3D58
	.align 2, 0
_080C3BC0: .4byte 0x04000126
_080C3BC4:
	movs r1, #0
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r3, [sp]
	strb r0, [r3]
	mov r0, sl
	strb r1, [r0]
	strh r1, [r7, #0x16]
	ldr r0, _080C3BF4 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C3BF8 @ =0x04000128
	ldr r3, _080C3BFC @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C3C00 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x1e
	ldr r1, [sp]
	strb r0, [r1]
	movs r0, #0x70
	b _080C3D5A
	.align 2, 0
_080C3BF4: .4byte 0x04000134
_080C3BF8: .4byte 0x04000128
_080C3BFC: .4byte 0x00002003
_080C3C00: .4byte 0x0400012A
_080C3C04:
	movs r5, #3
	movs r2, #0x49
	adds r2, r2, r7
	mov ip, r2
	mov r8, ip
	movs r3, #1
	mov sb, r3
_080C3C12:
	mov r0, r8
	ldrb r6, [r0]
	adds r0, r6, #0
	asrs r0, r5
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _080C3C4C
	lsls r0, r5, #1
	ldr r2, _080C3C68 @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r2, r4, #8
	ldrb r0, [r7, #0x18]
	lsrs r0, r0, #1
	movs r1, #0x62
	subs r1, r1, r0
	mov r3, sb
	lsls r3, r5
	cmp r2, r1
	bne _080C3C46
	movs r0, #0xff
	ands r4, r0
	cmp r4, r3
	beq _080C3C4C
_080C3C46:
	eors r6, r3
	mov r3, r8
	strb r6, [r3]
_080C3C4C:
	subs r5, #1
	cmp r5, #0
	bne _080C3C12
	ldrb r0, [r7, #0x18]
	cmp r0, #0xc4
	bne _080C3C6C
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r7, #0x1e]
	strb r5, [r7, #0x18]
	b _080C3A2A
	.align 2, 0
_080C3C68: .4byte 0x04000120
_080C3C6C:
	mov r1, ip
	ldrb r2, [r1]
	cmp r2, #0
	bne _080C3CAC
	strb r2, [r7, #0x1e]
	strb r2, [r7, #0x18]
	strb r2, [r7, #0x1d]
	movs r0, #0xf
	ldr r3, [sp]
	strb r0, [r3]
	mov r0, sl
	strb r2, [r0]
	strh r2, [r7, #0x16]
	ldr r0, _080C3C9C @ =0x04000134
	strh r2, [r0]
	ldr r1, _080C3CA0 @ =0x04000128
	ldr r3, _080C3CA4 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080C3CA8 @ =0x0400012A
	strh r2, [r0]
	movs r0, #0x50
	b _080C3D5A
	.align 2, 0
_080C3C9C: .4byte 0x04000134
_080C3CA0: .4byte 0x04000128
_080C3CA4: .4byte 0x00002003
_080C3CA8: .4byte 0x0400012A
_080C3CAC:
	ldrb r0, [r7, #0x18]
	adds r0, #2
	strb r0, [r7, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc4
	bne _080C3CBC
	b _080C3A2A
_080C3CBC:
	ldrb r0, [r7, #0x18]
	ldr r1, [r7, #0x28]
	adds r0, r0, r1
	subs r1, r0, #3
	ldrb r2, [r1]
	lsls r2, r2, #8
	subs r0, #4
	ldrb r1, [r0]
	orrs r1, r2
	adds r0, r7, #0
	bl sub_80C3D6C
	adds r5, r0, #0
	cmp r5, #0
	bne _080C3D5A
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _080C3D58
_080C3CE4:
	bl sub_80C40E4
	b _080C387C
_080C3CEA:
	strb r6, [r7, #0x1e]
	strb r6, [r7, #0x18]
	strb r6, [r7, #0x1d]
	movs r0, #0xf
	ldr r1, [sp]
	strb r0, [r1]
	mov r2, sl
	strb r6, [r2]
	strh r6, [r7, #0x16]
	ldr r0, _080C3D10 @ =0x04000134
	strh r6, [r0]
	ldr r1, _080C3D14 @ =0x04000128
	ldr r3, _080C3D18 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080C3D1C @ =0x0400012A
	strh r6, [r0]
	movs r0, #0x60
	b _080C3D5A
	.align 2, 0
_080C3D10: .4byte 0x04000134
_080C3D14: .4byte 0x04000128
_080C3D18: .4byte 0x00002003
_080C3D1C: .4byte 0x0400012A
_080C3D20:
	movs r1, #0
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
	mov r3, sl
	strb r1, [r3]
	strh r1, [r7, #0x16]
	ldr r0, _080C3D48 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C3D4C @ =0x04000128
	ldr r3, _080C3D50 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C3D54 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x60
	b _080C3D5A
	.align 2, 0
_080C3D48: .4byte 0x04000134
_080C3D4C: .4byte 0x04000128
_080C3D50: .4byte 0x00002003
_080C3D54: .4byte 0x0400012A
_080C3D58:
	movs r0, #0
_080C3D5A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C3D6C
sub_80C3D6C: @ 0x080C3D6C
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r5, _080C3D98 @ =0x04000128
	ldrh r0, [r5]
	movs r4, #0x8c
	ands r4, r0
	cmp r4, #8
	bne _080C3DA4
	ldr r0, _080C3D9C @ =0x0400012A
	strh r1, [r0]
	ldr r1, _080C3DA0 @ =0x00002083
	adds r0, r1, #0
	strh r0, [r5]
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	b _080C3DD0
	.align 2, 0
_080C3D98: .4byte 0x04000128
_080C3D9C: .4byte 0x0400012A
_080C3DA0: .4byte 0x00002083
_080C3DA4:
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _080C3DD8 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C3DDC @ =0x00002003
	adds r0, r2, #0
	strh r0, [r5]
	ldr r0, _080C3DE0 @ =0x0400012A
	strh r1, [r0]
	movs r0, #8
	eors r4, r0
	adds r0, r4, #0
_080C3DD0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C3DD8: .4byte 0x04000134
_080C3DDC: .4byte 0x00002003
_080C3DE0: .4byte 0x0400012A

	thumb_func_start sub_80C3DE4
sub_80C3DE4: @ 0x080C3DE4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	beq _080C3E28
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _080C3E18 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C3E1C @ =0x04000128
	ldr r3, _080C3E20 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C3E24 @ =0x0400012A
	strh r1, [r0]
	b _080C3E34
	.align 2, 0
_080C3E18: .4byte 0x04000134
_080C3E1C: .4byte 0x04000128
_080C3E20: .4byte 0x00002003
_080C3E24: .4byte 0x0400012A
_080C3E28:
	adds r1, r2, #0
	adds r1, #0x4a
	strb r0, [r1]
	strb r0, [r2, #0x1e]
	movs r0, #1
	strb r0, [r2, #0x18]
_080C3E34:
	pop {r0}
	bx r0

	thumb_func_start sub_80C3E38
sub_80C3E38: @ 0x080C3E38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r7, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x18]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r1, ip
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _080C3E68
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _080C3E68
	mov r6, ip
	adds r6, #0x4a
	ldrb r2, [r6]
	cmp r2, #0
	beq _080C3EA4
_080C3E68:
	movs r1, #0
	mov r2, ip
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r2, #0x4a
	movs r0, #0xf
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x48
	strb r1, [r0]
	mov r3, ip
	strh r1, [r3, #0x16]
	ldr r0, _080C3E94 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C3E98 @ =0x04000128
	ldr r3, _080C3E9C @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C3EA0 @ =0x0400012A
	strh r1, [r0]
	b _080C3F6E
	.align 2, 0
_080C3E94: .4byte 0x04000134
_080C3E98: .4byte 0x04000128
_080C3E9C: .4byte 0x00002003
_080C3EA0: .4byte 0x0400012A
_080C3EA4:
	mov r0, ip
	str r7, [r0, #0x20]
	adds r5, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r5, r0
	subs r0, #0xf0
	adds r1, r5, r0
	ldr r0, _080C3EE0 @ =0x0003FF00
	cmp r1, r0
	bls _080C3EF4
	mov r1, ip
	strb r2, [r1, #0x1e]
	strb r2, [r1, #0x18]
	strb r2, [r1, #0x1d]
	movs r0, #0xf
	strb r0, [r6]
	mov r0, ip
	adds r0, #0x48
	strb r2, [r0]
	strh r2, [r1, #0x16]
	ldr r0, _080C3EE4 @ =0x04000134
	strh r2, [r0]
	ldr r1, _080C3EE8 @ =0x04000128
	ldr r3, _080C3EEC @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080C3EF0 @ =0x0400012A
	strh r2, [r0]
	b _080C3F6E
	.align 2, 0
_080C3EE0: .4byte 0x0003FF00
_080C3EE4: .4byte 0x04000134
_080C3EE8: .4byte 0x04000128
_080C3EEC: .4byte 0x00002003
_080C3EF0: .4byte 0x0400012A
_080C3EF4:
	adds r0, r7, r5
	mov r1, ip
	str r0, [r1, #0x24]
	mov r2, r8
	lsls r1, r2, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x13
	adds r0, r1, r2
	asrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #8
	bhi _080C3F58
	lsls r0, r0, #2
	ldr r1, _080C3F18 @ =_080C3F1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C3F18: .4byte _080C3F1C
_080C3F1C: @ jump table
	.4byte _080C3F40 @ case 0
	.4byte _080C3F40 @ case 1
	.4byte _080C3F40 @ case 2
	.4byte _080C3F40 @ case 3
	.4byte _080C3F4A @ case 4
	.4byte _080C3F50 @ case 5
	.4byte _080C3F50 @ case 6
	.4byte _080C3F50 @ case 7
	.4byte _080C3F50 @ case 8
_080C3F40:
	lsls r4, r3, #3
	asrs r1, r2, #0x18
	movs r0, #3
	subs r0, r0, r1
	b _080C3F56
_080C3F4A:
	movs r0, #0x38
	adds r4, r3, #0
	b _080C3F56
_080C3F50:
	lsls r4, r3, #3
	asrs r0, r2, #0x18
	subs r0, #1
_080C3F56:
	orrs r4, r0
_080C3F58:
	movs r0, #0x3f
	ands r4, r0
	lsls r0, r4, #1
	movs r3, #0x7f
	rsbs r3, r3, #0
	adds r1, r3, #0
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x1c]
	movs r0, #0xd0
	strb r0, [r1, #0x18]
_080C3F6E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80C3F78
sub_80C3F78: @ 0x080C3F78
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0xe0
	beq _080C3F94
	cmp r0, #0xe0
	blt _080C3FA4
	cmp r0, #0xe8
	bgt _080C3FA4
	cmp r0, #0xe7
	blt _080C3FA4
	movs r4, #3
	ldrb r5, [r2, #0x1e]
	b _080C4004
_080C3F94:
	movs r1, #0
	movs r0, #0xe1
	strb r0, [r2, #0x18]
	str r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0xd
	str r0, [r2]
	b _080C3FF6
_080C3FA4:
	movs r4, #3
	ldrb r5, [r2, #0x1e]
	movs r6, #1
	ldr r1, _080C4000 @ =0x04000126
_080C3FAC:
	ldrh r0, [r1]
	adds r3, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _080C3FC0
	ldr r0, [r2, #4]
	cmp r3, r0
	bne _080C3F94
_080C3FC0:
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	bne _080C3FAC
	ldrb r0, [r2, #0x18]
	adds r0, #1
	strb r0, [r2, #0x18]
	ldr r1, [r2]
	ldrh r0, [r2]
	str r0, [r2, #4]
	cmp r1, #0
	bne _080C3FEE
	ldr r0, [r2, #0x28]
	adds r1, r0, #0
	adds r1, #0xac
	ldrb r1, [r1]
	adds r0, #0xad
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r2, #4]
	lsls r1, r1, #5
	str r1, [r2]
_080C3FEE:
	ldr r0, [r2]
	lsrs r0, r0, #5
	str r0, [r2]
_080C3FF4:
	ldrh r1, [r2]
_080C3FF6:
	adds r0, r2, #0
	bl sub_80C3D6C
	b _080C408E
	.align 2, 0
_080C4000: .4byte 0x04000126
_080C4004:
	lsls r0, r4, #1
	ldr r1, _080C404C @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C4020
	ldr r0, [r2, #4]
	cmp r3, r0
	bne _080C4050
_080C4020:
	subs r4, #1
	cmp r4, #0
	bne _080C4004
	ldrb r0, [r2, #0x18]
	adds r0, #1
	strb r0, [r2, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe9
	beq _080C408C
	ldr r0, [r2, #0x28]
	adds r1, r0, #0
	adds r1, #0xae
	ldrb r1, [r1]
	adds r0, #0xaf
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r2]
	str r1, [r2, #4]
	b _080C3FF4
	.align 2, 0
_080C404C: .4byte 0x04000120
_080C4050:
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _080C407C @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C4080 @ =0x04000128
	ldr r3, _080C4084 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C4088 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x71
	b _080C408E
	.align 2, 0
_080C407C: .4byte 0x04000134
_080C4080: .4byte 0x04000128
_080C4084: .4byte 0x00002003
_080C4088: .4byte 0x0400012A
_080C408C:
	movs r0, #0
_080C408E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80C4094
sub_80C4094: @ 0x080C4094
	adds r2, r0, #0
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _080C40C0 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080C40C4 @ =0x04000128
	ldr r3, _080C40C8 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080C40CC @ =0x0400012A
	strh r1, [r0]
	bx lr
	.align 2, 0
_080C40C0: .4byte 0x04000134
_080C40C4: .4byte 0x04000128
_080C40C8: .4byte 0x00002003
_080C40CC: .4byte 0x0400012A

	thumb_func_start sub_80C40D0
sub_80C40D0: @ 0x080C40D0
	push {lr}
	ldrb r0, [r0, #0x18]
	cmp r0, #0xe9
	beq _080C40DC
	movs r0, #0
	b _080C40DE
_080C40DC:
	movs r0, #1
_080C40DE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C40E4
sub_80C40E4: @ 0x080C40E4
	push {r4, r5, lr}
	movs r2, #0
	ldr r3, _080C4124 @ =0x04000128
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C4108
	ldr r5, _080C4128 @ =0x0000795C
	movs r4, #0x80
_080C40F8:
	adds r2, #1
	cmp r2, r5
	bgt _080C4108
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _080C40F8
_080C4108:
	mov r2, pc
	lsrs r2, r2, #0x18
	movs r1, #0xc
	cmp r2, #2
	beq _080C411A
	movs r1, #0xd
	cmp r2, #8
	beq _080C411A
	movs r1, #4
_080C411A:
	subs r0, r0, r1
	bgt _080C411A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C4124: .4byte 0x04000128
_080C4128: .4byte 0x0000795C

	thumb_func_start sub_80C412C
sub_80C412C: @ 0x080C412C
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, _080C4148 @ =gUnknown_03006BF0
	ldrb r1, [r0, #1]
	adds r5, r0, #0
	cmp r1, #4
	bls _080C413C
	b _080C4302
_080C413C:
	lsls r0, r1, #2
	ldr r1, _080C414C @ =_080C4150
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C4148: .4byte gUnknown_03006BF0
_080C414C: .4byte _080C4150
_080C4150: @ jump table
	.4byte _080C4164 @ case 0
	.4byte _080C417C @ case 1
	.4byte _080C4218 @ case 2
	.4byte _080C428A @ case 3
	.4byte _080C42F8 @ case 4
_080C4164:
	ldr r0, [r5]
	ldr r1, _080C4178 @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _080C4170
	b _080C4302
_080C4170:
	movs r0, #1
	strb r0, [r5, #1]
	b _080C4302
	.align 2, 0
_080C4178: .4byte 0x00FF00FF
_080C417C:
	ldrb r0, [r5]
	cmp r0, #1
	bne _080C418C
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _080C418A
	b _080C4302
_080C418A:
	b _080C4196
_080C418C:
	ldr r1, _080C41CC @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_080C4196:
	ldr r0, _080C41D0 @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _080C41D4 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _080C41E4
	ldr r2, _080C41CC @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080C41D8 @ =0x0400010C
	ldr r0, _080C41DC @ =0x00C0F318
	str r0, [r1]
	ldr r3, _080C41E0 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _080C4204
	.align 2, 0
_080C41CC: .4byte 0x04000128
_080C41D0: .4byte 0x04000120
_080C41D4: .4byte 0x04000202
_080C41D8: .4byte 0x0400010C
_080C41DC: .4byte 0x00C0F318
_080C41E0: .4byte 0x04000208
_080C41E4:
	ldr r2, _080C4210 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _080C4214 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_080C4204:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _080C4302
	.align 2, 0
_080C4210: .4byte 0x04000128
_080C4214: .4byte 0x04000208
_080C4218:
	ldr r6, [r5, #8]
	adds r4, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _080C4228
	adds r4, r0, #0
	b _080C422E
_080C4228:
	cmp r6, #0
	bge _080C422E
	movs r4, #0
_080C422E:
	cmp r2, #0
	beq _080C4234
	str r4, [r2]
_080C4234:
	ldrb r0, [r5]
	cmp r0, #1
	beq _080C4276
	ldr r0, [r5, #0x14]
	cmp r0, r4
	bge _080C425A
	adds r3, r5, #0
	ldr r7, [r5, #4]
_080C4244:
	ldr r2, [r3, #0x14]
	lsls r0, r2, #2
	adds r0, r0, r7
	ldr r1, [r3, #0x10]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r3, #0x10]
	adds r2, #1
	str r2, [r3, #0x14]
	cmp r2, r4
	blt _080C4244
_080C425A:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _080C427E
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080C4276
	movs r0, #1
	strb r0, [r5, #3]
_080C4276:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _080C4284
_080C427E:
	ldrb r0, [r5, #2]
	cmp r0, #0x8c
	bne _080C4302
_080C4284:
	movs r0, #3
	strb r0, [r5, #1]
	b _080C4302
_080C428A:
	ldr r3, _080C42DC @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _080C42E0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C42E4 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _080C42E8 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _080C42EC @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r0, [r5]
	cmp r0, #0
	beq _080C42C8
	ldr r1, _080C42F0 @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_080C42C8:
	ldr r0, _080C42F4 @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	beq _080C42FE
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _080C4302
	.align 2, 0
_080C42DC: .4byte 0x04000208
_080C42E0: .4byte 0x04000200
_080C42E4: .4byte 0x0000FF3F
_080C42E8: .4byte 0x04000128
_080C42EC: .4byte 0x04000120
_080C42F0: .4byte 0x0400010C
_080C42F4: .4byte 0x04000202
_080C42F8:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _080C4302
_080C42FE:
	movs r0, #1
	b _080C430A
_080C4302:
	ldrb r0, [r5, #2]
	adds r0, #1
	strb r0, [r5, #2]
	movs r0, #0
_080C430A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80C4310
sub_80C4310: @ 0x080C4310
	push {r4, r5, lr}
	ldr r2, _080C4334 @ =0x04000120
	ldr r3, [r2]
	ldr r5, _080C4338 @ =gUnknown_03006BF0
	ldrb r0, [r5]
	adds r4, r5, #0
	cmp r0, #1
	beq _080C4340
	ldr r0, _080C433C @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	ldr r2, [r4, #8]
	cmp r2, #0
	bge _080C438C
	b _080C437A
	.align 2, 0
_080C4334: .4byte 0x04000120
_080C4338: .4byte gUnknown_03006BF0
_080C433C: .4byte 0x04000128
_080C4340:
	ldr r1, _080C4354 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4, #8]
	cmp r1, #0
	bge _080C435C
	ldr r0, _080C4358 @ =0xFEFEFEFE
	str r0, [r2]
	b _080C43A2
	.align 2, 0
_080C4354: .4byte 0x0400010E
_080C4358: .4byte 0xFEFEFEFE
_080C435C:
	ldr r0, _080C4370 @ =0x00001FFF
	cmp r1, r0
	bgt _080C4374
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _080C43A2
	.align 2, 0
_080C4370: .4byte 0x00001FFF
_080C4374:
	ldr r0, [r4, #0xc]
	str r0, [r2]
	b _080C43A2
_080C437A:
	ldr r0, _080C4388 @ =0xFEFEFEFE
	cmp r3, r0
	beq _080C43A2
	subs r0, r2, #1
	str r0, [r5, #8]
	b _080C43A2
	.align 2, 0
_080C4388: .4byte 0xFEFEFEFE
_080C438C:
	ldr r0, _080C439C @ =0x00001FFF
	cmp r2, r0
	bgt _080C43A0
	ldr r1, [r4, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	b _080C43A2
	.align 2, 0
_080C439C: .4byte 0x00001FFF
_080C43A0:
	str r3, [r4, #0xc]
_080C43A2:
	ldr r1, [r4, #8]
	ldr r0, _080C43CC @ =0x00002002
	cmp r1, r0
	bgt _080C43C4
	adds r0, r1, #1
	str r0, [r4, #8]
	ldrb r0, [r4]
	cmp r0, #1
	bne _080C43C4
	ldr r2, _080C43D0 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080C43D4 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_080C43C4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C43CC: .4byte 0x00002002
_080C43D0: .4byte 0x04000128
_080C43D4: .4byte 0x0400010E

	thumb_func_start sub_80C43D8
sub_80C43D8: @ 0x080C43D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _080C4454 @ =0x04000208
	strh r6, [r3]
	ldr r2, _080C4458 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C445C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	mov r8, r0
	strh r0, [r3]
	str r6, [sp]
	ldr r4, _080C4460 @ =gUnknown_03006BF0
	ldr r2, _080C4464 @ =0x05000006
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r1, _080C4468 @ =0x04000128
	ldr r0, _080C446C @ =0x00002003
	str r0, [r1]
	str r7, [r4, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #8]
	cmp r5, #0
	beq _080C4446
	ldr r0, _080C4470 @ =0x0400010C
	str r6, [r0]
	mov r2, r8
	strb r2, [r4]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_080C4428:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _080C4428
	mvns r0, r6
	str r0, [r4, #0xc]
	ldr r1, _080C4468 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_080C4446:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C4454: .4byte 0x04000208
_080C4458: .4byte 0x04000200
_080C445C: .4byte 0x0000FF3F
_080C4460: .4byte gUnknown_03006BF0
_080C4464: .4byte 0x05000006
_080C4468: .4byte 0x04000128
_080C446C: .4byte 0x00002003
_080C4470: .4byte 0x0400010C

	thumb_func_start sub_80C4474
sub_80C4474: @ 0x080C4474
	ldr r1, _080C447C @ =gUnknown_03006C10
	movs r0, #0
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_080C447C: .4byte gUnknown_03006C10

	thumb_func_start sub_80C4480
sub_80C4480: @ 0x080C4480
	ldr r1, _080C4488 @ =gUnknown_03006C10
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_080C4488: .4byte gUnknown_03006C10

	thumb_func_start sub_80C448C
sub_80C448C: @ 0x080C448C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _080C44CC @ =gUnknown_03006C10
	movs r5, #0
	strb r5, [r6, #8]
	ldr r4, _080C44D0 @ =gUnknown_03006C1C
	movs r0, #0x80
	lsls r0, r0, #5
	bl EwramMalloc
	adds r1, r0, #0
	str r1, [r4]
	ldr r0, _080C44D4 @ =gUnknown_03006860
	ldr r0, [r0]
	bl LZ77UnCompWram
	ldr r0, _080C44D8 @ =sub_80C4540
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _080C44DC @ =sub_80C4544
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	str r5, [r6, #4]
	str r5, [r6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C44CC: .4byte gUnknown_03006C10
_080C44D0: .4byte gUnknown_03006C1C
_080C44D4: .4byte gUnknown_03006860
_080C44D8: .4byte sub_80C4540
_080C44DC: .4byte sub_80C4544

	thumb_func_start sub_80C44E0
sub_80C44E0: @ 0x080C44E0
	push {lr}
	ldr r3, _080C44F0 @ =gUnknown_03006C10
	ldr r2, [r3]
	ldr r0, _080C44F4 @ =0x000007FF
	cmp r2, r0
	ble _080C44F8
	movs r0, #0
	b _080C4506
	.align 2, 0
_080C44F0: .4byte gUnknown_03006C10
_080C44F4: .4byte 0x000007FF
_080C44F8:
	ldr r0, _080C450C @ =gUnknown_03006C1C
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
_080C4506:
	pop {r1}
	bx r1
	.align 2, 0
_080C450C: .4byte gUnknown_03006C1C

	thumb_func_start sub_80C4510
sub_80C4510: @ 0x080C4510
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r4, _080C4534 @ =gUnknown_03006C10
	ldr r2, [r4, #4]
	ldr r0, _080C4538 @ =0x000007FF
	cmp r2, r0
	bgt _080C452E
	ldr r0, _080C453C @ =gUnknown_03006C1C
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r1
	strh r3, [r0]
	adds r0, r2, #1
	str r0, [r4, #4]
_080C452E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C4534: .4byte gUnknown_03006C10
_080C4538: .4byte 0x000007FF
_080C453C: .4byte gUnknown_03006C1C

	thumb_func_start sub_80C4540
sub_80C4540: @ 0x080C4540
	bx lr
	.align 2, 0

	thumb_func_start sub_80C4544
sub_80C4544: @ 0x080C4544
	push {lr}
	ldr r0, _080C455C @ =gUnknown_03006C1C
	ldr r0, [r0]
	bl EwramFree
	ldr r1, _080C4560 @ =gUnknown_03006C10
	movs r0, #0
	strb r0, [r1, #8]
	str r0, [r1, #4]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080C455C: .4byte gUnknown_03006C1C
_080C4560: .4byte gUnknown_03006C10

	thumb_func_start sub_80C4564
sub_80C4564: @ 0x080C4564
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r5, #0
	cmp r5, r7
	bhs _080C45D2
	ldr r0, _080C45FC @ =gUnknown_03003C60
	mov ip, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sl, r0
	movs r0, #0x80
	add r0, ip
	mov sb, r0
_080C4590:
	mov r0, r8
	adds r4, r0, r5
	lsls r4, r4, #1
	ldr r0, _080C4600 @ =gUnknown_03003370
	adds r4, r4, r0
	ldrh r3, [r6]
	movs r2, #0x1f
	ands r2, r3
	lsls r2, r2, #1
	add r2, ip
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r3
	lsrs r0, r0, #4
	mov r1, ip
	adds r1, #0x40
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0]
	orrs r1, r0
	mov r0, sl
	ands r0, r3
	lsrs r0, r0, #9
	add r0, sb
	ldrh r0, [r0]
	orrs r1, r0
	strh r1, [r4]
	adds r6, #2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	blo _080C4590
_080C45D2:
	ldr r0, _080C4604 @ =gUnknown_03003C08
	ldr r3, [r0]
	cmp r3, #0
	beq _080C45E4
	ldr r0, _080C4600 @ =gUnknown_03003370
	mov r1, r8
	adds r2, r7, #0
	bl _call_via_r3
_080C45E4:
	ldr r0, _080C4608 @ =gFlags
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C45FC: .4byte gUnknown_03003C60
_080C4600: .4byte gUnknown_03003370
_080C4604: .4byte gUnknown_03003C08
_080C4608: .4byte gFlags

	thumb_func_start sub_80C460C
sub_80C460C: @ 0x080C460C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r5, #0
	cmp r5, r7
	bhs _080C467A
	ldr r0, _080C46A4 @ =gUnknown_03003C60
	mov ip, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sl, r0
	movs r0, #0x80
	add r0, ip
	mov sb, r0
_080C4638:
	mov r0, r8
	adds r4, r0, r5
	lsls r4, r4, #1
	ldr r0, _080C46A8 @ =gUnknown_03003D30
	adds r4, r4, r0
	ldrh r3, [r6]
	movs r2, #0x1f
	ands r2, r3
	lsls r2, r2, #1
	add r2, ip
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r3
	lsrs r0, r0, #4
	mov r1, ip
	adds r1, #0x40
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0]
	orrs r1, r0
	mov r0, sl
	ands r0, r3
	lsrs r0, r0, #9
	add r0, sb
	ldrh r0, [r0]
	orrs r1, r0
	strh r1, [r4]
	adds r6, #2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r7
	blo _080C4638
_080C467A:
	ldr r0, _080C46AC @ =gUnknown_03003C08
	ldr r3, [r0]
	cmp r3, #0
	beq _080C468C
	ldr r0, _080C46A8 @ =gUnknown_03003D30
	mov r1, r8
	adds r2, r7, #0
	bl _call_via_r3
_080C468C:
	ldr r0, _080C46B0 @ =gFlags
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C46A4: .4byte gUnknown_03003C60
_080C46A8: .4byte gUnknown_03003D30
_080C46AC: .4byte gUnknown_03003C08
_080C46B0: .4byte gFlags

	thumb_func_start sub_80C46B4
sub_80C46B4: @ 0x080C46B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #0
	ldr r5, _080C4708 @ =gUnknown_03003C60
	movs r0, #0x80
	adds r0, r0, r5
	mov ip, r0
	movs r3, #0x1f
	mov r8, r3
	adds r6, r5, #0
	adds r6, #0x40
_080C46CC:
	lsls r2, r4, #1
	adds r1, r2, r5
	ldrh r0, [r1]
	mov r7, r8
	subs r0, r7, r0
	strh r0, [r1]
	adds r3, r2, r6
	ldrh r1, [r3]
	movs r7, #0xf8
	lsls r7, r7, #2
	adds r0, r7, #0
	subs r0, r0, r1
	strh r0, [r3]
	add r2, ip
	ldrh r1, [r2]
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bls _080C46CC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C4708: .4byte gUnknown_03003C60

	thumb_func_start sub_80C470C
sub_80C470C: @ 0x080C470C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r5, #0
	ldr r0, _080C4750 @ =gUnknown_03003C60
	mov r8, r0
	movs r6, #0
	movs r1, #0x40
	add r1, r8
	mov sl, r1
	movs r3, #0x80
	add r3, r8
	mov sb, r3
	movs r0, #0xf8
	lsls r0, r0, #2
	mov ip, r0
	movs r7, #0xf8
	lsls r7, r7, #7
_080C4736:
	lsls r1, r5, #1
	mov r3, r8
	adds r2, r1, r3
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r3, [r2]
	adds r0, r0, r3
	adds r3, r1, #0
	cmp r0, #0
	bge _080C4754
	strh r6, [r2]
	b _080C475C
	.align 2, 0
_080C4750: .4byte gUnknown_03003C60
_080C4754:
	cmp r0, #0x1f
	ble _080C475A
	movs r0, #0x1f
_080C475A:
	strh r0, [r2]
_080C475C:
	mov r0, sl
	adds r2, r3, r0
	ldrh r0, [r2]
	lsrs r0, r0, #5
	movs r1, #1
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	cmp r0, #0
	bge _080C4772
	strh r6, [r2]
	b _080C4784
_080C4772:
	cmp r0, #0x1f
	ble _080C477C
	mov r1, ip
	strh r1, [r2]
	b _080C4784
_080C477C:
	lsls r0, r0, #5
	mov r1, ip
	ands r0, r1
	strh r0, [r2]
_080C4784:
	mov r0, sb
	adds r2, r3, r0
	ldrh r0, [r2]
	lsrs r0, r0, #0xa
	movs r1, #2
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	cmp r0, #0
	bge _080C479A
	strh r6, [r2]
	b _080C47A8
_080C479A:
	cmp r0, #0x1f
	ble _080C47A2
	strh r7, [r2]
	b _080C47A8
_080C47A2:
	lsls r0, r0, #0xa
	ands r0, r7
	strh r0, [r2]
_080C47A8:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bls _080C4736
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80C47C0
sub_80C47C0: @ 0x080C47C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	movs r0, #0
	str r0, [sp]
	ldr r1, _080C482C @ =gUnknown_03003C60
	mov sb, r1
_080C47D6:
	ldr r2, [sp]
	lsls r5, r2, #1
	mov r0, sb
	adds r7, r5, r0
	movs r1, #0
	ldrsh r4, [r7, r1]
	adds r0, r4, #0
	bl sub_80CA240
	adds r6, r0, #0
	mov r8, r5
	cmp r4, #0
	bge _080C47F8
	ldr r1, _080C4830 @ =0x47800000
	bl sub_80C9CD4
	adds r6, r0, #0
_080C47F8:
	mov r2, sl
	movs r0, #0
	ldrsb r0, [r2, r0]
	bl sub_80CA240
	adds r4, r0, #0
	ldr r1, _080C4834 @ =0x41800000
	bl sub_80C9CD4
	ldr r1, _080C4838 @ =0x3D800000
	bl sub_80C9D34
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_80C9D34
	adds r1, r4, #0
	bl sub_80C9D00
	bl sub_80CA2A0
	cmp r0, #0
	bge _080C483C
	movs r0, #0
	b _080C4842
	.align 2, 0
_080C482C: .4byte gUnknown_03003C60
_080C4830: .4byte 0x47800000
_080C4834: .4byte 0x41800000
_080C4838: .4byte 0x3D800000
_080C483C:
	cmp r0, #0x1f
	ble _080C4842
	movs r0, #0x1f
_080C4842:
	strh r0, [r7]
	mov r0, sb
	adds r0, #0x40
	mov r1, r8
	adds r6, r1, r0
	ldrh r0, [r6]
	lsrs r0, r0, #5
	bl sub_80CA240
	adds r5, r0, #0
	mov r2, sl
	movs r0, #1
	ldrsb r0, [r2, r0]
	bl sub_80CA240
	adds r4, r0, #0
	ldr r1, _080C4888 @ =0x41800000
	bl sub_80C9CD4
	ldr r1, _080C488C @ =0x3D800000
	bl sub_80C9D34
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_80C9D34
	adds r1, r4, #0
	bl sub_80C9D00
	bl sub_80CA2A0
	cmp r0, #0
	bge _080C4890
	movs r0, #0
	b _080C48A4
	.align 2, 0
_080C4888: .4byte 0x41800000
_080C488C: .4byte 0x3D800000
_080C4890:
	cmp r0, #0x1f
	ble _080C489A
	movs r0, #0xf8
	lsls r0, r0, #2
	b _080C48A4
_080C489A:
	lsls r0, r0, #5
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	ands r0, r1
_080C48A4:
	strh r0, [r6]
	mov r0, sb
	adds r0, #0x80
	mov r1, r8
	adds r6, r1, r0
	ldrh r0, [r6]
	lsrs r0, r0, #0xa
	bl sub_80CA240
	adds r5, r0, #0
	mov r2, sl
	movs r0, #2
	ldrsb r0, [r2, r0]
	bl sub_80CA240
	adds r4, r0, #0
	ldr r1, _080C48EC @ =0x41800000
	bl sub_80C9CD4
	ldr r1, _080C48F0 @ =0x3D800000
	bl sub_80C9D34
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_80C9D34
	adds r1, r4, #0
	bl sub_80C9D00
	bl sub_80CA2A0
	cmp r0, #0
	bge _080C48F4
	movs r0, #0
	b _080C4908
	.align 2, 0
_080C48EC: .4byte 0x41800000
_080C48F0: .4byte 0x3D800000
_080C48F4:
	cmp r0, #0x1f
	ble _080C48FE
	movs r0, #0xf8
	lsls r0, r0, #7
	b _080C4908
_080C48FE:
	lsls r0, r0, #0xa
	movs r2, #0xf8
	lsls r2, r2, #7
	adds r1, r2, #0
	ands r0, r1
_080C4908:
	strh r0, [r6]
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #0x1f
	bhi _080C491A
	b _080C47D6
_080C491A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80C492C
sub_80C492C: @ 0x080C492C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0
	mov sb, r0
	ldr r2, _080C4980 @ =gUnknown_03003C60
	mov sl, r2
	ldr r7, _080C4984 @ =0x41F80000
_080C4942:
	mov r0, sb
	lsls r5, r0, #1
	mov r2, sl
	adds r6, r5, r2
	movs r0, #0
	ldrsh r4, [r6, r0]
	adds r0, r4, #0
	bl sub_80CA240
	cmp r4, #0
	bge _080C495E
	ldr r1, _080C4988 @ =0x47800000
	bl sub_80C9CD4
_080C495E:
	adds r1, r7, #0
	bl sub_80C9E98
	mov r2, r8
	ldr r1, [r2]
	bl sub_80C7574
	adds r1, r7, #0
	bl sub_80C9D34
	bl sub_80CA2A0
	cmp r0, #0
	bge _080C498C
	movs r0, #0
	b _080C4992
	.align 2, 0
_080C4980: .4byte gUnknown_03003C60
_080C4984: .4byte 0x41F80000
_080C4988: .4byte 0x47800000
_080C498C:
	cmp r0, #0x1f
	ble _080C4992
	movs r0, #0x1f
_080C4992:
	strh r0, [r6]
	ldr r0, _080C49C0 @ =gUnknown_03003CA0
	adds r4, r5, r0
	ldrh r0, [r4]
	lsrs r0, r0, #5
	bl sub_80CA240
	adds r1, r7, #0
	bl sub_80C9E98
	mov r2, r8
	ldr r1, [r2, #4]
	bl sub_80C7574
	adds r1, r7, #0
	bl sub_80C9D34
	bl sub_80CA2A0
	cmp r0, #0
	bge _080C49C4
	movs r0, #0
	b _080C49D0
	.align 2, 0
_080C49C0: .4byte gUnknown_03003CA0
_080C49C4:
	cmp r0, #0x1f
	ble _080C49CE
	movs r0, #0xf8
	lsls r0, r0, #2
	b _080C49D0
_080C49CE:
	lsls r0, r0, #5
_080C49D0:
	strh r0, [r4]
	ldr r0, _080C4A00 @ =gUnknown_03003CE0
	adds r5, r5, r0
	ldrh r0, [r5]
	lsrs r0, r0, #0xa
	bl sub_80CA240
	adds r1, r7, #0
	bl sub_80C9E98
	mov r2, r8
	ldr r1, [r2, #8]
	bl sub_80C7574
	adds r1, r7, #0
	bl sub_80C9D34
	bl sub_80CA2A0
	cmp r0, #0
	bge _080C4A04
	movs r0, #0
	b _080C4A10
	.align 2, 0
_080C4A00: .4byte gUnknown_03003CE0
_080C4A04:
	cmp r0, #0x1f
	ble _080C4A0E
	movs r0, #0xf8
	lsls r0, r0, #7
	b _080C4A10
_080C4A0E:
	lsls r0, r0, #0xa
_080C4A10:
	strh r0, [r5]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0x1f
	bls _080C4942
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80C4A30
sub_80C4A30: @ 0x080C4A30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r5, #0
	cmp r5, r6
	bhs _080C4AAC
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov r8, r1
_080C4A54:
	adds r0, r7, r5
	lsls r0, r0, #1
	mov r1, ip
	adds r4, r0, r1
	ldrh r3, [r4]
	movs r0, #0x1f
	ands r0, r3
	movs r1, #0x4d
	adds r2, r0, #0
	muls r2, r1, r2
	mov r0, sb
	ands r0, r3
	lsrs r0, r0, #5
	movs r1, #0x96
	muls r0, r1, r0
	adds r2, r2, r0
	mov r1, r8
	ands r1, r3
	lsrs r1, r1, #0xa
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r2, r2, r0
	lsls r2, r2, #8
	lsrs r1, r2, #0x10
	cmp r1, #0x1f
	bls _080C4A98
	ldr r1, _080C4A94 @ =0x00007FFF
	adds r0, r1, #0
	b _080C4AA0
	.align 2, 0
_080C4A94: .4byte 0x00007FFF
_080C4A98:
	lsls r0, r1, #5
	orrs r0, r1
	lsls r1, r1, #0xa
	orrs r0, r1
_080C4AA0:
	strh r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blo _080C4A54
_080C4AAC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80C4AB8
sub_80C4AB8: @ 0x080C4AB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r6, #0
	cmp r6, r7
	bhs _080C4B3A
_080C4AD2:
	mov r1, r8
	adds r0, r1, r6
	lsls r0, r0, #1
	mov r1, sb
	adds r5, r0, r1
	ldrh r2, [r5]
	movs r0, #0x1f
	ands r0, r2
	movs r1, #0x4d
	adds r3, r0, #0
	muls r3, r1, r3
	movs r1, #0xf8
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	lsrs r0, r0, #5
	movs r1, #0x96
	muls r0, r1, r0
	adds r3, r3, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	adds r0, r1, #0
	ands r2, r0
	lsrs r2, r2, #0xa
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r3, r3, r0
	lsls r3, r3, #8
	lsrs r4, r3, #0x10
	cmp r4, #0x1f
	bls _080C4B20
	ldr r1, _080C4B1C @ =0x000001BF
	adds r0, r1, #0
	strh r0, [r5]
	b _080C4B30
	.align 2, 0
_080C4B1C: .4byte 0x000001BF
_080C4B20:
	movs r0, #0x6d
	muls r0, r4, r0
	movs r1, #0xff
	bl sub_80C8960
	lsls r0, r0, #5
	orrs r4, r0
	strh r4, [r5]
_080C4B30:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r7
	blo _080C4AD2
_080C4B3A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80C4B48
sub_80C4B48: @ 0x080C4B48
	push {r4, r5, r6, r7, lr}
	movs r3, #0
	ldr r7, _080C4B80 @ =gUnknown_03003C08
	ldr r4, _080C4B84 @ =gUnknown_03003C60
	adds r6, r4, #0
	adds r6, #0x40
	adds r5, r4, #0
	adds r5, #0x80
_080C4B58:
	lsls r1, r3, #1
	adds r0, r1, r4
	strh r3, [r0]
	adds r2, r1, r6
	lsls r0, r3, #5
	strh r0, [r2]
	adds r1, r1, r5
	lsls r0, r3, #0xa
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bls _080C4B58
	movs r0, #0
	str r0, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C4B80: .4byte gUnknown_03003C08
_080C4B84: .4byte gUnknown_03003C60

	thumb_func_start sub_80C4B88
sub_80C4B88: @ 0x080C4B88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r5, #0
	cmp r5, r6
	bhs _080C4BFA
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sb, r0
	movs r1, #0xf8
	lsls r1, r1, #7
	mov r8, r1
_080C4BAC:
	adds r0, r7, r5
	lsls r0, r0, #1
	mov r1, ip
	adds r4, r0, r1
	ldrh r3, [r4]
	movs r0, #0x1f
	ands r0, r3
	movs r1, #0x4d
	adds r2, r0, #0
	muls r2, r1, r2
	mov r0, sb
	ands r0, r3
	lsrs r0, r0, #5
	movs r1, #0x96
	muls r0, r1, r0
	adds r2, r2, r0
	mov r1, r8
	ands r1, r3
	lsrs r1, r1, #0xa
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r2, r2, r0
	asrs r2, r2, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0xf
	bhi _080C4BEA
	movs r0, #0
	b _080C4BEE
_080C4BEA:
	ldr r1, _080C4C08 @ =0x00007FFF
	adds r0, r1, #0
_080C4BEE:
	strh r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blo _080C4BAC
_080C4BFA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C4C08: .4byte 0x00007FFF

	thumb_func_start sub_80C4C0C
sub_80C4C0C: @ 0x080C4C0C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080C4C58 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080C4C50
	ldr r3, _080C4C5C @ =gUnknown_03003C60
	movs r1, #0x1f
	ands r1, r4
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0xf8
	lsls r0, r0, #2
	ands r0, r4
	lsrs r0, r0, #4
	adds r2, r3, #0
	adds r2, #0x40
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0]
	orrs r1, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	ands r4, r0
	lsrs r0, r4, #9
	adds r3, #0x80
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r4, r0, #0
	orrs r4, r1
_080C4C50:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C4C58: .4byte gFlags
_080C4C5C: .4byte gUnknown_03003C60

	thumb_func_start sub_80C4C60
sub_80C4C60: @ 0x080C4C60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #0
	bne _080C4C7E
	ldr r1, [r1, #0x14]
	b _080C4C80
_080C4C7E:
	ldr r1, [r1, #0x18]
_080C4C80:
	mov sl, r1
	mov r1, sl
	lsls r0, r1, #0x12
	movs r1, #0xc0
	lsls r1, r1, #0xe
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bl IwramMalloc
	adds r4, r0, #0
	movs r6, #0
	strh r6, [r4, #8]
	strh r6, [r4, #0x2c]
	mov r0, r8
	ldr r5, [r0]
	ldr r0, [r5]
	cmp r0, #0
	bne _080C4CB8
	str r6, [r4, #0x24]
	str r6, [r4, #0x20]
	str r6, [r4, #0x14]
	adds r0, r5, #4
	mov r1, r8
	str r0, [r1]
	adds r5, r4, #4
	mov r0, sl
	lsls r6, r0, #0x18
	b _080C4DC4
_080C4CB8:
	mov r1, sb
	lsls r0, r1, #0x13
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	bl IwramMalloc
	adds r2, r0, #0
	str r2, [r4, #0x14]
	str r5, [r4, #0x24]
	str r5, [r4, #0x20]
	ldr r1, [r5, #4]
	movs r7, #0xf0
	lsls r7, r7, #0x18
	ands r7, r1
	cmp r7, #0
	beq _080C4D38
	ldr r0, _080C4D34 @ =0x0FFFFFFF
	ands r1, r0
	str r1, [r2]
	ldr r0, [r4, #4]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x17
	lsls r0, r0, #6
	strh r0, [r2, #0x14]
	ldr r1, [r4, #0x14]
	ldrh r0, [r5]
	strh r0, [r1, #0xc]
	ldr r1, [r4, #0x14]
	ldrb r0, [r5, #2]
	strb r0, [r1, #0x1a]
	ldr r0, [r4, #0x14]
	strh r6, [r0, #0x16]
	ldr r1, [r4, #0x14]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r1, [r4, #0x14]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	ldr r0, [r4, #0x14]
	movs r1, #0
	strb r1, [r0, #0x1f]
	ldr r0, [r4, #0x14]
	strh r6, [r0, #0x10]
	ldr r0, [r4, #0x14]
	strh r6, [r0, #0x12]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x10
	ands r1, r0
	lsrs r1, r1, #0xa
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #4]
	lsrs r0, r0, #0x1c
	subs r0, #1
	lsls r0, r0, #0xf
	orrs r1, r0
	str r1, [r2, #8]
	b _080C4D96
	.align 2, 0
_080C4D34: .4byte 0x0FFFFFFF
_080C4D38:
	cmp r1, #0
	bne _080C4D52
	ldrb r0, [r5, #3]
	bl VramMalloc
	ldr r1, [r4, #0x14]
	str r0, [r1]
	ldr r0, [r4, #4]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x17
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	b _080C4D5E
_080C4D52:
	str r1, [r2]
	ldr r0, [r4, #4]
	lsls r0, r0, #0xa
	lsrs r0, r0, #0x17
	lsls r0, r0, #6
	strh r0, [r2, #0x14]
_080C4D5E:
	ldr r1, [r4, #0x14]
	ldrh r0, [r5]
	strh r0, [r1, #0xc]
	ldr r1, [r4, #0x14]
	ldrb r0, [r5, #2]
	strb r0, [r1, #0x1a]
	ldr r0, [r4, #0x14]
	strh r7, [r0, #0x16]
	ldr r1, [r4, #0x14]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r1, [r4, #0x14]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	ldr r0, [r4, #0x14]
	movs r1, #0
	strb r1, [r0, #0x1f]
	ldr r0, [r4, #0x14]
	strh r7, [r0, #0x10]
	ldr r0, [r4, #0x14]
	strh r7, [r0, #0x12]
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x10
	ands r0, r1
	lsrs r0, r0, #0xa
	str r0, [r2, #8]
_080C4D96:
	movs r1, #0
	adds r5, r4, #4
	mov r0, sl
	lsls r6, r0, #0x18
	cmp r1, sb
	bhs _080C4DBC
	ldr r0, [r4, #0x14]
	adds r2, r0, #0
	adds r2, #0x20
	movs r3, #1
	rsbs r3, r3, #0
_080C4DAC:
	lsls r0, r1, #3
	adds r0, r2, r0
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, sb
	blo _080C4DAC
_080C4DBC:
	mov r1, r8
	ldr r0, [r1]
	adds r0, #8
	str r0, [r1]
_080C4DC4:
	mov r0, r8
	ldr r2, [r0]
	str r2, [r4, #0x18]
	ldr r0, _080C4E1C @ =0x040000D4
	str r2, [r0]
	str r5, [r0, #4]
	ldr r1, _080C4E20 @ =0x84000004
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r2, #0x14
	mov r1, r8
	str r2, [r1]
	mov r0, sl
	strb r0, [r4, #2]
	lsrs r0, r6, #0x18
	cmp r0, #0
	beq _080C4E0A
	movs r5, #0
	cmp r5, r0
	bhs _080C4E0A
_080C4DEC:
	mov r0, r8
	mov r1, sb
	bl sub_80C4C60
	lsls r2, r5, #2
	adds r1, r4, #0
	adds r1, #0x30
	adds r1, r1, r2
	str r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r1, [r4, #2]
	cmp r5, r1
	blo _080C4DEC
_080C4E0A:
	adds r0, r4, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C4E1C: .4byte 0x040000D4
_080C4E20: .4byte 0x84000004

	thumb_func_start sub_80C4E24
sub_80C4E24: @ 0x080C4E24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r2, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r1, #0
	cmp r1, r7
	bge _080C4E9A
	ldr r6, _080C4EA4 @ =0x040000D4
_080C4E3A:
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	lsls r0, r5, #2
	add r0, r8
	ldr r3, [r0]
	ldr r1, [r4]
	adds r2, r1, #0
	ldm r2!, {r0}
	str r2, [r4]
	lsls r0, r0, #2
	adds r2, r2, r0
	ldr r0, [r1, #4]
	movs r1, #0
	strb r0, [r3]
	strb r1, [r3, #1]
	ldr r1, [r4]
	adds r1, #4
	str r1, [r4]
	str r1, [r3, #0x1c]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	strb r0, [r3, #3]
	ldr r0, _080C4EA8 @ =0x0000FFFF
	strh r0, [r3, #8]
	str r1, [r6]
	adds r0, r3, #4
	str r0, [r6, #4]
	ldr r0, _080C4EAC @ =0x84000004
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	str r2, [r4]
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _080C4E8E
	adds r0, r3, #0
	adds r0, #0x30
	ldrb r1, [r3, #2]
	adds r2, r4, #0
	bl sub_80C4E24
_080C4E8E:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	blt _080C4E3A
_080C4E9A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C4EA4: .4byte 0x040000D4
_080C4EA8: .4byte 0x0000FFFF
_080C4EAC: .4byte 0x84000004

	thumb_func_start sub_80C4EB0
sub_80C4EB0: @ 0x080C4EB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	movs r0, #0
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0x2c]
	adds r2, r1, #0
	ldr r3, [sp, #0xc]
	cmp r2, r3
	blt _080C4ED8
	b _080C5280
_080C4ED8:
	lsls r0, r1, #0x10
	asrs r1, r0, #0xe
	ldr r6, [sp, #8]
	adds r1, r1, r6
	ldr r5, [r1]
	ldrb r1, [r5, #2]
	str r0, [sp, #0x3c]
	cmp r1, #0
	beq _080C4EF6
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r5, #2]
	ldr r2, [sp, #0x10]
	bl sub_80C4EB0
_080C4EF6:
	ldr r2, [r5, #0x1c]
	ldrh r0, [r5, #8]
	adds r0, #1
	movs r1, #0
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r2
	subs r0, #0x10
	ldrh r0, [r0, #4]
	mov r8, r2
	cmp r4, r0
	bls _080C4F1A
	movs r4, #0
	strb r1, [r5, #1]
	b _080C4F24
_080C4F1A:
	cmp r4, r0
	bne _080C4F24
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x2c]
_080C4F24:
	ldrb r0, [r5, #1]
	lsls r1, r0, #4
	adds r2, r2, r1
	adds r6, r0, #0
	ldrb r0, [r5]
	mov ip, r0
	cmp r6, ip
	bhs _080C4FA0
	ldr r3, _080C4F6C @ =0x040000D4
	adds r7, r5, #4
_080C4F38:
	ldrh r0, [r2, #4]
	cmp r0, r4
	bne _080C4F74
	str r2, [r3]
	str r7, [r3, #4]
	ldr r0, _080C4F70 @ =0x84000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	strb r6, [r5, #1]
	ldrb r1, [r5]
	lsls r1, r1, #4
	add r1, r8
	ldrb r0, [r5, #3]
	muls r0, r6, r0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #0x28]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _080C4F64
	b _080C526C
_080C4F64:
	adds r0, r5, #0
	bl sub_80C5294
	b _080C526C
	.align 2, 0
_080C4F6C: .4byte 0x040000D4
_080C4F70: .4byte 0x84000004
_080C4F74:
	cmp r0, r4
	bls _080C4F90
	cmp r6, #0
	beq _080C4FA0
	subs r2, #0x10
	str r2, [r3]
	str r7, [r3, #4]
	ldr r0, _080C4F8C @ =0x84000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	strh r4, [r5, #8]
	b _080C4FA0
	.align 2, 0
_080C4F8C: .4byte 0x84000004
_080C4F90:
	adds r2, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x18
	mov r6, ip
	lsls r1, r6, #0x18
	lsrs r6, r0, #0x18
	cmp r0, r1
	blo _080C4F38
_080C4FA0:
	movs r0, #0
	cmp r0, #0
	beq _080C4FA8
	b _080C526C
_080C4FA8:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	strb r0, [r5, #1]
	ldrb r1, [r5]
	lsls r1, r1, #4
	add r1, r8
	ldrb r0, [r5, #3]
	ldr r2, [sp, #0x14]
	muls r0, r2, r0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #0x28]
	mov r1, sp
	adds r0, r2, #0
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	bhs _080C503E
	mov r0, sp
	ldrb r0, [r0]
	adds r7, r2, #0
	adds r7, #3
	cmp r0, r7
	bge _080C503E
	mov r6, sp
_080C4FE6:
	ldrb r4, [r6]
	ldr r1, [r5, #0x1c]
	lsls r0, r4, #4
	adds r2, r0, r1
	adds r3, r2, #0
	subs r3, #0x10
	ldr r1, [r3, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _080C5002
	movs r0, #2
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_080C5002:
	ldr r1, [r3, #0xc]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq _080C5016
	movs r0, #4
	mov r1, sl
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_080C5016:
	movs r0, #6
	ldrsh r1, [r3, r0]
	movs r3, #6
	ldrsh r0, [r2, r3]
	cmp r1, r0
	beq _080C502A
	movs r0, #1
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_080C502A:
	adds r0, r4, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r5]
	cmp r0, r2
	bhs _080C503E
	ldrb r0, [r6]
	cmp r0, r7
	blt _080C4FE6
_080C503E:
	mov r3, sl
	cmp r3, #0
	bne _080C5046
	b _080C5222
_080C5046:
	movs r6, #0
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _080C5054
	strh r6, [r5, #0x12]
	strh r6, [r5, #0x10]
_080C5054:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C5064
	movs r2, #0
	str r2, [sp, #0x20]
	str r2, [sp, #0x1c]
_080C5064:
	movs r0, #1
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _080C5070
	strh r6, [r5, #0xa]
_080C5070:
	mov r0, sp
	ldrb r1, [r0, #0x14]
	strb r1, [r0]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	str r0, [sp, #0x38]
	ldrb r3, [r5]
	cmp r1, r3
	blo _080C5086
	b _080C5222
_080C5086:
	mov r8, sp
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x30]
_080C508E:
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	movs r7, #0
	mov r2, sp
	ldrb r3, [r2, #0x14]
	mov r2, r8
	strb r3, [r2, #1]
	ldr r1, [sp, #0x38]
	lsrs r0, r1, #0x18
	adds r2, r6, #1
	str r2, [sp, #0x34]
	ldrb r3, [r5]
	cmp r0, r3
	bhs _080C5102
	mov r4, sp
_080C50AE:
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	cmp r0, r1
	beq _080C50E8
	ldrh r0, [r5, #8]
	ldrb r1, [r4, #1]
	ldr r3, [r5, #0x1c]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r2, [r1, #4]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	ldrb r1, [r4]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r1, [r1, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	bl Div
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sb, r0
_080C50E8:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	beq _080C5102
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	blo _080C50AE
_080C5102:
	movs r0, #1
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C5176
	mov r2, r8
	ldrb r0, [r2]
	ldr r1, [r5, #0x1c]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	ldr r7, _080C5144 @ =0x000003FF
	adds r2, r7, #0
	ands r2, r0
	cmp r6, #0
	beq _080C5156
	ldr r1, _080C5148 @ =gUnknown_082B48B4
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	subs r2, r4, r3
	ands r2, r7
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	blt _080C514C
	adds r0, r3, r2
	b _080C5152
	.align 2, 0
_080C5144: .4byte 0x000003FF
_080C5148: .4byte gUnknown_082B48B4
_080C514C:
	subs r0, r3, r4
	ands r0, r7
	subs r0, r3, r0
_080C5152:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C5156:
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	adds r2, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldrh r6, [r5, #0xa]
	adds r0, r0, r6
	strh r0, [r5, #0xa]
	lsrs r2, r2, #0x10
	str r2, [sp, #0x18]
_080C5176:
	movs r0, #4
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C51C2
	mov r2, r8
	ldrb r0, [r2]
	ldr r1, [r5, #0x1c]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r3, #0xc
	ldrsh r0, [r0, r3]
	mov r6, sb
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r3, r0, #0
	muls r3, r2, r3
	asrs r3, r3, #8
	ldr r0, [sp, #0x30]
	strh r3, [r0]
	mov r1, r8
	ldrb r0, [r1]
	ldr r1, [r5, #0x1c]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r6, #0xe
	ldrsh r0, [r0, r6]
	muls r0, r2, r0
	asrs r0, r0, #8
	ldr r1, [sp, #0x30]
	strh r0, [r1, #2]
	ldrh r0, [r5, #0x10]
	adds r0, r0, r3
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	ldrh r2, [r5, #0x12]
	adds r0, r0, r2
	strh r0, [r5, #0x12]
_080C51C2:
	movs r0, #2
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _080C5204
	mov r6, r8
	ldrb r1, [r6]
	ldr r0, [r5, #0x1c]
	lsls r1, r1, #4
	adds r1, r1, r0
	movs r2, #8
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [sp, #0x24]
	movs r6, #0xa
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x20]
	adds r2, r2, r3
	str r2, [sp, #0x20]
_080C5204:
	ldr r6, [sp, #0x34]
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	beq _080C5222
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r5]
	cmp r0, r2
	bhs _080C5222
	b _080C508E
_080C5222:
	movs r0, #2
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _080C5238
	ldr r6, [sp, #0x1c]
	asrs r0, r6, #8
	strh r0, [r5, #0xc]
	ldr r1, [sp, #0x20]
	asrs r0, r1, #8
	strh r0, [r5, #0xe]
_080C5238:
	ldr r2, [r5, #0x14]
	cmp r2, #0
	beq _080C526C
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C526C
	movs r0, #1
	ldr r3, [sp, #0x10]
	ands r0, r3
	cmp r0, #0
	bne _080C526C
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080C5266
	adds r0, r2, #0
	bl sub_80BE09C
	b _080C526C
_080C5266:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
_080C526C:
	ldr r6, [sp, #0x3c]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0xc]
	cmp r0, r2
	bge _080C5280
	b _080C4ED8
_080C5280:
	ldr r0, [sp, #0x2c]
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C5294
sub_80C5294: @ 0x080C5294
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #7]
	cmp r3, #0
	bne _080C52A2
	ldr r5, [r4, #0x24]
	b _080C52BA
_080C52A2:
	ldrb r2, [r4]
	lsls r0, r2, #4
	ldr r1, [r4, #0x1c]
	adds r1, r1, r0
	ldrb r0, [r4, #3]
	muls r0, r2, r0
	adds r0, #1
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r0, r3, #3
	subs r0, #8
	adds r5, r1, r0
_080C52BA:
	ldr r1, [r4, #0x14]
	ldrh r2, [r5]
	ldrh r0, [r1, #0xc]
	cmp r0, r2
	bne _080C52CC
	ldrb r0, [r1, #0x1a]
	ldrb r3, [r5, #2]
	cmp r0, r3
	beq _080C532C
_080C52CC:
	strh r2, [r1, #0xc]
	ldr r1, [r4, #0x14]
	ldrb r0, [r5, #2]
	strb r0, [r1, #0x1a]
	ldr r3, [r4, #0x20]
	ldr r1, [r3, #4]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	beq _080C5308
	ldr r2, [r4, #0x14]
	ldr r0, _080C5300 @ =0x0FFFFFFF
	ands r1, r0
	str r1, [r2]
	ldr r1, [r2, #8]
	ldr r0, _080C5304 @ =0xFFFE7FFF
	ands r1, r0
	str r1, [r2, #8]
	ldr r0, [r3, #4]
	lsrs r0, r0, #0x1c
	subs r0, #1
	lsls r0, r0, #0xf
	orrs r1, r0
	str r1, [r2, #8]
	b _080C532A
	.align 2, 0
_080C5300: .4byte 0x0FFFFFFF
_080C5304: .4byte 0xFFFE7FFF
_080C5308:
	cmp r1, #0
	bne _080C5314
	ldr r0, [r4, #0x14]
	ldr r0, [r0]
	bl VramFree
_080C5314:
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _080C5326
	ldrb r0, [r5, #3]
	bl VramMalloc
	ldr r1, [r4, #0x14]
	str r0, [r1]
	b _080C532A
_080C5326:
	ldr r0, [r4, #0x14]
	str r1, [r0]
_080C532A:
	str r5, [r4, #0x20]
_080C532C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80C5334
sub_80C5334: @ 0x080C5334
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x14]
	movs r0, #0
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0x30]
	adds r2, r1, #0
	ldr r3, [sp, #0xc]
	cmp r2, r3
	blt _080C5362
	b _080C570A
_080C5362:
	lsls r0, r1, #0x10
	asrs r1, r0, #0xe
	ldr r2, [sp, #8]
	adds r1, r1, r2
	ldr r5, [r1]
	ldrb r1, [r5, #2]
	str r0, [sp, #0x40]
	cmp r1, #0
	beq _080C5382
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r5, #2]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl sub_80C5334
_080C5382:
	ldr r2, [r5, #0x1c]
	movs r1, #0
	mov r3, sp
	ldrh r3, [r3, #0x14]
	strh r3, [r5, #8]
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r2
	subs r0, #0x10
	ldrh r0, [r0, #4]
	mov r8, r2
	ldr r3, [sp, #0x14]
	cmp r3, r0
	bls _080C53A6
	movs r0, #0
	str r0, [sp, #0x14]
	strb r1, [r5, #1]
	b _080C53B2
_080C53A6:
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bne _080C53B2
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #0x30]
_080C53B2:
	movs r7, #0
	ldrb r0, [r5]
	adds r6, r0, #0
	cmp r7, r6
	bhs _080C542E
	ldr r3, _080C53F8 @ =0x040000D4
	adds r4, r5, #4
_080C53C0:
	ldrh r0, [r2, #4]
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bne _080C5400
	str r2, [r3]
	str r4, [r3, #4]
	ldr r0, _080C53FC @ =0x84000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	strb r7, [r5, #1]
	ldrb r1, [r5]
	lsls r1, r1, #4
	add r1, r8
	ldrb r0, [r5, #3]
	muls r0, r7, r0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #0x28]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _080C53EE
	b _080C56F6
_080C53EE:
	adds r0, r5, #0
	bl sub_80C5294
	b _080C56F6
	.align 2, 0
_080C53F8: .4byte 0x040000D4
_080C53FC: .4byte 0x84000004
_080C5400:
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bls _080C5420
	cmp r7, #0
	beq _080C542E
	subs r2, #0x10
	str r2, [r3]
	str r4, [r3, #4]
	ldr r0, _080C541C @ =0x84000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	strh r1, [r5, #8]
	b _080C542E
	.align 2, 0
_080C541C: .4byte 0x84000004
_080C5420:
	adds r2, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsls r1, r6, #0x18
	lsrs r7, r0, #0x18
	cmp r0, r1
	blo _080C53C0
_080C542E:
	movs r3, #0
	cmp r3, #0
	beq _080C5436
	b _080C56F6
_080C5436:
	subs r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	strb r0, [r5, #1]
	ldrb r1, [r5]
	lsls r1, r1, #4
	add r1, r8
	ldrb r0, [r5, #3]
	ldr r2, [sp, #0x18]
	muls r0, r2, r0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #0x28]
	mov r1, sp
	adds r0, r2, #0
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	bhs _080C54CC
	mov r0, sp
	ldrb r0, [r0]
	adds r7, r2, #0
	adds r7, #3
	cmp r0, r7
	bge _080C54CC
	mov r6, sp
_080C5474:
	ldrb r4, [r6]
	ldr r1, [r5, #0x1c]
	lsls r0, r4, #4
	adds r2, r0, r1
	adds r3, r2, #0
	subs r3, #0x10
	ldr r1, [r3, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _080C5490
	movs r0, #2
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_080C5490:
	ldr r1, [r3, #0xc]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq _080C54A4
	movs r0, #4
	mov r1, sl
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_080C54A4:
	movs r0, #6
	ldrsh r1, [r3, r0]
	movs r3, #6
	ldrsh r0, [r2, r3]
	cmp r1, r0
	beq _080C54B8
	movs r0, #1
	mov r1, sl
	orrs r1, r0
	mov sl, r1
_080C54B8:
	adds r0, r4, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r5]
	cmp r0, r2
	bhs _080C54CC
	ldrb r0, [r6]
	cmp r0, r7
	blt _080C5474
_080C54CC:
	mov r3, sl
	cmp r3, #0
	bne _080C54D4
	b _080C56AE
_080C54D4:
	movs r7, #0
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _080C54E2
	strh r7, [r5, #0x12]
	strh r7, [r5, #0x10]
_080C54E2:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C54F2
	movs r2, #0
	str r2, [sp, #0x24]
	str r2, [sp, #0x20]
_080C54F2:
	movs r0, #1
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _080C54FE
	strh r7, [r5, #0xa]
_080C54FE:
	mov r0, sp
	ldrb r1, [r0, #0x18]
	strb r1, [r0]
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	str r0, [sp, #0x3c]
	ldrb r3, [r5]
	cmp r1, r3
	blo _080C5514
	b _080C56AE
_080C5514:
	mov r8, sp
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x34]
_080C551C:
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	movs r6, #0
	mov r2, sp
	ldrb r3, [r2, #0x18]
	mov r2, r8
	strb r3, [r2, #1]
	ldr r1, [sp, #0x3c]
	lsrs r0, r1, #0x18
	adds r2, r7, #1
	str r2, [sp, #0x38]
	ldrb r3, [r5]
	cmp r0, r3
	bhs _080C5590
	mov r4, sp
_080C553C:
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	cmp r0, r1
	beq _080C5576
	ldrh r0, [r5, #8]
	ldrb r1, [r4, #1]
	ldr r3, [r5, #0x1c]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r2, [r1, #4]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	ldrb r1, [r4]
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r1, [r1, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	bl Div
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sb, r0
_080C5576:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	beq _080C5590
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	blo _080C553C
_080C5590:
	movs r0, #1
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C5602
	mov r2, r8
	ldrb r0, [r2]
	ldr r1, [r5, #0x1c]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	ldr r6, _080C55D0 @ =0x000003FF
	adds r2, r6, #0
	ands r2, r0
	cmp r7, #0
	beq _080C55E2
	ldr r1, _080C55D4 @ =gUnknown_082B48B4
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	subs r2, r4, r3
	ands r2, r6
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _080C55D8
	adds r0, r3, r2
	b _080C55DE
	.align 2, 0
_080C55D0: .4byte 0x000003FF
_080C55D4: .4byte gUnknown_082B48B4
_080C55D8:
	subs r0, r3, r4
	ands r0, r6
	subs r0, r3, r0
_080C55DE:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080C55E2:
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	adds r2, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	strh r0, [r5, #0xa]
	lsrs r2, r2, #0x10
	str r2, [sp, #0x1c]
_080C5602:
	movs r0, #4
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq _080C564E
	mov r3, r8
	ldrb r0, [r3]
	ldr r1, [r5, #0x1c]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r3, r0, #0
	muls r3, r2, r3
	asrs r3, r3, #8
	ldr r0, [sp, #0x34]
	strh r3, [r0]
	mov r1, r8
	ldrb r0, [r1]
	ldr r1, [r5, #0x1c]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #8
	ldr r2, [sp, #0x34]
	strh r0, [r2, #2]
	ldrh r0, [r5, #0x10]
	adds r0, r0, r3
	strh r0, [r5, #0x10]
	ldrh r0, [r2, #2]
	ldrh r3, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
_080C564E:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C5690
	mov r2, r8
	ldrb r1, [r2]
	ldr r0, [r5, #0x1c]
	lsls r1, r1, #4
	adds r1, r1, r0
	movs r3, #8
	ldrsh r0, [r1, r3]
	lsls r0, r0, #8
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [sp, #0x28]
	movs r3, #0xa
	ldrsh r0, [r1, r3]
	lsls r0, r0, #8
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x24]
	adds r2, r2, r3
	str r2, [sp, #0x24]
_080C5690:
	ldr r1, [sp, #0x38]
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	beq _080C56AE
	mov r2, r8
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	bhs _080C56AE
	b _080C551C
_080C56AE:
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080C56C4
	ldr r2, [sp, #0x20]
	asrs r0, r2, #8
	strh r0, [r5, #0xc]
	ldr r3, [sp, #0x24]
	asrs r0, r3, #8
	strh r0, [r5, #0xe]
_080C56C4:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _080C56F6
	adds r0, r5, #0
	bl sub_80C5294
	ldr r2, [r5, #0x14]
	cmp r2, #0
	beq _080C56F6
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x10]
	orrs r0, r1
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C56F6
	movs r0, #1
	ldr r3, [sp, #0x10]
	ands r0, r3
	cmp r0, #0
	bne _080C56F6
	adds r0, r2, #0
	ldr r1, [sp, #0x14]
	bl sub_80BF540
_080C56F6:
	ldr r1, [sp, #0x40]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0xc]
	cmp r0, r3
	bge _080C570A
	b _080C5362
_080C570A:
	ldr r0, [sp, #0x30]
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80C571C
sub_80C571C: @ 0x080C571C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp]
	mov sl, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	movs r0, #0
	mov sb, r0
	movs r1, #0
	str r1, [sp, #8]
	adds r2, r1, #0
	ldr r3, [sp, #4]
	cmp r2, r3
	blt _080C5744
	b _080C59D6
_080C5744:
	lsls r4, r1, #0x10
	asrs r0, r4, #0xe
	ldr r2, [sp]
	adds r0, r0, r2
	ldr r5, [r0]
	adds r0, r5, #0
	adds r0, #0x30
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r2, sl
	bl sub_80C571C
	ldr r2, [r5, #0x1c]
	ldrh r0, [r5, #8]
	adds r0, #1
	movs r1, #0
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r5]
	lsls r0, r0, #4
	adds r0, r0, r2
	subs r0, #0x10
	ldrh r0, [r0, #4]
	str r4, [sp, #0xc]
	cmp r6, r0
	bls _080C5780
	movs r6, #0
	strb r1, [r5, #1]
	b _080C578A
_080C5780:
	cmp r6, r0
	bne _080C578A
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [sp, #8]
_080C578A:
	ldrb r0, [r5, #1]
	lsls r1, r0, #4
	adds r2, r2, r1
	adds r4, r0, #0
	ldrb r0, [r5]
	mov ip, r0
	cmp r4, ip
	bhs _080C5808
	ldr r3, _080C57D4 @ =0x040000D4
	adds r7, r5, #4
_080C579E:
	ldrh r0, [r2, #4]
	cmp r0, r6
	bne _080C57DC
	str r2, [r3]
	str r7, [r3, #4]
	ldr r0, _080C57D8 @ =0x84000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	strb r4, [r5, #1]
	ldrb r0, [r5]
	lsls r0, r0, #4
	ldr r1, [r5, #0x1c]
	adds r1, r1, r0
	ldrb r0, [r5, #3]
	muls r0, r4, r0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #0x28]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _080C57CC
	b _080C59C2
_080C57CC:
	adds r0, r5, #0
	bl sub_80C5294
	b _080C59C2
	.align 2, 0
_080C57D4: .4byte 0x040000D4
_080C57D8: .4byte 0x84000004
_080C57DC:
	cmp r0, r6
	bls _080C57F8
	cmp r4, #0
	beq _080C5808
	subs r2, #0x10
	str r2, [r3]
	str r7, [r3, #4]
	ldr r0, _080C57F4 @ =0x84000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	strh r6, [r5, #8]
	b _080C5808
	.align 2, 0
_080C57F4: .4byte 0x84000004
_080C57F8:
	adds r2, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x18
	mov r4, ip
	lsls r1, r4, #0x18
	lsrs r4, r0, #0x18
	cmp r0, r1
	blo _080C579E
_080C5808:
	movs r0, #0
	cmp r0, #0
	beq _080C5810
	b _080C59C2
_080C5810:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	strb r2, [r5, #1]
	ldrb r1, [r5]
	lsls r1, r1, #4
	ldr r6, [r5, #0x1c]
	adds r1, r6, r1
	ldrb r0, [r5, #3]
	muls r0, r2, r0
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, #4
	str r1, [r5, #0x28]
	lsls r0, r4, #4
	adds r3, r0, r6
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r1, r1, r3
	mov ip, r1
	ldr r1, [r1, #8]
	ldr r0, [r3, #8]
	cmp r1, r0
	beq _080C5848
	movs r0, #2
	mov r4, sb
	orrs r4, r0
	mov sb, r4
_080C5848:
	mov r0, ip
	ldr r1, [r0, #0xc]
	ldr r0, [r3, #0xc]
	cmp r1, r0
	beq _080C585E
	movs r0, #4
	mov r1, sb
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080C585E:
	mov r4, ip
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r4, #6
	ldrsh r0, [r3, r4]
	cmp r1, r0
	beq _080C5874
	movs r0, #1
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_080C5874:
	mov r3, sb
	cmp r3, #0
	bne _080C587C
	b _080C5988
_080C587C:
	ldrh r0, [r5, #8]
	lsls r7, r2, #4
	adds r1, r7, r6
	ldrh r2, [r1, #4]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	ldrh r1, [r1, #0x14]
	subs r1, r1, r2
	lsls r1, r1, #8
	bl Div
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r0, #4
	mov r4, sb
	ands r0, r4
	cmp r0, #0
	beq _080C58DA
	ldr r2, [r5, #0x1c]
	adds r2, r7, r2
	adds r3, r2, #0
	adds r3, #0x10
	movs r1, #0xc
	ldrsh r0, [r3, r1]
	movs r4, #0xc
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	ldrh r4, [r2, #0xc]
	adds r0, r0, r4
	strh r0, [r5, #0x10]
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	movs r3, #0xe
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	mov r4, ip
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	ldrh r2, [r2, #0xe]
	adds r0, r0, r2
	strh r0, [r5, #0x12]
_080C58DA:
	movs r0, #2
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _080C591C
	ldr r2, [r5, #0x1c]
	adds r2, r7, r2
	adds r3, r2, #0
	adds r3, #0x10
	movs r4, #8
	ldrsh r0, [r3, r4]
	movs r4, #8
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	ldrh r4, [r2, #8]
	adds r0, r0, r4
	strh r0, [r5, #0xc]
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	movs r3, #0xa
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	mov r4, ip
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	ldrh r2, [r2, #0xa]
	adds r0, r0, r2
	strh r0, [r5, #0xe]
_080C591C:
	movs r0, #1
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _080C5988
	ldr r0, [r5, #0x1c]
	adds r0, r7, r0
	ldrh r1, [r0, #6]
	ldr r2, _080C595C @ =0x000003FF
	mov r8, r2
	mov r7, r8
	adds r6, r7, #0
	ands r6, r1
	ldrh r0, [r0, #0x16]
	ldr r1, _080C5960 @ =gUnknown_082B48B4
	adds r3, r7, #0
	ands r3, r0
	adds r4, r6, #0
	subs r2, r3, r4
	adds r0, r2, #0
	ands r0, r7
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _080C5964
	mov r3, r8
	ands r2, r3
	adds r0, r4, r2
	b _080C596E
	.align 2, 0
_080C595C: .4byte 0x000003FF
_080C5960: .4byte gUnknown_082B48B4
_080C5964:
	subs r0, r4, r3
	ands r0, r7
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080C596E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	subs r0, r0, r1
	mov r4, ip
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	adds r1, r1, r0
	ldr r2, _080C59B8 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	strh r1, [r5, #0xa]
_080C5988:
	ldr r2, [r5, #0x14]
	cmp r2, #0
	beq _080C59C2
	ldr r0, [r5, #4]
	mov r3, sl
	orrs r0, r3
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C59C2
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _080C59C2
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080C59BC
	adds r0, r2, #0
	bl sub_80BE09C
	b _080C59C2
	.align 2, 0
_080C59B8: .4byte 0x000003FF
_080C59BC:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
_080C59C2:
	ldr r4, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #4]
	cmp r0, r2
	bge _080C59D6
	b _080C5744
_080C59D6:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80C59E8
sub_80C59E8: @ 0x080C59E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	mov sb, r3
	ldr r0, [sp, #0x54]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #8
	ldr r2, _080C5A88 @ =0xFFFF0000
	adds r1, r1, r2
	lsrs r7, r1, #0x10
	lsls r1, r7, #0x10
	cmp r1, #0
	bge _080C5A12
	b _080C5D42
_080C5A12:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x28]
	lsls r3, r0, #1
	str r3, [sp, #0x2c]
	add r4, sp, #4
	mov sl, r4
_080C5A20:
	asrs r0, r1, #0xe
	ldr r1, [sp, #0x20]
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r1, _080C5A8C @ =0x040000D4
	adds r0, r5, #0
	adds r0, #0x10
	str r0, [r1]
	add r2, sp, #4
	str r2, [r1, #4]
	ldr r0, _080C5A90 @ =0x84000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, [sp, #0x28]
	cmp r3, #0
	beq _080C5A98
	ldr r2, _080C5A94 @ =gUnknown_082B48B4
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r3, r4
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r4, #0xc
	ldrsh r0, [r5, r4]
	adds r1, r3, #0
	muls r1, r0, r1
	asrs r1, r1, #6
	ldr r0, [sp, #0x2c]
	adds r2, r0, r2
	movs r4, #0
	ldrsh r2, [r2, r4]
	movs r4, #0xe
	ldrsh r0, [r5, r4]
	muls r0, r2, r0
	asrs r0, r0, #6
	subs r1, r1, r0
	str r1, [sp, #0x18]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	adds r1, r2, #0
	muls r1, r0, r1
	asrs r1, r1, #6
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	muls r0, r3, r0
	asrs r0, r0, #6
	adds r1, r1, r0
	add r0, sp, #0x18
	str r1, [r0, #4]
	b _080C5AAA
	.align 2, 0
_080C5A88: .4byte 0xFFFF0000
_080C5A8C: .4byte 0x040000D4
_080C5A90: .4byte 0x84000001
_080C5A94: .4byte gUnknown_082B48B4
_080C5A98:
	movs r3, #0xc
	ldrsh r0, [r5, r3]
	lsls r0, r0, #8
	str r0, [sp, #0x18]
	movs r4, #0xe
	ldrsh r0, [r5, r4]
	lsls r0, r0, #8
	add r1, sp, #0x18
	str r0, [r1, #4]
_080C5AAA:
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r0, r3
	bne _080C5AD2
	movs r4, #2
	ldrsh r0, [r1, r4]
	lsls r1, r7, #0x10
	str r1, [sp, #0x30]
	ldr r2, [sp, #0x24]
	ldr r4, [r2]
	ldr r6, [r2, #4]
	add r3, sp, #0x14
	mov r8, r3
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	beq _080C5B1E
_080C5AD2:
	mov r2, sb
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, [sp, #0x18]
	muls r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x18]
	movs r4, #2
	ldrsh r1, [r2, r4]
	ldr r0, [sp, #0x1c]
	muls r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x1c]
	movs r3, #0
	lsls r0, r7, #0x10
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x24]
	ldr r4, [r1]
	ldr r6, [r1, #4]
	add r2, sp, #0x14
	mov r8, r2
_080C5AFC:
	lsls r0, r3, #1
	mov r2, sp
	adds r2, r2, r0
	adds r2, #4
	add r0, sb
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r7, #0
	ldrsh r0, [r2, r7]
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _080C5AFC
_080C5B1E:
	ldr r0, [sp, #0x18]
	adds r0, r4, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	adds r0, r6, r0
	str r0, [sp, #0x1c]
	ldrh r0, [r5, #0xa]
	ldr r1, [sp, #0x28]
	adds r2, r1, r0
	ldr r3, _080C5C6C @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	mov r4, r8
	strh r2, [r4]
	movs r7, #0
	ldrsh r0, [r4, r7]
	strh r0, [r5, #0x2c]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _080C5B56
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r5, #2]
	str r2, [sp]
	add r2, sp, #0x18
	add r3, sp, #4
	bl sub_80C59E8
_080C5B56:
	ldr r4, [r5, #0x14]
	cmp r4, #0
	bne _080C5B5E
	b _080C5D32
_080C5B5E:
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080C5B6A
	b _080C5D32
_080C5B6A:
	ldr r6, [r5, #0x18]
	ldr r0, [r6]
	ands r0, r1
	ldr r1, [r4, #8]
	cmp r0, #0
	beq _080C5B82
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080C5B82
	b _080C5D32
_080C5B82:
	ldr r2, _080C5C70 @ =0xFFFFCFFF
	ands r2, r1
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x10
	ands r1, r3
	lsrs r1, r1, #0x16
	ldr r0, [r6]
	ands r0, r3
	lsrs r0, r0, #0x16
	adds r1, r1, r0
	lsls r1, r1, #0xc
	orrs r2, r1
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	ldr r2, _080C5C74 @ =0x003FE000
	ands r1, r2
	lsrs r1, r1, #0xd
	ldr r0, [r6]
	ands r0, r2
	lsrs r0, r0, #0xd
	adds r1, r1, r0
	lsls r1, r1, #6
	strh r1, [r4, #0x14]
	ldr r0, [r5, #0x18]
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080C5BC2
	b _080C5CD2
_080C5BC2:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _080C5BFE
	mov r3, sb
	movs r4, #0
	ldrsh r0, [r3, r4]
	movs r7, #0x80
	lsls r7, r7, #1
	cmp r0, r7
	bne _080C5BFE
	movs r1, #2
	ldrsh r0, [r3, r1]
	cmp r0, r7
	bne _080C5BFE
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r0, r0, #0xf
	cmp r0, #1
	bls _080C5CD2
	ldr r0, _080C5C78 @ =gUnknown_03003C20
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080C5CD2
_080C5BFE:
	ldr r3, [r5, #0x14]
	ldr r1, [r3, #8]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r3, #8]
	ldr r4, _080C5C7C @ =gUnknown_03002C24
	ldrb r2, [r4]
	movs r0, #0x20
	orrs r0, r2
	orrs r1, r0
	str r1, [r3, #8]
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _080C5C38
	mov r7, sl
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r1, r2
	bne _080C5C38
	ldrh r0, [r7, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	beq _080C5C3E
_080C5C38:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080C5C3E:
	add r0, sp, #8
	mov r3, r8
	ldrh r1, [r3]
	strh r1, [r0]
	mov r4, sl
	movs r7, #0
	ldrsh r1, [r4, r7]
	movs r3, #0x80
	lsls r3, r3, #0x11
	asrs r2, r3, #0x10
	adds r3, r0, #0
	cmp r1, r2
	bgt _080C5C62
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	ble _080C5C80
_080C5C62:
	ldr r0, [r5, #0x14]
	ldr r1, [r0, #8]
	movs r2, #0x40
	orrs r1, r2
	b _080C5C8A
	.align 2, 0
_080C5C6C: .4byte 0x000003FF
_080C5C70: .4byte 0xFFFFCFFF
_080C5C74: .4byte 0x003FE000
_080C5C78: .4byte gUnknown_03003C20
_080C5C7C: .4byte gUnknown_03002C24
_080C5C80:
	ldr r0, [r5, #0x14]
	ldr r1, [r0, #8]
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r1, r2
_080C5C8A:
	str r1, [r0, #8]
	mov r4, sl
	ldrh r0, [r4]
	strh r0, [r3, #2]
	ldrh r0, [r4, #2]
	strh r0, [r3, #4]
	ldr r0, [sp, #0x18]
	asrs r0, r0, #8
	strh r0, [r3, #6]
	ldr r0, [sp, #0x1c]
	asrs r0, r0, #8
	strh r0, [r3, #8]
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #4]
	movs r1, #0xf0
	lsls r1, r1, #0x18
	ands r0, r1
	cmp r0, #0
	beq _080C5CC8
	ldr r0, [r5, #0x14]
	ldr r2, [r0, #8]
	lsrs r2, r2, #0xf
	lsls r2, r2, #4
	ldr r1, _080C5CC4 @ =gEmptyTask
	adds r2, r2, r1
	adds r1, r3, #0
	bl sub_80BECF8
	b _080C5D16
	.align 2, 0
_080C5CC4: .4byte gEmptyTask
_080C5CC8:
	ldr r0, [r5, #0x14]
	adds r1, r3, #0
	bl sub_80BF8F4
	b _080C5D16
_080C5CD2:
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x1c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	ldr r3, [r5, #0x14]
	ldr r2, [r3, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #8]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5D00
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r3, #8]
_080C5D00:
	ldr r0, [r5, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C5D16
	ldr r0, [r5, #0x14]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0, #8]
_080C5D16:
	ldr r2, [r5, #0x14]
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080C5D2C
	adds r0, r2, #0
	bl sub_80BE46C
	b _080C5D32
_080C5D2C:
	adds r0, r2, #0
	bl DisplaySprite
_080C5D32:
	ldr r7, [sp, #0x30]
	ldr r1, _080C5D54 @ =0xFFFF0000
	adds r0, r7, r1
	lsrs r7, r0, #0x10
	lsls r1, r7, #0x10
	cmp r1, #0
	blt _080C5D42
	b _080C5A20
_080C5D42:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C5D54: .4byte 0xFFFF0000

	thumb_func_start sub_80C5D58
sub_80C5D58: @ 0x080C5D58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	mov sb, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #8
	ldr r0, _080C5E54 @ =0xFFFF0000
	adds r1, r1, r0
	lsrs r7, r1, #0x10
	lsls r0, r7, #0x10
	cmp r0, #0
	bge _080C5D7A
	b _080C5E88
_080C5D7A:
	mov r8, sp
_080C5D7C:
	asrs r0, r0, #0xe
	add r0, sl
	ldr r6, [r0]
	movs r2, #0xc
	ldrsh r1, [r6, r2]
	lsls r1, r1, #8
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [sp]
	movs r0, #0xe
	ldrsh r1, [r6, r0]
	lsls r1, r1, #8
	ldr r0, [r2, #4]
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #4]
	ldr r2, [r6, #0x14]
	cmp r2, #0
	beq _080C5E66
	ldr r0, [r6, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080C5E66
	ldr r0, [r6, #0x18]
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _080C5DC4
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C5E66
_080C5DC4:
	ldr r0, [sp]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r1, [r6, #0x14]
	mov r2, r8
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	ldr r4, [r6, #0x14]
	ldr r2, [r4, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	ldr r0, _080C5E58 @ =0xFFFFCFFF
	ands r2, r0
	str r2, [r4, #8]
	ldr r1, [r6, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x10
	ands r1, r3
	lsrs r1, r1, #0x16
	ldr r5, [r6, #0x18]
	ldr r0, [r5]
	ands r0, r3
	lsrs r0, r0, #0x16
	adds r1, r1, r0
	lsls r1, r1, #0xc
	orrs r2, r1
	str r2, [r4, #8]
	ldr r1, [r6, #4]
	ldr r2, _080C5E5C @ =0x003FE000
	ands r1, r2
	lsrs r1, r1, #0xd
	ldr r0, [r5]
	ands r0, r2
	lsrs r0, r0, #0xd
	adds r1, r1, r0
	lsls r1, r1, #6
	strh r1, [r4, #0x14]
	ldr r0, [r6, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5E28
	ldr r0, [r6, #0x14]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [r0, #8]
_080C5E28:
	ldr r1, [r6, #4]
	movs r0, #2
	ands r1, r0
	ldr r2, [r6, #0x14]
	cmp r1, #0
	beq _080C5E3E
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2, #8]
_080C5E3E:
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080C5E60
	adds r0, r2, #0
	bl sub_80BE46C
	b _080C5E66
	.align 2, 0
_080C5E54: .4byte 0xFFFF0000
_080C5E58: .4byte 0xFFFFCFFF
_080C5E5C: .4byte 0x003FE000
_080C5E60:
	adds r0, r2, #0
	bl DisplaySprite
_080C5E66:
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _080C5E78
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r1, [r6, #2]
	mov r2, sp
	bl sub_80C5D58
_080C5E78:
	lsls r0, r7, #0x10
	ldr r1, _080C5E98 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	lsls r0, r7, #0x10
	cmp r0, #0
	blt _080C5E88
	b _080C5D7C
_080C5E88:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C5E98: .4byte 0xFFFF0000

	thumb_func_start sub_80C5E9C
sub_80C5E9C: @ 0x080C5E9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #8]
	adds r7, r3, #0
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0
	str r1, [sp, #0x14]
	movs r2, #0
	ldr r4, [sp, #0xc]
	cmp r1, r4
	bge _080C5FB8
	ldr r5, [sp, #0x10]
	lsls r5, r5, #3
	mov r8, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
_080C5EE2:
	lsls r2, r2, #0x10
	asrs r0, r2, #0xe
	ldr r1, [sp, #8]
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r3, [r6, #0x14]
	adds r0, r3, #0
	adds r0, #0x20
	add r0, r8
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r2
	cmp r1, r0
	beq _080C5F84
	movs r4, #0
	ldrsb r4, [r7, r4]
	ldr r5, [sp, #0x18]
	adds r2, r5, r4
	movs r0, #0x10
	ldrsh r1, [r3, r0]
	add r3, r8
	adds r0, r3, #0
	adds r0, #0x24
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r1, r1, r5
	cmp r2, r1
	bgt _080C5F2C
	movs r0, #2
	ldrsb r0, [r7, r0]
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _080C5F3E
	cmp r2, r1
	blt _080C5F84
_080C5F2C:
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _080C5F84
_080C5F3E:
	movs r3, #1
	ldrsb r3, [r7, r3]
	mov r1, sl
	adds r2, r1, r3
	ldr r0, [r6, #0x14]
	movs r4, #0x12
	ldrsh r1, [r0, r4]
	mov r5, r8
	adds r4, r0, r5
	adds r0, r4, #0
	adds r0, #0x25
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r1, r1, r5
	cmp r2, r1
	bgt _080C5F6E
	movs r0, #3
	ldrsb r0, [r7, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _080C5F80
	cmp r2, r1
	blt _080C5F84
_080C5F6E:
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _080C5F84
_080C5F80:
	movs r0, #1
	str r0, [sp, #0x14]
_080C5F84:
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _080C5FA8
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r1, [r6, #2]
	ldr r2, [sp, #0x18]
	str r2, [sp]
	mov r4, sl
	str r4, [sp, #4]
	ldr r2, [sp, #0x10]
	adds r3, r7, #0
	bl sub_80C5E9C
	cmp r0, #0
	beq _080C5FA8
	movs r5, #1
	str r5, [sp, #0x14]
_080C5FA8:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	cmp r0, r1
	blt _080C5EE2
_080C5FB8:
	ldr r0, [sp, #0x14]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C5FCC
sub_80C5FCC: @ 0x080C5FCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	mov sb, r0
	movs r2, #0
	cmp sb, r8
	bge _080C609C
	ldr r1, [sp, #0xc]
	lsls r6, r1, #3
	lsls r3, r3, #0x10
	mov sl, r3
_080C6004:
	lsls r2, r2, #0x10
	asrs r0, r2, #0xe
	ldr r3, [sp, #4]
	adds r0, r0, r3
	ldr r4, [r0]
	ldr r3, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r0, r6
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	adds r5, r2, #0
	cmp r1, r0
	beq _080C6068
	adds r2, r3, r6
	adds r0, r2, #0
	adds r0, #0x24
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r7, #0x10
	ldrsh r0, [r3, r7]
	cmp r1, r0
	bgt _080C6068
	adds r0, r2, #0
	adds r0, #0x26
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r7, #0x10
	ldrsh r0, [r3, r7]
	cmp r1, r0
	blt _080C6068
	adds r0, r2, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r7, #0x12
	ldrsh r0, [r3, r7]
	cmp r1, r0
	bgt _080C6068
	adds r0, r2, #0
	adds r0, #0x27
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #0x12
	ldrsh r0, [r3, r2]
	cmp r1, r0
	blt _080C6068
	movs r3, #1
	mov sb, r3
_080C6068:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _080C608E
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r4, #2]
	ldr r4, [sp, #8]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r2, [sp]
	ldr r2, [sp, #0xc]
	mov r7, sl
	asrs r3, r7, #0x10
	bl sub_80C5FCC
	cmp r0, #0
	beq _080C608E
	movs r0, #1
	mov sb, r0
_080C608E:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	blt _080C6004
_080C609C:
	mov r0, sb
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C60B0
sub_80C60B0: @ 0x080C60B0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r1, #0
	cmp r1, r6
	bge _080C6104
_080C60BE:
	lsls r0, r1, #0x10
	asrs r1, r0, #0xe
	adds r1, r1, r7
	ldr r4, [r1]
	ldrb r1, [r4, #2]
	adds r5, r0, #0
	cmp r1, #0
	beq _080C60D6
	adds r0, r4, #0
	adds r0, #0x30
	bl sub_80C60B0
_080C60D6:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _080C60F0
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080C60EA
	ldr r0, [r1]
	bl VramFree
_080C60EA:
	ldr r0, [r4, #0x14]
	bl IwramFree
_080C60F0:
	adds r0, r4, #0
	bl IwramFree
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	blt _080C60BE
_080C6104:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80C610C
sub_80C610C: @ 0x080C610C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r1, #0
	cmp r1, r6
	bge _080C6162
_080C611A:
	lsls r1, r1, #0x10
	asrs r0, r1, #0xe
	adds r0, r0, r7
	ldr r4, [r0]
	ldr r2, [r4, #0x14]
	adds r5, r1, #0
	cmp r2, #0
	beq _080C6144
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080C613E
	adds r0, r2, #0
	bl sub_80BE09C
	b _080C6144
_080C613E:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
_080C6144:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _080C6154
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r4, #2]
	bl sub_80C610C
_080C6154:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	blt _080C611A
_080C6162:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80C6168
sub_80C6168: @ 0x080C6168
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _080C61A4 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _080C61A8 @ =gUnknown_03003C40
	str r1, [r0, #4]
	ldr r1, _080C61AC @ =0x85000006
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _080C61B0 @ =gUnknown_03002B90
	str r1, [r0, #4]
	ldr r1, _080C61B4 @ =0x85000018
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _080C61B8 @ =gUnknown_03002C64
	str r2, [r0]
	ldr r0, _080C61BC @ =gUnknown_03002C68
	strb r2, [r0]
	movs r0, #0
	bl sub_80C3384
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080C61A4: .4byte 0x040000D4
_080C61A8: .4byte gUnknown_03003C40
_080C61AC: .4byte 0x85000006
_080C61B0: .4byte gUnknown_03002B90
_080C61B4: .4byte 0x85000018
_080C61B8: .4byte gUnknown_03002C64
_080C61BC: .4byte gUnknown_03002C68

	thumb_func_start sub_80C61C0
sub_80C61C0: @ 0x080C61C0
	push {r4, lr}
	ldr r0, _080C6200 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080C61F4
	ldr r3, _080C6204 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _080C6208 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C620C @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _080C6210 @ =gIntrTable
	ldr r0, _080C6214 @ =gUnknown_03006870
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl sub_80C3384
_080C61F4:
	ldr r1, _080C6218 @ =gUnknown_03002C68
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C6200: .4byte gFlags
_080C6204: .4byte 0x04000208
_080C6208: .4byte 0x04000200
_080C620C: .4byte 0x0000FFBF
_080C6210: .4byte gIntrTable
_080C6214: .4byte gUnknown_03006870
_080C6218: .4byte gUnknown_03002C68

	thumb_func_start sub_80C621C
sub_80C621C: @ 0x080C621C
	push {r4, lr}
	ldr r1, _080C6250 @ =gUnknown_03002C68
	movs r0, #0
	strb r0, [r1]
	ldr r4, _080C6254 @ =gFlags
	ldr r0, [r4]
	ldr r1, _080C6258 @ =0xFFFEFFFF
	ands r0, r1
	str r0, [r4]
	bl sub_80C3800
	movs r0, #0
	bl sub_80C3384
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _080C6248
	bl sub_80C68E0
_080C6248:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C6250: .4byte gUnknown_03002C68
_080C6254: .4byte gFlags
_080C6258: .4byte 0xFFFEFFFF

	thumb_func_start sub_80C625C
sub_80C625C: @ 0x080C625C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r6, _080C62EC @ =0x04000208
	movs r3, #0
	strh r3, [r6]
	ldr r2, _080C62F0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C62F4 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	mov r8, r0
	strh r0, [r6]
	ldr r0, _080C62F8 @ =0x04000134
	strh r3, [r0]
	ldr r4, _080C62FC @ =0x04000128
	ldr r1, _080C6300 @ =0x00001008
	adds r0, r1, #0
	strh r0, [r4]
	ldrh r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _080C6304 @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	strh r3, [r6]
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	mov r0, r8
	strh r0, [r6]
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r0, _080C6308 @ =gUnknown_03006C20
	strb r3, [r0]
	movs r5, #0
	str r5, [sp]
	ldr r1, _080C630C @ =0x03000428
	ldr r2, _080C6310 @ =0x05000003
	mov r0, sp
	bl CpuSet
	strh r5, [r6]
	ldrh r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4]
	mov r1, r8
	strh r1, [r6]
	ldr r1, _080C6314 @ =0x0400010C
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc1
	strh r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C62EC: .4byte 0x04000208
_080C62F0: .4byte 0x04000200
_080C62F4: .4byte 0x0000FF3F
_080C62F8: .4byte 0x04000134
_080C62FC: .4byte 0x04000128
_080C6300: .4byte 0x00001008
_080C6304: .4byte 0x04000202
_080C6308: .4byte gUnknown_03006C20
_080C630C: .4byte 0x03000428
_080C6310: .4byte 0x05000003
_080C6314: .4byte 0x0400010C

	thumb_func_start sub_80C6318
sub_80C6318: @ 0x080C6318
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r1, _080C6350 @ =0x03000438
	ldr r0, _080C6354 @ =0x04000120
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _080C6358 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	subs r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080C635C @ =gUnknown_03006C20
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #5
	bls _080C6344
	b _080C6500
_080C6344:
	lsls r0, r1, #2
	ldr r1, _080C6360 @ =_080C6364
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C6350: .4byte 0x03000438
_080C6354: .4byte 0x04000120
_080C6358: .4byte 0x0400010E
_080C635C: .4byte gUnknown_03006C20
_080C6360: .4byte _080C6364
_080C6364: @ jump table
	.4byte _080C637C @ case 0
	.4byte _080C6440 @ case 1
	.4byte _080C6480 @ case 2
	.4byte _080C64C0 @ case 3
	.4byte _080C6500 @ case 4
	.4byte _080C6500 @ case 5
_080C637C:
	ldr r0, _080C63D0 @ =0x04000120
	mov r8, r0
	ldr r6, [r0]
	ldr r3, _080C63D4 @ =0x03000428
	ldrb r1, [r3]
	lsls r2, r1, #4
	adds r0, r6, #0
	lsls r0, r2
	lsrs r0, r0, #0x10
	movs r2, #1
	mov ip, r2
	subs r1, r2, r1
	lsls r1, r1, #4
	lsls r6, r1
	adds r1, r6, #0
	lsrs r6, r1, #0x10
	ldrh r5, [r3, #0xa]
	adds r4, r3, #0
	cmp r5, #0
	bne _080C6404
	ldrh r2, [r4, #6]
	adds r1, r0, #0
	cmp r1, r2
	bne _080C6402
	ldrh r3, [r4, #2]
	cmp r3, #3
	bhi _080C63D8
	ldrh r0, [r4, #4]
	mvns r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _080C6404
	mvns r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r6, r0
	bne _080C6404
	adds r0, r3, #1
	strh r0, [r4, #2]
	b _080C6404
	.align 2, 0
_080C63D0: .4byte 0x04000120
_080C63D4: .4byte 0x03000428
_080C63D8:
	strh r6, [r4, #0xa]
	ldr r0, _080C63F8 @ =0x00008002
	cmp r6, r0
	bne _080C6400
	mov r0, ip
	strb r0, [r7]
	movs r0, #1
	bl sub_80C65F0
	ldr r1, _080C63FC @ =0x03000434
	str r0, [r1]
	mov r1, r8
	str r0, [r1]
	strh r5, [r4, #2]
	b _080C6524
	.align 2, 0
_080C63F8: .4byte 0x00008002
_080C63FC: .4byte 0x03000434
_080C6400:
	strh r5, [r4, #0xa]
_080C6402:
	strh r5, [r4, #2]
_080C6404:
	ldrh r0, [r4, #2]
	cmp r0, #3
	bhi _080C6418
	lsls r0, r0, #1
	ldr r1, _080C6414 @ =gUnknown_082B533C
	adds r0, r0, r1
	ldrh r0, [r0]
	b _080C641C
	.align 2, 0
_080C6414: .4byte gUnknown_082B533C
_080C6418:
	movs r0, #0x80
	lsls r0, r0, #8
_080C641C:
	strh r0, [r4, #4]
	mvns r0, r6
	strh r0, [r4, #6]
	ldr r3, _080C643C @ =0x04000120
	ldrh r2, [r4, #4]
	ldrb r1, [r4]
	movs r0, #1
	subs r0, r0, r1
	lsls r0, r0, #4
	lsls r2, r0
	ldrh r0, [r4, #6]
	lsls r1, r1, #4
	lsls r0, r1
	adds r2, r2, r0
	str r2, [r3]
	b _080C6524
	.align 2, 0
_080C643C: .4byte 0x04000120
_080C6440:
	ldr r5, _080C6464 @ =gUnknown_03006C20
	ldrb r0, [r5]
	bl sub_80C6548
	cmp r0, #0
	beq _080C6470
	ldr r1, _080C6468 @ =0x03000428
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp]
	ldr r2, _080C646C @ =0x05000003
	mov r0, sp
	bl CpuSet
	strb r4, [r5]
	b _080C6474
	.align 2, 0
_080C6464: .4byte gUnknown_03006C20
_080C6468: .4byte 0x03000428
_080C646C: .4byte 0x05000003
_080C6470:
	movs r0, #2
	strb r0, [r5]
_080C6474:
	ldr r0, _080C647C @ =gUnknown_03006C20
	ldrb r0, [r0]
	b _080C64E2
	.align 2, 0
_080C647C: .4byte gUnknown_03006C20
_080C6480:
	ldr r5, _080C64A4 @ =gUnknown_03006C20
	ldrb r0, [r5]
	bl sub_80C6548
	cmp r0, #0
	beq _080C64B0
	ldr r1, _080C64A8 @ =0x03000428
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r2, _080C64AC @ =0x05000003
	bl CpuSet
	strb r4, [r5]
	b _080C64B4
	.align 2, 0
_080C64A4: .4byte gUnknown_03006C20
_080C64A8: .4byte 0x03000428
_080C64AC: .4byte 0x05000003
_080C64B0:
	movs r0, #3
	strb r0, [r5]
_080C64B4:
	ldr r0, _080C64BC @ =gUnknown_03006C20
	ldrb r0, [r0]
	b _080C64E2
	.align 2, 0
_080C64BC: .4byte gUnknown_03006C20
_080C64C0:
	adds r5, r7, #0
	ldrb r0, [r5]
	bl sub_80C6548
	cmp r0, #0
	beq _080C64E0
	ldr r1, _080C64F0 @ =0x03000428
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp, #8]
	add r0, sp, #8
	ldr r2, _080C64F4 @ =0x05000003
	bl CpuSet
	strb r4, [r5]
_080C64E0:
	ldrb r0, [r7]
_080C64E2:
	bl sub_80C65F0
	ldr r1, _080C64F8 @ =0x03000434
	str r0, [r1]
	ldr r1, _080C64FC @ =0x04000120
	str r0, [r1]
	b _080C6524
	.align 2, 0
_080C64F0: .4byte 0x03000428
_080C64F4: .4byte 0x05000003
_080C64F8: .4byte 0x03000434
_080C64FC: .4byte 0x04000120
_080C6500:
	ldr r3, _080C6518 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _080C651C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C6520 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	b _080C6534
	.align 2, 0
_080C6518: .4byte 0x04000208
_080C651C: .4byte 0x04000200
_080C6520: .4byte 0x0000FF7F
_080C6524:
	ldr r2, _080C6540 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080C6544 @ =0x0400010E
	movs r0, #0xc1
	strh r0, [r1]
_080C6534:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C6540: .4byte 0x04000128
_080C6544: .4byte 0x0400010E

	thumb_func_start sub_80C6548
sub_80C6548: @ 0x080C6548
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _080C656C @ =0x03000438
	ldr r0, [r6]
	lsrs r5, r0, #0x1c
	bl sub_80C65B4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C6586
	cmp r4, #2
	beq _080C6590
	cmp r4, #2
	bgt _080C6570
	cmp r4, #1
	beq _080C6576
	b _080C6586
	.align 2, 0
_080C656C: .4byte 0x03000438
_080C6570:
	cmp r4, #3
	beq _080C65A8
	b _080C6586
_080C6576:
	ldr r1, _080C658C @ =0x0300043C
	ldr r0, [r6]
	lsls r0, r0, #4
	lsrs r0, r0, #8
	ands r0, r4
	str r0, [r1]
	cmp r5, #1
	beq _080C65AC
_080C6586:
	movs r0, #1
	b _080C65AE
	.align 2, 0
_080C658C: .4byte 0x0300043C
_080C6590:
	cmp r5, #2
	bne _080C6586
	ldr r0, _080C65A4 @ =0x0300043C
	ldr r1, [r6]
	lsls r1, r1, #4
	lsrs r1, r1, #8
	ldr r0, [r0]
	cmp r0, r1
	beq _080C65AC
	b _080C6586
	.align 2, 0
_080C65A4: .4byte 0x0300043C
_080C65A8:
	cmp r5, #3
	bne _080C6586
_080C65AC:
	movs r0, #0
_080C65AE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80C65B4
sub_80C65B4: @ 0x080C65B4
	push {r4, r5, r6, lr}
	ldr r0, _080C65E4 @ =0x03000438
	ldr r0, [r0]
	lsrs r4, r0, #4
	movs r5, #0xf
	ands r5, r0
	lsrs r3, r4, #0x18
	movs r0, #6
	movs r6, #0xf
_080C65C6:
	subs r0, #1
	lsls r2, r0, #2
	adds r1, r4, #0
	lsrs r1, r2
	ands r1, r6
	eors r3, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080C65C6
	cmp r3, r5
	beq _080C65E8
	movs r0, #1
	b _080C65EA
	.align 2, 0
_080C65E4: .4byte 0x03000438
_080C65E8:
	movs r0, #0
_080C65EA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80C65F0
sub_80C65F0: @ 0x080C65F0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #1
	cmp r0, #4
	bhi _080C66CE
	lsls r0, r0, #2
	ldr r1, _080C6608 @ =_080C660C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C6608: .4byte _080C660C
_080C660C: @ jump table
	.4byte _080C6620 @ case 0
	.4byte _080C6644 @ case 1
	.4byte _080C667C @ case 2
	.4byte _080C66AC @ case 3
	.4byte _080C66AC @ case 4
_080C6620:
	ldr r4, _080C6640 @ =0x10000010
	movs r3, #1
	movs r2, #6
	movs r5, #0xf
_080C6628:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080C6628
	b _080C66C8
	.align 2, 0
_080C6640: .4byte 0x10000010
_080C6644:
	ldr r0, _080C6674 @ =0x0300043C
	ldr r0, [r0]
	ldr r1, _080C6678 @ =0x00FFFFFF
	ands r0, r1
	lsls r4, r0, #4
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r4, r0
	lsrs r0, r4, #0x1c
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #6
	movs r5, #0xf
_080C665E:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080C665E
	b _080C66C8
	.align 2, 0
_080C6674: .4byte 0x0300043C
_080C6678: .4byte 0x00FFFFFF
_080C667C:
	ldr r0, _080C66A8 @ =gUnknown_0300620C
	ldrb r0, [r0]
	lsls r4, r0, #4
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r4, r0
	lsrs r0, r4, #0x1c
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #6
	movs r5, #0xf
_080C6692:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080C6692
	b _080C66C8
	.align 2, 0
_080C66A8: .4byte gUnknown_0300620C
_080C66AC:
	ldr r4, _080C66D8 @ =0x10000010
	movs r3, #1
	movs r2, #6
	movs r5, #0xf
_080C66B4:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _080C66B4
_080C66C8:
	movs r1, #0xf
	ands r1, r3
	orrs r1, r4
_080C66CE:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C66D8: .4byte 0x10000010

	thumb_func_start sub_80C66DC
sub_80C66DC: @ 0x080C66DC
	push {r4, r5, lr}
	ldr r3, _080C671C @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _080C6720 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080C6724 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r5, #1
	strh r5, [r3]
	strh r4, [r3]
	subs r2, #0xd8
	ldrh r1, [r2]
	ldr r0, _080C6728 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	strh r5, [r3]
	ldr r0, _080C672C @ =0x0400010E
	strh r4, [r0]
	ldr r1, _080C6730 @ =0x0400010C
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080C6734 @ =gUnknown_03006C20
	movs r0, #5
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C671C: .4byte 0x04000208
_080C6720: .4byte 0x04000200
_080C6724: .4byte 0x0000FFBF
_080C6728: .4byte 0x0000FF7F
_080C672C: .4byte 0x0400010E
_080C6730: .4byte 0x0400010C
_080C6734: .4byte gUnknown_03006C20

	thumb_func_start sub_80C6738
sub_80C6738: @ 0x080C6738
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #0
	mov r8, r0
	movs r7, #0
	movs r5, #0
	movs r4, #0x20
	ldr r1, _080C67B0 @ =0x040000D4
	ldr r0, _080C67B4 @ =gUnknown_082B5544
	str r0, [r1]
	ldr r0, _080C67B8 @ =0x06008000
	str r0, [r1, #4]
	ldr r0, _080C67BC @ =0x80002000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080C67C0 @ =gUnknown_082B5344
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080C67C4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080C67C8 @ =gUnknown_082B9544
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080C67CC @ =0x80000280
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r1, #0xcc
	movs r0, #0x88
	strh r0, [r1]
	subs r1, #8
	movs r2, #0x88
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #0x50
	movs r0, #0x81
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _080C67D0 @ =0x04000010
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	adds r6, r1, #0
_080C679E:
	bl sub_80BCA94
	cmp r5, #1
	beq _080C67EC
	cmp r5, #1
	bgt _080C67D4
	cmp r5, #0
	beq _080C67DA
	b _080C6808
	.align 2, 0
_080C67B0: .4byte 0x040000D4
_080C67B4: .4byte gUnknown_082B5544
_080C67B8: .4byte 0x06008000
_080C67BC: .4byte 0x80002000
_080C67C0: .4byte gUnknown_082B5344
_080C67C4: .4byte 0x80000100
_080C67C8: .4byte gUnknown_082B9544
_080C67CC: .4byte 0x80000280
_080C67D0: .4byte 0x04000010
_080C67D4:
	cmp r5, #2
	beq _080C67FE
	b _080C6808
_080C67DA:
	lsrs r0, r4, #1
	strh r0, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080C6808
	movs r5, #1
	b _080C6808
_080C67EC:
	movs r0, #0
	strh r0, [r6]
	mov r0, r8
	movs r1, #1
	add r8, r1
	cmp r0, #0x77
	bgt _080C6808
	movs r5, #2
	b _080C6808
_080C67FE:
	lsrs r0, r4, #1
	strh r0, [r6]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080C6808:
	ldr r0, _080C682C @ =gUnknown_03003F8C
	ldrh r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0xf0
	bne _080C681E
	lsls r0, r7, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r7, r0, #0x18
_080C681E:
	cmp r4, #0x20
	bne _080C6826
	cmp r5, #2
	beq _080C6830
_080C6826:
	bl VBlankIntrWait
	b _080C679E
	.align 2, 0
_080C682C: .4byte gUnknown_03003F8C
_080C6830:
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _080C6848
	ldr r0, _080C6854 @ =gFlags
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0xc
	orrs r1, r2
	str r1, [r0]
	bl sub_80C68E0
_080C6848:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C6854: .4byte gFlags

	thumb_func_start sub_80C6858
sub_80C6858: @ 0x080C6858
	push {r4, r5, r6, r7, lr}
	ldr r7, _080C688C @ =gUnknown_03002BF0
	ldr r4, [r7]
	cmp r4, #0
	beq _080C68D8
	ldrb r0, [r4]
	lsrs r3, r0, #6
	cmp r3, #3
	beq _080C68BC
	ldr r6, _080C6890 @ =gUnknown_03002C60
	ldrb r5, [r6]
	cmp r5, #0
	bne _080C6898
	ldr r2, _080C6894 @ =gUnknown_0300620C
	lsls r0, r3, #2
	orrs r0, r3
	lsls r1, r3, #4
	orrs r0, r1
	lsls r1, r3, #6
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r6]
	b _080C68D8
	.align 2, 0
_080C688C: .4byte gUnknown_03002BF0
_080C6890: .4byte gUnknown_03002C60
_080C6894: .4byte gUnknown_0300620C
_080C6898:
	ldr r2, _080C68B8 @ =gUnknown_0300620C
	lsls r0, r3, #2
	orrs r0, r3
	lsls r1, r3, #4
	orrs r0, r1
	lsls r1, r3, #6
	orrs r0, r1
	strb r0, [r2]
	subs r0, r5, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080C68D8
	adds r0, r4, #1
	b _080C68D6
	.align 2, 0
_080C68B8: .4byte gUnknown_0300620C
_080C68BC:
	movs r1, #0x3f
	ands r1, r0
	cmp r1, #0
	bne _080C68D4
	str r1, [r7]
	ldr r0, _080C68D0 @ =gUnknown_0300620C
	strb r1, [r0]
	movs r0, #0
	b _080C68DA
	.align 2, 0
_080C68D0: .4byte gUnknown_0300620C
_080C68D4:
	subs r0, r4, r1
_080C68D6:
	str r0, [r7]
_080C68D8:
	movs r0, #1
_080C68DA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80C68E0
sub_80C68E0: @ 0x080C68E0
	push {lr}
	ldr r2, _080C68FC @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _080C6900 @ =gIntrTable
	ldr r0, _080C6904 @ =sub_80C6318
	str r0, [r1]
	movs r0, #1
	strh r0, [r2]
	bl sub_80C625C
	pop {r0}
	bx r0
	.align 2, 0
_080C68FC: .4byte 0x04000208
_080C6900: .4byte gIntrTable
_080C6904: .4byte sub_80C6318

	thumb_func_start sub_80C6908
sub_80C6908: @ 0x080C6908
	push {lr}
	ldr r0, _080C6944 @ =gUnknown_03006C20
	ldrb r0, [r0]
	cmp r0, #0
	blt _080C692E
	cmp r0, #4
	ble _080C692E
	cmp r0, #5
	bne _080C692E
	ldr r2, _080C6948 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _080C694C @ =gIntrTable
	ldr r0, _080C6950 @ =sub_80C6318
	str r0, [r1]
	movs r0, #1
	strh r0, [r2]
	bl sub_80C625C
_080C692E:
	ldr r0, _080C6954 @ =gFlags
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080C695C
	ldr r1, _080C6958 @ =gUnknown_0300620C
	movs r0, #0x55
	strb r0, [r1]
	b _080C6960
	.align 2, 0
_080C6944: .4byte gUnknown_03006C20
_080C6948: .4byte 0x04000208
_080C694C: .4byte gIntrTable
_080C6950: .4byte sub_80C6318
_080C6954: .4byte gFlags
_080C6958: .4byte gUnknown_0300620C
_080C695C:
	bl sub_80C6858
_080C6960:
	pop {r0}
	bx r0

	arm_func_start sub_80C6964
sub_80C6964: @ 0x080C6964
	push {r4, r5, r6, r7, r8, sb, sl, fp}
	mov ip, #0x4000000
	ldr fp, _080C69A0 @ =gUnknown_03006990
	add sl, fp, #0x40
	mov sb, #1
	mov r8, #0
	strb r8, [ip, #0x208]
	ldm sl, {r0, r1, r2, r3, r4, r5, r6, r7}
	stm sl!, {r4, r5, r6, r7}
	stm sl!, {r0, r1, r2, r3}
	ldr r0, [fp, #4]
	str r8, [fp, #4]
	strb sb, [ip, #0x208]
	pop {r4, r5, r6, r7, r8, sb, sl, fp}
	bx lr
	.align 2, 0
_080C69A0: .4byte gUnknown_03006990

	arm_func_start sub_80C69A4
sub_80C69A4: @ 0x080C69A4
	mov ip, #0x4000000
	add ip, ip, #0x120
	ldm ip, {r0, r1}
	push {r7, r8, sb, sl, fp}
	ldr fp, _080C6ABC @ =gUnknown_03006990
	mov sb, #0xfe
	add sb, sb, #0xfe00
	ldrh r3, [ip, #8]
	and r3, r3, #0x40
	strb r3, [fp, #9]
	ldr sl, [fp, #0x14]
	adds r3, sl, #1
	blt _080C6A00
	bne _080C69F4
	strh sb, [ip, #0xa]
	add r8, fp, #0x28
	ldm r8, {r2, r3}
	mov r7, r2
	stm r8, {r3, r7}
	b _080C6A00
_080C69F4:
	ldr r3, [fp, #0x2c]
	ldr r2, [r3, sl, lsl #1]
	strh r2, [ip, #0xa]
_080C6A00:
	cmp sl, #0xd
	addlt sl, sl, #1
	strlt sl, [fp, #0x14]
	push {r0, r1, r5, r6}
	mov r6, #3
_080C6A14:
	add r8, fp, #0x18
	add r8, r8, r6, lsl #2
	ldr sl, [r8]
	lsl r3, r6, #1
	ldrh r5, [sp, r3]
	cmp r5, sb
	bne _080C6A44
	cmp sl, #0xb
	ble _080C6A44
	mov r0, #1
	sub sl, r0, #2
	b _080C6A70
_080C6A44:
	ldr r0, [r8, #0x18]
	lsl r3, sl, #1
	strh r5, [r0, r3]
	cmp sl, #0xb
	bne _080C6A70
	ldr r1, [r8, #0x28]
	str r0, [r8, #0x28]
	str r1, [r8, #0x18]
	add r3, fp, #4
	mov r0, #1
	strb r0, [r3, r6]
_080C6A70:
	cmp sl, #0xd
	addlt sl, sl, #1
	str sl, [r8]
	subs r6, r6, #1
	bge _080C6A14
	ldrb r0, [fp]
	cmp r0, #0
	beq _080C6AB0
	ldr r7, _080C6AC0 @ =0x0400010E
	mov r0, #0
	strh r0, [r7]
	ldrh r0, [ip, #8]
	orr r0, r0, #0x80
	strh r0, [ip, #8]
	mov r0, #0xc0
	strh r0, [r7]
_080C6AB0:
	add sp, sp, #8
	pop {r5, r6, r7, r8, sb, sl, fp}
	bx lr
	.align 2, 0
_080C6ABC: .4byte gUnknown_03006990
_080C6AC0: .4byte 0x0400010E

	thumb_func_start EwramInitHeap
EwramInitHeap: @ 0x080C6AC4
	ldr r0, _080C6AD0 @ =gUnknown_02002650
	movs r1, #0
	str r1, [r0]
	ldr r1, _080C6AD4 @ =0x00020080
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_080C6AD0: .4byte gUnknown_02002650
_080C6AD4: .4byte 0x00020080

	thumb_func_start EwramMalloc
EwramMalloc: @ 0x080C6AD8
	push {lr}
	adds r2, r0, #0
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _080C6B2E
	lsls r0, r2, #2
	adds r2, r0, #0
	adds r2, #8
	ldr r3, _080C6B00 @ =gUnknown_02002650
_080C6AEC:
	ldr r1, [r3, #4]
	cmp r2, r1
	bhi _080C6B24
	cmp r2, r1
	bne _080C6B04
	rsbs r0, r2, #0
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #8
	b _080C6B32
	.align 2, 0
_080C6B00: .4byte gUnknown_02002650
_080C6B04:
	adds r0, r2, #0
	adds r0, #8
	cmp r0, r1
	bgt _080C6B24
	adds r1, r3, r2
	ldr r0, [r3]
	str r0, [r1]
	ldr r0, [r3, #4]
	subs r0, r0, r2
	str r0, [r1, #4]
	str r1, [r3]
	rsbs r0, r2, #0
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #8
	b _080C6B32
_080C6B24:
	ldr r0, [r3]
	cmp r0, #0
	beq _080C6B2E
	adds r3, r0, #0
	b _080C6AEC
_080C6B2E:
	ldr r0, _080C6B38 @ =ewram_end
	ldr r0, [r0]
_080C6B32:
	pop {r1}
	bx r1
	.align 2, 0
_080C6B38: .4byte ewram_end

	thumb_func_start EwramFree
EwramFree: @ 0x080C6B3C
	push {r4, lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _080C6B98
	ldr r0, _080C6BA0 @ =ewram_end
	ldr r0, [r0]
	cmp r0, r1
	beq _080C6B98
	subs r1, #8
	ldr r3, _080C6BA4 @ =gUnknown_02002650
	adds r4, r3, #0
	cmp r1, r3
	beq _080C6B5E
_080C6B56:
	adds r3, r4, #0
	ldr r4, [r3]
	cmp r1, r4
	bne _080C6B56
_080C6B5E:
	ldr r0, [r1, #4]
	cmp r0, #0
	bge _080C6B68
	rsbs r0, r0, #0
	str r0, [r1, #4]
_080C6B68:
	ldr r2, [r3, #4]
	adds r0, r3, r2
	cmp r0, r1
	bne _080C6B80
	cmp r2, #0
	ble _080C6B80
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [r1, #4]
	adds r0, r2, r0
	str r0, [r3, #4]
	adds r1, r3, #0
_080C6B80:
	ldr r3, [r1, #4]
	adds r2, r1, r3
	ldr r0, [r1]
	cmp r2, r0
	bne _080C6B98
	ldr r0, [r2, #4]
	cmp r0, #0
	ble _080C6B98
	adds r0, r3, r0
	str r0, [r1, #4]
	ldr r0, [r2]
	str r0, [r1]
_080C6B98:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C6BA0: .4byte ewram_end
_080C6BA4: .4byte gUnknown_02002650
