.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ Seems to be about Omochao texts.
	thumb_func_start sub_80236C8
sub_80236C8: @ 0x080236C8
	push {r4, r5, lr}
	adds r4, r2, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	str r0, [r4]
	movs r1, #0
	movs r3, #0
	movs r0, #8
	strh r0, [r4, #0xa]
	movs r2, #0x28
	movs r0, #0x28
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	strb r2, [r4, #0xf]
	strb r2, [r4, #0x10]
	strb r1, [r4, #0xd]
	strb r1, [r4, #0xe]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strh r3, [r4, #8]
	strb r1, [r4, #0xc]
	strb r1, [r4, #0x1c]
	strh r3, [r4, #0x1a]
	strb r1, [r4, #0x1d]
	strb r1, [r4, #0x1e]
	ldr r0, _08023724 @ =0x06012000
	str r0, [r4, #0x24]
	strb r1, [r4, #0x1f]
	ldr r0, _08023728 @ =gLoadedSaveGame
	ldr r1, _0802372C @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bls _0802370E
	movs r0, #5
_0802370E:
	ldr r1, _08023730 @ =gUnknown_08E7EA78
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x20]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08023724: .4byte 0x06012000
_08023728: .4byte gLoadedSaveGame
_0802372C: .4byte 0x00000366
_08023730: .4byte gUnknown_08E7EA78

	thumb_func_start sub_8023734
sub_8023734: @ 0x08023734
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #0x1c]
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0802379E
	ldr r1, [r4, #0x20]
	lsls r0, r0, #1
	adds r0, r0, r1
	subs r0, #2
	ldrh r2, [r0]
	ldr r1, _08023774 @ =0xFFFFFEAC
	adds r0, r2, r1
	cmp r0, #1
	bhi _0802379E
	ldr r0, _08023778 @ =gPressedKeys
	ldrh r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0802377C
	ldrb r1, [r4, #0x1f]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0802377C
	movs r0, #1
	strb r0, [r4, #0x1c]
	b _0802399E
	.align 2, 0
_08023774: .4byte 0xFFFFFEAC
_08023778: .4byte gPressedKeys
_0802377C:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	beq _08023788
	movs r0, #1
	b _080239A0
_08023788:
	ldrh r0, [r4, #0xa]
	subs r0, #2
	movs r1, #0
	strh r0, [r4, #8]
	strb r1, [r4, #6]
	strb r1, [r4, #0xc]
	movs r0, #0x28
	strh r0, [r4, #0x12]
	strh r0, [r4, #0x14]
	ldr r0, _08023868 @ =0x06012000
	str r0, [r4, #0x24]
_0802379E:
	ldrh r0, [r4, #8]
	adds r2, r0, #2
	strh r2, [r4, #8]
	ldr r0, _0802386C @ =gInput
	ldrh r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080237C0
	ldrb r1, [r4, #0x1f]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080237C0
	adds r0, r2, #2
	strh r0, [r4, #8]
_080237C0:
	ldrh r0, [r4, #8]
	ldrh r3, [r4, #0xa]
	cmp r0, r3
	bhs _080237CA
	b _0802399E
_080237CA:
	subs r6, r0, r3
	strh r6, [r4, #8]
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	ldr r1, [r4, #0x20]
	lsls r0, r0, #1
	adds r0, r0, r1
	subs r0, #2
	ldrh r2, [r0]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r5, r1, #0
	cmp r2, r0
	bhi _080238C4
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08023804
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #4
	adds r3, r4, r0
	ldrh r0, [r4, #0x16]
	strh r0, [r3, #0x10]
	ldrh r0, [r4, #0x18]
	strh r0, [r3, #0x12]
_08023804:
	lsls r2, r2, #3
	ldr r0, _08023870 @ =gJapaneseGameFont
	adds r5, r2, r0
	ldrb r1, [r4, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r3, r4, r0
	ldrh r1, [r4, #0x12]
	movs r6, #0x12
	ldrsh r0, [r4, r6]
	adds r6, r2, #0
	cmp r0, #0x28
	beq _08023828
	ldrb r2, [r5, #3]
	adds r0, r1, r2
	strh r0, [r4, #0x12]
_08023828:
	movs r0, #4
	strb r0, [r4, #0x1e]
	ldr r0, [r4, #0x24]
	str r0, [r3]
	ldr r0, [r4, #0x24]
	adds r0, #0x80
	str r0, [r4, #0x24]
	ldrh r0, [r5]			@ gJapaneseGameFont
	strh r0, [r3, #0xc]
	ldrb r0, [r5, #2]
	strb r0, [r3, #0x1a]
	ldrh r1, [r4, #0x12]
	strh r1, [r3, #0x10]
	movs r0, #0xc
	ldrsb r0, [r4, r0]
	ldrh r2, [r4, #0x14]
	adds r0, r0, r2
	strh r0, [r3, #0x12]
	strh r1, [r4, #0x16]
	ldrh r0, [r3, #0x12]
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x1d]
	cmp r0, #1
	beq _08023874
	cmp r0, #1
	ble _0802388A
	cmp r0, #2
	beq _0802387C
	cmp r0, #3
	beq _08023884
	b _0802388A
	.align 2, 0
_08023868: .4byte 0x06012000
_0802386C: .4byte gInput
_08023870: .4byte gJapaneseGameFont
_08023874:
	ldrh r0, [r3, #0x12]
	subs r0, #8
	strh r0, [r3, #0x12]
	b _0802388A
_0802387C:
	ldrh r0, [r3, #0x12]
	adds r0, #8
	strh r0, [r3, #0x12]
	b _0802388A
_08023884:
	ldrh r0, [r3, #0x10]
	subs r0, #8
	strh r0, [r3, #0x10]
_0802388A:
	movs r1, #0
	strh r1, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r0, #0xf
	strb r0, [r3, #0x1f]
	subs r0, #0x10
	str r0, [r3, #0x20]
	str r1, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	ldr r1, _080238C0 @ =gJapaneseGameFont
	adds r1, r6, r1
	ldrh r0, [r4, #0x12]
	ldrb r1, [r1, #4]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	b _0802399E
	.align 2, 0
_080238C0: .4byte gJapaneseGameFont
_080238C4:
	ldr r1, _080238E0 @ =0x0000FFFE
	adds r0, r6, r1
	adds r0, r3, r0
	strh r0, [r4, #8]
	ldr r6, _080238E4 @ =0xFFFFFEAF
	adds r0, r2, r6
	cmp r0, #0xb
	bhi _0802399E
	lsls r0, r0, #2
	ldr r1, _080238E8 @ =_080238EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080238E0: .4byte 0x0000FFFE
_080238E4: .4byte 0xFFFFFEAF
_080238E8: .4byte _080238EC
_080238EC: @ jump table
	.4byte _0802391C @ case 0
	.4byte _08023934 @ case 1
	.4byte _08023952 @ case 2
	.4byte _08023960 @ case 3
	.4byte _0802399E @ case 4
	.4byte _08023966 @ case 5
	.4byte _0802397A @ case 6
	.4byte _0802399E @ case 7
	.4byte _0802398E @ case 8
	.4byte _08023992 @ case 9
	.4byte _08023996 @ case 10
	.4byte _0802399A @ case 11
_0802391C:
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r0, r5
	subs r0, #2
	ldrh r1, [r4, #0x12]
	ldrh r0, [r0]
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	b _0802399E
_08023934:
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r0, r5
	subs r0, #2
	ldrh r2, [r0]
	cmp r2, #2
	bhi _0802394A
	movs r2, #2
_0802394A:
	movs r0, #0
	strh r0, [r4, #8]
	strh r2, [r4, #0xa]
	b _0802399E
_08023952:
	movs r0, #0xf
	ldrsb r0, [r4, r0]
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0x14]
	adds r0, #0x10
	strh r0, [r4, #0x14]
	b _0802399E
_08023960:
	ldr r0, [r4, #0x28]
	str r0, [r4, #0x24]
	b _0802399E
_08023966:
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r0, r5
	subs r0, #2
	ldrh r2, [r0]
	strb r2, [r4, #0xc]
	b _0802399E
_0802397A:
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	lsls r0, r0, #1
	adds r0, r0, r5
	subs r0, #2
	ldrh r2, [r0]
	strh r2, [r4, #0x1a]
	b _0802399E
_0802398E:
	movs r0, #0
	b _0802399C
_08023992:
	movs r0, #1
	b _0802399C
_08023996:
	movs r0, #2
	b _0802399C
_0802399A:
	movs r0, #3
_0802399C:
	strb r0, [r4, #0x1d]
_0802399E:
	movs r0, #0
_080239A0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80239A8
sub_80239A8: @ 0x080239A8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [r5]
	ldrb r6, [r5, #6]
	cmp r6, #0
	beq _08023A62
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _080239C0
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080239C0:
	movs r4, #0
	cmp r4, r6
	bhs _080239F4
_080239C6:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	movs r0, #0xd
	ldrsb r0, [r5, r0]
	ldrh r2, [r1, #0x10]
	adds r0, r0, r2
	strh r0, [r1, #0x10]
	movs r0, #0xe
	ldrsb r0, [r5, r0]
	ldrh r2, [r1, #0x12]
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	adds r0, r1, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	blo _080239C6
_080239F4:
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _08023A62
	subs r0, #1
	strb r0, [r5, #0x1e]
	ldrb r0, [r5, #0x1d]
	cmp r0, #1
	beq _08023A24
	cmp r0, #1
	bgt _08023A0E
	cmp r0, #0
	beq _08023A18
	b _08023A62
_08023A0E:
	cmp r0, #2
	beq _08023A34
	cmp r0, #3
	beq _08023A4C
	b _08023A62
_08023A18:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	b _08023A44
_08023A24:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	ldrh r0, [r1, #0x12]
	adds r0, #2
	b _08023A42
_08023A34:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	ldrh r0, [r1, #0x12]
	subs r0, #2
_08023A42:
	strh r0, [r1, #0x12]
_08023A44:
	adds r0, r1, #0
	bl DisplaySprite
	b _08023A62
_08023A4C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r1, r5, r0
	ldrh r0, [r1, #0x10]
	adds r0, #2
	strh r0, [r1, #0x10]
	adds r0, r1, #0
	bl DisplaySprite
_08023A62:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08023A82
	cmp r7, #0
	beq _08023A82
	ldrh r0, [r5, #0x12]
	adds r0, #0xa
	strh r0, [r7, #0x10]
	ldrh r0, [r5, #0x14]
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_08023A82:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
