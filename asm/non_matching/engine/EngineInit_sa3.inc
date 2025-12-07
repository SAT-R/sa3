
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _080BBA70 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	subs r1, #4
	ldr r2, _080BBA74 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080BBA78 @ =gFlags
	movs r1, #0
	str r1, [r2]
	ldr r0, _080BBA7C @ =gFlagsPreVBlank
	str r1, [r0]
	ldr r1, _080BBA80 @ =gUnknown_030035A4
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, _080BBA84 @ =0x04000134
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x18
	lsrs r0, r3, #0x10
	ldr r5, _080BBA88 @ =gInput
	ldr r6, _080BBA8C @ =sLastCalledVblankFuncId
	ldr r4, _080BBA90 @ =gBackgroundsCopyQueueIndex
	mov r8, r4
	ldr r7, _080BBA94 @ =gBgSpritesCount
	mov sb, r7
	ldr r4, _080BBA98 @ =gVramGraphicsCopyCursor
	mov sl, r4
	ldr r7, _080BBA9C @ =gVramGraphicsCopyQueueIndex
	mov ip, r7
	add r4, sp, #4
	cmp r1, r0
	beq _080BBA60
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r2]
	ldr r1, _080BBAA0 @ =0x040000D4
	ldr r0, _080BBAA4 @ =0x0600C000
	str r0, [r1]
	ldr r0, _080BBAA8 @ =gUnknown_02035000
	str r0, [r1, #4]
	ldr r0, _080BBAAC @ =0x80005000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080BBA58:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _080BBA58
_080BBA60:
	ldrh r0, [r5]
	cmp r0, #0xf
	bne _080BBAB0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _080BBAB2
	.align 2, 0
_080BBA70: .4byte 0x04000208
_080BBA74: .4byte 0x00004014
_080BBA78: .4byte gFlags
_080BBA7C: .4byte gFlagsPreVBlank
_080BBA80: .4byte gUnknown_030035A4
_080BBA84: .4byte 0x04000134
_080BBA88: .4byte gInput
_080BBA8C: .4byte sLastCalledVblankFuncId
_080BBA90: .4byte gBackgroundsCopyQueueIndex
_080BBA94: .4byte gBgSpritesCount
_080BBA98: .4byte gVramGraphicsCopyCursor
_080BBA9C: .4byte gVramGraphicsCopyQueueIndex
_080BBAA0: .4byte 0x040000D4
_080BBAA4: .4byte 0x0600C000
_080BBAA8: .4byte gUnknown_02035000
_080BBAAC: .4byte 0x80005000
_080BBAB0:
	movs r0, #0
_080BBAB2:
	str r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r1, _080BBE28 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080BBE2C @ =0x85006000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080BBADC
_080BBAD4:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080BBAD4
_080BBADC:
	movs r0, #0
	str r0, [sp]
	ldr r1, _080BBE28 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080BBE30 @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080BBB04
_080BBAFC:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080BBAFC
_080BBB04:
	movs r0, #0
	str r0, [sp]
	ldr r1, _080BBE28 @ =0x040000D4
	mov r7, sp
	str r7, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080BBE30 @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080BBB2C
_080BBB24:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080BBB24
_080BBB2C:
	movs r0, #0xff
	strb r0, [r6]
	movs r0, #0
	ldr r1, _080BBE34 @ =gBackgroundsCopyQueueCursor
	strb r0, [r1]
	mov r2, r8
	strb r0, [r2]
	mov r7, sb
	strb r0, [r7]
	mov r1, sl
	strb r0, [r1]
	mov r2, ip
	strb r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r7, sp
	str r7, [r0]
	ldr r1, _080BBE38 @ =gBgSprites_Unknown2
	str r1, [r0, #4]
	ldr r1, _080BBE3C @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBB6E
_080BBB66:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBB66
_080BBB6E:
	movs r0, #0
	ldr r2, _080BBE40 @ =gBgSprites_Unknown1
	str r0, [r2]
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r7, sp
	str r7, [r0]
	ldr r1, _080BBE44 @ =gBgScrollRegs
	str r1, [r0, #4]
	ldr r1, _080BBE3C @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBB9A
_080BBB92:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBB92
_080BBB9A:
	movs r1, #0
	ldr r2, _080BBE48 @ =gSpriteOffset
	strh r1, [r2]
	strh r1, [r2, #2]
	movs r0, #0x80
	ldr r7, _080BBE4C @ =gDispCnt
	strh r0, [r7]
	str r1, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _080BBE50 @ =gVramGraphicsCopyQueue
	str r2, [r0, #4]
	ldr r1, _080BBE54 @ =0x85000060
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBBCE
_080BBBC6:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBBC6
_080BBBCE:
	movs r0, #0
	ldr r7, _080BBE58 @ =gOamFreeIndex
	strb r0, [r7]
	ldr r1, _080BBE5C @ =gOamFirstPausedIndex
	strb r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r4]
	ldr r0, _080BBE28 @ =0x040000D4
	str r4, [r0]
	ldr r7, _080BBE60 @ =gOamBuffer
	str r7, [r0, #4]
	ldr r1, _080BBE64 @ =0x81000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBC02
_080BBBFA:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBBFA
_080BBC02:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r4]
	ldr r0, _080BBE28 @ =0x040000D4
	str r4, [r0]
	ldr r2, _080BBE68 @ =gOamMallocBuffer
	str r2, [r0, #4]
	ldr r1, _080BBE64 @ =0x81000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBC2C
_080BBC24:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBC24
_080BBC2C:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r4, sp
	str r4, [r0]
	ldr r7, _080BBE6C @ =gOamMallocOrders_StartIndex
	str r7, [r0, #4]
	ldr r1, _080BBE70 @ =0x85000008
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBC56
_080BBC4E:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBC4E
_080BBC56:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _080BBE74 @ =gOamMallocOrders_EndIndex
	str r2, [r0, #4]
	ldr r1, _080BBE70 @ =0x85000008
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBC80
_080BBC78:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBC78
_080BBC80:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r4, sp
	str r4, [r0]
	ldr r7, _080BBE78 @ =gObjPalette
	str r7, [r0, #4]
	ldr r1, _080BBE7C @ =0x85000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBCA8
_080BBCA0:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBCA0
_080BBCA8:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _080BBE80 @ =gBgPalette
	str r2, [r0, #4]
	ldr r1, _080BBE7C @ =0x85000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBCD0
_080BBCC8:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBCC8
_080BBCD0:
	bl sub_80C4B48
	ldr r0, _080BBE84 @ =gBgAffineRegs
	movs r3, #0
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strh r2, [r0, #0x10]
	strh r1, [r0, #0x12]
	strh r1, [r0, #0x14]
	strh r2, [r0, #0x16]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldr r0, _080BBE88 @ =gNextFreeAffineIndex
	strb r3, [r0]
	ldr r0, _080BBE8C @ =sa2__gUnknown_03001944
	strh r1, [r0]
	ldr r0, _080BBE90 @ =sa2__gUnknown_030017F0
	strh r2, [r0]
	ldr r0, _080BBE94 @ =sa2__gUnknown_03005394
	strh r2, [r0]
	ldr r0, _080BBE98 @ =sa2__gUnknown_03002A8C  @ Some Debug-Value? Never used.
	strh r1, [r0]
	ldr r0, _080BBE9C @ =sa2__gUnknown_03004D58
	strh r1, [r0]
	ldr r0, _080BBEA0 @ =sa2__gUnknown_0300194C
	strh r1, [r0]
	ldr r0, _080BBEA4 @ =sa2__gUnknown_03002820
	strh r1, [r0]
	ldr r0, _080BBEA8 @ =sa2__gUnknown_03005398
	strh r2, [r0]
	ldr r0, _080BBEAC @ =gWinRegs
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _080BBEB0 @ =gBldRegs
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _080BBEB4 @ =gPseudoRandom
	str r1, [r0]
	movs r2, #0
	ldr r6, _080BBEB8 @ =gKeysFirstRepeatIntervals
	movs r5, #0x14
	ldr r4, _080BBEBC @ =gKeysContinuedRepeatIntervals
	movs r3, #8
_080BBD3E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r6
	strb r5, [r1]
	adds r1, r0, r4
	strb r3, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _080BBD3E
	ldr r0, _080BBEC0 @ =gInputRecorder
	movs r1, #0
	strb r1, [r0, #8]
	ldr r0, _080BBEC4 @ =gPhysicalInput
	strh r1, [r0]
	ldr r0, _080BBEC8 @ =gInputPlaybackData
	str r1, [r0]
	ldr r0, _080BBECC @ =gFrameCount
	str r1, [r0]
	movs r2, #0
	ldr r5, _080BBED0 @ =gBgOffsetsBuffer
	ldr r6, _080BBED4 @ =gBgOffsetsHBlankPrimary
	ldr r7, _080BBED8 @ =gBgOffsetsHBlankSecondary
	ldr r4, _080BBEDC @ =gHBlankCopyTarget
	mov ip, r4
	ldr r0, _080BBEE0 @ =gHBlankCopySize
	mov r8, r0
	ldr r1, _080BBEE4 @ =gNumHBlankCallbacks
	mov sb, r1
	ldr r4, _080BBEE8 @ =gNumHBlankIntrs
	mov sl, r4
	ldr r4, _080BBEEC @ =gIntrTable
	ldr r3, _080BBEF0 @ =gIntrTableTemplate
_080BBD84:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r2, r0, r4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xe
	ble _080BBD84
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _080BBEF4 @ =0x85000140
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBDC4
_080BBDBC:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBDBC
_080BBDC4:
	str r5, [r6]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r7]
	movs r0, #0
	mov r4, ip
	str r0, [r4]
	mov r7, r8
	strb r0, [r7]
	mov r1, sb
	strb r0, [r1]
	mov r2, sl
	strb r0, [r2]
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r4, sp
	str r4, [r0]
	ldr r7, _080BBEF8 @ =gHBlankCallbacks
	str r7, [r0, #4]
	ldr r1, _080BBE3C @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBE06
_080BBDFE:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBDFE
_080BBE06:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _080BBEFC @ =gHBlankIntrs
	str r2, [r0, #4]
	ldr r1, _080BBE3C @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	b _080BBF00
	.align 2, 0
_080BBE28: .4byte 0x040000D4
_080BBE2C: .4byte 0x85006000
_080BBE30: .4byte 0x85000100
_080BBE34: .4byte gBackgroundsCopyQueueCursor
_080BBE38: .4byte gBgSprites_Unknown2
_080BBE3C: .4byte 0x85000004
_080BBE40: .4byte gBgSprites_Unknown1
_080BBE44: .4byte gBgScrollRegs
_080BBE48: .4byte gSpriteOffset
_080BBE4C: .4byte gDispCnt
_080BBE50: .4byte gVramGraphicsCopyQueue
_080BBE54: .4byte 0x85000060
_080BBE58: .4byte gOamFreeIndex
_080BBE5C: .4byte gOamFirstPausedIndex
_080BBE60: .4byte gOamBuffer
_080BBE64: .4byte 0x81000200
_080BBE68: .4byte gOamMallocBuffer
_080BBE6C: .4byte gOamMallocOrders_StartIndex
_080BBE70: .4byte 0x85000008
_080BBE74: .4byte gOamMallocOrders_EndIndex
_080BBE78: .4byte gObjPalette
_080BBE7C: .4byte 0x85000080
_080BBE80: .4byte gBgPalette
_080BBE84: .4byte gBgAffineRegs
_080BBE88: .4byte gNextFreeAffineIndex
_080BBE8C: .4byte sa2__gUnknown_03001944
_080BBE90: .4byte sa2__gUnknown_030017F0
_080BBE94: .4byte sa2__gUnknown_03005394
_080BBE98: .4byte sa2__gUnknown_03002A8C
_080BBE9C: .4byte sa2__gUnknown_03004D58
_080BBEA0: .4byte sa2__gUnknown_0300194C
_080BBEA4: .4byte sa2__gUnknown_03002820
_080BBEA8: .4byte sa2__gUnknown_03005398
_080BBEAC: .4byte gWinRegs
_080BBEB0: .4byte gBldRegs
_080BBEB4: .4byte gPseudoRandom
_080BBEB8: .4byte gKeysFirstRepeatIntervals
_080BBEBC: .4byte gKeysContinuedRepeatIntervals
_080BBEC0: .4byte gInputRecorder
_080BBEC4: .4byte gPhysicalInput
_080BBEC8: .4byte gInputPlaybackData
_080BBECC: .4byte gFrameCount
_080BBED0: .4byte gBgOffsetsBuffer
_080BBED4: .4byte gBgOffsetsHBlankPrimary
_080BBED8: .4byte gBgOffsetsHBlankSecondary
_080BBEDC: .4byte gHBlankCopyTarget
_080BBEE0: .4byte gHBlankCopySize
_080BBEE4: .4byte gNumHBlankCallbacks
_080BBEE8: .4byte gNumHBlankIntrs
_080BBEEC: .4byte gIntrTable
_080BBEF0: .4byte gIntrTableTemplate
_080BBEF4: .4byte 0x85000140
_080BBEF8: .4byte gHBlankCallbacks
_080BBEFC: .4byte gHBlankIntrs
_080BBF00:
	bge _080BBF0A
_080BBF02:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBF02
_080BBF0A:
	movs r0, #0
	ldr r4, _080BBFA8 @ =gNumVBlankCallbacks
	strb r0, [r4]
	ldr r7, _080BBFAC @ =gNumVBlankIntrs
	strb r0, [r7]
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBFB0 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _080BBFB4 @ =gVBlankCallbacks
	str r2, [r0, #4]
	ldr r1, _080BBFB8 @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBF3C
_080BBF34:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBF34
_080BBF3C:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBFB0 @ =0x040000D4
	mov r4, sp
	str r4, [r0]
	ldr r7, _080BBFBC @ =gVBlankIntrs
	str r7, [r0, #4]
	ldr r1, _080BBFB8 @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBF64
_080BBF5C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBF5C
_080BBF64:
	bl m4aSoundInit
	ldr r0, _080BBFC0 @ =0x0093A600
	bl m4aSoundMode
	ldr r1, _080BBFC4 @ =gExecSoundMain
	movs r0, #1
	strb r0, [r1]
	bl TasksInit
	bl EwramInitHeap
	ldr r1, _080BBFC8 @ =gVramHeapMaxTileSlots
	movs r2, #0xbc
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080BBFCC @ =gVramHeapStartAddr
	ldr r0, _080BBFD0 @ =0x06012200
	str r0, [r1]
	bl VramResetHeapState
	bl IdentifyFlash
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080BBFD8
	ldr r0, _080BBFD4 @ =gFlags
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0]
	b _080BBFE0
	.align 2, 0
_080BBFA8: .4byte gNumVBlankCallbacks
_080BBFAC: .4byte gNumVBlankIntrs
_080BBFB0: .4byte 0x040000D4
_080BBFB4: .4byte gVBlankCallbacks
_080BBFB8: .4byte 0x85000004
_080BBFBC: .4byte gVBlankIntrs
_080BBFC0: .4byte 0x0093A600
_080BBFC4: .4byte gExecSoundMain
_080BBFC8: .4byte gVramHeapMaxTileSlots
_080BBFCC: .4byte gVramHeapStartAddr
_080BBFD0: .4byte 0x06012200
_080BBFD4: .4byte gFlags
_080BBFD8:
	ldr r1, _080BC094 @ =gIntrTable + (5 * 0x4)
	movs r0, #1
	bl SetFlashTimerIntr
_080BBFE0:
	ldr r1, _080BC098 @ =0x040000D4
	ldr r0, _080BC09C @ =IntrMain
	str r0, [r1]
	ldr r2, _080BC0A0 @ =gIntrMainBuf
	str r2, [r1, #4]
	ldr r0, _080BC0A4 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ldr r4, _080BC0A8 @ =gMultiSioSend
	ldr r5, _080BC0AC @ =gMultiSioRecv
	ldr r6, _080BC0B0 @ =gMultiSioStatusFlags
	ldr r7, _080BC0B4 @ =gMultiSioEnabled
	cmp r0, #0
	bge _080BC00A
_080BC002:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _080BC002
_080BC00A:
	ldr r0, _080BC0B8 @ =gUnknown_03007FFC
	str r2, [r0]
	ldr r0, _080BC0BC @ =0x04000200
	movs r2, #1
	strh r2, [r0]
	ldr r1, _080BC0C0 @ =0x04000004
	movs r0, #0x18
	strh r0, [r1]
	ldr r0, _080BC0C4 @ =0x04000208
	strh r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BC098 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r4, [r0, #4]
	ldr r1, _080BC0C8 @ =0x85000006
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BC044
_080BC03C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BC03C
_080BC044:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BC098 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	str r5, [r0, #4]
	ldr r1, _080BC0CC @ =0x85000018
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BC06A
_080BC062:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BC062
_080BC06A:
	movs r4, #0
	str r4, [r6]
	strb r4, [r7]
	movs r0, #0
	bl MultiSioInit
	ldr r0, _080BC0D0 @ =gUnknown_0300620C
	strb r4, [r0]
	ldr r0, _080BC0D4 @ =gUnknown_03002BF0
	str r4, [r0]
	ldr r0, _080BC0D8 @ =gUnknown_03002C60
	strb r4, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BC094: .4byte gIntrTable + (5 * 0x4)
_080BC098: .4byte 0x040000D4
_080BC09C: .4byte IntrMain
_080BC0A0: .4byte gIntrMainBuf
_080BC0A4: .4byte 0x84000080
_080BC0A8: .4byte gMultiSioSend
_080BC0AC: .4byte gMultiSioRecv
_080BC0B0: .4byte gMultiSioStatusFlags
_080BC0B4: .4byte gMultiSioEnabled
_080BC0B8: .4byte gUnknown_03007FFC
_080BC0BC: .4byte 0x04000200
_080BC0C0: .4byte 0x04000004
_080BC0C4: .4byte 0x04000208
_080BC0C8: .4byte 0x85000006
_080BC0CC: .4byte 0x85000018
_080BC0D0: .4byte gUnknown_0300620C
_080BC0D4: .4byte gUnknown_03002BF0
_080BC0D8: .4byte gUnknown_03002C60

.syntax divided
