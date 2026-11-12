
.syntax unified
.text
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

.syntax divided
