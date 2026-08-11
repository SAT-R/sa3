
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r7, #0
	ldr r0, _08093144 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0809314C
	ldrh r0, [r5, #0x12]
	subs r0, #0x60
	strh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080930E4
	movs r0, #0x34
	str r0, [r5, #0x40]
	strh r7, [r5, #0x12]
_080930E4:
	ldr r1, [r5, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, [r5, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	ldr r0, _08093148 @ =gUnknown_080D7470
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, r4
	bne _08093112
	ldrh r0, [r0, #2]
	cmp r0, r2
	beq _08093134
_08093112:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _08093134
	lsls r1, r3, #2
	mov r6, sb
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _08093112
	mov r0, sb
	adds r0, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r2
	bne _08093112
_08093134:
	cmp r3, #0xe
	bne _0809313A
	b _080932CE
_0809313A:
	adds r0, r5, #0
	movs r1, #1
	bl sub_80932E0
	b _080932CE
	.align 2, 0
_08093144: .4byte gRepeatedKeys
_08093148: .4byte gUnknown_080D7470
_0809314C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080931D0
	ldrh r0, [r5, #0x12]
	adds r0, #0x60
	strh r0, [r5, #0x12]
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	blt _0809316C
	movs r0, #0x84
	str r0, [r5, #0x40]
	strh r1, [r5, #0x12]
_0809316C:
	ldr r1, [r5, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, [r5, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	ldr r0, _080931CC @ =gUnknown_080D7470
	ldrh r1, [r0]
	mov sb, r0
	cmp r1, r4
	bne _0809319A
	ldrh r0, [r0, #2]
	cmp r0, r2
	beq _080931BC
_0809319A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _080931BC
	lsls r1, r3, #2
	mov r6, sb
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _0809319A
	mov r0, sb
	adds r0, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r2
	bne _0809319A
_080931BC:
	cmp r3, #0xe
	bne _080931C2
	b _080932CE
_080931C2:
	adds r0, r5, #0
	movs r1, #0
	bl sub_80932E0
	b _080932CE
	.align 2, 0
_080931CC: .4byte gUnknown_080D7470
_080931D0:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08093250
	movs r0, #0x1a
	str r0, [r5, #0x3c]
	ldrh r0, [r5, #0x12]
	ldr r1, [r5, #0x40]
	ldr r2, _08093244 @ =gUnknown_080D7470
	mov sb, r2
	subs r1, #0x34
	asrs r1, r1, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	mov ip, sb
	ldrh r6, [r2]
	mov r8, r6
	lsrs r0, r0, #0x18
	mov sl, r0
_080931FA:
	ldr r1, [r5, #0x3c]
	adds r0, r1, #0
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	cmp r8, r4
	bne _08093214
	mov r2, sb
	ldrh r0, [r2, #2]
	cmp r0, sl
	beq _08093236
_08093214:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _08093236
	lsls r2, r3, #2
	mov r6, ip
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _08093214
	mov r0, sb
	adds r0, #2
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r0, sl
	bne _08093214
_08093236:
	cmp r3, #0xe
	beq _08093248
	adds r0, r1, #0
	adds r0, #0x10
	str r0, [r5, #0x3c]
	b _0809324A
	.align 2, 0
_08093244: .4byte gUnknown_080D7470
_08093248:
	movs r7, #1
_0809324A:
	cmp r7, #0
	beq _080931FA
	b _080932CE
_08093250:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080932CE
	movs r0, #0xba
	str r0, [r5, #0x3c]
	ldrh r0, [r5, #0x12]
	ldr r1, [r5, #0x40]
	ldr r2, _080932C4 @ =gUnknown_080D7470
	mov sb, r2
	subs r1, #0x34
	asrs r1, r1, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	mov ip, sb
	ldrh r6, [r2]
	mov r8, r6
	lsrs r0, r0, #0x18
	mov sl, r0
_0809327A:
	ldr r1, [r5, #0x3c]
	adds r0, r1, #0
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	cmp r8, r4
	bne _08093294
	mov r2, sb
	ldrh r0, [r2, #2]
	cmp r0, sl
	beq _080932B6
_08093294:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _080932B6
	lsls r2, r3, #2
	mov r6, ip
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _08093294
	mov r0, sb
	adds r0, #2
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r0, sl
	bne _08093294
_080932B6:
	cmp r3, #0xe
	beq _080932C8
	adds r0, r1, #0
	subs r0, #0x10
	str r0, [r5, #0x3c]
	b _080932CA
	.align 2, 0
_080932C4: .4byte gUnknown_080D7470
_080932C8:
	movs r7, #1
_080932CA:
	cmp r7, #0
	beq _0809327A
_080932CE:
	movs r0, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
