
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08022530 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldrb r0, [r1]
	mov r8, r0
	ldr r7, _08022534 @ =gStageData
	adds r6, r7, #0
	adds r6, #0xae
	ldrh r4, [r6]
	adds r0, r4, #0
	movs r1, #60
	bl Div
	str r0, [sp, #4]
	movs r1, #60
	bl Div
	str r0, [sp]
	ldr r2, _08022538 @ =sFrameCountPerSecond
	lsls r1, r0, #1
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r3, [sp, #4]
	subs r3, r3, r0
	str r3, [sp, #4]
	lsls r0, r3, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r4, r4, r0
	ldr r0, _0802253C @ =gUnknown_080CFA28
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r5, r4, r0
	ldrh r2, [r6]
	ldr r0, _08022540 @ =0x00007E90
	movs r3, #0
	str r3, [sp, #0xc]
	cmp r2, r0
	bls _080222A6
	ldr r0, [r7, #0x1c]
	movs r1, #0x10
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	str r0, [sp, #0xc]
_080222A6:
	ldr r0, _08022544 @ =0x000087EF
	cmp r2, r0
	bls _080222B6
	cmp r5, #0
	bne _080222B6
	movs r0, #0x8b      @ SE_139
	bl m4aSongNumStart
_080222B6:
	ldr r4, _08022548 @ =gUnknown_080CF936
	lsls r5, r5, #1
	adds r0, r5, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r6, _0802254C @ =0xFFFFFE74
	adds r0, r0, r6
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x90
	strh r0, [r7, #0x10]
	movs r0, #0x12
	mov r2, r8
	lsls r2, r2, #0x10
	str r2, [sp, #0x18]
	asrs r2, r2, #0x10
	mov r8, r2
	subs r2, r0, r2
	mov sb, r2
	strh r2, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r3, sp
	ldrb r3, [r3, #0xc]
	strb r3, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	adds r4, #1
	adds r5, r5, r4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x98
	strh r0, [r7, #0x10]
	mov r2, sb
	strh r2, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r3, sp
	ldrb r3, [r3, #0xc]
	strb r3, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r4, #0
	strb r4, [r7, #0x1f]
	movs r7, #0xde
	lsls r7, r7, #1
	add r7, sl
	movs r0, #0x89
	strh r0, [r7, #0x10]
	movs r6, #0x11
	mov r0, r8
	subs r6, r6, r0
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, _08022550 @ =gUnknown_080CF8BC
	ldr r1, [sp, #4]
	lsls r5, r1, #1
	adds r0, r5, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x7a
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, sp
	ldrb r0, [r0, #0xc]
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0
	strb r1, [r7, #0x1f]
	adds r4, #1
	adds r5, r5, r4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x82
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r4, sp
	ldrb r4, [r4, #0xc]
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r7, #0xca
	lsls r7, r7, #1
	add r7, sl
	movs r0, #0x75
	strh r0, [r7, #0x10]
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, [sp]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x6e
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r4, sp
	ldrb r4, [r4, #0xc]
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	ldr r5, _08022534 @ =gStageData
	adds r5, #0xac
	movs r1, #0
	ldrsh r4, [r5, r1]
	adds r0, r4, #0
	movs r1, #100
	bl Div
	lsls r0, r0, #0x18
	asrs r6, r0, #0x18
	movs r0, #0x64
	muls r0, r6, r0
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #10
	bl Div
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	mov r8, r1
	lsls r0, r1, #1
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #8]
	ldrh r0, [r5]
	movs r4, #0
	ldr r2, [sp, #0x18]
	str r2, [sp, #0x1c]
	cmp r0, #0
	bne _08022440
	ldr r3, _08022534 @ =gStageData
	ldr r0, [r3, #0x1c]
	movs r1, #0x10
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r4, r0, #0x1f
_08022440:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x28
	strh r0, [r7, #0x10]
	mov r2, sb
	strh r2, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r3, #0
	strb r3, [r7, #0x1f]
	mov r1, r8
	lsls r0, r1, #3
	adds r0, #4
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x30
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	ldr r2, [sp, #8]
	lsls r1, r2, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r3, sl
	adds r7, r3, r0
	movs r0, #0x38
	strh r0, [r7, #0x10]
	mov r0, sb
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strb r4, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0
	strb r1, [r7, #0x1f]
	ldr r0, _08022554 @ =gRespawnPositions
	ldr r2, _08022534 @ =gStageData
	ldrh r1, [r2, #0xe]
	lsls r1, r1, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldrh r3, [r0]
	str r3, [sp, #0x10]
	ldrh r0, [r0, #2]
	str r0, [sp, #0x14]
	ldr r0, _08022558 @ =gUnknown_080D191C
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	ldrb r0, [r0, #4]
	mov sb, r0
	ldr r4, [sp, #0x14]
	subs r4, r1, r4
	mov r8, r4
	cmp r0, #0
	bne _080224E6
	subs r3, r2, r3
	mov r8, r3
_080224E6:
	movs r3, #0
_080224E8:
	lsls r3, r3, #0x10
	asrs r2, r3, #0x10
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r0, r1, #3
	movs r4, #0xf2
	lsls r4, r4, #1
	adds r0, r0, r4
	mov r4, sl
	adds r7, r4, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r0, _0802255C @ =gPlayers
	adds r6, r1, r0
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	adds r5, r3, #0
	cmp r0, #0
	beq _0802259E
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1d
	cmp r0, #3
	bhi _0802259E
	mov r0, sb
	cmp r0, #0
	bne _08022560
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	ldr r2, [sp, #0x10]
	subs r1, r0, r2
	b _08022568
	.align 2, 0
_08022530: .4byte gCurTask
_08022534: .4byte gStageData
_08022538: .4byte sFrameCountPerSecond
_0802253C: .4byte gUnknown_080CFA28
_08022540: .4byte 0x00007E90
_08022544: .4byte 0x000087EF
_08022548: .4byte gUnknown_080CF936
_0802254C: .4byte 0xFFFFFE74
_08022550: .4byte gUnknown_080CF8BC
_08022554: .4byte gRespawnPositions
_08022558: .4byte gUnknown_080D191C
_0802255C: .4byte gPlayers
_08022560:
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r3, [sp, #0x14]
	subs r1, r0, r3
_08022568:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	mov r1, r8
	bl Div
	cmp r0, #0
	blt _08022580
	cmp r0, #0xe0
	ble _08022582
	movs r0, #0xe0
	b _08022582
_08022580:
	movs r0, #0
_08022582:
	adds r0, #8
	movs r1, #0
	strh r0, [r7, #0x10]
	ldr r4, [sp, #0x1c]
	asrs r0, r4, #0x10
	adds r0, #0x8d
	strh r0, [r7, #0x12]
	strb r1, [r7, #0x1f]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0802259E:
	ldr r7, _08022660 @ =gStageData
	ldrb r0, [r7, #6]
	asrs r4, r5, #0x10
	cmp r0, r4
	beq _080225EC
	adds r6, #0x2b
	ldrb r1, [r6]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _080225EC
	adds r0, r4, #0
	bl sub_8022934
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080225EC
	ldrb r0, [r6]
	lsls r0, r0, #0x1e
	ldrb r1, [r7, #6]
	lsrs r0, r0, #0x1e
	movs r7, #0xab
	lsls r7, r7, #2
	add r7, sl
	cmp r1, r0
	bne _080225D8
	movs r7, #0xa1
	lsls r7, r7, #2
	add r7, sl
_080225D8:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_8022664
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080225EC:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _080225FC
	b _080224E8
_080225FC:
	movs r7, #0xb8
	lsls r7, r7, #2
	add r7, sl
	ldr r2, [sp, #0x1c]
	lsrs r5, r2, #0xf
	movs r4, #8
	subs r4, r4, r5
	movs r0, #0
	strh r4, [r7, #0x10]
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0xc2
	lsls r7, r7, #2
	add r7, sl
	strh r4, [r7, #0x10]
	movs r0, #0x9a
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0xcc
	lsls r7, r7, #2
	add r7, sl
	adds r5, #0xe8
	strh r5, [r7, #0x10]
	movs r0, #0x96
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022660: .4byte gStageData

.syntax divided
