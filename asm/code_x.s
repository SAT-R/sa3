.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ TODO: This *might* be part of the special_stage module.

	thumb_func_start sub_80B75E4
sub_80B75E4: @ 0x080B75E4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r4, r7, #0
	adds r4, #0x1c
	bl sub_80B77D0
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_80B8E10
	ldr r1, _080B7628 @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	beq _080B762C
	cmp r0, #9
	beq _080B762C
	ldrb r0, [r1, #9]
	cmp r0, #7
	beq _080B762C
	adds r0, r4, #0
	bl sub_80B8E5C
	cmp r0, #0
	beq _080B762C
	ldr r1, [r4, #0x2c]
	ldr r2, [r4, #0x30]
	adds r0, r4, #0
	bl sub_80B8DA8
	b _080B76C0
	.align 2, 0
_080B7628: .4byte gStageData
_080B762C:
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	ldr r2, _080B76B8 @ =0xFFFFF400
	cmp r0, #0
	beq _080B763C
	movs r2, #0xc0
	lsls r2, r2, #4
_080B763C:
	movs r1, #8
	ldrsh r0, [r7, r1]
	ldr r1, [r5, #0x10]
	adds r1, r1, r0
	adds r1, r1, r2
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	ldr r2, [r5, #0x14]
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_80B8DA8
	ldr r3, [r4, #0xc]
	ldr r2, [r6, #0x10]
	ldr r1, [r4, #0x10]
	ldr r0, [r6, #0x14]
	subs r1, r1, r0
	subs r3, r3, r2
	cmp r3, #0
	bge _080B7666
	rsbs r3, r3, #0
_080B7666:
	ldr r0, _080B76BC @ =0x000017FF
	cmp r3, r0
	bgt _080B76C0
	cmp r1, #0
	bge _080B7672
	rsbs r1, r1, #0
_080B7672:
	cmp r1, r0
	bgt _080B76C0
	adds r0, r4, #0
	movs r1, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	beq _080B7688
	b _080B77C4
_080B7688:
	adds r0, r4, #0
	movs r1, #5
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	beq _080B769A
	b _080B77C4
_080B769A:
	adds r0, r4, #0
	movs r1, #1
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8CAC
	cmp r0, #0
	bne _080B76AC
	b _080B77C4
_080B76AC:
	adds r0, r4, #0
	movs r1, #1
	bl sub_80B8D18
	b _080B77C4
	.align 2, 0
_080B76B8: .4byte 0xFFFFF400
_080B76BC: .4byte 0x000017FF
_080B76C0:
	adds r0, r4, #0
	bl sub_80B8DC8
	ldr r1, _080B77CC @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	beq _080B7728
	cmp r0, #9
	beq _080B7728
	ldrb r0, [r1, #9]
	cmp r0, #7
	beq _080B7728
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0x11
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0x10
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0x12
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
_080B7728:
	adds r0, r4, #0
	movs r1, #9
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0xc
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0xd
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #8
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #7
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #3
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #2
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #1
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
_080B77C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B77CC: .4byte gStageData

	thumb_func_start sub_80B77D0
sub_80B77D0: @ 0x080B77D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r3, r1, #0
	adds r7, r2, #0
	ldr r0, [r6, #0xc]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0x3f
	bne _080B7866
	ldr r4, _080B7844 @ =gPseudoRandom
	ldr r0, [r4]
	ldr r1, _080B7848 @ =0x00196225
	mov sb, r1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, _080B784C @ =0x3C6EF35F
	mov r8, r1
	adds r2, r0, r1
	str r2, [r4]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r2
	mov ip, r4
	cmp r0, #0
	bne _080B7866
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r5, #0xf
	adds r3, r5, #0
	ands r3, r0
	cmp r3, #2
	bne _080B7828
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080B782C
_080B7828:
	cmp r3, #1
	bne _080B7854
_080B782C:
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _080B7848 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B784C @ =0x3C6EF35F
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x13
	ldr r1, _080B7850 @ =0xFFFFF000
	b _080B7862
	.align 2, 0
_080B7844: .4byte gPseudoRandom
_080B7848: .4byte 0x00196225
_080B784C: .4byte 0x3C6EF35F
_080B7850: .4byte 0xFFFFF000
_080B7854:
	mov r0, sb
	muls r0, r2, r0
	add r0, r8
	str r0, [r4]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x12
	ldr r1, _080B7874 @ =0xFFFFE000
_080B7862:
	adds r0, r0, r1
	strh r0, [r6, #8]
_080B7866:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7874: .4byte 0xFFFFE000

	thumb_func_start sub_80B7878
sub_80B7878: @ 0x080B7878
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	adds r1, #0x4a
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r5, _080B78B4 @ =gPseudoRandom
	cmp r0, #0
	beq _080B78A0
	ldr r1, [r5]
	ldr r0, _080B78B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B78BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #4
	movs r1, #0xff
	ands r0, r1
	adds r0, #0x1e
	strh r0, [r4, #0x18]
_080B78A0:
	movs r0, #0x16
	ldrsh r3, [r4, r0]
	ldrh r0, [r2, #0x20]
	movs r1, #0xc1
	rsbs r1, r1, #0
	ands r0, r1
	cmp r0, #0
	beq _080B78C0
	adds r3, #0x5a
	b _080B78CA
	.align 2, 0
_080B78B4: .4byte gPseudoRandom
_080B78B8: .4byte 0x00196225
_080B78BC: .4byte 0x3C6EF35F
_080B78C0:
	ldrh r0, [r2, #0x1e]
	ands r0, r1
	cmp r0, #0
	beq _080B78CA
	adds r3, #2
_080B78CA:
	ldr r1, [r5]
	ldr r0, _080B790C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7910 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #4
	movs r1, #0xff
	ands r0, r1
	adds r1, r0, #0
	adds r1, #0x78
	cmp r1, r3
	ble _080B78E6
	adds r1, r3, #0
_080B78E6:
	strh r1, [r4, #0x16]
	lsls r0, r1, #0x10
	cmp r0, #0
	beq _080B78F4
	movs r6, #1
	subs r0, r1, #1
	strh r0, [r4, #0x16]
_080B78F4:
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080B7904
	movs r6, #0
	subs r0, r1, #1
	strh r0, [r4, #0x18]
_080B7904:
	strh r6, [r4, #0x14]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B790C: .4byte 0x00196225
_080B7910: .4byte 0x3C6EF35F

@ void sub_80B7914(Struc_3001150 *strc);
	thumb_func_start sub_80B7914
sub_80B7914: @ 0x080B7914
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080B7940 @ =0x040000D4
	ldr r0, _080B7944 @ =gUnknown_08E2EFA8
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _080B7948 @ =0x8400011A
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x1c
	bl sub_80B8C2C
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80B9744
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B7940: .4byte 0x040000D4
_080B7944: .4byte gUnknown_08E2EFA8
_080B7948: .4byte 0x8400011A

	thumb_func_start sub_80B794C
sub_80B794C: @ 0x080B794C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x1c
	bl sub_80B8C6C
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_80B9770
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B7968
sub_80B7968: @ 0x080B7968
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	movs r0, #0x1c
	adds r0, r0, r5
	mov sb, r0
	ldr r4, [r5]
	adds r0, r5, #0
	bl sub_80B79C8
	ldr r0, _080B79C4 @ =gUnknown_08E2F410
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r3, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	bl _call_via_r3
	mov r0, sb
	adds r1, r6, #0
	mov r2, r8
	bl sub_80B8C70
	mov r0, sb
	bl sub_80B8E54
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_80B7878
	ldr r0, [r5, #0xc]
	adds r0, #1
	str r0, [r5, #0xc]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B79C4: .4byte gUnknown_08E2F410

	thumb_func_start sub_80B79C8
sub_80B79C8: @ 0x080B79C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #0x14]
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	subs r4, r0, r2
	subs r5, r1, r3
	mov r0, r8
	ldr r6, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r6, r0
	cmp r6, #0
	bne _080B7A84
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r1, sb
	bl sub_80B9774
	adds r1, r4, #0
	cmp r4, #0
	bge _080B7A08
	rsbs r1, r4, #0
_080B7A08:
	ldr r0, _080B7A20 @ =0x0002CFFF
	cmp r1, r0
	bgt _080B7A28
	adds r1, r5, #0
	cmp r5, #0
	bge _080B7A16
	rsbs r1, r5, #0
_080B7A16:
	ldr r0, _080B7A24 @ =0x0001DFFF
	cmp r1, r0
	bgt _080B7A28
	str r6, [r7, #0x10]
	b _080B7A84
	.align 2, 0
_080B7A20: .4byte 0x0002CFFF
_080B7A24: .4byte 0x0001DFFF
_080B7A28:
	ldr r0, [r7, #0x10]
	adds r0, #1
	str r0, [r7, #0x10]
	cmp r0, #0xef
	ble _080B7A84
	adds r1, r4, #0
	cmp r4, #0
	bge _080B7A3A
	rsbs r1, r4, #0
_080B7A3A:
	ldr r0, _080B7A74 @ =0x0002CFFF
	movs r3, #0
	cmp r1, r0
	ble _080B7A44
	adds r3, r4, #0
_080B7A44:
	adds r1, r5, #0
	cmp r5, #0
	bge _080B7A4C
	rsbs r1, r5, #0
_080B7A4C:
	ldr r0, _080B7A78 @ =0x0001DFFF
	movs r4, #0
	cmp r1, r0
	ble _080B7A56
	adds r4, r5, #0
_080B7A56:
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r2, r7, r0
	str r4, [sp]
	mov r0, r8
	mov r1, sb
	bl sub_80B9650
	adds r4, r0, #0
	cmp r4, #0
	beq _080B7A7C
	movs r0, #0
	str r0, [r7, #0x10]
	b _080B7A84
	.align 2, 0
_080B7A74: .4byte 0x0002CFFF
_080B7A78: .4byte 0x0001DFFF
_080B7A7C:
	mov r0, r8
	bl Player_HitWithoutRingsUpdate
	str r4, [r7, #0x10]
_080B7A84:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B7A94
sub_80B7A94: @ 0x080B7A94
	push {lr}
	adds r0, #0x1c
	bl sub_80B8E74
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_80B7AA4
sub_80B7AA4: @ 0x080B7AA4
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_80B7AAC
nullsub_80B7AAC:
    bx lr
    .align 2, 0

	thumb_func_start sub_80B7AB0
sub_80B7AB0: @ 0x080B7AB0
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xa1
	lsls r2, r2, #1
	adds r2, r2, r0
	mov ip, r2
	ldrb r2, [r2]
	lsls r2, r2, #1
	adds r4, r0, #0
	adds r4, #0x42
	adds r2, r4, r2
	ldrh r3, [r2]
	adds r2, r1, #0
	bics r2, r3
	adds r0, #0x40
	strh r2, [r0]
	mov r3, ip
	ldrb r0, [r3]
	adds r0, #1
	movs r2, #0x7f
	ands r0, r2
	strb r0, [r3]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r4, r4, r0
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80B7AEC
sub_80B7AEC: @ 0x080B7AEC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r4]
	cmp r0, #3
	beq _080B7B5C
	ldr r3, [r5, #4]
	movs r1, #4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080B7B5C
	ldr r0, [r2, #4]
	ands r0, r1
	cmp r0, #0
	beq _080B7B24
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r4, #0x28]
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r1, r0
	bge _080B7BEA
	movs r3, #0xf0
	lsls r3, r3, #4
	b _080B7BEA
_080B7B24:
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	cmp r1, #0x7a
	bne _080B7B52
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0x7a
	beq _080B7B4C
	ldr r1, [r4, #0x18]
	ldr r0, _080B7B48 @ =0xFFFFF800
	movs r3, #0xf0
	lsls r3, r3, #4
	cmp r1, r0
	bge _080B7BEA
	movs r3, #0xc0
	lsls r3, r3, #2
	b _080B7BEA
	.align 2, 0
_080B7B48: .4byte 0xFFFFF800
_080B7B4C:
	movs r3, #0x80
	lsls r3, r3, #1
	b _080B7BEA
_080B7B52:
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r3, r0
	cmp r3, #0
	beq _080B7B60
_080B7B5C:
	movs r0, #0
	b _080B7C06
_080B7B60:
	cmp r1, #0x21
	bne _080B7B88
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0x21
	beq _080B7B72
	movs r3, #0x80
	lsls r3, r3, #5
	b _080B7BEA
_080B7B72:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bge _080B7B7A
	rsbs r1, r1, #0
_080B7B7A:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080B7B82
	rsbs r0, r0, #0
_080B7B82:
	adds r0, r1, r0
	asrs r3, r0, #8
	b _080B7BEA
_080B7B88:
	movs r0, #0x1c
	ldrsh r1, [r5, r0]
	ldr r2, [r4, #0x14]
	adds r0, r2, #0
	eors r0, r1
	cmp r0, #0
	blt _080B7BD4
	lsls r1, r1, #6
	adds r0, r2, #0
	cmp r0, #0
	bge _080B7BA0
	rsbs r0, r0, #0
_080B7BA0:
	cmp r1, #0
	bge _080B7BA6
	rsbs r1, r1, #0
_080B7BA6:
	cmp r0, r1
	bge _080B7BC0
	movs r3, #0x80
	lsls r3, r3, #1
	ldr r1, [r4, #0x18]
	ldr r0, _080B7BBC @ =0xFFFFF800
	cmp r1, r0
	bgt _080B7BEA
	lsls r3, r3, #2
	b _080B7BEA
	.align 2, 0
_080B7BBC: .4byte 0xFFFFF800
_080B7BC0:
	movs r3, #0x20
	ldr r1, [r4, #0x18]
	ldr r0, _080B7BD0 @ =0xFFFFF800
	cmp r1, r0
	bgt _080B7BEA
	movs r3, #0x40
	b _080B7BEA
	.align 2, 0
_080B7BD0: .4byte 0xFFFFF800
_080B7BD4:
	ldr r1, [r4, #0x18]
	cmp r1, #0
	ble _080B7BDE
	movs r3, #0x20
	b _080B7BEA
_080B7BDE:
	ldr r0, _080B7C0C @ =0xFFFFF000
	movs r3, #0x80
	cmp r1, r0
	bgt _080B7BEA
	movs r3, #0x80
	lsls r3, r3, #2
_080B7BEA:
	ldr r2, _080B7C10 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B7C14 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7C18 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B7C04
	movs r1, #1
_080B7C04:
	adds r0, r1, #0
_080B7C06:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B7C0C: .4byte 0xFFFFF000
_080B7C10: .4byte gPseudoRandom
_080B7C14: .4byte 0x00196225
_080B7C18: .4byte 0x3C6EF35F

	thumb_func_start sub_80B7C1C
sub_80B7C1C: @ 0x080B7C1C
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrb r0, [r3]
	cmp r0, #7
	beq _080B7C40
	ldr r0, [r2, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080B7C40
	ldr r1, [r2, #0xc]
	movs r0, #6
	ands r1, r0
	cmp r1, #2
	beq _080B7C44
	cmp r1, #6
	beq _080B7C44
_080B7C40:
	movs r0, #0
	b _080B7CBE
_080B7C44:
	ldr r1, [r3, #0x14]
	adds r2, r1, #0
	cmp r1, #0
	bge _080B7C4E
	rsbs r2, r1, #0
_080B7C4E:
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r2, r0
	ble _080B7C78
	adds r0, r1, #0
	cmp r0, #0
	bge _080B7C5E
	rsbs r0, r0, #0
_080B7C5E:
	ldr r1, _080B7C74 @ =0xFFFF8800
	adds r0, r0, r1
	asrs r3, r0, #0xb
	adds r0, r3, #0
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080B7C70
	adds r0, r1, #0
_080B7C70:
	adds r3, r0, r1
	b _080B7CA2
	.align 2, 0
_080B7C74: .4byte 0xFFFF8800
_080B7C78:
	ldr r1, [r3, #0x18]
	ldr r0, _080B7C9C @ =0xFFFF8800
	cmp r1, r0
	bge _080B7CA0
	adds r0, r1, #0
	cmp r0, #0
	bge _080B7C88
	rsbs r0, r0, #0
_080B7C88:
	ldr r1, _080B7C9C @ =0xFFFF8800
	adds r0, r0, r1
	asrs r3, r0, #0xb
	adds r0, r3, #0
	cmp r0, #0x80
	ble _080B7C96
	movs r0, #0x80
_080B7C96:
	adds r3, r0, #0
	adds r3, #0x80
	b _080B7CA2
	.align 2, 0
_080B7C9C: .4byte 0xFFFF8800
_080B7CA0:
	movs r3, #0x10
_080B7CA2:
	ldr r2, _080B7CC4 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B7CC8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7CCC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B7CBC
	movs r1, #1
_080B7CBC:
	adds r0, r1, #0
_080B7CBE:
	pop {r1}
	bx r1
	.align 2, 0
_080B7CC4: .4byte gPseudoRandom
_080B7CC8: .4byte 0x00196225
_080B7CCC: .4byte 0x3C6EF35F

	thumb_func_start sub_80B7CD0
sub_80B7CD0: @ 0x080B7CD0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	ldrb r0, [r5]
	cmp r0, #9
	beq _080B7D6C
	ldr r1, [r3, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B7D6C
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _080B7D6C
	ldr r1, [r3, #0xc]
	movs r4, #0xc0
	lsls r4, r4, #1
	ands r1, r4
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #2
	bne _080B7D0C
	cmp r1, #0
	beq _080B7D1C
	cmp r1, r4
	beq _080B7D1C
_080B7D0C:
	cmp r2, #1
	bne _080B7D6C
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _080B7D1C
	cmp r1, r4
	bne _080B7D6C
_080B7D1C:
	ldr r1, [r5, #0x18]
	ldr r0, _080B7D5C @ =0xFFFFF000
	cmp r1, r0
	bge _080B7D6C
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	movs r0, #0xa8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080B7D6C
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r1, #0xa7
	bgt _080B7D3C
	movs r3, #0x80
	lsls r3, r3, #6
_080B7D3C:
	ldr r2, _080B7D60 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B7D64 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7D68 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B7D56
	movs r1, #1
_080B7D56:
	adds r0, r1, #0
	b _080B7D6E
	.align 2, 0
_080B7D5C: .4byte 0xFFFFF000
_080B7D60: .4byte gPseudoRandom
_080B7D64: .4byte 0x00196225
_080B7D68: .4byte 0x3C6EF35F
_080B7D6C:
	movs r0, #0
_080B7D6E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80B7D74
sub_80B7D74: @ 0x080B7D74
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4]
	cmp r0, #0xe
	beq _080B7DE8
	ldr r0, [r3, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080B7DE8
	ldr r1, [r4, #0x34]
	mvns r1, r1
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _080B7DE8
	ldr r2, [r3, #0xc]
	movs r0, #0x18
	ands r2, r0
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080B7DB2
	cmp r2, #0
	beq _080B7DC2
	cmp r2, #8
	beq _080B7DC2
_080B7DB2:
	cmp r1, #1
	bne _080B7DC8
	cmp r2, #0
	beq _080B7DC2
	cmp r2, #8
	beq _080B7DC2
	cmp r2, #0x10
	bne _080B7DC8
_080B7DC2:
	movs r1, #0x90
	lsls r1, r1, #7
	b _080B7DCC
_080B7DC8:
	movs r1, #0xc0
	lsls r1, r1, #6
_080B7DCC:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bge _080B7DD4
	rsbs r0, r0, #0
_080B7DD4:
	cmp r0, r1
	bgt _080B7DE8
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080B7DE0
	rsbs r0, r0, #0
_080B7DE0:
	movs r3, #0x80
	lsls r3, r3, #6
	cmp r0, r3
	ble _080B7DEC
_080B7DE8:
	movs r0, #0
	b _080B7E08
_080B7DEC:
	ldr r2, _080B7E10 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B7E14 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7E18 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B7E06
	movs r1, #1
_080B7E06:
	adds r0, r1, #0
_080B7E08:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B7E10: .4byte gPseudoRandom
_080B7E14: .4byte 0x00196225
_080B7E18: .4byte 0x3C6EF35F

	thumb_func_start sub_80B7E1C
sub_80B7E1C: @ 0x080B7E1C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldrb r0, [r4]
	cmp r0, #0xf
	beq _080B7ECE
	ldr r0, [r2, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B7ECE
	ldr r1, [r4, #0x34]
	mvns r1, r1
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _080B7ECE
	ldr r3, [r2, #0xc]
	movs r5, #0xc0
	lsls r5, r5, #8
	ands r3, r5
	movs r6, #0
	adds r2, #0x2a
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _080B7E64
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7E60
	cmp r3, r5
	bne _080B7E64
_080B7E60:
	adds r6, r0, #0
	b _080B7EB2
_080B7E64:
	ldrb r0, [r2]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080B7E7E
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7EAE
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r3, r0
	beq _080B7EAE
_080B7E7E:
	cmp r1, #2
	bne _080B7E92
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7EAE
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r3, r0
	beq _080B7EAE
_080B7E92:
	cmp r1, #3
	bne _080B7E9E
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7EAE
_080B7E9E:
	cmp r1, #4
	bne _080B7EB2
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7EAE
	cmp r3, #0x20
	bne _080B7EB2
_080B7EAE:
	movs r6, #0x80
	lsls r6, r6, #6
_080B7EB2:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bge _080B7EBA
	rsbs r0, r0, #0
_080B7EBA:
	cmp r0, r6
	bgt _080B7ECE
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080B7EC6
	rsbs r0, r0, #0
_080B7EC6:
	movs r3, #0x80
	lsls r3, r3, #6
	cmp r0, r3
	ble _080B7ED2
_080B7ECE:
	movs r0, #0
	b _080B7EEE
_080B7ED2:
	ldr r2, _080B7EF4 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B7EF8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7EFC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B7EEC
	movs r1, #1
_080B7EEC:
	adds r0, r1, #0
_080B7EEE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B7EF4: .4byte gPseudoRandom
_080B7EF8: .4byte 0x00196225
_080B7EFC: .4byte 0x3C6EF35F

	thumb_func_start sub_80B7F00
sub_80B7F00: @ 0x080B7F00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4]
	cmp r0, #0x12
	beq _080B7F88
	cmp r0, #9
	bne _080B7F88
	ldr r0, [r3, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B7F88
	ldr r1, [r4, #0x34]
	mvns r1, r1
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _080B7F88
	ldr r2, [r3, #0xc]
	movs r5, #0xc0
	lsls r5, r5, #1
	ands r2, r5
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	bne _080B7F88
	cmp r2, r5
	bne _080B7F88
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bge _080B7F48
	rsbs r0, r0, #0
_080B7F48:
	movs r3, #0x80
	lsls r3, r3, #6
	cmp r0, r3
	bgt _080B7F88
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080B7F58
	rsbs r0, r0, #0
_080B7F58:
	cmp r0, r3
	bgt _080B7F88
	ldr r2, _080B7F7C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B7F80 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7F84 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B7F76
	movs r1, #1
_080B7F76:
	adds r0, r1, #0
	b _080B7F8A
	.align 2, 0
_080B7F7C: .4byte gPseudoRandom
_080B7F80: .4byte 0x00196225
_080B7F84: .4byte 0x3C6EF35F
_080B7F88:
	movs r0, #0
_080B7F8A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80B7F90
sub_80B7F90: @ 0x080B7F90
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrb r0, [r2]
	cmp r0, #0x10
	beq _080B802C
	ldr r0, [r3, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B802C
	ldr r1, [r2, #0x34]
	mvns r1, r1
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _080B802C
	ldr r1, [r2, #0x1c]
	movs r0, #0xe1
	lsls r0, r0, #6
	cmp r1, r0
	bhi _080B802C
	ldr r1, [r2, #0x14]
	cmp r1, #0
	bge _080B7FC4
	rsbs r1, r1, #0
_080B7FC4:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bgt _080B802C
	ldr r1, [r2, #0x18]
	ldr r0, _080B801C @ =0x00000FFF
	cmp r1, r0
	ble _080B802C
	ldr r1, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #0
	beq _080B7FF0
	cmp r2, #3
	beq _080B7FF0
	cmp r2, #1
	beq _080B7FF0
	cmp r2, #4
	bne _080B802C
_080B7FF0:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r1, r0
	cmp r1, #0
	beq _080B802C
	movs r3, #0x80
	lsls r3, r3, #6
	ldr r2, _080B8020 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8024 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8028 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B8018
	movs r1, #1
_080B8018:
	adds r0, r1, #0
	b _080B802E
	.align 2, 0
_080B801C: .4byte 0x00000FFF
_080B8020: .4byte gPseudoRandom
_080B8024: .4byte 0x00196225
_080B8028: .4byte 0x3C6EF35F
_080B802C:
	movs r0, #0
_080B802E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80B8034
sub_80B8034: @ 0x080B8034
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrb r0, [r2]
	cmp r0, #0x11
	beq _080B80C0
	ldr r0, [r3, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B80C0
	ldr r1, [r2, #0x34]
	mvns r1, r1
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _080B80C0
	ldr r1, [r2, #0x1c]
	movs r0, #0xe1
	lsls r0, r0, #6
	cmp r1, r0
	bhi _080B80C0
	ldr r0, [r2, #0x14]
	cmp r0, #0
	bge _080B8068
	rsbs r0, r0, #0
_080B8068:
	movs r4, #0x80
	lsls r4, r4, #6
	cmp r0, r4
	bgt _080B80C0
	ldr r1, [r2, #0x18]
	ldr r0, _080B80B0 @ =0xFFFFF000
	cmp r1, r0
	bgt _080B80C0
	ldr r2, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080B80C0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	beq _080B80C0
	ldr r2, _080B80B4 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B80B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B80BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r4, r0
	bls _080B80AC
	movs r1, #1
_080B80AC:
	adds r0, r1, #0
	b _080B80C2
	.align 2, 0
_080B80B0: .4byte 0xFFFFF000
_080B80B4: .4byte gPseudoRandom
_080B80B8: .4byte 0x00196225
_080B80BC: .4byte 0x3C6EF35F
_080B80C0:
	movs r0, #0
_080B80C2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80B80C8
sub_80B80C8: @ 0x080B80C8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r0, [r3]
	cmp r0, #0xc
	beq _080B8160
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B8160
	ldr r2, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080B8160
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	beq _080B8160
	ldr r1, [r3, #0x1c]
	movs r0, #0xe1
	lsls r0, r0, #6
	cmp r1, r0
	bhi _080B8160
	ldr r1, [r3, #0x14]
	cmp r1, #0
	bge _080B810A
	rsbs r1, r1, #0
_080B810A:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bgt _080B8160
	ldr r1, [r3, #0x18]
	ldr r0, _080B8150 @ =0xFFFFF000
	cmp r1, r0
	bgt _080B8160
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0xa8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080B8160
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r1, #0xa7
	bgt _080B8132
	movs r3, #0x80
	lsls r3, r3, #5
_080B8132:
	ldr r2, _080B8154 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8158 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B815C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B814C
	movs r1, #1
_080B814C:
	adds r0, r1, #0
	b _080B8162
	.align 2, 0
_080B8150: .4byte 0xFFFFF000
_080B8154: .4byte gPseudoRandom
_080B8158: .4byte 0x00196225
_080B815C: .4byte 0x3C6EF35F
_080B8160:
	movs r0, #0
_080B8162:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80B8168
sub_80B8168: @ 0x080B8168
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4]
	cmp r0, #0xd
	beq _080B8210
	ldr r0, [r3, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B8210
	ldr r2, [r3, #0xc]
	movs r5, #0xc0
	lsls r5, r5, #1
	ands r2, r5
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	bne _080B8210
	cmp r2, #0x80
	beq _080B81A4
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _080B81A4
	cmp r2, r5
	bne _080B8210
_080B81A4:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bge _080B81AC
	rsbs r1, r1, #0
_080B81AC:
	ldr r0, _080B81FC @ =0x00004FFF
	cmp r1, r0
	ble _080B8210
	movs r0, #0xc0
	lsls r0, r0, #1
	movs r1, #0
	cmp r2, r0
	bne _080B81BE
	ldr r1, _080B8200 @ =0xFFFFB000
_080B81BE:
	ldr r0, [r4, #0x18]
	cmp r0, r1
	blt _080B8210
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	movs r0, #0xa8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080B8210
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r1, #0xa7
	bgt _080B81DC
	movs r3, #0x80
	lsls r3, r3, #5
_080B81DC:
	ldr r2, _080B8204 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8208 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B820C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B81F6
	movs r1, #1
_080B81F6:
	adds r0, r1, #0
	b _080B8212
	.align 2, 0
_080B81FC: .4byte 0x00004FFF
_080B8200: .4byte 0xFFFFB000
_080B8204: .4byte gPseudoRandom
_080B8208: .4byte 0x00196225
_080B820C: .4byte 0x3C6EF35F
_080B8210:
	movs r0, #0
_080B8212:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80B8218
sub_80B8218: @ 0x080B8218
	push {r4, lr}
	mov ip, r0
	adds r2, r1, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r1, ip
	ldrh r0, [r1, #0x3e]
	subs r1, r0, #1
	mov r4, ip
	strh r1, [r4, #0x3e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080B82B2
	ldr r0, _080B82BC @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B8258
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8258:
	ldr r0, _080B82C0 @ =0xFFFFFE00
	cmp r1, r0
	bge _080B8266
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8266:
	mov r4, ip
	ldr r1, [r4, #0x10]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bge _080B8282
	ldr r0, [r2, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B8282
	movs r1, #0x1a
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080B82B2
_080B8282:
	ldr r0, _080B82C4 @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	movs r0, #0
	mov r4, ip
	strb r0, [r4]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B82C8 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B82CC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B82D0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B82D4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	strh r0, [r4, #2]
_080B82B2:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B82BC: .4byte 0x0000FFCF
_080B82C0: .4byte 0xFFFFFE00
_080B82C4: .4byte gStageData
_080B82C8: .4byte gUnknown_080E3254
_080B82CC: .4byte gPseudoRandom
_080B82D0: .4byte 0x00196225
_080B82D4: .4byte 0x3C6EF35F

	thumb_func_start sub_80B82D8
sub_80B82D8: @ 0x080B82D8
	push {r4, lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r1, _080B8304 @ =gStageData
	ldrh r2, [r1, #0x14]
	adds r0, r3, #0
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _080B8308
	bics r3, r2
	mov r0, ip
	ldrh r1, [r0, #0x3e]
	b _080B8316
	.align 2, 0
_080B8304: .4byte gStageData
_080B8308:
	mov r0, ip
	ldrh r1, [r0, #0x3e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	bne _080B8316
	orrs r3, r2
_080B8316:
	subs r0, r1, #1
	mov r2, ip
	strh r0, [r2, #0x3e]
	lsls r0, r1, #0x10
	cmp r0, #0
	bgt _080B8354
	ldrh r0, [r4, #0x14]
	movs r1, #0x80
	orrs r0, r1
	bics r3, r0
	movs r0, #0
	strb r0, [r2]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B835C @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B8360 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8364 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8368 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r2, ip
	strh r0, [r2, #2]
_080B8354:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B835C: .4byte gUnknown_080E3254
_080B8360: .4byte gPseudoRandom
_080B8364: .4byte 0x00196225
_080B8368: .4byte 0x3C6EF35F

	thumb_func_start sub_80B836C
sub_80B836C: @ 0x080B836C
	push {lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r1, [r1, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080B83BC
	ldr r0, _080B83B4 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B83A4
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B83A4:
	ldr r0, _080B83B8 @ =0xFFFFFE00
	cmp r1, r0
	bge _080B83E6
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	b _080B83E6
	.align 2, 0
_080B83B4: .4byte 0x0000FFCF
_080B83B8: .4byte 0xFFFFFE00
_080B83BC:
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B83EC @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B83F0 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B83F4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B83F8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
_080B83E6:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B83EC: .4byte gUnknown_080E3254
_080B83F0: .4byte gPseudoRandom
_080B83F4: .4byte 0x00196225
_080B83F8: .4byte 0x3C6EF35F

	thumb_func_start sub_80B83FC
sub_80B83FC: @ 0x080B83FC
	push {r4, r5, lr}
	mov ip, r0
	adds r4, r2, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r0, [r1, #4]
	movs r5, #4
	ands r0, r5
	cmp r0, #0
	bne _080B8464
	mov r1, ip
	strb r0, [r1]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8450 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B8454 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8458 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B845C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B8460 @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	b _080B84BE
	.align 2, 0
_080B8450: .4byte gUnknown_080E3254
_080B8454: .4byte gPseudoRandom
_080B8458: .4byte 0x00196225
_080B845C: .4byte 0x3C6EF35F
_080B8460: .4byte gStageData
_080B8464:
	ldr r0, _080B84A8 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B847C
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B847C:
	ldr r0, _080B84AC @ =0xFFFFFE00
	cmp r1, r0
	bge _080B848A
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B848A:
	ldr r0, _080B84B0 @ =gStageData
	ldrh r2, [r0, #0x14]
	eors r3, r2
	mov r0, ip
	ldr r1, [r0, #0x18]
	cmp r1, #0
	ble _080B84BE
	ldr r0, [r4, #4]
	ands r0, r5
	cmp r0, #0
	bne _080B84B4
	bics r3, r2
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	b _080B84BE
	.align 2, 0
_080B84A8: .4byte 0x0000FFCF
_080B84AC: .4byte 0xFFFFFE00
_080B84B0: .4byte gStageData
_080B84B4:
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _080B84BE
	bics r3, r2
_080B84BE:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80B84C8
sub_80B84C8: @ 0x080B84C8
	push {lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r1, [r1, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080B8530
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B851C @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B8520 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8524 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8528 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B852C @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	b _080B856C
	.align 2, 0
_080B851C: .4byte gUnknown_080E3254
_080B8520: .4byte gPseudoRandom
_080B8524: .4byte 0x00196225
_080B8528: .4byte 0x3C6EF35F
_080B852C: .4byte gStageData
_080B8530:
	ldr r0, _080B8574 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B8548
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8548:
	ldr r0, _080B8578 @ =0xFFFFFE00
	cmp r1, r0
	bge _080B8556
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8556:
	ldr r0, _080B857C @ =gStageData
	ldrh r2, [r0, #0x14]
	orrs r3, r2
	mov r0, ip
	ldr r1, [r0, #0x18]
	ldr r0, _080B8580 @ =0xFFFFF000
	cmp r1, r0
	bge _080B856C
	bics r3, r2
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B856C:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8574: .4byte 0x0000FFCF
_080B8578: .4byte 0xFFFFFE00
_080B857C: .4byte gStageData
_080B8580: .4byte 0xFFFFF000

	thumb_func_start sub_80B8584
sub_80B8584: @ 0x080B8584
	push {lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r0, _080B85D8 @ =gStageData
	ldrh r0, [r0, #0x16]
	bics r3, r0
	ldr r1, [r1, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080B85EC
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B85DC @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B85E0 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B85E4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B85E8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	b _080B8612
	.align 2, 0
_080B85D8: .4byte gStageData
_080B85DC: .4byte gUnknown_080E3254
_080B85E0: .4byte gPseudoRandom
_080B85E4: .4byte 0x00196225
_080B85E8: .4byte 0x3C6EF35F
_080B85EC:
	ldr r0, _080B8618 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B8604
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8604:
	ldr r0, _080B861C @ =0xFFFFFE00
	cmp r1, r0
	bge _080B8612
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8612:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8618: .4byte 0x0000FFCF
_080B861C: .4byte 0xFFFFFE00

	thumb_func_start sub_80B8620
sub_80B8620: @ 0x080B8620
	push {lr}
	mov ip, r0
	adds r2, r1, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #1
	mov r1, ip
	adds r1, #0x42
	adds r1, r1, r0
	ldrh r3, [r1]
	ldr r1, [r2, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080B86B0
	ldrh r0, [r2, #0x30]
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080B8668
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8660 @ =sub_80B86E4
	str r0, [r1]
	ldr r0, _080B8664 @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	b _080B86D6
	.align 2, 0
_080B8660: .4byte sub_80B86E4
_080B8664: .4byte gStageData
_080B8668:
	ldr r0, _080B869C @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B86A0 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B86A4 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B86A8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B86AC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	b _080B86D6
	.align 2, 0
_080B869C: .4byte gStageData
_080B86A0: .4byte gUnknown_080E3254
_080B86A4: .4byte gPseudoRandom
_080B86A8: .4byte 0x00196225
_080B86AC: .4byte 0x3C6EF35F
_080B86B0:
	ldr r0, _080B86DC @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B86C8
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B86C8:
	ldr r0, _080B86E0 @ =0xFFFFFE00
	cmp r1, r0
	bge _080B86D6
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B86D6:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B86DC: .4byte 0x0000FFCF
_080B86E0: .4byte 0xFFFFFE00

	thumb_func_start sub_80B86E4
sub_80B86E4: @ 0x080B86E4
	push {lr}
	mov ip, r0
	adds r2, r1, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #1
	mov r1, ip
	adds r1, #0x42
	adds r1, r1, r0
	ldrh r3, [r1]
	ldr r1, [r2, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080B874C
	ldr r0, _080B8738 @ =0x0000FF3F
	ands r3, r0
	movs r0, #0
	mov r1, ip
	strb r0, [r1]
_080B8710:
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B873C @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B8740 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8744 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8748 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	b _080B87A4
	.align 2, 0
_080B8738: .4byte 0x0000FF3F
_080B873C: .4byte gUnknown_080E3254
_080B8740: .4byte gPseudoRandom
_080B8744: .4byte 0x00196225
_080B8748: .4byte 0x3C6EF35F
_080B874C:
	ldrh r0, [r2, #0x30]
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080B8768
	ldr r0, _080B8764 @ =0x0000FF3F
	ands r3, r0
	mov r0, ip
	strb r1, [r0]
	b _080B8710
	.align 2, 0
_080B8764: .4byte 0x0000FF3F
_080B8768:
	mov r0, ip
	ldr r1, [r0, #0x18]
	ldr r0, _080B877C @ =0xFFFFF800
	cmp r1, r0
	bge _080B8784
	ldr r0, _080B8780 @ =0x0000FF7F
	ands r3, r0
	movs r0, #0x40
	b _080B8792
	.align 2, 0
_080B877C: .4byte 0xFFFFF800
_080B8780: .4byte 0x0000FF7F
_080B8784:
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	ble _080B87A0
	ldr r0, _080B879C @ =0x0000FFBF
	ands r3, r0
	movs r0, #0x80
_080B8792:
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	b _080B87A4
	.align 2, 0
_080B879C: .4byte 0x0000FFBF
_080B87A0:
	ldr r0, _080B87AC @ =0x0000FF3F
	ands r3, r0
_080B87A4:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B87AC: .4byte 0x0000FF3F

	thumb_func_start sub_80B87B0
sub_80B87B0: @ 0x080B87B0
	push {r4, r5, lr}
	mov ip, r0
	adds r4, r1, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r2, _080B87E0 @ =gStageData
	ldrh r1, [r2, #0x16]
	movs r0, #0x80
	orrs r1, r0
	adds r0, r3, #0
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080B87E4
	bics r3, r1
	b _080B882A
	.align 2, 0
_080B87E0: .4byte gStageData
_080B87E4:
	mov r0, ip
	ldr r2, [r0, #0x14]
	cmp r2, #0
	bge _080B8802
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B8802
	ldr r0, _080B8834 @ =0x0000FFEF
	ands r3, r0
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8802:
	cmp r2, #0
	ble _080B881C
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B881C
	ldr r0, _080B8838 @ =0x0000FFDF
	ands r3, r0
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B881C:
	ldrh r0, [r5, #0x16]
	orrs r3, r0
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B883C @ =sub_80B9454
	str r0, [r1]
_080B882A:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B8834: .4byte 0x0000FFEF
_080B8838: .4byte 0x0000FFDF
_080B883C: .4byte sub_80B9454

	thumb_func_start sub_80B8840
sub_80B8840: @ 0x080B8840
	push {lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r1, [r1, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080B88AC
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8898 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B889C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B88A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B88A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B88A8 @ =gStageData
	ldrh r0, [r0, #0x16]
	movs r1, #0x80
	orrs r0, r1
	bics r3, r0
	b _080B88D2
	.align 2, 0
_080B8898: .4byte gUnknown_080E3254
_080B889C: .4byte gPseudoRandom
_080B88A0: .4byte 0x00196225
_080B88A4: .4byte 0x3C6EF35F
_080B88A8: .4byte gStageData
_080B88AC:
	ldr r0, _080B88D8 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B88C4
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B88C4:
	ldr r0, _080B88DC @ =0xFFFFFE00
	cmp r1, r0
	bge _080B88D2
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B88D2:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B88D8: .4byte 0x0000FFCF
_080B88DC: .4byte 0xFFFFFE00

	thumb_func_start sub_80B88E0
sub_80B88E0: @ 0x080B88E0
	push {lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r1, [r1, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080B894C
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8938 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B893C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8940 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8944 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B8948 @ =gStageData
	ldrh r0, [r0, #0x16]
	movs r1, #0x80
	orrs r0, r1
	bics r3, r0
	b _080B8972
	.align 2, 0
_080B8938: .4byte gUnknown_080E3254
_080B893C: .4byte gPseudoRandom
_080B8940: .4byte 0x00196225
_080B8944: .4byte 0x3C6EF35F
_080B8948: .4byte gStageData
_080B894C:
	ldr r0, _080B8978 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B8964
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8964:
	ldr r0, _080B897C @ =0xFFFFFE00
	cmp r1, r0
	bge _080B8972
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8972:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8978: .4byte 0x0000FFCF
_080B897C: .4byte 0xFFFFFE00

	thumb_func_start sub_80B8980
sub_80B8980: @ 0x080B8980
	push {lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r1, [r1, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080B89EC
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B89D8 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B89DC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B89E0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B89E4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B89E8 @ =gStageData
	ldrh r0, [r0, #0x16]
	movs r1, #0x40
	orrs r0, r1
	bics r3, r0
	b _080B8A12
	.align 2, 0
_080B89D8: .4byte gUnknown_080E3254
_080B89DC: .4byte gPseudoRandom
_080B89E0: .4byte 0x00196225
_080B89E4: .4byte 0x3C6EF35F
_080B89E8: .4byte gStageData
_080B89EC:
	ldr r0, _080B8A18 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B8A04
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8A04:
	ldr r0, _080B8A1C @ =0xFFFFFE00
	cmp r1, r0
	bge _080B8A12
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8A12:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8A18: .4byte 0x0000FFCF
_080B8A1C: .4byte 0xFFFFFE00

	thumb_func_start sub_80B8A20
sub_80B8A20: @ 0x080B8A20
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r0, [r4, #4]
	movs r5, #4
	ands r0, r5
	cmp r0, #0
	bne _080B8A8C
	mov r1, ip
	strb r0, [r1]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8A78 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B8A7C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8A80 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _080B8A84 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B8A88 @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	b _080B8B0E
	.align 2, 0
_080B8A78: .4byte gUnknown_080E3254
_080B8A7C: .4byte gPseudoRandom
_080B8A80: .4byte 0x00196225
_080B8A84: .4byte 0x3C6EF35F
_080B8A88: .4byte gStageData
_080B8A8C:
	ldr r0, _080B8AAC @ =gStageData
	ldrh r1, [r0, #0x14]
	eors r3, r1
	mov r7, ip
	ldr r2, [r7, #0x18]
	adds r7, r0, #0
	cmp r2, #0
	ble _080B8ABA
	ldr r0, [r6, #4]
	ands r0, r5
	cmp r0, #0
	bne _080B8AB0
	bics r3, r1
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	b _080B8ABA
	.align 2, 0
_080B8AAC: .4byte gStageData
_080B8AB0:
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	ble _080B8ABA
	bics r3, r1
_080B8ABA:
	ldrh r1, [r7, #0x16]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080B8AC8
	bics r3, r1
	b _080B8B0E
_080B8AC8:
	mov r0, ip
	ldr r2, [r0, #0x14]
	cmp r2, #0
	bge _080B8AE6
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B8AE6
	ldr r0, _080B8B18 @ =0x0000FFEF
	ands r3, r0
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8AE6:
	cmp r2, #0
	ble _080B8B00
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8B00
	ldr r0, _080B8B1C @ =0x0000FFDF
	ands r3, r0
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8B00:
	ldrh r0, [r7, #0x16]
	orrs r3, r0
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8B20 @ =sub_80B8B24
	str r0, [r1]
_080B8B0E:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B8B18: .4byte 0x0000FFEF
_080B8B1C: .4byte 0x0000FFDF
_080B8B20: .4byte sub_80B8B24

	thumb_func_start sub_80B8B24
sub_80B8B24: @ 0x080B8B24
	push {r4, r5, lr}
	mov ip, r0
	adds r5, r2, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r0, [r1, #4]
	movs r4, #4
	ands r0, r4
	cmp r0, #0
	bne _080B8B8C
	mov r1, ip
	strb r0, [r1]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8B78 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B8B7C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8B80 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8B84 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B8B88 @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	b _080B8C0C
	.align 2, 0
_080B8B78: .4byte gUnknown_080E3254
_080B8B7C: .4byte gPseudoRandom
_080B8B80: .4byte 0x00196225
_080B8B84: .4byte 0x3C6EF35F
_080B8B88: .4byte gStageData
_080B8B8C:
	ldr r0, _080B8BAC @ =gStageData
	ldrh r1, [r0, #0x14]
	eors r3, r1
	mov r0, ip
	ldr r2, [r0, #0x18]
	cmp r2, #0
	ble _080B8BBA
	ldr r0, [r5, #4]
	ands r0, r4
	cmp r0, #0
	bne _080B8BB0
	bics r3, r1
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	b _080B8BBA
	.align 2, 0
_080B8BAC: .4byte gStageData
_080B8BB0:
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	ble _080B8BBA
	bics r3, r1
_080B8BBA:
	ldr r0, _080B8C14 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B8BD2
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8BD2:
	ldr r0, _080B8C18 @ =0xFFFFFE00
	cmp r1, r0
	bge _080B8BE0
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8BE0:
	movs r0, #9
	mov r1, ip
	strb r0, [r1]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8C1C @ =gUnknown_080E3254
	ldr r0, [r0, #0x6c]
	str r0, [r1]
	ldr r2, _080B8C20 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8C24 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8C28 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
_080B8C0C:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B8C14: .4byte 0x0000FFCF
_080B8C18: .4byte 0xFFFFFE00
_080B8C1C: .4byte gUnknown_080E3254
_080B8C20: .4byte gPseudoRandom
_080B8C24: .4byte 0x00196225
_080B8C28: .4byte 0x3C6EF35F

	thumb_func_start sub_80B8C2C
sub_80B8C2C: @ 0x080B8C2C
	push {lr}
	sub sp, #4
	mov r2, sp
	movs r1, #0
	strh r1, [r2]
	ldr r1, _080B8C5C @ =0x040000D4
	str r2, [r1]
	str r0, [r1, #4]
	ldr r2, _080B8C60 @ =0x810000A4
	str r2, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _080B8C64 @ =gUnknown_080E310C
	str r2, [r1]
	str r0, [r1, #4]
	ldr r2, _080B8C68 @ =0x800000A4
	str r2, [r1, #8]
	ldr r1, [r1, #8]
	movs r1, #0
	bl sub_80B8D18
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080B8C5C: .4byte 0x040000D4
_080B8C60: .4byte 0x810000A4
_080B8C64: .4byte gUnknown_080E310C
_080B8C68: .4byte 0x800000A4

	thumb_func_start sub_80B8C6C
sub_80B8C6C: @ 0x080B8C6C
	bx lr
	.align 2, 0

	thumb_func_start sub_80B8C70
sub_80B8C70: @ 0x080B8C70
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl _call_via_r3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_80B7AB0
	ldrh r0, [r4, #2]
	subs r1, r0, #1
	strh r1, [r4, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B8CA2
	adds r0, r4, #0
	movs r1, #0
	bl sub_80B8D18
_080B8CA2:
	pop {r4}
	pop {r0}
	bx r0

    thumb_func_start sub_080B8CA8
sub_080B8CA8:
    ldrb r0, [r0]
    bx lr

	thumb_func_start sub_80B8CAC
sub_80B8CAC: @ 0x080B8CAC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r2, _080B8CCC @ =gUnknown_080E3254
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #4
	adds r0, r0, r2
	ldr r3, [r0]
	cmp r3, #0
	bne _080B8CD0
	movs r0, #1
	b _080B8CDA
	.align 2, 0
_080B8CCC: .4byte gUnknown_080E3254
_080B8CD0:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl _call_via_r3
_080B8CDA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80B8CE0
sub_80B8CE0: @ 0x080B8CE0
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4]
	cmp r0, r3
	beq _080B8D0E
	ldr r2, _080B8D14 @ =gUnknown_080E3254
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r1, #8]
	ldrb r0, [r0, #8]
	cmp r1, r0
	bhi _080B8D0E
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_80B8D18
_080B8D0E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B8D14: .4byte gUnknown_080E3254

	thumb_func_start sub_80B8D18
sub_80B8D18: @ 0x080B8D18
	push {r4, lr}
	strb r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r4, r0, r2
	ldr r3, _080B8D50 @ =gUnknown_080E3254
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r1, [r2]
	str r1, [r4]
	ldr r3, _080B8D54 @ =gPseudoRandom
	ldr r2, [r3]
	ldr r1, _080B8D58 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080B8D5C @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #8
	movs r2, #0x1f
	ands r1, r2
	adds r1, #0x3c
	strh r1, [r0, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B8D50: .4byte gUnknown_080E3254
_080B8D54: .4byte gPseudoRandom
_080B8D58: .4byte 0x00196225
_080B8D5C: .4byte 0x3C6EF35F

	thumb_func_start sub_80B8D60
sub_80B8D60: @ 0x080B8D60
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r3, #0
	ldr r1, _080B8D88 @ =gUnknown_080E3254
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r3, [r0]
	cmp r3, #0
	beq _080B8D8C
	adds r0, r6, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl _call_via_r3
	b _080B8D8E
	.align 2, 0
_080B8D88: .4byte gUnknown_080E3254
_080B8D8C:
	movs r0, #1
_080B8D8E:
	cmp r0, #0
	bne _080B8D96
	movs r0, #0
	b _080B8DA0
_080B8D96:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80B8CE0
	movs r0, #1
_080B8DA0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80B8DA8
sub_80B8DA8: @ 0x080B8DA8
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_80B8DB0
sub_80B8DB0: @ 0x080B8DB0
	push {lr}
	adds r3, r0, #0
	cmp r1, #0
	beq _080B8DBC
	ldr r0, [r3, #0xc]
	str r0, [r1]
_080B8DBC:
	cmp r2, #0
	beq _080B8DC4
	ldr r0, [r3, #0x10]
	str r0, [r2]
_080B8DC4:
	pop {r0}
	bx r0

	thumb_func_start sub_80B8DC8
sub_80B8DC8: @ 0x080B8DC8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r6, [r4, #0xc]
	ldr r0, [r4, #4]
	subs r6, r6, r0
	ldr r5, [r4, #0x10]
	ldr r0, [r4, #8]
	subs r5, r5, r0
	asrs r0, r6, #8
	asrs r1, r5, #8
	adds r2, r0, #0
	muls r2, r0, r2
	mov r8, r2
	adds r0, r1, #0
	muls r0, r1, r0
	add r8, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	str r6, [r4, #0x14]
	str r5, [r4, #0x18]
	mov r1, r8
	str r1, [r4, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4, #0x20]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80B8E10
sub_80B8E10: @ 0x080B8E10
	ldr r3, [r1, #0x10]
	str r3, [r0, #4]
	ldr r1, [r1, #0x14]
	str r1, [r0, #8]
	ldr r1, [r2, #0x10]
	str r1, [r0, #0x24]
	ldr r1, [r2, #0x14]
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0

	thumb_func_start sub_80B8E24
sub_80B8E24: @ 0x080B8E24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	ldr r2, [r1, #0x10]
	subs r2, r5, r2
	ldr r0, [r1, #0x14]
	subs r0, r3, r0
	asrs r2, r2, #8
	asrs r0, r0, #8
	adds r1, r2, #0
	muls r1, r2, r1
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	ldr r0, [r4, #0x34]
	cmp r0, r1
	blo _080B8E4E
	str r5, [r4, #0x2c]
	str r3, [r4, #0x30]
	str r1, [r4, #0x34]
_080B8E4E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80B8E54
sub_80B8E54: @ 0x080B8E54
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x34]
	bx lr

	thumb_func_start sub_80B8E5C
sub_80B8E5C: @ 0x080B8E5C
	push {lr}
	ldr r1, [r0, #0x34]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080B8E6C
	movs r0, #1
	b _080B8E6E
_080B8E6C:
	movs r0, #0
_080B8E6E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80B8E74
sub_80B8E74: @ 0x080B8E74
	movs r2, #0xa1
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_80B8E88
sub_80B8E88: @ 0x080B8E88
	adds r0, #0x40
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_80B8E90
sub_80B8E90: @ 0x080B8E90
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xa1
	lsls r2, r2, #1
	adds r2, r2, r0
	mov ip, r2
	ldrb r2, [r2]
	lsls r2, r2, #1
	adds r3, r0, #0
	adds r3, #0x42
	adds r2, r3, r2
	ldrh r4, [r2]
	adds r2, r1, #0
	bics r2, r4
	adds r0, #0x40
	strh r2, [r0]
	mov r2, ip
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r3, r3, r0
	strh r1, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B8EC4
sub_80B8EC4: @ 0x080B8EC4
	push {lr}
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #1
	beq _080B8ED6
	cmp r0, #0
	beq _080B8EE2
	cmp r0, #2
	bne _080B8EDC
_080B8ED6:
	movs r3, #0x80
	lsls r3, r3, #1
	b _080B8EE6
_080B8EDC:
	movs r3, #0x20
	cmp r0, #6
	bne _080B8EE6
_080B8EE2:
	movs r3, #0xf0
	lsls r3, r3, #4
_080B8EE6:
	ldr r2, _080B8F08 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8F0C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8F10 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B8F00
	movs r1, #1
_080B8F00:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8F08: .4byte gPseudoRandom
_080B8F0C: .4byte 0x00196225
_080B8F10: .4byte 0x3C6EF35F

	thumb_func_start sub_80B8F14
sub_80B8F14: @ 0x080B8F14
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #3
	beq _080B8F28
	ldr r0, [r1, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B8F2C
_080B8F28:
	movs r0, #0
	b _080B8F60
_080B8F2C:
	ldr r1, [r2, #0x14]
	cmp r1, #0
	bge _080B8F34
	rsbs r1, r1, #0
_080B8F34:
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r1, r0
	ble _080B8F44
	movs r3, #0x80
	lsls r3, r3, #8
_080B8F44:
	ldr r2, _080B8F64 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8F68 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8F6C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B8F5E
	movs r1, #1
_080B8F5E:
	adds r0, r1, #0
_080B8F60:
	pop {r1}
	bx r1
	.align 2, 0
_080B8F64: .4byte gPseudoRandom
_080B8F68: .4byte 0x00196225
_080B8F6C: .4byte 0x3C6EF35F

	thumb_func_start sub_80B8F70
sub_80B8F70: @ 0x080B8F70
	push {lr}
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #1
	bne _080B8F80
	movs r3, #0x80
	lsls r3, r3, #5
	b _080B8F8A
_080B8F80:
	cmp r0, #6
	bne _080B8F88
	movs r3, #0x10
	b _080B8F8A
_080B8F88:
	movs r3, #0x20
_080B8F8A:
	ldr r2, _080B8FAC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B8FB0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8FB4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B8FA4
	movs r1, #1
_080B8FA4:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8FAC: .4byte gPseudoRandom
_080B8FB0: .4byte 0x00196225
_080B8FB4: .4byte 0x3C6EF35F

	thumb_func_start sub_80B8FB8
sub_80B8FB8: @ 0x080B8FB8
	push {lr}
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #1
	beq _080B8FC6
	cmp r0, #0
	bne _080B8FCA
_080B8FC6:
	movs r3, #0x20
	b _080B8FDC
_080B8FCA:
	cmp r0, #2
	bne _080B8FD4
	movs r3, #0x80
	lsls r3, r3, #5
	b _080B8FDC
_080B8FD4:
	movs r3, #0x20
	cmp r0, #6
	bne _080B8FDC
	movs r3, #0x10
_080B8FDC:
	ldr r2, _080B8FFC @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B9000 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B9004 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B8FF6
	movs r1, #1
_080B8FF6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8FFC: .4byte gPseudoRandom
_080B9000: .4byte 0x00196225
_080B9004: .4byte 0x3C6EF35F

	thumb_func_start sub_80B9008
sub_80B9008: @ 0x080B9008
	push {lr}
	ldrb r0, [r0]
	cmp r0, #8
	beq _080B901E
	ldr r0, [r1, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B901E
	movs r0, #1
	b _080B9020
_080B901E:
	movs r0, #0
_080B9020:
	pop {r1}
	bx r1

	thumb_func_start sub_80B9024
sub_80B9024: @ 0x080B9024
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4]
	cmp r0, #0xa
	beq _080B90AC
	ldr r1, [r3, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B90AC
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _080B90AC
	ldr r2, [r3, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r2, r0
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _080B90AC
	cmp r2, #0x80
	bne _080B90AC
	ldr r1, [r4, #0x18]
	ldr r0, _080B909C @ =0xFFFFF800
	cmp r1, r0
	bge _080B90AC
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	movs r0, #0xa8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080B90AC
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r1, #0xa7
	bgt _080B907C
	movs r3, #0x80
	lsls r3, r3, #6
_080B907C:
	ldr r2, _080B90A0 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B90A4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B90A8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B9096
	movs r1, #1
_080B9096:
	adds r0, r1, #0
	b _080B90AE
	.align 2, 0
_080B909C: .4byte 0xFFFFF800
_080B90A0: .4byte gPseudoRandom
_080B90A4: .4byte 0x00196225
_080B90A8: .4byte 0x3C6EF35F
_080B90AC:
	movs r0, #0
_080B90AE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80B90B4
sub_80B90B4: @ 0x080B90B4
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4]
	cmp r0, #0xb
	beq _080B9140
	ldr r1, [r3, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B9140
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _080B9140
	ldr r2, [r3, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r2, r0
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #4
	bne _080B9140
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bne _080B9140
	ldr r1, [r4, #0x18]
	ldr r0, _080B9130 @ =0xFFFFF800
	cmp r1, r0
	bge _080B9140
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	movs r0, #0xa8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080B9140
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r1, #0xa7
	bgt _080B9110
	movs r3, #0x80
	lsls r3, r3, #6
_080B9110:
	ldr r2, _080B9134 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B9138 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B913C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B912A
	movs r1, #1
_080B912A:
	adds r0, r1, #0
	b _080B9142
	.align 2, 0
_080B9130: .4byte 0xFFFFF800
_080B9134: .4byte gPseudoRandom
_080B9138: .4byte 0x00196225
_080B913C: .4byte 0x3C6EF35F
_080B9140:
	movs r0, #0
_080B9142:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80B9148
sub_80B9148: @ 0x080B9148
	movs r2, #0xa1
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_80B915C
sub_80B915C: @ 0x080B915C
	ldr r3, _080B9184 @ =gPseudoRandom
	ldr r2, [r3]
	ldr r1, _080B9188 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080B918C @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #8
	movs r2, #0x1f
	ands r1, r2
	adds r1, #6
	strh r1, [r0, #0x3e]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080B9190 @ =sub_80B95A0
	str r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_080B9184: .4byte gPseudoRandom
_080B9188: .4byte 0x00196225
_080B918C: .4byte 0x3C6EF35F
_080B9190: .4byte sub_80B95A0

	thumb_func_start sub_80B9194
sub_80B9194: @ 0x080B9194
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	ldr r2, [r3, #0xc]
	ldr r0, [r1, #0x10]
	cmp r2, r0
	ble _080B91A6
	movs r4, #0x10
	b _080B91AC
_080B91A6:
	cmp r2, r0
	bge _080B91AC
	movs r4, #0x20
_080B91AC:
	movs r0, #0
	strb r0, [r3]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B91DC @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B91E0 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B91E4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B91E8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	strh r0, [r3, #2]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B91DC: .4byte gUnknown_080E3254
_080B91E0: .4byte gPseudoRandom
_080B91E4: .4byte 0x00196225
_080B91E8: .4byte 0x3C6EF35F

	thumb_func_start sub_80B91EC
sub_80B91EC: @ 0x080B91EC
	push {r4, lr}
	mov ip, r0
	adds r4, r1, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080B922C
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, ip
	ldr r3, _080B9228 @ =sub_80B9324
	str r3, [r0]
	mov r0, ip
	adds r1, r4, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080B922E
	.align 2, 0
_080B9228: .4byte sub_80B9324
_080B922C:
	adds r0, r3, #0
_080B922E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80B9234
sub_80B9234: @ 0x080B9234
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, _080B925C @ =sub_80B95A0
	str r1, [r2]
	ldr r3, _080B9260 @ =gPseudoRandom
	ldr r2, [r3]
	ldr r1, _080B9264 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080B9268 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #8
	movs r2, #0x3f
	ands r1, r2
	adds r1, #0x20
	strh r1, [r0, #0x3e]
	movs r0, #0x40
	bx lr
	.align 2, 0
_080B925C: .4byte sub_80B95A0
_080B9260: .4byte gPseudoRandom
_080B9264: .4byte 0x00196225
_080B9268: .4byte 0x3C6EF35F

	thumb_func_start sub_80B926C
sub_80B926C: @ 0x080B926C
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, _080B9294 @ =sub_80B95A0
	str r1, [r2]
	ldr r3, _080B9298 @ =gPseudoRandom
	ldr r2, [r3]
	ldr r1, _080B929C @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080B92A0 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #8
	movs r2, #0x3f
	ands r1, r2
	adds r1, #0x20
	strh r1, [r0, #0x3e]
	movs r0, #0x80
	bx lr
	.align 2, 0
_080B9294: .4byte sub_80B95A0
_080B9298: .4byte gPseudoRandom
_080B929C: .4byte 0x00196225
_080B92A0: .4byte 0x3C6EF35F

	thumb_func_start sub_80B92A4
sub_80B92A4: @ 0x080B92A4
	movs r1, #0
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, _080B92D0 @ =gUnknown_080E3254
	ldr r1, [r1]
	str r1, [r2]
	ldr r3, _080B92D4 @ =gPseudoRandom
	ldr r2, [r3]
	ldr r1, _080B92D8 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080B92DC @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #8
	movs r2, #0x1f
	ands r1, r2
	adds r1, #0x3c
	strh r1, [r0, #2]
	movs r0, #0x80
	bx lr
	.align 2, 0
_080B92D0: .4byte gUnknown_080E3254
_080B92D4: .4byte gPseudoRandom
_080B92D8: .4byte 0x00196225
_080B92DC: .4byte 0x3C6EF35F

	thumb_func_start sub_80B92E0
sub_80B92E0: @ 0x080B92E0
	push {lr}
	adds r3, r0, #0
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _080B930C
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B9314 @ =sub_80B82D8
	str r0, [r1]
	ldr r2, _080B9318 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B931C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B9320 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x10
	strh r0, [r3, #0x3e]
_080B930C:
	movs r0, #0x80
	pop {r1}
	bx r1
	.align 2, 0
_080B9314: .4byte sub_80B82D8
_080B9318: .4byte gPseudoRandom
_080B931C: .4byte 0x00196225
_080B9320: .4byte 0x3C6EF35F

	thumb_func_start sub_80B9324
sub_80B9324: @ 0x080B9324
	push {lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x42
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	cmp r0, #0
	bne _080B9368
	movs r0, #0x30
	ands r2, r0
	ldr r0, _080B9360 @ =gStageData
	ldrh r0, [r0, #0x14]
	orrs r2, r0
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B9364 @ =sub_80B8218
	str r0, [r1]
	movs r0, #4
	strh r0, [r3, #0x3e]
	b _080B936C
	.align 2, 0
_080B9360: .4byte gStageData
_080B9364: .4byte sub_80B8218
_080B9368:
	movs r0, #0x30
	ands r2, r0
_080B936C:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80B9374
sub_80B9374: @ 0x080B9374
	adds r2, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _080B939C @ =gStageData
	ldrh r1, [r1, #0x14]
	bics r0, r1
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r2, r2, r1
	ldr r1, _080B93A0 @ =sub_80B84C8
	str r1, [r2]
	bx lr
	.align 2, 0
_080B939C: .4byte gStageData
_080B93A0: .4byte sub_80B84C8

	thumb_func_start sub_80B93A4
sub_80B93A4: @ 0x080B93A4
	push {lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _080B93D4 @ =gStageData
	ldrh r1, [r0, #0x16]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080B93DC
	orrs r2, r1
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B93D8 @ =sub_80B8584
	str r0, [r1]
	b _080B93DE
	.align 2, 0
_080B93D4: .4byte gStageData
_080B93D8: .4byte sub_80B8584
_080B93DC:
	bics r2, r1
_080B93DE:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_80B93E4
sub_80B93E4: @ 0x080B93E4
	push {lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _080B940C @ =gStageData
	ldrh r1, [r0, #0x14]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B9410
	bics r2, r1
	b _080B9440
	.align 2, 0
_080B940C: .4byte gStageData
_080B9410:
	orrs r2, r1
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B9448 @ =sub_80B8620
	str r0, [r1]
	ldr r0, _080B944C @ =0x0000FFCF
	ands r2, r0
	ldr r1, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B9432
	movs r0, #0x10
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
_080B9432:
	ldr r0, _080B9450 @ =0xFFFFFE00
	cmp r1, r0
	bge _080B9440
	movs r0, #0x20
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
_080B9440:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B9448: .4byte sub_80B8620
_080B944C: .4byte 0x0000FFCF
_080B9450: .4byte 0xFFFFFE00

	thumb_func_start sub_80B9454
sub_80B9454: @ 0x080B9454
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _080B949C @ =gStageData
	ldrh r1, [r1, #0x16]
	bics r0, r1
	movs r1, #0
	mov r2, ip
	strb r1, [r2]
	movs r2, #0xa2
	lsls r2, r2, #1
	add r2, ip
	ldr r1, _080B94A0 @ =gUnknown_080E3254
	ldr r1, [r1]
	str r1, [r2]
	ldr r3, _080B94A4 @ =gPseudoRandom
	ldr r2, [r3]
	ldr r1, _080B94A8 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080B94AC @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #8
	movs r2, #0x1f
	ands r1, r2
	adds r1, #0x3c
	mov r2, ip
	strh r1, [r2, #2]
	bx lr
	.align 2, 0
_080B949C: .4byte gStageData
_080B94A0: .4byte gUnknown_080E3254
_080B94A4: .4byte gPseudoRandom
_080B94A8: .4byte 0x00196225
_080B94AC: .4byte 0x3C6EF35F

	thumb_func_start sub_80B94B0
sub_80B94B0: @ 0x080B94B0
	push {lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _080B94E0 @ =gStageData
	ldrh r1, [r0, #0x16]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080B94E8
	orrs r2, r1
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B94E4 @ =sub_80B8840
	str r0, [r1]
	b _080B94EA
	.align 2, 0
_080B94E0: .4byte gStageData
_080B94E4: .4byte sub_80B8840
_080B94E8:
	bics r2, r1
_080B94EA:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_80B94F0
sub_80B94F0: @ 0x080B94F0
	push {r4, lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _080B952C @ =gStageData
	ldrh r4, [r0, #0x16]
	movs r0, #0x70
	adds r1, r4, #0
	orrs r1, r0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080B9520
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _080B9530
_080B9520:
	bics r2, r1
	movs r0, #0x80
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
	b _080B953C
	.align 2, 0
_080B952C: .4byte gStageData
_080B9530:
	orrs r2, r4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B9544 @ =sub_80B88E0
	str r0, [r1]
_080B953C:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B9544: .4byte sub_80B88E0

	thumb_func_start sub_80B9548
sub_80B9548: @ 0x080B9548
	push {r4, lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _080B9584 @ =gStageData
	ldrh r4, [r0, #0x16]
	movs r0, #0xb0
	adds r1, r4, #0
	orrs r1, r0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080B9578
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _080B9588
_080B9578:
	bics r2, r1
	movs r0, #0x40
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
	b _080B9594
	.align 2, 0
_080B9584: .4byte gStageData
_080B9588:
	orrs r2, r4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B959C @ =sub_80B8980
	str r0, [r1]
_080B9594:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B959C: .4byte sub_80B8980

	thumb_func_start sub_80B95A0
sub_80B95A0: @ 0x080B95A0
	push {r4, lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r4, [r0]
	ldrh r0, [r3, #0x3e]
	subs r1, r0, #1
	strh r1, [r3, #0x3e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080B95EA
	movs r0, #0
	strb r0, [r3]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B95F4 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B95F8 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080B95FC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B9600 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	strh r0, [r3, #2]
_080B95EA:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B95F4: .4byte gUnknown_080E3254
_080B95F8: .4byte gPseudoRandom
_080B95FC: .4byte 0x00196225
_080B9600: .4byte 0x3C6EF35F

	thumb_func_start sub_80B9604
sub_80B9604: @ 0x080B9604
	push {r4, lr}
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r4, r0, r2
	movs r2, #0
	ldrsh r3, [r4, r2]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r2, [r1, #0x10]
	str r2, [r0]
	ldr r2, [r1, #0x14]
	str r2, [r0, #4]
	movs r3, #0x18
	ldrsh r2, [r1, r3]
	str r2, [r0, #8]
	movs r3, #0x1a
	ldrsh r2, [r1, r3]
	str r2, [r0, #0xc]
	ldrh r2, [r1, #0x1c]
	strh r2, [r0, #0x10]
	adds r2, r1, #0
	adds r2, #0x26
	ldrb r2, [r2]
	strb r2, [r0, #0x12]
	adds r1, #0x27
	ldrb r1, [r1]
	strb r1, [r0, #0x14]
	ldrh r0, [r4]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B9650
sub_80B9650: @ 0x080B9650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	str r1, [sp]
	str r2, [sp, #4]
	mov sl, r3
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r2, #1
	mov sb, r0
	movs r0, #0x1f
	mov r1, sb
	ands r1, r0
	mov sb, r1
	mov r1, ip
	ldr r0, [r1, #4]
	ldr r1, _080B971C @ =0x90060000
	ands r0, r1
	cmp r0, #0
	bne _080B9732
	adds r7, r2, #0
	cmp r7, sb
	beq _080B9732
_080B968C:
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #3
	ldr r2, [sp, #4]
	adds r6, r2, r0
	movs r0, #0x14
	ldrsb r0, [r6, r0]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080B9728
	ldr r2, [sp]
	ldr r0, [r2, #0x10]
	ldr r2, [r6]
	subs r3, r0, r2
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	ldr r1, [r6, #4]
	subs r4, r0, r1
	adds r5, r3, #0
	mov r8, r2
	adds r2, r1, #0
	cmp r3, #0
	bge _080B96BE
	rsbs r5, r3, #0
_080B96BE:
	ldr r0, _080B9720 @ =0x0001DFFF
	cmp r5, r0
	bgt _080B96D2
	adds r1, r4, #0
	cmp r4, #0
	bge _080B96CC
	rsbs r1, r4, #0
_080B96CC:
	ldr r0, _080B9724 @ =0x00013FFF
	cmp r1, r0
	ble _080B9728
_080B96D2:
	mov r0, sl
	cmp r0, #0
	beq _080B96E4
	eors r3, r0
	movs r1, #0x80
	lsls r1, r1, #0x18
	ands r3, r1
	cmp r3, #0
	bne _080B9728
_080B96E4:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _080B96F6
	eors r4, r0
	movs r1, #0x80
	lsls r1, r1, #0x18
	ands r4, r1
	cmp r4, #0
	bne _080B9728
_080B96F6:
	mov r0, r8
	mov r1, ip
	str r0, [r1, #0x10]
	str r2, [r1, #0x14]
	ldr r0, [r6, #8]
	strh r0, [r1, #0x18]
	ldr r0, [r6, #0xc]
	strh r0, [r1, #0x1a]
	ldrh r0, [r6, #0x10]
	strh r0, [r1, #0x1c]
	ldrb r0, [r6, #0x12]
	adds r1, #0x26
	strb r0, [r1]
	ldrb r1, [r6, #0x14]
	mov r0, ip
	adds r0, #0x27
	strb r1, [r0]
	movs r0, #1
	b _080B9734
	.align 2, 0
_080B971C: .4byte 0x90060000
_080B9720: .4byte 0x0001DFFF
_080B9724: .4byte 0x00013FFF
_080B9728:
	subs r7, #1
	movs r0, #0x1f
	ands r7, r0
	cmp r7, sb
	bne _080B968C
_080B9732:
	movs r0, #0
_080B9734:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80B9744
sub_80B9744: @ 0x080B9744
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0xff
	adds r1, r3, #0
	adds r1, #0x14
	movs r2, #0x1f
_080B9750:
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r1, #0x18
	subs r2, #1
	cmp r2, #0
	bge _080B9750
	movs r1, #0
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r3, r2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B9770
sub_80B9770: @ 0x080B9770
	bx lr
	.align 2, 0

	thumb_func_start sub_80B9774
sub_80B9774: @ 0x080B9774
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	ldr r1, _080B97A0 @ =0x90060004
	ands r0, r1
	cmp r0, #0
	bne _080B9798
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80B97A4
	cmp r0, #0
	bne _080B9798
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80B9604
_080B9798:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B97A0: .4byte 0x90060004

	thumb_func_start sub_80B97A4
sub_80B97A4: @ 0x080B97A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov ip, r1
	movs r0, #0xc0
	lsls r0, r0, #2
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r7, r1, #1
	movs r0, #0x1f
	ands r7, r0
	adds r5, r1, #0
	cmp r5, r7
	beq _080B982A
	subs r0, #0x20
	mov sb, r0
_080B97CA:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	mov r1, r8
	adds r4, r1, r0
	ldrb r0, [r4, #0x14]
	lsls r6, r0, #0x18
	asrs r0, r6, #0x18
	cmp r0, sb
	beq _080B9820
	mov r2, ip
	ldr r3, [r2, #0x10]
	ldr r2, [r4]
	mov r0, ip
	ldr r1, [r0, #0x14]
	ldr r0, [r4, #4]
	subs r1, r1, r0
	subs r3, r3, r2
	cmp r3, #0
	bge _080B97F4
	rsbs r3, r3, #0
_080B97F4:
	ldr r0, _080B9818 @ =0x00003BFF
	cmp r3, r0
	bgt _080B9820
	cmp r1, #0
	bge _080B9800
	rsbs r1, r1, #0
_080B9800:
	ldr r0, _080B981C @ =0x000027FF
	cmp r1, r0
	bgt _080B9820
	mov r1, ip
	adds r1, #0x27
	lsrs r0, r6, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bne _080B9820
	movs r0, #1
	b _080B982C
	.align 2, 0
_080B9818: .4byte 0x00003BFF
_080B981C: .4byte 0x000027FF
_080B9820:
	subs r5, #1
	movs r0, #0x1f
	ands r5, r0
	cmp r5, r7
	bne _080B97CA
_080B982A:
	movs r0, #0
_080B982C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
