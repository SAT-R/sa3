.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateMainMenu
CreateMainMenu: @ 0x0808723C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0808731C @ =gDispCnt
	mov sb, r0
	ldr r1, _08087320 @ =0x00001741
	adds r0, r1, #0
	mov r2, sb
	strh r0, [r2]
	ldr r0, _08087324 @ =sub_8089F54
	movs r1, #0xfc
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08087328 @ =sub_808A1AC
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r2, _0808732C @ =gPseudoRandom
	ldr r1, _08087330 @ =gFrameCount
	ldr r1, [r1]
	str r1, [r2]
	movs r4, #0
	movs r1, #0
	mov r8, r1
	strh r5, [r0, #0x10]
	strb r6, [r0, #1]
	bl sub_808738C
	mov r2, r8
	str r2, [sp, #4]
	ldr r5, _08087334 @ =0x040000D4
	add r0, sp, #4
	str r0, [r5]
	ldr r0, _08087338 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0808733C @ =0x85000010
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r3, _08087340 @ =gBgSprites_Unknown1
	strb r4, [r3, #2]
	ldr r0, _08087344 @ =gBgSprites_Unknown2
	strb r4, [r0, #8]
	strb r4, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r2, #0x40
	strb r2, [r0, #0xb]
	strb r4, [r3, #1]
	strb r4, [r0, #4]
	strb r4, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r4, [r3]
	strb r4, [r0]
	strb r4, [r0, #1]
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
	ldr r1, _08087348 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldr r1, _0808734C @ =gBldRegs
	ldr r0, _08087350 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r2, _08087354 @ =gFlags
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0808735C
	ldr r0, _08087358 @ =gUnknown_080D66D8
	movs r1, #0
	movs r2, #0x40
	bl CopyPalette
	b _08087370
	.align 2, 0
_0808731C: .4byte gDispCnt
_08087320: .4byte 0x00001741
_08087324: .4byte sub_8089F54
_08087328: .4byte sub_808A1AC
_0808732C: .4byte gPseudoRandom
_08087330: .4byte gFrameCount
_08087334: .4byte 0x040000D4
_08087338: .4byte gBgCntRegs
_0808733C: .4byte 0x85000010
_08087340: .4byte gBgSprites_Unknown1
_08087344: .4byte gBgSprites_Unknown2
_08087348: .4byte gWinRegs
_0808734C: .4byte gBldRegs
_08087350: .4byte 0x00003FFF
_08087354: .4byte gFlags
_08087358: .4byte gUnknown_080D66D8
_0808735C:
	ldr r0, _08087380 @ =gUnknown_080D66D8
	str r0, [r5]
	ldr r0, _08087384 @ =gObjPalette
	str r0, [r5, #4]
	ldr r0, _08087388 @ =0x80000040
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	movs r0, #2
	orrs r1, r0
	str r1, [r2]
_08087370:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08087380: .4byte gUnknown_080D66D8
_08087384: .4byte gObjPalette
_08087388: .4byte 0x80000040

	thumb_func_start sub_808738C
sub_808738C: @ 0x0808738C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r1, #0
	ldr r6, _080873C0 @ =gLoadedSaveGame
	mov r2, ip
	adds r2, #7
	movs r3, #0xc
_0808739A:
	adds r0, r2, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0808739A
	mov r1, ip
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _080873B8
	cmp r0, #4
	beq _080873B8
	cmp r0, #5
	bne _080873C4
_080873B8:
	mov r1, ip
	adds r1, #0x6e
	movs r0, #0
	b _080873CA
	.align 2, 0
_080873C0: .4byte gLoadedSaveGame
_080873C4:
	mov r1, ip
	adds r1, #0x6e
	movs r0, #1
_080873CA:
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x70
	movs r4, #0
	movs r5, #0
	strh r5, [r0]
	mov r7, ip
	strb r4, [r7, #0xc]
	strb r4, [r7, #0xd]
	ldr r0, _08087484 @ =0x0000FF10
	strh r0, [r7, #0x12]
	movs r0, #2
	strb r0, [r7, #0xb]
	mov r0, ip
	adds r0, #0x6c
	strh r5, [r0]
	strb r4, [r7, #4]
	strb r4, [r7, #2]
	strb r4, [r7, #5]
	movs r2, #1
	strb r2, [r7, #0xe]
	adds r0, #6
	strh r5, [r0]
	mov r1, ip
	adds r1, #0x74
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	strb r2, [r7, #0xf]
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r7, #0x18]
	movs r2, #0x80
	lsls r2, r2, #6
	str r2, [r7, #0x1c]
	movs r0, #0xae
	lsls r0, r0, #9
	str r0, [r7, #0x20]
	adds r0, r2, r2
	str r0, [r7, #0x24]
	movs r3, #0xc6
	lsls r3, r3, #9
	str r3, [r7, #0x28]
	adds r0, r0, r2
	str r0, [r7, #0x2c]
	movs r1, #0xde
	lsls r1, r1, #9
	str r1, [r7, #0x30]
	adds r0, r0, r2
	str r0, [r7, #0x34]
	ldr r1, _08087488 @ =0xFFFFD800
	str r1, [r7, #0x58]
	movs r0, #0xac
	lsls r0, r0, #7
	str r0, [r7, #0x5c]
	str r1, [r7, #0x60]
	str r0, [r7, #0x64]
	str r3, [r7, #0x38]
	movs r0, #0xd0
	lsls r0, r0, #5
	adds r0, r2, r0
	str r0, [r7, #0x3c]
	str r3, [r7, #0x40]
	movs r1, #0x8c
	lsls r1, r1, #7
	adds r0, r2, r1
	str r0, [r7, #0x44]
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r7, #0x48]
	str r2, [r7, #0x4c]
	strb r4, [r7, #6]
	str r5, [r7, #0x50]
	str r5, [r7, #0x54]
	mov r0, ip
	adds r0, #0x68
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r7, _0808748C @ =0x00000366
	adds r0, r6, r7
	ldrb r0, [r0]
	mov r1, ip
	strb r0, [r1]
	ldr r0, _08087490 @ =0x0000FFFF
	strh r0, [r1, #0x14]
	ldr r0, _08087494 @ =0x06010000
	str r0, [r1, #0x78]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087484: .4byte 0x0000FF10
_08087488: .4byte 0xFFFFD800
_0808748C: .4byte 0x00000366
_08087490: .4byte 0x0000FFFF
_08087494: .4byte 0x06010000

	thumb_func_start sub_8087498
sub_8087498: @ 0x08087498
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r1, #0xb5
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r7, #0x78]
	str r1, [r0]
	ldr r5, _08087588 @ =sAnimsMenuChao
	ldr r2, [r5, #4]
	lsls r2, r2, #5
	ldr r1, [r7, #0x78]
	adds r1, r1, r2
	str r1, [r7, #0x78]
	ldrh r1, [r5]
	movs r2, #0
	mov r8, r2
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x5c]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #1
	mov sb, r1
	mov r2, sb
	strh r2, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r2, #0xbf
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r1, [r7, #0x78]
	str r1, [r0]
	ldr r2, [r5, #0xc]
	lsls r2, r2, #5
	ldr r1, [r7, #0x78]
	adds r1, r1, r2
	str r1, [r7, #0x78]
	ldrh r1, [r5, #8]
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x60]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x64]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r1, sb
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	strb r6, [r0, #0x1c]
	mov r2, r8
	strb r2, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r7, #0x78]
	str r1, [r0]
	ldr r3, _0808758C @ =gUnknown_080D6694
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r7, #0x78]
	adds r1, r1, r2
	str r1, [r7, #0x78]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x58]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x5c]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	strb r6, [r0, #0x1c]
	mov r2, r8
	strb r2, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087588: .4byte sAnimsMenuChao
_0808758C: .4byte gUnknown_080D6694

	thumb_func_start sub_8087590
sub_8087590: @ 0x08087590
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r5, #0
	ldr r7, _080877E0 @ =gUnknown_080D6114
	movs r0, #0
	mov r8, r0
	movs r6, #0
_080875A2:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x7c
	adds r1, r4, r0
	ldr r0, [r4, #0x78]
	str r0, [r1]
	ldr r0, [r4, #0x78]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0x78]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	strh r6, [r1, #0x14]
	strh r6, [r1, #0xe]
	strh r6, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	movs r0, #0x20
	str r0, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080875A2
	movs r5, #0
	ldr r7, _080877E4 @ =gUnknown_080D6174
	movs r1, #0
	mov r8, r1
	movs r6, #0
_08087612:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0xcc
	adds r1, r4, r0
	ldr r0, [r4, #0x78]
	str r0, [r1]
	ldr r0, [r4, #0x78]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0x78]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0x40
	strh r0, [r1, #0x14]
	strh r6, [r1, #0xe]
	strh r6, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r6, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08087612
	movs r5, #0
	ldr r7, _080877E8 @ =gUnknown_080D61D4
	movs r1, #0
	mov r8, r1
	movs r6, #0
_08087682:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r4, r0
	ldr r0, [r4, #0x78]
	str r0, [r1]
	ldr r0, [r4, #0x78]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0x78]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0x80
	strh r0, [r1, #0x14]
	strh r6, [r1, #0xe]
	strh r6, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r6, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08087682
	movs r5, #0
	ldr r7, _080877EC @ =gUnknown_080D6234
	movs r1, #0
	mov r8, r1
	movs r6, #0
_080876F6:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r4, r0
	ldr r0, [r4, #0x78]
	str r0, [r1]
	ldr r0, [r4, #0x78]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0x78]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x34]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	strh r0, [r1, #0x14]
	strh r6, [r1, #0xe]
	strh r6, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r6, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080876F6
	movs r5, #0
	ldr r7, _080877F0 @ =gUnknown_080D6354
	movs r1, #0
	mov r8, r1
	movs r6, #0
_0808776A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r2, #0x97
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r4, r0
	ldr r0, [r4, #0x78]
	str r0, [r1]
	ldr r0, [r4, #0x78]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0x78]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	strh r0, [r1, #0x14]
	strh r6, [r1, #0xe]
	strh r6, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r6, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0808776A
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080877E0: .4byte gUnknown_080D6114
_080877E4: .4byte gUnknown_080D6174
_080877E8: .4byte gUnknown_080D61D4
_080877EC: .4byte gUnknown_080D6234
_080877F0: .4byte gUnknown_080D6354

	thumb_func_start sub_80877F4
sub_80877F4: @ 0x080877F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	ldr r7, _08087824 @ =gUnknown_080D63B4
	movs r0, #0
	mov r8, r0
	movs r6, #0
_08087808:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x7c
	adds r1, r4, r0
	ldr r0, [r4, #0x78]
	str r0, [r1]
	cmp r5, #0
	bne _08087828
	ldr r0, [r4, #0x78]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _08087830
	.align 2, 0
_08087824: .4byte gUnknown_080D63B4
_08087828:
	ldr r0, [r4, #0x78]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
_08087830:
	str r0, [r4, #0x78]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	strh r6, [r1, #0x14]
	strh r6, [r1, #0xe]
	strh r6, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	movs r0, #0x20
	str r0, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08087808
	movs r5, #0
	ldr r7, _080878A8 @ =gUnknown_080D6414
	movs r1, #0
	mov r8, r1
	movs r6, #0
_0808788A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0xcc
	adds r1, r4, r0
	ldr r0, [r4, #0x78]
	str r0, [r1]
	cmp r5, #0
	bne _080878AC
	ldr r0, [r4, #0x78]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	b _080878B4
	.align 2, 0
_080878A8: .4byte gUnknown_080D6414
_080878AC:
	ldr r0, [r4, #0x78]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
_080878B4:
	str r0, [r4, #0x78]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0x40
	strh r0, [r1, #0x14]
	strh r6, [r1, #0xe]
	strh r6, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r6, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0808788A
	movs r5, #0
	ldr r2, _0808794C @ =gUnknown_080D6474
	ldr r7, _08087950 @ =gUnknown_080D64D4
	movs r1, #0
	mov r8, r1
	movs r6, #0
_08087910:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r1, r4, r0
	ldr r0, [r4, #0x78]
	str r0, [r1]
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _08087954
	ldr r0, [r4, #0x78]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r4, #0x78]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	b _0808797A
	.align 2, 0
_0808794C: .4byte gUnknown_080D6474
_08087950: .4byte gUnknown_080D64D4
_08087954:
	cmp r0, #3
	bne _0808797E
	ldr r0, [r4, #0x78]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r4, #0x78]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
_0808797A:
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
_0808797E:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0x80
	strh r0, [r1, #0x14]
	strh r6, [r1, #0xe]
	strh r6, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r6, [r1, #8]
	adds r0, r1, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp]
	cmp r5, #1
	bls _08087910
	movs r5, #0
	ldr r7, _080879E0 @ =gUnknown_080D6534
	movs r1, #0
	mov r8, r1
	movs r6, #0
_080879BE:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r4, r0
	ldr r0, [r4, #0x78]
	str r0, [r1]
	cmp r5, #0
	bne _080879E4
	ldr r0, [r4, #0x78]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	b _080879EC
	.align 2, 0
_080879E0: .4byte gUnknown_080D6534
_080879E4:
	ldr r0, [r4, #0x78]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
_080879EC:
	str r0, [r4, #0x78]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x34]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	strh r0, [r1, #0x14]
	strh r6, [r1, #0xe]
	strh r6, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r3, r8
	strb r3, [r1, #0x1f]
	str r6, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080879BE
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8087A48
sub_8087A48: @ 0x08087A48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r6, _08087B08 @ =gBgCntRegs
	movs r0, #0
	mov r8, r0
	movs r4, #0
	ldr r0, _08087B0C @ =0x00004E07
	strh r0, [r6]
	ldr r5, _08087B10 @ =gBgScrollRegs
	strh r4, [r5]
	strh r4, [r5, #2]
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, _08087B14 @ =0x06004000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08087B18 @ =0x06007000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _08087B1C @ =0x00000157
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x40
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	ldr r2, _08087B20 @ =0x0000035A
	adds r1, r7, r2
	mov r3, r8
	strb r3, [r1]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _08087B24 @ =0x00000601
	strh r0, [r6, #2]
	strh r4, [r5, #4]
	strh r4, [r5, #6]
	movs r1, #0xec
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08087B28 @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0xac
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _08087B2C @ =0x000003DA
	adds r1, r7, r2
	mov r3, r8
	strb r3, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _08087B30 @ =0x0000188A
	strh r0, [r6, #4]
	strh r4, [r5, #8]
	strh r4, [r5, #0xa]
	movs r0, #0xdc
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, _08087B34 @ =0x06008000
	str r0, [r2, #4]
	strh r4, [r2, #0xa]
	ldr r0, _08087B38 @ =0x0600C000
	str r0, [r2, #0xc]
	strh r4, [r2, #0x18]
	strh r4, [r2, #0x1a]
	ldrb r0, [r7, #1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08087B40
	ldr r0, _08087B3C @ =gUnknown_080D66C4
	ldrh r0, [r0, #4]
	b _08087B4C
	.align 2, 0
_08087B08: .4byte gBgCntRegs
_08087B0C: .4byte 0x00004E07
_08087B10: .4byte gBgScrollRegs
_08087B14: .4byte 0x06004000
_08087B18: .4byte 0x06007000
_08087B1C: .4byte 0x00000157
_08087B20: .4byte 0x0000035A
_08087B24: .4byte 0x00000601
_08087B28: .4byte 0x06003000
_08087B2C: .4byte 0x000003DA
_08087B30: .4byte 0x0000188A
_08087B34: .4byte 0x06008000
_08087B38: .4byte 0x0600C000
_08087B3C: .4byte gUnknown_080D66C4
_08087B40:
	ldr r0, _08087B7C @ =gUnknown_080D66C4
	movs r3, #0x10
	ldrsh r1, [r7, r3]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_08087B4C:
	strh r0, [r2, #0x1c]
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #0x1e]
	strh r0, [r2, #0x20]
	strh r0, [r2, #0x22]
	strh r0, [r2, #0x24]
	movs r0, #0x10
	strh r0, [r2, #0x26]
	strh r0, [r2, #0x28]
	adds r0, r2, #0
	adds r0, #0x2a
	strb r1, [r0]
	movs r0, #6
	strh r0, [r2, #0x2e]
	adds r0, r2, #0
	bl DrawBackground
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087B7C: .4byte gUnknown_080D66C4

	thumb_func_start sub_8087B80
sub_8087B80: @ 0x08087B80
	push {r4, r5, r6, r7, lr}
	ldr r7, _08087C44 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, #0x6e
	adds r6, r5, r0
	ldrh r0, [r6]
	cmp r0, #0
	beq _08087BD8
	ldr r2, _08087C48 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08087C4C @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _08087C50 @ =gBldRegs
	ldr r0, _08087C54 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r0, _08087C58 @ =0x03000070
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	strh r3, [r6]
_08087BD8:
	adds r0, r4, #0
	bl sub_8089028
	adds r0, r4, #0
	bl sub_8089150
	adds r0, r4, #0
	bl sub_80891E4
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_8089398
	adds r0, r4, #0
	bl sub_80894BC
	adds r0, r4, #0
	bl sub_8089308
	adds r0, r4, #0
	bl sub_8089428
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089704
	adds r0, r4, #0
	bl sub_808927C
	ldr r2, _08087C50 @ =gBldRegs
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _08087C60
	ldr r1, _08087C58 @ =0x03000070
	adds r0, r5, r1
	ldrh r1, [r0]
	lsrs r1, r1, #8
	strh r1, [r2, #4]
	ldr r2, _08087C5C @ =0xFFFFFF00
	adds r1, r2, #0
	ldrh r3, [r0]
	adds r1, r1, r3
	strh r1, [r0]
	b _08087C68
	.align 2, 0
_08087C44: .4byte gCurTask
_08087C48: .4byte gDispCnt
_08087C4C: .4byte gWinRegs
_08087C50: .4byte gBldRegs
_08087C54: .4byte 0x00003FFF
_08087C58: .4byte 0x03000070
_08087C5C: .4byte 0xFFFFFF00
_08087C60:
	strh r0, [r2, #4]
	ldr r1, [r7]
	ldr r0, _08087C70 @ =sub_8089FCC
	str r0, [r1, #8]
_08087C68:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087C70: .4byte sub_8089FCC

	thumb_func_start sub_8087C74
sub_8087C74: @ 0x08087C74
	push {r4, r5, r6, r7, lr}
	ldr r7, _08087D24 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, #0x6e
	adds r6, r5, r0
	ldrh r0, [r6]
	cmp r0, #0
	beq _08087CC4
	ldr r2, _08087D28 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08087D2C @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _08087D30 @ =gBldRegs
	ldr r0, _08087D34 @ =0x00003FFF
	strh r0, [r1]
	ldr r1, _08087D38 @ =0x03000070
	adds r0, r5, r1
	strh r3, [r0]
	strh r3, [r6]
_08087CC4:
	movs r2, #0x10
	ldrsh r0, [r4, r2]
	cmp r0, #4
	bne _08087CD2
	adds r0, r4, #0
	bl sub_8089028
_08087CD2:
	adds r0, r4, #0
	bl sub_80890F8
	adds r0, r4, #0
	bl sub_8089150
	adds r0, r4, #0
	bl sub_80891E4
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089704
	ldr r2, _08087D30 @ =gBldRegs
	ldrh r0, [r2, #4]
	cmp r0, #0xf
	bhi _08087D3C
	ldr r3, _08087D38 @ =0x03000070
	adds r0, r5, r3
	ldrh r1, [r0]
	lsrs r1, r1, #8
	strh r1, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r3, [r0]
	adds r1, r1, r3
	strh r1, [r0]
	b _08087D4A
	.align 2, 0
_08087D24: .4byte gCurTask
_08087D28: .4byte gDispCnt
_08087D2C: .4byte gWinRegs
_08087D30: .4byte gBldRegs
_08087D34: .4byte 0x00003FFF
_08087D38: .4byte 0x03000070
_08087D3C:
	movs r0, #0x10
	strh r0, [r2, #4]
	movs r0, #0xb
	strb r0, [r4, #0xd]
	ldr r1, [r7]
	ldr r0, _08087D50 @ =sub_8087D54
	str r0, [r1, #8]
_08087D4A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087D50: .4byte sub_8087D54

	thumb_func_start sub_8087D54
sub_8087D54: @ 0x08087D54
	push {r4, r5, lr}
	ldr r0, _08087D78 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0xb
	bls _08087D6C
	b _08087EFE
_08087D6C:
	lsls r0, r0, #2
	ldr r1, _08087D7C @ =_08087D80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08087D78: .4byte gCurTask
_08087D7C: .4byte _08087D80
_08087D80: @ jump table
	.4byte _08087DB0 @ case 0
	.4byte _08087DD8 @ case 1
	.4byte _08087E24 @ case 2
	.4byte _08087E70 @ case 3
	.4byte _08087E78 @ case 4
	.4byte _08087EFE @ case 5
	.4byte _08087EFE @ case 6
	.4byte _08087EFE @ case 7
	.4byte _08087EFE @ case 8
	.4byte _08087EFE @ case 9
	.4byte _08087E80 @ case 10
	.4byte _08087EF8 @ case 11
_08087DB0:
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _08087DC4
	ldr r0, _08087DC0 @ =gStageData
	strb r1, [r0, #3]
	strb r1, [r0, #6]
	b _08087E5C
	.align 2, 0
_08087DC0: .4byte gStageData
_08087DC4:
	ldr r1, _08087DD4 @ =gStageData
	movs r0, #5
	strb r0, [r1, #3]
	movs r0, #0
	bl sub_80A1A4C
	b _08087EFE
	.align 2, 0
_08087DD4: .4byte gStageData
_08087DD8:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08087E0C
	ldr r0, _08087DF0 @ =gLoadedSaveGame
	ldrh r1, [r0, #4]
	ldr r0, _08087DF4 @ =0x0000FFFF
	cmp r1, r0
	bne _08087DF8
	movs r0, #2
	bl sub_8091D14
	b _08087EFE
	.align 2, 0
_08087DF0: .4byte gLoadedSaveGame
_08087DF4: .4byte 0x0000FFFF
_08087DF8:
	ldr r1, _08087E08 @ =gStageData
	movs r0, #6
	strb r0, [r1, #3]
	movs r0, #0
	bl sub_808D0F0
	b _08087EFE
	.align 2, 0
_08087E08: .4byte gStageData
_08087E0C:
	ldr r1, _08087E20 @ =gStageData
	movs r0, #7
	strb r0, [r1, #3]
	bl sub_80003B8
	movs r0, #0
	bl sub_8000340
	b _08087EFE
	.align 2, 0
_08087E20: .4byte gStageData
_08087E24:
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _08087E34
	ldr r2, _08087E30 @ =gStageData
	movs r0, #3
	b _08087E3A
	.align 2, 0
_08087E30: .4byte gStageData
_08087E34:
	ldr r2, _08087E64 @ =gStageData
	movs r1, #0
	movs r0, #4
_08087E3A:
	strb r0, [r2, #3]
	strb r1, [r2, #6]
	ldr r1, _08087E68 @ =gLoadedSaveGame
	movs r3, #0xd7
	lsls r3, r3, #2
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	ldr r5, _08087E6C @ =0x0000035E
	adds r0, r1, r5
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x18]
_08087E5C:
	movs r0, #0
	bl CreateCharacterSelect
	b _08087EFE
	.align 2, 0
_08087E64: .4byte gStageData
_08087E68: .4byte gLoadedSaveGame
_08087E6C: .4byte 0x0000035E
_08087E70:
	movs r0, #0
	bl LaunchOptionsMenu
	b _08087EFE
_08087E78:
	movs r0, #1
	bl CreateTitleScreen
	b _08087EFE
_08087E80:
	ldr r1, _08087ED4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08087ED8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _08087EDC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08087EE0 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08087EE4 @ =gVramGraphicsCopyCursor
	ldr r0, _08087EE8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _08087EEC @ =gStageData
	ldr r1, _08087EF0 @ =gLoadedSaveGame
	movs r3, #0xd7
	lsls r3, r3, #2
	adds r0, r1, r3
	ldrh r0, [r0]
	movs r3, #0
	strh r0, [r2, #0x14]
	ldr r5, _08087EF4 @ =0x0000035E
	adds r0, r1, r5
	ldrh r0, [r0]
	strh r0, [r2, #0x16]
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x18]
	strb r3, [r2, #3]
	movs r0, #1
	strb r0, [r2, #0xd]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_80B1AF4
	b _08087EFE
	.align 2, 0
_08087ED4: .4byte 0x0000FFFF
_08087ED8: .4byte gBackgroundsCopyQueueCursor
_08087EDC: .4byte gBackgroundsCopyQueueIndex
_08087EE0: .4byte gBgSpritesCount
_08087EE4: .4byte gVramGraphicsCopyCursor
_08087EE8: .4byte gVramGraphicsCopyQueueIndex
_08087EEC: .4byte gStageData
_08087EF0: .4byte gLoadedSaveGame
_08087EF4: .4byte 0x0000035E
_08087EF8:
	movs r0, #3
	bl sub_80AB120
_08087EFE:
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0xa
	beq _08087F0E
	ldr r0, _08087F14 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08087F0E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08087F14: .4byte gCurTask

	thumb_func_start sub_8087F18
sub_8087F18: @ 0x08087F18
	push {r4, r5, r6, lr}
	ldr r0, _08087FC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, #0x6e
	adds r6, r5, r0
	ldrh r0, [r6]
	cmp r0, #0
	beq _08087F68
	ldr r2, _08087FC4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08087FC8 @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _08087FCC @ =gBldRegs
	ldr r0, _08087FD0 @ =0x00003FFF
	strh r0, [r1]
	ldr r1, _08087FD4 @ =0x03000070
	adds r0, r5, r1
	strh r3, [r0]
	strh r3, [r6]
_08087F68:
	adds r0, r4, #0
	bl sub_8089028
	adds r0, r4, #0
	bl sub_80890F8
	adds r0, r4, #0
	bl sub_8089150
	adds r0, r4, #0
	bl sub_80891E4
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089704
	ldr r2, _08087FCC @ =gBldRegs
	ldrh r0, [r2, #4]
	cmp r0, #0xf
	bhi _08087FD8
	ldr r3, _08087FD4 @ =0x03000070
	adds r0, r5, r3
	ldrh r1, [r0]
	lsrs r1, r1, #8
	strh r1, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r3, [r0]
	adds r1, r1, r3
	strh r1, [r0]
	b _0808807E
	.align 2, 0
_08087FC0: .4byte gCurTask
_08087FC4: .4byte gDispCnt
_08087FC8: .4byte gWinRegs
_08087FCC: .4byte gBldRegs
_08087FD0: .4byte 0x00003FFF
_08087FD4: .4byte 0x03000070
_08087FD8:
	movs r0, #0x10
	strh r0, [r2, #4]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #4
	bhi _08088076
	lsls r0, r0, #2
	ldr r1, _08087FF0 @ =_08087FF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08087FF0: .4byte _08087FF4
_08087FF4: @ jump table
	.4byte _08088008 @ case 0
	.4byte _0808802C @ case 1
	.4byte _08088040 @ case 2
	.4byte _08088068 @ case 3
	.4byte _08088070 @ case 4
_08088008:
	bl sub_80003B8
	ldr r4, _08088028 @ =gStageData
	ldrb r1, [r4, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrb r2, [r4, #0xa]
	adds r0, r0, r2
	movs r1, #0
	bl WarpToMap
	movs r0, #0
	strb r0, [r4, #1]
	b _0808807E
	.align 2, 0
_08088028: .4byte gStageData
_0808802C:
	ldr r1, _0808803C @ =gStageData
	movs r0, #0
	strb r0, [r1, #6]
	movs r0, #3
	bl CreateCharacterSelect
	b _08088076
	.align 2, 0
_0808803C: .4byte gStageData
_08088040:
	ldr r0, _08088054 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #3
	bne _08088058
	bl sub_80003B8
	movs r0, #3
	bl sub_80961E4
	b _08088076
	.align 2, 0
_08088054: .4byte gStageData
_08088058:
	cmp r0, #4
	bne _08088068
	bl sub_80003B8
	movs r0, #4
	bl sub_80961E4
	b _08088076
_08088068:
	movs r0, #1
	bl CreateTitleScreen
	b _08088076
_08088070:
	movs r0, #1
	bl CreateTitleScreen
_08088076:
	ldr r0, _08088084 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808807E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08088084: .4byte gCurTask

	thumb_func_start sub_8088088
sub_8088088: @ 0x08088088
	push {r4, r5, r6, lr}
	ldr r6, _08088104 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8089028
	adds r0, r4, #0
	bl sub_80890F8
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_8089150
	adds r0, r4, #0
	bl sub_80891E4
	adds r0, r4, #0
	bl sub_8089398
	adds r0, r4, #0
	bl sub_80894BC
	adds r0, r4, #0
	bl sub_8089308
	adds r0, r4, #0
	bl sub_8089428
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089704
	adds r0, r4, #0
	bl sub_8089DF4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _08088192
	ldrb r0, [r4, #1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0808810C
	ldr r1, [r6]
	ldr r0, _08088108 @ =sub_8087F18
	b _08088190
	.align 2, 0
_08088104: .4byte gCurTask
_08088108: .4byte sub_8087F18
_0808810C:
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08088134
	strb r0, [r4, #4]
	ldr r2, _0808812C @ =0x03000068
	adds r0, r5, r2
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r2, #2
	adds r0, r5, r2
	strh r1, [r0]
	ldr r1, [r6]
	ldr r0, _08088130 @ =sub_8088E74
	b _08088190
	.align 2, 0
_0808812C: .4byte 0x03000068
_08088130: .4byte sub_8088E74
_08088134:
	cmp r0, #1
	bne _08088160
	movs r0, #0
	strb r0, [r4, #4]
	ldr r1, _08088154 @ =0x03000068
	adds r0, r5, r1
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	ldr r2, _08088158 @ =0x0300006A
	adds r0, r5, r2
	strh r1, [r0]
	ldr r1, [r6]
	ldr r0, _0808815C @ =sub_80897BC
	b _08088190
	.align 2, 0
_08088154: .4byte 0x03000068
_08088158: .4byte 0x0300006A
_0808815C: .4byte sub_80897BC
_08088160:
	cmp r0, #2
	bne _0808818C
	movs r0, #0
	strb r0, [r4, #4]
	ldr r1, _08088180 @ =0x03000068
	adds r0, r5, r1
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	ldr r2, _08088184 @ =0x0300006A
	adds r0, r5, r2
	strh r1, [r0]
	ldr r1, [r6]
	ldr r0, _08088188 @ =sub_8089970
	b _08088190
	.align 2, 0
_08088180: .4byte 0x03000068
_08088184: .4byte 0x0300006A
_08088188: .4byte sub_8089970
_0808818C:
	ldr r1, [r6]
	ldr r0, _08088198 @ =sub_8087C74
_08088190:
	str r0, [r1, #8]
_08088192:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08088198: .4byte sub_8087C74

	thumb_func_start sub_808819C
sub_808819C: @ 0x0808819C
	push {r4, r5, r6, lr}
	ldr r6, _08088250 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_8089150
	adds r0, r4, #0
	bl sub_80891E4
	adds r0, r4, #0
	bl sub_8089398
	adds r0, r4, #0
	bl sub_80894BC
	adds r0, r4, #0
	bl sub_8089308
	adds r0, r4, #0
	bl sub_8089428
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089704
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	cmp r0, #4
	beq _0808826C
	ldr r0, _08088254 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808826C
	ldr r0, _08088258 @ =gLoadedSaveGame
	adds r0, #0x33
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0808826C
	movs r2, #0x10
	ldrsh r0, [r4, r2]
	cmp r0, #3
	bne _0808826C
	ldr r3, _0808825C @ =0x03000178
	adds r2, r5, r3
	ldr r1, _08088260 @ =gUnknown_080D6234
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r1, r0, r1
	ldrh r0, [r2]
	ldrh r2, [r1]
	cmp r0, r2
	bne _0808826C
	adds r3, #0xe
	adds r0, r5, r3
	ldrb r0, [r0]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bne _0808826C
	movs r0, #0x6c      @ SE_DPAD_SELECT
	bl m4aSongNumStart
	movs r0, #0xb
	strh r0, [r4, #0x10]
	ldr r0, _08088264 @ =0x0300006E
	adds r1, r5, r0
	movs r0, #1
	strh r0, [r1]
	ldr r1, [r6]
	ldr r0, _08088268 @ =sub_8087C74
	str r0, [r1, #8]
	b _08088438
	.align 2, 0
_08088250: .4byte gCurTask
_08088254: .4byte gPressedKeys
_08088258: .4byte gLoadedSaveGame
_0808825C: .4byte 0x03000178
_08088260: .4byte gUnknown_080D6234
_08088264: .4byte 0x0300006E
_08088268: .4byte sub_8087C74
_0808826C:
	ldrb r0, [r4, #1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08088344
	adds r0, r4, #0
	bl sub_808927C
	adds r5, r0, #0
	cmp r5, #1
	bne _08088306
	adds r0, r4, #0
	bl sub_8089670
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	cmp r1, #0xa
	bne _080882A6
	movs r0, #0
	strb r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x68
	strh r5, [r0]
	strh r1, [r4, #0x10]
	ldrh r0, [r4, #0x14]
	adds r0, #1
	strh r0, [r4, #0x14]
	b _08088306
_080882A6:
	ldr r0, _08088340 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080882D6
	movs r3, #0x10
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _080882D6
	movs r0, #0x6c      @ SE_DPAD_SELECT
	bl m4aSongNumStart
	movs r1, #0
	movs r0, #0xa
	strh r0, [r4, #0x10]
	strb r1, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_080882D6:
	ldr r0, _08088340 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088306
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0xa
	bne _08088306
	movs r0, #0x6c      @ SE_DPAD_SELECT
	bl m4aSongNumStart
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x10]
	strb r1, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_08088306:
	ldrb r0, [r4, #1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08088344
	ldr r0, _08088340 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08088344
	movs r0, #0x6b      @ SE_ABORT
	bl m4aSongNumStart
	movs r0, #0
	strh r0, [r4, #0x12]
	adds r1, r4, #0
	adds r1, #0x6e
	movs r0, #1
	strh r0, [r1]
	movs r0, #4
	strh r0, [r4, #0x10]
	movs r0, #3
	strb r0, [r4, #6]
	movs r0, #2
	strb r0, [r4, #0xb]
	b _0808835E
	.align 2, 0
_08088340: .4byte gPressedKeys
_08088344:
	ldr r0, _08088368 @ =gPressedKeys
	ldrh r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08088374
	movs r0, #0x6a      @ SE_SELECT
	bl m4aSongNumStart
	adds r0, r4, #0
	adds r0, #0x6e
	strh r5, [r0]
_0808835E:
	ldr r0, _0808836C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08088370 @ =sub_8088088
	str r0, [r1, #8]
	b _08088438
	.align 2, 0
_08088368: .4byte gPressedKeys
_0808836C: .4byte gCurTask
_08088370: .4byte sub_8088088
_08088374:
	movs r2, #0x10
	ldrsh r0, [r4, r2]
	cmp r0, #9
	bgt _08088418
	ldr r5, _080883AC @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08088418
	movs r0, #0x6c      @ SE_DPAD_SELECT
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080883B4
	ldrh r1, [r4, #0x10]
	movs r3, #0x10
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bgt _080883B0
	movs r0, #3
	b _080883CC
	.align 2, 0
_080883AC: .4byte gRepeatedKeys
_080883B0:
	subs r0, r1, #1
	b _080883CC
_080883B4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080883CE
	ldrh r1, [r4, #0x10]
	movs r3, #0x10
	ldrsh r0, [r4, r3]
	cmp r0, #2
	ble _080883CA
	strh r2, [r4, #0x10]
	b _080883CE
_080883CA:
	adds r0, r1, #1
_080883CC:
	strh r0, [r4, #0x10]
_080883CE:
	adds r0, r4, #0
	adds r0, #0x68
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r3, _0808842C @ =0x00000326
	adds r0, r4, r3
	strh r1, [r0]
	adds r3, #2
	adds r0, r4, r3
	strh r1, [r0]
	strb r2, [r4, #2]
	movs r0, #0x40
	strb r0, [r4, #4]
	ldrb r0, [r4, #1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08088418
	movs r1, #0xdc
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _08088430 @ =gUnknown_080D66C4
	movs r3, #0x10
	ldrsh r1, [r4, r3]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
_08088418:
	adds r0, r4, #0
	bl sub_80890F8
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldrsh r0, [r4, r2]
	cmp r0, #9
	bgt _08088434
	strb r1, [r4, #0xb]
	b _08088438
	.align 2, 0
_0808842C: .4byte 0x00000326
_08088430: .4byte gUnknown_080D66C4
_08088434:
	movs r0, #0
	strb r0, [r4, #0xb]
_08088438:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8088440
sub_8088440: @ 0x08088440
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _080885B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	movs r5, #0
	ldr r6, [r4, #0x7c]
	movs r0, #0xaa
	lsls r0, r0, #8
	str r0, [r4, #0x38]
	str r0, [r4, #0x40]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x58]
	movs r1, #1
	strb r1, [r4, #6]
	ldr r0, _080885B8 @ =0x03000074
	adds r2, r2, r0
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	strb r1, [r4, #3]
	ldrh r0, [r4, #0x10]
	strb r0, [r4, #0xc]
	strh r1, [r4, #0x10]
	strb r0, [r4, #0xd]
	movs r0, #0xc8
	lsls r0, r0, #7
	str r0, [r4, #0x3c]
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	ldr r2, _080885BC @ =gUnknown_080D6594
	movs r1, #0
	mov r8, r1
	movs r7, #0
_08088494:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r4, r0
	str r6, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	str r2, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp, #4]
	cmp r5, #1
	bls _08088494
	movs r5, #0
	movs r1, #0xd
	adds r1, r1, r4
	mov r8, r1
	ldr r2, _080885C0 @ =gUnknown_080D65F4
	movs r0, #0
	mov sb, r0
	movs r7, #0
_0808850C:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r4, r0
	str r6, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sb
	strb r0, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	str r2, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp, #4]
	cmp r5, #1
	bls _0808850C
	movs r0, #0x26
	str r0, [sp]
	movs r0, #0
	mov r1, r8
	adds r2, r6, #0
	movs r3, #0x64
	bl sub_808A1B0
	movs r0, #2
	strb r0, [r4, #0xb]
	movs r1, #0xdc
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _080885C4 @ =gUnknown_080D66C4
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x1c]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _080885B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080885C8 @ =sub_80888E8
	str r0, [r1, #8]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080885B4: .4byte gCurTask
_080885B8: .4byte 0x03000074
_080885BC: .4byte gUnknown_080D6594
_080885C0: .4byte gUnknown_080D65F4
_080885C4: .4byte gUnknown_080D66C4
_080885C8: .4byte sub_80888E8

	thumb_func_start sub_80885CC
sub_80885CC: @ 0x080885CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08088650 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	movs r6, #0
	ldrb r1, [r4]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	ldr r5, [r4, #0x7c]
	movs r0, #0xaa
	lsls r0, r0, #8
	str r0, [r4, #0x38]
	str r0, [r4, #0x40]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x58]
	movs r1, #1
	strb r1, [r4, #6]
	ldr r0, _08088654 @ =0x03000074
	adds r2, r2, r0
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	strb r1, [r4, #3]
	ldrh r0, [r4, #0x10]
	strb r0, [r4, #0xc]
	movs r0, #2
	strh r0, [r4, #0x10]
	movs r0, #0xc8
	lsls r0, r0, #7
	str r0, [r4, #0x3c]
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	ldr r1, _08088658 @ =gUnknown_080D6654
	mov sl, r1
	movs r0, #0
	mov sb, r0
	movs r7, #0
	mov r1, r8
	lsls r1, r1, #1
	str r1, [sp, #4]
_08088634:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r4, r0
	str r5, [r2]
	cmp r6, #0
	bne _0808865C
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	b _08088662
	.align 2, 0
_08088650: .4byte gCurTask
_08088654: .4byte 0x03000074
_08088658: .4byte gUnknown_080D6654
_0808865C:
	movs r1, #0x80
	lsls r1, r1, #4
	adds r5, r5, r1
_08088662:
	mov r1, r8
	lsls r0, r1, #1
	adds r0, r6, r0
	lsls r0, r0, #3
	add r0, sl
	ldrh r1, [r0]
	strh r1, [r2, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	movs r0, #0xc0
	strh r0, [r2, #0x14]
	strh r7, [r2, #0xe]
	strh r7, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, sb
	strb r0, [r2, #0x1f]
	str r7, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08088634
	movs r6, #0
	movs r1, #0xd
	adds r1, r1, r4
	mov r8, r1
	ldr r0, _080886D4 @ =gUnknown_080D6674
	mov sl, r0
	movs r1, #0
	mov sb, r1
	movs r7, #0
_080886B8:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r4, r0
	str r5, [r2]
	cmp r6, #0
	bne _080886D8
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	b _080886DE
	.align 2, 0
_080886D4: .4byte gUnknown_080D6674
_080886D8:
	movs r1, #0x80
	lsls r1, r1, #4
	adds r5, r5, r1
_080886DE:
	ldr r1, [sp, #4]
	adds r0, r6, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r1, [r0]
	strh r1, [r2, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	movs r0, #0xc0
	strh r0, [r2, #0x14]
	strh r7, [r2, #0xe]
	strh r7, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, sb
	strb r0, [r2, #0x1f]
	str r7, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _080886B8
	movs r0, #0
	strb r0, [r4, #0xd]
	movs r0, #0x22
	str r0, [sp]
	movs r0, #1
	mov r1, r8
	adds r2, r5, #0
	movs r3, #0x58
	bl sub_808A1B0
	movs r0, #2
	strb r0, [r4, #0xb]
	movs r1, #0xdc
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _08088764 @ =gUnknown_080D66C4
	ldrh r1, [r1, #4]
	strh r1, [r0, #0x1c]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _08088768 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808876C @ =sub_80888E8
	str r0, [r1, #8]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088764: .4byte gUnknown_080D66C4
_08088768: .4byte gCurTask
_0808876C: .4byte sub_80888E8

	thumb_func_start sub_8088770
sub_8088770: @ 0x08088770
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _080888D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r6, [r4, #0x7c]
	movs r0, #0xaa
	lsls r0, r0, #8
	str r0, [r4, #0x38]
	str r0, [r4, #0x40]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x58]
	movs r2, #1
	strb r2, [r4, #6]
	ldr r0, _080888D4 @ =0x03000074
	adds r1, r1, r0
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	strb r2, [r4, #3]
	ldrh r0, [r4, #0x10]
	strb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xb]
	strh r5, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	movs r1, #0xd0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x2c]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x44]
	ldr r2, _080888D8 @ =gUnknown_080D6294
	movs r0, #0
	mov r8, r0
	movs r7, #0
_080887CC:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r4, r0
	str r6, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp]
	cmp r5, #1
	bls _080887CC
	movs r5, #0
	ldr r2, _080888DC @ =gUnknown_080D62F4
	movs r1, #0
	mov r8, r1
	movs r7, #0
_0808883E:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r4, r0
	str r6, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp]
	cmp r5, #1
	bls _0808883E
	movs r1, #0xdc
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, _080888E0 @ =gUnknown_080D66C4
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _080888D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080888E4 @ =sub_80888E8
	str r0, [r1, #8]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080888D0: .4byte gCurTask
_080888D4: .4byte 0x03000074
_080888D8: .4byte gUnknown_080D6294
_080888DC: .4byte gUnknown_080D62F4
_080888E0: .4byte gUnknown_080D66C4
_080888E4: .4byte sub_80888E8

	thumb_func_start sub_80888E8
sub_80888E8: @ 0x080888E8
	push {r4, r5, r6, r7, lr}
	ldr r7, _0808899C @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, #0x6e
	adds r6, r5, r0
	ldrh r0, [r6]
	cmp r0, #0
	beq _08088940
	ldr r2, _080889A0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080889A4 @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080889A8 @ =gBldRegs
	ldr r0, _080889AC @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r0, _080889B0 @ =0x03000070
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	strh r3, [r6]
_08088940:
	adds r0, r4, #0
	bl sub_8089150
	adds r0, r4, #0
	bl sub_80891E4
	adds r0, r4, #0
	bl sub_80890F8
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_80895E0
	adds r0, r4, #0
	bl sub_8089550
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089704
	ldr r2, _080889A8 @ =gBldRegs
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _080889B8
	ldr r1, _080889B0 @ =0x03000070
	adds r0, r5, r1
	ldrh r1, [r0]
	lsrs r1, r1, #8
	strh r1, [r2, #4]
	ldr r2, _080889B4 @ =0xFFFFFF00
	adds r1, r2, #0
	ldrh r3, [r0]
	adds r1, r1, r3
	strh r1, [r0]
	b _080889C0
	.align 2, 0
_0808899C: .4byte gCurTask
_080889A0: .4byte gDispCnt
_080889A4: .4byte gWinRegs
_080889A8: .4byte gBldRegs
_080889AC: .4byte 0x00003FFF
_080889B0: .4byte 0x03000070
_080889B4: .4byte 0xFFFFFF00
_080889B8:
	strh r0, [r2, #4]
	ldr r1, [r7]
	ldr r0, _080889C8 @ =sub_80889CC
	str r0, [r1, #8]
_080889C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080889C8: .4byte sub_80889CC

	thumb_func_start sub_80889CC
sub_80889CC: @ 0x080889CC
	push {r4, r5, r6, r7, lr}
	ldr r7, _08088A44 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_8089150
	adds r0, r4, #0
	bl sub_80891E4
	adds r0, r4, #0
	bl sub_80895E0
	adds r0, r4, #0
	bl sub_8089550
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089704
	ldr r0, _08088A48 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08088A54
	movs r0, #0x6b      @ SE_ABORT
	bl m4aSongNumStart
	movs r2, #0
	movs r0, #0
	strh r0, [r4, #0x12]
	ldr r0, _08088A4C @ =0x0300006E
	adds r1, r6, r0
	movs r0, #1
	strh r0, [r1]
	movs r0, #2
	strb r0, [r4, #6]
	strb r2, [r4, #0xc]
	movs r0, #0xb
	strb r0, [r4, #0xd]
	ldr r1, [r7]
	ldr r0, _08088A50 @ =sub_8088B48
	b _08088B36
	.align 2, 0
_08088A44: .4byte gCurTask
_08088A48: .4byte gPressedKeys
_08088A4C: .4byte 0x0300006E
_08088A50: .4byte sub_8088B48
_08088A54:
	ldr r0, _08088A70 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08088AD0
	movs r0, #0x6c      @ SE_DPAD_SELECT
	bl m4aSongNumStart
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _08088A74
	strb r5, [r4, #0xc]
	b _08088A78
	.align 2, 0
_08088A70: .4byte gRepeatedKeys
_08088A74:
	movs r0, #1
	strb r0, [r4, #0xc]
_08088A78:
	movs r3, #0x10
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bne _08088A88
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xb]
	b _08088AAE
_08088A88:
	cmp r1, #1
	bne _08088A96
	ldrb r1, [r4, #0xc]
	adds r0, r1, #2
	strb r0, [r4, #0xb]
	strb r1, [r4, #0xd]
	b _08088AAE
_08088A96:
	cmp r1, #2
	bne _08088AAE
	ldrb r2, [r4, #0xc]
	adds r0, r2, #2
	strb r0, [r4, #0xb]
	ldr r0, _08088B08 @ =gLoadedSaveGame
	adds r0, #0x33
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08088AAE
	strb r2, [r4, #0xd]
_08088AAE:
	adds r0, r4, #0
	adds r0, #0x68
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r3, _08088B0C @ =0x00000326
	adds r0, r4, r3
	strh r1, [r0]
	adds r3, #2
	adds r0, r4, r3
	strh r1, [r0]
	strb r2, [r4, #2]
	movs r0, #0x40
	strb r0, [r4, #4]
_08088AD0:
	adds r0, r4, #0
	bl sub_80890F8
	ldr r0, _08088B10 @ =gPressedKeys
	ldrh r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08088B38
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	cmp r1, #2
	bne _08088B24
	ldr r0, _08088B08 @ =gLoadedSaveGame
	adds r0, #0x33
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08088B14
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _08088B14
	movs r0, #0x69      @ SE_105
	bl m4aSongNumStart
	b _08088B38
	.align 2, 0
_08088B08: .4byte gLoadedSaveGame
_08088B0C: .4byte 0x00000326
_08088B10: .4byte gPressedKeys
_08088B14:
	movs r0, #0x6a      @ SE_SELECT
	bl m4aSongNumStart
	adds r1, r4, #0
	adds r1, #0x6e
	movs r0, #1
	strh r0, [r1]
	b _08088B30
_08088B24:
	movs r0, #0x6a      @ SE_SELECT
	bl m4aSongNumStart
	adds r0, r4, #0
	adds r0, #0x6e
	strh r5, [r0]
_08088B30:
	ldr r0, _08088B40 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08088B44 @ =sub_808A144
_08088B36:
	str r0, [r1, #8]
_08088B38:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088B40: .4byte gCurTask
_08088B44: .4byte sub_808A144

	thumb_func_start sub_8088B48
sub_8088B48: @ 0x08088B48
	push {r4, r5, r6, lr}
	ldr r6, _08088BC0 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80890F8
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_8089150
	adds r0, r4, #0
	bl sub_80891E4
	adds r0, r4, #0
	bl sub_80895E0
	adds r0, r4, #0
	bl sub_8089550
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089704
	adds r0, r4, #0
	bl sub_8089EA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _08088BBA
	movs r0, #0
	strb r0, [r4, #4]
	ldr r1, _08088BC4 @ =0x03000068
	adds r0, r5, r1
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	ldr r2, _08088BC8 @ =0x0300006A
	adds r0, r5, r2
	strh r1, [r0]
	ldr r1, [r6]
	ldr r0, _08088BCC @ =sub_8088BD0
	str r0, [r1, #8]
_08088BBA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08088BC0: .4byte gCurTask
_08088BC4: .4byte 0x03000068
_08088BC8: .4byte 0x0300006A
_08088BCC: .4byte sub_8088BD0

	thumb_func_start sub_8088BD0
sub_8088BD0: @ 0x08088BD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08088E58 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_8089150
	adds r0, r4, #0
	bl sub_80891E4
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089704
	ldr r6, [r4, #0x7c]
	ldr r2, _08088E5C @ =gUnknown_080D6114
	movs r0, #0
	mov r8, r0
	movs r7, #0
_08088C1A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x7c
	adds r1, r4, r0
	str r6, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x1c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	strh r7, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	movs r0, #0x20
	str r0, [r1, #8]
	adds r0, r1, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp]
	cmp r5, #1
	bls _08088C1A
	movs r5, #0
	ldr r2, _08088E60 @ =gUnknown_080D6174
	movs r1, #0
	mov r8, r1
	movs r7, #0
_08088C88:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0xcc
	adds r1, r4, r0
	str r6, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x20]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0x40
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp]
	cmp r5, #1
	bls _08088C88
	movs r5, #0
	ldr r2, _08088E64 @ =gUnknown_080D61D4
	movs r1, #0
	mov r8, r1
	movs r7, #0
_08088CF6:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r4, r0
	str r6, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0x80
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp]
	cmp r5, #1
	bls _08088CF6
	movs r5, #0
	ldr r2, _08088E68 @ =gUnknown_080D6234
	movs r1, #0
	mov r8, r1
	movs r7, #0
_08088D68:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r4, r0
	str r6, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x34]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp]
	cmp r5, #1
	bls _08088D68
	movs r5, #0
	ldr r2, _08088E6C @ =gUnknown_080D6354
	movs r1, #0
	mov r8, r1
	movs r7, #0
_08088DDA:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0x97
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r4, r0
	str r6, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r6, r6, r0
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x4c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp]
	cmp r5, #1
	bls _08088DDA
	ldr r0, _08088E58 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08088E70 @ =sub_808A060
	str r0, [r1, #8]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088E58: .4byte gCurTask
_08088E5C: .4byte gUnknown_080D6114
_08088E60: .4byte gUnknown_080D6174
_08088E64: .4byte gUnknown_080D61D4
_08088E68: .4byte gUnknown_080D6234
_08088E6C: .4byte gUnknown_080D6354
_08088E70: .4byte sub_808A060

	thumb_func_start sub_8088E74
sub_8088E74: @ 0x08088E74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08088FC4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r6, #0
	ldr r0, [r4, #0x1c]
	movs r1, #0xd0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x2c]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_8089150
	adds r0, r4, #0
	bl sub_80891E4
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089704
	ldr r5, [r4, #0x7c]
	ldr r2, _08088FC8 @ =gUnknown_080D6294
	movs r0, #0
	mov r8, r0
	movs r7, #0
_08088ED2:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r4, r0
	str r5, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r6, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r6, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x38]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x3c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r2, [sp]
	cmp r6, #1
	bls _08088ED2
	movs r6, #0
	ldr r2, _08088FCC @ =gUnknown_080D62F4
	movs r1, #0
	mov r8, r1
	movs r7, #0
_08088F44:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r4, r0
	str r5, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r6, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r6, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	strh r0, [r1, #0x14]
	strh r7, [r1, #0xe]
	strh r7, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r7, [r1, #8]
	adds r0, r1, #0
	str r2, [sp]
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r2, [sp]
	cmp r6, #1
	bls _08088F44
	movs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, _08088FC4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08088FD0 @ =sub_808A0D8
	str r0, [r1, #8]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088FC4: .4byte gCurTask
_08088FC8: .4byte gUnknown_080D6294
_08088FCC: .4byte gUnknown_080D62F4
_08088FD0: .4byte sub_808A0D8

	thumb_func_start sub_8088FD4
sub_8088FD4: @ 0x08088FD4
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #3]
	cmp r0, #0
	bne _08088FEC
	adds r1, r3, #0
	adds r1, #0x72
	ldr r2, _08088FE8 @ =0xFFFFFC00
	b _08088FF2
	.align 2, 0
_08088FE8: .4byte 0xFFFFFC00
_08088FEC:
	adds r1, r3, #0
	adds r1, #0x72
	ldr r2, _0808901C @ =0xFFFFFF00
_08088FF2:
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r1, r3, #0
	adds r1, #0x74
	ldrh r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	bls _08089020
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r2
	bhi _08089022
	movs r0, #1
	strb r0, [r3, #3]
	b _08089022
	.align 2, 0
_0808901C: .4byte 0xFFFFFF00
_08089020:
	strh r2, [r1]
_08089022:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8089028
sub_8089028: @ 0x08089028
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0xa
	mov ip, r0
	movs r3, #0
	movs r5, #0
	ldr r2, _08089068 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0808906C @ =gHBlankCopyTarget
	ldr r0, _08089070 @ =0x04000010
	str r0, [r1]
	ldr r1, _08089074 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08089078 @ =gBgOffsetsHBlankPrimary
	ldr r1, [r0]
	ldrh r2, [r4, #0x12]
	ldrb r0, [r4, #6]
	cmp r0, #2
	bhi _080890A8
	movs r7, #1
	rsbs r6, r2, #0
_0808905A:
	adds r0, r5, #0
	ands r0, r7
	cmp r0, #0
	beq _0808907C
	strh r6, [r1]
	b _0808907E
	.align 2, 0
_08089068: .4byte gFlags
_0808906C: .4byte gHBlankCopyTarget
_08089070: .4byte 0x04000010
_08089074: .4byte gHBlankCopySize
_08089078: .4byte gBgOffsetsHBlankPrimary
_0808907C:
	strh r2, [r1]
_0808907E:
	adds r1, #2
	movs r0, #7
	ands r0, r3
	cmp r0, #7
	bne _0808908E
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0808908E:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x9f
	bls _0808905A
	ldrh r1, [r4, #0x12]
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _080890E0
	mov r2, ip
	adds r0, r1, r2
	b _080890EC
_080890A8:
	movs r7, #1
	rsbs r6, r2, #0
_080890AC:
	adds r0, r5, #0
	ands r0, r7
	cmp r0, #0
	beq _080890B8
	strh r6, [r1]
	b _080890BA
_080890B8:
	strh r2, [r1]
_080890BA:
	adds r1, #2
	movs r0, #7
	ands r0, r3
	cmp r0, #7
	bne _080890CA
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080890CA:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x9f
	bls _080890AC
	ldrh r2, [r4, #0x12]
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	ldr r0, _080890E4 @ =0xFFFFFEFC
	cmp r1, r0
	bgt _080890E8
_080890E0:
	movs r0, #1
	b _080890F0
	.align 2, 0
_080890E4: .4byte 0xFFFFFEFC
_080890E8:
	mov r1, ip
	subs r0, r2, r1
_080890EC:
	strh r0, [r4, #0x12]
	movs r0, #0
_080890F0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80890F8
sub_80890F8: @ 0x080890F8
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #4]
	adds r0, #2
	strb r0, [r2, #4]
	ldr r4, _0808914C @ =gSineTable
	ldrb r0, [r2, #4]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	asrs r1, r0, #1
	adds r0, r0, r1
	adds r3, r2, #0
	adds r3, #0x68
	strh r0, [r3]
	cmp r0, #0
	beq _08089122
	cmp r0, #0xff
	bne _0808913A
_08089122:
	ldrb r0, [r2, #4]
	adds r0, #3
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	asrs r1, r0, #1
	adds r0, r0, r1
	strh r0, [r3]
_0808913A:
	adds r1, r2, #0
	adds r1, #0x6a
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808914C: .4byte gSineTable

	thumb_func_start sub_8089150
sub_8089150: @ 0x08089150
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #5]
	adds r0, #3
	strb r0, [r2, #5]
	ldr r1, [r2, #0x58]
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _08089180
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _08089180
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r2, #0x58]
	ldr r0, _0808917C @ =0x00004FFF
	cmp r1, r0
	ble _080891BA
	b _0808919E
	.align 2, 0
_0808917C: .4byte 0x00004FFF
_08089180:
	ldr r0, _080891A4 @ =0x00004FFF
	ldr r1, [r2, #0x58]
	ldrb r3, [r2, #6]
	cmp r1, r0
	ble _080891AC
	cmp r3, #1
	bne _080891AC
	ldr r3, _080891A8 @ =0xFFFFFD00
	adds r0, r1, r3
	str r0, [r2, #0x58]
	movs r1, #0xa0
	lsls r1, r1, #7
	cmp r0, r1
	bgt _080891BA
	str r1, [r2, #0x58]
_0808919E:
	movs r0, #2
	strb r0, [r2, #6]
	b _080891BA
	.align 2, 0
_080891A4: .4byte 0x00004FFF
_080891A8: .4byte 0xFFFFFD00
_080891AC:
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _080891BA
	ldr r3, _080891DC @ =0xFFFFFC00
	adds r0, r1, r3
	str r0, [r2, #0x58]
_080891BA:
	ldr r0, _080891E0 @ =gSineTable
	ldrb r1, [r2, #5]
	lsls r1, r1, #3
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #2
	movs r1, #0xac
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r2, #0x5c]
	pop {r0}
	bx r0
	.align 2, 0
_080891DC: .4byte 0xFFFFFC00
_080891E0: .4byte gSineTable

	thumb_func_start sub_80891E4
sub_80891E4: @ 0x080891E4
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #5]
	adds r0, #3
	strb r0, [r3, #5]
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _0808920C
	ldr r0, [r3, #0x58]
	ldr r1, _08089204 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r3, #0x60]
	ldr r0, [r3, #0x5c]
	ldr r2, _08089208 @ =0xFFFFCA00
	adds r0, r0, r2
	b _08089254
	.align 2, 0
_08089204: .4byte 0xFFFFFD00
_08089208: .4byte 0xFFFFCA00
_0808920C:
	cmp r0, #1
	beq _08089244
	cmp r0, #2
	bne _08089240
	ldr r2, _0808923C @ =gUnknown_080D6770
	ldrb r0, [r3, #0xb]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r1, r1, #8
	ldr r0, [r3, #0x58]
	subs r0, r0, r1
	str r0, [r3, #0x60]
	ldrb r0, [r3, #0xb]
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #8
	ldr r0, [r3, #0x5c]
	b _08089252
	.align 2, 0
_0808923C: .4byte gUnknown_080D6770
_08089240:
	cmp r0, #3
	bne _08089256
_08089244:
	ldr r0, [r3, #0x58]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r0, r0, r4
	str r0, [r3, #0x60]
	ldr r0, [r3, #0x5c]
	ldr r1, _08089274 @ =0xFFFFCA00
_08089252:
	adds r0, r0, r1
_08089254:
	str r0, [r3, #0x64]
_08089256:
	ldr r1, _08089278 @ =gSineTable
	ldrb r0, [r3, #5]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r0, r0, #1
	ldr r1, [r3, #0x64]
	adds r1, r1, r0
	str r1, [r3, #0x64]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08089274: .4byte 0xFFFFCA00
_08089278: .4byte gSineTable

	thumb_func_start sub_808927C
sub_808927C: @ 0x0808927C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _080892C8 @ =gLoadedSaveGame
	adds r0, #0x32
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x7f
	bne _080892FC
	ldrh r5, [r4, #0x14]
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	cmp r0, #9
	bgt _080892C2
	ldr r6, _080892CC @ =gPressedKeys
	ldr r2, _080892D0 @ =gUnknown_080D66CC
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r3, [r6]
	ldrh r1, [r0]
	ands r1, r3
	cmp r1, #0
	beq _080892D4
	adds r0, r5, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bne _080892FC
	movs r0, #0x6c      @ SE_DPAD_SELECT
	bl m4aSongNumStart
	movs r0, #0xa
	strh r0, [r4, #0x14]
_080892C2:
	movs r0, #1
	b _080892FE
	.align 2, 0
_080892C8: .4byte gLoadedSaveGame
_080892CC: .4byte gPressedKeys
_080892D0: .4byte gUnknown_080D66CC
_080892D4:
	ldrh r2, [r2]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _080892E2
	strh r1, [r4, #0x14]
	b _080892FC
_080892E2:
	lsls r0, r3, #0x10
	cmp r0, #0
	beq _080892F0
	ldr r1, _08089304 @ =0x0000FFFF
	adds r0, r1, #0
	orrs r0, r5
	strh r0, [r4, #0x14]
_080892F0:
	ldrh r0, [r6]
	ands r2, r0
	cmp r2, #0
	beq _080892FC
	movs r0, #1
	strh r0, [r4, #0x14]
_080892FC:
	movs r0, #0
_080892FE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08089304: .4byte 0x0000FFFF

	thumb_func_start sub_8089308
sub_8089308: @ 0x08089308
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xc9
	lsls r0, r0, #2
	adds r6, r5, r0
	movs r7, #0
_08089314:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	adds r0, #0x7c
	adds r4, r5, r0
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0808933A
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08089336
	movs r0, #3
	b _0808933C
_08089336:
	movs r0, #1
	b _0808933C
_0808933A:
	movs r0, #0
_0808933C:
	strb r0, [r4, #0x1f]
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x1c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08089380
	ldr r0, [r4, #8]
	movs r1, #0x61
	orrs r0, r1
	str r0, [r4, #8]
	strh r2, [r6]
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r6, #2]
	adds r0, r5, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r6, #4]
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	b _08089382
_08089380:
	str r2, [r4, #8]
_08089382:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _08089314
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8089398
sub_8089398: @ 0x08089398
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xc9
	lsls r0, r0, #2
	adds r6, r5, r0
	movs r7, #0
_080893A4:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	adds r0, #0xcc
	adds r4, r5, r0
	movs r2, #0x10
	ldrsh r1, [r5, r2]
	cmp r1, #1
	bne _080893CA
	adds r0, r5, #0
	adds r0, #0x68
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _080893C6
	movs r0, #3
	b _080893CC
_080893C6:
	strb r1, [r4, #0x1f]
	b _080893CE
_080893CA:
	movs r0, #0
_080893CC:
	strb r0, [r4, #0x1f]
_080893CE:
	ldr r0, [r5, #0x20]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x24]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _08089410
	ldr r0, [r4, #8]
	movs r1, #0x61
	orrs r0, r1
	str r0, [r4, #8]
	strh r2, [r6]
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r6, #2]
	adds r0, r5, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r6, #4]
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	b _08089412
_08089410:
	str r2, [r4, #8]
_08089412:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _080893A4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8089428
sub_8089428: @ 0x08089428
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xc9
	lsls r0, r0, #2
	adds r6, r5, r0
	movs r7, #0
_08089434:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r4, r5, r0
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	cmp r0, #2
	bne _0808945E
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0808945A
	movs r0, #3
	b _08089460
_0808945A:
	movs r0, #1
	b _08089460
_0808945E:
	movs r0, #0
_08089460:
	strb r0, [r4, #0x1f]
	ldr r0, [r5, #0x28]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x2c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	cmp r0, #2
	bne _080894A4
	ldr r0, [r4, #8]
	movs r1, #0x61
	orrs r0, r1
	str r0, [r4, #8]
	strh r2, [r6]
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r6, #2]
	adds r0, r5, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r6, #4]
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	b _080894A6
_080894A4:
	str r2, [r4, #8]
_080894A6:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _08089434
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80894BC
sub_80894BC: @ 0x080894BC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xc9
	lsls r0, r0, #2
	adds r6, r5, r0
	movs r7, #0
_080894C8:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r4, r5, r0
	movs r2, #0x10
	ldrsh r1, [r5, r2]
	cmp r1, #3
	bne _080894F2
	adds r0, r5, #0
	adds r0, #0x68
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _080894EE
	strb r1, [r4, #0x1f]
	b _080894F6
_080894EE:
	movs r0, #1
	b _080894F4
_080894F2:
	movs r0, #0
_080894F4:
	strb r0, [r4, #0x1f]
_080894F6:
	ldr r0, [r5, #0x30]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x34]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	cmp r0, #3
	bne _08089538
	ldr r0, [r4, #8]
	movs r1, #0x61
	orrs r0, r1
	str r0, [r4, #8]
	strh r2, [r6]
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r6, #2]
	adds r0, r5, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r6, #4]
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	b _0808953A
_08089538:
	str r2, [r4, #8]
_0808953A:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _080894C8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8089550
sub_8089550: @ 0x08089550
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xc9
	lsls r0, r0, #2
	adds r6, r5, r0
	movs r7, #0
_0808955C:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r4, r5, r0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _08089584
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08089580
	movs r0, #3
	b _08089586
_08089580:
	movs r0, #1
	b _08089586
_08089584:
	movs r0, #0
_08089586:
	strb r0, [r4, #0x1f]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _080895C8
	ldr r0, [r4, #8]
	movs r1, #0x61
	orrs r0, r1
	str r0, [r4, #8]
	strh r2, [r6]
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r6, #2]
	adds r0, r5, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r6, #4]
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	b _080895CA
_080895C8:
	str r2, [r4, #8]
_080895CA:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0808955C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80895E0
sub_80895E0: @ 0x080895E0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xc9
	lsls r0, r0, #2
	adds r6, r5, r0
	movs r7, #0
_080895EC:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r4, r5, r0
	ldrb r1, [r5, #0xc]
	cmp r1, #1
	bne _08089614
	adds r0, r5, #0
	adds r0, #0x68
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _08089610
	movs r0, #3
	b _08089616
_08089610:
	strb r1, [r4, #0x1f]
	b _08089618
_08089614:
	movs r0, #0
_08089616:
	strb r0, [r4, #0x1f]
_08089618:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _08089658
	ldr r0, [r4, #8]
	movs r1, #0x61
	orrs r0, r1
	str r0, [r4, #8]
	strh r2, [r6]
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r6, #2]
	adds r0, r5, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r6, #4]
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	b _0808965A
_08089658:
	str r2, [r4, #8]
_0808965A:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _080895EC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8089670
sub_8089670: @ 0x08089670
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xc9
	lsls r0, r0, #2
	adds r6, r5, r0
	movs r7, #0
_0808967C:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0x97
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r4, r5, r0
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	cmp r0, #9
	ble _080896A6
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080896A2
	movs r0, #3
	b _080896A8
_080896A2:
	movs r0, #1
	b _080896A8
_080896A6:
	movs r0, #0
_080896A8:
	strb r0, [r4, #0x1f]
	ldr r0, [r5, #0x48]
	asrs r0, r0, #8
	movs r2, #0
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x4c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	cmp r0, #9
	ble _080896EC
	ldr r0, [r4, #8]
	movs r1, #0x61
	orrs r0, r1
	str r0, [r4, #8]
	strh r2, [r6]
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r6, #2]
	adds r0, r5, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r6, #4]
	ldrh r0, [r4, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r6, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl TransformSprite
	b _080896EE
_080896EC:
	str r2, [r4, #8]
_080896EE:
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _0808967C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8089704
sub_8089704: @ 0x08089704
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xb5
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r5, #0x58]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #6]
	cmp r0, #1
	beq _08089724
	cmp r0, #3
	bne _0808972E
_08089724:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08089734
_0808972E:
	ldr r0, [r4, #8]
	ldr r1, _08089794 @ =0xFFFFFBFF
	ands r0, r1
_08089734:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r5, #0x60]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0xab
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r1, _08089798 @ =gUnknown_080D6694
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r5, #0xb]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r5, #0x58]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #6]
	cmp r0, #1
	beq _0808978A
	cmp r0, #3
	bne _0808979C
_0808978A:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080897A2
	.align 2, 0
_08089794: .4byte 0xFFFFFBFF
_08089798: .4byte gUnknown_080D6694
_0808979C:
	ldr r0, [r4, #8]
	ldr r1, _080897B8 @ =0xFFFFFBFF
	ands r0, r1
_080897A2:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080897B8: .4byte 0xFFFFFBFF

	thumb_func_start sub_80897BC
sub_80897BC: @ 0x080897BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	ldr r0, _08089954 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	movs r6, #0
	movs r7, #0
	movs r0, #0xc8
	lsls r0, r0, #7
	str r0, [r5, #0x3c]
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r5, #0x44]
	strb r7, [r5, #0xd]
	adds r0, r5, #0
	bl sub_8088FD4
	str r7, [r5, #0x50]
	ldr r0, [r5, #0x54]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x54]
	adds r0, r5, #0
	bl sub_8089150
	adds r0, r5, #0
	bl sub_80891E4
	ldr r1, _08089958 @ =gBgScrollRegs
	ldr r0, [r5, #0x50]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, [r5, #0x54]
	asrs r0, r0, #8
	strh r0, [r1, #6]
	ldr r1, _0808995C @ =0x03000072
	adds r0, r4, r1
	ldrh r0, [r0]
	lsrs r0, r0, #6
	adds r1, #2
	adds r4, r4, r1
	movs r1, #0
	ldrsh r2, [r4, r1]
	movs r1, #0x40
	str r1, [sp]
	movs r1, #0x48
	str r1, [sp, #4]
	movs r1, #0x50
	str r1, [sp, #8]
	ldr r1, _08089960 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
	adds r0, r5, #0
	bl sub_8089704
	ldr r7, [r5, #0x7c]
	ldr r2, _08089964 @ =gUnknown_080D6594
	movs r0, #0
	mov r8, r0
	movs r4, #0
_08089848:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r5, r0
	str r7, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r7, r7, r0
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r0, r6, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r0, r6, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, r8
	strb r0, [r1, #0x1f]
	str r4, [r1, #8]
	adds r0, r1, #0
	str r2, [sp, #0x10]
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r2, [sp, #0x10]
	cmp r6, #1
	bls _08089848
	movs r6, #0
	movs r1, #0xd
	adds r1, r1, r5
	mov r8, r1
	ldr r2, _08089968 @ =gUnknown_080D65F4
	movs r0, #0
	mov sb, r0
	movs r4, #0
_080898C0:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r5, r0
	str r7, [r1]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r7, r7, r0
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r0, r6, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r0, r6, r0
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sb
	strb r0, [r1, #0x1f]
	str r4, [r1, #8]
	adds r0, r1, #0
	str r2, [sp, #0x10]
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r2, [sp, #0x10]
	cmp r6, #1
	bls _080898C0
	movs r0, #0x26
	str r0, [sp]
	movs r0, #0
	mov r1, r8
	adds r2, r7, #0
	movs r3, #0x64
	bl sub_808A1B0
	movs r0, #2
	strb r0, [r5, #0xb]
	ldr r0, _08089954 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808996C @ =sub_808A0D8
	str r0, [r1, #8]
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089954: .4byte gCurTask
_08089958: .4byte gBgScrollRegs
_0808995C: .4byte 0x03000072
_08089960: .4byte gBgAffineRegs
_08089964: .4byte gUnknown_080D6594
_08089968: .4byte gUnknown_080D65F4
_0808996C: .4byte sub_808A0D8

	thumb_func_start sub_8089970
sub_8089970: @ 0x08089970
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08089A28 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	movs r7, #0
	movs r6, #0
	movs r0, #0xc8
	lsls r0, r0, #7
	str r0, [r5, #0x3c]
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r5, #0x44]
	strb r6, [r5, #0xd]
	adds r0, r5, #0
	bl sub_8088FD4
	str r6, [r5, #0x50]
	ldr r0, [r5, #0x54]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #0x54]
	adds r0, r5, #0
	bl sub_8089150
	adds r0, r5, #0
	bl sub_80891E4
	ldr r1, _08089A2C @ =gBgScrollRegs
	ldr r0, [r5, #0x50]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, [r5, #0x54]
	asrs r0, r0, #8
	strh r0, [r1, #6]
	ldr r1, _08089A30 @ =0x03000072
	adds r0, r4, r1
	ldrh r0, [r0]
	lsrs r0, r0, #6
	adds r1, #2
	adds r4, r4, r1
	movs r1, #0
	ldrsh r2, [r4, r1]
	movs r1, #0x40
	str r1, [sp]
	movs r1, #0x48
	str r1, [sp, #4]
	movs r1, #0x50
	str r1, [sp, #8]
	ldr r1, _08089A34 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
	adds r0, r5, #0
	bl sub_8089704
	ldr r6, [r5, #0x7c]
	ldrb r1, [r5]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	ldr r0, _08089A38 @ =gUnknown_080D6654
	mov sb, r0
	movs r1, #0
	mov r8, r1
	movs r3, #0
	lsls r0, r4, #1
	str r0, [sp, #0x10]
_08089A0C:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r5, r0
	str r6, [r2]
	cmp r7, #0
	bne _08089A3C
	movs r0, #0x80
	lsls r0, r0, #2
	adds r6, r6, r0
	b _08089A42
	.align 2, 0
_08089A28: .4byte gCurTask
_08089A2C: .4byte gBgScrollRegs
_08089A30: .4byte 0x03000072
_08089A34: .4byte gBgAffineRegs
_08089A38: .4byte gUnknown_080D6654
_08089A3C:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r6, r6, r1
_08089A42:
	lsls r0, r4, #1
	adds r0, r7, r0
	lsls r0, r0, #3
	add r0, sb
	ldrh r1, [r0]
	strh r1, [r2, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r5, #0x38]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r5, #0x3c]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	movs r0, #0xc0
	strh r0, [r2, #0x14]
	strh r3, [r2, #0xe]
	strh r3, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, r8
	strb r0, [r2, #0x1f]
	str r3, [r2, #8]
	adds r0, r2, #0
	str r3, [sp, #0x14]
	bl UpdateSpriteAnimation
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [sp, #0x14]
	cmp r7, #1
	bls _08089A0C
	movs r7, #0
	movs r1, #0xd
	adds r1, r1, r5
	mov r8, r1
	ldr r0, _08089AB8 @ =gUnknown_080D6674
	mov sl, r0
	movs r1, #0
	mov sb, r1
	movs r4, #0
_08089A9A:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r5, r0
	str r6, [r2]
	cmp r7, #0
	bne _08089ABC
	movs r0, #0x80
	lsls r0, r0, #2
	adds r6, r6, r0
	b _08089AC2
	.align 2, 0
_08089AB8: .4byte gUnknown_080D6674
_08089ABC:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r6, r6, r1
_08089AC2:
	ldr r1, [sp, #0x10]
	adds r0, r7, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r1, [r0]
	strh r1, [r2, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	movs r0, #0xc0
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, sb
	strb r0, [r2, #0x1f]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _08089A9A
	movs r0, #0x22
	str r0, [sp]
	movs r0, #1
	mov r1, r8
	adds r2, r6, #0
	movs r3, #0x58
	bl sub_808A1B0
	movs r0, #2
	strb r0, [r5, #0xb]
	ldr r0, _08089B30 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08089B34 @ =sub_808A0D8
	str r0, [r1, #8]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089B30: .4byte gCurTask
_08089B34: .4byte sub_808A0D8

	thumb_func_start sub_8089B38
sub_8089B38: @ 0x08089B38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	movs r1, #0
	adds r2, r7, #0
	adds r2, #0x1c
	str r6, [r7, #0x1c]
	ldrb r0, [r7, #8]
	cmp r0, #0
	beq _08089B58
	cmp r0, #1
	bne _08089B58
	movs r1, #1
_08089B58:
	ldr r5, _08089BEC @ =gUnknown_080D6780
	lsls r1, r1, #3
	adds r0, r5, #4
	adds r0, r1, r0
	ldr r0, [r0]
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r1, r1, r5
	ldrh r0, [r1]
	movs r3, #0
	mov r8, r3
	movs r4, #0
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r7, #0x10]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	movs r0, #0x40
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r2, #0x1c]
	mov r3, r8
	strb r3, [r2, #0x1f]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x6c
	str r6, [r7, #0x6c]
	ldr r1, [r5, #0x14]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldrh r1, [r5, #0x10]
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #0x12]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x14]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	mov r3, r8
	strb r3, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r3, r7, #0
	adds r3, #0x44
	str r6, [r7, #0x44]
	ldrb r0, [r7, #8]
	cmp r0, #0
	bne _08089BF4
	ldr r1, _08089BF0 @ =gUnknown_080D67F8
	b _08089BFA
	.align 2, 0
_08089BEC: .4byte gUnknown_080D6780
_08089BF0: .4byte gUnknown_080D67F8
_08089BF4:
	cmp r0, #1
	bne _08089C0E
	ldr r1, _08089C44 @ =gUnknown_080D6798
_08089BFA:
	ldrb r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	ldrb r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
_08089C0E:
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #8
	movs r2, #0
	movs r1, #0
	strh r0, [r3, #0x10]
	ldr r0, [r7, #0x10]
	asrs r0, r0, #8
	strh r0, [r3, #0x12]
	movs r0, #0x40
	strh r0, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	str r1, [r3, #8]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089C44: .4byte gUnknown_080D6798

	thumb_func_start sub_8089C48
sub_8089C48: @ 0x08089C48
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r7, #0
	adds r4, r5, #0
	adds r4, #0x1c
_08089C54:
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _08089C5E
	movs r7, #0
	b _08089C64
_08089C5E:
	cmp r0, #1
	bne _08089C64
	movs r7, #1
_08089C64:
	ldr r0, _08089C94 @ =gUnknown_080D6780
	lsls r1, r7, #3
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	cmp r6, #0
	bne _08089CA0
	ldr r0, [r4, #8]
	ldr r1, _08089C98 @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _08089C9C @ =0xFFFFF7FF
	ands r0, r1
	b _08089CDA
	.align 2, 0
_08089C94: .4byte gUnknown_080D6780
_08089C98: .4byte 0xFFFFFBFF
_08089C9C: .4byte 0xFFFFF7FF
_08089CA0:
	cmp r6, #1
	bne _08089CB8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	ldr r1, _08089CB4 @ =0xFFFFF7FF
	ands r0, r1
	b _08089CDA
	.align 2, 0
_08089CB4: .4byte 0xFFFFF7FF
_08089CB8:
	cmp r6, #2
	bne _08089CC8
	ldr r0, [r4, #8]
	ldr r1, _08089CC4 @ =0xFFFFFBFF
	ands r0, r1
	b _08089CD4
	.align 2, 0
_08089CC4: .4byte 0xFFFFFBFF
_08089CC8:
	cmp r6, #3
	bne _08089CDC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_08089CD4:
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
_08089CDA:
	str r0, [r4, #8]
_08089CDC:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08089C54
	adds r4, r5, #0
	adds r4, #0x6c
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _08089D0C
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	subs r0, #0x41
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	adds r0, #0xc
	b _08089D1E
_08089D0C:
	cmp r0, #1
	bne _08089D20
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	subs r0, #0x2d
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	adds r0, #8
_08089D1E:
	strh r0, [r4, #0x12]
_08089D20:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, r5, #0
	adds r4, #0x44
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _08089D50
	ldr r0, [r5, #4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08089D48
	ldr r1, _08089D44 @ =gUnknown_080D67F8
	b _08089D66
	.align 2, 0
_08089D44: .4byte gUnknown_080D67F8
_08089D48:
	ldr r1, _08089D4C @ =gUnknown_080D6828
	b _08089D66
	.align 2, 0
_08089D4C: .4byte gUnknown_080D6828
_08089D50:
	cmp r0, #1
	bne _08089D7A
	ldr r0, [r5, #4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08089D64
	ldr r1, _08089D60 @ =gUnknown_080D6798
	b _08089D66
	.align 2, 0
_08089D60: .4byte gUnknown_080D6798
_08089D64:
	ldr r1, _08089D9C @ =gUnknown_080D67C8
_08089D66:
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
_08089D7A:
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089D9C: .4byte gUnknown_080D67C8

	thumb_func_start sub_8089DA0
sub_8089DA0: @ 0x08089DA0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r5, #0
	adds r0, #0x18
	str r0, [sp]
	adds r0, #8
	str r0, [sp, #4]
	adds r0, #8
	str r0, [sp, #8]
	adds r0, #8
	str r0, [sp, #0xc]
	movs r3, #0
	movs r4, #0xaa
	lsls r4, r4, #8
	adds r6, r1, #7
_08089DC0:
	lsls r0, r3, #2
	add r0, sp
	ldr r1, [r0]
	ldr r2, [r1]
	cmp r2, r4
	bgt _08089DD6
	str r4, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08089DE0
_08089DD6:
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #8
	subs r0, r2, r0
	str r0, [r1]
_08089DE0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08089DC0
	adds r0, r5, #0
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8089DF4
sub_8089DF4: @ 0x08089DF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r4, #0
	adds r0, #0x18
	str r0, [sp]
	adds r0, #8
	str r0, [sp, #4]
	adds r0, #8
	str r0, [sp, #8]
	adds r0, #8
	str r0, [sp, #0xc]
	movs r3, #0
	ldr r7, _08089E2C @ =0x00012BFF
	movs r6, #0x96
	lsls r6, r6, #9
	adds r5, r1, #7
_08089E16:
	lsls r0, r3, #2
	add r0, sp
	ldr r1, [r0]
	ldr r2, [r1]
	cmp r2, r7
	ble _08089E30
	str r6, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _08089E3A
	.align 2, 0
_08089E2C: .4byte 0x00012BFF
_08089E30:
	adds r0, r5, r3
	ldrb r0, [r0]
	lsls r0, r0, #9
	adds r0, r2, r0
	str r0, [r1]
_08089E3A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08089E16
	adds r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8089E50
sub_8089E50: @ 0x08089E50
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r5, #0
	adds r1, r0, #0
	adds r1, #0x38
	str r1, [sp]
	adds r1, #8
	str r1, [sp, #4]
	movs r3, #0
	mov r7, sp
	movs r4, #0xaa
	lsls r4, r4, #8
	adds r6, r0, #7
_08089E6A:
	lsls r0, r3, #2
	adds r0, r0, r7
	ldr r1, [r0]
	ldr r2, [r1]
	cmp r2, r4
	bgt _08089E80
	str r4, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08089E8A
_08089E80:
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #8
	subs r0, r2, r0
	str r0, [r1]
_08089E8A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _08089E6A
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8089EA0
sub_8089EA0: @ 0x08089EA0
	push {r4, r5, r6, lr}
	sub sp, #8
	mov ip, r0
	movs r4, #0
	adds r0, #0x38
	str r0, [sp]
	adds r0, #8
	str r0, [sp, #4]
	movs r3, #0
	mov r5, sp
	ldr r6, _08089ED0 @ =0x00012BFF
_08089EB6:
	lsls r0, r3, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldr r2, [r1]
	cmp r2, r6
	ble _08089ED4
	movs r0, #0x96
	lsls r0, r0, #9
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _08089EE2
	.align 2, 0
_08089ED0: .4byte 0x00012BFF
_08089ED4:
	mov r0, ip
	adds r0, #7
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #9
	adds r0, r2, r0
	str r0, [r1]
_08089EE2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _08089EB6
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8089EF8
sub_8089EF8: @ 0x08089EF8
	movs r1, #0
	str r1, [r0, #0x50]
	ldr r1, [r0, #0x54]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	str r1, [r0, #0x54]
	bx lr

	thumb_func_start sub_8089F08
sub_8089F08: @ 0x08089F08
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	adds r1, #0x72
	ldrh r1, [r1]
	lsrs r1, r1, #6
	adds r0, #0x74
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0x48
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	ldr r0, _08089F3C @ =gBgAffineRegs
	str r0, [sp, #0xc]
	adds r0, r1, #0
	adds r1, r2, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_08089F3C: .4byte gBgAffineRegs

	thumb_func_start sub_8089F40
sub_8089F40: @ 0x08089F40
	ldr r2, _08089F50 @ =gBgScrollRegs
	ldr r1, [r0, #0x50]
	asrs r1, r1, #8
	strh r1, [r2, #4]
	ldr r0, [r0, #0x54]
	asrs r0, r0, #8
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_08089F50: .4byte gBgScrollRegs

@ Main Menu - Start Song
@ Calls the correct music playback depending on whether you are in the regular main menu or just lost the Time Attack
@ Called once whenever a "Main Menu sub-menu" is creted.
	thumb_func_start sub_8089F54
sub_8089F54: @ 0x08089F54
	push {r4, lr}
	ldr r0, _08089F7C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8087A48
	ldrb r0, [r4, #1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08089F80
	adds r0, r4, #0
	bl sub_80877F4
	b _08089F86
	.align 2, 0
_08089F7C: .4byte gCurTask
_08089F80:
	adds r0, r4, #0
	bl sub_8087590
_08089F86:
	adds r0, r4, #0
	bl sub_8087498
	ldrb r0, [r4, #1]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08089FA4
	bl m4aMPlayAllStop
	movs r0, #0x48      @ MUS_TIME_ATTACK_2 (Try Again)
	bl m4aSongNumStart
	b _08089FAE
_08089FA4:
	bl m4aMPlayAllStop
	movs r0, #2         @ MUS_MAIN_MENU
	bl m4aSongNumStart
_08089FAE:
	ldr r0, _08089FC4 @ =gCurTask
	ldr r2, [r0]
	ldr r1, _08089FC8 @ =gUnknown_080D6758
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08089FC4: .4byte gCurTask
_08089FC8: .4byte gUnknown_080D6758

	thumb_func_start sub_8089FCC
sub_8089FCC: @ 0x08089FCC
	push {r4, r5, lr}
	ldr r5, _0808A058 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8089028
	adds r0, r4, #0
	bl sub_80890F8
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_8089150
	adds r0, r4, #0
	bl sub_80891E4
	adds r0, r4, #0
	bl sub_8089398
	adds r0, r4, #0
	bl sub_80894BC
	adds r0, r4, #0
	bl sub_8089308
	adds r0, r4, #0
	bl sub_8089428
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089704
	adds r0, r4, #0
	bl sub_808927C
	adds r0, r4, #0
	bl sub_8089DA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0808A052
	adds r0, r4, #0
	bl sub_8089028
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808A052
	movs r0, #1
	strb r0, [r4, #2]
	ldr r1, [r5]
	ldr r0, _0808A05C @ =sub_808819C
	str r0, [r1, #8]
_0808A052:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808A058: .4byte gCurTask
_0808A05C: .4byte sub_808819C

	thumb_func_start sub_808A060
sub_808A060: @ 0x0808A060
	push {r4, r5, lr}
	ldr r5, _0808A0D0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80890F8
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_8089398
	adds r0, r4, #0
	bl sub_80894BC
	adds r0, r4, #0
	bl sub_8089308
	adds r0, r4, #0
	bl sub_8089428
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089704
	adds r0, r4, #0
	bl sub_808927C
	adds r0, r4, #0
	bl sub_8089DA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0808A0C8
	movs r0, #1
	strb r0, [r4, #2]
	ldr r1, [r5]
	ldr r0, _0808A0D4 @ =sub_808819C
	str r0, [r1, #8]
_0808A0C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808A0D0: .4byte gCurTask
_0808A0D4: .4byte sub_808819C

	thumb_func_start sub_808A0D8
sub_808A0D8: @ 0x0808A0D8
	push {r4, r5, lr}
	ldr r5, _0808A13C @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80890F8
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_8089150
	adds r0, r4, #0
	bl sub_80891E4
	adds r0, r4, #0
	bl sub_80895E0
	adds r0, r4, #0
	bl sub_8089550
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089704
	adds r0, r4, #0
	bl sub_8089E50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0808A136
	ldr r1, [r5]
	ldr r0, _0808A140 @ =sub_80889CC
	str r0, [r1, #8]
_0808A136:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808A13C: .4byte gCurTask
_0808A140: .4byte sub_80889CC

	thumb_func_start sub_808A144
sub_808A144: @ 0x0808A144
	push {r4, r5, lr}
	ldr r5, _0808A1A4 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8088FD4
	adds r0, r4, #0
	bl sub_8089EF8
	adds r0, r4, #0
	bl sub_8089150
	adds r0, r4, #0
	bl sub_80891E4
	adds r0, r4, #0
	bl sub_80895E0
	adds r0, r4, #0
	bl sub_8089550
	adds r0, r4, #0
	bl sub_8089F40
	adds r0, r4, #0
	bl sub_8089F08
	adds r0, r4, #0
	bl sub_8089704
	adds r0, r4, #0
	bl sub_8089EA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0808A19C
	ldr r1, [r5]
	ldr r0, _0808A1A8 @ =sub_8087C74
	str r0, [r1, #8]
_0808A19C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808A1A4: .4byte gCurTask
_0808A1A8: .4byte sub_8087C74

	thumb_func_start sub_808A1AC
sub_808A1AC: @ 0x0808A1AC
	bx lr
	.align 2, 0

	thumb_func_start sub_808A1B0
sub_808A1B0: @ 0x0808A1B0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	adds r4, r3, #0
	ldr r5, [sp, #0x1c]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0808A21C @ =sub_808A22C
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _0808A220 @ =sub_808A1AC
	str r1, [sp]
	movs r1, #0x94
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r1, _0808A224 @ =gLoadedSaveGame
	ldr r2, _0808A228 @ =0x00000366
	adds r1, r1, r2
	ldrb r1, [r1]
	movs r2, #0
	strb r1, [r0]
	mov r1, r8
	str r1, [r0, #4]
	strb r6, [r0, #8]
	lsls r4, r4, #8
	str r4, [r0, #0xc]
	lsls r5, r5, #8
	str r5, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	mov r1, sb
	bl sub_8089B38
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808A21C: .4byte sub_808A22C
_0808A220: .4byte sub_808A1AC
_0808A224: .4byte gLoadedSaveGame
_0808A228: .4byte 0x00000366

	thumb_func_start sub_808A22C
sub_808A22C: @ 0x0808A22C
	push {r4, r5, lr}
	ldr r5, _0808A254 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8089C48
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _0808A24E
	ldr r0, [r5]
	bl TaskDestroy
_0808A24E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808A254: .4byte gCurTask
    .align 2 , 0

    thumb_func_start sub_0808A258
sub_0808A258:
	bx lr
    .align 2 , 0

	thumb_func_start CreateTitleScreen
CreateTitleScreen: @ 0x0808A25C
	push {r4, r5, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _0808A288 @ =gDispCnt
	ldr r2, _0808A28C @ =0x00001041
	adds r0, r2, #0
	strh r0, [r1]
	cmp r4, #2
	bne _0808A298
	ldr r0, _0808A290 @ =Task_TitleScreenMain
	movs r1, #0xb2
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0808A294 @ =sub_808AF0C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	b _0808A2AC
	.align 2, 0
_0808A288: .4byte gDispCnt
_0808A28C: .4byte 0x00001041
_0808A290: .4byte Task_TitleScreenMain
_0808A294: .4byte sub_808AF0C
_0808A298:
	ldr r0, _0808A304 @ =sub_808AA34
	movs r1, #0xb2
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0808A308 @ =sub_808AF0C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
_0808A2AC:
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r3, _0808A30C @ =0x03000160
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	movs r2, #0
	movs r0, #0x1e
	strh r0, [r5, #0x1e]
	movs r0, #0xb4
	strh r0, [r5, #4]
	strh r1, [r5, #6]
	strh r4, [r5, #0xc]
	ldr r0, _0808A310 @ =gLoadedSaveGame
	ldr r3, _0808A314 @ =0x00000366
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r5]
	strh r1, [r5, #8]
	strh r1, [r5, #0xa]
	strb r2, [r5, #2]
	movs r0, #0xf0
	lsls r0, r0, #7
	strh r0, [r5, #0x12]
	movs r0, #0xc8
	lsls r0, r0, #7
	strh r0, [r5, #0x14]
	movs r0, #0xf0
	lsls r0, r0, #8
	strh r0, [r5, #0x16]
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r1, [r5, #0x1a]
	movs r0, #0x82
	lsls r0, r0, #8
	strh r0, [r5, #0x1c]
	cmp r4, #2
	bne _0808A318
	movs r0, #0x40
	b _0808A31C
	.align 2, 0
_0808A304: .4byte sub_808AA34
_0808A308: .4byte sub_808AF0C
_0808A30C: .4byte 0x03000160
_0808A310: .4byte gLoadedSaveGame
_0808A314: .4byte 0x00000366
_0808A318:
	movs r0, #0x80
	lsls r0, r0, #1
_0808A31C:
	strh r0, [r5, #0xe]
	ldrh r0, [r5, #0xc]
	cmp r0, #0
	beq _0808A328
	cmp r0, #2
	bne _0808A33C
_0808A328:
	ldr r1, _0808A334 @ =gBldRegs
	ldr r0, _0808A338 @ =0x00003FBF
	strh r0, [r1]
	adds r2, r1, #0
	b _0808A346
	.align 2, 0
_0808A334: .4byte gBldRegs
_0808A338: .4byte 0x00003FBF
_0808A33C:
	ldr r2, _0808A3B8 @ =gBldRegs
	cmp r0, #1
	bne _0808A346
	ldr r0, _0808A3BC @ =0x00003FFF
	strh r0, [r2]
_0808A346:
	movs r3, #0
	movs r1, #0
	movs r0, #0xf
	strh r0, [r2, #4]
	ldr r0, _0808A3C0 @ =0x06010000
	str r0, [r5, #0x20]
	str r1, [r5, #0x24]
	str r1, [sp, #4]
	ldr r2, _0808A3C4 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _0808A3C8 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0808A3CC @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r4, _0808A3D0 @ =gBgSprites_Unknown1
	strb r3, [r4, #2]
	ldr r0, _0808A3D4 @ =gBgSprites_Unknown2
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r2, #0x20
	strb r2, [r0, #0xb]
	strb r3, [r4, #1]
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r3, [r4]
	strb r3, [r0]
	strb r3, [r0, #1]
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	adds r0, r5, #0
	bl sub_808A4EC
	adds r0, r5, #0
	bl sub_808A3D8
	movs r0, #1     @ MUS_TITLE_SCREEN
	bl m4aSongNumStart
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808A3B8: .4byte gBldRegs
_0808A3BC: .4byte 0x00003FFF
_0808A3C0: .4byte 0x06010000
_0808A3C4: .4byte 0x040000D4
_0808A3C8: .4byte gBgCntRegs
_0808A3CC: .4byte 0x85000010
_0808A3D0: .4byte gBgSprites_Unknown1
_0808A3D4: .4byte gBgSprites_Unknown2

	thumb_func_start sub_808A3D8
sub_808A3D8: @ 0x0808A3D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r0, #0x28
	ldr r3, [r7, #0x20]
	str r3, [r7, #0x28]
	ldr r4, _0808A4E0 @ =gUnknown_080D6898
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r2, r4, #4
	adds r1, r1, r2
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r3, r3, r1
	str r3, [r7, #0x20]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrh r1, [r1]
	movs r2, #0
	mov sb, r2
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldrh r1, [r7, #0x12]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldrh r1, [r7, #0x14]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r3, #0x10
	mov r8, r3
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r2, sb
	strb r2, [r0, #0x1f]
	movs r6, #0x80
	lsls r6, r6, #5
	str r6, [r0, #8]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x78
	ldr r2, [r7, #0x20]
	str r2, [r7, #0x78]
	ldr r3, _0808A4E4 @ =gUnknown_080D68C8
	ldr r1, [r3, #4]
	lsls r1, r1, #5
	adds r2, r2, r1
	str r2, [r7, #0x20]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	adds r1, r4, #0
	strb r1, [r0, #0x1b]
	ldrh r1, [r7, #0x1a]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldrh r1, [r7, #0x1c]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	mov r3, r8
	strb r3, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r6, [r0, #8]
	str r4, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x50
	ldrb r1, [r7]
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	ldr r1, [r7, #0x20]
	str r1, [r7, #0x50]
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r1, r3
	str r1, [r7, #0x20]
	ldr r1, _0808A4E8 @ =gUnknown_080D6858
	lsls r2, r2, #5
	adds r2, r2, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	adds r1, r4, #0
	strb r1, [r0, #0x1b]
	ldrh r1, [r7, #0x16]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldrh r1, [r7, #0x18]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r2, sb
	strb r2, [r0, #0x1f]
	str r6, [r0, #8]
	str r4, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A4E0: .4byte gUnknown_080D6898
_0808A4E4: .4byte gUnknown_080D68C8
_0808A4E8: .4byte gUnknown_080D6858

	thumb_func_start sub_808A4EC
sub_808A4EC: @ 0x0808A4EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldrb r0, [r7]
	rsbs r6, r0, #0
	orrs r6, r0
	lsrs r6, r6, #0x1f
	ldr r0, _0808A628 @ =gDispCnt
	mov sb, r0
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
	movs r4, #0
	ldr r0, _0808A62C @ =0x00001783
	ldr r2, _0808A630 @ =gBgCntRegs
	strh r0, [r2]
	ldr r0, _0808A634 @ =gBgScrollRegs
	mov r8, r0
	strh r4, [r0]
	strh r4, [r0, #2]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0808A638 @ =0x0600B800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0x92
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0xca
	movs r2, #0
	strb r2, [r1]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
	ldr r0, _0808A63C @ =0x00001F8A
	ldr r2, _0808A630 @ =gBgCntRegs
	strh r0, [r2, #2]
	ldr r0, _0808A640 @ =0x0000FFEC
	mov r1, r8
	strh r0, [r1, #4]
	adds r0, #0xc
	strh r0, [r1, #6]
	adds r0, r7, #0
	adds r0, #0xe0
	ldr r1, _0808A644 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0808A648 @ =0x0600F800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r2, _0808A64C @ =gUnknown_080D68D0
	mov sl, r2
	lsls r5, r6, #2
	lsls r6, r6, #3
	add r6, sl
	ldrh r1, [r6]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x19
	strh r1, [r0, #0x26]
	movs r6, #0xa
	strh r6, [r0, #0x28]
	movs r2, #0x85
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r2, #0
	strb r2, [r1]
	movs r1, #5
	strh r1, [r0, #0x2e]
	bl DrawBackground
	mov r1, sb
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
	ldr r0, _0808A650 @ =0x00005D8D
	ldr r2, _0808A630 @ =gBgCntRegs
	strh r0, [r2, #4]
	mov r0, r8
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, _0808A654 @ =0x0600C000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0808A658 @ =0x0600E800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	adds r5, #1
	lsls r5, r5, #1
	add r5, sl
	ldrh r1, [r5]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #8
	strh r1, [r0, #0x26]
	strh r6, [r0, #0x28]
	movs r2, #0xa5
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r2, #0
	strb r2, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A628: .4byte gDispCnt
_0808A62C: .4byte 0x00001783
_0808A630: .4byte gBgCntRegs
_0808A634: .4byte gBgScrollRegs
_0808A638: .4byte 0x0600B800
_0808A63C: .4byte 0x00001F8A
_0808A640: .4byte 0x0000FFEC
_0808A644: .4byte 0x06008000
_0808A648: .4byte 0x0600F800
_0808A64C: .4byte gUnknown_080D68D0
_0808A650: .4byte 0x00005D8D
_0808A654: .4byte 0x0600C000
_0808A658: .4byte 0x0600E800

	thumb_func_start Task_TitleScreenMain
Task_TitleScreenMain: @ 0x0808A65C
	push {r4, lr}
	ldr r0, _0808A69C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0808A6A0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0808A6A4 @ =gWinRegs
	movs r3, #0
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x22
	strh r0, [r1, #8]
	strh r2, [r1, #0xa]
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _0808A696
	cmp r0, #2
	bne _0808A6B0
_0808A696:
	ldr r1, _0808A6A8 @ =gBldRegs
	ldr r0, _0808A6AC @ =0x00003FBF
	b _0808A6B8
	.align 2, 0
_0808A69C: .4byte gCurTask
_0808A6A0: .4byte gDispCnt
_0808A6A4: .4byte gWinRegs
_0808A6A8: .4byte gBldRegs
_0808A6AC: .4byte 0x00003FBF
_0808A6B0:
	cmp r0, #1
	bne _0808A6CE
	ldr r1, _0808A708 @ =gBldRegs
	ldr r0, _0808A70C @ =0x00003FFF
_0808A6B8:
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #3
	strh r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0xa]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r4, #0x24]
_0808A6CE:
	adds r0, r4, #0
	bl sub_808AEDC
	ldr r3, _0808A708 @ =gBldRegs
	ldrh r2, [r3, #4]
	cmp r2, #0
	beq _0808A71C
	ldrh r0, [r4, #0xa]
	lsrs r0, r0, #8
	strh r0, [r3, #4]
	ldrh r0, [r4, #0xa]
	ldrh r1, [r4, #0xe]
	subs r0, r0, r1
	strh r0, [r4, #0xa]
	ldr r0, _0808A710 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808A74E
	movs r0, #0
	strh r0, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0xe]
	ldr r0, _0808A714 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808A718 @ =sub_808AA34
	b _0808A74C
	.align 2, 0
_0808A708: .4byte gBldRegs
_0808A70C: .4byte 0x00003FFF
_0808A710: .4byte gPressedKeys
_0808A714: .4byte gCurTask
_0808A718: .4byte sub_808AA34
_0808A71C:
	strh r2, [r3, #4]
	ldrh r0, [r4, #0xe]
	cmp r0, #0xff
	bls _0808A734
	ldr r0, _0808A72C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808A730 @ =sub_808ABD0
	b _0808A74C
	.align 2, 0
_0808A72C: .4byte gCurTask
_0808A730: .4byte sub_808ABD0
_0808A734:
	ldr r1, _0808A754 @ =gWinRegs
	movs r0, #0x26
	strh r0, [r1, #8]
	ldr r0, _0808A758 @ =0x00002244
	strh r0, [r3]
	strh r2, [r4, #0x10]
	ldr r0, _0808A75C @ =gUnknown_080D68E0
	ldrh r0, [r0]
	strh r0, [r3, #2]
	ldr r0, _0808A760 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808A764 @ =sub_808A854
_0808A74C:
	str r0, [r1, #8]
_0808A74E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808A754: .4byte gWinRegs
_0808A758: .4byte 0x00002244
_0808A75C: .4byte gUnknown_080D68E0
_0808A760: .4byte gCurTask
_0808A764: .4byte sub_808A854

	thumb_func_start sub_808A768
sub_808A768: @ 0x0808A768
	push {r4, r5, r6, lr}
	ldr r6, _0808A7D0 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r5, _0808A7D4 @ =gBldRegs
	movs r1, #0
	ldr r0, _0808A7D8 @ =0x00003FFF
	strh r0, [r5]
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _0808A78C
	strh r1, [r5, #4]
	movs r0, #2
	strh r0, [r4, #0xc]
	strh r1, [r4, #0xa]
_0808A78C:
	movs r2, #0x1e
	ldrsh r0, [r4, r2]
	cmp r0, #7
	ble _0808A796
	strh r1, [r4, #0x1e]
_0808A796:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	cmp r0, #1
	ble _0808A7A4
	adds r0, r4, #0
	bl sub_808AEA4
_0808A7A4:
	adds r0, r4, #0
	bl sub_808AEC0
	ldrh r0, [r4, #8]
	subs r0, #1
	strh r0, [r4, #8]
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
	ldrh r0, [r5, #4]
	cmp r0, #0xe
	bhi _0808A7DC
	ldrh r0, [r4, #0xa]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r4, #0xa]
	b _0808A7EA
	.align 2, 0
_0808A7D0: .4byte gCurTask
_0808A7D4: .4byte gBldRegs
_0808A7D8: .4byte 0x00003FFF
_0808A7DC:
	movs r0, #0
	movs r1, #1
	bl LaunchChaoMenu
	ldr r0, [r6]
	bl TaskDestroy
_0808A7EA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_808A7F0
sub_808A7F0: @ 0x0808A7F0
	push {r4, lr}
	ldr r0, _0808A830 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808AEC0
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _0808A822
	ldr r1, _0808A834 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0808A822
	ldrh r0, [r4, #0xa]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r1, _0808A838 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r4, #0xa]
_0808A822:
	ldrh r0, [r4, #8]
	cmp r0, #0
	beq _0808A83C
	subs r0, #1
	strh r0, [r4, #8]
	b _0808A844
	.align 2, 0
_0808A830: .4byte gCurTask
_0808A834: .4byte gBldRegs
_0808A838: .4byte 0xFFFFFF00
_0808A83C:
	ldr r0, _0808A84C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808A850 @ =sub_808ABD0
	str r0, [r1, #8]
_0808A844:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808A84C: .4byte gCurTask
_0808A850: .4byte sub_808ABD0

	thumb_func_start sub_808A854
sub_808A854: @ 0x0808A854
	push {r4, r5, lr}
	ldr r0, _0808A8CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, [r4, #0x24]
	ldr r1, _0808A8D0 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #0x24]
	ldr r1, _0808A8D4 @ =0x0000FFFF
	cmp r0, r1
	bgt _0808A87A
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r4, #0x24]
	movs r5, #1
_0808A87A:
	ldrh r1, [r4, #0x10]
	lsrs r0, r1, #8
	cmp r0, #0xf
	bhi _0808A892
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _0808A89E
_0808A892:
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0808A89E:
	ldr r2, _0808A8D8 @ =gBldRegs
	ldr r1, _0808A8DC @ =gUnknown_080D68E0
	ldrh r0, [r4, #0x10]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r0, r4, #0
	bl sub_808AEDC
	cmp r5, #1
	bls _0808A8C4
	movs r0, #0
	strb r0, [r4, #1]
	ldr r0, _0808A8CC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808A8E0 @ =sub_808A8E4
	str r0, [r1, #8]
_0808A8C4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808A8CC: .4byte gCurTask
_0808A8D0: .4byte 0xFFFFE000
_0808A8D4: .4byte 0x0000FFFF
_0808A8D8: .4byte gBldRegs
_0808A8DC: .4byte gUnknown_080D68E0
_0808A8E0: .4byte sub_808A8E4

	thumb_func_start sub_808A8E4
sub_808A8E4: @ 0x0808A8E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	ldr r0, _0808A9B0 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _0808A9B4 @ =gBgScrollRegs
	ldr r4, _0808A9B8 @ =gUnknown_080D694C
	ldrb r0, [r5, #1]
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r3, #0x14
	rsbs r3, r3, #0
	adds r0, r3, #0
	subs r0, r0, r1
	movs r6, #0
	strh r0, [r2, #4]
	ldr r3, _0808A9BC @ =gUnknown_080D6956
	ldrb r0, [r5, #1]
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r7, #8
	rsbs r7, r7, #0
	adds r0, r7, #0
	subs r0, r0, r1
	strh r0, [r2, #6]
	ldr r2, [r5, #0x24]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r0, #0x28
	str r0, [sp]
	ldrb r0, [r5, #1]
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0xb4
	str r0, [sp, #4]
	ldrb r0, [r5, #1]
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x30
	str r0, [sp, #8]
	ldr r0, _0808A9C0 @ =gBgAffineRegs
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0x20
	bl sa2__sub_8003EE4
	ldrb r0, [r5, #1]
	adds r0, #1
	strb r0, [r5, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _0808A9A4
	ldr r2, _0808A9C4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0808A9C8 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldrh r0, [r2, #8]
	movs r1, #0x26
	orrs r0, r1
	strh r0, [r2, #8]
	ldr r1, _0808A9CC @ =gBldRegs
	ldr r0, _0808A9D0 @ =0x00003FBF
	strh r0, [r1]
	strh r6, [r1, #4]
	movs r0, #3
	strh r0, [r5, #0xc]
	strh r6, [r5, #0xa]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #0xe]
	mov r7, r8
	ldr r1, [r7]
	ldr r0, _0808A9D4 @ =sub_808A9D8
	str r0, [r1, #8]
_0808A9A4:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A9B0: .4byte gCurTask
_0808A9B4: .4byte gBgScrollRegs
_0808A9B8: .4byte gUnknown_080D694C
_0808A9BC: .4byte gUnknown_080D6956
_0808A9C0: .4byte gBgAffineRegs
_0808A9C4: .4byte gDispCnt
_0808A9C8: .4byte gWinRegs
_0808A9CC: .4byte gBldRegs
_0808A9D0: .4byte 0x00003FBF
_0808A9D4: .4byte sub_808A9D8

	thumb_func_start sub_808A9D8
sub_808A9D8: @ 0x0808A9D8
	push {r4, r5, lr}
	ldr r5, _0808AA04 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808AEDC
	ldr r1, _0808AA08 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xe
	bhi _0808AA0C
	ldrh r0, [r4, #0xa]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldrh r0, [r4, #0xe]
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r4, #0xa]
	b _0808AA26
	.align 2, 0
_0808AA04: .4byte gCurTask
_0808AA08: .4byte gBldRegs
_0808AA0C:
	movs r0, #0xf
	strh r0, [r1, #4]
	movs r0, #0xf0
	lsls r0, r0, #4
	strh r0, [r4, #0xa]
	ldr r2, _0808AA2C @ =gWinRegs
	ldrh r1, [r2, #8]
	movs r0, #0x33
	orrs r0, r1
	strh r0, [r2, #8]
	ldr r1, [r5]
	ldr r0, _0808AA30 @ =sub_808AA34
	str r0, [r1, #8]
_0808AA26:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808AA2C: .4byte gWinRegs
_0808AA30: .4byte sub_808AA34

	thumb_func_start sub_808AA34
sub_808AA34: @ 0x0808AA34
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r0, _0808AB04 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r6, r4, r6
	ldrb r0, [r6]
	rsbs r2, r0, #0
	orrs r2, r0
	lsrs r2, r2, #0x1f
	ldr r5, _0808AB08 @ =gDispCnt
	ldrh r1, [r5]
	ldr r0, _0808AB0C @ =0x0000FBFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r5]
	ldr r1, _0808AB10 @ =gBgCntRegs
	movs r0, #0
	mov r8, r0
	movs r3, #0
	ldr r0, _0808AB14 @ =0x00001F8A
	strh r0, [r1, #2]
	ldr r1, _0808AB18 @ =gBgScrollRegs
	ldr r0, _0808AB1C @ =0x0000FFEC
	strh r0, [r1, #4]
	adds r0, #0xc
	strh r0, [r1, #6]
	ldr r1, _0808AB20 @ =0x030000E0
	adds r0, r4, r1
	ldr r1, _0808AB24 @ =0x06008000
	str r1, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r1, _0808AB28 @ =0x0600F800
	str r1, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	ldr r1, _0808AB2C @ =gUnknown_080D68D0
	lsls r2, r2, #2
	adds r2, #2
	lsls r2, r2, #1
	adds r2, r2, r1
	ldrh r1, [r2]
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x19
	strh r1, [r0, #0x26]
	movs r1, #0xa
	strh r1, [r0, #0x28]
	ldr r2, _0808AB30 @ =0x0300010A
	adds r4, r4, r2
	mov r3, r8
	strb r3, [r4]
	movs r1, #5
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	ldr r2, _0808AB34 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldrh r0, [r2, #8]
	movs r1, #0x26
	orrs r0, r1
	strh r0, [r2, #8]
	ldr r1, _0808AB38 @ =gBldRegs
	ldr r0, _0808AB3C @ =0x00003FBF
	strh r0, [r1]
	movs r0, #0xf
	strh r0, [r1, #4]
	movs r0, #0xf0
	lsls r0, r0, #4
	strh r0, [r6, #0xa]
	ldrh r0, [r2, #8]
	movs r1, #0x33
	orrs r0, r1
	strh r0, [r2, #8]
	mov r3, sb
	ldr r1, [r3]
	ldr r0, _0808AB40 @ =Task_TitleAnnouncer
	str r0, [r1, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808AB04: .4byte gCurTask
_0808AB08: .4byte gDispCnt
_0808AB0C: .4byte 0x0000FBFF
_0808AB10: .4byte gBgCntRegs
_0808AB14: .4byte 0x00001F8A
_0808AB18: .4byte gBgScrollRegs
_0808AB1C: .4byte 0x0000FFEC
_0808AB20: .4byte 0x030000E0
_0808AB24: .4byte 0x06008000
_0808AB28: .4byte 0x0600F800
_0808AB2C: .4byte gUnknown_080D68D0
_0808AB30: .4byte 0x0300010A
_0808AB34: .4byte gWinRegs
_0808AB38: .4byte gBldRegs
_0808AB3C: .4byte 0x00003FBF
_0808AB40: .4byte Task_TitleAnnouncer

	thumb_func_start Task_TitleAnnouncer
Task_TitleAnnouncer: @ 0x0808AB44
	push {r4, r5, lr}
	ldr r5, _0808AB80 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0xe]
	cmp r0, #0xff
	bls _0808AB5E
	adds r0, r4, #0
	bl sub_808AEC0
_0808AB5E:
	ldr r2, _0808AB84 @ =gBldRegs
	ldrh r1, [r2, #4]
	cmp r1, #0
	bne _0808AB8C
	strh r1, [r2, #4]
	movs r0, #0x3c
	strh r0, [r4, #8]
	strh r1, [r4, #0xc]
	ldr r1, [r5]
	ldr r0, _0808AB88 @ =sub_808A7F0
	str r0, [r1, #8]
	movs r0, #0xfa
	lsls r0, r0, #1     @ VOICE__ANNOUNCER__SONIC_ADVANCE_3
	bl m4aSongNumStart
	b _0808ABC0
	.align 2, 0
_0808AB80: .4byte gCurTask
_0808AB84: .4byte gBldRegs
_0808AB88: .4byte sub_808A7F0
_0808AB8C:
	ldrh r0, [r4, #0xa]
	lsrs r0, r0, #8
	movs r3, #0
	strh r0, [r2, #4]
	ldrh r0, [r4, #0xa]
	ldrh r1, [r4, #0xe]
	subs r0, r0, r1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	movs r1, #0xf0
	lsls r1, r1, #0x14
	cmp r0, r1
	bls _0808ABA8
	strh r3, [r4, #0xa]
_0808ABA8:
	ldr r0, _0808ABC8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808ABC0
	movs r0, #0x3c
	strh r0, [r4, #8]
	strh r3, [r4, #0xc]
	ldr r1, [r5]
	ldr r0, _0808ABCC @ =sub_808A7F0
	str r0, [r1, #8]
_0808ABC0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808ABC8: .4byte gPressedKeys
_0808ABCC: .4byte sub_808A7F0

	thumb_func_start sub_808ABD0
sub_808ABD0: @ 0x0808ABD0
	push {r4, r5, lr}
	ldr r5, _0808AC2C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808AEC0
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	cmp r0, #0x5a
	ble _0808ABF0
	movs r0, #0
	strh r0, [r4, #0x1e]
_0808ABF0:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	cmp r0, #0x1d
	ble _0808ABFE
	adds r0, r4, #0
	bl sub_808AEA4
_0808ABFE:
	adds r0, r4, #0
	bl sub_808AEC0
	ldr r0, _0808AC30 @ =gPressedKeys
	ldrh r2, [r0]
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808AC38
	movs r0, #0x6a      @ SE_SELECT
	bl m4aSongNumStart
	movs r0, #0x19
	strh r0, [r4, #6]
	movs r0, #2
	strh r0, [r4, #0x1e]
	ldr r1, [r5]
	ldr r0, _0808AC34 @ =sub_808AE4C
	str r0, [r1, #8]
	b _0808ACB2
	.align 2, 0
_0808AC2C: .4byte gCurTask
_0808AC30: .4byte gPressedKeys
_0808AC34: .4byte sub_808AE4C
_0808AC38:
	ldrh r1, [r4, #6]
	ldr r0, _0808AC48 @ =0x00000257
	cmp r1, r0
	bls _0808AC4C
	bl LaunchDemoPlay
	b _0808ACB2
	.align 2, 0
_0808AC48: .4byte 0x00000257
_0808AC4C:
	cmp r1, #0x3c
	bls _0808AC94
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0808AC94
	ldrh r0, [r4, #4]
	cmp r0, #0xb3
	bhi _0808AC72
	ldr r1, _0808ACB8 @ =gStageData
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0808AC72
	strb r3, [r1, #8]
_0808AC72:
	movs r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	adds r0, r4, #0
	bl sub_808AD14
	ldr r0, _0808ACBC @ =gMPlayTable
	ldr r0, [r0]
	bl MPlayStop
	movs r0, #0xfa
	lsls r0, r0, #1
	bl m4aSongNumStop
	movs r0, #0x6a      @ SE_SELECT
	bl m4aSongNumStart
_0808AC94:
	ldrh r0, [r4, #4]
	cmp r0, #0xb3
	bhi _0808ACA6
	adds r0, r4, #0
	bl sub_808ACC0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_0808ACA6:
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
_0808ACB2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808ACB8: .4byte gStageData
_0808ACBC: .4byte gMPlayTable

	thumb_func_start sub_808ACC0
sub_808ACC0: @ 0x0808ACC0
	push {r4, r5, lr}
	ldrb r1, [r0]
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	adds r4, r0, #0
	adds r4, #0x50
	ldr r5, _0808AD0C @ =gUnknown_080D6858
	ldr r3, _0808AD10 @ =gStageData
	ldrb r1, [r3, #8]
	lsls r2, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrh r1, [r1]
	strh r1, [r4, #0xc]
	ldrb r1, [r3, #8]
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrb r1, [r1, #2]
	strb r1, [r4, #0x1a]
	ldrh r1, [r0, #0x16]
	lsrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldrh r0, [r0, #0x18]
	lsrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808AD0C: .4byte gUnknown_080D6858
_0808AD10: .4byte gStageData

	thumb_func_start sub_808AD14
sub_808AD14: @ 0x0808AD14
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r0, #0
	mov r4, sp
	ldr r2, _0808ADDC @ =gUnknown_080D6902
	ldr r3, _0808ADE0 @ =gStageData
	ldrb r1, [r3, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4]
	ldrb r1, [r3, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r1, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #1]
	ldrb r1, [r3, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #2]
	add r5, sp, #4
	ldr r2, _0808ADE4 @ =gUnknown_080D690E
	ldrb r1, [r3, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5]
	ldrb r1, [r3, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r1, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #1]
	ldrb r1, [r3, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5, #2]
	add r4, sp, #8
	ldr r2, _0808ADE8 @ =gUnknown_080D691C
	ldrb r1, [r3, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #8]
	ldrb r1, [r3, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #4]
	ldrb r1, [r3, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r4, #8]
	bl sub_80C4B48
	mov r0, sp
	bl sub_80C47C0
	adds r0, r5, #0
	bl sub_80C470C
	adds r0, r4, #0
	bl sub_80C492C
	adds r6, #0xa0
	movs r0, #0xc
	strh r0, [r6, #0x2e]
	adds r0, r6, #0
	bl DrawBackground
	ldr r2, _0808ADEC @ =gFlags
	ldr r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r2]
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808ADDC: .4byte gUnknown_080D6902
_0808ADE0: .4byte gStageData
_0808ADE4: .4byte gUnknown_080D690E
_0808ADE8: .4byte gUnknown_080D691C
_0808ADEC: .4byte gFlags

	thumb_func_start sub_808ADF0
sub_808ADF0: @ 0x0808ADF0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808AE04
	ldr r0, _0808AE00 @ =sub_808AE28
	b _0808AE0A
	.align 2, 0
_0808AE00: .4byte sub_808AE28
_0808AE04:
	cmp r0, #2
	bne _0808AE18
	ldr r0, _0808AE14 @ =sub_808AE40
_0808AE0A:
	movs r1, #0
	bl sub_8001D58
	b _0808AE20
	.align 2, 0
_0808AE14: .4byte sub_808AE40
_0808AE18:
	ldr r0, _0808AE24 @ =sub_808AE34
	movs r1, #0
	bl sub_8001D58
_0808AE20:
	pop {r0}
	bx r0
	.align 2, 0
_0808AE24: .4byte sub_808AE34

	thumb_func_start sub_808AE28
sub_808AE28: @ 0x0808AE28
	push {lr}
	movs r0, #0
	bl CreateTitleScreen
	pop {r0}
	bx r0

	thumb_func_start sub_808AE34
sub_808AE34: @ 0x0808AE34
	push {lr}
	movs r0, #1
	bl CreateTitleScreen
	pop {r0}
	bx r0

	thumb_func_start sub_808AE40
sub_808AE40: @ 0x0808AE40
	push {lr}
	movs r0, #2
	bl CreateTitleScreen
	pop {r0}
	bx r0

	thumb_func_start sub_808AE4C
sub_808AE4C: @ 0x0808AE4C
	push {r4, r5, lr}
	ldr r5, _0808AE9C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808AEC0
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	cmp r0, #7
	ble _0808AE6C
	movs r0, #0
	strh r0, [r4, #0x1e]
_0808AE6C:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	cmp r0, #1
	ble _0808AE7A
	adds r0, r4, #0
	bl sub_808AEA4
_0808AE7A:
	ldrh r1, [r4, #6]
	subs r1, #1
	strh r1, [r4, #6]
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0
	bne _0808AE96
	strh r1, [r4, #0xc]
	ldr r1, [r5]
	ldr r0, _0808AEA0 @ =sub_808A768
	str r0, [r1, #8]
_0808AE96:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808AE9C: .4byte gCurTask
_0808AEA0: .4byte sub_808A768

	thumb_func_start sub_808AEA4
sub_808AEA4: @ 0x0808AEA4
	push {lr}
	adds r2, r0, #0
	adds r2, #0x28
	ldrh r1, [r0, #0x12]
	lsrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldrh r0, [r0, #0x14]
	lsrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_808AEC0
sub_808AEC0: @ 0x0808AEC0
	push {lr}
	adds r2, r0, #0
	adds r2, #0x78
	ldrh r1, [r0, #0x1a]
	lsrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldrh r0, [r0, #0x1c]
	lsrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_808AEDC
sub_808AEDC: @ 0x0808AEDC
	push {lr}
	sub sp, #0x10
	ldr r2, [r0, #0x24]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r0, #0x28
	str r0, [sp]
	movs r0, #0xb4
	str r0, [sp, #4]
	movs r0, #0x30
	str r0, [sp, #8]
	ldr r0, _0808AF08 @ =gBgAffineRegs
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0x20
	bl sa2__sub_8003EE4
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_0808AF08: .4byte gBgAffineRegs

	thumb_func_start sub_808AF0C
sub_808AF0C: @ 0x0808AF0C
	push {lr}
	ldr r0, _0808AF24 @ =gStageData
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0808AF2C
	ldr r0, _0808AF28 @ =gFlags
	ldr r1, [r0]
	movs r2, #0xc0
	lsls r2, r2, #0xa
	orrs r1, r2
	b _0808AF34
	.align 2, 0
_0808AF24: .4byte gStageData
_0808AF28: .4byte gFlags
_0808AF2C:
	ldr r0, _0808AF3C @ =gFlags
	ldr r1, [r0]
	ldr r2, _0808AF40 @ =0xFFFCFFFF
	ands r1, r2
_0808AF34:
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0808AF3C: .4byte gFlags
_0808AF40: .4byte 0xFFFCFFFF

	thumb_func_start sub_808AF44
sub_808AF44: @ 0x0808AF44
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _0808AF80 @ =gDispCnt
	ldr r2, _0808AF84 @ =0x00001341
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0808AF88 @ =sub_808B5B8
	ldr r1, _0808AF8C @ =0x00000464
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0808AF90 @ =sub_808D000
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	strb r4, [r5, #1]
	cmp r4, #0
	bne _0808AF94
	adds r0, r5, #0
	bl sub_808B1B0
	b _0808AF9A
	.align 2, 0
_0808AF80: .4byte gDispCnt
_0808AF84: .4byte 0x00001341
_0808AF88: .4byte sub_808B5B8
_0808AF8C: .4byte 0x00000464
_0808AF90: .4byte sub_808D000
_0808AF94:
	adds r0, r5, #0
	bl sub_808B0A4
_0808AF9A:
	ldr r1, _0808B040 @ =gLoadedSaveGame
	ldr r6, _0808B044 @ =0x00000366
	adds r4, r1, r6
	ldrb r0, [r4]
	movs r3, #0
	strb r0, [r5]
	strb r3, [r5, #5]
	strb r3, [r5, #4]
	movs r2, #0
	strh r3, [r5, #0x10]
	strb r2, [r5, #6]
	strb r2, [r5, #3]
	movs r0, #1
	str r0, [r5, #0x2c]
	subs r6, #2
	adds r0, r1, r6
	ldrb r0, [r0]
	str r0, [r5, #0x18]
	ldr r0, _0808B048 @ =0x00000365
	adds r1, r1, r0
	ldrb r0, [r1]
	str r0, [r5, #0x1c]
	ldrb r0, [r4]
	str r0, [r5, #0x20]
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r0, _0808B04C @ =0x06010000
	str r0, [r1]
	str r3, [sp, #4]
	ldr r6, _0808B050 @ =0x040000D4
	add r0, sp, #4
	str r0, [r6]
	ldr r0, _0808B054 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r6, #4]
	ldr r0, _0808B058 @ =0x85000010
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r4, _0808B05C @ =gBgSprites_Unknown1
	strb r2, [r4]
	ldr r0, _0808B060 @ =gBgSprites_Unknown2
	strb r2, [r0]
	strb r2, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r3, #0x40
	strb r3, [r0, #3]
	strb r2, [r4, #1]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	strb r2, [r4, #2]
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	adds r0, r5, #0
	bl sub_808B4EC
	ldr r2, _0808B064 @ =gFlags
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _0808B06C
	ldr r0, _0808B068 @ =gUnknown_080D6C1C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl CopyPalette
	b _0808B080
	.align 2, 0
_0808B040: .4byte gLoadedSaveGame
_0808B044: .4byte 0x00000366
_0808B048: .4byte 0x00000365
_0808B04C: .4byte 0x06010000
_0808B050: .4byte 0x040000D4
_0808B054: .4byte gBgCntRegs
_0808B058: .4byte 0x85000010
_0808B05C: .4byte gBgSprites_Unknown1
_0808B060: .4byte gBgSprites_Unknown2
_0808B064: .4byte gFlags
_0808B068: .4byte gUnknown_080D6C1C
_0808B06C:
	ldr r0, _0808B094 @ =gUnknown_080D6C1C
	str r0, [r6]
	ldr r0, _0808B098 @ =gObjPalette
	str r0, [r6, #4]
	ldr r0, _0808B09C @ =0x80000100
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r0, #2
	orrs r1, r0
	str r1, [r2]
_0808B080:
	movs r0, #6         @ MUS_OPTIONS_COPY
	bl m4aSongNumStart
	ldr r1, _0808B0A0 @ =gStageData
	movs r0, #0
	strb r0, [r1, #6]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808B094: .4byte gUnknown_080D6C1C
_0808B098: .4byte gObjPalette
_0808B09C: .4byte 0x80000100
_0808B0A0: .4byte gStageData

	thumb_func_start sub_808B0A4
sub_808B0A4: @ 0x0808B0A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r3, r0, #0
	movs r0, #0
	strh r0, [r3, #8]
	strh r0, [r3, #0x10]
	strh r0, [r3, #0xe]
	movs r1, #2
	movs r0, #2
	strh r0, [r3, #0xc]
	ldrb r0, [r3, #1]
	subs r0, #8
	strh r0, [r3, #0xa]
	strb r1, [r3, #2]
	movs r2, #0
	adds r1, r3, #0
	adds r1, #0x14
	movs r5, #0
	adds r4, r1, #0
_0808B0D2:
	lsls r0, r2, #2
	adds r0, r1, r0
	str r5, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #6
	bls _0808B0D2
	movs r1, #8
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r2, #0xa
	ldrsh r1, [r3, r2]
	str r1, [r0]
	movs r2, #0
	movs r7, #0x78
	adds r7, r7, r3
	mov ip, r7
	movs r0, #0x7c
	adds r0, r0, r3
	mov r8, r0
	movs r1, #0x90
	adds r1, r1, r3
	mov sb, r1
	movs r7, #0x94
	adds r7, r7, r3
	mov sl, r7
	adds r0, r3, #0
	adds r0, #0xa0
	str r0, [sp]
	adds r1, r3, #0
	adds r1, #0xa4
	str r1, [sp, #4]
	adds r5, r3, #0
	adds r5, #0x38
	movs r6, #0xac
	lsls r6, r6, #6
	adds r4, r3, #0
	adds r4, #0x3c
_0808B122:
	cmp r2, #0
	bne _0808B130
	ldr r7, _0808B12C @ =0xFFFF4C00
	str r7, [r3, #0x38]
	b _0808B136
	.align 2, 0
_0808B12C: .4byte 0xFFFF4C00
_0808B130:
	lsls r0, r2, #3
	adds r0, r5, r0
	str r6, [r0]
_0808B136:
	lsls r0, r2, #3
	adds r0, r4, r0
	lsls r1, r2, #0xc
	movs r7, #0xe8
	lsls r7, r7, #5
	adds r1, r1, r7
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0808B122
	movs r0, #0
	strh r0, [r3, #0x12]
	movs r2, #0
	mov r5, ip
	movs r7, #0xa5
	lsls r7, r7, #8
	mov r4, r8
	movs r6, #0xe8
	lsls r6, r6, #5
_0808B160:
	lsls r1, r2, #3
	adds r0, r5, r1
	str r7, [r0]
	adds r1, r4, r1
	str r6, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _0808B160
	ldr r0, [r3, #0x38]
	movs r1, #0xd6
	lsls r1, r1, #7
	adds r0, r0, r1
	mov r2, sb
	str r0, [r2]
	movs r0, #0xe8
	lsls r0, r0, #5
	mov r7, sl
	str r0, [r7]
	movs r1, #0
	ldr r0, [sp]
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ldr r2, [sp, #4]
	str r0, [r2]
	str r1, [r3, #0x30]
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [r3, #0x34]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808B1B0
sub_808B1B0: @ 0x0808B1B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r3, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r3, #8]
	strh r0, [r3, #0x10]
	strh r0, [r3, #0xe]
	strh r0, [r3, #0xc]
	strh r0, [r3, #0xa]
	strb r1, [r3, #2]
	movs r2, #0
	adds r1, r3, #0
	adds r1, #0x14
	movs r4, #0
_0808B1D6:
	lsls r0, r2, #2
	adds r0, r1, r0
	str r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #6
	bls _0808B1D6
	movs r2, #0
	movs r0, #0x78
	adds r0, r0, r3
	mov ip, r0
	movs r1, #0x7c
	adds r1, r1, r3
	mov r8, r1
	movs r0, #0x90
	adds r0, r0, r3
	mov sb, r0
	movs r1, #0x94
	adds r1, r1, r3
	mov sl, r1
	adds r0, r3, #0
	adds r0, #0xa0
	str r0, [sp]
	adds r1, r3, #0
	adds r1, #0xa4
	str r1, [sp, #4]
	adds r5, r3, #0
	adds r5, #0x38
	movs r7, #0xac
	lsls r7, r7, #8
	adds r4, r3, #0
	adds r4, #0x3c
	movs r6, #0xe8
	lsls r6, r6, #5
_0808B21C:
	lsls r1, r2, #3
	adds r0, r5, r1
	str r7, [r0]
	adds r1, r4, r1
	str r6, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0808B21C
	movs r0, #0
	strh r0, [r3, #0x12]
	movs r2, #0
	mov r5, ip
	movs r7, #0xa5
	lsls r7, r7, #8
	mov r4, r8
	movs r6, #0xe8
	lsls r6, r6, #5
_0808B242:
	lsls r1, r2, #3
	adds r0, r5, r1
	str r7, [r0]
	adds r1, r4, r1
	str r6, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _0808B242
	movs r0, #0xa5
	lsls r0, r0, #8
	mov r1, sb
	str r0, [r1]
	movs r0, #0xe8
	lsls r0, r0, #5
	mov r1, sl
	str r0, [r1]
	ldr r0, _0808B290 @ =0xFFFF8800
	ldr r1, [sp]
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	ldr r1, [sp, #4]
	str r0, [r1]
	movs r0, #0xdf
	lsls r0, r0, #8
	str r0, [r3, #0x30]
	movs r0, #0xa0
	lsls r0, r0, #4
	str r0, [r3, #0x34]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808B290: .4byte 0xFFFF8800

	thumb_func_start sub_808B294
sub_808B294: @ 0x0808B294
	push {r4, r5, r6, r7, lr}
	ldr r7, _0808B350 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x10]
	ldr r6, _0808B354 @ =gBldRegs
	cmp r0, #0
	bne _0808B2E0
	ldr r2, _0808B358 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0808B35C @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0xe]
	movs r0, #1
	strh r0, [r4, #0x10]
_0808B2E0:
	adds r5, r6, #0
	ldr r0, _0808B360 @ =0x00003EFF
	strh r0, [r5]
	adds r0, r4, #0
	bl sub_808BEEC
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0808B2F8
	adds r0, r4, #0
	bl sub_808C008
_0808B2F8:
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CF00
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	cmp r0, #0x59
	ble _0808B336
	ldr r1, _0808B364 @ =gBgScrollRegs
	rsbs r0, r0, #0
	strh r0, [r1, #4]
_0808B336:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _0808B36C
	ldrh r0, [r4, #0xe]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	ldr r1, _0808B368 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #0xe]
	adds r0, r0, r3
	strh r0, [r4, #0xe]
	b _0808B38E
	.align 2, 0
_0808B350: .4byte gCurTask
_0808B354: .4byte gBldRegs
_0808B358: .4byte gDispCnt
_0808B35C: .4byte gWinRegs
_0808B360: .4byte 0x00003EFF
_0808B364: .4byte gBgScrollRegs
_0808B368: .4byte 0xFFFFFF00
_0808B36C:
	strh r0, [r6, #4]
	ldr r0, _0808B380 @ =0x00003FFF
	strh r0, [r6]
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0808B388
	ldr r1, [r7]
	ldr r0, _0808B384 @ =sub_808BAA8
	b _0808B38C
	.align 2, 0
_0808B380: .4byte 0x00003FFF
_0808B384: .4byte sub_808BAA8
_0808B388:
	ldr r1, [r7]
	ldr r0, _0808B394 @ =sub_808BCD8
_0808B38C:
	str r0, [r1, #8]
_0808B38E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808B394: .4byte sub_808BCD8

	thumb_func_start sub_808B398
sub_808B398: @ 0x0808B398
	push {r4, r5, r6, lr}
	ldr r5, _0808B438 @ =gCurTask
	ldr r0, [r5]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0808B3E0
	ldr r2, _0808B43C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0808B440 @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _0808B444 @ =gBldRegs
	ldr r0, _0808B448 @ =0x00003EFF
	strh r0, [r1]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0x10]
_0808B3E0:
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0808B3EC
	adds r0, r4, #0
	bl sub_808C08C
_0808B3EC:
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CF00
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	ldr r1, _0808B444 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _0808B44C
	ldrh r0, [r4, #0xe]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r2, [r4, #0xe]
	adds r0, r0, r2
	strh r0, [r4, #0xe]
	b _0808B4CC
	.align 2, 0
_0808B438: .4byte gCurTask
_0808B43C: .4byte gDispCnt
_0808B440: .4byte gWinRegs
_0808B444: .4byte gBldRegs
_0808B448: .4byte 0x00003EFF
_0808B44C:
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r0, _0808B478 @ =0x00003FFF
	strh r0, [r1]
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0808B4A2
	movs r3, #8
	ldrsh r1, [r4, r3]
	lsls r1, r1, #2
	ldr r2, _0808B47C @ =0x03000014
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _0808B48E
	cmp r0, #1
	bgt _0808B480
	cmp r0, #0
	beq _0808B486
	b _0808B4CC
	.align 2, 0
_0808B478: .4byte 0x00003FFF
_0808B47C: .4byte 0x03000014
_0808B480:
	cmp r0, #2
	beq _0808B496
	b _0808B4CC
_0808B486:
	movs r0, #1
	bl sub_8091D14
	b _0808B49A
_0808B48E:
	movs r0, #0
	bl sub_80961E4
	b _0808B49A
_0808B496:
	bl sub_8096850
_0808B49A:
	ldr r0, [r5]
	bl TaskDestroy
	b _0808B4CC
_0808B4A2:
	bl sub_8001E58
	ldr r1, _0808B4D4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0808B4D8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0808B4DC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0808B4E0 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0808B4E4 @ =gVramGraphicsCopyCursor
	ldr r0, _0808B4E8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	movs r1, #1
	bl LaunchChaoMenu
_0808B4CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808B4D4: .4byte 0x0000FFFF
_0808B4D8: .4byte gBackgroundsCopyQueueCursor
_0808B4DC: .4byte gBackgroundsCopyQueueIndex
_0808B4E0: .4byte gBgSpritesCount
_0808B4E4: .4byte gVramGraphicsCopyCursor
_0808B4E8: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_808B4EC
sub_808B4EC: @ 0x0808B4EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r6, _0808B598 @ =gBgCntRegs
	movs r0, #0
	mov r8, r0
	movs r4, #0
	ldr r0, _0808B59C @ =0x00000603
	strh r0, [r6]
	ldr r5, _0808B5A0 @ =gBgScrollRegs
	strh r4, [r5]
	strh r4, [r5, #2]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0808B5A4 @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _0808B5A8 @ =0x0000015D
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	movs r2, #0xab
	lsls r2, r2, #1
	adds r1, r7, r2
	mov r2, r8
	strb r2, [r1]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _0808B5AC @ =0x00005E06
	strh r0, [r6, #2]
	ldr r0, [r7, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r5, #4]
	ldr r0, [r7, #0x34]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r5, #6]
	adds r0, r7, #0
	adds r0, #0xec
	ldr r1, _0808B5B0 @ =0x06004000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0808B5B4 @ =0x0600F000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0xaf
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	movs r2, #0x8b
	lsls r2, r2, #1
	adds r1, r7, r2
	mov r2, r8
	strb r2, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808B598: .4byte gBgCntRegs
_0808B59C: .4byte 0x00000603
_0808B5A0: .4byte gBgScrollRegs
_0808B5A4: .4byte 0x06003000
_0808B5A8: .4byte 0x0000015D
_0808B5AC: .4byte 0x00005E06
_0808B5B0: .4byte 0x06004000
_0808B5B4: .4byte 0x0600F000

	thumb_func_start sub_808B5B8
sub_808B5B8: @ 0x0808B5B8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, _0808B638 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	ldr r1, _0808B63C @ =0x030000AC
	adds r0, r4, r1
	ldr r3, _0808B640 @ =gBgCntRegs
	movs r5, #0
	movs r2, #0
	ldr r1, _0808B644 @ =0x00001C8D
	strh r1, [r3, #4]
	ldr r1, _0808B648 @ =0x0600C000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _0808B64C @ =0x0600E000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	movs r1, #0xb3
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x10
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r1, _0808B650 @ =0x030000D6
	adds r4, r4, r1
	strb r5, [r4]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0x40
	str r0, [sp]
	ldr r0, _0808B654 @ =0x00002150
	str r0, [sp, #4]
	ldr r0, _0808B658 @ =gBgScrollRegs
	ldrh r0, [r0, #6]
	rsbs r0, r0, #0
	adds r0, #0x5c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _0808B65C @ =gBgAffineRegs
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
	ldr r1, [r6]
	ldr r0, _0808B660 @ =sub_808B9B4
	str r0, [r1, #8]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808B638: .4byte gCurTask
_0808B63C: .4byte 0x030000AC
_0808B640: .4byte gBgCntRegs
_0808B644: .4byte 0x00001C8D
_0808B648: .4byte 0x0600C000
_0808B64C: .4byte 0x0600E000
_0808B650: .4byte 0x030000D6
_0808B654: .4byte 0x00002150
_0808B658: .4byte gBgScrollRegs
_0808B65C: .4byte gBgAffineRegs
_0808B660: .4byte sub_808B9B4

	thumb_func_start sub_808B664
sub_808B664: @ 0x0808B664
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r2, _0808B69C @ =gLoadedSaveGame
	ldr r0, _0808B6A0 @ =0x00000366
	adds r2, r2, r0
	ldrb r0, [r2]
	strb r0, [r4]
	movs r1, #8
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r1, r1, r0
	ldrb r0, [r2]
	str r0, [r1]
	cmp r7, #0
	beq _0808B6A4
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r0, r4, r2
	b _0808B6A8
	.align 2, 0
_0808B69C: .4byte gLoadedSaveGame
_0808B6A0: .4byte 0x00000366
_0808B6A4:
	adds r0, r4, #0
	adds r0, #0xa8
_0808B6A8:
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	movs r5, #0
	adds r3, r4, #0
	adds r3, #0x38
	str r3, [sp, #0x20]
	adds r6, r4, #0
	adds r6, #0x3c
	str r6, [sp, #0x24]
	adds r0, r4, #0
	adds r0, #0xa0
	str r0, [sp, #0x18]
	adds r1, r4, #0
	adds r1, #0xa4
	str r1, [sp, #0x1c]
	adds r2, r4, #0
	adds r2, #0x90
	str r2, [sp, #0x10]
	adds r3, #0x5c
	str r3, [sp, #0x14]
	adds r6, #0x44
	str r6, [sp]
	subs r0, #0x1c
	str r0, [sp, #4]
	subs r1, #0x1c
	str r1, [sp, #8]
	subs r2, #4
	str r2, [sp, #0xc]
	ldr r3, _0808B72C @ =gUnknown_080D6960
_0808B6E2:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r6, #0xb6
	lsls r6, r6, #1
	adds r0, r0, r6
	adds r2, r4, r0
	ldr r0, [sp, #0x2c]
	str r0, [r2]
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r5, r1
	lsls r1, r1, #3
	adds r0, r3, #4
	adds r0, r1, r0
	ldr r0, [r0]
	lsls r0, r0, #5
	ldr r6, [sp, #0x2c]
	adds r6, r6, r0
	str r6, [sp, #0x2c]
	adds r1, r1, r3
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	cmp r5, #0
	bne _0808B730
	adds r0, #1
	b _0808B734
	.align 2, 0
_0808B72C: .4byte gUnknown_080D6960
_0808B730:
	movs r0, #0xc0
	lsls r0, r0, #1
_0808B734:
	strh r0, [r2, #0x14]
	movs r0, #0
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r2, #0x1c]
	movs r6, #0
	strb r6, [r2, #0x1f]
	ldr r0, _0808B99C @ =0x00043080
	mov sl, r0
	str r0, [r2, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	str r1, [r2, #0x20]
	lsls r1, r5, #3
	ldr r6, [sp, #0x20]
	adds r6, r6, r1
	ldr r0, [r6]
	mov ip, r0
	mov r6, ip
	asrs r6, r6, #8
	strh r6, [r2, #0x10]
	ldr r0, [sp, #0x24]
	adds r1, r0, r1
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	str r3, [sp, #0x28]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp, #0x28]
	cmp r5, #7
	bls _0808B6E2
	cmp r7, #0
	bne _0808B796
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	movs r2, #0xc8
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1]
_0808B796:
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r2, r4, r3
	cmp r7, #0
	bne _0808B7CE
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1]
	movs r6, #0xe0
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1]
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	strh r7, [r2, #0xe]
	strh r7, [r2, #0x16]
	mov r0, sb
	strb r0, [r2, #0x1c]
	strb r1, [r2, #0x1f]
	movs r0, #0x86
	lsls r0, r0, #0xb
	str r0, [r2, #8]
	mov r1, r8
	str r1, [r2, #0x20]
_0808B7CE:
	ldr r1, _0808B9A0 @ =gUnknown_080D6BD8
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r3, #1
	rsbs r3, r3, #0
	adds r5, r3, #0
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r1, [sp, #0x18]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r3, [sp, #0x1c]
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xab
	lsls r0, r0, #2
	adds r3, r4, r0
	cmp r7, #0
	bne _0808B83A
	adds r2, r4, #0
	adds r2, #0xa8
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, _0808B9A4 @ =gUnknown_080D6AE0
	ldr r1, [r0, #4]
	lsls r1, r1, #5
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0xc0
	strh r0, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	mov r1, sb
	strb r1, [r3, #0x1c]
	strb r6, [r3, #0x1f]
	mov r2, sl
	str r2, [r3, #8]
	mov r0, r8
	str r0, [r3, #0x20]
_0808B83A:
	ldr r1, _0808B9A4 @ =gUnknown_080D6AE0
	ldrh r0, [r1]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r3, #0x1a]
	ldrb r0, [r3, #0x1b]
	orrs r0, r5
	strb r0, [r3, #0x1b]
	ldr r1, [sp, #0x10]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r3, #0x10]
	ldr r2, [sp, #0x14]
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r3, #0xb5
	lsls r3, r3, #2
	adds r2, r4, r3
	cmp r7, #0
	bne _0808B892
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1]
	subs r3, #0xd4
	adds r0, r0, r3
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	strh r7, [r2, #0xe]
	strh r7, [r2, #0x16]
	mov r0, sb
	strb r0, [r2, #0x1c]
	strb r6, [r2, #0x1f]
	mov r1, sl
	str r1, [r2, #8]
	mov r3, r8
	str r3, [r2, #0x20]
_0808B892:
	ldr r1, _0808B9A8 @ =gUnknown_080D6AE8
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	orrs r0, r5
	strb r0, [r2, #0x1b]
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r4, #0x7c]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r2, r4, r0
	cmp r7, #0
	bne _0808B8F4
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	strh r7, [r2, #0xe]
	strh r7, [r2, #0x16]
	mov r0, sb
	strb r0, [r2, #0x1c]
	strb r6, [r2, #0x1f]
	mov r1, sl
	str r1, [r2, #8]
	mov r3, r8
	str r3, [r2, #0x20]
_0808B8F4:
	ldr r1, _0808B9AC @ =gUnknown_080D6B48
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	orrs r0, r5
	strb r0, [r2, #0x1b]
	ldr r1, [sp]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r3, [sp, #4]
	ldr r0, [r3]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc9
	lsls r0, r0, #2
	adds r3, r4, r0
	cmp r7, #0
	bne _0808B95A
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r0, [r1]
	str r0, [r3]
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	mov r0, sb
	strb r0, [r3, #0x1c]
	strb r6, [r3, #0x1f]
	mov r1, sl
	str r1, [r3, #8]
	mov r2, r8
	str r2, [r3, #0x20]
_0808B95A:
	ldr r1, _0808B9B0 @ =gUnknown_080D6BA8
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	ldrb r0, [r3, #0x1b]
	orrs r0, r5
	strb r0, [r3, #0x1b]
	ldr r6, [sp, #8]
	ldr r0, [r6]
	asrs r0, r0, #8
	strh r0, [r3, #0x10]
	ldr r1, [sp, #0xc]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808B99C: .4byte 0x00043080
_0808B9A0: .4byte gUnknown_080D6BD8
_0808B9A4: .4byte gUnknown_080D6AE0
_0808B9A8: .4byte gUnknown_080D6AE8
_0808B9AC: .4byte gUnknown_080D6B48
_0808B9B0: .4byte gUnknown_080D6BA8

	thumb_func_start sub_808B9B4
sub_808B9B4: @ 0x0808B9B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808BA08 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	adds r0, #0xa8
	adds r6, r1, r0
	ldr r7, _0808BA0C @ =gUnknown_080D7458
	ldr r1, _0808BA10 @ =gLoadedSaveGame + 0x4 @ <- playerName
	mov r8, r1
_0808B9D2:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xdd
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r4, r0
	ldr r0, [r6]
	str r0, [r2]
	ldr r1, [r7, #4]
	lsls r1, r1, #5
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	adds r3, r1, #0
	ldr r0, _0808BA14 @ =0x0000FFFF
	cmp r3, r0
	beq _0808BA2A
	cmp r3, #0xff
	bls _0808BA1C
	strb r1, [r2, #0x1a]
	ldr r0, _0808BA18 @ =gUnknown_080D7460
	ldrh r0, [r0]
	b _0808BA20
	.align 2, 0
_0808BA08: .4byte gCurTask
_0808BA0C: .4byte gUnknown_080D7458
_0808BA10: .4byte gLoadedSaveGame + 0x4
_0808BA14: .4byte 0x0000FFFF
_0808BA18: .4byte gUnknown_080D7460
_0808BA1C:
	strb r1, [r2, #0x1a]
	ldrh r0, [r7]
_0808BA20:
	strh r0, [r2, #0xc]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	b _0808BA32
_0808BA2A:
	ldrh r0, [r7]
	movs r1, #0
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
_0808BA32:
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r1, #0
	strh r0, [r2, #0x10]
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	movs r0, #0x80
	strh r0, [r2, #0x14]
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r0, #9
	strb r0, [r2, #0x1f]
	ldr r0, _0808BA9C @ =0x00043080
	str r0, [r2, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _0808B9D2
	adds r0, r4, #0
	movs r1, #0
	bl sub_808B664
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0808BA8A
	adds r0, r4, #0
	bl Options_LoadSelectedMenu
_0808BA8A:
	ldr r0, _0808BAA0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808BAA4 @ =sub_808B294
	str r0, [r1, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808BA9C: .4byte 0x00043080
_0808BAA0: .4byte gCurTask
_0808BAA4: .4byte sub_808B294

	thumb_func_start sub_808BAA8
sub_808BAA8: @ 0x0808BAA8
	push {r4, r5, lr}
	ldr r5, _0808BB10 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808BEEC
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CF00
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	adds r0, r4, #0
	bl sub_808C008
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0808BB1C
	movs r2, #1
	strh r2, [r4, #0xc]
	ldr r1, _0808BB14 @ =gBldRegs
	movs r0, #0xfd
	lsls r0, r0, #6
	strh r0, [r1]
	strh r2, [r1, #2]
	ldr r1, [r5]
	ldr r0, _0808BB18 @ =sub_808BD90
	str r0, [r1, #8]
	b _0808BB2A
	.align 2, 0
_0808BB10: .4byte gCurTask
_0808BB14: .4byte gBldRegs
_0808BB18: .4byte sub_808BD90
_0808BB1C:
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	cmp r0, #0x59
	ble _0808BB2A
	ldr r1, _0808BB30 @ =gBgScrollRegs
	rsbs r0, r0, #0
	strh r0, [r1, #4]
_0808BB2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808BB30: .4byte gBgScrollRegs

	thumb_func_start sub_808BB34
sub_808BB34: @ 0x0808BB34
	push {r4, r5, r6, lr}
	ldr r6, _0808BB98 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r5, _0808BB9C @ =gBldRegs
	movs r0, #0xf
	strh r0, [r5, #2]
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	adds r0, r4, #0
	bl sub_808C08C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0808BBA4
	movs r1, #1
	strh r1, [r4, #0xc]
	movs r0, #0xfd
	lsls r0, r0, #6
	strh r0, [r5]
	strh r1, [r5, #2]
	movs r0, #0
	strb r0, [r4, #3]
	ldr r1, [r6]
	ldr r0, _0808BBA0 @ =sub_808B398
	str r0, [r1, #8]
	b _0808BBB2
	.align 2, 0
_0808BB98: .4byte gCurTask
_0808BB9C: .4byte gBldRegs
_0808BBA0: .4byte sub_808B398
_0808BBA4:
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	cmp r0, #0x6e
	ble _0808BBB2
	ldr r1, _0808BBB8 @ =gBgScrollRegs
	rsbs r0, r0, #0
	strh r0, [r1, #4]
_0808BBB2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808BBB8: .4byte gBgScrollRegs

	thumb_func_start sub_808BBBC
sub_808BBBC: @ 0x0808BBBC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _0808BC88 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_808BEEC
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	ldr r5, _0808BC8C @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #0x28
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0808BC0C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
_0808BC0C:
	adds r0, r4, #0
	bl sub_808C1BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808BCC4
	movs r1, #0
	mov r8, r1
	movs r5, #0
	strh r5, [r4, #0xc]
	movs r2, #8
	ldrsh r0, [r4, r2]
	cmp r0, #5
	bne _0808BC70
	ldr r1, _0808BC90 @ =0x030000EC
	adds r0, r6, r1
	ldr r3, _0808BC94 @ =gDispCnt
	ldrh r2, [r3]
	ldr r1, _0808BC98 @ =0x0000FBFF
	ands r1, r2
	strh r1, [r3]
	ldr r2, _0808BC9C @ =gBgCntRegs
	ldr r1, _0808BCA0 @ =0x00005E06
	strh r1, [r2, #2]
	ldr r1, _0808BCA4 @ =0x06004000
	str r1, [r0, #4]
	strh r5, [r0, #0xa]
	ldr r1, _0808BCA8 @ =0x0600F000
	str r1, [r0, #0xc]
	strh r5, [r0, #0x18]
	strh r5, [r0, #0x1a]
	movs r1, #0xaf
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r5, [r0, #0x1e]
	strh r5, [r0, #0x20]
	strh r5, [r0, #0x22]
	strh r5, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	ldr r2, _0808BCAC @ =0x03000116
	adds r1, r6, r2
	mov r2, r8
	strb r2, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
_0808BC70:
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #6
	bne _0808BCB8
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0808BCB4
	ldr r1, [r7]
	ldr r0, _0808BCB0 @ =sub_808CA9C
	str r0, [r1, #8]
	b _0808BCCC
	.align 2, 0
_0808BC88: .4byte gCurTask
_0808BC8C: .4byte gBgScrollRegs
_0808BC90: .4byte 0x030000EC
_0808BC94: .4byte gDispCnt
_0808BC98: .4byte 0x0000FBFF
_0808BC9C: .4byte gBgCntRegs
_0808BCA0: .4byte 0x00005E06
_0808BCA4: .4byte 0x06004000
_0808BCA8: .4byte 0x0600F000
_0808BCAC: .4byte 0x03000116
_0808BCB0: .4byte sub_808CA9C
_0808BCB4:
	mov r2, r8
	strb r2, [r4, #3]
_0808BCB8:
	ldr r1, [r7]
	ldr r0, _0808BCC0 @ =sub_808BD90
	str r0, [r1, #8]
	b _0808BCCC
	.align 2, 0
_0808BCC0: .4byte sub_808BD90
_0808BCC4:
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r5, #4]
_0808BCCC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808BCD8
sub_808BCD8: @ 0x0808BCD8
	push {r4, r5, lr}
	ldr r0, _0808BD48 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_808BEEC
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	adds r0, r4, #0
	bl sub_808BFA0
	cmp r0, #1
	bne _0808BD28
	ldr r0, _0808BD4C @ =0x030000A0
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
_0808BD28:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0808BD54
	ldr r0, _0808BD50 @ =gBgScrollRegs
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0808BD54
	movs r0, #1
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	bl Options_LoadSelectedMenu
	b _0808BD82
	.align 2, 0
_0808BD48: .4byte gCurTask
_0808BD4C: .4byte 0x030000A0
_0808BD50: .4byte gBgScrollRegs
_0808BD54:
	ldr r1, _0808BD88 @ =gUnknown_080D6E38
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	cmp r0, #1
	beq _0808BD82
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #6
	bgt _0808BD78
	adds r0, r4, #0
	bl sub_808C250
_0808BD78:
	ldr r1, _0808BD8C @ =gBgScrollRegs
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r1, #4]
_0808BD82:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808BD88: .4byte gUnknown_080D6E38
_0808BD8C: .4byte gBgScrollRegs

	thumb_func_start sub_808BD90
sub_808BD90: @ 0x0808BD90
	push {r4, r5, r6, r7, lr}
	ldr r6, _0808BE14 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_808BEEC
	adds r0, r4, #0
	bl sub_808C2E4
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CF00
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	adds r0, r4, #0
	bl sub_808BFA0
	cmp r0, #1
	bne _0808BDEC
	ldr r0, _0808BE18 @ =0x030000A0
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
_0808BDEC:
	ldr r0, _0808BE1C @ =gPressedKeys
	ldrh r1, [r0]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0808BE24
	movs r0, #0x6a      @ SE_SELECT
	bl m4aSongNumStart
	movs r0, #0
	strh r0, [r4, #0xc]
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #7
	beq _0808BE32
	ldr r1, [r6]
	ldr r0, _0808BE20 @ =sub_808BCD8
	str r0, [r1, #8]
	b _0808BEDE
	.align 2, 0
_0808BE14: .4byte gCurTask
_0808BE18: .4byte 0x030000A0
_0808BE1C: .4byte gPressedKeys
_0808BE20: .4byte sub_808BCD8
_0808BE24:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808BE44
	movs r0, #0x6b      @ SE_ABORT
	bl m4aSongNumStart
_0808BE32:
	adds r0, r4, #0
	bl sub_808CFC4
	ldr r1, [r6]
	ldr r0, _0808BE40 @ =sub_808BB34
	str r0, [r1, #8]
	b _0808BEDE
	.align 2, 0
_0808BE40: .4byte sub_808BB34
_0808BE44:
	ldr r5, _0808BE74 @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0808BED4
	movs r0, #0x6c      @ SE_DPAD_SELECT
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0808BE9C
	ldrh r2, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _0808BE78
	movs r0, #7
	b _0808BECE
	.align 2, 0
_0808BE74: .4byte gRepeatedKeys
_0808BE78:
	subs r0, r2, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bne _0808BED0
	ldr r0, _0808BE98 @ =gLoadedSaveGame
	adds r0, #0x33
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _0808BED0
	subs r0, r2, #2
	b _0808BECE
	.align 2, 0
_0808BE98: .4byte gLoadedSaveGame
_0808BE9C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808BED0
	ldrh r1, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #7
	bne _0808BEB2
	strh r2, [r4, #8]
	b _0808BED0
_0808BEB2:
	adds r2, r1, #1
	strh r2, [r4, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bne _0808BED0
	ldr r0, _0808BEE4 @ =gLoadedSaveGame
	adds r0, #0x33
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _0808BED0
	adds r0, r2, #1
_0808BECE:
	strh r0, [r4, #8]
_0808BED0:
	movs r0, #0
	strh r0, [r4, #0xc]
_0808BED4:
	ldr r1, _0808BEE8 @ =gBgScrollRegs
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r1, #4]
_0808BEDE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808BEE4: .4byte gLoadedSaveGame
_0808BEE8: .4byte gBgScrollRegs

	thumb_func_start sub_808BEEC
sub_808BEEC: @ 0x0808BEEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	movs r5, #0
	ldrb r3, [r0, #8]
	ldr r2, _0808BF6C @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0808BF70 @ =gHBlankCopyTarget
	ldr r0, _0808BF74 @ =0x04000052
	str r0, [r1]
	ldr r1, _0808BF78 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0808BF7C @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
	mov r0, ip
	strh r5, [r0, #0x12]
	movs r4, #0
	ldr r1, _0808BF80 @ =gUnknown_080D6E54
	mov r8, r1
	lsls r3, r3, #4
	mov sb, r3
_0808BF22:
	lsls r0, r5, #3
	mov r1, ip
	adds r1, #0x3c
	adds r1, r1, r0
	ldr r0, [r1]
	asrs r0, r0, #8
	cmp r4, r0
	blt _0808BF84
	adds r0, #0x10
	cmp r4, r0
	bge _0808BF84
	movs r1, #0
	adds r5, #1
	ldr r6, _0808BF80 @ =gUnknown_080D6E54
	mov r3, sb
_0808BF40:
	mov r7, ip
	ldrh r0, [r7, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r3
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r1, #0xf
	bls _0808BF40
	ldrh r0, [r7, #0x12]
	adds r0, #1
	strh r0, [r7, #0x12]
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	b _0808BF8A
	.align 2, 0
_0808BF6C: .4byte gFlags
_0808BF70: .4byte gHBlankCopyTarget
_0808BF74: .4byte 0x04000052
_0808BF78: .4byte gHBlankCopySize
_0808BF7C: .4byte gBgOffsetsHBlankPrimary
_0808BF80: .4byte gUnknown_080D6E54
_0808BF84:
	mov r0, r8
	strh r0, [r2]
	adds r2, #2
_0808BF8A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x9f
	bls _0808BF22
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808BFA0
sub_808BFA0: @ 0x0808BFA0
	push {r4, lr}
	adds r3, r0, #0
	ldrb r4, [r3, #2]
	adds r2, r3, #0
	adds r2, #0xa0
	ldr r1, _0808BFDC @ =gUnknown_080D6ED4
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	cmp r4, #0
	bne _0808BFC2
	ldr r0, _0808BFE0 @ =0x000009FF
	cmp r1, r0
	bgt _0808BFD2
_0808BFC2:
	cmp r4, #1
	bne _0808BFE8
	adds r0, r3, #0
	adds r0, #0xa0
	ldr r1, [r0]
	ldr r0, _0808BFE4 @ =0xFFFFF600
	cmp r1, r0
	bgt _0808BFE8
_0808BFD2:
	ldrb r0, [r3, #2]
	adds r0, #1
	strb r0, [r3, #2]
	b _0808BFFE
	.align 2, 0
_0808BFDC: .4byte gUnknown_080D6ED4
_0808BFE0: .4byte 0x000009FF
_0808BFE4: .4byte 0xFFFFF600
_0808BFE8:
	cmp r4, #2
	bne _0808BFFE
	adds r2, r3, #0
	adds r2, #0xa0
	ldr r0, [r2]
	cmp r0, #0
	ble _0808BFFE
	movs r0, #0
	str r0, [r2]
	movs r0, #1
	b _0808C000
_0808BFFE:
	movs r0, #0
_0808C000:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_808C008
sub_808C008: @ 0x0808C008
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r6, #0
	movs r5, #0
_0808C010:
	mov r1, ip
	movs r2, #8
	ldrsh r0, [r1, r2]
	movs r2, #0x2b
	cmp r5, r0
	bne _0808C01E
	movs r2, #0x21
_0808C01E:
	lsls r4, r5, #3
	mov r0, ip
	adds r0, #0x38
	adds r1, r0, r4
	lsls r2, r2, #8
	ldr r3, [r1]
	adds r7, r0, #0
	cmp r3, r2
	bls _0808C03C
	ldr r2, _0808C038 @ =0xFFFFF800
	adds r0, r3, r2
	str r0, [r1]
	b _0808C064
	.align 2, 0
_0808C038: .4byte 0xFFFFF800
_0808C03C:
	str r2, [r1]
	mov r0, ip
	adds r0, #0x3c
	adds r2, r0, r4
	lsls r0, r5, #0xc
	movs r3, #0xe8
	lsls r3, r3, #5
	adds r0, r0, r3
	ldr r1, [r2]
	cmp r1, r0
	bge _0808C05C
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r1, r3
	str r0, [r2]
	b _0808C064
_0808C05C:
	str r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0808C064:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0808C010
	mov r1, ip
	movs r2, #8
	ldrsh r0, [r1, r2]
	lsls r0, r0, #3
	adds r0, r7, r0
	ldr r0, [r0]
	movs r3, #0xb4
	lsls r3, r3, #8
	adds r0, r0, r3
	str r0, [r1, #0x30]
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_808C08C
sub_808C08C: @ 0x0808C08C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	movs r0, #0
	mov sb, r0
	mov r1, ip
	ldrh r2, [r1, #8]
	movs r3, #8
	ldrsh r0, [r1, r3]
	cmp r0, #5
	ble _0808C0C4
	ldr r0, _0808C0C0 @ =gLoadedSaveGame
	adds r0, #0x33
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0808C0C4
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	b _0808C0CA
	.align 2, 0
_0808C0C0: .4byte gLoadedSaveGame
_0808C0C4:
	mov r4, ip
	ldrb r4, [r4, #8]
	mov r8, r4
_0808C0CA:
	movs r5, #0
	mov r0, r8
	lsls r0, r0, #3
	mov sl, r0
	mov r6, ip
	adds r6, #0x3c
	adds r4, r6, r0
_0808C0D8:
	lsls r0, r5, #3
	adds r3, r6, r0
	ldr r1, [r3]
	ldr r2, [r4]
	adds r7, r0, #0
	cmp r1, r2
	bgt _0808C112
	cmp r1, r2
	beq _0808C0FA
	mov r2, r8
	subs r0, r2, r5
	lsls r0, r0, #9
	adds r0, r1, r0
	str r0, [r3]
	ldr r1, [r4]
	cmp r0, r1
	blt _0808C136
_0808C0FA:
	ldr r1, [r4]
	str r1, [r3]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, [r4]
	cmp r1, r0
	blt _0808C136
	cmp r1, r0
	beq _0808C126
_0808C112:
	adds r2, r6, r7
	mov r3, r8
	subs r0, r5, r3
	lsls r0, r0, #9
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r2]
	ldr r0, [r4]
	cmp r1, r0
	bgt _0808C136
_0808C126:
	adds r1, r6, r7
	ldr r0, [r4]
	str r0, [r1]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_0808C136:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0808C0D8
	mov r4, sb
	cmp r4, #0x10
	bne _0808C178
	mov r3, ip
	adds r3, #0x38
	mov r0, sl
	adds r1, r3, r0
	ldr r2, [r1]
	ldr r0, _0808C1B0 @ =0x0000B3FF
	cmp r2, r0
	bgt _0808C162
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r2, r4
	str r0, [r1]
	movs r0, #0xf
	mov sb, r0
_0808C162:
	movs r5, #0
	adds r2, r1, #0
_0808C166:
	lsls r0, r5, #3
	adds r0, r3, r0
	ldr r1, [r2]
	str r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0808C166
_0808C178:
	mov r2, ip
	ldr r1, [r2, #0x30]
	ldr r0, _0808C1B4 @ =0x0000DEFF
	cmp r1, r0
	bgt _0808C192
	mov r0, ip
	adds r0, #0x38
	add r0, sl
	ldr r0, [r0]
	movs r3, #0xb4
	lsls r3, r3, #8
	adds r0, r0, r3
	str r0, [r2, #0x30]
_0808C192:
	mov r4, ip
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	ldr r1, _0808C1B8 @ =gBgScrollRegs
	strh r0, [r1, #4]
	mov r2, sb
	lsrs r0, r2, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808C1B0: .4byte 0x0000B3FF
_0808C1B4: .4byte 0x0000DEFF
_0808C1B8: .4byte gBgScrollRegs

	thumb_func_start sub_808C1BC
sub_808C1BC: @ 0x0808C1BC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r6, #0
	ldrh r0, [r3, #0xc]
	cmp r0, #0
	bne _0808C1FC
	movs r1, #8
	ldrsh r0, [r3, r1]
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0x38
	adds r4, r1, r0
	ldr r2, [r4]
	ldr r0, _0808C1E4 @ =0x000025FF
	adds r5, r1, #0
	cmp r2, r0
	bgt _0808C1E8
	movs r1, #0xa0
	lsls r1, r1, #5
	b _0808C1F2
	.align 2, 0
_0808C1E4: .4byte 0x000025FF
_0808C1E8:
	ldr r0, _0808C1F8 @ =0x00002EFF
	cmp r2, r0
	bgt _0808C1FC
	movs r1, #0x80
	lsls r1, r1, #4
_0808C1F2:
	adds r0, r2, r1
	str r0, [r4]
	b _0808C234
	.align 2, 0
_0808C1F8: .4byte 0x00002EFF
_0808C1FC:
	movs r2, #8
	ldrsh r0, [r3, r2]
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0x38
	adds r2, r1, r0
	ldr r0, [r2]
	movs r4, #0xac
	lsls r4, r4, #6
	adds r5, r1, #0
	cmp r0, r4
	ble _0808C230
	movs r0, #1
	strh r0, [r3, #0xc]
	movs r0, #8
	ldrsh r1, [r3, r0]
	lsls r1, r1, #3
	adds r1, r5, r1
	ldr r0, [r1]
	ldr r2, _0808C22C @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r1]
	b _0808C234
	.align 2, 0
_0808C22C: .4byte 0xFFFFF800
_0808C230:
	movs r6, #1
	str r4, [r2]
_0808C234:
	movs r1, #8
	ldrsh r0, [r3, r1]
	lsls r0, r0, #3
	adds r0, r5, r0
	ldr r0, [r0]
	movs r2, #0xb4
	lsls r2, r2, #8
	adds r0, r0, r2
	str r0, [r3, #0x30]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_808C250
sub_808C250: @ 0x0808C250
	push {r4, lr}
	mov ip, r0
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	bne _0808C27C
	mov r1, ip
	movs r2, #8
	ldrsh r0, [r1, r2]
	lsls r0, r0, #3
	adds r1, #0x38
	adds r3, r1, r0
	ldr r2, [r3]
	ldr r0, _0808C274 @ =0xFFFF4600
	adds r4, r1, #0
	cmp r2, r0
	ble _0808C27C
	ldr r1, _0808C278 @ =0xFFFFEC00
	b _0808C2BE
	.align 2, 0
_0808C274: .4byte 0xFFFF4600
_0808C278: .4byte 0xFFFFEC00
_0808C27C:
	mov r2, ip
	movs r1, #8
	ldrsh r0, [r2, r1]
	lsls r0, r0, #3
	mov r1, ip
	adds r1, #0x38
	adds r3, r1, r0
	ldr r2, [r3]
	ldr r0, _0808C2B4 @ =0xFFFF4F00
	adds r4, r1, #0
	cmp r2, r0
	bgt _0808C2BC
	ldr r0, _0808C2B8 @ =0xFFFF4C00
	cmp r2, r0
	bge _0808C2C0
	movs r0, #1
	mov r2, ip
	strh r0, [r2, #0xc]
	movs r0, #8
	ldrsh r1, [r2, r0]
	lsls r1, r1, #3
	adds r1, r4, r1
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	b _0808C2C2
	.align 2, 0
_0808C2B4: .4byte 0xFFFF4F00
_0808C2B8: .4byte 0xFFFF4C00
_0808C2BC:
	ldr r1, _0808C2E0 @ =0xFFFFFF00
_0808C2BE:
	adds r0, r2, r1
_0808C2C0:
	str r0, [r3]
_0808C2C2:
	mov r1, ip
	movs r2, #8
	ldrsh r0, [r1, r2]
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0xb4
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r2, ip
	str r0, [r2, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808C2E0: .4byte 0xFFFFFF00

	thumb_func_start sub_808C2E4
sub_808C2E4: @ 0x0808C2E4
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldrh r0, [r3, #0xc]
	cmp r0, #0
	bne _0808C310
	movs r1, #8
	ldrsh r0, [r3, r1]
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0x38
	adds r4, r1, r0
	ldr r2, [r4]
	movs r0, #0xe0
	lsls r0, r0, #5
	adds r5, r1, #0
	cmp r2, r0
	ble _0808C310
	ldr r1, _0808C30C @ =0xFFFFFD00
	adds r0, r2, r1
	b _0808C348
	.align 2, 0
_0808C30C: .4byte 0xFFFFFD00
_0808C310:
	movs r2, #8
	ldrsh r0, [r3, r2]
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0x38
	adds r4, r1, r0
	ldr r2, [r4]
	ldr r0, _0808C340 @ =0x000020FF
	adds r5, r1, #0
	cmp r2, r0
	bgt _0808C344
	movs r0, #1
	strh r0, [r3, #0xc]
	movs r0, #8
	ldrsh r1, [r3, r0]
	lsls r1, r1, #3
	adds r1, r5, r1
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1]
	b _0808C34A
	.align 2, 0
_0808C340: .4byte 0x000020FF
_0808C344:
	movs r0, #0x84
	lsls r0, r0, #6
_0808C348:
	str r0, [r4]
_0808C34A:
	movs r2, #0
	adds r4, r5, #0
	ldr r7, _0808C38C @ =0x00002AFF
	movs r6, #0x80
	lsls r6, r6, #2
_0808C354:
	movs r1, #8
	ldrsh r0, [r3, r1]
	cmp r2, r0
	beq _0808C36A
	lsls r0, r2, #3
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, r7
	bgt _0808C36A
	adds r0, r0, r6
	str r0, [r1]
_0808C36A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0808C354
	movs r2, #8
	ldrsh r0, [r3, r2]
	lsls r0, r0, #3
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, #0xb4
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r3, #0x30]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808C38C: .4byte 0x00002AFF

	thumb_func_start sub_808C390
sub_808C390: @ 0x0808C390
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0808C3A0
	strh r0, [r4, #8]
	strh r0, [r4, #0xc]
	b _0808C400
_0808C3A0:
	ldr r0, _0808C3E8 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r5, [r0, r1]
	adds r2, r0, #0
	cmp r5, #0
	bne _0808C414
	ldr r0, _0808C3EC @ =gPressedKeys
	ldrh r1, [r0]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0808C414
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r1, #8
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #2
	bgt _0808C3FC
	movs r0, #1
	strb r0, [r4, #3]
	ldr r1, _0808C3F0 @ =gBldRegs
	movs r0, #0xfd
	lsls r0, r0, #6
	strh r0, [r1]
	strh r6, [r1, #2]
	ldr r0, _0808C3F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C3F8 @ =sub_808B398
	b _0808C406
	.align 2, 0
_0808C3E8: .4byte gBgScrollRegs
_0808C3EC: .4byte gPressedKeys
_0808C3F0: .4byte gBldRegs
_0808C3F4: .4byte gCurTask
_0808C3F8: .4byte sub_808B398
_0808C3FC:
	strh r5, [r4, #8]
	strh r5, [r4, #0xc]
_0808C400:
	ldr r0, _0808C40C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C410 @ =sub_808BBBC
_0808C406:
	str r0, [r1, #8]
	movs r0, #1
	b _0808C41E
	.align 2, 0
_0808C40C: .4byte gCurTask
_0808C410: .4byte sub_808BBBC
_0808C414:
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r2, #4]
	movs r0, #0
_0808C41E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_808C424
sub_808C424: @ 0x0808C424
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0808C454 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808C458
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r1, #8
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r1, r1, r0
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	str r0, [r1]
	movs r0, #0
	strh r0, [r4, #0xc]
	b _0808C474
	.align 2, 0
_0808C454: .4byte gPressedKeys
_0808C458:
	ldr r0, _0808C480 @ =gBgScrollRegs
	movs r2, #4
	ldrsh r5, [r0, r2]
	adds r6, r0, #0
	cmp r5, #0
	bne _0808C504
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808C48C
	movs r0, #0x6a
	bl m4aSongNumStart
	strh r5, [r4, #0xc]
_0808C474:
	ldr r0, _0808C484 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C488 @ =sub_808BBBC
	str r0, [r1, #8]
	movs r0, #1
	b _0808C50E
	.align 2, 0
_0808C480: .4byte gBgScrollRegs
_0808C484: .4byte gCurTask
_0808C488: .4byte sub_808BBBC
_0808C48C:
	ldr r5, _0808C4C8 @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0808C504
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808C4D4
	movs r0, #8
	ldrsh r3, [r4, r0]
	lsls r1, r3, #2
	adds r0, r4, #0
	adds r0, #0x14
	adds r2, r0, r1
	ldr r0, [r2]
	cmp r0, #0
	bne _0808C4D0
	ldr r0, _0808C4CC @ =gUnknown_080D6C08
	lsls r1, r3, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	b _0808C502
	.align 2, 0
_0808C4C8: .4byte gRepeatedKeys
_0808C4CC: .4byte gUnknown_080D6C08
_0808C4D0:
	subs r0, #1
	b _0808C502
_0808C4D4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808C504
	movs r2, #8
	ldrsh r1, [r4, r2]
	lsls r2, r1, #2
	adds r0, r4, #0
	adds r0, #0x14
	adds r2, r0, r2
	ldr r0, _0808C4FC @ =gUnknown_080D6C08
	lsls r1, r1, #1
	adds r1, r1, r0
	ldr r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808C500
	str r3, [r2]
	b _0808C504
	.align 2, 0
_0808C4FC: .4byte gUnknown_080D6C08
_0808C500:
	adds r0, #1
_0808C502:
	str r0, [r2]
_0808C504:
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r6, #4]
	movs r0, #0
_0808C50E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_808C514
sub_808C514: @ 0x0808C514
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0808C578 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r5, [r0, r1]
	adds r3, r0, #0
	ldr r2, _0808C57C @ =gPressedKeys
	cmp r5, #0
	bne _0808C588
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0808C588
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808C588
	movs r0, #0x6a
	bl m4aSongNumStart
	strh r5, [r4, #0xc]
	ldr r0, _0808C580 @ =gLoadedSaveGame
	ldr r2, _0808C584 @ =0x00000366
	adds r5, r0, r2
	ldrb r1, [r5]
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	adds r3, r4, #0
	adds r3, #0x14
	adds r0, r3, r0
	ldr r2, [r0]
	cmp r1, r2
	beq _0808C570
	strb r2, [r5]
	movs r1, #8
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	adds r0, r3, r0
	ldr r0, [r0]
	strh r0, [r4, #0xa]
	strb r2, [r4]
	adds r0, r4, #0
	movs r1, #1
	bl sub_808B664
_0808C570:
	movs r0, #0
	strb r0, [r4, #6]
	b _0808C5BA
	.align 2, 0
_0808C578: .4byte gBgScrollRegs
_0808C57C: .4byte gPressedKeys
_0808C580: .4byte gLoadedSaveGame
_0808C584: .4byte 0x00000366
_0808C588:
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0808C59E
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r3, #4]
	movs r0, #0
	b _0808C5C4
_0808C59E:
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r1, r1, r0
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	str r0, [r1]
	movs r0, #0
	strh r0, [r4, #0xc]
_0808C5BA:
	ldr r0, _0808C5CC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C5D0 @ =sub_808BBBC
	str r0, [r1, #8]
	movs r0, #1
_0808C5C4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0808C5CC: .4byte gCurTask
_0808C5D0: .4byte sub_808BBBC

	thumb_func_start sub_808C5D4
sub_808C5D4: @ 0x0808C5D4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0808C610 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808C620
	movs r0, #0x6b
	bl m4aSongNumStart
	ldrb r2, [r4, #3]
	cmp r2, #0
	bne _0808C61C
	movs r1, #8
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r1, r1, r0
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	str r0, [r1]
	strh r2, [r4, #0xc]
	ldr r0, _0808C614 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C618 @ =sub_808BBBC
	str r0, [r1, #8]
	movs r0, #1
	b _0808C6F4
	.align 2, 0
_0808C610: .4byte gPressedKeys
_0808C614: .4byte gCurTask
_0808C618: .4byte sub_808BBBC
_0808C61C:
	movs r0, #0
	strb r0, [r4, #3]
_0808C620:
	ldr r6, _0808C684 @ =gBgScrollRegs
	movs r0, #4
	ldrsh r5, [r6, r0]
	cmp r5, #0
	bne _0808C6E8
	ldr r0, _0808C688 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808C63E
	movs r0, #0x6a
	bl m4aSongNumStart
	strb r5, [r4, #3]
_0808C63E:
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _0808C6E8
	ldr r5, _0808C68C @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0808C6C8
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808C698
	movs r0, #8
	ldrsh r3, [r4, r0]
	lsls r1, r3, #2
	adds r0, r4, #0
	adds r0, #0x14
	adds r2, r0, r1
	ldr r0, [r2]
	cmp r0, #0
	bne _0808C694
	ldr r0, _0808C690 @ =gUnknown_080D6C08
	lsls r1, r3, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	b _0808C6C6
	.align 2, 0
_0808C684: .4byte gBgScrollRegs
_0808C688: .4byte gPressedKeys
_0808C68C: .4byte gRepeatedKeys
_0808C690: .4byte gUnknown_080D6C08
_0808C694:
	subs r0, #1
	b _0808C6C6
_0808C698:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808C6C8
	movs r0, #8
	ldrsh r1, [r4, r0]
	lsls r2, r1, #2
	adds r0, r4, #0
	adds r0, #0x14
	adds r2, r0, r2
	ldr r0, _0808C6C0 @ =gUnknown_080D6C08
	lsls r1, r1, #1
	adds r1, r1, r0
	ldr r0, [r2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808C6C4
	str r3, [r2]
	b _0808C6C8
	.align 2, 0
_0808C6C0: .4byte gUnknown_080D6C08
_0808C6C4:
	adds r0, #1
_0808C6C6:
	str r0, [r2]
_0808C6C8:
	ldr r0, _0808C6FC @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0808C6E8
	ldr r0, _0808C700 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0808C6E8
	movs r0, #0x6c
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4, #3]
_0808C6E8:
	ldr r1, _0808C6FC @ =gBgScrollRegs
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r1, #4]
	movs r0, #0
_0808C6F4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808C6FC: .4byte gBgScrollRegs
_0808C700: .4byte gRepeatedKeys

	thumb_func_start sub_808C704
sub_808C704: @ 0x0808C704
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0808C73C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808C748
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r2, #0
	strb r2, [r4, #3]
	movs r1, #8
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r1, r1, r0
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	str r0, [r1]
	strh r2, [r4, #0xc]
	ldr r0, _0808C740 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C744 @ =sub_808BBBC
	b _0808C7CA
	.align 2, 0
_0808C73C: .4byte gPressedKeys
_0808C740: .4byte gCurTask
_0808C744: .4byte sub_808BBBC
_0808C748:
	ldr r0, _0808C78C @ =gBgScrollRegs
	movs r2, #4
	ldrsh r5, [r0, r2]
	cmp r5, #0
	bne _0808C7AA
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808C7AA
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r3, #8
	ldrsh r0, [r4, r3]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0808C798
	strb r5, [r4, #3]
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r3, #0xa
	ldrsh r1, [r4, r3]
	str r1, [r0]
	strh r5, [r4, #0xc]
	ldr r0, _0808C790 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C794 @ =sub_808BBBC
	b _0808C7CA
	.align 2, 0
_0808C78C: .4byte gBgScrollRegs
_0808C790: .4byte gCurTask
_0808C794: .4byte sub_808BBBC
_0808C798:
	ldrb r0, [r4, #3]
	adds r0, #1
	strb r0, [r4, #3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0808C7AA
	movs r0, #1
	strb r0, [r4, #5]
_0808C7AA:
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0808C7C4
	ldr r1, _0808C7C0 @ =gBgScrollRegs
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r1, #4]
	movs r0, #0
	b _0808C7CE
	.align 2, 0
_0808C7C0: .4byte gBgScrollRegs
_0808C7C4:
	ldr r0, _0808C7D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808C7D8 @ =sub_808C9B0
_0808C7CA:
	str r0, [r1, #8]
	movs r0, #1
_0808C7CE:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0808C7D4: .4byte gCurTask
_0808C7D8: .4byte sub_808C9B0

	thumb_func_start Options_LoadSelectedMenu
Options_LoadSelectedMenu: @ 0x0808C7DC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r4, [r5, #6]
	cmp r4, #0
	bne _0808C8D6
	movs r0, #8
	ldrsh r6, [r5, r0]
	cmp r6, #6
	bgt _0808C8A4
	strb r4, [r5, #3]
	adds r0, r6, #0
	lsls r0, r0, #2
	adds r7, r5, #0
	adds r7, #0x14
	adds r0, r7, r0
	ldr r0, [r0]
	strh r0, [r5, #0xa]
	cmp r6, #5
	bne _0808C84E
	adds r0, r5, #0
	adds r0, #0xec
	ldr r3, _0808C888 @ =gDispCnt
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #3
	mov ip, r2
	mov r2, ip
	orrs r1, r2
	strh r1, [r3]
	ldr r2, _0808C88C @ =gBgCntRegs
	ldr r1, _0808C890 @ =0x00005E86
	strh r1, [r2, #2]
	ldr r1, _0808C894 @ =0x06004000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0808C898 @ =0x0600F000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _0808C89C @ =0x00000165
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	movs r1, #0x8b
	lsls r1, r1, #1
	adds r2, r5, r1
	movs r1, #0
	strb r1, [r2]
	strh r6, [r0, #0x2e]
	bl DrawBackground
_0808C84E:
	movs r2, #8
	ldrsh r1, [r5, r2]
	cmp r1, #0
	bne _0808C85E
	adds r0, r1, #0
	lsls r0, r0, #2
	adds r0, r7, r0
	str r1, [r0]
_0808C85E:
	ldr r4, _0808C8A0 @ =sOptionsSlideInits
	movs r0, #8
	ldrsh r2, [r5, r0]
	lsls r2, r2, #2
	adds r4, r2, r4
	adds r0, r7, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r1, [r1]
	adds r2, #0x14
	adds r2, r5, r2
	adds r3, r5, #6
	ldr r4, [r4]
	bl _call_via_r4
	movs r0, #1
	strb r0, [r5, #6]
	b _0808C8D6
	.align 2, 0
_0808C888: .4byte gDispCnt
_0808C88C: .4byte gBgCntRegs
_0808C890: .4byte 0x00005E86
_0808C894: .4byte 0x06004000
_0808C898: .4byte 0x0600F000
_0808C89C: .4byte 0x00000165
_0808C8A0: .4byte sOptionsSlideInits
_0808C8A4:
	movs r4, #0
_0808C8A6:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r5, r0
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r4, r0
	bne _0808C8C0
	movs r0, #0
	b _0808C8C4
_0808C8C0:
	movs r0, #0x80
	lsls r0, r0, #1
_0808C8C4:
	strh r0, [r1, #0x14]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0808C8A6
_0808C8D6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808C8DC
sub_808C8DC: @ 0x0808C8DC
	push {r4, r5, r6, lr}
	ldr r6, _0808C97C @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x10]
	ldr r5, _0808C980 @ =gBldRegs
	cmp r0, #0
	bne _0808C928
	ldr r2, _0808C984 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0808C988 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0xe]
	movs r0, #1
	strh r0, [r4, #0x10]
_0808C928:
	ldr r0, _0808C98C @ =0x00003EFF
	strh r0, [r5]
	adds r0, r4, #0
	bl sub_808BEEC
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CF00
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _0808C994
	ldrh r0, [r4, #0xe]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	ldr r1, _0808C990 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #0xe]
	adds r0, r0, r3
	strh r0, [r4, #0xe]
	b _0808C9A0
	.align 2, 0
_0808C97C: .4byte gCurTask
_0808C980: .4byte gBldRegs
_0808C984: .4byte gDispCnt
_0808C988: .4byte gWinRegs
_0808C98C: .4byte 0x00003EFF
_0808C990: .4byte 0xFFFFFF00
_0808C994:
	strh r0, [r5, #4]
	ldr r0, _0808C9A8 @ =0x00003FFF
	strh r0, [r5]
	ldr r1, [r6]
	ldr r0, _0808C9AC @ =sub_808BD90
	str r0, [r1, #8]
_0808C9A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808C9A8: .4byte 0x00003FFF
_0808C9AC: .4byte sub_808BD90

	thumb_func_start sub_808C9B0
sub_808C9B0: @ 0x0808C9B0
	push {r4, r5, r6, r7, lr}
	ldr r7, _0808CA44 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldrh r0, [r5, #0x10]
	cmp r0, #0
	beq _0808C9F8
	ldr r2, _0808CA48 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0808CA4C @ =gWinRegs
	movs r3, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	ldrh r2, [r1, #8]
	movs r0, #0x3f
	orrs r0, r2
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	movs r0, #0x1f
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _0808CA50 @ =gBldRegs
	ldr r0, _0808CA54 @ =0x00003EFF
	strh r0, [r1]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x10]
_0808C9F8:
	adds r0, r5, #0
	bl sub_808CED0
	adds r0, r5, #0
	bl sub_808CB74
	adds r0, r5, #0
	bl sub_808CF4C
	adds r0, r5, #0
	bl sub_808CC48
	adds r0, r5, #0
	bl sub_808CF00
	adds r0, r5, #0
	bl sub_808CCA0
	adds r0, r5, #0
	bl sub_808CD14
	adds r0, r5, #0
	bl sub_808CD88
	ldr r2, _0808CA50 @ =gBldRegs
	ldrh r0, [r2, #4]
	cmp r0, #0xf
	bhi _0808CA58
	ldrh r0, [r5, #0xe]
	lsrs r0, r0, #8
	strh r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r2, [r5, #0xe]
	adds r0, r0, r2
	strh r0, [r5, #0xe]
	b _0808CA88
	.align 2, 0
_0808CA44: .4byte gCurTask
_0808CA48: .4byte gDispCnt
_0808CA4C: .4byte gWinRegs
_0808CA50: .4byte gBldRegs
_0808CA54: .4byte 0x00003EFF
_0808CA58:
	movs r1, #0
	movs r4, #0
	movs r0, #0x10
	strh r0, [r2, #4]
	strb r1, [r5, #4]
	ldr r0, _0808CA90 @ =gLoadedSaveGame
	ldr r0, [r0]
	bl sub_8001DDC
	bl sub_8001E0C
	movs r3, #8
	ldrsh r0, [r5, r3]
	lsls r0, r0, #2
	ldr r2, _0808CA94 @ =0x03000014
	adds r1, r6, r2
	adds r1, r1, r0
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	str r0, [r1]
	strh r4, [r5, #0xc]
	ldr r1, [r7]
	ldr r0, _0808CA98 @ =sub_808BBBC
	str r0, [r1, #8]
_0808CA88:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808CA90: .4byte gLoadedSaveGame
_0808CA94: .4byte 0x03000014
_0808CA98: .4byte sub_808BBBC

	thumb_func_start sub_808CA9C
sub_808CA9C: @ 0x0808CA9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808CAE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
	ldr r0, _0808CAE4 @ =gLoadedSaveGame + 0x4
	mov r8, r0
	ldr r7, _0808CAE8 @ =0x0000FFFF
	ldr r6, _0808CAEC @ =gUnknown_080D7458
_0808CAB8:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xdd
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r5, r0
	lsls r0, r4, #1
	add r0, r8
	ldrh r0, [r0]
	adds r1, r0, #0
	cmp r1, r7
	beq _0808CB02
	cmp r1, #0xff
	bls _0808CAF4
	adds r0, #1
	strb r0, [r2, #0x1a]
	ldr r0, _0808CAF0 @ =gUnknown_080D7460
	ldrh r0, [r0]
	b _0808CAF8
	.align 2, 0
_0808CAE0: .4byte gCurTask
_0808CAE4: .4byte gLoadedSaveGame + 0x4
_0808CAE8: .4byte 0x0000FFFF
_0808CAEC: .4byte gUnknown_080D7458
_0808CAF0: .4byte gUnknown_080D7460
_0808CAF4:
	strb r0, [r2, #0x1a]
	ldrh r0, [r6]
_0808CAF8:
	strh r0, [r2, #0xc]
	ldrb r0, [r5, #4]
	adds r0, #1
	strb r0, [r5, #4]
	b _0808CB0A
_0808CB02:
	ldrh r0, [r6]
	movs r1, #0
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
_0808CB0A:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0808CAB8
	movs r4, #0
	strb r4, [r5, #5]
	strb r4, [r5, #3]
	movs r2, #1
	str r2, [r5, #0x2c]
	ldr r1, _0808CB64 @ =gLoadedSaveGame
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r0, r1, r3
	ldrb r0, [r0]
	str r0, [r5, #0x18]
	adds r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	str r0, [r5, #0x1c]
	ldr r0, _0808CB68 @ =0x00000366
	adds r1, r1, r0
	ldrb r0, [r1]
	str r0, [r5, #0x20]
	strh r2, [r5, #0xa]
	bl sub_8001E58
	movs r0, #0
	bl sub_808AF44
	ldr r0, _0808CB6C @ =gWinRegs
	strh r4, [r0, #8]
	ldr r0, _0808CB70 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808CB64: .4byte gLoadedSaveGame
_0808CB68: .4byte 0x00000366
_0808CB6C: .4byte gWinRegs
_0808CB70: .4byte gCurTask

	thumb_func_start sub_808CB74
sub_808CB74: @ 0x0808CB74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r5, #0
	ldr r0, _0808CBEC @ =gLoadedSaveGame + 0x33
	mov sb, r0
	movs r7, #1
	ldr r1, _0808CBF0 @ =gUnknown_080D6960
	mov r8, r1
_0808CB8A:
	cmp r5, #5
	bne _0808CB9A
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0808CC30
_0808CB9A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r4, r6, r0
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r5, r0
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r5, r0
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	lsls r1, r5, #3
	adds r0, r6, #0
	adds r0, #0x38
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	cmp r5, #5
	bls _0808CBF4
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _0808CBF4
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0808CBF6
	.align 2, 0
_0808CBEC: .4byte gLoadedSaveGame + 0x33
_0808CBF0: .4byte gUnknown_080D6960
_0808CBF4:
	adds r0, r5, #0
_0808CBF6:
	lsls r1, r0, #3
	adds r0, r6, #0
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r1, #0
	strh r0, [r4, #0x12]
	movs r2, #8
	ldrsh r0, [r6, r2]
	cmp r5, r0
	beq _0808CC18
	strb r7, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
	b _0808CC22
_0808CC18:
	strb r1, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
_0808CC22:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0808CC30:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0808CB8A
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CC48
sub_808CC48: @ 0x0808CC48
	push {lr}
	movs r1, #0xab
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r2, _0808CC84 @ =gUnknown_080D6AE0
	ldrh r1, [r2]
	strh r1, [r3, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r3, #0x1a]
	ldr r1, [r0, #0x38]
	movs r2, #0xd6
	lsls r2, r2, #7
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r3, #0x10]
	ldr r1, [r0, #0x3c]
	asrs r1, r1, #8
	strh r1, [r3, #0x12]
	movs r1, #8
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0808CC88
	movs r0, #0
	strb r0, [r3, #0x1f]
	ldr r0, [r3, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	b _0808CC92
	.align 2, 0
_0808CC84: .4byte gUnknown_080D6AE0
_0808CC88:
	movs r0, #4
	strb r0, [r3, #0x1f]
	ldr r0, [r3, #8]
	movs r1, #0x80
	orrs r0, r1
_0808CC92:
	str r0, [r3, #8]
	adds r0, r3, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CCA0
sub_808CCA0: @ 0x0808CCA0
	push {r4, lr}
	ldrb r2, [r0, #0x18]
	movs r1, #0xb5
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r3, _0808CCF0 @ =gUnknown_080D6AE8
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r1, r2, r1
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r4, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrb r1, [r2, #2]
	strb r1, [r4, #0x1a]
	ldr r1, [r0, #0x40]
	movs r2, #0xe6
	lsls r2, r2, #7
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	strh r1, [r4, #0x12]
	movs r1, #8
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0808CCF4
	movs r0, #0
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	b _0808CCFE
	.align 2, 0
_0808CCF0: .4byte gUnknown_080D6AE8
_0808CCF4:
	movs r0, #4
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
_0808CCFE:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CD14
sub_808CD14: @ 0x0808CD14
	push {r4, lr}
	ldrb r2, [r0, #0x1c]
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r3, _0808CD64 @ =gUnknown_080D6B48
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r1, r2, r1
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r4, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrb r1, [r2, #2]
	strb r1, [r4, #0x1a]
	ldr r1, [r0, #0x48]
	movs r2, #0xe6
	lsls r2, r2, #7
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r1, [r0, #0x4c]
	asrs r1, r1, #8
	strh r1, [r4, #0x12]
	movs r1, #8
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bne _0808CD68
	movs r0, #0
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	b _0808CD72
	.align 2, 0
_0808CD64: .4byte gUnknown_080D6B48
_0808CD68:
	movs r0, #4
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
_0808CD72:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CD88
sub_808CD88: @ 0x0808CD88
	push {r4, lr}
	movs r1, #0xc9
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r2, _0808CDD0 @ =gUnknown_080D6BA8
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r4, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r4, #0x1a]
	ldr r1, [r0, #0x50]
	movs r2, #0xe6
	lsls r2, r2, #7
	adds r1, r1, r2
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r1, [r0, #0x54]
	asrs r1, r1, #8
	strh r1, [r4, #0x12]
	movs r1, #8
	ldrsh r0, [r0, r1]
	cmp r0, #3
	bne _0808CDD4
	movs r0, #0
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	b _0808CDDE
	.align 2, 0
_0808CDD0: .4byte gUnknown_080D6BA8
_0808CDD4:
	movs r0, #4
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x80
	orrs r0, r1
_0808CDDE:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CDF4
sub_808CDF4: @ 0x0808CDF4
	push {lr}
	movs r0, #0
	bl sub_808AF44
	pop {r0}
	bx r0

	thumb_func_start sub_808CE00
sub_808CE00: @ 0x0808CE00
	push {r4, r5, lr}
	ldr r0, _0808CE78 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_808BEEC
	adds r0, r4, #0
	bl sub_808C250
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	adds r0, r4, #0
	bl sub_808BFA0
	cmp r0, #1
	bne _0808CE56
	ldr r0, _0808CE7C @ =0x030000A0
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
_0808CE56:
	ldr r1, _0808CE80 @ =gUnknown_080D6E38
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, _0808CE84 @ =gBgScrollRegs
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r1, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808CE78: .4byte gCurTask
_0808CE7C: .4byte 0x030000A0
_0808CE80: .4byte gUnknown_080D6E38
_0808CE84: .4byte gBgScrollRegs

	thumb_func_start sub_808CE88
sub_808CE88: @ 0x0808CE88
	push {lr}
	adds r2, r0, #0
	movs r1, #8
	ldrsh r0, [r2, r1]
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x14
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0x7b
	beq _0808CEB0
	ldr r1, _0808CEAC @ =gBgScrollRegs
	ldr r0, [r2, #0x30]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r1, #4]
	movs r0, #0
	b _0808CEC4
	.align 2, 0
_0808CEAC: .4byte gBgScrollRegs
_0808CEB0:
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	str r0, [r1]
	movs r0, #0
	strh r0, [r2, #0xc]
	ldr r0, _0808CEC8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808CECC @ =sub_808BBBC
	str r0, [r1, #8]
	movs r0, #1
_0808CEC4:
	pop {r1}
	bx r1
	.align 2, 0
_0808CEC8: .4byte gCurTask
_0808CECC: .4byte sub_808BBBC

	thumb_func_start sub_808CED0
sub_808CED0: @ 0x0808CED0
	adds r2, r0, #0
	adds r2, #0x98
	ldr r1, [r2]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	str r1, [r2]
	adds r0, #0x9c
	ldr r1, [r0]
	ldr r3, _0808CEF8 @ =0xFFFFFE80
	adds r1, r1, r3
	str r1, [r0]
	ldr r3, _0808CEFC @ =gBgScrollRegs
	ldr r0, [r2]
	asrs r0, r0, #8
	strh r0, [r3]
	asrs r1, r1, #8
	strh r1, [r3, #2]
	bx lr
	.align 2, 0
_0808CEF8: .4byte 0xFFFFFE80
_0808CEFC: .4byte gBgScrollRegs

	thumb_func_start sub_808CF00
sub_808CF00: @ 0x0808CF00
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	b _0808CF3E
_0808CF08:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xdd
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	ldr r1, [r5, #0x38]
	movs r2, #0xd6
	lsls r2, r2, #7
	adds r1, r1, r2
	asrs r1, r1, #8
	lsls r2, r4, #3
	adds r1, r1, r2
	lsls r2, r4, #1
	adds r1, r1, r2
	adds r1, #0xa
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x3c]
	asrs r1, r1, #8
	adds r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0808CF3E:
	ldrb r0, [r5, #4]
	cmp r4, r0
	blo _0808CF08
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CF4C
sub_808CF4C: @ 0x0808CF4C
	push {lr}
	adds r2, r0, #0
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r2, r1
	adds r1, r2, #0
	adds r1, #0xa0
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r2, #0
	adds r1, #0xa4
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808CF74
sub_808CF74: @ 0x0808CF74
	push {r4, r5, lr}
	ldr r5, _0808CFC0 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_808CED0
	adds r0, r4, #0
	bl sub_808CB74
	adds r0, r4, #0
	bl sub_808CF4C
	adds r0, r4, #0
	bl sub_808CC48
	adds r0, r4, #0
	bl sub_808CF00
	adds r0, r4, #0
	bl sub_808CCA0
	adds r0, r4, #0
	bl sub_808CD14
	adds r0, r4, #0
	bl sub_808CD88
	ldr r0, [r5]
	bl TaskDestroy
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808CFC0: .4byte gCurTask

	thumb_func_start sub_808CFC4
sub_808CFC4: @ 0x0808CFC4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0808CFCA:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r5, r0
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r4, r0
	bne _0808CFE4
	movs r0, #0
	b _0808CFE8
_0808CFE4:
	movs r0, #0x80
	lsls r0, r0, #1
_0808CFE8:
	strh r0, [r1, #0x14]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0808CFCA
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_808D000
sub_808D000: @ 0x0808D000
	ldr r1, _0808D008 @ =gWinRegs
	movs r0, #0
	strh r0, [r1, #8]
	bx lr
	.align 2, 0
_0808D008: .4byte gWinRegs

	thumb_func_start sub_808D00C
sub_808D00C: @ 0x0808D00C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808D054 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _0808D058 @ =gUnknown_03000FC0
	adds r4, r1, r2
	ldr r0, _0808D05C @ =gPressedKeys
	ldrh r1, [r0]
	movs r6, #9
	ands r6, r1
	cmp r6, #0
	beq _0808D060
	movs r1, #0
	strh r1, [r4]
	movs r0, #1
	strh r0, [r4, #2]
	strh r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #6]
	movs r0, #0xff
	strh r0, [r4, #8]
	strh r1, [r4, #0xa]
	adds r0, r4, #0
	bl ScreenFadeUpdateValues
	mov r3, r8
	ldr r1, [r3]
	b _0808D090
	.align 2, 0
_0808D054: .4byte gCurTask
_0808D058: .4byte gUnknown_03000FC0
_0808D05C: .4byte gPressedKeys
_0808D060:
	movs r7, #2
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0808D09C
	movs r0, #0x6b
	bl m4aSongNumStart
	strh r7, [r5, #0x10]
	strh r6, [r4]
	movs r0, #1
	strh r0, [r4, #2]
	strh r6, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #6]
	movs r0, #0xff
	strh r0, [r4, #8]
	strh r6, [r4, #0xa]
	adds r0, r4, #0
	bl ScreenFadeUpdateValues
	mov r0, r8
	ldr r1, [r0]
_0808D090:
	ldr r0, _0808D098 @ =sub_808ECF4
	str r0, [r1, #8]
	b _0808D0E6
	.align 2, 0
_0808D098: .4byte sub_808ECF4
_0808D09C:
	ldr r0, _0808D0C4 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0808D0E6
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0808D0CC
	ldrh r1, [r5, #0x10]
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0808D0C8
	strh r7, [r5, #0x10]
	b _0808D0E6
	.align 2, 0
_0808D0C4: .4byte gRepeatedKeys
_0808D0C8:
	subs r0, r1, #1
	b _0808D0E4
_0808D0CC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808D0E6
	ldrh r1, [r5, #0x10]
	movs r3, #0x10
	ldrsh r0, [r5, r3]
	cmp r0, #2
	bne _0808D0E2
	strh r2, [r5, #0x10]
	b _0808D0E6
_0808D0E2:
	adds r0, r1, #1
_0808D0E4:
	strh r0, [r5, #0x10]
_0808D0E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808D0F0
sub_808D0F0: @ 0x0808D0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _0808D180 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0808D184 @ =sub_808D214
	movs r2, #0x80
	lsls r2, r2, #5
	movs r4, #0
	str r4, [sp]
	movs r1, #0xec
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	strh r4, [r6]
	movs r0, #2
	strh r0, [r6, #2]
	strh r4, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6, #6]
	movs r0, #0xff
	strh r0, [r6, #8]
	strh r4, [r6, #0xa]
	adds r0, r6, #0
	bl ScreenFadeUpdateValues
	movs r1, #0
	ldr r0, _0808D188 @ =0x0300000E
	adds r5, r5, r0
	movs r3, #0xff
_0808D13E:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r5, r0
	ldrb r1, [r2]
	orrs r1, r3
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808D13E
	movs r1, #0
	strb r1, [r6, #0x13]
	strb r1, [r6, #0x14]
	strb r1, [r6, #0x17]
	strb r1, [r6, #0x12]
	movs r0, #1
	strb r0, [r6, #0x16]
	strh r1, [r6, #0xc]
	ldr r0, _0808D18C @ =gLoadedSaveGame
	ldr r1, _0808D190 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r6, #0x18]
	strb r7, [r6, #0x19]
	cmp r7, #0xff
	beq _0808D194
	bl sub_80C6168
	bl sub_80258D4
	b _0808D198
	.align 2, 0
_0808D180: .4byte gDispCnt
_0808D184: .4byte sub_808D214
_0808D188: .4byte 0x0300000E
_0808D18C: .4byte gLoadedSaveGame
_0808D190: .4byte 0x00000366
_0808D194:
	bl sub_80256E0
_0808D198:
	movs r2, #0
	str r2, [sp, #4]
	ldr r3, _0808D200 @ =0x040000D4
	add r0, sp, #4
	str r0, [r3]
	ldr r0, _0808D204 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _0808D208 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _0808D20C @ =gBgSprites_Unknown1
	strb r2, [r4, #2]
	ldr r0, _0808D210 @ =gBgSprites_Unknown2
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r3, #0x40
	strb r3, [r0, #0xb]
	strb r2, [r4, #1]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	strb r2, [r4]
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r1, [r0, #2]
	strb r3, [r0, #3]
	adds r0, r6, #0
	movs r1, #3
	bl sub_808D548
	bl m4aMPlayAllStop
	movs r0, #0x44      @ MUS_VS_MUSIC_1 @ checking connection
	bl m4aSongNumStart
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D200: .4byte 0x040000D4
_0808D204: .4byte gBgCntRegs
_0808D208: .4byte 0x85000010
_0808D20C: .4byte gBgSprites_Unknown1
_0808D210: .4byte gBgSprites_Unknown2

	thumb_func_start sub_808D214
sub_808D214: @ 0x0808D214
	push {r4, r5, r6, lr}
	ldr r6, _0808D268 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r5, r4, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_808D5CC
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bne _0808D24C
	strh r1, [r4]
	movs r0, #2
	strh r0, [r4, #2]
	strh r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #6]
	movs r0, #0xff
	strh r0, [r4, #8]
	strh r1, [r4, #0xa]
	movs r0, #1
	strh r0, [r4, #0xc]
_0808D24C:
	adds r0, r5, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D260
	ldr r1, [r6]
	ldr r0, _0808D26C @ =sub_808D270
	str r0, [r1, #8]
_0808D260:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808D268: .4byte gCurTask
_0808D26C: .4byte sub_808D270

	thumb_func_start sub_808D270
sub_808D270: @ 0x0808D270
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808D298 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r5, r6, #0
	ldr r0, _0808D29C @ =gStageData
	ldrb r0, [r0, #6]
	mov r8, r0
	movs r4, #0
	cmp r0, #0
	bne _0808D2A0
	bl sub_802440C
	b _0808D2A4
	.align 2, 0
_0808D298: .4byte gCurTask
_0808D29C: .4byte gStageData
_0808D2A0:
	bl sub_8024584
_0808D2A4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r7, r0, #0
	cmp r2, #0
	bge _0808D2B8
	bl sub_802613C
	b _0808D444
_0808D2B8:
	movs r1, #0
	movs r3, #1
_0808D2BC:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _0808D2D0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0808D2D0:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808D2BC
	subs r1, r4, #1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_808D648
	adds r0, r5, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808D2F6
	b _0808D444
_0808D2F6:
	mov r0, r8
	cmp r0, #0
	bne _0808D3AC
	asrs r0, r7, #0x10
	cmp r0, #3
	bne _0808D306
	cmp r4, #2
	beq _0808D316
_0808D306:
	cmp r0, #7
	bne _0808D30E
	cmp r4, #3
	beq _0808D316
_0808D30E:
	cmp r0, #0xf
	bne _0808D400
	cmp r4, #4
	bne _0808D400
_0808D316:
	movs r4, #0
	movs r1, #0
	asrs r3, r7, #0x10
	movs r7, #1
_0808D31E:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	adds r0, r3, #0
	asrs r0, r2
	ands r0, r7
	cmp r0, #0
	bne _0808D33A
	lsls r0, r2, #1
	ldr r2, _0808D39C @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _0808D33A
	movs r4, #1
_0808D33A:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808D31E
	cmp r4, #0
	bne _0808D400
	adds r0, r6, #0
	bl sub_808D6BC
	ldr r0, _0808D3A0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808D400
	bl sub_80244E4
	movs r0, #0x63      @ MUS_VS_SUCCESS
	bl m4aSongNumStart
	strh r4, [r5]
	movs r0, #1
	strh r0, [r5, #2]
	strh r4, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #6]
	movs r0, #0xff
	strh r0, [r5, #8]
	strh r4, [r5, #0xa]
	adds r0, r5, #0
	bl ScreenFadeUpdateValues
	adds r0, r6, #0
	movs r1, #4
	bl sub_808D548
	adds r0, r6, #0
	movs r1, #2
	bl sub_808D5CC
	strh r4, [r6, #0xc]
	ldr r0, _0808D3A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808D3A8 @ =sub_808D45C
	b _0808D442
	.align 2, 0
_0808D39C: .4byte 0x04000120
_0808D3A0: .4byte gPressedKeys
_0808D3A4: .4byte gCurTask
_0808D3A8: .4byte sub_808D45C
_0808D3AC:
	asrs r0, r7, #0x10
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808D400
	bl sub_80246B4
	movs r4, #0
	strh r4, [r5]
	movs r0, #1
	strh r0, [r5, #2]
	strh r4, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #6]
	movs r0, #0xff
	strh r0, [r5, #8]
	strh r4, [r5, #0xa]
	adds r0, r5, #0
	bl ScreenFadeUpdateValues
	movs r0, #0x63      @ MUS_VS_SUCCESS
	bl m4aSongNumStart
	adds r0, r6, #0
	movs r1, #4
	bl sub_808D548
	adds r0, r6, #0
	movs r1, #2
	bl sub_808D5CC
	strh r4, [r6, #0xc]
	ldr r0, _0808D3F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808D3FC @ =sub_808D45C
	b _0808D442
	.align 2, 0
_0808D3F8: .4byte gCurTask
_0808D3FC: .4byte sub_808D45C
_0808D400:
	ldr r0, _0808D450 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808D444
	ldrb r0, [r6, #0x19]
	cmp r0, #0xff
	beq _0808D444
	movs r0, #0x6b
	bl m4aSongNumStart
	bl sub_80260F0
	movs r1, #0
	strh r1, [r5]
	movs r0, #1
	strh r0, [r5, #2]
	strh r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #6]
	movs r0, #0xff
	strh r0, [r5, #8]
	strh r1, [r5, #0xa]
	adds r0, r5, #0
	bl ScreenFadeUpdateValues
	movs r0, #0x26
	strb r0, [r6, #0x17]
	ldr r0, _0808D454 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808D458 @ =sub_808ED60
_0808D442:
	str r0, [r1, #8]
_0808D444:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D450: .4byte gPressedKeys
_0808D454: .4byte gCurTask
_0808D458: .4byte sub_808ED60

	thumb_func_start sub_808D45C
sub_808D45C: @ 0x0808D45C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0808D47C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r4, r6, #0
	ldr r0, _0808D480 @ =gStageData
	ldrb r7, [r0, #6]
	cmp r7, #0
	bne _0808D484
	bl sub_80244E4
	b _0808D488
	.align 2, 0
_0808D47C: .4byte gCurTask
_0808D480: .4byte gStageData
_0808D484:
	bl sub_80246B4
_0808D488:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bge _0808D49A
	bl sub_802613C
	b _0808D524
_0808D49A:
	ldrh r1, [r4, #0xc]
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0x77
	bgt _0808D4AA
	adds r0, r1, #1
	strh r0, [r4, #0xc]
	b _0808D524
_0808D4AA:
	adds r0, r6, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808D524
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _0808D524
	cmp r7, #0
	bne _0808D4C8
	bl sub_80258FC
	b _0808D4CC
_0808D4C8:
	bl sub_80259EC
_0808D4CC:
	movs r5, #0
	movs r4, #0
	strh r4, [r6]
	movs r0, #2
	strh r0, [r6, #2]
	strh r4, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6, #6]
	movs r0, #0xff
	strh r0, [r6, #8]
	strh r4, [r6, #0xa]
	adds r0, r6, #0
	bl ScreenFadeUpdateValues
	str r4, [sp]
	ldr r2, _0808D52C @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _0808D530 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0808D534 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0808D538 @ =gBgSprites_Unknown1
	strb r5, [r0, #2]
	ldr r1, _0808D53C @ =gBgSprites_Unknown2
	strb r5, [r1, #8]
	strb r5, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	ldr r0, _0808D540 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808D544 @ =sub_808D718
	str r0, [r1, #8]
_0808D524:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D52C: .4byte 0x040000D4
_0808D530: .4byte gBgCntRegs
_0808D534: .4byte 0x85000010
_0808D538: .4byte gBgSprites_Unknown1
_0808D53C: .4byte gBgSprites_Unknown2
_0808D540: .4byte gCurTask
_0808D544: .4byte sub_808D718

	thumb_func_start sub_808D548
sub_808D548: @ 0x0808D548
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0808D5B4 @ =gBgCntRegs
	movs r6, #0
	movs r3, #0
	ldr r0, _0808D5B8 @ =0x00000602
	strh r0, [r2, #2]
	ldr r4, _0808D5BC @ =gDispCnt
	ldrh r0, [r4]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r2, r7, #0
	orrs r0, r2
	strh r0, [r4]
	ldr r0, _0808D5C0 @ =gBgScrollRegs
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	adds r0, r5, #0
	adds r0, #0x5c
	movs r2, #0xc0
	lsls r2, r2, #0x13
	str r2, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r2, _0808D5C4 @ =0x06003000
	str r2, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	ldr r4, _0808D5C8 @ =gUnknown_080D9908
	ldrb r2, [r5, #0x18]
	lsls r2, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r5, #0x86
	strb r6, [r5]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D5B4: .4byte gBgCntRegs
_0808D5B8: .4byte 0x00000602
_0808D5BC: .4byte gDispCnt
_0808D5C0: .4byte gBgScrollRegs
_0808D5C4: .4byte 0x06003000
_0808D5C8: .4byte gUnknown_080D9908

	thumb_func_start sub_808D5CC
sub_808D5CC: @ 0x0808D5CC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	ldr r2, _0808D62C @ =gBgCntRegs
	movs r6, #0
	movs r3, #0
	ldr r0, _0808D630 @ =0x00000E07
	strh r0, [r2]
	ldr r4, _0808D634 @ =gDispCnt
	ldrh r0, [r4]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r2, r7, #0
	orrs r0, r2
	strh r0, [r4]
	ldr r0, _0808D638 @ =gBgScrollRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	adds r0, r5, #0
	adds r0, #0x1c
	ldr r2, _0808D63C @ =0x06004000
	str r2, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r2, _0808D640 @ =0x06007000
	str r2, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	ldr r2, _0808D644 @ =gUnknown_080D9908
	lsrs r1, r1, #0x17
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r5, #0x46
	strb r6, [r5]
	strh r3, [r0, #0x2e]
	bl DrawBackground
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D62C: .4byte gBgCntRegs
_0808D630: .4byte 0x00000E07
_0808D634: .4byte gDispCnt
_0808D638: .4byte gBgScrollRegs
_0808D63C: .4byte 0x06004000
_0808D640: .4byte 0x06007000
_0808D644: .4byte gUnknown_080D9908

	thumb_func_start sub_808D648
sub_808D648: @ 0x0808D648
	push {r4, lr}
	lsls r1, r1, #0x18
	asrs r2, r1, #0x18
	cmp r2, #0
	ble _0808D6A8
	adds r4, r0, #0
	adds r4, #0xc4
	ldr r1, _0808D6B0 @ =gUnknown_080D6898
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0808D6B4 @ =0x06010000
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, _0808D6B8 @ =gUnknown_080D6EE8
	subs r0, r2, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r3, #0
	movs r2, #0
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x71
	strh r0, [r4, #0x10]
	movs r0, #0x67
	strh r0, [r4, #0x12]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	str r2, [r4, #8]
	subs r0, #0x11
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0808D6A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808D6B0: .4byte gUnknown_080D6898
_0808D6B4: .4byte 0x06010000
_0808D6B8: .4byte gUnknown_080D6EE8

	thumb_func_start sub_808D6BC
sub_808D6BC: @ 0x0808D6BC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r4, #0x9c
	ldr r1, _0808D710 @ =0x06010000
	str r1, [r4]
	ldr r3, _0808D714 @ =gUnknown_080D6898
	ldrb r1, [r0, #0x18]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r5, #0
	movs r2, #0
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x8c
	strh r0, [r4, #0x12]
	strh r2, [r4, #0x14]
	strh r2, [r4, #0xe]
	strh r2, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r5, [r4, #0x1f]
	str r2, [r4, #8]
	subs r0, #0x11
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808D710: .4byte 0x06010000
_0808D714: .4byte gUnknown_080D6898

	thumb_func_start sub_808D718
sub_808D718: @ 0x0808D718
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0808D7C4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r4, _0808D7C8 @ =gMultiSioSend
	ldr r1, _0808D7CC @ =gStageData
	ldrb r5, [r1, #6]
	bl sub_809F850
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strh r0, [r4, #6]
	str r0, [r4, #8]
	strh r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	movs r2, #0
	adds r4, #0xf
	movs r3, #0xff
_0808D752:
	adds r0, r4, r2
	ldrb r1, [r0]
	orrs r1, r3
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0808D752
	movs r1, #0
	ldr r0, _0808D7C4 @ =gCurTask
	mov sb, r0
	ldr r0, _0808D7D0 @ =gMultiSioRecv
	mov r8, r0
	lsls r5, r5, #0x10
	mov ip, r5
	movs r5, #0
	movs r6, #0
	movs r7, #0xff
_0808D778:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	strh r6, [r0]
	strb r5, [r0, #2]
	strb r5, [r0, #3]
	strb r5, [r0, #4]
	strb r5, [r0, #5]
	strh r6, [r0, #6]
	str r6, [r0, #8]
	strh r6, [r0, #0xc]
	strb r5, [r0, #0xe]
	movs r2, #0
	adds r4, r1, #1
	adds r3, r0, #0
	adds r3, #0xf
_0808D79A:
	adds r0, r3, r2
	ldrb r1, [r0]
	orrs r1, r7
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0808D79A
	lsls r0, r4, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0808D778
	mov r1, ip
	asrs r0, r1, #0x10
	cmp r0, #1
	bgt _0808D7D8
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0808D7D4 @ =sub_808D7F0
	b _0808D7DE
	.align 2, 0
_0808D7C4: .4byte gCurTask
_0808D7C8: .4byte gMultiSioSend
_0808D7CC: .4byte gStageData
_0808D7D0: .4byte gMultiSioRecv
_0808D7D4: .4byte sub_808D7F0
_0808D7D8:
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0808D7EC @ =sub_808DA44
_0808D7DE:
	str r0, [r1, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D7EC: .4byte sub_808DA44

	thumb_func_start sub_808D7F0
sub_808D7F0: @ 0x0808D7F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0808D820 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	mov r8, r4
	ldr r0, _0808D824 @ =gStageData
	ldrb r0, [r0, #6]
	mov sb, r0
	cmp r0, #0
	bne _0808D82C
	ldr r1, _0808D828 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8025908
	b _0808D83A
	.align 2, 0
_0808D820: .4byte gCurTask
_0808D824: .4byte gStageData
_0808D828: .4byte gUnknown_080D8F18
_0808D82C:
	ldr r1, _0808D84C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024A4C
_0808D83A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808D850
	bl sub_802613C
	b _0808D97C
	.align 2, 0
_0808D84C: .4byte gUnknown_080D8F18
_0808D850:
	movs r2, #0
	ldr r7, _0808D8F4 @ =gUnknown_03001060
	ldr r0, _0808D8F8 @ =gMultiSioRecv
	mov ip, r0
	adds r6, r7, #0
	adds r6, #0x4c
	adds r5, r4, #0
	adds r5, #0xe
_0808D860:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, ip
	adds r3, r5, r1
	ldrb r2, [r0, #4]
	strb r2, [r3]
	adds r2, r1, r6
	adds r0, #0xf
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0808D860
	mov r0, r8
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808D97C
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _0808D97C
	ldr r0, _0808D8FC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808D930
	movs r2, #0
	ldr r6, _0808D900 @ =gUnknown_080D8F18
	movs r3, #0x13
	ldrsb r3, [r4, r3]
	ldr r7, _0808D8F4 @ =gUnknown_03001060
	movs r0, #0x4c
	adds r0, r0, r7
	mov ip, r0
	adds r0, r3, r6
	ldrb r5, [r0]
_0808D8BA:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	mov r2, ip
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, r5
	beq _0808D97C
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808D8BA
	mov r2, sb
	cmp r2, #0
	bne _0808D90C
	adds r1, r7, #0
	adds r1, #0x4c
	adds r0, r3, r6
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0xc
	strb r0, [r4, #0x17]
	ldr r0, _0808D904 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808D908 @ =sub_808DA44
	str r0, [r1, #8]
	b _0808D97C
	.align 2, 0
_0808D8F4: .4byte gUnknown_03001060
_0808D8F8: .4byte gMultiSioRecv
_0808D8FC: .4byte gPressedKeys
_0808D900: .4byte gUnknown_080D8F18
_0808D904: .4byte gCurTask
_0808D908: .4byte sub_808DA44
_0808D90C:
	adds r0, r7, #0
	adds r0, #0x4c
	adds r0, r2, r0
	adds r1, r3, r6
	ldrb r1, [r1]
	strb r1, [r0]
	movs r0, #0xc
	strb r0, [r4, #0x17]
	ldr r0, _0808D928 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808D92C @ =sub_808D988
	str r0, [r1, #8]
	b _0808D97C
	.align 2, 0
_0808D928: .4byte gCurTask
_0808D92C: .4byte sub_808D988
_0808D930:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0808D958
	movs r0, #0x67      @ SE_CHARSELECT_SLIDE
	bl m4aSongNumStart
	ldrb r1, [r4, #0x13]
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0808D952
	subs r0, r1, #1
	strb r0, [r4, #0x13]
	b _0808D978
_0808D952:
	movs r0, #4
	strb r0, [r4, #0x13]
	b _0808D978
_0808D958:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808D978
	movs r0, #0x67      @ SE_CHARSELECT_SLIDE
	bl m4aSongNumStart
	ldrb r1, [r4, #0x13]
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #3
	bgt _0808D976
	adds r0, r1, #1
	strb r0, [r4, #0x13]
	b _0808D978
_0808D976:
	strb r5, [r4, #0x13]
_0808D978:
	ldrb r0, [r4, #0x13]
	strb r0, [r4, #0x12]
_0808D97C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808D988
sub_808D988: @ 0x0808D988
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _0808D9C0 @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808D9C4 @ =gStageData
	ldrb r5, [r0, #6]
	adds r6, r5, #0
	ldr r0, _0808D9C8 @ =gUnknown_080D8F18
	mov r8, r0
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	add r0, r8
	ldrb r0, [r0]
	bl sub_8024AC0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808D9CC
	bl sub_802613C
	b _0808DA2C
	.align 2, 0
_0808D9C0: .4byte gCurTask
_0808D9C4: .4byte gStageData
_0808D9C8: .4byte gUnknown_080D8F18
_0808D9CC:
	cmp r0, #1
	bne _0808D9F0
	ldr r1, _0808D9E8 @ =gUnknown_03001060
	adds r1, #0x4c
	adds r1, r5, r1
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, [r7]
	ldr r0, _0808D9EC @ =sub_808DA44
	b _0808DA04
	.align 2, 0
_0808D9E8: .4byte gUnknown_03001060
_0808D9EC: .4byte sub_808DA44
_0808D9F0:
	cmp r0, #2
	bne _0808DA06
	strb r0, [r4, #0x17]
	ldr r0, _0808DA38 @ =gUnknown_03001060
	adds r0, #0x4c
	adds r0, r6, r0
	movs r1, #0xff
	strb r1, [r0]
	ldr r1, [r7]
	ldr r0, _0808DA3C @ =sub_808D7F0
_0808DA04:
	str r0, [r1, #8]
_0808DA06:
	movs r0, #0
	ldr r5, _0808DA40 @ =gMultiSioRecv
	adds r3, r4, #0
	adds r3, #0xe
_0808DA0E:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r2, r3, r1
	ldrb r0, [r0, #4]
	strb r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0808DA0E
_0808DA2C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DA38: .4byte gUnknown_03001060
_0808DA3C: .4byte sub_808D7F0
_0808DA40: .4byte gMultiSioRecv

	thumb_func_start sub_808DA44
sub_808DA44: @ 0x0808DA44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0808DA74 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r4, r7, #0
	ldr r0, _0808DA78 @ =gStageData
	ldrb r6, [r0, #6]
	cmp r6, #0
	bne _0808DA80
	ldr r1, _0808DA7C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024984
	b _0808DA8E
	.align 2, 0
_0808DA74: .4byte gCurTask
_0808DA78: .4byte gStageData
_0808DA7C: .4byte gUnknown_080D8F18
_0808DA80:
	ldr r1, _0808DAD4 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024C68
_0808DA8E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	ldr r1, _0808DAD8 @ =gMultiSioRecv
	mov r8, r1
	movs r1, #0xe
	adds r1, r1, r4
	mov sl, r1
	lsls r0, r0, #0x10
	mov ip, r0
	mov sb, r8
	mov r5, sl
_0808DAA6:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	mov r2, sb
	adds r3, r0, r2
	adds r2, r5, r1
	ldrb r0, [r3, #4]
	strb r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0808DAA6
	mov r0, ip
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0808DADC
	bl sub_802613C
	b _0808DC20
	.align 2, 0
_0808DAD4: .4byte gUnknown_080D8F18
_0808DAD8: .4byte gMultiSioRecv
_0808DADC:
	cmp r2, #2
	beq _0808DAE2
	b _0808DBEC
_0808DAE2:
	movs r0, #0x3c
	strh r0, [r4, #0xc]
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #0
	bne _0808DB28
	ldr r0, _0808DB14 @ =gUnknown_03001060
	adds r0, #0x4c
	ldrb r0, [r0]
	ldr r2, _0808DB18 @ =gCharacterSelectedVoices
	ldr r1, _0808DB1C @ =gUnknown_080D6EE0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r0, _0808DB20 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DB24 @ =sub_808DCFC
	str r0, [r1, #8]
	b _0808DC20
	.align 2, 0
_0808DB14: .4byte gUnknown_03001060
_0808DB18: .4byte gCharacterSelectedVoices
_0808DB1C: .4byte gUnknown_080D6EE0
_0808DB20: .4byte gCurTask
_0808DB24: .4byte sub_808DCFC
_0808DB28:
	cmp r1, #1
	bne _0808DB88
	ldr r0, _0808DB50 @ =gUnknown_03001060
	adds r5, r0, #0
	adds r5, #0x4c
	adds r3, r0, #0
	adds r3, #0x4d
	ldrb r0, [r3]
	mov r1, r8
	ldrb r1, [r1, #4]
	cmp r0, r1
	bne _0808DB5C
	strb r2, [r4, #0x17]
	movs r0, #0xff
	strb r0, [r3]
	ldr r0, _0808DB54 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DB58 @ =sub_808D7F0
	str r0, [r1, #8]
	b _0808DC20
	.align 2, 0
_0808DB50: .4byte gUnknown_03001060
_0808DB54: .4byte gCurTask
_0808DB58: .4byte sub_808D7F0
_0808DB5C:
	ldr r1, _0808DB7C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r4, #0xe]
	strb r0, [r5]
	ldrb r0, [r3]
	ldr r2, _0808DB80 @ =gCharacterSelectedVoices
	ldr r1, _0808DB84 @ =gUnknown_080D6EE0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	b _0808DBC2
	.align 2, 0
_0808DB7C: .4byte gUnknown_080D8F18
_0808DB80: .4byte gCharacterSelectedVoices
_0808DB84: .4byte gUnknown_080D6EE0
_0808DB88:
	movs r2, #0
	ldr r7, _0808DBD8 @ =gUnknown_03001060
	ldr r6, _0808DBDC @ =gCharacterSelectedVoices
	mov sb, r6
	ldr r0, _0808DBE0 @ =gUnknown_080D6EE0
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0x4c
	mov r3, sl
_0808DB9A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r6
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808DB9A
	asrs r0, r5, #0x10
	adds r0, r7, r0
	adds r0, #0x4a
	ldrb r0, [r0]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sb
_0808DBC2:
	ldrh r0, [r0]
	bl m4aSongNumStart
	movs r0, #0xc
	strb r0, [r4, #0x17]
	ldr r0, _0808DBE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DBE8 @ =sub_808DD6C
	str r0, [r1, #8]
	b _0808DC20
	.align 2, 0
_0808DBD8: .4byte gUnknown_03001060
_0808DBDC: .4byte gCharacterSelectedVoices
_0808DBE0: .4byte gUnknown_080D6EE0
_0808DBE4: .4byte gCurTask
_0808DBE8: .4byte sub_808DD6C
_0808DBEC:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #2
	bne _0808DC04
	ldr r0, _0808DC00 @ =gUnknown_080D6EE0
	mov r2, r8
	ldrb r1, [r2, #4]
	b _0808DC0E
	.align 2, 0
_0808DC00: .4byte gUnknown_080D6EE0
_0808DC04:
	cmp r1, #3
	bne _0808DC14
	ldr r3, _0808DC30 @ =gMultiSioRecv+1*0x18
	ldr r0, _0808DC34 @ =gUnknown_080D6EE0
	ldrb r1, [r3, #4]
_0808DC0E:
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4, #0x12]
_0808DC14:
	asrs r0, r5, #0x10
	cmp r0, #1
	ble _0808DC20
	adds r0, r7, #0
	bl UpdateScreenFade
_0808DC20:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DC30: .4byte gMultiSioRecv+1*0x18
_0808DC34: .4byte gUnknown_080D6EE0

	thumb_func_start sub_808DC38
sub_808DC38: @ 0x0808DC38
	push {r4, r5, lr}
	ldr r0, _0808DC60 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808DC64 @ =gStageData
	ldrb r5, [r0, #6]
	cmp r5, #0
	bne _0808DC6C
	ldr r1, _0808DC68 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8025948
	b _0808DC7A
	.align 2, 0
_0808DC60: .4byte gCurTask
_0808DC64: .4byte gStageData
_0808DC68: .4byte gUnknown_080D8F18
_0808DC6C:
	ldr r1, _0808DC8C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024B84
_0808DC7A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808DC90
	bl sub_802613C
	b _0808DCEA
	.align 2, 0
_0808DC8C: .4byte gUnknown_080D8F18
_0808DC90:
	cmp r0, #1
	bne _0808DCB8
	movs r0, #2
	strb r0, [r4, #0x17]
	ldr r0, _0808DCAC @ =gUnknown_03001060
	adds r0, #0x4c
	adds r0, r5, r0
	movs r1, #0xff
	strb r1, [r0]
	ldr r0, _0808DCB0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DCB4 @ =sub_808D7F0
	b _0808DCC2
	.align 2, 0
_0808DCAC: .4byte gUnknown_03001060
_0808DCB0: .4byte gCurTask
_0808DCB4: .4byte sub_808D7F0
_0808DCB8:
	cmp r0, #2
	bne _0808DCC4
	ldr r0, _0808DCF0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DCF4 @ =sub_808DA44
_0808DCC2:
	str r0, [r1, #8]
_0808DCC4:
	movs r0, #0
	ldr r5, _0808DCF8 @ =gMultiSioRecv
	adds r3, r4, #0
	adds r3, #0xe
_0808DCCC:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r2, r3, r1
	ldrb r0, [r0, #4]
	strb r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0808DCCC
_0808DCEA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808DCF0: .4byte gCurTask
_0808DCF4: .4byte sub_808DA44
_0808DCF8: .4byte gMultiSioRecv

	thumb_func_start sub_808DCFC
sub_808DCFC: @ 0x0808DCFC
	push {r4, r5, r6, lr}
	ldr r0, _0808DD40 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	bl sub_8025998
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _0808DD44 @ =0x0300000E
	adds r4, r4, r0
	ldr r5, _0808DD48 @ =gUnknown_030010AC
_0808DD1A:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r4, r0
	adds r1, r0, r5
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808DD1A
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808DD4C
	bl sub_802613C
	b _0808DD5C
	.align 2, 0
_0808DD40: .4byte gCurTask
_0808DD44: .4byte 0x0300000E
_0808DD48: .4byte gUnknown_030010AC
_0808DD4C:
	cmp r0, #1
	bne _0808DD5C
	movs r0, #0
	strh r0, [r6, #0xc]
	ldr r0, _0808DD64 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DD68 @ =sub_808DD6C
	str r0, [r1, #8]
_0808DD5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808DD64: .4byte gCurTask
_0808DD68: .4byte sub_808DD6C

	thumb_func_start sub_808DD6C
sub_808DD6C: @ 0x0808DD6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0808DD9C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _0808DDA0 @ =gStageData
	ldrb r4, [r0, #6]
	cmp r4, #0
	bne _0808DDA8
	ldr r1, _0808DDA4 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80259F8
	b _0808DDB6
	.align 2, 0
_0808DD9C: .4byte gCurTask
_0808DDA0: .4byte gStageData
_0808DDA4: .4byte gUnknown_080D8F18
_0808DDA8:
	ldr r1, _0808DDC8 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024F84
_0808DDB6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808DDCC
	bl sub_802613C
	b _0808DE90
	.align 2, 0
_0808DDC8: .4byte gUnknown_080D8F18
_0808DDCC:
	ldrh r0, [r6, #0xc]
	adds r0, #1
	strh r0, [r6, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0808DE90
	adds r3, r4, #0
	cmp r3, #1
	bgt _0808DDF8
	ldr r0, _0808DDF0 @ =gPlayers
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r3
	lsls r1, r1, #4
	adds r1, r1, r0
	b _0808DE0A
	.align 2, 0
_0808DDF0: .4byte gPlayers
_0808DDF4:
	strb r7, [r6, #0x13]
	b _0808DE7C
_0808DDF8:
	ldr r2, _0808DEA0 @ =gPlayers
	movs r0, #1
	ands r0, r3
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
_0808DE0A:
	ldr r2, _0808DEA4 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r6, r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, #0x2a
	movs r2, #0xf
	ands r2, r0
	ldrb r3, [r1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	movs r7, #0
	ldr r0, _0808DEA8 @ =gUnknown_03001060
	mov sl, r0
	adds r0, #0x4c
	ldr r1, _0808DEA4 @ =gUnknown_080D8F18
	mov ip, r1
	ldrb r0, [r0]
	mov r8, r0
	mov sb, ip
_0808DE38:
	movs r3, #0
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	mov r4, ip
	adds r1, r2, r4
	adds r4, r0, #0
	ldrb r1, [r1]
	cmp r8, r1
	beq _0808DE6A
	ldr r5, _0808DEAC @ =gUnknown_030010AC
	mov r0, sb
	adds r1, r2, r0
_0808DE50:
	lsls r0, r3, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0808DE6A
	adds r0, r0, r5
	ldrb r0, [r0]
	ldrb r2, [r1]
	cmp r0, r2
	bne _0808DE50
_0808DE6A:
	cmp r3, #2
	beq _0808DDF4
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0808DE38
_0808DE7C:
	ldrb r1, [r6, #0x13]
	mov r0, sl
	adds r0, #0x4e
	strb r1, [r0]
	ldrb r0, [r6, #0x13]
	strb r0, [r6, #0x12]
	ldr r2, _0808DEB0 @ =gCurTask
	ldr r0, [r2]
	ldr r4, _0808DEB4 @ =sub_808DEB8
	str r4, [r0, #8]
_0808DE90:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DEA0: .4byte gPlayers
_0808DEA4: .4byte gUnknown_080D8F18
_0808DEA8: .4byte gUnknown_03001060
_0808DEAC: .4byte gUnknown_030010AC
_0808DEB0: .4byte gCurTask
_0808DEB4: .4byte sub_808DEB8

	thumb_func_start sub_808DEB8
sub_808DEB8: @ 0x0808DEB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0808DEEC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808DEF0 @ =gStageData
	ldrb r6, [r0, #6]
	movs r5, #0
	cmp r6, #0
	bne _0808DEF8
	ldr r1, _0808DEF4 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80259F8
	b _0808DF06
	.align 2, 0
_0808DEEC: .4byte gCurTask
_0808DEF0: .4byte gStageData
_0808DEF4: .4byte gUnknown_080D8F18
_0808DEF8:
	ldr r1, _0808DF18 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024F84
_0808DF06:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808DF1C
_0808DF10:
	bl sub_802613C
	b _0808E050
	.align 2, 0
_0808DF18: .4byte gUnknown_080D8F18
_0808DF1C:
	lsls r0, r6, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _0808DF34
	ldr r1, _0808DF30 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r6, [r0]
	b _0808DF38
	.align 2, 0
_0808DF30: .4byte gUnknown_080D8F18
_0808DF34:
	ldr r0, _0808DF4C @ =gMultiSioRecv
	ldrb r6, [r0, #4]
_0808DF38:
	ldr r2, _0808DF50 @ =gUnknown_03001060
	ldrb r1, [r2, #7]
	adds r3, r2, #0
	cmp r1, #7
	beq _0808DF5E
	cmp r1, #7
	bgt _0808DF54
	cmp r1, #3
	beq _0808DF5A
	b _0808DF10
	.align 2, 0
_0808DF4C: .4byte gMultiSioRecv
_0808DF50: .4byte gUnknown_03001060
_0808DF54:
	cmp r1, #0xf
	beq _0808DF62
	b _0808DF10
_0808DF5A:
	movs r2, #0
	b _0808DF64
_0808DF5E:
	movs r2, #1
	b _0808DF64
_0808DF62:
	movs r2, #2
_0808DF64:
	movs r1, #0
	ldr r0, _0808DFF4 @ =gUnknown_080D6F00
	mov sl, r0
	lsls r2, r2, #2
	mov r8, r2
	asrs r2, r7, #0x10
	mov ip, r2
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	ldr r6, _0808DFF8 @ =gUnknown_030010AC
	mov sb, r6
_0808DF7C:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	add r0, r8
	add r0, sl
	ldrb r2, [r0]
	cmp r2, ip
	beq _0808DFAE
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r2, _0808DFFC @ =gMultiSioRecv
	adds r0, r0, r2
	ldrb r0, [r0, #4]
	ldr r6, [sp]
	cmp r0, r6
	bne _0808DFB4
	mov r2, sb
	ldrb r2, [r2]
	cmp r0, r2
	beq _0808DFB4
	adds r2, r3, #0
	adds r2, #0x4d
	ldrb r2, [r2]
	cmp r0, r2
	beq _0808DFB4
_0808DFAE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0808DFB4:
	movs r6, #0x80
	lsls r6, r6, #9
	adds r0, r1, r6
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808DF7C
	cmp r5, #4
	bne _0808E050
	ldrb r0, [r4, #0x17]
	cmp r0, #0xc
	bhi _0808DFD0
	movs r0, #0xd
	strb r0, [r4, #0x17]
_0808DFD0:
	ldrb r0, [r4, #0x17]
	cmp r0, #0xd
	bls _0808E050
	asrs r2, r7, #0x10
	cmp r2, #0
	beq _0808DFE0
	cmp r2, #2
	bne _0808E006
_0808DFE0:
	ldrb r0, [r3, #7]
	ands r5, r0
	cmp r5, #0
	beq _0808E000
	cmp r2, #0
	bne _0808E000
	movs r2, #0
	movs r0, #0xff
	b _0808E01E
	.align 2, 0
_0808DFF4: .4byte gUnknown_080D6F00
_0808DFF8: .4byte gUnknown_030010AC
_0808DFFC: .4byte gMultiSioRecv
_0808E000:
	movs r2, #1
	movs r0, #2
	b _0808E01E
_0808E006:
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808E01A
	cmp r2, #1
	bne _0808E01A
	movs r2, #0
	movs r0, #0xff
	b _0808E01E
_0808E01A:
	movs r2, #1
	movs r0, #3
_0808E01E:
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	adds r1, r3, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrb r1, [r4, #0x11]
	adds r0, r3, #0
	adds r0, #0x4f
	strb r1, [r0]
	cmp r2, #0
	beq _0808E048
	movs r0, #0xff
	strb r0, [r4, #0x12]
	ldr r0, _0808E040 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E044 @ =sub_808E068
	b _0808E04E
	.align 2, 0
_0808E040: .4byte gCurTask
_0808E044: .4byte sub_808E068
_0808E048:
	ldr r0, _0808E060 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E064 @ =sub_808E430
_0808E04E:
	str r0, [r1, #8]
_0808E050:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E060: .4byte gCurTask
_0808E064: .4byte sub_808E430

	thumb_func_start sub_808E068
sub_808E068: @ 0x0808E068
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808E098 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0808E09C @ =gStageData
	ldrb r6, [r0, #6]
	ldr r0, _0808E0A0 @ =gUnknown_03001060
	ldrb r7, [r0, #7]
	cmp r6, #0
	bne _0808E0A8
	ldr r1, _0808E0A4 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80259F8
	b _0808E0B6
	.align 2, 0
_0808E098: .4byte gCurTask
_0808E09C: .4byte gStageData
_0808E0A0: .4byte gUnknown_03001060
_0808E0A4: .4byte gUnknown_080D8F18
_0808E0A8:
	ldr r1, _0808E0C8 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024F84
_0808E0B6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808E0CC
	bl sub_802613C
	b _0808E2DC
	.align 2, 0
_0808E0C8: .4byte gUnknown_080D8F18
_0808E0CC:
	movs r4, #0
	movs r0, #0xe
	adds r0, r0, r5
	mov ip, r0
_0808E0D4:
	lsls r1, r4, #0x10
	asrs r2, r1, #0x10
	movs r0, #4
	lsls r0, r2
	ands r0, r7
	adds r3, r1, #0
	cmp r0, #0
	beq _0808E0F4
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E0F0 @ =gMultiSioRecv+2*0x18
	b _0808E0FC
	.align 2, 0
_0808E0F0: .4byte gMultiSioRecv+2*0x18
_0808E0F4:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E1A0 @ =gMultiSioRecv
_0808E0FC:
	adds r2, r0, r1
	asrs r0, r3, #0x10
	adds r1, r0, #2
	add r1, ip
	ldrb r2, [r2, #4]
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0808E0D4
	movs r1, #0x14
	ldrsb r1, [r5, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0808E122
	b _0808E2DC
_0808E122:
	ldrb r0, [r5, #0x16]
	cmp r0, #0
	bne _0808E12A
	b _0808E2DC
_0808E12A:
	ldr r0, _0808E1A4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808E200
	movs r4, #0
	ldr r1, _0808E1A8 @ =gUnknown_03001060
	mov ip, r1
	ldr r2, _0808E1AC @ =gUnknown_080D8F18
	mov r8, r2
	movs r3, #0x13
	ldrsb r3, [r5, r3]
	mov r7, ip
	adds r7, #0x4c
	adds r0, r3, r2
	ldrb r2, [r0]
_0808E14C:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, r2
	bne _0808E15A
	b _0808E2DC
_0808E15A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E14C
	lsls r1, r6, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #1
	bhi _0808E176
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r1, r3
	lsrs r6, r0, #0x10
_0808E176:
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	mov r1, ip
	adds r1, #0x4c
	adds r1, r2, r1
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0808E1B8
	movs r0, #0x15
	strb r0, [r5, #0x17]
	ldr r0, _0808E1B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E1B4 @ =sub_808E430
	b _0808E1C2
	.align 2, 0
_0808E1A0: .4byte gMultiSioRecv
_0808E1A4: .4byte gPressedKeys
_0808E1A8: .4byte gUnknown_03001060
_0808E1AC: .4byte gUnknown_080D8F18
_0808E1B0: .4byte gCurTask
_0808E1B4: .4byte sub_808E430
_0808E1B8:
	movs r0, #0x15
	strb r0, [r5, #0x17]
	ldr r0, _0808E1F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E1FC @ =sub_808E2E8
_0808E1C2:
	str r0, [r1, #8]
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	cmp r2, #1
	bgt _0808E1E0
	mov r0, ip
	ldrb r1, [r0, #7]
	movs r0, #4
	lsls r0, r2
	ands r1, r0
	cmp r1, #0
	bne _0808E1E0
	adds r0, r2, #2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0808E1E0:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r0, ip
	adds r0, #0x4c
	adds r1, r1, r0
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	b _0808E2DC
	.align 2, 0
_0808E1F8: .4byte gCurTask
_0808E1FC: .4byte sub_808E2E8
_0808E200:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808E26C
	movs r0, #0x67      @ SE_CHARSELECT_SLIDE
	bl m4aSongNumStart
	ldr r1, _0808E224 @ =gUnknown_030010AC
	mov ip, r1
	ldr r7, _0808E228 @ =gUnknown_080D8F18
_0808E214:
	movs r6, #0
	ldrb r1, [r5, #0x13]
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0808E22C
	subs r0, r1, #1
	b _0808E22E
	.align 2, 0
_0808E224: .4byte gUnknown_030010AC
_0808E228: .4byte gUnknown_080D8F18
_0808E22C:
	movs r0, #4
_0808E22E:
	strb r0, [r5, #0x13]
	movs r4, #0
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r2, r0, r7
	mov r3, ip
	ldrb r1, [r3]
	adds r3, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0808E248
	movs r6, #1
	b _0808E214
_0808E248:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0808E266
	add r0, ip
	adds r1, r3, r7
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0808E248
	movs r6, #1
_0808E266:
	cmp r6, #0
	bne _0808E214
	b _0808E2D8
_0808E26C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808E2D8
	movs r0, #0x67
	bl m4aSongNumStart
	ldr r2, _0808E294 @ =gUnknown_030010AC
	mov ip, r2
	ldr r7, _0808E298 @ =gUnknown_080D8F18
_0808E280:
	movs r6, #0
	ldrb r1, [r5, #0x13]
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bgt _0808E29C
	adds r0, r1, #1
	strb r0, [r5, #0x13]
	b _0808E29E
	.align 2, 0
_0808E294: .4byte gUnknown_030010AC
_0808E298: .4byte gUnknown_080D8F18
_0808E29C:
	strb r6, [r5, #0x13]
_0808E29E:
	movs r4, #0
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r2, r0, r7
	mov r3, ip
	ldrb r1, [r3]
	adds r3, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0808E2B6
	movs r6, #1
	b _0808E280
_0808E2B6:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0808E2D4
	add r0, ip
	adds r1, r3, r7
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0808E2B6
	movs r6, #1
_0808E2D4:
	cmp r6, #0
	bne _0808E280
_0808E2D8:
	ldrb r0, [r5, #0x13]
	strb r0, [r5, #0x12]
_0808E2DC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808E2E8
sub_808E2E8: @ 0x0808E2E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0808E340 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r4, _0808E344 @ =gUnknown_03001060
	ldrb r5, [r4, #7]
	ldr r0, _0808E348 @ =gStageData
	ldrb r6, [r0, #6]
	ldr r1, _0808E34C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8025024
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r1, #0
	mov r8, r5
	adds r4, #0x4c
	mov sl, r4
_0808E322:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r0, #4
	lsls r0, r2
	mov r3, r8
	ands r0, r3
	adds r5, r1, #0
	cmp r0, #0
	beq _0808E354
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E350 @ =gMultiSioRecv+2*0x18
	b _0808E35C
	.align 2, 0
_0808E340: .4byte gCurTask
_0808E344: .4byte gUnknown_03001060
_0808E348: .4byte gStageData
_0808E34C: .4byte gUnknown_080D8F18
_0808E350: .4byte gMultiSioRecv+2*0x18
_0808E354:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E38C @ =gMultiSioRecv
_0808E35C:
	adds r3, r0, r1
	asrs r0, r5, #0x10
	adds r2, r0, #2
	adds r0, r7, #0
	adds r0, #0xe
	adds r0, r0, r2
	ldrb r1, [r3, #4]
	strb r1, [r0]
	mov r0, sl
	adds r4, r2, r0
	ldrb r0, [r4]
	ldr r1, _0808E390 @ =gUnknown_03001060
	mov ip, r1
	cmp r0, #0xff
	bne _0808E396
	adds r0, r3, #0
	adds r0, #0xf
	adds r0, r0, r2
	ldrb r1, [r3, #4]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0808E394
	strb r1, [r4]
	b _0808E396
	.align 2, 0
_0808E38C: .4byte gMultiSioRecv
_0808E390: .4byte gUnknown_03001060
_0808E394:
	strb r0, [r4]
_0808E396:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0808E322
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808E3B4
	bl sub_802613C
	b _0808E418
_0808E3B4:
	cmp r0, #1
	bne _0808E40C
	lsls r1, r6, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #1
	bhi _0808E3C8
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r1, r2
	lsrs r6, r0, #0x10
_0808E3C8:
	cmp r6, #3
	bne _0808E3FC
	mov r0, ip
	adds r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0808E3EA
	mov r1, ip
	adds r1, #0x4f
	ldrb r3, [r1]
	cmp r0, r3
	bne _0808E3EA
	movs r0, #0x13
	strb r0, [r7, #0x17]
	movs r0, #0xff
	strb r0, [r1]
	b _0808E410
_0808E3EA:
	ldr r0, _0808E3F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E3F8 @ =sub_808E430
	b _0808E416
	.align 2, 0
_0808E3F4: .4byte gCurTask
_0808E3F8: .4byte sub_808E430
_0808E3FC:
	ldr r0, _0808E404 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E408 @ =sub_808E430
	b _0808E416
	.align 2, 0
_0808E404: .4byte gCurTask
_0808E408: .4byte sub_808E430
_0808E40C:
	cmp r0, #2
	bne _0808E418
_0808E410:
	ldr r0, _0808E428 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E42C @ =sub_808E068
_0808E416:
	str r0, [r1, #8]
_0808E418:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E428: .4byte gCurTask
_0808E42C: .4byte sub_808E068

	thumb_func_start sub_808E430
sub_808E430: @ 0x0808E430
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808E460 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0808E464 @ =gStageData
	ldrb r4, [r0, #6]
	ldr r0, _0808E468 @ =gUnknown_03001060
	ldrb r6, [r0, #7]
	cmp r4, #0
	bne _0808E470
	ldr r1, _0808E46C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024E1C
	b _0808E47E
	.align 2, 0
_0808E460: .4byte gCurTask
_0808E464: .4byte gStageData
_0808E468: .4byte gUnknown_03001060
_0808E46C: .4byte gUnknown_080D8F18
_0808E470:
	ldr r1, _0808E490 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80250EC
_0808E47E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808E494
	bl sub_802613C
	b _0808E6A4
	.align 2, 0
_0808E490: .4byte gUnknown_080D8F18
_0808E494:
	cmp r0, #1
	beq _0808E49A
	b _0808E634
_0808E49A:
	movs r1, #0
	ldr r0, _0808E4DC @ =gUnknown_03001060
	mov ip, r0
	lsls r4, r4, #0x10
	adds r7, r5, #0
	adds r7, #0xe
	movs r0, #0x4c
	add r0, ip
	mov r8, r0
	adds r3, r7, #0
_0808E4AE:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	adds r2, r0, r1
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E4AE
	asrs r1, r4, #0x10
	cmp r1, #1
	bgt _0808E4E0
	movs r0, #4
	lsls r0, r1
	ands r6, r0
	cmp r6, #0
	bne _0808E4E0
	adds r0, r1, #2
	b _0808E4E2
	.align 2, 0
_0808E4DC: .4byte gUnknown_03001060
_0808E4E0:
	lsrs r0, r4, #0x10
_0808E4E2:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #2
	beq _0808E4F2
	asrs r0, r4, #0x10
	cmp r0, #2
	bne _0808E5D4
_0808E4F2:
	mov r0, ip
	adds r0, #0x4f
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _0808E520
	mov r2, ip
	adds r2, #0x4e
	ldrb r0, [r2]
	cmp r0, r1
	bne _0808E520
	movs r0, #0x13
	strb r0, [r5, #0x17]
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _0808E518 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E51C @ =sub_808E068
	str r0, [r1, #8]
	b _0808E6A4
	.align 2, 0
_0808E518: .4byte gCurTask
_0808E51C: .4byte sub_808E068
_0808E520:
	movs r1, #0
	ldr r2, _0808E590 @ =gUnknown_030010AC
_0808E524:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #4
	bls _0808E532
	b _0808E6A4
_0808E532:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E524
	movs r1, #0x14
	ldrsb r1, [r5, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0808E59C
	lsrs r0, r4, #0x10
	cmp r0, #1
	bhi _0808E59C
	movs r1, #0
	ldr r5, _0808E590 @ =gUnknown_030010AC
	adds r3, r7, #0
_0808E556:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r5
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E556
	asrs r0, r4, #0x10
	add r0, ip
	adds r0, #0x4e
	ldrb r2, [r0]
	asrs r0, r6, #0x10
	cmp r0, #2
	beq _0808E5B8
	ldr r1, _0808E594 @ =gCharacterSelectedVoices
	ldr r0, _0808E598 @ =gUnknown_080D6EE0
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	b _0808E5B8
	.align 2, 0
_0808E590: .4byte gUnknown_030010AC
_0808E594: .4byte gCharacterSelectedVoices
_0808E598: .4byte gUnknown_080D6EE0
_0808E59C:
	asrs r0, r6, #0x10
	mov r1, ip
	adds r1, #0x4c
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, _0808E5C4 @ =gCharacterSelectedVoices
	ldr r1, _0808E5C8 @ =gUnknown_080D6EE0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl m4aSongNumStart
_0808E5B8:
	ldr r0, _0808E5CC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E5D0 @ =sub_808EDA8
	str r0, [r1, #8]
	b _0808E6A4
	.align 2, 0
_0808E5C4: .4byte gCharacterSelectedVoices
_0808E5C8: .4byte gUnknown_080D6EE0
_0808E5CC: .4byte gCurTask
_0808E5D0: .4byte sub_808EDA8
_0808E5D4:
	movs r1, #0
	ldr r2, _0808E620 @ =gUnknown_030010AC
_0808E5D8:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0808E6A4
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E5D8
	asrs r0, r4, #0x10
	cmp r0, #3
	bne _0808E612
	asrs r0, r6, #0x10
	mov r1, ip
	adds r1, #0x4c
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, _0808E624 @ =gCharacterSelectedVoices
	ldr r1, _0808E628 @ =gUnknown_080D6EE0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl m4aSongNumStart
_0808E612:
	movs r0, #0
	strh r0, [r5, #0xc]
	ldr r0, _0808E62C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E630 @ =sub_808E7B0
	str r0, [r1, #8]
	b _0808E6A4
	.align 2, 0
_0808E620: .4byte gUnknown_030010AC
_0808E624: .4byte gCharacterSelectedVoices
_0808E628: .4byte gUnknown_080D6EE0
_0808E62C: .4byte gCurTask
_0808E630: .4byte sub_808E7B0
_0808E634:
	movs r1, #0
	lsls r4, r4, #0x10
	adds r7, r5, #0
	adds r7, #0xe
_0808E63C:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r0, #4
	lsls r0, r2
	ands r0, r6
	adds r3, r1, #0
	cmp r0, #0
	beq _0808E65C
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E658 @ =gMultiSioRecv+2*0x18
	b _0808E664
	.align 2, 0
_0808E658: .4byte gMultiSioRecv+2*0x18
_0808E65C:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E68C @ =gMultiSioRecv
_0808E664:
	adds r2, r0, r1
	asrs r0, r3, #0x10
	adds r1, r0, #2
	adds r1, r7, r1
	ldrb r2, [r2, #4]
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0808E63C
	asrs r0, r4, #0x10
	cmp r0, #0
	bne _0808E694
	ldr r0, _0808E690 @ =gUnknown_080D6EE0
	movs r1, #0x10
	ldrsb r1, [r5, r1]
	b _0808E69E
	.align 2, 0
_0808E68C: .4byte gMultiSioRecv
_0808E690: .4byte gUnknown_080D6EE0
_0808E694:
	cmp r0, #1
	bne _0808E6A4
	ldr r0, _0808E6B0 @ =gUnknown_080D6EE0
	movs r1, #0x11
	ldrsb r1, [r5, r1]
_0808E69E:
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #0x12]
_0808E6A4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E6B0: .4byte gUnknown_080D6EE0

	thumb_func_start sub_808E6B4
sub_808E6B4: @ 0x0808E6B4
	push {r4, r5, r6, lr}
	ldr r0, _0808E6E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0808E6E4 @ =gStageData
	ldrb r4, [r0, #6]
	ldr r0, _0808E6E8 @ =gUnknown_03001060
	ldrb r6, [r0, #7]
	cmp r4, #0
	bne _0808E6F0
	ldr r1, _0808E6EC @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024F1C
	b _0808E6FE
	.align 2, 0
_0808E6E0: .4byte gCurTask
_0808E6E4: .4byte gStageData
_0808E6E8: .4byte gUnknown_03001060
_0808E6EC: .4byte gUnknown_080D8F18
_0808E6F0:
	ldr r1, _0808E710 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80251F8
_0808E6FE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808E714
	bl sub_802613C
	b _0808E7AA
	.align 2, 0
_0808E710: .4byte gUnknown_080D8F18
_0808E714:
	cmp r0, #1
	bne _0808E750
	movs r0, #0x13
	strb r0, [r5, #0x17]
	lsls r1, r4, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #1
	bhi _0808E72C
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r1, r2
	lsrs r4, r0, #0x10
_0808E72C:
	ldr r1, _0808E744 @ =gUnknown_03001060
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x4c
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	ldr r0, _0808E748 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E74C @ =sub_808E068
	b _0808E75A
	.align 2, 0
_0808E744: .4byte gUnknown_03001060
_0808E748: .4byte gCurTask
_0808E74C: .4byte sub_808E068
_0808E750:
	cmp r0, #2
	bne _0808E75C
	ldr r0, _0808E780 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E784 @ =sub_808E430
_0808E75A:
	str r0, [r1, #8]
_0808E75C:
	movs r1, #0
	adds r5, #0xe
	adds r4, r6, #0
	ldr r3, _0808E788 @ =gMultiSioRecv+2*0x18
	adds r6, r3, #0
	subs r6, #0x30
_0808E768:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r0, #4
	lsls r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0808E78C
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r2, r0, r3
	b _0808E794
	.align 2, 0
_0808E780: .4byte gCurTask
_0808E784: .4byte sub_808E430
_0808E788: .4byte gMultiSioRecv+2*0x18
_0808E78C:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r2, r0, r6
_0808E794:
	asrs r0, r1, #0x10
	adds r1, r0, #2
	adds r1, r5, r1
	ldrb r2, [r2, #4]
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0808E768
_0808E7AA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_808E7B0
sub_808E7B0: @ 0x0808E7B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0808E814 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov sb, r1
	ldr r0, _0808E818 @ =gStageData
	ldrb r5, [r0, #6]
	movs r4, #0
	ldr r0, _0808E81C @ =gPlayers
	mov r8, r0
	ldr r7, _0808E820 @ =gUnknown_030010AC
	movs r1, #0x10
	rsbs r1, r1, #0
	mov ip, r1
	movs r6, #0xf
_0808E7DA:
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	add r1, r8
	adds r0, r4, r7
	ldrb r0, [r0]
	adds r1, #0x2a
	adds r2, r6, #0
	ands r2, r0
	ldrb r3, [r1]
	mov r0, ip
	ands r0, r3
	orrs r0, r2
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0808E7DA
	lsls r0, r5, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0808E824
	bl sub_8025A90
	b _0808E828
	.align 2, 0
_0808E814: .4byte gCurTask
_0808E818: .4byte gStageData
_0808E81C: .4byte gPlayers
_0808E820: .4byte gUnknown_030010AC
_0808E824:
	bl sub_80253CC
_0808E828:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808E83A
	bl sub_802613C
	b _0808E850
_0808E83A:
	cmp r0, #1
	beq _0808E842
	cmp r4, #0
	bne _0808E850
_0808E842:
	movs r0, #0x14
	mov r1, sb
	strb r0, [r1, #0x17]
	ldr r0, _0808E85C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E860 @ =sub_808EDE4
	str r0, [r1, #8]
_0808E850:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E85C: .4byte gCurTask
_0808E860: .4byte sub_808EDE4

	thumb_func_start sub_808E864
sub_808E864: @ 0x0808E864
	push {r4, r5, r6, r7, lr}
	ldr r0, _0808E884 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r6, r4, #0
	ldr r0, _0808E888 @ =gStageData
	ldrb r7, [r0, #6]
	cmp r7, #0
	bne _0808E88C
	bl sub_8025A90
	b _0808E890
	.align 2, 0
_0808E884: .4byte gCurTask
_0808E888: .4byte gStageData
_0808E88C:
	bl sub_80253CC
_0808E890:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bge _0808E8A2
	bl sub_802613C
	b _0808E8EE
_0808E8A2:
	bl sub_808EF98
	adds r0, r6, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808E8EE
	ldrh r0, [r4, #0xc]
	subs r0, #1
	movs r2, #0
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	bgt _0808E8EE
	cmp r7, #0
	bne _0808E8D8
	ldr r0, _0808E8D4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808E8DE
	b _0808E8DC
	.align 2, 0
_0808E8D4: .4byte gPressedKeys
_0808E8D8:
	cmp r5, #1
	bne _0808E8DE
_0808E8DC:
	strh r2, [r4, #0xc]
_0808E8DE:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0808E8EE
	ldr r0, _0808E8F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E8F8 @ =sub_808E8FC
	str r0, [r1, #8]
_0808E8EE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E8F4: .4byte gCurTask
_0808E8F8: .4byte sub_808E8FC

	thumb_func_start sub_808E8FC
sub_808E8FC: @ 0x0808E8FC
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0808E91C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0808E920 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0808E924
	bl sub_8025360
	b _0808E928
	.align 2, 0
_0808E91C: .4byte gCurTask
_0808E920: .4byte gStageData
_0808E924:
	bl sub_8025AA8
_0808E928:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	bge _0808E93A
	bl sub_802613C
	b _0808E986
_0808E93A:
	adds r0, r5, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808E986
	cmp r4, #1
	bne _0808E986
	movs r3, #0
	str r3, [sp]
	ldr r2, _0808E990 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r0, _0808E994 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0808E998 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0808E99C @ =gBgSprites_Unknown1
	strb r3, [r0, #2]
	ldr r1, _0808E9A0 @ =gBgSprites_Unknown2
	strb r3, [r1, #8]
	strb r3, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	ldr r0, _0808E9A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E9A8 @ =sub_808E9AC
	str r0, [r1, #8]
_0808E986:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808E990: .4byte 0x040000D4
_0808E994: .4byte gBgCntRegs
_0808E998: .4byte 0x85000010
_0808E99C: .4byte gBgSprites_Unknown1
_0808E9A0: .4byte gBgSprites_Unknown2
_0808E9A4: .4byte gCurTask
_0808E9A8: .4byte sub_808E9AC

	thumb_func_start sub_808E9AC
sub_808E9AC: @ 0x0808E9AC
	push {r4, r5, r6, lr}
	ldr r0, _0808EA10 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _0808EA14 @ =gStageData
	ldrb r5, [r0, #6]
	movs r2, #0
	strb r2, [r6, #0x13]
	strb r2, [r6, #0x15]
	ldr r1, _0808EA18 @ =gDispCnt
	movs r3, #0xb2
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r4, _0808EA1C @ =gBgSprites_Unknown1
	strb r2, [r4]
	ldr r0, _0808EA20 @ =gBgSprites_Unknown2
	strb r2, [r0]
	strb r2, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r3, #0x20
	strb r3, [r0, #3]
	strb r2, [r4, #1]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	strb r2, [r4, #2]
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	strb r2, [r4, #3]
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r3, [r0, #0xf]
	cmp r5, #0
	bne _0808EA24
	ldrb r0, [r6, #0x15]
	bl sub_8025460
	b _0808EA28
	.align 2, 0
_0808EA10: .4byte gCurTask
_0808EA14: .4byte gStageData
_0808EA18: .4byte gDispCnt
_0808EA1C: .4byte gBgSprites_Unknown1
_0808EA20: .4byte gBgSprites_Unknown2
_0808EA24:
	bl sub_8025AA8
_0808EA28:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808EA38
	bl sub_802613C
	b _0808EA5C
_0808EA38:
	movs r1, #0
	strh r1, [r6]
	movs r0, #2
	strh r0, [r6, #2]
	strh r1, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r6, #6]
	movs r0, #0xff
	strh r0, [r6, #8]
	strh r1, [r6, #0xa]
	adds r0, r6, #0
	bl ScreenFadeUpdateValues
	ldr r0, _0808EA64 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EA68 @ =sub_808EA6C
	str r0, [r1, #8]
_0808EA5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808EA64: .4byte gCurTask
_0808EA68: .4byte sub_808EA6C

	thumb_func_start sub_808EA6C
sub_808EA6C: @ 0x0808EA6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0808EAA4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r7, r4, #0
	ldr r0, _0808EAA8 @ =gStageData
	ldrb r6, [r0, #6]
	ldr r1, _0808EAAC @ =gUnknown_080D6F0C
	mov r0, sp
	movs r2, #0x15
	bl memcpy
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r4, #0x15]
	cmp r6, #0
	bne _0808EAB0
	ldrb r0, [r4, #0x15]
	bl sub_8025460
	b _0808EAB4
	.align 2, 0
_0808EAA4: .4byte gCurTask
_0808EAA8: .4byte gStageData
_0808EAAC: .4byte gUnknown_080D6F0C
_0808EAB0:
	bl sub_80255B0
_0808EAB4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bge _0808EAC6
	bl sub_802613C
	b _0808EB48
_0808EAC6:
	bl sub_808EBBC
	adds r0, r7, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808EB48
	cmp r5, #1
	bne _0808EAEC
	ldr r0, _0808EAE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EAE8 @ =sub_808EB50
	str r0, [r1, #8]
	b _0808EB48
	.align 2, 0
_0808EAE4: .4byte gCurTask
_0808EAE8: .4byte sub_808EB50
_0808EAEC:
	cmp r6, #0
	bne _0808EB48
	ldr r0, _0808EB08 @ =gPressedKeys
	ldrh r1, [r0]
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _0808EB14
	ldr r0, _0808EB0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EB10 @ =sub_808EE8C
	str r0, [r1, #8]
	b _0808EB48
	.align 2, 0
_0808EB08: .4byte gPressedKeys
_0808EB0C: .4byte gCurTask
_0808EB10: .4byte sub_808EE8C
_0808EB14:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808EB2E
	ldrb r1, [r4, #0x13]
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #0x13
	ble _0808EB2A
	strb r2, [r4, #0x13]
	b _0808EB48
_0808EB2A:
	adds r0, r1, #1
	b _0808EB46
_0808EB2E:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808EB48
	ldrb r1, [r4, #0x13]
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _0808EB44
	movs r0, #0x14
	b _0808EB46
_0808EB44:
	subs r0, r1, #1
_0808EB46:
	strb r0, [r4, #0x13]
_0808EB48:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808EB50
sub_808EB50: @ 0x0808EB50
	push {r4, lr}
	ldr r0, _0808EB6C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808EB70 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0808EB74
	bl sub_8025534
	b _0808EB78
	.align 2, 0
_0808EB6C: .4byte gCurTask
_0808EB70: .4byte gStageData
_0808EB74:
	bl sub_8025614
_0808EB78:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808EB88
	bl sub_802613C
	b _0808EBAC
_0808EB88:
	movs r1, #0
	strh r1, [r4]
	movs r0, #1
	strh r0, [r4, #2]
	strh r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #6]
	movs r0, #0xff
	strh r0, [r4, #8]
	strh r1, [r4, #0xa]
	adds r0, r4, #0
	bl ScreenFadeUpdateValues
	ldr r0, _0808EBB4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EBB8 @ =sub_808EEB8
	str r0, [r1, #8]
_0808EBAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808EBB4: .4byte gCurTask
_0808EBB8: .4byte sub_808EEB8

	thumb_func_start sub_808EBBC
sub_808EBBC: @ 0x0808EBBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r0, _0808EC64 @ =gStageData
	ldrb r0, [r0, #6]
	mov sl, r0
	ldr r7, _0808EC68 @ =0x06000040
	ldr r0, _0808EC6C @ =gUnknown_03001060
	adds r0, #0x50
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	adds r5, r0, #0
	adds r5, #1
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	adds r4, r0, #0
	subs r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _0808EC70 @ =gStringSelectStage
	add r0, sp, #0xc
	bl sprintf
	ldr r0, _0808EC74 @ =gUnknown_082B5344
	mov sb, r0
	movs r1, #2
	mov r8, r1
	str r1, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	movs r6, #0
	str r6, [sp, #8]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0xa
	movs r3, #6
	bl RenderText
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r7, r7, r0
	ldr r1, _0808EC78 @ =gStringZoneNActN
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add r0, sp, #0xc
	adds r2, r5, #0
	adds r3, r4, #0
	bl sprintf
	mov r1, r8
	str r1, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r6, [sp, #8]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0xa
	movs r3, #8
	bl RenderText
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r7, r7, r1
	mov r0, sl
	cmp r0, #0
	bne _0808EC80
	ldr r1, _0808EC7C @ =gStringPressABtn
	add r0, sp, #0xc
	bl sprintf
	b _0808EC88
	.align 2, 0
_0808EC64: .4byte gStageData
_0808EC68: .4byte 0x06000040
_0808EC6C: .4byte gUnknown_03001060
_0808EC70: .4byte gStringSelectStage
_0808EC74: .4byte gUnknown_082B5344
_0808EC78: .4byte gStringZoneNActN
_0808EC7C: .4byte gStringPressABtn
_0808EC80:
	ldr r1, _0808ECB0 @ =gStringPleaseWait
	add r0, sp, #0xc
	bl sprintf
_0808EC88:
	ldr r1, _0808ECB4 @ =gUnknown_082B5344
	movs r0, #2
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r7, #0
	movs r2, #0xa
	movs r3, #0x10
	bl RenderText
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808ECB0: .4byte gStringPleaseWait
_0808ECB4: .4byte gUnknown_082B5344

	thumb_func_start sub_808ECB8
sub_808ECB8: @ 0x0808ECB8
	push {lr}
	bl sub_8027960
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808ECC4
sub_808ECC4: @ 0x0808ECC4
	push {r4, lr}
	ldr r4, _0808ECE8 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r1, _0808ECEC @ =gUnknown_03000FC0
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808ECE0
	ldr r1, [r4]
	ldr r0, _0808ECF0 @ =sub_808D00C
	str r0, [r1, #8]
_0808ECE0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808ECE8: .4byte gCurTask
_0808ECEC: .4byte gUnknown_03000FC0
_0808ECF0: .4byte sub_808D00C

	thumb_func_start sub_808ECF4
sub_808ECF4: @ 0x0808ECF4
	push {r4, lr}
	ldr r0, _0808ED24 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r1, _0808ED28 @ =gUnknown_03000FC0
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808ED50
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _0808ED3A
	cmp r0, #1
	bgt _0808ED2C
	cmp r0, #0
	beq _0808ED32
	b _0808ED48
	.align 2, 0
_0808ED24: .4byte gCurTask
_0808ED28: .4byte gUnknown_03000FC0
_0808ED2C:
	cmp r0, #2
	beq _0808ED40
	b _0808ED48
_0808ED32:
	movs r0, #0
	bl sub_808D0F0
	b _0808ED48
_0808ED3A:
	bl sub_8027960
	b _0808ED48
_0808ED40:
	movs r0, #0
	movs r1, #0
	bl LaunchChaoMenu
_0808ED48:
	ldr r0, _0808ED58 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808ED50:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808ED58: .4byte gCurTask

	thumb_func_start sub_808ED5C
sub_808ED5C: @ 0x0808ED5C
	bx lr
	.align 2, 0

	thumb_func_start sub_808ED60
sub_808ED60: @ 0x0808ED60
	push {r4, r5, lr}
	ldr r5, _0808EDA4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808ED9C
	ldrb r0, [r4, #0x17]
	cmp r0, #0x22
	bhi _0808ED84
	movs r0, #0x23
	strb r0, [r4, #0x17]
_0808ED84:
	ldrb r0, [r4, #0x17]
	cmp r0, #0x26
	bne _0808ED9C
	bl sub_80260F0
	movs r0, #0
	movs r1, #4
	bl LaunchChaoMenu
	ldr r0, [r5]
	bl TaskDestroy
_0808ED9C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808EDA4: .4byte gCurTask

	thumb_func_start sub_808EDA8
sub_808EDA8: @ 0x0808EDA8
	push {r4, r5, lr}
	ldr r5, _0808EDC8 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_8025A38
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808EDCC
	bl sub_802613C
	b _0808EDDA
	.align 2, 0
_0808EDC8: .4byte gCurTask
_0808EDCC:
	cmp r0, #1
	bne _0808EDDA
	movs r0, #0
	strh r0, [r4, #0xc]
	ldr r1, [r5]
	ldr r0, _0808EDE0 @ =sub_808E7B0
	str r0, [r1, #8]
_0808EDDA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808EDE0: .4byte sub_808E7B0

	thumb_func_start sub_808EDE4
sub_808EDE4: @ 0x0808EDE4
	push {r4, lr}
	ldr r0, _0808EE00 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808EE04 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0808EE08
	bl sub_8025A90
	b _0808EE0C
	.align 2, 0
_0808EE00: .4byte gCurTask
_0808EE04: .4byte gStageData
_0808EE08:
	bl sub_80253CC
_0808EE0C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808EE1C
	bl sub_802613C
	b _0808EE2A
_0808EE1C:
	ldrb r0, [r4, #0x17]
	cmp r0, #0x26
	bne _0808EE2A
	ldr r0, _0808EE30 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808EE2A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808EE30: .4byte gCurTask

	thumb_func_start sub_808EE34
sub_808EE34: @ 0x0808EE34
	push {r4, lr}
	ldr r0, _0808EE50 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808EE54 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0808EE58
	bl sub_8025A90
	b _0808EE5C
	.align 2, 0
_0808EE50: .4byte gCurTask
_0808EE54: .4byte gStageData
_0808EE58:
	bl sub_80253CC
_0808EE5C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808EE6C
	bl sub_802613C
	b _0808EE7C
_0808EE6C:
	bl sub_808EF98
	movs r0, #0x78
	strh r0, [r4, #0xc]
	ldr r0, _0808EE84 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EE88 @ =sub_808E864
	str r0, [r1, #8]
_0808EE7C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808EE84: .4byte gCurTask
_0808EE88: .4byte sub_808E864

	thumb_func_start sub_808EE8C
sub_808EE8C: @ 0x0808EE8C
	push {lr}
	bl sub_8025534
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808EEA0
	bl sub_802613C
	b _0808EEAC
_0808EEA0:
	cmp r0, #1
	bne _0808EEAC
	ldr r0, _0808EEB0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EEB4 @ =sub_808EB50
	str r0, [r1, #8]
_0808EEAC:
	pop {r0}
	bx r0
	.align 2, 0
_0808EEB0: .4byte gCurTask
_0808EEB4: .4byte sub_808EB50

	thumb_func_start sub_808EEB8
sub_808EEB8: @ 0x0808EEB8
	push {r4, lr}
	ldr r0, _0808EED4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808EED8 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0808EEDC
	bl sub_8025534
	b _0808EEE0
	.align 2, 0
_0808EED4: .4byte gCurTask
_0808EED8: .4byte gStageData
_0808EEDC:
	bl sub_8025614
_0808EEE0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808EEF0
	bl sub_802613C
	b _0808EF04
_0808EEF0:
	adds r0, r4, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0808EF04
	ldr r0, _0808EF0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808EF10 @ =sub_808EF14
	str r0, [r1, #8]
_0808EF04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808EF0C: .4byte gCurTask
_0808EF10: .4byte sub_808EF14

	thumb_func_start sub_808EF14
sub_808EF14: @ 0x0808EF14
	push {r4, lr}
	ldr r0, _0808EF30 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808EF34 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0808EF38
	bl sub_8025674
	b _0808EF3C
	.align 2, 0
_0808EF30: .4byte gCurTask
_0808EF34: .4byte gStageData
_0808EF38:
	bl sub_8025B48
_0808EF3C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808EF4E
	bl sub_802613C
	b _0808EF76
_0808EF4E:
	cmp r0, #1
	bne _0808EF76
	ldr r1, _0808EF7C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0808EF80 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0808EF84 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0808EF88 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0808EF8C @ =gVramGraphicsCopyCursor
	ldr r0, _0808EF90 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4, #0x15]
	bl sub_80022E8
_0808EF76:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808EF7C: .4byte 0x0000FFFF
_0808EF80: .4byte gBackgroundsCopyQueueCursor
_0808EF84: .4byte gBackgroundsCopyQueueIndex
_0808EF88: .4byte gBgSpritesCount
_0808EF8C: .4byte gVramGraphicsCopyCursor
_0808EF90: .4byte gVramGraphicsCopyQueueIndex
	.align 2, 0

	thumb_func_start sub_808EF94
sub_808EF94: @ 0x0808EF94
	bx lr
	.align 2, 0

	thumb_func_start sub_808EF98
sub_808EF98: @ 0x0808EF98
	bx lr
	.align 2, 0

	thumb_func_start OptionsSlideInit_PlayerData
OptionsSlideInit_PlayerData: @ 0x0808EF9C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r0, _0808F058 @ =sub_808F268
	movs r1, #0xb2
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0808F05C @ =sub_808F5DC
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	str r4, [r6, #8]
	str r5, [r6, #4]
	movs r3, #0
	adds r0, #0x14
	adds r0, r0, r1
	mov ip, r0
	ldr r4, _0808F060 @ =gBgScrollRegs
	ldr r2, _0808F064 @ =0x03000018
	adds r2, r2, r1
	mov sb, r2
	adds r5, r4, #0
_0808EFDE:
	lsls r1, r3, #3
	mov r7, ip
	adds r2, r7, r1
	movs r7, #4
	ldrsh r0, [r4, r7]
	rsbs r0, r0, #0
	str r0, [r2]
	add r1, sb
	movs r2, #4
	ldrsh r0, [r4, r2]
	rsbs r0, r0, #0
	adds r0, #0xa
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0808EFDE
	movs r7, #4
	ldrsh r0, [r5, r7]
	rsbs r0, r0, #0
	str r0, [r6, #0x34]
	movs r1, #6
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	str r0, [r6, #0x38]
	ldrh r0, [r5, #4]
	rsbs r0, r0, #0
	adds r0, #0x64
	adds r1, r6, #0
	adds r1, #0x44
	strh r0, [r1]
	ldrh r0, [r5, #6]
	rsbs r0, r0, #0
	adds r1, #2
	strh r0, [r1]
	movs r2, #4
	ldrsh r0, [r5, r2]
	rsbs r0, r0, #0
	str r0, [r6, #0x3c]
	movs r7, #6
	ldrsh r0, [r5, r7]
	rsbs r0, r0, #0
	str r0, [r6, #0x40]
	mov r0, r8
	str r0, [r6, #0x48]
	ldr r0, _0808F068 @ =gLoadedSaveGame
	ldr r1, _0808F06C @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r6]
	adds r0, r6, #0
	bl sub_808F070
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F058: .4byte sub_808F268
_0808F05C: .4byte sub_808F5DC
_0808F060: .4byte gBgScrollRegs
_0808F064: .4byte 0x03000018
_0808F068: .4byte gLoadedSaveGame
_0808F06C: .4byte 0x00000366

	thumb_func_start sub_808F070
sub_808F070: @ 0x0808F070
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r6, #0x48]
	str r1, [r0]
	ldr r3, _0808F258 @ =gUnknown_080D7054
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x48]
	adds r1, r1, r2
	str r1, [r6, #0x48]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r4, #0
	movs r2, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r6, #0
	adds r1, #0x44
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r6, #0
	adds r1, #0x46
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r4, #0
	ldr r7, _0808F25C @ =gUnknown_080D6F5C
	movs r5, #0
	adds r2, r6, #0
	adds r2, #0x14
	str r2, [sp]
	adds r0, r6, #0
	adds r0, #0x18
	str r0, [sp, #4]
_0808F0F4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x4c
	adds r0, r6, r0
	ldr r1, [r6, #0x48]
	str r1, [r0]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r2, r7, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x48]
	adds r1, r1, r2
	str r1, [r6, #0x48]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	lsls r2, r4, #3
	adds r1, r6, #0
	adds r1, #0x14
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r6, #0
	adds r1, #0x18
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r2, #0
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0808F0F4
	adds r0, r6, #0
	adds r0, #0xec
	ldr r1, [r6, #0x48]
	str r1, [r0]
	ldr r3, _0808F260 @ =gUnknown_080D7024
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x48]
	adds r1, r1, r2
	str r1, [r6, #0x48]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x34]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r6, #0x48]
	str r1, [r0]
	ldr r3, _0808F264 @ =gUnknown_080D701C
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r6, #0x48]
	adds r1, r1, r2
	str r1, [r6, #0x48]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #8]
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #3
	ldr r2, [sp]
	adds r1, r2, r1
	ldr r1, [r1]
	subs r1, #1
	strh r1, [r0, #0x10]
	ldr r3, [r6, #8]
	movs r2, #0
	ldrsh r1, [r3, r2]
	lsls r1, r1, #3
	ldr r2, [sp, #4]
	adds r1, r2, r1
	ldr r2, [r1]
	ldrh r1, [r3]
	lsls r1, r1, #4
	adds r2, r2, r1
	adds r2, #1
	strh r2, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F258: .4byte gUnknown_080D7054
_0808F25C: .4byte gUnknown_080D6F5C
_0808F260: .4byte gUnknown_080D7024
_0808F264: .4byte gUnknown_080D701C

	thumb_func_start sub_808F268
sub_808F268: @ 0x0808F268
	push {r4, r5, lr}
	ldr r5, _0808F2A0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808F4AC
	ldr r2, _0808F2A4 @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0808F2A8
	ldr r0, [r4, #0x3c]
	cmn r0, r1
	bgt _0808F2A8
	ldr r0, [r4, #4]
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5]
	bl TaskDestroy
	b _0808F3A4
	.align 2, 0
_0808F2A0: .4byte gCurTask
_0808F2A4: .4byte gBgScrollRegs
_0808F2A8:
	ldr r5, _0808F310 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x3c]
	movs r3, #4
	ldrsh r1, [r5, r3]
	movs r0, #0x64
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0808F2D6
	adds r0, r4, #0
	bl sub_808F3AC
	adds r0, r4, #0
	bl sub_808F564
	adds r0, r4, #0
	bl sub_808F598
	adds r0, r4, #0
	bl sub_808F528
_0808F2D6:
	ldr r0, _0808F314 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _0808F3A4
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0808F3A4
	ldr r0, _0808F318 @ =gPressedKeys
	ldrh r1, [r0]
	movs r5, #1
	ands r5, r1
	cmp r5, #0
	bne _0808F324
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808F340
	movs r0, #0x6b
	bl m4aSongNumStart
	ldr r0, [r4, #4]
	strb r5, [r0]
	ldr r0, _0808F31C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808F320 @ =sub_808F434
	str r0, [r1, #8]
	b _0808F3A4
	.align 2, 0
_0808F310: .4byte gBgScrollRegs
_0808F314: .4byte gBldRegs
_0808F318: .4byte gPressedKeys
_0808F31C: .4byte gCurTask
_0808F320: .4byte sub_808F434
_0808F324:
	ldr r0, [r4, #8]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #2
	bgt _0808F340
	ldr r0, _0808F338 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808F33C @ =sub_808F5E0
	str r0, [r1, #8]
	b _0808F3A4
	.align 2, 0
_0808F338: .4byte gCurTask
_0808F33C: .4byte sub_808F5E0
_0808F340:
	ldr r0, _0808F37C @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0808F3A4
	ldr r5, _0808F380 @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _0808F3A4
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808F388
	ldr r1, [r4, #8]
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0808F384
	movs r0, #3
	b _0808F3A2
	.align 2, 0
_0808F37C: .4byte gBgScrollRegs
_0808F380: .4byte gRepeatedKeys
_0808F384:
	subs r0, r2, #1
	b _0808F3A2
_0808F388:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808F3A4
	ldr r1, [r4, #8]
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #3
	bne _0808F3A0
	strh r3, [r1]
	b _0808F3A4
_0808F3A0:
	adds r0, r2, #1
_0808F3A2:
	strh r0, [r1]
_0808F3A4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_808F3AC
sub_808F3AC: @ 0x0808F3AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r5, #0
	ldr r7, _0808F40C @ =gUnknown_080D6F5C
	movs r0, #0
	mov r8, r0
_0808F3BC:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x4c
	adds r4, r6, r0
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	lsls r1, r5, #3
	adds r0, r6, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r5, #4
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r6, #8]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r5, r0
	beq _0808F410
	movs r0, #1
	b _0808F412
	.align 2, 0
_0808F40C: .4byte gUnknown_080D6F5C
_0808F410:
	mov r0, r8
_0808F412:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0808F3BC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808F434
sub_808F434: @ 0x0808F434
	push {r4, r5, lr}
	ldr r5, _0808F46C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808F4AC
	ldr r2, _0808F470 @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0808F474
	ldr r0, [r4, #0x3c]
	cmn r0, r1
	bgt _0808F474
	ldr r0, [r4, #4]
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5]
	bl TaskDestroy
	b _0808F4A2
	.align 2, 0
_0808F46C: .4byte gCurTask
_0808F470: .4byte gBgScrollRegs
_0808F474:
	ldr r1, _0808F4A8 @ =gBgScrollRegs
	movs r2, #4
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	str r0, [r4, #0x3c]
	movs r0, #4
	ldrsh r1, [r1, r0]
	movs r0, #0x64
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0808F4A2
	adds r0, r4, #0
	bl sub_808F3AC
	adds r0, r4, #0
	bl sub_808F564
	adds r0, r4, #0
	bl sub_808F598
	adds r0, r4, #0
	bl sub_808F528
_0808F4A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808F4A8: .4byte gBgScrollRegs

	thumb_func_start sub_808F4AC
sub_808F4AC: @ 0x0808F4AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r2, #0
	ldr r6, _0808F524 @ =gBgScrollRegs
	movs r0, #0x14
	adds r0, r0, r3
	mov ip, r0
	movs r7, #4
	ldrsh r1, [r6, r7]
	movs r0, #0x28
	subs r0, r0, r1
	mov r8, r0
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #0x32
	subs r5, r0, r1
	adds r4, r3, #0
	adds r4, #0x18
_0808F4D4:
	lsls r1, r2, #3
	mov r7, ip
	adds r0, r7, r1
	mov r7, r8
	str r7, [r0]
	adds r1, r4, r1
	str r5, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0808F4D4
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #0x78
	subs r0, r0, r1
	str r0, [r3, #0x34]
	movs r7, #6
	ldrsh r1, [r6, r7]
	movs r0, #0x87
	subs r0, r0, r1
	str r0, [r3, #0x38]
	ldrh r1, [r6, #4]
	movs r0, #0x78
	subs r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x44
	strh r0, [r1]
	ldrh r1, [r6, #6]
	movs r0, #0x1e
	subs r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x46
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F524: .4byte gBgScrollRegs

	thumb_func_start sub_808F528
sub_808F528: @ 0x0808F528
	push {lr}
	adds r3, r0, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r2, _0808F560 @ =gUnknown_080D7054
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r3, #0
	adds r1, #0x44
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r3, #0
	adds r1, #0x46
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_0808F560: .4byte gUnknown_080D7054

	thumb_func_start sub_808F564
sub_808F564: @ 0x0808F564
	push {lr}
	adds r2, r0, #0
	adds r2, #0xec
	ldr r3, _0808F594 @ =gUnknown_080D7024
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r2, #0x1a]
	ldr r1, [r0, #0x34]
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x38]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_0808F594: .4byte gUnknown_080D7024

	thumb_func_start sub_808F598
sub_808F598: @ 0x0808F598
	push {lr}
	mov ip, r0
	movs r0, #0x9e
	lsls r0, r0, #1
	add r0, ip
	mov r2, ip
	ldr r1, [r2, #8]
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r2, r2, #3
	mov r1, ip
	adds r1, #0x14
	adds r1, r1, r2
	ldr r1, [r1]
	subs r1, #1
	strh r1, [r0, #0x10]
	mov r1, ip
	ldr r3, [r1, #8]
	movs r1, #0
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	mov r1, ip
	adds r1, #0x18
	adds r1, r1, r2
	ldr r2, [r1]
	ldrh r1, [r3]
	lsls r1, r1, #4
	adds r2, r2, r1
	adds r2, #1
	strh r2, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_808F5DC
sub_808F5DC: @ 0x0808F5DC
	bx lr
	.align 2, 0

	thumb_func_start sub_808F5E0
sub_808F5E0: @ 0x0808F5E0
	push {r4, r5, lr}
	ldr r5, _0808F630 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808F4AC
	adds r0, r4, #0
	bl sub_808F3AC
	adds r0, r4, #0
	bl sub_808F528
	adds r0, r4, #0
	bl sub_808F564
	adds r0, r4, #0
	bl sub_808F598
	ldr r2, _0808F634 @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0808F638
	ldr r0, [r4, #0x3c]
	cmn r0, r1
	bgt _0808F638
	ldr r0, [r4, #4]
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5]
	bl TaskDestroy
	b _0808F652
	.align 2, 0
_0808F630: .4byte gCurTask
_0808F634: .4byte gBgScrollRegs
_0808F638:
	ldr r0, _0808F658 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x3c]
	ldr r0, _0808F65C @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0xe
	bls _0808F652
	ldr r0, _0808F660 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808F652:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808F658: .4byte gBgScrollRegs
_0808F65C: .4byte gBldRegs
_0808F660: .4byte gCurTask

	thumb_func_start OptionsSlideInit_Difficulty
OptionsSlideInit_Difficulty: @ 0x0808F664
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov sl, r1
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0808F730 @ =sub_808F904
	movs r1, #0x82
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0808F734 @ =sub_808FBB0
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	strh r4, [r3, #8]
	str r5, [r3, #4]
	movs r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	mov ip, r0
	ldr r5, _0808F738 @ =gBgScrollRegs
	movs r2, #0x37
	mov sb, r2
	adds r6, r5, #0
	ldr r7, _0808F73C @ =0x03000010
	adds r7, r1, r7
	str r7, [sp, #4]
	movs r0, #0x46
	mov r8, r0
_0808F6B4:
	lsls r1, r4, #3
	mov r7, ip
	adds r2, r7, r1
	movs r7, #4
	ldrsh r0, [r5, r7]
	mov r7, sb
	subs r0, r7, r0
	str r0, [r2]
	ldr r0, [sp, #4]
	adds r1, r0, r1
	movs r2, #6
	ldrsh r0, [r5, r2]
	mov r7, r8
	subs r0, r7, r0
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0808F6B4
	movs r1, #4
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	str r0, [r3, #0x1c]
	movs r2, #6
	ldrsh r0, [r6, r2]
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	ldrh r0, [r6, #4]
	rsbs r0, r0, #0
	adds r0, #0x64
	strh r0, [r3, #0x34]
	ldrh r0, [r6, #6]
	rsbs r0, r0, #0
	strh r0, [r3, #0x36]
	movs r7, #4
	ldrsh r0, [r6, r7]
	rsbs r0, r0, #0
	str r0, [r3, #0x24]
	movs r1, #6
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	mov r2, sl
	str r2, [r3, #0x38]
	ldr r0, _0808F740 @ =gLoadedSaveGame
	ldr r7, _0808F744 @ =0x00000366
	adds r0, r0, r7
	ldrb r0, [r0]
	strb r0, [r3]
	adds r0, r3, #0
	bl sub_808F748
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F730: .4byte sub_808F904
_0808F734: .4byte sub_808FBB0
_0808F738: .4byte gBgScrollRegs
_0808F73C: .4byte 0x03000010
_0808F740: .4byte gLoadedSaveGame
_0808F744: .4byte 0x00000366

	thumb_func_start sub_808F748
sub_808F748: @ 0x0808F748
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r0, #0xdc
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldr r3, _0808F8F4 @ =gUnknown_080D7084
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r4, #0
	movs r2, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldrh r1, [r6, #0x34]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldrh r1, [r6, #0x36]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r4, #0
	ldr r7, _0808F8F8 @ =gUnknown_080D6AE8
	movs r5, #0
_0808F7B2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r6, r0
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r2, r7, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	lsls r2, r4, #3
	adds r1, r6, #0
	adds r1, #0xc
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r6, #0
	adds r1, #0x10
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r2, #0
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0808F7B2
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldr r3, _0808F8FC @ =gUnknown_080D7024
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldr r3, _0808F900 @ =gUnknown_080D70B4
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x2c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x30]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F8F4: .4byte gUnknown_080D7084
_0808F8F8: .4byte gUnknown_080D6AE8
_0808F8FC: .4byte gUnknown_080D7024
_0808F900: .4byte gUnknown_080D70B4

	thumb_func_start sub_808F904
sub_808F904: @ 0x0808F904
	push {r4, lr}
	ldr r0, _0808F954 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_808FA9C
	adds r0, r4, #0
	bl sub_808FA18
	adds r0, r4, #0
	bl sub_808FB10
	adds r0, r4, #0
	bl sub_808FB44
	adds r0, r4, #0
	bl sub_808FB78
	ldr r0, _0808F958 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0808F984
	ldr r0, _0808F95C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808F984
	movs r2, #8
	ldrsh r1, [r4, r2]
	cmp r1, #0
	beq _0808F960
	cmp r1, #1
	beq _0808F970
	b _0808FA12
	.align 2, 0
_0808F954: .4byte gCurTask
_0808F958: .4byte gBgScrollRegs
_0808F95C: .4byte gPressedKeys
_0808F960:
	ldr r0, _0808F96C @ =gLoadedSaveGame
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r0, r0, r3
	strb r1, [r0]
	b _0808FA12
	.align 2, 0
_0808F96C: .4byte gLoadedSaveGame
_0808F970:
	ldr r0, _0808F980 @ =gLoadedSaveGame
	movs r1, #0xd9
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _0808FA12
	.align 2, 0
_0808F980: .4byte gLoadedSaveGame
_0808F984:
	ldr r0, _0808F9B0 @ =gBgScrollRegs
	movs r3, #4
	ldrsh r2, [r0, r3]
	movs r1, #0xc8
	rsbs r1, r1, #0
	adds r3, r0, #0
	cmp r2, r1
	bgt _0808F9B8
	movs r0, #4
	ldrsh r1, [r3, r0]
	ldr r0, [r4, #0x24]
	cmn r0, r1
	bgt _0808F9B8
	ldr r1, [r4, #4]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0808F9B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808FA12
	.align 2, 0
_0808F9B0: .4byte gBgScrollRegs
_0808F9B4: .4byte gCurTask
_0808F9B8:
	movs r1, #4
	ldrsh r0, [r3, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x24]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bne _0808FA12
	ldr r0, _0808F9F0 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0808FA12
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0808F9F8
	ldrh r1, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _0808F9F4
	movs r0, #1
	b _0808FA10
	.align 2, 0
_0808F9F0: .4byte gRepeatedKeys
_0808F9F4:
	subs r0, r1, #1
	b _0808FA10
_0808F9F8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808FA12
	ldrh r1, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #1
	bne _0808FA0E
	strh r2, [r4, #8]
	b _0808FA12
_0808FA0E:
	adds r0, r1, #1
_0808FA10:
	strh r0, [r4, #8]
_0808FA12:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_808FA18
sub_808FA18: @ 0x0808FA18
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r5, #0
	ldr r7, _0808FA74 @ =gUnknown_080D6AE8
	movs r0, #0
	mov r8, r0
_0808FA28:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r4, r6, r0
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	lsls r2, r5, #3
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r5, #6
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp r5, r0
	beq _0808FA78
	movs r0, #1
	b _0808FA7A
	.align 2, 0
_0808FA74: .4byte gUnknown_080D6AE8
_0808FA78:
	mov r0, r8
_0808FA7A:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0808FA28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_808FA9C
sub_808FA9C: @ 0x0808FA9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r2, #0
	ldr r6, _0808FB0C @ =gBgScrollRegs
	movs r0, #0xc
	adds r0, r0, r3
	mov ip, r0
	movs r7, #4
	ldrsh r1, [r6, r7]
	movs r0, #0x37
	subs r0, r0, r1
	mov r8, r0
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #0x46
	subs r5, r0, r1
	adds r4, r3, #0
	adds r4, #0x10
_0808FAC4:
	lsls r1, r2, #3
	mov r7, ip
	adds r0, r7, r1
	mov r7, r8
	str r7, [r0]
	adds r1, r4, r1
	str r5, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _0808FAC4
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #0x78
	subs r0, r0, r1
	str r0, [r3, #0x1c]
	movs r7, #6
	ldrsh r1, [r6, r7]
	movs r0, #0x87
	subs r0, r0, r1
	str r0, [r3, #0x20]
	ldrh r1, [r6, #4]
	movs r0, #0x78
	subs r0, r0, r1
	strh r0, [r3, #0x34]
	ldrh r1, [r6, #6]
	movs r0, #0x1e
	subs r0, r0, r1
	strh r0, [r3, #0x36]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FB0C: .4byte gBgScrollRegs

	thumb_func_start sub_808FB10
sub_808FB10: @ 0x0808FB10
	push {lr}
	adds r2, r0, #0
	adds r2, #0xdc
	ldr r3, _0808FB40 @ =gUnknown_080D7084
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r2, #0x1a]
	ldrh r1, [r0, #0x34]
	strh r1, [r2, #0x10]
	ldrh r0, [r0, #0x36]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_0808FB40: .4byte gUnknown_080D7084

	thumb_func_start sub_808FB44
sub_808FB44: @ 0x0808FB44
	push {lr}
	adds r2, r0, #0
	adds r2, #0x8c
	ldr r3, _0808FB74 @ =gUnknown_080D7024
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r2, #0x1a]
	ldr r1, [r0, #0x1c]
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x20]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_0808FB74: .4byte gUnknown_080D7024

	thumb_func_start sub_808FB78
sub_808FB78: @ 0x0808FB78
	push {lr}
	adds r3, r0, #0
	adds r0, #0xb4
	movs r1, #8
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	adds r1, r3, #0
	adds r1, #0xc
	adds r1, r1, r2
	ldr r2, [r1]
	ldrh r1, [r3, #8]
	lsls r1, r1, #6
	adds r2, r2, r1
	subs r2, #3
	strh r2, [r0, #0x10]
	movs r1, #8
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	adds r1, r3, #0
	adds r1, #0x10
	adds r1, r1, r2
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
    
	thumb_func_start sub_808FBB0
sub_808FBB0: @ 0x0808FBB0
	bx lr
	.align 2, 0

	thumb_func_start OptionsSlideInit_Language
OptionsSlideInit_Language: @ 0x0808FBB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r1, [sp, #4]
	mov r8, r2
	adds r6, r3, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0808FCC8 @ =sub_808FFEC
	movs r1, #0x93
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0808FCCC @ =sub_8090310
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	mov r0, r8
	cmp r0, #0
	bne _0808FBEE
	ldr r1, _0808FCD0 @ =gBgScrollRegs
	strh r0, [r1, #4]
	ldr r0, _0808FCD4 @ =0x0000FFF6
	strh r0, [r1, #6]
_0808FBEE:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	str r6, [r4, #4]
	movs r1, #0
	strh r5, [r4, #0xa]
	mov r2, r8
	str r2, [r4, #0xc]
	strb r1, [r4, #8]
	movs r3, #0
	ldr r5, _0808FCD0 @ =gBgScrollRegs
	ldr r7, _0808FCD8 @ =0x03000014
	adds r7, r7, r0
	mov ip, r7
	adds r6, r5, #0
	movs r1, #0x28
	mov sl, r1
	ldr r2, _0808FCDC @ =0x03000018
	adds r2, r0, r2
	str r2, [sp, #8]
	movs r7, #0x26
	mov sb, r7
_0808FC1C:
	lsls r1, r3, #3
	mov r0, ip
	adds r2, r0, r1
	movs r7, #4
	ldrsh r0, [r6, r7]
	mov r7, sl
	subs r0, r7, r0
	str r0, [r2]
	ldr r0, [sp, #8]
	adds r1, r0, r1
	movs r2, #6
	ldrsh r0, [r6, r2]
	mov r7, sb
	subs r0, r7, r0
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #5
	bls _0808FC1C
	movs r1, #4
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x44]
	movs r2, #6
	ldrsh r0, [r5, r2]
	rsbs r0, r0, #0
	str r0, [r4, #0x48]
	ldrh r0, [r5, #4]
	rsbs r0, r0, #0
	adds r0, #0x64
	adds r1, r4, #0
	adds r1, #0x54
	strh r0, [r1]
	ldrh r0, [r5, #6]
	rsbs r0, r0, #0
	adds r1, #2
	strh r0, [r1]
	movs r7, #4
	ldrsh r0, [r5, r7]
	rsbs r0, r0, #0
	str r0, [r4, #0x4c]
	movs r1, #6
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x50]
	ldr r2, [sp, #4]
	str r2, [r4, #0x60]
	ldr r7, _0808FCE0 @ =gLoadedSaveGame
	ldr r0, _0808FCE4 @ =0x00000366
	adds r1, r7, r0
	ldrb r0, [r1]
	strb r0, [r4]
	ldr r2, [r4, #0xc]
	ldrb r0, [r1]
	strh r0, [r2]
	ldrb r0, [r1]
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	bl sub_808FDCC
	mov r1, r8
	cmp r1, #0
	bne _0808FCB6
	adds r0, r4, #0
	bl sub_808FCF4
	ldr r0, _0808FCE8 @ =gUnknown_080D6C1C
	ldr r1, _0808FCEC @ =gObjPalette
	movs r2, #0x80
	bl CpuFastSet
	ldr r2, _0808FCF0 @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_0808FCB6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FCC8: .4byte sub_808FFEC
_0808FCCC: .4byte sub_8090310
_0808FCD0: .4byte gBgScrollRegs
_0808FCD4: .4byte 0x0000FFF6
_0808FCD8: .4byte 0x03000014
_0808FCDC: .4byte 0x03000018
_0808FCE0: .4byte gLoadedSaveGame
_0808FCE4: .4byte 0x00000366
_0808FCE8: .4byte gUnknown_080D6C1C
_0808FCEC: .4byte gObjPalette
_0808FCF0: .4byte gFlags

	thumb_func_start sub_808FCF4
sub_808FCF4: @ 0x0808FCF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r1, _0808FD9C @ =gDispCnt
	ldr r2, _0808FDA0 @ =0x00001341
	adds r0, r2, #0
	strh r0, [r1]
	ldr r6, _0808FDA4 @ =gBgCntRegs
	movs r0, #0
	mov r8, r0
	movs r4, #0
	ldr r0, _0808FDA8 @ =0x00000603
	strh r0, [r6]
	ldr r5, _0808FDAC @ =gBgScrollRegs
	strh r4, [r5]
	strh r4, [r5, #2]
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0808FDB0 @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _0808FDB4 @ =0x0000015D
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _0808FDB8 @ =0x00000236
	adds r1, r7, r2
	mov r2, r8
	strb r2, [r1]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _0808FDBC @ =0x00005E06
	strh r0, [r6, #2]
	strh r4, [r5, #4]
	ldr r0, _0808FDC0 @ =0x0000FFF6
	strh r0, [r5, #6]
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, _0808FDC4 @ =0x06004000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _0808FDC8 @ =0x0600F000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0xaf
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	movs r2, #0xfb
	lsls r2, r2, #1
	adds r1, r7, r2
	mov r2, r8
	strb r2, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FD9C: .4byte gDispCnt
_0808FDA0: .4byte 0x00001341
_0808FDA4: .4byte gBgCntRegs
_0808FDA8: .4byte 0x00000603
_0808FDAC: .4byte gBgScrollRegs
_0808FDB0: .4byte 0x06003000
_0808FDB4: .4byte 0x0000015D
_0808FDB8: .4byte 0x00000236
_0808FDBC: .4byte 0x00005E06
_0808FDC0: .4byte 0x0000FFF6
_0808FDC4: .4byte 0x06004000
_0808FDC8: .4byte 0x0600F000

	thumb_func_start sub_808FDCC
sub_808FDCC: @ 0x0808FDCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r7, #0x60]
	str r1, [r0]
	ldr r1, [r7, #0x60]
	movs r2, #0xc8
	lsls r2, r2, #3
	adds r1, r1, r2
	str r1, [r7, #0x60]
	ldr r3, _0808FEE0 @ =gUnknown_080D70FC
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r4, #0
	movs r2, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x54
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x56
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r4, #0
	ldr r6, _0808FEE4 @ =gUnknown_080D70CC
	movs r3, #0
	mov r8, r3
	movs r5, #0
	movs r0, #0x14
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0x18
	adds r1, r1, r7
	mov sl, r1
_0808FE4A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x64
	adds r0, r7, r0
	ldr r1, [r7, #0x60]
	str r1, [r0]
	lsls r3, r4, #3
	adds r1, r6, #4
	adds r1, r3, r1
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r7, #0x60]
	adds r1, r1, r2
	str r1, [r7, #0x60]
	adds r2, r3, r6
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x14
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x18
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r2, r8
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	bls _0808FE4A
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r2, r7, r3
	ldrb r1, [r7]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
	ldr r0, [r7, #0x60]
	str r0, [r2]
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _0808FEEC
	ldr r0, [r7, #0x60]
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r7, #0x60]
	ldr r1, _0808FEE8 @ =gUnknown_080D70BC
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r2, #0xc]
	b _0808FF08
	.align 2, 0
_0808FEE0: .4byte gUnknown_080D70FC
_0808FEE4: .4byte gUnknown_080D70CC
_0808FEE8: .4byte gUnknown_080D70BC
_0808FEEC:
	ldr r0, [r7, #0x60]
	movs r3, #0xb4
	lsls r3, r3, #3
	adds r0, r0, r3
	str r0, [r7, #0x60]
	ldr r1, _0808FFD4 @ =gUnknown_080D7024
	ldrb r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r7]
	lsls r0, r0, #3
	adds r0, r0, r1
_0808FF08:
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r7, #0x44]
	asrs r0, r0, #8
	movs r1, #0
	mov r8, r1
	movs r4, #0
	strh r0, [r2, #0x10]
	ldr r0, [r7, #0x48]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r6, #0x10
	strb r6, [r2, #0x1c]
	mov r3, r8
	strb r3, [r2, #0x1f]
	str r4, [r2, #8]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r2, #0x20]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r7, #0x60]
	str r1, [r0]
	ldr r3, _0808FFD8 @ =gUnknown_080D701C
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r7, #0x60]
	adds r1, r1, r2
	str r1, [r7, #0x60]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	adds r1, r5, #0
	strb r1, [r0, #0x1b]
	movs r2, #0xa
	ldrsh r1, [r7, r2]
	lsls r1, r1, #3
	add r1, sb
	ldr r1, [r1]
	subs r1, #1
	strh r1, [r0, #0x10]
	movs r3, #0xa
	ldrsh r1, [r7, r3]
	lsls r1, r1, #3
	add r1, sl
	ldr r2, [r1]
	ldrh r1, [r7, #0xa]
	lsls r1, r1, #4
	adds r2, r2, r1
	adds r2, #1
	strh r2, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	strb r6, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	str r5, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldr r2, _0808FFDC @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0808FFE0 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldrh r0, [r2, #8]
	movs r1, #0x3f
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _0808FFE4 @ =gBldRegs
	ldr r0, _0808FFE8 @ =0x00003FFF
	strh r0, [r1]
	strh r4, [r1, #4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FFD4: .4byte gUnknown_080D7024
_0808FFD8: .4byte gUnknown_080D701C
_0808FFDC: .4byte gDispCnt
_0808FFE0: .4byte gWinRegs
_0808FFE4: .4byte gBldRegs
_0808FFE8: .4byte 0x00003FFF

	thumb_func_start sub_808FFEC
sub_808FFEC: @ 0x0808FFEC
	push {r4, r5, r6, lr}
	ldr r6, _08090044 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8090314
	ldr r0, _08090048 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08090058
	ldr r0, _0809004C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08090058
	movs r0, #0x6a
	bl m4aSongNumStart
	ldr r5, [r4, #0xc]
	cmp r5, #0
	bne _08090058
	ldr r0, _08090050 @ =gLoadedSaveGame
	ldrh r1, [r4, #0xa]
	ldr r2, _08090054 @ =0x00000366
	adds r0, r0, r2
	strb r1, [r0]
	movs r0, #0
	bl sub_8091D14
	ldr r0, [r6]
	bl TaskDestroy
	movs r0, #1
	strb r0, [r4, #8]
	ldr r0, [r4, #4]
	strb r5, [r0]
	b _0809013C
	.align 2, 0
_08090044: .4byte gCurTask
_08090048: .4byte gBgScrollRegs
_0809004C: .4byte gPressedKeys
_08090050: .4byte gLoadedSaveGame
_08090054: .4byte 0x00000366
_08090058:
	ldr r0, _08090084 @ =gBgScrollRegs
	movs r3, #4
	ldrsh r2, [r0, r3]
	movs r1, #0xc8
	rsbs r1, r1, #0
	adds r3, r0, #0
	cmp r2, r1
	bgt _0809008C
	movs r0, #4
	ldrsh r1, [r3, r0]
	ldr r0, [r4, #0x4c]
	cmn r0, r1
	bgt _0809008C
	ldr r1, [r4, #4]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08090088 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0809013C
	.align 2, 0
_08090084: .4byte gBgScrollRegs
_08090088: .4byte gCurTask
_0809008C:
	movs r1, #4
	ldrsh r0, [r3, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x4c]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bne _08090100
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #0
	beq _08090100
	ldr r5, _080900D4 @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08090100
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080900DC
	ldrh r1, [r4, #0xa]
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _080900D8
	movs r0, #5
	b _080900F4
	.align 2, 0
_080900D4: .4byte gRepeatedKeys
_080900D8:
	subs r0, r1, #1
	b _080900F4
_080900DC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080900F6
	ldrh r1, [r4, #0xa]
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #5
	bne _080900F2
	strh r2, [r4, #0xa]
	b _080900F6
_080900F2:
	adds r0, r1, #1
_080900F4:
	strh r0, [r4, #0xa]
_080900F6:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _08090106
	ldrh r0, [r4, #0xa]
	strh r0, [r1]
_08090100:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _08090124
_08090106:
	ldr r1, [r4, #0x58]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	ldr r2, _08090144 @ =0xFFFFFE80
	adds r0, r0, r2
	str r0, [r4, #0x5c]
	ldr r2, _08090148 @ =gBgScrollRegs
	asrs r1, r1, #8
	strh r1, [r2]
	ldr r0, [r4, #0x5c]
	asrs r0, r0, #8
	strh r0, [r2, #2]
_08090124:
	adds r0, r4, #0
	bl sub_809014C
	adds r0, r4, #0
	bl sub_8090244
	adds r0, r4, #0
	bl sub_80901D4
	adds r0, r4, #0
	bl sub_8090290
_0809013C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08090144: .4byte 0xFFFFFE80
_08090148: .4byte gBgScrollRegs

	thumb_func_start sub_809014C
sub_809014C: @ 0x0809014C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _08090162
	ldrb r7, [r6, #0xa]
	b _08090164
_08090162:
	ldrb r7, [r0]
_08090164:
	movs r5, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0x18
	adds r1, r1, r6
	mov r8, r1
	movs r0, #0
	mov sl, r0
_08090176:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x64
	adds r4, r6, r0
	ldr r1, _080901A8 @ =gUnknown_080D70CC
	lsls r2, r5, #3
	adds r1, r2, r1
	ldrh r0, [r1]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	mov r1, sb
	adds r0, r1, r2
	ldr r0, [r0]
	strh r0, [r4, #0x10]
	add r2, r8
	ldr r0, [r2]
	lsls r1, r5, #4
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	cmp r5, r7
	beq _080901AC
	movs r0, #1
	b _080901AE
	.align 2, 0
_080901A8: .4byte gUnknown_080D70CC
_080901AC:
	mov r0, sl
_080901AE:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08090176
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80901D4
sub_80901D4: @ 0x080901D4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne _080901E2
	ldrb r1, [r3, #0xa]
	b _080901E4
_080901E2:
	ldrb r1, [r0]
_080901E4:
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r4, r3, r1
	ldr r2, [r3, #0xc]
	cmp r2, #0
	bne _08090208
	ldr r1, _08090204 @ =gUnknown_080D70BC
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	b _08090220
	.align 2, 0
_08090204: .4byte gUnknown_080D70BC
_08090208:
	ldr r1, _08090240 @ =gUnknown_080D7024
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r0, [r3, #0xc]
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #3
	adds r0, r0, r1
_08090220:
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r0, [r3, #0x44]
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x48]
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08090240: .4byte gUnknown_080D7024

	thumb_func_start sub_8090244
sub_8090244: @ 0x08090244
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _08090252
	ldrb r0, [r2, #0xa]
	b _08090254
_08090252:
	ldrb r0, [r0]
_08090254:
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r4, r2, r1
	ldr r1, _0809028C @ =gUnknown_080D70FC
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	adds r0, r2, #0
	adds r0, #0x54
	ldrh r0, [r0]
	strh r0, [r4, #0x10]
	adds r0, r2, #0
	adds r0, #0x56
	ldrh r0, [r0]
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809028C: .4byte gUnknown_080D70FC

	thumb_func_start sub_8090290
sub_8090290: @ 0x08090290
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	beq _080902D4
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r4, r3, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #3
	adds r0, r3, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	subs r0, #1
	strh r0, [r4, #0x10]
	ldr r2, [r3, #0xc]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #3
	adds r0, r3, #0
	adds r0, #0x18
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #1
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	b _0809030A
_080902D4:
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r4, r3, r1
	movs r2, #0xa
	ldrsh r1, [r3, r2]
	lsls r1, r1, #3
	adds r0, r3, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	subs r0, #1
	strh r0, [r4, #0x10]
	movs r0, #0xa
	ldrsh r1, [r3, r0]
	lsls r1, r1, #3
	adds r0, r3, #0
	adds r0, #0x18
	adds r0, r0, r1
	ldr r1, [r0]
	ldrh r0, [r3, #0xa]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #1
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_0809030A:
	pop {r4}
	pop {r0}
	bx r0
    
	thumb_func_start sub_8090310
sub_8090310: @ 0x08090310
	bx lr
	.align 2, 0

	thumb_func_start sub_8090314
sub_8090314: @ 0x08090314
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r2, #0
	ldr r6, _0809038C @ =gBgScrollRegs
	movs r0, #0x14
	adds r0, r0, r3
	mov ip, r0
	movs r7, #4
	ldrsh r1, [r6, r7]
	movs r0, #0x28
	subs r0, r0, r1
	mov r8, r0
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #0x26
	subs r5, r0, r1
	adds r4, r3, #0
	adds r4, #0x18
_0809033C:
	lsls r1, r2, #3
	mov r7, ip
	adds r0, r7, r1
	mov r7, r8
	str r7, [r0]
	adds r1, r4, r1
	str r5, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #5
	bls _0809033C
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #0x78
	subs r0, r0, r1
	str r0, [r3, #0x44]
	movs r7, #6
	ldrsh r1, [r6, r7]
	movs r0, #0x8c
	subs r0, r0, r1
	str r0, [r3, #0x48]
	ldrh r1, [r6, #4]
	movs r0, #0x78
	subs r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x54
	strh r0, [r1]
	ldrh r1, [r6, #6]
	movs r0, #0x1a
	subs r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x56
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809038C: .4byte gBgScrollRegs

	thumb_func_start OptionsSlideInit_DeleteSaveData
OptionsSlideInit_DeleteSaveData: @ 0x08090390
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov sl, r1
	adds r6, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08090480 @ =sub_80906C8
	movs r1, #0x9e
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08090484 @ =sub_8090A18
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	str r5, [r3, #4]
	movs r2, #0
	movs r0, #0
	strh r4, [r3, #8]
	str r6, [r3, #0xc]
	strb r2, [r3, #1]
	strh r0, [r3, #0x14]
	strh r0, [r3, #0x12]
	movs r4, #0
	ldr r0, _08090488 @ =0x03000018
	adds r0, r0, r1
	mov ip, r0
	ldr r5, _0809048C @ =gBgScrollRegs
	movs r2, #0x37
	mov sb, r2
	adds r6, r5, #0
	ldr r7, _08090490 @ =0x0300001C
	adds r7, r1, r7
	str r7, [sp, #4]
	movs r0, #0x46
	mov r8, r0
_080903EE:
	lsls r1, r4, #3
	mov r7, ip
	adds r2, r7, r1
	movs r7, #4
	ldrsh r0, [r5, r7]
	mov r7, sb
	subs r0, r7, r0
	str r0, [r2]
	ldr r0, [sp, #4]
	adds r1, r0, r1
	movs r2, #6
	ldrsh r0, [r5, r2]
	mov r7, r8
	subs r0, r7, r0
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080903EE
	movs r1, #4
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r2, #6
	ldrsh r0, [r6, r2]
	rsbs r0, r0, #0
	str r0, [r3, #0x2c]
	ldrh r0, [r6, #4]
	rsbs r0, r0, #0
	adds r0, #0x64
	adds r1, r3, #0
	adds r1, #0x40
	strh r0, [r1]
	ldrh r0, [r6, #6]
	rsbs r0, r0, #0
	adds r1, #2
	strh r0, [r1]
	ldrh r0, [r6, #4]
	rsbs r0, r0, #0
	adds r0, #0x64
	adds r1, #2
	strh r0, [r1]
	ldrh r0, [r6, #6]
	rsbs r0, r0, #0
	adds r1, #2
	strh r0, [r1]
	movs r7, #4
	ldrsh r0, [r6, r7]
	rsbs r0, r0, #0
	str r0, [r3, #0x30]
	movs r1, #6
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	str r0, [r3, #0x34]
	mov r2, sl
	str r2, [r3, #0x48]
	ldr r0, _08090494 @ =gLoadedSaveGame
	ldr r7, _08090498 @ =0x00000366
	adds r0, r0, r7
	ldrb r0, [r0]
	strb r0, [r3]
	adds r0, r3, #0
	bl sub_809049C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090480: .4byte sub_80906C8
_08090484: .4byte sub_8090A18
_08090488: .4byte 0x03000018
_0809048C: .4byte gBgScrollRegs
_08090490: .4byte 0x0300001C
_08090494: .4byte gLoadedSaveGame
_08090498: .4byte 0x00000366

	thumb_func_start sub_809049C
sub_809049C: @ 0x0809049C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r0, #0xec
	ldr r1, [r7, #0x48]
	str r1, [r0]
	ldr r3, _080906B4 @ =gUnknown_080D7194
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r7, #0x48]
	adds r1, r1, r2
	str r1, [r7, #0x48]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r2, #0
	mov r8, r2
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x40
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r1, [r7, #0x48]
	str r1, [r0]
	ldr r3, _080906B8 @ =gUnknown_080D71C4
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r7, #0x48]
	adds r1, r1, r2
	str r1, [r7, #0x48]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r5, #0
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x44
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x46
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	strb r6, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	str r5, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldr r6, _080906BC @ =gUnknown_080D7134
	movs r5, #0
_08090570:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x4c
	adds r0, r7, r0
	ldr r1, [r7, #0x48]
	str r1, [r0]
	ldrb r1, [r7]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r2, r6, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r7, #0x48]
	adds r1, r1, r2
	str r1, [r7, #0x48]
	ldrb r1, [r7]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	lsls r2, r4, #3
	adds r1, r7, #0
	adds r1, #0x18
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	mov sl, r1
	mov r2, sl
	strb r2, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08090570
	adds r0, r7, #0
	adds r0, #0x9c
	ldr r1, [r7, #0x48]
	str r1, [r0]
	ldr r3, _080906C0 @ =gUnknown_080D7024
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r7, #0x48]
	adds r1, r1, r2
	str r1, [r7, #0x48]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r7]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x2c]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xc4
	ldr r1, [r7, #0x48]
	str r1, [r0]
	ldr r3, _080906C4 @ =gUnknown_080D71F4
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r7, #0x48]
	adds r1, r1, r2
	str r1, [r7, #0x48]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x3c]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080906B4: .4byte gUnknown_080D7194
_080906B8: .4byte gUnknown_080D71C4
_080906BC: .4byte gUnknown_080D7134
_080906C0: .4byte gUnknown_080D7024
_080906C4: .4byte gUnknown_080D71F4

	thumb_func_start sub_80906C8
sub_80906C8: @ 0x080906C8
	push {r4, r5, r6, lr}
	ldr r0, _08090730 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8090828
	adds r0, r4, #0
	bl sub_80908A8
	adds r0, r4, #0
	bl sub_8090968
	adds r0, r4, #0
	bl sub_809099C
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _08090700
	adds r0, r4, #0
	bl sub_8090930
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08090706
_08090700:
	adds r0, r4, #0
	bl sub_80909DC
_08090706:
	ldr r0, _08090734 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r2, [r0, r1]
	movs r1, #0xc8
	rsbs r1, r1, #0
	adds r6, r0, #0
	cmp r2, r1
	bgt _08090738
	movs r2, #4
	ldrsh r1, [r6, r2]
	ldr r0, [r4, #0x30]
	cmn r0, r1
	bgt _08090738
	ldr r1, [r4, #4]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08090730 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08090820
	.align 2, 0
_08090730: .4byte gCurTask
_08090734: .4byte gBgScrollRegs
_08090738:
	movs r3, #4
	ldrsh r0, [r6, r3]
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
	ldr r0, _08090754 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _08090758
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _08090820
	movs r0, #0
	strb r0, [r4, #1]
	b _08090820
	.align 2, 0
_08090754: .4byte gBldRegs
_08090758:
	cmp r0, #0
	bne _08090820
	movs r0, #4
	ldrsh r5, [r6, r0]
	cmp r5, #0
	bne _08090820
	ldr r0, _08090790 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080907C4
	movs r0, #0x6a
	bl m4aSongNumStart
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _080907A8
	ldr r0, [r4, #0xc]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	beq _08090794
	cmp r1, #1
	beq _0809079A
	b _0809079C
	.align 2, 0
_08090790: .4byte gPressedKeys
_08090794:
	movs r0, #1
	strb r0, [r4, #1]
	b _0809079C
_0809079A:
	strb r5, [r4, #1]
_0809079C:
	movs r0, #1
	strh r0, [r2]
	ldr r6, _080907A4 @ =gBgScrollRegs
	b _080907C4
	.align 2, 0
_080907A4: .4byte gBgScrollRegs
_080907A8:
	cmp r0, #1
	bne _080907C4
	ldr r0, [r4, #0xc]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080907BC
	cmp r0, #1
	beq _080907C2
	b _080907C4
_080907BC:
	movs r0, #2
	strb r0, [r4, #1]
	b _080907C4
_080907C2:
	strb r5, [r4, #1]
_080907C4:
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08090820
	ldr r5, _080907FC @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08090820
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08090804
	ldr r1, [r4, #0xc]
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _08090800
	movs r0, #1
	b _0809081E
	.align 2, 0
_080907FC: .4byte gRepeatedKeys
_08090800:
	subs r0, r2, #1
	b _0809081E
_08090804:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08090820
	ldr r1, [r4, #0xc]
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #1
	bne _0809081C
	strh r3, [r1]
	b _08090820
_0809081C:
	adds r0, r2, #1
_0809081E:
	strh r0, [r1]
_08090820:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8090828
sub_8090828: @ 0x08090828
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	movs r2, #0
	ldr r5, _080908A4 @ =gBgScrollRegs
	mov r7, ip
	adds r7, #0x18
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #0x37
	subs r6, r0, r1
	movs r0, #6
	ldrsh r1, [r5, r0]
	movs r0, #0x46
	subs r4, r0, r1
	mov r3, ip
	adds r3, #0x1c
_08090848:
	lsls r1, r2, #3
	adds r0, r7, r1
	str r6, [r0]
	adds r1, r3, r1
	str r4, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08090848
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #0x78
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x28]
	movs r0, #6
	ldrsh r1, [r5, r0]
	movs r0, #0x87
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x2c]
	ldrh r0, [r5, #4]
	movs r1, #0x78
	subs r1, r1, r0
	mov r0, ip
	adds r0, #0x40
	strh r1, [r0]
	ldrh r2, [r5, #6]
	movs r0, #0x1e
	subs r0, r0, r2
	mov r3, ip
	adds r3, #0x42
	strh r0, [r3]
	mov r0, ip
	adds r0, #0x44
	strh r1, [r0]
	movs r0, #0x32
	subs r0, r0, r2
	mov r1, ip
	adds r1, #0x46
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080908A4: .4byte gBgScrollRegs

	thumb_func_start sub_80908A8
sub_80908A8: @ 0x080908A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r5, #0
	ldr r7, _08090908 @ =gUnknown_080D7134
	movs r0, #0
	mov r8, r0
_080908B8:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x4c
	adds r4, r6, r0
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	lsls r2, r5, #3
	adds r0, r6, #0
	adds r0, #0x18
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r5, #6
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x1c
	adds r0, r0, r2
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	ldr r0, [r6, #0xc]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r5, r0
	beq _0809090C
	movs r0, #1
	b _0809090E
	.align 2, 0
_08090908: .4byte gUnknown_080D7134
_0809090C:
	mov r0, r8
_0809090E:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080908B8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8090930
sub_8090930: @ 0x08090930
	push {lr}
	adds r3, r0, #0
	adds r0, #0xec
	ldr r2, _08090964 @ =gUnknown_080D7194
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r3, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08090964: .4byte gUnknown_080D7194

	thumb_func_start sub_8090968
sub_8090968: @ 0x08090968
	push {lr}
	adds r2, r0, #0
	adds r2, #0x9c
	ldr r3, _08090998 @ =gUnknown_080D7024
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r2, #0x1a]
	ldr r1, [r0, #0x28]
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x2c]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08090998: .4byte gUnknown_080D7024

	thumb_func_start sub_809099C
sub_809099C: @ 0x0809099C
	push {lr}
	mov ip, r0
	adds r0, #0xc4
	mov r1, ip
	ldr r3, [r1, #0xc]
	movs r1, #0
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	mov r1, ip
	adds r1, #0x18
	adds r1, r1, r2
	ldr r2, [r1]
	ldrh r1, [r3]
	lsls r1, r1, #6
	adds r2, r2, r1
	subs r2, #3
	strh r2, [r0, #0x10]
	mov r2, ip
	ldr r1, [r2, #0xc]
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r2, r2, #3
	mov r1, ip
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80909DC
sub_80909DC: @ 0x080909DC
	push {lr}
	adds r3, r0, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r2, _08090A14 @ =gUnknown_080D71C4
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r3, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08090A14: .4byte gUnknown_080D71C4

	thumb_func_start sub_8090A18
sub_8090A18: @ 0x08090A18
	bx lr
	.align 2, 0

	thumb_func_start OptionsSlideInit_TimeUp
OptionsSlideInit_TimeUp: @ 0x08090A1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	mov sl, r1
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08090AE8 @ =sub_8090CBC
	movs r1, #0x82
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08090AEC @ =sub_8090F6C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	strh r4, [r3, #8]
	str r5, [r3, #4]
	movs r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	mov ip, r0
	ldr r5, _08090AF0 @ =gBgScrollRegs
	movs r2, #0x37
	mov sb, r2
	adds r6, r5, #0
	ldr r7, _08090AF4 @ =0x03000010
	adds r7, r1, r7
	str r7, [sp, #4]
	movs r0, #0x46
	mov r8, r0
_08090A6C:
	lsls r1, r4, #3
	mov r7, ip
	adds r2, r7, r1
	movs r7, #4
	ldrsh r0, [r5, r7]
	mov r7, sb
	subs r0, r7, r0
	str r0, [r2]
	ldr r0, [sp, #4]
	adds r1, r0, r1
	movs r2, #6
	ldrsh r0, [r5, r2]
	mov r7, r8
	subs r0, r7, r0
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08090A6C
	movs r1, #4
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	str r0, [r3, #0x1c]
	movs r2, #6
	ldrsh r0, [r6, r2]
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	ldrh r0, [r6, #4]
	rsbs r0, r0, #0
	adds r0, #0x64
	strh r0, [r3, #0x34]
	ldrh r0, [r6, #6]
	rsbs r0, r0, #0
	strh r0, [r3, #0x36]
	movs r7, #4
	ldrsh r0, [r6, r7]
	rsbs r0, r0, #0
	str r0, [r3, #0x24]
	movs r1, #6
	ldrsh r0, [r6, r1]
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	mov r2, sl
	str r2, [r3, #0x38]
	ldr r0, _08090AF8 @ =gLoadedSaveGame
	ldr r7, _08090AFC @ =0x00000366
	adds r0, r0, r7
	ldrb r0, [r0]
	strb r0, [r3]
	adds r0, r3, #0
	bl sub_8090B00
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090AE8: .4byte sub_8090CBC
_08090AEC: .4byte sub_8090F6C
_08090AF0: .4byte gBgScrollRegs
_08090AF4: .4byte 0x03000010
_08090AF8: .4byte gLoadedSaveGame
_08090AFC: .4byte 0x00000366

	thumb_func_start sub_8090B00
sub_8090B00: @ 0x08090B00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r0, #0xdc
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldr r3, _08090CAC @ =gUnknown_080D71FC
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r4, #0
	movs r2, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldrh r1, [r6, #0x34]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldrh r1, [r6, #0x36]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r4, #0
	ldr r7, _08090CB0 @ =gUnknown_080D6B48
	movs r5, #0
_08090B6A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r6, r0
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r2, r7, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #1
	adds r1, r4, r1
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	lsls r2, r4, #3
	adds r1, r6, #0
	adds r1, #0xc
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r6, #0
	adds r1, #0x10
	adds r1, r1, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r2, #0
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08090B6A
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldr r3, _08090CB4 @ =gUnknown_080D7024
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r0, #0xb4
	ldr r1, [r6, #0x38]
	str r1, [r0]
	ldr r3, _08090CB8 @ =gUnknown_080D722C
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r6, #0x38]
	adds r1, r1, r2
	str r1, [r6, #0x38]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x2c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x30]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sl
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090CAC: .4byte gUnknown_080D71FC
_08090CB0: .4byte gUnknown_080D6B48
_08090CB4: .4byte gUnknown_080D7024
_08090CB8: .4byte gUnknown_080D722C

	thumb_func_start sub_8090CBC
sub_8090CBC: @ 0x08090CBC
	push {r4, lr}
	ldr r0, _08090D0C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8090E58
	adds r0, r4, #0
	bl sub_8090DD4
	adds r0, r4, #0
	bl sub_8090ECC
	adds r0, r4, #0
	bl sub_8090F00
	adds r0, r4, #0
	bl sub_8090F34
	ldr r0, _08090D10 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08090D40
	ldr r0, _08090D14 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08090D40
	movs r2, #8
	ldrsh r1, [r4, r2]
	cmp r1, #0
	beq _08090D18
	cmp r1, #1
	beq _08090D2C
	b _08090DCE
	.align 2, 0
_08090D0C: .4byte gCurTask
_08090D10: .4byte gBgScrollRegs
_08090D14: .4byte gPressedKeys
_08090D18:
	ldr r0, _08090D24 @ =gLoadedSaveGame
	ldr r3, _08090D28 @ =0x00000365
	adds r0, r0, r3
	strb r1, [r0]
	b _08090DCE
	.align 2, 0
_08090D24: .4byte gLoadedSaveGame
_08090D28: .4byte 0x00000365
_08090D2C:
	ldr r0, _08090D38 @ =gLoadedSaveGame
	ldr r1, _08090D3C @ =0x00000365
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _08090DCE
	.align 2, 0
_08090D38: .4byte gLoadedSaveGame
_08090D3C: .4byte 0x00000365
_08090D40:
	ldr r0, _08090D6C @ =gBgScrollRegs
	movs r3, #4
	ldrsh r2, [r0, r3]
	movs r1, #0xc8
	rsbs r1, r1, #0
	adds r3, r0, #0
	cmp r2, r1
	bgt _08090D74
	movs r0, #4
	ldrsh r1, [r3, r0]
	ldr r0, [r4, #0x24]
	cmn r0, r1
	bgt _08090D74
	ldr r1, [r4, #4]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08090D70 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08090DCE
	.align 2, 0
_08090D6C: .4byte gBgScrollRegs
_08090D70: .4byte gCurTask
_08090D74:
	movs r1, #4
	ldrsh r0, [r3, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x24]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bne _08090DCE
	ldr r0, _08090DAC @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08090DCE
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08090DB4
	ldrh r1, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _08090DB0
	movs r0, #1
	b _08090DCC
	.align 2, 0
_08090DAC: .4byte gRepeatedKeys
_08090DB0:
	subs r0, r1, #1
	b _08090DCC
_08090DB4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08090DCE
	ldrh r1, [r4, #8]
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r0, #1
	bne _08090DCA
	strh r2, [r4, #8]
	b _08090DCE
_08090DCA:
	adds r0, r1, #1
_08090DCC:
	strh r0, [r4, #8]
_08090DCE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8090DD4
sub_8090DD4: @ 0x08090DD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r5, #0
	ldr r7, _08090E30 @ =gUnknown_080D6B48
	movs r0, #0
	mov r8, r0
_08090DE4:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r4, r6, r0
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	lsls r2, r5, #3
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r5, #6
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp r5, r0
	beq _08090E34
	movs r0, #1
	b _08090E36
	.align 2, 0
_08090E30: .4byte gUnknown_080D6B48
_08090E34:
	mov r0, r8
_08090E36:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08090DE4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8090E58
sub_8090E58: @ 0x08090E58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	movs r2, #0
	ldr r6, _08090EC8 @ =gBgScrollRegs
	movs r0, #0xc
	adds r0, r0, r3
	mov ip, r0
	movs r7, #4
	ldrsh r1, [r6, r7]
	movs r0, #0x37
	subs r0, r0, r1
	mov r8, r0
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #0x46
	subs r5, r0, r1
	adds r4, r3, #0
	adds r4, #0x10
_08090E80:
	lsls r1, r2, #3
	mov r7, ip
	adds r0, r7, r1
	mov r7, r8
	str r7, [r0]
	adds r1, r4, r1
	str r5, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08090E80
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #0x78
	subs r0, r0, r1
	str r0, [r3, #0x1c]
	movs r7, #6
	ldrsh r1, [r6, r7]
	movs r0, #0x87
	subs r0, r0, r1
	str r0, [r3, #0x20]
	ldrh r1, [r6, #4]
	movs r0, #0x78
	subs r0, r0, r1
	strh r0, [r3, #0x34]
	ldrh r1, [r6, #6]
	movs r0, #0x1e
	subs r0, r0, r1
	strh r0, [r3, #0x36]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090EC8: .4byte gBgScrollRegs

	thumb_func_start sub_8090ECC
sub_8090ECC: @ 0x08090ECC
	push {lr}
	adds r2, r0, #0
	adds r2, #0xdc
	ldr r3, _08090EFC @ =gUnknown_080D71FC
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r2, #0x1a]
	ldrh r1, [r0, #0x34]
	strh r1, [r2, #0x10]
	ldrh r0, [r0, #0x36]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08090EFC: .4byte gUnknown_080D71FC

	thumb_func_start sub_8090F00
sub_8090F00: @ 0x08090F00
	push {lr}
	adds r2, r0, #0
	adds r2, #0x8c
	ldr r3, _08090F30 @ =gUnknown_080D7024
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r2, #0x1a]
	ldr r1, [r0, #0x1c]
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x20]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08090F30: .4byte gUnknown_080D7024

	thumb_func_start sub_8090F34
sub_8090F34: @ 0x08090F34
	push {lr}
	adds r3, r0, #0
	adds r0, #0xb4
	movs r1, #8
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	adds r1, r3, #0
	adds r1, #0xc
	adds r1, r1, r2
	ldr r2, [r1]
	ldrh r1, [r3, #8]
	lsls r1, r1, #6
	adds r2, r2, r1
	subs r2, #3
	strh r2, [r0, #0x10]
	movs r1, #8
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	adds r1, r3, #0
	adds r1, #0x10
	adds r1, r1, r2
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8090F6C
sub_8090F6C: @ 0x08090F6C
	bx lr
	.align 2, 0
 
	thumb_func_start OptionsSlideInit_ButtonConfig
OptionsSlideInit_ButtonConfig: @ 0x08090F70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r4, r0, #0
	str r1, [sp, #0x14]
	mov sb, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _08091018 @ =gLoadedSaveGame
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrh r0, [r0]
	add r5, sp, #0xc
	movs r6, #0
	movs r2, #0
	mov r8, r2
	strh r0, [r5]
	ldr r2, _0809101C @ =0x0000035E
	adds r0, r1, r2
	ldrh r2, [r0]
	mov r0, sp
	adds r0, #0xe
	strh r2, [r0]
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	add r0, sp, #0x10
	strh r1, [r0]
	add r0, sp, #4
	adds r1, r5, #0
	movs r2, #6
	bl memcpy
	ldr r1, _08091020 @ =gUnknown_080D73BC
	adds r0, r5, #0
	movs r2, #3
	bl memcpy
	ldr r0, _08091024 @ =sub_8091490
	movs r1, #0x93
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08091028 @ =sub_8091C9C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov ip, r1
	strh r4, [r1, #0x1e]
	mov r2, sb
	str r2, [r1, #8]
	mov r0, r8
	strh r0, [r1, #0x20]
	strb r6, [r1, #1]
	movs r0, #2
	strb r0, [r1, #3]
	strb r6, [r1, #2]
	mov r2, r8
	strh r2, [r1, #0x22]
	movs r0, #1
	strb r0, [r1, #4]
	movs r6, #0
_08091000:
	lsls r0, r6, #1
	add r0, sp
	adds r0, #4
	ldrh r1, [r0]
	cmp r1, #2
	beq _08091040
	cmp r1, #2
	bgt _0809102C
	cmp r1, #1
	beq _08091036
	b _08091052
	.align 2, 0
_08091018: .4byte gLoadedSaveGame
_0809101C: .4byte 0x0000035E
_08091020: .4byte gUnknown_080D73BC
_08091024: .4byte sub_8091490
_08091028: .4byte sub_8091C9C
_0809102C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0809104A
	b _08091052
_08091036:
	adds r0, r5, r6
	ldrb r0, [r0]
	mov r1, ip
	strh r0, [r1, #0x18]
	b _08091052
_08091040:
	adds r0, r5, r6
	ldrb r0, [r0]
	mov r2, ip
	strh r0, [r2, #0x1a]
	b _08091052
_0809104A:
	adds r0, r5, r6
	ldrb r0, [r0]
	mov r1, ip
	strh r0, [r1, #0x1c]
_08091052:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _08091000
	mov r2, ip
	ldrh r0, [r2, #0x18]
	strh r0, [r2, #0x20]
	movs r6, #0
	adds r2, #0x24
	str r2, [sp, #0x28]
	ldr r5, _08091144 @ =gBgScrollRegs
	mov r0, ip
	adds r0, #0x28
	str r0, [sp, #0x2c]
	mov r1, ip
	adds r1, #0x3c
	str r1, [sp, #0x18]
	adds r2, #0x1c
	str r2, [sp, #0x1c]
	movs r0, #0xc
	add r0, ip
	mov sl, r0
	movs r1, #0x18
	add r1, ip
	mov sb, r1
	movs r2, #0x12
	add r2, ip
	mov r8, r2
	mov r0, ip
	adds r0, #0x64
	str r0, [sp, #0x20]
	mov r1, ip
	adds r1, #0x66
	str r1, [sp, #0x24]
	adds r7, r5, #0
_0809109A:
	lsls r2, r6, #3
	ldr r0, [sp, #0x28]
	adds r4, r0, r2
	movs r0, #4
	ldrsh r1, [r7, r0]
	movs r0, #0x70
	subs r0, r0, r1
	str r0, [r4]
	ldr r1, [sp, #0x2c]
	adds r3, r1, r2
	movs r0, #6
	ldrsh r1, [r7, r0]
	movs r0, #0x2d
	subs r0, r0, r1
	str r0, [r3]
	ldr r0, [sp, #0x18]
	adds r1, r0, r2
	ldr r0, [r4]
	subs r0, #0x46
	str r0, [r1]
	ldr r1, [sp, #0x1c]
	adds r2, r1, r2
	ldr r0, [r3]
	str r0, [r2]
	lsls r1, r6, #1
	mov r2, sl
	adds r3, r2, r1
	mov r0, sb
	adds r2, r0, r1
	ldrh r0, [r2]
	strh r0, [r3]
	add r1, r8
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0809109A
	movs r1, #4
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	mov r2, ip
	str r0, [r2, #0x54]
	movs r1, #6
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	str r0, [r2, #0x58]
	ldrh r0, [r5, #4]
	rsbs r0, r0, #0
	adds r0, #0x64
	ldr r2, [sp, #0x20]
	strh r0, [r2]
	ldrh r0, [r5, #6]
	rsbs r0, r0, #0
	ldr r1, [sp, #0x24]
	strh r0, [r1]
	movs r2, #4
	ldrsh r0, [r5, r2]
	rsbs r0, r0, #0
	mov r1, ip
	str r0, [r1, #0x5c]
	movs r2, #6
	ldrsh r0, [r5, r2]
	rsbs r0, r0, #0
	str r0, [r1, #0x60]
	ldr r0, [sp, #0x14]
	str r0, [r1, #0x68]
	ldr r1, _08091148 @ =gLoadedSaveGame
	ldr r2, _0809114C @ =0x00000366
	adds r0, r1, r2
	ldrb r0, [r0]
	mov r1, ip
	strb r0, [r1]
	mov r0, ip
	bl sub_8091150
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091144: .4byte gBgScrollRegs
_08091148: .4byte gLoadedSaveGame
_0809114C: .4byte 0x00000366

	thumb_func_start sub_8091150
sub_8091150: @ 0x08091150
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	movs r1, #0x89
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r1, [r6, #0x68]
	str r1, [r0]
	ldr r3, _08091404 @ =gUnknown_080D7334
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x68]
	adds r1, r1, r2
	str r1, [r6, #0x68]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r4, #0
	movs r2, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r6, #0
	adds r1, #0x64
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r6, #0
	adds r1, #0x66
	ldrh r1, [r1]
	lsrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r7, #0
	ldr r2, _08091408 @ =gUnknown_080D7264
	mov r8, r2
	movs r3, #0
	movs r0, #0x10
	mov sl, r0
	mov sb, r4
	adds r1, r6, #0
	adds r1, #0x24
	str r1, [sp]
	adds r2, r6, #0
	adds r2, #0x28
	str r2, [sp, #4]
_080911DE:
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	adds r0, r4, #0
	adds r0, #0x6c
	adds r0, r6, r0
	ldr r1, [r6, #0x68]
	str r1, [r0]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r7, r1
	lsls r1, r1, #3
	mov r2, r8
	adds r2, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x68]
	adds r1, r1, r2
	str r1, [r6, #0x68]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r7, r1
	lsls r1, r1, #3
	add r1, r8
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r1, r7, r1
	lsls r1, r1, #3
	add r1, r8
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	movs r2, #0xff
	orrs r1, r2
	strb r1, [r0, #0x1b]
	lsls r5, r7, #3
	adds r1, r6, #0
	adds r1, #0x24
	adds r1, r1, r5
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r6, #0
	adds r1, #0x28
	adds r1, r1, r5
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	mov r2, sl
	strb r2, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r3, [r0, #8]
	mov r2, sb
	str r2, [r0, #0x20]
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	adds r4, #0xe4
	adds r4, r6, r4
	ldr r0, [r6, #0x68]
	str r0, [r4]
	ldr r2, _0809140C @ =gUnknown_080D731C
	adds r0, r2, #4
	adds r0, r5, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r6, #0x68]
	adds r0, r0, r1
	str r0, [r6, #0x68]
	adds r2, r5, r2
	ldrh r0, [r2]
	strh r0, [r4, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	movs r1, #0xff
	orrs r0, r1
	strb r0, [r4, #0x1b]
	adds r0, r6, #0
	adds r0, #0x3c
	adds r0, r0, r5
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0x40
	adds r0, r0, r5
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r2, #0x40
	strh r2, [r4, #0x14]
	ldr r3, [sp, #8]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0x16]
	mov r0, sl
	strb r0, [r4, #0x1c]
	movs r1, #0
	strb r1, [r4, #0x1f]
	str r3, [r4, #8]
	mov r2, sb
	str r2, [r4, #0x20]
	adds r0, r4, #0
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [sp, #8]
	cmp r7, #2
	bls _080911DE
	movs r7, #0
	ldr r5, _08091410 @ =gUnknown_080D736C
	movs r4, #0
_080912D4:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r6, r0
	ldr r1, [r6, #0x68]
	str r1, [r0]
	lsls r3, r7, #3
	adds r1, r5, #4
	adds r1, r3, r1
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r6, #0x68]
	adds r1, r1, r2
	str r1, [r6, #0x68]
	adds r3, r3, r5
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r2, #1
	rsbs r2, r2, #0
	mov sl, r2
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r2, #0x1e
	ldrsh r1, [r6, r2]
	lsls r1, r1, #3
	ldr r2, [sp]
	adds r1, r2, r1
	ldr r1, [r1]
	subs r1, #8
	strh r1, [r0, #0x10]
	movs r2, #0x1e
	ldrsh r1, [r6, r2]
	lsls r1, r1, #3
	ldr r2, [sp, #4]
	adds r1, r2, r1
	ldr r2, [r1]
	ldrh r1, [r6, #0x1e]
	lsls r1, r1, #4
	adds r2, r2, r1
	subs r2, #4
	strh r2, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	mov sb, r1
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bls _080912D4
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r6, #0x68]
	str r1, [r0]
	ldr r3, _08091414 @ =gUnknown_080D7364
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r6, #0x68]
	adds r1, r1, r2
	str r1, [r6, #0x68]
	ldrh r1, [r3]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, sl
	orrs r1, r2
	strb r1, [r0, #0x1b]
	movs r2, #0x1e
	ldrsh r1, [r6, r2]
	lsls r1, r1, #3
	ldr r2, [sp]
	adds r1, r2, r1
	ldr r1, [r1]
	subs r1, #8
	strh r1, [r0, #0x10]
	movs r2, #0x1e
	ldrsh r1, [r6, r2]
	lsls r1, r1, #3
	ldr r2, [sp, #4]
	adds r1, r2, r1
	ldr r2, [r1]
	ldrh r1, [r6, #0x1e]
	lsls r1, r1, #4
	adds r2, r2, r1
	subs r2, #4
	strh r2, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, r8
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r7, #0
	ldr r3, _08091418 @ =gUnknown_080D7024
	ldr r5, _0809141C @ =gUnknown_080D7234
	movs r0, #0
	mov r8, r0
_080913CA:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r6, r0
	ldr r0, [r6, #0x68]
	str r0, [r2]
	cmp r7, #0
	bne _08091420
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r1, r3, #4
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r6, #0x68]
	adds r0, r0, r1
	str r0, [r6, #0x68]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r3
	b _08091442
	.align 2, 0
_08091404: .4byte gUnknown_080D7334
_08091408: .4byte gUnknown_080D7264
_0809140C: .4byte gUnknown_080D731C
_08091410: .4byte gUnknown_080D736C
_08091414: .4byte gUnknown_080D7364
_08091418: .4byte gUnknown_080D7024
_0809141C: .4byte gUnknown_080D7234
_08091420:
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r1, r5, #4
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r6, #0x68]
	adds r0, r0, r1
	str r0, [r6, #0x68]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r6]
	lsls r0, r0, #3
	adds r0, r0, r5
_08091442:
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r6, #0x54]
	asrs r0, r0, #8
	strh r0, [r2, #0x10]
	ldr r0, [r6, #0x58]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	strh r4, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, r8
	strb r0, [r2, #0x1f]
	str r4, [r2, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	adds r0, r2, #0
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [sp, #8]
	cmp r7, #1
	bls _080913CA
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8091490
sub_8091490: @ 0x08091490
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08091508 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_8091A44
	adds r0, r5, #0
	bl sub_8091AE0
	adds r0, r5, #0
	bl sub_8091CA0
	adds r0, r5, #0
	bl sub_8091BC4
	adds r0, r5, #0
	bl sub_8091CDC
	adds r0, r5, #0
	bl sub_8091B78
	adds r0, r5, #0
	bl sub_8091C38
	ldr r2, _0809150C @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0809154C
	ldr r0, [r5, #0x5c]
	cmn r0, r1
	bgt _0809154C
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #4]
	ldr r0, [r5, #8]
	strb r1, [r0]
	ldr r3, _08091510 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08091518
	ldr r0, _08091514 @ =gUnknown_080D737C
	movs r2, #0x10
	bl CopyPalette
	b _0809152E
	.align 2, 0
_08091508: .4byte gCurTask
_0809150C: .4byte gBgScrollRegs
_08091510: .4byte gFlags
_08091514: .4byte gUnknown_080D737C
_08091518:
	ldr r1, _08091538 @ =0x040000D4
	ldr r0, _0809153C @ =gUnknown_080D737C
	str r0, [r1]
	ldr r0, _08091540 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _08091544 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_0809152E:
	ldr r0, _08091548 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08091A24
	.align 2, 0
_08091538: .4byte 0x040000D4
_0809153C: .4byte gUnknown_080D737C
_08091540: .4byte gObjPalette
_08091544: .4byte 0x80000010
_08091548: .4byte gCurTask
_0809154C:
	ldr r0, _080915E4 @ =gBgScrollRegs
	movs r7, #4
	ldrsh r1, [r0, r7]
	rsbs r1, r1, #0
	str r1, [r5, #0x5c]
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08091560
	b _0809177C
_08091560:
	ldr r0, _080915E8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0809156E
	b _0809168A
_0809156E:
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x12
	adds r0, r1, r0
	movs r4, #0
	mov ip, r1
	adds r6, r5, #0
	adds r6, #0x18
	movs r3, #0xc
	adds r3, r3, r5
	mov sb, r3
	mov r8, ip
	ldrb r0, [r0]
	mov sl, r0
	adds r3, r6, #0
_08091590:
	movs r7, #0x1e
	ldrsh r2, [r5, r7]
	cmp r4, r2
	beq _080915AC
	lsls r0, r4, #1
	mov r7, r8
	adds r1, r7, r0
	ldrh r0, [r1]
	cmp sl, r0
	bne _080915AC
	lsls r0, r2, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r1]
_080915AC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08091590
	movs r4, #0
	adds r3, r6, #0
	ldr r1, _080915EC @ =gLoadedSaveGame + 0x35C @ buttonConfig.jump
	mov r8, r1
	movs r2, #4
	add r2, r8
	mov sl, r2
_080915C4:
	lsls r1, r4, #1
	adds r2, r3, r1
	mov r7, ip
	adds r0, r7, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldrh r0, [r2]
	adds r2, r1, #0
	cmp r0, #1
	beq _08091604
	cmp r0, #1
	bgt _080915F0
	cmp r0, #0
	beq _080915F6
	b _08091622
	.align 2, 0
_080915E4: .4byte gBgScrollRegs
_080915E8: .4byte gPressedKeys
_080915EC: .4byte gLoadedSaveGame + 0x35C @ buttonConfig.jump
_080915F0:
	cmp r0, #2
	beq _08091618
	b _08091622
_080915F6:
	ldr r1, _08091600 @ =gUnknown_080D73C0
	adds r0, r2, r1
	ldrh r0, [r0]
	mov r7, r8
	b _08091620
	.align 2, 0
_08091600: .4byte gUnknown_080D73C0
_08091604:
	ldr r1, _08091610 @ =gUnknown_080D73C0
	adds r0, r2, r1
	ldrh r0, [r0]
	ldr r7, _08091614 @ =gLoadedSaveGame + 0x35E @ buttonConfig.attack
	b _08091620
	.align 2, 0
_08091610: .4byte gUnknown_080D73C0
_08091614: .4byte gLoadedSaveGame + 0x35E @ buttonConfig.attack
_08091618:
	ldr r1, _08091664 @ =gUnknown_080D73C0
	adds r0, r2, r1
	ldrh r0, [r0]
	mov r7, sl
_08091620:
	strh r0, [r7]
_08091622:
	mov r0, sb
	adds r1, r0, r2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080915C4
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r5, #0x20]
	strb r1, [r5, #1]
	movs r0, #1
	strb r0, [r5, #4]
	ldr r2, _08091668 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08091670
	ldr r0, _0809166C @ =gUnknown_080D737C
	movs r1, #0
	movs r2, #0x10
	bl CopyPalette
	b _0809168A
	.align 2, 0
_08091664: .4byte gUnknown_080D73C0
_08091668: .4byte gFlags
_0809166C: .4byte gUnknown_080D737C
_08091670:
	ldr r1, _080916E0 @ =0x040000D4
	ldr r3, _080916E4 @ =gUnknown_080D737C
	str r3, [r1]
	ldr r0, _080916E8 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _080916EC @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r7, _080916F0 @ =gFlags
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_0809168A:
	ldr r0, _080916F4 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0809177C
	ldr r0, _080916F8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0809177C
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r4, #0
	movs r2, #0x12
	adds r2, r2, r5
	mov ip, r2
	adds r6, r5, #0
	adds r6, #0x18
	ldr r3, _080916FC @ =gUnknown_080D73C0
	ldr r7, _08091700 @ =gLoadedSaveGame + 0x35C @ buttonConfig
	mov sl, r7
	movs r0, #2
	add r0, sl
	mov sb, r0
	movs r1, #4
	add r1, sl
	mov r8, r1
_080916C4:
	lsls r2, r4, #1
	adds r1, r6, r2
	strh r4, [r1]
	mov r7, ip
	adds r0, r7, r2
	strh r4, [r0]
	ldrh r0, [r1]
	cmp r0, #1
	beq _08091714
	cmp r0, #1
	bgt _08091704
	cmp r0, #0
	beq _0809170A
	b _08091726
	.align 2, 0
_080916E0: .4byte 0x040000D4
_080916E4: .4byte gUnknown_080D737C
_080916E8: .4byte gObjPalette
_080916EC: .4byte 0x80000010
_080916F0: .4byte gFlags
_080916F4: .4byte gBgScrollRegs
_080916F8: .4byte gPressedKeys
_080916FC: .4byte gUnknown_080D73C0
_08091700: .4byte gLoadedSaveGame + 0x35C @ buttonConfig
_08091704:
	cmp r0, #2
	beq _0809171E
	b _08091726
_0809170A:
	adds r0, r2, r3
	ldrh r0, [r0]
	mov r1, sl
	strh r0, [r1]
	b _08091726
_08091714:
	adds r0, r2, r3
	ldrh r0, [r0]
	mov r2, sb
	strh r0, [r2]
	b _08091726
_0809171E:
	adds r0, r2, r3
	ldrh r0, [r0]
	mov r7, r8
	strh r0, [r7]
_08091726:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080916C4
	movs r0, #1
	strb r0, [r5, #4]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r5, #0x20]
	ldr r1, _0809175C @ =gFlags
	ldr r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08091764
	ldr r0, _08091760 @ =gUnknown_080D737C
	movs r1, #0
	movs r2, #0x10
	bl CopyPalette
	b _0809177C
	.align 2, 0
_0809175C: .4byte gFlags
_08091760: .4byte gUnknown_080D737C
_08091764:
	ldr r1, _080917EC @ =0x040000D4
	ldr r0, _080917F0 @ =gUnknown_080D737C
	str r0, [r1]
	ldr r0, _080917F4 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _080917F8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	ldr r3, _080917FC @ =gFlags
	str r2, [r3]
_0809177C:
	ldr r0, _08091800 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809181E
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080917CA
	movs r4, #0
	adds r6, r5, #0
	adds r6, #0x18
	mov r8, r6
	movs r7, #0xc
	adds r7, r7, r5
	mov ip, r7
	adds r7, r5, #0
	adds r7, #0x12
_080917A0:
	lsls r1, r4, #1
	mov r0, r8
	adds r3, r0, r1
	mov r0, ip
	adds r2, r0, r1
	ldrh r0, [r2]
	strh r0, [r3]
	adds r1, r7, r1
	ldrh r0, [r2]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _080917A0
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r5, #0x20]
_080917CA:
	movs r0, #0
	strb r0, [r5, #1]
	movs r0, #1
	strb r0, [r5, #4]
	ldr r2, _080917FC @ =gFlags
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08091804
	ldr r0, _080917F0 @ =gUnknown_080D737C
	movs r1, #0
	movs r2, #0x10
	bl CopyPalette
	b _0809181E
	.align 2, 0
_080917EC: .4byte 0x040000D4
_080917F0: .4byte gUnknown_080D737C
_080917F4: .4byte gObjPalette
_080917F8: .4byte 0x80000010
_080917FC: .4byte gFlags
_08091800: .4byte gPressedKeys
_08091804:
	ldr r1, _08091850 @ =0x040000D4
	ldr r3, _08091854 @ =gUnknown_080D737C
	str r3, [r1]
	ldr r0, _08091858 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _0809185C @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r7, _08091860 @ =gFlags
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
_0809181E:
	ldr r0, _08091864 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0809182A
	b _08091978
_0809182A:
	ldr r0, _08091868 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080918F6
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08091870
	ldrh r1, [r5, #0x1e]
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0809186C
	movs r0, #2
	b _08091888
	.align 2, 0
_08091850: .4byte 0x040000D4
_08091854: .4byte gUnknown_080D737C
_08091858: .4byte gObjPalette
_0809185C: .4byte 0x80000010
_08091860: .4byte gFlags
_08091864: .4byte gBgScrollRegs
_08091868: .4byte gRepeatedKeys
_0809186C:
	subs r0, r1, #1
	b _08091888
_08091870:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809188A
	ldrh r1, [r5, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	cmp r0, #2
	bne _08091886
	strh r2, [r5, #0x1e]
	b _0809188A
_08091886:
	adds r0, r1, #1
_08091888:
	strh r0, [r5, #0x1e]
_0809188A:
	movs r4, #0
	adds r6, r5, #0
	adds r6, #0x18
	adds r3, r5, #0
	adds r3, #0x12
	adds r2, r6, #0
_08091896:
	lsls r0, r4, #1
	adds r1, r3, r0
	adds r0, r2, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08091896
	movs r7, #0x1e
	ldrsh r0, [r5, r7]
	lsls r0, r0, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r5, #0x20]
	movs r0, #1
	strb r0, [r5, #4]
	ldr r1, _080918D4 @ =gFlags
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ands r0, r1
	cmp r0, #0
	beq _080918DC
	ldr r0, _080918D8 @ =gUnknown_080D737C
	movs r1, #0
	movs r2, #0x10
	bl CopyPalette
	b _080918F6
	.align 2, 0
_080918D4: .4byte gFlags
_080918D8: .4byte gUnknown_080D737C
_080918DC:
	ldr r1, _0809192C @ =0x040000D4
	ldr r2, _08091930 @ =gUnknown_080D737C
	str r2, [r1]
	ldr r0, _08091934 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _08091938 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _0809193C @ =gFlags
	ldr r0, [r3]
	movs r1, #2
	orrs r0, r1
	str r0, [r3]
_080918F6:
	ldr r0, _08091940 @ =gBgScrollRegs
	movs r7, #4
	ldrsh r0, [r0, r7]
	cmp r0, #0
	bne _08091978
	ldr r0, _08091944 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08091978
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08091948
	ldrh r0, [r5, #0x20]
	subs r0, #1
	strh r0, [r5, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08091960
	movs r0, #2
	strh r0, [r5, #0x20]
	b _08091960
	.align 2, 0
_0809192C: .4byte 0x040000D4
_08091930: .4byte gUnknown_080D737C
_08091934: .4byte gObjPalette
_08091938: .4byte 0x80000010
_0809193C: .4byte gFlags
_08091940: .4byte gBgScrollRegs
_08091944: .4byte gRepeatedKeys
_08091948:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08091960
	ldrh r0, [r5, #0x20]
	adds r0, #1
	strh r0, [r5, #0x20]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08091960
	strh r2, [r5, #0x20]
_08091960:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x12
	adds r1, r1, r0
	ldrh r0, [r5, #0x20]
	movs r2, #0
	strh r0, [r1]
	movs r0, #1
	strb r0, [r5, #1]
	strb r2, [r5, #4]
_08091978:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _08091A24
	ldrh r0, [r5, #0x22]
	ldrb r2, [r5, #3]
	cmp r0, r2
	blo _08091A1E
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _080919DC
	ldr r3, _080919A8 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080919B0
	ldr r0, _080919AC @ =gUnknown_080D737C
	movs r1, #0
	movs r2, #0x10
	bl CopyPalette
	b _080919C6
	.align 2, 0
_080919A8: .4byte gFlags
_080919AC: .4byte gUnknown_080D737C
_080919B0:
	ldr r1, _080919CC @ =0x040000D4
	ldr r0, _080919D0 @ =gUnknown_080D737C
	str r0, [r1]
	ldr r0, _080919D4 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _080919D8 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_080919C6:
	movs r0, #1
	b _08091A18
	.align 2, 0
_080919CC: .4byte 0x040000D4
_080919D0: .4byte gUnknown_080D737C
_080919D4: .4byte gObjPalette
_080919D8: .4byte 0x80000010
_080919DC:
	ldr r3, _080919F8 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08091A00
	ldr r0, _080919FC @ =gUnknown_080D739C
	movs r1, #0
	movs r2, #0x10
	bl CopyPalette
	b _08091A16
	.align 2, 0
_080919F8: .4byte gFlags
_080919FC: .4byte gUnknown_080D739C
_08091A00:
	ldr r1, _08091A34 @ =0x040000D4
	ldr r0, _08091A38 @ =gUnknown_080D739C
	str r0, [r1]
	ldr r0, _08091A3C @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _08091A40 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_08091A16:
	movs r0, #0
_08091A18:
	strb r0, [r5, #2]
	movs r0, #0
	strh r0, [r5, #0x22]
_08091A1E:
	ldrh r0, [r5, #0x22]
	adds r0, #1
	strh r0, [r5, #0x22]
_08091A24:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091A34: .4byte 0x040000D4
_08091A38: .4byte gUnknown_080D739C
_08091A3C: .4byte gObjPalette
_08091A40: .4byte 0x80000010

	thumb_func_start sub_8091A44
sub_8091A44: @ 0x08091A44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	movs r5, #0
	ldr r6, _08091ADC @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #0x70
	subs r0, r0, r1
	mov sb, r0
	movs r0, #6
	ldrsh r1, [r6, r0]
	mov r8, r1
	mov r7, ip
	adds r7, #0x24
_08091A66:
	lsls r2, r5, #3
	adds r4, r7, r2
	mov r1, sb
	str r1, [r4]
	mov r3, ip
	adds r3, #0x28
	adds r3, r3, r2
	lsls r0, r5, #4
	adds r0, #0x2d
	mov r1, r8
	subs r0, r0, r1
	adds r0, r0, r2
	str r0, [r3]
	mov r1, ip
	adds r1, #0x3c
	adds r1, r1, r2
	ldr r0, [r4]
	subs r0, #0x46
	str r0, [r1]
	mov r0, ip
	adds r0, #0x40
	adds r0, r0, r2
	ldr r1, [r3]
	str r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08091A66
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r0, #0x78
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x54]
	movs r0, #6
	ldrsh r1, [r6, r0]
	movs r0, #0x7b
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x58]
	ldrh r1, [r6, #4]
	movs r0, #0x78
	subs r0, r0, r1
	mov r1, ip
	adds r1, #0x64
	strh r0, [r1]
	ldrh r1, [r6, #6]
	movs r0, #0x1e
	subs r0, r0, r1
	mov r1, ip
	adds r1, #0x66
	strh r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091ADC: .4byte gBgScrollRegs

	thumb_func_start sub_8091AE0
sub_8091AE0: @ 0x08091AE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r6, #0
	ldr r7, _08091B44 @ =gUnknown_080D7264
	movs r0, #0
	mov r8, r0
_08091AF0:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x6c
	adds r4, r5, r0
	lsls r1, r6, #1
	adds r0, r5, #0
	adds r0, #0x12
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	lsls r1, r6, #3
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r6, r0
	bne _08091B48
	mov r0, r8
	b _08091B4A
	.align 2, 0
_08091B44: .4byte gUnknown_080D7264
_08091B48:
	movs r0, #1
_08091B4A:
	strb r0, [r4, #0x1f]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _08091AF0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8091B78
sub_8091B78: @ 0x08091B78
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_08091B7E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xe4
	adds r0, r5, r0
	ldr r2, _08091BC0 @ =gUnknown_080D731C
	lsls r3, r4, #3
	adds r2, r3, r2
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	adds r1, r5, #0
	adds r1, #0x3c
	adds r1, r1, r3
	ldr r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r5, #0
	adds r1, #0x40
	adds r1, r1, r3
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08091B7E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08091BC0: .4byte gUnknown_080D731C

	thumb_func_start sub_8091BC4
sub_8091BC4: @ 0x08091BC4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r7, _08091BF4 @ =gUnknown_080D7024
	ldr r6, _08091BF8 @ =gUnknown_080D7234
_08091BCE:
	lsls r1, r5, #2
	adds r0, r1, r5
	lsls r0, r0, #3
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r2, r4, r0
	adds r3, r1, #0
	cmp r5, #0
	bne _08091BFC
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	b _08091C0C
	.align 2, 0
_08091BF4: .4byte gUnknown_080D7024
_08091BF8: .4byte gUnknown_080D7234
_08091BFC:
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r6
_08091C0C:
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	ldr r0, [r4, #0x54]
	lsls r1, r5, #1
	adds r0, r0, r1
	strh r0, [r2, #0x10]
	ldr r0, [r4, #0x58]
	lsls r1, r5, #3
	adds r0, r0, r1
	adds r0, r0, r3
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08091BCE
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8091C38
sub_8091C38: @ 0x08091C38
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
_08091C3E:
	lsls r2, r5, #2
	adds r4, r2, r5
	lsls r4, r4, #3
	movs r0, #0xd6
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r4, r6, r4
	movs r0, #0x1e
	ldrsh r1, [r6, r0]
	lsls r1, r1, #3
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r5, #6
	subs r0, #0x12
	adds r1, r1, r0
	lsls r0, r5, #4
	adds r1, r1, r0
	lsls r0, r5, #3
	adds r1, r1, r0
	adds r1, r1, r2
	strh r1, [r4, #0x10]
	movs r0, #0x1e
	ldrsh r1, [r6, r0]
	lsls r1, r1, #3
	adds r0, r6, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #4
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08091C3E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8091C9C
sub_8091C9C: @ 0x08091C9C
	bx lr
	.align 2, 0

	thumb_func_start sub_8091CA0
sub_8091CA0: @ 0x08091CA0
	push {lr}
	adds r3, r0, #0
	movs r1, #0x89
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r2, _08091CD8 @ =gUnknown_080D7334
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r3]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r3, #0
	adds r1, #0x64
	ldrh r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r3, #0
	adds r1, #0x66
	ldrh r1, [r1]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08091CD8: .4byte gUnknown_080D7334

	thumb_func_start sub_8091CDC
sub_8091CDC: @ 0x08091CDC
	push {lr}
	adds r3, r0, #0
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r1, #0x1e
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	adds r1, r3, #0
	adds r1, #0x3c
	adds r1, r1, r2
	ldr r1, [r1]
	subs r1, #8
	strh r1, [r0, #0x10]
	movs r1, #0x1e
	ldrsh r2, [r3, r1]
	lsls r2, r2, #3
	adds r1, r3, #0
	adds r1, #0x40
	adds r1, r1, r2
	ldr r1, [r1]
	subs r1, #4
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8091D14
sub_8091D14: @ 0x08091D14
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _08091DAC @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08091DB0 @ =sub_809240C
	movs r1, #0xe0
	lsls r1, r1, #2
	ldr r2, _08091DB4 @ =0x00000101
	ldr r3, _08091DB8 @ =sub_8093950
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r6, r0
	movs r4, #0
	strb r5, [r6, #1]
	adds r0, r6, #0
	bl sub_8091DD0
	str r4, [sp, #4]
	ldr r2, _08091DBC @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _08091DC0 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08091DC4 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, _08091DC8 @ =gBgSprites_Unknown1
	strb r4, [r3]
	ldr r0, _08091DCC @ =gBgSprites_Unknown2
	strb r4, [r0]
	strb r4, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x40
	strb r2, [r0, #3]
	strb r4, [r3, #1]
	strb r4, [r0, #4]
	strb r4, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r4, [r3, #2]
	strb r4, [r0, #8]
	strb r4, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	adds r0, r6, #0
	bl sub_8092320
	adds r0, r6, #0
	bl sub_8091E84
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08091DAC: .4byte gDispCnt
_08091DB0: .4byte sub_809240C
_08091DB4: .4byte 0x00000101
_08091DB8: .4byte sub_8093950
_08091DBC: .4byte 0x040000D4
_08091DC0: .4byte gBgCntRegs
_08091DC4: .4byte 0x85000010
_08091DC8: .4byte gBgSprites_Unknown1
_08091DCC: .4byte gBgSprites_Unknown2

	thumb_func_start sub_8091DD0
sub_8091DD0: @ 0x08091DD0
	push {r4, lr}
	ldr r1, _08091E70 @ =gLoadedSaveGame
	ldr r2, _08091E74 @ =0x00000366
	adds r1, r1, r2
	ldrb r1, [r1]
	movs r2, #0
	strb r1, [r0]
	movs r3, #0
	strh r2, [r0, #0xe]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strb r3, [r0, #2]
	strb r3, [r0, #3]
	strh r2, [r0, #0xc]
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	strb r3, [r0, #6]
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	strb r3, [r0, #7]
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x10]
	ldr r1, _08091E78 @ =0xFFFFF200
	str r1, [r0, #0x2c]
	movs r1, #0xc0
	lsls r1, r1, #7
	str r1, [r0, #0x30]
	movs r2, #0x96
	lsls r2, r2, #8
	str r2, [r0, #0x5c]
	movs r3, #0xc0
	lsls r3, r3, #5
	str r3, [r0, #0x60]
	movs r1, #0x1a
	str r1, [r0, #0x3c]
	movs r1, #0x34
	str r1, [r0, #0x40]
	movs r1, #0x90
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r2, r2, r1
	str r2, [r0, #0x44]
	adds r3, r3, r4
	str r3, [r0, #0x48]
	ldr r1, _08091E7C @ =0xFFFF7400
	str r1, [r0, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #0x50]
	movs r2, #0xd9
	lsls r2, r2, #8
	str r2, [r0, #0x54]
	movs r1, #0x8c
	lsls r1, r1, #8
	str r1, [r0, #0x58]
	str r2, [r0, #0x34]
	str r1, [r0, #0x38]
	str r2, [r0, #0x64]
	str r1, [r0, #0x68]
	movs r1, #0xa0
	lsls r1, r1, #3
	str r1, [r0, #0x6c]
	movs r1, #0xa8
	lsls r1, r1, #6
	str r1, [r0, #0x70]
	ldr r1, _08091E80 @ =0x06010000
	str r1, [r0, #0x28]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08091E70: .4byte gLoadedSaveGame
_08091E74: .4byte 0x00000366
_08091E78: .4byte 0xFFFFF200
_08091E7C: .4byte 0xFFFF7400
_08091E80: .4byte 0x06010000

	thumb_func_start sub_8091E84
sub_8091E84: @ 0x08091E84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	movs r1, #0
	ldrb r2, [r6]
	ldrb r0, [r6, #1]
	cmp r0, #1
	bne _08091E9E
	movs r1, #1
_08091E9E:
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r7, r6, r0
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r3, _08092094 @ =gUnknown_080D73D0
	lsls r2, r2, #1
	adds r2, r1, r2
	lsls r2, r2, #3
	adds r0, r3, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6, #0x28]
	adds r2, r2, r3
	ldrh r0, [r2]
	movs r1, #0
	mov sb, r1
	movs r4, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x4c]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x50]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r2, #0xc0
	mov r8, r2
	mov r3, r8
	strh r3, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	mov r0, sb
	strb r0, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r2, _08092098 @ =gUnknown_080D7430
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6, #0x28]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x64]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x68]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	mov r2, r8
	strh r2, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	strb r5, [r7, #0x1c]
	mov r3, sb
	strb r3, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r7, r6, r0
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r2, _0809209C @ =gUnknown_080D7438
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6, #0x28]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x54]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x58]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	mov r1, r8
	strh r1, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	strb r5, [r7, #0x1c]
	mov r2, sb
	strb r2, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r7, r6, #0
	adds r7, #0x74
	ldr r1, [r6, #0x28]
	str r1, [r6, #0x74]
	ldr r2, _080920A0 @ =gUnknown_080D7440
	ldr r0, [r2, #4]
	lsls r0, r0, #5
	adds r1, r1, r0
	str r1, [r6, #0x28]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x34]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x38]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	strb r5, [r7, #0x1c]
	mov r3, sb
	strb r3, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r7, r6, r0
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r2, _080920A4 @ =gUnknown_080D73C8
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6, #0x28]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x60]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	mov r1, r8
	strh r1, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	strb r5, [r7, #0x1c]
	mov r2, sb
	strb r2, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r3, #0xbd
	lsls r3, r3, #2
	adds r4, r6, r3
	movs r3, #0
	adds r0, r6, #0
	adds r0, #0xec
	str r0, [sp, #8]
	ldr r1, _080920A8 @ =gUnknown_080D7448
	mov r8, r1
	movs r5, #0
	ldrb r2, [r1, #2]
	mov sl, r2
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	mov sb, r0
_0809202C:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #0x9c
	adds r7, r6, r0
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r0, [r6, #0x28]
	add r0, sb
	str r0, [r6, #0x28]
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	mov r2, sl
	strb r2, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	cmp r3, #0
	beq _080920AC
	movs r0, #0xe1
	str r0, [r7, #8]
	strh r5, [r4]
	ldrh r0, [r6, #0x14]
	strh r0, [r4, #2]
	ldrh r0, [r6, #0x16]
	strh r0, [r4, #4]
	ldrh r0, [r7, #0x10]
	strh r0, [r4, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r4, #8]
	adds r0, r7, #0
	adds r1, r4, #0
	str r3, [sp, #0x10]
	bl TransformSprite
	ldr r3, [sp, #0x10]
	b _080920AE
	.align 2, 0
_08092094: .4byte gUnknown_080D73D0
_08092098: .4byte gUnknown_080D7430
_0809209C: .4byte gUnknown_080D7438
_080920A0: .4byte gUnknown_080D7440
_080920A4: .4byte gUnknown_080D73C8
_080920A8: .4byte gUnknown_080D7448
_080920AC:
	str r3, [r7, #8]
_080920AE:
	adds r0, r7, #0
	str r3, [sp, #0x10]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x10]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0809202C
	ldr r7, [sp, #8]
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r2, _080921A0 @ =gUnknown_080D7450
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6, #0x28]
	ldrh r0, [r2]
	movs r1, #0
	mov sb, r1
	movs r1, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x48]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r2, #0x10
	mov r8, r2
	mov r3, r8
	strb r3, [r7, #0x1c]
	mov r0, sb
	strb r0, [r7, #0x1f]
	str r1, [r7, #8]
	adds r0, r7, #0
	str r1, [sp, #0xc]
	bl UpdateSpriteAnimation
	movs r2, #0xda
	lsls r2, r2, #1
	adds r7, r6, r2
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r4, _080921A4 @ =gUnknown_080D7458
	ldr r5, [r4, #4]
	lsls r5, r5, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r5
	str r0, [r6, #0x28]
	ldrh r0, [r4]
	strh r0, [r7, #0xc]
	ldrb r0, [r6, #2]
	ldrb r3, [r4, #2]
	adds r0, r0, r3
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x3c]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x40
	strh r0, [r7, #0x14]
	ldr r1, [sp, #0xc]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	mov r0, r8
	strb r0, [r7, #0x1c]
	mov r2, sb
	strb r2, [r7, #0x1f]
	str r1, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r3, #0
	mov sl, r4
	str r5, [sp]
	movs r0, #0
	mov sb, r0
_08092168:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r7, r6, r0
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r0, [r6, #0x28]
	ldr r2, [sp]
	adds r0, r0, r2
	str r0, [r6, #0x28]
	ldr r0, _080921A8 @ =gLoadedSaveGame
	lsls r1, r3, #1
	adds r0, #4
	adds r1, r1, r0
	ldrh r2, [r1]
	ldr r0, _080921AC @ =0x0000FFFF
	cmp r2, r0
	beq _080921C2
	strb r2, [r7, #0x1a]
	ldrh r0, [r1]
	cmp r0, #0xff
	bls _080921B4
	ldr r0, _080921B0 @ =gUnknown_080D7460
	ldrh r0, [r0]
	b _080921B8
	.align 2, 0
_080921A0: .4byte gUnknown_080D7450
_080921A4: .4byte gUnknown_080D7458
_080921A8: .4byte gLoadedSaveGame
_080921AC: .4byte 0x0000FFFF
_080921B0: .4byte gUnknown_080D7460
_080921B4:
	mov r1, sl
	ldrh r0, [r1]
_080921B8:
	strh r0, [r7, #0xc]
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	b _080921CC
_080921C2:
	mov r2, sl
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	mov r0, sb
	strb r0, [r7, #0x1a]
_080921CC:
	movs r2, #1
	rsbs r2, r2, #0
	mov r1, sp
	strb r2, [r1, #4]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	movs r4, #0
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x48]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x40
	mov r8, r0
	mov r1, r8
	strh r1, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	mov r2, sb
	strb r2, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	str r3, [sp, #0x10]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x10]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #5
	bls _08092168
	ldrb r0, [r6, #5]
	strb r0, [r6, #6]
	movs r3, #0xb3
	lsls r3, r3, #2
	adds r7, r6, r3
	ldr r0, [r6, #0x28]
	str r0, [r7]
	ldr r2, _08092270 @ =gUnknown_080D7468
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6, #0x28]
	ldrh r0, [r2]
	movs r1, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	ldrb r0, [r7, #0x1b]
	mov r2, sp
	ldrb r2, [r2, #4]
	orrs r0, r2
	strb r0, [r7, #0x1b]
	ldr r0, [r6, #0x6c]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	mov r3, r8
	strh r3, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	strb r5, [r7, #0x1c]
	strb r1, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092270: .4byte gUnknown_080D7468

	thumb_func_start sub_8092274
sub_8092274: @ 0x08092274
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	ldrh r2, [r3, #0x14]
	subs r0, r2, #1
	lsls r0, r0, #0x10
	ldr r1, _0809228C @ =0x018F0000
	cmp r0, r1
	bhi _08092290
	adds r0, r2, #0
	adds r0, #8
	b _0809229E
	.align 2, 0
_0809228C: .4byte 0x018F0000
_08092290:
	lsls r1, r2, #0x10
	movs r0, #0xc8
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080922A0
	adds r0, r2, #0
	adds r0, #0x10
_0809229E:
	strh r0, [r3, #0x14]
_080922A0:
	movs r0, #0x14
	ldrsh r1, [r3, r0]
	ldr r0, _080922C8 @ =0x000001FF
	cmp r1, r0
	ble _080922B4
	subs r0, #0xff
	strh r0, [r3, #0x14]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080922B4:
	ldrh r2, [r3, #0x16]
	subs r0, r2, #1
	lsls r0, r0, #0x10
	ldr r1, _080922CC @ =0x018F0000
	cmp r0, r1
	bhi _080922D0
	adds r0, r2, #0
	adds r0, #8
	b _080922DE
	.align 2, 0
_080922C8: .4byte 0x000001FF
_080922CC: .4byte 0x018F0000
_080922D0:
	lsls r1, r2, #0x10
	movs r0, #0xc8
	lsls r0, r0, #0x11
	cmp r1, r0
	ble _080922E0
	adds r0, r2, #0
	adds r0, #0x10
_080922DE:
	strh r0, [r3, #0x16]
_080922E0:
	movs r0, #0x16
	ldrsh r1, [r3, r0]
	ldr r0, _08092314 @ =0x000001FF
	cmp r1, r0
	ble _080922F4
	subs r0, #0xff
	strh r0, [r3, #0x16]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080922F4:
	cmp r4, #0
	bne _0809230C
	ldr r2, _08092318 @ =gBldRegs
	ldr r1, _0809231C @ =gUnknown_080D74A8
	ldrh r0, [r3, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	subs r0, #8
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
_0809230C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08092314: .4byte 0x000001FF
_08092318: .4byte gBldRegs
_0809231C: .4byte gUnknown_080D74A8

	thumb_func_start sub_8092320
sub_8092320: @ 0x08092320
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	mov r8, r0
	ldr r0, _080923DC @ =gBgCntRegs
	mov sb, r0
	movs r1, #0
	mov sl, r1
	movs r4, #0
	ldr r0, _080923E0 @ =0x00000602
	mov r2, sb
	strh r0, [r2]
	ldr r5, _080923E4 @ =gBgScrollRegs
	strh r4, [r5]
	strh r4, [r5, #2]
	movs r0, #0xc0
	lsls r0, r0, #2
	add r0, r8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080923E8 @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080923EC @ =0x0000015F
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r6, #0x20
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r1, _080923F0 @ =0x0000032A
	add r1, r8
	mov r2, sl
	strb r2, [r1]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _080923F4 @ =0x00009007
	mov r1, sb
	strh r0, [r1, #2]
	movs r0, #0x16
	strh r0, [r5, #4]
	movs r0, #0x24
	strh r0, [r5, #6]
	movs r0, #0xd0
	lsls r0, r0, #2
	add r0, r8
	ldr r1, _080923F8 @ =0x06004000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080923FC @ =0x06008000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0xb0
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r6, [r0, #0x26]
	movs r1, #0x40
	strh r1, [r0, #0x28]
	ldr r1, _08092400 @ =0x0000036A
	add r1, r8
	mov r2, sl
	strb r2, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r1, _08092404 @ =gWinRegs
	mov r2, r8
	ldrh r0, [r2, #0xc]
	lsrs r0, r0, #8
	ldr r2, _08092408 @ =0x00002A2A
	adds r0, r0, r2
	strh r0, [r1, #4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080923DC: .4byte gBgCntRegs
_080923E0: .4byte 0x00000602
_080923E4: .4byte gBgScrollRegs
_080923E8: .4byte 0x06003000
_080923EC: .4byte 0x0000015F
_080923F0: .4byte 0x0000032A
_080923F4: .4byte 0x00009007
_080923F8: .4byte 0x06004000
_080923FC: .4byte 0x06008000
_08092400: .4byte 0x0000036A
_08092404: .4byte gWinRegs
_08092408: .4byte 0x00002A2A

	thumb_func_start sub_809240C
sub_809240C: @ 0x0809240C
	push {r4, r5, r6, r7, lr}
	ldr r6, _080924A8 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r5, [r4, #0x22]
	cmp r5, #0
	bne _08092450
	ldr r3, _080924AC @ =gBldRegs
	ldr r0, _080924B0 @ =0x00003FFF
	strh r0, [r3]
	ldr r2, _080924B4 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080924B8 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _080924BC @ =0x00003D32
	strh r0, [r1, #8]
	strh r5, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x20]
	movs r0, #1
	strh r0, [r4, #0x22]
_08092450:
	adds r0, r4, #0
	bl sub_80933B0
	adds r0, r4, #0
	bl sub_80934B0
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_8093640
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	ldr r1, _080924B8 @ =gWinRegs
	ldr r2, _080924C0 @ =0x00002A2A
	adds r0, r2, #0
	ldrh r7, [r4, #0xc]
	adds r0, r0, r7
	strh r0, [r1, #4]
	ldr r1, _080924AC @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080924C8
	ldrh r0, [r4, #0x20]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r1, _080924C4 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	strh r0, [r4, #0x20]
	b _080924D0
	.align 2, 0
_080924A8: .4byte gCurTask
_080924AC: .4byte gBldRegs
_080924B0: .4byte 0x00003FFF
_080924B4: .4byte gDispCnt
_080924B8: .4byte gWinRegs
_080924BC: .4byte 0x00003D32
_080924C0: .4byte 0x00002A2A
_080924C4: .4byte 0xFFFFFF00
_080924C8:
	strh r0, [r1, #4]
	ldr r1, [r6]
	ldr r0, _080924D8 @ =sub_8092604
	str r0, [r1, #8]
_080924D0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080924D8: .4byte sub_8092604

	thumb_func_start sub_80924DC
sub_80924DC: @ 0x080924DC
	push {r4, r5, lr}
	ldr r0, _08092560 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x22]
	cmp r0, #0
	beq _08092518
	ldr r1, _08092564 @ =gBldRegs
	movs r3, #0
	ldr r0, _08092568 @ =0x00003FFF
	strh r0, [r1]
	ldr r2, _0809256C @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08092570 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _08092574 @ =0x00003D32
	strh r0, [r1, #8]
	strh r3, [r1, #0xa]
	strh r3, [r4, #0x20]
	strh r3, [r4, #0x22]
_08092518:
	adds r0, r4, #0
	bl sub_80934B0
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	ldr r5, _08092564 @ =gBldRegs
	ldrh r0, [r5, #4]
	cmp r0, #0xf
	bhi _08092578
	adds r0, r4, #0
	bl sub_80933B0
	ldrh r0, [r4, #0x20]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r5, [r4, #0x20]
	adds r0, r0, r5
	strh r0, [r4, #0x20]
	b _080925F8
	.align 2, 0
_08092560: .4byte gCurTask
_08092564: .4byte gBldRegs
_08092568: .4byte 0x00003FFF
_0809256C: .4byte gDispCnt
_08092570: .4byte gWinRegs
_08092574: .4byte 0x00003D32
_08092578:
	movs r0, #0x10
	strh r0, [r5, #4]
	ldr r3, _080925B0 @ =gLoadedSaveGame
	ldr r0, [r3]
	cmp r0, #0
	bne _08092594
	ldr r2, _080925B4 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080925B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080925BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	str r0, [r3]
_08092594:
	bl sub_8001E58
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _080925C4
	ldr r1, _080925C0 @ =gStageData
	movs r0, #6
	strb r0, [r1, #3]
	bl sub_80003B8
	movs r0, #0
	bl sub_808D0F0
	b _080925F0
	.align 2, 0
_080925B0: .4byte gLoadedSaveGame
_080925B4: .4byte gPseudoRandom
_080925B8: .4byte 0x00196225
_080925BC: .4byte 0x3C6EF35F
_080925C0: .4byte gStageData
_080925C4:
	cmp r0, #3
	bne _080925E0
	ldr r1, _080925DC @ =gStageData
	movs r0, #7
	strb r0, [r1, #3]
	bl sub_80003B8
	movs r0, #0
	bl sub_8000340
	b _080925F0
	.align 2, 0
_080925DC: .4byte gStageData
_080925E0:
	cmp r0, #1
	bne _080925EC
	movs r0, #8
	bl LaunchOptionsMenu
	b _080925F0
_080925EC:
	bl LaunchGameIntro
_080925F0:
	ldr r0, _08092600 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080925F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08092600: .4byte gCurTask

	thumb_func_start sub_8092604
sub_8092604: @ 0x08092604
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08092684 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80933B0
	adds r0, r4, #0
	bl sub_80934B0
	adds r0, r4, #0
	bl sub_8093784
	cmp r0, #1
	bne _0809262C
	movs r5, #1
_0809262C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_80934F0
	cmp r0, #1
	bne _0809263E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809263E:
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_8093640
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	ldr r2, _08092688 @ =gWinRegs
	ldr r1, [r4, #0x30]
	asrs r0, r1, #8
	adds r1, r1, r0
	ldrh r0, [r4, #0xc]
	lsrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r5, #2
	bne _0809267C
	ldr r1, [r6]
	ldr r0, _0809268C @ =sub_8092AC8
	str r0, [r1, #8]
_0809267C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08092684: .4byte gCurTask
_08092688: .4byte gWinRegs
_0809268C: .4byte sub_8092AC8

	thumb_func_start sub_8092690
sub_8092690: @ 0x08092690
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08092784 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _08092788 @ =gPseudoRandom
	ldr r0, [r2]
	ldr r7, _0809278C @ =0x00196225
	muls r0, r7, r0
	ldr r6, _08092790 @ =0x3C6EF35F
	adds r5, r0, r6
	str r5, [r2]
	str r5, [sp]
	ldr r0, [sp]
	movs r1, #0xf
	ands r0, r1
	lsls r3, r0, #0x10
	cmp r3, #0
	beq _080926DE
	mov ip, r2
	adds r1, r5, #0
_080926C8:
	adds r0, r1, #0
	muls r0, r7, r0
	adds r1, r0, r6
	str r1, [sp]
	ldr r0, _08092794 @ =0xFFFF0000
	adds r3, r3, r0
	asrs r0, r3, #0x10
	cmp r0, #0
	bne _080926C8
	mov r3, ip
	str r1, [r3]
_080926DE:
	ldr r0, [sp]
	str r0, [r2]
	adds r0, r4, #0
	bl sub_80933B0
	adds r0, r4, #0
	bl sub_80934B0
	ldr r5, _08092798 @ =gPressedKeys
	ldrh r1, [r5]
	movs r6, #2
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08092708
	movs r0, #0x6b
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_8092D1C
_08092708:
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08092720
	movs r0, #1
	strb r0, [r4, #3]
	strh r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_80937DC
_08092720:
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08092738
	movs r0, #2
	strb r0, [r4, #3]
	strh r6, [r4, #0xe]
	adds r0, r4, #0
	bl sub_80937DC
_08092738:
	adds r0, r4, #0
	bl sub_80935E4
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_8093640
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809281C
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r6, #0xe
	ldrsh r0, [r4, r6]
	cmp r0, #1
	beq _08092800
	cmp r0, #1
	bgt _0809279C
	cmp r0, #0
	beq _080927A2
	b _0809281C
	.align 2, 0
_08092784: .4byte gCurTask
_08092788: .4byte gPseudoRandom
_0809278C: .4byte 0x00196225
_08092790: .4byte 0x3C6EF35F
_08092794: .4byte 0xFFFF0000
_08092798: .4byte gPressedKeys
_0809279C:
	cmp r0, #2
	beq _0809280C
	b _0809281C
_080927A2:
	movs r3, #0
	movs r2, #0
	ldrb r0, [r4, #5]
	adds r1, r0, #0
	adds r6, r0, #0
	cmp r3, r1
	bhs _080927E0
	ldr r0, _080927F4 @ =0x00000404
	mov r8, r0
	adds r5, r1, #0
	movs r7, #0xee
	lsls r7, r7, #1
_080927BA:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r7
	adds r1, r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0x4d
	bne _080927D6
	ldrh r0, [r1, #0xc]
	cmp r0, r8
	bne _080927D6
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080927D6:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r5
	blo _080927BA
_080927E0:
	adds r0, r6, #0
	cmp r0, #0
	beq _0809281C
	cmp r3, r0
	bhs _0809281C
	ldr r0, _080927F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080927FC @ =sub_8092A0C
	str r0, [r1, #8]
	b _080929FC
	.align 2, 0
_080927F4: .4byte 0x00000404
_080927F8: .4byte gCurTask
_080927FC: .4byte sub_8092A0C
_08092800:
	ldrb r0, [r4, #6]
	adds r1, r0, #0
	cmp r1, #0
	beq _08092814
	subs r0, #1
	b _0809281A
_0809280C:
	ldrb r0, [r4, #6]
	ldrb r1, [r4, #5]
	cmp r0, r1
	bne _08092818
_08092814:
	strb r1, [r4, #6]
	b _0809281C
_08092818:
	adds r0, #1
_0809281A:
	strb r0, [r4, #6]
_0809281C:
	ldr r5, _08092848 @ =gRepeatedKeys
	ldrh r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _0809282A
	b _080929FC
_0809282A:
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08092850
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #2
	bne _0809284C
	movs r0, #0
	b _0809284E
	.align 2, 0
_08092848: .4byte gRepeatedKeys
_0809284C:
	adds r0, r1, #1
_0809284E:
	strh r0, [r4, #0xe]
_08092850:
	ldr r2, _0809286C @ =gRepeatedKeys
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08092874
	ldrh r1, [r4, #0xe]
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _08092870
	movs r0, #2
	b _08092872
	.align 2, 0
_0809286C: .4byte gRepeatedKeys
_08092870:
	subs r0, r1, #1
_08092872:
	strh r0, [r4, #0xe]
_08092874:
	ldrh r2, [r2]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08092930
	movs r2, #0
	movs r0, #0xba
	str r0, [r4, #0x3c]
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _080928B0
	ldr r0, [r4, #0x40]
	cmp r0, #0x34
	bne _080928AC
	ldrh r1, [r4, #0x12]
	movs r6, #0x12
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bne _080928A4
	movs r0, #0x84
	str r0, [r4, #0x40]
	adds r0, #0x7c
	strh r0, [r4, #0x12]
	b _080928B0
_080928A4:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r4, #0x12]
	b _080928B0
_080928AC:
	subs r0, #0x10
	str r0, [r4, #0x40]
_080928B0:
	ldr r0, _08092924 @ =gCurTask
	mov sb, r0
	ldr r1, _08092928 @ =sub_8092AC8
	mov sl, r1
	cmp r2, #0
	beq _080928BE
	b _080929EA
_080928BE:
	ldr r1, [r4, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	ldr r7, _0809292C @ =gUnknown_080D7470
	ldrh r2, [r7]
	mov r8, r2
	mov ip, r7
	lsrs r6, r0, #0x18
_080928D8:
	ldr r1, [r4, #0x3c]
	adds r0, r1, #0
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r3, #0
	cmp r8, r5
	bne _080928F0
	ldrh r0, [r7, #2]
	cmp r0, r6
	beq _08092910
_080928F0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _08092910
	lsls r2, r3, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r5
	bne _080928F0
	mov r0, ip
	adds r0, #2
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r0, r6
	bne _080928F0
_08092910:
	movs r2, #1
	cmp r3, #0xe
	beq _0809291E
	movs r2, #0
	adds r0, r1, #0
	subs r0, #0x10
	str r0, [r4, #0x3c]
_0809291E:
	cmp r2, #0
	beq _080928D8
	b _080929EA
	.align 2, 0
_08092924: .4byte gCurTask
_08092928: .4byte sub_8092AC8
_0809292C: .4byte gUnknown_080D7470
_08092930:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080929F8
	movs r2, #0
	movs r0, #0x1a
	str r0, [r4, #0x3c]
	ldrb r0, [r4, #8]
	cmp r0, #1
	bne _0809296C
	ldr r0, [r4, #0x40]
	cmp r0, #0x84
	bne _08092968
	ldrh r3, [r4, #0x12]
	movs r0, #0x12
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08092960
	movs r0, #0x34
	str r0, [r4, #0x40]
	strh r2, [r4, #0x12]
	b _0809296C
_08092960:
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r4, #0x12]
	b _0809296C
_08092968:
	adds r0, #0x10
	str r0, [r4, #0x40]
_0809296C:
	ldr r1, _080929AC @ =gCurTask
	mov sb, r1
	ldr r3, _080929B0 @ =sub_8092AC8
	mov sl, r3
	cmp r2, #0
	bne _080929EA
	ldr r1, [r4, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	ldr r7, _080929B4 @ =gUnknown_080D7470
	ldrh r6, [r7]
	mov r8, r6
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	adds r0, r7, #2
	mov ip, r0
_08092996:
	ldr r1, [r4, #0x3c]
	adds r0, r1, #0
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r3, #0
	cmp r8, r5
	bne _080929B8
	ldrh r0, [r7, #2]
	b _080929D2
	.align 2, 0
_080929AC: .4byte gCurTask
_080929B0: .4byte sub_8092AC8
_080929B4: .4byte gUnknown_080D7470
_080929B8:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _080929D8
	lsls r2, r3, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r5
	bne _080929B8
	mov r6, ip
	adds r0, r2, r6
	ldrh r0, [r0]
_080929D2:
	ldr r2, [sp, #4]
	cmp r0, r2
	bne _080929B8
_080929D8:
	movs r2, #1
	cmp r3, #0xe
	beq _080929E6
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x10
	str r0, [r4, #0x3c]
_080929E6:
	cmp r2, #0
	beq _08092996
_080929EA:
	movs r0, #0
	strb r0, [r4, #7]
	mov r3, sb
	ldr r0, [r3]
	mov r6, sl
	str r6, [r0, #8]
	b _080929FC
_080929F8:
	ldrh r0, [r4, #0xe]
	strb r0, [r4, #3]
_080929FC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8092A0C
sub_8092A0C: @ 0x08092A0C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08092AB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80933B0
	adds r0, r4, #0
	bl sub_80934B0
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	movs r3, #0
	ldrb r0, [r4, #5]
	cmp r3, r0
	bhs _08092A86
	ldr r7, _08092AB8 @ =gLoadedSaveGame + 0x4
	mov ip, r7
	ldr r0, _08092ABC @ =gUnknown_080D7458
	ldrh r5, [r0]
	movs r6, #0xee
	lsls r6, r6, #1
_08092A58:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, r4, r0
	lsls r1, r3, #1
	add r1, ip
	ldrb r2, [r0, #0x1a]
	strh r2, [r1]
	ldrh r0, [r0, #0xc]
	cmp r0, r5
	beq _08092A7A
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	adds r0, r2, r0
	strh r0, [r1]
_08092A7A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r0, [r4, #5]
	cmp r3, r0
	blo _08092A58
_08092A86:
	ldrb r3, [r4, #5]
	ldr r5, _08092AB4 @ =gCurTask
	ldr r6, _08092AC0 @ =sub_8093710
	cmp r3, #5
	bhi _08092AAA
	ldr r4, _08092AB8 @ =gLoadedSaveGame + 0x4
	ldr r7, _08092AC4 @ =0x0000FFFF
	adds r2, r7, #0
_08092A96:
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	orrs r1, r2
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #5
	bls _08092A96
_08092AAA:
	ldr r0, [r5]
	str r6, [r0, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092AB4: .4byte gCurTask
_08092AB8: .4byte gLoadedSaveGame + 0x4
_08092ABC: .4byte gUnknown_080D7458
_08092AC0: .4byte sub_8093710
_08092AC4: .4byte 0x0000FFFF

	thumb_func_start sub_8092AC8
sub_8092AC8: @ 0x08092AC8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08092B98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _08092B9C @ =gPseudoRandom
	ldr r0, [r2]
	ldr r6, _08092BA0 @ =0x00196225
	muls r0, r6, r0
	ldr r5, _08092BA4 @ =0x3C6EF35F
	adds r3, r0, r5
	str r3, [r2]
	str r3, [sp]
	ldr r0, [sp]
	movs r1, #0xf
	ands r0, r1
	lsls r1, r0, #0x10
	adds r7, r2, #0
	ldr r0, _08092BA8 @ =gPressedKeys
	mov r8, r0
	cmp r1, #0
	beq _08092B18
	mov ip, r7
	adds r2, r6, #0
_08092B02:
	adds r0, r3, #0
	muls r0, r2, r0
	adds r3, r0, r5
	str r3, [sp]
	ldr r0, _08092BAC @ =0xFFFF0000
	adds r1, r1, r0
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _08092B02
	mov r0, ip
	str r3, [r0]
_08092B18:
	ldr r0, [sp]
	str r0, [r7]
	mov r0, r8
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08092B34
	movs r0, #0x6b
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_8092D1C
_08092B34:
	adds r0, r4, #0
	bl sub_80933B0
	adds r0, r4, #0
	bl sub_80934B0
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_8093640
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	adds r0, r4, #0
	bl sub_80936A0
	movs r3, #0
	ldr r0, _08092BB0 @ =gInput
	ldrh r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _08092B7E
	movs r3, #1
_08092B7E:
	ldr r0, _08092BB4 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08092BC8
	cmp r3, #0
	beq _08092BB8
	adds r0, r4, #0
	bl sub_80930B8
	b _08092BC4
	.align 2, 0
_08092B98: .4byte gCurTask
_08092B9C: .4byte gPseudoRandom
_08092BA0: .4byte 0x00196225
_08092BA4: .4byte 0x3C6EF35F
_08092BA8: .4byte gPressedKeys
_08092BAC: .4byte 0xFFFF0000
_08092BB0: .4byte gInput
_08092BB4: .4byte gRepeatedKeys
_08092BB8:
	movs r0, #0x6c
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_8092F60
_08092BC4:
	cmp r0, #1
	beq _08092CAA
_08092BC8:
	ldr r0, [r4, #0x40]
	subs r0, #0x34
	asrs r0, r0, #4
	ldrh r1, [r4, #0x12]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08092C50 @ =gUnknown_080D74B8
	adds r1, r1, r0
	ldr r0, [r4, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r0, [r4, #2]
	ldr r5, _08092C54 @ =gPressedKeys
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08092C02
	movs r0, #1
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_80937DC
_08092C02:
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08092C18
	movs r0, #2
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_80937DC
_08092C18:
	adds r0, r4, #0
	bl sub_809386C
	adds r0, r4, #0
	bl sub_80935A4
	adds r0, r4, #0
	bl sub_8092274
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08092C70
	ldrb r0, [r4, #6]
	cmp r0, #6
	bhi _08092C70
	movs r0, #0x6a
	bl m4aSongNumStart
	ldrb r0, [r4, #2]
	cmp r0, #0xa
	bne _08092C58
	adds r0, r4, #0
	bl sub_8092D94
	b _08092C70
	.align 2, 0
_08092C50: .4byte gUnknown_080D74B8
_08092C54: .4byte gPressedKeys
_08092C58:
	cmp r0, #0x15
	bne _08092C64
	adds r0, r4, #0
	bl sub_8092EBC
	b _08092C70
_08092C64:
	ldrb r0, [r4, #6]
	cmp r0, #5
	bhi _08092C70
	adds r0, r4, #0
	bl sub_8092CC8
_08092C70:
	ldr r0, _08092CB8 @ =gInput
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r2, r0, #0
	ands r2, r1
	cmp r2, r0
	beq _08092C8A
	cmp r2, #0
	beq _08092C8A
	adds r0, r4, #0
	bl sub_80935E4
_08092C8A:
	ldr r0, _08092CBC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08092CAA
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r0, #0
	strb r0, [r4, #3]
	strh r0, [r4, #0xe]
	ldr r0, _08092CC0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08092CC4 @ =sub_8092690
	str r0, [r1, #8]
_08092CAA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092CB8: .4byte gInput
_08092CBC: .4byte gPressedKeys
_08092CC0: .4byte gCurTask
_08092CC4: .4byte sub_8092690

	thumb_func_start sub_8092CC8
sub_8092CC8: @ 0x08092CC8
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r3, r2, r0
	adds r1, #1
	strb r1, [r2, #6]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #6
	bls _08092CEC
	movs r0, #6
	strb r0, [r2, #6]
_08092CEC:
	ldrb r1, [r2, #5]
	ldrb r0, [r2, #6]
	cmp r0, r1
	bls _08092D04
	adds r0, r1, #1
	strb r0, [r2, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _08092D04
	movs r0, #6
	strb r0, [r2, #5]
_08092D04:
	ldr r1, _08092D18 @ =gUnknown_080D7458
	ldrh r0, [r1]
	strh r0, [r3, #0xc]
	ldrb r0, [r2, #2]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r3, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_08092D18: .4byte gUnknown_080D7458

	thumb_func_start sub_8092D1C
sub_8092D1C: @ 0x08092D1C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r5, #0xa]
	ldrb r0, [r5, #6]
	ldrb r1, [r5, #5]
	cmp r0, r1
	beq _08092D6A
	adds r4, r0, #0
	cmp r4, r1
	bhs _08092D60
_08092D32:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r1, r0, #3
	movs r2, #0xee
	lsls r2, r2, #1
	adds r0, r1, r2
	adds r0, r5, r0
	movs r3, #0x81
	lsls r3, r3, #2
	adds r2, r1, r3
	adds r2, r5, r2
	ldrh r1, [r2, #0xc]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0x1a]
	strb r1, [r0, #0x1a]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #5]
	cmp r4, r0
	blo _08092D32
_08092D60:
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #6]
	adds r2, r0, #0
	cmp r1, r2
	bne _08092D7E
_08092D6A:
	ldrb r0, [r5, #6]
	subs r0, #1
	strb r0, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r5, #5]
	cmp r0, #6
	bls _08092D7E
	movs r0, #0
	strb r0, [r5, #6]
_08092D7E:
	subs r0, r2, #1
	strb r0, [r5, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _08092D8E
	movs r0, #0
	strb r0, [r5, #5]
_08092D8E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8092D94
sub_8092D94: @ 0x08092D94
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r5, #0
	ldrb r2, [r3, #6]
	subs r1, r2, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	mov ip, r0
	movs r0, #0xfb
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	ldr r6, _08092DE0 @ =gUnknown_080D7458
	ldrb r1, [r6, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	beq _08092EB0
	adds r0, r4, #0
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bhi _08092DE4
	movs r0, #0xf4
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _08092DE4
	adds r0, r4, #0
	subs r0, #0x19
	b _08092E06
	.align 2, 0
_08092DE0: .4byte gUnknown_080D7458
_08092DE4:
	adds r0, r4, #0
	subs r0, #0x16
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08092DF6
	adds r0, r4, #0
	subs r0, #0x1f
	b _08092E06
_08092DF6:
	adds r0, r4, #0
	subs r0, #0x21
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _08092E0C
	adds r0, r4, #0
	subs r0, #0x25
_08092E06:
	strb r0, [r3, #2]
	movs r5, #1
	b _08092E5E
_08092E0C:
	cmp r4, #0x25
	bne _08092E14
	movs r0, #0
	b _08092E5A
_08092E14:
	adds r0, r4, #0
	subs r0, #0x37
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08092E26
	adds r0, r4, #0
	subs r0, #0x36
	b _08092E5A
_08092E26:
	subs r0, r4, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08092E54
	ldrb r1, [r3, #6]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08092E50 @ =gUnknown_080D7460
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08092E54
	subs r0, r4, #5
	b _08092E5A
	.align 2, 0
_08092E50: .4byte gUnknown_080D7460
_08092E54:
	cmp r4, #2
	bne _08092E5E
	movs r0, #0xb
_08092E5A:
	strb r0, [r3, #2]
	movs r5, #2
_08092E5E:
	cmp r5, #1
	bne _08092E7A
	ldrb r0, [r3, #6]
	subs r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r3, r1
	ldrb r0, [r3, #2]
	movs r2, #0xfb
	lsls r2, r2, #1
	adds r1, r1, r2
	strb r0, [r1]
	b _08092EB0
_08092E7A:
	cmp r5, #2
	bne _08092EB0
	ldrb r1, [r3, #6]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	ldr r2, _08092EB8 @ =gUnknown_080D7460
	ldrh r1, [r2]
	movs r4, #0xf4
	lsls r4, r4, #1
	adds r0, r0, r4
	strh r1, [r0]
	ldrb r1, [r3, #6]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	ldrb r1, [r3, #2]
	ldrb r2, [r2, #2]
	adds r1, r1, r2
	movs r2, #0xfb
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0]
_08092EB0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08092EB8: .4byte gUnknown_080D7460

	thumb_func_start sub_8092EBC
sub_8092EBC: @ 0x08092EBC
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r5, #0
	ldrb r2, [r3, #6]
	subs r1, r2, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	mov ip, r0
	movs r0, #0xfb
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	ldr r1, _08092EFC @ =gUnknown_080D7458
	ldrb r1, [r1, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r4, r1, #0
	cmp r2, #0
	beq _08092F56
	adds r0, r1, #0
	subs r0, #0x37
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08092F00
	adds r0, r1, #0
	subs r0, #0x31
	strb r0, [r3, #2]
	b _08092F24
	.align 2, 0
_08092EFC: .4byte gUnknown_080D7458
_08092F00:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bhi _08092F20
	movs r0, #0xf4
	lsls r0, r0, #1
	add r0, ip
	ldr r1, _08092F5C @ =gUnknown_080D7460
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08092F20
	adds r0, r4, #5
	strb r0, [r3, #2]
	movs r5, #1
_08092F20:
	cmp r5, #0
	beq _08092F56
_08092F24:
	ldrb r1, [r3, #6]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	ldr r2, _08092F5C @ =gUnknown_080D7460
	ldrh r1, [r2]
	movs r4, #0xf4
	lsls r4, r4, #1
	adds r0, r0, r4
	strh r1, [r0]
	ldrb r1, [r3, #6]
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	ldrb r1, [r3, #2]
	ldrb r2, [r2, #2]
	adds r1, r1, r2
	movs r2, #0xfb
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0]
_08092F56:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08092F5C: .4byte gUnknown_080D7460

	thumb_func_start sub_8092F60
sub_8092F60: @ 0x08092F60
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08092F7C @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08092F80
	adds r0, r2, #0
	movs r1, #0
	bl sub_80932E0
	b _080930AA
	.align 2, 0
_08092F7C: .4byte gRepeatedKeys
_08092F80:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08092F92
	adds r0, r2, #0
	movs r1, #1
	bl sub_80932E0
	b _080930AA
_08092F92:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08093018
_08092F9A:
	ldr r1, [r2, #0x3c]
	cmp r1, #0x1a
	bne _08092FAE
	ldrb r1, [r2, #7]
	cmp r1, #0
	bne _08092FB8
	movs r0, #1
	strb r0, [r2, #7]
	strb r1, [r2, #8]
	b _08093032
_08092FAE:
	movs r0, #0
	strb r0, [r2, #7]
	adds r0, r1, #0
	subs r0, #0x10
	str r0, [r2, #0x3c]
_08092FB8:
	ldr r1, [r2, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r2, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	ldr r0, _08093014 @ =gUnknown_080D7470
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, r4
	bne _08092FE6
	ldrh r0, [r6, #2]
	cmp r0, r5
	beq _08093004
_08092FE6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _08093004
	lsls r1, r3, #2
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _08092FE6
	adds r0, r6, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r5
	bne _08092FE6
_08093004:
	movs r0, #0
	cmp r3, #0xe
	bne _0809300C
	movs r0, #1
_0809300C:
	cmp r0, #0
	beq _08092F9A
	b _080930AA
	.align 2, 0
_08093014: .4byte gUnknown_080D7470
_08093018:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080930AA
_08093020:
	ldr r1, [r2, #0x3c]
	cmp r1, #0xba
	bne _08093048
	ldrb r0, [r2, #7]
	cmp r0, #0
	bne _08093052
	movs r0, #1
	strb r0, [r2, #7]
	strb r0, [r2, #8]
_08093032:
	ldr r0, _08093040 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08093044 @ =sub_8092690
	str r0, [r1, #8]
	movs r0, #1
	b _080930AC
	.align 2, 0
_08093040: .4byte gCurTask
_08093044: .4byte sub_8092690
_08093048:
	movs r0, #0
	strb r0, [r2, #7]
	adds r0, r1, #0
	adds r0, #0x10
	str r0, [r2, #0x3c]
_08093052:
	ldr r1, [r2, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r2, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	ldr r0, _080930B4 @ =gUnknown_080D7470
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, r4
	bne _08093080
	ldrh r0, [r6, #2]
	cmp r0, r5
	beq _0809309E
_08093080:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _0809309E
	lsls r1, r3, #2
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _08093080
	adds r0, r6, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r5
	bne _08093080
_0809309E:
	movs r0, #0
	cmp r3, #0xe
	bne _080930A6
	movs r0, #1
_080930A6:
	cmp r0, #0
	beq _08093020
_080930AA:
	movs r0, #0
_080930AC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080930B4: .4byte gUnknown_080D7470

	thumb_func_start sub_80930B8
sub_80930B8: @ 0x080930B8
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

	thumb_func_start sub_80932E0
sub_80932E0: @ 0x080932E0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r6, _0809331C @ =gUnknown_080D7470
	movs r0, #0x80
	lsls r0, r0, #1
	mov ip, r0
	adds r7, r6, #0
	mov sb, ip
_080932FC:
	mov r1, r8
	cmp r1, #0
	bne _0809332C
	ldr r0, [r2, #0x40]
	cmp r0, #0x34
	bne _08093328
	ldrh r1, [r2, #0x12]
	movs r3, #0x12
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _08093320
	movs r0, #0x84
	str r0, [r2, #0x40]
	mov r0, ip
	strh r0, [r2, #0x12]
	b _08093350
	.align 2, 0
_0809331C: .4byte gUnknown_080D7470
_08093320:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2, #0x12]
	b _08093350
_08093328:
	subs r0, #0x10
	b _0809334E
_0809332C:
	ldr r0, [r2, #0x40]
	cmp r0, #0x84
	bne _0809334C
	movs r1, #0x12
	ldrsh r0, [r2, r1]
	cmp r0, sb
	bne _08093344
	movs r0, #0x34
	str r0, [r2, #0x40]
	movs r0, #0
	strh r0, [r2, #0x12]
	b _08093350
_08093344:
	ldrh r0, [r2, #0x12]
	adds r0, #0x10
	strh r0, [r2, #0x12]
	b _08093350
_0809334C:
	adds r0, #0x10
_0809334E:
	str r0, [r2, #0x40]
_08093350:
	ldr r1, [r2, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r2, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	ldrh r0, [r7]
	cmp r0, r4
	bne _0809337A
	ldrh r0, [r6, #2]
	cmp r0, r5
	beq _08093398
_0809337A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _08093398
	lsls r1, r3, #2
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _0809337A
	adds r0, r6, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r5
	bne _0809337A
_08093398:
	movs r0, #0
	cmp r3, #0xe
	bne _080933A0
	movs r0, #1
_080933A0:
	cmp r0, #0
	beq _080932FC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80933B0
sub_80933B0: @ 0x080933B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldrh r2, [r0, #0xc]
	lsrs r2, r2, #8
	ldr r4, _08093440 @ =gFlags
	ldr r1, [r4]
	movs r3, #4
	orrs r1, r3
	str r1, [r4]
	ldr r1, [r0, #0x30]
	asrs r1, r1, #8
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r2, r5, r2
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	mov ip, r1
	movs r3, #0xe8
	lsls r3, r3, #0x18
	adds r2, r2, r3
	lsrs r2, r2, #0x18
	str r2, [sp]
	ldr r0, [r0, #0x2c]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	ldr r1, _08093444 @ =gHBlankCopyTarget
	ldr r0, _08093448 @ =0x04000040
	str r0, [r1]
	ldr r1, _0809344C @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08093450 @ =gBgOffsetsHBlankPrimary
	ldr r7, [r0]
	movs r4, #0
	ldr r6, _08093454 @ =gUnknown_080D74CE
	mov sb, r4
	movs r0, #2
	mov r8, r0
	adds r0, r2, #0
	adds r0, #0x1e
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r0, #0xd3
	lsls r0, r0, #0x10
	mov sl, r0
_08093414:
	cmp r4, r5
	blo _08093458
	adds r0, r5, #0
	adds r0, #0xc
	cmp r4, r0
	bge _08093458
	subs r1, r4, r5
	lsls r1, r1, #2
	mov r3, sb
	adds r0, r3, r1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	add r1, r8
	adds r1, r1, r6
	ldrh r0, [r1]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	b _0809348A
	.align 2, 0
_08093440: .4byte gFlags
_08093444: .4byte gHBlankCopyTarget
_08093448: .4byte 0x04000040
_0809344C: .4byte gHBlankCopySize
_08093450: .4byte gBgOffsetsHBlankPrimary
_08093454: .4byte gUnknown_080D74CE
_08093458:
	mov r0, ip
	subs r0, #0xc
	cmp r4, r0
	blt _08093484
	cmp r4, ip
	bhs _08093484
	ldr r0, [sp]
	subs r1, r4, r0
	lsls r1, r1, #2
	mov r3, sb
	adds r0, r3, r1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	add r1, r8
	adds r1, r1, r6
	ldrh r0, [r1]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	b _0809348A
_08093484:
	ldr r0, [sp, #4]
	lsrs r3, r0, #0x10
	mov r0, sl
_0809348A:
	lsrs r1, r0, #0x10
	lsls r0, r3, #8
	adds r0, r1, r0
	strh r0, [r7]
	adds r7, #2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x9f
	bls _08093414
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80934B0
sub_80934B0: @ 0x080934B0
	ldr r2, _080934E8 @ =0xFFFFFF00
	adds r1, r2, #0
	ldrh r3, [r0, #0x1c]
	adds r1, r1, r3
	strh r1, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	ldrh r3, [r0, #0x1e]
	adds r2, r2, r3
	strh r2, [r0, #0x1e]
	ldr r3, _080934EC @ =gBgScrollRegs
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	rsbs r1, r1, #0
	strh r1, [r3]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x18
	rsbs r2, r2, #0
	strh r2, [r3, #2]
	ldrh r1, [r0, #0x10]
	adds r1, #0x16
	strh r1, [r3, #4]
	ldrh r0, [r0, #0x12]
	adds r0, #0x24
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_080934E8: .4byte 0xFFFFFF00
_080934EC: .4byte gBgScrollRegs

	thumb_func_start sub_80934F0
sub_80934F0: @ 0x080934F0
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r3, #0
	movs r5, #0xb
	cmp r1, #0
	bne _08093548
	ldrh r0, [r2, #0xc]
	ldr r1, _08093520 @ =0x00006BFF
	cmp r0, r1
	bhi _08093524
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r0, r4
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _08093526
	movs r0, #0xd8
	lsls r0, r0, #7
	strh r0, [r2, #0xc]
	b _08093526
	.align 2, 0
_08093520: .4byte 0x00006BFF
_08093524:
	movs r3, #1
_08093526:
	ldr r1, [r2, #0x30]
	movs r4, #0xa8
	lsls r4, r4, #6
	cmp r1, r4
	ble _0809358C
	movs r0, #1
	lsls r0, r5
	subs r0, r1, r0
	str r0, [r2, #0x30]
	ldr r1, _08093544 @ =0x000029FF
	cmp r0, r1
	bgt _08093592
	str r4, [r2, #0x30]
	b _08093592
	.align 2, 0
_08093544: .4byte 0x000029FF
_08093548:
	ldrh r0, [r2, #0xc]
	cmp r0, #0
	beq _08093568
	ldr r1, _08093560 @ =0xFFFFF000
	adds r0, r0, r1
	strh r0, [r2, #0xc]
	lsls r0, r0, #0x10
	ldr r1, _08093564 @ =0x6BFF0000
	cmp r0, r1
	bls _0809356A
	strh r3, [r2, #0xc]
	b _0809356A
	.align 2, 0
_08093560: .4byte 0xFFFFF000
_08093564: .4byte 0x6BFF0000
_08093568:
	movs r3, #1
_0809356A:
	ldr r1, [r2, #0x30]
	ldr r0, _08093588 @ =0x00005FFF
	cmp r1, r0
	bgt _0809358C
	movs r0, #1
	lsls r0, r5
	adds r0, r1, r0
	str r0, [r2, #0x30]
	movs r1, #0xc0
	lsls r1, r1, #7
	cmp r0, r1
	ble _08093592
	str r1, [r2, #0x30]
	b _08093592
	.align 2, 0
_08093588: .4byte 0x00005FFF
_0809358C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08093592:
	cmp r3, #2
	bne _0809359A
	movs r0, #1
	b _0809359C
_0809359A:
	movs r0, #0
_0809359C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80935A4
sub_80935A4: @ 0x080935A4
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r3, r0
	adds r4, r3, #0
	adds r4, #0xc4
	ldr r0, [r3, #0x3c]
	movs r2, #0
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0x40]
	strh r0, [r4, #0x12]
	movs r0, #0xe1
	str r0, [r4, #8]
	strh r2, [r1]
	ldrh r0, [r3, #0x14]
	strh r0, [r1, #2]
	ldrh r0, [r3, #0x16]
	strh r0, [r1, #4]
	ldrh r0, [r4, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #8]
	adds r0, r4, #0
	bl TransformSprite
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80935E4
sub_80935E4: @ 0x080935E4
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	movs r1, #0
	ldrb r2, [r3, #3]
	adds r4, r2, #0
	mov r0, sp
	strb r1, [r0]
	mov r1, sp
	ldrb r0, [r0, #1]
	adds r0, #0xf
	strb r0, [r1, #1]
	adds r1, r3, #0
	adds r1, #0x74
	ldr r0, [r3, #0x34]
	asrs r0, r0, #8
	subs r0, #1
	strh r0, [r1, #0x10]
	cmp r2, #1
	beq _08093622
	cmp r2, #1
	bgt _08093616
	cmp r2, #0
	beq _0809361C
	b _08093632
_08093616:
	cmp r4, #2
	beq _0809362A
	b _08093632
_0809361C:
	ldr r0, [r3, #0x38]
	asrs r0, r0, #8
	b _08093630
_08093622:
	ldr r0, [r3, #0x38]
	asrs r0, r0, #8
	subs r0, #0xf
	b _08093630
_0809362A:
	ldr r0, [r3, #0x38]
	asrs r0, r0, #8
	subs r0, #0x1e
_08093630:
	strh r0, [r1, #0x12]
_08093632:
	adds r0, r1, #0
	bl DisplaySprite
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8093640
sub_8093640: @ 0x08093640
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	adds r5, r4, #0
	adds r5, #0xec
_0809364A:
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	lsls r1, r6, #3
	adds r0, r0, r1
	lsls r1, r6, #2
	adds r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	ldrb r0, [r4, #6]
	cmp r6, r0
	bne _08093672
	ldrh r0, [r4, #0xa]
	cmp r0, #0x27
	bhi _0809367C
	adds r0, r5, #0
	bl DisplaySprite
	b _0809367C
_08093672:
	cmp r6, r0
	bls _0809367C
	adds r0, r5, #0
	bl DisplaySprite
_0809367C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #5
	bls _0809364A
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _08093698
	movs r0, #0
	strh r0, [r4, #0xa]
_08093698:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80936A0
sub_80936A0: @ 0x080936A0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r4, r5, r0
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	cmp r0, #0xf0
	bgt _080936DA
	ldr r0, [r5, #0x6c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x70]
	asrs r0, r0, #8
	adds r0, #0x6c
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r2, #1
_080936DA:
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _08093706
	ldr r0, [r5, #0x6c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x70]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _0809370C @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	cmp r2, #0
	bne _08093700
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08093700:
	adds r0, r4, #0
	bl DisplaySprite
_08093706:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809370C: .4byte 0xFFFFF7FF

	thumb_func_start sub_8093710
sub_8093710: @ 0x08093710
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08093778 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80933B0
	adds r0, r4, #0
	bl sub_80934B0
	adds r0, r4, #0
	movs r1, #1
	bl sub_80934F0
	cmp r0, #1
	bne _0809373A
	movs r5, #1
_0809373A:
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	ldr r2, _0809377C @ =gWinRegs
	ldr r1, [r4, #0x30]
	asrs r0, r1, #8
	adds r1, r1, r0
	ldrh r0, [r4, #0xc]
	lsrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r5, #0
	beq _08093772
	ldr r1, [r6]
	ldr r0, _08093780 @ =sub_80924DC
	str r0, [r1, #8]
_08093772:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08093778: .4byte gCurTask
_0809377C: .4byte gWinRegs
_08093780: .4byte sub_80924DC

	thumb_func_start sub_8093784
sub_8093784: @ 0x08093784
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #4]
	ldr r1, _080937B8 @ =gUnknown_080D6ED4
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r2, #0x4c]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2, #0x4c]
	cmp r3, #0
	bne _080937A2
	ldr r0, _080937BC @ =0x000009FF
	cmp r1, r0
	bgt _080937AE
_080937A2:
	cmp r3, #1
	bne _080937C4
	ldr r1, [r2, #0x4c]
	ldr r0, _080937C0 @ =0xFFFFF600
	cmp r1, r0
	bgt _080937C4
_080937AE:
	ldrb r0, [r2, #4]
	adds r0, #1
	strb r0, [r2, #4]
	b _080937D6
	.align 2, 0
_080937B8: .4byte gUnknown_080D6ED4
_080937BC: .4byte 0x000009FF
_080937C0: .4byte 0xFFFFF600
_080937C4:
	cmp r3, #2
	bne _080937D6
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	ble _080937D6
	movs r0, #0
	str r0, [r2, #0x4c]
	movs r0, #1
	b _080937D8
_080937D6:
	movs r0, #0
_080937D8:
	pop {r1}
	bx r1

	thumb_func_start sub_80937DC
sub_80937DC: @ 0x080937DC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	cmp r0, #1
	bne _080937F2
	ldrb r0, [r1, #6]
	adds r2, r0, #0
	cmp r2, #0
	beq _080937FE
	subs r0, #1
	b _08093804
_080937F2:
	cmp r0, #2
	bne _08093806
	ldrb r0, [r1, #6]
	ldrb r2, [r1, #5]
	cmp r0, r2
	bne _08093802
_080937FE:
	strb r2, [r1, #6]
	b _08093806
_08093802:
	adds r0, #1
_08093804:
	strb r0, [r1, #6]
_08093806:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809380C
sub_809380C: @ 0x0809380C
	push {lr}
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, [r0, #0x4c]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x50]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809382C
sub_809382C: @ 0x0809382C
	push {lr}
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, [r0, #0x5c]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x60]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809384C
sub_809384C: @ 0x0809384C
	push {lr}
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, [r0, #0x54]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x58]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809386C
sub_809386C: @ 0x0809386C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x9c
	ldr r0, [r5, #0x3c]
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x40]
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0xda
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r5, #0x3c]
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x40]
	strh r0, [r4, #0x12]
	ldr r1, _080938B0 @ =gUnknown_080D7458
	ldrb r0, [r5, #2]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080938B0: .4byte gUnknown_080D7458

	thumb_func_start sub_80938B4
sub_80938B4: @ 0x080938B4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x68]
	asrs r0, r0, #8
	subs r0, #0xf
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r5, #0x64]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x68]
	asrs r0, r0, #8
	subs r0, #0x1e
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _08093900 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08093900: .4byte 0xFFFFFBFF

	thumb_func_start sub_8093904
sub_8093904: @ 0x08093904
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	b _08093944
_0809390C:
	lsls r2, r6, #2
	adds r4, r2, r6
	lsls r4, r4, #3
	movs r0, #0xee
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r4, r5, r4
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	lsls r1, r6, #3
	adds r0, r0, r1
	adds r0, r0, r2
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x48]
	asrs r0, r0, #8
	subs r0, #1
	strh r0, [r4, #0x12]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08093944:
	ldrb r0, [r5, #5]
	cmp r6, r0
	blo _0809390C
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8093950
sub_8093950: @ 0x08093950
	bx lr
	.align 2, 0

	thumb_func_start OptionsSlideInit_SoundTest
OptionsSlideInit_SoundTest: @ 0x08093954
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	ldr r0, _08093A94 @ =InitOptionsSlide_SoundTest
	movs r1, #0x94
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08093A98 @ =sub_8094698
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov ip, r0
	str r4, [r0, #0xc]
	movs r3, #0
	movs r1, #0
	strh r1, [r0, #0x18]
	strb r3, [r0, #5]
	ldr r4, _08093A9C @ =0x030000A0
	adds r0, r2, r4
	str r5, [r0]
	ldr r0, _08093AA0 @ =gLoadedSaveGame
	ldr r4, _08093AA4 @ =0x00000366
	adds r0, r0, r4
	ldrb r0, [r0]
	mov r4, ip
	strb r0, [r4, #4]
	strb r3, [r4, #6]
	str r6, [r4, #0x14]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0x24]
	strh r1, [r4, #0x22]
	str r1, [r4, #0x58]
	str r1, [r4, #0x5c]
	ldr r0, _08093AA8 @ =0x03000028
	adds r4, r2, r0
	movs r3, #0
	subs r0, #0xe
	adds r2, r2, r0
_080939B0:
	lsls r0, r1, #2
	adds r0, r4, r0
	str r3, [r0]
	cmp r1, #3
	bhi _080939C0
	lsls r0, r1, #1
	adds r0, r2, r0
	strh r3, [r0]
_080939C0:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xb
	bls _080939B0
	ldr r1, _08093AAC @ =gBgScrollRegs
	movs r2, #4
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	adds r0, #0x18
	mov r3, ip
	str r0, [r3, #0x60]
	movs r4, #6
	ldrsh r0, [r1, r4]
	rsbs r0, r0, #0
	adds r0, #0x87
	str r0, [r3, #0x64]
	movs r2, #4
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	adds r0, #0x19
	str r0, [r3, #0x68]
	movs r3, #6
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	adds r0, #0x19
	mov r4, ip
	str r0, [r4, #0x6c]
	movs r2, #4
	ldrsh r0, [r1, r2]
	rsbs r0, r0, #0
	str r0, [r4, #0x70]
	movs r3, #6
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	str r0, [r4, #0x74]
	movs r4, #4
	ldrsh r0, [r1, r4]
	rsbs r0, r0, #0
	adds r0, #0x50
	mov r2, ip
	str r0, [r2, #0x78]
	movs r3, #6
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	adds r0, #0x5c
	str r0, [r2, #0x7c]
	adds r2, #0x80
	movs r4, #4
	ldrsh r0, [r1, r4]
	rsbs r0, r0, #0
	str r0, [r2]
	adds r2, #4
	movs r3, #6
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	str r0, [r2]
	adds r2, #0xc
	movs r4, #4
	ldrsh r0, [r1, r4]
	rsbs r0, r0, #0
	adds r0, #0x50
	str r0, [r2]
	adds r2, #4
	movs r3, #6
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	adds r0, #0x5c
	str r0, [r2]
	adds r2, #4
	movs r4, #4
	ldrsh r0, [r1, r4]
	rsbs r0, r0, #0
	str r0, [r2]
	adds r2, #4
	movs r3, #6
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	str r0, [r2]
	mov r0, ip
	adds r0, #0x88
	movs r2, #0
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	mov r4, ip
	strh r0, [r4, #0x26]
	strb r1, [r4, #9]
	strb r1, [r4, #8]
	movs r0, #1
	strb r0, [r4, #7]
	str r2, [r4]
	mov r0, ip
	bl sub_8094144
	movs r0, #6
	bl m4aSongNumStop
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08093A94: .4byte InitOptionsSlide_SoundTest
_08093A98: .4byte sub_8094698
_08093A9C: .4byte 0x030000A0
_08093AA0: .4byte gLoadedSaveGame
_08093AA4: .4byte 0x00000366
_08093AA8: .4byte 0x03000028
_08093AAC: .4byte gBgScrollRegs

	thumb_func_start sub_8093AB0
sub_8093AB0: @ 0x08093AB0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08093AEC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r7, _08093AF0 @ =gSoundInfo
	adds r0, r4, #0
	bl sub_80945A0
	adds r0, r4, #0
	bl sub_8093F64
	adds r0, r4, #0
	bl sub_8094630
	adds r0, r4, #0
	bl sub_8094664
	adds r0, r4, #0
	bl sub_8093FDC
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08093AF4
	adds r0, r4, #0
	bl sub_8093DF4
	b _08093AFA
	.align 2, 0
_08093AEC: .4byte gCurTask
_08093AF0: .4byte gSoundInfo
_08093AF4:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x26]
_08093AFA:
	adds r0, r4, #0
	bl sub_8094604
	adds r0, r4, #0
	bl sub_80940B4
	ldr r2, _08093B28 @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _08093B2C
	ldr r0, [r4, #0x70]
	cmn r0, r1
	bgt _08093B2C
	ldr r1, [r4, #0xc]
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	strb r0, [r4, #5]
	b _08093B94
	.align 2, 0
_08093B28: .4byte gBgScrollRegs
_08093B2C:
	ldr r2, _08093B68 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	str r0, [r4, #0x70]
	ldr r0, _08093B6C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08093BAC
	ldrb r0, [r4, #6]
	cmp r0, #1
	bne _08093B74
	movs r1, #0
	strb r1, [r4, #6]
	adds r0, r4, #0
	adds r0, #0x88
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	ldr r1, _08093B70 @ =gUnknown_080D7530
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStop
	b _08093C44
	.align 2, 0
_08093B68: .4byte gBgScrollRegs
_08093B6C: .4byte gPressedKeys
_08093B70: .4byte gUnknown_080D7530
_08093B74:
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r0, #6         @ MUS_OPTIONS_COPY
	bl m4aSongNumStart
	ldr r1, [r4, #0x14]
	movs r0, #0x7b
	strh r0, [r1]
	ldr r1, _08093BA0 @ =gUnknown_080D7530
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStop
_08093B94:
	ldr r0, _08093BA4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08093BA8 @ =sub_8093D30
	str r0, [r1, #8]
	b _08093D28
	.align 2, 0
_08093BA0: .4byte gUnknown_080D7530
_08093BA4: .4byte gCurTask
_08093BA8: .4byte sub_8093D30
_08093BAC:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08093C44
	movs r0, #4
	ldrsh r5, [r2, r0]
	cmp r5, #0
	beq _08093BBE
	b _08093CCE
_08093BBE:
	bl m4aMPlayAllStop
	ldr r1, _08093C40 @ =gUnknown_080D7530
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStop
	strh r5, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x26]
	str r5, [r4, #0x5c]
	str r5, [r4, #0x58]
	strh r5, [r4, #0x22]
	movs r1, #0
	adds r6, r4, #0
	adds r6, #0x1a
	adds r5, r4, #0
	adds r5, #0x28
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0x70
_08093BEE:
	lsls r0, r1, #2
	adds r0, r5, r0
	str r2, [r0]
	lsls r0, r1, #6
	adds r0, r3, r0
	str r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xb
	bls _08093BEE
	movs r1, #0
	ldr r5, _08093C40 @ =gUnknown_080D7530
	adds r2, r6, #0
	movs r3, #0
_08093C0C:
	lsls r0, r1, #1
	adds r0, r2, r0
	strh r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08093C0C
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r4, #6]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldrh r0, [r4, #0x18]
	strh r0, [r4, #0x12]
	b _08093D28
	.align 2, 0
_08093C40: .4byte gUnknown_080D7530
_08093C44:
	ldr r0, _08093C74 @ =gBgScrollRegs
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08093CCE
	ldr r0, _08093C78 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08093CCE
	movs r5, #0
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08093C80
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0x7a
	bne _08093C7C
	strh r5, [r4, #0x18]
	b _08093C9A
	.align 2, 0
_08093C74: .4byte gBgScrollRegs
_08093C78: .4byte gRepeatedKeys
_08093C7C:
	adds r0, r1, #1
	b _08093C98
_08093C80:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08093C9A
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08093C96
	movs r0, #0x7a
	b _08093C98
_08093C96:
	subs r0, r1, #1
_08093C98:
	strh r0, [r4, #0x18]
_08093C9A:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	adds r0, #1
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r4, #9]
	ldrb r1, [r4, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r5, r0
	strb r0, [r4, #8]
	ldrb r1, [r4, #0x18]
	adds r1, #1
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	subs r1, r1, r0
	strb r1, [r4, #7]
_08093CCE:
	ldrb r0, [r4, #6]
	cmp r0, #1
	bne _08093D28
	ldr r0, [r4, #0x58]
	cmp r0, #0
	bne _08093D24
	movs r2, #0x22
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08093D24
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _08093D28
	ldrh r0, [r4, #0x24]
	adds r0, #1
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _08093D28
	strh r1, [r4, #0x24]
	movs r0, #0
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r0, #0x88
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	ldr r1, _08093D20 @ =gUnknown_080D7530
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStop
	b _08093D28
	.align 2, 0
_08093D20: .4byte gUnknown_080D7530
_08093D24:
	movs r0, #0
	strh r0, [r4, #0x24]
_08093D28:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8093D30
sub_8093D30: @ 0x08093D30
	push {r4, lr}
	ldr r0, _08093DA4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80945A0
	adds r0, r4, #0
	bl sub_8093F64
	adds r0, r4, #0
	bl sub_8094630
	adds r0, r4, #0
	bl sub_8094664
	adds r0, r4, #0
	bl sub_8093FDC
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _08093D68
	adds r0, r4, #0
	bl sub_8093DF4
_08093D68:
	adds r0, r4, #0
	bl sub_8094604
	adds r0, r4, #0
	bl sub_80940B4
	ldr r2, _08093DA8 @ =gBgScrollRegs
	movs r0, #4
	ldrsh r1, [r2, r0]
	movs r0, #0xc8
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _08093DD8
	ldr r0, [r4, #0x70]
	cmn r0, r1
	bgt _08093DD8
	ldr r3, _08093DAC @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08093DB4
	ldr r0, _08093DB0 @ =gUnknown_080D6C1C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl CopyPalette
	b _08093DCA
	.align 2, 0
_08093DA4: .4byte gCurTask
_08093DA8: .4byte gBgScrollRegs
_08093DAC: .4byte gFlags
_08093DB0: .4byte gUnknown_080D6C1C
_08093DB4:
	ldr r1, _08093DE0 @ =0x040000D4
	ldr r0, _08093DE4 @ =gUnknown_080D6C1C
	str r0, [r1]
	ldr r0, _08093DE8 @ =gObjPalette
	str r0, [r1, #4]
	ldr r0, _08093DEC @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_08093DCA:
	ldr r1, [r4, #0xc]
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08093DF0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08093DD8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08093DE0: .4byte 0x040000D4
_08093DE4: .4byte gUnknown_080D6C1C
_08093DE8: .4byte gObjPalette
_08093DEC: .4byte 0x80000100
_08093DF0: .4byte gCurTask

	thumb_func_start sub_8093DF4
sub_8093DF4: @ 0x08093DF4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _08093E5C @ =gSoundInfo
	mov sb, r0
	movs r1, #0
	mov r8, r1
	mov r0, sp
	movs r2, #8
	bl memset
	mov r1, sp
	ldr r0, _08093E60 @ =0x04000062
	ldrh r0, [r0]
	lsrs r0, r0, #0xc
	strh r0, [r1]
	movs r0, #0
	strh r0, [r1, #2]
	ldr r0, _08093E64 @ =0x04000072
	ldrh r0, [r0]
	lsrs r0, r0, #0xc
	strh r0, [r1, #4]
	ldr r0, _08093E68 @ =0x04000078
	ldrh r0, [r0]
	lsrs r0, r0, #0xc
	strh r0, [r1, #6]
	mov r3, r8
	strh r3, [r6, #0x22]
	mov r7, r8
	str r7, [r6, #0x58]
	movs r5, #0
	movs r0, #0x1a
	adds r0, r0, r6
	mov ip, r0
_08093E3E:
	lsls r2, r5, #1
	mov r1, ip
	adds r4, r1, r2
	movs r3, #0
	ldrsh r1, [r4, r3]
	mov r7, sp
	adds r3, r7, r2
	movs r7, #0
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	cmp r1, #0
	blt _08093E6C
	ldrh r0, [r4]
	ldrh r1, [r3]
	b _08093E70
	.align 2, 0
_08093E5C: .4byte gSoundInfo
_08093E60: .4byte 0x04000062
_08093E64: .4byte 0x04000072
_08093E68: .4byte 0x04000078
_08093E6C:
	ldrh r0, [r3]
	ldrh r1, [r4]
_08093E70:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x22
	ldrsh r1, [r6, r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08093E84
	strh r3, [r6, #0x22]
_08093E84:
	mov r3, ip
	adds r1, r3, r2
	mov r7, sp
	adds r0, r7, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08093E3E
	movs r5, #0
	movs r0, #0x70
	add r0, sb
	mov ip, r0
	adds r7, r6, #0
	adds r7, #0x28
_08093EA6:
	lsls r0, r5, #6
	mov r1, ip
	adds r4, r1, r0
	ldr r1, [r4]
	lsls r0, r5, #2
	adds r3, r7, r0
	ldr r0, [r3]
	subs r2, r0, r1
	subs r1, r1, r0
	cmp r2, #0
	blt _08093EBE
	adds r1, r2, #0
_08093EBE:
	ldr r0, [r6, #0x58]
	cmp r0, r1
	bhs _08093EC6
	str r1, [r6, #0x58]
_08093EC6:
	ldr r0, [r4]
	str r0, [r3]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xb
	bls _08093EA6
	ldr r0, [r6, #0x58]
	lsrs r3, r0, #7
	cmp r3, #0x20
	bls _08093EDE
	movs r3, #0x20
_08093EDE:
	ldrh r0, [r6, #0x22]
	lsls r0, r0, #0x13
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _08093EEC
	movs r4, #0x20
_08093EEC:
	movs r1, #0xd4
	lsls r1, r1, #2
	add r1, sb
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08093F3E
	ldr r0, [r6, #0x5c]
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	subs r0, r2, r1
	cmp r0, #0
	bge _08093F0C
	subs r0, r1, r2
_08093F0C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _08093F1C
	lsls r0, r0, #0x12
	b _08093F1E
_08093F1C:
	lsls r0, r0, #0x11
_08093F1E:
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r7, r8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	ble _08093F30
	movs r0, #0x30
	mov r8, r0
_08093F30:
	movs r0, #0xd4
	lsls r0, r0, #2
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r6, #0x5c]
_08093F3E:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	adds r0, r3, r0
	add r0, r8
	strh r0, [r6, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, #0x80
	cmp r0, r1
	bls _08093F56
	strh r1, [r6, #0x26]
_08093F56:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8093F64
sub_8093F64: @ 0x08093F64
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xa4
	ldr r2, _08093FD4 @ =gUnknown_080D7628
	ldrb r1, [r5, #4]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #4]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldr r1, [r5, #0x60]
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x64]
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r4, r5, #0
	adds r4, #0xcc
	ldr r1, _08093FD8 @ =gUnknown_080D7658
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	ldrb r2, [r5, #6]
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r5, #4]
	lsls r0, r0, #1
	ldrb r2, [r5, #6]
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, [r5, #0x60]
	adds r0, #0x50
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x64]
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08093FD4: .4byte gUnknown_080D7628
_08093FD8: .4byte gUnknown_080D7658

	thumb_func_start sub_8093FDC
sub_8093FDC: @ 0x08093FDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r6, #0
	ldr r0, _08094048 @ =gUnknown_080D76F0
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x90
_08093FEE:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r4, r5, r0
	adds r1, r5, #7
	adds r1, r1, r6
	ldrb r0, [r1]
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	cmp r6, #0
	bne _0809404C
	ldr r1, [r7]
	strh r1, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _0809402E
	adds r0, r1, #6
	strh r0, [r4, #0x10]
_0809402E:
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _0809406C
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _08094040
	ldrh r0, [r4, #0x10]
	subs r0, #6
	strh r0, [r4, #0x10]
_08094040:
	ldrh r0, [r4, #0x10]
	adds r0, #0xc
	strh r0, [r4, #0x10]
	b _0809406C
	.align 2, 0
_08094048: .4byte gUnknown_080D76F0
_0809404C:
	cmp r6, #1
	bne _0809407A
	ldr r1, [r7]
	subs r0, r1, #6
	strh r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _08094066
	strh r1, [r4, #0x10]
_08094066:
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _0809409E
_0809406C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _0809409E
_0809407A:
	cmp r6, #2
	bne _0809409E
	ldr r0, [r7]
	subs r0, #0xc
	strh r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _0809409E
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0809409E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _08093FEE
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80940B4
sub_80940B4: @ 0x080940B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r0, #0xde
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r5, #0
	ldr r1, _08094108 @ =gBgScrollRegs
	mov r8, r1
	adds r6, r7, #0
	adds r6, #0x88
_080940CC:
	mov r1, r8
	ldrh r0, [r1, #4]
	rsbs r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x38
	strh r3, [r4, #0x10]
	ldrh r1, [r1, #6]
	rsbs r1, r1, #0
	adds r1, #0x5a
	strh r1, [r4, #0x12]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x12]
	cmp r5, #0
	beq _08094110
	ldr r0, [r4, #8]
	ldr r1, _0809410C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r2, #0
	adds r1, #0x68
	strh r1, [r4, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	b _08094122
	.align 2, 0
_08094108: .4byte gBgScrollRegs
_0809410C: .4byte 0xFFFFFBFF
_08094110:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r6]
	asrs r0, r0, #8
	subs r0, r3, r0
	strh r0, [r4, #0x10]
_08094122:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080940CC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8094144
sub_8094144: @ 0x08094144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r0, #0xf4
	adds r5, r7, #0
	adds r5, #0xa0
	ldr r1, [r5]
	str r1, [r0]
	ldr r3, _08094388 @ =gUnknown_080D76C0
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r2, r3, #4
	adds r1, r1, r2
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r5]
	adds r1, r1, r2
	str r1, [r5]
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	movs r2, #0
	mov sb, r2
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x68]
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x6c]
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	mov r8, r3
	mov r6, r8
	strb r6, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xa4
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r5]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r5]
	ldr r2, _0809438C @ =gUnknown_080D7628
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r7, #4]
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r6, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x60]
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x64]
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r3, r8
	strb r3, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r4, [r0, #8]
	str r6, [r0, #0x20]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xcc
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r5]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	str r1, [r5]
	ldr r2, _08094390 @ =gUnknown_080D7658
	ldrb r1, [r7, #4]
	lsls r1, r1, #1
	ldrb r3, [r7, #6]
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r7, #4]
	lsls r1, r1, #1
	ldrb r3, [r7, #6]
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	adds r1, r6, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x60]
	adds r1, #0x40
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x64]
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r2, sb
	strb r2, [r0, #0x1f]
	str r4, [r0, #8]
	str r6, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldr r2, _08094394 @ =gUnknown_080D76F0
	movs r6, #0
	ldrb r0, [r2, #2]
	mov r3, sp
	strb r0, [r3, #4]
	ldr r0, [r2, #4]
	lsls r0, r0, #5
	str r0, [sp]
	mov r8, r5
_08094268:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r7, r0
	ldr r1, [r5]
	str r1, [r0]
	ldr r1, [r5]
	ldr r3, [sp]
	adds r1, r1, r3
	str r1, [r5]
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0, #0x1a]
	movs r3, #1
	rsbs r3, r3, #0
	mov sb, r3
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x90
	ldr r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r3, #0
	strb r3, [r0, #0x1f]
	str r6, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	str r1, [r0, #0x20]
	str r2, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp, #8]
	cmp r4, #2
	bls _08094268
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	ldr r3, _08094398 @ =gUnknown_080D76B8
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	mov r4, r8
	ldr r1, [r4]
	adds r1, r1, r2
	str r1, [r4]
	ldrh r1, [r3]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r6, sb
	orrs r1, r6
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x80
	ldr r1, [r1]
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x84
	ldr r1, [r1]
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r2, sl
	str r2, [r0, #0x20]
	bl UpdateSpriteAnimation
	movs r3, #0xde
	lsls r3, r3, #1
	adds r0, r7, r3
	mov r6, r8
	ldr r1, [r6]
	str r1, [r0]
	ldr r3, _0809439C @ =gUnknown_080D7740
	ldr r2, [r3, #4]
	lsls r2, r2, #5
	ldr r1, [r6]
	adds r1, r1, r2
	str r1, [r6]
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, sb
	orrs r1, r2
	strb r1, [r0, #0x1b]
	adds r1, r7, #0
	adds r1, #0x88
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r1, r7, #0
	adds r1, #0x8c
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r3, #0x10
	strb r3, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	mov r4, sl
	str r4, [r0, #0x20]
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094388: .4byte gUnknown_080D76C0
_0809438C: .4byte gUnknown_080D7628
_08094390: .4byte gUnknown_080D7658
_08094394: .4byte gUnknown_080D76F0
_08094398: .4byte gUnknown_080D76B8
_0809439C: .4byte gUnknown_080D7740

	thumb_func_start sub_80943A0
sub_80943A0: @ 0x080943A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08094430 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r4, [r5, #4]
	adds r0, r4, #0
	adds r0, #8
	cmp r4, r0
	bge _0809440E
	ldr r7, _08094434 @ =gUnknown_080D8A84
	movs r6, #0
	ldrb r0, [r7, #2]
	mov r8, r0
_080943C4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r0, r5, r0
	ldr r1, [r5, #0x18]
	str r1, [r0]
	ldr r1, [r5, #0x18]
	adds r1, #0x80
	str r1, [r5, #0x18]
	ldrh r1, [r7]
	strh r1, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r6, [r0, #0x10]
	strh r6, [r0, #0x12]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #9
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #4]
	adds r0, #8
	cmp r4, r0
	blt _080943C4
_0809440E:
	ldrb r0, [r5, #4]
	adds r0, #8
	cmp r0, #0x17
	ble _0809447C
	ldr r3, _08094438 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08094440
	ldr r0, _0809443C @ =gUnknown_080D8A8C
	movs r1, #0xf0
	movs r2, #0x10
	bl CopyPalette
	b _08094456
	.align 2, 0
_08094430: .4byte gCurTask
_08094434: .4byte gUnknown_080D8A84
_08094438: .4byte gFlags
_0809443C: .4byte gUnknown_080D8A8C
_08094440:
	ldr r1, _08094464 @ =0x040000D4
	ldr r0, _08094468 @ =gUnknown_080D8A8C
	str r0, [r1]
	ldr r0, _0809446C @ =gObjPalette + 0x1E0
	str r0, [r1, #4]
	ldr r0, _08094470 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_08094456:
	movs r0, #0
	strb r0, [r5, #4]
	ldr r0, _08094474 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08094478 @ =sub_80946F0
	str r0, [r1, #8]
	b _0809447E
	.align 2, 0
_08094464: .4byte 0x040000D4
_08094468: .4byte gUnknown_080D8A8C
_0809446C: .4byte gObjPalette + 0x1E0
_08094470: .4byte 0x80000010
_08094474: .4byte gCurTask
_08094478: .4byte sub_80946F0
_0809447C:
	strb r0, [r5, #4]
_0809447E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start SoundTest_DrawSongName
SoundTest_DrawSongName: @ 0x08094488
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r5, #0
	ldr r3, _0809453C @ =sSongNames
	ldr r2, [r6, #8]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3     @ r0 = &sSongNames[i]
	ldrb r0, [r0]       @ r0 = sSongNames[i].strlen
	cmp r5, r0
	bhs _08094530
	mov sb, r3
	movs r1, #1
	add r1, sb
	mov r8, r1
	ldr r7, _08094540 @ =gUnknown_080D8A84
_080944B4:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r6, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0x30
	beq _08094516
	ldrh r0, [r7]
	strh r0, [r4, #0xc]
	ldr r0, [r6, #8]
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r5, r0
	add r0, r8
	ldrb r0, [r0]
	ldrb r1, [r7, #2]
	adds r0, r0, r1
	subs r0, #0x20
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r0, _08094544 @ =gBgScrollRegs
	ldrh r1, [r0, #4]
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	subs r0, r0, r1
	lsls r1, r5, #3
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08094516:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [r6, #8]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrb r0, [r0]
	cmp r5, r0
	blo _080944B4
_08094530:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809453C: .4byte sSongNames
_08094540: .4byte gUnknown_080D8A84
_08094544: .4byte gBgScrollRegs

	thumb_func_start InitOptionsSlide_SoundTest
InitOptionsSlide_SoundTest: @ 0x08094548
	push {r4, r5, r6, lr}
	ldr r6, _0809458C @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, _08094590 @ =gBgScrollRegs
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r0, #0x1e
	rsbs r0, r0, #0
	cmp r1, r0
	ble _08094584
	ldr r3, _08094594 @ =0x03000018
	adds r0, r4, r3
	ldr r1, [r5, #0xc]
	adds r3, #0x88
	adds r2, r4, r3
	ldr r2, [r2]
	bl CreateSoundTest
	ldr r2, _08094598 @ =0x0300024C
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #1
	str r0, [r5]
	ldr r1, [r6]
	ldr r0, _0809459C @ =sub_8093AB0
	str r0, [r1, #8]
_08094584:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809458C: .4byte gCurTask
_08094590: .4byte gBgScrollRegs
_08094594: .4byte 0x03000018
_08094598: .4byte 0x0300024C
_0809459C: .4byte sub_8093AB0

	thumb_func_start sub_80945A0
sub_80945A0: @ 0x080945A0
	push {r4, lr}
	ldr r3, _08094600 @ =gBgScrollRegs
	movs r1, #4
	ldrsh r2, [r3, r1]
	movs r1, #0x18
	subs r1, r1, r2
	str r1, [r0, #0x60]
	movs r4, #6
	ldrsh r2, [r3, r4]
	movs r1, #0x87
	subs r1, r1, r2
	str r1, [r0, #0x64]
	movs r2, #4
	ldrsh r1, [r3, r2]
	movs r2, #0x19
	subs r1, r2, r1
	str r1, [r0, #0x68]
	movs r4, #6
	ldrsh r1, [r3, r4]
	subs r2, r2, r1
	str r2, [r0, #0x6c]
	movs r2, #4
	ldrsh r1, [r3, r2]
	rsbs r1, r1, #0
	adds r1, #0x50
	str r1, [r0, #0x78]
	movs r4, #6
	ldrsh r1, [r3, r4]
	rsbs r1, r1, #0
	adds r1, #0x5c
	str r1, [r0, #0x7c]
	adds r2, r0, #0
	adds r2, #0x90
	movs r4, #4
	ldrsh r1, [r3, r4]
	rsbs r1, r1, #0
	adds r1, #0x50
	str r1, [r2]
	adds r0, #0x94
	movs r2, #6
	ldrsh r1, [r3, r2]
	rsbs r1, r1, #0
	adds r1, #0x5c
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08094600: .4byte gBgScrollRegs

	thumb_func_start sub_8094604
sub_8094604: @ 0x08094604
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x88
	ldr r0, [r2]
	ldr r3, _0809462C @ =0x000009FF
	cmp r0, r3
	bgt _08094620
	adds r0, #0x60
	str r0, [r2]
	cmp r0, r3
	ble _08094620
	movs r0, #0
	str r0, [r2]
_08094620:
	adds r1, #0x8c
	movs r0, #0
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0809462C: .4byte 0x000009FF

	thumb_func_start sub_8094630
sub_8094630: @ 0x08094630
	push {lr}
	adds r2, r0, #0
	adds r2, #0xf4
	ldr r3, _08094660 @ =gUnknown_080D76C0
	ldrb r1, [r0, #4]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	ldrb r1, [r0, #4]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r2, #0x1a]
	ldr r1, [r0, #0x68]
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x6c]
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0
	.align 2, 0
_08094660: .4byte gUnknown_080D76C0

	thumb_func_start sub_8094664
sub_8094664: @ 0x08094664
	push {lr}
	sub sp, #0x10
	movs r1, #0x26
	ldrsh r2, [r0, r1]
	movs r1, #0x40
	str r1, [sp]
	ldr r1, [r0, #0x78]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r0, [r0, #0x7c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _08094694 @ =gBgAffineRegs
	str r0, [sp, #0xc]
	movs r0, #0
	adds r1, r2, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_08094694: .4byte gBgAffineRegs
    
	thumb_func_start sub_8094698
sub_8094698: @ 0x08094698
	bx lr
	.align 2, 0

	thumb_func_start CreateSoundTest
CreateSoundTest: @ 0x0809469C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, _080946E4 @ =sub_80943A0
	movs r1, #0xf7
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080946E8 @ =sub_80946EC
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r4, [r1]
	str r5, [r1, #8]
	movs r2, #0
	strb r2, [r1, #4]
	strh r2, [r1, #0xc]
	movs r2, #0x8c
	lsls r2, r2, #6
	str r2, [r1, #0x10]
	movs r2, #0xf0
	lsls r2, r2, #6
	str r2, [r1, #0x14]
	str r6, [r1, #0x18]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080946E4: .4byte sub_80943A0
_080946E8: .4byte sub_80946EC

	thumb_func_start sub_80946EC
sub_80946EC: @ 0x080946EC
	bx lr
	.align 2, 0

	thumb_func_start sub_80946F0
sub_80946F0: @ 0x080946F0
	push {r4, lr}
	ldr r0, _08094720 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08094724 @ =gBgScrollRegs
	movs r3, #4
	ldrsh r1, [r0, r3]
	movs r0, #0x14
	rsbs r0, r0, #0
	cmp r1, r0
	blt _08094728
	movs r0, #1
	strb r0, [r4, #4]
	adds r0, r4, #0
	bl SoundTest_DrawSongName
	adds r0, r4, #0
	bl sub_809473C
	b _08094734
	.align 2, 0
_08094720: .4byte gCurTask
_08094724: .4byte gBgScrollRegs
_08094728:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08094734
	adds r0, r2, #0
	bl TaskDestroy
_08094734:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809473C
sub_809473C: @ 0x0809473C
	bx lr
	.align 2, 0

	thumb_func_start sub_8094740
sub_8094740: @ 0x08094740
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _080947C8 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	movs r2, #0
	str r2, [sp]
	ldr r3, _080947CC @ =0x040000D4
	mov r0, sp
	str r0, [r3]
	ldr r0, _080947D0 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _080947D4 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _080947D8 @ =gBgSprites_Unknown1
	strb r2, [r4]
	ldr r0, _080947DC @ =gBgSprites_Unknown2
	strb r2, [r0]
	strb r2, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r3, #0x40
	strb r3, [r0, #3]
	strb r2, [r4, #1]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	strb r2, [r4, #2]
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	adds r0, r5, #0
	bl sub_8094F3C
	adds r0, r5, #0
	bl sub_8094A98
	ldr r0, _080947E0 @ =0x0000FFFF
	bl sub_80C4C0C
	ldr r1, _080947E4 @ =gBgPalette
	strh r0, [r1]
	ldr r2, [r6]
	ldr r1, _080947E8 @ =gUnknown_080D8B4C
	ldrb r0, [r5, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080947C8: .4byte gCurTask
_080947CC: .4byte 0x040000D4
_080947D0: .4byte gBgCntRegs
_080947D4: .4byte 0x85000010
_080947D8: .4byte gBgSprites_Unknown1
_080947DC: .4byte gBgSprites_Unknown2
_080947E0: .4byte 0x0000FFFF
_080947E4: .4byte gBgPalette
_080947E8: .4byte gUnknown_080D8B4C

	thumb_func_start sub_80947EC
sub_80947EC: @ 0x080947EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	ldr r3, _0809486C @ =gLoadedSaveGame
	ldr r1, _08094870 @ =0x00000366
	adds r0, r3, r1
	ldrb r0, [r0]
	movs r2, #0
	mov r4, ip
	strb r0, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	movs r1, #0
	strh r2, [r4, #0x22]
	strb r1, [r4, #0x1c]
	strb r1, [r4, #0x1d]
	strh r2, [r4, #0x26]
	strh r2, [r4, #0x28]
	movs r0, #0xa
	strh r0, [r4, #0x20]
	strh r2, [r4, #0x24]
	strb r1, [r4, #0x1e]
	strb r1, [r4, #0x1f]
	strb r1, [r4, #4]
	movs r4, #0
	mov r8, r3
	mov r6, ip
	adds r6, #0x78
	mov r5, ip
	adds r5, #0x7c
	mov r3, ip
	adds r3, #0xf
	mov sb, r4
_08094834:
	lsls r1, r4, #3
	adds r2, r6, r1
	lsls r0, r4, #0xe
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r2]
	adds r1, r5, r1
	lsls r0, r4, #0xc
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r3, r4
	mov r7, sb
	strb r7, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08094834
	mov r1, ip
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _08094874
	movs r0, #7
	strb r0, [r1, #0x14]
	b _08094888
	.align 2, 0
_0809486C: .4byte gLoadedSaveGame
_08094870: .4byte 0x00000366
_08094874:
	mov r2, r8
	ldrb r3, [r2, #0x11]
	cmp r3, #7
	bls _08094884
	movs r0, #7
	mov r4, ip
	strb r0, [r4, #0x14]
	b _08094888
_08094884:
	mov r7, ip
	strb r3, [r7, #0x14]
_08094888:
	movs r4, #0
	mov r6, ip
	adds r6, #0xa0
	mov r2, ip
	adds r2, #0x15
	movs r3, #3
	ldr r5, _080948A4 @ =gLoadedSaveGame + 0x29
_08094896:
	mov r1, ip
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _080948A8
	adds r0, r2, r4
	strb r3, [r0]
	b _080948CC
	.align 2, 0
_080948A4: .4byte gLoadedSaveGame + 0x29
_080948A8:
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080948C8
	adds r1, r2, r4
	lsrs r0, r0, #0x19
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _080948CC
	strb r3, [r1]
	b _080948CC
_080948C8:
	adds r0, r2, r4
	strb r1, [r0]
_080948CC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _08094896
	ldr r0, _0809491C @ =0xFFFFCE00
	mov r2, ip
	str r0, [r2, #0x30]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r2, #0x34]
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r2, #0x68]
	str r1, [r2, #0x6c]
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r2, #0x70]
	str r1, [r2, #0x74]
	movs r0, #0
	str r0, [r2, #0x58]
	str r0, [r2, #0x5c]
	str r0, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r2, #0x2c]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x60]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2, #0x64]
	ldr r0, _08094920 @ =0x06010000
	str r0, [r6]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809491C: .4byte 0xFFFFCE00
_08094920: .4byte 0x06010000

	thumb_func_start sub_8094924
sub_8094924: @ 0x08094924
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
_08094936:
	movs r1, #0
	mov sb, r1
	ldr r2, [sp]
	lsls r0, r2, #4
	lsls r4, r2, #2
	str r4, [sp, #0xc]
	adds r2, #1
	str r2, [sp, #0x14]
	ldr r5, [sp]
	subs r0, r0, r5
	lsls r0, r0, #4
	str r0, [sp, #4]
_0809494E:
	movs r0, #0
	mov r8, r0
	mov r1, sb
	lsls r0, r1, #4
	lsls r1, r1, #2
	str r1, [sp, #0x10]
	mov r2, sb
	adds r2, #1
	str r2, [sp, #8]
	mov r4, sb
	subs r0, r0, r4
	lsls r0, r0, #2
	mov sl, r0
_08094968:
	mov r5, r8
	lsls r2, r5, #1
	add r2, sl
	ldr r0, [sp, #4]
	adds r2, r2, r0
	ldr r1, _08094A70 @ =0x0000054C
	adds r3, r7, r1
	adds r3, r3, r2
	lsls r6, r5, #2
	ldr r1, [sp, #0x10]
	add r1, sb
	lsls r1, r1, #2
	adds r1, r6, r1
	ldr r4, [sp, #0xc]
	ldr r5, [sp]
	adds r0, r4, r5
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _08094A74 @ =gLoadedSaveGame
	adds r4, r1, r0
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldr r5, _08094A78 @ =0x0000054D
	adds r1, r7, r5
	adds r1, r1, r2
	ldr r2, _08094A7C @ =0x0000012D
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	movs r5, #0x97
	lsls r5, r5, #1
	adds r0, r4, r5
	ldrh r4, [r0]
	adds r0, r4, #0
	movs r1, #0x3c
	bl Mod
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	subs r4, r4, r1
	lsls r4, r4, #0x10
	add r6, r8
	lsls r6, r6, #1
	add r6, sl
	ldr r1, [sp, #4]
	adds r6, r6, r1
	ldr r1, _08094A80 @ =0x0000055E
	adds r2, r7, r1
	adds r2, r2, r6
	lsls r5, r5, #1
	ldr r1, _08094A84 @ =gUnknown_080CE4B2
	adds r1, #1
	adds r1, r5, r1
	ldrb r1, [r1]
	strh r1, [r2]
	ldr r1, _08094A88 @ =0x0000055C
	adds r2, r7, r1
	adds r2, r2, r6
	ldr r1, _08094A84 @ =gUnknown_080CE4B2
	adds r5, r5, r1
	ldrb r1, [r5]
	strh r1, [r2]
	ldr r5, _08094A8C @ =0x0000055A
	adds r2, r7, r5
	adds r2, r2, r6
	lsrs r4, r4, #0xf
	ldr r1, _08094A90 @ =gUnknown_080CE438
	adds r1, #1
	adds r1, r4, r1
	ldrb r1, [r1]
	strh r1, [r2]
	movs r1, #0xab
	lsls r1, r1, #3
	adds r2, r7, r1
	adds r2, r2, r6
	ldr r5, _08094A90 @ =gUnknown_080CE438
	adds r4, r4, r5
	ldrb r1, [r4]
	strh r1, [r2]
	ldr r2, _08094A94 @ =0x00000556
	adds r1, r7, r2
	adds r1, r1, r6
	strh r0, [r1]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #4
	bls _08094968
	ldr r4, [sp, #8]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _08094A52
	b _0809494E
_08094A52:
	ldr r5, [sp, #0x14]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #6
	bhi _08094A60
	b _08094936
_08094A60:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094A70: .4byte 0x0000054C
_08094A74: .4byte gLoadedSaveGame
_08094A78: .4byte 0x0000054D
_08094A7C: .4byte 0x0000012D
_08094A80: .4byte 0x0000055E
_08094A84: .4byte gUnknown_080CE4B2
_08094A88: .4byte 0x0000055C
_08094A8C: .4byte 0x0000055A
_08094A90: .4byte gUnknown_080CE438
_08094A94: .4byte 0x00000556

	thumb_func_start sub_8094A98
sub_8094A98: @ 0x08094A98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sl, r0
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	movs r3, #0
	mov r0, sl
	ldrb r0, [r0, #2]
	cmp r3, r0
	bhi _08094B30
	mov r4, sl
	adds r4, #0xa0
	ldr r1, _08094E90 @ =gUnknown_080D8AAC
	mov r8, r1
	movs r2, #0
	mov sb, r2
	movs r6, #0
_08094AC6:
	mov r7, sl
	adds r7, #0xcc
	cmp r3, #0
	bne _08094AD0
	subs r7, #0x28
_08094AD0:
	ldr r0, [r4]
	str r0, [r7]
	lsls r2, r5, #1
	adds r2, r3, r2
	lsls r2, r2, #3
	mov r0, r8
	adds r0, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	add r2, r8
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r1, sl
	ldr r0, [r1, #0x30]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r1, #0x34]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	strh r0, [r7, #0x14]
	strh r6, [r7, #0xe]
	strh r6, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	mov r2, sb
	strb r2, [r7, #0x1f]
	str r6, [r7, #8]
	adds r0, r7, #0
	str r3, [sp, #0x24]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x24]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r0, sl
	ldrb r0, [r0, #2]
	cmp r3, r0
	bls _08094AC6
_08094B30:
	movs r7, #0x8e
	lsls r7, r7, #1
	add r7, sl
	mov r4, sl
	adds r4, #0xa0
	ldr r0, [r4]
	str r0, [r7]
	ldr r2, _08094E94 @ =gUnknown_080D8AE4
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldrh r0, [r2]
	movs r5, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r1, sl
	ldr r0, [r1, #0x60]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r1, #0x64]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r2, #0x10
	mov sb, r2
	mov r3, sb
	strb r3, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	str r0, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xa2
	lsls r7, r7, #1
	add r7, sl
	ldr r0, [r4]
	str r0, [r7]
	ldr r2, _08094E98 @ =gUnknown_080D8AEC
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r0, [r2, #0x68]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r2, #0x6c]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r3, #0xc0
	strh r3, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xb6
	lsls r7, r7, #1
	add r7, sl
	ldr r0, [r4]
	str r0, [r7]
	ldr r2, _08094E9C @ =sAnimsTimeAttackDigits
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldrh r0, [r2]
	mov r3, sp
	strh r0, [r3]
	strh r0, [r7, #0xc]
	ldrb r2, [r2, #2]
	mov r8, r2
	strb r2, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r1, sl
	ldr r0, [r1, #0x30]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r1, #0x34]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r2, #0xc0
	strh r2, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	mov r3, sb
	strb r3, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xca
	lsls r7, r7, #1
	add r7, sl
	ldr r0, [r4]
	str r0, [r7]
	ldr r0, [r4]
	adds r0, #0x80
	str r0, [r4]
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r7, #0xc]
	mov r2, r8
	strb r2, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r3, sl
	ldr r0, [r3, #0x30]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r3, #0x34]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	mov r1, sb
	strb r1, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r5, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r3, sl
	ldrb r0, [r3]
	movs r5, #5
	adds r6, r4, #0
	cmp r0, #0
	bne _08094C70
	movs r5, #0
_08094C70:
	movs r3, #0
	mov r0, sl
	adds r0, #0x78
	str r0, [sp, #0x18]
	mov r1, sl
	adds r1, #0x7c
	str r1, [sp, #0x1c]
	mov r2, sl
	adds r2, #0xf4
	str r2, [sp, #0x14]
	adds r4, r6, #0
	ldr r0, _08094EA0 @ =gUnknown_080D8AF4
	mov sb, r0
	mov r8, r3
_08094C8C:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r2, sl
	adds r7, r2, r0
	ldr r0, [r4]
	str r0, [r7]
	adds r2, r3, r5
	lsls r2, r2, #3
	mov r0, sb
	adds r0, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	add r2, sb
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	lsls r1, r3, #3
	ldr r2, [sp, #0x18]
	adds r0, r2, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [sp, #0x1c]
	adds r1, r0, r1
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	strh r0, [r7, #0x14]
	mov r1, r8
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	mov r0, r8
	str r0, [r7, #8]
	adds r0, r7, #0
	str r3, [sp, #0x24]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x24]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08094C8C
	movs r3, #1
	adds r4, r6, #0
	ldr r1, _08094EA4 @ =gUnknown_080D8B44
	movs r5, #0
	ldr r0, [r1, #4]
	lsls r0, r0, #5
	str r0, [sp, #4]
_08094D10:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	movs r2, #0xca
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r2, sl
	adds r7, r2, r0
	ldr r0, [r4]
	str r0, [r7]
	ldr r0, [r4]
	ldr r2, [sp, #4]
	adds r0, r0, r2
	str r0, [r4]
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	ldrb r2, [r1, #2]
	adds r0, r3, r2
	strb r0, [r7, #0x1a]
	movs r2, #1
	rsbs r2, r2, #0
	mov r0, sp
	strb r2, [r0, #8]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r0, [r2, #0x78]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r2, #0x7c]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	mov sb, r0
	mov r2, sb
	strh r2, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r0, #0x10
	mov r8, r0
	mov r2, r8
	strb r2, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	str r5, [r7, #8]
	adds r0, r7, #0
	str r1, [sp, #0x20]
	str r3, [sp, #0x24]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x24]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, [sp, #0x20]
	cmp r3, #0xa
	bls _08094D10
	ldr r7, _08094EA8 @ =0x00000414
	add r7, sl
	ldr r0, [r6]
	str r0, [r7]
	ldr r4, _08094EA4 @ =gUnknown_080D8B44
	ldr r5, [r4, #4]
	lsls r5, r5, #5
	ldr r0, [r6]
	adds r0, r0, r5
	str r0, [r6]
	ldrh r0, [r4]
	movs r1, #0
	mov ip, r1
	movs r1, #0
	strh r0, [r7, #0xc]
	ldrb r3, [r4, #2]
	mov r2, sp
	strb r3, [r2, #0xc]
	strb r3, [r7, #0x1a]
	ldrb r0, [r7, #0x1b]
	ldrb r2, [r2, #8]
	orrs r0, r2
	strb r0, [r7, #0x1b]
	mov r3, sl
	ldr r0, [r3, #0x78]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r3, #0x7c]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	mov r0, sb
	strh r0, [r7, #0x14]
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	mov r2, r8
	strb r2, [r7, #0x1c]
	mov r3, ip
	strb r3, [r7, #0x1f]
	str r1, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r3, #0
	adds r1, r6, #0
	movs r4, #0
	mov r0, sp
	ldrb r2, [r0, #0xc]
	strb r2, [r0, #0x10]
	str r5, [sp, #0x28]
_08094DE4:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r5, _08094EAC @ =0x0000043C
	adds r0, r0, r5
	mov r2, sl
	adds r7, r2, r0
	ldr r0, [r1]
	str r0, [r7]
	ldr r0, [r1]
	ldr r5, [sp, #0x28]
	adds r0, r0, r5
	str r0, [r1]
	ldr r2, _08094EA4 @ =gUnknown_080D8B44
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	adds r0, r3, #0
	adds r0, #0xb
	mov r5, sp
	ldrb r5, [r5, #0x10]
	adds r0, r5, r0
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r0, [r2, #0x78]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r2, #0x7c]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r5, #0xc0
	strh r5, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r0, #0x10
	mov sb, r0
	mov r2, sb
	strb r2, [r7, #0x1c]
	movs r5, #0
	strb r5, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	str r1, [sp, #0x20]
	str r3, [sp, #0x24]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #0x24]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, [sp, #0x20]
	cmp r3, #1
	bls _08094DE4
	mov r0, sl
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	ldr r7, [sp, #0x14]
	ldr r0, [r6]
	str r0, [r7]
	ldr r3, _08094EB0 @ =gUnknown_080D8ACC
	lsls r2, r5, #3
	adds r0, r3, #4
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r2, r2, r3
	ldrh r0, [r2]
	movs r5, #0
	movs r4, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	ldrb r0, [r7, #0x1b]
	mov r1, r8
	orrs r0, r1
	b _08094EB4
	.align 2, 0
_08094E90: .4byte gUnknown_080D8AAC
_08094E94: .4byte gUnknown_080D8AE4
_08094E98: .4byte gUnknown_080D8AEC
_08094E9C: .4byte sAnimsTimeAttackDigits
_08094EA0: .4byte gUnknown_080D8AF4
_08094EA4: .4byte gUnknown_080D8B44
_08094EA8: .4byte 0x00000414
_08094EAC: .4byte 0x0000043C
_08094EB0: .4byte gUnknown_080D8ACC
_08094EB4:
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r0, [r2, #0x48]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	ldr r0, [r2, #0x4c]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r3, #0xc0
	strh r3, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	mov r0, sb
	strb r0, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xb6
	lsls r7, r7, #1
	add r7, sl
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r6]
	adds r0, #0x80
	str r0, [r6]
	ldr r1, _08094F38 @ =sAnimsTimeAttackDigits
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r7, #0x1a]
	ldrb r0, [r7, #0x1b]
	mov r1, r8
	orrs r0, r1
	strb r0, [r7, #0x1b]
	mov r2, sl
	ldr r0, [r2, #0x30]
	asrs r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r0, r3
	strh r0, [r7, #0x10]
	ldr r0, [r2, #0x34]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	mov r1, sb
	strb r1, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094F38: .4byte sAnimsTimeAttackDigits

	thumb_func_start sub_8094F3C
sub_8094F3C: @ 0x08094F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, _0809503C @ =gDispCnt
	mov sb, r0
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
	ldr r2, _08095040 @ =gBgCntRegs
	mov sl, r2
	movs r7, #0
	movs r4, #0
	ldr r0, _08095044 @ =0x00000603
	strh r0, [r2]
	ldr r0, _08095048 @ =gBgScrollRegs
	mov r8, r0
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r1, _0809504C @ =0x0000050C
	adds r0, r5, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08095050 @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _08095054 @ =0x00000161
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r6, #0x20
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r2, _08095058 @ =0x00000536
	adds r1, r5, r2
	strb r7, [r1]
	movs r1, #2
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _0809505C @ =0x00004E06
	mov r1, sl
	strh r0, [r1, #2]
	mov r2, r8
	strh r4, [r2, #4]
	movs r0, #0x80
	strh r0, [r2, #6]
	ldr r1, _08095060 @ =0x000004CC
	adds r0, r5, r1
	ldr r1, _08095064 @ =0x06004000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08095068 @ =0x06007000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0xb1
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r2, _0809506C @ =0x000004F6
	adds r1, r5, r2
	strb r7, [r1]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _08095070 @ =0x00005609
	mov r1, sl
	strh r0, [r1, #4]
	mov r2, sb
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
	ldr r0, _08095074 @ =0x0000FF06
	mov r2, r8
	strh r0, [r2, #8]
	strh r4, [r2, #0xa]
	ldr r1, _08095078 @ =0x0000048C
	adds r0, r5, r1
	ldr r1, _0809507C @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08095080 @ =0x0600B000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _08095084 @ =0x00000163
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r2, _08095088 @ =0x000004B6
	adds r5, r5, r2
	strb r7, [r5]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809503C: .4byte gDispCnt
_08095040: .4byte gBgCntRegs
_08095044: .4byte 0x00000603
_08095048: .4byte gBgScrollRegs
_0809504C: .4byte 0x0000050C
_08095050: .4byte 0x06003000
_08095054: .4byte 0x00000161
_08095058: .4byte 0x00000536
_0809505C: .4byte 0x00004E06
_08095060: .4byte 0x000004CC
_08095064: .4byte 0x06004000
_08095068: .4byte 0x06007000
_0809506C: .4byte 0x000004F6
_08095070: .4byte 0x00005609
_08095074: .4byte 0x0000FF06
_08095078: .4byte 0x0000048C
_0809507C: .4byte 0x06008000
_08095080: .4byte 0x0600B000
_08095084: .4byte 0x00000163
_08095088: .4byte 0x000004B6

	thumb_func_start sub_809508C
sub_809508C: @ 0x0809508C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08095108 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r5, [r3, #0x28]
	ldr r6, _0809510C @ =gBldRegs
	ldr r4, _08095110 @ =gWinRegs
	cmp r5, #0
	bne _080950D4
	ldr r0, _08095114 @ =0x00003FFF
	strh r0, [r6]
	ldr r2, _08095118 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xff
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #6]
	ldr r0, _0809511C @ =0x00003130
	strh r0, [r4, #8]
	strh r5, [r4, #0xa]
	movs r0, #0x10
	strh r0, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #0x26]
	movs r0, #1
	strh r0, [r3, #0x28]
_080950D4:
	ldr r0, [r3, #0x54]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #0x2c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r4, #4]
	ldrh r0, [r6, #4]
	cmp r0, #0
	beq _08095128
	ldrh r0, [r3, #0x26]
	lsrs r0, r0, #8
	strh r0, [r6, #4]
	ldr r1, _08095120 @ =0xFFFFFE00
	adds r0, r1, #0
	ldrh r7, [r3, #0x26]
	adds r0, r0, r7
	strh r0, [r3, #0x26]
	lsls r0, r0, #0x10
	ldr r1, _08095124 @ =0x0FFF0000
	cmp r0, r1
	bls _0809513E
	movs r0, #0
	strh r0, [r3, #0x26]
	b _0809513E
	.align 2, 0
_08095108: .4byte gCurTask
_0809510C: .4byte gBldRegs
_08095110: .4byte gWinRegs
_08095114: .4byte 0x00003FFF
_08095118: .4byte gDispCnt
_0809511C: .4byte 0x00003130
_08095120: .4byte 0xFFFFFE00
_08095124: .4byte 0x0FFF0000
_08095128:
	strh r0, [r3, #0x28]
	ldr r0, _08095144 @ =0x00003110
	strh r0, [r4, #8]
	movs r0, #0x1f
	strh r0, [r6, #2]
	movs r0, #0x10
	strh r0, [r6, #4]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _08095148 @ =sub_8095674
	str r0, [r1, #8]
_0809513E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08095144: .4byte 0x00003110
_08095148: .4byte sub_8095674

	thumb_func_start sub_809514C
sub_809514C: @ 0x0809514C
	push {r4, lr}
	ldr r4, _080951A0 @ =gCurTask
	ldr r0, [r4]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldrb r3, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	strh r0, [r2, #0x24]
	strh r0, [r2, #0x26]
	strh r0, [r2, #0x28]
	movs r0, #4
	strb r0, [r2, #1]
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [r2, #0x30]
	movs r1, #0x8c
	subs r1, r1, r3
	lsls r1, r1, #8
	str r1, [r2, #0x34]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r2, #0x2c]
	lsls r3, r3, #8
	adds r1, r1, r3
	ldr r0, _080951A4 @ =0xFFFFF400
	adds r1, r1, r0
	str r1, [r2, #0x54]
	ldr r2, _080951A8 @ =gWinRegs
	asrs r0, r1, #8
	adds r0, r0, r1
	adds r0, #0x18
	strh r0, [r2, #4]
	ldr r1, [r4]
	ldr r0, _080951AC @ =sub_8095210
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080951A0: .4byte gCurTask
_080951A4: .4byte 0xFFFFF400
_080951A8: .4byte gWinRegs
_080951AC: .4byte sub_8095210

	thumb_func_start sub_80951B0
sub_80951B0: @ 0x080951B0
	ldr r3, _08095204 @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	movs r1, #0
	movs r0, #0x20
	strb r0, [r2, #4]
	movs r0, #1
	strh r0, [r2, #0x24]
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x28]
	movs r0, #4
	strb r0, [r2, #1]
	movs r0, #0x8c
	lsls r0, r0, #9
	str r0, [r2, #0x30]
	movs r1, #0xd8
	lsls r1, r1, #7
	str r1, [r2, #0x34]
	str r0, [r2, #0x38]
	str r1, [r2, #0x3c]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r2, #0x2c]
	movs r0, #0xa0
	lsls r0, r0, #5
	adds r1, r1, r0
	str r1, [r2, #0x54]
	movs r0, #3
	strb r0, [r2, #0x1e]
	ldr r2, _08095208 @ =gWinRegs
	lsrs r0, r1, #8
	orrs r0, r1
	adds r0, #0x18
	strh r0, [r2, #4]
	ldr r1, [r3]
	ldr r0, _0809520C @ =sub_8095210
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08095204: .4byte gCurTask
_08095208: .4byte gWinRegs
_0809520C: .4byte sub_8095210

	thumb_func_start sub_8095210
sub_8095210: @ 0x08095210
	push {r4, r5, r6, lr}
	ldr r0, _08095254 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x28]
	ldr r3, _08095258 @ =gWinRegs
	cmp r0, #0
	bne _08095284
	ldr r1, _0809525C @ =gBldRegs
	movs r5, #0
	ldr r0, _08095260 @ =0x00003FFF
	strh r0, [r1]
	ldr r2, _08095264 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0xc0
	lsls r6, r6, #7
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xff
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #6]
	ldrb r0, [r4, #3]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0809526C
	ldr r0, _08095268 @ =0x00003530
	b _0809526E
	.align 2, 0
_08095254: .4byte gCurTask
_08095258: .4byte gWinRegs
_0809525C: .4byte gBldRegs
_08095260: .4byte 0x00003FFF
_08095264: .4byte gDispCnt
_08095268: .4byte 0x00003530
_0809526C:
	ldr r0, _080952C8 @ =0x00003510
_0809526E:
	strh r0, [r3, #8]
	movs r0, #0
	strh r0, [r3, #0xa]
	ldr r1, _080952CC @ =gBldRegs
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x26]
	movs r0, #1
	strh r0, [r4, #0x28]
_08095284:
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r3, #4]
	adds r0, r4, #0
	bl sub_80964F8
	adds r0, r4, #0
	bl sub_8096590
	adds r0, r4, #0
	bl sub_8095D24
	adds r0, r4, #0
	bl sub_809660C
	adds r0, r4, #0
	bl sub_80960B8
	adds r0, r4, #0
	bl sub_8095EF4
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080952D0
	adds r0, r4, #0
	bl sub_809673C
	b _080952D6
	.align 2, 0
_080952C8: .4byte 0x00003510
_080952CC: .4byte gBldRegs
_080952D0:
	adds r0, r4, #0
	bl sub_8096758
_080952D6:
	ldr r3, _080952F4 @ =gBldRegs
	ldrh r0, [r3, #4]
	adds r5, r0, #0
	cmp r5, #0
	beq _080952FC
	ldrh r0, [r4, #0x26]
	lsrs r0, r0, #8
	strh r0, [r3, #4]
	ldr r6, _080952F8 @ =0xFFFFFF00
	adds r0, r6, #0
	ldrh r1, [r4, #0x26]
	adds r0, r0, r1
	strh r0, [r4, #0x26]
	b _08095350
	.align 2, 0
_080952F4: .4byte gBldRegs
_080952F8: .4byte 0xFFFFFF00
_080952FC:
	lsls r0, r0, #8
	strh r0, [r4, #0x26]
	ldr r0, _08095358 @ =0xFFFFCE00
	str r0, [r4, #0x30]
	ldr r2, _0809535C @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08095324
	ldr r0, [r4, #0x34]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r0, r0, r6
	str r0, [r4, #0x34]
_08095324:
	ldr r0, [r4, #0x30]
	movs r1, #0xa8
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x34]
	str r0, [r4, #0x4c]
	movs r0, #0x82
	strh r0, [r3]
	ldr r1, _08095360 @ =gWinRegs
	ldr r0, _08095364 @ =0x00003532
	strh r0, [r1, #8]
	movs r0, #0x10
	strh r0, [r3, #4]
	strh r5, [r4, #0x28]
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	strh r0, [r4, #0x26]
	ldr r0, _08095368 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809536C @ =sub_8095840
	str r0, [r1, #8]
_08095350:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08095358: .4byte 0xFFFFCE00
_0809535C: .4byte gDispCnt
_08095360: .4byte gWinRegs
_08095364: .4byte 0x00003532
_08095368: .4byte gCurTask
_0809536C: .4byte sub_8095840

	thumb_func_start Task_8095370
Task_8095370: @ 0x08095370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080953C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _080953B0
	ldr r1, _080953C4 @ =gBldRegs
	movs r3, #0
	ldr r0, _080953C8 @ =0x00003FFF
	strh r0, [r1]
	ldr r2, _080953CC @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080953D0 @ =gWinRegs
	ldr r0, _080953D4 @ =0x00003510
	strh r0, [r1, #8]
	strh r3, [r1, #0xa]
	strh r3, [r4, #0x26]
	strh r3, [r4, #0x28]
_080953B0:
	movs r7, #0x24
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bne _080953D8
	adds r0, r4, #0
	bl sub_809673C
	b _080953DE
	.align 2, 0
_080953C0: .4byte gCurTask
_080953C4: .4byte gBldRegs
_080953C8: .4byte 0x00003FFF
_080953CC: .4byte gDispCnt
_080953D0: .4byte gWinRegs
_080953D4: .4byte 0x00003510
_080953D8:
	adds r0, r4, #0
	bl sub_8096758
_080953DE:
	adds r0, r4, #0
	bl sub_80964F8
	adds r0, r4, #0
	bl sub_8096490
	adds r0, r4, #0
	bl sub_8096714
	ldr r2, _08095420 @ =gWinRegs
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _08095424 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _08095428
	ldrh r0, [r4, #0x26]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r2, [r4, #0x26]
	adds r0, r0, r2
	strh r0, [r4, #0x26]
	b _0809548A
	.align 2, 0
_08095420: .4byte gWinRegs
_08095424: .4byte gBldRegs
_08095428:
	lsls r0, r0, #8
	strh r0, [r4, #0x26]
	movs r3, #0
	ldr r5, _0809549C @ =gCurTask
	mov sl, r5
	ldr r7, _080954A0 @ =gBgScrollRegs
	mov r8, r7
	ldr r0, _080954A4 @ =sub_80962B4
	mov sb, r0
	adds r1, r4, #0
	adds r1, #0x78
	str r1, [sp]
	adds r6, r4, #0
	adds r6, #0x7c
	adds r5, r4, #0
	adds r5, #0xf
	mov ip, r3
_0809544A:
	lsls r1, r3, #3
	ldr r7, [sp]
	adds r2, r7, r1
	lsls r0, r3, #0xe
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r2]
	adds r1, r6, r1
	lsls r0, r3, #0xc
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r5, r3
	mov r7, ip
	strb r7, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _0809544A
	movs r0, #0
	strb r0, [r4, #0x1f]
	strb r0, [r4, #0x1e]
	movs r0, #0x80
	mov r1, r8
	strh r0, [r1, #6]
	mov r2, sl
	ldr r0, [r2]
	mov r5, sb
	str r5, [r0, #8]
_0809548A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809549C: .4byte gCurTask
_080954A0: .4byte gBgScrollRegs
_080954A4: .4byte sub_80962B4

	thumb_func_start Task_80954A8
Task_80954A8: @ 0x080954A8
	push {r4, r5, r6, lr}
	ldr r0, _080954F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r0, [r6, #0x28]
	cmp r0, #0
	beq _0809551A
	ldr r1, _080954F4 @ =gBldRegs
	movs r3, #0
	movs r4, #0
	ldr r0, _080954F8 @ =0x00003FFF
	strh r0, [r1]
	ldr r2, _080954FC @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r6, #3]
	cmp r0, #0
	bne _08095508
	ldr r0, _08095500 @ =gWinRegs
	movs r1, #0xff
	strh r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	strh r1, [r0, #6]
	ldr r1, _08095504 @ =0x00003130
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	b _08095510
	.align 2, 0
_080954F0: .4byte gCurTask
_080954F4: .4byte gBldRegs
_080954F8: .4byte 0x00003FFF
_080954FC: .4byte gDispCnt
_08095500: .4byte gWinRegs
_08095504: .4byte 0x00003130
_08095508:
	ldr r1, _08095540 @ =gWinRegs
	ldr r0, _08095544 @ =0x00003532
	strh r0, [r1, #8]
	strh r4, [r1, #0xa]
_08095510:
	movs r0, #0
	strh r0, [r6, #0x26]
	strh r0, [r6, #0x28]
	ldr r1, _08095548 @ =gBldRegs
	strh r0, [r1, #4]
_0809551A:
	ldrb r0, [r6, #3]
	cmp r0, #1
	beq _0809552C
	cmp r0, #5
	beq _0809552C
	cmp r0, #7
	beq _0809552C
	cmp r0, #3
	bne _0809554C
_0809552C:
	adds r0, r6, #0
	bl sub_809673C
	adds r0, r6, #0
	bl sub_8096814
	adds r0, r6, #0
	bl sub_8096774
	b _08095562
	.align 2, 0
_08095540: .4byte gWinRegs
_08095544: .4byte 0x00003532
_08095548: .4byte gBldRegs
_0809554C:
	cmp r0, #2
	beq _0809555C
	cmp r0, #6
	beq _0809555C
	cmp r0, #8
	beq _0809555C
	cmp r0, #4
	bne _08095582
_0809555C:
	adds r0, r6, #0
	bl sub_8096758
_08095562:
	adds r0, r6, #0
	bl sub_809673C
	adds r0, r6, #0
	bl sub_8095E8C
	adds r0, r6, #0
	bl sub_80960B8
	adds r0, r6, #0
	bl sub_80967DC
	adds r0, r6, #0
	bl sub_8095EF4
	b _08095598
_08095582:
	movs r1, #0x24
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08095592
	adds r0, r6, #0
	bl sub_809673C
	b _08095598
_08095592:
	adds r0, r6, #0
	bl sub_8096758
_08095598:
	ldr r1, _080955B4 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080955B8
	ldrh r0, [r6, #0x26]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	ldrh r1, [r6, #0x26]
	adds r0, r0, r1
	strh r0, [r6, #0x26]
	b _0809566A
	.align 2, 0
_080955B4: .4byte gBldRegs
_080955B8:
	ldrb r0, [r6, #3]
	cmp r0, #1
	beq _080955C2
	cmp r0, #3
	bne _080955E4
_080955C2:
	ldr r4, _080955E0 @ =gStageData
	movs r5, #0
	movs r0, #3
	strb r0, [r4, #3]
	movs r0, #0x1f
	ldrsb r0, [r6, r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	movs r0, #0x1e
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	adds r0, #3
	b _08095606
	.align 2, 0
_080955E0: .4byte gStageData
_080955E4:
	cmp r0, #2
	beq _080955EC
	cmp r0, #4
	bne _08095614
_080955EC:
	ldr r4, _08095610 @ =gStageData
	movs r5, #0
	movs r0, #4
	strb r0, [r4, #3]
	movs r1, #0x1f
	ldrsb r1, [r6, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r0, r1
	asrs r0, r0, #0x10
_08095606:
	movs r1, #0
	bl WarpToMap
	strb r5, [r4, #1]
	b _0809566A
	.align 2, 0
_08095610: .4byte gStageData
_08095614:
	cmp r0, #5
	bne _08095624
	ldr r0, _08095620 @ =gStageData
	movs r2, #0
	movs r1, #3
	b _0809562E
	.align 2, 0
_08095620: .4byte gStageData
_08095624:
	cmp r0, #6
	bne _08095640
	ldr r0, _0809563C @ =gStageData
	movs r2, #0
	movs r1, #4
_0809562E:
	strb r1, [r0, #3]
	strb r2, [r0, #6]
	movs r0, #0
	bl CreateCharacterSelect
	b _08095662
	.align 2, 0
_0809563C: .4byte gStageData
_08095640:
	cmp r0, #7
	beq _08095648
	cmp r0, #8
	bne _0809565C
_08095648:
	ldr r1, _08095658 @ =gStageData
	movs r0, #0
	strb r0, [r1, #6]
	movs r0, #3
	bl CreateCharacterSelect
	b _08095662
	.align 2, 0
_08095658: .4byte gStageData
_0809565C:
	movs r0, #9
	bl LaunchOptionsMenu
_08095662:
	ldr r0, _08095670 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0809566A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08095670: .4byte gCurTask

	thumb_func_start sub_8095674
sub_8095674: @ 0x08095674
	push {r4, r5, lr}
	ldr r0, _08095694 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08095698
	adds r0, r4, #0
	bl sub_809673C
	b _0809569E
	.align 2, 0
_08095694: .4byte gCurTask
_08095698:
	adds r0, r4, #0
	bl sub_8096758
_0809569E:
	adds r0, r4, #0
	bl sub_8096398
	adds r1, r0, #0
	cmp r1, #1
	bne _080956B2
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	strb r1, [r4, #1]
_080956B2:
	adds r0, r4, #0
	bl sub_8096678
	cmp r0, #1
	bne _080956C6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #2
	strb r0, [r4, #1]
_080956C6:
	cmp r5, #2
	bne _080956D6
	movs r0, #3
	strb r0, [r4, #1]
	ldr r0, _080956DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080956E0 @ =sub_8095764
	str r0, [r1, #8]
_080956D6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080956DC: .4byte gCurTask
_080956E0: .4byte sub_8095764

	thumb_func_start Task_80956E4
Task_80956E4: @ 0x080956E4
	push {r4, r5, lr}
	ldr r0, _08095704 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08095708
	adds r0, r4, #0
	bl sub_809673C
	b _0809570E
	.align 2, 0
_08095704: .4byte gCurTask
_08095708:
	adds r0, r4, #0
	bl sub_8096758
_0809570E:
	adds r0, r4, #0
	bl sub_80963E0
	cmp r0, #1
	bne _0809571E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809571E:
	adds r0, r4, #0
	bl sub_80966C4
	cmp r0, #1
	bne _0809572E
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809572E:
	ldr r2, _08095758 @ =gWinRegs
	ldr r0, [r4, #0x54]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r5, #2
	bne _08095750
	movs r0, #3
	strb r0, [r4, #1]
	ldr r0, _0809575C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08095760 @ =Task_80954A8
	str r0, [r1, #8]
_08095750:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095758: .4byte gWinRegs
_0809575C: .4byte gCurTask
_08095760: .4byte Task_80954A8

	thumb_func_start sub_8095764
sub_8095764: @ 0x08095764
	push {r4, r5, lr}
	ldr r5, _080957B0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8096758
	adds r0, r4, #0
	bl sub_8096790
	adds r0, r4, #0
	bl sub_8096428
	adds r0, r4, #0
	bl sub_8096554
	ldr r0, _080957B4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080957BC
	movs r0, #0x6b @ SE_ABORT
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4, #1]
	strh r0, [r4, #0x28]
	ldr r1, [r5]
	ldr r0, _080957B8 @ =Task_80956E4
	str r0, [r1, #8]
	b _08095830
	.align 2, 0
_080957B0: .4byte gCurTask
_080957B4: .4byte gPressedKeys
_080957B8: .4byte Task_80956E4
_080957BC:
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	beq _080957DC
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r0, #4
	strb r0, [r4, #1]
	ldr r1, [r5]
	ldr r0, _080957D8 @ =sub_809624C
	str r0, [r1, #8]
	b _08095830
	.align 2, 0
_080957D8: .4byte sub_809624C
_080957DC:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08095830
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08095804
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08095804
	strb r2, [r4, #4]
	strh r2, [r4, #0x24]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x64]
	movs r0, #0x6c
	bl m4aSongNumStart
_08095804:
	ldr r0, _08095838 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809582A
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0809582A
	movs r0, #0x20
	strb r0, [r4, #4]
	movs r0, #1
	strh r0, [r4, #0x24]
	ldr r0, _0809583C @ =0xFFFFF800
	str r0, [r4, #0x64]
	movs r0, #0x6c
	bl m4aSongNumStart
_0809582A:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x60]
_08095830:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095838: .4byte gPressedKeys
_0809583C: .4byte 0xFFFFF800

	thumb_func_start sub_8095840
sub_8095840: @ 0x08095840
	push {r4, r5, lr}
	ldr r0, _080958AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	adds r0, r4, #0
	bl sub_80960B8
	adds r0, r4, #0
	bl sub_80964F8
	adds r0, r4, #0
	bl sub_8095D24
	cmp r0, #1
	bne _08095868
	movs r5, #2
_08095868:
	adds r0, r4, #0
	bl sub_8096590
	cmp r0, #1
	bne _08095876
	movs r0, #1
	orrs r5, r0
_08095876:
	adds r0, r4, #0
	bl sub_809660C
	cmp r0, #1
	bne _08095888
	movs r0, #4
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_08095888:
	adds r0, r4, #0
	bl sub_80967DC
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080958B0
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8096774
	adds r0, r4, #0
	bl sub_8096814
	b _080958BC
	.align 2, 0
_080958AC: .4byte gCurTask
_080958B0:
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8096758
_080958BC:
	adds r0, r4, #0
	bl sub_8095EF4
	ldr r0, _080958D8 @ =gBldRegs
	ldrh r0, [r0]
	cmp r0, #0x82
	bne _080958DC
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _080958DC
	adds r0, r4, #0
	bl sub_8095DF8
	b _08095910
	.align 2, 0
_080958D8: .4byte gBldRegs
_080958DC:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _08095910
	ldr r1, _08095960 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080958FC
	ldr r2, _08095964 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r3, [r4, #0x26]
	adds r0, r0, r3
	strh r0, [r4, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
_080958FC:
	ldrh r0, [r1, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bls _08095910
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r4, #0x26]
	movs r5, #0xf
_08095910:
	cmp r5, #0xf
	bne _0809595A
	ldr r2, _08095968 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08095960 @ =gBldRegs
	movs r0, #0x82
	strh r0, [r1]
	ldr r1, _0809596C @ =gWinRegs
	ldr r0, _08095970 @ =0x00003532
	strh r0, [r1, #8]
	ldr r1, _08095974 @ =gBgScrollRegs
	ldr r0, [r4, #0x78]
	asrs r0, r0, #8
	adds r0, #0xf
	strh r0, [r1, #8]
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r4, #0x68]
	ldr r1, [r4, #0x34]
	str r1, [r4, #0x6c]
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r4, #0x70]
	str r1, [r4, #0x74]
	ldr r0, _08095978 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809597C @ =sub_809630C
	str r0, [r1, #8]
_0809595A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095960: .4byte gBldRegs
_08095964: .4byte 0xFFFFFF00
_08095968: .4byte gDispCnt
_0809596C: .4byte gWinRegs
_08095970: .4byte 0x00003532
_08095974: .4byte gBgScrollRegs
_08095978: .4byte gCurTask
_0809597C: .4byte sub_809630C

	thumb_func_start sub_8095980
sub_8095980: @ 0x08095980
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r6, #0
	ldrb r0, [r4, #0x1e]
	mov r8, r0
	ldrb r7, [r4, #0x1f]
	ldr r0, _080959B4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08095A04
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r0, #1
	strh r0, [r4, #0x28]
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _080959B8
	movs r0, #5
	strb r0, [r4, #3]
	b _08095A1C
	.align 2, 0
_080959B4: .4byte gPressedKeys
_080959B8:
	cmp r0, #2
	bne _080959C2
	movs r0, #6
	strb r0, [r4, #3]
	b _08095A1C
_080959C2:
	cmp r0, #3
	bne _080959CC
	movs r0, #7
	strb r0, [r4, #3]
	b _08095A1C
_080959CC:
	cmp r0, #4
	bne _080959D6
	movs r0, #8
	strb r0, [r4, #3]
	b _08095A1C
_080959D6:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080959EA
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x3c]
	ldr r2, _080959F8 @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r4, #0x34]
_080959EA:
	movs r0, #3
	strb r0, [r4, #1]
	ldr r0, _080959FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08095A00 @ =Task_8095370
	str r0, [r1, #8]
	b _08095C00
	.align 2, 0
_080959F8: .4byte 0xFFFFE000
_080959FC: .4byte gCurTask
_08095A00: .4byte Task_8095370
_08095A04:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08095A30
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08095A30
	movs r0, #0x6a
	bl m4aSongNumStart
	strh r5, [r4, #0x28]
_08095A1C:
	ldr r0, _08095A28 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08095A2C @ =Task_80954A8
	str r0, [r1, #8]
	b _08095C00
	.align 2, 0
_08095A28: .4byte gCurTask
_08095A2C: .4byte Task_80954A8
_08095A30:
	ldr r1, _08095AD8 @ =gRepeatedKeys
	ldrh r2, [r1]
	movs r0, #0xc0
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08095AE4
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08095A5C
	ldrb r0, [r4, #0x1f]
	adds r0, #1
	strb r0, [r4, #0x1f]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x14
	ldrsb r1, [r4, r1]
	cmp r0, r1
	blt _08095A5C
	movs r0, #0
	strb r0, [r4, #0x1f]
_08095A5C:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08095A78
	ldrb r0, [r4, #0x1f]
	subs r0, #1
	strb r0, [r4, #0x1f]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08095A78
	ldrb r0, [r4, #0x14]
	subs r0, #1
	strb r0, [r4, #0x1f]
_08095A78:
	movs r1, #0x1f
	ldrsb r1, [r4, r1]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _08095A86
	movs r6, #1
_08095A86:
	cmp r6, #0
	beq _08095AE4
	movs r0, #0x6c
	bl m4aSongNumStart
	movs r0, #2
	strh r0, [r4, #0x28]
	movs r3, #0
	adds r6, r4, #0
	adds r6, #0x78
	adds r5, r4, #0
	adds r5, #0x7c
	adds r4, #0xf
	mov r8, r3
_08095AA2:
	lsls r1, r3, #3
	adds r2, r6, r1
	lsls r0, r3, #0xe
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r2]
	adds r1, r5, r1
	lsls r0, r3, #0xc
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r4, r3
	mov r7, r8
	strb r7, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08095AA2
	ldr r0, _08095ADC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08095AE0 @ =sub_8095840
	str r0, [r1, #8]
	b _08095C00
	.align 2, 0
_08095AD8: .4byte gRepeatedKeys
_08095ADC: .4byte gCurTask
_08095AE0: .4byte sub_8095840
_08095AE4:
	ldrh r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _08095AF0
	b _08095C00
_08095AF0:
	movs r0, #0x6c
	bl m4aSongNumStart
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08095B4A
	movs r0, #0x24
	ldrsh r2, [r4, r0]
	cmp r2, #0
	bne _08095B2E
	ldrb r0, [r4, #0x1e]
	adds r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	ble _08095B4A
	strb r2, [r4, #0x1e]
	ldrb r0, [r4, #0x1f]
	adds r0, #1
	strb r0, [r4, #0x1f]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x14
	ldrsb r1, [r4, r1]
	cmp r0, r1
	blt _08095B4A
	strb r2, [r4, #0x1f]
	b _08095B4A
_08095B2E:
	movs r0, #3
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1f]
	adds r0, #1
	strb r0, [r4, #0x1f]
	movs r1, #0x1f
	ldrsb r1, [r4, r1]
	movs r0, #0x14
	ldrsb r0, [r4, r0]
	subs r0, #1
	cmp r1, r0
	ble _08095B4A
	movs r0, #0
	strb r0, [r4, #0x1f]
_08095B4A:
	ldr r0, _08095B70 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08095B8A
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08095B74
	ldrb r0, [r4, #0x1e]
	subs r0, #1
	strb r0, [r4, #0x1e]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08095B8A
	movs r0, #2
	b _08095B76
	.align 2, 0
_08095B70: .4byte gRepeatedKeys
_08095B74:
	movs r0, #3
_08095B76:
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1f]
	subs r0, #1
	strb r0, [r4, #0x1f]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08095B8A
	ldrb r0, [r4, #0x14]
	subs r0, #1
	strb r0, [r4, #0x1f]
_08095B8A:
	movs r0, #0x1f
	ldrsb r0, [r4, r0]
	lsls r1, r7, #0x18
	asrs r2, r1, #0x18
	ldrb r3, [r4, #0x1f]
	adds r5, r1, #0
	cmp r0, r2
	bne _08095BA8
	movs r1, #0x1e
	ldrsb r1, [r4, r1]
	mov r2, r8
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _08095BAA
_08095BA8:
	movs r6, #1
_08095BAA:
	cmp r6, #0
	beq _08095C00
	lsls r0, r3, #0x18
	cmp r0, r5
	beq _08095BB8
	movs r0, #2
	strh r0, [r4, #0x28]
_08095BB8:
	movs r3, #0
	ldr r7, _08095C0C @ =gCurTask
	mov r8, r7
	ldr r0, _08095C10 @ =sub_8095840
	mov ip, r0
	adds r6, r4, #0
	adds r6, #0x78
	adds r5, r4, #0
	adds r5, #0x7c
	adds r4, #0xf
	mov sb, r3
_08095BCE:
	lsls r1, r3, #3
	adds r2, r6, r1
	lsls r0, r3, #0xe
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r0, r0, r7
	str r0, [r2]
	adds r1, r5, r1
	lsls r0, r3, #0xc
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r4, r3
	mov r7, sb
	strb r7, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08095BCE
	mov r1, r8
	ldr r0, [r1]
	mov r2, ip
	str r2, [r0, #8]
_08095C00:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08095C0C: .4byte gCurTask
_08095C10: .4byte sub_8095840

	thumb_func_start sub_8095C14
sub_8095C14: @ 0x08095C14
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r1, _08095C6C @ =gPressedKeys
	ldrh r3, [r1]
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08095C80
	movs r0, #0
	movs r1, #1
	strb r1, [r2, #1]
	movs r1, #0
	strh r0, [r2, #0x24]
	strb r1, [r2, #0x1e]
	strh r0, [r2, #0x22]
	strb r1, [r2, #4]
	ldrb r1, [r2, #2]
	ldr r3, _08095C70 @ =gWinRegs
	ldr r4, _08095C74 @ =gCurTask
	ldr r5, _08095C78 @ =sub_8095674
	cmp r0, r1
	bhi _08095C54
_08095C40:
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bls _08095C40
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r2, #0x34]
	ldr r0, _08095C7C @ =0xFFFFCE00
	str r0, [r2, #0x30]
_08095C54:
	movs r0, #0
	str r0, [r2, #0x54]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r2, #0x2c]
	movs r0, #0xff
	strh r0, [r3]
	movs r0, #0xa0
	strh r0, [r3, #4]
	ldr r0, [r4]
	str r5, [r0, #8]
	b _08095CAE
	.align 2, 0
_08095C6C: .4byte gPressedKeys
_08095C70: .4byte gWinRegs
_08095C74: .4byte gCurTask
_08095C78: .4byte sub_8095674
_08095C7C: .4byte 0xFFFFCE00
_08095C80:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08095C90
	ldrh r0, [r2, #0x20]
	adds r0, #1
	strh r0, [r2, #0x20]
_08095C90:
	ldrh r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08095CAE
	ldrh r0, [r2, #0x20]
	subs r0, #1
	strh r0, [r2, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _08095CAE
	movs r0, #2
	strh r0, [r2, #0x20]
_08095CAE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8095CB4
sub_8095CB4: @ 0x08095CB4
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r1, [r2, #4]
	movs r4, #0
	movs r0, #0x8c
	subs r0, r0, r1
	lsls r3, r0, #8
	ldr r1, [r2, #0x34]
	cmp r1, r3
	bge _08095CE8
	ldrh r0, [r2, #0x20]
	subs r0, #1
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r2, #0x34]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x30]
	movs r5, #0x24
	ldrsh r0, [r2, r5]
	cmp r0, #0
	beq _08095D02
	cmp r1, r3
	blt _08095D02
	str r3, [r2, #0x34]
	b _08095D02
_08095CE8:
	ldrh r0, [r2, #0x20]
	adds r0, #2
	lsls r0, r0, #8
	ldr r1, [r2, #0x30]
	adds r1, r1, r0
	str r1, [r2, #0x30]
	str r3, [r2, #0x34]
	ldr r0, _08095D18 @ =0x000117FF
	cmp r1, r0
	ble _08095D02
	adds r0, #1
	str r0, [r2, #0x30]
	movs r4, #1
_08095D02:
	ldr r0, [r2, #0x30]
	str r0, [r2, #0x38]
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	cmp r4, #0
	bne _08095D1C
	movs r0, #0
	b _08095D1E
	.align 2, 0
_08095D18: .4byte 0x000117FF
_08095D1C:
	movs r0, #1
_08095D1E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8095D24
sub_8095D24: @ 0x08095D24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	movs r0, #0
	mov r8, r0
	movs r5, #0
	mov r7, ip
	adds r7, #0xf
	mov r6, ip
	adds r6, #0x78
	mov sl, r5
	ldr r4, _08095D78 @ =gUnknown_080D8BB0
	mov sb, r4
_08095D44:
	adds r0, r7, r5
	ldrb r3, [r0]
	lsls r2, r5, #3
	mov r1, ip
	adds r1, #0x7c
	adds r1, r1, r2
	lsls r0, r5, #2
	ldr r4, _08095D7C @ =gUnknown_080D8B9C
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #8
	str r0, [r1]
	cmp r3, #6
	bne _08095D86
	adds r2, r6, r2
	ldr r0, [r2]
	cmp r0, #0
	blt _08095D80
	mov r0, sl
	str r0, [r2]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	b _08095DCC
	.align 2, 0
_08095D78: .4byte gUnknown_080D8BB0
_08095D7C: .4byte gUnknown_080D8B9C
_08095D80:
	mov r4, sl
	str r4, [r2]
	b _08095DCC
_08095D86:
	cmp r3, #5
	bhi _08095DA0
	adds r0, r6, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	lsls r0, r3, #2
	add r0, sb
	ldr r0, [r0]
	mov r4, ip
	adds r4, #0x78
	cmp r1, r0
	bgt _08095DBA
	b _08095DB4
_08095DA0:
	adds r0, r6, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	lsls r0, r3, #2
	add r0, sb
	ldr r0, [r0]
	mov r4, ip
	adds r4, #0x78
	cmp r1, r0
	blt _08095DBA
_08095DB4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08095DBA:
	adds r2, r4, r2
	ldr r0, _08095DE4 @ =gUnknown_080D8BD8
	adds r0, r3, r0
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
_08095DCC:
	adds r0, r7, r5
	strb r3, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08095D44
	mov r0, r8
	cmp r0, #4
	bhi _08095DE8
	movs r0, #0
	b _08095DEA
	.align 2, 0
_08095DE4: .4byte gUnknown_080D8BD8
_08095DE8:
	movs r0, #1
_08095DEA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8095DF8
sub_8095DF8: @ 0x08095DF8
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r3, [r2, #0x1f]
	ldr r4, _08095E80 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r4, #4]
	ldrh r0, [r2, #0x28]
	cmp r0, #2
	bne _08095E46
	ldr r1, _08095E84 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _08095E24
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	ldrh r5, [r2, #0x26]
	adds r0, r0, r5
	strh r0, [r2, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
_08095E24:
	ldrh r0, [r1, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe
	bls _08095E46
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r1, #1
	strh r1, [r2, #0x28]
	lsls r0, r0, #8
	strh r0, [r2, #0x26]
	lsls r1, r3, #4
	lsls r0, r3, #3
	adds r0, #0x80
	adds r1, r1, r0
	strh r1, [r4, #6]
_08095E46:
	ldrh r0, [r2, #0x28]
	cmp r0, #1
	bne _08095E76
	ldr r1, _08095E84 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08095E64
	ldr r3, _08095E88 @ =0xFFFFFF00
	adds r0, r3, #0
	ldrh r5, [r2, #0x26]
	adds r0, r0, r5
	strh r0, [r2, #0x26]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
_08095E64:
	ldrh r0, [r1, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08095E76
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r2, #0x28]
_08095E76:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08095E80: .4byte gBgScrollRegs
_08095E84: .4byte gBldRegs
_08095E88: .4byte 0xFFFFFF00

	thumb_func_start sub_8095E8C
sub_8095E8C: @ 0x08095E8C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r5, #0x68]
	asrs r0, r0, #8
	subs r0, #0x20
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x6c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _08095EEC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldrh r1, [r5, #0x1e]
	ldr r0, _08095EF0 @ =0x00000603
	cmp r1, r0
	bne _08095EBA
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08095EBA:
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r5, #0x70]
	asrs r0, r0, #8
	adds r0, #0x69
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x74]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095EEC: .4byte 0xFFFFFBFF
_08095EF0: .4byte 0x00000603

	thumb_func_start sub_8095EF4
sub_8095EF4: @ 0x08095EF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, _08095FBC @ =gUnknown_080D8BE2
	mov r0, sp
	movs r2, #5
	bl memcpy
	ldrb r1, [r6, #0x1e]
	ldrb r2, [r6, #0x1f]
	movs r3, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #4
	str r0, [sp, #0x18]
_08095F26:
	movs r1, #0
	mov r8, r1
	lsls r0, r3, #1
	ldr r2, [sp, #0x14]
	adds r0, r0, r2
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	ldr r2, _08095FC0 @ =0x0000054C
	adds r1, r6, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #4
	bhi _08095F46
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _08095FC4
_08095F46:
	movs r1, #1
	str r1, [sp, #0x10]
	movs r4, #0
	lsls r7, r3, #3
	adds r5, r6, #0
	adds r5, #0x78
	movs r2, #0x7c
	adds r2, r2, r6
	mov sb, r2
	adds r3, #1
	str r3, [sp, #0x24]
	mov sl, r7
	adds r2, r2, r7
	str r2, [sp, #0x2c]
_08095F62:
	cmp r4, #1
	beq _08095F6A
	cmp r4, #3
	bne _08095F74
_08095F6A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08095F74:
	mov r3, sp
	adds r0, r3, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r6, r0
	mov r3, sl
	adds r0, r5, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0xaa
	lsls r1, r4, #3
	adds r0, r0, r1
	adds r0, r0, r4
	mov r3, r8
	lsls r1, r3, #3
	adds r0, r0, r1
	strh r0, [r2, #0x10]
	ldr r1, [sp, #0x2c]
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08095F62
	b _08096058
	.align 2, 0
_08095FBC: .4byte gUnknown_080D8BE2
_08095FC0: .4byte 0x0000054C
_08095FC4:
	movs r4, #0
	lsls r7, r3, #3
	adds r5, r6, #0
	adds r5, #0x78
	movs r2, #0x7c
	adds r2, r2, r6
	mov sb, r2
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x20]
	lsls r0, r3, #2
	adds r1, r3, #1
	str r1, [sp, #0x24]
	str r7, [sp, #0x1c]
	adds r2, r2, r7
	mov sl, r2
	adds r0, r0, r3
	lsls r0, r0, #1
	str r0, [sp, #0x2c]
_08095FEA:
	ldr r3, [sp, #0x20]
	adds r2, r3, r4
	lsls r0, r4, #1
	ldr r1, [sp, #0x2c]
	adds r0, r0, r1
	ldr r3, [sp, #0x14]
	adds r0, r0, r3
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	ldr r3, _080960AC @ =0x00000556
	adds r1, r6, r3
	adds r1, r1, r0
	ldrh r0, [r1]
	strb r0, [r2]
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r6, r0
	cmp r4, #1
	beq _0809601E
	cmp r4, #3
	bne _08096028
_0809601E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08096028:
	ldr r3, [sp, #0x1c]
	adds r0, r5, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, #0xaa
	lsls r1, r4, #3
	adds r0, r0, r1
	adds r0, r0, r4
	mov r3, r8
	lsls r1, r3, #3
	adds r0, r0, r1
	strh r0, [r2, #0x10]
	mov r1, sl
	ldr r0, [r1]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08095FEA
_08096058:
	ldr r3, _080960B0 @ =0x0000043C
	adds r2, r6, r3
	adds r5, r5, r7
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #0xb3
	strh r0, [r2, #0x10]
	mov r0, sb
	adds r4, r0, r7
	ldr r0, [r4]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r1, _080960B4 @ =0x00000464
	adds r2, r6, r1
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, #0xce
	strh r0, [r2, #0x10]
	ldr r0, [r4]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r2, [sp, #0x24]
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bhi _0809609A
	b _08095F26
_0809609A:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080960AC: .4byte 0x00000556
_080960B0: .4byte 0x0000043C
_080960B4: .4byte 0x00000464

	thumb_func_start sub_80960B8
sub_80960B8: @ 0x080960B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldrb r1, [r6]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #4]
	ldrb r0, [r6, #0x1e]
	str r0, [sp]
	ldrb r1, [r6, #0x1f]
	mov sl, r1
	movs r2, #0
	mov sb, r2
_080960DC:
	mov r3, sb
	lsls r1, r3, #1
	ldr r2, [sp]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r3, sl
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #4
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _080961D0 @ =0x0000054C
	adds r0, r6, r1
	mov r2, r8
	adds r7, r0, r2
	ldrb r0, [r7]
	cmp r0, #4
	bhi _080961C0
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r2, r6, r0
	mov r0, sb
	lsls r1, r0, #3
	adds r0, r6, #0
	adds r0, #0x78
	adds r0, r0, r1
	ldr r4, [r0]
	asrs r4, r4, #8
	adds r4, #0x20
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	strh r4, [r2, #0x10]
	adds r5, r6, #0
	adds r5, #0x7c
	adds r5, r5, r1
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r3, _080961D4 @ =0x00000414
	adds r2, r6, r3
	ldr r1, _080961D8 @ =gUnknown_080D8B44
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r1, _080961DC @ =gUnknown_080D8BE7
	ldr r3, [sp, #4]
	lsls r0, r3, #2
	orrs r0, r3
	ldrb r7, [r7]
	adds r0, r0, r7
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	strh r4, [r2, #0x10]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	ldr r2, _080961E0 @ =0x0000054D
	adds r0, r6, r2
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r3, #0xd3
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r2, r6, r0
	adds r4, #0x10
	strh r4, [r2, #0x10]
	ldr r0, [r5]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #4
	bls _080960DC
_080961C0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080961D0: .4byte 0x0000054C
_080961D4: .4byte 0x00000414
_080961D8: .4byte gUnknown_080D8B44
_080961DC: .4byte gUnknown_080D8BE7
_080961E0: .4byte 0x0000054D

	thumb_func_start sub_80961E4
sub_80961E4: @ 0x080961E4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _08096238 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0809623C @ =sub_8094740
	ldr r1, _08096240 @ =0x00000BDC
	ldr r2, _08096244 @ =0x00000101
	ldr r3, _08096248 @ =sub_809684C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	strb r5, [r4, #3]
	adds r0, r4, #0
	bl sub_80947EC
	adds r0, r4, #0
	bl sub_8094924
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0809622E
	bl m4aMPlayAllStop
	movs r0, #0x47      @ MUS_TIME_ATTACK_1
	bl m4aSongNumStart
_0809622E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08096238: .4byte gDispCnt
_0809623C: .4byte sub_8094740
_08096240: .4byte 0x00000BDC
_08096244: .4byte 0x00000101
_08096248: .4byte sub_809684C

	thumb_func_start sub_809624C
sub_809624C: @ 0x0809624C
	push {r4, lr}
	ldr r0, _0809626C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08096270
	adds r0, r4, #0
	bl sub_809673C
	b _08096276
	.align 2, 0
_0809626C: .4byte gCurTask
_08096270:
	adds r0, r4, #0
	bl sub_8096758
_08096276:
	adds r0, r4, #0
	bl sub_8096714
	adds r0, r4, #0
	bl sub_8095CB4
	cmp r0, #1
	bne _080962A4
	movs r0, #0
	strh r0, [r4, #0x28]
	adds r0, r4, #0
	bl sub_8096714
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0809629C
	movs r0, #3
	strb r0, [r4, #0x1e]
_0809629C:
	ldr r0, _080962AC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080962B0 @ =sub_8095210
	str r0, [r1, #8]
_080962A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080962AC: .4byte gCurTask
_080962B0: .4byte sub_8095210

	thumb_func_start sub_80962B4
sub_80962B4: @ 0x080962B4
	push {r4, lr}
	ldr r0, _080962D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080962D8
	adds r0, r4, #0
	bl sub_809673C
	b _080962DE
	.align 2, 0
_080962D4: .4byte gCurTask
_080962D8:
	adds r0, r4, #0
	bl sub_8096758
_080962DE:
	adds r0, r4, #0
	bl sub_8096714
	adds r0, r4, #0
	bl sub_8096490
	cmp r0, #1
	bne _080962FC
	adds r0, r4, #0
	bl sub_8096714
	ldr r0, _08096304 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08096308 @ =sub_8095764
	str r0, [r1, #8]
_080962FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08096304: .4byte gCurTask
_08096308: .4byte sub_8095764

	thumb_func_start sub_809630C
sub_809630C: @ 0x0809630C
	push {r4, r5, lr}
	ldr r0, _0809634C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, [r4, #0x30]
	ldr r0, _08096350 @ =0x00007BFF
	cmp r1, r0
	ble _0809632E
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _0809632E
	adds r0, r4, #0
	bl sub_8095DF8
_0809632E:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08096354
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8096814
	adds r0, r4, #0
	bl sub_8096774
	b _0809635A
	.align 2, 0
_0809634C: .4byte gCurTask
_08096350: .4byte 0x00007BFF
_08096354:
	adds r0, r4, #0
	bl sub_8096758
_0809635A:
	adds r0, r4, #0
	bl sub_809673C
	adds r0, r4, #0
	bl sub_8095E8C
	adds r0, r4, #0
	bl sub_8096520
	adds r0, r4, #0
	bl sub_8096520
	adds r0, r4, #0
	bl sub_80964F8
	adds r0, r4, #0
	bl sub_80960B8
	adds r0, r4, #0
	bl sub_80967DC
	adds r0, r4, #0
	bl sub_8095EF4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8095980
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8096398
sub_8096398: @ 0x08096398
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _080963CE
	ldr r1, [r2, #0x30]
	ldr r3, _080963D4 @ =0x000077FF
	cmp r1, r3
	bgt _080963C4
	ldrh r0, [r2, #0x20]
	adds r0, #1
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [r2, #0x30]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r2, #0x34]
	cmp r0, r3
	ble _080963C4
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x30]
_080963C4:
	ldr r1, [r2, #0x30]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	beq _080963D8
_080963CE:
	movs r0, #0
	b _080963DA
	.align 2, 0
_080963D4: .4byte 0x000077FF
_080963D8:
	movs r0, #1
_080963DA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80963E0
sub_80963E0: @ 0x080963E0
	push {r4, lr}
	adds r2, r0, #0
	ldrb r4, [r2, #4]
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _08096416
	ldr r0, [r2, #0x30]
	ldr r3, _0809641C @ =0xFFFFCE00
	cmp r0, r3
	blt _0809640C
	ldrh r1, [r2, #0x20]
	adds r1, #1
	lsls r1, r1, #8
	subs r1, r0, r1
	str r1, [r2, #0x30]
	movs r0, #0x50
	subs r0, r0, r4
	lsls r0, r0, #8
	str r0, [r2, #0x34]
	cmp r1, r3
	bgt _0809640C
	str r3, [r2, #0x30]
_0809640C:
	ldr r1, [r2, #0x30]
	str r1, [r2, #0x38]
	ldr r0, _0809641C @ =0xFFFFCE00
	cmp r1, r0
	beq _08096420
_08096416:
	movs r0, #0
	b _08096422
	.align 2, 0
_0809641C: .4byte 0xFFFFCE00
_08096420:
	movs r0, #1
_08096422:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8096428
sub_8096428: @ 0x08096428
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2, #4]
	ldr r1, [r2, #0x30]
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r1, r0
	bne _0809647A
	movs r1, #0x24
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0809645E
	movs r0, #0x50
	subs r0, r0, r3
	lsls r1, r0, #8
	ldr r3, [r2, #0x34]
	cmp r3, r1
	ble _0809647A
	ldrh r0, [r2, #0x20]
	subs r0, #1
	lsls r0, r0, #8
	subs r0, r3, r0
	str r0, [r2, #0x34]
	cmp r0, r1
	bgt _0809647A
	str r1, [r2, #0x34]
	b _0809647A
_0809645E:
	ldr r1, [r2, #0x34]
	movs r3, #0xa0
	lsls r3, r3, #7
	cmp r1, r3
	bgt _0809647A
	ldrh r0, [r2, #0x20]
	subs r0, #1
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [r2, #0x34]
	ldr r1, _0809648C @ =0x00004FFF
	cmp r0, r1
	ble _0809647A
	str r3, [r2, #0x34]
_0809647A:
	ldr r0, [r2, #0x30]
	str r0, [r2, #0x38]
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	pop {r0}
	bx r0
	.align 2, 0
_0809648C: .4byte 0x00004FFF

	thumb_func_start sub_8096490
sub_8096490: @ 0x08096490
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r4, [r2, #4]
	movs r5, #0
	ldr r0, [r2, #0x30]
	movs r3, #0xf0
	lsls r3, r3, #7
	cmp r0, r3
	ble _080964BC
	ldrh r1, [r2, #0x20]
	adds r1, #7
	lsls r1, r1, #8
	subs r1, r0, r1
	str r1, [r2, #0x30]
	movs r0, #0x8c
	subs r0, r0, r4
	lsls r0, r0, #8
	str r0, [r2, #0x34]
	cmp r1, r3
	bgt _080964D8
	str r3, [r2, #0x30]
	b _080964D8
_080964BC:
	ldrh r0, [r2, #0x20]
	subs r0, #1
	lsls r0, r0, #8
	ldr r1, [r2, #0x34]
	subs r1, r1, r0
	str r1, [r2, #0x34]
	str r3, [r2, #0x30]
	movs r0, #0x50
	subs r0, r0, r4
	lsls r0, r0, #8
	cmp r1, r0
	bgt _080964D8
	str r0, [r2, #0x34]
	movs r5, #1
_080964D8:
	ldr r0, [r2, #0x30]
	str r0, [r2, #0x38]
	ldr r0, [r2, #0x34]
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	cmp r5, #0
	bne _080964EE
	movs r0, #0
	b _080964F0
_080964EE:
	movs r0, #1
_080964F0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80964F8
sub_80964F8: @ 0x080964F8
	ldr r2, [r0, #0x58]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r2, r2, r1
	str r2, [r0, #0x58]
	ldr r1, [r0, #0x5c]
	ldr r3, _08096518 @ =0xFFFFFE80
	adds r1, r1, r3
	str r1, [r0, #0x5c]
	ldr r0, _0809651C @ =gBgScrollRegs
	asrs r2, r2, #8
	strh r2, [r0]
	asrs r1, r1, #8
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
_08096518: .4byte 0xFFFFFE80
_0809651C: .4byte gBgScrollRegs

	thumb_func_start sub_8096520
sub_8096520: @ 0x08096520
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x68]
	subs r0, #0x20
	str r0, [r2, #0x68]
	ldr r1, _08096550 @ =0x00007FFF
	cmp r0, r1
	bgt _08096536
	movs r0, #0x84
	lsls r0, r0, #8
	str r0, [r2, #0x68]
_08096536:
	ldr r0, [r2, #0x70]
	adds r0, #0x20
	str r0, [r2, #0x70]
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	ble _0809654A
	movs r0, #0xf8
	lsls r0, r0, #7
	str r0, [r2, #0x70]
_0809654A:
	pop {r0}
	bx r0
	.align 2, 0
_08096550: .4byte 0x00007FFF

	thumb_func_start sub_8096554
sub_8096554: @ 0x08096554
	push {lr}
	adds r2, r0, #0
	movs r1, #0x24
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _08096574
	ldr r0, [r2, #0x64]
	adds r0, #0x80
	str r0, [r2, #0x64]
	movs r1, #0x94
	lsls r1, r1, #6
	cmp r0, r1
	ble _08096584
	movs r0, #0x80
	lsls r0, r0, #6
	b _08096582
_08096574:
	ldr r0, [r2, #0x64]
	subs r0, #0x80
	str r0, [r2, #0x64]
	ldr r1, _08096588 @ =0xFFFFF300
	cmp r0, r1
	bge _08096584
	ldr r0, _0809658C @ =0xFFFFF800
_08096582:
	str r0, [r2, #0x64]
_08096584:
	pop {r0}
	bx r0
	.align 2, 0
_08096588: .4byte 0xFFFFF300
_0809658C: .4byte 0xFFFFF800

	thumb_func_start sub_8096590
sub_8096590: @ 0x08096590
	push {r4, r5, lr}
	mov ip, r0
	movs r4, #0
	movs r3, #0
	movs r5, #0
	ldr r2, _080965F8 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080965FC @ =gHBlankCopyTarget
	ldr r0, _08096600 @ =0x04000018
	str r0, [r1]
	ldr r1, _08096604 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08096608 @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
_080965B4:
	lsls r0, r5, #3
	mov r1, ip
	adds r1, #0x78
	adds r1, r1, r0
	ldr r0, [r1]
	asrs r0, r0, #8
	subs r0, #0xf
	cmp r0, #0xf0
	ble _080965C8
	movs r0, #0xf0
_080965C8:
	rsbs r0, r0, #0
	strh r0, [r2]
	adds r2, #2
	cmp r4, #3
	bls _080965E4
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x18
	bne _080965E4
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r3, #0
_080965E4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x9f
	bls _080965B4
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080965F8: .4byte gFlags
_080965FC: .4byte gHBlankCopyTarget
_08096600: .4byte 0x04000018
_08096604: .4byte gHBlankCopySize
_08096608: .4byte gBgOffsetsHBlankPrimary

	thumb_func_start sub_809660C
sub_809660C: @ 0x0809660C
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r5, #0
	movs r1, #0x24
	ldrsh r0, [r3, r1]
	movs r1, #0x8c
	cmp r0, #0
	bne _0809661E
	movs r1, #0x7c
_0809661E:
	lsls r4, r1, #8
	ldr r0, [r3, #0x30]
	cmp r0, r4
	bgt _0809664C
	ldrh r2, [r3, #0x20]
	adds r2, #8
	lsls r2, r2, #8
	adds r2, r0, r2
	str r2, [r3, #0x30]
	ldrh r1, [r3, #0x20]
	adds r1, #8
	lsls r1, r1, #8
	ldr r0, [r3, #0x48]
	adds r0, r0, r1
	str r0, [r3, #0x48]
	cmp r2, r4
	ble _0809664C
	str r4, [r3, #0x30]
	movs r2, #0xa8
	lsls r2, r2, #6
	adds r0, r4, r2
	str r0, [r3, #0x48]
	movs r5, #1
_0809664C:
	ldr r1, [r3, #0x30]
	movs r2, #0xf0
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r3, #0x38]
	ldrb r0, [r3]
	cmp r0, #0
	beq _08096664
	movs r2, #0x84
	lsls r2, r2, #7
	adds r0, r1, r2
	str r0, [r3, #0x38]
_08096664:
	ldr r0, [r3, #0x34]
	str r0, [r3, #0x3c]
	cmp r5, #0
	bne _08096670
	movs r0, #0
	b _08096672
_08096670:
	movs r0, #1
_08096672:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8096678
sub_8096678: @ 0x08096678
	push {r4, lr}
	adds r3, r0, #0
	ldrb r4, [r3, #4]
	ldr r2, [r3, #0x2c]
	movs r1, #0xc0
	lsls r1, r1, #5
	cmp r2, r1
	ble _080966BC
	ldrh r0, [r3, #0x20]
	lsls r0, r0, #8
	subs r0, r2, r0
	str r0, [r3, #0x2c]
	cmp r0, r1
	bgt _08096696
	str r1, [r3, #0x2c]
_08096696:
	lsls r1, r4, #8
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	ldr r2, [r3, #0x2c]
	asrs r1, r2, #1
	subs r0, r0, r1
	str r0, [r3, #0x54]
	ldr r3, _080966B8 @ =gWinRegs
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	asrs r2, r2, #8
	adds r1, r1, r2
	strh r1, [r3, #4]
	movs r0, #0
	b _080966BE
	.align 2, 0
_080966B8: .4byte gWinRegs
_080966BC:
	movs r0, #1
_080966BE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80966C4
sub_80966C4: @ 0x080966C4
	push {r4, lr}
	adds r3, r0, #0
	ldrb r4, [r3, #4]
	ldr r2, [r3, #0x2c]
	ldr r1, _08096704 @ =0x00009FFF
	cmp r2, r1
	bgt _0809670C
	ldrh r0, [r3, #0x20]
	lsls r0, r0, #8
	adds r0, r2, r0
	str r0, [r3, #0x2c]
	cmp r0, r1
	ble _080966E4
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r3, #0x2c]
_080966E4:
	lsls r1, r4, #8
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	ldr r2, [r3, #0x2c]
	asrs r1, r2, #1
	subs r0, r0, r1
	str r0, [r3, #0x54]
	ldr r3, _08096708 @ =gWinRegs
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	asrs r2, r2, #8
	adds r1, r1, r2
	strh r1, [r3, #4]
	movs r0, #0
	b _0809670E
	.align 2, 0
_08096704: .4byte 0x00009FFF
_08096708: .4byte gWinRegs
_0809670C:
	movs r0, #1
_0809670E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8096714
sub_8096714: @ 0x08096714
	ldrb r2, [r0, #4]
	lsls r2, r2, #8
	ldr r1, [r0, #0x34]
	adds r1, r1, r2
	ldr r2, _08096734 @ =0xFFFFF400
	adds r1, r1, r2
	str r1, [r0, #0x54]
	ldr r3, _08096738 @ =gWinRegs
	asrs r1, r1, #8
	lsls r2, r1, #8
	adds r2, r2, r1
	ldr r0, [r0, #0x2c]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r3, #4]
	bx lr
	.align 2, 0
_08096734: .4byte 0xFFFFF400
_08096738: .4byte gWinRegs

	thumb_func_start sub_809673C
sub_809673C: @ 0x0809673C
	push {lr}
	adds r2, r0, #0
	adds r2, #0xa4
	ldr r1, [r0, #0x30]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x34]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_8096758
sub_8096758: @ 0x08096758
	push {lr}
	adds r2, r0, #0
	adds r2, #0xcc
	ldr r1, [r0, #0x38]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x3c]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_8096774
sub_8096774: @ 0x08096774
	push {lr}
	adds r2, r0, #0
	adds r2, #0xf4
	ldr r1, [r0, #0x48]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x4c]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_8096790
sub_8096790: @ 0x08096790
	push {r4, lr}
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0x60]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r2, [r0, #0x64]
	asrs r2, r2, #8
	strh r2, [r4, #0x12]
	ldr r1, [r0, #0x54]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r4, #0x12]
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080967BE
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _080967C4
_080967BE:
	ldr r0, [r4, #8]
	ldr r1, _080967D8 @ =0xFFFFF7FF
	ands r0, r1
_080967C4:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080967D8: .4byte 0xFFFFF7FF

	thumb_func_start sub_80967DC
sub_80967DC: @ 0x080967DC
	push {r4, lr}
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0x30]
	asrs r1, r1, #8
	adds r1, #0x19
	strh r1, [r4, #0x10]
	ldr r1, [r0, #0x34]
	asrs r1, r1, #8
	strh r1, [r4, #0x12]
	ldr r1, _08096810 @ =sAnimsTimeAttackDigits
	ldrb r0, [r0, #0x1f]
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08096810: .4byte sAnimsTimeAttackDigits

	thumb_func_start sub_8096814
sub_8096814: @ 0x08096814
	push {r4, lr}
	ldrb r2, [r0, #0x1e]
	movs r1, #0xca
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0x48]
	asrs r1, r1, #8
	adds r1, #0x2d
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x4c]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, _08096848 @ =sAnimsTimeAttackDigits
	ldrb r0, [r0, #2]
	adds r2, r2, r0
	strb r2, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08096848: .4byte sAnimsTimeAttackDigits
    
	thumb_func_start sub_809684C
sub_809684C: @ 0x0809684C
	bx lr
	.align 2, 0

	thumb_func_start sub_8096850
sub_8096850: @ 0x08096850
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _080968EC @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080968F0 @ =sub_8096FA8
	ldr r1, _080968F4 @ =0x00000FB8
	ldr r2, _080968F8 @ =0x00000101
	ldr r3, _080968FC @ =sub_8097C50
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_8096B30
	adds r0, r5, #0
	bl sub_8096918
	movs r2, #0
	str r2, [sp, #4]
	ldr r3, _08096900 @ =0x040000D4
	add r0, sp, #4
	str r0, [r3]
	ldr r0, _08096904 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _08096908 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _0809690C @ =gBgSprites_Unknown1
	strb r2, [r4]
	ldr r0, _08096910 @ =gBgSprites_Unknown2
	strb r2, [r0]
	strb r2, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r3, #0x40
	strb r3, [r0, #3]
	movs r1, #3
	strb r1, [r4, #1]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	subs r1, #4
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	strb r2, [r4, #2]
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	adds r0, r5, #0
	bl sub_8096EB8
	adds r0, r5, #0
	bl sub_8096C60
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _08096914 @ =gBgPalette
	strh r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080968EC: .4byte gDispCnt
_080968F0: .4byte sub_8096FA8
_080968F4: .4byte 0x00000FB8
_080968F8: .4byte 0x00000101
_080968FC: .4byte sub_8097C50
_08096900: .4byte 0x040000D4
_08096904: .4byte gBgCntRegs
_08096908: .4byte 0x85000010
_0809690C: .4byte gBgSprites_Unknown1
_08096910: .4byte gBgSprites_Unknown2
_08096914: .4byte gBgPalette

	thumb_func_start sub_8096918
sub_8096918: @ 0x08096918
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	movs r3, #0
_08096928:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _080969A8 @ =gLoadedSaveGame
	adds r0, r0, r1
	adds r0, #0x74
	ldrb r0, [r0]
	cmp r0, #0
	beq _08096940
	ldrb r0, [r7, #0x1b]
	adds r0, #1
	strb r0, [r7, #0x1b]
_08096940:
	movs r5, #0
	movs r2, #0xc2
	adds r2, r2, r7
	mov sl, r2
	adds r0, r7, #0
	adds r0, #0xc3
	str r0, [sp, #4]
	adds r1, r7, #0
	adds r1, #0xc4
	str r1, [sp, #8]
	adds r2, r7, #0
	adds r2, #0xc5
	str r2, [sp, #0xc]
	adds r0, #3
	str r0, [sp, #0x10]
	adds r1, #3
	str r1, [sp, #0x14]
	adds r2, r3, #1
	str r2, [sp]
	adds r6, r7, #0
	adds r6, #0x3e
	ldr r0, _080969A8 @ =gLoadedSaveGame
	adds r0, #0x68
	mov ip, r0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	mov sb, r0
	subs r1, r3, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r8, r0
	adds r0, r7, #0
	adds r0, #0xd
	adds r4, r0, r3
_08096988:
	cmp r3, #0
	bne _080969AC
	lsls r1, r5, #1
	adds r2, r7, #0
	adds r2, #0x2c
	adds r2, r2, r1
	ldr r0, _080969A8 @ =gLoadedSaveGame
	adds r0, #4
	adds r0, r1, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, r6, r1
	add r1, ip
	ldrh r0, [r1]
	strh r0, [r2]
	b _080969CC
	.align 2, 0
_080969A8: .4byte gLoadedSaveGame
_080969AC:
	lsls r0, r5, #1
	mov r2, sb
	adds r1, r0, r2
	adds r1, r6, r1
	add r0, r8
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08096A90 @ =0x0000FFFF
	cmp r0, r1
	beq _080969CC
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080969CC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #5
	bls _08096988
	cmp r3, #0
	bne _08096A9C
	ldr r4, _08096A94 @ =gLoadedSaveGame
	adds r4, #0x75
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	mov r2, sl
	strb r0, [r2]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	ldr r1, [sp, #4]
	strb r0, [r1]
	ldr r4, _08096A94 @ =gLoadedSaveGame
	adds r4, #0x76
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	ldr r2, [sp, #8]
	strb r0, [r2]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	ldr r4, _08096A94 @ =gLoadedSaveGame
	adds r4, #0x77
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	ldr r4, _08096A94 @ =gLoadedSaveGame
	adds r4, #0x60
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	adds r1, r7, #0
	adds r1, #0x38
	strb r0, [r1]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	adds r1, r7, #0
	adds r1, #0x39
	strb r0, [r1]
	ldr r4, _08096A94 @ =gLoadedSaveGame
	adds r4, #0x61
	ldrb r0, [r4]
	movs r1, #0xa
	bl __udivsi3
	adds r1, r7, #0
	adds r1, #0x3a
	strb r0, [r1]
	ldrb r0, [r4]
	movs r1, #0xa
	bl __umodsi3
	adds r1, r7, #0
	adds r1, #0x3b
	strb r0, [r1]
	ldr r2, _08096A98 @ =gLoadedSaveGame + 0x62
	ldrb r0, [r2]
	movs r1, #0xa
	bl __udivsi3
	adds r1, r7, #0
	adds r1, #0x3c
	strb r0, [r1]
	ldr r1, _08096A98 @ =gLoadedSaveGame + 0x62
	ldrb r0, [r1]
	movs r1, #0xa
	bl __umodsi3
	adds r1, r7, #0
	adds r1, #0x3d
	strb r0, [r1]
	b _08096B0E
	.align 2, 0
_08096A90: .4byte 0x0000FFFF
_08096A94: .4byte gLoadedSaveGame
_08096A98: .4byte gLoadedSaveGame + 0x62
_08096A9C:
	lsls r4, r3, #1
	adds r4, r4, r3
	lsls r4, r4, #1
	mov r2, sl
	adds r5, r2, r4
	subs r1, r3, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08096B2C @ =gLoadedSaveGame
	adds r0, r0, r1
	mov r8, r0
	mov r6, r8
	adds r6, #0x75
	ldrb r0, [r6]
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r5]
	ldr r2, [sp, #4]
	adds r5, r2, r4
	ldrb r0, [r6]
	movs r1, #0xa
	bl __umodsi3
	strb r0, [r5]
	ldr r0, [sp, #8]
	adds r5, r0, r4
	adds r6, #1
	ldrb r0, [r6]
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r5]
	ldr r1, [sp, #0xc]
	adds r5, r1, r4
	ldrb r0, [r6]
	movs r1, #0xa
	bl __umodsi3
	strb r0, [r5]
	ldr r2, [sp, #0x10]
	adds r6, r2, r4
	mov r5, r8
	adds r5, #0x77
	ldrb r0, [r5]
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r6]
	ldr r0, [sp, #0x14]
	adds r4, r0, r4
	ldrb r0, [r5]
	movs r1, #0xa
	bl __umodsi3
	strb r0, [r4]
_08096B0E:
	ldr r1, [sp]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xa
	bhi _08096B1A
	b _08096928
_08096B1A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08096B2C: .4byte gLoadedSaveGame

	thumb_func_start sub_8096B30
sub_8096B30: @ 0x08096B30
	push {lr}
	mov ip, r0
	ldr r0, _08096C4C @ =gLoadedSaveGame
	ldr r1, _08096C50 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	mov r2, ip
	strb r0, [r2]
	movs r0, #0
	strh r1, [r2, #0x1c]
	strh r1, [r2, #0x28]
	strh r1, [r2, #0x2a]
	strb r0, [r2, #1]
	strb r0, [r2, #3]
	strb r0, [r2, #4]
	strh r1, [r2, #0x1e]
	strb r0, [r2, #5]
	strb r0, [r2, #2]
	strb r0, [r2, #0x19]
	strb r0, [r2, #0x1a]
	strb r0, [r2, #0xc]
	strb r0, [r2, #0x1b]
	adds r2, #6
_08096B60:
	adds r0, r2, r1
	strb r1, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #5
	bls _08096B60
	movs r1, #0
	mov r2, ip
	adds r2, #0xd
	movs r3, #0
_08096B76:
	adds r0, r2, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xa
	bls _08096B76
	movs r0, #0x8c
	lsls r0, r0, #1
	add r0, ip
	movs r3, #0xc8
	lsls r3, r3, #7
	str r3, [r0]
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, ip
	movs r2, #0x96
	lsls r2, r2, #7
	str r2, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0xb6
	lsls r0, r0, #7
	str r0, [r1]
	movs r0, #0x8a
	lsls r0, r0, #1
	add r0, ip
	str r2, [r0]
	movs r1, #0x90
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0xbc
	lsls r0, r0, #7
	str r0, [r1]
	movs r1, #0x92
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r1]
	movs r1, #0x96
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0x98
	lsls r0, r0, #7
	str r0, [r1]
	movs r0, #0
	mov r1, ip
	strh r0, [r1, #0x24]
	strh r0, [r1, #0x26]
	movs r1, #0x9c
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _08096C54 @ =0xFFFF7400
	str r0, [r1]
	movs r1, #0x9e
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _08096C58 @ =0xFFFFEA00
	str r0, [r1]
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, ip
	str r3, [r0]
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, ip
	movs r2, #0xf0
	lsls r2, r2, #7
	str r2, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0x8e
	lsls r0, r0, #8
	str r0, [r1]
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, ip
	str r2, [r0]
	movs r1, #0xa6
	lsls r1, r1, #1
	add r1, ip
	movs r0, #0xb8
	lsls r0, r0, #6
	str r0, [r1]
	movs r1, #0x82
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _08096C5C @ =0x06010000
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08096C4C: .4byte gLoadedSaveGame
_08096C50: .4byte 0x00000366
_08096C54: .4byte 0xFFFF7400
_08096C58: .4byte 0xFFFFEA00
_08096C5C: .4byte 0x06010000

	thumb_func_start sub_8096C60
sub_8096C60: @ 0x08096C60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	ldrb r5, [r0]
	movs r7, #0xa8
	lsls r7, r7, #1
	add r7, sl
	movs r6, #0x82
	lsls r6, r6, #1
	add r6, sl
	ldr r0, [r6]
	str r0, [r7]
	ldr r2, _08096DB4 @ =gUnknown_080D8BF4
	lsls r5, r5, #3
	adds r0, r2, #4
	adds r0, r5, r0
	ldr r1, [r0]
	lsls r1, r1, #5
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	adds r2, r5, r2
	ldrh r0, [r2]
	movs r1, #0
	mov sb, r1
	movs r4, #0
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	adds r0, #0x39
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	movs r0, #0x9e
	lsls r0, r0, #1
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r0, #0x10
	mov r8, r0
	mov r1, r8
	strb r1, [r7, #0x1c]
	mov r0, sb
	strb r0, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r7, _08096DB8 @ =0x00000E98
	add r7, sl
	ldr r0, [r6]
	str r0, [r7]
	ldr r2, _08096DBC @ =gUnknown_080D8C6C
	ldr r1, [r2, #4]
	lsls r1, r1, #5
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x10]
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	mov r1, r8
	strb r1, [r7, #0x1c]
	mov r0, sb
	strb r0, [r7, #0x1f]
	str r4, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r7, #0xec
	lsls r7, r7, #4
	add r7, sl
	ldr r0, _08096DC0 @ =0x06004000
	str r0, [r7]
	ldr r0, _08096DC4 @ =gUnknown_080D8C24
	adds r5, r5, r0
	ldrh r0, [r5]
	strh r0, [r7, #0xc]
	ldrb r0, [r5, #2]
	strb r0, [r7, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	strh r4, [r7, #0x10]
	movs r0, #8
	strh r0, [r7, #0x12]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	mov r1, r8
	strb r1, [r7, #0x1c]
	mov r0, sb
	strb r0, [r7, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sa2__sub_80036E0
	adds r0, r7, #0
	bl sub_80BE46C
	movs r6, #0x82
	lsls r6, r6, #1
	add r6, sl
	ldr r3, _08096DC8 @ =gUnknown_080D8C5C
	movs r5, #0
	ldr r0, [r3, #4]
	lsls r0, r0, #5
	mov r8, r0
_08096D7A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r1, sl
	adds r7, r1, r0
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r6]
	add r0, r8
	str r0, [r6]
	lsls r1, r4, #1
	mov r0, sl
	adds r0, #0x2c
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #0
	ldr r0, _08096DCC @ =0x0000FFFF
	cmp r2, r0
	beq _08096DE4
	cmp r2, #0xff
	bls _08096DD4
	strb r1, [r7, #0x1a]
	ldr r0, _08096DD0 @ =gUnknown_080D8C64
	ldrh r0, [r0]
	b _08096DD8
	.align 2, 0
_08096DB4: .4byte gUnknown_080D8BF4
_08096DB8: .4byte 0x00000E98
_08096DBC: .4byte gUnknown_080D8C6C
_08096DC0: .4byte 0x06004000
_08096DC4: .4byte gUnknown_080D8C24
_08096DC8: .4byte gUnknown_080D8C5C
_08096DCC: .4byte 0x0000FFFF
_08096DD0: .4byte gUnknown_080D8C64
_08096DD4:
	strb r1, [r7, #0x1a]
	ldrh r0, [r3]
_08096DD8:
	strh r0, [r7, #0xc]
	mov r1, sl
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
	b _08096DEA
_08096DE4:
	strb r5, [r7, #0x1a]
	ldrh r0, [r3]
	strh r0, [r7, #0xc]
_08096DEA:
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	lsls r0, r4, #3
	adds r0, #0x12
	strh r0, [r7, #0x10]
	movs r0, #0x45
	strh r0, [r7, #0x12]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r5, [r7, #0x1f]
	strh r5, [r7, #0x14]
	movs r0, #0x80
	str r0, [r7, #8]
	adds r0, r7, #0
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp, #8]
	cmp r4, #5
	bls _08096D7A
	movs r4, #0
	mov r0, sl
	adds r0, #0x38
	str r0, [sp]
	movs r5, #0x82
	lsls r5, r5, #1
	add r5, sl
	ldr r2, _08096EB4 @ =gUnknown_080D8C54
	movs r6, #0
	ldrb r1, [r2, #2]
	mov sb, r1
	ldr r0, [r2, #4]
	lsls r0, r0, #5
	mov r8, r0
_08096E38:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r1, sl
	adds r7, r1, r0
	ldr r0, [r5]
	str r0, [r7]
	ldr r0, [r5]
	add r0, r8
	str r0, [r5]
	ldrh r0, [r2]
	strh r0, [r7, #0xc]
	ldr r1, [sp]
	adds r0, r1, r4
	ldrb r0, [r0]
	add r0, sb
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	adds r0, #0x11
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r1, r4, #3
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0x8a
	lsls r0, r0, #1
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0xe]
	strh r6, [r7, #0x16]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	strh r6, [r7, #0x14]
	movs r0, #0x80
	str r0, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp, #4]
	cmp r4, #5
	bls _08096E38
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08096EB4: .4byte gUnknown_080D8C54

	thumb_func_start sub_8096EB8
sub_8096EB8: @ 0x08096EB8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov r8, r0
	ldr r6, _08096F6C @ =gBgCntRegs
	movs r0, #0
	mov sb, r0
	movs r4, #0
	ldr r0, _08096F70 @ =0x00000602
	strh r0, [r6]
	ldr r5, _08096F74 @ =gBgScrollRegs
	strh r4, [r5]
	strh r4, [r5, #2]
	ldr r0, _08096F78 @ =0x00000F38
	add r0, r8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08096F7C @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _08096F80 @ =0x0000015F
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r1, _08096F84 @ =0x00000F62
	add r1, r8
	mov r2, sb
	strb r2, [r1]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _08096F88 @ =0x00001007
	strh r0, [r6, #2]
	strh r4, [r5, #4]
	strh r4, [r5, #6]
	ldr r0, _08096F8C @ =0x00001E0D
	strh r0, [r6, #4]
	strh r4, [r5, #8]
	strh r4, [r5, #0xa]
	ldr r0, _08096F90 @ =0x00000F78
	add r0, r8
	ldr r1, _08096F94 @ =0x0600C000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _08096F98 @ =0x0600F000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0xb2
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r1, #0x1e
	strh r1, [r0, #0x26]
	movs r1, #0x14
	strh r1, [r0, #0x28]
	ldr r1, _08096F9C @ =0x00000FA2
	add r1, r8
	mov r2, sb
	strb r2, [r1]
	movs r1, #2
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r1, _08096FA0 @ =gWinRegs
	mov r2, r8
	ldrh r0, [r2, #0x1e]
	lsrs r0, r0, #8
	ldr r2, _08096FA4 @ =0x00003C3C
	adds r0, r0, r2
	strh r0, [r1, #4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08096F6C: .4byte gBgCntRegs
_08096F70: .4byte 0x00000602
_08096F74: .4byte gBgScrollRegs
_08096F78: .4byte 0x00000F38
_08096F7C: .4byte 0x06003000
_08096F80: .4byte 0x0000015F
_08096F84: .4byte 0x00000F62
_08096F88: .4byte 0x00001007
_08096F8C: .4byte 0x00001E0D
_08096F90: .4byte 0x00000F78
_08096F94: .4byte 0x0600C000
_08096F98: .4byte 0x0600F000
_08096F9C: .4byte 0x00000FA2
_08096FA0: .4byte gWinRegs
_08096FA4: .4byte 0x00003C3C

	thumb_func_start sub_8096FA8
sub_8096FA8: @ 0x08096FA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08097034 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrb r4, [r3, #0x19]
	adds r0, r4, #3
	cmp r4, r0
	bge _080970AA
	ldr r0, _08097038 @ =0x0300003E
	adds r0, r1, r0
	str r0, [sp]
	ldr r7, _0809703C @ =0x03000104
	adds r7, r1, r7
	str r7, [sp, #8]
	ldr r6, _08097040 @ =gUnknown_080D8C5C
_08096FD6:
	movs r5, #0
	lsls r0, r4, #4
	lsls r1, r4, #1
	mov sb, r1
	adds r7, r4, #1
	mov sl, r7
	subs r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _08097044 @ =0x000008F8
	adds r0, r0, r1
	adds r0, r0, r3
	mov r8, r0
_08096FEE:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	mov r7, r8
	adds r2, r7, r0
	ldr r1, [sp, #8]
	ldr r0, [r1]
	str r0, [r2]
	ldr r1, [r6, #4]
	lsls r1, r1, #5
	ldr r7, [sp, #8]
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	lsls r1, r5, #1
	mov r7, sb
	adds r0, r7, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [sp]
	adds r1, r0, r1
	ldrh r1, [r1]
	adds r0, r1, #0
	ldr r7, _08097048 @ =0x0000FFFF
	cmp r0, r7
	beq _0809705C
	cmp r0, #0xff
	bls _08097050
	ldrb r0, [r6, #2]
	adds r0, r1, r0
	strb r0, [r2, #0x1a]
	ldr r0, _0809704C @ =gUnknown_080D8C64
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	b _08097064
	.align 2, 0
_08097034: .4byte gCurTask
_08097038: .4byte 0x0300003E
_0809703C: .4byte 0x03000104
_08097040: .4byte gUnknown_080D8C5C
_08097044: .4byte 0x000008F8
_08097048: .4byte 0x0000FFFF
_0809704C: .4byte gUnknown_080D8C64
_08097050:
	ldrb r0, [r6, #2]
	adds r0, r1, r0
	strb r0, [r2, #0x1a]
	ldrh r0, [r6]
	strh r0, [r2, #0xc]
	b _08097064
_0809705C:
	ldrh r0, [r6]
	strh r0, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
_08097064:
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	lsls r0, r5, #3
	adds r0, #0x12
	movs r1, #0
	strh r0, [r2, #0x10]
	movs r0, #0x45
	strh r0, [r2, #0x12]
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r1, [r2, #0x1f]
	movs r0, #0x40
	strh r0, [r2, #0x14]
	movs r0, #0x82
	lsls r0, r0, #6
	str r0, [r2, #8]
	adds r0, r2, #0
	str r3, [sp, #4]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp, #4]
	cmp r5, #5
	bls _08096FEE
	mov r7, sl
	lsls r0, r7, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r3, #0x19]
	adds r0, #3
	cmp r4, r0
	blt _08096FD6
_080970AA:
	ldrb r0, [r3, #0x19]
	adds r0, r4, r0
	strb r0, [r3, #0x19]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _080970C4
	movs r0, #0
	strb r0, [r3, #0x19]
	ldr r0, _080970D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080970D8 @ =sub_80970DC
	str r0, [r1, #8]
_080970C4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080970D4: .4byte gCurTask
_080970D8: .4byte sub_80970DC

	thumb_func_start sub_80970DC
sub_80970DC: @ 0x080970DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _080971E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrb r4, [r6, #0x19]
	adds r0, r4, #3
	cmp r4, r0
	bge _080971C0
	ldr r0, _080971EC @ =0x030000C2
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r2, _080971F0 @ =0x03000104
	adds r2, r1, r2
	str r2, [sp, #0x10]
	ldr r7, _080971F4 @ =gUnknown_080D8C54
	mov sl, r7
	mov r0, sl
	ldrb r1, [r0, #2]
	mov r0, sp
	strb r1, [r0]
_08097114:
	movs r5, #0
	lsls r2, r4, #1
	mov sb, r2
	adds r7, r4, #1
	str r7, [sp, #8]
	lsls r3, r4, #4
	subs r0, r3, r4
	lsls r0, r0, #4
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r6
	mov r8, r0
_0809712E:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	add r0, r8
	ldr r2, [sp, #0x10]
	ldr r1, [r2]
	str r1, [r0]
	mov r7, sl
	ldr r2, [r7, #4]
	lsls r2, r2, #5
	ldr r7, [sp, #0x10]
	ldr r1, [r7]
	adds r1, r1, r2
	str r1, [r7]
	mov r2, sl
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	mov r7, sb
	adds r1, r7, r4
	lsls r1, r1, #1
	adds r1, r5, r1
	ldr r2, [sp, #4]
	adds r1, r2, r1
	ldrb r1, [r1]
	mov r7, sp
	ldrb r7, [r7]
	adds r1, r7, r1
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r6, r2
	ldr r1, [r1]
	asrs r1, r1, #8
	lsls r2, r5, #3
	adds r1, r1, r2
	strh r1, [r0, #0x10]
	movs r7, #0x8a
	lsls r7, r7, #1
	adds r1, r6, r7
	ldr r1, [r1]
	asrs r1, r1, #8
	adds r1, r1, r3
	strh r1, [r0, #0x12]
	movs r1, #0
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r2, #0
	strb r2, [r0, #0x1f]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	movs r1, #0x82
	lsls r1, r1, #6
	str r1, [r0, #8]
	str r3, [sp, #0xc]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp, #0xc]
	cmp r5, #5
	bls _0809712E
	ldr r7, [sp, #8]
	lsls r0, r7, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r6, #0x19]
	adds r0, #3
	cmp r4, r0
	blt _08097114
_080971C0:
	ldrb r0, [r6, #0x19]
	adds r0, r4, r0
	strb r0, [r6, #0x19]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _080971D6
	ldr r0, _080971E8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080971F8 @ =sub_80971FC
	str r0, [r1, #8]
_080971D6:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080971E8: .4byte gCurTask
_080971EC: .4byte 0x030000C2
_080971F0: .4byte 0x03000104
_080971F4: .4byte gUnknown_080D8C54
_080971F8: .4byte sub_80971FC

	thumb_func_start sub_80971FC
sub_80971FC: @ 0x080971FC
	push {r4, r5, r6, r7, lr}
	ldr r6, _0809728C @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r5, [r4, #0x2a]
	cmp r5, #0
	bne _08097240
	ldr r3, _08097290 @ =gBldRegs
	ldr r0, _08097294 @ =0x00003FFF
	strh r0, [r3]
	ldr r2, _08097298 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809729C @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _080972A0 @ =0x00003336
	strh r0, [r1, #8]
	strh r5, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x28]
	movs r0, #1
	strh r0, [r4, #0x2a]
_08097240:
	adds r0, r4, #0
	bl sub_8097710
	adds r0, r4, #0
	bl sub_8097BB4
	adds r0, r4, #0
	bl sub_8097BE8
	adds r0, r4, #0
	bl sub_8097C28
	ldr r2, _0809729C @ =gWinRegs
	ldr r1, _080972A4 @ =0x00003C3C
	adds r0, r1, #0
	ldrh r3, [r4, #0x1e]
	adds r0, r0, r3
	movs r3, #0
	strh r0, [r2, #4]
	ldr r1, _08097290 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080972B4
	ldrh r0, [r4, #0x28]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r7, _080972A8 @ =0xFFFFFF00
	adds r0, r7, #0
	ldrh r1, [r4, #0x28]
	adds r0, r0, r1
	strh r0, [r4, #0x28]
	ldr r1, _080972AC @ =gBgScrollRegs
	ldr r0, _080972B0 @ =0x0000FF9C
	strh r0, [r1, #4]
	adds r0, #0x36
	strh r0, [r1, #6]
	b _080972DA
	.align 2, 0
_0809728C: .4byte gCurTask
_08097290: .4byte gBldRegs
_08097294: .4byte 0x00003FFF
_08097298: .4byte gDispCnt
_0809729C: .4byte gWinRegs
_080972A0: .4byte 0x00003336
_080972A4: .4byte 0x00003C3C
_080972A8: .4byte 0xFFFFFF00
_080972AC: .4byte gBgScrollRegs
_080972B0: .4byte 0x0000FF9C
_080972B4:
	strh r0, [r1, #4]
	ldr r0, _080972E0 @ =0x00003316
	strh r0, [r2, #8]
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r1, #2]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r2, _080972E4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, [r6]
	ldr r0, _080972E8 @ =sub_809738C
	str r0, [r1, #8]
_080972DA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080972E0: .4byte 0x00003316
_080972E4: .4byte gDispCnt
_080972E8: .4byte sub_809738C

	thumb_func_start sub_80972EC
sub_80972EC: @ 0x080972EC
	push {r4, r5, r6, lr}
	ldr r5, _0809735C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _08097328
	ldr r1, _08097360 @ =gBldRegs
	movs r3, #0
	ldr r0, _08097364 @ =0x00003FFF
	strh r0, [r1]
	ldr r2, _08097368 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0xc0
	lsls r6, r6, #7
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809736C @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _08097370 @ =0x00003332
	strh r0, [r1, #8]
	strh r3, [r1, #0xa]
	strh r3, [r4, #0x28]
	strh r3, [r4, #0x2a]
_08097328:
	adds r0, r4, #0
	bl sub_8097710
	adds r0, r4, #0
	bl sub_8097BB4
	adds r0, r4, #0
	bl sub_8097BE8
	adds r0, r4, #0
	bl sub_8097C28
	ldr r1, _08097360 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _08097374
	ldrh r0, [r4, #0x28]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r6, [r4, #0x28]
	adds r0, r0, r6
	strh r0, [r4, #0x28]
	b _08097384
	.align 2, 0
_0809735C: .4byte gCurTask
_08097360: .4byte gBldRegs
_08097364: .4byte 0x00003FFF
_08097368: .4byte gDispCnt
_0809736C: .4byte gWinRegs
_08097370: .4byte 0x00003332
_08097374:
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0xa
	bl LaunchOptionsMenu
	ldr r0, [r5]
	bl TaskDestroy
_08097384:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809738C
sub_809738C: @ 0x0809738C
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r7, _080973F8 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_8097710
	adds r0, r4, #0
	bl sub_8097BB4
	adds r0, r4, #0
	bl sub_8097830
	cmp r0, #1
	bne _080973B4
	movs r5, #1
_080973B4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_809789C
	cmp r0, #1
	bne _080973C6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080973C6:
	adds r0, r4, #0
	bl sub_8097C28
	adds r0, r4, #0
	movs r1, #0
	bl sub_8097958
	ldr r2, _080973FC @ =gWinRegs
	ldr r1, _08097400 @ =0x03000134
	adds r0, r6, r1
	ldr r1, [r0]
	asrs r0, r1, #8
	adds r1, r1, r0
	ldrh r0, [r4, #0x1e]
	lsrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r5, #2
	bne _080973F2
	ldr r1, [r7]
	ldr r0, _08097404 @ =sub_8097474
	str r0, [r1, #8]
_080973F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080973F8: .4byte gCurTask
_080973FC: .4byte gWinRegs
_08097400: .4byte 0x03000134
_08097404: .4byte sub_8097474

	thumb_func_start sub_8097408
sub_8097408: @ 0x08097408
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, _08097460 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8097710
	adds r0, r4, #0
	bl sub_8097BB4
	adds r0, r4, #0
	movs r1, #1
	bl sub_809789C
	cmp r0, #1
	bne _08097432
	movs r6, #1
_08097432:
	adds r0, r4, #0
	bl sub_8097C28
	ldr r2, _08097464 @ =gWinRegs
	ldr r1, _08097468 @ =0x03000134
	adds r0, r5, r1
	ldr r1, [r0]
	asrs r0, r1, #8
	adds r1, r1, r0
	ldrh r0, [r4, #0x1e]
	lsrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r6, #0
	beq _0809745A
	ldr r0, _0809746C @ =0x00003332
	strh r0, [r2, #8]
	ldr r1, [r7]
	ldr r0, _08097470 @ =sub_80972EC
	str r0, [r1, #8]
_0809745A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08097460: .4byte gCurTask
_08097464: .4byte gWinRegs
_08097468: .4byte 0x03000134
_0809746C: .4byte 0x00003332
_08097470: .4byte sub_80972EC

	thumb_func_start sub_8097474
sub_8097474: @ 0x08097474
	push {r4, r5, lr}
	ldr r5, _080974C0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8097710
	adds r0, r4, #0
	bl sub_8097BE8
	adds r0, r4, #0
	bl sub_8097BB4
	adds r0, r4, #0
	bl sub_8097C28
	adds r0, r4, #0
	movs r1, #0
	bl sub_8097958
	adds r0, r4, #0
	bl sub_8097ACC
	ldr r0, _080974C4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080974CC
	ldr r1, [r5]
	ldr r0, _080974C8 @ =sub_8097408
	b _08097520
	.align 2, 0
_080974C0: .4byte gCurTask
_080974C4: .4byte gPressedKeys
_080974C8: .4byte sub_8097408
_080974CC:
	ldr r1, _080974F4 @ =gRepeatedKeys
	ldrh r3, [r1]
	movs r0, #0xc0
	ands r0, r3
	cmp r0, #0
	beq _08097522
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _080974F8
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _080974F8
	movs r0, #2
	strb r0, [r4, #1]
	strb r2, [r4, #0x19]
	strb r2, [r4, #0x1a]
	ldr r1, [r5]
	b _0809751E
	.align 2, 0
_080974F4: .4byte gRepeatedKeys
_080974F8:
	ldrh r1, [r1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08097522
	ldrb r0, [r4, #0x1b]
	ldrb r1, [r4, #2]
	subs r0, r0, r1
	cmp r0, #5
	ble _08097522
	cmp r1, #5
	bhi _08097522
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #1]
	strb r1, [r4, #0x19]
	strb r1, [r4, #0x1a]
	ldr r0, _08097528 @ =gCurTask
	ldr r1, [r0]
_0809751E:
	ldr r0, _0809752C @ =sub_8097530
_08097520:
	str r0, [r1, #8]
_08097522:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08097528: .4byte gCurTask
_0809752C: .4byte sub_8097530

	thumb_func_start sub_8097530
sub_8097530: @ 0x08097530
	push {r4, r5, r6, lr}
	ldr r0, _080975A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_8097710
	adds r0, r4, #0
	bl sub_8097BB4
	adds r0, r4, #0
	bl sub_8097BE8
	adds r0, r4, #0
	bl sub_8097ACC
	adds r0, r4, #0
	bl sub_8097C28
	adds r0, r4, #0
	movs r1, #1
	bl sub_8097958
	ldrb r1, [r4, #1]
	adds r0, r4, #0
	bl sub_8097B54
	cmp r0, #1
	bne _080975F6
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080975B0
	ldrb r0, [r4, #2]
	adds r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _08097588
	movs r0, #6
	strb r0, [r4, #2]
_08097588:
	ldrb r5, [r4, #6]
	movs r1, #0
	ldr r0, _080975AC @ =0x03000006
	adds r3, r6, r0
_08097590:
	adds r2, r3, r1
	adds r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #4
	bls _08097590
	strb r5, [r4, #0xb]
	movs r0, #6
	b _080975E4
	.align 2, 0
_080975A8: .4byte gCurTask
_080975AC: .4byte 0x03000006
_080975B0:
	cmp r0, #2
	bne _080975E6
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080975C6
	movs r0, #0
	strb r0, [r4, #2]
_080975C6:
	ldrb r5, [r4, #0xb]
	movs r1, #5
	ldr r0, _080975FC @ =0x03000006
	adds r3, r6, r0
_080975CE:
	adds r2, r3, r1
	subs r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	bne _080975CE
	strb r5, [r4, #6]
	movs r0, #1
_080975E4:
	strb r0, [r4, #0x18]
_080975E6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8097608
	ldr r0, _08097600 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08097604 @ =sub_8097474
	str r0, [r1, #8]
_080975F6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080975FC: .4byte 0x03000006
_08097600: .4byte gCurTask
_08097604: .4byte sub_8097474

	thumb_func_start sub_8097608
sub_8097608: @ 0x08097608
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r4, #0
	ldrb r0, [r6, #0x18]
	mov sl, r0
	ldrb r1, [r6, #2]
	adds r0, r1, r0
	cmp r0, #0xb
	bhi _08097634
	mov r0, sl
	adds r0, #0xff
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08097634:
	adds r1, r6, #0
	adds r1, #0xd
	adds r0, r1, r5
	strb r4, [r0]
	movs r7, #0
	str r1, [sp, #4]
_08097640:
	ldrb r1, [r6, #2]
	mov r2, sl
	adds r0, r1, r2
	cmp r0, #0xb
	bhi _080976EC
	mov r0, sl
	adds r0, #0xff
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp]
	lsls r3, r0, #4
	subs r1, r3, r0
	lsls r1, r1, #4
	ldr r2, _08097690 @ =0x000008F8
	adds r1, r1, r2
	adds r1, r6, r1
	lsls r2, r7, #2
	adds r0, r2, r7
	lsls r0, r0, #3
	adds r4, r1, r0
	lsls r1, r7, #1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x3e
	adds r1, r0, r1
	ldrh r0, [r1]
	mov r8, r3
	mov sb, r2
	ldr r2, _08097694 @ =0x0000FFFF
	cmp r0, r2
	beq _080976B6
	cmp r0, #0xff
	bls _0809769C
	ldr r0, _08097698 @ =gUnknown_080D8C64
	b _0809769E
	.align 2, 0
_08097690: .4byte 0x000008F8
_08097694: .4byte 0x0000FFFF
_08097698: .4byte gUnknown_080D8C64
_0809769C:
	ldr r0, _08097708 @ =gUnknown_080D8C5C
_0809769E:
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrh r0, [r1]
	strb r0, [r4, #0x1a]
	ldr r0, [sp, #4]
	adds r1, r0, r5
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080976B6:
	mov r2, r8
	ldr r0, [sp]
	subs r1, r2, r0
	lsls r1, r1, #4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r1, r6, r1
	mov r2, sb
	adds r0, r2, r7
	lsls r0, r0, #3
	adds r4, r1, r0
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r7, r0
	adds r1, r6, #0
	adds r1, #0xc2
	adds r1, r1, r0
	ldrb r0, [r1]
	ldr r1, _0809770C @ =gUnknown_080D8C54
	ldrb r1, [r1, #2]
	adds r0, r0, r1
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080976EC:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _08097640
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08097708: .4byte gUnknown_080D8C5C
_0809770C: .4byte gUnknown_080D8C54

	thumb_func_start sub_8097710
sub_8097710: @ 0x08097710
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldrh r1, [r4, #0x1e]
	lsrs r1, r1, #8
	ldr r3, _08097794 @ =gFlags
	ldr r0, [r3]
	movs r2, #4
	orrs r0, r2
	str r0, [r3]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r1, r5, r1
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	mov ip, r0
	movs r2, #0xe8
	lsls r2, r2, #0x18
	adds r1, r1, r2
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	ldr r1, _08097798 @ =gHBlankCopyTarget
	ldr r0, _0809779C @ =0x04000040
	str r0, [r1]
	ldr r1, _080977A0 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080977A4 @ =gBgOffsetsHBlankPrimary
	ldr r7, [r0]
	movs r3, #0
	ldr r6, _080977A8 @ =gUnknown_080D8C74
	mov sb, r3
	movs r2, #2
	mov r8, r2
	adds r0, r4, #0
	adds r0, #0x1e
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xfe
	lsls r0, r0, #0x10
	mov sl, r0
_08097782:
	adds r0, r3, #0
	subs r0, #0x1e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080977AC
	movs r2, #0x78
	movs r1, #0x79
	b _0809780E
	.align 2, 0
_08097794: .4byte gFlags
_08097798: .4byte gHBlankCopyTarget
_0809779C: .4byte 0x04000040
_080977A0: .4byte gHBlankCopySize
_080977A4: .4byte gBgOffsetsHBlankPrimary
_080977A8: .4byte gUnknown_080D8C74
_080977AC:
	cmp r3, r5
	blo _080977D8
	adds r0, r5, #0
	adds r0, #0xc
	cmp r3, r0
	bge _080977D8
	subs r1, r3, r5
	lsls r1, r1, #2
	mov r2, sb
	adds r0, r2, r1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	add r1, r8
	adds r1, r1, r6
	ldrh r0, [r1]
	adds r0, r4, r0
	adds r0, #0x2b
	lsls r0, r0, #0x10
	b _0809780C
_080977D8:
	mov r0, ip
	subs r0, #0xc
	cmp r3, r0
	blt _08097806
	cmp r3, ip
	bhs _08097806
	ldr r0, [sp]
	subs r1, r3, r0
	lsls r1, r1, #2
	mov r2, sb
	adds r0, r2, r1
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	add r1, r8
	adds r1, r1, r6
	ldrh r0, [r1]
	adds r0, r4, r0
	adds r0, #0x2b
	lsls r0, r0, #0x10
	b _0809780C
_08097806:
	ldr r0, [sp, #4]
	lsrs r2, r0, #0x10
	mov r0, sl
_0809780C:
	lsrs r1, r0, #0x10
_0809780E:
	lsls r0, r2, #8
	adds r0, r1, r0
	strh r0, [r7]
	adds r7, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x9f
	bls _08097782
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8097830
sub_8097830: @ 0x08097830
	push {r4, lr}
	adds r3, r0, #0
	ldrb r4, [r3, #5]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r1, _08097870 @ =gUnknown_080D6ED4
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	cmp r4, #0
	bne _08097854
	ldr r0, _08097874 @ =0x000009FF
	cmp r1, r0
	bgt _08097866
_08097854:
	cmp r4, #1
	bne _0809787C
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r0]
	ldr r0, _08097878 @ =0xFFFFF600
	cmp r1, r0
	bgt _0809787C
_08097866:
	ldrb r0, [r3, #5]
	adds r0, #1
	strb r0, [r3, #5]
	b _08097894
	.align 2, 0
_08097870: .4byte gUnknown_080D6ED4
_08097874: .4byte 0x000009FF
_08097878: .4byte 0xFFFFF600
_0809787C:
	cmp r4, #2
	bne _08097894
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	cmp r0, #0
	ble _08097894
	movs r0, #0
	str r0, [r2]
	movs r0, #1
	b _08097896
_08097894:
	movs r0, #0
_08097896:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_809789C
sub_809789C: @ 0x0809789C
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r3, #0
	movs r5, #0xb
	cmp r1, #0
	bne _080978F8
	ldrh r0, [r2, #0x1e]
	ldr r1, _080978CC @ =0x00004FFF
	cmp r0, r1
	bhi _080978D0
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r0, r4
	strh r0, [r2, #0x1e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _080978D2
	movs r0, #0xa0
	lsls r0, r0, #7
	strh r0, [r2, #0x1e]
	b _080978D2
	.align 2, 0
_080978CC: .4byte 0x00004FFF
_080978D0:
	movs r3, #1
_080978D2:
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r1, [r2]
	movs r4, #0xf0
	lsls r4, r4, #6
	cmp r1, r4
	ble _08097940
	movs r0, #1
	lsls r0, r5
	subs r0, r1, r0
	str r0, [r2]
	ldr r1, _080978F4 @ =0x00003BFF
	cmp r0, r1
	bgt _08097946
	str r4, [r2]
	b _08097946
	.align 2, 0
_080978F4: .4byte 0x00003BFF
_080978F8:
	ldrh r0, [r2, #0x1e]
	cmp r0, #0
	beq _08097918
	ldr r1, _08097910 @ =0xFFFFF000
	adds r0, r0, r1
	strh r0, [r2, #0x1e]
	lsls r0, r0, #0x10
	ldr r1, _08097914 @ =0x4FFF0000
	cmp r0, r1
	bls _0809791A
	strh r3, [r2, #0x1e]
	b _0809791A
	.align 2, 0
_08097910: .4byte 0xFFFFF000
_08097914: .4byte 0x4FFF0000
_08097918:
	movs r3, #1
_0809791A:
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r1, r2, r4
	ldr r2, [r1]
	ldr r0, _0809793C @ =0x000063FF
	cmp r2, r0
	bgt _08097940
	movs r0, #1
	lsls r0, r5
	adds r0, r2, r0
	str r0, [r1]
	movs r2, #0xc8
	lsls r2, r2, #7
	cmp r0, r2
	ble _08097946
	str r2, [r1]
	b _08097946
	.align 2, 0
_0809793C: .4byte 0x000063FF
_08097940:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_08097946:
	cmp r3, #2
	bne _0809794E
	movs r0, #1
	b _08097950
_0809794E:
	movs r0, #0
_08097950:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8097958
sub_8097958: @ 0x08097958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	lsls r1, r1, #0x18
	movs r0, #5
	str r0, [sp]
	cmp r1, #0
	beq _08097974
	movs r1, #6
	str r1, [sp]
_08097974:
	movs r2, #0
	mov sb, r2
	b _08097AAC
_0809797A:
	mov r1, sb
	cmp r1, #0
	beq _0809799C
	ldr r2, _08097998 @ =gLoadedSaveGame
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x74
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	b _0809799E
	.align 2, 0
_08097998: .4byte gLoadedSaveGame
_0809799C:
	movs r0, #1
_0809799E:
	mov r2, sb
	adds r2, #1
	str r2, [sp, #8]
	cmp r0, #0
	beq _08097AA4
	movs r7, #0
	adds r0, r5, #6
	str r0, [sp, #4]
	mov r1, sb
	lsls r1, r1, #4
	mov sl, r1
	adds r2, r5, #0
	adds r2, #0xd
	str r2, [sp, #0xc]
_080979BA:
	lsls r0, r7, #2
	mov r8, r0
	mov r1, sb
	cmp r1, #0
	bne _08097A16
	adds r0, r0, r7
	lsls r6, r0, #3
	movs r2, #0xbc
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r4, r5, r0
	movs r0, #0x4b
	strh r0, [r4, #0x12]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, _08097AC4 @ =gUnknown_080D8CD4
	adds r1, r7, r1
	asrs r0, r0, #8
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r2, [r5, #0xc]
	cmp r7, r2
	bhs _08097A16
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r6, r1
	adds r4, r5, r0
	lsls r1, r7, #3
	lsls r0, r7, #1
	adds r0, #0x12
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	movs r0, #0x45
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_08097A16:
	ldr r3, [sp, #4]
	add r3, sb
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r5, r0
	mov r2, r8
	adds r1, r2, r7
	lsls r2, r1, #3
	adds r4, r0, r2
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, _08097AC4 @ =gUnknown_080D8CD4
	adds r1, r7, r1
	asrs r0, r0, #8
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r0, [r6]
	asrs r0, r0, #8
	add r0, sl
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl DisplaySprite
	ldrb r0, [r5, #2]
	add r0, sb
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldrb r0, [r0]
	cmp r7, r0
	bhs _08097A9A
	ldrb r1, [r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08097AC8 @ =0x000008F8
	adds r0, r0, r1
	adds r0, r5, r0
	adds r4, r0, r2
	lsls r1, r7, #3
	lsls r0, r7, #1
	adds r0, #0x12
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	add r0, sl
	subs r0, #6
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_08097A9A:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #5
	bls _080979BA
_08097AA4:
	ldr r2, [sp, #8]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_08097AAC:
	ldr r0, [sp]
	cmp sb, r0
	bhs _08097AB4
	b _0809797A
_08097AB4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08097AC4: .4byte gUnknown_080D8CD4
_08097AC8: .4byte 0x000008F8

	thumb_func_start sub_8097ACC
sub_8097ACC: @ 0x08097ACC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0
	ldr r0, _08097B4C @ =0x00000E98
	adds r4, r5, r0
	ldrb r0, [r5, #0x1b]
	ldrb r1, [r5, #2]
	subs r0, r0, r1
	cmp r0, #5
	ble _08097B12
	cmp r1, #5
	bhi _08097B12
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	adds r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r2, #1
_08097B12:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _08097B46
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	adds r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _08097B50 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	cmp r2, #0
	bne _08097B40
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_08097B40:
	adds r0, r4, #0
	bl DisplaySprite
_08097B46:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08097B4C: .4byte 0x00000E98
_08097B50: .4byte 0xFFFFF7FF

	thumb_func_start sub_8097B54
sub_8097B54: @ 0x08097B54
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #1]
	cmp r1, #1
	bne _08097B84
	ldrb r0, [r2, #2]
	cmp r0, #6
	bhi _08097BAE
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, [r2]
	ldr r1, _08097B7C @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08097B80 @ =0x00003AFF
	cmp r0, r1
	ble _08097BA8
	b _08097BA4
	.align 2, 0
_08097B7C: .4byte 0xFFFFFE00
_08097B80: .4byte 0x00003AFF
_08097B84:
	cmp r1, #2
	bne _08097BAE
	ldrb r0, [r2, #2]
	cmp r0, #6
	bhi _08097BAE
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r2, r2, r0
	lsls r0, r1, #8
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	movs r0, #0xb6
	lsls r0, r0, #7
	cmp r1, r0
	bgt _08097BA8
_08097BA4:
	movs r0, #0
	b _08097BB0
_08097BA8:
	movs r0, #0x96
	lsls r0, r0, #7
	str r0, [r2]
_08097BAE:
	movs r0, #1
_08097BB0:
	pop {r1}
	bx r1

	thumb_func_start sub_8097BB4
sub_8097BB4: @ 0x08097BB4
	ldr r2, _08097BE0 @ =0xFFFFFF00
	adds r1, r2, #0
	ldrh r3, [r0, #0x24]
	adds r1, r1, r3
	strh r1, [r0, #0x24]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	ldrh r3, [r0, #0x26]
	adds r2, r2, r3
	strh r2, [r0, #0x26]
	ldr r0, _08097BE4 @ =gBgScrollRegs
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	rsbs r1, r1, #0
	strh r1, [r0]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x18
	rsbs r2, r2, #0
	strh r2, [r0, #2]
	bx lr
	.align 2, 0
_08097BE0: .4byte 0xFFFFFF00
_08097BE4: .4byte gBgScrollRegs

	thumb_func_start sub_8097BE8
sub_8097BE8: @ 0x08097BE8
	push {lr}
	adds r3, r0, #0
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	adds r0, #0x40
	str r0, [r2]
	movs r1, #0x93
	lsls r1, r1, #8
	cmp r0, r1
	ble _08097C06
	movs r0, #0x8e
	lsls r0, r0, #8
	str r0, [r2]
_08097C06:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	subs r0, #0x40
	str r0, [r2]
	ldr r1, _08097C24 @ =0x000028FF
	cmp r0, r1
	bgt _08097C1E
	movs r0, #0xb8
	lsls r0, r0, #6
	str r0, [r2]
_08097C1E:
	pop {r0}
	bx r0
	.align 2, 0
_08097C24: .4byte 0x000028FF

	thumb_func_start sub_8097C28
sub_8097C28: @ 0x08097C28
	push {lr}
	adds r2, r0, #0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r1, r2, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	adds r3, #4
	adds r1, r2, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_8097C50
sub_8097C50: @ 0x08097C50
	bx lr
	.align 2, 0
