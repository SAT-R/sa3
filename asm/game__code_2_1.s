.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ TODO: game__code_2_0.s, game__code_2_1.s and game__code_2_2.s might be the same module?

	thumb_func_start sub_809D5B8
sub_809D5B8: @ 0x0809D5B8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _0809D670 @ =Task_809D810
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0809D674 @ =TaskDestructor_809E858
	str r1, [sp]
	movs r1, #0xd4
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	str r5, [r4, #0xc]
	str r6, [r4]
	movs r5, #0
	strb r5, [r4, #5]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	strh r5, [r4, #0xa]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	str r5, [r4, #0x18]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x1c]
	ldr r1, _0809D678 @ =0xFFFFCE00
	str r1, [r4, #0x20]
	ldr r0, _0809D67C @ =0xFFFF8800
	str r0, [r4, #0x2c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x30]
	str r1, [r4, #0x24]
	str r0, [r4, #0x28]
	adds r0, r4, #0
	bl sub_809D6A0
	ldr r2, _0809D680 @ =gWinRegs
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r2, _0809D684 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0809D688 @ =gBgPalette
	strh r5, [r0]
	ldr r5, _0809D68C @ =gFlags
	ldr r0, [r5]
	movs r1, #1
	orrs r0, r1
	str r0, [r5]
	ldr r6, _0809D690 @ =gUnknown_080D97F8
	ldr r1, _0809D694 @ =0x05000200
	adds r0, r6, #0
	movs r2, #0x28
	bl CpuFastSet
	ldr r0, _0809D698 @ =gUnknown_080D9898
	ldr r4, _0809D69C @ =gObjPalette + 0xE0
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	subs r4, #0xe0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x28
	bl CpuFastSet
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809D670: .4byte Task_809D810
_0809D674: .4byte TaskDestructor_809E858
_0809D678: .4byte 0xFFFFCE00
_0809D67C: .4byte 0xFFFF8800
_0809D680: .4byte gWinRegs
_0809D684: .4byte gDispCnt
_0809D688: .4byte gBgPalette
_0809D68C: .4byte gFlags
_0809D690: .4byte gUnknown_080D97F8
_0809D694: .4byte 0x05000200
_0809D698: .4byte gUnknown_080D9898
_0809D69C: .4byte gObjPalette + 0xE0

	thumb_func_start sub_809D6A0
sub_809D6A0: @ 0x0809D6A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _0809D804 @ =gLoadedSaveGame
	ldr r1, _0809D808 @ =0x00000366
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r0, r7, #0
	adds r0, #0x34
	ldr r3, [r7, #0xc]
	str r3, [r7, #0x34]
	ldr r6, _0809D80C @ =gUnknown_080D9738
	lsls r4, r2, #2
	str r4, [sp]
	lsls r2, r2, #5
	adds r1, r6, #4
	mov r8, r1
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r3, r3, r1
	str r3, [r7, #0xc]
	adds r2, r2, r6
	ldrh r1, [r2]
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r4, #0xc0
	lsls r4, r4, #1
	mov sl, r4
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r4, #0x10
	mov sb, r4
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r4, #0
	strb r4, [r0, #0x1f]
	movs r1, #0x80
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x5c
	ldr r3, [r7, #0xc]
	str r3, [r7, #0x5c]
	ldr r2, [sp]
	adds r2, #1
	lsls r2, r2, #3
	adds r1, r2, #0
	add r1, r8
	ldr r4, [r1]
	mov ip, r4
	mov r1, ip
	lsls r1, r1, #5
	mov ip, r1
	add r3, ip
	str r3, [r7, #0xc]
	adds r2, r2, r6
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r4, sl
	strh r4, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r4, #0
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0x84
	ldr r1, [r7, #0xc]
	str r1, [r0]
	ldr r4, [sp]
	adds r4, #2
	lsls r4, r4, #3
	add r8, r4
	mov r1, r8
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r7, #0xc]
	adds r1, r1, r2
	str r1, [r7, #0xc]
	adds r4, r4, r6
	ldrh r1, [r4]
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r4, sl
	strh r4, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	movs r4, #0
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	adds r0, #0xac
	ldr r1, [r7, #0xc]
	str r1, [r0]
	ldr r2, [r6, #0x1c]
	lsls r2, r2, #5
	ldr r1, [r7, #0xc]
	adds r1, r1, r2
	str r1, [r7, #0xc]
	ldrh r1, [r6, #0x18]
	strh r1, [r0, #0xc]
	ldrb r1, [r6, #0x1a]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x2c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x30]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	mov r1, sl
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	mov r4, sb
	strb r4, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D804: .4byte gLoadedSaveGame
_0809D808: .4byte 0x00000366
_0809D80C: .4byte gUnknown_080D9738

	thumb_func_start Task_809D810
Task_809D810: @ 0x0809D810
	push {r4, r5, r6, r7, lr}
	ldr r7, _0809D848 @ =gMultiSioSend
	ldr r0, _0809D84C @ =gStageData
	ldrb r5, [r0, #6]
	movs r6, #0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809D868
	ldr r1, _0809D850 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809D854 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809D858 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0809D85C @ =gBgSpritesCount
	strb r6, [r0]
	ldr r1, _0809D860 @ =gVramGraphicsCopyCursor
	ldr r0, _0809D864 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809D92C
	.align 2, 0
_0809D848: .4byte gMultiSioSend
_0809D84C: .4byte gStageData
_0809D850: .4byte 0x0000FFFF
_0809D854: .4byte gBackgroundsCopyQueueCursor
_0809D858: .4byte gBackgroundsCopyQueueIndex
_0809D85C: .4byte gBgSpritesCount
_0809D860: .4byte gVramGraphicsCopyCursor
_0809D864: .4byte gVramGraphicsCopyQueueIndex
_0809D868:
	ldr r0, _0809D934 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r5, #0
	beq _0809D87C
	ldr r0, _0809D938 @ =0x00006611
	strh r0, [r7]
_0809D87C:
	adds r0, r4, #0
	bl sub_809E7DC
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	bne _0809D8BE
	ldr r3, _0809D93C @ =gBldRegs
	ldr r0, _0809D940 @ =0x00003FFF
	strh r0, [r3]
	ldr r2, _0809D944 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0xc0
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809D948 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _0809D94C @ =0x00003112
	strh r0, [r1, #8]
	strh r6, [r1, #0xa]
	movs r0, #0x1f
	strh r0, [r3, #2]
	movs r0, #6
	strh r0, [r3, #4]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #8]
	movs r0, #1
	strh r0, [r4, #0xa]
_0809D8BE:
	ldr r1, [r4, #0x18]
	movs r2, #0x88
	lsls r2, r2, #7
	cmp r1, r2
	bgt _0809D8DA
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, _0809D950 @ =0x000043FF
	cmp r1, r0
	ble _0809D8DA
	str r2, [r4, #0x18]
	movs r6, #1
_0809D8DA:
	ldr r1, [r4, #0x10]
	ldr r0, _0809D954 @ =0x000017FF
	cmp r1, r0
	ble _0809D8F8
	ldr r2, _0809D958 @ =0xFFFFF800
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	cmp r0, r1
	bgt _0809D8F8
	str r1, [r4, #0x10]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0809D8F8:
	ldr r2, _0809D948 @ =gWinRegs
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r6, #2
	bne _0809D92C
	ldr r1, _0809D93C @ =gBldRegs
	ldr r0, _0809D940 @ =0x00003FFF
	strh r0, [r1]
	ldr r0, _0809D94C @ =0x00003112
	strh r0, [r2, #8]
	movs r0, #0x1f
	strh r0, [r1, #2]
	movs r0, #6
	strh r0, [r1, #4]
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r0, _0809D934 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809D95C @ =sub_809D960
	str r0, [r1, #8]
_0809D92C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D934: .4byte gCurTask
_0809D938: .4byte 0x00006611
_0809D93C: .4byte gBldRegs
_0809D940: .4byte 0x00003FFF
_0809D944: .4byte gDispCnt
_0809D948: .4byte gWinRegs
_0809D94C: .4byte 0x00003112
_0809D950: .4byte 0x000043FF
_0809D954: .4byte 0x000017FF
_0809D958: .4byte 0xFFFFF800
_0809D95C: .4byte sub_809D960

	thumb_func_start sub_809D960
sub_809D960: @ 0x0809D960
	push {r4, r5, r6, lr}
	ldr r6, _0809D998 @ =gMultiSioSend
	ldr r0, _0809D99C @ =gStageData
	ldrb r4, [r0, #6]
	movs r5, #0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809D9B8
	ldr r1, _0809D9A0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809D9A4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809D9A8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0809D9AC @ =gBgSpritesCount
	strb r5, [r0]
	ldr r1, _0809D9B0 @ =gVramGraphicsCopyCursor
	ldr r0, _0809D9B4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809DA04
	.align 2, 0
_0809D998: .4byte gMultiSioSend
_0809D99C: .4byte gStageData
_0809D9A0: .4byte 0x0000FFFF
_0809D9A4: .4byte gBackgroundsCopyQueueCursor
_0809D9A8: .4byte gBackgroundsCopyQueueIndex
_0809D9AC: .4byte gBgSpritesCount
_0809D9B0: .4byte gVramGraphicsCopyCursor
_0809D9B4: .4byte gVramGraphicsCopyQueueIndex
_0809D9B8:
	cmp r4, #0
	beq _0809D9C0
	ldr r0, _0809DA0C @ =0x00006611
	strh r0, [r6]
_0809D9C0:
	ldr r6, _0809DA10 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809E7DC
	adds r0, r4, #0
	bl sub_809DFAC
	adds r0, r4, #0
	bl sub_809E018
	adds r0, r4, #0
	bl sub_809E7F8
	cmp r0, #1
	bne _0809D9EA
	movs r5, #1
_0809D9EA:
	adds r0, r4, #0
	bl sub_809E828
	cmp r0, #1
	bne _0809D9FA
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809D9FA:
	cmp r5, #2
	bne _0809DA04
	ldr r1, [r6]
	ldr r0, _0809DA14 @ =sub_809DA18
	str r0, [r1, #8]
_0809DA04:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809DA0C: .4byte 0x00006611
_0809DA10: .4byte gCurTask
_0809DA14: .4byte sub_809DA18

	thumb_func_start sub_809DA18
sub_809DA18: @ 0x0809DA18
	push {r4, r5, r6, r7, lr}
	ldr r7, _0809DA50 @ =gMultiSioSend
	ldr r0, _0809DA54 @ =gStageData
	ldrb r5, [r0, #6]
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809DA70
	ldr r1, _0809DA58 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809DA5C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809DA60 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809DA64 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809DA68 @ =gVramGraphicsCopyCursor
	ldr r0, _0809DA6C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809DB64
	.align 2, 0
_0809DA50: .4byte gMultiSioSend
_0809DA54: .4byte gStageData
_0809DA58: .4byte 0x0000FFFF
_0809DA5C: .4byte gBackgroundsCopyQueueCursor
_0809DA60: .4byte gBackgroundsCopyQueueIndex
_0809DA64: .4byte gBgSpritesCount
_0809DA68: .4byte gVramGraphicsCopyCursor
_0809DA6C: .4byte gVramGraphicsCopyQueueIndex
_0809DA70:
	ldr r6, _0809DAB4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_809E7DC
	adds r0, r4, #0
	bl sub_809DFAC
	adds r0, r4, #0
	bl sub_809E018
	cmp r5, #0
	beq _0809DAF4
	ldr r3, _0809DAB8 @ =gMultiSioRecv
	ldrh r2, [r3]
	adds r1, r2, #0
	ldr r0, _0809DABC @ =0x00006612
	cmp r1, r0
	bne _0809DAC4
	ldrb r0, [r4, #5]
	cmp r0, #1
	bne _0809DAAE
	bl m4aMPlayAllStop
	movs r0, #0x62      @ MUS_VS_BGM_5
	bl m4aSongNumStart
_0809DAAE:
	ldr r1, [r6]
	ldr r0, _0809DAC0 @ =sub_809DCA4
	b _0809DB62
	.align 2, 0
_0809DAB4: .4byte gCurTask
_0809DAB8: .4byte gMultiSioRecv
_0809DABC: .4byte 0x00006612
_0809DAC0: .4byte sub_809DCA4
_0809DAC4:
	ldr r0, _0809DAEC @ =0x00006611
	cmp r1, r0
	beq _0809DAF0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0809DAD6
	movs r0, #0
	strb r0, [r4, #5]
_0809DAD6:
	ldrh r0, [r3]
	strb r0, [r4, #5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0809DAE6
	movs r0, #0
	strb r0, [r4, #5]
_0809DAE6:
	ldrb r0, [r4, #5]
	strh r0, [r7]
	b _0809DB64
	.align 2, 0
_0809DAEC: .4byte 0x00006611
_0809DAF0:
	strh r1, [r7]
	b _0809DB64
_0809DAF4:
	ldr r6, _0809DB38 @ =gRepeatedKeys
	ldrh r1, [r6]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0809DB08
	movs r0, #0x6c
	bl m4aSongNumStart
	strb r5, [r4, #5]
_0809DB08:
	ldrh r1, [r6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809DB1C
	movs r0, #0x6c
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4, #5]
_0809DB1C:
	ldrb r0, [r4, #5]
	strh r0, [r7]
	ldr r0, _0809DB3C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0809DB40
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809DB64
	b _0809DB44
	.align 2, 0
_0809DB38: .4byte gRepeatedKeys
_0809DB3C: .4byte gPressedKeys
_0809DB40:
	movs r0, #1
	strb r0, [r4, #5]
_0809DB44:
	ldrb r0, [r4, #5]
	cmp r0, #1
	bne _0809DB56
	bl m4aMPlayAllStop
	movs r0, #0x62      @ MUS_VS_BGM_5
	bl m4aSongNumStart
	b _0809DB5C
_0809DB56:
	movs r0, #0x6a
	bl m4aSongNumStart
_0809DB5C:
	ldr r0, _0809DB6C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809DB70 @ =sub_809DB74
_0809DB62:
	str r0, [r1, #8]
_0809DB64:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809DB6C: .4byte gCurTask
_0809DB70: .4byte sub_809DB74

	thumb_func_start sub_809DB74
sub_809DB74: @ 0x0809DB74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _0809DBD8 @ =gMultiSioSend
	mov sb, r0
	mov r0, sp
	movs r1, #0
	movs r2, #3
	bl memset
	add r4, sp, #4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #3
	bl memset
	movs r7, #0
	movs r1, #0
	mov r8, r1
	ldr r0, _0809DBDC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809DBF8
	ldr r1, _0809DBE0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809DBE4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809DBE8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0809DBEC @ =gBgSpritesCount
	strb r7, [r0]
	ldr r1, _0809DBF0 @ =gVramGraphicsCopyCursor
	ldr r0, _0809DBF4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809DC80
	.align 2, 0
_0809DBD8: .4byte gMultiSioSend
_0809DBDC: .4byte gCurTask
_0809DBE0: .4byte 0x0000FFFF
_0809DBE4: .4byte gBackgroundsCopyQueueCursor
_0809DBE8: .4byte gBackgroundsCopyQueueIndex
_0809DBEC: .4byte gBgSpritesCount
_0809DBF0: .4byte gVramGraphicsCopyCursor
_0809DBF4: .4byte gVramGraphicsCopyQueueIndex
_0809DBF8:
	ldrb r0, [r5, #5]
	mov r1, sb
	strh r0, [r1]
	movs r3, #0
	ldr r0, _0809DC90 @ =gPlayers
	mov ip, r0
	adds r6, r4, #0
_0809DC06:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	add r0, ip
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	mov r1, sp
	adds r2, r1, r3
	cmp r0, #3
	bne _0809DC30
	movs r0, #1
	strb r0, [r2]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0809DC30:
	ldrb r4, [r2]
	cmp r4, #1
	bne _0809DC4C
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r1, _0809DC94 @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrb r1, [r5, #5]
	cmp r0, r1
	bne _0809DC4C
	adds r0, r6, r3
	strb r4, [r0]
_0809DC4C:
	ldrb r1, [r2]
	cmp r1, #0
	beq _0809DC64
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809DC64
	cmp r1, r0
	bne _0809DC64
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0809DC64:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0809DC06
	cmp r7, r8
	bne _0809DC80
	ldr r0, _0809DC98 @ =0x00006612
	mov r1, sb
	strh r0, [r1]
	ldr r0, _0809DC9C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809DCA0 @ =sub_809DCA4
	str r0, [r1, #8]
_0809DC80:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809DC90: .4byte gPlayers
_0809DC94: .4byte gMultiSioRecv
_0809DC98: .4byte 0x00006612
_0809DC9C: .4byte gCurTask
_0809DCA0: .4byte sub_809DCA4

	thumb_func_start sub_809DCA4
sub_809DCA4: @ 0x0809DCA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0809DD10 @ =gMultiSioSend
	mov sl, r0
	ldr r0, _0809DD14 @ =gStageData
	ldrb r4, [r0, #6]
	movs r7, #0
	mov r0, sp
	movs r1, #0
	movs r2, #3
	bl memset
	add r6, sp, #4
	adds r0, r6, #0
	movs r1, #0
	movs r2, #3
	bl memset
	movs r1, #0
	mov sb, r1
	mov r8, r1
	ldr r0, _0809DD18 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809DD34
	ldr r1, _0809DD1C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809DD20 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809DD24 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0809DD28 @ =gBgSpritesCount
	strb r7, [r0]
	ldr r1, _0809DD2C @ =gVramGraphicsCopyCursor
	ldr r0, _0809DD30 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809DE7C
	.align 2, 0
_0809DD10: .4byte gMultiSioSend
_0809DD14: .4byte gStageData
_0809DD18: .4byte gCurTask
_0809DD1C: .4byte 0x0000FFFF
_0809DD20: .4byte gBackgroundsCopyQueueCursor
_0809DD24: .4byte gBackgroundsCopyQueueIndex
_0809DD28: .4byte gBgSpritesCount
_0809DD2C: .4byte gVramGraphicsCopyCursor
_0809DD30: .4byte gVramGraphicsCopyQueueIndex
_0809DD34:
	cmp r4, #0
	bne _0809DDC0
	movs r4, #0
	ldr r2, _0809DDB4 @ =gPlayers
	mov ip, r2
	ldr r0, _0809DDB8 @ =0x00006612
	mov sl, r0
_0809DD42:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	add r0, ip
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	mov r1, sp
	adds r2, r1, r4
	cmp r0, #3
	bne _0809DD6C
	movs r0, #1
	strb r0, [r2]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0809DD6C:
	ldrb r3, [r2]
	cmp r3, #1
	bne _0809DD86
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, _0809DDBC @ =gMultiSioRecv
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, sl
	bne _0809DD86
	adds r0, r6, r4
	strb r3, [r0]
_0809DD86:
	ldrb r1, [r2]
	cmp r1, #0
	beq _0809DDA2
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809DDA2
	cmp r1, r0
	bne _0809DDA2
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_0809DDA2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0809DD42
	cmp sb, r8
	bne _0809DDD0
	movs r7, #1
	b _0809DDD4
	.align 2, 0
_0809DDB4: .4byte gPlayers
_0809DDB8: .4byte 0x00006612
_0809DDBC: .4byte gMultiSioRecv
_0809DDC0:
	ldr r1, _0809DDEC @ =0x00006612
	mov r2, sl
	strh r1, [r2]
	ldr r0, _0809DDF0 @ =gMultiSioRecv
	ldrh r0, [r0]
	cmp r0, r1
	bne _0809DDD0
	movs r7, #1
_0809DDD0:
	cmp r7, #0
	beq _0809DE7C
_0809DDD4:
	ldr r1, [r5, #0x18]
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _0809DE0E
	ldrb r0, [r5, #5]
	cmp r0, #1
	bne _0809DDF4
	adds r0, r1, #0
	adds r0, #0x40
	b _0809DDFA
	.align 2, 0
_0809DDEC: .4byte 0x00006612
_0809DDF0: .4byte gMultiSioRecv
_0809DDF4:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
_0809DDFA:
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x18]
	ldr r0, _0809DE20 @ =0x00004FFF
	cmp r1, r0
	ble _0809DE0E
	adds r0, #1
	str r0, [r5, #0x18]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0809DE0E:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	blt _0809DE3A
	ldrb r0, [r5, #5]
	cmp r0, #1
	bne _0809DE24
	adds r0, r1, #0
	subs r0, #0x80
	b _0809DE28
	.align 2, 0
_0809DE20: .4byte 0x00004FFF
_0809DE24:
	ldr r2, _0809DE5C @ =0xFFFFFE00
	adds r0, r1, r2
_0809DE28:
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bgt _0809DE3A
	movs r0, #0
	str r0, [r5, #0x10]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0809DE3A:
	ldr r2, _0809DE60 @ =gWinRegs
	ldr r0, [r5, #0x18]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r7, #3
	bne _0809DE7C
	ldrb r0, [r5, #5]
	cmp r0, #1
	bne _0809DE64
	ldr r1, [r5]
	movs r0, #0xb
	b _0809DE68
	.align 2, 0
_0809DE5C: .4byte 0xFFFFFE00
_0809DE60: .4byte gWinRegs
_0809DE64:
	ldr r1, [r5]
	movs r0, #9
_0809DE68:
	strb r0, [r1]
	ldr r2, _0809DE8C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0809DE90 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0809DE94 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809DE98 @ =Task_809E778
	str r0, [r1, #8]
_0809DE7C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809DE8C: .4byte gDispCnt
_0809DE90: .4byte 0x0000FDFF
_0809DE94: .4byte gCurTask
_0809DE98: .4byte Task_809E778

	thumb_func_start sub_809DE9C
sub_809DE9C: @ 0x0809DE9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _0809DEBC @ =gStageData
	ldrb r3, [r0, #6]
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #1
	beq _0809DECC
	cmp r0, #1
	bgt _0809DEC0
	cmp r0, #0
	beq _0809DEC6
	b _0809DFA0
	.align 2, 0
_0809DEBC: .4byte gStageData
_0809DEC0:
	cmp r0, #2
	beq _0809DED2
	b _0809DFA0
_0809DEC6:
	movs r4, #1
	ands r4, r3
	b _0809DED4
_0809DECC:
	adds r4, r0, #0
	bics r4, r3
	b _0809DED4
_0809DED2:
	movs r4, #2
_0809DED4:
	cmp r4, #1
	beq _0809DEF4
	cmp r4, #1
	bgt _0809DEE2
	cmp r4, #0
	beq _0809DEE8
	b _0809DFA0
_0809DEE2:
	cmp r4, #2
	beq _0809DF00
	b _0809DFA0
_0809DEE8:
	ldr r0, _0809DEF0 @ =gLoadedSaveGame
	adds r1, r0, #0
	adds r1, #0x60
	b _0809DF06
	.align 2, 0
_0809DEF0: .4byte gLoadedSaveGame
_0809DEF4:
	ldr r0, _0809DEFC @ =gLoadedSaveGame
	adds r1, r0, #0
	adds r1, #0x61
	b _0809DF06
	.align 2, 0
_0809DEFC: .4byte gLoadedSaveGame
_0809DF00:
	ldr r0, _0809DF64 @ =gLoadedSaveGame
	adds r1, r0, #0
	adds r1, #0x62
_0809DF06:
	ldrb r0, [r1]
	cmp r0, #0x62
	bhi _0809DF10
	adds r0, #1
	strb r0, [r1]
_0809DF10:
	movs r1, #3
	ldr r5, _0809DF68 @ =gUnknown_03001060
	movs r7, #1
	movs r0, #0x1c
	adds r0, r0, r5
	mov r8, r0
_0809DF1C:
	ldrb r0, [r5, #7]
	lsls r1, r1, #0x18
	asrs r2, r1, #0x18
	asrs r0, r2
	ands r0, r7
	adds r6, r1, #0
	cmp r0, #0
	beq _0809DF94
	adds r1, r3, #0
	ands r1, r7
	adds r0, r2, #0
	ands r0, r7
	cmp r1, r0
	beq _0809DF94
	lsls r0, r2, #2
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	add r1, r8
	str r3, [sp]
	bl sub_8001C30
	adds r1, r0, #0
	ldr r3, [sp]
	cmp r4, #1
	beq _0809DF7E
	cmp r4, #1
	bgt _0809DF6C
	cmp r4, #0
	beq _0809DF72
	b _0809DF94
	.align 2, 0
_0809DF64: .4byte gLoadedSaveGame
_0809DF68: .4byte gUnknown_03001060
_0809DF6C:
	cmp r4, #2
	beq _0809DF8A
	b _0809DF94
_0809DF72:
	ldrb r0, [r1, #0x12]
	cmp r0, #0x62
	bhi _0809DF94
	adds r0, #1
	strb r0, [r1, #0x12]
	b _0809DF94
_0809DF7E:
	ldrb r0, [r1, #0x11]
	cmp r0, #0x62
	bhi _0809DF94
	adds r0, #1
	strb r0, [r1, #0x11]
	b _0809DF94
_0809DF8A:
	ldrb r0, [r1, #0x13]
	cmp r0, #0x62
	bhi _0809DF94
	adds r0, #1
	strb r0, [r1, #0x13]
_0809DF94:
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r6, r1
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _0809DF1C
_0809DFA0:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_809DFAC
sub_809DFAC: @ 0x0809DFAC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xac
	movs r0, #0x64
	strh r0, [r4, #0x10]
	movs r0, #0x50
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _0809DFD0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _0809DFD4
	movs r0, #4
	b _0809DFD6
	.align 2, 0
_0809DFD0: .4byte 0xFFFFFBFF
_0809DFD4:
	movs r0, #0
_0809DFD6:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x8c
	strh r0, [r4, #0x10]
	movs r0, #0x50
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _0809E000
	movs r0, #0
	b _0809E002
_0809E000:
	movs r0, #4
_0809E002:
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809E018
sub_809E018: @ 0x0809E018
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x5c
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	strh r0, [r1, #0x12]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0809E036
	movs r0, #0
	b _0809E038
_0809E036:
	movs r0, #2
_0809E038:
	strb r0, [r1, #0x1f]
	movs r0, #0
	str r0, [r1, #8]
	adds r0, r1, #0
	bl DisplaySprite
	adds r2, r4, #0
	adds r2, #0x84
	ldr r1, [r4, #0x24]
	asrs r1, r1, #8
	movs r0, #0xf0
	subs r0, r0, r1
	strh r0, [r2, #0x10]
	ldr r0, [r4, #0x28]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _0809E062
	movs r0, #2
	b _0809E064
_0809E062:
	movs r0, #0
_0809E064:
	strb r0, [r2, #0x1f]
	movs r0, #0
	str r0, [r2, #8]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809E078
sub_809E078: @ 0x0809E078
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r3, #0xa]
	strh r0, [r3, #6]
	strh r0, [r3, #8]
	strb r1, [r3, #4]
	movs r2, #0
	ldr r5, _0809E0C8 @ =gUnknown_030010AC
	ldr r4, _0809E0CC @ =gUnknown_080D961D
_0809E08E:
	adds r0, r2, r5
	ldrb r0, [r0]
	adds r1, r3, r2
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0809E08E
	ldr r0, _0809E0D0 @ =0xFFFF7E00
	str r0, [r3, #0x10]
	movs r2, #0xa0
	lsls r2, r2, #7
	str r2, [r3, #0x14]
	str r0, [r3, #0x20]
	movs r1, #0xa0
	lsls r1, r1, #8
	str r1, [r3, #0x24]
	movs r0, #0xb9
	lsls r0, r0, #9
	str r0, [r3, #0x18]
	str r2, [r3, #0x1c]
	str r0, [r3, #0x28]
	str r1, [r3, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E0C8: .4byte gUnknown_030010AC
_0809E0CC: .4byte gUnknown_080D961D
_0809E0D0: .4byte 0xFFFF7E00

	thumb_func_start sub_809E0D4
sub_809E0D4: @ 0x0809E0D4
	push {r4, r5, r6, lr}
	ldr r6, _0809E114 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E130
	ldr r1, _0809E118 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E11C @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E120 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E124 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E128 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E12C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E154
	.align 2, 0
_0809E114: .4byte gCurTask
_0809E118: .4byte 0x0000FFFF
_0809E11C: .4byte gBackgroundsCopyQueueCursor
_0809E120: .4byte gBackgroundsCopyQueueIndex
_0809E124: .4byte gBgSpritesCount
_0809E128: .4byte gVramGraphicsCopyCursor
_0809E12C: .4byte gVramGraphicsCopyQueueIndex
_0809E130:
	adds r0, r4, #0
	bl sub_809C8C4
	adds r0, r4, #0
	bl sub_809C810
	cmp r0, #1
	bne _0809E154
	strb r0, [r4, #4]
	ldr r0, [r4, #0xc]
	ldr r2, _0809E15C @ =0x03000004
	adds r1, r5, r2
	ldrb r2, [r4, #5]
	bl sub_809CC80
	ldr r1, [r6]
	ldr r0, _0809E160 @ =sub_809C620
	str r0, [r1, #8]
_0809E154:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809E15C: .4byte 0x03000004
_0809E160: .4byte sub_809C620

	thumb_func_start sub_809E164
sub_809E164: @ 0x0809E164
	push {r4, r5, lr}
	ldr r5, _0809E1A4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E1C0
	ldr r1, _0809E1A8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E1AC @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E1B0 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E1B4 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E1B8 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E1BC @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E1E0
	.align 2, 0
_0809E1A4: .4byte gCurTask
_0809E1A8: .4byte 0x0000FFFF
_0809E1AC: .4byte gBackgroundsCopyQueueCursor
_0809E1B0: .4byte gBackgroundsCopyQueueIndex
_0809E1B4: .4byte gBgSpritesCount
_0809E1B8: .4byte gVramGraphicsCopyCursor
_0809E1BC: .4byte gVramGraphicsCopyQueueIndex
_0809E1C0:
	ldrb r0, [r4, #4]
	cmp r0, #0xa
	bne _0809E1E0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0809E1D4
	ldr r0, [r5]
	bl TaskDestroy
	b _0809E1E0
_0809E1D4:
	movs r0, #0
	bl sub_809E85C
	ldr r0, [r5]
	bl TaskDestroy
_0809E1E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809E1E8
sub_809E1E8: @ 0x0809E1E8
	push {r4, r5, lr}
	ldr r0, _0809E20C @ =gStageData
	ldrb r4, [r0, #6]
	ldr r0, _0809E210 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_809E384
	cmp r4, #0
	bne _0809E214
	bl sub_8025360
	b _0809E218
	.align 2, 0
_0809E20C: .4byte gStageData
_0809E210: .4byte gCurTask
_0809E214:
	bl sub_8025AA8
_0809E218:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0809E264
	ldr r1, _0809E24C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E250 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E254 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E258 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E25C @ =gVramGraphicsCopyCursor
	ldr r0, _0809E260 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E276
	.align 2, 0
_0809E24C: .4byte 0x0000FFFF
_0809E250: .4byte gBackgroundsCopyQueueCursor
_0809E254: .4byte gBackgroundsCopyQueueIndex
_0809E258: .4byte gBgSpritesCount
_0809E25C: .4byte gVramGraphicsCopyCursor
_0809E260: .4byte gVramGraphicsCopyQueueIndex
_0809E264:
	cmp r0, #1
	bne _0809E276
	ldr r1, [r5]
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _0809E27C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0809E276:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E27C: .4byte gCurTask

	thumb_func_start TaskDestructor_809E280
TaskDestructor_809E280: @ 0x0809E280
	bx lr
	.align 2, 0

	thumb_func_start Task_809E284
Task_809E284: @ 0x0809E284
	push {r4, r5, lr}
	ldr r0, _0809E2A8 @ =gStageData
	ldrb r4, [r0, #6]
	ldr r0, _0809E2AC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_809E384
	cmp r4, #0
	bne _0809E2B0
	bl sub_8025A90
	b _0809E2B4
	.align 2, 0
_0809E2A8: .4byte gStageData
_0809E2AC: .4byte gCurTask
_0809E2B0:
	bl sub_80253CC
_0809E2B4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E2FC
	ldr r1, _0809E2E4 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E2E8 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E2EC @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E2F0 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E2F4 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E2F8 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E30E
	.align 2, 0
_0809E2E4: .4byte 0x0000FFFF
_0809E2E8: .4byte gBackgroundsCopyQueueCursor
_0809E2EC: .4byte gBackgroundsCopyQueueIndex
_0809E2F0: .4byte gBgSpritesCount
_0809E2F4: .4byte gVramGraphicsCopyCursor
_0809E2F8: .4byte gVramGraphicsCopyQueueIndex
_0809E2FC:
	adds r0, r5, #0
	bl sub_809E354
	cmp r0, #1
	bne _0809E30E
	ldr r0, _0809E314 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809E318 @ =Task_809CA64
	str r0, [r1, #8]
_0809E30E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E314: .4byte gCurTask
_0809E318: .4byte Task_809CA64

	thumb_func_start Task_809E31C
Task_809E31C: @ 0x0809E31C
	push {r4, lr}
	ldr r4, _0809E350 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	subs r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809E348
	ldr r0, [r1]
	movs r1, #0xa
	strb r1, [r0]
	movs r0, #1
	bl sub_808ADF0
	ldr r0, [r4]
	bl TaskDestroy
_0809E348:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E350: .4byte gCurTask

	thumb_func_start sub_809E354
sub_809E354: @ 0x0809E354
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0xc]
	ldr r2, _0809E378 @ =0x00004FFF
	cmp r0, r2
	bgt _0809E36C
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r1, #0xc]
	cmp r0, r2
	ble _0809E37C
_0809E36C:
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r1, #0xc]
	movs r0, #1
	b _0809E37E
	.align 2, 0
_0809E378: .4byte 0x00004FFF
_0809E37C:
	movs r0, #0
_0809E37E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809E384
sub_809E384: @ 0x0809E384
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #0
	adds r0, #0x38
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_809E3B4
TaskDestructor_809E3B4: @ 0x0809E3B4
	bx lr
	.align 2, 0

	thumb_func_start Task_F4_809E3B8
Task_F4_809E3B8: @ 0x0809E3B8
	push {r4, lr}
	ldr r0, _0809E3F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E414
	ldr r1, _0809E3FC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E400 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E404 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E408 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E40C @ =gVramGraphicsCopyCursor
	ldr r0, _0809E410 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E448
	.align 2, 0
_0809E3F8: .4byte gCurTask
_0809E3FC: .4byte 0x0000FFFF
_0809E400: .4byte gBackgroundsCopyQueueCursor
_0809E404: .4byte gBackgroundsCopyQueueIndex
_0809E408: .4byte gBgSpritesCount
_0809E40C: .4byte gVramGraphicsCopyCursor
_0809E410: .4byte gVramGraphicsCopyQueueIndex
_0809E414:
	adds r0, r4, #0
	bl sub_809CE58
	adds r0, r4, #0
	bl sub_809CDC8
	cmp r0, #1
	bne _0809E448
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0809E434
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl sub_809C970
	b _0809E440
_0809E434:
	cmp r0, #1
	bne _0809E440
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl sub_809CF04
_0809E440:
	ldr r0, _0809E450 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809E454 @ =Task_809E458
	str r0, [r1, #8]
_0809E448:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E450: .4byte gCurTask
_0809E454: .4byte Task_809E458

	thumb_func_start Task_809E458
Task_809E458: @ 0x0809E458
	push {r4, r5, lr}
	ldr r5, _0809E498 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E4B4
	ldr r1, _0809E49C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E4A0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E4A4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E4A8 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E4AC @ =gVramGraphicsCopyCursor
	ldr r0, _0809E4B0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E4D4
	.align 2, 0
_0809E498: .4byte gCurTask
_0809E49C: .4byte 0x0000FFFF
_0809E4A0: .4byte gBackgroundsCopyQueueCursor
_0809E4A4: .4byte gBackgroundsCopyQueueIndex
_0809E4A8: .4byte gBgSpritesCount
_0809E4AC: .4byte gVramGraphicsCopyCursor
_0809E4B0: .4byte gVramGraphicsCopyQueueIndex
_0809E4B4:
	adds r0, r4, #0
	bl sub_809CE58
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809E4CA
	ldr r0, [r5]
	bl TaskDestroy
	b _0809E4D4
_0809E4CA:
	cmp r0, #0
	bne _0809E4D4
	ldr r0, [r5]
	bl TaskDestroy
_0809E4D4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_809E4DC
TaskDestructor_809E4DC: @ 0x0809E4DC
	bx lr
	.align 2, 0

	thumb_func_start Task_809E4E0
Task_809E4E0: @ 0x0809E4E0
	push {r4, r5, lr}
	ldr r5, _0809E520 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E53C
	ldr r1, _0809E524 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E528 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E52C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E530 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E534 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E538 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E56A
	.align 2, 0
_0809E520: .4byte gCurTask
_0809E524: .4byte 0x0000FFFF
_0809E528: .4byte gBackgroundsCopyQueueCursor
_0809E52C: .4byte gBackgroundsCopyQueueIndex
_0809E530: .4byte gBgSpritesCount
_0809E534: .4byte gVramGraphicsCopyCursor
_0809E538: .4byte gVramGraphicsCopyQueueIndex
_0809E53C:
	adds r0, r4, #0
	bl sub_809E5E4
	adds r0, r4, #0
	bl sub_809E5AC
	cmp r0, #1
	bne _0809E56A
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _0809E55C
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl sub_809CFA8
	b _0809E564
_0809E55C:
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl sub_809D27C
_0809E564:
	ldr r1, [r5]
	ldr r0, _0809E570 @ =Task_809E574
	str r0, [r1, #8]
_0809E56A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E570: .4byte Task_809E574

	thumb_func_start Task_809E574
Task_809E574: @ 0x0809E574
	push {r4, r5, lr}
	ldr r5, _0809E598 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_809E5E4
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809E59C
	ldr r0, [r5]
	bl TaskDestroy
	b _0809E5A6
	.align 2, 0
_0809E598: .4byte gCurTask
_0809E59C:
	cmp r0, #0
	bne _0809E5A6
	ldr r0, [r5]
	bl TaskDestroy
_0809E5A6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_809E5AC
sub_809E5AC: @ 0x0809E5AC
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0xc]
	ldr r0, _0809E5D0 @ =0x000077FF
	cmp r2, r0
	bgt _0809E5D4
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r2, r3
	str r0, [r1, #0xc]
	movs r2, #0xf0
	lsls r2, r2, #7
	cmp r0, r2
	ble _0809E5DE
	str r2, [r1, #0xc]
	movs r0, #1
	b _0809E5E0
	.align 2, 0
_0809E5D0: .4byte 0x000077FF
_0809E5D4:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0xc]
	movs r0, #1
	b _0809E5E0
_0809E5DE:
	movs r0, #0
_0809E5E0:
	pop {r1}
	bx r1

	thumb_func_start sub_809E5E4
sub_809E5E4: @ 0x0809E5E4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x14
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	ldr r1, _0809E62C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	movs r0, #0xf0
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E62C: .4byte 0xFFFFFBFF
    
	thumb_func_start TaskDestructor_809E630
TaskDestructor_809E630: @ 0x0809E630
	bx lr
	.align 2, 0

	thumb_func_start sub_809E634
sub_809E634: @ 0x0809E634
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0xc]
	ldr r0, _0809E658 @ =0x000077FF
	cmp r2, r0
	bgt _0809E65C
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r2, r3
	str r0, [r1, #0xc]
	movs r2, #0xf0
	lsls r2, r2, #7
	cmp r0, r2
	ble _0809E666
	str r2, [r1, #0xc]
	movs r0, #1
	b _0809E668
	.align 2, 0
_0809E658: .4byte 0x000077FF
_0809E65C:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1, #0xc]
	movs r0, #1
	b _0809E668
_0809E666:
	movs r0, #0
_0809E668:
	pop {r1}
	bx r1

	thumb_func_start sub_809E66C
sub_809E66C: @ 0x0809E66C
	push {lr}
	adds r2, r0, #0
	adds r2, #0x14
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_809E688
TaskDestructor_809E688: @ 0x0809E688
	bx lr
	.align 2, 0

	thumb_func_start Task_809E68C
Task_809E68C: @ 0x0809E68C
	push {r4, r5, lr}
	ldr r5, _0809E6CC @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809E6E8
	ldr r1, _0809E6D0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0809E6D4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _0809E6D8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0809E6DC @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0809E6E0 @ =gVramGraphicsCopyCursor
	ldr r0, _0809E6E4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #3
	bl sub_80A1A4C
	b _0809E702
	.align 2, 0
_0809E6CC: .4byte gCurTask
_0809E6D0: .4byte 0x0000FFFF
_0809E6D4: .4byte gBackgroundsCopyQueueCursor
_0809E6D8: .4byte gBackgroundsCopyQueueIndex
_0809E6DC: .4byte gBgSpritesCount
_0809E6E0: .4byte gVramGraphicsCopyCursor
_0809E6E4: .4byte gVramGraphicsCopyQueueIndex
_0809E6E8:
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809E6F8
	ldr r0, [r5]
	bl TaskDestroy
	b _0809E702
_0809E6F8:
	cmp r0, #0
	bne _0809E702
	ldr r0, [r5]
	bl TaskDestroy
_0809E702:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_809E708
sub_809E708: @ 0x0809E708
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0xc]
	ldr r0, _0809E72C @ =0x000027FF
	cmp r2, r0
	bgt _0809E730
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r2, r3
	str r0, [r1, #0xc]
	movs r2, #0xa0
	lsls r2, r2, #6
	cmp r0, r2
	ble _0809E73A
	str r2, [r1, #0xc]
	movs r0, #1
	b _0809E73C
	.align 2, 0
_0809E72C: .4byte 0x000027FF
_0809E730:
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r1, #0xc]
	movs r0, #1
	b _0809E73C
_0809E73A:
	movs r0, #0
_0809E73C:
	pop {r1}
	bx r1

	thumb_func_start sub_809E740
sub_809E740: @ 0x0809E740
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x14
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #0
	adds r0, #0x3c
	ldr r2, [r4, #0xc]
	asrs r2, r2, #8
	movs r1, #0xf0
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_809E774
TaskDestructor_809E774: @ 0x0809E774
	bx lr
	.align 2, 0

	thumb_func_start Task_809E778
Task_809E778: @ 0x0809E778
	push {r4, lr}
	ldr r4, _0809E7AC @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809E7D0
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _0809E7B8
	ldr r2, _0809E7B0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0809E7B4 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	bl sub_80AD9E4
	ldr r0, [r4]
	bl TaskDestroy
	b _0809E7D0
	.align 2, 0
_0809E7AC: .4byte gCurTask
_0809E7B0: .4byte gDispCnt
_0809E7B4: .4byte 0x00009FFF
_0809E7B8:
	adds r0, r1, #0
	bl sub_809DE9C
	ldr r0, _0809E7D8 @ =gStageData
	movs r1, #6
	strb r1, [r0, #3]
	movs r0, #0xff
	bl CreateMultiPakConnectionCheck
	ldr r0, [r4]
	bl TaskDestroy
_0809E7D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E7D8: .4byte gStageData

	thumb_func_start sub_809E7DC
sub_809E7DC: @ 0x0809E7DC
	push {lr}
	adds r2, r0, #0
	adds r2, #0x34
	ldr r1, [r0, #0x1c]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x20]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_809E7F8
sub_809E7F8: @ 0x0809E7F8
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x20]
	ldr r2, _0809E81C @ =0x000031FF
	cmp r0, r2
	bgt _0809E810
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r1, #0x20]
	cmp r0, r2
	ble _0809E820
_0809E810:
	movs r0, #0xc8
	lsls r0, r0, #6
	str r0, [r1, #0x20]
	movs r0, #1
	b _0809E822
	.align 2, 0
_0809E81C: .4byte 0x000031FF
_0809E820:
	movs r0, #0
_0809E822:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809E828
sub_809E828: @ 0x0809E828
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x24]
	ldr r2, _0809E84C @ =0x00003BFF
	cmp r0, r2
	bgt _0809E840
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r1, #0x24]
	cmp r0, r2
	ble _0809E850
_0809E840:
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r1, #0x24]
	movs r0, #1
	b _0809E852
	.align 2, 0
_0809E84C: .4byte 0x00003BFF
_0809E850:
	movs r0, #0
_0809E852:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_809E858
TaskDestructor_809E858: @ 0x0809E858
	bx lr
	.align 2, 0
