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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7528
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
	bl sub_80C7528
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
	bl sub_80C7528
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C751C
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7528
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7520
	str r4, [sp, #8]
	ldr r1, _080C12CC @ =gUnknown_03006210
	ldr r0, [sp, #0xc]
	adds r2, r5, #0
	bl sub_80C7520
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
	bl sub_80C7568
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
	bl sub_80C7520
	ldr r0, _080C3478 @ =sub_80C6964
	ldr r1, _080C347C @ =gUnknown_03006BB0
	ldr r2, _080C3480 @ =0x04000010
	bl sub_80C7520
	ldr r0, _080C3484 @ =sub_80C69A4
	ldr r1, _080C3488 @ =gUnknown_03006870
	ldr r2, _080C348C @ =0x04000048
	bl sub_80C7520
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
	bl sub_80C7520
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
	bl sub_80C7520
_080C371C:
	movs r0, #0
	str r0, [sp, #8]
	mov r7, r8
	adds r0, r5, r7
	ldr r1, [r0]
	adds r1, #4
	mov r0, sb
	ldr r2, _080C3790 @ =0x05000006
	bl sub_80C7520
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
	bl sub_80C7534
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
	bl sub_80C7520
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
	bl sub_80C7530
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7524
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
	bl sub_80C7520
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
	bl sub_80C7520
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
	bl sub_80C7520
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
	bl sub_80C7520
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
	bl sub_80C756C
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

@ -- Start of flash library ---

	thumb_func_start sub_80C6BA8
sub_80C6BA8: @ 0x080C6BA8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _080C6BC4 @ =0x0E005555
	movs r1, #0xaa
	strb r1, [r3]
	ldr r2, _080C6BC8 @ =0x0E002AAA
	movs r1, #0x55
	strb r1, [r2]
	movs r1, #0xb0
	strb r1, [r3]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	strb r0, [r1]
	bx lr
	.align 2, 0
_080C6BC4: .4byte 0x0E005555
_080C6BC8: .4byte 0x0E002AAA

	thumb_func_start sub_80C6BCC
sub_80C6BCC: @ 0x080C6BCC
	push {r4, r5, lr}
	sub sp, #0x44
	mov r0, sp
	bl sub_80C6DBC
	mov r5, sp
	adds r5, #1
	ldr r2, _080C6BF4 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _080C6BF8 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0x90
	strb r0, [r2]
	add r1, sp, #0x40
	ldr r2, _080C6BFC @ =0x00004E20
	adds r0, r2, #0
	b _080C6C04
	.align 2, 0
_080C6BF4: .4byte 0x0E005555
_080C6BF8: .4byte 0x0E002AAA
_080C6BFC: .4byte 0x00004E20
_080C6C00:
	ldrh r0, [r1]
	subs r0, #1
_080C6C04:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _080C6C00
	ldr r0, _080C6C40 @ =0x0E000001
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0x14
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	orrs r4, r0
	ldr r1, _080C6C44 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r1]
	ldr r2, _080C6C48 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r2]
	movs r0, #0xf0
	strb r0, [r1]
	strb r0, [r1]
	add r1, sp, #0x40
	ldr r2, _080C6C4C @ =0x00004E20
	adds r0, r2, #0
	b _080C6C54
	.align 2, 0
_080C6C40: .4byte 0x0E000001
_080C6C44: .4byte 0x0E005555
_080C6C48: .4byte 0x0E002AAA
_080C6C4C: .4byte 0x00004E20
_080C6C50:
	ldrh r0, [r1]
	subs r0, #1
_080C6C54:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _080C6C50
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C6C68
sub_80C6C68: @ 0x080C6C68
	push {lr}
	ldr r1, _080C6C88 @ =0x03000442
	ldrh r0, [r1]
	cmp r0, #0
	beq _080C6C84
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C6C84
	ldr r1, _080C6C8C @ =gUnknown_03006C24
	movs r0, #1
	strb r0, [r1]
_080C6C84:
	pop {r0}
	bx r0
	.align 2, 0
_080C6C88: .4byte 0x03000442
_080C6C8C: .4byte gUnknown_03006C24

	thumb_func_start sub_80C6C90
sub_80C6C90: @ 0x080C6C90
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _080C6CC4
	ldr r0, _080C6CB4 @ =0x03000440
	strb r1, [r0]
	ldr r1, _080C6CB8 @ =0x03000444
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _080C6CBC @ =0x04000100
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _080C6CC0 @ =sub_80C6C68
	str r0, [r2]
	movs r0, #0
	b _080C6CC6
	.align 2, 0
_080C6CB4: .4byte 0x03000440
_080C6CB8: .4byte 0x03000444
_080C6CBC: .4byte 0x04000100
_080C6CC0: .4byte sub_80C6C68
_080C6CC4:
	movs r0, #1
_080C6CC6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C6CCC
sub_80C6CCC: @ 0x080C6CCC
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080C6D50 @ =gUnknown_03006C44
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	ldr r0, [r1]
	adds r2, r2, r0
	ldr r1, _080C6D54 @ =0x03000448
	ldr r0, _080C6D58 @ =0x04000208
	mov sb, r0
	ldrh r0, [r0]
	strh r0, [r1]
	movs r3, #0
	mov r1, sb
	strh r3, [r1]
	ldr r0, _080C6D5C @ =0x03000444
	mov r8, r0
	ldr r4, [r0]
	strh r3, [r4, #2]
	ldr r6, _080C6D60 @ =0x04000200
	ldr r1, _080C6D64 @ =0x03000440
	mov sl, r1
	ldrb r1, [r1]
	movs r5, #8
	adds r0, r5, #0
	lsls r0, r1
	adds r1, r0, #0
	ldrh r0, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r0, _080C6D68 @ =gUnknown_03006C24
	strb r3, [r0]
	ldr r1, _080C6D6C @ =0x03000442
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	ldrh r0, [r2]
	strh r0, [r4]
	adds r0, r4, #2
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	str r4, [r1]
	ldr r1, _080C6D70 @ =0x04000202
	mov r2, sl
	ldrb r0, [r2]
	lsls r5, r0
	strh r5, [r1]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C6D50: .4byte gUnknown_03006C44
_080C6D54: .4byte 0x03000448
_080C6D58: .4byte 0x04000208
_080C6D5C: .4byte 0x03000444
_080C6D60: .4byte 0x04000200
_080C6D64: .4byte 0x03000440
_080C6D68: .4byte gUnknown_03006C24
_080C6D6C: .4byte 0x03000442
_080C6D70: .4byte 0x04000202

	thumb_func_start sub_80C6D74
sub_80C6D74: @ 0x080C6D74
	ldr r3, _080C6DA4 @ =0x04000208
	movs r1, #0
	strh r1, [r3]
	ldr r2, _080C6DA8 @ =0x03000444
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _080C6DAC @ =0x04000200
	ldr r0, _080C6DB0 @ =0x03000440
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _080C6DB4 @ =0x03000448
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_080C6DA4: .4byte 0x04000208
_080C6DA8: .4byte 0x03000444
_080C6DAC: .4byte 0x04000200
_080C6DB0: .4byte 0x03000440
_080C6DB4: .4byte 0x03000448

	thumb_func_start sub_80C6DB8
sub_80C6DB8: @ 0x080C6DB8
    ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_80C6DBC
sub_80C6DBC: @ 0x080C6DBC
	push {lr}
	adds r2, r0, #0
	ldr r1, _080C6DD8 @ =gUnknown_03006C28
	adds r0, r2, #1
	str r0, [r1]
	ldr r3, _080C6DDC @ =sub_80C6DB8
	movs r0, #1
	bics r3, r0
	ldr r0, _080C6DE0 @ =sub_80C6DBC
	ldr r1, _080C6DDC @ =sub_80C6DB8
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080C6DF0
	.align 2, 0
_080C6DD8: .4byte gUnknown_03006C28
_080C6DDC: .4byte sub_80C6DB8
_080C6DE0: .4byte sub_80C6DBC
_080C6DE4:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080C6DF0:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080C6DE4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80C6DFC
sub_80C6DFC: @ 0x080C6DFC
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _080C6E18
	movs r2, #1
	rsbs r2, r2, #0
_080C6E0A:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _080C6E0A
_080C6E18:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80C6E20
sub_80C6E20: @ 0x080C6E20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _080C6E6C @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080C6E70 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080C6E74 @ =gUnknown_03006C34
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080C6E58
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80C6BA8
	movs r0, #0xf
	ands r4, r0
_080C6E58:
	ldr r3, _080C6E78 @ =sub_80C6DFC
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _080C6E7C @ =sub_80C6E20
	ldr r1, _080C6E78 @ =sub_80C6DFC
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080C6E8C
	.align 2, 0
_080C6E6C: .4byte 0x04000204
_080C6E70: .4byte 0x0000FFFC
_080C6E74: .4byte gUnknown_03006C34
_080C6E78: .4byte sub_80C6DFC
_080C6E7C: .4byte sub_80C6E20
_080C6E80:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080C6E8C:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080C6E80
	mov r3, sp
	adds r3, #1
	ldr r0, _080C6EB8 @ =gUnknown_03006C34
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r4, r0
	adds r0, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r5, r2
	adds r0, r0, r1
	adds r1, r6, #0
	adds r2, r7, #0
	bl _call_via_r3
	add sp, #0x80
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C6EB8: .4byte gUnknown_03006C34

	thumb_func_start sub_80C6EBC
sub_80C6EBC: @ 0x080C6EBC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _080C6EE2
	movs r2, #1
	rsbs r2, r2, #0
_080C6ECC:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _080C6EDC
	subs r0, r3, #1
	b _080C6EE4
_080C6EDC:
	subs r4, #1
	cmp r4, r2
	bne _080C6ECC
_080C6EE2:
	movs r0, #0
_080C6EE4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80C6EEC
sub_80C6EEC: @ 0x080C6EEC
	push {r4, r5, lr}
	sub sp, #0x100
	adds r5, r1, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _080C6F34 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080C6F38 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080C6F3C @ =gUnknown_03006C34
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080C6F20
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80C6BA8
	movs r0, #0xf
	ands r4, r0
_080C6F20:
	ldr r3, _080C6F40 @ =sub_80C6EBC
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _080C6F44 @ =sub_80C6EEC
	ldr r1, _080C6F40 @ =sub_80C6EBC
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080C6F54
	.align 2, 0
_080C6F34: .4byte 0x04000204
_080C6F38: .4byte 0x0000FFFC
_080C6F3C: .4byte gUnknown_03006C34
_080C6F40: .4byte sub_80C6EBC
_080C6F44: .4byte sub_80C6EEC
_080C6F48:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080C6F54:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080C6F48
	mov r3, sp
	adds r3, #1
	ldr r0, _080C6F80 @ =gUnknown_03006C34
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r4, r1
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r1, r2
	ldrh r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080C6F80: .4byte gUnknown_03006C34

	thumb_func_start sub_80C6F84
sub_80C6F84: @ 0x080C6F84
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r2, r0, #0x10
	lsrs r4, r2, #0x10
	ldr r0, _080C6FCC @ =gUnknown_03006C34
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080C6FAC
	lsrs r0, r2, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80C6BA8
	movs r0, #0xf
	ands r4, r0
_080C6FAC:
	ldr r2, _080C6FD0 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080C6FD4 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _080C6FD8 @ =sub_80C6EBC
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _080C6FDC @ =sub_80C6EEC
	ldr r1, _080C6FD8 @ =sub_80C6EBC
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080C6FEC
	.align 2, 0
_080C6FCC: .4byte gUnknown_03006C34
_080C6FD0: .4byte 0x04000204
_080C6FD4: .4byte 0x0000FFFC
_080C6FD8: .4byte sub_80C6EBC
_080C6FDC: .4byte sub_80C6EEC
_080C6FE0:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080C6FEC:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080C6FE0
	mov r3, sp
	adds r3, #1
	ldr r0, _080C7018 @ =gUnknown_03006C34
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r4, r1
	adds r1, r4, #0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r1, r1, r0
	adds r0, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C7018: .4byte gUnknown_03006C34

	thumb_func_start sub_80C701C
sub_80C701C: @ 0x080C701C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _080C702E
_080C7028:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080C702E:
	cmp r6, #2
	bhi _080C7054
	ldr r0, _080C705C @ =gUnknown_03006C30
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _080C7028
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80C6EEC
	adds r2, r0, #0
	cmp r2, #0
	bne _080C7028
_080C7054:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C705C: .4byte gUnknown_03006C30

	thumb_func_start sub_80C7060
sub_80C7060: @ 0x080C7060
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _080C7074
_080C706E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080C7074:
	cmp r6, #2
	bhi _080C709C
	ldr r0, _080C70A4 @ =gUnknown_03006C30
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080C706E
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_80C6F84
	adds r3, r0, #0
	cmp r3, #0
	bne _080C706E
_080C709C:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C70A4: .4byte gUnknown_03006C30

	thumb_func_start sub_80C70A8
sub_80C70A8: @ 0x080C70A8
	push {r4, lr}
	ldr r2, _080C70C8 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080C70CC @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	bl sub_80C6BCC
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _080C70D0 @ =gUnknown_082B9AC4
	movs r4, #1
	b _080C70D6
	.align 2, 0
_080C70C8: .4byte 0x04000204
_080C70CC: .4byte 0x0000FFFC
_080C70D0: .4byte gUnknown_082B9AC4
_080C70D4:
	adds r2, #4
_080C70D6:
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C70EA
	ldrh r0, [r1, #0x28]
	cmp r3, r0
	bne _080C70D4
	movs r4, #0
_080C70EA:
	ldr r1, _080C7124 @ =gUnknown_03006C30
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _080C7128 @ =gUnknown_03006C3C
	ldr r0, [r2]
	ldr r0, [r0, #4]
	str r0, [r1]
	ldr r1, _080C712C @ =gUnknown_03006C40
	ldr r0, [r2]
	ldr r0, [r0, #8]
	str r0, [r1]
	ldr r1, _080C7130 @ =gUnknown_03006C2C
	ldr r0, [r2]
	ldr r0, [r0, #0xc]
	str r0, [r1]
	ldr r1, _080C7134 @ =gUnknown_03006C44
	ldr r0, [r2]
	ldr r0, [r0, #0x10]
	str r0, [r1]
	ldr r1, _080C7138 @ =gUnknown_03006C34
	ldr r0, [r2]
	adds r0, #0x14
	str r0, [r1]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C7124: .4byte gUnknown_03006C30
_080C7128: .4byte gUnknown_03006C3C
_080C712C: .4byte gUnknown_03006C40
_080C7130: .4byte gUnknown_03006C2C
_080C7134: .4byte gUnknown_03006C44
_080C7138: .4byte gUnknown_03006C34

	thumb_func_start sub_80C713C
sub_80C713C: @ 0x080C713C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	movs r0, #0
	mov r8, r0
	adds r0, r4, #0
	bl sub_80C6CCC
	ldr r7, _080C7164 @ =gUnknown_03006C28
	movs r0, #0xc0
	lsls r0, r0, #8
	orrs r4, r0
	lsls r4, r4, #0x10
	b _080C7188
	.align 2, 0
_080C7164: .4byte gUnknown_03006C28
_080C7168:
	ldr r0, _080C7180 @ =gUnknown_03006C34
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0xc2
	bne _080C7178
	ldr r1, _080C7184 @ =0x0E005555
	movs r0, #0xf0
	strb r0, [r1]
_080C7178:
	lsrs r4, r4, #0x10
	mov r8, r4
	b _080C71B0
	.align 2, 0
_080C7180: .4byte gUnknown_03006C34
_080C7184: .4byte 0x0E005555
_080C7188:
	ldr r1, [r7]
	adds r0, r5, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	beq _080C71B0
	ldr r0, _080C71C0 @ =gUnknown_03006C24
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C7188
	ldr r1, [r7]
	adds r0, r5, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r6
	bne _080C7168
_080C71B0:
	bl sub_80C6D74
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C71C0: .4byte gUnknown_03006C24

	thumb_func_start sub_80C71C4
sub_80C71C4: @ 0x080C71C4
	push {r4, r5, r6, lr}
	sub sp, #0x40
	ldr r5, _080C7220 @ =0x04000204
	ldrh r1, [r5]
	ldr r6, _080C7224 @ =0x0000FFFC
	ands r1, r6
	ldr r0, _080C7228 @ =gUnknown_03006C34
	ldr r0, [r0]
	ldrh r0, [r0, #0x10]
	orrs r1, r0
	strh r1, [r5]
	ldr r1, _080C722C @ =0x0E005555
	movs r4, #0xaa
	strb r4, [r1]
	ldr r3, _080C7230 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r4, [r1]
	strb r2, [r3]
	movs r0, #0x10
	strb r0, [r1]
	mov r0, sp
	bl sub_80C6DBC
	ldr r0, _080C7234 @ =gUnknown_03006C2C
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r3, [r0]
	movs r0, #3
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	ands r1, r6
	movs r2, #3
	orrs r1, r2
	strh r1, [r5]
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C7220: .4byte 0x04000204
_080C7224: .4byte 0x0000FFFC
_080C7228: .4byte gUnknown_03006C34
_080C722C: .4byte 0x0E005555
_080C7230: .4byte 0x0E002AAA
_080C7234: .4byte gUnknown_03006C2C

	thumb_func_start sub_80C7238
sub_80C7238: @ 0x080C7238
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x40
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bhi _080C72C0
	ldr r6, _080C72A8 @ =0x04000204
	ldrh r1, [r6]
	ldr r0, _080C72AC @ =0x0000FFFC
	mov r8, r0
	ands r1, r0
	ldr r0, _080C72B0 @ =gUnknown_03006C34
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r6]
	ldrb r4, [r2, #8]
	lsls r3, r4
	adds r4, r3, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r4, r4, r2
	ldr r1, _080C72B4 @ =0x0E005555
	movs r5, #0xaa
	strb r5, [r1]
	ldr r3, _080C72B8 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r5, [r1]
	strb r2, [r3]
	movs r0, #0x30
	strb r0, [r4]
	mov r0, sp
	bl sub_80C6DBC
	ldr r0, _080C72BC @ =gUnknown_03006C2C
	ldr r3, [r0]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, r8
	ands r1, r2
	movs r2, #3
	orrs r1, r2
	strh r1, [r6]
	b _080C72C2
	.align 2, 0
_080C72A8: .4byte 0x04000204
_080C72AC: .4byte 0x0000FFFC
_080C72B0: .4byte gUnknown_03006C34
_080C72B4: .4byte 0x0E005555
_080C72B8: .4byte 0x0E002AAA
_080C72BC: .4byte gUnknown_03006C2C
_080C72C0:
	ldr r0, _080C72D0 @ =0x000080FF
_080C72C2:
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C72D0: .4byte 0x000080FF

	thumb_func_start sub_80C72D4
sub_80C72D4: @ 0x080C72D4
	push {r4, lr}
	ldr r4, _080C7300 @ =0x0E005555
	movs r2, #0xaa
	strb r2, [r4]
	ldr r3, _080C7304 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r2, #0xa0
	strb r2, [r4]
	ldrb r2, [r0]
	strb r2, [r1]
	ldr r3, _080C7308 @ =gUnknown_03006C2C
	ldrb r2, [r0]
	ldr r3, [r3]
	movs r0, #1
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C7300: .4byte 0x0E005555
_080C7304: .4byte 0x0E002AAA
_080C7308: .4byte gUnknown_03006C2C

	thumb_func_start sub_80C730C
sub_80C730C: @ 0x080C730C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x60
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _080C732C
	ldr r0, _080C7328 @ =0x000080FF
	b _080C741A
	.align 2, 0
_080C7328: .4byte 0x000080FF
_080C732C:
	ldr r0, _080C734C @ =gUnknown_03006C34
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	mov r7, r8
	lsls r7, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r7, r7, r0
	ldr r1, _080C7350 @ =sub_80C7430
	movs r0, #1
	adds r3, r1, #0
	bics r3, r0
	mov r2, sp
	ldr r0, _080C7354 @ =sub_80C7454
	subs r0, r0, r1
	b _080C7362
	.align 2, 0
_080C734C: .4byte gUnknown_03006C34
_080C7350: .4byte sub_80C7430
_080C7354: .4byte sub_80C7454
_080C7358:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #2
_080C7362:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080C7358
	movs r4, #0
	b _080C7378
_080C736E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	beq _080C7418
_080C7378:
	mov r0, r8
	bl sub_80C7238
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _080C736E
	adds r0, r7, #0
	mov r1, sp
	adds r1, #1
	bl sub_80C7454
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _080C736E
	movs r6, #1
	cmp r4, #0
	beq _080C73A0
	movs r6, #6
_080C73A0:
	movs r4, #1
	cmp r4, r6
	bhi _080C73B6
_080C73A6:
	mov r0, r8
	bl sub_80C7238
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	bls _080C73A6
_080C73B6:
	mov r0, sp
	bl sub_80C6DBC
	ldr r3, _080C73D8 @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _080C73DC @ =0x0000FFFC
	ands r1, r0
	ldr r0, _080C73E0 @ =gUnknown_03006C34
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _080C73E4 @ =gUnknown_03006C38
	ldr r0, [r2, #4]
	strh r0, [r1]
	adds r4, r1, #0
	b _080C73F4
	.align 2, 0
_080C73D8: .4byte 0x04000204
_080C73DC: .4byte 0x0000FFFC
_080C73E0: .4byte gUnknown_03006C34
_080C73E4: .4byte gUnknown_03006C38
_080C73E8:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	movs r0, #1
	add sb, r0
	adds r7, #1
_080C73F4:
	ldrh r0, [r4]
	cmp r0, #0
	beq _080C740A
	mov r0, sb
	adds r1, r7, #0
	bl sub_80C72D4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080C73E8
_080C740A:
	ldr r2, _080C7428 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080C742C @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_080C7418:
	adds r0, r5, #0
_080C741A:
	add sp, #0x60
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C7428: .4byte 0x04000204
_080C742C: .4byte 0x0000FFFC

	thumb_func_start sub_80C7430
sub_80C7430: @ 0x080C7430
	push {lr}
	adds r2, r0, #0
	ldr r0, _080C743C @ =gUnknown_03006C34
	ldr r0, [r0]
	ldr r1, [r0, #4]
	b _080C7442
	.align 2, 0
_080C743C: .4byte gUnknown_03006C34
_080C7440:
	subs r1, #1
_080C7442:
	cmp r1, #0
	beq _080C744E
	ldrb r0, [r2]
	adds r2, #1
	cmp r0, #0xff
	beq _080C7440
_080C744E:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_80C7454
sub_80C7454: @ 0x080C7454
	push {lr}
	bl _call_via_r1
	cmp r0, #0
	bne _080C7462
	movs r0, #0
	b _080C7464
_080C7462:
	ldr r0, _080C7468 @ =0x00008004
_080C7464:
	pop {r1}
	bx r1
	.align 2, 0
_080C7468: .4byte 0x00008004

	thumb_func_start sub_80C746C
sub_80C746C: @ 0x080C746C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080C7484 @ =gUnknown_03006C34
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r4, r0
	blo _080C748C
	ldr r0, _080C7488 @ =0x000080FF
	b _080C7508
	.align 2, 0
_080C7484: .4byte gUnknown_03006C34
_080C7488: .4byte 0x000080FF
_080C748C:
	adds r0, r4, #0
	bl sub_80C7238
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _080C7506
	mov r0, sp
	bl sub_80C6DBC
	ldr r3, _080C74C8 @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _080C74CC @ =0x0000FFFC
	ands r1, r0
	ldr r0, _080C74D0 @ =gUnknown_03006C34
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _080C74D4 @ =gUnknown_03006C38
	ldr r0, [r2, #4]
	strh r0, [r1]
	ldrb r0, [r2, #8]
	lsls r4, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	adds r6, r1, #0
	b _080C74E2
	.align 2, 0
_080C74C8: .4byte 0x04000204
_080C74CC: .4byte 0x0000FFFC
_080C74D0: .4byte gUnknown_03006C34
_080C74D4: .4byte gUnknown_03006C38
_080C74D8:
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	adds r7, #1
	adds r4, #1
_080C74E2:
	ldrh r0, [r6]
	cmp r0, #0
	beq _080C74F8
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_80C72D4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080C74D8
_080C74F8:
	ldr r2, _080C7510 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080C7514 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_080C7506:
	adds r0, r5, #0
_080C7508:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080C7510: .4byte 0x04000204
_080C7514: .4byte 0x0000FFFC

	thumb_func_start sub_80C7518
sub_80C7518: @ 0x080C7518
	svc #0xa
	bx lr

	thumb_func_start sub_80C751C
sub_80C751C: @ 0x080C751C
	svc #0xc
	bx lr

	thumb_func_start sub_80C7520
sub_80C7520: @ 0x080C7520
	svc #0xb
	bx lr

	thumb_func_start sub_80C7524
sub_80C7524: @ 0x080C7524
	svc #6
	bx lr

	thumb_func_start sub_80C7528
sub_80C7528: @ 0x080C7528
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_80C7530
sub_80C7530: @ 0x080C7530
	svc #0x11
	bx lr

	thumb_func_start sub_80C7534
sub_80C7534: @ 0x080C7534
	movs r1, #1
	svc #0x25
	bx lr
	.align 2, 0

	thumb_func_start sub_80C753C
sub_80C753C: @ 0x080C753C
	svc #0x14
	bx lr

	thumb_func_start sub_80C7540
sub_80C7540: @ 0x080C7540
	ldr r3, _080C7550 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r1, _080C7554 @ =gUnknown_03007F00
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_080C7550: .4byte 0x04000208
_080C7554: .4byte gUnknown_03007F00

	thumb_func_start sub_80C7558
sub_80C7558: @ 0x080C7558
	movs r0, #0
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start sub_80C7560
sub_80C7560: @ 0x080C7560
	movs r0, #1
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start sub_80C7568
sub_80C7568: @ 0x080C7568
	svc #8
	bx lr

	thumb_func_start sub_80C756C
sub_80C756C: @ 0x080C756C
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	thumb_func_start sub_80C7574
sub_80C7574: @ 0x080C7574
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	adds r6, r1, #0
	bl sub_80C7960
	adds r4, r0, #0
	ldr r0, _080C75F8 @ =gUnknown_082B9CC0
	ldr r0, [r0]
	mov sb, r0
	movs r0, #1
	rsbs r0, r0, #0
	cmp sb, r0
	bne _080C7598
	b _080C7954
_080C7598:
	adds r0, r6, #0
	bl sub_80C83A8
	cmp r0, #0
	beq _080C75A4
	b _080C7954
_080C75A4:
	adds r0, r7, #0
	bl sub_80C83A8
	cmp r0, #0
	beq _080C7620
	ldr r1, _080C75FC @ =0x00000000
	adds r0, r6, #0
	bl sub_80CA090
	adds r1, r0, #0
	cmp r1, #0
	beq _080C75BE
	b _080C7954
_080C75BE:
	movs r0, #1
	str r0, [sp]
	ldr r0, _080C7600 @ =gUnknown_082B9C24
	str r0, [sp, #4]
	str r1, [sp, #0x20]
	adds r0, r7, #0
	bl sub_80CA344
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl sub_80CA344
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r7, #0
	bl sub_80CA344
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r0, sb
	cmp r0, #2
	bne _080C760C
_080C75EC:
	ldr r0, _080C7604 @ =0x3FF00000
	ldr r1, _080C7608 @ =0x00000000
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	b _080C7926
	.align 2, 0
_080C75F8: .4byte gUnknown_082B9CC0
_080C75FC: .4byte 0x00000000
_080C7600: .4byte gUnknown_082B9C24
_080C7604: .4byte 0x3FF00000
_080C7608: .4byte 0x00000000
_080C760C:
	mov r0, sp
	bl sub_80C8210
	cmp r0, #0
	beq _080C7618
	b _080C7926
_080C7618:
	bl sub_80CA3A4
	movs r1, #0x21
	b _080C7924
_080C7620:
	ldr r1, _080C767C @ =0x00000000
	mov r8, r1
	adds r0, r7, #0
	bl sub_80CA090
	adds r5, r0, #0
	cmp r5, #0
	bne _080C7710
	adds r0, r6, #0
	mov r1, r8
	bl sub_80CA090
	cmp r0, #0
	bne _080C768C
	movs r0, #1
	str r0, [sp]
	ldr r0, _080C7680 @ =gUnknown_082B9C24
	str r0, [sp, #4]
	str r5, [sp, #0x20]
	adds r0, r7, #0
	bl sub_80CA344
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl sub_80CA344
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, _080C7684 @ =0x00000000
	ldr r1, _080C7688 @ =0x00000000
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r2, sb
	cmp r2, #0
	bne _080C75EC
	mov r0, sp
	bl sub_80C8210
	cmp r0, #0
	beq _080C7674
	b _080C7926
_080C7674:
	bl sub_80CA3A4
	movs r1, #0x21
	b _080C7924
	.align 2, 0
_080C767C: .4byte 0x00000000
_080C7680: .4byte gUnknown_082B9C24
_080C7684: .4byte 0x00000000
_080C7688: .4byte 0x00000000
_080C768C:
	adds r0, r6, #0
	bl sub_80C8390
	cmp r0, #0
	bne _080C7698
	b _080C7954
_080C7698:
	adds r0, r6, #0
	mov r1, r8
	bl sub_80CA1B0
	cmp r0, #0
	blt _080C76A6
	b _080C7954
_080C76A6:
	movs r0, #1
	str r0, [sp]
	ldr r0, _080C76D0 @ =gUnknown_082B9C24
	str r0, [sp, #4]
	str r5, [sp, #0x20]
	adds r0, r7, #0
	bl sub_80CA344
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl sub_80CA344
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r0, sb
	cmp r0, #0
	bne _080C76DC
	ldr r0, _080C76D4 @ =0x00000000
	ldr r1, _080C76D8 @ =0x00000000
	b _080C76E6
	.align 2, 0
_080C76D0: .4byte gUnknown_082B9C24
_080C76D4: .4byte 0x00000000
_080C76D8: .4byte 0x00000000
_080C76DC:
	ldr r0, _080C7708 @ =gUnknown_082B9CB8
	ldr r1, [r0, #4]
	ldr r0, [r0]
	bl sub_80C9990
_080C76E6:
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, _080C770C @ =gUnknown_082B9CC0
	ldr r0, [r0]
	cmp r0, #2
	beq _080C76FE
	mov r0, sp
	bl sub_80C8210
	cmp r0, #0
	beq _080C76FE
	b _080C7926
_080C76FE:
	bl sub_80CA3A4
	movs r1, #0x21
	b _080C7924
	.align 2, 0
_080C7708: .4byte gUnknown_082B9CB8
_080C770C: .4byte gUnknown_082B9CC0
_080C7710:
	adds r0, r4, #0
	bl sub_80C8390
	adds r5, r0, #0
	cmp r5, #0
	beq _080C771E
	b _080C78C4
_080C771E:
	adds r0, r7, #0
	bl sub_80C8390
	cmp r0, #0
	bne _080C772A
	b _080C78C4
_080C772A:
	adds r0, r6, #0
	bl sub_80C8390
	cmp r0, #0
	bne _080C7736
	b _080C78C4
_080C7736:
	adds r0, r4, #0
	bl sub_80C83A8
	adds r1, r0, #0
	cmp r1, #0
	beq _080C77A8
	movs r0, #1
	str r0, [sp]
	ldr r0, _080C776C @ =gUnknown_082B9C24
	str r0, [sp, #4]
	str r5, [sp, #0x20]
	adds r0, r7, #0
	bl sub_80CA344
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl sub_80CA344
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r1, sb
	cmp r1, #0
	bne _080C7778
	ldr r0, _080C7770 @ =0x00000000
	ldr r1, _080C7774 @ =0x00000000
	b _080C777C
	.align 2, 0
_080C776C: .4byte gUnknown_082B9C24
_080C7770: .4byte 0x00000000
_080C7774: .4byte 0x00000000
_080C7778:
	ldr r1, _080C77A0 @ =0xFFFFFFFF
	ldr r0, _080C779C @ =0x7FFFFFFF
_080C777C:
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, _080C77A4 @ =gUnknown_082B9CC0
	ldr r0, [r0]
	cmp r0, #2
	beq _080C7794
	mov r0, sp
	bl sub_80C8210
	cmp r0, #0
	beq _080C7794
	b _080C7926
_080C7794:
	bl sub_80CA3A4
	movs r1, #0x21
	b _080C7924
	.align 2, 0
_080C779C: .4byte 0x7FFFFFFF
_080C77A0: .4byte 0xFFFFFFFF
_080C77A4: .4byte gUnknown_082B9CC0
_080C77A8:
	movs r0, #3
	str r0, [sp]
	ldr r0, _080C7828 @ =gUnknown_082B9C24
	str r0, [sp, #4]
	str r1, [sp, #0x20]
	adds r0, r7, #0
	bl sub_80CA344
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl sub_80CA344
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r2, sb
	cmp r2, #0
	bne _080C784C
	ldr r0, _080C782C @ =0x47EFFFFF
	ldr r1, _080C7830 @ =0xE0000000
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	adds r0, r6, #0
	bl sub_80CA344
	ldr r2, _080C7834 @ =0x3FE00000
	ldr r3, _080C7838 @ =0x00000000
	bl sub_80C917C
	bl sub_80C99E0
	adds r6, r0, #0
	adds r0, r7, #0
	bl sub_80CA344
	ldr r2, _080C783C @ =0x00000000
	ldr r3, _080C7840 @ =0x00000000
	bl sub_80C9808
	cmp r0, #0
	blt _080C77FC
	b _080C790C
_080C77FC:
	adds r0, r6, #0
	bl sub_80CA344
	bl sub_80C8224
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_80CA344
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80C9724
	cmp r0, #0
	beq _080C790C
	ldr r0, _080C7844 @ =0xC7EFFFFF
	ldr r1, _080C7848 @ =0xE0000000
	b _080C7908
	.align 2, 0
_080C7828: .4byte gUnknown_082B9C24
_080C782C: .4byte 0x47EFFFFF
_080C7830: .4byte 0xE0000000
_080C7834: .4byte 0x3FE00000
_080C7838: .4byte 0x00000000
_080C783C: .4byte 0x00000000
_080C7840: .4byte 0x00000000
_080C7844: .4byte 0xC7EFFFFF
_080C7848: .4byte 0xE0000000
_080C784C:
	ldr r0, _080C78B0 @ =gUnknown_082B9CB8
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	adds r0, r6, #0
	bl sub_80CA344
	ldr r2, _080C78B4 @ =0x3FE00000
	ldr r3, _080C78B8 @ =0x00000000
	bl sub_80C917C
	bl sub_80C99E0
	adds r6, r0, #0
	adds r0, r7, #0
	bl sub_80CA344
	ldr r2, _080C78BC @ =0x00000000
	ldr r3, _080C78C0 @ =0x00000000
	bl sub_80C9808
	cmp r0, #0
	bge _080C790C
	adds r0, r6, #0
	bl sub_80CA344
	bl sub_80C8224
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_80CA344
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80C9724
	cmp r0, #0
	beq _080C790C
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl sub_80C9990
	b _080C7908
	.align 2, 0
_080C78B0: .4byte gUnknown_082B9CB8
_080C78B4: .4byte 0x3FE00000
_080C78B8: .4byte 0x00000000
_080C78BC: .4byte 0x00000000
_080C78C0: .4byte 0x00000000
_080C78C4:
	ldr r1, _080C7940 @ =0x00000000
	adds r0, r4, #0
	bl sub_80CA090
	adds r5, r0, #0
	cmp r5, #0
	bne _080C7954
	adds r0, r7, #0
	bl sub_80C8390
	cmp r0, #0
	beq _080C7954
	adds r0, r6, #0
	bl sub_80C8390
	cmp r0, #0
	beq _080C7954
	movs r0, #4
	str r0, [sp]
	ldr r0, _080C7944 @ =gUnknown_082B9C24
	str r0, [sp, #4]
	str r5, [sp, #0x20]
	adds r0, r7, #0
	bl sub_80CA344
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl sub_80CA344
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, _080C7948 @ =0x00000000
	ldr r1, _080C794C @ =0x00000000
_080C7908:
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
_080C790C:
	ldr r0, _080C7950 @ =gUnknown_082B9CC0
	ldr r0, [r0]
	cmp r0, #2
	beq _080C791E
	mov r0, sp
	bl sub_80C8210
	cmp r0, #0
	bne _080C7926
_080C791E:
	bl sub_80CA3A4
	movs r1, #0x22
_080C7924:
	str r1, [r0]
_080C7926:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _080C7934
	bl sub_80CA3A4
	ldr r1, [sp, #0x20]
	str r1, [r0]
_080C7934:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	bl sub_80C99E0
	b _080C7956
	.align 2, 0
_080C7940: .4byte 0x00000000
_080C7944: .4byte gUnknown_082B9C24
_080C7948: .4byte 0x00000000
_080C794C: .4byte 0x00000000
_080C7950: .4byte gUnknown_082B9CC0
_080C7954:
	adds r0, r4, #0
_080C7956:
	add sp, #0x2c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_80C7960
sub_80C7960: @ 0x080C7960
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r6, r0, #0
	str r1, [sp]
	mov sb, r6
	ldr r2, [sp]
	ldr r0, _080C7988 @ =0x7FFFFFFF
	mov r7, sb
	ands r7, r0
	adds r4, r2, #0
	ands r4, r0
	cmp r4, #0
	bne _080C7990
	ldr r0, _080C798C @ =0x3F800000
	b _080C8126
	.align 2, 0
_080C7988: .4byte 0x7FFFFFFF
_080C798C: .4byte 0x3F800000
_080C7990:
	movs r0, #0xff
	lsls r0, r0, #0x17
	cmp r7, r0
	bgt _080C799C
	cmp r4, r0
	ble _080C79A6
_080C799C:
	adds r0, r6, #0
	ldr r1, [sp]
	bl sub_80C9CD4
	b _080C8126
_080C79A6:
	movs r0, #0
	str r0, [sp, #0x14]
	mov r1, sb
	cmp r1, #0
	bge _080C79E2
	ldr r0, _080C79BC @ =0x4B7FFFFF
	cmp r4, r0
	ble _080C79C0
	movs r3, #2
	str r3, [sp, #0x14]
	b _080C79E2
	.align 2, 0
_080C79BC: .4byte 0x4B7FFFFF
_080C79C0:
	ldr r0, _080C79FC @ =0x3F7FFFFF
	cmp r4, r0
	ble _080C79E2
	asrs r0, r4, #0x17
	movs r1, #0x96
	subs r1, r1, r0
	adds r5, r4, #0
	asrs r5, r1
	adds r0, r5, #0
	lsls r0, r1
	cmp r0, r4
	bne _080C79E2
	movs r0, #1
	ands r5, r0
	movs r0, #2
	subs r5, r0, r5
	str r5, [sp, #0x14]
_080C79E2:
	movs r0, #0xff
	lsls r0, r0, #0x17
	cmp r4, r0
	bne _080C7A28
	movs r0, #0xfe
	lsls r0, r0, #0x16
	cmp r7, r0
	bne _080C7A00
	ldr r0, [sp]
	adds r1, r0, #0
	bl sub_80C9D00
	b _080C8126
	.align 2, 0
_080C79FC: .4byte 0x3F7FFFFF
_080C7A00:
	cmp r7, r0
	ble _080C7A14
	ldr r0, _080C7A10 @ =0x00000000
	cmp r2, #0
	bge _080C7A0C
	b _080C8126
_080C7A0C:
	ldr r0, [sp]
	b _080C8126
	.align 2, 0
_080C7A10: .4byte 0x00000000
_080C7A14:
	cmp r2, #0
	bge _080C7A20
	ldr r0, [sp]
	bl sub_80CA308
	b _080C8126
_080C7A20:
	ldr r0, _080C7A24 @ =0x00000000
	b _080C8126
	.align 2, 0
_080C7A24: .4byte 0x00000000
_080C7A28:
	movs r0, #0xfe
	lsls r0, r0, #0x16
	cmp r4, r0
	bne _080C7A48
	cmp r2, #0
	bge _080C7A44
	ldr r0, _080C7A40 @ =0x3F800000
	adds r1, r6, #0
	bl sub_80C9E98
	b _080C8126
	.align 2, 0
_080C7A40: .4byte 0x3F800000
_080C7A44:
	adds r0, r6, #0
	b _080C8126
_080C7A48:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r2, r0
	bne _080C7A56
	adds r0, r6, #0
	adds r1, r6, #0
	b _080C8122
_080C7A56:
	movs r0, #0xfc
	lsls r0, r0, #0x16
	cmp r2, r0
	bne _080C7A6C
	mov r0, sb
	cmp r0, #0
	blt _080C7A6C
	adds r0, r6, #0
	bl sub_80C8134
	b _080C8126
_080C7A6C:
	adds r0, r6, #0
	str r2, [sp, #0x2c]
	bl sub_80C8384
	mov r8, r0
	movs r0, #0xff
	lsls r0, r0, #0x17
	ldr r2, [sp, #0x2c]
	cmp r7, r0
	beq _080C7A8E
	cmp r7, #0
	beq _080C7A8E
	movs r1, #0xfe
	lsls r1, r1, #0x16
	mov sl, r1
	cmp r7, sl
	bne _080C7ADA
_080C7A8E:
	mov r4, r8
	cmp r2, #0
	bge _080C7A9E
	ldr r0, _080C7AC0 @ =0x3F800000
	adds r1, r4, #0
	bl sub_80C9E98
	adds r4, r0, #0
_080C7A9E:
	mov r2, sb
	cmp r2, #0
	bge _080C7AD6
	ldr r3, _080C7AC4 @ =0xC0800000
	adds r0, r7, r3
	ldr r1, [sp, #0x14]
	orrs r0, r1
	cmp r0, #0
	bne _080C7AC8
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_80C9D00
	adds r1, r0, #0
	bl sub_80C9E98
	b _080C7AD4
	.align 2, 0
_080C7AC0: .4byte 0x3F800000
_080C7AC4: .4byte 0xC0800000
_080C7AC8:
	ldr r2, [sp, #0x14]
	cmp r2, #1
	bne _080C7AD6
	adds r0, r4, #0
	bl sub_80CA308
_080C7AD4:
	adds r4, r0, #0
_080C7AD6:
	adds r0, r4, #0
	b _080C8126
_080C7ADA:
	mov r3, sb
	lsrs r1, r3, #0x1f
	subs r0, r1, #1
	ldr r3, [sp, #0x14]
	orrs r0, r3
	str r1, [sp, #0x28]
	cmp r0, #0
	bne _080C7AFA
	adds r0, r6, #0
	adds r1, r6, #0
	bl sub_80C9D00
	adds r1, r0, #0
	bl sub_80C9E98
	b _080C8126
_080C7AFA:
	movs r0, #0x9a
	lsls r0, r0, #0x17
	cmp r4, r0
	ble _080C7BE0
	ldr r0, _080C7B14 @ =0x3F7FFFF7
	cmp r7, r0
	bgt _080C7B20
	ldr r0, _080C7B18 @ =0x00000000
	cmp r2, #0
	blt _080C7B10
	b _080C8126
_080C7B10:
	ldr r0, _080C7B1C @ =0x7F800000
	b _080C8126
	.align 2, 0
_080C7B14: .4byte 0x3F7FFFF7
_080C7B18: .4byte 0x00000000
_080C7B1C: .4byte 0x7F800000
_080C7B20:
	ldr r0, _080C7B34 @ =0x3F800007
	cmp r7, r0
	ble _080C7B40
	ldr r0, _080C7B38 @ =0x00000000
	cmp r2, #0
	bgt _080C7B2E
	b _080C8126
_080C7B2E:
	ldr r0, _080C7B3C @ =0x7F800000
	b _080C8126
	.align 2, 0
_080C7B34: .4byte 0x3F800007
_080C7B38: .4byte 0x00000000
_080C7B3C: .4byte 0x7F800000
_080C7B40:
	ldr r1, _080C7BC0 @ =0x3F800000
	adds r0, r6, #0
	bl sub_80C9D00
	adds r6, r0, #0
	adds r1, r6, #0
	bl sub_80C9D34
	adds r5, r0, #0
	ldr r1, _080C7BC4 @ =0x3E800000
	adds r0, r6, #0
	bl sub_80C9D34
	adds r1, r0, #0
	ldr r0, _080C7BC8 @ =0x3EAAAAAB
	bl sub_80C9D00
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_80C9D34
	adds r1, r0, #0
	ldr r0, _080C7BCC @ =0x3F000000
	bl sub_80C9D00
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_80C9D34
	mov r8, r0
	ldr r1, _080C7BD0 @ =0x3FB8AA00
	adds r0, r6, #0
	bl sub_80C9D34
	str r0, [sp, #0xc]
	ldr r1, _080C7BD4 @ =0x36ECA570
	adds r0, r6, #0
	bl sub_80C9D34
	adds r5, r0, #0
	ldr r1, _080C7BD8 @ =0x3FB8AA3B
	mov r0, r8
	bl sub_80C9D34
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_80C9D00
	mov sl, r0
	ldr r0, [sp, #0xc]
	mov r1, sl
	bl sub_80C9CD4
	adds r7, r0, #0
	ldr r0, _080C7BDC @ =0xFFFFF000
	ands r7, r0
	adds r0, r7, #0
	ldr r1, [sp, #0xc]
	bl sub_80C9D00
	adds r1, r0, #0
	mov r0, sl
	b _080C7E38
	.align 2, 0
_080C7BC0: .4byte 0x3F800000
_080C7BC4: .4byte 0x3E800000
_080C7BC8: .4byte 0x3EAAAAAB
_080C7BCC: .4byte 0x3F000000
_080C7BD0: .4byte 0x3FB8AA00
_080C7BD4: .4byte 0x36ECA570
_080C7BD8: .4byte 0x3FB8AA3B
_080C7BDC: .4byte 0xFFFFF000
_080C7BE0:
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r4, _080C7C1C @ =0x007FFFFF
	cmp r7, r4
	bgt _080C7BFC
	ldr r1, _080C7C20 @ =0x4B800000
	mov r0, r8
	bl sub_80C9D34
	mov r8, r0
	movs r1, #0x18
	rsbs r1, r1, #0
	str r1, [sp, #0x18]
	mov r7, r8
_080C7BFC:
	ldr r0, [sp, #0x18]
	subs r0, #0x7f
	asrs r1, r7, #0x17
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r5, r4, #0
	ands r5, r7
	adds r7, r5, #0
	mov r2, sl
	orrs r7, r2
	ldr r0, _080C7C24 @ =0x001CC471
	cmp r5, r0
	bgt _080C7C28
	movs r3, #0
	str r3, [sp, #0x10]
	b _080C7C40
	.align 2, 0
_080C7C1C: .4byte 0x007FFFFF
_080C7C20: .4byte 0x4B800000
_080C7C24: .4byte 0x001CC471
_080C7C28:
	ldr r0, _080C7EA8 @ =0x005DB3D6
	movs r1, #1
	str r1, [sp, #0x10]
	cmp r5, r0
	ble _080C7C40
	movs r2, #0
	str r2, [sp, #0x10]
	ldr r3, [sp, #0x18]
	adds r3, #1
	str r3, [sp, #0x18]
	ldr r0, _080C7EAC @ =0xFF800000
	adds r7, r7, r0
_080C7C40:
	mov r8, r7
	ldr r0, _080C7EB0 @ =gUnknown_082B9C2C
	ldr r1, [sp, #0x10]
	lsls r1, r1, #2
	str r1, [sp, #0x1c]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r0, r8
	ldr r1, [sp, #0x20]
	bl sub_80C9D00
	str r0, [sp, #0xc]
	mov r0, r8
	ldr r1, [sp, #0x20]
	bl sub_80C9CD4
	adds r1, r0, #0
	ldr r0, _080C7EB4 @ =0x3F800000
	bl sub_80C9E98
	mov sl, r0
	ldr r0, [sp, #0xc]
	mov r1, sl
	bl sub_80C9D34
	str r0, [sp, #8]
	ldr r5, [sp, #8]
	ldr r2, _080C7EB8 @ =0xFFFFF000
	ands r5, r2
	asrs r2, r7, #1
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r2, r0
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x15
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	adds r7, r2, r0
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	bl sub_80C9D00
	adds r1, r0, #0
	mov r0, r8
	bl sub_80C9D00
	mov sb, r0
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_80C9D34
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_80C9D00
	adds r7, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_80C9D34
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_80C9D00
	adds r1, r0, #0
	mov r0, sl
	bl sub_80C9D34
	mov r8, r0
	ldr r0, [sp, #8]
	adds r1, r0, #0
	bl sub_80C9D34
	mov sl, r0
	mov r1, sl
	bl sub_80C9D34
	adds r7, r0, #0
	ldr r1, _080C7EBC @ =0x3E53F142
	mov r0, sl
	bl sub_80C9D34
	ldr r1, _080C7EC0 @ =0x3E6C3255
	bl sub_80C9CD4
	adds r1, r0, #0
	mov r0, sl
	bl sub_80C9D34
	ldr r1, _080C7EC4 @ =0x3E8BA305
	bl sub_80C9CD4
	adds r1, r0, #0
	mov r0, sl
	bl sub_80C9D34
	ldr r1, _080C7EC8 @ =0x3EAAAAAB
	bl sub_80C9CD4
	adds r1, r0, #0
	mov r0, sl
	bl sub_80C9D34
	ldr r1, _080C7ECC @ =0x3EDB6DB7
	bl sub_80C9CD4
	adds r1, r0, #0
	mov r0, sl
	bl sub_80C9D34
	ldr r1, _080C7ED0 @ =0x3F19999A
	bl sub_80C9CD4
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_80C9D34
	str r0, [sp, #4]
	adds r0, r5, #0
	ldr r1, [sp, #8]
	bl sub_80C9CD4
	adds r1, r0, #0
	mov r0, r8
	bl sub_80C9D34
	adds r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_80C9CD4
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r5, #0
	bl sub_80C9D34
	mov sl, r0
	ldr r1, _080C7ED4 @ =0x40400000
	bl sub_80C9CD4
	ldr r1, [sp, #4]
	bl sub_80C9CD4
	adds r7, r0, #0
	ldr r0, _080C7EB8 @ =0xFFFFF000
	ands r7, r0
	adds r0, r7, #0
	ldr r1, _080C7ED4 @ =0x40400000
	bl sub_80C9D00
	mov r1, sl
	bl sub_80C9D00
	adds r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_80C9D00
	mov sb, r0
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_80C9D34
	str r0, [sp, #0xc]
	mov r0, r8
	adds r1, r7, #0
	bl sub_80C9D34
	adds r5, r0, #0
	mov r0, sb
	ldr r1, [sp, #8]
	bl sub_80C9D34
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_80C9CD4
	mov sl, r0
	ldr r0, [sp, #0xc]
	mov r1, sl
	bl sub_80C9CD4
	adds r7, r0, #0
	ldr r1, _080C7EB8 @ =0xFFFFF000
	ands r7, r1
	adds r0, r7, #0
	ldr r1, [sp, #0xc]
	bl sub_80C9D00
	adds r1, r0, #0
	mov r0, sl
	bl sub_80C9D00
	mov sl, r0
	ldr r1, _080C7ED8 @ =0x3F763800
	adds r0, r7, #0
	bl sub_80C9D34
	mov r8, r0
	ldr r1, _080C7EDC @ =0x369DC3A0
	adds r0, r7, #0
	bl sub_80C9D34
	adds r5, r0, #0
	ldr r1, _080C7EE0 @ =0x3F76384F
	mov r0, sl
	bl sub_80C9D34
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_80C9CD4
	ldr r1, _080C7EE4 @ =gUnknown_082B9C3C
	ldr r2, [sp, #0x1c]
	adds r1, r2, r1
	ldr r1, [r1]
	bl sub_80C9CD4
	adds r5, r0, #0
	ldr r0, [sp, #0x18]
	bl sub_80CA240
	adds r6, r0, #0
	mov r0, r8
	adds r1, r5, #0
	bl sub_80C9CD4
	ldr r1, _080C7EE8 @ =gUnknown_082B9C34
	ldr r3, [sp, #0x1c]
	adds r1, r3, r1
	ldr r1, [r1]
	mov sb, r1
	bl sub_80C9CD4
	adds r1, r6, #0
	bl sub_80C9CD4
	adds r7, r0, #0
	ldr r2, _080C7EB8 @ =0xFFFFF000
	ands r7, r2
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80C9D00
	mov r1, sb
	bl sub_80C9D00
	mov r1, r8
	bl sub_80C9D00
	adds r1, r0, #0
	adds r0, r5, #0
_080C7E38:
	bl sub_80C9D00
	mov r8, r0
	ldr r3, _080C7EB4 @ =0x3F800000
	str r3, [sp, #8]
	ldr r0, [sp, #0x28]
	subs r0, #1
	ldr r1, [sp, #0x14]
	subs r1, #1
	orrs r0, r1
	cmp r0, #0
	bne _080C7E54
	ldr r0, _080C7EEC @ =0xBF800000
	str r0, [sp, #8]
_080C7E54:
	ldr r0, _080C7EB8 @ =0xFFFFF000
	ldr r6, [sp]
	ands r6, r0
	ldr r0, [sp]
	adds r1, r6, #0
	bl sub_80C9D00
	adds r1, r7, #0
	bl sub_80C9D34
	adds r5, r0, #0
	ldr r0, [sp]
	mov r1, r8
	bl sub_80C9D34
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_80C9CD4
	mov sl, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80C9D34
	adds r7, r0, #0
	mov r0, sl
	adds r1, r7, #0
	bl sub_80C9CD4
	adds r4, r0, #0
	adds r5, r4, #0
	movs r0, #0x86
	lsls r0, r0, #0x17
	cmp r5, r0
	ble _080C7EF4
	ldr r5, _080C7EF0 @ =0x7149F2CA
	ldr r0, [sp, #8]
	adds r1, r5, #0
	bl sub_80C9D34
	adds r1, r5, #0
	b _080C8122
	.align 2, 0
_080C7EA8: .4byte 0x005DB3D6
_080C7EAC: .4byte 0xFF800000
_080C7EB0: .4byte gUnknown_082B9C2C
_080C7EB4: .4byte 0x3F800000
_080C7EB8: .4byte 0xFFFFF000
_080C7EBC: .4byte 0x3E53F142
_080C7EC0: .4byte 0x3E6C3255
_080C7EC4: .4byte 0x3E8BA305
_080C7EC8: .4byte 0x3EAAAAAB
_080C7ECC: .4byte 0x3EDB6DB7
_080C7ED0: .4byte 0x3F19999A
_080C7ED4: .4byte 0x40400000
_080C7ED8: .4byte 0x3F763800
_080C7EDC: .4byte 0x369DC3A0
_080C7EE0: .4byte 0x3F76384F
_080C7EE4: .4byte gUnknown_082B9C3C
_080C7EE8: .4byte gUnknown_082B9C34
_080C7EEC: .4byte 0xBF800000
_080C7EF0: .4byte 0x7149F2CA
_080C7EF4:
	cmp r5, r0
	bne _080C7F2C
	ldr r1, _080C7F24 @ =0x3338AA3C
	mov r0, sl
	bl sub_80C9CD4
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_80C9D00
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_80CA120
	cmp r0, #0
	ble _080C7F80
	ldr r5, _080C7F28 @ =0x7149F2CA
	ldr r0, [sp, #8]
	adds r1, r5, #0
	bl sub_80C9D34
	adds r1, r5, #0
	b _080C8122
	.align 2, 0
_080C7F24: .4byte 0x3338AA3C
_080C7F28: .4byte 0x7149F2CA
_080C7F2C:
	ldr r0, _080C7F44 @ =0x7FFFFFFF
	ands r0, r5
	ldr r1, _080C7F48 @ =0x43160000
	cmp r0, r1
	ble _080C7F50
	ldr r5, _080C7F4C @ =0x0DA24260
	ldr r0, [sp, #8]
	adds r1, r5, #0
	bl sub_80C9D34
	adds r1, r5, #0
	b _080C8122
	.align 2, 0
_080C7F44: .4byte 0x7FFFFFFF
_080C7F48: .4byte 0x43160000
_080C7F4C: .4byte 0x0DA24260
_080C7F50:
	ldr r0, _080C7F78 @ =0xC3160000
	cmp r5, r0
	bne _080C7F80
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_80C9D00
	adds r1, r0, #0
	mov r0, sl
	bl sub_80CA1F8
	cmp r0, #0
	bgt _080C7F80
	ldr r5, _080C7F7C @ =0x0DA24260
	ldr r0, [sp, #8]
	adds r1, r5, #0
	bl sub_80C9D34
	adds r1, r5, #0
	b _080C8122
	.align 2, 0
_080C7F78: .4byte 0xC3160000
_080C7F7C: .4byte 0x0DA24260
_080C7F80:
	ldr r3, _080C80E8 @ =0x7FFFFFFF
	adds r0, r5, #0
	ands r0, r3
	asrs r2, r0, #0x17
	movs r1, #0
	str r1, [sp, #0x18]
	movs r1, #0xfc
	lsls r1, r1, #0x16
	cmp r0, r1
	ble _080C7FDC
	adds r1, r2, #0
	subs r1, #0x7e
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r2, #0
	asrs r0, r1
	adds r0, r5, r0
	str r0, [sp, #0x18]
	ands r0, r3
	asrs r0, r0, #0x17
	subs r0, #0x7f
	str r0, [sp, #0x10]
	ldr r1, _080C80EC @ =0x007FFFFF
	adds r0, r1, #0
	ldr r3, [sp, #0x10]
	asrs r0, r3
	ldr r6, [sp, #0x18]
	bics r6, r0
	ldr r0, [sp, #0x18]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x18]
	movs r0, #0x17
	subs r0, r0, r3
	ldr r1, [sp, #0x18]
	asrs r1, r0
	str r1, [sp, #0x18]
	cmp r5, #0
	bge _080C7FD2
	rsbs r1, r1, #0
	str r1, [sp, #0x18]
_080C7FD2:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80C9D00
	adds r7, r0, #0
_080C7FDC:
	mov r0, sl
	adds r1, r7, #0
	bl sub_80C9CD4
	adds r6, r0, #0
	ldr r0, _080C80F0 @ =0xFFFFF000
	ands r6, r0
	ldr r1, _080C80F4 @ =0x3F317200
	adds r0, r6, #0
	bl sub_80C9D34
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_80C9D00
	adds r1, r0, #0
	mov r0, sl
	bl sub_80C9D00
	ldr r1, _080C80F8 @ =0x3F317218
	bl sub_80C9D34
	adds r5, r0, #0
	ldr r1, _080C80FC @ =0x35BFBE8C
	adds r0, r6, #0
	bl sub_80C9D34
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_80C9CD4
	mov sl, r0
	ldr r0, [sp, #0xc]
	mov r1, sl
	bl sub_80C9CD4
	adds r4, r0, #0
	ldr r1, [sp, #0xc]
	bl sub_80C9D00
	adds r1, r0, #0
	mov r0, sl
	bl sub_80C9D00
	mov r8, r0
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_80C9D34
	adds r6, r0, #0
	ldr r1, _080C8100 @ =0x3331BB4C
	bl sub_80C9D34
	ldr r1, _080C8104 @ =0xB5DDEA0E
	bl sub_80C9CD4
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_80C9D34
	ldr r1, _080C8108 @ =0x388AB355
	bl sub_80C9CD4
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_80C9D34
	ldr r1, _080C810C @ =0xBB360B61
	bl sub_80C9CD4
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_80C9D34
	ldr r1, _080C8110 @ =0x3E2AAAAB
	bl sub_80C9CD4
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_80C9D34
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_80C9D00
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_80C9D34
	adds r5, r0, #0
	ldr r1, _080C8114 @ =0x40000000
	adds r0, r7, #0
	bl sub_80C9D00
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_80C9E98
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl sub_80C9D34
	adds r1, r0, #0
	mov r0, r8
	bl sub_80C9CD4
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_80C9D00
	str r0, [sp, #4]
	adds r1, r4, #0
	bl sub_80C9D00
	adds r1, r0, #0
	ldr r0, _080C8118 @ =0x3F800000
	bl sub_80C9D00
	adds r4, r0, #0
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x17
	adds r5, r4, r0
	asrs r0, r5, #0x17
	cmp r0, #0
	bgt _080C811C
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_80C83BC
	adds r4, r0, #0
	b _080C811E
	.align 2, 0
_080C80E8: .4byte 0x7FFFFFFF
_080C80EC: .4byte 0x007FFFFF
_080C80F0: .4byte 0xFFFFF000
_080C80F4: .4byte 0x3F317200
_080C80F8: .4byte 0x3F317218
_080C80FC: .4byte 0x35BFBE8C
_080C8100: .4byte 0x3331BB4C
_080C8104: .4byte 0xB5DDEA0E
_080C8108: .4byte 0x388AB355
_080C810C: .4byte 0xBB360B61
_080C8110: .4byte 0x3E2AAAAB
_080C8114: .4byte 0x40000000
_080C8118: .4byte 0x3F800000
_080C811C:
	adds r4, r5, #0
_080C811E:
	ldr r0, [sp, #8]
	adds r1, r4, #0
_080C8122:
	bl sub_80C9D34
_080C8126:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_80C8134
sub_80C8134: @ 0x080C8134
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0xff
	lsls r1, r1, #0x17
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _080C8156
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_80C9D34
	adds r1, r4, #0
	bl sub_80C9CD4
	b _080C820C
_080C8156:
	cmp r2, #0
	bgt _080C817A
	adds r0, r2, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	bics r0, r1
	cmp r0, #0
	beq _080C820A
	cmp r2, #0
	bge _080C817A
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_80C9D00
	adds r1, r0, #0
	bl sub_80C9E98
	b _080C820C
_080C817A:
	asrs r5, r2, #0x17
	cmp r5, #0
	bne _080C8198
	movs r1, #0
	movs r3, #0x80
	lsls r3, r3, #0x10
	b _080C818C
_080C8188:
	lsls r2, r2, #1
	adds r1, #1
_080C818C:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _080C8188
	movs r0, #1
	subs r5, r0, r1
_080C8198:
	subs r5, #0x7f
	ldr r0, _080C81F0 @ =0x007FFFFF
	ands r2, r0
	adds r0, #1
	orrs r2, r0
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080C81AC
	lsls r2, r2, #1
_080C81AC:
	asrs r5, r5, #1
	lsls r2, r2, #1
	movs r3, #0
	movs r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x11
_080C81B8:
	adds r0, r3, r1
	cmp r0, r2
	bgt _080C81C4
	adds r3, r0, r1
	subs r2, r2, r0
	adds r6, r6, r1
_080C81C4:
	lsls r2, r2, #1
	lsrs r1, r1, #1
	cmp r1, #0
	bne _080C81B8
	cmp r2, #0
	beq _080C81FE
	ldr r4, _080C81F4 @ =0x3F800000
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_80CA168
	cmp r0, #0
	blt _080C81FE
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_80CA120
	cmp r0, #0
	ble _080C81F8
	adds r6, #2
	b _080C81FE
	.align 2, 0
_080C81F0: .4byte 0x007FFFFF
_080C81F4: .4byte 0x3F800000
_080C81F8:
	movs r0, #1
	ands r0, r6
	adds r6, r6, r0
_080C81FE:
	asrs r0, r6, #1
	movs r1, #0xfc
	lsls r1, r1, #0x16
	adds r2, r0, r1
	lsls r0, r5, #0x17
	adds r4, r2, r0
_080C820A:
	adds r0, r4, #0
_080C820C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_80C8210
sub_80C8210: @ 0x080C8210
	push {lr}
	ldr r2, [r0, #8]
	ldr r3, [r0, #0xc]
	adds r1, r3, #0
	adds r0, r2, #0
	bl sub_80C9724
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_80C8224
sub_80C8224: @ 0x080C8224
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r1, #0
	adds r6, r0, #0
	mov ip, r0
	adds r2, r1, #0
	lsrs r0, r0, #0x1f
	mov sb, r0
	mov r1, ip
	lsls r0, r1, #1
	lsrs r0, r0, #0x15
	ldr r3, _080C82B4 @ =0xFFFFFC01
	adds r1, r0, r3
	cmp r1, #0x13
	bgt _080C8304
	cmp r1, #0
	bge _080C82C8
	ldr r4, _080C82B8 @ =0x7FFFFFFF
	mov r8, r4
	mov r0, ip
	ands r0, r4
	orrs r0, r2
	cmp r0, #0
	beq _080C8330
	ldr r0, _080C82BC @ =0x000FFFFF
	mov r1, ip
	ands r0, r1
	orrs r2, r0
	ldr r0, _080C82C0 @ =0xFFFE0000
	ands r1, r0
	mov ip, r1
	rsbs r0, r2, #0
	orrs r2, r0
	lsrs r2, r2, #0xc
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r2, r0
	adds r1, r7, #0
	adds r0, r6, #0
	mov r0, ip
	orrs r0, r2
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r1, _080C82C4 @ =gUnknown_082B9CC4
	mov r2, sb
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_80C9114
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_80C9144
	adds r4, r1, #0
	adds r3, r0, #0
	mov r2, r8
	ands r2, r3
	mov r4, sb
	lsls r3, r4, #0x1f
	adds r0, r2, #0
	orrs r0, r3
	adds r4, r1, #0
	adds r3, r0, #0
	b _080C8378
	.align 2, 0
_080C82B4: .4byte 0xFFFFFC01
_080C82B8: .4byte 0x7FFFFFFF
_080C82BC: .4byte 0x000FFFFF
_080C82C0: .4byte 0xFFFE0000
_080C82C4: .4byte gUnknown_082B9CC4
_080C82C8:
	ldr r3, _080C82EC @ =0x000FFFFF
	asrs r3, r1
	mov r0, ip
	ands r0, r3
	orrs r0, r2
	cmp r0, #0
	beq _080C8330
	lsrs r3, r3, #1
	mov r0, ip
	ands r0, r3
	orrs r0, r2
	cmp r0, #0
	beq _080C8350
	cmp r1, #0x13
	bne _080C82F0
	movs r2, #0x80
	lsls r2, r2, #0x17
	b _080C8350
	.align 2, 0
_080C82EC: .4byte 0x000FFFFF
_080C82F0:
	mov r0, ip
	bics r0, r3
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	asrs r0, r1
	mov r1, ip
	orrs r1, r0
	mov ip, r1
	b _080C8350
_080C8304:
	cmp r1, #0x33
	ble _080C831E
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bne _080C8330
	adds r1, r7, #0
	adds r0, r6, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_80C9114
	b _080C8378
_080C831E:
	ldr r3, _080C8338 @ =0xFFFFFBED
	adds r1, r0, r3
	movs r3, #1
	rsbs r3, r3, #0
	lsrs r3, r1
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _080C833C
_080C8330:
	adds r1, r7, #0
	adds r0, r6, #0
	b _080C8378
	.align 2, 0
_080C8338: .4byte 0xFFFFFBED
_080C833C:
	lsrs r3, r3, #1
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _080C8350
	bics r2, r3
	movs r0, #0x80
	lsls r0, r0, #0x17
	asrs r0, r1
	orrs r2, r0
_080C8350:
	mov r4, ip
	adds r5, r2, #0
	adds r7, r5, #0
	adds r6, r4, #0
	ldr r1, _080C8380 @ =gUnknown_082B9CC4
	mov r4, sb
	lsls r0, r4, #3
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_80C9114
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_80C9144
_080C8378:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C8380: .4byte gUnknown_082B9CC4

	thumb_func_start sub_80C8384
sub_80C8384: @ 0x080C8384
	ldr r1, _080C838C @ =0x7FFFFFFF
	ands r0, r1
	bx lr
	.align 2, 0
_080C838C: .4byte 0x7FFFFFFF

	thumb_func_start sub_80C8390
sub_80C8390: @ 0x080C8390
	adds r1, r0, #0
	ldr r0, _080C83A0 @ =0x7FFFFFFF
	ands r0, r1
	ldr r1, _080C83A4 @ =0x80800000
	adds r0, r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_080C83A0: .4byte 0x7FFFFFFF
_080C83A4: .4byte 0x80800000

	thumb_func_start sub_80C83A8
sub_80C83A8: @ 0x080C83A8
	adds r1, r0, #0
	ldr r0, _080C83B8 @ =0x7FFFFFFF
	ands r0, r1
	movs r1, #0xff
	lsls r1, r1, #0x17
	subs r0, r1, r0
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_080C83B8: .4byte 0x7FFFFFFF

	thumb_func_start sub_80C83BC
sub_80C83BC: @ 0x080C83BC
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r1, r3, #0
	movs r5, #0xff
	lsls r5, r5, #0x17
	adds r0, r1, #0
	ands r0, r5
	asrs r2, r0, #0x17
	cmp r2, #0
	bne _080C8410
	ldr r0, _080C83E0 @ =0x7FFFFFFF
	ands r1, r0
	cmp r1, #0
	bne _080C83E4
	adds r0, r3, #0
	b _080C849C
	.align 2, 0
_080C83E0: .4byte 0x7FFFFFFF
_080C83E4:
	ldr r1, _080C8404 @ =0x4C000000
	adds r0, r3, #0
	bl sub_80C9D34
	adds r3, r0, #0
	adds r1, r3, #0
	adds r0, r1, #0
	ands r0, r5
	asrs r0, r0, #0x17
	adds r2, r0, #0
	subs r2, #0x19
	ldr r0, _080C8408 @ =0xFFFF3CB0
	cmp r4, r0
	bge _080C8410
	ldr r1, _080C840C @ =0x0DA24260
	b _080C8496
	.align 2, 0
_080C8404: .4byte 0x4C000000
_080C8408: .4byte 0xFFFF3CB0
_080C840C: .4byte 0x0DA24260
_080C8410:
	cmp r2, #0xff
	bne _080C841E
	adds r0, r3, #0
	adds r1, r3, #0
	bl sub_80C9CD4
	b _080C849C
_080C841E:
	adds r2, r2, r4
	cmp r2, #0xfe
	ble _080C8438
	ldr r4, _080C8434 @ =0x7149F2CA
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_80C84A8
	adds r1, r4, #0
	b _080C8498
	.align 2, 0
_080C8434: .4byte 0x7149F2CA
_080C8438:
	cmp r2, #0
	ble _080C8450
	ldr r0, _080C844C @ =0x807FFFFF
	ands r1, r0
	lsls r0, r2, #0x17
	adds r3, r1, #0
	orrs r3, r0
	adds r0, r3, #0
	b _080C849C
	.align 2, 0
_080C844C: .4byte 0x807FFFFF
_080C8450:
	movs r0, #0x19
	rsbs r0, r0, #0
	cmp r2, r0
	bgt _080C8488
	ldr r0, _080C846C @ =0x0000C350
	cmp r4, r0
	ble _080C8474
	ldr r4, _080C8470 @ =0x7149F2CA
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_80C84A8
	adds r1, r4, #0
	b _080C8498
	.align 2, 0
_080C846C: .4byte 0x0000C350
_080C8470: .4byte 0x7149F2CA
_080C8474:
	ldr r4, _080C8484 @ =0x0DA24260
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_80C84A8
	adds r1, r4, #0
	b _080C8498
	.align 2, 0
_080C8484: .4byte 0x0DA24260
_080C8488:
	adds r2, #0x19
	ldr r0, _080C84A0 @ =0x807FFFFF
	ands r1, r0
	lsls r0, r2, #0x17
	adds r3, r1, #0
	orrs r3, r0
	ldr r1, _080C84A4 @ =0x33000000
_080C8496:
	adds r0, r3, #0
_080C8498:
	bl sub_80C9D34
_080C849C:
	pop {r4, r5, pc}
	.align 2, 0
_080C84A0: .4byte 0x807FFFFF
_080C84A4: .4byte 0x33000000

	thumb_func_start sub_80C84A8
sub_80C84A8: @ 0x080C84A8
	ldr r2, _080C84B8 @ =0x7FFFFFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r0, r1
	orrs r0, r2
	bx lr
	.align 2, 0
_080C84B8: .4byte 0x7FFFFFFF

	thumb_func_start sub_80C84BC
sub_80C84BC: @ 0x080C84BC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _080C84EC
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _080C84D8
	asrs r4, r6, #0x1f
	rsbs r0, r0, #0
	adds r3, r6, #0
	asrs r3, r0
	b _080C84E8
_080C84D8:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	asrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_080C84E8:
	adds r1, r4, #0
	adds r0, r3, #0
_080C84EC:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start _call_via_r0
_call_via_r0: @ 0x080C84F0
	bx r0
	nop

	thumb_func_start _call_via_r1
_call_via_r1: @ 0x080C84F4
	bx r1
	nop

	thumb_func_start _call_via_r2
_call_via_r2: @ 0x080C84F8
	bx r2
	nop

	thumb_func_start _call_via_r3
_call_via_r3: @ 0x080C84FC
	bx r3
	nop

	thumb_func_start _call_via_r4
_call_via_r4: @ 0x080C8500
	bx r4
	nop

	thumb_func_start _call_via_r5
_call_via_r5: @ 0x080C8504
	bx r5
	nop

	thumb_func_start _call_via_r6
_call_via_r6: @ 0x080C8508
	bx r6
	nop

	thumb_func_start _call_via_r7
_call_via_r7: @ 0x080C850C
	bx r7
	nop

	thumb_func_start _call_via_r8
_call_via_r8: @ 0x080C8510
	bx r8
	nop

	thumb_func_start _call_via_r9
_call_via_r9: @ 0x080C8514
	bx sb
	nop

	thumb_func_start _call_via_sl
_call_via_sl: @ 0x080C8518
	bx sl
	nop

	thumb_func_start _call_via_fp
_call_via_fp: @ 0x080C851C
	bx fp
	nop

	thumb_func_start _call_via_ip
_call_via_ip: @ 0x080C8520
	bx ip
	nop

	thumb_func_start _call_via_sp
_call_via_sp: @ 0x080C8524
	bx sp
	nop

	thumb_func_start _call_via_lr
_call_via_lr: @ 0x080C8528
	bx lr
	nop

	thumb_func_start sub_80C852C
sub_80C852C: @ 0x080C852C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r4, #0
	str r4, [sp]
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, #0
	bge _080C855C
	ldr r0, [sp]
	mvns r0, r0
	str r0, [sp]
	rsbs r0, r4, #0
	adds r6, r0, #0
	rsbs r1, r5, #0
	cmp r0, #0
	beq _080C8556
	subs r1, #1
_080C8556:
	adds r7, r1, #0
	adds r5, r7, #0
	adds r4, r6, #0
_080C855C:
	cmp r3, #0
	bge _080C8578
	ldr r1, [sp]
	mvns r1, r1
	str r1, [sp]
	rsbs r0, r2, #0
	str r0, [sp, #4]
	rsbs r2, r3, #0
	cmp r0, #0
	beq _080C8572
	subs r2, #1
_080C8572:
	str r2, [sp, #8]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
_080C8578:
	adds r7, r2, #0
	adds r6, r3, #0
	mov sl, r4
	mov r8, r5
	cmp r6, #0
	beq _080C8586
	b _080C87D4
_080C8586:
	cmp r7, r8
	bls _080C8660
	ldr r0, _080C859C @ =0x0000FFFF
	cmp r7, r0
	bhi _080C85A0
	movs r1, #0
	cmp r7, #0xff
	bls _080C85AA
	movs r1, #8
	b _080C85AA
	.align 2, 0
_080C859C: .4byte 0x0000FFFF
_080C85A0:
	ldr r0, _080C8654 @ =0x00FFFFFF
	movs r1, #0x18
	cmp r7, r0
	bhi _080C85AA
	movs r1, #0x10
_080C85AA:
	ldr r0, _080C8658 @ =gUnknown_08E2E69C
	lsrs r2, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r0, r0, r1
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	beq _080C85D2
	lsls r7, r2
	mov r3, r8
	lsls r3, r2
	subs r1, r1, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
_080C85D2:
	lsrs r0, r7, #0x10
	mov sb, r0
	ldr r1, _080C865C @ =0x0000FFFF
	ands r1, r7
	str r1, [sp, #0xc]
	mov r0, r8
	mov r1, sb
	bl sub_80C8BC8
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_80C8B50
	adds r6, r0, #0
	ldr r3, [sp, #0xc]
	adds r2, r6, #0
	muls r2, r3, r2
	lsls r4, r4, #0x10
	mov r1, sl
	lsrs r0, r1, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _080C8612
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _080C8612
	cmp r4, r2
	bhs _080C8612
	subs r6, #1
	adds r4, r4, r7
_080C8612:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_80C8BC8
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_80C8B50
	adds r1, r0, #0
	ldr r3, [sp, #0xc]
	adds r2, r1, #0
	muls r2, r3, r2
	lsls r5, r5, #0x10
	ldr r0, _080C865C @ =0x0000FFFF
	mov r4, sl
	ands r4, r0
	orrs r5, r4
	cmp r5, r2
	bhs _080C864A
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _080C864A
	cmp r5, r2
	bhs _080C864A
	subs r1, #1
_080C864A:
	lsls r6, r6, #0x10
	orrs r6, r1
	movs r0, #0
	str r0, [sp, #0x10]
	b _080C892A
	.align 2, 0
_080C8654: .4byte 0x00FFFFFF
_080C8658: .4byte gUnknown_08E2E69C
_080C865C: .4byte 0x0000FFFF
_080C8660:
	cmp r2, #0
	bne _080C866E
	movs r0, #1
	movs r1, #0
	bl sub_80C8B50
	adds r7, r0, #0
_080C866E:
	adds r1, r7, #0
	ldr r0, _080C8680 @ =0x0000FFFF
	cmp r7, r0
	bhi _080C8684
	movs r2, #0
	cmp r7, #0xff
	bls _080C868E
	movs r2, #8
	b _080C868E
	.align 2, 0
_080C8680: .4byte 0x0000FFFF
_080C8684:
	ldr r0, _080C86AC @ =0x00FFFFFF
	movs r2, #0x18
	cmp r7, r0
	bhi _080C868E
	movs r2, #0x10
_080C868E:
	ldr r0, _080C86B0 @ =gUnknown_08E2E69C
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _080C86B4
	mov r1, r8
	subs r1, r1, r7
	mov r8, r1
	movs r2, #1
	str r2, [sp, #0x10]
	b _080C8752
	.align 2, 0
_080C86AC: .4byte 0x00FFFFFF
_080C86B0: .4byte gUnknown_08E2E69C
_080C86B4:
	subs r1, r1, r2
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r7, #0x10
	mov sb, r0
	ldr r1, _080C87D0 @ =0x0000FFFF
	ands r1, r7
	str r1, [sp, #0x14]
	adds r0, r5, #0
	mov r1, sb
	bl sub_80C8BC8
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_80C8B50
	adds r6, r0, #0
	ldr r2, [sp, #0x14]
	adds r1, r6, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r3, r8
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _080C870E
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _080C870E
	cmp r4, r1
	bhs _080C870E
	subs r6, #1
	adds r4, r4, r7
_080C870E:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	bl sub_80C8BC8
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_80C8B50
	adds r2, r0, #0
	ldr r4, [sp, #0x14]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _080C87D0 @ =0x0000FFFF
	mov r3, r8
	ands r3, r0
	orrs r5, r3
	cmp r5, r1
	bhs _080C8748
	subs r2, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _080C8748
	cmp r5, r1
	bhs _080C8748
	subs r2, #1
	adds r5, r5, r7
_080C8748:
	lsls r6, r6, #0x10
	orrs r6, r2
	str r6, [sp, #0x10]
	subs r1, r5, r1
	mov r8, r1
_080C8752:
	lsrs r4, r7, #0x10
	mov sb, r4
	ldr r0, _080C87D0 @ =0x0000FFFF
	ands r0, r7
	str r0, [sp, #0x18]
	mov r0, r8
	mov r1, sb
	bl sub_80C8BC8
	adds r4, r0, #0
	mov r0, r8
	mov r1, sb
	bl sub_80C8B50
	adds r6, r0, #0
	ldr r1, [sp, #0x18]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r4, r4, #0x10
	mov r3, sl
	lsrs r0, r3, #0x10
	orrs r4, r0
	cmp r4, r2
	bhs _080C8792
	subs r6, #1
	adds r4, r4, r7
	cmp r4, r7
	blo _080C8792
	cmp r4, r2
	bhs _080C8792
	subs r6, #1
	adds r4, r4, r7
_080C8792:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, sb
	bl sub_80C8BC8
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_80C8B50
	adds r1, r0, #0
	ldr r4, [sp, #0x18]
	adds r2, r1, #0
	muls r2, r4, r2
	lsls r5, r5, #0x10
	ldr r0, _080C87D0 @ =0x0000FFFF
	mov r3, sl
	ands r3, r0
	orrs r5, r3
	cmp r5, r2
	bhs _080C87CA
	subs r1, #1
	adds r5, r5, r7
	cmp r5, r7
	blo _080C87CA
	cmp r5, r2
	bhs _080C87CA
	subs r1, #1
_080C87CA:
	lsls r6, r6, #0x10
	orrs r6, r1
	b _080C892A
	.align 2, 0
_080C87D0: .4byte 0x0000FFFF
_080C87D4:
	cmp r6, r8
	bls _080C87E0
	movs r6, #0
	movs r4, #0
	str r4, [sp, #0x10]
	b _080C892A
_080C87E0:
	adds r1, r6, #0
	ldr r0, _080C87F4 @ =0x0000FFFF
	cmp r6, r0
	bhi _080C87F8
	movs r2, #0
	cmp r6, #0xff
	bls _080C8802
	movs r2, #8
	b _080C8802
	.align 2, 0
_080C87F4: .4byte 0x0000FFFF
_080C87F8:
	ldr r0, _080C8824 @ =0x00FFFFFF
	movs r2, #0x18
	cmp r6, r0
	bhi _080C8802
	movs r2, #0x10
_080C8802:
	ldr r0, _080C8828 @ =gUnknown_08E2E69C
	lsrs r1, r2
	adds r0, r1, r0
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r1, #0x20
	subs r2, r1, r0
	cmp r2, #0
	bne _080C8830
	cmp r8, r6
	bhi _080C881C
	cmp sl, r7
	blo _080C882C
_080C881C:
	movs r6, #1
	mov r1, sl
	b _080C8924
	.align 2, 0
_080C8824: .4byte 0x00FFFFFF
_080C8828: .4byte gUnknown_08E2E69C
_080C882C:
	movs r6, #0
	b _080C8926
_080C8830:
	subs r1, r1, r2
	lsls r6, r2
	adds r0, r7, #0
	lsrs r0, r1
	orrs r6, r0
	lsls r7, r2
	mov r5, r8
	lsrs r5, r1
	mov r3, r8
	lsls r3, r2
	mov r0, sl
	lsrs r0, r1
	orrs r3, r0
	mov r8, r3
	mov r4, sl
	lsls r4, r2
	mov sl, r4
	lsrs r0, r6, #0x10
	mov sb, r0
	ldr r1, _080C895C @ =0x0000FFFF
	ands r1, r6
	str r1, [sp, #0x1c]
	adds r0, r5, #0
	mov r1, sb
	bl sub_80C8BC8
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl sub_80C8B50
	adds r3, r0, #0
	ldr r2, [sp, #0x1c]
	adds r1, r3, #0
	muls r1, r2, r1
	lsls r4, r4, #0x10
	mov r2, r8
	lsrs r0, r2, #0x10
	orrs r4, r0
	cmp r4, r1
	bhs _080C8892
	subs r3, #1
	adds r4, r4, r6
	cmp r4, r6
	blo _080C8892
	cmp r4, r1
	bhs _080C8892
	subs r3, #1
	adds r4, r4, r6
_080C8892:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, sb
	str r3, [sp, #0x30]
	bl sub_80C8BC8
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sb
	bl sub_80C8B50
	adds r2, r0, #0
	ldr r4, [sp, #0x1c]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r5, r5, #0x10
	ldr r0, _080C895C @ =0x0000FFFF
	mov r4, r8
	ands r4, r0
	orrs r5, r4
	ldr r3, [sp, #0x30]
	cmp r5, r1
	bhs _080C88D0
	subs r2, #1
	adds r5, r5, r6
	cmp r5, r6
	blo _080C88D0
	cmp r5, r1
	bhs _080C88D0
	subs r2, #1
	adds r5, r5, r6
_080C88D0:
	lsls r6, r3, #0x10
	orrs r6, r2
	subs r1, r5, r1
	mov r8, r1
	ldr r0, _080C895C @ =0x0000FFFF
	mov sb, r0
	adds r1, r6, #0
	ands r1, r0
	lsrs r3, r6, #0x10
	adds r0, r7, #0
	mov r2, sb
	ands r0, r2
	lsrs r2, r7, #0x10
	adds r5, r1, #0
	muls r5, r0, r5
	adds r4, r1, #0
	muls r4, r2, r4
	adds r1, r3, #0
	muls r1, r0, r1
	muls r3, r2, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r1
	cmp r4, r1
	bhs _080C8908
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_080C8908:
	lsrs r0, r4, #0x10
	adds r3, r3, r0
	mov r1, sb
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r1, r0, r5
	cmp r3, r8
	bhi _080C8922
	cmp r3, r8
	bne _080C8926
	cmp r1, sl
	bls _080C8926
_080C8922:
	subs r6, #1
_080C8924:
	subs r0, r1, r7
_080C8926:
	movs r2, #0
	str r2, [sp, #0x10]
_080C892A:
	str r6, [sp, #0x20]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r4, [sp]
	cmp r4, #0
	beq _080C894C
	rsbs r0, r1, #0
	str r0, [sp, #0x28]
	rsbs r1, r2, #0
	cmp r0, #0
	beq _080C8946
	subs r1, #1
_080C8946:
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
_080C894C:
	adds r0, r1, #0
	adds r1, r2, #0
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C895C: .4byte 0x0000FFFF

	thumb_func_start sub_80C8960
sub_80C8960: @ 0x080C8960
	cmp r1, #0
	beq _080C89E8
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _080C8976
	rsbs r1, r1, #0
_080C8976:
	cmp r0, #0
	bpl _080C897C
	rsbs r0, r0, #0
_080C897C:
	cmp r0, r1
	blo _080C89DA
	movs r4, #1
	lsls r4, r4, #0x1c
_080C8984:
	cmp r1, r4
	bhs _080C8992
	cmp r1, r0
	bhs _080C8992
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080C8984
_080C8992:
	lsls r4, r4, #3
_080C8994:
	cmp r1, r4
	bhs _080C89A2
	cmp r1, r0
	bhs _080C89A2
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080C8994
_080C89A2:
	cmp r0, r1
	blo _080C89AA
	subs r0, r0, r1
	orrs r2, r3
_080C89AA:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080C89B6
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080C89B6:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080C89C2
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080C89C2:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080C89CE
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080C89CE:
	cmp r0, #0
	beq _080C89DA
	lsrs r3, r3, #4
	beq _080C89DA
	lsrs r1, r1, #4
	b _080C89A2
_080C89DA:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _080C89E4
	rsbs r0, r0, #0
_080C89E4:
	pop {r4}
	mov pc, lr
_080C89E8:
	push {lr}
	bl sub_80C89F4
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_80C89F4
sub_80C89F4: @ 0x080C89F4
	mov pc, lr
	.align 2, 0

	thumb_func_start sub_80C89F8
sub_80C89F8: @ 0x080C89F8
	movs r3, #1
	cmp r1, #0
	beq _080C8ABC
	bpl _080C8A02
	rsbs r1, r1, #0
_080C8A02:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _080C8A0C
	rsbs r0, r0, #0
_080C8A0C:
	cmp r0, r1
	blo _080C8AB0
	movs r4, #1
	lsls r4, r4, #0x1c
_080C8A14:
	cmp r1, r4
	bhs _080C8A22
	cmp r1, r0
	bhs _080C8A22
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080C8A14
_080C8A22:
	lsls r4, r4, #3
_080C8A24:
	cmp r1, r4
	bhs _080C8A32
	cmp r1, r0
	bhs _080C8A32
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080C8A24
_080C8A32:
	movs r2, #0
	cmp r0, r1
	blo _080C8A3A
	subs r0, r0, r1
_080C8A3A:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080C8A4C
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080C8A4C:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080C8A5E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080C8A5E:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080C8A70
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080C8A70:
	mov ip, r3
	cmp r0, #0
	beq _080C8A7E
	lsrs r3, r3, #4
	beq _080C8A7E
	lsrs r1, r1, #4
	b _080C8A32
_080C8A7E:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _080C8AB0
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080C8A94
	lsrs r4, r1, #3
	adds r0, r0, r4
_080C8A94:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _080C8AA2
	lsrs r4, r1, #2
	adds r0, r0, r4
_080C8AA2:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080C8AB0
	lsrs r4, r1, #1
	adds r0, r0, r4
_080C8AB0:
	pop {r4}
	cmp r4, #0
	bpl _080C8AB8
	rsbs r0, r0, #0
_080C8AB8:
	pop {r4}
	mov pc, lr
_080C8ABC:
	push {lr}
	bl sub_80C89F4
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_80C8AC8
sub_80C8AC8: @ 0x080C8AC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _080C8B34 @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _080C8B08
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_080C8B08:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C8B34: .4byte 0x0000FFFF

	thumb_func_start sub_80C8B38
sub_80C8B38: @ 0x080C8B38
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _080C8B46
	subs r1, #1
_080C8B46:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80C8B50
sub_80C8B50: @ 0x080C8B50
	cmp r1, #0
	beq _080C8BBE
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _080C8BB8
	movs r4, #1
	lsls r4, r4, #0x1c
_080C8B62:
	cmp r1, r4
	bhs _080C8B70
	cmp r1, r0
	bhs _080C8B70
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080C8B62
_080C8B70:
	lsls r4, r4, #3
_080C8B72:
	cmp r1, r4
	bhs _080C8B80
	cmp r1, r0
	bhs _080C8B80
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080C8B72
_080C8B80:
	cmp r0, r1
	blo _080C8B88
	subs r0, r0, r1
	orrs r2, r3
_080C8B88:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080C8B94
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080C8B94:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080C8BA0
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080C8BA0:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080C8BAC
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080C8BAC:
	cmp r0, #0
	beq _080C8BB8
	lsrs r3, r3, #4
	beq _080C8BB8
	lsrs r1, r1, #4
	b _080C8B80
_080C8BB8:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_080C8BBE:
	push {lr}
	bl sub_80C89F4
	movs r0, #0
	pop {pc}

	thumb_func_start sub_80C8BC8
sub_80C8BC8: @ 0x080C8BC8
	cmp r1, #0
	beq _080C8C7E
	movs r3, #1
	cmp r0, r1
	bhs _080C8BD4
	mov pc, lr
_080C8BD4:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_080C8BDA:
	cmp r1, r4
	bhs _080C8BE8
	cmp r1, r0
	bhs _080C8BE8
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080C8BDA
_080C8BE8:
	lsls r4, r4, #3
_080C8BEA:
	cmp r1, r4
	bhs _080C8BF8
	cmp r1, r0
	bhs _080C8BF8
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080C8BEA
_080C8BF8:
	movs r2, #0
	cmp r0, r1
	blo _080C8C00
	subs r0, r0, r1
_080C8C00:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080C8C12
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080C8C12:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080C8C24
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080C8C24:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080C8C36
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080C8C36:
	mov ip, r3
	cmp r0, #0
	beq _080C8C44
	lsrs r3, r3, #4
	beq _080C8C44
	lsrs r1, r1, #4
	b _080C8BF8
_080C8C44:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _080C8C50
	pop {r4}
	mov pc, lr
_080C8C50:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080C8C5E
	lsrs r4, r1, #3
	adds r0, r0, r4
_080C8C5E:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _080C8C6C
	lsrs r4, r1, #2
	adds r0, r0, r4
_080C8C6C:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080C8C7A
	lsrs r4, r1, #1
	adds r0, r0, r4
_080C8C7A:
	pop {r4}
	mov pc, lr
_080C8C7E:
	push {lr}
	bl sub_80C89F4
	movs r0, #0
	pop {pc}

	thumb_func_start sub_80C8C88
sub_80C8C88: @ 0x080C8C88
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _080C8CA0
	movs r2, #1
_080C8CA0:
	cmp r2, #0
	beq _080C8CC0
	ldr r6, _080C8CB4 @ =0x000007FF
	ldr r2, _080C8CB8 @ =0x00000000
	ldr r3, _080C8CBC @ =0x00080000
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _080C8D78
	.align 2, 0
_080C8CB4: .4byte 0x000007FF
_080C8CB8: .4byte 0x00000000
_080C8CBC: .4byte 0x00080000
_080C8CC0:
	movs r2, #0
	cmp r0, #4
	bne _080C8CC8
	movs r2, #1
_080C8CC8:
	cmp r2, #0
	bne _080C8D14
	movs r2, #0
	cmp r0, #2
	bne _080C8CD4
	movs r2, #1
_080C8CD4:
	cmp r2, #0
	beq _080C8CDE
	movs r4, #0
	movs r5, #0
	b _080C8D7C
_080C8CDE:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _080C8D7C
	ldr r2, [r1, #8]
	ldr r0, _080C8CFC @ =0xFFFFFC02
	cmp r2, r0
	bge _080C8D0E
	subs r2, r0, r2
	cmp r2, #0x38
	ble _080C8D00
	movs r4, #0
	movs r5, #0
	b _080C8D6E
	.align 2, 0
_080C8CFC: .4byte 0xFFFFFC02
_080C8D00:
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80CA370
	adds r5, r1, #0
	adds r4, r0, #0
	b _080C8D6E
_080C8D0E:
	ldr r0, _080C8D1C @ =0x000003FF
	cmp r2, r0
	ble _080C8D24
_080C8D14:
	ldr r6, _080C8D20 @ =0x000007FF
	movs r4, #0
	movs r5, #0
	b _080C8D7C
	.align 2, 0
_080C8D1C: .4byte 0x000003FF
_080C8D20: .4byte 0x000007FF
_080C8D24:
	ldr r0, _080C8D4C @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080C8D50
	cmp r2, #0
	bne _080C8D50
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _080C8D58
	movs r0, #0x80
	movs r1, #0
	b _080C8D54
	.align 2, 0
_080C8D4C: .4byte 0x000003FF
_080C8D50:
	movs r0, #0x7f
	movs r1, #0
_080C8D54:
	adds r4, r4, r0
	adcs r5, r1
_080C8D58:
	ldr r0, _080C8DBC @ =0x1FFFFFFF
	cmp r5, r0
	bls _080C8D6E
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_080C8D6E:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_080C8D78:
	adds r5, r1, #0
	adds r4, r0, #0
_080C8D7C:
	str r4, [sp]
	ldr r2, _080C8DC0 @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _080C8DC4 @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _080C8DC8 @ =0x000007FF
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _080C8DCC @ =0xFFFF800F
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C8DBC: .4byte 0x1FFFFFFF
_080C8DC0: .4byte 0x000FFFFF
_080C8DC4: .4byte 0xFFF00000
_080C8DC8: .4byte 0x000007FF
_080C8DCC: .4byte 0xFFFF800F

	thumb_func_start sub_80C8DD0
sub_80C8DD0: @ 0x080C8DD0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _080C8E44
	orrs r1, r5
	cmp r1, #0
	bne _080C8E04
	movs r0, #2
	str r0, [r6]
	b _080C8E98
_080C8E04:
	ldr r0, _080C8E3C @ =0xFFFFFC02
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _080C8E40 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _080C8E74
	adds r7, r0, #0
_080C8E22:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _080C8E22
	b _080C8E74
	.align 2, 0
_080C8E3C: .4byte 0xFFFFFC02
_080C8E40: .4byte 0x0FFFFFFF
_080C8E44:
	ldr r0, _080C8E58 @ =0x000007FF
	cmp r3, r0
	bne _080C8E7A
	orrs r1, r5
	cmp r1, #0
	bne _080C8E5C
	movs r0, #4
	str r0, [r6]
	b _080C8E98
	.align 2, 0
_080C8E58: .4byte 0x000007FF
_080C8E5C:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _080C8E72
	movs r0, #1
	str r0, [r6]
	b _080C8E74
_080C8E72:
	str r1, [r6]
_080C8E74:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _080C8E98
_080C8E7A:
	ldr r1, _080C8E9C @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _080C8EA0 @ =0x00000000
	ldr r3, _080C8EA4 @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_080C8E98:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C8E9C: .4byte 0xFFFFFC01
_080C8EA0: .4byte 0x00000000
_080C8EA4: .4byte 0x10000000

	thumb_func_start sub_80C8EA8
sub_80C8EA8: @ 0x080C8EA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _080C8EC4
	movs r0, #1
_080C8EC4:
	cmp r0, #0
	beq _080C8ECC
_080C8EC8:
	adds r0, r3, #0
	b _080C9104
_080C8ECC:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _080C8ED6
	movs r1, #1
_080C8ED6:
	cmp r1, #0
	bne _080C8F4E
	movs r1, #0
	cmp r2, #4
	bne _080C8EE2
	movs r1, #1
_080C8EE2:
	cmp r1, #0
	beq _080C8F04
	movs r1, #0
	cmp r0, #4
	bne _080C8EEE
	movs r1, #1
_080C8EEE:
	cmp r1, #0
	beq _080C8EC8
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _080C8EC8
	ldr r0, _080C8F00 @ =0x03000450
	b _080C9104
	.align 2, 0
_080C8F00: .4byte 0x03000450
_080C8F04:
	movs r1, #0
	cmp r0, #4
	bne _080C8F0C
	movs r1, #1
_080C8F0C:
	cmp r1, #0
	bne _080C8F4E
	movs r1, #0
	cmp r0, #2
	bne _080C8F18
	movs r1, #1
_080C8F18:
	cmp r1, #0
	beq _080C8F40
	movs r0, #0
	cmp r2, #2
	bne _080C8F24
	movs r0, #1
_080C8F24:
	cmp r0, #0
	beq _080C8EC8
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _080C9102
_080C8F40:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _080C8F4A
	movs r1, #1
_080C8F4A:
	cmp r1, #0
	beq _080C8F52
_080C8F4E:
	adds r0, r4, #0
	b _080C9104
_080C8F52:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _080C8F72
	rsbs r0, r0, #0
_080C8F72:
	cmp r0, #0x3f
	bgt _080C8FF0
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _080C8FBC
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_080C8F8A:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _080C8F8A
	mov r8, sb
_080C8FBC:
	cmp r8, sb
	ble _080C900C
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_080C8FC8:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _080C8FC8
	mov sb, r8
	b _080C900C
_080C8FF0:
	cmp sb, r8
	ble _080C8FFE
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _080C9004
_080C8FFE:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_080C9004:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_080C900C:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _080C90B4
	mov r2, ip
	cmp r2, #0
	beq _080C902E
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_80C8B38
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _080C903A
_080C902E:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_080C903A:
	cmp r3, #0
	blt _080C9050
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _080C9068
_080C9050:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl sub_80C8B38
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_080C9068:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_080C9074:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _080C90B0 @ =0x0FFFFFFF
	cmp r3, r0
	bhi _080C90CC
	cmp r3, r0
	bne _080C908A
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _080C90CC
_080C908A:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _080C9074
	.align 2, 0
_080C90B0: .4byte 0x0FFFFFFF
_080C90B4:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_080C90CC:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _080C9110 @ =0x1FFFFFFF
	cmp r1, r0
	bls _080C9102
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_080C9102:
	mov r0, sl
_080C9104:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C9110: .4byte 0x1FFFFFFF

	thumb_func_start sub_80C9114
sub_80C9114: @ 0x080C9114
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_80C8DD0
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_80C8DD0
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C8EA8
	bl sub_80C8C88
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start sub_80C9144
sub_80C9144: @ 0x080C9144
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_80C8DD0
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_80C8DD0
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C8EA8
	bl sub_80C8C88
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start sub_80C917C
sub_80C917C: @ 0x080C917C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_80C8DD0
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_80C8DD0
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _080C91B2
	movs r0, #1
_080C91B2:
	cmp r0, #0
	bne _080C9216
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C91C0
	movs r2, #1
_080C91C0:
	cmp r2, #0
	beq _080C91C8
	ldr r0, [sp, #4]
	b _080C9238
_080C91C8:
	movs r2, #0
	cmp r1, #4
	bne _080C91D0
	movs r2, #1
_080C91D0:
	cmp r2, #0
	beq _080C91E2
	movs r1, #0
	cmp r0, #2
	bne _080C91DC
	movs r1, #1
_080C91DC:
	cmp r1, #0
	bne _080C91FA
	b _080C9216
_080C91E2:
	movs r2, #0
	cmp r0, #4
	bne _080C91EA
	movs r2, #1
_080C91EA:
	cmp r2, #0
	beq _080C920A
	movs r0, #0
	cmp r1, #2
	bne _080C91F6
	movs r0, #1
_080C91F6:
	cmp r0, #0
	beq _080C9204
_080C91FA:
	ldr r0, _080C9200 @ =0x03000450
	b _080C9402
	.align 2, 0
_080C9200: .4byte 0x03000450
_080C9204:
	mov r1, r8
	ldr r0, [r1, #4]
	b _080C9238
_080C920A:
	movs r2, #0
	cmp r1, #2
	bne _080C9212
	movs r2, #1
_080C9212:
	cmp r2, #0
	beq _080C9228
_080C9216:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _080C9402
_080C9228:
	movs r1, #0
	cmp r0, #2
	bne _080C9230
	movs r1, #1
_080C9230:
	cmp r1, #0
	beq _080C9248
	mov r2, r8
	ldr r0, [r2, #4]
_080C9238:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _080C9402
_080C9248:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_80C8AC8
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_80C8AC8
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_80C8AC8
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_80C8AC8
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _080C92C0
	cmp r7, r3
	bne _080C92C8
	cmp r6, r2
	bls _080C92C8
_080C92C0:
	ldr r5, _080C9418 @ =0x00000001
	ldr r4, _080C9414 @ =0x00000000
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_080C92C8:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _080C92E4
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _080C92F4
	cmp r0, r6
	bls _080C92F4
_080C92E4:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_080C92F4:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _080C941C @ =0x1FFFFFFF
	cmp r5, r0
	bls _080C9376
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_080C933A:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _080C9360
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_080C9360:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _080C933A
	mov r0, ip
	str r0, [sp, #0x30]
_080C9376:
	ldr r0, _080C9420 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _080C93C8
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_080C9388:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _080C93B2
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_080C93B2:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _080C9388
	mov r1, ip
	str r1, [sp, #0x30]
_080C93C8:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080C93F6
	cmp r2, #0
	bne _080C93F6
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _080C93EE
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _080C93F6
_080C93EE:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_080C93F6:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_080C9402:
	bl sub_80C8C88
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C9414: .4byte 0x00000000
_080C9418: .4byte 0x00000001
_080C941C: .4byte 0x1FFFFFFF
_080C9420: .4byte 0x0FFFFFFF

	thumb_func_start sub_80C9424
sub_80C9424: @ 0x080C9424
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_80C8DD0
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_80C8DD0
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _080C944E
	movs r0, #1
_080C944E:
	cmp r0, #0
	beq _080C9456
	mov r1, sp
	b _080C9598
_080C9456:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _080C9462
	movs r0, #1
_080C9462:
	cmp r0, #0
	beq _080C946A
	adds r1, r4, #0
	b _080C9598
_080C946A:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _080C947A
	movs r0, #1
_080C947A:
	cmp r0, #0
	bne _080C948A
	movs r4, #0
	cmp r3, #2
	bne _080C9486
	movs r4, #1
_080C9486:
	cmp r4, #0
	beq _080C949C
_080C948A:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _080C9494
	b _080C9598
_080C9494:
	ldr r1, _080C9498 @ =0x03000450
	b _080C9598
	.align 2, 0
_080C9498: .4byte 0x03000450
_080C949C:
	movs r0, #0
	cmp r2, #4
	bne _080C94A4
	movs r0, #1
_080C94A4:
	cmp r0, #0
	beq _080C94B6
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _080C9598
_080C94B6:
	movs r0, #0
	cmp r2, #2
	bne _080C94BE
	movs r0, #1
_080C94BE:
	cmp r0, #0
	beq _080C94CA
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _080C9596
_080C94CA:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _080C94EE
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _080C9502
	cmp r0, r4
	bls _080C9502
_080C94EE:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_080C9502:
	ldr r7, _080C95A8 @ =0x10000000
	ldr r6, _080C95A4 @ =0x00000000
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080C950E:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _080C9532
	cmp r1, r5
	bne _080C951E
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _080C9532
_080C951E:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_080C9532:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _080C950E
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080C958C
	cmp r2, #0
	bne _080C958C
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _080C957C
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _080C958C
_080C957C:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_080C958C:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_080C9596:
	mov r1, ip
_080C9598:
	adds r0, r1, #0
	bl sub_80C8C88
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C95A4: .4byte 0x00000000
_080C95A8: .4byte 0x10000000

	thumb_func_start sub_80C95AC
sub_80C95AC: @ 0x080C95AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _080C95BC
	movs r0, #1
_080C95BC:
	cmp r0, #0
	bne _080C95CE
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _080C95CA
	movs r0, #1
_080C95CA:
	cmp r0, #0
	beq _080C95D2
_080C95CE:
	movs r0, #1
	b _080C96A8
_080C95D2:
	movs r0, #0
	cmp r1, #4
	bne _080C95DA
	movs r0, #1
_080C95DA:
	cmp r0, #0
	beq _080C95F2
	movs r0, #0
	cmp r2, #4
	bne _080C95E6
	movs r0, #1
_080C95E6:
	cmp r0, #0
	beq _080C95F2
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _080C96A8
_080C95F2:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _080C95FC
	movs r1, #1
_080C95FC:
	cmp r1, #0
	bne _080C964A
	movs r1, #0
	cmp r2, #4
	bne _080C9608
	movs r1, #1
_080C9608:
	cmp r1, #0
	beq _080C961A
_080C960C:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _080C9654
	movs r1, #1
	b _080C9654
_080C961A:
	movs r1, #0
	cmp r0, #2
	bne _080C9622
	movs r1, #1
_080C9622:
	cmp r1, #0
	beq _080C9632
	movs r1, #0
	cmp r2, #2
	bne _080C962E
	movs r1, #1
_080C962E:
	cmp r1, #0
	bne _080C96A6
_080C9632:
	movs r1, #0
	cmp r0, #2
	bne _080C963A
	movs r1, #1
_080C963A:
	cmp r1, #0
	bne _080C960C
	movs r0, #0
	cmp r2, #2
	bne _080C9646
	movs r0, #1
_080C9646:
	cmp r0, #0
	beq _080C9658
_080C964A:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _080C9654
	subs r1, #2
_080C9654:
	adds r0, r1, #0
	b _080C96A8
_080C9658:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _080C966A
_080C9660:
	movs r0, #1
	cmp r4, #0
	beq _080C96A8
	subs r0, #2
	b _080C96A8
_080C966A:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _080C9660
	cmp r1, r0
	bge _080C9682
_080C9676:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _080C96A8
	movs r0, #1
	b _080C96A8
_080C9682:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _080C9660
	cmp r3, r2
	bne _080C9696
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _080C9660
_080C9696:
	cmp r2, r3
	bhi _080C9676
	cmp r2, r3
	bne _080C96A6
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _080C9676
_080C96A6:
	movs r0, #0
_080C96A8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_80C96AC
sub_80C96AC: @ 0x080C96AC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_80C8DD0
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_80C8DD0
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C95AC
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80C96D8
sub_80C96D8: @ 0x080C96D8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_80C8DD0
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_80C8DD0
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080C9700
	movs r1, #1
_080C9700:
	cmp r1, #0
	bne _080C9712
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C970E
	movs r1, #1
_080C970E:
	cmp r1, #0
	beq _080C9716
_080C9712:
	movs r0, #1
	b _080C971E
_080C9716:
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C95AC
_080C971E:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80C9724
sub_80C9724: @ 0x080C9724
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_80C8DD0
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_80C8DD0
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080C974C
	movs r1, #1
_080C974C:
	cmp r1, #0
	bne _080C975E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C975A
	movs r1, #1
_080C975A:
	cmp r1, #0
	beq _080C9762
_080C975E:
	movs r0, #1
	b _080C976A
_080C9762:
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C95AC
_080C976A:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80C9770
sub_80C9770: @ 0x080C9770
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_80C8DD0
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_80C8DD0
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080C9798
	movs r1, #1
_080C9798:
	cmp r1, #0
	bne _080C97AA
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C97A6
	movs r1, #1
_080C97A6:
	cmp r1, #0
	beq _080C97B0
_080C97AA:
	movs r0, #1
	rsbs r0, r0, #0
	b _080C97B8
_080C97B0:
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C95AC
_080C97B8:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_80C97BC
sub_80C97BC: @ 0x080C97BC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_80C8DD0
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_80C8DD0
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080C97E4
	movs r1, #1
_080C97E4:
	cmp r1, #0
	bne _080C97F6
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C97F2
	movs r1, #1
_080C97F2:
	cmp r1, #0
	beq _080C97FC
_080C97F6:
	movs r0, #1
	rsbs r0, r0, #0
	b _080C9804
_080C97FC:
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C95AC
_080C9804:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_80C9808
sub_80C9808: @ 0x080C9808
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_80C8DD0
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_80C8DD0
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080C9830
	movs r1, #1
_080C9830:
	cmp r1, #0
	bne _080C9842
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C983E
	movs r1, #1
_080C983E:
	cmp r1, #0
	beq _080C9846
_080C9842:
	movs r0, #1
	b _080C984E
_080C9846:
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C95AC
_080C984E:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80C9854
sub_80C9854: @ 0x080C9854
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_80C8DD0
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_80C8DD0
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080C987C
	movs r1, #1
_080C987C:
	cmp r1, #0
	bne _080C988E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080C988A
	movs r1, #1
_080C988A:
	cmp r1, #0
	beq _080C9892
_080C988E:
	movs r0, #1
	b _080C989A
_080C9892:
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C95AC
_080C989A:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80C98A0
sub_80C98A0: @ 0x080C98A0
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _080C98B8
	movs r0, #2
	str r0, [sp]
	b _080C990E
_080C98B8:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _080C98DE
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _080C98D8
	ldr r1, _080C98D4 @ =0x00000000
	ldr r0, _080C98D0 @ =0xC1E00000
	b _080C9914
	.align 2, 0
_080C98D0: .4byte 0xC1E00000
_080C98D4: .4byte 0x00000000
_080C98D8:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _080C98E2
_080C98DE:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_080C98E2:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _080C9918 @ =0x0FFFFFFF
	cmp r0, r1
	bhi _080C990E
	adds r5, r1, #0
	ldr r4, [sp, #8]
_080C98F2:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _080C98F2
	str r4, [sp, #8]
_080C990E:
	mov r0, sp
	bl sub_80C8C88
_080C9914:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_080C9918: .4byte 0x0FFFFFFF

	thumb_func_start sub_80C991C
sub_80C991C: @ 0x080C991C
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_80C8DD0
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _080C9936
	movs r1, #1
_080C9936:
	cmp r1, #0
	bne _080C996A
	movs r1, #0
	cmp r0, #1
	bhi _080C9942
	movs r1, #1
_080C9942:
	cmp r1, #0
	bne _080C996A
	movs r1, #0
	cmp r0, #4
	bne _080C994E
	movs r1, #1
_080C994E:
	cmp r1, #0
	beq _080C9964
_080C9952:
	ldr r0, [sp, #4]
	ldr r1, _080C9960 @ =0x7FFFFFFF
	cmp r0, #0
	beq _080C9988
	adds r1, #1
	b _080C9988
	.align 2, 0
_080C9960: .4byte 0x7FFFFFFF
_080C9964:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _080C996E
_080C996A:
	movs r0, #0
	b _080C998A
_080C996E:
	cmp r0, #0x1e
	bgt _080C9952
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_80CA370
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080C9988
	rsbs r1, r1, #0
_080C9988:
	adds r0, r1, #0
_080C998A:
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start sub_80C9990
sub_80C9990: @ 0x080C9990
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_80C8DD0
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080C99AA
	movs r1, #1
_080C99AA:
	str r1, [sp, #4]
	mov r0, sp
	bl sub_80C8C88
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start sub_80C99B8
sub_80C99B8: @ 0x080C99B8
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl sub_80C8C88
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start sub_80C99E0
sub_80C99E0: @ 0x080C99E0
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_80C8DD0
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _080C9A20 @ =0x3FFFFFFF
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _080C9A10
	movs r0, #1
	orrs r5, r0
_080C9A10:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl sub_80CA32C
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_080C9A20: .4byte 0x3FFFFFFF

	thumb_func_start sub_80C9A24
sub_80C9A24: @ 0x080C9A24
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _080C9A36
	movs r1, #1
_080C9A36:
	cmp r1, #0
	beq _080C9A44
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _080C9AAA
_080C9A44:
	movs r1, #0
	cmp r3, #4
	bne _080C9A4C
	movs r1, #1
_080C9A4C:
	cmp r1, #0
	bne _080C9A80
	movs r1, #0
	cmp r3, #2
	bne _080C9A58
	movs r1, #1
_080C9A58:
	cmp r1, #0
	beq _080C9A60
	movs r2, #0
	b _080C9AAA
_080C9A60:
	cmp r2, #0
	beq _080C9AAA
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _080C9A7C
	subs r0, r3, r0
	cmp r0, #0x19
	ble _080C9A78
	movs r2, #0
	b _080C9AA8
_080C9A78:
	lsrs r2, r0
	b _080C9AA8
_080C9A7C:
	cmp r0, #0x7f
	ble _080C9A86
_080C9A80:
	movs r5, #0xff
	movs r2, #0
	b _080C9AAA
_080C9A86:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _080C9A9E
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080C9AA0
	adds r2, #0x40
	b _080C9AA0
_080C9A9E:
	adds r2, #0x3f
_080C9AA0:
	cmp r2, #0
	bge _080C9AA8
	lsrs r2, r2, #1
	adds r5, #1
_080C9AA8:
	lsrs r2, r2, #7
_080C9AAA:
	ldr r0, _080C9ACC @ =0x007FFFFF
	ands r2, r0
	ldr r0, _080C9AD0 @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _080C9AD4 @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _080C9AD8 @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080C9ACC: .4byte 0x007FFFFF
_080C9AD0: .4byte 0xFF800000
_080C9AD4: .4byte 0x807FFFFF
_080C9AD8: .4byte 0x7FFFFFFF

	thumb_func_start sub_80C9ADC
sub_80C9ADC: @ 0x080C9ADC
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _080C9B20
	cmp r2, #0
	bne _080C9AFC
	movs r0, #2
	str r0, [r3]
	b _080C9B54
_080C9AFC:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _080C9B1C @ =0x3FFFFFFF
	cmp r2, r1
	bhi _080C9B3C
	adds r0, r4, #0
_080C9B10:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _080C9B10
	str r0, [r3, #8]
	b _080C9B3C
	.align 2, 0
_080C9B1C: .4byte 0x3FFFFFFF
_080C9B20:
	cmp r1, #0xff
	bne _080C9B40
	cmp r2, #0
	bne _080C9B2E
	movs r0, #4
	str r0, [r3]
	b _080C9B54
_080C9B2E:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _080C9B3A
	movs r0, #1
_080C9B3A:
	str r0, [r3]
_080C9B3C:
	str r2, [r3, #0xc]
	b _080C9B54
_080C9B40:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_080C9B54:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80C9B58
sub_80C9B58: @ 0x080C9B58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _080C9B6E
	movs r0, #1
_080C9B6E:
	cmp r0, #0
	beq _080C9B76
_080C9B72:
	adds r0, r6, #0
	b _080C9CCC
_080C9B76:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _080C9B80
	movs r1, #1
_080C9B80:
	cmp r1, #0
	bne _080C9BF4
	movs r1, #0
	cmp r2, #4
	bne _080C9B8C
	movs r1, #1
_080C9B8C:
	cmp r1, #0
	beq _080C9BAC
	movs r1, #0
	cmp r0, #4
	bne _080C9B98
	movs r1, #1
_080C9B98:
	cmp r1, #0
	beq _080C9B72
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _080C9B72
	ldr r0, _080C9BA8 @ =0x03000468
	b _080C9CCC
	.align 2, 0
_080C9BA8: .4byte 0x03000468
_080C9BAC:
	movs r1, #0
	cmp r0, #4
	bne _080C9BB4
	movs r1, #1
_080C9BB4:
	cmp r1, #0
	bne _080C9BF4
	movs r1, #0
	cmp r0, #2
	bne _080C9BC0
	movs r1, #1
_080C9BC0:
	cmp r1, #0
	beq _080C9BE6
	movs r0, #0
	cmp r2, #2
	bne _080C9BCC
	movs r0, #1
_080C9BCC:
	cmp r0, #0
	beq _080C9B72
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _080C9CCA
_080C9BE6:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _080C9BF0
	movs r1, #1
_080C9BF0:
	cmp r1, #0
	beq _080C9BF8
_080C9BF4:
	adds r0, r7, #0
	b _080C9CCC
_080C9BF8:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _080C9C08
	rsbs r0, r0, #0
_080C9C08:
	cmp r0, #0x1f
	bgt _080C9C4C
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _080C9C2E
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_080C9C1C:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _080C9C1C
	adds r3, r1, #0
_080C9C2E:
	cmp r3, r1
	ble _080C9C5E
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_080C9C38:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _080C9C38
	adds r1, r3, #0
	b _080C9C5E
_080C9C4C:
	cmp r1, r3
	ble _080C9C54
	movs r4, #0
	b _080C9C58
_080C9C54:
	adds r1, r3, #0
	movs r2, #0
_080C9C58:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_080C9C5E:
	cmp r6, r8
	beq _080C9CA8
	cmp r6, #0
	beq _080C9C6A
	subs r3, r4, r2
	b _080C9C6C
_080C9C6A:
	subs r3, r2, r4
_080C9C6C:
	cmp r3, #0
	blt _080C9C7A
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _080C9C84
_080C9C7A:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_080C9C84:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _080C9CA4 @ =0x3FFFFFFE
	cmp r0, r2
	bhi _080C9CB0
_080C9C8E:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _080C9C8E
	b _080C9CB0
	.align 2, 0
_080C9CA4: .4byte 0x3FFFFFFE
_080C9CA8:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_080C9CB0:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _080C9CCA
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_080C9CCA:
	adds r0, r5, #0
_080C9CCC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_80C9CD4
sub_80C9CD4: @ 0x080C9CD4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_80C9ADC
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_80C9ADC
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C9B58
	bl sub_80C9A24
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_80C9D00
sub_80C9D00: @ 0x080C9D00
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_80C9ADC
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_80C9ADC
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C9B58
	bl sub_80C9A24
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start sub_80C9D34
sub_80C9D34: @ 0x080C9D34
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_80C9ADC
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_80C9ADC
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _080C9D66
	movs r0, #1
_080C9D66:
	cmp r0, #0
	bne _080C9DC4
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080C9D74
	movs r2, #1
_080C9D74:
	cmp r2, #0
	beq _080C9D7C
	ldr r0, [sp, #4]
	b _080C9DE4
_080C9D7C:
	movs r2, #0
	cmp r1, #4
	bne _080C9D84
	movs r2, #1
_080C9D84:
	cmp r2, #0
	beq _080C9D96
	movs r1, #0
	cmp r0, #2
	bne _080C9D90
	movs r1, #1
_080C9D90:
	cmp r1, #0
	bne _080C9DAE
	b _080C9DC4
_080C9D96:
	movs r2, #0
	cmp r0, #4
	bne _080C9D9E
	movs r2, #1
_080C9D9E:
	cmp r2, #0
	beq _080C9DB8
	movs r0, #0
	cmp r1, #2
	bne _080C9DAA
	movs r0, #1
_080C9DAA:
	cmp r0, #0
	beq _080C9DE2
_080C9DAE:
	ldr r0, _080C9DB4 @ =0x03000468
	b _080C9E86
	.align 2, 0
_080C9DB4: .4byte 0x03000468
_080C9DB8:
	movs r2, #0
	cmp r1, #2
	bne _080C9DC0
	movs r2, #1
_080C9DC0:
	cmp r2, #0
	beq _080C9DD6
_080C9DC4:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _080C9E86
_080C9DD6:
	movs r1, #0
	cmp r0, #2
	bne _080C9DDE
	movs r1, #1
_080C9DDE:
	cmp r1, #0
	beq _080C9DF4
_080C9DE2:
	ldr r0, [r7, #4]
_080C9DE4:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _080C9E86
_080C9DF4:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl sub_80C8AC8
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _080C9E40
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_080C9E2A:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _080C9E38
	lsrs r6, r6, #1
	orrs r6, r1
_080C9E38:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _080C9E2A
	str r4, [sp, #0x28]
_080C9E40:
	ldr r0, _080C9E94 @ =0x3FFFFFFF
	cmp r5, r0
	bhi _080C9E66
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_080C9E50:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _080C9E5E
	orrs r5, r3
_080C9E5E:
	lsls r6, r6, #1
	cmp r5, r2
	bls _080C9E50
	str r1, [sp, #0x28]
_080C9E66:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _080C9E7C
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _080C9E7A
	cmp r6, #0
	beq _080C9E7C
_080C9E7A:
	adds r5, #0x40
_080C9E7C:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_080C9E86:
	bl sub_80C9A24
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C9E94: .4byte 0x3FFFFFFF

	thumb_func_start sub_80C9E98
sub_80C9E98: @ 0x080C9E98
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_80C9ADC
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl sub_80C9ADC
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _080C9EBE
	movs r0, #1
_080C9EBE:
	cmp r0, #0
	beq _080C9EC6
	mov r1, sp
	b _080C9F78
_080C9EC6:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _080C9ED2
	movs r0, #1
_080C9ED2:
	cmp r0, #0
	beq _080C9EDA
	adds r1, r5, #0
	b _080C9F78
_080C9EDA:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _080C9EEA
	movs r0, #1
_080C9EEA:
	cmp r0, #0
	bne _080C9EFA
	movs r0, #0
	cmp r3, #2
	bne _080C9EF6
	movs r0, #1
_080C9EF6:
	cmp r0, #0
	beq _080C9F0C
_080C9EFA:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _080C9F78
	ldr r1, _080C9F08 @ =0x03000468
	b _080C9F78
	.align 2, 0
_080C9F08: .4byte 0x03000468
_080C9F0C:
	movs r1, #0
	cmp r2, #4
	bne _080C9F14
	movs r1, #1
_080C9F14:
	cmp r1, #0
	beq _080C9F20
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _080C9F78
_080C9F20:
	movs r0, #0
	cmp r2, #2
	bne _080C9F28
	movs r0, #1
_080C9F28:
	cmp r0, #0
	beq _080C9F32
	movs r0, #4
	str r0, [r4]
	b _080C9F76
_080C9F32:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _080C9F48
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_080C9F48:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_080C9F4E:
	cmp r2, r3
	blo _080C9F56
	orrs r1, r0
	subs r2, r2, r3
_080C9F56:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _080C9F4E
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _080C9F74
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080C9F72
	cmp r2, #0
	beq _080C9F74
_080C9F72:
	adds r1, #0x40
_080C9F74:
	str r1, [r4, #0xc]
_080C9F76:
	adds r1, r4, #0
_080C9F78:
	adds r0, r1, #0
	bl sub_80C9A24
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_80C9F84
sub_80C9F84: @ 0x080C9F84
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _080C9F92
	movs r0, #1
_080C9F92:
	cmp r0, #0
	bne _080C9FA4
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _080C9FA0
	movs r0, #1
_080C9FA0:
	cmp r0, #0
	beq _080C9FA8
_080C9FA4:
	movs r0, #1
	b _080CA066
_080C9FA8:
	movs r0, #0
	cmp r2, #4
	bne _080C9FB0
	movs r0, #1
_080C9FB0:
	cmp r0, #0
	beq _080C9FC8
	movs r0, #0
	cmp r3, #4
	bne _080C9FBC
	movs r0, #1
_080C9FBC:
	cmp r0, #0
	beq _080C9FC8
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _080CA066
_080C9FC8:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _080C9FD2
	movs r2, #1
_080C9FD2:
	cmp r2, #0
	bne _080CA020
	movs r2, #0
	cmp r3, #4
	bne _080C9FDE
	movs r2, #1
_080C9FDE:
	cmp r2, #0
	beq _080C9FF0
_080C9FE2:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _080CA02A
	movs r1, #1
	b _080CA02A
_080C9FF0:
	movs r2, #0
	cmp r0, #2
	bne _080C9FF8
	movs r2, #1
_080C9FF8:
	cmp r2, #0
	beq _080CA008
	movs r2, #0
	cmp r3, #2
	bne _080CA004
	movs r2, #1
_080CA004:
	cmp r2, #0
	bne _080CA064
_080CA008:
	movs r2, #0
	cmp r0, #2
	bne _080CA010
	movs r2, #1
_080CA010:
	cmp r2, #0
	bne _080C9FE2
	movs r0, #0
	cmp r3, #2
	bne _080CA01C
	movs r0, #1
_080CA01C:
	cmp r0, #0
	beq _080CA02E
_080CA020:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _080CA02A
	subs r1, #2
_080CA02A:
	adds r0, r1, #0
	b _080CA066
_080CA02E:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _080CA040
_080CA036:
	movs r0, #1
	cmp r3, #0
	beq _080CA066
	subs r0, #2
	b _080CA066
_080CA040:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _080CA036
	cmp r2, r0
	bge _080CA058
_080CA04C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _080CA066
	movs r0, #1
	b _080CA066
_080CA058:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _080CA036
	cmp r0, r1
	blo _080CA04C
_080CA064:
	movs r0, #0
_080CA066:
	pop {r4, pc}

	thumb_func_start sub_80CA068
sub_80CA068: @ 0x080CA068
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_80C9ADC
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_80C9ADC
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C9F84
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80CA090
sub_80CA090: @ 0x080CA090
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_80C9ADC
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_80C9ADC
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080CA0B4
	movs r1, #1
_080CA0B4:
	cmp r1, #0
	bne _080CA0C6
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080CA0C2
	movs r1, #1
_080CA0C2:
	cmp r1, #0
	beq _080CA0CA
_080CA0C6:
	movs r0, #1
	b _080CA0D2
_080CA0CA:
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C9F84
_080CA0D2:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80CA0D8
sub_80CA0D8: @ 0x080CA0D8
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_80C9ADC
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_80C9ADC
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080CA0FC
	movs r1, #1
_080CA0FC:
	cmp r1, #0
	bne _080CA10E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080CA10A
	movs r1, #1
_080CA10A:
	cmp r1, #0
	beq _080CA112
_080CA10E:
	movs r0, #1
	b _080CA11A
_080CA112:
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C9F84
_080CA11A:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80CA120
sub_80CA120: @ 0x080CA120
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_80C9ADC
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_80C9ADC
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080CA144
	movs r1, #1
_080CA144:
	cmp r1, #0
	bne _080CA156
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080CA152
	movs r1, #1
_080CA152:
	cmp r1, #0
	beq _080CA15C
_080CA156:
	movs r0, #1
	rsbs r0, r0, #0
	b _080CA164
_080CA15C:
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C9F84
_080CA164:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start sub_80CA168
sub_80CA168: @ 0x080CA168
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_80C9ADC
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_80C9ADC
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080CA18C
	movs r1, #1
_080CA18C:
	cmp r1, #0
	bne _080CA19E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080CA19A
	movs r1, #1
_080CA19A:
	cmp r1, #0
	beq _080CA1A4
_080CA19E:
	movs r0, #1
	rsbs r0, r0, #0
	b _080CA1AC
_080CA1A4:
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C9F84
_080CA1AC:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start sub_80CA1B0
sub_80CA1B0: @ 0x080CA1B0
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_80C9ADC
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_80C9ADC
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080CA1D4
	movs r1, #1
_080CA1D4:
	cmp r1, #0
	bne _080CA1E6
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080CA1E2
	movs r1, #1
_080CA1E2:
	cmp r1, #0
	beq _080CA1EA
_080CA1E6:
	movs r0, #1
	b _080CA1F2
_080CA1EA:
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C9F84
_080CA1F2:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80CA1F8
sub_80CA1F8: @ 0x080CA1F8
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_80C9ADC
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_80C9ADC
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080CA21C
	movs r1, #1
_080CA21C:
	cmp r1, #0
	bne _080CA22E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080CA22A
	movs r1, #1
_080CA22A:
	cmp r1, #0
	beq _080CA232
_080CA22E:
	movs r0, #1
	b _080CA23A
_080CA232:
	mov r0, sp
	adds r1, r4, #0
	bl sub_80C9F84
_080CA23A:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80CA240
sub_80CA240: @ 0x080CA240
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _080CA258
	movs r0, #2
	str r0, [sp]
	b _080CA290
_080CA258:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _080CA276
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _080CA270
	ldr r0, _080CA26C @ =0xCF000000
	b _080CA296
	.align 2, 0
_080CA26C: .4byte 0xCF000000
_080CA270:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _080CA278
_080CA276:
	str r1, [sp, #0xc]
_080CA278:
	ldr r2, [sp, #0xc]
	ldr r3, _080CA29C @ =0x3FFFFFFF
	cmp r2, r3
	bhi _080CA290
	ldr r1, [sp, #8]
_080CA282:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _080CA282
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_080CA290:
	mov r0, sp
	bl sub_80C9A24
_080CA296:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_080CA29C: .4byte 0x3FFFFFFF

	thumb_func_start sub_80CA2A0
sub_80CA2A0: @ 0x080CA2A0
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl sub_80C9ADC
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _080CA2B8
	movs r1, #1
_080CA2B8:
	cmp r1, #0
	bne _080CA2EA
	movs r1, #0
	cmp r0, #1
	bhi _080CA2C4
	movs r1, #1
_080CA2C4:
	cmp r1, #0
	bne _080CA2EA
	movs r1, #0
	cmp r0, #4
	bne _080CA2D0
	movs r1, #1
_080CA2D0:
	cmp r1, #0
	beq _080CA2E4
_080CA2D4:
	ldr r0, [sp, #4]
	ldr r1, _080CA2E0 @ =0x7FFFFFFF
	cmp r0, #0
	beq _080CA302
	adds r1, #1
	b _080CA302
	.align 2, 0
_080CA2E0: .4byte 0x7FFFFFFF
_080CA2E4:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _080CA2EE
_080CA2EA:
	movs r0, #0
	b _080CA304
_080CA2EE:
	cmp r1, #0x1e
	bgt _080CA2D4
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080CA302
	rsbs r1, r1, #0
_080CA302:
	adds r0, r1, #0
_080CA304:
	add sp, #0x14
	pop {pc}

	thumb_func_start sub_80CA308
sub_80CA308: @ 0x080CA308
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl sub_80C9ADC
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080CA320
	movs r1, #1
_080CA320:
	str r1, [sp, #4]
	mov r0, sp
	bl sub_80C9A24
	add sp, #0x14
	pop {pc}

	thumb_func_start sub_80CA32C
sub_80CA32C: @ 0x080CA32C
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl sub_80C9A24
	add sp, #0x10
	pop {pc}
	.align 2, 0

	thumb_func_start sub_80CA344
sub_80CA344: @ 0x080CA344
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl sub_80C9ADC
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl sub_80C99B8
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start sub_80CA370
sub_80CA370: @ 0x080CA370
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _080CA3A0
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _080CA38C
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _080CA39C
_080CA38C:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_080CA39C:
	adds r1, r4, #0
	adds r0, r3, #0
_080CA3A0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_80CA3A4
sub_80CA3A4: @ 0x080CA3A4
	ldr r0, _080CA3AC @ =gUnknown_08E7ED98
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080CA3AC: .4byte gUnknown_08E7ED98

	thumb_func_start sub_80CA3B0
sub_80CA3B0: @ 0x080CA3B0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _080CA3F0
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080CA3F0
	adds r1, r5, #0
_080CA3CA:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080CA3CA
	cmp r2, #3
	bls _080CA3EE
_080CA3E4:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _080CA3E4
_080CA3EE:
	adds r4, r1, #0
_080CA3F0:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080CA40A
	adds r1, r0, #0
_080CA3FC:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _080CA3FC
_080CA40A:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_80CA410
sub_80CA410: @ 0x080CA410
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _080CA456
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _080CA456
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _080CA44A
_080CA436:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080CA436
	b _080CA44A
_080CA446:
	stm r1!, {r3}
	subs r2, #4
_080CA44A:
	cmp r2, #3
	bhi _080CA446
	adds r3, r1, #0
	b _080CA456
_080CA452:
	strb r4, [r3]
	adds r3, #1
_080CA456:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _080CA452
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_80CA464
sub_80CA464: @ 0x080CA464
	push {r2, r3}
	push {r4, r5, lr}
	sub sp, #0x58
	ldr r4, [sp, #0x64]
	mov r3, sp
	movs r5, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r1, [sp]
	str r1, [sp, #0x10]
	ldr r1, _080CA49C @ =0x7FFFFFFF
	str r1, [sp, #8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x54]
	add r2, sp, #0x68
	mov r0, sp
	adds r1, r4, #0
	bl sub_80CA574
	ldr r1, [sp]
	strb r5, [r1]
	add sp, #0x58
	pop {r4, r5}
	pop {r3}
	add sp, #8
	bx r3
	.align 2, 0
_080CA49C: .4byte 0x7FFFFFFF

	thumb_func_start sub_80CA4A0
sub_80CA4A0: @ 0x080CA4A0
	push {r1, r2, r3}
	push {r4, lr}
	sub sp, #0x58
	ldr r1, [sp, #0x60]
	mov r3, sp
	movs r4, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r0, [sp]
	str r0, [sp, #0x10]
	ldr r0, _080CA4D8 @ =0x7FFFFFFF
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, _080CA4DC @ =gUnknown_08E7ED98
	ldr r0, [r0]
	str r0, [sp, #0x54]
	add r2, sp, #0x64
	mov r0, sp
	bl sub_80CA574
	ldr r1, [sp]
	strb r4, [r1]
	add sp, #0x58
	pop {r4}
	pop {r3}
	add sp, #0xc
	bx r3
	.align 2, 0
_080CA4D8: .4byte 0x7FFFFFFF
_080CA4DC: .4byte gUnknown_08E7ED98

	thumb_func_start sub_80CA4E0
sub_80CA4E0: @ 0x080CA4E0
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _080CA4F8
	adds r1, r4, #0
	bl sub_80CC9BC
	movs r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	b _080CA4FC
_080CA4F8:
	str r1, [r4, #4]
	movs r0, #0
_080CA4FC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80CA500
sub_80CA500: @ 0x080CA500
	push {r4, r5, lr}
	ldr r4, _080CA570 @ =0xFFFFFBA8
	add sp, r4
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x54]
	mov r3, sp
	movs r0, #3
	rsbs r0, r0, #0
	ldrh r4, [r5, #0xc]
	ands r0, r4
	movs r4, #0
	strh r0, [r3, #0xc]
	ldrh r0, [r5, #0xe]
	strh r0, [r3, #0xe]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	add r0, sp, #0x58
	str r0, [sp]
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r0, sp
	bl sub_80CA574
	adds r4, r0, #0
	cmp r4, #0
	blt _080CA550
	mov r0, sp
	bl sub_80CC54C
	cmp r0, #0
	beq _080CA550
	movs r4, #1
	rsbs r4, r4, #0
_080CA550:
	mov r1, sp
	movs r0, #0x40
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080CA564
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_080CA564:
	adds r0, r4, #0
	movs r3, #0x8b
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5, pc}
	.align 2, 0
_080CA570: .4byte 0xFFFFFBA8

	thumb_func_start sub_80CA574
sub_80CA574: @ 0x080CA574
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_80CA588
	pop {r4, r5, pc}

	thumb_func_start sub_80CA588
sub_80CA588: @ 0x080CA588
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080CA5F0 @ =0xFFFFFDE0
	add sp, r4
	str r0, [sp, #0x1dc]
	str r1, [sp, #0x1e0]
	adds r4, r2, #0
	mov sl, r3
	bl sub_80CCC84
	ldr r0, [r0]
	str r0, [sp, #0x1f8]
	movs r1, #0
	add r0, sp, #0x1d0
	str r1, [r0]
	ldr r1, [sp, #0x1e0]
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _080CA5BA
	ldr r0, _080CA5F4 @ =gUnknown_08E7ED98
	ldr r0, [r0]
	str r0, [r1, #0x54]
_080CA5BA:
	ldr r2, [sp, #0x1e0]
	ldr r1, [r2, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080CA5CA
	adds r0, r1, #0
	bl sub_80CC6DC
_080CA5CA:
	movs r0, #8
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080CA5DE
	ldr r2, [sp, #0x1e0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _080CA5F8
_080CA5DE:
	ldr r0, [sp, #0x1e0]
	bl sub_80CB64C
	cmp r0, #0
	beq _080CA5F8
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_80CB4D8
	.align 2, 0
_080CA5F0: .4byte 0xFFFFFDE0
_080CA5F4: .4byte gUnknown_08E7ED98
_080CA5F8:
	movs r0, #0x1a
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0xa
	bne _080CA61C
	ldr r2, [sp, #0x1e0]
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080CA61C
	adds r0, r2, #0
	adds r1, r4, #0
	mov r2, sl
	bl sub_80CA500
	bl sub_80CB4D8
_080CA61C:
	str r4, [sp, #0x1e4]
	add r1, sp, #0x1c
	add r5, sp, #0x28
	str r5, [sp, #0x1c]
	movs r0, #0
	str r0, [r1, #8]
	str r0, [r1, #4]
	movs r2, #0
	str r2, [sp, #0x1f0]
	mov sb, r1
	movs r4, #0xe6
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x214]
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x218]
_080CA640:
	ldr r1, [sp, #0x1e4]
	mov r8, r1
_080CA644:
	ldr r0, _080CA6F0 @ =gUnknown_08E7ED98
	ldr r0, [r0]
	ldr r1, _080CA6F4 @ =gUnknown_08E7ED9C
	ldr r3, [r1]
	ldr r2, [sp, #0x218]
	str r2, [sp]
	ldr r1, [sp, #0x214]
	ldr r2, [sp, #0x1e4]
	bl sub_80CD28C
	adds r4, r0, #0
	cmp r4, #0
	ble _080CA672
	ldr r0, [sp, #0x1e4]
	adds r0, r0, r4
	str r0, [sp, #0x1e4]
	add r0, sp, #0x1cc
	ldr r0, [r0]
	cmp r0, #0x25
	bne _080CA644
	ldr r1, [sp, #0x1e4]
	subs r1, #1
	str r1, [sp, #0x1e4]
_080CA672:
	ldr r2, [sp, #0x1e4]
	mov r0, r8
	subs r6, r2, r0
	cmp r6, #0
	beq _080CA6AA
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r6
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CA6A4
	ldr r0, [sp, #0x1e0]
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CA6A2
	bl _080CB4C4
_080CA6A2:
	add r5, sp, #0x28
_080CA6A4:
	ldr r2, [sp, #0x1f0]
	adds r2, r2, r6
	str r2, [sp, #0x1f0]
_080CA6AA:
	cmp r4, #0
	bgt _080CA6B2
	bl _080CB4AC
_080CA6B2:
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	movs r0, #0
	str r0, [sp, #0x1ec]
	movs r1, #0
	str r1, [sp, #0x208]
	movs r2, #0
	str r2, [sp, #0x1f4]
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, _080CA6F8 @ =0x000001C9
	add r0, sp
	strb r2, [r0]
_080CA6CE:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
_080CA6DA:
	ldr r0, [sp, #0x1e8]
	subs r0, #0x20
	cmp r0, #0x58
	bls _080CA6E4
	b _080CAD96
_080CA6E4:
	lsls r0, r0, #2
	ldr r1, _080CA6FC @ =_080CA700
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CA6F0: .4byte gUnknown_08E7ED98
_080CA6F4: .4byte gUnknown_08E7ED9C
_080CA6F8: .4byte 0x000001C9
_080CA6FC: .4byte _080CA700
_080CA700: @ jump table
	.4byte _080CA864 @ case 0
	.4byte _080CAD96 @ case 1
	.4byte _080CAD96 @ case 2
	.4byte _080CA87C @ case 3
	.4byte _080CAD96 @ case 4
	.4byte _080CAD96 @ case 5
	.4byte _080CAD96 @ case 6
	.4byte _080CAD96 @ case 7
	.4byte _080CAD96 @ case 8
	.4byte _080CAD96 @ case 9
	.4byte _080CA880 @ case 10
	.4byte _080CA89A @ case 11
	.4byte _080CAD96 @ case 12
	.4byte _080CA896 @ case 13
	.4byte _080CA8A8 @ case 14
	.4byte _080CAD96 @ case 15
	.4byte _080CA908 @ case 16
	.4byte _080CA90C @ case 17
	.4byte _080CA90C @ case 18
	.4byte _080CA90C @ case 19
	.4byte _080CA90C @ case 20
	.4byte _080CA90C @ case 21
	.4byte _080CA90C @ case 22
	.4byte _080CA90C @ case 23
	.4byte _080CA90C @ case 24
	.4byte _080CA90C @ case 25
	.4byte _080CAD96 @ case 26
	.4byte _080CAD96 @ case 27
	.4byte _080CAD96 @ case 28
	.4byte _080CAD96 @ case 29
	.4byte _080CAD96 @ case 30
	.4byte _080CAD96 @ case 31
	.4byte _080CAD96 @ case 32
	.4byte _080CAD96 @ case 33
	.4byte _080CAD96 @ case 34
	.4byte _080CAD96 @ case 35
	.4byte _080CA976 @ case 36
	.4byte _080CA9C8 @ case 37
	.4byte _080CAD96 @ case 38
	.4byte _080CA9C8 @ case 39
	.4byte _080CAD96 @ case 40
	.4byte _080CAD96 @ case 41
	.4byte _080CAD96 @ case 42
	.4byte _080CAD96 @ case 43
	.4byte _080CA930 @ case 44
	.4byte _080CAD96 @ case 45
	.4byte _080CAD96 @ case 46
	.4byte _080CAB7E @ case 47
	.4byte _080CAD96 @ case 48
	.4byte _080CAD96 @ case 49
	.4byte _080CAD96 @ case 50
	.4byte _080CAD96 @ case 51
	.4byte _080CAD96 @ case 52
	.4byte _080CAC16 @ case 53
	.4byte _080CAD96 @ case 54
	.4byte _080CAD96 @ case 55
	.4byte _080CAC52 @ case 56
	.4byte _080CAD96 @ case 57
	.4byte _080CAD96 @ case 58
	.4byte _080CAD96 @ case 59
	.4byte _080CAD96 @ case 60
	.4byte _080CAD96 @ case 61
	.4byte _080CAD96 @ case 62
	.4byte _080CAD96 @ case 63
	.4byte _080CAD96 @ case 64
	.4byte _080CAD96 @ case 65
	.4byte _080CAD96 @ case 66
	.4byte _080CA964 @ case 67
	.4byte _080CA97E @ case 68
	.4byte _080CA9C8 @ case 69
	.4byte _080CA9C8 @ case 70
	.4byte _080CA9C8 @ case 71
	.4byte _080CA934 @ case 72
	.4byte _080CA97E @ case 73
	.4byte _080CAD96 @ case 74
	.4byte _080CAD96 @ case 75
	.4byte _080CA938 @ case 76
	.4byte _080CAD96 @ case 77
	.4byte _080CAB38 @ case 78
	.4byte _080CAB86 @ case 79
	.4byte _080CABB4 @ case 80
	.4byte _080CA95A @ case 81
	.4byte _080CAD96 @ case 82
	.4byte _080CABD4 @ case 83
	.4byte _080CAD96 @ case 84
	.4byte _080CAC1E @ case 85
	.4byte _080CAD96 @ case 86
	.4byte _080CAD96 @ case 87
	.4byte _080CAC5C @ case 88
_080CA864:
	ldr r1, _080CA878 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _080CA870
	b _080CA6CE
_080CA870:
	movs r0, #0x20
	strb r0, [r1]
	b _080CA6CE
	.align 2, 0
_080CA878: .4byte 0x000001C9
_080CA87C:
	movs r0, #1
	b _080CA948
_080CA880:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x1f4]
	cmp r0, #0
	blt _080CA892
	b _080CA6CE
_080CA892:
	rsbs r0, r0, #0
	str r0, [sp, #0x1f4]
_080CA896:
	movs r0, #4
	b _080CA95C
_080CA89A:
	ldr r1, _080CA8A4 @ =0x000001C9
	add r1, sp
	movs r0, #0x2b
	strb r0, [r1]
	b _080CA6CE
	.align 2, 0
_080CA8A4: .4byte 0x000001C9
_080CA8A8:
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	cmp r2, #0x2a
	bne _080CA8D2
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _080CA8CE
	b _080CA6CE
_080CA8CE:
	adds r6, r0, #0
	b _080CA6CE
_080CA8D2:
	movs r4, #0
	ldr r0, [sp, #0x1e8]
	b _080CA8F2
_080CA8D8:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r1, [sp, #0x1e8]
	adds r4, r0, r1
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r0, [sp, #0x1e4]
	adds r0, #1
	str r0, [sp, #0x1e4]
	adds r0, r2, #0
_080CA8F2:
	subs r0, #0x30
	cmp r0, #9
	bls _080CA8D8
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _080CA904
	b _080CA6DA
_080CA904:
	adds r6, r0, #0
	b _080CA6DA
_080CA908:
	movs r0, #0x80
	b _080CA95C
_080CA90C:
	movs r4, #0
_080CA90E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r2, [sp, #0x1e8]
	adds r4, r0, r2
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	subs r0, #0x30
	cmp r0, #9
	bls _080CA90E
	str r4, [sp, #0x1f4]
	b _080CA6DA
_080CA930:
	movs r0, #8
	b _080CA948
_080CA934:
	movs r0, #0x40
	b _080CA952
_080CA938:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	cmp r0, #0x6c
	bne _080CA950
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	movs r0, #0x20
_080CA948:
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
	b _080CA6CE
_080CA950:
	movs r0, #0x10
_080CA952:
	ldr r4, [sp, #0x1ec]
	orrs r4, r0
	str r4, [sp, #0x1ec]
	b _080CA6CE
_080CA95A:
	movs r0, #0x20
_080CA95C:
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	b _080CA6CE
_080CA964:
	add r2, sp, #0x68
	mov r8, r2
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	strb r0, [r2]
	b _080CADA4
_080CA976:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_080CA97E:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080CA98E
	movs r4, #4
	add sl, r4
	b _080CA9AA
_080CA98E:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CA9A6
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	movs r1, #0
	ldrsh r4, [r0, r1]
	b _080CA9B0
_080CA9A6:
	movs r2, #4
	add sl, r2
_080CA9AA:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080CA9B0:
	cmp r4, #0
	bge _080CA9BE
	rsbs r4, r4, #0
	ldr r1, _080CA9C4 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_080CA9BE:
	movs r2, #1
	b _080CACAA
	.align 2, 0
_080CA9C4: .4byte 0x000001C9
_080CA9C8:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _080CA9D4
	movs r6, #6
	b _080CA9E4
_080CA9D4:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _080CA9DE
	cmp r4, #0x47
	bne _080CA9E4
_080CA9DE:
	cmp r6, #0
	bne _080CA9E4
	movs r6, #1
_080CA9E4:
	movs r0, #8
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	movs r2, #8
	add sl, r2
	mov r0, sl
	subs r0, #8
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x1fc]
	str r2, [sp, #0x200]
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_80CDC98
	cmp r0, #0
	beq _080CAA38
	ldr r3, _080CAA2C @ =0x00000000
	ldr r2, _080CAA28 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_80C9808
	cmp r0, #0
	bge _080CAA1E
	ldr r1, _080CAA30 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_080CAA1E:
	ldr r2, _080CAA34 @ =gUnknown_08E2E7C0
	mov r8, r2
	movs r3, #3
	b _080CADAE
	.align 2, 0
_080CAA28: .4byte 0x00000000
_080CAA2C: .4byte 0x00000000
_080CAA30: .4byte 0x000001C9
_080CAA34: .4byte gUnknown_08E2E7C0
_080CAA38:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_80CDCBC
	cmp r0, #0
	beq _080CAA50
	ldr r4, _080CAA4C @ =gUnknown_08E2E7C4
	mov r8, r4
	movs r3, #3
	b _080CADAE
	.align 2, 0
_080CAA4C: .4byte gUnknown_08E2E7C4
_080CAA50:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	str r1, [sp]
	add r0, sp, #0x1c8
	str r0, [sp, #4]
	add r0, sp, #0x1d4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1e8]
	str r2, [sp, #0xc]
	add r0, sp, #0x1d8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1dc]
	ldr r1, [sp, #0x1fc]
	ldr r2, [sp, #0x200]
	adds r3, r6, #0
	bl sub_80CB4E8
	mov r8, r0
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _080CAA84
	cmp r4, #0x47
	bne _080CAAA6
_080CAA84:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080CAA94
	cmp r1, r6
	ble _080CAAA2
_080CAA94:
	movs r0, #0x45
	ldr r1, [sp, #0x1e8]
	cmp r1, #0x67
	bne _080CAA9E
	movs r0, #0x65
_080CAA9E:
	str r0, [sp, #0x1e8]
	b _080CAAA6
_080CAAA2:
	movs r2, #0x67
	str r2, [sp, #0x1e8]
_080CAAA6:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x65
	bgt _080CAACC
	add r0, sp, #0x1d4
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	add r0, sp, #0x14
	ldr r2, [sp, #0x1e8]
	bl sub_80CB5DC
	str r0, [sp, #0x204]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	ldr r1, [sp, #0x204]
	adds r3, r1, r0
	cmp r0, #1
	bgt _080CAB0C
	b _080CAB02
_080CAACC:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x66
	bne _080CAAF4
	add r0, sp, #0x1d4
	ldr r0, [r0]
	cmp r0, #0
	ble _080CAAF0
	adds r3, r0, #0
	cmp r6, #0
	bne _080CAAEA
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CAB1C
_080CAAEA:
	adds r0, r3, #1
	adds r3, r0, r6
	b _080CAB1C
_080CAAF0:
	adds r3, r6, #2
	b _080CAB1C
_080CAAF4:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	cmp r1, r0
	blt _080CAB10
	adds r3, r1, #0
_080CAB02:
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080CAB1C
_080CAB0C:
	adds r3, #1
	b _080CAB1C
_080CAB10:
	cmp r1, #0
	bgt _080CAB1A
	adds r0, #2
	subs r3, r0, r1
	b _080CAB1C
_080CAB1A:
	adds r3, r0, #1
_080CAB1C:
	add r0, sp, #0x1c8
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #8
	cmp r0, #0
	bne _080CAB2A
	b _080CADB2
_080CAB2A:
	ldr r1, _080CAB34 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
	b _080CADB2
	.align 2, 0
_080CAB34: .4byte 0x000001C9
_080CAB38:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _080CAB52
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r1, [sp, #0x1f0]
	str r1, [r0]
	b _080CA640
_080CAB52:
	movs r0, #0x40
	ldr r2, [sp, #0x1ec]
	ands r2, r0
	cmp r2, #0
	beq _080CAB6E
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	add r1, sp, #0x1f0
	ldrh r1, [r1]
	strh r1, [r0]
	b _080CA640
_080CAB6E:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r4, [sp, #0x1f0]
	str r4, [r0]
	b _080CA640
_080CAB7E:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_080CAB86:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _080CABA6
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CABA6
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _080CABB0
_080CABA6:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080CABB0:
	movs r2, #0
	b _080CACA2
_080CABB4:
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	movs r2, #2
	ldr r1, _080CABD0 @ =gUnknown_08E2E7C8
	str r1, [sp, #0x210]
	ldr r0, [sp, #0x1ec]
	orrs r0, r2
	str r0, [sp, #0x1ec]
	movs r1, #0x78
	str r1, [sp, #0x1e8]
	b _080CACA2
	.align 2, 0
_080CABD0: .4byte gUnknown_08E2E7C8
_080CABD4:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _080CABE8
	ldr r4, _080CAC08 @ =gUnknown_08E2E7DC
	mov r8, r4
_080CABE8:
	cmp r6, #0
	blt _080CAC0C
	mov r0, r8
	movs r1, #0
	adds r2, r6, #0
	bl sub_80CD2B8
	cmp r0, #0
	beq _080CAC04
	mov r1, r8
	subs r3, r0, r1
	cmp r3, r6
	bgt _080CAC04
	b _080CADA6
_080CAC04:
	adds r3, r6, #0
	b _080CADA6
	.align 2, 0
_080CAC08: .4byte gUnknown_08E2E7DC
_080CAC0C:
	mov r0, r8
	bl sub_80CDE28
	adds r3, r0, #0
	b _080CADA6
_080CAC16:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
_080CAC1E:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _080CAC2E
	movs r0, #4
	add sl, r0
	b _080CAC48
_080CAC2E:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CAC44
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _080CAC4E
_080CAC44:
	movs r4, #4
	add sl, r4
_080CAC48:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080CAC4E:
	movs r2, #1
	b _080CACA2
_080CAC52:
	ldr r0, _080CAC58 @ =gUnknown_08E2E7E4
	str r0, [sp, #0x210]
	b _080CAC60
	.align 2, 0
_080CAC58: .4byte gUnknown_08E2E7E4
_080CAC5C:
	ldr r1, _080CAC80 @ =gUnknown_08E2E7C8
	str r1, [sp, #0x210]
_080CAC60:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _080CAC84
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CAC84
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _080CAC8E
	.align 2, 0
_080CAC80: .4byte gUnknown_08E2E7C8
_080CAC84:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080CAC8E:
	movs r2, #2
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CACA2
	cmp r4, #0
	beq _080CACA2
	orrs r1, r2
	str r1, [sp, #0x1ec]
_080CACA2:
	ldr r1, _080CACEC @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_080CACAA:
	str r6, [sp, #0x208]
	cmp r6, #0
	blt _080CACBA
	movs r0, #0x81
	rsbs r0, r0, #0
	ldr r1, [sp, #0x1ec]
	ands r1, r0
	str r1, [sp, #0x1ec]
_080CACBA:
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, sp
	mov r8, r0
	cmp r4, #0
	bne _080CACD0
	adds r7, r5, #0
	adds r7, #8
	ldr r1, [sp, #0x208]
	cmp r1, #0
	beq _080CAD88
_080CACD0:
	cmp r2, #1
	beq _080CAD2E
	cmp r2, #1
	blo _080CACF4
	cmp r2, #2
	beq _080CAD68
	ldr r2, _080CACF0 @ =gUnknown_08E2E7F8
	mov r8, r2
	mov r0, r8
	bl sub_80CDE28
	adds r3, r0, #0
	b _080CADAE
	.align 2, 0
_080CACEC: .4byte 0x000001C9
_080CACF0: .4byte gUnknown_08E2E7F8
_080CACF4:
	adds r7, r5, #0
	adds r7, #8
	movs r2, #7
_080CACFA:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r2
	adds r1, r0, #0
	adds r1, #0x30
	mov r0, r8
	strb r1, [r0]
	lsrs r4, r4, #3
	cmp r4, #0
	bne _080CACFA
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080CAD88
	cmp r1, #0x30
	beq _080CAD88
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	b _080CAD88
_080CAD2E:
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #9
	bls _080CAD58
_080CAD36:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_80C8BC8
	adds r0, #0x30
	mov r1, r8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_80C8B50
	adds r4, r0, #0
	cmp r4, #9
	bhi _080CAD36
_080CAD58:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	adds r0, #0x30
	mov r4, r8
	strb r0, [r4]
	b _080CAD88
_080CAD68:
	adds r7, r5, #0
	adds r7, #8
	movs r1, #0xf
_080CAD6E:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r1
	ldr r2, [sp, #0x210]
	adds r0, r2, r0
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	lsrs r4, r4, #4
	cmp r4, #0
	bne _080CAD6E
_080CAD88:
	add r4, sp, #0x14
	mov r1, r8
	subs r0, r4, r1
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r3, r0, r2
	b _080CADB2
_080CAD96:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0
	bne _080CAD9E
	b _080CB4AC
_080CAD9E:
	add r0, sp, #0x68
	mov r8, r0
	strb r4, [r0]
_080CADA4:
	movs r3, #1
_080CADA6:
	ldr r1, _080CADD0 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_080CADAE:
	adds r7, r5, #0
	adds r7, #8
_080CADB2:
	str r3, [sp, #0x20c]
	ldr r2, [sp, #0x208]
	cmp r3, r2
	bge _080CADBC
	str r2, [sp, #0x20c]
_080CADBC:
	ldr r0, _080CADD0 @ =0x000001C9
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _080CADD4
	ldr r4, [sp, #0x20c]
	adds r4, #1
	str r4, [sp, #0x20c]
	b _080CADE4
	.align 2, 0
_080CADD0: .4byte 0x000001C9
_080CADD4:
	movs r0, #2
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CADE4
	ldr r2, [sp, #0x20c]
	adds r2, #2
	str r2, [sp, #0x20c]
_080CADE4:
	movs r0, #0x84
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	bne _080CAE64
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080CAE64
	ldr r1, _080CAE90 @ =gUnknown_08E2E7A0
	cmp r4, #0x10
	ble _080CAE38
	mov r6, sb
_080CAE00:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, r7, #0
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CAE2E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_80CA4E0
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAE2A
	b _080CB4C4
_080CAE2A:
	add r5, sp, #0x28
	ldr r1, _080CAE90 @ =gUnknown_08E2E7A0
_080CAE2E:
	subs r4, #0x10
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #0x10
	bgt _080CAE00
_080CAE38:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, r7, #0
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080CAE64
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_80CA4E0
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAE62
	b _080CB4C4
_080CAE62:
	add r5, sp, #0x28
_080CAE64:
	ldr r1, _080CAE94 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _080CAE98
	str r1, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080CAED8
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	b _080CAEC8
	.align 2, 0
_080CAE90: .4byte gUnknown_08E2E7A0
_080CAE94: .4byte 0x000001C9
_080CAE98:
	movs r2, #2
	ldr r0, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080CAED8
	add r1, sp, #0x1c4
	movs r0, #0x30
	strb r0, [r1]
	add r0, sp, #0x1e8
	ldrb r0, [r0]
	strb r0, [r1, #1]
	str r1, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CAED8
	ldr r0, [sp, #0x1e0]
_080CAEC8:
	str r3, [sp, #0x21c]
	bl sub_80CA4E0
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAED6
	b _080CB4C4
_080CAED6:
	add r5, sp, #0x28
_080CAED8:
	movs r0, #0x84
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0x80
	bne _080CAF54
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080CAF54
	ldr r1, _080CAFF0 @ =gUnknown_08E2E7B0
	cmp r4, #0x10
	ble _080CAF28
	mov r6, sb
_080CAEF4:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CAF22
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_80CA4E0
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAF1E
	b _080CB4C4
_080CAF1E:
	add r5, sp, #0x28
	ldr r1, _080CAFF0 @ =gUnknown_08E2E7B0
_080CAF22:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CAEF4
_080CAF28:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080CAF54
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_80CA4E0
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAF52
	b _080CB4C4
_080CAF52:
	add r5, sp, #0x28
_080CAF54:
	ldr r0, [sp, #0x208]
	subs r4, r0, r3
	cmp r4, #0
	ble _080CAFC2
	ldr r1, _080CAFF0 @ =gUnknown_08E2E7B0
	cmp r4, #0x10
	ble _080CAF98
	mov r6, sb
_080CAF64:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CAF92
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl sub_80CA4E0
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAF8E
	b _080CB4C4
_080CAF8E:
	add r5, sp, #0x28
	ldr r1, _080CAFF0 @ =gUnknown_08E2E7B0
_080CAF92:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CAF64
_080CAF98:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CAFC2
	ldr r0, [sp, #0x1e0]
	str r3, [sp, #0x21c]
	bl sub_80CA4E0
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080CAFC0
	b _080CB4C4
_080CAFC0:
	add r5, sp, #0x28
_080CAFC2:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _080CAFF4
	mov r4, r8
	str r4, [r5]
	str r3, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r3
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	bgt _080CAFEA
	b _080CB40A
_080CAFEA:
	ldr r0, [sp, #0x1e0]
	b _080CB400
	.align 2, 0
_080CAFF0: .4byte gUnknown_08E2E7B0
_080CAFF4:
	ldr r2, [sp, #0x1e8]
	cmp r2, #0x65
	bgt _080CAFFC
	b _080CB2E0
_080CAFFC:
	ldr r3, _080CB0C8 @ =0x00000000
	ldr r2, _080CB0C4 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_80C96D8
	cmp r0, #0
	bne _080CB0D4
	ldr r0, _080CB0CC @ =gUnknown_08E2E814
	str r0, [r5]
	movs r6, #1
	str r6, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080CB038
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB036
	b _080CB4C4
_080CB036:
	add r5, sp, #0x28
_080CB038:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r1, r0
	blt _080CB04E
	ldr r0, [sp, #0x1ec]
	ands r0, r6
	cmp r0, #0
	bne _080CB04E
	b _080CB40A
_080CB04E:
	ldr r0, [sp, #0x1f8]
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB076
	ldr r0, [sp, #0x1e0]
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB074
	b _080CB4C4
_080CB074:
	add r5, sp, #0x28
_080CB076:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	bgt _080CB080
	b _080CB40A
_080CB080:
	ldr r1, _080CB0D0 @ =gUnknown_08E2E7B0
	cmp r4, #0x10
	ble _080CB0B8
	mov r6, sb
_080CB088:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CB0B2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB0AE
	b _080CB4C4
_080CB0AE:
	add r5, sp, #0x28
	ldr r1, _080CB0D0 @ =gUnknown_08E2E7B0
_080CB0B2:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CB088
_080CB0B8:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	b _080CB3EE
	.align 2, 0
_080CB0C4: .4byte 0x00000000
_080CB0C8: .4byte 0x00000000
_080CB0CC: .4byte gUnknown_08E2E814
_080CB0D0: .4byte gUnknown_08E2E7B0
_080CB0D4:
	add r6, sp, #0x1d4
	ldr r2, [r6]
	cmp r2, #0
	bgt _080CB1BC
	ldr r0, _080CB1B4 @ =gUnknown_08E2E814
	str r0, [r5]
	movs r4, #1
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB106
	ldr r0, [sp, #0x1e0]
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB104
	b _080CB4C4
_080CB104:
	add r5, sp, #0x28
_080CB106:
	ldr r2, [sp, #0x1f8]
	str r2, [r5]
	str r4, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080CB130
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB12E
	b _080CB4C4
_080CB12E:
	add r5, sp, #0x28
_080CB130:
	ldr r0, [r6]
	rsbs r4, r0, #0
	cmp r4, #0
	ble _080CB196
	ldr r1, _080CB1B8 @ =gUnknown_08E2E7B0
	cmp r4, #0x10
	ble _080CB170
	mov r6, sb
_080CB140:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CB16A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB166
	b _080CB4C4
_080CB166:
	add r5, sp, #0x28
	ldr r1, _080CB1B8 @ =gUnknown_08E2E7B0
_080CB16A:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CB140
_080CB170:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB196
	ldr r0, [sp, #0x1e0]
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB194
	b _080CB4C4
_080CB194:
	add r5, sp, #0x28
_080CB196:
	mov r2, r8
	str r2, [r5]
	add r0, sp, #0x1d8
	ldr r1, [r0]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	b _080CB3F8
	.align 2, 0
_080CB1B4: .4byte gUnknown_08E2E814
_080CB1B8: .4byte gUnknown_08E2E7B0
_080CB1BC:
	add r4, sp, #0x1d8
	ldr r1, [r4]
	cmp r2, r1
	blt _080CB278
	mov r0, r8
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080CB1EE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB1EC
	b _080CB4C4
_080CB1EC:
	add r5, sp, #0x28
_080CB1EE:
	ldr r1, [r6]
	ldr r0, [r4]
	subs r4, r1, r0
	cmp r4, #0
	ble _080CB256
	ldr r1, _080CB270 @ =gUnknown_08E2E7B0
	cmp r4, #0x10
	ble _080CB230
	mov r6, sb
_080CB200:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CB22A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB226
	b _080CB4C4
_080CB226:
	add r5, sp, #0x28
	ldr r1, _080CB270 @ =gUnknown_08E2E7B0
_080CB22A:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CB200
_080CB230:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB256
	ldr r0, [sp, #0x1e0]
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB254
	b _080CB4C4
_080CB254:
	add r5, sp, #0x28
_080CB256:
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	bne _080CB262
	b _080CB40A
_080CB262:
	ldr r0, _080CB274 @ =gUnknown_08E2E818
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	b _080CB3EE
	.align 2, 0
_080CB270: .4byte gUnknown_08E2E7B0
_080CB274: .4byte gUnknown_08E2E818
_080CB278:
	mov r0, r8
	str r0, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB2A0
	ldr r0, [sp, #0x1e0]
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB29E
	b _080CB4C4
_080CB29E:
	add r5, sp, #0x28
_080CB2A0:
	ldr r0, [r6]
	add r8, r0
	ldr r0, _080CB2DC @ =gUnknown_08E2E818
	str r0, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080CB2D0
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB2CE
	b _080CB4C4
_080CB2CE:
	add r5, sp, #0x28
_080CB2D0:
	mov r0, r8
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [r6]
	subs r1, r1, r0
	b _080CB3E6
	.align 2, 0
_080CB2DC: .4byte gUnknown_08E2E818
_080CB2E0:
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r0, #1
	bgt _080CB2F2
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080CB3B8
_080CB2F2:
	add r1, sp, #0x1c4
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #1
	add r8, r0
	movs r0, #0x2e
	strb r0, [r1, #1]
	str r1, [r5]
	movs r0, #2
	str r0, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB32A
	ldr r0, [sp, #0x1e0]
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB328
	b _080CB4C4
_080CB328:
	add r5, sp, #0x28
_080CB32A:
	ldr r3, _080CB354 @ =0x00000000
	ldr r2, _080CB350 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl sub_80C9724
	cmp r0, #0
	beq _080CB358
	mov r2, r8
	str r2, [r5]
	ldr r1, [r4]
	subs r0, r1, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	subs r0, #1
	adds r0, r0, r1
	b _080CB3C4
	.align 2, 0
_080CB350: .4byte 0x00000000
_080CB354: .4byte 0x00000000
_080CB358:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	ble _080CB3E0
	ldr r1, _080CB3B4 @ =gUnknown_08E2E7B0
	cmp r4, #0x10
	ble _080CB398
	mov r6, sb
_080CB368:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CB392
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_80CA4E0
	cmp r0, #0
	beq _080CB38E
	b _080CB4C4
_080CB38E:
	add r5, sp, #0x28
	ldr r1, _080CB3B4 @ =gUnknown_08E2E7B0
_080CB392:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CB368
_080CB398:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080CB3E0
	ldr r0, [sp, #0x1e0]
	b _080CB3D6
	.align 2, 0
_080CB3B4: .4byte gUnknown_08E2E7B0
_080CB3B8:
	mov r2, r8
	str r2, [r5]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
_080CB3C4:
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080CB3E0
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_080CB3D6:
	bl sub_80CA4E0
	cmp r0, #0
	bne _080CB4C4
	add r5, sp, #0x28
_080CB3E0:
	add r0, sp, #0x14
	str r0, [r5]
	ldr r1, [sp, #0x204]
_080CB3E6:
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
_080CB3EE:
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_080CB3F8:
	cmp r0, #7
	ble _080CB40A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_080CB400:
	bl sub_80CA4E0
	cmp r0, #0
	bne _080CB4C4
	add r5, sp, #0x28
_080CB40A:
	movs r0, #4
	ldr r4, [sp, #0x1ec]
	ands r4, r0
	cmp r4, #0
	beq _080CB476
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080CB476
	ldr r1, _080CB4A8 @ =gUnknown_08E2E7A0
	cmp r4, #0x10
	ble _080CB454
	mov r6, sb
_080CB426:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080CB44E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_80CA4E0
	cmp r0, #0
	bne _080CB4C4
	add r5, sp, #0x28
	ldr r1, _080CB4A8 @ =gUnknown_08E2E7A0
_080CB44E:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080CB426
_080CB454:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080CB476
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_80CA4E0
	cmp r0, #0
	bne _080CB4C4
_080CB476:
	ldr r0, [sp, #0x20c]
	ldr r4, [sp, #0x1f4]
	cmp r0, r4
	bge _080CB480
	adds r0, r4, #0
_080CB480:
	ldr r1, [sp, #0x1f0]
	adds r1, r1, r0
	str r1, [sp, #0x1f0]
	mov r2, sb
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080CB49A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl sub_80CA4E0
	cmp r0, #0
	bne _080CB4C4
_080CB49A:
	movs r0, #0
	mov r4, sb
	str r0, [r4, #4]
	add r5, sp, #0x28
	bl _080CA640
	.align 2, 0
_080CB4A8: .4byte gUnknown_08E2E7A0
_080CB4AC:
	mov r1, sb
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _080CB4BE
	ldr r0, [sp, #0x1e0]
	bl sub_80CA4E0
	cmp r0, #0
	bne _080CB4C4
_080CB4BE:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #4]
_080CB4C4:
	movs r0, #0x40
	ldr r2, [sp, #0x1e0]
	ldrh r2, [r2, #0xc]
	ands r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	bne _080CB4D6
	ldr r1, [sp, #0x1f0]
_080CB4D6:
	adds r0, r1, #0
sub_80CB4D8:
	movs r3, #0x88
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_80CB4E8
sub_80CB4E8: @ 0x080CB4E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	adds r5, r2, #0
	adds r4, r1, #0
	mov r8, r3
	ldr r6, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	mov sl, r0
	ldr r1, [sp, #0x48]
	mov sb, r1
	cmp r1, #0x66
	bne _080CB50E
	movs r7, #3
	b _080CB51E
_080CB50E:
	mov r0, sb
	cmp r0, #0x65
	beq _080CB518
	cmp r0, #0x45
	bne _080CB51C
_080CB518:
	movs r1, #1
	add r8, r1
_080CB51C:
	movs r7, #2
_080CB51E:
	lsls r0, r4, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _080CB534
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80C9990
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0x2d
_080CB534:
	ldr r1, [sp, #0x40]
	strb r0, [r1]
	mov r0, r8
	str r0, [sp]
	mov r1, sl
	str r1, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r2, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_80CB854
	adds r7, r0, #0
	mov r1, sb
	cmp r1, #0x67
	beq _080CB560
	cmp r1, #0x47
	bne _080CB568
_080CB560:
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	beq _080CB5BC
_080CB568:
	mov r0, r8
	adds r6, r7, r0
	mov r1, sb
	cmp r1, #0x66
	bne _080CB598
	ldrb r0, [r7]
	cmp r0, #0x30
	bne _080CB592
	ldr r3, _080CB5D8 @ =0x00000000
	ldr r2, _080CB5D4 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80C9724
	cmp r0, #0
	beq _080CB592
	mov r1, r8
	rsbs r0, r1, #0
	adds r0, #1
	mov r1, sl
	str r0, [r1]
_080CB592:
	mov r1, sl
	ldr r0, [r1]
	adds r6, r6, r0
_080CB598:
	ldr r3, _080CB5D8 @ =0x00000000
	ldr r2, _080CB5D4 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80C96D8
	cmp r0, #0
	bne _080CB5AA
	str r6, [sp, #0x14]
_080CB5AA:
	ldr r0, [sp, #0x14]
	cmp r0, r6
	bhs _080CB5BC
	movs r1, #0x30
_080CB5B2:
	strb r1, [r0]
	adds r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blo _080CB5B2
_080CB5BC:
	ldr r0, [sp, #0x14]
	subs r0, r0, r7
	ldr r1, [sp, #0x4c]
	str r0, [r1]
	adds r0, r7, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CB5D4: .4byte 0x00000000
_080CB5D8: .4byte 0x00000000

	thumb_func_start sub_80CB5DC
sub_80CB5DC: @ 0x080CB5DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x134
	adds r7, r0, #0
	adds r6, r1, #0
	strb r2, [r7]
	adds r5, r7, #1
	cmp r6, #0
	bge _080CB5F2
	rsbs r6, r6, #0
	movs r0, #0x2d
	b _080CB5F4
_080CB5F2:
	movs r0, #0x2b
_080CB5F4:
	strb r0, [r7, #1]
	adds r5, #1
	add r4, sp, #0x134
	cmp r6, #9
	ble _080CB636
_080CB5FE:
	subs r4, #1
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_80C89F8
	adds r0, #0x30
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl sub_80C8960
	adds r6, r0, #0
	cmp r6, #9
	bgt _080CB5FE
	subs r4, #1
	adds r0, #0x30
	strb r0, [r4]
	add r0, sp, #0x134
	cmp r4, r0
	bhs _080CB644
	adds r1, r0, #0
_080CB628:
	ldrb r0, [r4]
	strb r0, [r5]
	adds r4, #1
	adds r5, #1
	cmp r4, r1
	blo _080CB628
	b _080CB644
_080CB636:
	movs r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r0, r6, #0
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
_080CB644:
	subs r0, r5, r7
	add sp, #0x134
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_80CB64C
sub_80CB64C: @ 0x080CB64C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080CB65C
	ldr r0, _080CB688 @ =gUnknown_08E7ED98
	ldr r0, [r0]
	str r0, [r4, #0x54]
_080CB65C:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080CB66A
	adds r0, r1, #0
	bl sub_80CC6DC
_080CB66A:
	ldrh r1, [r4, #0xc]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080CB6C4
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080CB68C
	movs r0, #1
	rsbs r0, r0, #0
	b _080CB6F6
	.align 2, 0
_080CB688: .4byte gUnknown_08E7ED98
_080CB68C:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080CB6BC
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _080CB6AA
	adds r0, r4, #0
	adds r0, #0x40
	cmp r1, r0
	beq _080CB6A8
	ldr r0, [r4, #0x54]
	bl sub_80CC73C
_080CB6A8:
	str r5, [r4, #0x30]
_080CB6AA:
	movs r0, #0x25
	rsbs r0, r0, #0
	ldrh r1, [r4, #0xc]
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0xc]
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r4]
_080CB6BC:
	movs r0, #8
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_080CB6C4:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _080CB6D0
	adds r0, r4, #0
	bl sub_80CCC94
_080CB6D0:
	ldrh r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CB6E6
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	b _080CB6F4
_080CB6E6:
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _080CB6F2
	ldr r1, [r4, #0x14]
_080CB6F2:
	str r1, [r4, #8]
_080CB6F4:
	movs r0, #0
_080CB6F6:
	pop {r4, r5, pc}

	thumb_func_start sub_80CB6F8
sub_80CB6F8: @ 0x080CB6F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldr r7, [r1, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, r7
	bge _080CB714
	movs r0, #0
	b _080CB848
_080CB714:
	ldr r0, [sp, #4]
	adds r0, #0x14
	mov r8, r0
	subs r7, #1
	lsls r0, r7, #2
	mov r1, r8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r4, [sp]
	adds r4, #0x14
	adds r5, r4, r0
	ldr r1, [r1]
	adds r1, #1
	ldr r2, [r5]
	mov sl, r2
	mov r0, sl
	bl sub_80C8B50
	str r0, [sp, #8]
	mov r3, r8
	str r3, [sp, #0x14]
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _080CB7BE
	movs r6, #0
	mov sb, r6
	ldr r0, _080CB7A8 @ =0x0000FFFF
	mov ip, r0
_080CB74C:
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r1, #0
	mov r3, ip
	ands r0, r3
	ldr r2, [sp, #8]
	muls r0, r2, r0
	mov r3, sb
	adds r2, r0, r3
	lsrs r0, r1, #0x10
	ldr r3, [sp, #8]
	adds r1, r0, #0
	muls r1, r3, r1
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r0, [r4]
	mov r1, ip
	ands r0, r1
	ands r2, r1
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x10
	mov r0, ip
	ands r3, r0
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _080CB74C
	mov r2, sl
	cmp r2, #0
	bne _080CB7BE
	ldr r4, [sp, #0x10]
	b _080CB7AE
	.align 2, 0
_080CB7A8: .4byte 0x0000FFFF
_080CB7AC:
	subs r7, #1
_080CB7AE:
	subs r5, #4
	cmp r5, r4
	bls _080CB7BA
	ldr r0, [r5]
	cmp r0, #0
	beq _080CB7AC
_080CB7BA:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_080CB7BE:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_80CD8E8
	cmp r0, #0
	blt _080CB846
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	movs r6, #0
	mov sb, r6
	ldr r4, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r8, r1
	lsls r2, r7, #2
	mov sl, r2
	ldr r5, _080CB830 @ =0x0000FFFF
_080CB7E0:
	mov r3, r8
	adds r3, #4
	mov r8, r3
	subs r3, #4
	ldm r3!, {r1}
	adds r0, r1, #0
	ands r0, r5
	mov r3, sb
	adds r2, r0, r3
	lsrs r1, r1, #0x10
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	ands r2, r5
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	lsrs r1, r1, #0x10
	ands r3, r5
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _080CB7E0
	ldr r4, [sp, #0x10]
	mov r2, sl
	adds r5, r4, r2
	ldr r0, [r5]
	cmp r0, #0
	bne _080CB846
	b _080CB836
	.align 2, 0
_080CB830: .4byte 0x0000FFFF
_080CB834:
	subs r7, #1
_080CB836:
	subs r5, #4
	cmp r5, r4
	bls _080CB842
	ldr r0, [r5]
	cmp r0, #0
	beq _080CB834
_080CB842:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_080CB846:
	ldr r0, [sp, #8]
_080CB848:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_80CB854
sub_80CB854: @ 0x080CB854
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	mov sl, r0
	str r3, [sp, #0xc]
	ldr r4, [sp, #0xac]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	ldr r2, [r0, #0x40]
	cmp r2, #0
	beq _080CB88C
	ldr r0, [r0, #0x44]
	str r0, [r2, #4]
	mov r0, sl
	ldr r1, [r0, #0x44]
	movs r0, #1
	lsls r0, r1
	str r0, [r2, #8]
	mov r0, sl
	adds r1, r2, #0
	bl sub_80CD420
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x40]
_080CB88C:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080CB8A8
	movs r0, #1
	str r0, [r4]
	ldr r0, _080CB8A4 @ =0x7FFFFFFF
	ands r1, r0
	str r1, [sp, #0x40]
	b _080CB8AA
	.align 2, 0
_080CB8A4: .4byte 0x7FFFFFFF
_080CB8A8:
	str r0, [r4]
_080CB8AA:
	ldr r1, _080CB8EC @ =0x7FF00000
	ldr r2, [sp, #0x40]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _080CB900
	ldr r0, _080CB8F0 @ =0x0000270F
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _080CB8F4 @ =gUnknown_08E2E828
	mov sb, r0
	ldr r1, [sp, #0x44]
	cmp r1, #0
	bne _080CB8D2
	ldr r0, _080CB8F8 @ =0x000FFFFF
	ands r2, r0
	cmp r2, #0
	bne _080CB8D2
	ldr r2, _080CB8FC @ =gUnknown_08E2E81C
	mov sb, r2
_080CB8D2:
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _080CB924
	mov r1, sb
	ldrb r0, [r1, #3]
	adds r1, #3
	cmp r0, #0
	beq _080CB8E4
	adds r1, #5
_080CB8E4:
	ldr r2, [sp, #0xb0]
	str r1, [r2]
	b _080CB924
	.align 2, 0
_080CB8EC: .4byte 0x7FF00000
_080CB8F0: .4byte 0x0000270F
_080CB8F4: .4byte gUnknown_08E2E828
_080CB8F8: .4byte 0x000FFFFF
_080CB8FC: .4byte gUnknown_08E2E81C
_080CB900:
	ldr r3, _080CB930 @ =0x00000000
	ldr r2, _080CB92C @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_80C96D8
	cmp r0, #0
	bne _080CB938
	movs r0, #1
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _080CB934 @ =gUnknown_08E2E82C
	mov sb, r0
	ldr r1, [sp, #0xb0]
	cmp r1, #0
	beq _080CB924
	adds r0, #1
	str r0, [r1]
_080CB924:
	mov r0, sb
	bl sub_80CC53E
	.align 2, 0
_080CB92C: .4byte 0x00000000
_080CB930: .4byte 0x00000000
_080CB934: .4byte gUnknown_08E2E82C
_080CB938:
	add r0, sp, #8
	str r0, [sp]
	mov r0, sl
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	add r3, sp, #4
	bl sub_80CDB20
	str r0, [sp, #0x5c]
	ldr r2, [sp, #0x40]
	lsls r0, r2, #1
	lsrs r0, r0, #0x15
	mov r8, r0
	cmp r0, #0
	beq _080CB988
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r0, _080CB97C @ =0x000FFFFF
	ldr r1, [sp, #0x48]
	ands r1, r0
	str r1, [sp, #0x48]
	ldr r0, _080CB980 @ =0x3FF00000
	adds r2, r1, #0
	orrs r2, r0
	str r2, [sp, #0x48]
	ldr r3, _080CB984 @ =0xFFFFFC01
	add r8, r3
	movs r0, #0
	str r0, [sp, #0x58]
	ldr r6, [sp, #8]
	b _080CB9E8
	.align 2, 0
_080CB97C: .4byte 0x000FFFFF
_080CB980: .4byte 0x3FF00000
_080CB984: .4byte 0xFFFFFC01
_080CB988:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r2, r1, r0
	ldr r3, _080CB9B0 @ =0x00000432
	adds r3, r3, r2
	mov r8, r3
	adds r6, r1, #0
	cmp r3, #0x20
	ble _080CB9B8
	movs r0, #0x40
	subs r0, r0, r3
	ldr r4, [sp, #0x40]
	lsls r4, r0
	ldr r1, _080CB9B4 @ =0x00000412
	adds r0, r2, r1
	ldr r2, [sp, #0x44]
	lsrs r2, r0
	adds r0, r2, #0
	orrs r4, r0
	b _080CB9C2
	.align 2, 0
_080CB9B0: .4byte 0x00000432
_080CB9B4: .4byte 0x00000412
_080CB9B8:
	movs r0, #0x20
	mov r3, r8
	subs r0, r0, r3
	ldr r4, [sp, #0x44]
	lsls r4, r0
_080CB9C2:
	adds r0, r4, #0
	bl sub_80C98A0
	cmp r4, #0
	bge _080CB9D4
	ldr r3, _080CBA98 @ =0x00000000
	ldr r2, _080CBA94 @ =0x41F00000
	bl sub_80C9114
_080CB9D4:
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, _080CBA9C @ =0xFE100000
	ldr r0, [sp, #0x48]
	adds r1, r0, r1
	str r1, [sp, #0x48]
	ldr r2, _080CBAA0 @ =0xFFFFFBCD
	add r8, r2
	movs r3, #1
	str r3, [sp, #0x58]
_080CB9E8:
	ldr r2, _080CBAA4 @ =0x3FF80000
	ldr r3, _080CBAA8 @ =0x00000000
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl sub_80C9144
	ldr r2, _080CBAAC @ =0x3FD287A7
	ldr r3, _080CBAB0 @ =0x636F4361
	bl sub_80C917C
	ldr r2, _080CBAB4 @ =0x3FC68A28
	ldr r3, _080CBAB8 @ =0x8B60C8B3
	bl sub_80C9114
	adds r5, r1, #0
	adds r4, r0, #0
	mov r0, r8
	bl sub_80C98A0
	ldr r2, _080CBABC @ =0x3FD34413
	ldr r3, _080CBAC0 @ =0x509F79FB
	bl sub_80C917C
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80C9114
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	bl sub_80C991C
	str r0, [sp, #0x24]
	ldr r2, _080CBAC4 @ =0x00000000
	ldr r3, _080CBAC8 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_80C9808
	cmp r0, #0
	bge _080CBA58
	ldr r0, [sp, #0x24]
	bl sub_80C98A0
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_80C9724
	cmp r0, #0
	beq _080CBA58
	ldr r0, [sp, #0x24]
	subs r0, #1
	str r0, [sp, #0x24]
_080CBA58:
	movs r1, #1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	cmp r2, #0x16
	bhi _080CBA82
	ldr r1, _080CBACC @ =gUnknown_08E2E878
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_80C9808
	cmp r0, #0
	bge _080CBA7E
	ldr r3, [sp, #0x24]
	subs r3, #1
	str r3, [sp, #0x24]
_080CBA7E:
	movs r0, #0
	str r0, [sp, #0x2c]
_080CBA82:
	mov r1, r8
	subs r0, r6, r1
	subs r4, r0, #1
	cmp r4, #0
	blt _080CBAD0
	movs r2, #0
	str r2, [sp, #0x10]
	str r4, [sp, #0x34]
	b _080CBAD8
	.align 2, 0
_080CBA94: .4byte 0x41F00000
_080CBA98: .4byte 0x00000000
_080CBA9C: .4byte 0xFE100000
_080CBAA0: .4byte 0xFFFFFBCD
_080CBAA4: .4byte 0x3FF80000
_080CBAA8: .4byte 0x00000000
_080CBAAC: .4byte 0x3FD287A7
_080CBAB0: .4byte 0x636F4361
_080CBAB4: .4byte 0x3FC68A28
_080CBAB8: .4byte 0x8B60C8B3
_080CBABC: .4byte 0x3FD34413
_080CBAC0: .4byte 0x509F79FB
_080CBAC4: .4byte 0x00000000
_080CBAC8: .4byte 0x00000000
_080CBACC: .4byte gUnknown_08E2E878
_080CBAD0:
	rsbs r4, r4, #0
	str r4, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0x34]
_080CBAD8:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	blt _080CBAEC
	movs r1, #0
	str r1, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r2, [sp, #0x34]
	adds r2, r2, r0
	str r2, [sp, #0x34]
	b _080CBAFC
_080CBAEC:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x24]
	subs r3, r3, r0
	str r3, [sp, #0x10]
	rsbs r1, r0, #0
	str r1, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x38]
_080CBAFC:
	ldr r3, [sp, #0xc]
	cmp r3, #9
	bls _080CBB06
	movs r0, #0
	str r0, [sp, #0xc]
_080CBB06:
	movs r5, #1
	ldr r1, [sp, #0xc]
	cmp r1, #5
	ble _080CBB14
	subs r1, #4
	str r1, [sp, #0xc]
	movs r5, #0
_080CBB14:
	movs r2, #1
	str r2, [sp, #0x30]
	ldr r3, [sp, #0xc]
	cmp r3, #5
	bhi _080CBB8E
	lsls r0, r3, #2
	ldr r1, _080CBB28 @ =_080CBB2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080CBB28: .4byte _080CBB2C
_080CBB2C: @ jump table
	.4byte _080CBB44 @ case 0
	.4byte _080CBB44 @ case 1
	.4byte _080CBB56 @ case 2
	.4byte _080CBB72 @ case 3
	.4byte _080CBB5A @ case 4
	.4byte _080CBB76 @ case 5
_080CBB44:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	movs r1, #0x12
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xa4]
	b _080CBB8E
_080CBB56:
	movs r3, #0
	str r3, [sp, #0x30]
_080CBB5A:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bgt _080CBB64
	movs r1, #1
	str r1, [sp, #0xa4]
_080CBB64:
	ldr r2, [sp, #0xa4]
	mov r8, r2
	mov r3, r8
	str r3, [sp, #0x20]
	mov r0, r8
	str r0, [sp, #0x18]
	b _080CBB8E
_080CBB72:
	movs r1, #0
	str r1, [sp, #0x30]
_080CBB76:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x24]
	adds r0, r2, r3
	adds r1, r0, #1
	mov r8, r1
	mov r2, r8
	str r2, [sp, #0x18]
	str r0, [sp, #0x20]
	cmp r1, #0
	bgt _080CBB8E
	movs r3, #1
	mov r8, r3
_080CBB8E:
	movs r4, #4
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x44]
	mov r2, r8
	cmp r2, #0x17
	bls _080CBBAE
	movs r1, #0
_080CBB9E:
	adds r1, #1
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r0, #0x14
	cmp r0, r8
	bls _080CBB9E
	mov r3, sl
	str r1, [r3, #0x44]
_080CBBAE:
	mov r0, sl
	ldr r1, [r0, #0x44]
	bl sub_80CD3C8
	mov r1, sl
	str r0, [r1, #0x40]
	str r0, [sp, #0x74]
	mov sb, r0
	ldr r2, [sp, #0x18]
	cmp r2, #0xe
	bls _080CBBC6
	b _080CBF38
_080CBBC6:
	cmp r5, #0
	bne _080CBBCC
	b _080CBF38
_080CBBCC:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r2, [sp, #0x1c]
	movs r7, #2
	cmp r1, #0
	ble _080CBC5C
	ldr r0, _080CBC54 @ =gUnknown_08E2E878
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #3
	adds r3, r1, r0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	ldr r1, [sp, #0x24]
	asrs r4, r1, #4
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _080CBC18
	ands r4, r2
	ldr r0, _080CBC58 @ =gUnknown_08E2E940
	ldr r2, [r0, #0x20]
	ldr r3, [r0, #0x24]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl sub_80C9424
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	movs r7, #3
_080CBC18:
	cmp r4, #0
	beq _080CBC40
	ldr r5, _080CBC58 @ =gUnknown_08E2E940
_080CBC1E:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080CBC38
	adds r7, #1
	ldr r2, [r5]
	ldr r3, [r5, #4]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_80C917C
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
_080CBC38:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _080CBC1E
_080CBC40:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_80C9424
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	b _080CBCA8
	.align 2, 0
_080CBC54: .4byte gUnknown_08E2E878
_080CBC58: .4byte gUnknown_08E2E940
_080CBC5C:
	ldr r2, [sp, #0x24]
	rsbs r6, r2, #0
	cmp r6, #0
	beq _080CBCA8
	ldr r1, _080CBD50 @ =gUnknown_08E2E878
	movs r0, #0xf
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl sub_80C917C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	asrs r4, r6, #4
	cmp r4, #0
	beq _080CBCA8
	ldr r5, _080CBD54 @ =gUnknown_08E2E940
_080CBC86:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080CBCA0
	adds r7, #1
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_80C917C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080CBCA0:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _080CBC86
_080CBCA8:
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _080CBCE6
	ldr r2, _080CBD58 @ =0x3FF00000
	ldr r3, _080CBD5C @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_80C9808
	cmp r0, #0
	bge _080CBCE6
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _080CBCE6
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bgt _080CBCCC
	b _080CBF24
_080CBCCC:
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	ldr r0, _080CBD60 @ =0x40240000
	ldr r1, _080CBD64 @ =0x00000000
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_80C917C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	adds r7, #1
_080CBCE6:
	adds r0, r7, #0
	bl sub_80C98A0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl sub_80C917C
	ldr r2, _080CBD68 @ =0x401C0000
	ldr r3, _080CBD6C @ =0x00000000
	bl sub_80C9114
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r0, _080CBD70 @ =0xFCC00000
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _080CBD7C
	movs r2, #0
	str r2, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x68]
	ldr r2, _080CBD74 @ =0x40140000
	ldr r3, _080CBD78 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_80C9144
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_80C9770
	cmp r0, #0
	ble _080CBD34
	b _080CC2AE
_080CBD34:
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_80C9990
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80C9808
	cmp r0, #0
	bge _080CBD4E
	b _080CC2A6
_080CBD4E:
	b _080CBF24
	.align 2, 0
_080CBD50: .4byte gUnknown_08E2E878
_080CBD54: .4byte gUnknown_08E2E940
_080CBD58: .4byte 0x3FF00000
_080CBD5C: .4byte 0x00000000
_080CBD60: .4byte 0x40240000
_080CBD64: .4byte 0x00000000
_080CBD68: .4byte 0x401C0000
_080CBD6C: .4byte 0x00000000
_080CBD70: .4byte 0xFCC00000
_080CBD74: .4byte 0x40140000
_080CBD78: .4byte 0x00000000
_080CBD7C:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _080CBE4C
	ldr r1, _080CBDAC @ =gUnknown_08E2E878
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, _080CBDB0 @ =0x3FE00000
	ldr r1, _080CBDB4 @ =0x00000000
	bl sub_80C9424
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_80C9144
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r1, #0
	mov r8, r1
	b _080CBDD8
	.align 2, 0
_080CBDAC: .4byte gUnknown_08E2E878
_080CBDB0: .4byte 0x3FE00000
_080CBDB4: .4byte 0x00000000
_080CBDB8:
	ldr r1, _080CBE40 @ =0x00000000
	ldr r0, _080CBE3C @ =0x40240000
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_80C917C
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r1, _080CBE40 @ =0x00000000
	ldr r0, _080CBE3C @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_80C917C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080CBDD8:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_80C991C
	adds r6, r0, #0
	bl sub_80C98A0
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_80C9144
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r2, sb
	strb r0, [r2]
	movs r3, #1
	add sb, r3
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_80C9808
	cmp r0, #0
	bge _080CBE14
	b _080CC51E
_080CBE14:
	ldr r0, _080CBE44 @ =0x3FF00000
	ldr r1, _080CBE48 @ =0x00000000
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_80C9144
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_80C9808
	cmp r0, #0
	bge _080CBE2E
	b _080CC038
_080CBE2E:
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	blt _080CBDB8
	b _080CBF24
	.align 2, 0
_080CBE3C: .4byte 0x40240000
_080CBE40: .4byte 0x00000000
_080CBE44: .4byte 0x3FF00000
_080CBE48: .4byte 0x00000000
_080CBE4C:
	ldr r1, _080CBE6C @ =gUnknown_08E2E878
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_80C917C
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r2, #1
	mov r8, r2
	b _080CBE84
	.align 2, 0
_080CBE6C: .4byte gUnknown_08E2E878
_080CBE70:
	movs r3, #1
	add r8, r3
	ldr r1, _080CBF18 @ =0x00000000
	ldr r0, _080CBF14 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl sub_80C917C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080CBE84:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_80C991C
	adds r6, r0, #0
	bl sub_80C98A0
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_80C9144
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	bne _080CBE70
	ldr r6, _080CBF1C @ =0x3FE00000
	ldr r7, _080CBF20 @ =0x00000000
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_80C9114
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80C9770
	cmp r0, #0
	ble _080CBED6
	b _080CC038
_080CBED6:
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl sub_80C9144
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_80C9808
	cmp r0, #0
	bge _080CBF24
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _080CBF02
	b _080CC05E
_080CBF02:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	beq _080CBF02
	b _080CC05E
	.align 2, 0
_080CBF14: .4byte 0x40240000
_080CBF18: .4byte 0x00000000
_080CBF1C: .4byte 0x3FE00000
_080CBF20: .4byte 0x00000000
_080CBF24:
	ldr r1, [sp, #0x74]
	mov sb, r1
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x28]
	str r3, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
_080CBF38:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _080CBF40
	b _080CC074
_080CBF40:
	ldr r1, [sp, #0x24]
	cmp r1, #0xe
	ble _080CBF48
	b _080CC074
_080CBF48:
	ldr r1, _080CBF94 @ =gUnknown_08E2E878
	ldr r2, [sp, #0x24]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bge _080CBFA0
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bgt _080CBFA0
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x68]
	cmp r3, #0
	bge _080CBF72
	b _080CC2A6
_080CBF72:
	ldr r2, _080CBF98 @ =0x40140000
	ldr r3, _080CBF9C @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl sub_80C917C
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_80C9854
	cmp r0, #0
	bgt _080CBF90
	b _080CC2A6
_080CBF90:
	b _080CC2AE
	.align 2, 0
_080CBF94: .4byte gUnknown_08E2E878
_080CBF98: .4byte 0x40140000
_080CBF9C: .4byte 0x00000000
_080CBFA0:
	movs r2, #1
	mov r8, r2
	b _080CBFC4
_080CBFA6:
	ldr r1, _080CC068 @ =0x00000000
	ldr r0, _080CC064 @ =0x40240000
	bl sub_80C917C
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r2, _080CC06C @ =0x00000000
	ldr r3, _080CC070 @ =0x00000000
	bl sub_80C96D8
	cmp r0, #0
	bne _080CBFC0
	b _080CC51E
_080CBFC0:
	movs r3, #1
	add r8, r3
_080CBFC4:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_80C9424
	bl sub_80C991C
	adds r6, r0, #0
	bl sub_80C98A0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_80C917C
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl sub_80C9144
	adds r3, r1, #0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r0, #1
	add sb, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	bne _080CBFA6
	adds r1, r3, #0
	adds r0, r2, #0
	bl sub_80C9114
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_80C9770
	cmp r0, #0
	bgt _080CC038
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_80C96D8
	cmp r0, #0
	beq _080CC02E
	b _080CC51E
_080CC02E:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _080CC038
	b _080CC51E
_080CC038:
	movs r0, #0x30
_080CC03A:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x39
	bne _080CC056
	ldr r1, [sp, #0x74]
	cmp sb, r1
	bne _080CC03A
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x24]
	strb r0, [r1]
_080CC056:
	mov r3, sb
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080CC05E:
	movs r0, #1
	add sb, r0
	b _080CC51E
	.align 2, 0
_080CC064: .4byte 0x40240000
_080CC068: .4byte 0x00000000
_080CC06C: .4byte 0x00000000
_080CC070: .4byte 0x00000000
_080CC074:
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x60]
	movs r2, #0
	str r2, [sp, #0x64]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _080CC0EA
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bgt _080CC0A8
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq _080CC0A0
	ldr r3, _080CC09C @ =0x00000433
	adds r3, r3, r0
	mov r8, r3
	b _080CC0D4
	.align 2, 0
_080CC09C: .4byte 0x00000433
_080CC0A0:
	ldr r1, [sp, #8]
	movs r0, #0x36
	subs r0, r0, r1
	b _080CC0D2
_080CC0A8:
	ldr r4, [sp, #0x18]
	subs r4, #1
	ldr r0, [sp, #0x14]
	cmp r0, r4
	blt _080CC0B6
	subs r6, r0, r4
	b _080CC0C6
_080CC0B6:
	ldr r1, [sp, #0x14]
	subs r4, r4, r1
	ldr r2, [sp, #0x38]
	adds r2, r2, r4
	str r2, [sp, #0x38]
	adds r1, r1, r4
	str r1, [sp, #0x14]
	movs r6, #0
_080CC0C6:
	ldr r3, [sp, #0x18]
	mov r8, r3
	cmp r3, #0
	bge _080CC0D4
	subs r5, r5, r3
	movs r0, #0
_080CC0D2:
	mov r8, r0
_080CC0D4:
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
	mov r0, sl
	movs r1, #1
	bl sub_80CD630
	str r0, [sp, #0x64]
_080CC0EA:
	cmp r5, #0
	ble _080CC10C
	ldr r3, [sp, #0x34]
	cmp r3, #0
	ble _080CC10C
	mov r8, r3
	cmp r8, r5
	ble _080CC0FC
	mov r8, r5
_080CC0FC:
	ldr r0, [sp, #0x10]
	mov r1, r8
	subs r0, r0, r1
	str r0, [sp, #0x10]
	subs r5, r5, r1
	ldr r2, [sp, #0x34]
	subs r2, r2, r1
	str r2, [sp, #0x34]
_080CC10C:
	ldr r3, [sp, #0x14]
	cmp r3, #0
	ble _080CC15A
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _080CC14E
	cmp r6, #0
	ble _080CC13E
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r6, #0
	bl sub_80CD7B0
	str r0, [sp, #0x64]
	mov r0, sl
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x5c]
	bl sub_80CD644
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl sub_80CD420
	str r4, [sp, #0x5c]
_080CC13E:
	ldr r1, [sp, #0x14]
	subs r4, r1, r6
	cmp r4, #0
	beq _080CC15A
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r4, #0
	b _080CC154
_080CC14E:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x14]
_080CC154:
	bl sub_80CD7B0
	str r0, [sp, #0x5c]
_080CC15A:
	mov r0, sl
	movs r1, #1
	bl sub_80CD630
	str r0, [sp, #0x68]
	ldr r2, [sp, #0x38]
	cmp r2, #0
	ble _080CC174
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl sub_80CD7B0
	str r0, [sp, #0x68]
_080CC174:
	ldr r3, [sp, #0xc]
	cmp r3, #1
	bgt _080CC1B0
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _080CC1AC
	ldr r0, _080CC1A4 @ =0x000FFFFF
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _080CC1AC
	ldr r0, _080CC1A8 @ =0x7FF00000
	ands r1, r0
	cmp r1, #0
	beq _080CC1AC
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	adds r2, #1
	str r2, [sp, #0x34]
	movs r3, #1
	str r3, [sp, #0x3c]
	b _080CC1B0
	.align 2, 0
_080CC1A4: .4byte 0x000FFFFF
_080CC1A8: .4byte 0x7FF00000
_080CC1AC:
	movs r0, #0
	str r0, [sp, #0x3c]
_080CC1B0:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _080CC1DC
	ldr r2, [sp, #0x68]
	ldr r1, [r2, #0x10]
	subs r1, #1
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80CD554
	ldr r1, [sp, #0x34]
	adds r1, #0x20
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x1f
	mov r3, r8
	ands r3, r0
	mov r8, r3
	b _080CC1EA
_080CC1DC:
	ldr r0, [sp, #0x34]
	adds r0, #1
	mov r8, r0
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
_080CC1EA:
	mov r2, r8
	cmp r2, #0
	beq _080CC1F6
	movs r0, #0x20
	subs r2, r0, r2
	mov r8, r2
_080CC1F6:
	mov r3, r8
	cmp r3, #4
	ble _080CC202
	movs r0, #4
	rsbs r0, r0, #0
	b _080CC20A
_080CC202:
	mov r3, r8
	cmp r3, #3
	bgt _080CC21A
	movs r0, #0x1c
_080CC20A:
	add r8, r0
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	add r5, r8
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
_080CC21A:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	ble _080CC22C
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r3, #0
	bl sub_80CD848
	str r0, [sp, #0x5c]
_080CC22C:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _080CC23E
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x34]
	bl sub_80CD848
	str r0, [sp, #0x68]
_080CC23E:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _080CC27C
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_80CD8E8
	cmp r0, #0
	bge _080CC27C
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl sub_80CD438
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _080CC278
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl sub_80CD438
	str r0, [sp, #0x64]
_080CC278:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x18]
_080CC27C:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bgt _080CC2C0
	ldr r2, [sp, #0xc]
	cmp r2, #2
	ble _080CC2C0
	cmp r1, #0
	blt _080CC2A6
	mov r0, sl
	ldr r1, [sp, #0x68]
	movs r2, #5
	movs r3, #0
	bl sub_80CD438
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_80CD8E8
	cmp r0, #0
	bgt _080CC2AE
_080CC2A6:
	ldr r3, [sp, #0xa4]
	mvns r3, r3
	str r3, [sp, #0x24]
	b _080CC4F6
_080CC2AE:
	movs r0, #0x31
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x24]
	adds r3, #1
	str r3, [sp, #0x24]
	b _080CC4F6
_080CC2C0:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _080CC2C8
	b _080CC43E
_080CC2C8:
	cmp r5, #0
	ble _080CC2D8
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r5, #0
	bl sub_80CD848
	str r0, [sp, #0x64]
_080CC2D8:
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x60]
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _080CC30A
	ldr r1, [r1, #4]
	mov r0, sl
	bl sub_80CD3C8
	str r0, [sp, #0x64]
	adds r0, #0xc
	ldr r1, [sp, #0x60]
	adds r1, #0xc
	ldr r3, [sp, #0x60]
	ldr r2, [r3, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl sub_80CA3B0
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #1
	bl sub_80CD848
	str r0, [sp, #0x64]
_080CC30A:
	movs r0, #1
	mov r8, r0
	mov r1, r8
	ldr r2, [sp, #0x44]
	ands r2, r1
	str r2, [sp, #0x80]
	b _080CC360
_080CC318:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl sub_80CD438
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r3, r0
	bne _080CC340
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl sub_80CD438
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	b _080CC35C
_080CC340:
	mov r0, sl
	ldr r1, [sp, #0x60]
	movs r2, #0xa
	movs r3, #0
	bl sub_80CD438
	str r0, [sp, #0x60]
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl sub_80CD438
	str r0, [sp, #0x64]
_080CC35C:
	movs r1, #1
	add r8, r1
_080CC360:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_80CB6F8
	adds r7, r0, #0
	adds r7, #0x30
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	bl sub_80CD8E8
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x64]
	bl sub_80CD928
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080CC394
	ldr r0, [sp, #0x5c]
	adds r1, r5, #0
	bl sub_80CD8E8
	adds r6, r0, #0
	b _080CC396
_080CC394:
	movs r6, #1
_080CC396:
	mov r0, sl
	adds r1, r5, #0
	bl sub_80CD420
	cmp r6, #0
	bne _080CC3C2
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080CC3C2
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _080CC3C2
	cmp r7, #0x39
	beq _080CC414
	cmp r4, #0
	ble _080CC3B8
	adds r7, #1
_080CC3B8:
	mov r0, sb
	strb r7, [r0]
	movs r1, #1
	add sb, r1
	b _080CC4F6
_080CC3C2:
	cmp r4, #0
	blt _080CC3D6
	cmp r4, #0
	bne _080CC40C
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080CC40C
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _080CC40C
_080CC3D6:
	cmp r6, #0
	ble _080CC406
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl sub_80CD848
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_80CD8E8
	adds r6, r0, #0
	cmp r6, #0
	bgt _080CC400
	cmp r6, #0
	bne _080CC406
	adds r0, r7, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080CC406
_080CC400:
	adds r7, #1
	cmp r7, #0x3a
	beq _080CC414
_080CC406:
	mov r2, sb
	strb r7, [r2]
	b _080CC4BE
_080CC40C:
	cmp r6, #0
	ble _080CC42C
	cmp r7, #0x39
	bne _080CC420
_080CC414:
	movs r0, #0x39
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	b _080CC494
_080CC420:
	adds r0, r7, #1
	mov r3, sb
	strb r0, [r3]
	movs r0, #1
	add sb, r0
	b _080CC4F6
_080CC42C:
	mov r1, sb
	strb r7, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	beq _080CC43C
	b _080CC318
_080CC43C:
	b _080CC470
_080CC43E:
	movs r0, #1
	mov r8, r0
	b _080CC456
_080CC444:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl sub_80CD438
	str r0, [sp, #0x5c]
	movs r1, #1
	add r8, r1
_080CC456:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_80CB6F8
	adds r7, r0, #0
	adds r7, #0x30
	mov r2, sb
	strb r7, [r2]
	movs r3, #1
	add sb, r3
	ldr r0, [sp, #0x18]
	cmp r8, r0
	blt _080CC444
_080CC470:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl sub_80CD848
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl sub_80CD8E8
	adds r4, r0, #0
	cmp r4, #0
	bgt _080CC494
	cmp r4, #0
	bne _080CC4D6
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _080CC4D6
_080CC494:
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	ldrb r2, [r2]
	cmp r2, #0x39
	bne _080CC4B6
_080CC4A2:
	ldr r3, [sp, #0x74]
	cmp sb, r3
	beq _080CC4C4
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x39
	beq _080CC4A2
_080CC4B6:
	mov r2, sb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080CC4BE:
	movs r3, #1
	add sb, r3
	b _080CC4F6
_080CC4C4:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	movs r0, #0x31
	ldr r1, [sp, #0x74]
	strb r0, [r1]
	adds r1, #1
	mov sb, r1
	b _080CC4F6
_080CC4D6:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	bne _080CC4F2
_080CC4E4:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _080CC4E4
_080CC4F2:
	movs r2, #1
	add sb, r2
_080CC4F6:
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl sub_80CD420
	ldr r3, [sp, #0x64]
	cmp r3, #0
	beq _080CC51E
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _080CC516
	cmp r0, r3
	beq _080CC516
	mov r0, sl
	ldr r1, [sp, #0x60]
	bl sub_80CD420
_080CC516:
	mov r0, sl
	ldr r1, [sp, #0x64]
	bl sub_80CD420
_080CC51E:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl sub_80CD420
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, [sp, #0x24]
	adds r0, #1
	ldr r2, [sp, #0xa8]
	str r0, [r2]
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _080CC53C
	str r1, [r3]
_080CC53C:
	ldr r0, [sp, #0x74]
sub_80CC53E:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_80CC54C
sub_80CC54C: @ 0x080CC54C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _080CC568
	ldr r0, _080CC560 @ =gUnknown_08E7ED98
	ldr r0, [r0]
	ldr r1, _080CC564 @ =sub_80CC54C
	bl sub_80CCBE8
	b _080CC5DE
	.align 2, 0
_080CC560: .4byte gUnknown_08E7ED98
_080CC564: .4byte sub_80CC54C
_080CC568:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080CC574
	ldr r0, _080CC5A8 @ =gUnknown_08E7ED98
	ldr r0, [r0]
	str r0, [r4, #0x54]
_080CC574:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080CC582
	adds r0, r1, #0
	bl sub_80CC6DC
_080CC582:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080CC5DC
	ldr r6, [r4, #0x10]
	cmp r6, #0
	beq _080CC5DC
	ldr r0, [r4]
	subs r5, r0, r6
	str r6, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080CC5BA
	ldr r0, [r4, #0x14]
	b _080CC5BC
	.align 2, 0
_080CC5A8: .4byte gUnknown_08E7ED98
_080CC5AC:
	movs r0, #0x40
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	b _080CC5DE
_080CC5BA:
	movs r0, #0
_080CC5BC:
	str r0, [r4, #8]
	cmp r5, #0
	ble _080CC5DC
_080CC5C2:
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0x24]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	adds r1, r0, #0
	cmp r1, #0
	ble _080CC5AC
	adds r6, r6, r1
	subs r5, r5, r1
	cmp r5, #0
	bgt _080CC5C2
_080CC5DC:
	movs r0, #0
_080CC5DE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_80CC5E0
sub_80CC5E0: @ 0x080CC5E0
	push {r4, lr}
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r4, [r0, #0x10]
	str r4, [r0, #0x18]
	str r0, [r0, #0x1c]
	ldr r1, _080CC608 @ =sub_80CDD08
	str r1, [r0, #0x20]
	ldr r1, _080CC60C @ =sub_80CDD3C
	str r1, [r0, #0x24]
	ldr r1, _080CC610 @ =sub_80CDD7C
	str r1, [r0, #0x28]
	ldr r1, _080CC614 @ =sub_80CDDBC
	str r1, [r0, #0x2c]
	str r3, [r0, #0x54]
	pop {r4, pc}
	.align 2, 0
_080CC608: .4byte sub_80CDD08
_080CC60C: .4byte sub_80CDD3C
_080CC610: .4byte sub_80CDD7C
_080CC614: .4byte sub_80CDDBC

	thumb_func_start sub_80CC618
sub_80CC618: @ 0x080CC618
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x58
	adds r6, r5, #0
	muls r6, r1, r6
	adds r1, r6, #0
	adds r1, #0xc
	bl sub_80CCECC
	adds r4, r0, #0
	cmp r4, #0
	beq _080CC644
	adds r0, #0xc
	movs r1, #0
	str r1, [r4]
	str r5, [r4, #4]
	str r0, [r4, #8]
	adds r2, r6, #0
	bl sub_80CA410
	adds r0, r4, #0
	b _080CC646
_080CC644:
	movs r0, #0
_080CC646:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_80CC648
sub_80CC648: @ 0x080CC648
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _080CC658
	adds r0, r5, #0
	bl sub_80CC6DC
_080CC658:
	movs r0, #0xec
	lsls r0, r0, #1
	adds r4, r5, r0
	b _080CC662
_080CC660:
	ldr r4, [r4]
_080CC662:
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	b _080CC672
_080CC668:
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	cmp r1, #0
	beq _080CC694
	adds r2, #0x58
_080CC672:
	subs r0, #1
	cmp r0, #0
	bge _080CC668
	ldr r0, [r4]
	cmp r0, #0
	bne _080CC660
	adds r0, r5, #0
	movs r1, #4
	bl sub_80CC618
	str r0, [r4]
	cmp r0, #0
	bne _080CC660
	movs r0, #0xc
	str r0, [r5]
	movs r0, #0
	b _080CC6B4
_080CC694:
	movs r0, #1
	strh r0, [r2, #0xc]
	str r1, [r2]
	str r1, [r2, #8]
	str r1, [r2, #4]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r1, [r2, #0x18]
	ldr r0, _080CC6B8 @ =0x0000FFFF
	strh r0, [r2, #0xe]
	str r1, [r2, #0x30]
	str r1, [r2, #0x34]
	str r1, [r2, #0x44]
	str r1, [r2, #0x48]
	str r5, [r2, #0x54]
	adds r0, r2, #0
_080CC6B4:
	pop {r4, r5, pc}
	.align 2, 0
_080CC6B8: .4byte 0x0000FFFF

	thumb_func_start sub_80CC6BC
sub_80CC6BC: @ 0x080CC6BC
	push {lr}
	ldr r1, _080CC6C8 @ =sub_80CC54C
	bl sub_80CCBE8
	pop {pc}
	.align 2, 0
_080CC6C8: .4byte sub_80CC54C

	thumb_func_start sub_80CC6CC
sub_80CC6CC: @ 0x080CC6CC
	push {lr}
	ldr r0, _080CC6D8 @ =gUnknown_08E7ED98
	ldr r0, [r0]
	bl sub_80CC6BC
	pop {pc}
	.align 2, 0
_080CC6D8: .4byte gUnknown_08E7ED98

	thumb_func_start sub_80CC6DC
sub_80CC6DC: @ 0x080CC6DC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080CC738 @ =sub_80CC6BC
	str r0, [r5, #0x3c]
	movs r0, #1
	str r0, [r5, #0x38]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	adds r3, r5, #0
	bl sub_80CC5E0
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl sub_80CC5E0
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0xa
	movs r2, #2
	adds r3, r5, #0
	bl sub_80CC5E0
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_080CC738: .4byte sub_80CC6BC

	thumb_func_start sub_80CC73C
sub_80CC73C: @ 0x080CC73C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	cmp r4, #0
	bne _080CC74E
	b _080CC8F2
_080CC74E:
	bl sub_80CD3C0
	adds r5, r4, #0
	subs r5, #8
	ldr r1, [r5, #4]
	movs r6, #2
	rsbs r6, r6, #0
	ands r6, r1
	adds r7, r5, r6
	ldr r4, [r7, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r4, r0
	ldr r0, _080CC7B0 @ =gUnknown_08E7EDB0
	mov ip, r0
	ldr r0, [r0, #8]
	cmp r7, r0
	bne _080CC7BC
	adds r6, r6, r4
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	bne _080CC78A
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #8]
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080CC78A:
	adds r0, r6, #0
	orrs r0, r4
	str r0, [r5, #4]
	mov r2, ip
	str r5, [r2, #8]
	ldr r0, _080CC7B4 @ =gUnknown_08E7F1B8
	ldr r0, [r0]
	cmp r6, r0
	blo _080CC7A6
	ldr r0, _080CC7B8 @ =gUnknown_08E7F1BC
	ldr r1, [r0]
	mov r0, sb
	bl sub_80CC8FC
_080CC7A6:
	mov r0, sb
	bl sub_80CD3C4
	b _080CC8F2
	.align 2, 0
_080CC7B0: .4byte gUnknown_08E7EDB0
_080CC7B4: .4byte gUnknown_08E7F1B8
_080CC7B8: .4byte gUnknown_08E7F1BC
_080CC7BC:
	str r4, [r7, #4]
	movs r0, #0
	mov r8, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080CC7E8
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r1, [r5, #8]
	mov r0, ip
	adds r0, #8
	cmp r1, r0
	bne _080CC7E0
	movs r2, #1
	mov r8, r2
	b _080CC7E8
_080CC7E0:
	ldr r3, [r5, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080CC7E8:
	adds r0, r7, r4
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080CC820
	adds r6, r6, r4
	ldr r1, [r7, #8]
	mov r0, r8
	cmp r0, #0
	bne _080CC818
	ldr r0, _080CC814 @ =gUnknown_08E7EDB8
	cmp r1, r0
	bne _080CC818
	movs r2, #1
	mov r8, r2
	str r5, [r1, #0xc]
	str r5, [r1, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #8]
	b _080CC820
	.align 2, 0
_080CC814: .4byte gUnknown_08E7EDB8
_080CC818:
	ldr r3, [r7, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080CC820:
	movs r1, #1
	adds r0, r6, #0
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, r6
	str r6, [r0]
	mov r0, r8
	cmp r0, #0
	bne _080CC8EC
	ldr r0, _080CC850 @ =0x000001FF
	cmp r6, r0
	bhi _080CC858
	lsrs r4, r6, #3
	ldr r2, _080CC854 @ =gUnknown_08E7EDB0
	adds r0, r4, #0
	asrs r0, r0, #2
	lsls r1, r0
	ldr r0, [r2, #4]
	orrs r0, r1
	str r0, [r2, #4]
	lsls r0, r4, #3
	adds r3, r0, r2
	ldr r2, [r3, #8]
	b _080CC8E4
	.align 2, 0
_080CC850: .4byte 0x000001FF
_080CC854: .4byte gUnknown_08E7EDB0
_080CC858:
	lsrs r1, r6, #9
	cmp r1, #0
	bne _080CC862
	lsrs r4, r6, #3
	b _080CC8AA
_080CC862:
	cmp r1, #4
	bhi _080CC86E
	lsrs r0, r6, #6
	adds r4, r0, #0
	adds r4, #0x38
	b _080CC8AA
_080CC86E:
	cmp r1, #0x14
	bhi _080CC878
	adds r4, r1, #0
	adds r4, #0x5b
	b _080CC8AA
_080CC878:
	cmp r1, #0x54
	bhi _080CC884
	lsrs r0, r6, #0xc
	adds r4, r0, #0
	adds r4, #0x6e
	b _080CC8AA
_080CC884:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080CC894
	lsrs r0, r6, #0xf
	adds r4, r0, #0
	adds r4, #0x77
	b _080CC8AA
_080CC894:
	ldr r0, _080CC8A4 @ =0x00000554
	cmp r1, r0
	bhi _080CC8A8
	lsrs r0, r6, #0x12
	adds r4, r0, #0
	adds r4, #0x7c
	b _080CC8AA
	.align 2, 0
_080CC8A4: .4byte 0x00000554
_080CC8A8:
	movs r4, #0x7e
_080CC8AA:
	lsls r0, r4, #3
	ldr r7, _080CC8C8 @ =gUnknown_08E7EDB0
	adds r3, r0, r7
	ldr r2, [r3, #8]
	cmp r2, r3
	bne _080CC8CC
	adds r0, r4, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _080CC8E4
	.align 2, 0
_080CC8C8: .4byte gUnknown_08E7EDB0
_080CC8CC:
	ldr r0, [r2, #4]
	movs r1, #4
	rsbs r1, r1, #0
	b _080CC8DC
_080CC8D4:
	ldr r2, [r2, #8]
	cmp r2, r3
	beq _080CC8E2
	ldr r0, [r2, #4]
_080CC8DC:
	ands r0, r1
	cmp r6, r0
	blo _080CC8D4
_080CC8E2:
	ldr r3, [r2, #0xc]
_080CC8E4:
	str r3, [r5, #0xc]
	str r2, [r5, #8]
	str r5, [r3, #8]
	str r5, [r2, #0xc]
_080CC8EC:
	mov r0, sb
	bl sub_80CD3C4
_080CC8F2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_80CC8FC
sub_80CC8FC: @ 0x080CC8FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	bl sub_80CD3C0
	ldr r0, _080CC984 @ =gUnknown_08E7EDB0
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r6, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r6, r0
	subs r4, r6, r4
	movs r5, #0x80
	lsls r5, r5, #5
	ldr r1, _080CC988 @ =0x00000FEF
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80C8B50
	subs r0, #1
	lsls r4, r0, #0xc
	cmp r4, r5
	blt _080CC97A
	adds r0, r7, #0
	movs r1, #0
	bl sub_80CDCDC
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r6
	cmp r2, r0
	bne _080CC97A
	rsbs r1, r4, #0
	adds r0, r7, #0
	bl sub_80CDCDC
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080CC994
	adds r0, r7, #0
	movs r1, #0
	bl sub_80CDCDC
	adds r2, r0, #0
	mov r0, r8
	ldr r3, [r0, #8]
	subs r6, r2, r3
	cmp r6, #0xf
	ble _080CC97A
	ldr r1, _080CC98C @ =gUnknown_08E7F1CC
	ldr r0, _080CC990 @ =gUnknown_08E7F1C0
	ldr r0, [r0]
	subs r0, r2, r0
	str r0, [r1]
	movs r0, #1
	orrs r6, r0
	str r6, [r3, #4]
_080CC97A:
	adds r0, r7, #0
	bl sub_80CD3C4
	movs r0, #0
	b _080CC9B0
	.align 2, 0
_080CC984: .4byte gUnknown_08E7EDB0
_080CC988: .4byte 0x00000FEF
_080CC98C: .4byte gUnknown_08E7F1CC
_080CC990: .4byte gUnknown_08E7F1C0
_080CC994:
	mov r1, r8
	ldr r2, [r1, #8]
	subs r0, r6, r4
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, _080CC9B8 @ =gUnknown_08E7F1CC
	ldr r0, [r1]
	subs r0, r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl sub_80CD3C4
	movs r0, #1
_080CC9B0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CC9B8: .4byte gUnknown_08E7F1CC

	thumb_func_start sub_80CC9BC
sub_80CC9BC: @ 0x080CC9BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	ldr r6, [r1, #8]
	cmp r6, #0
	bne _080CC9D4
	b _080CCBCA
_080CC9D4:
	movs r0, #8
	ldrh r1, [r5, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080CC9E4
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080CC9F0
_080CC9E4:
	adds r0, r5, #0
	bl sub_80CB64C
	cmp r0, #0
	beq _080CC9F0
	b _080CCBD6
_080CC9F0:
	mov r2, sl
	ldr r2, [r2]
	mov r8, r2
	movs r6, #0
	ldrh r1, [r5, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CCA44
_080CCA02:
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	cmp r6, #0
	bne _080CCA18
_080CCA0A:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080CCA0A
_080CCA18:
	adds r2, r6, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r6, r1
	bls _080CCA24
	adds r2, r1, #0
_080CCA24:
	adds r1, r7, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	bgt _080CCA32
	b _080CCBCE
_080CCA32:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _080CCA02
	b _080CCBCA
_080CCA44:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080CCAFE
_080CCA4C:
	ldrh r1, [r5, #0xc]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	cmp r6, #0
	bne _080CCA64
_080CCA56:
	mov r2, r8
	ldr r7, [r2]
	ldr r6, [r2, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080CCA56
_080CCA64:
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080CCA92
	cmp r6, r4
	bhs _080CCA78
	adds r4, r6, #0
_080CCA78:
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_80CD338
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r4, r6, #0
	b _080CCAEC
_080CCA92:
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bls _080CCABA
	cmp r6, r4
	bls _080CCABA
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_80CD338
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl sub_80CC54C
	cmp r0, #0
	beq _080CCAB8
	b _080CCBCE
_080CCAB8:
	b _080CCAEC
_080CCABA:
	ldr r4, [r5, #0x14]
	cmp r6, r4
	blo _080CCAD4
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _080CCBCE
	b _080CCAEC
_080CCAD4:
	adds r4, r6, #0
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_80CD338
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_080CCAEC:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _080CCA4C
	b _080CCBCA
_080CCAFE:
	movs r2, #0
	str r2, [sp]
_080CCB02:
	cmp r6, #0
	bne _080CCB18
	movs r0, #0
	str r0, [sp]
_080CCB0A:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080CCB0A
_080CCB18:
	ldr r0, [sp]
	cmp r0, #0
	bne _080CCB3C
	adds r0, r7, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl sub_80CD2B8
	adds r1, r0, #0
	cmp r1, #0
	beq _080CCB34
	subs r0, r7, #1
	subs r1, r1, r0
	b _080CCB36
_080CCB34:
	adds r1, r6, #1
_080CCB36:
	mov sb, r1
	movs r2, #1
	str r2, [sp]
_080CCB3C:
	mov r2, sb
	cmp sb, r6
	bls _080CCB44
	adds r2, r6, #0
_080CCB44:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x14]
	adds r4, r0, r1
	ldr r0, [r5, #0x10]
	ldr r3, [r5]
	cmp r3, r0
	bls _080CCB72
	cmp r2, r4
	ble _080CCB72
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_80CD338
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl sub_80CC54C
	cmp r0, #0
	bne _080CCBCE
	b _080CCBA2
_080CCB72:
	adds r4, r1, #0
	cmp r2, r4
	blt _080CCB8C
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _080CCBCE
	b _080CCBA2
_080CCB8C:
	adds r4, r2, #0
	adds r0, r3, #0
	adds r1, r7, #0
	bl sub_80CD338
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_080CCBA2:
	mov r0, sb
	subs r0, r0, r4
	mov sb, r0
	cmp r0, #0
	bne _080CCBBA
	adds r0, r5, #0
	bl sub_80CC54C
	cmp r0, #0
	bne _080CCBCE
	movs r1, #0
	str r1, [sp]
_080CCBBA:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r2, sl
	ldr r0, [r2, #8]
	subs r0, r0, r4
	str r0, [r2, #8]
	cmp r0, #0
	bne _080CCB02
_080CCBCA:
	movs r0, #0
	b _080CCBDA
_080CCBCE:
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_080CCBD6:
	movs r0, #1
	rsbs r0, r0, #0
_080CCBDA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_80CCBE8
sub_80CCBE8: @ 0x080CCBE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	movs r7, #0
	movs r1, #0xec
	lsls r1, r1, #1
	adds r6, r0, r1
	cmp r6, #0
	beq _080CCC20
_080CCBFC:
	ldr r5, [r6, #8]
	ldr r4, [r6, #4]
	b _080CCC14
_080CCC02:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080CCC12
	adds r0, r5, #0
	bl _call_via_r8
	orrs r7, r0
_080CCC12:
	adds r5, #0x58
_080CCC14:
	subs r4, #1
	cmp r4, #0
	bge _080CCC02
	ldr r6, [r6]
	cmp r6, #0
	bne _080CCBFC
_080CCC20:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_80CCC28
sub_80CCC28: @ 0x080CCC28
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	beq _080CCC5C
	ldr r1, _080CCC50 @ =gUnknown_08E2E868
	adds r0, r4, #0
	bl sub_80CDDCC
	cmp r0, #0
	beq _080CCC58
	ldr r1, _080CCC54 @ =gUnknown_08E2E860
	adds r0, r4, #0
	bl sub_80CDDCC
	cmp r0, #0
	beq _080CCC58
	movs r0, #0
	b _080CCC5E
	.align 2, 0
_080CCC50: .4byte gUnknown_08E2E868
_080CCC54: .4byte gUnknown_08E2E860
_080CCC58:
	str r6, [r5, #0x30]
	str r4, [r5, #0x34]
_080CCC5C:
	ldr r0, _080CCC60 @ =gUnknown_08E2E868
_080CCC5E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080CCC60: .4byte gUnknown_08E2E868

	thumb_func_start sub_80CCC64
sub_80CCC64: @ 0x080CCC64
	ldr r0, _080CCC68 @ =gUnknown_08E2E830
	bx lr
	.align 2, 0
_080CCC68: .4byte gUnknown_08E2E830

	thumb_func_start sub_80CCC6C
sub_80CCC6C: @ 0x080CCC6C
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _080CCC80 @ =gUnknown_08E7ED98
	ldr r0, [r0]
	adds r1, r3, #0
	bl sub_80CCC28
	pop {pc}
	.align 2, 0
_080CCC80: .4byte gUnknown_08E7ED98

	thumb_func_start sub_80CCC84
sub_80CCC84: @ 0x080CCC84
	push {lr}
	ldr r0, _080CCC90 @ =gUnknown_08E7ED98
	ldr r0, [r0]
	bl sub_80CCC64
	pop {pc}
	.align 2, 0
_080CCC90: .4byte gUnknown_08E7ED98

	thumb_func_start sub_80CCC94
sub_80CCC94: @ 0x080CCC94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #2
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	bne _080CCD2A
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _080CCCBC
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	mov r2, sp
	bl sub_80CE384
	cmp r0, #0
	bge _080CCCCE
_080CCCBC:
	movs r7, #0
	movs r6, #0x80
	lsls r6, r6, #3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	b _080CCD12
_080CCCCE:
	movs r7, #0
	ldr r1, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bne _080CCCE2
	movs r7, #1
_080CCCE2:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _080CCD08
	ldr r1, [r4, #0x28]
	ldr r0, _080CCD04 @ =sub_80CDD7C
	cmp r1, r0
	bne _080CCD08
	adds r0, r6, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r6, [r4, #0x4c]
	b _080CCD14
	.align 2, 0
_080CCD04: .4byte sub_80CDD7C
_080CCD08:
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
_080CCD12:
	strh r0, [r4, #0xc]
_080CCD14:
	ldr r0, [r4, #0x54]
	adds r1, r6, #0
	bl sub_80CCECC
	adds r2, r0, #0
	cmp r2, #0
	bne _080CCD38
	movs r0, #2
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	strh r0, [r4, #0xc]
_080CCD2A:
	adds r0, r4, #0
	adds r0, #0x43
	str r0, [r4]
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #0x14]
	b _080CCD66
_080CCD38:
	ldr r1, [r4, #0x54]
	ldr r0, _080CCD6C @ =sub_80CC6BC
	str r0, [r1, #0x3c]
	movs r0, #0x80
	movs r5, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r2, [r4]
	str r2, [r4, #0x10]
	str r6, [r4, #0x14]
	cmp r7, #0
	beq _080CCD66
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	bl sub_80CE3D0
	cmp r0, #0
	beq _080CCD66
	movs r0, #1
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_080CCD66:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CCD6C: .4byte sub_80CC6BC

	thumb_func_start sub_80CCD70
sub_80CCD70: @ 0x080CCD70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _080CCDE4 @ =gUnknown_08E7EDB0
	ldr r0, [r0, #8]
	mov r8, r0
	ldr r7, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _080CCDE8 @ =gUnknown_08E7F1BC
	ldr r0, [r0]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	ldr r3, _080CCDEC @ =gUnknown_08E7F1C0
	mov sl, r3
	ldr r0, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	cmp r0, sb
	beq _080CCDB2
	ldr r3, _080CCDF0 @ =0x0000100F
	adds r6, r1, r3
	ldr r0, _080CCDF4 @ =0xFFFFF000
	ands r6, r0
_080CCDB2:
	ldr r0, [sp]
	adds r1, r6, #0
	bl sub_80CDCDC
	adds r5, r0, #0
	cmp r5, sb
	beq _080CCEB4
	cmp r5, r4
	bhs _080CCDCA
	ldr r0, _080CCDE4 @ =gUnknown_08E7EDB0
	cmp r8, r0
	bne _080CCEB4
_080CCDCA:
	ldr r1, _080CCDF8 @ =gUnknown_08E7F1CC
	ldr r0, [r1]
	adds r2, r0, r6
	str r2, [r1]
	cmp r5, r4
	bne _080CCDFC
	adds r2, r6, r7
	ldr r3, _080CCDE4 @ =gUnknown_08E7EDB0
	ldr r1, [r3, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r1, #4]
	b _080CCE9C
	.align 2, 0
_080CCDE4: .4byte gUnknown_08E7EDB0
_080CCDE8: .4byte gUnknown_08E7F1BC
_080CCDEC: .4byte gUnknown_08E7F1C0
_080CCDF0: .4byte 0x0000100F
_080CCDF4: .4byte 0xFFFFF000
_080CCDF8: .4byte gUnknown_08E7F1CC
_080CCDFC:
	mov r3, sl
	ldr r0, [r3]
	cmp r0, sb
	bne _080CCE08
	str r5, [r3]
	b _080CCE0E
_080CCE08:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1]
_080CCE0E:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	beq _080CCE22
	movs r0, #8
	subs r4, r0, r1
	adds r5, r5, r4
	b _080CCE24
_080CCE22:
	movs r4, #0
_080CCE24:
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	subs r0, r1, r0
	adds r4, r4, r0
	ldr r0, [sp]
	adds r1, r4, #0
	bl sub_80CDCDC
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080CCEB4
	ldr r1, _080CCE6C @ =gUnknown_08E7F1CC
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _080CCE70 @ =gUnknown_08E7EDB0
	str r5, [r1, #8]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #1
	orrs r2, r3
	str r2, [r5, #4]
	cmp r8, r1
	beq _080CCE9C
	cmp r7, #0xf
	bhi _080CCE74
	str r3, [r5, #4]
	b _080CCEB4
	.align 2, 0
_080CCE6C: .4byte gUnknown_08E7F1CC
_080CCE70: .4byte gUnknown_08E7EDB0
_080CCE74:
	subs r7, #0xc
	movs r0, #8
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	ldr r0, [r2, #4]
	ands r0, r3
	orrs r0, r7
	str r0, [r2, #4]
	adds r1, r2, r7
	movs r0, #5
	str r0, [r1, #4]
	str r0, [r1, #8]
	cmp r7, #0xf
	bls _080CCE9C
	mov r1, r8
	adds r1, #8
	ldr r0, [sp]
	bl sub_80CC73C
_080CCE9C:
	ldr r0, _080CCEC0 @ =gUnknown_08E7F1CC
	ldr r2, _080CCEC4 @ =gUnknown_08E7F1C4
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bls _080CCEAA
	str r1, [r2]
_080CCEAA:
	ldr r2, _080CCEC8 @ =gUnknown_08E7F1C8
	ldr r0, [r2]
	cmp r1, r0
	bls _080CCEB4
	str r1, [r2]
_080CCEB4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CCEC0: .4byte gUnknown_08E7F1CC
_080CCEC4: .4byte gUnknown_08E7F1C4
_080CCEC8: .4byte gUnknown_08E7F1C8

	thumb_func_start sub_80CCECC
sub_80CCECC: @ 0x080CCECC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r1, #0xb
	cmp r1, #0x16
	ble _080CCEEE
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	b _080CCEF2
_080CCEEE:
	movs r3, #0x10
	mov r8, r3
_080CCEF2:
	ldr r0, [sp]
	bl sub_80CD3C0
	ldr r0, _080CCF38 @ =0x000001F7
	cmp r8, r0
	bhi _080CCF46
	mov r4, r8
	lsrs r4, r4, #3
	mov ip, r4
	ldr r0, _080CCF3C @ =gUnknown_08E7EDB0
	mov r7, r8
	adds r2, r7, r0
	ldr r5, [r2, #0xc]
	cmp r5, r2
	bne _080CCF1A
	adds r2, r5, #0
	adds r2, #8
	ldr r5, [r2, #0xc]
	cmp r5, r2
	beq _080CCF40
_080CCF1A:
	ldr r2, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r2
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _080CD272
	.align 2, 0
_080CCF38: .4byte 0x000001F7
_080CCF3C: .4byte gUnknown_08E7EDB0
_080CCF40:
	movs r0, #2
	add ip, r0
	b _080CCFF2
_080CCF46:
	mov r2, r8
	lsrs r1, r2, #9
	cmp r1, #0
	bne _080CCF52
	lsrs r2, r2, #3
	b _080CCFA2
_080CCF52:
	cmp r1, #4
	bhi _080CCF60
	mov r3, r8
	lsrs r0, r3, #6
	adds r0, #0x38
	mov ip, r0
	b _080CCFA4
_080CCF60:
	cmp r1, #0x14
	bhi _080CCF6A
	adds r1, #0x5b
	mov ip, r1
	b _080CCFA4
_080CCF6A:
	cmp r1, #0x54
	bhi _080CCF78
	mov r4, r8
	lsrs r0, r4, #0xc
	adds r0, #0x6e
	mov ip, r0
	b _080CCFA4
_080CCF78:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080CCF8A
	mov r7, r8
	lsrs r0, r7, #0xf
	adds r0, #0x77
	mov ip, r0
	b _080CCFA4
_080CCF8A:
	ldr r0, _080CCF9C @ =0x00000554
	cmp r1, r0
	bhi _080CCFA0
	mov r1, r8
	lsrs r0, r1, #0x12
	adds r0, #0x7c
	mov ip, r0
	b _080CCFA4
	.align 2, 0
_080CCF9C: .4byte 0x00000554
_080CCFA0:
	movs r2, #0x7e
_080CCFA2:
	mov ip, r2
_080CCFA4:
	mov r3, ip
	lsls r0, r3, #3
	ldr r1, _080CCFC8 @ =gUnknown_08E7EDB0
	adds r4, r0, r1
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _080CCFEE
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _080CCFCC
	adds r0, #3
	add ip, r0
	b _080CCFEE
	.align 2, 0
_080CCFC8: .4byte gUnknown_08E7EDB0
_080CCFCC:
	cmp r3, #0
	blt _080CCFD2
	b _080CD20C
_080CCFD2:
	ldr r5, [r5, #0xc]
	cmp r5, r4
	beq _080CCFEE
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	subs r3, r1, r2
	cmp r3, #0xf
	ble _080CCFCC
	movs r3, #1
	rsbs r3, r3, #0
	add ip, r3
_080CCFEE:
	movs r4, #1
	add ip, r4
_080CCFF2:
	ldr r0, _080CD030 @ =gUnknown_08E7EDB8
	ldr r5, [r0, #8]
	mov sl, r0
	cmp r5, sl
	bne _080CCFFE
	b _080CD100
_080CCFFE:
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _080CD034
	adds r2, r5, r7
	movs r1, #1
	adds r0, r7, #0
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, sl
	str r2, [r4, #0xc]
	str r2, [r4, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _080CD272
	.align 2, 0
_080CD030: .4byte gUnknown_08E7EDB8
_080CD034:
	mov r7, sl
	str r7, [r7, #0xc]
	str r7, [r7, #8]
	cmp r3, #0
	blt _080CD04A
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _080CD272
_080CD04A:
	ldr r0, _080CD06C @ =0x000001FF
	cmp r1, r0
	bhi _080CD070
	lsrs r2, r1, #3
	mov r3, sl
	subs r3, #8
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3, #4]
	orrs r0, r1
	str r0, [r3, #4]
	lsls r0, r2, #3
	adds r6, r0, r3
	ldr r4, [r6, #8]
	b _080CD0F8
	.align 2, 0
_080CD06C: .4byte 0x000001FF
_080CD070:
	lsrs r2, r1, #9
	cmp r2, #0
	bne _080CD07A
	lsrs r2, r1, #3
	b _080CD0BE
_080CD07A:
	cmp r2, #4
	bhi _080CD086
	lsrs r0, r1, #6
	adds r2, r0, #0
	adds r2, #0x38
	b _080CD0BE
_080CD086:
	cmp r2, #0x14
	bhi _080CD08E
	adds r2, #0x5b
	b _080CD0BE
_080CD08E:
	cmp r2, #0x54
	bhi _080CD09A
	lsrs r0, r1, #0xc
	adds r2, r0, #0
	adds r2, #0x6e
	b _080CD0BE
_080CD09A:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	bhi _080CD0AA
	lsrs r0, r1, #0xf
	adds r2, r0, #0
	adds r2, #0x77
	b _080CD0BE
_080CD0AA:
	ldr r0, _080CD0B8 @ =0x00000554
	cmp r2, r0
	bhi _080CD0BC
	lsrs r0, r1, #0x12
	adds r2, r0, #0
	adds r2, #0x7c
	b _080CD0BE
	.align 2, 0
_080CD0B8: .4byte 0x00000554
_080CD0BC:
	movs r2, #0x7e
_080CD0BE:
	lsls r0, r2, #3
	ldr r3, _080CD0DC @ =gUnknown_08E7EDB0
	adds r6, r0, r3
	ldr r4, [r6, #8]
	cmp r4, r6
	bne _080CD0E0
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r7, _080CD0DC @ =gUnknown_08E7EDB0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _080CD0F8
	.align 2, 0
_080CD0DC: .4byte gUnknown_08E7EDB0
_080CD0E0:
	ldr r0, [r4, #4]
	movs r2, #4
	rsbs r2, r2, #0
	b _080CD0F0
_080CD0E8:
	ldr r4, [r4, #8]
	cmp r4, r6
	beq _080CD0F6
	ldr r0, [r4, #4]
_080CD0F0:
	ands r0, r2
	cmp r1, r0
	blo _080CD0E8
_080CD0F6:
	ldr r6, [r4, #0xc]
_080CD0F8:
	str r6, [r5, #0xc]
	str r4, [r5, #8]
	str r5, [r6, #8]
	str r5, [r4, #0xc]
_080CD100:
	mov r0, ip
	cmp r0, #0
	bge _080CD108
	adds r0, #3
_080CD108:
	asrs r0, r0, #2
	movs r6, #1
	lsls r6, r0
	ldr r0, _080CD12C @ =gUnknown_08E7EDB0
	ldr r1, [r0, #4]
	cmp r6, r1
	bhi _080CD1CA
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080CD13E
	movs r0, #4
	rsbs r0, r0, #0
	mov r2, ip
	ands r0, r2
	adds r0, #4
	mov ip, r0
	b _080CD134
	.align 2, 0
_080CD12C: .4byte gUnknown_08E7EDB0
_080CD130:
	movs r3, #4
	add ip, r3
_080CD134:
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080CD130
_080CD13E:
	ldr r4, _080CD1BC @ =gUnknown_08E7EDB0
	mov sb, r4
_080CD142:
	mov r7, ip
	str r7, [sp, #4]
	mov r1, ip
	lsls r0, r1, #3
	mov r3, sb
	adds r2, r0, r3
	adds r4, r2, #0
_080CD150:
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _080CD170
	movs r0, #4
	rsbs r0, r0, #0
_080CD15A:
	ldr r1, [r5, #4]
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	bgt _080CD220
	cmp r3, #0
	bge _080CD248
	ldr r5, [r5, #0xc]
	cmp r5, r4
	bne _080CD15A
_080CD170:
	adds r4, #8
	movs r0, #1
	add ip, r0
	mov r0, ip
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080CD150
_080CD180:
	ldr r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _080CD1C0
	ldr r3, [sp, #4]
	subs r3, #1
	str r3, [sp, #4]
	subs r2, #8
	ldr r0, [r2, #8]
	cmp r0, r2
	beq _080CD180
_080CD196:
	lsls r6, r6, #1
	mov r4, sb
	ldr r1, [r4, #4]
	cmp r6, r1
	bhi _080CD1CA
	cmp r6, #0
	beq _080CD1CA
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080CD142
_080CD1AC:
	movs r7, #4
	add ip, r7
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080CD1AC
	b _080CD142
	.align 2, 0
_080CD1BC: .4byte gUnknown_08E7EDB0
_080CD1C0:
	mov r1, sb
	ldr r0, [r1, #4]
	bics r0, r6
	str r0, [r1, #4]
	b _080CD196
_080CD1CA:
	ldr r2, _080CD208 @ =gUnknown_08E7EDB0
	ldr r0, [r2, #8]
	ldr r0, [r0, #4]
	movs r4, #4
	rsbs r4, r4, #0
	ands r0, r4
	mov r7, r8
	subs r3, r0, r7
	cmp r0, r8
	blo _080CD1E2
	cmp r3, #0xf
	bgt _080CD25C
_080CD1E2:
	ldr r0, [sp]
	mov r1, r8
	bl sub_80CCD70
	ldr r1, _080CD208 @ =gUnknown_08E7EDB0
	ldr r0, [r1, #8]
	ldr r0, [r0, #4]
	ands r0, r4
	mov r2, r8
	subs r3, r0, r2
	cmp r0, r8
	blo _080CD1FE
	cmp r3, #0xf
	bgt _080CD25C
_080CD1FE:
	ldr r0, [sp]
	bl sub_80CD3C4
	movs r0, #0
	b _080CD27C
	.align 2, 0
_080CD208: .4byte gUnknown_08E7EDB0
_080CD20C:
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _080CD272
_080CD220:
	mov r4, r8
	adds r2, r5, r4
	movs r1, #1
	orrs r4, r1
	str r4, [r5, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	mov r7, sl
	str r2, [r7, #0xc]
	str r2, [r7, #8]
	str r7, [r2, #0xc]
	str r7, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _080CD272
_080CD248:
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	b _080CD272
_080CD25C:
	ldr r2, _080CD288 @ =gUnknown_08E7EDB0
	ldr r5, [r2, #8]
	movs r1, #1
	mov r0, r8
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, r8
	adds r0, r5, r4
	str r0, [r2, #8]
	orrs r3, r1
	str r3, [r0, #4]
_080CD272:
	ldr r0, [sp]
	bl sub_80CD3C4
	adds r0, r5, #0
	adds r0, #8
_080CD27C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CD288: .4byte gUnknown_08E7EDB0

	thumb_func_start sub_80CD28C
sub_80CD28C: @ 0x080CD28C
	sub sp, #4
	cmp r1, #0
	bne _080CD294
	mov r1, sp
_080CD294:
	cmp r2, #0
	beq _080CD2B0
	cmp r3, #0
	bne _080CD2A2
	movs r0, #1
	rsbs r0, r0, #0
	b _080CD2B2
_080CD2A2:
	ldrb r0, [r2]
	str r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080CD2B0
	movs r0, #1
	b _080CD2B2
_080CD2B0:
	movs r0, #0
_080CD2B2:
	add sp, #4
	bx lr
	.align 2, 0

	thumb_func_start sub_80CD2B8
sub_80CD2B8: @ 0x080CD2B8
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	movs r0, #0xff
	ands r5, r0
	cmp r2, #3
	bls _080CD32C
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080CD32C
	adds r4, r1, #0
	movs r6, #0
	movs r1, #0
_080CD2D4:
	lsls r0, r6, #8
	adds r6, r0, r5
	adds r1, #1
	cmp r1, #3
	bls _080CD2D4
	cmp r2, #3
	bls _080CD312
	ldr r0, _080CD318 @ =0xFEFEFEFF
	mov ip, r0
	ldr r7, _080CD31C @ =0x80808080
_080CD2E8:
	ldr r1, [r4]
	eors r1, r6
	mov r3, ip
	adds r0, r1, r3
	bics r0, r1
	ands r0, r7
	cmp r0, #0
	beq _080CD30A
	adds r1, r4, #0
	movs r3, #0
_080CD2FC:
	ldrb r0, [r1]
	cmp r0, r5
	beq _080CD326
	adds r1, #1
	adds r3, #1
	cmp r3, #3
	bls _080CD2FC
_080CD30A:
	subs r2, #4
	adds r4, #4
	cmp r2, #3
	bhi _080CD2E8
_080CD312:
	adds r1, r4, #0
	b _080CD32C
	.align 2, 0
_080CD318: .4byte 0xFEFEFEFF
_080CD31C: .4byte 0x80808080
_080CD320:
	ldrb r0, [r1]
	cmp r0, r5
	bne _080CD32A
_080CD326:
	adds r0, r1, #0
	b _080CD336
_080CD32A:
	adds r1, #1
_080CD32C:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _080CD320
	movs r0, #0
_080CD336:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_80CD338
sub_80CD338: @ 0x080CD338
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r3, r5
	bhs _080CD36A
	adds r0, r3, r2
	cmp r5, r0
	bhs _080CD36A
	adds r3, r0, #0
	adds r4, r5, r2
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080CD3BC
	adds r1, r0, #0
_080CD35A:
	subs r4, #1
	subs r3, #1
	ldrb r0, [r3]
	strb r0, [r4]
	subs r2, #1
	cmp r2, r1
	bne _080CD35A
	b _080CD3BC
_080CD36A:
	cmp r2, #0xf
	bls _080CD3A2
	adds r0, r3, #0
	orrs r0, r4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080CD3A2
	adds r1, r3, #0
_080CD37C:
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080CD37C
	cmp r2, #3
	bls _080CD3A0
_080CD396:
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _080CD396
_080CD3A0:
	adds r3, r1, #0
_080CD3A2:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080CD3BC
	adds r1, r0, #0
_080CD3AE:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _080CD3AE
_080CD3BC:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start sub_80CD3C0
sub_80CD3C0: @ 0x080CD3C0
	bx lr
	.align 2, 0

	thumb_func_start sub_80CD3C4
sub_80CD3C4: @ 0x080CD3C4
	bx lr
	.align 2, 0

	thumb_func_start sub_80CD3C8
sub_80CD3C8: @ 0x080CD3C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _080CD3E4
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x10
	bl sub_80CE300
	str r0, [r4, #0x4c]
	cmp r0, #0
	beq _080CD40C
_080CD3E4:
	ldr r1, [r4, #0x4c]
	lsls r0, r6, #2
	adds r2, r0, r1
	ldr r1, [r2]
	cmp r1, #0
	beq _080CD3F6
	ldr r0, [r1]
	str r0, [r2]
	b _080CD414
_080CD3F6:
	movs r5, #1
	lsls r5, r6
	lsls r2, r5, #2
	adds r2, #0x14
	adds r0, r4, #0
	movs r1, #1
	bl sub_80CE300
	adds r1, r0, #0
	cmp r1, #0
	bne _080CD410
_080CD40C:
	movs r0, #0
	b _080CD41C
_080CD410:
	str r6, [r1, #4]
	str r5, [r1, #8]
_080CD414:
	movs r0, #0
	str r0, [r1, #0x10]
	str r0, [r1, #0xc]
	adds r0, r1, #0
_080CD41C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_80CD420
sub_80CD420: @ 0x080CD420
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r2, #0
	beq _080CD436
	ldr r0, [r2, #4]
	ldr r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	str r2, [r0]
_080CD436:
	bx lr

	thumb_func_start sub_80CD438
sub_80CD438: @ 0x080CD438
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov r8, r3
	ldr r6, [r5, #0x10]
	adds r3, r5, #0
	adds r3, #0x14
	movs r7, #0
	ldr r0, _080CD4CC @ =0x0000FFFF
	mov ip, r0
_080CD454:
	ldr r1, [r3]
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	add r2, r8
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r1, r2, #0x10
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	lsls r0, r0, #0x10
	mov r1, ip
	ands r2, r1
	adds r0, r0, r2
	stm r3!, {r0}
	adds r7, #1
	cmp r7, r6
	blt _080CD454
	mov r2, r8
	cmp r2, #0
	beq _080CD4C2
	ldr r0, [r5, #8]
	cmp r6, r0
	blt _080CD4B2
	ldr r1, [r5, #4]
	adds r1, #1
	mov r0, sb
	bl sub_80CD3C8
	adds r4, r0, #0
	adds r0, #0xc
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, [r5, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl sub_80CA3B0
	mov r0, sb
	adds r1, r5, #0
	bl sub_80CD420
	adds r5, r4, #0
_080CD4B2:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
	adds r6, #1
	str r6, [r5, #0x10]
_080CD4C2:
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CD4CC: .4byte 0x0000FFFF

	thumb_func_start sub_80CD4D0
sub_80CD4D0: @ 0x080CD4D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	mov r0, r8
	adds r0, #8
	movs r1, #9
	bl sub_80C8960
	movs r1, #0
	movs r2, #1
	cmp r0, #1
	ble _080CD4F8
_080CD4F0:
	lsls r2, r2, #1
	adds r1, #1
	cmp r0, r2
	bgt _080CD4F0
_080CD4F8:
	adds r0, r7, #0
	bl sub_80CD3C8
	adds r1, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x14]
	movs r0, #1
	str r0, [r1, #0x10]
	movs r5, #9
	cmp r6, #9
	ble _080CD52A
	adds r4, #9
_080CD510:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl sub_80CD438
	adds r1, r0, #0
	adds r5, #1
	cmp r5, r6
	blt _080CD510
	adds r4, #1
	b _080CD52C
_080CD52A:
	adds r4, #0xa
_080CD52C:
	cmp r5, r8
	bge _080CD54A
	mov r0, r8
	subs r5, r0, r5
_080CD534:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl sub_80CD438
	adds r1, r0, #0
	subs r5, #1
	cmp r5, #0
	bne _080CD534
_080CD54A:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_80CD554
sub_80CD554: @ 0x080CD554
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _080CD5A4 @ =0xFFFF0000
	ands r0, r1
	cmp r0, #0
	bne _080CD564
	movs r2, #0x10
	lsls r1, r1, #0x10
_080CD564:
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080CD572
	adds r2, #8
	lsls r1, r1, #8
_080CD572:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080CD580
	adds r2, #4
	lsls r1, r1, #4
_080CD580:
	movs r0, #0xc0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080CD58E
	adds r2, #2
	lsls r1, r1, #2
_080CD58E:
	cmp r1, #0
	blt _080CD5A8
	adds r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _080CD5A8
	movs r0, #0x20
	b _080CD5AA
	.align 2, 0
_080CD5A4: .4byte 0xFFFF0000
_080CD5A8:
	adds r0, r2, #0
_080CD5AA:
	bx lr

	thumb_func_start sub_80CD5AC
sub_80CD5AC: @ 0x080CD5AC
	adds r3, r0, #0
	ldr r1, [r3]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080CD5DC
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080CD5C4
	movs r0, #0
	b _080CD62C
_080CD5C4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080CD5D4
	lsrs r0, r1, #1
	str r0, [r3]
	movs r0, #1
	b _080CD62C
_080CD5D4:
	lsrs r0, r1, #2
	str r0, [r3]
	movs r0, #2
	b _080CD62C
_080CD5DC:
	movs r2, #0
	ldr r0, _080CD624 @ =0x0000FFFF
	ands r0, r1
	cmp r0, #0
	bne _080CD5EA
	movs r2, #0x10
	lsrs r1, r1, #0x10
_080CD5EA:
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _080CD5F6
	adds r2, #8
	lsrs r1, r1, #8
_080CD5F6:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080CD602
	adds r2, #4
	lsrs r1, r1, #4
_080CD602:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080CD60E
	adds r2, #2
	lsrs r1, r1, #2
_080CD60E:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080CD628
	adds r2, #1
	lsrs r1, r1, #1
	cmp r1, #0
	bne _080CD628
	movs r0, #0x20
	b _080CD62C
	.align 2, 0
_080CD624: .4byte 0x0000FFFF
_080CD628:
	str r1, [r3]
	adds r0, r2, #0
_080CD62C:
	bx lr
	.align 2, 0

	thumb_func_start sub_80CD630
sub_80CD630: @ 0x080CD630
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #1
	bl sub_80CD3C8
	str r4, [r0, #0x14]
	movs r1, #1
	str r1, [r0, #0x10]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80CD644
sub_80CD644: @ 0x080CD644
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge _080CD664
	str r4, [sp]
	adds r4, r5, #0
	ldr r5, [sp]
_080CD664:
	ldr r1, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r0, [r5, #0x10]
	mov r8, r0
	mov r2, r8
	adds r2, r6, r2
	str r2, [sp, #4]
	ldr r0, [r4, #8]
	cmp r2, r0
	ble _080CD67A
	adds r1, #1
_080CD67A:
	adds r0, r3, #0
	bl sub_80CD3C8
	str r0, [sp]
	adds r7, r0, #0
	adds r7, #0x14
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r2, r7, r0
	str r2, [sp, #8]
	str r0, [sp, #0x18]
	adds r1, r4, #0
	adds r1, #0x14
	lsls r3, r6, #2
	adds r2, r5, #0
	adds r2, #0x14
	mov r5, r8
	lsls r4, r5, #2
	ldr r0, [sp, #8]
	cmp r7, r0
	bhs _080CD6AE
	movs r0, #0
_080CD6A6:
	stm r7!, {r0}
	ldr r5, [sp, #8]
	cmp r7, r5
	blo _080CD6A6
_080CD6AE:
	str r1, [sp, #8]
	adds r3, r1, r3
	str r3, [sp, #0xc]
	mov r8, r2
	add r4, r8
	str r4, [sp, #0x10]
	ldr r0, [sp]
	adds r0, #0x14
	mov sb, r0
	mov r1, sb
	str r1, [sp, #0x20]
	cmp r8, r4
	bhs _080CD776
_080CD6C8:
	mov r2, r8
	ldm r2!, {r6}
	str r2, [sp, #0x14]
	ldr r0, _080CD784 @ =0x0000FFFF
	ands r6, r0
	mov r4, sb
	adds r4, #4
	str r4, [sp, #0x1c]
	cmp r6, #0
	beq _080CD720
	ldr r7, [sp, #8]
	mov r5, sb
	movs r1, #0
	mov ip, r1
	mov sl, r0
_080CD6E6:
	ldm r7!, {r3}
	adds r0, r3, #0
	mov r2, sl
	ands r0, r2
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r2, [r5]
	adds r0, r2, #0
	mov r4, sl
	ands r0, r4
	adds r1, r1, r0
	mov r0, ip
	adds r4, r1, r0
	lsrs r1, r4, #0x10
	lsrs r3, r3, #0x10
	adds r0, r3, #0
	muls r0, r6, r0
	lsrs r2, r2, #0x10
	adds r0, r0, r2
	adds r2, r0, r1
	lsrs r0, r2, #0x10
	mov ip, r0
	strh r2, [r5]
	strh r4, [r5, #2]
	adds r5, #4
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _080CD6E6
	str r0, [r5]
_080CD720:
	mov r2, r8
	ldrh r6, [r2, #2]
	cmp r6, #0
	beq _080CD768
	ldr r7, [sp, #8]
	mov r5, sb
	movs r4, #0
	mov ip, r4
	ldr r2, [r5]
	ldr r3, _080CD784 @ =0x0000FFFF
_080CD734:
	ldm r7!, {r1}
	adds r0, r1, #0
	ands r0, r3
	muls r0, r6, r0
	ldrh r4, [r5, #2]
	adds r4, r4, r0
	mov r8, r4
	add r4, ip
	lsrs r0, r4, #0x10
	mov ip, r0
	strh r4, [r5]
	strh r2, [r5, #2]
	adds r5, #4
	lsrs r1, r1, #0x10
	muls r1, r6, r1
	ldr r0, [r5]
	ands r0, r3
	adds r1, r1, r0
	mov r4, ip
	adds r2, r1, r4
	lsrs r0, r2, #0x10
	mov ip, r0
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _080CD734
	str r2, [r5]
_080CD768:
	ldr r2, [sp, #0x14]
	mov r8, r2
	ldr r4, [sp, #0x1c]
	mov sb, r4
	ldr r5, [sp, #0x10]
	cmp r8, r5
	blo _080CD6C8
_080CD776:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	adds r5, r0, r1
	ldr r2, [sp, #4]
	cmp r2, #0
	ble _080CD79A
	b _080CD792
	.align 2, 0
_080CD784: .4byte 0x0000FFFF
_080CD788:
	ldr r4, [sp, #4]
	subs r4, #1
	str r4, [sp, #4]
	cmp r4, #0
	ble _080CD79A
_080CD792:
	subs r5, #4
	ldr r0, [r5]
	cmp r0, #0
	beq _080CD788
_080CD79A:
	ldr r5, [sp, #4]
	ldr r0, [sp]
	str r5, [r0, #0x10]
	ldr r0, [sp]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_80CD7B0
sub_80CD7B0: @ 0x080CD7B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #3
	ands r1, r6
	cmp r1, #0
	beq _080CD7DA
	ldr r0, _080CD7FC @ =gUnknown_08E2E86C
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #0
	bl sub_80CD438
	adds r7, r0, #0
_080CD7DA:
	asrs r6, r6, #2
	cmp r6, #0
	beq _080CD840
	mov r0, r8
	ldr r5, [r0, #0x48]
	adds r4, r5, #0
	cmp r5, #0
	bne _080CD81C
	ldr r1, _080CD800 @ =0x00000271
	bl sub_80CD630
	mov r1, r8
	str r0, [r1, #0x48]
	adds r5, r0, #0
	str r4, [r5]
	b _080CD81C
	.align 2, 0
_080CD7FC: .4byte gUnknown_08E2E86C
_080CD800: .4byte 0x00000271
_080CD804:
	ldr r0, [r5]
	adds r4, r0, #0
	cmp r0, #0
	bne _080CD81A
	mov r0, r8
	adds r1, r5, #0
	adds r2, r5, #0
	bl sub_80CD644
	str r0, [r5]
	str r4, [r0]
_080CD81A:
	adds r5, r0, #0
_080CD81C:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080CD83A
	mov r0, r8
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_80CD644
	adds r4, r0, #0
	mov r0, r8
	adds r1, r7, #0
	bl sub_80CD420
	adds r7, r4, #0
_080CD83A:
	asrs r6, r6, #1
	cmp r6, #0
	bne _080CD804
_080CD840:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_80CD848
sub_80CD848: @ 0x080CD848
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	adds r5, r2, #0
	asrs r6, r5, #5
	ldr r1, [r1, #4]
	mov r2, r8
	ldr r0, [r2, #0x10]
	adds r0, r6, r0
	adds r7, r0, #1
	ldr r2, [r2, #8]
	cmp r7, r2
	ble _080CD872
_080CD86A:
	adds r1, #1
	lsls r2, r2, #1
	cmp r7, r2
	bgt _080CD86A
_080CD872:
	mov r0, sl
	bl sub_80CD3C8
	mov sb, r0
	mov r4, sb
	adds r4, #0x14
	mov r0, r8
	adds r0, #0x14
	cmp r6, #0
	ble _080CD892
	movs r1, #0
	adds r2, r6, #0
_080CD88A:
	stm r4!, {r1}
	subs r2, #1
	cmp r2, #0
	bne _080CD88A
_080CD892:
	adds r3, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsls r0, r0, #2
	adds r6, r3, r0
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0
	beq _080CD8C4
	movs r0, #0x20
	subs r1, r0, r5
	movs r2, #0
_080CD8AA:
	ldr r0, [r3]
	lsls r0, r5
	orrs r0, r2
	stm r4!, {r0}
	ldm r3!, {r2}
	lsrs r2, r1
	cmp r3, r6
	blo _080CD8AA
	str r2, [r4]
	cmp r2, #0
	beq _080CD8CC
	adds r7, #1
	b _080CD8CC
_080CD8C4:
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r3, r6
	blo _080CD8C4
_080CD8CC:
	subs r0, r7, #1
	mov r2, sb
	str r0, [r2, #0x10]
	mov r0, sl
	mov r1, r8
	bl sub_80CD420
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_80CD8E8
sub_80CD8E8: @ 0x080CD8E8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r0, [r2, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bne _080CD924
	adds r4, r2, #0
	adds r4, #0x14
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r0, r5, #0
	adds r0, #0x14
	adds r1, r0, r1
_080CD906:
	subs r3, #4
	subs r1, #4
	ldr r0, [r3]
	ldr r2, [r1]
	cmp r0, r2
	beq _080CD91E
	movs r1, #1
	cmp r0, r2
	bhs _080CD91A
	subs r1, #2
_080CD91A:
	adds r0, r1, #0
	b _080CD924
_080CD91E:
	cmp r3, r4
	bhi _080CD906
	movs r0, #0
_080CD924:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_80CD928
sub_80CD928: @ 0x080CD928
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r0, r5, #0
	mov r1, r8
	bl sub_80CD8E8
	adds r4, r0, #0
	cmp r4, #0
	bne _080CD95A
	adds r0, r6, #0
	movs r1, #0
	bl sub_80CD3C8
	adds r7, r0, #0
	movs r0, #1
	str r0, [r7, #0x10]
	str r4, [r7, #0x14]
	b _080CDA0A
_080CD95A:
	cmp r4, #0
	bge _080CD968
	adds r7, r5, #0
	mov r5, r8
	mov r8, r7
	movs r4, #1
	b _080CD96A
_080CD968:
	movs r4, #0
_080CD96A:
	ldr r1, [r5, #4]
	adds r0, r6, #0
	bl sub_80CD3C8
	adds r7, r0, #0
	str r4, [r7, #0xc]
	ldr r0, [r5, #0x10]
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0x14
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r3, #0x14
	add r3, r8
	mov ip, r3
	lsls r0, r0, #2
	add r0, ip
	str r0, [sp]
	adds r4, r7, #0
	adds r4, #0x14
	movs r5, #0
	ldr r0, _080CD9F4 @ =0x0000FFFF
	mov r8, r0
_080CD99E:
	ldm r6!, {r1}
	str r1, [sp, #4]
	mov r3, r8
	ands r1, r3
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r2}
	adds r0, r2, #0
	ands r0, r3
	subs r1, r1, r0
	adds r0, r1, r5
	asrs r5, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r3, r1, #0x10
	lsrs r2, r2, #0x10
	subs r3, r3, r2
	adds r1, r3, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	ldr r3, [sp]
	cmp ip, r3
	blo _080CD99E
	cmp r6, sl
	bhs _080CD9FE
	ldr r2, _080CD9F4 @ =0x0000FFFF
_080CD9D8:
	ldm r6!, {r1}
	adds r0, r1, #0
	ands r0, r2
	adds r0, r0, r5
	asrs r5, r0, #0x10
	lsrs r1, r1, #0x10
	adds r1, r1, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	cmp r6, sl
	blo _080CD9D8
	b _080CD9FE
	.align 2, 0
_080CD9F4: .4byte 0x0000FFFF
_080CD9F8:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
_080CD9FE:
	subs r4, #4
	ldr r0, [r4]
	cmp r0, #0
	beq _080CD9F8
	mov r1, sb
	str r1, [r7, #0x10]
_080CDA0A:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_80CDA18
sub_80CDA18: @ 0x080CDA18
	push {r4, lr}
	ldr r2, _080CDA2C @ =0x7FF00000
	ands r2, r0
	ldr r0, _080CDA30 @ =0xFCC00000
	adds r2, r2, r0
	cmp r2, #0
	ble _080CDA34
	adds r3, r2, #0
	movs r4, #0
	b _080CDA5E
	.align 2, 0
_080CDA2C: .4byte 0x7FF00000
_080CDA30: .4byte 0xFCC00000
_080CDA34:
	rsbs r0, r2, #0
	asrs r2, r0, #0x14
	cmp r2, #0x13
	bgt _080CDA48
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r3, r0, #0
	asrs r3, r2
	movs r4, #0
	b _080CDA5E
_080CDA48:
	movs r3, #0
	subs r2, #0x14
	cmp r2, #0x1e
	bgt _080CDA5A
	movs r0, #0x1f
	subs r0, r0, r2
	movs r1, #1
	lsls r1, r0
	b _080CDA5C
_080CDA5A:
	movs r1, #1
_080CDA5C:
	adds r4, r1, #0
_080CDA5E:
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}

	thumb_func_start sub_80CDA64
sub_80CDA64: @ 0x080CDA64
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r1, #0
	movs r1, #0x14
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r5, r1, r0
	subs r5, #4
	ldr r2, [r5]
	adds r0, r2, #0
	str r2, [sp]
	bl sub_80CD554
	adds r3, r0, #0
	movs r0, #0x20
	subs r0, r0, r3
	str r0, [r4]
	ldr r2, [sp]
	cmp r3, #0xa
	bgt _080CDAC4
	movs r0, #0xb
	subs r0, r0, r3
	adds r1, r2, #0
	lsrs r1, r0
	ldr r0, _080CDAAC @ =0x3FF00000
	adds r6, r1, #0
	orrs r6, r0
	cmp r5, r8
	bls _080CDAB0
	subs r5, #4
	ldr r1, [r5]
	b _080CDAB2
	.align 2, 0
_080CDAAC: .4byte 0x3FF00000
_080CDAB0:
	movs r1, #0
_080CDAB2:
	adds r0, r3, #0
	adds r0, #0x15
	lsls r2, r0
	movs r0, #0xb
	subs r0, r0, r3
	lsrs r1, r0
	adds r7, r2, #0
	orrs r7, r1
	b _080CDB10
_080CDAC4:
	cmp r5, r8
	bls _080CDACE
	subs r5, #4
	ldr r4, [r5]
	b _080CDAD0
_080CDACE:
	movs r4, #0
_080CDAD0:
	subs r3, #0xb
	cmp r3, #0
	beq _080CDB08
	lsls r2, r3
	movs r0, #0x20
	subs r0, r0, r3
	adds r1, r4, #0
	lsrs r1, r0
	ldr r0, _080CDAF4 @ =0x3FF00000
	orrs r1, r0
	adds r6, r2, #0
	orrs r6, r1
	cmp r5, r8
	bls _080CDAF8
	subs r5, #4
	ldr r2, [r5]
	b _080CDAFA
	.align 2, 0
_080CDAF4: .4byte 0x3FF00000
_080CDAF8:
	movs r2, #0
_080CDAFA:
	lsls r4, r3
	movs r0, #0x20
	subs r0, r0, r3
	lsrs r2, r0
	adds r7, r4, #0
	orrs r7, r2
	b _080CDB10
_080CDB08:
	ldr r0, _080CDB1C @ =0x3FF00000
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r4, #0
_080CDB10:
	adds r1, r7, #0
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CDB1C: .4byte 0x3FF00000

	thumb_func_start sub_80CDB20
sub_80CDB20: @ 0x080CDB20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r3
	ldr r3, [sp, #0x28]
	mov sl, r3
	adds r5, r2, #0
	adds r4, r1, #0
	movs r1, #1
	bl sub_80CD3C8
	adds r6, r0, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	ldr r2, _080CDB88 @ =0x000FFFFF
	adds r1, r4, #0
	ands r2, r1
	str r2, [sp, #4]
	ldr r0, _080CDB8C @ =0x7FFFFFFF
	ands r4, r0
	lsrs r7, r4, #0x14
	cmp r7, #0
	beq _080CDB5E
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r0, r2
	str r0, [sp, #4]
_080CDB5E:
	str r5, [sp]
	cmp r5, #0
	beq _080CDBA8
	mov r0, sp
	bl sub_80CD5AC
	adds r2, r0, #0
	cmp r2, #0
	beq _080CDB90
	movs r0, #0x20
	subs r0, r0, r2
	ldr r1, [sp, #4]
	lsls r1, r0
	ldr r0, [sp]
	orrs r0, r1
	str r0, [r6, #0x14]
	ldr r0, [sp, #4]
	lsrs r0, r2
	str r0, [sp, #4]
	b _080CDB94
	.align 2, 0
_080CDB88: .4byte 0x000FFFFF
_080CDB8C: .4byte 0x7FFFFFFF
_080CDB90:
	ldr r0, [sp]
	str r0, [r6, #0x14]
_080CDB94:
	ldr r0, [sp, #4]
	mov r1, r8
	str r0, [r1, #4]
	movs r1, #1
	cmp r0, #0
	beq _080CDBA2
	movs r1, #2
_080CDBA2:
	str r1, [r6, #0x10]
	adds r4, r1, #0
	b _080CDBBC
_080CDBA8:
	add r0, sp, #4
	bl sub_80CD5AC
	adds r2, r0, #0
	ldr r0, [sp, #4]
	str r0, [r6, #0x14]
	movs r0, #1
	str r0, [r6, #0x10]
	movs r4, #1
	adds r2, #0x20
_080CDBBC:
	cmp r7, #0
	beq _080CDBD8
	ldr r3, _080CDBD4 @ =0xFFFFFBCD
	adds r0, r2, r3
	adds r0, r7, r0
	mov r1, sb
	str r0, [r1]
	movs r0, #0x35
	subs r0, r0, r2
	mov r3, sl
	str r0, [r3]
	b _080CDBF4
	.align 2, 0
_080CDBD4: .4byte 0xFFFFFBCD
_080CDBD8:
	ldr r1, _080CDC04 @ =0xFFFFFBCE
	adds r0, r2, r1
	mov r3, sb
	str r0, [r3]
	lsls r0, r4, #2
	add r0, r8
	subs r0, #4
	ldr r0, [r0]
	bl sub_80CD554
	lsls r1, r4, #5
	subs r1, r1, r0
	mov r0, sl
	str r1, [r0]
_080CDBF4:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CDC04: .4byte 0xFFFFFBCE

	thumb_func_start sub_80CDC08
sub_80CDC08: @ 0x080CDC08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	bl sub_80CDA64
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #4
	adds r0, r5, #0
	bl sub_80CDA64
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r2, [sp]
	ldr r0, [sp, #4]
	subs r2, r2, r0
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r0, r2, r0
	cmp r0, #0
	ble _080CDC44
	lsls r0, r0, #0x14
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #8]
	b _080CDC48
_080CDC44:
	lsls r0, r0, #0x14
	subs r6, r6, r0
_080CDC48:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_80C9424
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_80CDC58
sub_80CDC58: @ 0x080CDC58
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080CDC74 @ =0x00000000
	ldr r0, _080CDC70 @ =0x3FF00000
	cmp r4, #0x17
	bgt _080CDC7C
	ldr r0, _080CDC78 @ =gUnknown_08E2E878
	lsls r1, r4, #3
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	b _080CDC8E
	.align 2, 0
_080CDC70: .4byte 0x3FF00000
_080CDC74: .4byte 0x00000000
_080CDC78: .4byte gUnknown_08E2E878
_080CDC7C:
	cmp r4, #0
	ble _080CDC8E
_080CDC80:
	ldr r3, _080CDC94 @ =0x00000000
	ldr r2, _080CDC90 @ =0x40240000
	bl sub_80C917C
	subs r4, #1
	cmp r4, #0
	bgt _080CDC80
_080CDC8E:
	pop {r4, pc}
	.align 2, 0
_080CDC90: .4byte 0x40240000
_080CDC94: .4byte 0x00000000

	thumb_func_start sub_80CDC98
sub_80CDC98: @ 0x080CDC98
	ldr r3, _080CDCB4 @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _080CDCB8 @ =0x7FF00000
	subs r3, r0, r3
	rsbs r0, r3, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	movs r0, #1
	subs r0, r0, r3
	bx lr
	.align 2, 0
_080CDCB4: .4byte 0x7FFFFFFF
_080CDCB8: .4byte 0x7FF00000

	thumb_func_start sub_80CDCBC
sub_80CDCBC: @ 0x080CDCBC
	ldr r3, _080CDCD4 @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _080CDCD8 @ =0x7FF00000
	subs r3, r0, r3
	lsrs r3, r3, #0x1f
	adds r0, r3, #0
	bx lr
	.align 2, 0
_080CDCD4: .4byte 0x7FFFFFFF
_080CDCD8: .4byte 0x7FF00000

	thumb_func_start sub_80CDCDC
sub_80CDCDC: @ 0x080CDCDC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080CDD04 @ =gUnknown_03006C48
	movs r1, #0
	str r1, [r4]
	bl sub_80CE22C
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CDCFE
	ldr r0, [r4]
	cmp r0, #0
	beq _080CDCFE
	str r0, [r5]
_080CDCFE:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CDD04: .4byte gUnknown_03006C48

	thumb_func_start sub_80CDD08
sub_80CDD08: @ 0x080CDD08
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl sub_80CE408
	adds r1, r0, #0
	cmp r1, #0
	blt _080CDD2A
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	b _080CDD32
_080CDD2A:
	ldr r0, _080CDD38 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
_080CDD32:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CDD38: .4byte 0xFFFFEFFF

	thumb_func_start sub_80CDD3C
sub_80CDD3C: @ 0x080CDD3C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080CDD5E
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	movs r2, #0
	movs r3, #2
	bl sub_80CE3D8
_080CDD5E:
	ldr r0, _080CDD78 @ =0xFFFFEFFF
	ldrh r1, [r4, #0xc]
	ands r0, r1
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_80CE2D0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080CDD78: .4byte 0xFFFFEFFF

	thumb_func_start sub_80CDD7C
sub_80CDD7C: @ 0x080CDD7C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl sub_80CE3D8
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CDDA8
	ldr r0, _080CDDA4 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
	b _080CDDB6
	.align 2, 0
_080CDDA4: .4byte 0xFFFFEFFF
_080CDDA8:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r5, #0xc]
	orrs r0, r2
	strh r0, [r5, #0xc]
	str r1, [r5, #0x50]
_080CDDB6:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_80CDDBC
sub_80CDDBC: @ 0x080CDDBC
	push {lr}
	ldr r2, [r0, #0x54]
	movs r3, #0xe
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl sub_80CE358
	pop {pc}

	thumb_func_start sub_80CDDCC
sub_80CDDCC: @ 0x080CDDCC
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	orrs r0, r3
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080CDE12
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _080CDE12
	ldr r5, _080CDDF8 @ =0xFEFEFEFF
	ldr r4, _080CDDFC @ =0x80808080
_080CDDE8:
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	beq _080CDE00
	movs r0, #0
	b _080CDE24
	.align 2, 0
_080CDDF8: .4byte 0xFEFEFEFF
_080CDDFC: .4byte 0x80808080
_080CDE00:
	adds r2, #4
	adds r3, #4
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _080CDDE8
	b _080CDE12
_080CDE0E:
	adds r2, #1
	adds r3, #1
_080CDE12:
	ldrb r0, [r2]
	cmp r0, #0
	beq _080CDE1E
	ldrb r1, [r3]
	cmp r0, r1
	beq _080CDE0E
_080CDE1E:
	ldrb r2, [r2]
	ldrb r3, [r3]
	subs r0, r2, r3
_080CDE24:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_80CDE28
sub_80CDE28: @ 0x080CDE28
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080CDE60
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _080CDE44 @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _080CDE48 @ =0x80808080
	b _080CDE54
	.align 2, 0
_080CDE44: .4byte 0xFEFEFEFF
_080CDE48: .4byte 0x80808080
_080CDE4C:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_080CDE54:
	ands r0, r3
	cmp r0, #0
	beq _080CDE4C
	adds r1, r2, #0
	b _080CDE60
_080CDE5E:
	adds r1, #1
_080CDE60:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080CDE5E
	subs r0, r1, r5
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_80CDE6C
sub_80CDE6C: @ 0x080CDE6C
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _080CDE74 @ =0x03000488
	b _080CDE80
	.align 2, 0
_080CDE74: .4byte 0x03000488
_080CDE78:
	adds r2, #8
	adds r1, #1
	cmp r1, #0x13
	bgt _080CDE86
_080CDE80:
	ldr r0, [r2]
	cmp r0, r3
	bne _080CDE78
_080CDE86:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_80CDE8C
sub_80CDE8C: @ 0x080CDE8C
	adds r2, r0, #0
	ldr r0, _080CDEA0 @ =gUnknown_08E7ED98
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _080CDEA8
	ldr r0, _080CDEA4 @ =0x0300047C
	b _080CDECE
	.align 2, 0
_080CDEA0: .4byte gUnknown_08E7ED98
_080CDEA4: .4byte 0x0300047C
_080CDEA8:
	ldr r0, [r1, #8]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _080CDEBC
	ldr r0, _080CDEB8 @ =0x03000480
	b _080CDECE
	.align 2, 0
_080CDEB8: .4byte 0x03000480
_080CDEBC:
	ldr r0, [r1, #0xc]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	cmp r2, r0
	beq _080CDECC
	adds r0, r2, #0
	subs r0, #0x20
	b _080CDED0
_080CDECC:
	ldr r0, _080CDED4 @ =0x03000484
_080CDECE:
	ldr r0, [r0]
_080CDED0:
	bx lr
	.align 2, 0
_080CDED4: .4byte 0x03000484

	thumb_func_start sub_80CDED8
sub_80CDED8: @ 0x080CDED8
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, _080CDF34 @ =gUnknown_08E2E990
	str r4, [sp]
	movs r3, #3
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
	movs r5, #1
	adds r0, r5, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r5, _080CDF38 @ =0x0300047C
	str r2, [r5]
	str r4, [sp]
	str r3, [sp, #8]
	movs r0, #4
	str r0, [sp, #4]
	ldr r3, _080CDF3C @ =0x03000480
	movs r4, #1
	adds r0, r4, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r0, _080CDF40 @ =0x03000484
	str r2, [r0]
	str r2, [r3]
	ldr r2, _080CDF44 @ =0x03000488
	adds r1, r2, #0
	subs r4, #2
	adds r0, r2, #0
	adds r0, #0x98
_080CDF1A:
	str r4, [r0]
	subs r0, #8
	cmp r0, r1
	bge _080CDF1A
	movs r0, #0
	ldr r1, [r5]
	str r1, [r2]
	str r0, [r2, #4]
	ldr r1, [r3]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_080CDF34: .4byte gUnknown_08E2E990
_080CDF38: .4byte 0x0300047C
_080CDF3C: .4byte 0x03000480
_080CDF40: .4byte 0x03000484
_080CDF44: .4byte 0x03000488

	thumb_func_start sub_80CDF48
sub_80CDF48: @ 0x080CDF48
	push {r4, lr}
	movs r3, #0x13
	movs r4, #0
	adds r0, r3, #0
	adds r1, r4, #0
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_80CDF5C
sub_80CDF5C: @ 0x080CDF5C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_80CA3A4
	adds r4, r0, #0
	bl sub_80CDF48
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start sub_80CDF70
sub_80CDF70: @ 0x080CDF70
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080CDF80
	adds r0, r1, #0
	b _080CDF86
_080CDF80:
	adds r0, r1, #0
	bl sub_80CDF5C
_080CDF86:
	pop {pc}

	thumb_func_start sub_80CDF88
sub_80CDF88: @ 0x080CDF88
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_80CDE8C
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #6
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_80CDFAC
sub_80CDFAC: @ 0x080CDFAC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl sub_80CDE8C
	bl sub_80CDE6C
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_80CDF88
	cmp r0, #0
	bge _080CDFD6
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_80CDF5C
	b _080CDFEC
_080CDFD6:
	subs r2, r7, r0
	cmp r6, #0x14
	beq _080CDFEA
	ldr r0, _080CDFF0 @ =0x03000488
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_080CDFEA:
	adds r0, r2, #0
_080CDFEC:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CDFF0: .4byte 0x03000488

	thumb_func_start sub_80CDFF4
sub_80CDFF4: @ 0x080CDFF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	bl sub_80CDE8C
	adds r7, r0, #0
	bl sub_80CDE6C
	adds r6, r0, #0
	cmp r4, #1
	bne _080CE02A
	cmp r6, #0x14
	bne _080CE01C
	movs r0, #1
	rsbs r0, r0, #0
	b _080CE06C
_080CE01C:
	ldr r0, _080CE074 @ =0x03000488
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r5, r5, r0
	movs r4, #0
_080CE02A:
	cmp r4, #2
	bne _080CE03C
	str r7, [sp]
	movs r3, #0xc
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r5, r5, r2
_080CE03C:
	mov r0, r8
	bl sub_80CDE8C
	str r0, [sp]
	str r5, [sp, #4]
	movs r3, #0xa
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	cmp r6, #0x14
	beq _080CE062
	cmp r2, #0
	bne _080CE062
	ldr r0, _080CE074 @ =0x03000488
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	str r5, [r1]
_080CE062:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, #0
	bne _080CE06C
	adds r0, r5, #0
_080CE06C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CE074: .4byte 0x03000488

	thumb_func_start sub_80CE078
sub_80CE078: @ 0x080CE078
	push {lr}
	bl sub_80CDFF4
	bl sub_80CDF70
	pop {pc}

	thumb_func_start sub_80CE084
sub_80CE084: @ 0x080CE084
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_80CDE8C
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #5
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_80CE0A8
sub_80CE0A8: @ 0x080CE0A8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_80CDE8C
	bl sub_80CDE6C
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80CE084
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080CE0D0
	cmp r0, r6
	bne _080CE0D8
_080CE0D0:
	adds r0, r1, #0
	bl sub_80CDF5C
	b _080CE0EE
_080CE0D8:
	subs r2, r6, r0
	cmp r7, #0x14
	beq _080CE0EC
	ldr r0, _080CE0F0 @ =0x03000488
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_080CE0EC:
	adds r0, r2, #0
_080CE0EE:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080CE0F0: .4byte 0x03000488

	thumb_func_start sub_80CE0F4
sub_80CE0F4: @ 0x080CE0F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	bl sub_80CDE6C
	mov r8, r0
	cmp r0, #0x14
	bne _080CE116
	adds r0, r6, #0
	b _080CE18A
_080CE116:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080CE120
	movs r5, #2
_080CE120:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080CE12E
	movs r0, #4
	orrs r5, r0
_080CE12E:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080CE13C
	movs r0, #4
	orrs r5, r0
_080CE13C:
	movs r1, #8
	ands r4, r1
	cmp r4, #0
	beq _080CE14C
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	orrs r5, r1
_080CE14C:
	str r7, [sp]
	adds r0, r7, #0
	bl sub_80CDE28
	str r0, [sp, #8]
	str r5, [sp, #4]
	movs r2, #1
	adds r0, r2, #0
	mov r1, sp
	svc #0xab
	adds r3, r0, #0
	cmp r3, #0
	blt _080CE184
	ldr r0, _080CE180 @ =0x03000488
	mov r1, r8
	lsls r2, r1, #3
	adds r1, r2, r0
	str r3, [r1]
	adds r0, #4
	adds r2, r2, r0
	movs r0, #0
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0x20
	b _080CE18A
	.align 2, 0
_080CE180: .4byte 0x03000488
_080CE184:
	adds r0, r3, #0
	bl sub_80CDF5C
_080CE18A:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_80CE194
sub_80CE194: @ 0x080CE194
	push {r1, r2, r3}
	push {lr}
	ldr r1, [sp, #4]
	bl sub_80CE0F4
	bl sub_80CDF70
	pop {r3}
	add sp, #0xc
	bx r3

	thumb_func_start sub_80CE1A8
sub_80CE1A8: @ 0x080CE1A8
	push {lr}
	sub sp, #4
	bl sub_80CDE8C
	str r0, [sp]
	bl sub_80CDE6C
	adds r1, r0, #0
	cmp r1, #0x14
	beq _080CE1C8
	ldr r0, _080CE1D8 @ =0x03000488
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_080CE1C8:
	movs r3, #2
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #4
	pop {pc}
	.align 2, 0
_080CE1D8: .4byte 0x03000488

	thumb_func_start sub_80CE1DC
sub_80CE1DC: @ 0x080CE1DC
	push {lr}
	bl sub_80CE1A8
	bl sub_80CDF70
	pop {pc}

	thumb_func_start sub_80CE1E8
sub_80CE1E8: @ 0x080CE1E8
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080CE204 @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080CE204: .4byte 0x00020026

	thumb_func_start sub_80CE208
sub_80CE208: @ 0x080CE208
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080CE224 @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080CE224: .4byte 0x00020026

    thumb_func_start sub_80CE228
sub_80CE228: @ 0x080CE228
    movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_80CE22C
sub_80CE22C: @ 0x080CE22C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _080CE25C @ =0x03000478
	ldr r0, [r4]
	cmp r0, #0
	bne _080CE23C
	ldr r0, _080CE260 @ =iwram_end
	str r0, [r4]
_080CE23C:
	ldr r5, [r4]
	adds r0, r5, r6
	cmp r0, sp
	bls _080CE252
	ldr r1, _080CE264 @ =gUnknown_08E2E994
	movs r0, #1
	movs r2, #0x20
	bl sub_80CE0A8
	bl sub_80CE3B0
_080CE252:
	ldr r0, [r4]
	adds r0, r0, r6
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080CE25C: .4byte 0x03000478
_080CE260: .4byte iwram_end
_080CE264: .4byte gUnknown_08E2E994

	thumb_func_start sub_80CE268
sub_80CE268: @ 0x080CE268
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_80CE274
sub_80CE274: @ 0x080CE274
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_80CE27C
sub_80CE27C: @ 0x080CE27C
	bx lr
	.align 2, 0

	thumb_func_start sub_80CE280
sub_80CE280: @ 0x080CE280
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _080CE29E
	movs r4, #0x11
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r5, r0, #0
	adds r4, r5, #0
	str r4, [r2]
	movs r0, #0
	str r0, [r2, #4]
_080CE29E:
	cmp r3, #0
	beq _080CE2A8
	movs r0, #0
	str r0, [r3]
	str r0, [r3, #4]
_080CE2A8:
	movs r0, #0
	pop {r4, r5, pc}

	thumb_func_start sub_80CE2AC
sub_80CE2AC: @ 0x080CE2AC
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0x10
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r3, r0, #0
	cmp r2, #0
	beq _080CE2CA
	str r3, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
_080CE2CA:
	adds r0, r3, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_80CE2D0
sub_80CE2D0: @ 0x080CE2D0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _080CE2FC @ =gUnknown_03006C48
	movs r3, #0
	str r3, [r4]
	bl sub_80CE0A8
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CE2F6
	ldr r0, [r4]
	cmp r0, #0
	beq _080CE2F6
	str r0, [r5]
_080CE2F6:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CE2FC: .4byte gUnknown_03006C48

	thumb_func_start sub_80CE300
sub_80CE300: @ 0x080CE300
	push {r4, lr}
	muls r1, r2, r1
	bl sub_80CCECC
	adds r4, r0, #0
	cmp r4, #0
	bne _080CE312
	movs r0, #0
	b _080CE356
_080CE312:
	adds r0, r4, #0
	subs r0, #8
	ldr r0, [r0, #4]
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	subs r2, r0, #4
	cmp r2, #0x24
	bhi _080CE34C
	adds r1, r4, #0
	cmp r2, #0x13
	bls _080CE342
	movs r0, #0
	stm r1!, {r0}
	str r0, [r4, #4]
	adds r1, #4
	cmp r2, #0x1b
	bls _080CE342
	stm r1!, {r0}
	stm r1!, {r0}
	cmp r2, #0x23
	bls _080CE342
	stm r1!, {r0}
	stm r1!, {r0}
_080CE342:
	movs r0, #0
	stm r1!, {r0}
	stm r1!, {r0}
	str r0, [r1]
	b _080CE354
_080CE34C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_80CA410
_080CE354:
	adds r0, r4, #0
_080CE356:
	pop {r4, pc}

	thumb_func_start sub_80CE358
sub_80CE358: @ 0x080CE358
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080CE380 @ =gUnknown_03006C48
	movs r1, #0
	str r1, [r4]
	bl sub_80CE1DC
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CE37A
	ldr r0, [r4]
	cmp r0, #0
	beq _080CE37A
	str r0, [r5]
_080CE37A:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CE380: .4byte gUnknown_03006C48

	thumb_func_start sub_80CE384
sub_80CE384: @ 0x080CE384
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r4, _080CE3AC @ =gUnknown_03006C48
	movs r2, #0
	str r2, [r4]
	bl sub_80CE268
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CE3A8
	ldr r0, [r4]
	cmp r0, #0
	beq _080CE3A8
	str r0, [r5]
_080CE3A8:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CE3AC: .4byte gUnknown_03006C48

	thumb_func_start sub_80CE3B0
sub_80CE3B0: @ 0x080CE3B0
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080CE3CC @ =0x00020022
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080CE3CC: .4byte 0x00020022

	thumb_func_start sub_80CE3D0
sub_80CE3D0: @ 0x080CE3D0
	movs r0, #1
	bx lr

	thumb_func_start sub_80CE3D4
sub_80CE3D4: @ 0x080CE3D4
	bx lr
	.align 2, 0

	thumb_func_start sub_80CE3D8
sub_80CE3D8: @ 0x080CE3D8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _080CE404 @ =gUnknown_03006C48
	movs r3, #0
	str r3, [r4]
	bl sub_80CE078
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CE3FE
	ldr r0, [r4]
	cmp r0, #0
	beq _080CE3FE
	str r0, [r5]
_080CE3FE:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CE404: .4byte gUnknown_03006C48

	thumb_func_start sub_80CE408
sub_80CE408: @ 0x080CE408
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _080CE434 @ =gUnknown_03006C48
	movs r3, #0
	str r3, [r4]
	bl sub_80CDFAC
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080CE42E
	ldr r0, [r4]
	cmp r0, #0
	beq _080CE42E
	str r0, [r5]
_080CE42E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080CE434: .4byte gUnknown_03006C48
