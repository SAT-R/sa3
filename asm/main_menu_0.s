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
	ldr r0, _08087324 @ =Task_MainMenuInit
	movs r1, #0xfc
	lsls r1, r1, #2 @ 0x3F0
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08087328 @ =TaskDestructor_MainMenu
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
	bl CopyObjPaletteMasked
	b _08087370
	.align 2, 0
_0808731C: .4byte gDispCnt
_08087320: .4byte 0x00001741
_08087324: .4byte Task_MainMenuInit
_08087328: .4byte TaskDestructor_MainMenu
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
@ Called once whenever a "Main Menu sub-menu" is created.
	thumb_func_start Task_MainMenuInit
Task_MainMenuInit: @ 0x08089F54
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

	thumb_func_start TaskDestructor_MainMenu
TaskDestructor_MainMenu: @ 0x0808A1AC
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
	ldr r1, _0808A220 @ =TaskDestructor_MainMenu
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
_0808A220: .4byte TaskDestructor_MainMenu
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

    @ This was probably MEANT to be the DTor of sub_808A1B0 ?
    thumb_func_start sub_808A258
sub_808A258:
	bx lr
    .align 2 , 0
