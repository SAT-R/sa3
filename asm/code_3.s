.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_80A1A4C
sub_80A1A4C: @ 0x080A1A4C
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _080A1B14 @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080A1B18 @ =Task_80A1BEC
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A1B1C @ =TaskDestructor_80A2098
	str r1, [sp]
	movs r1, #0xbc
	movs r3, #0
	bl TaskCreate
	movs r3, #0
	str r3, [sp, #4]
	ldr r4, _080A1B20 @ =0x040000D4
	add r1, sp, #4
	str r1, [r4]
	ldr r1, _080A1B24 @ =gBgCntRegs
	ldrh r2, [r1, #4]
	movs r1, #0xc
	ands r1, r2
	lsls r1, r1, #0xc
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [r4, #4]
	ldr r1, _080A1B28 @ =0x85000010
	str r1, [r4, #8]
	ldr r1, [r4, #8]
	ldr r5, _080A1B2C @ =gBgSprites_Unknown1
	strb r3, [r5, #2]
	ldr r1, _080A1B30 @ =gBgSprites_Unknown2
	strb r3, [r1, #8]
	strb r3, [r1, #9]
	movs r2, #0xff
	strb r2, [r1, #0xa]
	movs r4, #0x40
	strb r4, [r1, #0xb]
	strb r3, [r5, #1]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r2, #1
	rsbs r2, r2, #0
	strb r2, [r1, #6]
	strb r4, [r1, #7]
	strb r3, [r5]
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r2, [r1, #2]
	strb r4, [r1, #3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _080A1B34 @ =gLoadedSaveGame
	ldr r2, _080A1B38 @ =0x00000366
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #1]
	strb r6, [r4, #2]
	strb r3, [r4, #3]
	strb r3, [r4]
	str r3, [r4, #0xc]
	str r3, [r4, #0x10]
	movs r0, #1
	strh r0, [r4, #6]
	strh r3, [r4, #8]
	strh r3, [r4, #4]
	adds r0, r4, #0
	bl sub_80A1B68
	ldrb r0, [r4, #2]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A1B3C
	adds r0, r4, #0
	movs r1, #5
	bl sub_80A1FB0
	adds r0, r4, #0
	movs r1, #1
	bl sub_80A2024
	bl sub_80260F0
	bl m4aMPlayAllStop
	movs r0, #0x64      @ MUS_VS_MISS
	bl m4aSongNumStart
	b _080A1B60
	.align 2, 0
_080A1B14: .4byte gDispCnt
_080A1B18: .4byte Task_80A1BEC
_080A1B1C: .4byte TaskDestructor_80A2098
_080A1B20: .4byte 0x040000D4
_080A1B24: .4byte gBgCntRegs
_080A1B28: .4byte 0x85000010
_080A1B2C: .4byte gBgSprites_Unknown1
_080A1B30: .4byte gBgSprites_Unknown2
_080A1B34: .4byte gLoadedSaveGame
_080A1B38: .4byte 0x00000366
_080A1B3C:
	adds r0, r4, #0
	movs r1, #3
	bl sub_80A1FB0
	adds r0, r4, #0
	movs r1, #0
	bl sub_80A2024
	cmp r6, #0
	bne _080A1B56
	bl sub_8024040
	b _080A1B5A
_080A1B56:
	bl sub_80258D4
_080A1B5A:
	movs r0, #0x44      @ MUS_VS_MUSIC_1
	bl m4aSongNumStart
_080A1B60:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A1B68
sub_80A1B68: @ 0x080A1B68
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080A1BE4 @ =0x06010000
	mov r8, r0
	ldr r6, _080A1BE8 @ =gUnknown_080D6898
	ldrb r0, [r4, #1]
	lsls r0, r0, #3
	adds r1, r6, #4
	adds r0, r0, r1
	ldr r2, [r0]
	lsls r2, r2, #0x1d
	movs r5, #0
	str r5, [sp]
	lsrs r2, r2, #0x1a
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	mov r1, r8
	bl CpuFastSet
	adds r0, r4, #0
	adds r0, #0x94
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrh r1, [r1]
	movs r2, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #1]
	lsls r1, r1, #3
	adds r1, r1, r6
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x8c
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A1BE4: .4byte 0x06010000
_080A1BE8: .4byte gUnknown_080D6898

	thumb_func_start Task_80A1BEC
Task_80A1BEC: @ 0x080A1BEC
	push {r4, lr}
	ldr r0, _080A1C54 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080A1C3C
	ldr r2, _080A1C58 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A1C5C @ =gWinRegs
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
	ldr r1, _080A1C60 @ =gBldRegs
	ldr r0, _080A1C64 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #8]
	strh r3, [r4, #6]
_080A1C3C:
	ldrb r0, [r4, #2]
	cmp r0, #1
	bhi _080A1C92
	cmp r0, #0
	bne _080A1C72
	ldr r0, _080A1C68 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1C6C
	bl sub_8023A88
	b _080A1C88
	.align 2, 0
_080A1C54: .4byte gCurTask
_080A1C58: .4byte gDispCnt
_080A1C5C: .4byte gWinRegs
_080A1C60: .4byte gBldRegs
_080A1C64: .4byte 0x00003FFF
_080A1C68: .4byte gStageData
_080A1C6C:
	bl sub_8023C5C
	b _080A1C88
_080A1C72:
	ldr r0, _080A1C80 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1C84
	bl sub_802440C
	b _080A1C88
	.align 2, 0
_080A1C80: .4byte gStageData
_080A1C84:
	bl sub_8024584
_080A1C88:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _080A1CC6
_080A1C92:
	ldr r2, _080A1CAC @ =gBldRegs
	ldrh r1, [r2, #4]
	cmp r1, #0
	beq _080A1CB4
	ldrh r0, [r4, #8]
	lsrs r0, r0, #8
	strh r0, [r2, #4]
	ldr r1, _080A1CB0 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r4, #8]
	b _080A1CD4
	.align 2, 0
_080A1CAC: .4byte gBldRegs
_080A1CB0: .4byte 0xFFFFFF00
_080A1CB4:
	movs r0, #1
	strh r0, [r4, #6]
	strh r1, [r2, #4]
	ldrb r0, [r4, #2]
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A1CCC
_080A1CC6:
	bl sub_802613C
	b _080A1CD4
_080A1CCC:
	ldr r0, _080A1CDC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A1CE0 @ =sub_80A1DC8
	str r0, [r1, #8]
_080A1CD4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1CDC: .4byte gCurTask
_080A1CE0: .4byte sub_80A1DC8

	thumb_func_start sub_80A1CE4
sub_80A1CE4: @ 0x080A1CE4
	push {r4, lr}
	ldr r0, _080A1D40 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080A1D2C
	ldr r2, _080A1D44 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080A1D48 @ =gWinRegs
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
	ldr r1, _080A1D4C @ =gBldRegs
	ldr r0, _080A1D50 @ =0x00003FFF
	strh r0, [r1]
	strh r3, [r4, #6]
	strh r3, [r4, #8]
_080A1D2C:
	ldrb r0, [r4, #3]
	cmp r0, #1
	beq _080A1D5C
	ldr r0, _080A1D54 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1D58
	bl sub_8023BB0
	b _080A1D5C
	.align 2, 0
_080A1D40: .4byte gCurTask
_080A1D44: .4byte gDispCnt
_080A1D48: .4byte gWinRegs
_080A1D4C: .4byte gBldRegs
_080A1D50: .4byte 0x00003FFF
_080A1D54: .4byte gStageData
_080A1D58:
	bl sub_8023D60
_080A1D5C:
	ldr r1, _080A1D78 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080A1D7C
	ldrh r0, [r4, #8]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	strh r0, [r4, #8]
	b _080A1DBC
	.align 2, 0
_080A1D78: .4byte gBldRegs
_080A1D7C:
	movs r0, #0x10
	strh r0, [r1, #4]
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _080A1D8E
	movs r0, #1
	bl CreateCharacterSelect
	b _080A1DB4
_080A1D8E:
	ldrb r1, [r4, #2]
	cmp r1, #2
	bne _080A1D9E
	movs r0, #1
	movs r1, #0
	bl CreateMainMenu
	b _080A1DB4
_080A1D9E:
	cmp r1, #3
	bne _080A1DAC
	movs r0, #0
	movs r1, #4
	bl CreateMainMenu
	b _080A1DB4
_080A1DAC:
	movs r0, #0
	movs r1, #0
	bl CreateMainMenu
_080A1DB4:
	ldr r0, _080A1DC4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080A1DBC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1DC4: .4byte gCurTask

	thumb_func_start sub_80A1DC8
sub_80A1DC8: @ 0x080A1DC8
	push {r4, r5, r6, lr}
	ldr r0, _080A1DF0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _080A1E04
	ldr r0, _080A1DF4 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1DFE
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _080A1DF8
	bl sub_8023BB0
	b _080A1E26
	.align 2, 0
_080A1DF0: .4byte gCurTask
_080A1DF4: .4byte gStageData
_080A1DF8:
	bl sub_8023A88
	b _080A1E26
_080A1DFE:
	bl sub_8023C5C
	b _080A1E26
_080A1E04:
	ldr r0, _080A1E18 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1E22
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _080A1E1C
	bl sub_80244E4
	b _080A1E26
	.align 2, 0
_080A1E18: .4byte gStageData
_080A1E1C:
	bl sub_802440C
	b _080A1E26
_080A1E22:
	bl sub_8024584
_080A1E26:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #0
	bge _080A1E3A
	bl sub_802613C
	b _080A1EFE
_080A1E3A:
	ldrb r2, [r5, #2]
	cmp r2, #0
	bne _080A1E48
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	beq _080A1E5C
_080A1E48:
	cmp r2, #1
	bne _080A1EDC
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	beq _080A1E5C
	cmp r0, #7
	beq _080A1E5C
	cmp r0, #0xf
	bne _080A1EDC
_080A1E5C:
	ldr r0, _080A1E98 @ =gStageData
	ldrb r4, [r0, #6]
	cmp r4, #0
	bne _080A1EA8
	adds r0, r5, #0
	bl sub_80A208C
	ldr r0, _080A1E9C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A1EA8
	adds r0, r5, #0
	movs r1, #4
	bl sub_80A1FB0
	adds r0, r5, #0
	movs r1, #2
	bl sub_80A2024
	movs r0, #1
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #3]
	strh r4, [r5, #4]
	ldr r0, _080A1EA0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A1EA4 @ =sub_80A1F10
	b _080A1EFC
	.align 2, 0
_080A1E98: .4byte gStageData
_080A1E9C: .4byte gPressedKeys
_080A1EA0: .4byte gCurTask
_080A1EA4: .4byte sub_80A1F10
_080A1EA8:
	asrs r0, r6, #0x10
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A1EDC
	movs r4, #0
	movs r0, #2
	strb r0, [r5, #3]
	adds r0, r5, #0
	movs r1, #4
	bl sub_80A1FB0
	adds r0, r5, #0
	movs r1, #2
	bl sub_80A2024
	strh r4, [r5, #4]
	ldr r0, _080A1ED4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A1ED8 @ =sub_80A1F10
	b _080A1EFC
	.align 2, 0
_080A1ED4: .4byte gCurTask
_080A1ED8: .4byte sub_80A1F10
_080A1EDC:
	ldr r0, _080A1F04 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A1EFE
	bl sub_80260F0
	movs r0, #0x6b      @ SE_ABORT
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r5, #3]
	ldr r0, _080A1F08 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A1F0C @ =sub_80A1CE4
_080A1EFC:
	str r0, [r1, #8]
_080A1EFE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A1F04: .4byte gPressedKeys
_080A1F08: .4byte gCurTask
_080A1F0C: .4byte sub_80A1CE4

	thumb_func_start sub_80A1F10
sub_80A1F10: @ 0x080A1F10
	push {r4, lr}
	ldr r0, _080A1F38 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _080A1F4C
	ldr r0, _080A1F3C @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1F46
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _080A1F40
	bl sub_8023BB0
	b _080A1F6E
	.align 2, 0
_080A1F38: .4byte gCurTask
_080A1F3C: .4byte gStageData
_080A1F40:
	bl sub_8023A88
	b _080A1F6E
_080A1F46:
	bl sub_8023C5C
	b _080A1F6E
_080A1F4C:
	ldr r0, _080A1F60 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080A1F6A
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _080A1F64
	bl sub_80244E4
	b _080A1F6E
	.align 2, 0
_080A1F60: .4byte gStageData
_080A1F64:
	bl sub_802440C
	b _080A1F6E
_080A1F6A:
	bl sub_8024584
_080A1F6E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A1F7E
	bl sub_802613C
	b _080A1FA0
_080A1F7E:
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _080A1F8A
	movs r0, #0x63      @ MUS_VS_SUCCESS
	bl m4aSongNumStart
_080A1F8A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _080A1FA0
	ldr r0, _080A1FA8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080A1FAC @ =sub_80A1CE4
	str r0, [r1, #8]
_080A1FA0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1FA8: .4byte gCurTask
_080A1FAC: .4byte sub_80A1CE4

	thumb_func_start sub_80A1FB0
sub_80A1FB0: @ 0x080A1FB0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _080A200C @ =gBgCntRegs
	movs r6, #0
	movs r3, #0
	ldr r0, _080A2010 @ =0x00000E04
	strh r0, [r2, #2]
	ldr r0, _080A2014 @ =gBgScrollRegs
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	adds r0, r5, #0
	adds r0, #0x54
	ldr r2, _080A2018 @ =0x06004000
	str r2, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r2, _080A201C @ =0x06007000
	str r2, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	ldr r4, _080A2020 @ =gTilemapIdsConnectionStatus
	ldrb r2, [r5, #1]
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
	adds r5, #0x7e
	strb r6, [r5]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A200C: .4byte gBgCntRegs
_080A2010: .4byte 0x00000E04
_080A2014: .4byte gBgScrollRegs
_080A2018: .4byte 0x06004000
_080A201C: .4byte 0x06007000
_080A2020: .4byte gTilemapIdsConnectionStatus

	thumb_func_start sub_80A2024
sub_80A2024: @ 0x080A2024
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	ldr r2, _080A2078 @ =gBgCntRegs
	movs r5, #0
	movs r3, #0
	ldr r0, _080A207C @ =0x00000601
	strh r0, [r2]
	ldr r0, _080A2080 @ =gBgScrollRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	adds r0, r4, #0
	adds r0, #0x14
	movs r2, #0xc0
	lsls r2, r2, #0x13
	str r2, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r2, _080A2084 @ =0x06003000
	str r2, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	ldr r2, _080A2088 @ =gTilemapIdsConnectionStatus
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
	adds r4, #0x3e
	strb r5, [r4]
	strh r3, [r0, #0x2e]
	bl DrawBackground
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A2078: .4byte gBgCntRegs
_080A207C: .4byte 0x00000601
_080A2080: .4byte gBgScrollRegs
_080A2084: .4byte 0x06003000
_080A2088: .4byte gTilemapIdsConnectionStatus

	thumb_func_start sub_80A208C
sub_80A208C: @ 0x080A208C
	push {lr}
	adds r0, #0x94
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_80A2098
TaskDestructor_80A2098: @ 0x080A2098
	bx lr
	.align 2, 0
