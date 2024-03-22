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
	bl __ieee754_powf
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
	bl isnanf
	cmp r0, #0
	beq _080C75A4
	b _080C7954
_080C75A4:
	adds r0, r7, #0
	bl isnanf
	cmp r0, #0
	beq _080C7620
	ldr r1, _080C75FC @ =0x00000000
	adds r0, r6, #0
	bl __eqsf2
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
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl __extendsfdf2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r7, #0
	bl __extendsfdf2
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
	bl __errno
	movs r1, #0x21
	b _080C7924
_080C7620:
	ldr r1, _080C767C @ =0x00000000
	mov r8, r1
	adds r0, r7, #0
	bl __eqsf2
	adds r5, r0, #0
	cmp r5, #0
	bne _080C7710
	adds r0, r6, #0
	mov r1, r8
	bl __eqsf2
	cmp r0, #0
	bne _080C768C
	movs r0, #1
	str r0, [sp]
	ldr r0, _080C7680 @ =gUnknown_082B9C24
	str r0, [sp, #4]
	str r5, [sp, #0x20]
	adds r0, r7, #0
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl __extendsfdf2
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
	bl __errno
	movs r1, #0x21
	b _080C7924
	.align 2, 0
_080C767C: .4byte 0x00000000
_080C7680: .4byte gUnknown_082B9C24
_080C7684: .4byte 0x00000000
_080C7688: .4byte 0x00000000
_080C768C:
	adds r0, r6, #0
	bl finitef
	cmp r0, #0
	bne _080C7698
	b _080C7954
_080C7698:
	adds r0, r6, #0
	mov r1, r8
	bl __ltsf2
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
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl __extendsfdf2
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
	bl __negdf2
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
	bl __errno
	movs r1, #0x21
	b _080C7924
	.align 2, 0
_080C7708: .4byte gUnknown_082B9CB8
_080C770C: .4byte gUnknown_082B9CC0
_080C7710:
	adds r0, r4, #0
	bl finitef
	adds r5, r0, #0
	cmp r5, #0
	beq _080C771E
	b _080C78C4
_080C771E:
	adds r0, r7, #0
	bl finitef
	cmp r0, #0
	bne _080C772A
	b _080C78C4
_080C772A:
	adds r0, r6, #0
	bl finitef
	cmp r0, #0
	bne _080C7736
	b _080C78C4
_080C7736:
	adds r0, r4, #0
	bl isnanf
	adds r1, r0, #0
	cmp r1, #0
	beq _080C77A8
	movs r0, #1
	str r0, [sp]
	ldr r0, _080C776C @ =gUnknown_082B9C24
	str r0, [sp, #4]
	str r5, [sp, #0x20]
	adds r0, r7, #0
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl __extendsfdf2
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
	bl __errno
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
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl __extendsfdf2
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
	bl __extendsfdf2
	ldr r2, _080C7834 @ =0x3FE00000
	ldr r3, _080C7838 @ =0x00000000
	bl __muldf3
	bl __truncdfsf2
	adds r6, r0, #0
	adds r0, r7, #0
	bl __extendsfdf2
	ldr r2, _080C783C @ =0x00000000
	ldr r3, _080C7840 @ =0x00000000
	bl __ltdf2
	cmp r0, #0
	blt _080C77FC
	b _080C790C
_080C77FC:
	adds r0, r6, #0
	bl __extendsfdf2
	bl sub_80C8224
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	bl __extendsfdf2
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __nedf2
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
	bl __extendsfdf2
	ldr r2, _080C78B4 @ =0x3FE00000
	ldr r3, _080C78B8 @ =0x00000000
	bl __muldf3
	bl __truncdfsf2
	adds r6, r0, #0
	adds r0, r7, #0
	bl __extendsfdf2
	ldr r2, _080C78BC @ =0x00000000
	ldr r3, _080C78C0 @ =0x00000000
	bl __ltdf2
	cmp r0, #0
	bge _080C790C
	adds r0, r6, #0
	bl __extendsfdf2
	bl sub_80C8224
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	bl __extendsfdf2
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __nedf2
	cmp r0, #0
	beq _080C790C
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl __negdf2
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
	bl __eqsf2
	adds r5, r0, #0
	cmp r5, #0
	bne _080C7954
	adds r0, r7, #0
	bl finitef
	cmp r0, #0
	beq _080C7954
	adds r0, r6, #0
	bl finitef
	cmp r0, #0
	beq _080C7954
	movs r0, #4
	str r0, [sp]
	ldr r0, _080C7944 @ =gUnknown_082B9C24
	str r0, [sp, #4]
	str r5, [sp, #0x20]
	adds r0, r7, #0
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl __extendsfdf2
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
	bl __errno
	movs r1, #0x22
_080C7924:
	str r1, [r0]
_080C7926:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _080C7934
	bl __errno
	ldr r1, [sp, #0x20]
	str r1, [r0]
_080C7934:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	bl __truncdfsf2
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

	thumb_func_start __ieee754_powf
__ieee754_powf: @ 0x080C7960
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
	bl __addsf3
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
	bl __subsf3
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
	bl __negsf2
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
	bl __divsf3
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
	bl fabsf
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
	bl __divsf3
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
	bl __subsf3
	adds r1, r0, #0
	bl __divsf3
	b _080C7AD4
	.align 2, 0
_080C7AC0: .4byte 0x3F800000
_080C7AC4: .4byte 0xC0800000
_080C7AC8:
	ldr r2, [sp, #0x14]
	cmp r2, #1
	bne _080C7AD6
	adds r0, r4, #0
	bl __negsf2
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
	bl __subsf3
	adds r1, r0, #0
	bl __divsf3
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
	bl __subsf3
	adds r6, r0, #0
	adds r1, r6, #0
	bl __mulsf3
	adds r5, r0, #0
	ldr r1, _080C7BC4 @ =0x3E800000
	adds r0, r6, #0
	bl __mulsf3
	adds r1, r0, #0
	ldr r0, _080C7BC8 @ =0x3EAAAAAB
	bl __subsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	adds r1, r0, #0
	ldr r0, _080C7BCC @ =0x3F000000
	bl __subsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __mulsf3
	mov r8, r0
	ldr r1, _080C7BD0 @ =0x3FB8AA00
	adds r0, r6, #0
	bl __mulsf3
	str r0, [sp, #0xc]
	ldr r1, _080C7BD4 @ =0x36ECA570
	adds r0, r6, #0
	bl __mulsf3
	adds r5, r0, #0
	ldr r1, _080C7BD8 @ =0x3FB8AA3B
	mov r0, r8
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __subsf3
	mov sl, r0
	ldr r0, [sp, #0xc]
	mov r1, sl
	bl __addsf3
	adds r7, r0, #0
	ldr r0, _080C7BDC @ =0xFFFFF000
	ands r7, r0
	adds r0, r7, #0
	ldr r1, [sp, #0xc]
	bl __subsf3
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
	bl __mulsf3
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
	bl __subsf3
	str r0, [sp, #0xc]
	mov r0, r8
	ldr r1, [sp, #0x20]
	bl __addsf3
	adds r1, r0, #0
	ldr r0, _080C7EB4 @ =0x3F800000
	bl __divsf3
	mov sl, r0
	ldr r0, [sp, #0xc]
	mov r1, sl
	bl __mulsf3
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
	bl __subsf3
	adds r1, r0, #0
	mov r0, r8
	bl __subsf3
	mov sb, r0
	adds r0, r5, #0
	adds r1, r7, #0
	bl __mulsf3
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	bl __subsf3
	adds r7, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r7, #0
	bl __subsf3
	adds r1, r0, #0
	mov r0, sl
	bl __mulsf3
	mov r8, r0
	ldr r0, [sp, #8]
	adds r1, r0, #0
	bl __mulsf3
	mov sl, r0
	mov r1, sl
	bl __mulsf3
	adds r7, r0, #0
	ldr r1, _080C7EBC @ =0x3E53F142
	mov r0, sl
	bl __mulsf3
	ldr r1, _080C7EC0 @ =0x3E6C3255
	bl __addsf3
	adds r1, r0, #0
	mov r0, sl
	bl __mulsf3
	ldr r1, _080C7EC4 @ =0x3E8BA305
	bl __addsf3
	adds r1, r0, #0
	mov r0, sl
	bl __mulsf3
	ldr r1, _080C7EC8 @ =0x3EAAAAAB
	bl __addsf3
	adds r1, r0, #0
	mov r0, sl
	bl __mulsf3
	ldr r1, _080C7ECC @ =0x3EDB6DB7
	bl __addsf3
	adds r1, r0, #0
	mov r0, sl
	bl __mulsf3
	ldr r1, _080C7ED0 @ =0x3F19999A
	bl __addsf3
	adds r1, r0, #0
	adds r0, r7, #0
	bl __mulsf3
	str r0, [sp, #4]
	adds r0, r5, #0
	ldr r1, [sp, #8]
	bl __addsf3
	adds r1, r0, #0
	mov r0, r8
	bl __mulsf3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	bl __addsf3
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r5, #0
	bl __mulsf3
	mov sl, r0
	ldr r1, _080C7ED4 @ =0x40400000
	bl __addsf3
	ldr r1, [sp, #4]
	bl __addsf3
	adds r7, r0, #0
	ldr r0, _080C7EB8 @ =0xFFFFF000
	ands r7, r0
	adds r0, r7, #0
	ldr r1, _080C7ED4 @ =0x40400000
	bl __subsf3
	mov r1, sl
	bl __subsf3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	bl __subsf3
	mov sb, r0
	adds r0, r5, #0
	adds r1, r7, #0
	bl __mulsf3
	str r0, [sp, #0xc]
	mov r0, r8
	adds r1, r7, #0
	bl __mulsf3
	adds r5, r0, #0
	mov r0, sb
	ldr r1, [sp, #8]
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __addsf3
	mov sl, r0
	ldr r0, [sp, #0xc]
	mov r1, sl
	bl __addsf3
	adds r7, r0, #0
	ldr r1, _080C7EB8 @ =0xFFFFF000
	ands r7, r1
	adds r0, r7, #0
	ldr r1, [sp, #0xc]
	bl __subsf3
	adds r1, r0, #0
	mov r0, sl
	bl __subsf3
	mov sl, r0
	ldr r1, _080C7ED8 @ =0x3F763800
	adds r0, r7, #0
	bl __mulsf3
	mov r8, r0
	ldr r1, _080C7EDC @ =0x369DC3A0
	adds r0, r7, #0
	bl __mulsf3
	adds r5, r0, #0
	ldr r1, _080C7EE0 @ =0x3F76384F
	mov r0, sl
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __addsf3
	ldr r1, _080C7EE4 @ =gUnknown_082B9C3C
	ldr r2, [sp, #0x1c]
	adds r1, r2, r1
	ldr r1, [r1]
	bl __addsf3
	adds r5, r0, #0
	ldr r0, [sp, #0x18]
	bl __floatsisf
	adds r6, r0, #0
	mov r0, r8
	adds r1, r5, #0
	bl __addsf3
	ldr r1, _080C7EE8 @ =gUnknown_082B9C34
	ldr r3, [sp, #0x1c]
	adds r1, r3, r1
	ldr r1, [r1]
	mov sb, r1
	bl __addsf3
	adds r1, r6, #0
	bl __addsf3
	adds r7, r0, #0
	ldr r2, _080C7EB8 @ =0xFFFFF000
	ands r7, r2
	adds r0, r7, #0
	adds r1, r6, #0
	bl __subsf3
	mov r1, sb
	bl __subsf3
	mov r1, r8
	bl __subsf3
	adds r1, r0, #0
	adds r0, r5, #0
_080C7E38:
	bl __subsf3
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
	bl __subsf3
	adds r1, r7, #0
	bl __mulsf3
	adds r5, r0, #0
	ldr r0, [sp]
	mov r1, r8
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __addsf3
	mov sl, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl __mulsf3
	adds r7, r0, #0
	mov r0, sl
	adds r1, r7, #0
	bl __addsf3
	adds r4, r0, #0
	adds r5, r4, #0
	movs r0, #0x86
	lsls r0, r0, #0x17
	cmp r5, r0
	ble _080C7EF4
	ldr r5, _080C7EF0 @ =0x7149F2CA
	ldr r0, [sp, #8]
	adds r1, r5, #0
	bl __mulsf3
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
	bl __addsf3
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl __subsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __gtsf2
	cmp r0, #0
	ble _080C7F80
	ldr r5, _080C7F28 @ =0x7149F2CA
	ldr r0, [sp, #8]
	adds r1, r5, #0
	bl __mulsf3
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
	bl __mulsf3
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
	bl __subsf3
	adds r1, r0, #0
	mov r0, sl
	bl __lesf2
	cmp r0, #0
	bgt _080C7F80
	ldr r5, _080C7F7C @ =0x0DA24260
	ldr r0, [sp, #8]
	adds r1, r5, #0
	bl __mulsf3
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
	bl __subsf3
	adds r7, r0, #0
_080C7FDC:
	mov r0, sl
	adds r1, r7, #0
	bl __addsf3
	adds r6, r0, #0
	ldr r0, _080C80F0 @ =0xFFFFF000
	ands r6, r0
	ldr r1, _080C80F4 @ =0x3F317200
	adds r0, r6, #0
	bl __mulsf3
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	bl __subsf3
	adds r1, r0, #0
	mov r0, sl
	bl __subsf3
	ldr r1, _080C80F8 @ =0x3F317218
	bl __mulsf3
	adds r5, r0, #0
	ldr r1, _080C80FC @ =0x35BFBE8C
	adds r0, r6, #0
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __addsf3
	mov sl, r0
	ldr r0, [sp, #0xc]
	mov r1, sl
	bl __addsf3
	adds r4, r0, #0
	ldr r1, [sp, #0xc]
	bl __subsf3
	adds r1, r0, #0
	mov r0, sl
	bl __subsf3
	mov r8, r0
	adds r0, r4, #0
	adds r1, r4, #0
	bl __mulsf3
	adds r6, r0, #0
	ldr r1, _080C8100 @ =0x3331BB4C
	bl __mulsf3
	ldr r1, _080C8104 @ =0xB5DDEA0E
	bl __addsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	ldr r1, _080C8108 @ =0x388AB355
	bl __addsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	ldr r1, _080C810C @ =0xBB360B61
	bl __addsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	ldr r1, _080C8110 @ =0x3E2AAAAB
	bl __addsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __subsf3
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl __mulsf3
	adds r5, r0, #0
	ldr r1, _080C8114 @ =0x40000000
	adds r0, r7, #0
	bl __subsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __divsf3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl __mulsf3
	adds r1, r0, #0
	mov r0, r8
	bl __addsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __subsf3
	str r0, [sp, #4]
	adds r1, r4, #0
	bl __subsf3
	adds r1, r0, #0
	ldr r0, _080C8118 @ =0x3F800000
	bl __subsf3
	adds r4, r0, #0
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x17
	adds r5, r4, r0
	asrs r0, r5, #0x17
	cmp r0, #0
	bgt _080C811C
	adds r0, r4, #0
	adds r1, r2, #0
	bl scalbnf
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
	bl __mulsf3
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
	bl __mulsf3
	adds r1, r4, #0
	bl __addsf3
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
	bl __subsf3
	adds r1, r0, #0
	bl __divsf3
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
	bl __gesf2
	cmp r0, #0
	blt _080C81FE
	adds r0, r4, #0
	adds r1, r4, #0
	bl __gtsf2
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
	bl __nedf2
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
	bl __adddf3
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
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
	bl __adddf3
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
	bl __adddf3
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
_080C8378:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080C8380: .4byte gUnknown_082B9CC4

	thumb_func_start fabsf
fabsf: @ 0x080C8384
	ldr r1, _080C838C @ =0x7FFFFFFF
	ands r0, r1
	bx lr
	.align 2, 0
_080C838C: .4byte 0x7FFFFFFF

	thumb_func_start finitef
finitef: @ 0x080C8390
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

	thumb_func_start isnanf
isnanf: @ 0x080C83A8
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

	thumb_func_start scalbnf
scalbnf: @ 0x080C83BC
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
	bl __mulsf3
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
	bl __addsf3
	b _080C849C
_080C841E:
	adds r2, r2, r4
	cmp r2, #0xfe
	ble _080C8438
	ldr r4, _080C8434 @ =0x7149F2CA
	adds r0, r4, #0
	adds r1, r3, #0
	bl copysignf
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
	bl copysignf
	adds r1, r4, #0
	b _080C8498
	.align 2, 0
_080C846C: .4byte 0x0000C350
_080C8470: .4byte 0x7149F2CA
_080C8474:
	ldr r4, _080C8484 @ =0x0DA24260
	adds r0, r4, #0
	adds r1, r3, #0
	bl copysignf
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
	bl __mulsf3
_080C849C:
	pop {r4, r5, pc}
	.align 2, 0
_080C84A0: .4byte 0x807FFFFF
_080C84A4: .4byte 0x33000000

	thumb_func_start copysignf
copysignf: @ 0x080C84A8
	ldr r2, _080C84B8 @ =0x7FFFFFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r0, r1
	orrs r0, r2
	bx lr
	.align 2, 0
_080C84B8: .4byte 0x7FFFFFFF
