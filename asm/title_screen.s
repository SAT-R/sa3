.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

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
	ldr r3, _0808A294 @ =TaskDestructor_TitleScreen
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	b _0808A2AC
	.align 2, 0
_0808A288: .4byte gDispCnt
_0808A28C: .4byte 0x00001041
_0808A290: .4byte Task_TitleScreenMain
_0808A294: .4byte TaskDestructor_TitleScreen
_0808A298:
	ldr r0, _0808A304 @ =sub_808AA34
	movs r1, #0xb2
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0808A308 @ =TaskDestructor_TitleScreen
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
_0808A308: .4byte TaskDestructor_TitleScreen
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

	thumb_func_start TaskDestructor_TitleScreen
TaskDestructor_TitleScreen: @ 0x0808AF0C
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
