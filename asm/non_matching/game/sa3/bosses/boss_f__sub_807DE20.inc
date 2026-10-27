
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	mov sb, r0
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, sb
	adds r5, r7, r0
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sb
	adds r0, r0, r7
	mov r8, r0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r7, r0
	movs r4, #0
	mov sl, r4
	ldrh r6, [r5, #0x16]
	cmp r6, #0x78
	bne _0807DE66
	b _0807E0D2
_0807DE66:
	cmp r6, #0x78
	bgt _0807DE96
	cmp r6, #0x14
	beq _0807DF50
	cmp r6, #0x14
	bgt _0807DE7C
	cmp r6, #0
	beq _0807DEDC
	cmp r6, #0xa
	beq _0807DEEC
	b _0807E200
_0807DE7C:
	cmp r6, #0x64
	bne _0807DE82
	b _0807DFEE
_0807DE82:
	cmp r6, #0x64
	bgt _0807DE8E
	cmp r6, #0x1e
	bne _0807DE8C
	b _0807DFDC
_0807DE8C:
	b _0807E200
_0807DE8E:
	cmp r6, #0x6e
	bne _0807DE94
	b _0807E0B0
_0807DE94:
	b _0807E200
_0807DE96:
	movs r0, #0x9b
	lsls r0, r0, #1
	cmp r6, r0
	bne _0807DEA0
	b _0807E19C
_0807DEA0:
	cmp r6, r0
	bgt _0807DEC2
	cmp r6, #0xd2
	bne _0807DEAA
	b _0807E170
_0807DEAA:
	cmp r6, #0xd2
	bgt _0807DEB6
	cmp r6, #0xc8
	bne _0807DEB4
	b _0807E124
_0807DEB4:
	b _0807E200
_0807DEB6:
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r6, r0
	bne _0807DEC0
	b _0807E182
_0807DEC0:
	b _0807E200
_0807DEC2:
	movs r0, #0xaf
	lsls r0, r0, #1
	cmp r6, r0
	bne _0807DECC
	b _0807E200
_0807DECC:
	cmp r6, r0
	ble _0807DED2
	b _0807E200
_0807DED2:
	subs r0, #0x1e
	cmp r6, r0
	bne _0807DEDA
	b _0807E1D0
_0807DEDA:
	b _0807E200
_0807DEDC:
	ldr r0, _0807DEE8 @ =0xFFFFFE00
	str r0, [r5, #0xc]
	mov r0, sl
	strb r0, [r5, #0x1a]
	movs r0, #0xa
	b _0807E1FE
	.align 2, 0
_0807DEE8: .4byte 0xFFFFFE00
_0807DEEC:
	cmp r3, #0
	bne _0807DF00
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0807DF16
	adds r0, r1, #0
	adds r0, #0x10
	b _0807DF0E
_0807DF00:
	ldrh r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	beq _0807DF16
	adds r0, r1, #0
	subs r0, #0x10
_0807DF0E:
	ldr r4, _0807DF3C @ =0x000003FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r2]
_0807DF16:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r4, _0807DF40 @ =0xFFFFC000
	adds r2, r0, r4
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r0, r2
	ble _0807DF30
	b _0807E200
_0807DF30:
	cmp r3, #0
	bne _0807DF44
	movs r0, #0x80
	lsls r0, r0, #2
	b _0807DF46
	.align 2, 0
_0807DF3C: .4byte 0x000003FF
_0807DF40: .4byte 0xFFFFC000
_0807DF44:
	ldr r0, _0807DF4C @ =0xFFFFFE00
_0807DF46:
	str r0, [r5, #8]
	movs r0, #0x14
	b _0807E1FE
	.align 2, 0
_0807DF4C: .4byte 0xFFFFFE00
_0807DF50:
	ldr r0, [r5]
	ldr r1, [r5, #8]
	adds r2, r0, r1
	str r2, [r5]
	cmp r3, #0
	bne _0807DF78
	cmp r1, #0
	blt _0807DF70
	ldr r0, _0807DF6C @ =0x000667FF
	cmp r2, r0
	ble _0807DF9A
	adds r0, #1
	b _0807DF94
	.align 2, 0
_0807DF6C: .4byte 0x000667FF
_0807DF70:
	ldr r0, _0807DF74 @ =0x00061400
	b _0807DF90
	.align 2, 0
_0807DF74: .4byte 0x00061400
_0807DF78:
	cmp r1, #0
	blt _0807DF8C
	ldr r0, _0807DF88 @ =0x0006DBFF
	cmp r2, r0
	ble _0807DF9A
	adds r0, #1
	b _0807DF94
	.align 2, 0
_0807DF88: .4byte 0x0006DBFF
_0807DF8C:
	movs r0, #0xd1
	lsls r0, r0, #0xb
_0807DF90:
	cmp r2, r0
	bgt _0807DF9A
_0807DF94:
	str r0, [r5]
	rsbs r0, r1, #0
	str r0, [r5, #8]
_0807DF9A:
	ldrb r2, [r5, #0x1a]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0807DFA6
	b _0807E200
_0807DFA6:
	movs r1, #0x7f
	ands r1, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x2c
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r5]
	subs r2, r1, r0
	adds r0, r2, #0
	cmp r2, #0
	bge _0807DFC4
	rsbs r0, r2, #0
_0807DFC4:
	asrs r2, r0, #8
	cmp r2, #1
	ble _0807DFCC
	b _0807E200
_0807DFCC:
	str r1, [r5]
	movs r0, #0x1e
	strh r0, [r5, #0x14]
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #3
	str r0, [r5, #0xc]
	b _0807E200
_0807DFDC:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807DFEA
	b _0807E200
_0807DFEA:
	movs r0, #0x64
	b _0807E1FE
_0807DFEE:
	ldr r4, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r0, r4, r0
	str r0, [r5, #4]
	subs r4, r4, r0
	mov r0, r8
	adds r1, r2, #0
	movs r2, #1
	bl sub_807F334
	ldr r1, [r5]
	ldr r2, [r5, #4]
	str r4, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_807C244
	movs r0, #1
	strb r0, [r7, #0x11]
	ldrb r0, [r5, #0x1a]
	movs r1, #0x7f
	ands r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r2, r0, #2
	adds r0, r7, #0
	adds r0, #0x38
	adds r3, r0, r2
	ldr r0, [r3]
	cmp r0, #0
	bgt _0807E064
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r7, r0
	add r1, sb
	adds r0, r7, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	subs r1, r1, r0
	adds r0, r1, #0
	cmp r1, #0
	bge _0807E048
	rsbs r0, r1, #0
_0807E048:
	asrs r1, r0, #8
	cmp r1, #0x13
	bgt _0807E064
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r7, r1
	add r0, sb
	ldr r0, [r0]
	str r0, [r3]
	adds r0, r7, r2
	strh r6, [r0, #0x3e]
	ldr r0, _0807E094 @ =0x0000023A
	bl m4aSongNumStart
_0807E064:
	ldr r1, [r5, #4]
	ldr r0, _0807E098 @ =0x0000F3FF
	cmp r1, r0
	bgt _0807E06E
	b _0807E200
_0807E06E:
	ldr r0, _0807E09C @ =0xFFFFFE80
	str r0, [r5, #0xc]
	ldr r2, _0807E0A0 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0807E0A4 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _0807E0A8 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	movs r1, #3
	ands r0, r1
	ldr r1, _0807E0AC @ =gUnknown_080D5C70
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x14]
	movs r0, #0x6e
	b _0807E1FE
	.align 2, 0
_0807E094: .4byte 0x0000023A
_0807E098: .4byte 0x0000F3FF
_0807E09C: .4byte 0xFFFFFE80
_0807E0A0: .4byte gPseudoRandom
_0807E0A4: .4byte 0x00196225
_0807E0A8: .4byte 0x3C6EF35F
_0807E0AC: .4byte gUnknown_080D5C70
_0807E0B0:
	mov r0, r8
	adds r1, r2, #0
	movs r2, #1
	bl sub_807F334
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807E0C8
	b _0807E200
_0807E0C8:
	movs r0, #0x78
	strh r0, [r5, #0x16]
	movs r0, #1
	strb r0, [r5, #0x13]
	b _0807E200
_0807E0D2:
	ldr r4, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r0, r4, r0
	str r0, [r5, #4]
	subs r4, r4, r0
	mov r0, r8
	adds r1, r2, #0
	movs r2, #1
	bl sub_807F334
	ldr r1, [r5]
	ldr r2, [r5, #4]
	str r4, [sp]
	mov r0, r8
	movs r3, #0
	bl sub_807C244
	movs r0, #1
	strb r0, [r7, #0x11]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r0, [r0]
	ldr r1, _0807E120 @ =0xFFFFC000
	adds r2, r0, r1
	ldr r3, [r5, #4]
	cmp r3, r2
	ble _0807E10C
	b _0807E200
_0807E10C:
	ldr r1, [r5]
	mov r0, r8
	adds r2, r3, #0
	bl sub_807C48C
	mov r3, sl
	strb r3, [r5, #0x13]
	movs r0, #0xc8
	b _0807E1FE
	.align 2, 0
_0807E120: .4byte 0xFFFFC000
_0807E124:
	cmp r3, #0
	bne _0807E144
	ldrh r0, [r2]
	subs r0, #0x10
	ldr r4, _0807E140 @ =0x000003FF
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _0807E15C
	b _0807E162
	.align 2, 0
_0807E140: .4byte 0x000003FF
_0807E144:
	ldrh r0, [r2]
	adds r0, #0x10
	ldr r3, _0807E16C @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #2
	cmp r0, r1
	bne _0807E15C
	movs r4, #1
	mov sl, r4
_0807E15C:
	mov r0, sl
	cmp r0, #0
	beq _0807E200
_0807E162:
	movs r0, #0x1e
	strh r0, [r5, #0x14]
	movs r0, #0xd2
	b _0807E1FE
	.align 2, 0
_0807E16C: .4byte 0x000003FF
_0807E170:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807E200
	movs r0, #0xfa
	lsls r0, r0, #2
	b _0807E1FE
_0807E182:
	cmp r3, #0
	bne _0807E190
	ldr r0, _0807E18C @ =0xFFFFFE00
	b _0807E194
	.align 2, 0
_0807E18C: .4byte 0xFFFFFE00
_0807E190:
	movs r0, #0x80
	lsls r0, r0, #2
_0807E194:
	str r0, [r5, #8]
	movs r0, #0x9b
	lsls r0, r0, #1
	b _0807E1FE
_0807E19C:
	ldr r1, [r5]
	ldr r0, [r5, #8]
	adds r1, r1, r0
	str r1, [r5]
	cmp r3, #0
	bne _0807E1BC
	ldr r0, _0807E1B8 @ =0x00061400
	cmp r1, r0
	bgt _0807E200
	str r0, [r5]
	movs r0, #0xa0
	lsls r0, r0, #1
	b _0807E1FE
	.align 2, 0
_0807E1B8: .4byte 0x00061400
_0807E1BC:
	ldr r0, _0807E1CC @ =0x0006DBFF
	cmp r1, r0
	ble _0807E200
	adds r0, #1
	str r0, [r5]
	movs r0, #0xa0
	lsls r0, r0, #1
	b _0807E1FE
	.align 2, 0
_0807E1CC: .4byte 0x0006DBFF
_0807E1D0:
	cmp r3, #0
	bne _0807E1E4
	ldrh r0, [r2]
	subs r0, #0x10
	ldr r3, _0807E1E0 @ =0x000003FF
	adds r1, r3, #0
	b _0807E1EC
	.align 2, 0
_0807E1E0: .4byte 0x000003FF
_0807E1E4:
	ldrh r0, [r2]
	adds r0, #0x10
	ldr r4, _0807E210 @ =0x000003FF
	adds r1, r4, #0
_0807E1EC:
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	cmp r0, #0
	bne _0807E200
	movs r0, #1
	strb r0, [r5, #0x13]
	movs r0, #0xaf
	lsls r0, r0, #1
_0807E1FE:
	strh r0, [r5, #0x16]
_0807E200:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E210: .4byte 0x000003FF

.syntax divided
