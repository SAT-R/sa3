.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.else
	thumb_func_start sub_878_80862D8
sub_878_80862D8: @ 0x080862D8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	bne _080862E4
	b _080863F0
_080862E4:
	ldr r1, [r5, #0x28]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r0, r2
	cmp r0, #0
	bne _080863F0
	ldr r0, [r5, #0x2c]
	ldr r0, [r0, #4]
	ands r0, r2
	cmp r0, #0
	bne _080863F0
	adds r4, r1, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08086354
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_878_80863FC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0808634E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_878_80865B0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0808634E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80871CC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0808634E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_878_8086774
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _08086354
_0808634E:
	adds r0, r4, #0
	bl sub_801038C
_08086354:
	ldr r4, [r5, #0x2c]
	adds r0, r5, #0
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	beq _08086392
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_878_80865B0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808638A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80871CC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808638A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_878_8086774
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080863F0
_0808638A:
	adds r0, r4, #0
	bl sub_8010C58
	b _080863F0
_08086392:
	ldr r0, _080863F8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bne _080863F0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080863F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_878_80863FC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080863EA
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_878_80865B0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080863EA
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80871CC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080863EA
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_878_8086774
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080863F0
_080863EA:
	adds r0, r4, #0
	bl sub_801038C
_080863F0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080863F8: .4byte gStageData

	thumb_func_start sub_878_80863FC
sub_878_80863FC: @ 0x080863FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r3, r1, #0
	movs r0, #0
	mov sb, r0
	adds r0, r3, #0
	adds r0, #0xe0
	ldr r6, [r0]
	movs r1, #0xc
	adds r1, r1, r6
	mov ip, r1
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08086430
	mov r4, ip
	ldr r1, [r4, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08086434
_08086430:
	movs r0, #0
	b _0808659E
_08086434:
	mov r0, r8
	ldr r1, [r0, #0x34]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080864EC
	ldr r5, [r3, #0x10]
	ldr r0, _080864D8 @ =gCamera
	adds r0, #0x6a
	asrs r5, r5, #8
	ldrh r0, [r0]
	adds r5, r5, r0
	mov r0, r8
	adds r0, #0xe3
	ldrb r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r0, #4
	subs r5, r5, r0
	ldr r4, [r3, #0x14]
	asrs r4, r4, #8
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sa2__sub_8004418
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, _080864DC @ =gUnknown_080D5D30
	mov r0, r8
	adds r0, #0xce
	ldrh r0, [r0]
	lsrs r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r8, r0
	mov r1, r8
	lsls r1, r1, #6
	mov r8, r1
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r1, r0
	adds r0, r1, #0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xc
	bl __divsi3
	adds r1, r0, #0
	movs r0, #0x20
	subs r1, r0, r1
	mov r3, r8
	lsls r6, r6, #0x10
	asrs r0, r6, #0x10
	subs r2, r3, r0
	cmp r2, #0
	blt _080864E0
	cmp r2, r1
	ble _080864E6
	b _0808659C
	.align 2, 0
_080864D8: .4byte gCamera
_080864DC: .4byte gUnknown_080D5D30
_080864E0:
	subs r0, r0, r3
	cmp r0, r1
	bgt _0808659C
_080864E6:
	movs r4, #2
	mov sb, r4
	b _0808659C
_080864EC:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0808659C
	ldr r2, [r3, #0x10]
	asrs r2, r2, #8
	ldr r1, _080865AC @ =gCamera
	adds r0, r1, #0
	adds r0, #0x6a
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r2, r2, r0
	ldr r0, [r1]
	subs r2, r2, r0
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #4]
	subs r7, r0, r1
	mov r0, r8
	adds r0, #0x3c
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r1, r8
	ldr r0, [r1, #0x48]
	adds r3, r0, r4
	adds r0, r6, #0
	adds r0, #0x30
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r1, r2, r5
	cmp r3, r1
	bgt _08086542
	mov r0, r8
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r1
	bge _08086554
	cmp r3, r1
	blt _0808659C
_08086542:
	adds r0, r6, #0
	adds r0, #0x32
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	blt _0808659C
_08086554:
	mov r0, r8
	adds r0, #0x3d
	movs r3, #0
	ldrsb r3, [r0, r3]
	mov r4, r8
	ldr r0, [r4, #0x4c]
	adds r2, r0, r3
	mov r0, ip
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r7, r4
	cmp r2, r1
	bgt _08086586
	mov r0, r8
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08086598
	cmp r2, r1
	blt _0808659C
_08086586:
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0808659C
_08086598:
	movs r0, #1
	mov sb, r0
_0808659C:
	mov r0, sb
_0808659E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080865AC: .4byte gCamera

	thumb_func_start sub_878_80865B0
sub_878_80865B0: @ 0x080865B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r3, r0, #0
	adds r6, r1, #0
	movs r0, #0
	mov sb, r0
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r1, r1, r3
	mov r8, r1
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	mov ip, r0
	mov r7, ip
	adds r7, #0xc
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080865EE
	mov r2, r8
	ldr r0, [r2, #0x20]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _080865F2
_080865EE:
	movs r0, #0
	b _0808675C
_080865F2:
	ldr r1, [r7, #0x20]
	cmp r1, r2
	beq _080866A4
	adds r0, r3, #0
	adds r0, #0x9c
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r4, #0xec
	lsls r4, r4, #2
	adds r1, r3, r4
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov sl, r1
	adds r2, r0, r1
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	ldr r0, _0808669C @ =gCamera
	adds r0, #0x6a
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r1, r1, r0
	mov r0, ip
	adds r0, #0x30
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _08086646
	ldr r5, _080866A0 @ =0x000003B2
	adds r0, r3, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r5, sl
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _0808665A
	cmp r2, r1
	bge _08086646
	b _0808675A
_08086646:
	mov r0, ip
	adds r0, #0x32
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	bge _0808665A
	b _0808675A
_0808665A:
	adds r0, r3, #0
	adds r0, #0xa0
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r2, r8
	adds r2, #0x25
	movs r4, #0
	ldrsb r4, [r2, r4]
	adds r3, r0, r4
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	adds r2, r7, #0
	adds r2, #0x25
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r0, r2
	cmp r3, r1
	bgt _08086696
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r1
	bge _08086756
	cmp r3, r1
	blt _0808675A
_08086696:
	adds r0, r7, #0
	adds r0, #0x27
	b _08086748
	.align 2, 0
_0808669C: .4byte gCamera
_080866A0: .4byte 0x000003B2
_080866A4:
	ldr r0, [r7, #0x28]
	cmp r0, r1
	beq _0808675A
	adds r0, r3, #0
	adds r0, #0x9c
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r2, #0xec
	lsls r2, r2, #2
	adds r1, r3, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov sl, r1
	adds r2, r0, r1
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	ldr r0, _0808676C @ =gCamera
	adds r0, #0x6a
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	mov r0, ip
	adds r0, #0x38
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	cmp r2, r1
	bgt _080866F6
	ldr r5, _08086770 @ =0x000003B2
	adds r0, r3, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r5, sl
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _08086708
	cmp r2, r1
	blt _0808675A
_080866F6:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0808675A
_08086708:
	adds r0, r3, #0
	adds r0, #0xa0
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r2, r8
	adds r2, #0x25
	movs r4, #0
	ldrsb r4, [r2, r4]
	adds r3, r0, r4
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	adds r2, r7, #0
	adds r2, #0x2d
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r0, r2
	cmp r3, r1
	bgt _08086744
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r1
	bge _08086756
	cmp r3, r1
	blt _0808675A
_08086744:
	adds r0, r7, #0
	adds r0, #0x2f
_08086748:
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r1, r0
	cmp r0, r3
	blt _0808675A
_08086756:
	movs r0, #1
	mov sb, r0
_0808675A:
	mov r0, sb
_0808675C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808676C: .4byte gCamera
_08086770: .4byte 0x000003B2

	thumb_func_start sub_878_8086774
sub_878_8086774: @ 0x08086774
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov sb, r1
	movs r0, #0
	mov r8, r0
	movs r5, #0
_08086788:
	movs r4, #0
_0808678A:
	lsls r2, r5, #4
	subs r2, r2, r5
	lsls r0, r2, #4
	ldr r1, _080867F8 @ =0x00000454
	adds r0, r0, r1
	adds r0, r6, r0
	lsls r3, r4, #2
	adds r3, r3, r4
	lsls r1, r3, #3
	adds r0, r0, r1
	lsls r3, r3, #2
	lsls r2, r2, #3
	adds r3, r3, r2
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r1, r6, r2
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	movs r7, #0xb8
	lsls r7, r7, #1
	adds r2, r6, r7
	adds r2, r2, r3
	ldr r2, [r2]
	asrs r2, r2, #8
	mov r3, sb
	str r3, [sp]
	movs r3, #0
	bl sub_8010184
	cmp r0, #1
	bne _080867D2
	movs r7, #1
	mov r8, r7
	movs r5, #4
	movs r4, #6
_080867D2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0808678A
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08086788
	mov r0, r8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080867F8: .4byte 0x00000454

	thumb_func_start sub_878_80867FC
sub_878_80867FC: @ 0x080867FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	movs r0, #0
	str r0, [sp]
	mov r1, ip
	ldr r1, [r1, #0x28]
	str r1, [sp, #4]
	mov r2, ip
	ldr r2, [r2, #0x2c]
	mov sl, r2
	ldr r0, _080868A4 @ =0xFFFFFF00
	ands r0, r5
	movs r1, #0xf8
	orrs r0, r1
	ldr r1, _080868A8 @ =0xFFFF00FF
	ands r1, r0
	movs r0, #0xf8
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, _080868AC @ =0xFF00FFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	ldr r3, _080868B0 @ =0x00FFFFFF
	mov r8, r3
	mov r7, r8
	ands r7, r0
	movs r0, #0x80
	lsls r0, r0, #0x14
	adds r1, r7, #0
	orrs r1, r0
	mov r8, r1
	mov r5, r8
	mov r0, ip
	adds r0, #0xb8
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r3, _080868B4 @ =0x000003FF
	adds r0, r3, #0
	ands r1, r0
	ldr r3, _080868B8 @ =gSineTable
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r1, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r2, r0, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sb, r0
	mov r0, ip
	adds r0, #0x9c
	ldr r0, [r0]
	adds r2, r2, r0
	mov r0, ip
	adds r0, #0xa0
	ldr r0, [r0]
	add sb, r0
	cmp r6, #0
	beq _080868BC
	cmp r6, #1
	beq _08086978
	b _08086A2A
	.align 2, 0
_080868A4: .4byte 0xFFFFFF00
_080868A8: .4byte 0xFFFF00FF
_080868AC: .4byte 0xFF00FFFF
_080868B0: .4byte 0x00FFFFFF
_080868B4: .4byte 0x000003FF
_080868B8: .4byte gSineTable
_080868BC:
	mov r0, ip
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	bne _080868C8
	b _08086A2A
_080868C8:
	mov r0, sl
	adds r0, #0xe0
	ldr r3, [r0]
	movs r6, #0xc
	adds r6, r6, r3
	mov ip, r6
	asrs r1, r2, #8
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r2, r1, r0
	mov r7, sl
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	ldr r0, _08086974 @ =gCamera
	adds r0, #0x6a
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x38
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r1, r1, r6
	cmp r2, r1
	bgt _08086916
	mov r7, r8
	lsls r0, r7, #8
	asrs r0, r0, #0x18
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r7, [sp, #8]
	subs r0, r0, r7
	adds r0, r2, r0
	cmp r0, r1
	bge _0808692A
	cmp r2, r1
	bge _08086916
	b _08086A2A
_08086916:
	adds r0, r3, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	bge _0808692A
	b _08086A2A
_0808692A:
	mov r1, sb
	asrs r0, r1, #8
	adds r4, r5, #0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x18
	adds r3, r0, r1
	mov r2, sl
	ldr r0, [r2, #0x14]
	asrs r0, r0, #8
	mov r2, ip
	adds r2, #0x2d
	movs r5, #0
	ldrsb r5, [r2, r5]
	adds r2, r0, r5
	cmp r3, r2
	bgt _08086958
	asrs r0, r4, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _0808696A
	cmp r3, r2
	blt _08086A2A
_08086958:
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	blt _08086A2A
_0808696A:
	mov r0, sl
	bl sub_8010C58
	b _08086A26
	.align 2, 0
_08086974: .4byte gCamera
_08086978:
	ldr r0, [sp, #4]
	adds r0, #0xe0
	ldr r3, [r0]
	movs r6, #0xc
	adds r6, r6, r3
	mov ip, r6
	ldr r1, [r6, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08086A2A
	asrs r1, r2, #8
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	mov sl, r0
	adds r2, r1, r0
	ldr r7, [sp, #4]
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	ldr r0, _08086A3C @ =gCamera
	adds r0, #0x6a
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x38
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r1, r1, r6
	cmp r2, r1
	bgt _080869CE
	mov r7, r8
	lsls r0, r7, #8
	asrs r0, r0, #0x18
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r7, sl
	subs r0, r0, r7
	adds r0, r2, r0
	cmp r0, r1
	bge _080869E0
	cmp r2, r1
	blt _08086A2A
_080869CE:
	adds r0, r3, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _08086A2A
_080869E0:
	mov r1, sb
	asrs r0, r1, #8
	adds r4, r5, #0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x18
	adds r3, r0, r1
	ldr r2, [sp, #4]
	ldr r0, [r2, #0x14]
	asrs r0, r0, #8
	mov r2, ip
	adds r2, #0x2d
	movs r5, #0
	ldrsb r5, [r2, r5]
	adds r2, r0, r5
	cmp r3, r2
	bgt _08086A0E
	asrs r0, r4, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _08086A20
	cmp r3, r2
	blt _08086A2A
_08086A0E:
	mov r0, ip
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	blt _08086A2A
_08086A20:
	ldr r0, [sp, #4]
	bl sub_8010C88
_08086A26:
	movs r3, #1
	str r3, [sp]
_08086A2A:
	ldr r0, [sp]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08086A3C: .4byte gCamera

	thumb_func_start ExtraBoss_CreateMissile
ExtraBoss_CreateMissile: @ 0x08086A40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bne _08086A58
	b _08086B84
_08086A58:
	ldr r0, _08086A94 @ =Task_50_8086B94
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08086A98 @ =TaskDestructor_50_80870AC
	str r1, [sp]
	movs r1, #0x50
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	str r7, [r6, #0x4c]
	strb r4, [r6, #0x16]
	ldr r2, _08086A9C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _08086AA0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08086AA4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08086AA8
	movs r0, #0x80
	lsls r0, r0, #2
	b _08086AAC
	.align 2, 0
_08086A94: .4byte Task_50_8086B94
_08086A98: .4byte TaskDestructor_50_80870AC
_08086A9C: .4byte gPseudoRandom
_08086AA0: .4byte 0x00196225
_08086AA4: .4byte 0x3C6EF35F
_08086AA8:
	movs r0, #0x80
	lsls r0, r0, #1
_08086AAC:
	str r0, [r6, #0xc]
	ldrb r0, [r6, #0x16]
	cmp r0, #2
	bne _08086AC8
	movs r2, #0x94
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r6, #8]
	movs r0, #0
	strh r0, [r6, #0x14]
	movs r0, #1
	strb r0, [r7, #3]
	b _08086AE0
_08086AC8:
	ldr r0, [r6, #0xc]
	rsbs r0, r0, #0
	str r0, [r6, #0xc]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [r6, #8]
	movs r0, #0
	strh r0, [r6, #0x14]
	movs r0, #1
	strb r0, [r7, #2]
_08086AE0:
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6]
	adds r2, #4
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6, #4]
	movs r0, #0
	mov r8, r0
	movs r4, #0
	movs r0, #1
	strh r0, [r6, #0x10]
	strh r4, [r6, #0x12]
	movs r0, #0x96
	lsls r0, r0, #2     @ SE_MINECART_DESTROYED
	bl m4aSongNumStart
	adds r3, r6, #0
	adds r3, #0x18
	adds r5, r6, #0
	adds r5, #0x40
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r3, #0xc]
	mov r1, r8
	strb r1, [r3, #0x1a]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r1, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	ldrb r0, [r6, #0x16]
	cmp r0, #2
	bne _08086B56
	ldr r0, [r7, #0x1c]
	str r0, [r6, #0x18]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	b _08086B5A
_08086B56:
	ldr r0, [r7, #0x20]
	str r0, [r6, #0x18]
_08086B5A:
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r2, _08086B90 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	ldrh r0, [r6, #0x14]
	strh r0, [r5]
	ldrh r0, [r3, #0x10]
	strh r0, [r5, #6]
	ldrh r0, [r3, #0x12]
	strh r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #2]
	strh r0, [r5, #4]
_08086B84:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08086B90: .4byte gCamera

	thumb_func_start Task_50_8086B94
Task_50_8086B94: @ 0x08086B94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08086BDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r7, [r4, #0x4c]
	adds r0, #0x18
	adds r6, r1, r0
	ldr r2, _08086BE0 @ =0x03000040
	adds r2, r2, r1
	mov r8, r2
	movs r0, #0
	mov sb, r0
	ldrb r0, [r7]
	cmp r0, #0
	bne _08086BCA
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	bne _08086BCA
	movs r0, #0x64
	strh r0, [r4, #0x12]
_08086BCA:
	ldrh r0, [r4, #0x12]
	cmp r0, #0x64
	beq _08086C0C
	cmp r0, #0x64
	bgt _08086BE4
	cmp r0, #0
	beq _08086BEA
	b _08086C38
	.align 2, 0
_08086BDC: .4byte gCurTask
_08086BE0: .4byte 0x03000040
_08086BE4:
	cmp r0, #0x6e
	beq _08086C28
	b _08086C38
_08086BEA:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r1, r0, r1
	str r1, [r4, #4]
	ldrb r0, [r4, #0x16]
	cmp r0, #2
	bne _08086C00
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _08086C38
	b _08086C06
_08086C00:
	ldr r0, [r4, #8]
	cmp r1, r0
	bgt _08086C38
_08086C06:
	movs r0, #0x64
	strh r0, [r4, #0x12]
	b _08086C38
_08086C0C:
	movs r1, #0
	ldr r0, _08086C24 @ =0x00000501 @ ANIM_BOSS_EXTRA_MISSILE_EXPLOSION
	strh r0, [r6, #0xc]
	strb r1, [r6, #0x1a]
	movs r0, #0x90          @ SE_CAPSULE_DESTROY
	bl m4aSongNumStart
	movs r0, #0x15
	strh r0, [r4, #0x10]
	movs r0, #0x6e
	strh r0, [r4, #0x12]
	b _08086C38
	.align 2, 0
_08086C24: .4byte 0x00000501
_08086C28:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08086C38
	movs r1, #1
	mov sb, r1
_08086C38:
	ldr r0, _08086C7C @ =gCamera
	adds r0, #0x6a
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #8
	ldr r0, [r4]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	adds r2, r0, r1
	str r2, [r4]
	ldr r5, [r7, #0x28]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08086CA6
	asrs r1, r2, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8010184
	cmp r0, #0
	beq _08086C80
	adds r0, r5, #0
	movs r1, #1
	bl sub_801038C
	b _08086CA6
	.align 2, 0
_08086C7C: .4byte gCamera
_08086C80:
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8010288
	cmp r0, #0
	beq _08086CA6
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	bne _08086CA0
	movs r0, #0x64
	strh r0, [r4, #0x12]
_08086CA0:
	adds r0, r5, #0
	bl sub_8010C88
_08086CA6:
	ldr r5, [r7, #0x2c]
	ldr r0, _08086CF0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bne _08086CFC
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08086CFC
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8010184
	cmp r0, #0
	beq _08086CFC
	adds r0, r7, #0
	adds r0, #0x70
	ldrb r0, [r0]
	cmp r0, #0
	beq _08086CF4
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	bne _08086CE6
	movs r0, #0x64
	strh r0, [r4, #0x12]
_08086CE6:
	adds r0, r5, #0
	bl sub_8010C58
	b _08086CFC
	.align 2, 0
_08086CF0: .4byte gStageData
_08086CF4:
	adds r0, r5, #0
	movs r1, #1
	bl sub_801038C
_08086CFC:
	mov r2, sb
	cmp r2, #0
	beq _08086D20
	ldrb r0, [r4, #0x16]
	cmp r0, #2
	bne _08086D0E
	movs r0, #0
	strb r0, [r7, #3]
	b _08086D12
_08086D0E:
	movs r0, #0
	strb r0, [r7, #2]
_08086D12:
	ldr r0, _08086D1C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08086D50
	.align 2, 0
_08086D1C: .4byte gCurTask
_08086D20:
	ldr r0, [r4]
	asrs r0, r0, #8
	ldr r2, _08086D60 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	ldrh r0, [r4, #0x14]
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r6, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r6, #0x12]
	strh r0, [r1, #8]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08086D50:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08086D60: .4byte gCamera

	thumb_func_start BossExtra_CreateExplosion
BossExtra_CreateExplosion: @ 0x08086D64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	adds r4, r2, #0
	mov sb, r3
	ldr r5, [sp, #0x24]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r7, sb
	lsls r7, r7, #0x10
	adds r0, r7, #0
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _08086E40 @ =Task_38_8086E58
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08086E44 @ =TaskDestructor_38_8087234
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r2, r3
	ldr r7, _08086E48 @ =0x03000010
	adds r2, r2, r7
	movs r0, #0
	mov sl, r0
	strb r5, [r3, #0xe]
	movs r5, #0
	mov ip, r5
	mov r7, sl
	strh r7, [r3, #0xc]
	ldr r5, _08086E4C @ =gSineTable
	ldr r1, _08086E50 @ =0x000003FF
	mov r0, sb
	ands r1, r0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r1, r7
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r7, #0
	ldrsh r0, [r0, r7]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	muls r0, r4, r0
	asrs r0, r0, #0xe
	strh r0, [r3, #8]
	lsls r1, r1, #1
	adds r1, r1, r5
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	strh r0, [r3, #0xa]
	ldr r7, [sp, #0x28]
	str r7, [r2]
	ldr r0, _08086E54 @ =0x000004F9 @ ANIM_EXPLOSION_1273
	strh r0, [r2, #0xc]
	mov r0, ip
	strb r0, [r2, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r2, #0x14]
	mov r5, sl
	strh r5, [r2, #0xe]
	strh r5, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r7, ip
	strb r7, [r2, #0x1f]
	subs r0, #0x11
	str r0, [r2, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	lsls r6, r6, #0x10
	asrs r6, r6, #8
	str r6, [r3]
	mov r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r3, #4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08086E40: .4byte Task_38_8086E58
_08086E44: .4byte TaskDestructor_38_8087234
_08086E48: .4byte 0x03000010
_08086E4C: .4byte gSineTable
_08086E50: .4byte 0x000003FF
_08086E54: .4byte 0x000004F9

	thumb_func_start Task_38_8086E58
Task_38_8086E58: @ 0x08086E58
	push {r4, r5, lr}
	ldr r2, _08086E80 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x10
	adds r5, r1, r0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08086E84
	ldr r0, [r2]
	bl TaskDestroy
	b _08086ECC
	.align 2, 0
_08086E80: .4byte gCurTask
_08086E84:
	ldr r3, _08086ED4 @ =gCamera
	adds r0, r3, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r1, [r4]
	adds r1, r1, r0
	movs r2, #8
	ldrsh r0, [r4, r2]
	adds r1, r1, r0
	str r1, [r4]
	ldrh r0, [r4, #0xc]
	ldrh r2, [r4, #0xa]
	adds r0, r0, r2
	strh r0, [r4, #0xa]
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #4]
	adds r0, r0, r2
	str r0, [r4, #4]
	asrs r1, r1, #8
	ldr r0, [r3]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_08086ECC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086ED4: .4byte gCamera

	thumb_func_start TaskDestructor_878_8086ED8
TaskDestructor_878_8086ED8: @ 0x08086ED8
	push {r4, lr}
	ldrh r4, [r0, #6]
	ldr r1, _08086F00 @ =0x0300038C
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08086EEA
	bl VramFree
_08086EEA:
	ldr r1, _08086F04 @ =0x03000454
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08086EF8
	bl VramFree
_08086EF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08086F00: .4byte 0x0300038C
_08086F04: .4byte 0x03000454

	thumb_func_start Task_878_8086F08
Task_878_8086F08: @ 0x08086F08
	push {r4, r5, lr}
	ldr r5, _08086F3C @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, _08086F40 @ =0x0000023F @ SE_EXTRA_BOSS_578
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_878_808211C
	adds r0, r4, #0
	bl sub_878_8082388
	adds r0, r4, #0
	bl sub_878_8082794
	ldr r1, [r5]
	ldr r0, _08086F44 @ =Task_878_8086F48
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086F3C: .4byte gCurTask
_08086F40: .4byte 0x0000023F
_08086F44: .4byte Task_878_8086F48

	thumb_func_start Task_878_8086F48
Task_878_8086F48: @ 0x08086F48
	push {r4, lr}
	ldr r0, _08086F9C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_878_8087174
	adds r0, r4, #0
	bl sub_878_808211C
	ldr r1, _08086FA0 @ =gUnknown_08E2ED50
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_878_80862D8
	adds r0, r4, #0
	bl sub_878_8084EB4
	adds r0, r4, #0
	bl sub_878_8082428
	adds r0, r4, #0
	bl sub_878_8082388
	adds r0, r4, #0
	bl sub_878_8082794
	adds r0, r4, #0
	bl sub_878_8081EFC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08086F9C: .4byte gCurTask
_08086FA0: .4byte gUnknown_08E2ED50

	thumb_func_start Task_878_8086FA4
Task_878_8086FA4: @ 0x08086FA4
	push {r4, lr}
	ldr r0, _08086FDC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_878_808211C
	ldr r1, _08086FE0 @ =gUnknown_08E2ED50
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_878_8082388
	adds r0, r4, #0
	bl sub_878_8082D08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08086FDC: .4byte gCurTask
_08086FE0: .4byte gUnknown_08E2ED50

	thumb_func_start Task_878_CallDestroy
Task_878_CallDestroy: @ 0x08086FE4
	push {lr}
	ldr r0, _08086FF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08086FF4: .4byte gCurTask

	thumb_func_start sub_8086FF8
sub_8086FF8: @ 0x08086FF8
	push {lr}
	adds r2, r0, #0
	adds r0, #0xed
	strb r1, [r0]
	ldrb r0, [r0]
	cmp r0, #7
	beq _0808700C
	cmp r0, #8
	beq _0808701C
	b _0808702A
_0808700C:
	adds r1, r2, #0
	adds r1, #0xb0
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1]
	adds r1, #4
	movs r0, #0
	b _08087028
_0808701C:
	adds r1, r2, #0
	adds r1, #0xa4
	ldr r0, _08087030 @ =0xFFFFFE00
	str r0, [r1]
	adds r1, #4
	ldr r0, _08087034 @ =0xFFFFFF00
_08087028:
	str r0, [r1]
_0808702A:
	pop {r0}
	bx r0
	.align 2, 0
_08087030: .4byte 0xFFFFFE00
_08087034: .4byte 0xFFFFFF00

	thumb_func_start sub_8087038
sub_8087038: @ 0x08087038
	adds r0, #0xef
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_8087040
sub_8087040: @ 0x08087040
	bx lr
	.align 2, 0

	thumb_func_start sub_8087044
sub_8087044: @ 0x08087044
	lsls r1, r1, #0x18
	ldr r2, _08087064 @ =0x00000814
	adds r0, r0, r2
	ldr r3, _08087068 @ =gAnimPatternBossExtraElectricSpark
	lsrs r1, r1, #0x16
	adds r2, r1, r3
	ldrh r2, [r2]
	strh r2, [r0, #0xc]
	adds r3, #2
	adds r1, r1, r3
	ldrh r1, [r1]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bx lr
	.align 2, 0
_08087064: .4byte 0x00000814
_08087068: .4byte gAnimPatternBossExtraElectricSpark

	thumb_func_start sub_808706C
sub_808706C: @ 0x0808706C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	movs r7, #0xed
	lsls r7, r7, #2
	movs r6, #0
	ldr r3, _08087094 @ =0x000004FE
	movs r5, #1
_08087080:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r7
	adds r0, r4, r0
	cmp r1, #0
	bne _08087098
	strh r3, [r0, #0xc]
	strb r5, [r0, #0x1a]
	b _0808709C
	.align 2, 0
_08087094: .4byte 0x000004FE
_08087098:
	strh r3, [r0, #0xc]
	strb r6, [r0, #0x1a]
_0808709C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08087080
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_50_80870AC
TaskDestructor_50_80870AC: @ 0x080870AC
	bx lr
	.align 2, 0

	thumb_func_start sub_878_80870B0
sub_878_80870B0: @ 0x080870B0
	push {lr}
	adds r2, r0, #0
	ldr r1, _080870DC @ =gUnknown_080D5D18
	ldrb r0, [r2, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r2, #1]
	ldrb r0, [r2, #0xa]
	adds r0, #1
	strb r0, [r2, #0xa]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080870D0
	strb r1, [r2, #0xa]
_080870D0:
	movs r0, #1
	strh r0, [r2, #4]
	strh r1, [r2, #8]
	pop {r0}
	bx r0
	.align 2, 0
_080870DC: .4byte gUnknown_080D5D18

    thumb_func_start sub_80870E0
sub_80870E0:
    movs r0, #0
    bx lr
	.align 2, 0

	thumb_func_start sub_80870E4
sub_80870E4: @ 0x080870E4
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0808710C @ =gBgOffsetsHBlankPrimary
	ldr r0, [r0]
	ldr r2, _08087110 @ =gBgOffsetsBuffer
	cmp r0, r2
	bne _0808711C
	mov r0, sp
	strh r1, [r0]
	ldr r0, _08087114 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08087118 @ =0x81000140
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _08087132
	.align 2, 0
_0808710C: .4byte gBgOffsetsHBlankPrimary
_08087110: .4byte gBgOffsetsBuffer
_08087114: .4byte 0x040000D4
_08087118: .4byte 0x81000140
_0808711C:
	mov r0, sp
	strh r1, [r0]
	ldr r1, _08087138 @ =0x040000D4
	str r0, [r1]
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1, #4]
	ldr r0, _0808713C @ =0x81000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08087132:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08087138: .4byte 0x040000D4
_0808713C: .4byte 0x81000140

	thumb_func_start sub_8087140
sub_8087140: @ 0x08087140
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08087170 @ =gBgOffsetsHBlankPrimary
	ldr r3, [r0]
	lsls r0, r1, #1
	adds r3, r3, r0
	cmp r1, r2
	bhs _08087168
_0808715A:
	strh r4, [r3]
	adds r3, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r2
	blo _0808715A
_08087168:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08087170: .4byte gBgOffsetsHBlankPrimary

	thumb_func_start sub_878_8087174
sub_878_8087174: @ 0x08087174
	movs r1, #0
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_808717C
sub_808717C: @ 0x0808717C
	ldr r1, [r0, #0x34]
	movs r2, #1
	orrs r1, r2
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_8087188
sub_8087188: @ 0x08087188
	push {r4, lr}
	mov ip, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, [r0, #0x34]
	movs r4, #2
	orrs r0, r4
	mov r4, ip
	str r0, [r4, #0x34]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r4, r4, r1
	asrs r4, r4, #1
	mov r0, ip
	str r4, [r0, #0x48]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r2, [r0, #0x4c]
	rsbs r1, r4, #0
	adds r0, #0x3c
	strb r1, [r0]
	rsbs r0, r3, #0
	mov r1, ip
	adds r1, #0x3d
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x3e
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80871CC
sub_80871CC: @ 0x080871CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	movs r6, #0
	movs r4, #0
_080871DC:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #3
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r5, r2
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	movs r7, #0x88
	lsls r7, r7, #1
	adds r2, r5, r7
	adds r2, r2, r3
	ldr r2, [r2]
	asrs r2, r2, #8
	mov r3, r8
	str r3, [sp]
	movs r3, #0
	bl sub_8010184
	cmp r0, #1
	bne _0808721A
	movs r6, #1
	b _08087224
_0808721A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080871DC
_08087224:
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_38_8087234
TaskDestructor_38_8087234: @ 0x08087234
	bx lr
	.align 2, 0

	thumb_func_start sub_8087238
sub_8087238: @ 0x08087238
	bx lr
	.align 2, 0
.endif
