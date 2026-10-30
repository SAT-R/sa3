.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.else

	thumb_func_start sub_1C0_8080548
sub_1C0_8080548: @ 0x08080548
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	ldr r1, _08080574 @ =gPlayers
	ldrh r0, [r0, #0xc]
	cmp r0, #0x1e
	bne _08080560
	b _0808066C
_08080560:
	cmp r0, #0x1e
	bgt _08080578
	cmp r0, #0xa
	beq _08080592
	cmp r0, #0xa
	bgt _0808056E
	b _0808087A
_0808056E:
	cmp r0, #0x14
	beq _08080600
	b _0808087A
	.align 2, 0
_08080574: .4byte gPlayers
_08080578:
	cmp r0, #0x64
	bne _0808057E
	b _080806F4
_0808057E:
	cmp r0, #0x64
	bgt _0808058A
	cmp r0, #0x28
	bne _08080588
	b _080806B0
_08080588:
	b _0808087A
_0808058A:
	cmp r0, #0x6e
	bne _08080590
	b _080807AC
_08080590:
	b _0808087A
_08080592:
	movs r5, #0
	movs r0, #0x1c
	add r0, ip
	mov sb, r0
	movs r2, #0x20
	add r2, ip
	mov r8, r2
	ldr r7, [r1, #0x14]
	mov r6, ip
	adds r6, #0x24
	movs r3, #0x28
	add r3, ip
	mov sl, r3
	ldr r4, _080805F4 @ =gUnknown_080D5CD4
_080805AE:
	lsls r2, r5, #2
	adds r2, r2, r5
	lsls r2, r2, #2
	mov r0, sb
	adds r1, r0, r2
	ldr r3, _080805F8 @ =gCamera
	ldr r0, [r3]
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r1]
	mov r1, r8
	adds r0, r1, r2
	str r7, [r0]
	adds r3, r6, r2
	lsls r1, r5, #3
	adds r0, r1, r4
	ldr r0, [r0]
	str r0, [r3]
	add r2, sl
	ldr r3, _080805FC @ =gUnknown_080D5CD4+4
	adds r1, r1, r3
	ldr r0, [r1]
	str r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _080805AE
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #1]
	movs r0, #0x14
	strh r0, [r1, #0xc]
	b _0808087A
	.align 2, 0
_080805F4: .4byte gUnknown_080D5CD4
_080805F8: .4byte gCamera
_080805FC: .4byte gUnknown_080D5CD4+4
_08080600:
	movs r5, #0
	movs r6, #0
	movs r2, #0x20
	add r2, ip
	mov r8, r2
_0808060A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r3, r0, #2
	mov r0, r8
	adds r4, r0, r3
	ldr r0, [r4]
	asrs r0, r0, #8
	cmp r0, #0xbb
	ble _0808062A
	movs r0, #0xbc
	lsls r0, r0, #8
	str r0, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _08080650
_0808062A:
	mov r2, ip
	adds r2, #0x1c
	adds r2, r2, r3
	mov r0, ip
	adds r0, #0x24
	adds r0, r0, r3
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	mov r0, ip
	adds r0, #0x28
	adds r0, r0, r3
	ldr r1, [r0]
	adds r1, #0x2a
	str r1, [r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
_08080650:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0808060A
	cmp r6, #7
	beq _08080660
	b _0808087A
_08080660:
	movs r0, #0xb4
	mov r1, ip
	strh r0, [r1, #0xe]
	movs r0, #0x1e
	strh r0, [r1, #0xc]
	b _0808087A
_0808066C:
	mov r2, ip
	ldrh r0, [r2, #0xe]
	subs r0, #1
	strh r0, [r2, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808067C
	b _0808087A
_0808067C:
	movs r5, #0
	adds r2, #0x28
	ldr r3, _080806AC @ =gUnknown_080D5CD4+4
_08080682:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r2, r0
	lsls r0, r5, #3
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	bge _08080696
	adds r0, #7
_08080696:
	asrs r0, r0, #3
	str r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _08080682
	movs r0, #0x28
	mov r3, ip
	strh r0, [r3, #0xc]
	b _0808087A
	.align 2, 0
_080806AC: .4byte gUnknown_080D5CD4+4
_080806B0:
	movs r5, #0
	ldr r6, _080806F0 @ =gBldRegs
	mov r4, ip
	adds r4, #0x20
	mov r3, ip
	adds r3, #0x28
_080806BC:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r2, r4, r0
	adds r0, r3, r0
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _080806BC
	ldrh r0, [r6, #4]
	cmp r0, #0x10
	beq _080806E0
	b _0808087A
_080806E0:
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #1]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r1, #0xc]
	b _0808087A
	.align 2, 0
_080806F0: .4byte gBldRegs
_080806F4:
	movs r0, #0
	mov r2, ip
	strh r0, [r2, #2]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #8]
	lsls r0, r0, #2
	str r0, [r2, #4]
	ldr r1, _0808079C @ =gCamera
	ldr r0, [r1]
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r2, #0x24]
	ldr r0, [r1, #4]
	adds r0, #0x68
	lsls r0, r0, #8
	str r0, [r2, #0x28]
	movs r5, #0
	movs r7, #0
	movs r3, #0x1c
	add r3, ip
	mov sb, r3
	movs r0, #0x20
	add r0, ip
	mov r8, r0
	ldr r1, _080807A0 @ =gSineTable
	mov sl, r1
	ldr r4, _080807A4 @ =0x00003FFF
_0808072C:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r2, ip
	ldr r0, [r2, #4]
	muls r0, r1, r0
	cmp r0, #0
	bge _08080746
	adds r0, r0, r4
_08080746:
	asrs r6, r0, #0xe
	lsls r0, r7, #1
	add r0, sl
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r2, ip
	ldr r0, [r2, #8]
	muls r0, r1, r0
	cmp r0, #0
	bge _0808075C
	adds r0, r0, r4
_0808075C:
	asrs r3, r0, #0xe
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #2
	mov r0, sb
	adds r0, r0, r1
	str r0, [sp]
	mov r2, ip
	ldr r0, [r2, #0x24]
	adds r0, r6, r0
	ldr r2, [sp]
	str r0, [r2]
	add r1, r8
	mov r2, ip
	ldr r0, [r2, #0x28]
	adds r0, r3, r0
	str r0, [r1]
	adds r7, #0x92
	ldr r3, _080807A8 @ =0x000003FF
	adds r0, r3, #0
	ands r7, r0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #6
	bls _0808072C
	movs r0, #1
	strb r0, [r2, #1]
	movs r0, #0x6e
	strh r0, [r2, #0xc]
	b _0808087A
	.align 2, 0
_0808079C: .4byte gCamera
_080807A0: .4byte gSineTable
_080807A4: .4byte 0x00003FFF
_080807A8: .4byte 0x000003FF
_080807AC:
	mov r1, ip
	ldrh r0, [r1, #2]
	subs r0, #8
	ldr r2, _08080850 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	mov r3, ip
	strh r0, [r3, #2]
	ldr r0, [r3, #8]
	subs r0, #0x40
	str r0, [r3, #8]
	asrs r0, r0, #8
	cmp r0, #8
	bgt _080807CE
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r3, #8]
_080807CE:
	mov r1, ip
	ldr r0, [r1, #8]
	lsls r0, r0, #2
	str r0, [r1, #4]
	mov r4, ip
	adds r4, #0xa8
	movs r5, #0
	ldrh r7, [r1, #2]
	movs r2, #0x1c
	add r2, ip
	mov sb, r2
	movs r3, #0x20
	add r3, ip
	mov r8, r3
	ldr r0, _08080854 @ =0x00003FFF
	mov sl, r0
_080807EE:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #1
	ldr r2, _08080858 @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r2, ip
	ldr r0, [r2, #4]
	muls r0, r1, r0
	cmp r0, #0
	bge _0808080A
	add r0, sl
_0808080A:
	asrs r6, r0, #0xe
	lsls r0, r7, #1
	ldr r3, _08080858 @ =gSineTable
	adds r0, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r3, ip
	ldr r0, [r3, #8]
	muls r0, r1, r0
	cmp r0, #0
	bge _08080822
	add r0, sl
_08080822:
	asrs r3, r0, #0xe
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #2
	mov r0, sb
	adds r0, r0, r1
	str r0, [sp]
	mov r2, ip
	ldr r0, [r2, #0x24]
	adds r0, r6, r0
	ldr r2, [sp]
	str r0, [r2]
	add r1, r8
	mov r2, ip
	ldr r0, [r2, #0x28]
	adds r0, r3, r0
	str r0, [r1]
	ldr r3, _0808085C @ =0x000001FF
	cmp r7, r3
	bhi _08080860
	movs r0, #0x80
	lsls r0, r0, #2
	b _08080864
	.align 2, 0
_08080850: .4byte 0x000003FF
_08080854: .4byte 0x00003FFF
_08080858: .4byte gSineTable
_0808085C: .4byte 0x000001FF
_08080860:
	movs r0, #0x98
	lsls r0, r0, #3
_08080864:
	strh r0, [r4, #0x14]
	adds r7, #0x92
	ldr r1, _080808E0 @ =0x000003FF
	adds r0, r1, #0
	ands r7, r0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0x28
	cmp r5, #6
	bls _080807EE
_0808087A:
	mov r2, ip
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _080808CE
	mov r4, ip
	adds r4, #0xa8
	movs r5, #0
	movs r3, #0x1c
	add r3, ip
	mov sb, r3
	movs r0, #0x20
	add r0, ip
	mov r8, r0
	ldr r6, _080808E4 @ =gCamera
_08080896:
	lsls r2, r5, #2
	adds r2, r2, r5
	lsls r2, r2, #2
	mov r1, sb
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r6]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r6, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, #0x28
	cmp r5, #6
	bls _08080896
_080808CE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080808E0: .4byte 0x000003FF
_080808E4: .4byte gCamera

@ Called after Defeating Altar Emerald Boss
	thumb_func_start CreateAltarEmeraldPostBossCutscene
CreateAltarEmeraldPostBossCutscene: @ 0x080808E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0808099C @ =Task_11C_8080AD4
	movs r1, #0x8e
	lsls r1, r1, #1     @ 0x11C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _080809A0 @ =TaskDestructor_AltarEmeraldPostBossCutscene
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	movs r1, #0
	strb r4, [r7]
	movs r0, #1
	strh r0, [r7, #4]
	strh r1, [r7, #6]
	strh r1, [r7, #2]
	str r1, [r7, #0xc]
	str r1, [r7, #0x10]
	movs r4, #0
	ldr r0, _080809A4 @ =0x03000068
	adds r1, r2, r0
	movs r3, #0
	adds r5, r1, #0
_08080932:
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r0, r1, r0
	str r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08080932
	movs r4, #0
	adds r1, r7, #0
	adds r1, #0x1c
	str r1, [sp, #8]
	adds r2, r7, #0
	adds r2, #0x20
	str r2, [sp, #0xc]
	movs r0, #0x24
	adds r0, r0, r7
	mov sl, r0
	adds r6, r7, #0
	adds r6, #0xa0
	movs r1, #0xd8
	adds r1, r1, r7
	mov r8, r1
	ldr r2, _080809A8 @ =gCamera
	mov sb, r2
	mov ip, r4
_0808096A:
	cmp r4, #2
	beq _080809AC
	lsls r3, r4, #3
	subs r2, r3, r4
	lsls r2, r2, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r1, r1, r2
	str r1, [sp, #0x14]
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x78
	lsls r0, r0, #8
	ldr r1, [sp, #0x14]
	str r0, [r1]
	adds r1, r7, #0
	adds r1, #0x18
	adds r1, r1, r2
	mov r2, sb
	ldr r0, [r2, #4]
	adds r0, #0xb4
	lsls r0, r0, #8
	str r0, [r1]
	b _080809C0
	.align 2, 0
_0808099C: .4byte Task_11C_8080AD4
_080809A0: .4byte TaskDestructor_AltarEmeraldPostBossCutscene
_080809A4: .4byte 0x03000068
_080809A8: .4byte gCamera
_080809AC:
	mov r1, sb
	ldr r0, [r1]
	adds r0, #0x8c
	lsls r0, r0, #8
	str r0, [r7, #0x4c]
	ldr r0, [r1, #4]
	adds r0, #0xd4
	lsls r0, r0, #8
	str r0, [r7, #0x50]
	movs r3, #0x10
_080809C0:
	subs r1, r3, r4
	lsls r1, r1, #2
	ldr r2, [sp, #8]
	adds r0, r2, r1
	mov r2, ip
	str r2, [r0]
	ldr r2, [sp, #0xc]
	adds r0, r2, r1
	mov r2, ip
	str r2, [r0]
	mov r2, sl
	adds r0, r2, r1
	mov r2, ip
	str r2, [r0]
	adds r1, r7, r1
	movs r0, #1
	strh r0, [r1, #0x28]
	strh r2, [r1, #0x2a]
	ldrb r0, [r7]
	cmp r0, #0
	beq _080809EE
	movs r0, #0xfa
	lsls r0, r0, #2
_080809EE:
	strh r0, [r1, #0x2c]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0808096A
	ldrb r0, [r7]
	cmp r0, #0
	bne _08080A08
	movs r0, #0x74
	bl VramMalloc
	b _08080A0A
_08080A08:
	movs r0, #0
_08080A0A:
	str r0, [r7, #8]
	movs r0, #0x80
	bl VramMalloc
	adds r1, r0, #0
	str r1, [r7, #0xc]
	str r1, [r7, #0x68]
	movs r2, #0
	movs r4, #0
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	subs r0, #0x48		@ r0 = ANIM_EGGMAN_SIDE
	strh r0, [r5, #0xc]
	movs r0, #4
	strb r0, [r5, #0x1a]
	strh r4, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	mov sl, r0
	mov r0, sl
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	strh r4, [r5, #0x10]
	strh r4, [r5, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sb, r0
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	adds r1, r1, r0
	str r1, [r6]
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	subs r0, #0x89
	strh r0, [r6, #0xc]
	strb r2, [r6, #0x1a]
	strh r4, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	mov r1, sl
	strb r1, [r6, #0x1c]
	movs r0, #9
	strb r0, [r6, #0x1f]
	strh r4, [r6, #0x10]
	strh r4, [r6, #0x12]
	mov r0, sb
	str r0, [r6, #8]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r7, r0
	ldrh r0, [r7, #2]
	strh r0, [r1]
	ldrh r0, [r6, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r6, #0x12]
	strh r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	movs r0, #0x24
	str r2, [sp, #0x10]
	bl VramMalloc
	adds r1, r0, #0
	str r1, [r7, #0x10]
	mov r0, r8
	str r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #3
	mov r1, r8
	strh r0, [r1, #0x14]
	adds r0, #0xa		@ r0 = ANIM_GEMERL_HOVER_AWAY
	strh r0, [r1, #0xc]
	ldr r2, [sp, #0x10]
	strb r2, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sl
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	mov r2, sb
	str r2, [r1, #8]
	ldr r0, [sp, #4]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start Task_11C_8080AD4
Task_11C_8080AD4: @ 0x08080AD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08080B1C @ =gCurTask
	ldr r1, [r0]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldr r1, _08080B20 @ =0x03000110
	adds r7, r2, r1
	ldrh r1, [r5, #0x2c]
	adds r3, r0, #0
	cmp r1, #0xc8
	bne _08080B00
	ldr r4, _08080B24 @ =0x03000064
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, #0xc8
	beq _08080B12
_08080B00:
	movs r0, #0xfa
	lsls r0, r0, #3
	cmp r1, r0
	bne _08080B28
	ldr r4, _08080B24 @ =0x03000064
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r0, r1
	bne _08080B28
_08080B12:
	ldr r0, [r3]
	bl TaskDestroy
	b _08080BC0
	.align 2, 0
_08080B1C: .4byte gCurTask
_08080B20: .4byte 0x03000110
_08080B24: .4byte 0x03000064
_08080B28:
	adds r0, r5, #0
	bl sub_8080BD0
	adds r0, r5, #0
	bl sub_80811E0
	movs r6, #0
	movs r0, #0x14
	adds r0, r0, r5
	mov sl, r0
	movs r1, #0x18
	adds r1, r1, r5
	mov sb, r1
	ldr r2, _08080B9C @ =gCamera
	mov r8, r2
_08080B46:
	lsls r2, r6, #3
	subs r2, r2, r6
	lsls r0, r2, #3
	adds r0, #0x68
	adds r4, r5, r0
	lsls r2, r2, #2
	mov r3, sl
	adds r0, r3, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r3, r8
	ldr r1, [r3]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, sb
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08080BA0
	ldrh r0, [r5, #2]
	strh r0, [r7]
	ldrh r0, [r4, #0x10]
	strh r0, [r7, #6]
	ldrh r0, [r4, #0x12]
	strh r0, [r7, #8]
	adds r0, r4, #0
	adds r1, r7, #0
	bl TransformSprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	b _08080BAC
	.align 2, 0
_08080B9C: .4byte gCamera
_08080BA0:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08080BAC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bhi _08080BC0
	cmp r6, #2
	bne _08080B46
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _08080B46
_08080BC0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	@ struct 0x11C
	thumb_func_start sub_8080BD0
sub_8080BD0: @ 0x08080BD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x14
	movs r0, #0x30
	adds r0, r0, r6
	mov sb, r0
	adds r7, r6, #0
	adds r7, #0x68
	adds r3, r6, #0
	adds r3, #0xa0
	ldrh r1, [r5, #0x18]
	ldr r4, _08080C20 @ =0x0000041A
	cmp r1, r4
	bne _08080BF8
	b _0808100C
_08080BF8:
	cmp r1, r4
	bgt _08080C7C
	cmp r1, #0x32
	bne _08080C02
	b _08080DD4
_08080C02:
	cmp r1, #0x32
	bgt _08080C32
	cmp r1, #0x14
	bne _08080C0C
	b _08080D58
_08080C0C:
	cmp r1, #0x14
	bgt _08080C24
	cmp r1, #0
	bne _08080C16
	b _08080D30
_08080C16:
	cmp r1, #0xa
	bne _08080C1C
	b _08080D38
_08080C1C:
	b _080811C6
	.align 2, 0
_08080C20: .4byte 0x0000041A
_08080C24:
	cmp r1, #0x1e
	bne _08080C2A
	b _08080D70
_08080C2A:
	cmp r1, #0x28
	bne _08080C30
	b _08080D8C
_08080C30:
	b _080811C6
_08080C32:
	ldr r2, _08080C50 @ =0x000003F2
	cmp r1, r2
	bne _08080C3A
	b _08080F38
_08080C3A:
	cmp r1, r2
	bgt _08080C54
	cmp r1, #0x64
	bne _08080C44
	b _08080E2C
_08080C44:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _08080C4E
	b _08080F34
_08080C4E:
	b _080811C6
	.align 2, 0
_08080C50: .4byte 0x000003F2
_08080C54:
	ldr r2, _08080C6C @ =0x00000406
	cmp r1, r2
	bne _08080C5C
	b _08080F6C
_08080C5C:
	cmp r1, r2
	bgt _08080C70
	movs r0, #0xff
	lsls r0, r0, #2
	cmp r1, r0
	bne _08080C6A
	b _08080F58
_08080C6A:
	b _080811C6
	.align 2, 0
_08080C6C: .4byte 0x00000406
_08080C70:
	movs r0, #0x82
	lsls r0, r0, #3
	cmp r1, r0
	bne _08080C7A
	b _08080FB4
_08080C7A:
	b _080811C6
_08080C7C:
	ldr r4, _08080CA8 @ =0x0000046A
	cmp r1, r4
	bne _08080C84
	b _0808111C
_08080C84:
	cmp r1, r4
	bgt _08080CDC
	movs r0, #0x87
	lsls r0, r0, #3
	cmp r1, r0
	bne _08080C92
	b _0808103E
_08080C92:
	cmp r1, r0
	bgt _08080CB0
	ldr r2, _08080CAC @ =0x00000424
	cmp r1, r2
	bne _08080C9E
	b _080811C6
_08080C9E:
	subs r0, #0xa
	cmp r1, r0
	bne _08080CA6
	b _0808102C
_08080CA6:
	b _080811C6
	.align 2, 0
_08080CA8: .4byte 0x0000046A
_08080CAC: .4byte 0x00000424
_08080CB0:
	ldr r2, _08080CC8 @ =0x00000456
	cmp r1, r2
	bne _08080CB8
	b _08081092
_08080CB8:
	cmp r1, r2
	bgt _08080CD0
	ldr r0, _08080CCC @ =0x0000044C
	cmp r1, r0
	bne _08080CC4
	b _08081084
_08080CC4:
	b _080811C6
	.align 2, 0
_08080CC8: .4byte 0x00000456
_08080CCC: .4byte 0x0000044C
_08080CD0:
	movs r0, #0x8c
	lsls r0, r0, #3
	cmp r1, r0
	bne _08080CDA
	b _080810E0
_08080CDA:
	b _080811C6
_08080CDC:
	movs r2, #0x91
	lsls r2, r2, #3
	cmp r1, r2
	bne _08080CE6
	b _0808116A
_08080CE6:
	cmp r1, r2
	bgt _08080D00
	ldr r0, _08080CFC @ =0x00000474
	cmp r1, r0
	bne _08080CF2
	b _08081128
_08080CF2:
	adds r0, #0xa
	cmp r1, r0
	bne _08080CFA
	b _08081154
_08080CFA:
	b _080811C6
	.align 2, 0
_08080CFC: .4byte 0x00000474
_08080D00:
	ldr r2, _08080D18 @ =0x0000049C
	cmp r1, r2
	bne _08080D08
	b _08081180
_08080D08:
	cmp r1, r2
	bgt _08080D20
	ldr r0, _08080D1C @ =0x00000492
	cmp r1, r0
	bne _08080D14
	b _0808113C
_08080D14:
	b _080811C6
	.align 2, 0
_08080D18: .4byte 0x0000049C
_08080D1C: .4byte 0x00000492
_08080D20:
	ldr r0, _08080D2C @ =0x000004A6
	cmp r1, r0
	bne _08080D28
	b _080811AC
_08080D28:
	b _080811C6
	.align 2, 0
_08080D2C: .4byte 0x000004A6
_08080D30:
	movs r0, #0x4b
	strh r0, [r5, #0x14]
	movs r0, #0xa
	b _080811C4
_08080D38:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08080D48
	b _080811C6
_08080D48:
	str r0, [r5, #8]
	ldr r0, _08080D54 @ =0xFFFFFF00
	str r0, [r5, #0xc]
	movs r0, #0x14
	b _080811C4
	.align 2, 0
_08080D54: .4byte 0xFFFFFF00
_08080D58:
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	asrs r0, r0, #8
	cmp r0, #0x6e
	ble _08080D68
	b _080811C6
_08080D68:
	movs r0, #0x28
	strh r0, [r5, #0x14]
	movs r0, #0x1e
	b _080811C4
_08080D70:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08080D80
	b _080811C6
_08080D80:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	movs r0, #0x28
	b _08080F88
_08080D8C:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	asrs r1, r0, #8
	ldr r0, _08080DBC @ =0x00000923
	cmp r1, r0
	ble _08080DC0
	movs r0, #0
	strh r0, [r5, #0x16]
	movs r0, #0x20
	strh r0, [r5, #0x14]
	ldr r0, [r6, #0x14]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	str r0, [r5, #0xc]
	movs r0, #0x32
	strh r0, [r5, #0x18]
	movs r0, #0x9f
	lsls r0, r0, #2     @ VOICE__EGGMAN__OW
	bl m4aSongNumStart
	b _080811C6
	.align 2, 0
_08080DBC: .4byte 0x00000923
_08080DC0:
	ldr r0, _08080DD0 @ =0x00000833
	cmp r1, r0
	bgt _08080DC8
	b _080811C6
_08080DC8:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r5, #8]
	b _080811C6
	.align 2, 0
_08080DD0: .4byte 0x00000833
_08080DD4:
	ldr r2, _08080E24 @ =gUnknown_080D5C80
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #2
	adds r2, #2
	adds r0, r0, r2
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r1, r1, #8
	ldr r0, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldrh r0, [r5, #0x16]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strh r0, [r5, #0x16]
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08080E14
	b _080811C6
_08080E14:
	movs r0, #0x80
	str r0, [r5, #0xc]
	movs r0, #0x64
	strh r0, [r5, #0x18]
	ldr r0, _08080E28 @ =0x00000221
	bl m4aSongNumStart
	b _080811C6
	.align 2, 0
_08080E24: .4byte gUnknown_080D5C80
_08080E28: .4byte 0x00000221
_08080E2C:
	ldrh r0, [r5, #0x16]
	adds r0, #8
	ldr r2, _08080F10 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5, #0x16]
	ldr r3, _08080F14 @ =gSineTable
	mov ip, r3
	ldrh r0, [r5, #0x16]
	lsls r0, r0, #1
	add r0, ip
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bge _08080E4C
	adds r0, #0x3f
_08080E4C:
	asrs r4, r0, #6
	ldr r0, [r6, #0x14]
	adds r0, r0, r4
	str r0, [r6, #0x14]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r1, r1, r0
	mov r8, r1
	str r1, [r5, #4]
	ldrh r0, [r5, #0x14]
	adds r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08080EEA
	ldr r0, _08080F18 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08080ED0
	ldr r4, _08080F1C @ =gPseudoRandom
	ldr r0, [r4]
	ldr r3, _08080F20 @ =0x00196225
	muls r0, r3, r0
	ldr r2, _08080F24 @ =0x3C6EF35F
	adds r0, r0, r2
	ldr r1, _08080F28 @ =0x000003FF
	ands r1, r0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [r4]
	movs r3, #0xf
	ands r3, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	add r0, ip
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r3, r0
	lsrs r4, r0, #6
	lsls r0, r1, #1
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	lsrs r1, r1, #6
	ldr r0, [r6, #0x14]
	adds r0, r0, r4
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	add r1, r8
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	movs r4, #0x1e
	str r4, [sp]
	ldr r4, [r6, #8]
	str r4, [sp, #4]
	bl sub_8086D64
_08080ED0:
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, _08080F2C @ =0x00000996
	cmp r0, r1
	bgt _08080EEA
	ldrh r1, [r5, #0x14]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08080EEA
	ldr r0, _08080F30 @ =0x00000221
	bl m4aSongNumStart
_08080EEA:
	movs r2, #0x14
	ldrsh r0, [r5, r2]
	cmp r0, #0xa
	bne _08080F00
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #4
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
_08080F00:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	cmp r0, #0xf9
	bgt _08080F0A
	b _080811C6
_08080F0A:
	movs r0, #0xc8
	b _080811C4
	.align 2, 0
_08080F10: .4byte 0x000001FF
_08080F14: .4byte gSineTable
_08080F18: .4byte gStageData
_08080F1C: .4byte gPseudoRandom
_08080F20: .4byte 0x00196225
_08080F24: .4byte 0x3C6EF35F
_08080F28: .4byte 0x000003FF
_08080F2C: .4byte 0x00000996
_08080F30: .4byte 0x00000221
_08080F34:
	movs r0, #0x4b
	b _08081164
_08080F38:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08080F48
	b _080811C6
_08080F48:
	str r0, [r5, #8]
	ldr r0, _08080F54 @ =0xFFFFFF00
	str r0, [r5, #0xc]
	movs r0, #0xff
	lsls r0, r0, #2
	b _080811C4
	.align 2, 0
_08080F54: .4byte 0xFFFFFF00
_08080F58:
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	asrs r0, r0, #8
	cmp r0, #0x6e
	ble _08080F68
	b _080811C6
_08080F68:
	movs r0, #0x28
	b _08081164
_08080F6C:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08080F7C
	b _080811C6
_08080F7C:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	movs r0, #0x82
	lsls r0, r0, #3
_08080F88:
	strh r0, [r5, #0x18]
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #8
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r3, #8]
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, _08080FB0 @ =0x0000027E @ VOICE__EGGMAN__YOURE_GOING_TO_PAY_FOR_THIS
	bl m4aSongNumStart
	b _080811C6
	.align 2, 0
_08080FB0: .4byte 0x0000027E
_08080FB4:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, _08080FE8 @ =0x000008FB
	cmp r0, r1
	ble _08080FF4
	ldr r0, _08080FEC @ =0xFFFFFF00
	str r0, [r5, #8]
	movs r1, #0
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	strb r1, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	ldr r0, [r7, #8]
	ldr r1, _08080FF0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #8]
	ldr r0, [r3, #8]
	ands r0, r1
	str r0, [r3, #8]
	strh r4, [r5, #0x18]
	b _080811C6
	.align 2, 0
_08080FE8: .4byte 0x000008FB
_08080FEC: .4byte 0xFFFFFF00
_08080FF0: .4byte 0xFFFFFBFF
_08080FF4:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, _08081008 @ =0x000007CF
	cmp r0, r1
	bgt _08081000
	b _080811C6
_08081000:
	movs r0, #0xa0
	lsls r0, r0, #2
	str r0, [r5, #8]
	b _080811C6
	.align 2, 0
_08081008: .4byte 0x000007CF
_0808100C:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, _08081024 @ =0x000008BB
	cmp r0, r1
	ble _0808101E
	b _080811C6
_0808101E:
	ldr r0, _08081028 @ =0x00000424
	b _080811C4
	.align 2, 0
_08081024: .4byte 0x000008BB
_08081028: .4byte 0x00000424
_0808102C:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #8
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	strh r2, [r5, #0x18]
	b _080811C6
_0808103E:
	movs r0, #0x9f
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	movs r0, #0xc
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	ldr r0, _08081080 @ =0x000004F7
	strh r0, [r3, #0xc]
	movs r0, #5
	strb r0, [r3, #0x1a]
	subs r0, #6
	strb r0, [r3, #0x1b]
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r3, #0x14]
	ldr r0, [r7, #8]
	movs r1, #0x3e
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r3, #8]
	movs r1, #0x3f
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r6, #2]
	adds r0, #0xa4
	b _080811C4
	.align 2, 0
_08081080: .4byte 0x000004F7
_08081084:
	movs r0, #0
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r5, #0xc]
	strh r2, [r5, #0x18]
	b _080811C6
_08081092:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r1, r1, r0
	str r1, [r5, #4]
	asrs r1, r1, #8
	ldr r0, _080810D8 @ =gCamera
	ldr r0, [r0, #4]
	adds r0, #0x79
	cmp r1, r0
	bge _080810B0
	b _080811C6
_080810B0:
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl CreateScreenShake
	movs r0, #0x9f
	lsls r0, r0, #2
	bl m4aSongNumStart  @ VOICE__EGGMAN__OW
	ldr r0, _080810DC @ =0xFFFFFC00
	str r0, [r5, #0xc]
	movs r0, #0x8c
	lsls r0, r0, #3
	b _080811C4
	.align 2, 0
_080810D8: .4byte gCamera
_080810DC: .4byte 0xFFFFFC00
_080810E0:
	ldr r0, [r5, #0xc]
	adds r0, #0x2a
	str r0, [r5, #0xc]
	ldr r1, [r5, #4]
	adds r1, r1, r0
	str r1, [r5, #4]
	ldrh r1, [r6, #2]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	beq _080810FC
	adds r0, r1, #0
	subs r0, #8
	strh r0, [r6, #2]
_080810FC:
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	ldr r0, _08081118 @ =gCamera
	ldr r0, [r0, #4]
	adds r0, #0x79
	cmp r1, r0
	blt _080811C6
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ble _080811C6
	movs r0, #0
	str r0, [r5, #0xc]
	strh r4, [r5, #0x18]
	b _080811C6
	.align 2, 0
_08081118: .4byte gCamera
_0808111C:
	ldr r0, _08081124 @ =0x000004E2
	strh r0, [r5, #0x14]
	subs r0, #0x6e
	b _080811C4
	.align 2, 0
_08081124: .4byte 0x000004E2
_08081128:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080811C6
	ldr r0, _08081138 @ =0x00000492
	b _080811C4
	.align 2, 0
_08081138: .4byte 0x00000492
_0808113C:
	ldrh r0, [r6, #2]
	adds r0, #8
	ldr r3, _08081150 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r6, #2]
	cmp r0, #0
	bne _080811C6
	movs r0, #0xb4
	b _08081164
	.align 2, 0
_08081150: .4byte 0x000003FF
_08081154:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080811C6
	movs r0, #0x96
	lsls r0, r0, #1
_08081164:
	strh r0, [r5, #0x14]
	strh r2, [r5, #0x18]
	b _080811C6
_0808116A:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080811C6
	ldr r0, _0808117C @ =0x00000492
	b _080811C4
	.align 2, 0
_0808117C: .4byte 0x00000492
_08081180:
	ldrh r0, [r5, #0x14]
	subs r0, #1
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080811C6
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r5, #8]
	ldr r0, _080811A4 @ =0xFFFFFC00
	str r0, [r5, #0xc]
	ldr r0, _080811A8 @ =0x000004A6
	strh r0, [r5, #0x18]
	movs r0, #0x70
	bl m4aSongNumStart
	b _080811C6
	.align 2, 0
_080811A4: .4byte 0xFFFFFC00
_080811A8: .4byte 0x000004A6
_080811AC:
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r0, #0
	bge _080811C6
	movs r0, #0xfa
	lsls r0, r0, #3
_080811C4:
	strh r0, [r5, #0x18]
_080811C6:
	ldr r0, [r5]
	mov r4, sb
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	@ struct 0x11C
	thumb_func_start sub_80811E0
sub_80811E0: @ 0x080811E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x4c
	adds r3, r5, #0
	adds r3, #0xd8
	ldrh r1, [r4, #0x18]
	ldr r2, _08081218 @ =0x000003F2
	cmp r1, r2
	bne _080811F6
	b _0808148E
_080811F6:
	cmp r1, r2
	bgt _08081260
	cmp r1, #0x32
	bne _08081200
	b _08081380
_08081200:
	cmp r1, #0x32
	bgt _0808122A
	cmp r1, #0x14
	bne _0808120A
	b _08081328
_0808120A:
	cmp r1, #0x14
	bgt _0808121C
	cmp r1, #0
	beq _08081300
	cmp r1, #0xa
	beq _08081308
	b _080816B8
	.align 2, 0
_08081218: .4byte 0x000003F2
_0808121C:
	cmp r1, #0x1e
	bne _08081222
	b _08081340
_08081222:
	cmp r1, #0x28
	bne _08081228
	b _0808135E
_08081228:
	b _080816B8
_0808122A:
	cmp r1, #0x50
	bne _08081230
	b _080813EC
_08081230:
	cmp r1, #0x50
	bgt _08081242
	cmp r1, #0x3c
	bne _0808123A
	b _080813A4
_0808123A:
	cmp r1, #0x46
	bne _08081240
	b _080813CC
_08081240:
	b _080816B8
_08081242:
	cmp r1, #0x64
	bne _08081248
	b _08081464
_08081248:
	cmp r1, #0x64
	bgt _08081254
	cmp r1, #0x5a
	bne _08081252
	b _08081420
_08081252:
	b _080816B8
_08081254:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _0808125E
	b _08081486
_0808125E:
	b _080816B8
_08081260:
	ldr r6, _08081290 @ =0x0000042E
	cmp r1, r6
	bne _08081268
	b _08081598
_08081268:
	cmp r1, r6
	bgt _080812AC
	movs r2, #0x82
	lsls r2, r2, #3
	cmp r1, r2
	bne _08081276
	b _08081504
_08081276:
	cmp r1, r2
	bgt _08081294
	movs r0, #0xff
	lsls r0, r0, #2
	cmp r1, r0
	bne _08081284
	b _080814B0
_08081284:
	adds r0, #0xa
	cmp r1, r0
	bne _0808128C
	b _080814CC
_0808128C:
	b _080816B8
	.align 2, 0
_08081290: .4byte 0x0000042E
_08081294:
	ldr r0, _080812A8 @ =0x0000041A
	cmp r1, r0
	bne _0808129C
	b _08081544
_0808129C:
	adds r0, #0xa
	cmp r1, r0
	bne _080812A4
	b _08081570
_080812A4:
	b _080816B8
	.align 2, 0
_080812A8: .4byte 0x0000041A
_080812AC:
	ldr r6, _080812CC @ =0x00000442
	cmp r1, r6
	bne _080812B4
	b _0808163C
_080812B4:
	cmp r1, r6
	bgt _080812D4
	ldr r0, _080812D0 @ =0x00000433
	cmp r1, r0
	bne _080812C0
	b _080815E6
_080812C0:
	adds r0, #5
	cmp r1, r0
	bne _080812C8
	b _08081600
_080812C8:
	b _080816B8
	.align 2, 0
_080812CC: .4byte 0x00000442
_080812D0: .4byte 0x00000433
_080812D4:
	ldr r2, _080812EC @ =0x00000456
	cmp r1, r2
	bne _080812DC
	b _0808168C
_080812DC:
	cmp r1, r2
	bgt _080812F4
	ldr r0, _080812F0 @ =0x0000044C
	cmp r1, r0
	bne _080812E8
	b _08081664
_080812E8:
	b _080816B8
	.align 2, 0
_080812EC: .4byte 0x00000456
_080812F0: .4byte 0x0000044C
_080812F4:
	movs r0, #0x8c
	lsls r0, r0, #3
	cmp r1, r0
	bne _080812FE
	b _080816A8
_080812FE:
	b _080816B8
_08081300:
	movs r0, #0x4b
	strh r0, [r4, #0x14]
	movs r0, #0xa
	b _080816B6
_08081308:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08081318
	b _080816B8
_08081318:
	str r0, [r4, #8]
	ldr r0, _08081324 @ =0xFFFFFF00
	str r0, [r4, #0xc]
	movs r0, #0x14
	b _080816B6
	.align 2, 0
_08081324: .4byte 0xFFFFFF00
_08081328:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0x8e
	ble _08081338
	b _080816B8
_08081338:
	movs r0, #0x28
	strh r0, [r4, #0x14]
	movs r0, #0x1e
	b _080816B6
_08081340:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08081350
	b _080816B8
_08081350:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	movs r0, #0x28
	strh r0, [r4, #0x18]
	b _080814E6
_0808135E:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r0, r0, #8
	ldr r1, _0808137C @ =0x00000819
	cmp r0, r1
	bgt _08081370
	b _080816B8
_08081370:
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0x32
	b _080816B6
	.align 2, 0
_0808137C: .4byte 0x00000819
_08081380:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r0, r0, #8
	ldr r1, _080813A0 @ =0x000008F2
	cmp r0, r1
	bgt _08081392
	b _080816B8
_08081392:
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #0x80
	str r0, [r4, #0xc]
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	b _080816B6
	.align 2, 0
_080813A0: .4byte 0x000008F2
_080813A4:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0xb3
	bgt _080813B4
	b _080816B8
_080813B4:
	ldr r0, _080813C8 @ =0x0000050B
	strh r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x14
	strh r0, [r4, #0x14]
	movs r0, #0x46
	b _080816B6
	.align 2, 0
_080813C8: .4byte 0x0000050B
_080813CC:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080813DA
	b _080816B8
_080813DA:
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	movs r0, #0x50
	strh r0, [r4, #0x18]
	ldr r0, _080813E8 @ =0x00000506
	b _08081586
	.align 2, 0
_080813E8: .4byte 0x00000506
_080813EC:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080813FA
	b _080816B8
_080813FA:
	movs r0, #0x96
	strh r0, [r4, #0x14]
	movs r0, #0x5a
	strh r0, [r4, #0x18]
	ldr r0, _08081418 @ =0x0000050B
	strh r0, [r3, #0xc]
	movs r0, #2
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r0, [r3, #8]
	ldr r1, _0808141C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r3, #8]
	b _080816B8
	.align 2, 0
_08081418: .4byte 0x0000050B
_0808141C: .4byte 0xFFFFFBFF
_08081420:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808142E
	b _080816B8
_0808142E:
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _0808145C @ =0xFFFFFC00
	str r0, [r4, #0xc]
	ldr r0, _08081460 @ =0x0000050A
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #0x64
	strh r0, [r4, #0x18]
	movs r0, #0x74      @ SE_JUMP
	bl m4aSongNumStart
	b _080816B8
	.align 2, 0
_0808145C: .4byte 0xFFFFFC00
_08081460: .4byte 0x0000050A
_08081464:
	ldr r0, [r4, #0xc]
	adds r0, #0x2a
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0xf9
	bgt _08081482
	b _080816B8
_08081482:
	movs r0, #0xc8
	b _080816B6
_08081486:
	movs r0, #0x4b
	strh r0, [r4, #0x14]
	strh r2, [r4, #0x18]
	b _080816B8
_0808148E:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0808149E
	b _080816B8
_0808149E:
	str r0, [r4, #8]
	ldr r0, _080814AC @ =0xFFFFFF00
	str r0, [r4, #0xc]
	movs r0, #0xff
	lsls r0, r0, #2
	b _080816B6
	.align 2, 0
_080814AC: .4byte 0xFFFFFF00
_080814B0:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0x8e
	ble _080814C0
	b _080816B8
_080814C0:
	movs r0, #0x28
	strh r0, [r4, #0x14]
	ldr r0, _080814C8 @ =0x00000406
	b _080816B6
	.align 2, 0
_080814C8: .4byte 0x00000406
_080814CC:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080814DC
	b _080816B8
_080814DC:
	movs r0, #0xc0
	lsls r0, r0, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	strh r2, [r4, #0x18]
_080814E6:
	ldr r0, _08081500 @ =0x0000050A
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #8]
	b _080816B8
	.align 2, 0
_08081500: .4byte 0x0000050A
_08081504:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r1, r0, #8
	ldr r0, _08081528 @ =0x000008AB
	cmp r1, r0
	ble _08081530
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0xc]
	movs r0, #0x3c
	strh r0, [r4, #0x14]
	ldr r0, _0808152C @ =0x0000041A
	b _080816B6
	.align 2, 0
_08081528: .4byte 0x000008AB
_0808152C: .4byte 0x0000041A
_08081530:
	ldr r0, _08081540 @ =0x0000076B
	cmp r1, r0
	bgt _08081538
	b _080816B8
_08081538:
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #8]
	b _080816B8
	.align 2, 0
_08081540: .4byte 0x0000076B
_08081544:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	asrs r0, r0, #8
	cmp r0, #0xb3
	bgt _08081554
	b _080816B8
_08081554:
	ldr r0, _08081568 @ =0x0000050B
	strh r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x14
	strh r0, [r4, #0x14]
	ldr r0, _0808156C @ =0x00000424
	b _080816B6
	.align 2, 0
_08081568: .4byte 0x0000050B
_0808156C: .4byte 0x00000424
_08081570:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808157E
	b _080816B8
_0808157E:
	movs r0, #0xb4
	strh r0, [r4, #0x14]
	strh r6, [r4, #0x18]
	ldr r0, _08081594 @ =0x00000509
_08081586:
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	b _080816B8
	.align 2, 0
_08081594: .4byte 0x00000509
_08081598:
	ldrh r0, [r4, #0x14]
	subs r1, r0, #1
	strh r1, [r4, #0x14]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080815D4
	movs r0, #0xa
	strh r0, [r4, #0x14]
	ldr r0, _080815C8 @ =0x00000433
	strh r0, [r4, #0x18]
	adds r0, #0xd8
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	ldr r0, [r3, #8]
	ldr r1, _080815CC @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r0, _080815D0 @ =0x00000223
	bl m4aSongNumStart
	b _080816B8
	.align 2, 0
_080815C8: .4byte 0x00000433
_080815CC: .4byte 0xFFFFFBFF
_080815D0: .4byte 0x00000223
_080815D4:
	movs r0, #0x3f
	ands r1, r0
	cmp r1, #0
	bne _080816B8
	movs r0, #0x89
	lsls r0, r0, #2
	bl m4aSongNumStart
	b _080816B8
_080815E6:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080816B8
	ldr r0, _080815FC @ =0xFFFFFC00
	str r0, [r4, #8]
	movs r0, #0x87
	lsls r0, r0, #3
	b _080816B6
	.align 2, 0
_080815FC: .4byte 0xFFFFFC00
_08081600:
	ldr r0, [r5, #0x4c]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	asrs r0, r0, #8
	ldr r1, _08081630 @ =0x0000085C
	cmp r0, r1
	bgt _080816B8
	movs r1, #0
	movs r2, #0
	ldr r0, _08081634 @ =0x00000509
	strh r0, [r3, #0xc]
	strb r1, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	movs r0, #0x78
	strh r0, [r4, #0x14]
	strh r6, [r4, #0x18]
	ldr r0, _08081638 @ =0x00000223
	bl m4aSongNumStop
	b _080816B8
	.align 2, 0
_08081630: .4byte 0x0000085C
_08081634: .4byte 0x00000509
_08081638: .4byte 0x00000223
_0808163C:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080816B8
	ldr r0, _0808165C @ =0x000005CA
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0xb4
	strh r0, [r4, #0x14]
	ldr r0, _08081660 @ =0x0000044C
	b _080816B6
	.align 2, 0
_0808165C: .4byte 0x000005CA
_08081660: .4byte 0x0000044C
_08081664:
	ldrh r0, [r4, #0x14]
	subs r0, #1
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080816B8
	ldr r0, _08081688 @ =0x000005CA
	strh r0, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [r4, #0xc]
	strh r2, [r4, #0x18]
	b _080816B8
	.align 2, 0
_08081688: .4byte 0x000005CA
_0808168C:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080816A4 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080816B8
	movs r0, #0x8c
	lsls r0, r0, #3
	b _080816B6
	.align 2, 0
_080816A4: .4byte gBldRegs
_080816A8:
	ldr r0, [r5, #0x10]
	bl VramFree
	movs r0, #0
	str r0, [r5, #0x10]
	movs r0, #0xfa
	lsls r0, r0, #3
_080816B6:
	strh r0, [r4, #0x18]
_080816B8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80816C0
sub_80816C0: @ 0x080816C0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r6, _08081708 @ =gCamera
_080816C8:
	lsls r3, r4, #2
	adds r3, r3, r4
	lsls r0, r3, #3
	adds r0, #0x7c
	adds r0, r5, r0
	lsls r3, r3, #2
	adds r1, r5, #0
	adds r1, #0x2c
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	ldr r2, [r6]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	adds r1, r5, #0
	adds r1, #0x30
	adds r1, r1, r3
	ldr r1, [r1]
	asrs r1, r1, #8
	ldr r2, [r6, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080816C8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08081708: .4byte gCamera

	thumb_func_start sub_808170C
sub_808170C: @ 0x0808170C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0808171E
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x7c]
_0808171E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8081724
sub_8081724: @ 0x08081724
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r2, r0, #2
	adds r0, r3, #0
	adds r0, #0x38
	adds r5, r0, r2
	ldr r0, [r5]
	cmp r0, #0
	bgt _08081782
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r4, r0, #3
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r1, r1, r4
	adds r0, r3, #0
	adds r0, #0x30
	adds r0, r0, r2
	ldr r1, [r1]
	ldr r0, [r0]
	subs r1, r1, r0
	adds r0, r1, #0
	cmp r1, #0
	bge _08081764
	rsbs r0, r1, #0
_08081764:
	asrs r1, r0, #8
	cmp r1, #0x13
	bgt _08081782
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r5]
	adds r1, r3, r2
	movs r0, #0x64
	strh r0, [r1, #0x3e]
	ldr r0, _08081788 @ =0x0000023A
	bl m4aSongNumStart
_08081782:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081788: .4byte 0x0000023A

	thumb_func_start sub_808178C
sub_808178C: @ 0x0808178C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _080817D8 @ =Task_1C0_ExtraChaosEmeraldsInit
	movs r1, #0xe0
	lsls r1, r1, #1 @ 0x1C0
	movs r2, #0x88
	lsls r2, r2, #6
	ldr r3, _080817DC @ =TaskDestructor_ExtraChaosEmeralds
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r1, #0
	strb r5, [r4]
	movs r0, #1
	strh r0, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #0xc]
	strh r1, [r4, #0x16]
	strh r1, [r4, #0x14]
	movs r0, #0x1c
	bl VramMalloc
	str r0, [r4, #0x18]
	adds r0, r4, #0
	bl InitChaosEmeraldSprites
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080817D8: .4byte Task_1C0_ExtraChaosEmeraldsInit
_080817DC: .4byte TaskDestructor_ExtraChaosEmeralds

	thumb_func_start TaskDestructor_HyperEggRobo
TaskDestructor_HyperEggRobo: @ 0x080817E0
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _080817F8
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x18]
_080817F8:
	adds r0, r4, #0
	bl sub_8081AA0
	adds r0, r4, #0
	bl sub_8081A40
	adds r0, r4, #0
	bl sub_808170C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start PlayerCB_8081810
PlayerCB_8081810: @ 0x08081810
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	ldr r0, _08081834 @ =0x00000125
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r5, _08081838 @ =PlayerCB_808183C
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081834: .4byte 0x00000125
_08081838: .4byte PlayerCB_808183C

	thumb_func_start PlayerCB_808183C
PlayerCB_808183C: @ 0x0808183C
	bx lr
	.align 2, 0

	thumb_func_start PlayerCB_8081840
PlayerCB_8081840: @ 0x08081840
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	movs r0, #0x96
	strh r0, [r4, #0x30]
	ldr r5, _08081868 @ =PlayerCB_8081894
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081868: .4byte PlayerCB_8081894

	thumb_func_start PlayerCB_808186C
PlayerCB_808186C: @ 0x0808186C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x30]
	ldr r5, _08081890 @ =PlayerCB_8081894
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081890: .4byte PlayerCB_8081894

	thumb_func_start PlayerCB_8081894
PlayerCB_8081894: @ 0x08081894
	bx lr
	.align 2, 0

	thumb_func_start sub_8081898
sub_8081898: @ 0x08081898
	push {r4, r5, r6, lr}
	ldr r6, _080818F4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r4, [r5, #0x20]
	adds r0, r5, #0
	bl sub_358_807C14C
	adds r0, r5, #0
	bl sub_80816C0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	ldr r1, _080818F8 @ =0x0000066C
	cmp r0, r1
	ble _080818EC
	ldr r1, _080818FC @ =gCamera
	movs r0, #0x10
	str r0, [r1, #0x10]
	adds r0, r5, #0
	bl sub_358_807BCCC
	adds r0, r5, #0
	bl sub_358_807BEF0
	adds r0, r5, #0
	bl sub_358_807D6C4
	adds r0, r5, #0
	bl sub_358_807CBC8
	movs r1, #0
	strb r1, [r5, #0x10]
	movs r0, #1
	strh r0, [r5, #8]
	strh r1, [r5, #0xc]
	ldr r1, [r6]
	ldr r0, _08081900 @ =Task_358_807B9B8
	str r0, [r1, #8]
_080818EC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080818F4: .4byte gCurTask
_080818F8: .4byte 0x0000066C
_080818FC: .4byte gCamera
_08081900: .4byte Task_358_807B9B8

	thumb_func_start Task_358_HyperEggRoboInit
Task_358_HyperEggRoboInit: @ 0x08081904
	push {r4, r5, lr}
	ldr r5, _08081930 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_358_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08081934
	ldr r0, [r5]
	bl TaskDestroy
	b _0808194E
	.align 2, 0
_08081930: .4byte gCurTask
_08081934:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08081948
	ldr r1, [r5]
	ldr r0, _08081944 @ =Task_358_8081958
	b _0808194C
	.align 2, 0
_08081944: .4byte Task_358_8081958
_08081948:
	ldr r1, [r5]
	ldr r0, _08081954 @ =Task_358_807B808
_0808194C:
	str r0, [r1, #8]
_0808194E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081954: .4byte Task_358_807B808

	thumb_func_start Task_358_8081958
Task_358_8081958: @ 0x08081958
	push {r4, r5, lr}
	ldr r5, _08081978 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #3
	bne _0808197C
	adds r0, r2, #0
	bl TaskDestroy
	b _080819B2
	.align 2, 0
_08081978: .4byte gCurTask
_0808197C:
	adds r0, r4, #0
	bl sub_358_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #2
	bne _080819B2
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080819B2
	movs r0, #0
	bl sub_807FB7C
	movs r0, #0xa
	bl sub_807FB7C
	movs r0, #0xb
	bl sub_807FB7C
	ldr r1, [r5]
	ldr r0, _080819B8 @ =Task_358_80819BC
	str r0, [r1, #8]
_080819B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080819B8: .4byte Task_358_80819BC

	thumb_func_start Task_358_80819BC
Task_358_80819BC: @ 0x080819BC
	push {r4, r5, lr}
	ldr r5, _080819DC @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #3
	bne _080819E0
	adds r0, r2, #0
	bl TaskDestroy
	b _08081A06
	.align 2, 0
_080819DC: .4byte gCurTask
_080819E0:
	adds r0, r4, #0
	bl sub_358_807C14C
	adds r0, r4, #0
	bl sub_80816C0
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #2
	bne _08081A06
	movs r0, #5
	strh r0, [r4, #8]
	movs r0, #0xa
	strh r0, [r4, #0xc]
	bl SetFixedRandomIfTimeAttackMode
	ldr r1, [r5]
	ldr r0, _08081A0C @ =Task_358_807B808
	str r0, [r1, #8]
_08081A06:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081A0C: .4byte Task_358_807B808

	thumb_func_start sub_8081A10
sub_8081A10: @ 0x08081A10
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	movs r0, #0x96
	strh r0, [r4, #0x30]
	ldr r5, _08081A38 @ =PlayerCB_80819BC
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081A38: .4byte PlayerCB_80819BC

	thumb_func_start PlayerCB_80819BC
PlayerCB_80819BC: @ 0x08081A3C
	bx lr
	.align 2, 0

	thumb_func_start sub_8081A40
sub_8081A40: @ 0x08081A40
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x94
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08081A58
	bl VramFree
	movs r0, #0
	str r0, [r4]
_08081A58:
	movs r0, #0x8a
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08081A6C
	bl VramFree
	movs r0, #0
	str r0, [r4]
_08081A6C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8081A74
sub_8081A74: @ 0x08081A74
	push {lr}
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r1, #0
	bne _08081A98
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, _08081A9C @ =gUnknown_080D5C38
	lsls r2, r2, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	strb r0, [r3, #0x1a]
_08081A98:
	pop {r0}
	bx r0
	.align 2, 0
_08081A9C: .4byte gUnknown_080D5C38

	thumb_func_start sub_8081AA0
sub_8081AA0: @ 0x08081AA0
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08081AB8
	bl VramFree
	movs r0, #0
	str r0, [r4]
_08081AB8:
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08081ACC
	bl VramFree
	movs r0, #0
	str r0, [r4]
_08081ACC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

@; For Final Boss
	thumb_func_start UpdateHandAnimation
UpdateHandAnimation: @ 0x08081AD4
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r1, #0
	beq _08081AE8
	cmp r1, #1
	beq _08081AF8
	b _08081B10
_08081AE8:
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, _08081AF4 @ =sBossFinalAnimsHandsLeft
	b _08081B00
	.align 2, 0
_08081AF4: .4byte sBossFinalAnimsHandsLeft
_08081AF8:
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, _08081B14 @ =sBossFinalAnimsHandsLeft+0x18
_08081B00:
	lsls r2, r2, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	strb r0, [r3, #0x1a]
_08081B10:
	pop {r0}
	bx r0
	.align 2, 0
_08081B14: .4byte sBossFinalAnimsHandsLeft+0x18

	thumb_func_start sub_8081B18
sub_8081B18: @ 0x08081B18
	bx lr
	.align 2, 0

	thumb_func_start sub_8081B1C
sub_8081B1C: @ 0x08081B1C
	bx lr
	.align 2, 0

	thumb_func_start sub_8081B20
sub_8081B20: @ 0x08081B20
	bx lr
	.align 2, 0

@ Unused?
	thumb_func_start sub_8081B24
sub_8081B24: @ 0x08081B24
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	mov r8, r1
	adds r7, r2, #0
	ldr r0, _08081B90 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r6, #0
_08081B42:
	lsls r0, r6, #2
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08081BA4
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08081B94
	adds r0, r5, #0
	adds r0, #0x7c
	ldr r1, [r4, #0x6c]
	cmp r1, r0
	beq _08081B7C
	adds r0, #0x28
	cmp r1, r0
	beq _08081B7C
	adds r0, #0x28
	cmp r1, r0
	beq _08081B7C
	adds r0, #0x28
	cmp r1, r0
	bne _08081BA4
_08081B7C:
	str r4, [sp]
	mov r0, sb
	mov r2, r8
	asrs r1, r2, #8
	asrs r2, r7, #8
	movs r3, #0
	bl sub_8020CE0
	b _08081BA4
	.align 2, 0
_08081B90: .4byte gCurTask
_08081B94:
	str r4, [sp]
	mov r0, sb
	mov r2, r8
	asrs r1, r2, #8
	asrs r2, r7, #8
	movs r3, #0
	bl sub_8020CE0
_08081BA4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08081B42
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8081BBC
sub_8081BBC: @ 0x08081BBC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08081BCE
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _08081BD0
_08081BCE:
	movs r1, #0
_08081BD0:
	ldr r0, _08081BE4 @ =gUnknown_080D5C48
	adds r0, r1, r0
	ldrb r0, [r0]
	movs r1, #0
	strh r0, [r2, #8]
	strh r1, [r2, #0xc]
	movs r0, #5
	strb r0, [r2, #1]
	pop {r0}
	bx r0
	.align 2, 0
_08081BE4: .4byte gUnknown_080D5C48

	thumb_func_start sub_8081BE8
sub_8081BE8: @ 0x08081BE8
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	beq _08081BFA
	cmp r1, #1
	beq _08081BFE
	b _08081C02
_08081BFA:
	movs r0, #0xa
	b _08081C00
_08081BFE:
	movs r0, #0x64
_08081C00:
	strh r0, [r2, #0xc]
_08081C02:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8081C08
sub_8081C08: @ 0x08081C08
	movs r1, #0x3c
	strh r1, [r0, #0x14]
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, _08081C20 @ =gUnknown_080D5C38
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #2]
	strb r1, [r0, #0x1a]
	bx lr
	.align 2, 0
_08081C20: .4byte gUnknown_080D5C38

	thumb_func_start TaskDestructor_ExtraChaosEmeralds
TaskDestructor_ExtraChaosEmeralds: @ 0x08081C24
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, _08081C48 @ =gStageData
	movs r0, #5
	strb r0, [r1, #4]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _08081C42
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x18]
_08081C42:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08081C48: .4byte gStageData

	thumb_func_start TaskDestructor_AltarEmeraldPostBossCutscene
TaskDestructor_AltarEmeraldPostBossCutscene: @ 0x08081C4C
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08081C64
	bl VramFree
	movs r0, #0
	str r0, [r4, #8]
_08081C64:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08081C6E
	bl VramFree
_08081C6E:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08081C78
	bl VramFree
_08081C78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.endif
