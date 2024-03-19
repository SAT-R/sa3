.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
