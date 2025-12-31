
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r1, _08017650 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bls _0801762E
	b _08017820
_0801762E:
	ldrb r0, [r1, #4]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0801763C
	b _08017820
_0801763C:
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _08017658
	ldr r1, _08017654 @ =0x0000013D
	adds r0, r6, r1
	mov r1, r8
	strb r1, [r0]
	b _08017820
	.align 2, 0
_08017650: .4byte gStageData
_08017654: .4byte 0x0000013D
_08017658:
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	bne _08017660
	b _08017820
_08017660:
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080176A6
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080176A6
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080176A6
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080176A6
	ldr r0, [r6, #4]
	movs r1, #0xc0
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0x80
	bne _080176A6
	movs r5, #0x80
_080176A6:
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r3, r6, r0
	ldrb r0, [r3]
	movs r2, #0xf
	adds r7, r2, #0
	ands r7, r0
	adds r7, #1
	movs r1, #0xf0
	ands r1, r0
	adds r0, r7, #0
	ands r0, r2
	orrs r1, r0
	strb r1, [r3]
	cmp r5, #0
	bne _080176D4
	strb r5, [r3]
	ldr r1, _080176D0 @ =0x0000013D
	adds r0, r6, r1
	strb r5, [r0]
	b _08017820
	.align 2, 0
_080176D0: .4byte 0x0000013D
_080176D4:
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r1, _080176F4 @ =0x0000013D
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, r5
	beq _0801775C
	cmp r5, #0x20
	beq _08017714
	cmp r5, #0x20
	bgt _080176F8
	cmp r5, #0x10
	beq _08017724
	b _08017820
	.align 2, 0
_080176F4: .4byte 0x0000013D
_080176F8:
	cmp r5, #0x40
	beq _08017702
	cmp r5, #0x80
	beq _0801773C
	b _08017820
_08017702:
	ldr r0, _08017710 @ =sTileInfoShields
	ldrh r1, [r0, #8]
	strh r1, [r4, #0xc]
	ldrh r0, [r0, #0xa]
	strb r0, [r4, #0x1a]
	b _0801774E
	.align 2, 0
_08017710: .4byte sTileInfoShields
_08017714:
	ldr r0, _08017720 @ =sTileInfoShields
	ldrh r1, [r0, #4]
	strh r1, [r4, #0xc]
	ldrh r0, [r0, #6]
	b _0801772C
	.align 2, 0
_08017720: .4byte sTileInfoShields
_08017724:
	ldr r0, _08017738 @ =sTileInfoShields
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrh r0, [r0, #2]
_0801772C:
	strb r0, [r4, #0x1a]
	adds r0, r6, #0
	movs r1, #0x97
	bl Player_PlaySong
	b _0801774E
	.align 2, 0
_08017738: .4byte sTileInfoShields
_0801773C:
	ldr r0, _080177AC @ =sTileInfoShields
	ldrh r1, [r0, #0xc]
	strh r1, [r4, #0xc]
	ldrh r0, [r0, #0xe]
	strb r0, [r4, #0x1a]
	adds r0, r6, #0
	movs r1, #0x97
	bl Player_PlaySong
_0801774E:
	ldr r0, _080177B0 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r1, _080177B4 @ =0x0000013D
	adds r0, r6, r1
	strb r5, [r0]
_0801775C:
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	ldr r2, _080177B8 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r2, r6, #0
	adds r2, #0xe0
	ldr r0, [r2]
	ldrh r0, [r0, #0x20]
	subs r0, #0x40
	strh r0, [r4, #0x14]
	ldr r0, [r4, #8]
	ldr r1, _080177BC @ =0xFFFFCFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r2]
	ldr r0, [r0, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _080177C0 @ =gPlayers
	cmp r6, r0
	bne _080177C4
	movs r0, #2
	ands r7, r0
	cmp r7, #0
	beq _080177D0
	movs r0, #1
	mov r8, r0
	b _080177D0
	.align 2, 0
_080177AC: .4byte sTileInfoShields
_080177B0: .4byte 0x0000FFFF
_080177B4: .4byte 0x0000013D
_080177B8: .4byte gCamera
_080177BC: .4byte 0xFFFFCFFF
_080177C0: .4byte gPlayers
_080177C4:
	movs r0, #2
	ands r7, r0
	cmp r7, #0
	bne _080177D0
	movs r1, #1
	mov r8, r1
_080177D0:
	ldr r0, _080177EC @ =gStageData
	ldrb r1, [r0, #4]
	adds r2, r0, #0
	cmp r1, #1
	bne _0801780A
	adds r0, #0xbc
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080177F0
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
	b _080177F8
	.align 2, 0
_080177EC: .4byte gStageData
_080177F0:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
_080177F8:
	str r0, [r4, #8]
	adds r0, r2, #0
	adds r0, #0xbc
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08017814
	b _08017820
_0801780A:
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_08017814:
	mov r0, r8
	cmp r0, #0
	beq _08017820
	adds r0, r4, #0
	bl DisplaySprite
_08017820:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
