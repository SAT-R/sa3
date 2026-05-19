.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8021A64
sub_8021A64: @ 0x08021A64
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

	thumb_func_start sub_8021EE8
sub_8021EE8: @ 0x08021EE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r1, _08022168 @ =gUnknown_080CEE20
	add r0, sp, #4
	movs r2, #5
	bl memcpy
	add r4, sp, #0xc
	ldr r1, _0802216C @ =gUnknown_080CEE25
	adds r0, r4, #0
	movs r2, #0x19
	bl memcpy
	ldr r0, _08022170 @ =Task_8022898
	movs r1, #0xd6
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #6
	movs r3, #0
	str r3, [sp]
	bl TaskCreate
	str r0, [sp, #0x28]
	movs r0, #0x10
	mov r1, sb
	strb r0, [r1]
	ldr r2, [sp, #0x28]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sb, r1
	movs r0, #2
	strb r0, [r1, #1]
	ldr r6, _08022174 @ =0x06013800
	movs r5, #0
	ldr r7, _08022178 @ =gUnknown_080CECF8
	movs r4, #0
	movs r2, #0
_08021F3E:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #4
	mov r1, sb
	adds r3, r1, r0
	lsls r0, r5, #6
	adds r0, r6, r0
	str r0, [r3]
	lsls r1, r5, #3
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	strh r0, [r3, #0xc]			@ ANIM_ASCII
	ldrb r0, [r1, #6]
	strb r0, [r3, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r3, #0x14]
	strh r2, [r3, #0xe]
	strh r2, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r4, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	str r2, [r3, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _08021F3E
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r6, r6, r2
	movs r5, #0
	movs r4, #0
	ldr r0, _0802217C @ =0x0000058F		@ ANIM_LIFE_ICONS
	mov r8, r0
_08021F8E:
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r0, r1, #2
	adds r0, r0, r5
	lsls r0, r0, #4
	ldr r2, _08022180 @ =gPlayers
	adds r7, r0, r2
	lsls r1, r1, #3
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r1, r1, r0
	mov r2, sb
	adds r3, r2, r1
	str r6, [r3]
	mov r0, r8
	strh r0, [r3, #0xc]
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	adds r0, #4
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	movs r7, #0xa0
	lsls r7, r7, #1
	strh r7, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r2, #0x10
	strb r2, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	str r1, [r3, #0x20]
	str r4, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r6, #0x80
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08021F8E
	movs r3, #0xa1
	lsls r3, r3, #2
	add r3, sb
	str r6, [r3]
	movs r5, #0
	movs r4, #0
	ldr r1, _08022184 @ =0x000005E7		@ ANIM_INDICATOR_SONIC
	strh r1, [r3, #0xc]
	strb r5, [r3, #0x1a]
	strh r7, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	ldrb r0, [r3, #0x1b]
	mov r2, sl
	orrs r0, r2
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r5, [r3, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r3, #0x20]
	movs r2, #0x80
	lsls r2, r2, #0xb
	mov r8, r2
	str r2, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r6, #0x80
	movs r3, #0xab
	lsls r3, r3, #2
	add r3, sb
	str r6, [r3]
	ldr r0, _08022184 @ =0x000005E7		@ ANIM_INDICATOR_SONIC
	strh r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	ldrb r0, [r3, #0x1b]
	mov r2, sl
	orrs r0, r2
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r5, [r3, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r3, #0x20]
	mov r2, r8
	str r2, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r6, #0x80
	ldr r0, _08022188 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08022180 @ =gPlayers
	adds r7, r0, r1
	adds r0, r7, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _08022180 @ =gPlayers
	adds r1, r1, r2
	movs r3, #0xb8
	lsls r3, r3, #2
	add r3, sb
	str r6, [r3]
	ldr r0, _0802218C @ =0x0000058C		@ ANIM_UI_CHARACTER_TYPE
	strh r0, [r3, #0xc]
	adds r1, #0x2a
	ldrb r2, [r1]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1c
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r2, r2, r0
	add r2, sp
	adds r2, #0xc
	ldrb r0, [r2]
	strb r0, [r3, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	ldrb r0, [r3, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r3, #0x1b]
	movs r2, #0x10
	strb r2, [r3, #0x1c]
	strb r5, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r4, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r1, #0x90
	lsls r1, r1, #1
	adds r6, r6, r1
	movs r3, #0xc2
	lsls r3, r3, #2
	add r3, sb
	str r6, [r3]
	ldr r0, _08022190 @ =0x000005EB		@ ANIM_VS_START_ICON
	strh r0, [r3, #0xc]
	strb r5, [r3, #0x1a]
	movs r2, #0xc0
	lsls r2, r2, #1
	strh r2, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	ldrb r0, [r3, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r3, #0x1b]
	movs r2, #0x10
	strb r2, [r3, #0x1c]
	strb r5, [r3, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r4, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r6, #0x80
	movs r3, #0xcc
	lsls r3, r3, #2
	add r3, sb
	str r6, [r3]
	ldr r0, _08022194 @ =0x000005EA		@ ANIM_VS_CHECKERED_FLAG
	strh r0, [r3, #0xc]
	strb r5, [r3, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	ldrb r0, [r3, #0x1b]
	mov r2, sl
	orrs r0, r2
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r5, [r3, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r3, #0x20]
	str r4, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	ldr r0, [sp, #0x28]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08022168: .4byte gUnknown_080CEE20
_0802216C: .4byte gUnknown_080CEE25
_08022170: .4byte Task_8022898
_08022174: .4byte 0x06013800
_08022178: .4byte gUnknown_080CECF8
_0802217C: .4byte 0x0000058F
_08022180: .4byte gPlayers
_08022184: .4byte 0x000005E7
_08022188: .4byte gStageData
_0802218C: .4byte 0x0000058C
_08022190: .4byte 0x000005EB
_08022194: .4byte 0x000005EA

	thumb_func_start sub_8022198
sub_8022198: @ 0x08022198
	push {r4, r5, lr}
	ldr r0, _08022230 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r3, #0
	movs r4, #0xff
_080221AA:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #4
	adds r2, r1, r0
	ldrb r0, [r2, #0x1b]
	orrs r0, r4
	strb r0, [r2, #0x1b]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xb
	bls _080221AA
	movs r3, #0
	movs r5, #0xf2
	lsls r5, r5, #1
	movs r4, #0xff
_080221CC:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r2, r1, r0
	ldrb r0, [r2, #0x1b]
	orrs r0, r4
	strb r0, [r2, #0x1b]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080221CC
	movs r3, #0
	movs r5, #0xa1
	lsls r5, r5, #2
	movs r4, #0xff
_080221EE:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r2, r1, r0
	ldrb r0, [r2, #0x1b]
	orrs r0, r4
	strb r0, [r2, #0x1b]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _080221EE
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022230: .4byte gCurTask

	thumb_func_start sub_8022234
sub_8022234: @ 0x08022234
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

	thumb_func_start sub_8022664
sub_8022664: @ 0x08022664
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r1
	lsls r0, r0, #0x10
	ldr r1, _08022724 @ =gCurTask
	ldr r1, [r1]
	ldrh r3, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r1, r3
	mov r8, r1
	ldr r1, _08022728 @ =gStageData
	ldrb r1, [r1, #6]
	lsls r6, r1, #2
	adds r6, r6, r1
	lsls r6, r6, #2
	adds r6, r6, r1
	lsls r6, r6, #4
	ldr r2, _0802272C @ =gPlayers
	adds r6, r6, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r0, [r6, #0x10]
	ldr r2, [r1, #0x10]
	subs r0, r0, r2
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	ldr r0, [r6, #0x14]
	ldr r1, [r1, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	mov r0, sb
	strb r4, [r0, #0x1f]
	ldr r2, _08022730 @ =gNextFreeAffineIndex
	ldrb r0, [r2]
	ldr r1, _08022734 @ =0x00040020
	orrs r0, r1
	mov r1, sb
	str r0, [r1, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	asrs r0, r0, #0x12
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	asrs r1, r1, #0x12
	str r3, [sp]
	bl sa2__sub_8004418
	ldr r2, _08022738 @ =0xFFFFFF00
	adds r0, r0, r2
	ldr r2, _0802273C @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldr r3, [sp]
	ldr r1, _08022740 @ =0x030002D4
	adds r3, r3, r1
	strh r0, [r3]
	rsbs r4, r4, #0
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	ldr r2, _08022744 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r1
	lsls r4, r4, #0x10
	rsbs r5, r5, #0
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	bgt _08022748
	movs r7, #0x10
	b _0802274E
	.align 2, 0
_08022724: .4byte gCurTask
_08022728: .4byte gStageData
_0802272C: .4byte gPlayers
_08022730: .4byte gNextFreeAffineIndex
_08022734: .4byte 0x00040020
_08022738: .4byte 0xFFFFFF00
_0802273C: .4byte 0x000003FF
_08022740: .4byte 0x030002D4
_08022744: .4byte gCamera
_08022748:
	cmp r4, #0xe0
	ble _0802274E
	movs r7, #0xe0
_0802274E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	bgt _0802275A
	movs r5, #0x18
	b _08022760
_0802275A:
	cmp r0, #0x80
	ble _08022760
	movs r5, #0x80
_08022760:
	ldr r0, _0802279C @ =0x000002DA
	add r0, r8
	strh r7, [r0]
	movs r0, #0xb7
	lsls r0, r0, #2
	add r0, r8
	strh r5, [r0]
	ldr r0, _080227A0 @ =0x000002D6
	add r0, r8
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	movs r0, #0xb6
	lsls r0, r0, #2
	add r0, r8
	strh r1, [r0]
	movs r1, #0xb5
	lsls r1, r1, #2
	add r1, r8
	mov r0, sb
	bl TransformSprite
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802279C: .4byte 0x000002DA
_080227A0: .4byte 0x000002D6

	thumb_func_start TaskDestructor_80227A4
TaskDestructor_80227A4: @ 0x080227A4
	push {r4, r5, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _080227E8 @ =0x030002AC
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080227BC
	bl VramFree
_080227BC:
	ldrb r0, [r5, #1]
	cmp r0, #1
	bne _080227E0
	ldr r1, _080227EC @ =0x030002D4
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _080227F0 @ =0x030002FC
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _080227F4 @ =0x03000324
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
_080227E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080227E8: .4byte 0x030002AC
_080227EC: .4byte 0x030002D4
_080227F0: .4byte 0x030002FC
_080227F4: .4byte 0x03000324

	thumb_func_start Task_80227F8
Task_80227F8: @ 0x080227F8
	push {r4, lr}
	ldr r4, _08022818 @ =gCurTask
	bl sub_8021A64
	ldr r0, _0802281C @ =gStageData
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _08022810
	ldr r1, [r4]
	ldr r0, _08022820 @ =Task_8022824
	str r0, [r1, #8]
_08022810:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022818: .4byte gCurTask
_0802281C: .4byte gStageData
_08022820: .4byte Task_8022824

	thumb_func_start Task_8022824
Task_8022824: @ 0x08022824
	push {r4, lr}
	ldr r4, _0802285C @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _08022840
	adds r0, #1
	strb r0, [r1]
	bl sub_8021A64
_08022840:
	ldr r0, _08022860 @ =gStageData
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _08022854
	bl sub_80219E8
	ldr r1, [r4]
	ldr r0, _08022864 @ =Task_34C_8022868
	str r0, [r1, #8]
_08022854:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802285C: .4byte gCurTask
_08022860: .4byte gStageData
_08022864: .4byte Task_34C_8022868

	thumb_func_start Task_34C_8022868
Task_34C_8022868: @ 0x08022868
	push {lr}
	ldr r2, _08022890 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022888
	ldr r1, [r2]
	ldr r0, _08022894 @ =Task_80227F8
	str r0, [r1, #8]
_08022888:
	bl sub_8021A64
	pop {r0}
	bx r0
	.align 2, 0
_08022890: .4byte gCurTask
_08022894: .4byte Task_80227F8

	thumb_func_start Task_8022898
Task_8022898: @ 0x08022898
	push {lr}
	ldr r2, _080228C0 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080228B8
	ldr r1, [r2]
	ldr r0, _080228C4 @ =Task_80228C8
	str r0, [r1, #8]
_080228B8:
	bl sub_8022234
	pop {r0}
	bx r0
	.align 2, 0
_080228C0: .4byte gCurTask
_080228C4: .4byte Task_80228C8

	thumb_func_start Task_80228C8
Task_80228C8: @ 0x080228C8
	push {lr}
	bl sub_8022234
	ldr r0, _080228E4 @ =gStageData
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080228E0
	ldr r0, _080228E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080228EC @ =Task_80228F0
	str r0, [r1, #8]
_080228E0:
	pop {r0}
	bx r0
	.align 2, 0
_080228E4: .4byte gStageData
_080228E8: .4byte gCurTask
_080228EC: .4byte Task_80228F0

	thumb_func_start Task_80228F0
Task_80228F0: @ 0x080228F0
	push {r4, lr}
	ldr r4, _08022928 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf
	bhi _0802290C
	adds r0, #1
	strb r0, [r1]
	bl sub_8022234
_0802290C:
	ldr r0, _0802292C @ =gStageData
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _08022920
	bl sub_8022198
	ldr r1, [r4]
	ldr r0, _08022930 @ =Task_8022898
	str r0, [r1, #8]
_08022920:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022928: .4byte gCurTask
_0802292C: .4byte gStageData
_08022930: .4byte Task_8022898

	thumb_func_start sub_8022934
sub_8022934: @ 0x08022934
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10		@ pid
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0802296C @ =gPlayers
	adds r1, r1, r0
	adds r1, #0xe0
	ldr r0, [r1]
	adds r1, r0, #0
	adds r1, #0xc
	ldrh r0, [r1, #0x10]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xee
	bhi _08022970
	movs r2, #0x12
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08022970
	cmp r0, #0x9f
	bgt _08022970
	movs r0, #1
	b _08022972
	.align 2, 0
_0802296C: .4byte gPlayers
_08022970:
	movs r0, #0
_08022972:
	pop {r1}
	bx r1
	.align 2, 0
