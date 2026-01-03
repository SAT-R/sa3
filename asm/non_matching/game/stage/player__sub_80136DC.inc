
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r3, r0, #0x10
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	ldr r1, _08013750 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r5, r0, #0
	adds r5, #0xc
	adds r4, r0, #0
	ldr r2, _08013754 @ =gCamera
	ldrh r1, [r2, #4]
	movs r7, #0
	mov ip, r7
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	movs r7, #0
	ldrsh r2, [r2, r7]
	subs r0, r0, r2
	strh r0, [r5, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r2
	strh r0, [r4, #6]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	subs r0, r0, r1
	strh r0, [r4, #8]
	ldr r1, _08013758 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _08013764
	ldrb r0, [r1, #6]
	cmp r0, r3
	beq _0801375C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	b _08013762
	.align 2, 0
_08013750: .4byte gPlayers
_08013754: .4byte gCamera
_08013758: .4byte gStageData
_0801375C:
	ldr r0, [r5, #8]
	ldr r1, _080137C8 @ =0xFFFFFDFF
	ands r0, r1
_08013762:
	str r0, [r5, #8]
_08013764:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _080137D8
	ldrh r1, [r6, #0x34]
	ldrh r0, [r6, #0x36]
	mov sb, r0
	ldr r3, _080137CC @ =gPlayerCharacterIdleAnims
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r2, r0, #0x1c
	lsrs r0, r2, #0x1b
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r0, r1, r0
	cmp r0, #0xa4
	bgt _0801379C
	lsrs r0, r2, #0x1b
	adds r0, r0, r3
	ldrh r0, [r0]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_0801379C:
	cmp r1, #8
	beq _08013808
	cmp r1, #0x6f
	beq _08013808
	cmp r1, #0x8c
	beq _08013808
	cmp r1, #0x8d
	beq _08013808
	ldr r0, _080137D0 @ =0x000002BD
	cmp r1, r0
	beq _08013808
	cmp r1, #0x73
	beq _08013808
	cmp r1, r0
	beq _08013808
	ldr r0, _080137D4 @ =0x00000519
	cmp r1, r0
	bne _08013802
	mov r0, sb
	cmp r0, #0
	bne _08013802
	b _08013808
	.align 2, 0
_080137C8: .4byte 0xFFFFFDFF
_080137CC: .4byte gPlayerCharacterIdleAnims
_080137D0: .4byte 0x000002BD
_080137D4: .4byte 0x00000519
_080137D8:
	movs r2, #0x30
	ldrsh r1, [r6, r2]
	cmp r1, #8
	beq _080137FE
	cmp r1, #0x6f
	beq _080137FE
	cmp r1, #0x8c
	beq _080137FE
	cmp r1, #0x8d
	beq _080137FE
	cmp r1, #0xfa
	beq _080137FE
	cmp r1, #0xb1
	beq _080137FE
	cmp r1, #0xb2
	beq _080137FE
	ldr r0, _0801383C @ =0x00000111
	cmp r1, r0
	bne _08013802
_080137FE:
	movs r3, #1
	mov ip, r3
_08013802:
	mov r7, ip
	cmp r7, #0
	beq _080138F4
_08013808:
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #2
	strh r0, [r4]
	ldr r1, [r5, #8]
	ldr r0, _08013840 @ =0xFFFFF3FF
	ands r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r1, r0
	movs r2, #0x20
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r2
	orrs r1, r0
	str r1, [r5, #8]
	ldr r0, [r6, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08013844
	movs r0, #0xff
	lsls r0, r0, #8
	b _08013848
	.align 2, 0
_0801383C: .4byte 0x00000111
_08013840: .4byte 0xFFFFF3FF
_08013844:
	movs r0, #0x80
	lsls r0, r0, #1
_08013848:
	strh r0, [r4, #2]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801385C
	ldrh r0, [r4, #2]
	rsbs r0, r0, #0
	strh r0, [r4, #2]
_0801385C:
	movs r7, #2
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bge _0801386A
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
_0801386A:
	ldr r0, [r6, #4]
	ands r0, r1
	cmp r0, #0
	beq _08013894
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r4]
	adds r1, r1, r0
	ldr r2, _0801388C @ =0xFFFFFF00
	adds r0, r2, #0
	subs r0, r0, r1
	ldr r1, _08013890 @ =0x000003FF
	ands r0, r1
	strh r0, [r4]
	b _0801389A
	.align 2, 0
_0801388C: .4byte 0xFFFFFF00
_08013890: .4byte 0x000003FF
_08013894:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
_0801389A:
	movs r3, #2
	ldrsh r1, [r4, r3]
	adds r0, r6, #0
	adds r0, #0xa0
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r0, #4
	ldrsh r2, [r4, r0]
	adds r0, r6, #0
	adds r0, #0xa2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #8
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	ldr r1, [r5, #8]
	ldr r0, _080138F0 @ =0xFFFFCFFF
	ands r1, r0
	str r1, [r5, #8]
	movs r7, #0x30
	ldrsh r0, [r6, r7]
	cmp r0, #0x6f
	beq _080138DE
	cmp r0, #0xb1
	beq _080138DE
	cmp r0, #0xb2
	beq _080138DE
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
_080138DE:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r1, r4, #0
	bl TransformSprite
	b _0801398A
	.align 2, 0
_080138F0: .4byte 0xFFFFCFFF
_080138F4:
	mov r0, ip
	strh r0, [r4]
	ldr r2, [r5, #8]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r5, #8]
	ldr r0, [r6, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08013916
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r5, #8]
	b _08013922
_08013916:
	ldr r0, _08013938 @ =0xFFFFFBFF
	ands r2, r0
	str r2, [r5, #8]
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
_08013922:
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801393C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _08013942
	.align 2, 0
_08013938: .4byte 0xFFFFFBFF
_0801393C:
	ldr r0, [r5, #8]
	ldr r1, _08013954 @ =0xFFFFF7FF
	ands r0, r1
_08013942:
	str r0, [r5, #8]
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0x67
	bne _0801395C
	ldr r0, [r5, #8]
	ldr r1, _08013958 @ =0xFFFFCFFF
	ands r0, r1
	b _08013982
	.align 2, 0
_08013954: .4byte 0xFFFFF7FF
_08013958: .4byte 0xFFFFCFFF
_0801395C:
	ldrh r1, [r6, #0x34]
	ldr r2, _080139BC @ =gPlayerCharacterIdleAnims
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	cmp r1, #0x8e
	beq _08013984
	ldr r0, [r5, #8]
	ldr r1, _080139C0 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
_08013982:
	str r0, [r5, #8]
_08013984:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
_0801398A:
	movs r7, #1
	ldr r2, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	adds r3, r2, #0
	cmp r0, #0
	bne _08013A20
	ldr r0, _080139C4 @ =gStageData
	ldrb r1, [r0, #3]
	adds r4, r0, #0
	cmp r1, #7
	bne _080139AC
	adds r0, #0xae
	ldrh r0, [r0]
	cmp r0, #0
	beq _08013A20
_080139AC:
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r3, r0
	cmp r3, #0
	beq _080139C8
	movs r7, #0
	b _08013A2A
	.align 2, 0
_080139BC: .4byte gPlayerCharacterIdleAnims
_080139C0: .4byte 0xFFFFCFFF
_080139C4: .4byte gStageData
_080139C8:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, #0
	bne _08013A16
	adds r0, r6, #0
	adds r0, #0x4a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080139EA
	ldr r0, [r4, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080139EA
	movs r7, #0
_080139EA:
	adds r0, r6, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08013A16
	ldrb r0, [r4, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _08013A60 @ =gPlayers
	adds r1, r1, r0
	cmp r6, r1
	bne _08013A14
	ldr r0, [r4, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08013A16
_08013A14:
	movs r7, #0
_08013A16:
	ldr r0, _08013A64 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #5
	bne _08013A20
	movs r7, #1
_08013A20:
	cmp r7, #0
	beq _08013A2A
	adds r0, r5, #0
	bl DisplaySprite
_08013A2A:
	ldr r1, _08013A64 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	beq _08013A52
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r1, #9]
	ldrb r1, [r1, #6]
	cmp r0, r1
	bne _08013A44
	cmp r2, #8
	bne _08013A4C
_08013A44:
	cmp r2, #8
	bne _08013A52
	cmp r0, #0
	bne _08013A52
_08013A4C:
	adds r0, r6, #0
	bl Player_8019858
_08013A52:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013A60: .4byte gPlayers
_08013A64: .4byte gStageData

.syntax divided
