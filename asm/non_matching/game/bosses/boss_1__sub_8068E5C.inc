
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	mov r0, sl
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	add r1, sp, #4
	strb r0, [r1]
	mov r2, sp
	adds r2, #5
	movs r0, #0xf7
	strb r0, [r2]
	mov r0, sp
	adds r0, #6
	strb r3, [r0]
	adds r2, #2
	movs r0, #9
	strb r0, [r2]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _08068EBC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _08068EC0 @ =0x030000F0
	adds r2, r1, r2
	str r2, [sp, #0x1c]
	mov r0, sl
	bl sub_802C080
	cmp r0, #0
	beq _08068EC4
	movs r0, #0
	b _080692C8
	.align 2, 0
_08068EBC: .4byte gCurTask
_08068EC0: .4byte 0x030000F0
_08068EC4:
	ldr r0, [r6, #0x58]
	ldr r1, [r6, #0x5c]
	bl sub_8004D68
	ldr r2, _08069014 @ =gPlayers
	ldr r0, _08069018 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08068F0E
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _08068F1C
_08068F0E:
	ldr r0, [sp, #0x1c]
	bl sub_807A1DC
	cmp r0, #1
	bne _08068F1C
	movs r3, #1
	str r3, [sp, #0xc]
_08068F1C:
	ldr r2, [sp, #0x1c]
	adds r2, #0x27
	movs r0, #0x14
	strb r0, [r2]
	mov r4, sl
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, _0806901C @ =gCamera
	ldr r0, [r0]
	subs r1, r1, r0
	mov r0, sp
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r3, r1, r4
	ldr r5, [sp, #0x1c]
	movs r7, #0x10
	ldrsh r1, [r5, r7]
	adds r0, r5, #0
	adds r0, #0x24
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r1, r1, r5
	mov r8, r2
	mov sb, r0
	cmp r3, r1
	bgt _08068F66
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r1
	bge _08068F7A
	cmp r3, r1
	bge _08068F66
	b _080690B0
_08068F66:
	ldr r0, [sp, #0x1c]
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	bge _08068F7A
	b _080690B0
_08068F7A:
	mov r0, sl
	ldr r2, [r0, #0x14]
	asrs r1, r2, #8
	ldr r0, _0806901C @ =gCamera
	ldr r0, [r0, #4]
	subs r1, r1, r0
	mov r0, sp
	movs r4, #1
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	ldr r3, [sp, #0x1c]
	movs r5, #0x12
	ldrsh r0, [r3, r5]
	adds r3, #0x25
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r3, r0, r5
	cmp r1, r3
	bgt _08068FB6
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r3
	bge _08068FC4
	cmp r1, r3
	bge _08068FB6
	b _080690B0
_08068FB6:
	mov r7, r8
	movs r0, #0
	ldrsb r0, [r7, r0]
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	blt _080690B0
_08068FC4:
	mov r0, sl
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	ldr r0, [r6, #0x58]
	asrs r0, r0, #8
	subs r1, r1, r0
	asrs r0, r2, #8
	ldr r2, [r6, #0x5c]
	asrs r2, r2, #8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r6, #0x34]
	lsls r0, r0, #8
	movs r7, #0
	lsrs r5, r0, #0x10
	asrs r3, r0, #0x10
	ldr r4, _08069020 @ =0xFFFFFF00
	adds r2, r3, r4
	cmp r2, #0
	bge _08069028
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r3, r1
	bgt _08069036
	ldr r5, _08069024 @ =0x000003FF
	adds r0, r5, #0
	adds r5, r0, #0
	ands r5, r2
	cmp r5, r1
	bge _08069038
	b _08069036
	.align 2, 0
_08069014: .4byte gPlayers
_08069018: .4byte gStageData
_0806901C: .4byte gCamera
_08069020: .4byte 0xFFFFFF00
_08069024: .4byte 0x000003FF
_08069028:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r2, r1
	bge _08069038
	cmp r3, r1
	ble _08069038
_08069036:
	movs r7, #1
_08069038:
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r3, _08069058 @ =0x000003FF
	cmp r1, r3
	ble _0806905C
	asrs r0, r4, #0x10
	cmp r2, r0
	blt _0806906C
	ands r1, r3
	cmp r1, r0
	ble _08069068
	b _0806906C
	.align 2, 0
_08069058: .4byte 0x000003FF
_0806905C:
	asrs r0, r4, #0x10
	cmp r1, r0
	ble _08069068
	cmp r2, r0
	bge _08069068
	movs r7, #1
_08069068:
	cmp r7, #0
	beq _080690A6
_0806906C:
	mov r1, sl
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080690B0
	mov r0, sl
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r1, [r0, #0x34]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806909E
	movs r0, #0xd
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _08069098
	mov r0, sl
	bl sub_80044CC
_08069098:
	movs r2, #1
	str r2, [sp, #0xc]
	b _080690B0
_0806909E:
	mov r0, sl
	bl Player_8014550
	b _08069180
_080690A6:
	mov r0, sl
	bl Player_8014550
	movs r3, #1
	str r3, [sp, #0x10]
_080690B0:
	ldr r4, [sp, #0x10]
	cmp r4, #0
	bne _08069180
	ldr r5, [sp, #0xc]
	cmp r5, #0
	bne _08069180
	mov r7, sl
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08069180
	mov r0, sl
	adds r0, #0xe0
	ldr r4, [r0]
	ldr r2, [r4, #0x34]
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r0, #0
	cmp r2, r1
	beq _08069180
	mov r1, sl
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r3, r0, r1
	ldr r0, [r6, #0x58]
	asrs r0, r0, #8
	mov r2, sb
	movs r5, #0
	ldrsb r5, [r2, r5]
	adds r2, r0, r5
	cmp r3, r2
	bgt _08069114
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _08069126
	cmp r3, r2
	blt _08069180
_08069114:
	ldr r0, [sp, #0x1c]
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	blt _08069180
_08069126:
	mov r3, sl
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r3, [r7]
	adds r1, r3, #0
	adds r1, #0x39
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r2, r0, r4
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #8
	ldr r1, [sp, #0x1c]
	adds r1, #0x25
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _08069160
	adds r0, r3, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0806916E
	cmp r2, r1
	blt _08069180
_08069160:
	mov r4, r8
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _08069180
_0806916E:
	movs r0, #0xd
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0806917C
	mov r0, sl
	bl sub_80044CC
_0806917C:
	movs r5, #1
	str r5, [sp, #0xc]
_08069180:
	movs r0, #0
	mov r7, r8
	strb r0, [r7]
	ldr r0, [r6, #0x34]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, _080692D8 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldr r2, _080692DC @ =gSineTable
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r4, #0
	ldrsh r3, [r1, r4]
	str r3, [sp, #0x14]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r7, [r0, r1]
	str r7, [sp, #0x18]		@ sp18 = cosVal
	movs r2, #1
	str r2, [sp, #8]
	adds r3, r6, #0
	adds r3, #0x14
	str r3, [sp, #0x20]		@ sp20 = &boss->unk14[0][0]
	adds r6, #0x16
	str r6, [sp, #0x24]		@ sp24 = &boss->unk14[0][1]
	mov r8, sp				@ r8 = sp0
_080691C4_loop:
	ldr r5, [sp, #8]		@ r5 = sp8 (iterator)
	lsls r4, r5, #2			@ r4 = sp8 * 4
	ldr r6, [sp, #0x20]		@ r6 = sp20 = &boss->unk14[0][0]
	adds r0, r6, r4
	movs r7, #0
	ldrsh r3, [r0, r7]		@ r3 = unk14X = boss->unk14[sp8][0]
	ldr r0, [sp, #0x18]		@ r0 = cosVal
	adds r2, r0, #0			@ r2 = r0 = cosVal
	muls r2, r3, r2			@ r2 = cosVal * boss->unk14[sp8][0]
	ldr r5, [sp, #0x14]		@ r5 = sp14 = sinVal
	adds r1, r5, #0
	muls r1, r3, r1			@ r1 = sinVal * boss->unk14[sp8][0]
	mov ip, r1				@ ip = r1 = sinVal * boss->unk14[sp8][0]
	ldr r6, [sp, #0x24]		@ r6 = sp24 = &boss->unk14[0][1]
	adds r0, r6, r4			@ r0 = &boss->unk14[sp8][1]
	movs r7, #0
	ldrsh r1, [r0, r7]		@ r1 = boss->unk14[sp8][1]
	adds r0, r5, #0			@ r0 = r5 = sinVal
	muls r0, r1, r0
	subs r2, r2, r0
	ldr r5, [sp, #0x18]		@ r5 = sp18 = cosVal
	adds r0, r5, #0
	muls r0, r1, r0
	add ip, r0
	asrs r2, r2, #0xe		@ r2 >>= 14
	mov r6, ip
	asrs r6, r6, #0xe
	mov ip, r6				@ ip >>= 14
	mov r7, sl				@ r7 = sl = inPlayer
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	ldr r0, _080692E0 @ =gCamera
	ldr r0, [r0]
	subs r1, r1, r0			@ r1 = I(inPlayer->qWorldX) - gCamera.x
	mov r0, r8				@ r0 = r8 = sp0
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r5, r1, r6
	ldr r7, [sp, #0x1c]
	movs r0, #0x10
	ldrsh r1, [r7, r0]
	adds r1, r1, r2
	subs r1, r1, r3
	ldr r3, [sp, #8]
	lsls r2, r3, #3
	adds r3, r7, r2
	adds r0, r3, #0
	adds r0, #0x24
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r1, r1, r7
	mov sb, r2
	cmp r5, r1
	bgt _08069242
	mov r2, r8
	movs r0, #2
	ldrsb r0, [r2, r0]
	subs r0, r0, r6
	adds r0, r5, r0
	cmp r0, r1
	bge _08069254
	cmp r5, r1
	blt _080692B6
_08069242:
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r5
	blt _080692B6
_08069254:
	mov r3, sl
	ldr r1, [r3, #0x14]
	asrs r1, r1, #8
	ldr r5, _080692E0 @ =gCamera
	ldr r0, [r5, #4]
	subs r1, r1, r0
	mov r6, r8
	movs r5, #1
	ldrsb r5, [r6, r5]
	adds r2, r1, r5
	ldr r7, [sp, #0x1c]
	movs r0, #0x12
	ldrsh r1, [r7, r0]
	add r1, ip
	ldr r3, [sp, #0x24]
	adds r0, r3, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r1, r1, r0
	adds r4, r7, #0
	add r4, sb
	adds r3, r4, #0
	adds r3, #0x25
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r1, r1, r3
	cmp r2, r1
	bgt _0806929E
	movs r0, #3
	ldrsb r0, [r6, r0]
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _080692B0
	cmp r2, r1
	blt _080692B6
_0806929E:
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _080692B6
_080692B0:
	mov r0, sl
	bl Player_8014550
_080692B6:
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	bhi _080692C6
	b _080691C4_loop
_080692C6:
	ldr r0, [sp, #0xc]
_080692C8:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080692D8: .4byte 0x000003FF
_080692DC: .4byte gSineTable
_080692E0: .4byte gCamera

.syntax divided
