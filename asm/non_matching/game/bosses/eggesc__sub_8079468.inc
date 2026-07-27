
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x24]
	adds r4, r1, #0
	str r3, [sp, #0x28]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r1, _080796A0 @ =gUnknown_080D5AE4
	add r0, sp, #0x10
	movs r2, #4
	bl memcpy
	add r1, sp, #0x20
	movs r0, #4
	strh r0, [r1]
	subs r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _080794A4
	b _08079744
_080794A4:
	asrs r0, r0, #0xe
	ldr r1, [sp, #0x24]
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r6, [r5, #0xc]
	ldr r7, [r5, #8]
	ldrh r2, [r5, #0x12]
	adds r1, r2, #0
	adds r1, #0x40
	movs r3, #0
	strh r1, [r5, #0x12]
	movs r4, #0x10
	ldrsh r0, [r5, r4]
	adds r6, r6, r0
	movs r4, #0x12
	ldrsh r0, [r5, r4]
	adds r7, r7, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _080796A4 @ =0xFFFFFC00
	cmp r1, r0
	bge _080794D8
	movs r1, #0x88
	lsls r1, r1, #3
	adds r0, r2, r1
	strh r0, [r5, #0x12]
_080794D8:
	asrs r0, r7, #8
	asrs r1, r6, #8
	str r3, [sp]
	ldr r2, _080796A8 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801F07C
	adds r2, r0, #0
	cmp r2, #0
	bge _08079512
	movs r3, #0x12
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _08079512
	lsls r1, r0, #6
	subs r0, r0, r1
	asrs r0, r0, #6
	strh r0, [r5, #0x12]
	movs r0, #0x10
	ldrsh r1, [r5, r0]
	lsls r0, r1, #6
	subs r0, r0, r1
	asrs r0, r0, #6
	strh r0, [r5, #0x10]
	adds r0, r2, #1
	lsls r0, r0, #8
	adds r7, r7, r0
_08079512:
	ldr r0, _080796AC @ =gCamera
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x10
	asrs r4, r6, #8
	cmp r0, r4
	ble _08079528
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _08079538
_08079528:
	adds r0, r1, #0
	adds r0, #0xe0
	cmp r0, r4
	bge _08079540
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _08079540
_08079538:
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x10]
_08079540:
	str r6, [r5, #0xc]
	str r7, [r5, #8]
	ldr r0, _080796B0 @ =gStageData
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r1, r2, #0xd
	ldr r0, [r0, #0x1c]
	adds r3, r0, r1
	movs r0, #0x1f
	ands r3, r0
	mov sb, r2
	cmp r3, #0
	bne _08079576
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r7, #8
	asrs r2, r2, #0x10
	str r3, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r4, [sp, #0x28]
	str r4, [sp, #0xc]
	movs r0, #6
	movs r3, #0
	bl sub_8079758
_08079576:
	ldr r1, _080796AC @ =gCamera
	ldr r0, [r1]
	lsls r0, r0, #8
	subs r6, r6, r0
	ldr r0, [r1, #4]
	lsls r0, r0, #8
	subs r7, r7, r0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08079598
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r1, [r5, #2]
	mov r2, sl
	ldr r3, [sp, #0x28]
	bl sub_8079194
_08079598:
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080795A6
	ldrh r0, [r5, #0x2c]
	mov r2, sp
	strh r0, [r2, #0x20]
_080795A6:
	ldr r4, [r5, #0x14]
	cmp r4, #0
	bne _080795AE
	b _08079734
_080795AE:
	ldr r3, [r5, #0x18]
	mov ip, r3
	ldr r1, [r3]
	movs r0, #4
	ands r1, r0
	ldr r3, [r4, #8]
	cmp r1, #0
	beq _080795CA
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080795CA
	b _08079734
_080795CA:
	ldr r2, _080796B4 @ =0xFFFFCFFF
	ands r2, r3
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x10
	ands r1, r3
	lsrs r1, r1, #0x16
	mov r8, r1
	mov r1, ip
	ldr r0, [r1]
	ands r0, r3
	lsrs r0, r0, #0x16
	mov r3, r8
	adds r1, r3, r0
	lsls r1, r1, #0xc
	orrs r2, r1
	str r2, [r4, #8]
	ldr r1, [r5, #4]
	ldr r2, _080796B8 @ =0x003FE000
	ands r1, r2
	lsrs r1, r1, #0xd
	mov r3, ip
	ldr r0, [r3]
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
	beq _080796D2
	mov r4, sp
	ldrh r4, [r4, #0x20]
	mov r8, r4
	mov r1, sp
	movs r2, #0x20
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0807963C
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	lsrs r0, r0, #0xf
	cmp r0, #1
	bls _080796D2
	ldr r0, _080796BC @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080796D2
_0807963C:
	ldr r4, [r5, #0x14]
	ldr r1, [r4, #8]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	ldr r3, _080796C0 @ =gNextFreeAffineIndex
	ldrb r2, [r3]
	movs r0, #0x20
	orrs r0, r2
	orrs r1, r0
	str r1, [r4, #8]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldr r2, [r5, #0x14]
	ldr r0, [r2, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r2, #8]
	add r3, sp, #0x14
	mov r4, r8
	strh r4, [r3]
	add r0, sp, #0x10
	ldrh r0, [r0]
	strh r0, [r3, #2]
	add r0, sp, #0x10
	ldrh r0, [r0, #2]
	strh r0, [r3, #4]
	asrs r0, r6, #8
	strh r0, [r3, #6]
	asrs r0, r7, #8
	strh r0, [r3, #8]
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #4]
	movs r1, #0xf0
	lsls r1, r1, #0x18
	ands r0, r1
	cmp r0, #0
	beq _080796C8
	ldr r0, [r5, #0x14]
	ldr r2, [r0, #8]
	lsrs r2, r2, #0xf
	lsls r2, r2, #4
	ldr r1, _080796C4 @ =gEmptyTask
	adds r2, r2, r1
	adds r1, r3, #0
	bl sub_80BECF8
	b _08079712
	.align 2, 0
_080796A0: .4byte gUnknown_080D5AE4
_080796A4: .4byte 0xFFFFFC00
_080796A8: .4byte sa2__sub_801EE64
_080796AC: .4byte gCamera
_080796B0: .4byte gStageData
_080796B4: .4byte 0xFFFFCFFF
_080796B8: .4byte 0x003FE000
_080796BC: .4byte gDispCnt
_080796C0: .4byte gNextFreeAffineIndex
_080796C4: .4byte gEmptyTask
_080796C8:
	ldr r0, [r5, #0x14]
	adds r1, r3, #0
	bl TransformSprite
	b _08079712
_080796D2:
	ldr r1, [r5, #0x14]
	asrs r0, r6, #8
	strh r0, [r1, #0x10]
	ldr r1, [r5, #0x14]
	asrs r0, r7, #8
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
	beq _080796FC
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r3, #8]
_080796FC:
	ldr r0, [r5, #4]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08079712
	ldr r0, [r5, #0x14]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0, #8]
_08079712:
	mov r0, sl
	cmp r0, #0
	beq _08079734
	ldr r2, [r5, #0x14]
	ldr r0, [r2, #8]
	movs r1, #0xc0
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0807972E
	adds r0, r2, #0
	bl sub_80BE46C
	b _08079734
_0807972E:
	adds r0, r2, #0
	bl DisplaySprite
_08079734:
	ldr r0, _08079754 @ =0xFFFF0000
	add r0, sb
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08079744
	b _080794A4
_08079744:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079754: .4byte 0xFFFF0000

.syntax divided
