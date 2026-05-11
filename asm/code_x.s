.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ TODO: This *might* be part of the special_stage module.

@ R0: Struc_3001150 *strc
@ R1: Player *partner
@ R2: Player *player
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
	bl nullsub_80B9770
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

@ R0 : 0x03001150
@ R1 : Player *partner
@ R2 : Player *player
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

    @ R0 <- Struc_3001150 *
	thumb_func_start sub_80B7A94
sub_80B7A94: @ 0x080B7A94
	push {lr}
	adds r0, #0x1c
	bl InputBufferGetCurrent
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
    
    @ R0 <- Struc_3001150 *
	thumb_func_start sub_80B7AA4
sub_80B7AA4: @ 0x080B7AA4
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
    
@ R0: Struc_3001150 *strc
@ R1: Player *partner
@ R2: Player *player
	thumb_func_start nullsub_80B7AAC
nullsub_80B7AAC:
    bx lr
    .align 2, 0

    @ R0 : Struc_3001150_1C*
    @ R1 : u16
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
    
    @ R0 : Struc_3001150_1C*
    @ R1 : Player *
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

    @ R0 : Struc_3001150_1C*
    @ R1 : Player *
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
	lsls r0, r0, #7 @ Q(120)
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

.if	0
.endif
