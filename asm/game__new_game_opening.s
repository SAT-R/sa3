.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateNewGamesaveOpening
CreateNewGamesaveOpening: @ 0x080AD824
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	movs r7, #0
	ldr r0, _080AD928 @ =Task_14_A_80AD968
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AD92C @ =TaskDestructor_14_A_80AE688
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r5, #0
	movs r6, #0
	strh r7, [r4, #0xc]
	strb r5, [r4, #8]
	movs r0, #1
	mov sb, r0
	str r0, [r4]
	str r7, [r4, #4]
	movs r1, #0x12
	mov r8, r1
	mov r2, r8
	strb r2, [r4, #0xa]
	ldr r7, _080AD930 @ =0x00000CAC
	adds r0, r7, #0
	bl EwramMalloc
	str r0, [r4, #0x10]
	strb r5, [r0, #6]
	ldr r0, [r4, #0x10]
	str r6, [r0]
	ldr r1, _080AD934 @ =0x06012000
	str r1, [r0, #0x28]
	str r6, [sp, #4]
	ldr r2, _080AD938 @ =0x010003C0
	add r0, sp, #4
	bl CpuFastSet
	ldr r1, [r4, #0x10]
	ldr r0, [r1, #0x28]
	str r0, [r1, #0x24]
	ldr r1, _080AD93C @ =gDispCnt
	movs r0, #0xc1
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r2, _080AD940 @ =gWinRegs
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
	ldr r1, _080AD944 @ =gBldRegs
	ldr r0, _080AD948 @ =0x00003FFF
	strh r0, [r1]
	strh r6, [r1, #4]
	str r6, [sp, #8]
	ldr r2, _080AD94C @ =0x040000D4
	add r0, sp, #8
	str r0, [r2]
	ldr r0, _080AD950 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080AD954 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, _080AD958 @ =gBgSprites_Unknown1
	strb r5, [r3, #2]
	ldr r0, _080AD95C @ =gBgSprites_Unknown2
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r2, #0x40
	strb r2, [r0, #0xb]
	mov r1, r8
	strb r1, [r3, #1]
	movs r1, #0x20
	strb r1, [r0, #4]
	strb r5, [r0, #5]
	strb r2, [r0, #6]
	strb r1, [r0, #7]
	strb r5, [r3]
	strb r5, [r0]
	strb r5, [r0, #1]
	subs r1, #0x21
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AD960 @ =gBgPalette
	strh r0, [r1]
	ldr r1, _080AD964 @ =gFlags
	ldr r0, [r1]
	mov r2, sb
	orrs r0, r2
	str r0, [r1]
	bl m4aMPlayAllStop
	movs r0, #8         @ MUS_NEWGAME_INTRO
	bl m4aSongNumStart
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AD928: .4byte Task_14_A_80AD968
_080AD92C: .4byte TaskDestructor_14_A_80AE688
_080AD930: .4byte 0x00000CAC
_080AD934: .4byte 0x06012000
_080AD938: .4byte 0x010003C0
_080AD93C: .4byte gDispCnt
_080AD940: .4byte gWinRegs
_080AD944: .4byte gBldRegs
_080AD948: .4byte 0x00003FFF
_080AD94C: .4byte 0x040000D4
_080AD950: .4byte gBgCntRegs
_080AD954: .4byte 0x85000010
_080AD958: .4byte gBgSprites_Unknown1
_080AD95C: .4byte gBgSprites_Unknown2
_080AD960: .4byte gBgPalette
_080AD964: .4byte gFlags

	thumb_func_start Task_14_A_80AD968
Task_14_A_80AD968: @ 0x080AD968
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _080AD9D4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	cmp r0, #1
	bne _080AD9A6
	ldr r1, _080AD9D8 @ =gUnknown_080DBCF4
	ldrb r0, [r5, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r4, #0
	strb r0, [r5, #0xa]
	ldr r0, [r5, #0x10]
	ldr r2, _080AD9DC @ =0x06012000
	str r2, [r0, #0x28]
	str r2, [r0, #0x24]
	ldrb r1, [r5, #0xa]
	str r2, [sp]
	movs r2, #0xa
	movs r3, #0x41
	bl sub_80AD7B4
	str r4, [r5]
	ldrb r0, [r5, #8]
	adds r0, #1
	strb r0, [r5, #8]
_080AD9A6:
	ldr r0, [r5]
	cmp r0, #0
	bne _080AD9BA
	ldr r0, [r5, #0x10]
	bl sub_8023734
	str r0, [r5]
	ldr r0, [r5, #0x10]
	bl sub_80239A8
_080AD9BA:
	ldr r0, [r5]
	cmp r0, #1
	bne _080AD9CA
	movs r0, #0
	str r0, [r5]
	ldr r1, [r6]
	ldr r0, _080AD9E0 @ =Task_80AE69C
	str r0, [r1, #8]
_080AD9CA:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AD9D4: .4byte gCurTask
_080AD9D8: .4byte gUnknown_080DBCF4
_080AD9DC: .4byte 0x06012000
_080AD9E0: .4byte Task_80AE69C

	thumb_func_start sub_80AD9E4
sub_80AD9E4: @ 0x080AD9E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	movs r7, #0
	ldr r0, _080ADAE0 @ =Task_14_B_80ADB20
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080ADAE4 @ =TaskDestructor_14_B_80AE71C
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r5, #0
	movs r6, #0
	strh r7, [r4, #0xc]
	strb r5, [r4, #8]
	movs r0, #1
	mov sb, r0
	str r0, [r4]
	str r7, [r4, #4]
	movs r1, #0x12
	mov r8, r1
	mov r2, r8
	strb r2, [r4, #0xa]
	ldr r7, _080ADAE8 @ =0x00000CAC
	adds r0, r7, #0
	bl EwramMalloc
	str r0, [r4, #0x10]
	strb r5, [r0, #6]
	ldr r0, [r4, #0x10]
	str r6, [r0]
	ldr r1, _080ADAEC @ =0x06012000
	str r1, [r0, #0x28]
	str r6, [sp, #4]
	ldr r2, _080ADAF0 @ =0x010003C0
	add r0, sp, #4
	bl CpuFastSet
	ldr r1, [r4, #0x10]
	ldr r0, [r1, #0x28]
	str r0, [r1, #0x24]
	ldr r1, _080ADAF4 @ =gDispCnt
	movs r0, #0xc1
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r2, _080ADAF8 @ =gWinRegs
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
	ldr r1, _080ADAFC @ =gBldRegs
	ldr r0, _080ADB00 @ =0x00003FFF
	strh r0, [r1]
	str r6, [sp, #8]
	ldr r2, _080ADB04 @ =0x040000D4
	add r0, sp, #8
	str r0, [r2]
	ldr r0, _080ADB08 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080ADB0C @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, _080ADB10 @ =gBgSprites_Unknown1
	strb r5, [r3, #2]
	ldr r0, _080ADB14 @ =gBgSprites_Unknown2
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r2, #0x40
	strb r2, [r0, #0xb]
	mov r1, r8
	strb r1, [r3, #1]
	movs r1, #0x20
	strb r1, [r0, #4]
	strb r5, [r0, #5]
	strb r2, [r0, #6]
	strb r1, [r0, #7]
	strb r5, [r3]
	strb r5, [r0]
	strb r5, [r0, #1]
	subs r1, #0x21
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080ADB18 @ =gBgPalette
	strh r0, [r1]
	ldr r1, _080ADB1C @ =gFlags
	ldr r0, [r1]
	mov r2, sb
	orrs r0, r2
	str r0, [r1]
	bl m4aMPlayAllStop
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ADAE0: .4byte Task_14_B_80ADB20
_080ADAE4: .4byte TaskDestructor_14_B_80AE71C
_080ADAE8: .4byte 0x00000CAC
_080ADAEC: .4byte 0x06012000
_080ADAF0: .4byte 0x010003C0
_080ADAF4: .4byte gDispCnt
_080ADAF8: .4byte gWinRegs
_080ADAFC: .4byte gBldRegs
_080ADB00: .4byte 0x00003FFF
_080ADB04: .4byte 0x040000D4
_080ADB08: .4byte gBgCntRegs
_080ADB0C: .4byte 0x85000010
_080ADB10: .4byte gBgSprites_Unknown1
_080ADB14: .4byte gBgSprites_Unknown2
_080ADB18: .4byte gBgPalette
_080ADB1C: .4byte gFlags

	thumb_func_start Task_14_B_80ADB20
Task_14_B_80ADB20: @ 0x080ADB20
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _080ADB8C @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _080ADB90 @ =gBldRegs
	movs r5, #0
	strh r5, [r0, #4]
	ldr r0, [r4]
	cmp r0, #1
	bne _080ADB62
	ldr r1, _080ADB94 @ =gUnknown_080DBCF9
	ldrb r0, [r4, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xa]
	ldr r0, [r4, #0x10]
	ldr r2, _080ADB98 @ =0x06012000
	str r2, [r0, #0x28]
	str r2, [r0, #0x24]
	ldrb r1, [r4, #0xa]
	str r2, [sp]
	movs r2, #0xa
	movs r3, #0x41
	bl sub_80AD7B4
	str r5, [r4]
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
_080ADB62:
	ldr r0, [r4]
	cmp r0, #0
	bne _080ADB76
	ldr r0, [r4, #0x10]
	bl sub_8023734
	str r0, [r4]
	ldr r0, [r4, #0x10]
	bl sub_80239A8
_080ADB76:
	ldr r0, [r4]
	cmp r0, #1
	bne _080ADB84
	str r5, [r4]
	ldr r1, [r6]
	ldr r0, _080ADB9C @ =Task_14_B_80AE720
	str r0, [r1, #8]
_080ADB84:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080ADB8C: .4byte gCurTask
_080ADB90: .4byte gBldRegs
_080ADB94: .4byte gUnknown_080DBCF9
_080ADB98: .4byte 0x06012000
_080ADB9C: .4byte Task_14_B_80AE720

	thumb_func_start Task_6C_80ADBA0
Task_6C_80ADBA0: @ 0x080ADBA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080ADC60 @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	mov r8, r2
	add r8, r4
	movs r0, #0x14
	bl VramMalloc
	adds r7, r0, #0
	movs r0, #0x23
	bl VramMalloc
	adds r1, r0, #0
	ldr r2, _080ADC64 @ =0x0300000C
	adds r0, r4, r2
	str r1, [r0]
	ldr r5, _080ADC68 @ =gUnknown_080DBCFC
	ldrh r1, [r5]
	movs r6, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	mov r2, r8
	ldr r1, [r2, #4]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r2, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r2, #0x10
	mov sl, r2
	mov r1, sl
	strb r1, [r0, #0x1c]
	movs r2, #2
	mov sb, r2
	mov r1, sb
	strb r1, [r0, #0x1f]
	str r6, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r2, _080ADC6C @ =0x0300003C
	adds r4, r4, r2
	str r7, [r4]
	ldrh r0, [r5, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r5, #0x12]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	mov r1, r8
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	mov r0, sl
	strb r0, [r4, #0x1c]
	mov r1, sb
	strb r1, [r4, #0x1f]
	str r6, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r2, _080ADC60 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _080ADC70 @ =Task_6C_80ADC74
	str r0, [r1, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ADC60: .4byte gCurTask
_080ADC64: .4byte 0x0300000C
_080ADC68: .4byte gUnknown_080DBCFC
_080ADC6C: .4byte 0x0300003C
_080ADC70: .4byte Task_6C_80ADC74

	thumb_func_start Task_6C_80ADC74
Task_6C_80ADC74: @ 0x080ADC74
	push {r4, lr}
	ldr r0, _080ADC9C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080ADCA0
	adds r0, r4, #0
	bl sub_80AE850
	adds r0, r4, #0
	bl sub_80AE814
	cmp r0, #1
	bne _080ADCB0
	b _080ADCAA
	.align 2, 0
_080ADC9C: .4byte gCurTask
_080ADCA0:
	adds r0, r4, #0
	bl sub_80AE850
	cmp r0, #0
	bne _080ADCB0
_080ADCAA:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080ADCB0:
	ldrb r0, [r4]
	cmp r0, #1
	beq _080ADCBC
	cmp r0, #3
	beq _080ADCDC
	b _080ADCEA
_080ADCBC:
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _080ADCD8 @ =gUnknown_080DBCFC
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _080ADCEA
	.align 2, 0
_080ADCD8: .4byte gUnknown_080DBCFC
_080ADCDC:
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, _080ADCF0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080ADCF4 @ =Task_6C_80AE7C4
	str r0, [r1, #8]
_080ADCEA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ADCF0: .4byte gCurTask
_080ADCF4: .4byte Task_6C_80AE7C4

	thumb_func_start Task_9C_80ADCF8
Task_9C_80ADCF8: @ 0x080ADCF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080ADDFC @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r6, r4, r6
	movs r0, #0x14
	bl VramMalloc
	mov sl, r0
	movs r0, #9
	bl VramMalloc
	adds r7, r0, #0
	movs r0, #0x24
	bl VramMalloc
	adds r1, r0, #0
	ldr r2, _080ADE00 @ =0x0300003C
	adds r0, r4, r2
	str r1, [r0]
	ldr r1, _080ADE04 @ =gUnknown_080DBD1C
	mov r8, r1
	ldrh r1, [r1]
	movs r5, #0
	strh r1, [r0, #0xc]
	mov r2, r8
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #4]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r2, #0x10
	mov sb, r2
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r1, _080ADE08 @ =0x0300000C
	adds r0, r4, r1
	str r7, [r0]
	ldr r2, _080ADE0C @ =gUnknown_080DBD34
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #4]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x88
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	mov r2, sb
	strb r2, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #3
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r2, _080ADE10 @ =0x0300006C
	adds r4, r4, r2
	mov r0, sl
	str r0, [r4]
	mov r1, r8
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	mov r0, sb
	strb r0, [r4, #0x1c]
	movs r1, #2
	strb r1, [r4, #0x1f]
	str r5, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r2, _080ADDFC @ =gCurTask
	ldr r1, [r2]
	ldr r0, _080ADE14 @ =sub_80ADE18
	str r0, [r1, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ADDFC: .4byte gCurTask
_080ADE00: .4byte 0x0300003C
_080ADE04: .4byte gUnknown_080DBD1C
_080ADE08: .4byte 0x0300000C
_080ADE0C: .4byte gUnknown_080DBD34
_080ADE10: .4byte 0x0300006C
_080ADE14: .4byte sub_80ADE18

	thumb_func_start sub_80ADE18
sub_80ADE18: @ 0x080ADE18
	push {r4, r5, lr}
	ldr r0, _080ADE5C @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #1
	bne _080ADE32
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
_080ADE32:
	adds r0, r4, #0
	bl sub_80AE8D4
	cmp r0, #1
	bne _080ADE68
	ldrb r0, [r4]
	cmp r0, #0
	bne _080ADE68
	ldr r0, _080ADE60 @ =0x0300003C
	adds r1, r5, r0
	ldr r2, _080ADE64 @ =gUnknown_080DBD1C
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	b _080ADE94
	.align 2, 0
_080ADE5C: .4byte gCurTask
_080ADE60: .4byte 0x0300003C
_080ADE64: .4byte gUnknown_080DBD1C
_080ADE68:
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0xd
	bne _080ADE94
	ldr r0, [r4, #0x3c]
	bl VramFree
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0
	strb r0, [r4]
	strh r1, [r4, #2]
	ldr r0, _080ADE8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080ADE90 @ =sub_80AE884
	str r0, [r1, #8]
	b _080ADE9A
	.align 2, 0
_080ADE8C: .4byte gCurTask
_080ADE90: .4byte sub_80AE884
_080ADE94:
	adds r0, r4, #0
	bl sub_80ADEA0
_080ADE9A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80ADEA0
sub_80ADEA0: @ 0x080ADEA0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0xc
	ldrb r0, [r4]
	adds r5, r4, #0
	adds r5, #0x6c
	cmp r0, #1
	bhi _080ADEB4
	subs r5, #0x30
_080ADEB4:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r7, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, #0x12
	strh r0, [r6, #0x10]
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	subs r0, #5
	strh r0, [r6, #0x12]
	ldrb r0, [r4]
	cmp r0, #1
	bhi _080ADEEE
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080ADEF4
_080ADEEE:
	ldr r0, [r6, #8]
	ldr r1, _080ADF0C @ =0xFFFFFBFF
	ands r0, r1
_080ADEF4:
	str r0, [r6, #8]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080ADF0C: .4byte 0xFFFFFBFF

	thumb_func_start Task_9C_80ADF10
Task_9C_80ADF10: @ 0x080ADF10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _080AE018 @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r4, r5
	movs r0, #0x14
	bl VramMalloc
	adds r7, r0, #0
	movs r0, #0x4f
	bl VramMalloc
	adds r2, r0, #0
	ldr r3, _080AE01C @ =0x0300003C
	adds r0, r4, r3
	str r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r2, r2, r1
	ldr r3, _080AE020 @ =gUnknown_080DBD3C
	mov r8, r3
	ldrh r1, [r3]
	movs r6, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r3, #0x10
	mov sb, r3
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r3, #2
	strb r3, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #3
	mov sl, r1
	str r1, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldr r3, _080AE024 @ =0x0300000C
	adds r0, r4, r3
	ldr r2, [sp]
	str r2, [r0]
	ldr r2, _080AE028 @ =gUnknown_080DBD54
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x88
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r3, #0
	strb r3, [r0, #0x1f]
	mov r1, sl
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r3, _080AE02C @ =0x0300006C
	adds r4, r4, r3
	str r7, [r4]
	mov r1, r8
	ldrh r0, [r1, #0x10]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r3, #0x90
	lsls r3, r3, #3
	strh r3, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	mov r0, sb
	strb r0, [r4, #0x1c]
	movs r1, #2
	strb r1, [r4, #0x1f]
	str r6, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r3, _080AE018 @ =gCurTask
	ldr r1, [r3]
	ldr r0, _080AE030 @ =sub_80AE034
	str r0, [r1, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AE018: .4byte gCurTask
_080AE01C: .4byte 0x0300003C
_080AE020: .4byte gUnknown_080DBD3C
_080AE024: .4byte 0x0300000C
_080AE028: .4byte gUnknown_080DBD54
_080AE02C: .4byte 0x0300006C
_080AE030: .4byte sub_80AE034

	thumb_func_start sub_80AE034
sub_80AE034: @ 0x080AE034
	push {r4, r5, lr}
	ldr r5, _080AE080 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #1
	bne _080AE060
	ldr r0, _080AE084 @ =0x0300003C
	adds r1, r1, r0
	ldr r2, _080AE088 @ =gUnknown_080DBD3C
	ldrh r0, [r2, #8]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_080AE060:
	adds r0, r4, #0
	bl sub_80AE09C
	cmp r0, #1
	bne _080AE090
	ldr r0, [r4, #0x3c]
	bl VramFree
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	ldr r1, [r5]
	ldr r0, _080AE08C @ =sub_80AE90C
	str r0, [r1, #8]
	b _080AE096
	.align 2, 0
_080AE080: .4byte gCurTask
_080AE084: .4byte 0x0300003C
_080AE088: .4byte gUnknown_080DBD3C
_080AE08C: .4byte sub_80AE90C
_080AE090:
	adds r0, r4, #0
	bl sub_80AE110
_080AE096:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80AE09C
sub_80AE09C: @ 0x080AE09C
	push {lr}
	adds r2, r0, #0
	ldr r3, [r2, #4]
	ldr r0, _080AE0EC @ =0x0000BDFF
	cmp r3, r0
	bgt _080AE100
	ldr r1, _080AE0F0 @ =gUnknown_080DBD5C
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #8
	adds r1, r3, r0
	str r1, [r2, #4]
	ldr r0, _080AE0F4 @ =0x000063FF
	cmp r1, r0
	ble _080AE0C2
	ldrb r0, [r2]
	cmp r0, #0
	beq _080AE0DC
_080AE0C2:
	ldr r0, _080AE0F8 @ =0x000081FF
	ldr r1, [r2, #4]
	cmp r1, r0
	ble _080AE0D0
	ldrb r0, [r2]
	cmp r0, #2
	beq _080AE0DC
_080AE0D0:
	ldr r0, _080AE0FC @ =0x00009FFF
	cmp r1, r0
	ble _080AE0E0
	ldrb r0, [r2]
	cmp r0, #3
	bne _080AE0E0
_080AE0DC:
	adds r0, #1
	strb r0, [r2]
_080AE0E0:
	ldr r0, _080AE0EC @ =0x0000BDFF
	cmp r1, r0
	ble _080AE10A
	adds r0, #1
	b _080AE104
	.align 2, 0
_080AE0EC: .4byte 0x0000BDFF
_080AE0F0: .4byte gUnknown_080DBD5C
_080AE0F4: .4byte 0x000063FF
_080AE0F8: .4byte 0x000081FF
_080AE0FC: .4byte 0x00009FFF
_080AE100:
	movs r0, #0xbe
	lsls r0, r0, #8
_080AE104:
	str r0, [r2, #4]
	movs r0, #1
	b _080AE10C
_080AE10A:
	movs r0, #0
_080AE10C:
	pop {r1}
	bx r1

	thumb_func_start sub_80AE110
sub_80AE110: @ 0x080AE110
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0xc
	ldrb r0, [r4]
	adds r5, r4, #0
	adds r5, #0x6c
	cmp r0, #4
	bhi _080AE124
	subs r5, #0x30
_080AE124:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r7, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _080AE16C
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	strh r0, [r6, #0x10]
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r0, #0x10
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _080AE166
	movs r0, #0xff
	strb r0, [r6, #0x1b]
_080AE166:
	adds r0, r6, #0
	bl DisplaySprite
_080AE16C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80AE174
sub_80AE174: @ 0x080AE174
	push {lr}
	sub sp, #4
	ldr r0, _080AE1A8 @ =Task_9C_80ADF10
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AE1AC @ =TaskDestructor_9C_80AE1B4
	str r1, [sp]
	movs r1, #0x9c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	strh r0, [r1, #2]
	ldr r0, _080AE1B0 @ =0xFFFFD800
	str r0, [r1, #4]
	movs r0, #0xf2
	lsls r0, r0, #7
	str r0, [r1, #8]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080AE1A8: .4byte Task_9C_80ADF10
_080AE1AC: .4byte TaskDestructor_9C_80AE1B4
_080AE1B0: .4byte 0xFFFFD800

	thumb_func_start TaskDestructor_9C_80AE1B4
TaskDestructor_9C_80AE1B4: @ 0x080AE1B4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x6c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start CreateUnkTask9C
CreateUnkTask9C: @ 0x080AE1C8
	push {lr}
	sub sp, #4
	ldr r0, _080AE1FC @ =Task_9C_80ADCF8
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AE200 @ =TaskDestructor_80AE208
	str r1, [sp]
	movs r1, #0x9c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	strh r0, [r1, #2]
	movs r0, #0xbe
	lsls r0, r0, #8
	str r0, [r1, #4]
	ldr r0, _080AE204 @ =0xFFFFD800
	str r0, [r1, #8]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080AE1FC: .4byte Task_9C_80ADCF8
_080AE200: .4byte TaskDestructor_80AE208
_080AE204: .4byte 0xFFFFD800

	thumb_func_start TaskDestructor_80AE208
TaskDestructor_80AE208: @ 0x080AE208
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x6c]
	bl VramFree
	ldr r0, [r4, #0xc]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80AE224
sub_80AE224: @ 0x080AE224
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r0, [r0, #0x5c]
	bl VramFree
	ldr r0, _080AE244 @ =0x030000B4
	adds r4, r4, r0
	ldr r0, [r4]
	bl EwramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE244: .4byte 0x030000B4

	thumb_func_start sub_80AE248
sub_80AE248: @ 0x080AE248
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, _080AE274 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _080AE280
	ldr r1, _080AE278 @ =0x0300001A
	adds r0, r5, r1
	ldr r2, _080AE27C @ =0x03000028
	adds r1, r5, r2
	bl sub_80AD0B0
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r4, #0x10]
	b _080AE2AC
	.align 2, 0
_080AE274: .4byte gCurTask
_080AE278: .4byte 0x0300001A
_080AE27C: .4byte 0x03000028
_080AE280:
	movs r0, #0
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x18]
	ldr r3, _080AE2B4 @ =0x030000B4
	adds r1, r5, r3
	ldr r1, [r1]
	adds r1, #0x24
	ldr r4, _080AE2B8 @ =0x03000008
	adds r2, r5, r4
	ldr r7, _080AE2BC @ =0x03000010
	adds r3, r5, r7
	adds r7, #0x4c
	adds r4, r5, r7
	str r4, [sp]
	adds r7, #0x28
	adds r4, r5, r7
	str r4, [sp, #4]
	bl sub_80AE300
	ldr r1, [r6]
	ldr r0, _080AE2C0 @ =sub_80ACDB8
	str r0, [r1, #8]
_080AE2AC:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AE2B4: .4byte 0x030000B4
_080AE2B8: .4byte 0x03000008
_080AE2BC: .4byte 0x03000010
_080AE2C0: .4byte sub_80ACDB8

	thumb_func_start sub_80AE2C4
sub_80AE2C4: @ 0x080AE2C4
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x20]
	cmp r0, #0
	bge _080AE2DA
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1, #0x20]
	cmp r0, #0
	ble _080AE2E2
_080AE2DA:
	movs r0, #0
	str r0, [r1, #0x20]
	movs r0, #1
	b _080AE2E4
_080AE2E2:
	movs r0, #0
_080AE2E4:
	pop {r1}
	bx r1

	thumb_func_start sub_80AE2E8
sub_80AE2E8: @ 0x080AE2E8
	ldr r1, [r0, #0x20]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x24]
	movs r2, #0xb0
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r0, #0x2c]
	movs r0, #0
	bx lr

	thumb_func_start sub_80AE300
sub_80AE300: @ 0x080AE300
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov sl, r1
	mov sb, r2
	mov r8, r3
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r7, #0
	ldr r0, _080AE3B4 @ =Task_B8_80AE53C
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AE3B8 @ =TaskDestructor_80AE524
	str r1, [sp]
	movs r1, #0xb8
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	movs r6, #0
	strb r7, [r1, #0x10]
	mov r0, r8
	str r0, [r1, #0x14]
	strb r5, [r1, #0x18]
	strb r7, [r1, #0x1a]
	movs r0, #1
	str r0, [r1]
	mov r2, sb
	str r2, [r1, #0xc]
	movs r0, #0x12
	strb r0, [r1, #0x19]
	movs r2, #0xe1
	lsls r2, r2, #9
	str r2, [r1, #0x20]
	movs r0, #0xc4
	lsls r0, r0, #7
	str r0, [r1, #0x24]
	str r2, [r1, #0x28]
	movs r0, #0x92
	lsls r0, r0, #8
	str r0, [r1, #0x2c]
	ldr r2, _080AE3BC @ =0x030000AC
	adds r0, r4, r2
	ldr r2, [sp, #0x28]
	str r2, [r0]
	ldr r2, _080AE3C0 @ =0x030000B0
	adds r0, r4, r2
	ldr r2, [sp, #0x2c]
	str r2, [r0]
	mov r0, sl
	str r0, [r1, #0x30]
	ldr r7, _080AE3C4 @ =0x00000CAC
	adds r0, r7, #0
	bl EwramMalloc
	ldr r1, _080AE3C8 @ =0x030000B4
	adds r4, r4, r1
	str r0, [r4]
	strb r6, [r0, #6]
	ldr r0, [r4]
	str r6, [r0]
	ldr r1, [r4]
	ldr r0, _080AE3CC @ =0x06012F00
	str r0, [r1, #0x28]
	str r6, [sp, #4]
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	ldr r2, _080AE3D0 @ =0x010003C0
	add r0, sp, #4
	bl CpuFastSet
	ldr r1, [r4]
	ldr r0, [r1, #0x28]
	str r0, [r1, #0x24]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AE3B4: .4byte Task_B8_80AE53C
_080AE3B8: .4byte TaskDestructor_80AE524
_080AE3BC: .4byte 0x030000AC
_080AE3C0: .4byte 0x030000B0
_080AE3C4: .4byte 0x00000CAC
_080AE3C8: .4byte 0x030000B4
_080AE3CC: .4byte 0x06012F00
_080AE3D0: .4byte 0x010003C0

	thumb_func_start sub_80AE3D4
sub_80AE3D4: @ 0x080AE3D4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80AE3E8
sub_80AE3E8: @ 0x080AE3E8
	push {r4, r5, lr}
	ldr r5, _080AE420 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AD190
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080AE40A
	adds r0, r4, #0
	bl sub_80AE428
_080AE40A:
	ldr r0, _080AE424 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AE418
	ldr r0, [r5]
	bl TaskDestroy
_080AE418:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AE420: .4byte gCurTask
_080AE424: .4byte gBldRegs

	thumb_func_start sub_80AE428
sub_80AE428: @ 0x080AE428
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0xc]
	ldr r0, _080AE440 @ =0xFFFFBA00
	cmp r1, r0
	ble _080AE43A
	ldr r3, _080AE444 @ =0xFFFFFF00
	adds r0, r1, r3
	str r0, [r2, #0xc]
_080AE43A:
	pop {r0}
	bx r0
	.align 2, 0
_080AE440: .4byte 0xFFFFBA00
_080AE444: .4byte 0xFFFFFF00

	thumb_func_start sub_80AE448
sub_80AE448: @ 0x080AE448
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x1c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_80AE45C
sub_80AE45C: @ 0x080AE45C
	push {r4, r5, lr}
	ldr r5, _080AE480 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AD408
	ldr r0, _080AE484 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AE488
	ldr r0, [r5]
	bl TaskDestroy
	b _080AE4BC
	.align 2, 0
_080AE480: .4byte gCurTask
_080AE484: .4byte gBldRegs
_080AE488:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AE4BC
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #2
	bne _080AE4BC
	adds r0, r4, #0
	bl sub_80AE4F8
	cmp r0, #0
	bne _080AE4A8
	adds r0, r4, #0
	bl sub_80AE4C4
	b _080AE4BC
_080AE4A8:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bhi _080AE4BC
	adds r0, r4, #0
	bl sub_80AE4C4
_080AE4BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AE4C4
sub_80AE4C4: @ 0x080AE4C4
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0xc]
	ldr r2, [r1]
	asrs r2, r2, #8
	strh r2, [r4, #0x10]
	ldr r1, [r0, #0x10]
	ldr r3, [r1]
	asrs r3, r3, #8
	strh r3, [r4, #0x12]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	adds r2, r2, r1
	strh r2, [r4, #0x10]
	ldr r0, [r0, #0x18]
	asrs r0, r0, #8
	adds r3, r3, r0
	strh r3, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80AE4F8
sub_80AE4F8: @ 0x080AE4F8
	push {lr}
	adds r1, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r1, #0x14]
	ldr r0, [r1, #0x18]
	ldr r2, _080AE518 @ =0xFFFFE800
	cmp r0, r2
	bge _080AE512
	adds r0, #0x40
	str r0, [r1, #0x18]
	cmp r0, r2
	ble _080AE51C
_080AE512:
	str r2, [r1, #0x18]
	movs r0, #1
	b _080AE51E
	.align 2, 0
_080AE518: .4byte 0xFFFFE800
_080AE51C:
	movs r0, #0
_080AE51E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_80AE524
TaskDestructor_80AE524: @ 0x080AE524
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _080AE538 @ =0x030000B4
	adds r0, r0, r1
	ldr r0, [r0]
	bl EwramFree
	pop {r0}
	bx r0
	.align 2, 0
_080AE538: .4byte 0x030000B4

	thumb_func_start Task_B8_80AE53C
Task_B8_80AE53C: @ 0x080AE53C
	push {r4, lr}
	ldr r2, _080AE568 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _080AE570
	ldr r2, _080AE56C @ =0x0300001A
	adds r0, r1, r2
	adds r2, #0xe
	adds r1, r1, r2
	ldrb r2, [r4, #0x18]
	bl sub_80AD234
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r4, #0x10]
	b _080AE57A
	.align 2, 0
_080AE568: .4byte gCurTask
_080AE56C: .4byte 0x0300001A
_080AE570:
	movs r0, #0
	strb r0, [r4, #0x10]
	ldr r1, [r2]
	ldr r0, _080AE580 @ =Task_B8_80AD634
	str r0, [r1, #8]
_080AE57A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE580: .4byte Task_B8_80AD634

	thumb_func_start sub_80AE584
sub_80AE584: @ 0x080AE584
	push {r4, r5, lr}
	ldr r5, _080AE5B8 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	movs r1, #0
	str r1, [r0, #8]
	bl sub_80AD72C
	ldr r0, _080AE5BC @ =0x030000B4
	adds r4, r4, r0
	ldr r0, [r4]
	bl sub_80239A8
	ldr r0, _080AE5C0 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AE5B2
	ldr r0, [r5]
	bl TaskDestroy
_080AE5B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AE5B8: .4byte gCurTask
_080AE5BC: .4byte 0x030000B4
_080AE5C0: .4byte gBldRegs

	thumb_func_start sub_80AE5C4
sub_80AE5C4: @ 0x080AE5C4
	push {r4, r5, r6, lr}
	ldr r6, _080AE5F4 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_80AD72C
	ldr r0, [r4]
	cmp r0, #0
	bne _080AE5E8
	ldr r1, _080AE5F8 @ =0x030000B4
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_80239A8
_080AE5E8:
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	beq _080AE5FC
	subs r0, #1
	strh r0, [r4, #0x1e]
	b _080AE630
	.align 2, 0
_080AE5F4: .4byte gCurTask
_080AE5F8: .4byte 0x030000B4
_080AE5FC:
	ldr r0, [r4, #0xc]
	ldr r3, [r0]
	cmp r3, #1
	bne _080AE630
	ldr r2, _080AE620 @ =gUnknown_080DBCBE
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4, #0x10]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080AE628
	ldr r1, [r6]
	ldr r0, _080AE624 @ =sub_80AE584
	b _080AE62E
	.align 2, 0
_080AE620: .4byte gUnknown_080DBCBE
_080AE624: .4byte sub_80AE584
_080AE628:
	str r3, [r4]
	ldr r1, [r6]
	ldr r0, _080AE638 @ =Task_B8_80AD634
_080AE62E:
	str r0, [r1, #8]
_080AE630:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AE638: .4byte Task_B8_80AD634

	thumb_func_start sub_80AE63C
sub_80AE63C: @ 0x080AE63C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x20]
	movs r3, #0xf0
	lsls r3, r3, #8
	cmp r1, r3
	ble _080AE656
	ldr r0, _080AE65C @ =0xFFFFFB00
	adds r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, _080AE660 @ =0x0000EFFF
	cmp r1, r0
	bgt _080AE664
_080AE656:
	str r3, [r2, #0x20]
	movs r0, #1
	b _080AE666
	.align 2, 0
_080AE65C: .4byte 0xFFFFFB00
_080AE660: .4byte 0x0000EFFF
_080AE664:
	movs r0, #0
_080AE666:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80AE66C
sub_80AE66C: @ 0x080AE66C
	ldr r1, [r0, #0x20]
	ldr r2, _080AE684 @ =0xFFFFE000
	adds r1, r1, r2
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x24]
	movs r2, #0xb0
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r0, #0x2c]
	movs r0, #0
	bx lr
	.align 2, 0
_080AE684: .4byte 0xFFFFE000

	thumb_func_start TaskDestructor_14_A_80AE688
TaskDestructor_14_A_80AE688: @ 0x080AE688
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl EwramFree
	pop {r0}
	bx r0

	thumb_func_start Task_80AE69C
Task_80AE69C: @ 0x080AE69C
	push {lr}
	ldr r0, _080AE6BC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r1, _080AE6C0 @ =gUnknown_080DBCF4
	ldrb r0, [r3, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080AE6C8
	ldr r0, _080AE6C4 @ =Task_80AE6D8
	b _080AE6CE
	.align 2, 0
_080AE6BC: .4byte gCurTask
_080AE6C0: .4byte gUnknown_080DBCF4
_080AE6C4: .4byte Task_80AE6D8
_080AE6C8:
	movs r0, #1
	str r0, [r3]
	ldr r0, _080AE6D4 @ =Task_14_A_80AD968
_080AE6CE:
	str r0, [r2, #8]
	pop {r0}
	bx r0
	.align 2, 0
_080AE6D4: .4byte Task_14_A_80AD968

	thumb_func_start Task_80AE6D8
Task_80AE6D8: @ 0x080AE6D8
	push {lr}
	ldr r1, _080AE704 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AE708 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AE70C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AE710 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AE714 @ =gVramGraphicsCopyCursor
	ldr r0, _080AE718 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	bl CreateGameIntroState
	pop {r0}
	bx r0
	.align 2, 0
_080AE704: .4byte 0x0000FFFF
_080AE708: .4byte gBackgroundsCopyQueueCursor
_080AE70C: .4byte gBackgroundsCopyQueueIndex
_080AE710: .4byte gBgSpritesCount
_080AE714: .4byte gVramGraphicsCopyCursor
_080AE718: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start TaskDestructor_14_B_80AE71C
TaskDestructor_14_B_80AE71C: @ 0x080AE71C
	bx lr
	.align 2, 0

	thumb_func_start Task_14_B_80AE720
Task_14_B_80AE720: @ 0x080AE720
	push {r4, r5, lr}
	ldr r5, _080AE758 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	bl sub_80239A8
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _080AE750
	bl sub_8000804
	bl sub_8001E58
	ldr r1, [r5]
	ldr r0, _080AE75C @ =Task_14_B_80AE760
	str r0, [r1, #8]
_080AE750:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AE758: .4byte gCurTask
_080AE75C: .4byte Task_14_B_80AE760

	thumb_func_start Task_14_B_80AE760
Task_14_B_80AE760: @ 0x080AE760
	push {lr}
	bl sub_80C621C
	movs r0, #1
	bl sub_808ADF0
	pop {r0}
	bx r0

	thumb_func_start sub_80AE770
sub_80AE770: @ 0x080AE770
	push {lr}
	sub sp, #4
	ldr r0, _080AE7A4 @ =Task_6C_80ADBA0
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AE7A8 @ =TaskDestructor_6C_80AE7B0
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	strh r0, [r1, #2]
	movs r0, #0xbe
	lsls r0, r0, #8
	str r0, [r1, #4]
	ldr r0, _080AE7AC @ =0xFFFFD800
	str r0, [r1, #8]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080AE7A4: .4byte Task_6C_80ADBA0
_080AE7A8: .4byte TaskDestructor_6C_80AE7B0
_080AE7AC: .4byte 0xFFFFD800

	thumb_func_start TaskDestructor_6C_80AE7B0
TaskDestructor_6C_80AE7B0: @ 0x080AE7B0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x3c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start Task_6C_80AE7C4
Task_6C_80AE7C4: @ 0x080AE7C4
	push {r4, lr}
	ldr r0, _080AE80C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AE850
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0xd2
	bgt _080AE7F4
	adds r0, r1, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd2
	bne _080AE7F4
	movs r0, #0
	bl sub_80ACC40
_080AE7F4:
	ldr r0, _080AE810 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AE804
	ldr r0, _080AE80C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AE804:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE80C: .4byte gCurTask
_080AE810: .4byte gBldRegs

	thumb_func_start sub_80AE814
sub_80AE814: @ 0x080AE814
	push {lr}
	adds r1, r0, #0
	movs r0, #0xbe
	lsls r0, r0, #8
	str r0, [r1, #4]
	ldr r2, [r1, #8]
	ldr r0, _080AE83C @ =0x000079FF
	cmp r2, r0
	bgt _080AE840
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1, #8]
	movs r2, #0xf4
	lsls r2, r2, #7
	cmp r0, r2
	ble _080AE84A
	str r2, [r1, #8]
	movs r0, #1
	b _080AE84C
	.align 2, 0
_080AE83C: .4byte 0x000079FF
_080AE840:
	movs r0, #0xf4
	lsls r0, r0, #7
	str r0, [r1, #8]
	movs r0, #1
	b _080AE84C
_080AE84A:
	movs r0, #0
_080AE84C:
	pop {r1}
	bx r1

	thumb_func_start sub_80AE850
sub_80AE850: @ 0x080AE850
	push {r4, r5, lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	adds r5, r1, #0
	adds r5, #0x3c
	cmp r0, #2
	bhi _080AE860
	subs r5, #0x30
_080AE860:
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r1, #8]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80AE884
sub_80AE884: @ 0x080AE884
	push {r4, lr}
	ldr r0, _080AE8CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ADEA0
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0x78
	bgt _080AE8B4
	adds r0, r1, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	bne _080AE8B4
	movs r0, #1
	bl sub_80ACC40
_080AE8B4:
	ldr r0, _080AE8D0 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AE8C4
	ldr r0, _080AE8CC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AE8C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE8CC: .4byte gCurTask
_080AE8D0: .4byte gBldRegs

	thumb_func_start sub_80AE8D4
sub_80AE8D4: @ 0x080AE8D4
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #8]
	ldr r0, _080AE8F8 @ =0x000079FF
	cmp r2, r0
	bgt _080AE8FC
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	str r0, [r1, #8]
	movs r2, #0xf4
	lsls r2, r2, #7
	cmp r0, r2
	ble _080AE906
	str r2, [r1, #8]
	movs r0, #1
	b _080AE908
	.align 2, 0
_080AE8F8: .4byte 0x000079FF
_080AE8FC:
	movs r0, #0xf4
	lsls r0, r0, #7
	str r0, [r1, #8]
	movs r0, #1
	b _080AE908
_080AE906:
	movs r0, #0
_080AE908:
	pop {r1}
	bx r1

	thumb_func_start sub_80AE90C
sub_80AE90C: @ 0x080AE90C
	push {r4, lr}
	ldr r0, _080AE954 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AE110
	ldrh r1, [r4, #2]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0x78
	bgt _080AE93C
	adds r0, r1, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	bne _080AE93C
	movs r0, #2
	bl sub_80ACC40
_080AE93C:
	ldr r0, _080AE958 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AE94C
	ldr r0, _080AE954 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AE94C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AE954: .4byte gCurTask
_080AE958: .4byte gBldRegs

@ ---

	thumb_func_start sub_80AE95C
sub_80AE95C: @ 0x080AE95C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080AEA10 @ =gDispCnt
	ldr r2, _080AEA14 @ =0x00001041
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080AEA18 @ =Task_A4_80AEA44
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AEA1C @ =TaskDestructor_80AED7C
	str r1, [sp]
	movs r1, #0xa4
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	ldr r0, _080AEA20 @ =gLoadedSaveGame
	ldr r1, _080AEA24 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r3]
	strb r4, [r3, #1]
	movs r0, #0x1b
	strb r0, [r3, #2]
	strb r1, [r3, #3]
	movs r5, #0
	strh r1, [r3, #4]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r3, #0xc]
	ldr r0, _080AEA28 @ =gUnknown_080DBD88
	lsls r4, r4, #1
	adds r4, r4, r0
	ldrh r0, [r4]
	lsls r0, r0, #8
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	str r1, [r3, #0x18]
	str r1, [r3, #0x1c]
	str r1, [r3, #0x20]
	str r1, [sp, #4]
	ldr r2, _080AEA2C @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _080AEA30 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080AEA34 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r4, _080AEA38 @ =gBgSprites_Unknown1
	strb r5, [r4, #2]
	ldr r0, _080AEA3C @ =gBgSprites_Unknown2
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r2, #0x40
	strb r2, [r0, #0xb]
	strb r5, [r4, #1]
	strb r5, [r0, #4]
	strb r5, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r5, [r4]
	strb r5, [r0]
	strb r5, [r0, #1]
	strb r1, [r0, #2]
	strb r2, [r0, #3]
	ldr r0, _080AEA40 @ =0x06010000
	str r0, [r3, #8]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AEA10: .4byte gDispCnt
_080AEA14: .4byte 0x00001041
_080AEA18: .4byte Task_A4_80AEA44
_080AEA1C: .4byte TaskDestructor_80AED7C
_080AEA20: .4byte gLoadedSaveGame
_080AEA24: .4byte 0x00000366
_080AEA28: .4byte gUnknown_080DBD88
_080AEA2C: .4byte 0x040000D4
_080AEA30: .4byte gBgCntRegs
_080AEA34: .4byte 0x85000010
_080AEA38: .4byte gBgSprites_Unknown1
_080AEA3C: .4byte gBgSprites_Unknown2
_080AEA40: .4byte 0x06010000

	thumb_func_start Task_A4_80AEA44
Task_A4_80AEA44: @ 0x080AEA44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _080AEB40 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r1, _080AEB44 @ =0x03000024
	adds r0, r5, r1
	ldr r2, _080AEB48 @ =gDispCnt
	mov sb, r2
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	orrs r1, r2
	mov r2, sb
	strh r1, [r2]
	ldr r3, _080AEB4C @ =gBgCntRegs
	mov sl, r3
	movs r4, #0
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r3]
	ldr r1, _080AEB50 @ =gBgScrollRegs
	mov r8, r1
	ldr r1, _080AEB54 @ =0x0000FFFC
	mov r2, r8
	strh r1, [r2]
	subs r1, #8
	strh r1, [r2, #2]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080AEB58 @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r6, _080AEB5C @ =gUnknown_080DBD64
	ldrb r2, [r7]
	lsls r2, r2, #1
	ldrb r3, [r7, #1]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r6
	ldrh r1, [r2]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r6, #0x20
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r3, _080AEB60 @ =0x0300004E
	adds r1, r5, r3
	movs r2, #0
	strb r2, [r1]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	ldr r3, _080AEB64 @ =0x03000064
	adds r0, r5, r3
	mov r2, sb
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r3, #0
	orrs r1, r2
	mov r2, sb
	strh r1, [r2]
	ldr r1, _080AEB68 @ =0x00001608
	mov r3, sl
	strh r1, [r3, #2]
	mov r1, r8
	strh r4, [r1, #4]
	strh r4, [r1, #6]
	ldr r1, _080AEB6C @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080AEB70 @ =0x0600B000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0xab
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r6, [r0, #0x26]
	strh r6, [r0, #0x28]
	ldr r2, _080AEB74 @ =0x0300008E
	adds r5, r5, r2
	movs r3, #0
	strb r3, [r5]
	strh r4, [r0, #0x2e]
	bl DrawBackground
	ldr r4, _080AEB78 @ =gFlags
	ldr r3, [r4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _080AEB80
	ldr r0, _080AEB7C @ =gUnknown_08E2EF64
	ldrb r1, [r7, #1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0x10
	movs r2, #0x20
	bl CopyBgPaletteMasked
	b _080AEB9E
	.align 2, 0
_080AEB40: .4byte gCurTask
_080AEB44: .4byte 0x03000024
_080AEB48: .4byte gDispCnt
_080AEB4C: .4byte gBgCntRegs
_080AEB50: .4byte gBgScrollRegs
_080AEB54: .4byte 0x0000FFFC
_080AEB58: .4byte 0x06003000
_080AEB5C: .4byte gUnknown_080DBD64
_080AEB60: .4byte 0x0300004E
_080AEB64: .4byte 0x03000064
_080AEB68: .4byte 0x00001608
_080AEB6C: .4byte 0x06008000
_080AEB70: .4byte 0x0600B000
_080AEB74: .4byte 0x0300008E
_080AEB78: .4byte gFlags
_080AEB7C: .4byte gUnknown_08E2EF64
_080AEB80:
	ldr r1, _080AEBD4 @ =0x040000D4
	ldr r2, _080AEBD8 @ =gUnknown_08E2EF64
	ldrb r0, [r7, #1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _080AEBDC @ =gBgPalette + 0x20
	str r0, [r1, #4]
	ldr r0, _080AEBE0 @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r4]
_080AEB9E:
	ldr r1, _080AEBE4 @ =gUnknown_080DBE50
	ldrb r0, [r7, #1]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r7, #1]
	adds r0, r7, #1
	adds r1, r7, #2
	adds r2, r7, #0
	adds r2, #0xc
	adds r3, r7, #0
	adds r3, #0x10
	ldr r4, [r7, #8]
	str r4, [sp]
	bl CreateSomeTask_809BF3C
	ldr r0, _080AEBE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AEBEC @ =Task_A4_80AEBF0
	str r0, [r1, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AEBD4: .4byte 0x040000D4
_080AEBD8: .4byte gUnknown_08E2EF64
_080AEBDC: .4byte gBgPalette + 0x20
_080AEBE0: .4byte 0x80000020
_080AEBE4: .4byte gUnknown_080DBE50
_080AEBE8: .4byte gCurTask
_080AEBEC: .4byte Task_A4_80AEBF0

	thumb_func_start Task_A4_80AEBF0
Task_A4_80AEBF0: @ 0x080AEBF0
	push {r4, r5, lr}
	ldr r5, _080AEC60 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _080AEC40
	ldr r2, _080AEC64 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AEC68 @ =gWinRegs
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
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080AEC6C @ =gBldRegs
	ldr r0, _080AEC70 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #4]
	strb r3, [r4, #3]
_080AEC40:
	adds r0, r4, #0
	bl sub_80AEDB8
	ldr r1, _080AEC6C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080AEC78
	ldrh r0, [r4, #4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r1, _080AEC74 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #4]
	adds r0, r0, r3
	strh r0, [r4, #4]
	b _080AEC8A
	.align 2, 0
_080AEC60: .4byte gCurTask
_080AEC64: .4byte gDispCnt
_080AEC68: .4byte gWinRegs
_080AEC6C: .4byte gBldRegs
_080AEC70: .4byte 0x00003FFF
_080AEC74: .4byte 0xFFFFFF00
_080AEC78:
	strh r0, [r1, #4]
	bl m4aMPlayAllStop
	movs r0, #0x63      @ MUS_VS_SUCCESS
	bl m4aSongNumStart
	ldr r1, [r5]
	ldr r0, _080AEC90 @ =Task_A4_80AED80
	str r0, [r1, #8]
_080AEC8A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AEC90: .4byte Task_A4_80AED80

	thumb_func_start sub_80AEC94
sub_80AEC94: @ 0x080AEC94
	push {r4, r5, lr}
	ldr r0, _080AED00 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _080AECDE
	ldr r2, _080AED04 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AED08 @ =gWinRegs
	movs r4, #0
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
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080AED0C @ =gBldRegs
	ldr r0, _080AED10 @ =0x00003FFF
	strh r0, [r1]
	strh r4, [r5, #4]
	strb r3, [r5, #3]
_080AECDE:
	adds r0, r5, #0
	bl sub_80AEDB8
	ldr r1, _080AED0C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080AED14
	ldrh r0, [r5, #4]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r5, #4]
	adds r0, r0, r3
	strh r0, [r5, #4]
	b _080AED5A
	.align 2, 0
_080AED00: .4byte gCurTask
_080AED04: .4byte gDispCnt
_080AED08: .4byte gWinRegs
_080AED0C: .4byte gBldRegs
_080AED10: .4byte 0x00003FFF
_080AED14:
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r5, #0xc]
	movs r0, #0x1d
	strb r0, [r5, #2]
	movs r4, #0
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, _080AED60 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AED64 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AED68 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080AED6C @ =gBgSpritesCount
	strb r4, [r0]
	ldr r1, _080AED70 @ =gVramGraphicsCopyCursor
	ldr r0, _080AED74 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _080AED78 @ =gStageData
	ldrb r1, [r2, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	ldrb r1, [r2, #0xa]
	subs r1, #2
	bl WarpToMap
_080AED5A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AED60: .4byte 0x0000FFFF
_080AED64: .4byte gBackgroundsCopyQueueCursor
_080AED68: .4byte gBackgroundsCopyQueueIndex
_080AED6C: .4byte gBgSpritesCount
_080AED70: .4byte gVramGraphicsCopyCursor
_080AED74: .4byte gVramGraphicsCopyQueueIndex
_080AED78: .4byte gStageData

	thumb_func_start TaskDestructor_80AED7C
TaskDestructor_80AED7C: @ 0x080AED7C
	bx lr
	.align 2, 0

	thumb_func_start Task_A4_80AED80
Task_A4_80AED80: @ 0x080AED80
	push {r4, lr}
	ldr r4, _080AEDAC @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80AEDB8
	ldr r0, _080AEDB0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AEDA4
	ldr r1, [r4]
	ldr r0, _080AEDB4 @ =sub_80AEC94
	str r0, [r1, #8]
_080AEDA4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AEDAC: .4byte gCurTask
_080AEDB0: .4byte gPressedKeys
_080AEDB4: .4byte sub_80AEC94

	thumb_func_start sub_80AEDB8
sub_80AEDB8: @ 0x080AEDB8
	ldr r2, [r0, #0x1c]
	adds r2, #0xc0
	str r2, [r0, #0x1c]
	ldr r1, [r0, #0x20]
	subs r1, #0xc0
	str r1, [r0, #0x20]
	ldr r0, _080AEDD0 @ =gBgScrollRegs
	asrs r2, r2, #8
	strh r2, [r0, #4]
	asrs r1, r1, #8
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
_080AEDD0: .4byte gBgScrollRegs
