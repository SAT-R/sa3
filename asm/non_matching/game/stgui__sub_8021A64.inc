
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r2, _08021D30 @ =gStageData
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08021D34 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sl, r1
	ldrb r1, [r1]
	mov sb, r1
	ldrb r0, [r2, #0xa]
	cmp r0, #2
	bls _08021A9C
	ldrb r0, [r2, #9]
	cmp r0, #6
	bls _08021AA8
_08021A9C:
	ldrb r0, [r2, #9]
	cmp r0, #7
	beq _08021AA8
	cmp r0, #8
	beq _08021AA8
	b _08021D54
_08021AA8:
	ldr r6, _08021D30 @ =gStageData
	adds r7, r6, #0
	adds r7, #0xae
	ldrh r4, [r7]
	adds r0, r4, #0
	movs r1, #60
	bl Div
	mov r8, r0
	movs r1, #60
	bl Div
	str r0, [sp]
	ldr r2, _08021D38 @ =sFrameCountPerSecond
	lsls r1, r0, #1
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r3, r8
	subs r3, r3, r0
	mov r8, r3
	lsls r0, r3, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r4, r4, r0
	ldr r0, _08021D3C @ =gUnknown_080CFA28
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r5, r4, r0
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _08021B16
	ldrh r1, [r7]
	ldr r0, _08021D40 @ =0x00007E8F
	cmp r1, r0
	bls _08021B00
	ldr r0, [r6, #0x1c]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08021B00
	movs r3, #1
	str r3, [sp, #8]
_08021B00:
	ldr r0, _08021D30 @ =gStageData
	adds r0, #0xae
	ldrh r1, [r0]
	ldr r0, _08021D44 @ =0x000087EF
	cmp r1, r0
	bls _08021B16
	cmp r5, #0
	bne _08021B16
	movs r0, #0x8b      @ SE_139
	bl m4aSongNumStart
_08021B16:
	ldr r4, _08021D48 @ =gUnknown_080CF936
	lsls r5, r5, #1
	adds r0, r5, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r6, _08021D4C @ =0xFFFFFE74
	adds r0, r0, r6
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x90
	strh r0, [r7, #0x10]
	movs r0, #0x12
	mov r2, sb
	lsls r2, r2, #0x10
	str r2, [sp, #0x10]
	asrs r3, r2, #0x10
	str r3, [sp, #0xc]
	subs r3, r0, r3
	mov sb, r3
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, sp
	ldrb r0, [r0, #8]
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
	adds r0, r0, r6
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x98
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, sp
	ldrb r0, [r0, #8]
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r7, #0xde
	lsls r7, r7, #1
	add r7, sl
	movs r0, #0x89
	strh r0, [r7, #0x10]
	movs r6, #0x11
	ldr r2, [sp, #0xc]
	subs r6, r6, r2
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, _08021D50 @ =gUnknown_080CF8BC
	mov r3, r8
	lsls r5, r3, #1
	adds r0, r5, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x7a
	strh r0, [r7, #0x10]
	mov r2, sb
	strh r2, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r3, sp
	ldrb r3, [r3, #8]
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
	adds r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x82
	strh r0, [r7, #0x10]
	mov r2, sb
	strh r2, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r3, sp
	ldrb r3, [r3, #8]
	strb r3, [r7, #0x1f]
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
	mov r0, sp
	ldrb r0, [r0, #8]
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r7, #0xa1
	lsls r7, r7, #2
	add r7, sl
	movs r0, #0x58
	strh r0, [r7, #0x10]
	movs r0, #7
	ldr r2, [sp, #0xc]
	subs r0, r0, r2
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r7, _08021D30 @ =gStageData
	adds r5, r7, #0
	adds r5, #0xac
	movs r3, #0
	ldrsh r4, [r5, r3]
	adds r0, r4, #0
	movs r1, #100
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r0, #0
	movs r0, #0x64
	muls r0, r6, r0
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #10
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	str r1, [sp, #0x14]
	lsls r0, r1, #1
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r5]
	movs r5, #0
	ldr r1, [sp, #0x10]
	mov r8, r1
	cmp r0, #0
	bne _08021CBE
	ldr r0, [r7, #0x1c]
	movs r1, #0x10
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
_08021CBE:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #4
	mov r2, sl
	adds r7, r2, r0
	movs r0, #0x28
	strh r0, [r7, #0x10]
	mov r3, sb
	strh r3, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strb r5, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	ldr r1, [sp, #0x14]
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
	strb r5, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r0, #0
	strb r0, [r7, #0x1f]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #4
	mov r1, sl
	adds r7, r1, r0
	movs r0, #0x38
	strh r0, [r7, #0x10]
	mov r2, sb
	strh r2, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	strb r5, [r7, #0x1f]
	adds r0, r7, #0
	bl DisplaySprite
	movs r3, #0
	strb r3, [r7, #0x1f]
	b _08021E1A
	.align 2, 0
_08021D30: .4byte gStageData
_08021D34: .4byte gCurTask
_08021D38: .4byte sFrameCountPerSecond
_08021D3C: .4byte gUnknown_080CFA28
_08021D40: .4byte 0x00007E8F
_08021D44: .4byte 0x000087EF
_08021D48: .4byte gUnknown_080CF936
_08021D4C: .4byte 0xFFFFFE74
_08021D50: .4byte gUnknown_080CF8BC
_08021D54:
	ldrb r0, [r2, #3]
	cmp r0, #5
	beq _08021D9C
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _08021D98 @ =gLoadedSaveGame
	adds r0, #0x22
	ldrb r2, [r2, #9]
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r1, sl
	adds r7, r1, r0
	mov r2, sb
	lsls r4, r2, #0x10
	lsrs r1, r4, #0xf
	movs r0, #0x24
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0x28
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r8, r4
	b _08021DA6
	.align 2, 0
_08021D98: .4byte gLoadedSaveGame
_08021D9C:
	movs r3, #0
	str r3, [sp, #4]
	mov r0, sb
	lsls r0, r0, #0x10
	mov r8, r0
_08021DA6:
	movs r7, #0xab
	lsls r7, r7, #2
	add r7, sl
	ldr r0, [r7]
	cmp r0, #0
	beq _08021DCA
	movs r0, #0x70
	strh r0, [r7, #0x10]
	mov r1, r8
	asrs r0, r1, #0x10
	adds r0, #0x90
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08021DCA:
	mov r2, sl
	ldrb r6, [r2, #1]
	cmp r6, #1
	bne _08021E1A
	movs r4, #0xb5
	lsls r4, r4, #2
	add r4, sl
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r4, #0xbf
	lsls r4, r4, #2
	add r4, sl
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, _08021EE0 @ =gLoadedSaveGame
	adds r0, #0x32
	ldrb r0, [r0]
	ldr r1, _08021EE4 @ =gStageData
	ldrb r1, [r1, #9]
	asrs r0, r1
	ands r0, r6
	cmp r0, #0
	beq _08021E1A
	movs r4, #0xc9
	lsls r4, r4, #2
	add r4, sl
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08021E1A:
	ldr r1, _08021EE4 @ =gStageData
	ldrb r0, [r1, #3]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08021E58
	adds r0, r1, #0
	adds r0, #0xb4
	ldrb r1, [r0]
	cmp r1, #9
	bls _08021E34
	movs r1, #9
_08021E34:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	mov r3, sl
	adds r7, r3, r0
	movs r0, #0x24
	strh r0, [r7, #0x10]
	mov r1, r8
	asrs r0, r1, #0x10
	adds r0, #0x9c
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08021E58:
	movs r7, #0xf2
	lsls r7, r7, #1
	add r7, sl
	movs r6, #0
	movs r0, #5
	strh r0, [r7, #0x10]
	mov r2, r8
	asrs r5, r2, #0x10
	adds r4, r5, #0
	adds r4, #0x8d
	strh r4, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0x83
	lsls r7, r7, #2
	add r7, sl
	movs r0, #0xf
	strh r0, [r7, #0x10]
	strh r4, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0x97
	lsls r7, r7, #2
	add r7, sl
	lsls r4, r5, #1
	movs r0, #8
	subs r0, r0, r4
	strh r0, [r7, #0x10]
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r3, [sp, #4]
	cmp r3, #0
	beq _08021ED0
	movs r7, #0x8d
	lsls r7, r7, #2
	add r7, sl
	movs r0, #0xb
	subs r0, r0, r4
	strh r0, [r7, #0x10]
	movs r0, #0x18
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08021ED0:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021EE0: .4byte gLoadedSaveGame
_08021EE4: .4byte gStageData

.syntax divided
