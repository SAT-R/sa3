
.syntax unified
.text
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x24]
	cmp r0, #0x78
	beq _08070284
	cmp r0, #0x78
	bgt _0807022E
	cmp r0, #0x64
	beq _0807024A
	adds r5, r4, #0
	adds r5, #0xa0
	cmp r0, #0x64
	bgt _08070224
	b _08070350
_08070224:
	cmp r0, #0x65
	beq _08070252
	cmp r0, #0x6e
	beq _08070262
	b _08070350
_0807022E:
	cmp r0, #0xd2
	beq _080702DE
	cmp r0, #0xd2
	bgt _08070240
	cmp r0, #0x82
	beq _0807029C
	cmp r0, #0xc8
	beq _080702CC
	b _0807034C
_08070240:
	cmp r0, #0xdc
	beq _080702F4
	cmp r0, #0xe6
	beq _0807031C
	b _0807034C
_0807024A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_806FAFC
_08070252:
	adds r0, r4, #0
	movs r1, #2
	bl sub_8071968
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r0, #0x6e
	b _0807034A
_08070262:
	ldrh r0, [r4, #0x26]
	subs r0, #1
	strh r0, [r4, #0x26]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bne _08070350
	adds r0, r4, #0
	movs r1, #0
	bl sub_8071968
	strh r6, [r4, #0x22]
	movs r0, #0x78
	strh r0, [r4, #0x24]
	bl sub_807A468
	b _08070350
_08070284:
	ldrh r0, [r4, #0x22]
	adds r0, #0x10
	strh r0, [r4, #0x22]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r4, #0
	adds r5, #0xa0
	cmp r0, #0xff
	bls _08070350
	movs r0, #0x82
	strh r0, [r4, #0x24]
	b _08070350
_0807029C:
	ldrh r1, [r4, #0x22]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _080702AC
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r4, #0x22]
_080702AC:
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	str r1, [r0]
	ldr r2, _080702C8 @ =0xFFFFF800
	adds r5, r0, #0
	cmp r1, r2
	blt _08070350
	movs r0, #0
	strh r0, [r4, #0x24]
	b _08070350
	.align 2, 0
_080702C8: .4byte 0xFFFFF800
_080702CC:
	movs r0, #0x3c
	strh r0, [r4, #0x26]
	movs r0, #0xd2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #2
	bl sub_806FAFC
	b _0807034C
_080702DE:
	ldrh r0, [r4, #0x26]
	subs r0, #1
	strh r0, [r4, #0x26]
	lsls r0, r0, #0x10
	adds r5, r4, #0
	adds r5, #0xa0
	cmp r0, #0
	bne _08070350
	movs r0, #0xdc
	strh r0, [r4, #0x24]
	b _08070350
_080702F4:
	ldrh r0, [r4, #0x22]
	subs r0, #0x10
	strh r0, [r4, #0x22]
	adds r1, r4, #0
	adds r1, #0xa0
	ldr r0, [r1]
	ldr r2, _08070314 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _08070318 @ =0xFFFFE800
	adds r5, r1, #0
	cmp r0, r2
	bgt _08070350
	movs r0, #0xe6
	strh r0, [r4, #0x24]
	b _08070350
	.align 2, 0
_08070314: .4byte 0xFFFFFF00
_08070318: .4byte 0xFFFFE800
_0807031C:
	ldrh r0, [r4, #0x22]
	subs r0, #0x10
	strh r0, [r4, #0x22]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, r4, #0
	adds r5, #0xa0
	cmp r6, #0
	bne _08070350
	adds r0, r4, #0
	movs r1, #0
	bl sub_806FAFC
	ldrh r0, [r4, #0x10]
	cmp r0, #1
	beq _08070346
	movs r0, #1
	strh r0, [r4, #0x10]
	subs r0, #9
	str r0, [r4, #8]
	str r6, [r4, #0xc]
_08070346:
	movs r0, #0
	strb r0, [r4, #0x13]
_0807034A:
	strh r0, [r4, #0x24]
_0807034C:
	adds r5, r4, #0
	adds r5, #0xa0
_08070350:
	adds r2, r4, #0
	adds r2, #0x98
	ldr r0, [r4]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	adds r1, r4, #0
	adds r1, #0xa4
	ldr r0, [r4, #4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

.syntax divided
