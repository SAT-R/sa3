.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of Character Select ---

.if 0
.endif

	thumb_func_start Task_8099758
Task_8099758: @ 0x08099758
	push {r4, r5, r6, lr}
	ldr r0, _080997D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _080997D8 @ =gStageData
	ldrb r5, [r0, #6]
	adds r0, r4, #0
	bl sub_809B13C
	adds r0, r4, #0
	bl sub_809ADF0
	adds r0, r4, #0
	bl sub_809AE50
	adds r0, r4, #0
	bl sub_809AF08
	adds r0, r4, #0
	bl sub_809B69C
	adds r0, r4, #0
	bl sub_809B6C0
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _080997AE
	cmp r0, #3
	beq _080997AE
	cmp r0, #1
	bne _080997A0
	cmp r5, #1
	beq _080997AE
_080997A0:
	cmp r0, #2
	bne _080997BA
	subs r0, r5, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080997BA
_080997AE:
	adds r0, r4, #0
	bl sub_809B284
	adds r0, r4, #0
	bl sub_809AD74
_080997BA:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08099824
	cmp r0, #3
	beq _080997F6
	cmp r0, #1
	bne _080997F0
	cmp r5, #0
	bne _080997DC
	bl sub_8023E80
	b _080997E2
	.align 2, 0
_080997D4: .4byte gCurTask
_080997D8: .4byte gStageData
_080997DC:
	ldrb r0, [r4, #4]
	bl sub_8024188
_080997E2:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x10
	ands r0, r6
	ldrb r1, [r4, #9]
	orrs r0, r1
	strb r0, [r4, #9]
_080997F0:
	lsls r0, r6, #0x10
	cmp r0, #0
	blt _080998B4
_080997F6:
	ldrb r0, [r4, #7]
	adds r1, r0, #0
	adds r2, r0, #0
	cmp r1, #0
	beq _08099824
	cmp r1, #3
	beq _0809981A
	cmp r1, #1
	bne _0809980C
	cmp r5, #1
	beq _0809981A
_0809980C:
	cmp r1, #2
	bne _080998E0
	subs r0, r5, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080998E0
_0809981A:
	adds r0, r2, #0
	cmp r0, #0
	beq _08099824
	cmp r0, #3
	bne _08099850
_08099824:
	ldr r0, _08099844 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08099850
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r0, #0x13
	strb r0, [r4, #0xb]
	ldr r0, _08099848 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809984C @ =Task_809AABC
	b _08099956
	.align 2, 0
_08099844: .4byte gPressedKeys
_08099848: .4byte gCurTask
_0809984C: .4byte Task_809AABC
_08099850:
	ldr r0, _0809986C @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08099870
	movs r0, #0x67
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_8099C34
	b _08099950
	.align 2, 0
_0809986C: .4byte gRepeatedKeys
_08099870:
	ldr r0, _080998BC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08099958
	ldr r5, _080998C0 @ =gUnknown_080D8F18
	ldrb r3, [r4, #6]
	adds r0, r3, r5
	ldrb r1, [r0]
	ldr r2, _080998C4 @ =gLoadedSaveGame
	ldr r0, _080998C8 @ =gUnknown_080D946D
	adds r1, r1, r0
	ldrb r2, [r2, #0x10]
	ldrb r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08099958
	ldr r1, _080998CC @ =gCharacterSelectedVoices
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	movs r0, #0x14
	strb r0, [r4, #0xb]
	ldrb r1, [r4, #5]
	adds r1, r1, r5
	ldrb r0, [r4, #6]
	adds r0, r0, r5
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _080998D0
_080998B4:
	bl sub_802613C
	b _08099958
	.align 2, 0
_080998BC: .4byte gPressedKeys
_080998C0: .4byte gUnknown_080D8F18
_080998C4: .4byte gLoadedSaveGame
_080998C8: .4byte gUnknown_080D946D
_080998CC: .4byte gCharacterSelectedVoices
_080998D0:
	ldr r0, _080998D8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080998DC @ =Task_8099C9C
	b _08099956
	.align 2, 0
_080998D8: .4byte gCurTask
_080998DC: .4byte Task_8099C9C
_080998E0:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08099958
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099908
	movs r0, #0x14
	strb r0, [r4, #0xb]
	ldr r0, _08099900 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08099904 @ =Task_8099C9C
	b _08099956
	.align 2, 0
_08099900: .4byte gCurTask
_08099904: .4byte Task_8099C9C
_08099908:
	ldrb r2, [r4, #3]
	subs r0, r1, #1
	cmp r2, r0
	beq _08099958
	cmp r1, #0
	ble _08099958
	cmp r1, #5
	bgt _08099958
	adds r1, r2, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r1, r2
	bge _08099932
	movs r3, #1
	cmp r1, #1
	bgt _08099940
	adds r0, r1, #2
	cmp r0, r2
	bge _08099940
	movs r3, #2
	b _08099940
_08099932:
	movs r3, #2
	cmp r1, #2
	ble _08099940
	subs r0, r1, #2
	cmp r0, r2
	ble _08099940
	movs r3, #1
_08099940:
	cmp r3, #1
	bne _08099948
	movs r0, #0
	b _0809994A
_08099948:
	movs r0, #1
_0809994A:
	strb r0, [r4, #1]
	subs r0, r6, #1
	strb r0, [r4, #4]
_08099950:
	ldr r0, _08099960 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08099964 @ =Task_8099968
_08099956:
	str r0, [r1, #8]
_08099958:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08099960: .4byte gCurTask
_08099964: .4byte Task_8099968

	thumb_func_start Task_8099968
Task_8099968: @ 0x08099968
	push {r4, r5, r6, r7, lr}
	ldr r0, _08099994 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r6, #0
	ldr r0, _08099998 @ =gStageData
	ldrb r1, [r0, #6]
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _080999BC
	cmp r0, #3
	beq _080999BC
	cmp r0, #1
	bne _080999B0
	cmp r1, #0
	bne _0809999C
	bl sub_8023E80
	b _080999A2
	.align 2, 0
_08099994: .4byte gCurTask
_08099998: .4byte gStageData
_0809999C:
	ldrb r0, [r4, #4]
	bl sub_8024188
_080999A2:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x10
	ands r0, r2
	ldrb r1, [r4, #9]
	orrs r0, r1
	strb r0, [r4, #9]
_080999B0:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _080999BC
	bl sub_802613C
	b _08099B66
_080999BC:
	adds r0, r4, #0
	movs r1, #1
	bl sub_809B32C
	cmp r0, #1
	bne _080999CE
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080999CE:
	adds r0, r4, #0
	bl sub_809B25C
	cmp r0, #1
	bne _080999DE
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080999DE:
	adds r0, r4, #0
	bl sub_809B13C
	adds r0, r4, #0
	bl sub_809ADF0
	adds r0, r4, #0
	bl sub_809AE50
	adds r0, r4, #0
	bl sub_809AF08
	adds r0, r4, #0
	bl sub_809B69C
	adds r0, r4, #0
	bl sub_809B6C0
	cmp r6, #2
	beq _08099A08
	b _08099B66
_08099A08:
	ldrb r1, [r4, #4]
	strb r1, [r4, #3]
	movs r0, #0xa5
	lsls r0, r0, #9
	str r0, [r4, #0x3c]
	strb r1, [r4, #6]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x40]
	movs r0, #4
	strb r0, [r4, #0xb]
	movs r0, #0xa0
	lsls r0, r0, #9
	str r0, [r4, #0x4c]
	ldr r1, _08099A50 @ =gUnknown_080D8F18
	ldrb r0, [r4, #6]
	adds r0, r0, r1
	ldrb r5, [r0]
	ldr r1, _08099A54 @ =gLoadedSaveGame
	ldr r0, _08099A58 @ =gUnknown_080D946D
	adds r0, r5, r0
	ldrb r1, [r1, #0x10]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08099A8C
	ldr r3, _08099A5C @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08099A64
	ldr r0, _08099A60 @ =gUnknown_08E2EEF0
	b _08099AA0
	.align 2, 0
_08099A50: .4byte gUnknown_080D8F18
_08099A54: .4byte gLoadedSaveGame
_08099A58: .4byte gUnknown_080D946D
_08099A5C: .4byte gFlags
_08099A60: .4byte gUnknown_08E2EEF0
_08099A64:
	ldr r1, _08099A7C @ =0x040000D4
	ldr r0, _08099A80 @ =gUnknown_08E2EEF0
	str r0, [r1]
	ldr r0, _08099A84 @ =gObjPalette + 0xE0
	str r0, [r1, #4]
	ldr r0, _08099A88 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	orrs r2, r6
	str r2, [r3]
	b _08099ACC
	.align 2, 0
_08099A7C: .4byte 0x040000D4
_08099A80: .4byte gUnknown_08E2EEF0
_08099A84: .4byte gObjPalette + 0xE0
_08099A88: .4byte 0x80000010
_08099A8C:
	ldr r7, _08099AAC @ =gFlags
	ldr r3, [r7]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _08099AB4
	lsls r0, r5, #5
	ldr r1, _08099AB0 @ =gUnknown_08E2EE50
	adds r0, r0, r1
_08099AA0:
	movs r1, #0x70
	movs r2, #0x10
	bl CopyPalette
	b _08099ACC
	.align 2, 0
_08099AAC: .4byte gFlags
_08099AB0: .4byte gUnknown_08E2EE50
_08099AB4:
	ldr r2, _08099B08 @ =0x040000D4
	lsls r0, r5, #5
	ldr r1, _08099B0C @ =gUnknown_08E2EE50
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _08099B10 @ =gObjPalette + 0xE0
	str r0, [r2, #4]
	ldr r0, _08099B14 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	orrs r3, r6
	str r3, [r7]
_08099ACC:
	ldr r2, _08099B18 @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	movs r1, #0
	movs r0, #0xe
	strb r0, [r4, #0xb]
	movs r0, #0x8d
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, _08099B1C @ =0x06008000
	str r0, [r2, #4]
	strh r1, [r2, #0xa]
	ldr r0, _08099B20 @ =0x0600D800
	str r0, [r2, #0xc]
	strh r1, [r2, #0x18]
	strh r1, [r2, #0x1a]
	ldr r1, _08099B24 @ =gLoadedSaveGame
	ldr r0, _08099B28 @ =gUnknown_080D946D
	adds r0, r5, r0
	ldrb r1, [r1, #0x10]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08099B30
	ldr r0, _08099B2C @ =gUnknown_080D8CDC
	ldrh r0, [r0, #0x20]
	b _08099B3A
	.align 2, 0
_08099B08: .4byte 0x040000D4
_08099B0C: .4byte gUnknown_08E2EE50
_08099B10: .4byte gObjPalette + 0xE0
_08099B14: .4byte 0x80000010
_08099B18: .4byte gFlags
_08099B1C: .4byte 0x06008000
_08099B20: .4byte 0x0600D800
_08099B24: .4byte gLoadedSaveGame
_08099B28: .4byte gUnknown_080D946D
_08099B2C: .4byte gUnknown_080D8CDC
_08099B30:
	ldr r0, _08099B6C @ =gUnknown_080D8CDC
	adds r1, r5, #5
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_08099B3A:
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
	ldr r0, _08099B70 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08099B74 @ =Task_8099B78
	str r0, [r1, #8]
_08099B66:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08099B6C: .4byte gUnknown_080D8CDC
_08099B70: .4byte gCurTask
_08099B74: .4byte Task_8099B78

	thumb_func_start Task_8099B78
Task_8099B78: @ 0x08099B78
	push {r4, r5, lr}
	ldr r0, _08099BA4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _08099BA8 @ =gStageData
	ldrb r1, [r0, #6]
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08099BCC
	cmp r0, #3
	beq _08099BCC
	cmp r0, #1
	bne _08099BC0
	cmp r1, #0
	bne _08099BAC
	bl sub_8023E80
	b _08099BB2
	.align 2, 0
_08099BA4: .4byte gCurTask
_08099BA8: .4byte gStageData
_08099BAC:
	ldrb r0, [r4, #4]
	bl sub_8024188
_08099BB2:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x10
	ands r0, r2
	ldrb r1, [r4, #9]
	orrs r0, r1
	strb r0, [r4, #9]
_08099BC0:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _08099BCC
	bl sub_802613C
	b _08099C26
_08099BCC:
	adds r0, r4, #0
	movs r1, #0
	bl sub_809B32C
	cmp r0, #1
	bne _08099BDE
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08099BDE:
	adds r0, r4, #0
	bl sub_809B1B4
	cmp r0, #1
	bne _08099BEE
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08099BEE:
	adds r0, r4, #0
	bl sub_809B13C
	adds r0, r4, #0
	bl sub_809ADF0
	adds r0, r4, #0
	bl sub_809AE50
	adds r0, r4, #0
	bl sub_809AF08
	adds r0, r4, #0
	bl sub_809B69C
	adds r0, r4, #0
	bl sub_809B6C0
	cmp r5, #2
	bne _08099C26
	movs r0, #0
	str r0, [r4, #0x5c]
	movs r0, #0xe
	strb r0, [r4, #0xb]
	ldr r0, _08099C2C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08099C30 @ =Task_8099758
	str r0, [r1, #8]
_08099C26:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08099C2C: .4byte gCurTask
_08099C30: .4byte Task_8099758

	thumb_func_start sub_8099C34
sub_8099C34: @ 0x08099C34
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #3]
	strb r0, [r3, #4]
	ldr r2, _08099C54 @ =gRepeatedKeys
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099C6C
	movs r1, #0
_08099C4A:
	ldrb r0, [r3, #4]
	cmp r0, #3
	bls _08099C58
	strb r1, [r3, #4]
	b _08099C5C
	.align 2, 0
_08099C54: .4byte gRepeatedKeys
_08099C58:
	adds r0, #1
	strb r0, [r3, #4]
_08099C5C:
	ldrb r0, [r3, #4]
	ldrb r4, [r3, #5]
	cmp r0, r4
	beq _08099C4A
	movs r0, #0
	strb r0, [r3, #1]
	movs r0, #0xf
	strb r0, [r3, #0xb]
_08099C6C:
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08099C96
	movs r1, #4
_08099C78:
	ldrb r0, [r3, #4]
	cmp r0, #0
	bne _08099C82
	strb r1, [r3, #4]
	b _08099C86
_08099C82:
	subs r0, #1
	strb r0, [r3, #4]
_08099C86:
	ldrb r0, [r3, #4]
	ldrb r2, [r3, #5]
	cmp r0, r2
	beq _08099C78
	movs r0, #1
	strb r0, [r3, #1]
	movs r0, #0x10
	strb r0, [r3, #0xb]
_08099C96:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Task_8099C9C
Task_8099C9C: @ 0x08099C9C
	push {r4, r5, r6, lr}
	ldr r0, _08099CC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _08099CCC @ =gStageData
	ldrb r1, [r0, #6]
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _08099CF0
	cmp r0, #3
	beq _08099CF0
	cmp r0, #1
	bne _08099CE4
	cmp r1, #0
	bne _08099CD0
	bl sub_8023EFC
	b _08099CD6
	.align 2, 0
_08099CC8: .4byte gCurTask
_08099CCC: .4byte gStageData
_08099CD0:
	ldrb r0, [r5, #4]
	bl sub_80241AC
_08099CD6:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x10
	ands r0, r2
	ldrb r1, [r5, #9]
	orrs r0, r1
	strb r0, [r5, #9]
_08099CE4:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _08099CF0
	bl sub_802613C
	b _08099E32
_08099CF0:
	adds r0, r5, #0
	bl sub_809ADF0
	adds r0, r5, #0
	bl sub_809AE50
	adds r0, r5, #0
	bl sub_809AF08
	ldr r0, _08099DC0 @ =gBgSprites_Unknown1
	movs r3, #0
	strb r3, [r0, #2]
	ldr r1, _08099DC4 @ =gBgSprites_Unknown2
	strb r3, [r1, #8]
	strb r3, [r1, #9]
	movs r0, #0xff
	strb r0, [r1, #0xa]
	movs r0, #0x40
	strb r0, [r1, #0xb]
	movs r0, #0x8e
	lsls r0, r0, #8
	str r0, [r5, #0x4c]
	movs r0, #0xb0
	lsls r0, r0, #5
	str r0, [r5, #0x50]
	ldr r1, _08099DC8 @ =gBgScrollRegs
	movs r4, #0
	movs r0, #0x8e
	strh r0, [r1, #8]
	ldr r0, _08099DCC @ =0x0000FFEA
	strh r0, [r1, #0xa]
	ldr r1, _08099DD0 @ =gDispCnt
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08099DD4 @ =gBgCntRegs
	ldr r0, _08099DD8 @ =0x00001B09
	strh r0, [r1, #4]
	movs r1, #0x8d
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r6, _08099DDC @ =gUnknown_080D8F18
	ldrb r1, [r5, #6]
	adds r1, r1, r6
	ldrb r1, [r1]
	ldr r2, _08099DE0 @ =0x06008000
	str r2, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r2, _08099DE4 @ =0x0600D800
	str r2, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	ldr r2, _08099DE8 @ =gUnknown_080D8CDC
	adds r1, #0xa
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x10
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _08099DEC @ =0x0000025E
	adds r1, r5, r2
	strb r4, [r1]
	movs r1, #2
	strh r1, [r0, #0x2e]
	bl DrawBackground
	adds r0, r5, #0
	bl sub_809B69C
	adds r0, r5, #0
	bl sub_809B6C0
	ldr r1, _08099DF0 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _08099D9E
	cmp r0, #3
	beq _08099D9E
	cmp r0, #4
	bne _08099DF8
_08099D9E:
	ldr r2, _08099DF4 @ =gPlayers
	ldr r1, _08099DDC @ =gUnknown_080D8F18
	ldrb r0, [r5, #6]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0xbd
	lsls r1, r1, #1
	adds r3, r2, r1
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _08099E2A
	.align 2, 0
_08099DC0: .4byte gBgSprites_Unknown1
_08099DC4: .4byte gBgSprites_Unknown2
_08099DC8: .4byte gBgScrollRegs
_08099DCC: .4byte 0x0000FFEA
_08099DD0: .4byte gDispCnt
_08099DD4: .4byte gBgCntRegs
_08099DD8: .4byte 0x00001B09
_08099DDC: .4byte gUnknown_080D8F18
_08099DE0: .4byte 0x06008000
_08099DE4: .4byte 0x0600D800
_08099DE8: .4byte gUnknown_080D8CDC
_08099DEC: .4byte 0x0000025E
_08099DF0: .4byte gStageData
_08099DF4: .4byte gPlayers
_08099DF8:
	cmp r0, #5
	bne _08099E32
	ldrb r0, [r1, #6]
	adds r0, #1
	movs r1, #1
	ldr r2, _08099E38 @ =gPlayers
	ands r0, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	ldrb r0, [r5, #6]
	adds r0, r0, r6
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
_08099E2A:
	ldr r0, _08099E3C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08099E40 @ =Task_8099EC8
	str r0, [r1, #8]
_08099E32:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08099E38: .4byte gPlayers
_08099E3C: .4byte gCurTask
_08099E40: .4byte Task_8099EC8

	thumb_func_start Task_8099E44
Task_8099E44: @ 0x08099E44
	push {r4, r5, r6, lr}
	ldr r6, _08099EC0 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_809B424
	cmp r0, #1
	bne _08099E62
	movs r5, #1
_08099E62:
	adds r0, r4, #0
	movs r1, #0
	bl sub_809B470
	cmp r0, #1
	bne _08099E74
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08099E74:
	adds r0, r4, #0
	movs r1, #0
	bl sub_809B4BC
	cmp r0, #1
	bne _08099E86
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08099E86:
	adds r0, r4, #0
	movs r1, #0
	bl sub_809B548
	cmp r0, #1
	bne _08099E98
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08099E98:
	adds r0, r4, #0
	bl sub_809ADF0
	adds r0, r4, #0
	bl sub_809AE50
	adds r0, r4, #0
	bl sub_809AF08
	adds r0, r4, #0
	bl sub_809B094
	cmp r5, #4
	bne _08099EBA
	ldr r1, [r6]
	ldr r0, _08099EC4 @ =Task_8099EC8
	str r0, [r1, #8]
_08099EBA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08099EC0: .4byte gCurTask
_08099EC4: .4byte Task_8099EC8

	thumb_func_start Task_8099EC8
Task_8099EC8: @ 0x08099EC8
	push {r4, r5, r6, r7, lr}
	ldr r0, _08099F2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r0, _08099F30 @ =gStageData
	ldrb r6, [r0, #6]
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _08099F14
	ldr r2, _08099F34 @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0x80
	lsls r7, r7, #6
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08099F38 @ =gWinRegs
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
	ldr r1, _08099F3C @ =gBldRegs
	ldr r0, _08099F40 @ =0x00003FBF
	strh r0, [r1]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0xe]
_08099F14:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _08099F64
	cmp r0, #3
	beq _08099F64
	cmp r0, #1
	bne _08099F58
	cmp r6, #0
	bne _08099F44
	bl sub_8023EFC
	b _08099F4A
	.align 2, 0
_08099F2C: .4byte gCurTask
_08099F30: .4byte gStageData
_08099F34: .4byte gDispCnt
_08099F38: .4byte gWinRegs
_08099F3C: .4byte gBldRegs
_08099F40: .4byte 0x00003FBF
_08099F44:
	ldrb r0, [r4, #4]
	bl sub_80241AC
_08099F4A:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x10
	ands r0, r3
	ldrb r1, [r4, #9]
	orrs r0, r1
	strb r0, [r4, #9]
_08099F58:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _08099F64
	bl sub_802613C
	b _0809A00A
_08099F64:
	adds r0, r4, #0
	movs r1, #0
	bl sub_809B424
	cmp r0, #1
	bne _08099F76
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08099F76:
	adds r0, r4, #0
	movs r1, #0
	bl sub_809B470
	cmp r0, #1
	bne _08099F88
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08099F88:
	adds r0, r4, #0
	movs r1, #0
	bl sub_809B4BC
	cmp r0, #1
	bne _08099F9A
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08099F9A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_809B548
	cmp r0, #1
	bne _08099FAC
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08099FAC:
	adds r0, r4, #0
	bl sub_809ADF0
	adds r0, r4, #0
	bl sub_809AE50
	adds r0, r4, #0
	bl sub_809AF08
	adds r0, r4, #0
	bl sub_809B094
	ldr r1, _08099FE0 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _08099FE4
	ldrh r0, [r4, #0x10]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r7, [r4, #0x10]
	adds r0, r0, r7
	strh r0, [r4, #0x10]
	b _0809A00A
	.align 2, 0
_08099FE0: .4byte gBldRegs
_08099FE4:
	cmp r5, #4
	bne _0809A00A
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x16
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_809A9A0
	adds r0, r4, #0
	bl sub_809A808
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [r4, #0x58]
	ldr r0, _0809A010 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809A014 @ =Task_809A018
	str r0, [r1, #8]
_0809A00A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809A010: .4byte gCurTask
_0809A014: .4byte Task_809A018

	thumb_func_start Task_809A018
Task_809A018: @ 0x0809A018
	push {r4, r5, r6, lr}
	ldr r0, _0809A084 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0809A088 @ =gStageData
	ldrb r6, [r0, #6]
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _0809A06C
	ldr r2, _0809A08C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809A090 @ =gWinRegs
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
	ldr r1, _0809A094 @ =gBldRegs
	ldr r0, _0809A098 @ =0x00003FBF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x10]
	strh r3, [r4, #0xe]
_0809A06C:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0809A0BC
	cmp r0, #3
	beq _0809A0BC
	cmp r0, #1
	bne _0809A0B0
	cmp r6, #0
	bne _0809A09C
	bl sub_8023EFC
	b _0809A0A2
	.align 2, 0
_0809A084: .4byte gCurTask
_0809A088: .4byte gStageData
_0809A08C: .4byte gDispCnt
_0809A090: .4byte gWinRegs
_0809A094: .4byte gBldRegs
_0809A098: .4byte 0x00003FBF
_0809A09C:
	ldrb r0, [r4, #4]
	bl sub_80241AC
_0809A0A2:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x10
	ands r0, r5
	ldrb r1, [r4, #9]
	orrs r0, r1
	strb r0, [r4, #9]
_0809A0B0:
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _0809A0BC
	bl sub_802613C
	b _0809A120
_0809A0BC:
	adds r0, r4, #0
	bl sub_809B13C
	adds r0, r4, #0
	bl sub_809ADF0
	adds r0, r4, #0
	bl sub_809AFC0
	adds r0, r4, #0
	bl sub_809B6C0
	adds r0, r4, #0
	bl sub_809B69C
	ldr r2, _0809A0F4 @ =gBldRegs
	ldrh r1, [r2, #4]
	cmp r1, #0
	beq _0809A0FC
	ldrh r0, [r4, #0x10]
	lsrs r0, r0, #8
	strh r0, [r2, #4]
	ldr r1, _0809A0F8 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #0x10]
	adds r0, r0, r3
	strh r0, [r4, #0x10]
	b _0809A120
	.align 2, 0
_0809A0F4: .4byte gBldRegs
_0809A0F8: .4byte 0xFFFFFF00
_0809A0FC:
	movs r0, #1
	strh r0, [r4, #0xe]
	strh r1, [r2, #4]
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _0809A118
	ldr r0, _0809A110 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809A114 @ =Task_809A130
	b _0809A11E
	.align 2, 0
_0809A110: .4byte gCurTask
_0809A114: .4byte Task_809A130
_0809A118:
	ldr r0, _0809A128 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809A12C @ =Task_809A1C4
_0809A11E:
	str r0, [r1, #8]
_0809A120:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809A128: .4byte gCurTask
_0809A12C: .4byte Task_809A1C4

	thumb_func_start Task_809A130
Task_809A130: @ 0x0809A130
	push {r4, r5, lr}
	ldr r0, _0809A15C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0809A160 @ =gStageData
	ldrb r1, [r0, #6]
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0809A184
	cmp r0, #3
	beq _0809A184
	cmp r0, #1
	bne _0809A178
	cmp r1, #0
	bne _0809A164
	bl sub_8023EFC
	b _0809A16A
	.align 2, 0
_0809A15C: .4byte gCurTask
_0809A160: .4byte gStageData
_0809A164:
	ldrb r0, [r4, #4]
	bl sub_80241AC
_0809A16A:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x10
	ands r0, r5
	ldrb r1, [r4, #9]
	orrs r0, r1
	strb r0, [r4, #9]
_0809A178:
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _0809A184
	bl sub_802613C
	b _0809A1B6
_0809A184:
	adds r0, r4, #0
	bl sub_809B13C
	adds r0, r4, #0
	bl sub_809ADF0
	adds r0, r4, #0
	bl sub_809AFC0
	adds r0, r4, #0
	bl sub_809B6C0
	adds r0, r4, #0
	bl sub_809B69C
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809A1B6
	ldr r0, _0809A1BC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809A1C0 @ =Task_809A1C4
	str r0, [r1, #8]
_0809A1B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809A1BC: .4byte gCurTask
_0809A1C0: .4byte Task_809A1C4

	thumb_func_start Task_809A1C4
Task_809A1C4: @ 0x0809A1C4
	push {r4, r5, lr}
	ldr r0, _0809A20C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0809A210 @ =gStageData
	ldrb r5, [r0, #6]
	adds r0, r4, #0
	bl sub_809B13C
	adds r0, r4, #0
	bl sub_809ADF0
	adds r0, r4, #0
	bl sub_809AFC0
	adds r0, r4, #0
	bl sub_809B6C0
	adds r0, r4, #0
	bl sub_809B69C
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	bne _0809A218
	ldr r0, _0809A214 @ =gAnnouncerSelect1st
	ldrb r1, [r4, #5]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl m4aSongNumStart
	b _0809A23A
	.align 2, 0
_0809A20C: .4byte gCurTask
_0809A210: .4byte gStageData
_0809A214: .4byte gAnnouncerSelect1st
_0809A218:
	cmp r0, #0x3c
	bne _0809A228
	ldr r0, _0809A224 @ =0x000001FF @ VOICE__ANNOUNCER__AND
	bl m4aSongNumStart
	b _0809A23A
	.align 2, 0
_0809A224: .4byte 0x000001FF
_0809A228:
	cmp r0, #0x5a
	bne _0809A23A
	ldr r0, _0809A26C @ =gAnnouncerSelect2nd
	ldrb r1, [r4, #6]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl m4aSongNumStart
_0809A23A:
	ldrh r0, [r4, #0x14]
	adds r3, r0, #1
	strh r3, [r4, #0x14]
	ldrb r1, [r4, #7]
	cmp r1, #1
	bne _0809A2AA
	cmp r5, #0
	bne _0809A288
	ldr r0, _0809A270 @ =gPressedKeys
	ldrh r2, [r0]
	ands r1, r2
	cmp r1, #0
	bne _0809A25C
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0809A274
_0809A25C:
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0809A294
	bl sub_8024130
	b _0809A2C6
	.align 2, 0
_0809A26C: .4byte gAnnouncerSelect2nd
_0809A270: .4byte gPressedKeys
_0809A274:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _0809A2D6
	bl sub_8024130
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809A2C6
	b _0809A2A4
_0809A288:
	bl sub_8024208
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0809A29A
_0809A294:
	bl sub_802613C
	b _0809A2D6
_0809A29A:
	cmp r0, #0
	bne _0809A2C6
	ldrh r0, [r4, #0x14]
	cmp r0, #0x78
	bls _0809A2D6
_0809A2A4:
	movs r0, #0x79
	strh r0, [r4, #0x14]
	b _0809A2D6
_0809A2AA:
	ldr r0, _0809A2DC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0809A2C6
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0809A2C6
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _0809A2D6
_0809A2C6:
	movs r0, #2
	strb r0, [r4, #2]
	movs r0, #0x17
	strb r0, [r4, #0xb]
	ldr r0, _0809A2E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809A2E4 @ =sub_8098508
	str r0, [r1, #8]
_0809A2D6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809A2DC: .4byte gPressedKeys
_0809A2E0: .4byte gCurTask
_0809A2E4: .4byte sub_8098508

	thumb_func_start Task_809A2E8
Task_809A2E8: @ 0x0809A2E8
	push {r4, r5, lr}
	ldr r5, _0809A378 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _0809A330
	ldr r2, _0809A37C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809A380 @ =gWinRegs
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
	ldr r1, _0809A384 @ =gBldRegs
	ldr r0, _0809A388 @ =0x00003FBF
	strh r0, [r1]
	strh r3, [r4, #0xe]
	strh r3, [r4, #0x10]
_0809A330:
	adds r0, r4, #0
	bl sub_809B13C
	adds r0, r4, #0
	bl sub_809ADF0
	adds r0, r4, #0
	bl sub_809AFC0
	adds r0, r4, #0
	bl sub_809B6C0
	adds r0, r4, #0
	bl sub_809B69C
	ldr r2, _0809A384 @ =gBldRegs
	ldrh r0, [r2, #4]
	cmp r0, #0xf
	bls _0809A390
	movs r1, #0
	movs r0, #0x10
	strh r0, [r2, #4]
	strh r1, [r4, #0x14]
	movs r0, #0x9b
	lsls r0, r0, #9
	str r0, [r4, #0x3c]
	str r0, [r4, #0x34]
	movs r0, #0x1d
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	bl sub_809A50C
	ldr r1, [r5]
	ldr r0, _0809A38C @ =Task_809A3BC
	str r0, [r1, #8]
	b _0809A3B6
	.align 2, 0
_0809A378: .4byte gCurTask
_0809A37C: .4byte gDispCnt
_0809A380: .4byte gWinRegs
_0809A384: .4byte gBldRegs
_0809A388: .4byte 0x00003FBF
_0809A38C: .4byte Task_809A3BC
_0809A390:
	ldrh r0, [r4, #0x10]
	lsrs r0, r0, #8
	strh r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r4, #0x10]
	adds r0, r0, r3
	strh r0, [r4, #0x10]
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _0809A3B6
	adds r0, r4, #0
	bl sub_809AD08
	cmp r0, #0
	bne _0809A3B6
	bl sub_802613C
_0809A3B6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start Task_809A3BC
Task_809A3BC: @ 0x0809A3BC
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0809A458 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _0809A45C @ =0x03000005
	adds r0, r4, r1
	adds r1, #6
	adds r5, r4, r1
	adds r1, #0x29
	adds r2, r4, r1
	adds r1, #4
	adds r3, r4, r1
	ldr r1, [r6, #0x20]
	str r1, [sp]
	adds r1, r5, #0
	bl sub_809BF3C
	ldr r1, _0809A460 @ =0x03000003
	adds r0, r4, r1
	adds r1, #0x39
	adds r2, r4, r1
	adds r1, #4
	adds r4, r4, r1
	ldr r1, [r6, #0x1c]
	str r1, [sp]
	adds r1, r5, #0
	adds r3, r4, #0
	bl sub_809BF3C
	movs r0, #0xe
	strb r0, [r6, #0xb]
	adds r0, r6, #0
	bl sub_809A644
	movs r0, #0xb4
	lsls r0, r0, #7
	str r0, [r6, #0x34]
	movs r0, #0x96
	lsls r0, r0, #8
	str r0, [r6, #0x3c]
	movs r0, #0xbe
	lsls r0, r0, #7
	str r0, [r6, #0x64]
	movs r0, #0x91
	lsls r0, r0, #8
	str r0, [r6, #0x6c]
	movs r0, #0xc9
	lsls r0, r0, #8
	str r0, [r6, #0x54]
	movs r0, #0xb0
	lsls r0, r0, #5
	str r0, [r6, #0x58]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r6, #0x4c]
	ldr r1, _0809A464 @ =gUnknown_080D8F18
	ldrb r0, [r6, #5]
	adds r0, r0, r1
	ldrb r4, [r0]
	ldr r5, _0809A468 @ =gFlags
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _0809A470
	lsls r0, r4, #5
	ldr r1, _0809A46C @ =gUnknown_08E2EE50
	adds r0, r0, r1
	movs r1, #0x60
	movs r2, #0x10
	bl CopyPalette
	b _0809A48A
	.align 2, 0
_0809A458: .4byte gCurTask
_0809A45C: .4byte 0x03000005
_0809A460: .4byte 0x03000003
_0809A464: .4byte gUnknown_080D8F18
_0809A468: .4byte gFlags
_0809A46C: .4byte gUnknown_08E2EE50
_0809A470:
	ldr r2, _0809A4B0 @ =0x040000D4
	lsls r0, r4, #5
	ldr r1, _0809A4B4 @ =gUnknown_08E2EE50
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _0809A4B8 @ =gObjPalette + 0xC0
	str r0, [r2, #4]
	ldr r0, _0809A4BC @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r5]
_0809A48A:
	ldr r0, _0809A4C0 @ =gUnknown_080D8F18
	ldrb r1, [r6, #6]
	adds r1, r1, r0
	ldrb r4, [r1]
	ldr r5, _0809A4C4 @ =gFlags
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _0809A4C8
	lsls r0, r4, #5
	ldr r1, _0809A4B4 @ =gUnknown_08E2EE50
	adds r0, r0, r1
	movs r1, #0x70
	movs r2, #0x10
	bl CopyPalette
	b _0809A4E2
	.align 2, 0
_0809A4B0: .4byte 0x040000D4
_0809A4B4: .4byte gUnknown_08E2EE50
_0809A4B8: .4byte gObjPalette + 0xC0
_0809A4BC: .4byte 0x80000010
_0809A4C0: .4byte gUnknown_080D8F18
_0809A4C4: .4byte gFlags
_0809A4C8:
	ldr r2, _0809A4F4 @ =0x040000D4
	lsls r0, r4, #5
	ldr r1, _0809A4F8 @ =gUnknown_08E2EE50
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _0809A4FC @ =gObjPalette + 0xE0
	str r0, [r2, #4]
	ldr r0, _0809A500 @ =0x80000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r5]
_0809A4E2:
	ldr r0, _0809A504 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809A508 @ =Task_809A6C0
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809A4F4: .4byte 0x040000D4
_0809A4F8: .4byte gUnknown_08E2EE50
_0809A4FC: .4byte gObjPalette + 0xE0
_0809A500: .4byte 0x80000010
_0809A504: .4byte gCurTask
_0809A508: .4byte Task_809A6C0

	thumb_func_start sub_809A50C
sub_809A50C: @ 0x0809A50C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, _0809A56C @ =gDispCnt
	ldr r2, _0809A570 @ =0x00001741
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0809A574 @ =gBgSprites_Unknown1
	movs r2, #0
	strb r2, [r0, #1]
	ldr r1, _0809A578 @ =gBgSprites_Unknown2
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0xff
	strb r0, [r1, #6]
	movs r0, #0x40
	strb r0, [r1, #7]
	ldr r1, _0809A57C @ =gBgCntRegs
	ldr r0, _0809A580 @ =0x0000030E
	strh r0, [r1, #2]
	ldr r0, _0809A584 @ =gBgScrollRegs
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	movs r0, #0xfa
	lsls r0, r0, #1
	adds r3, r7, r0
	ldr r1, _0809A588 @ =gUnknown_080D8F18
	ldrb r0, [r7, #5]
	adds r0, r0, r1
	ldrb r4, [r0]
	ldr r0, _0809A58C @ =0x0600C000
	str r0, [r3, #4]
	strh r2, [r3, #0xa]
	ldr r0, _0809A590 @ =0x06001800
	str r0, [r3, #0xc]
	strh r2, [r3, #0x18]
	strh r2, [r3, #0x1a]
	ldr r1, _0809A594 @ =gLoadedSaveGame
	ldr r0, _0809A598 @ =gUnknown_080D946D
	adds r0, r4, r0
	ldrb r1, [r1, #0x10]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0809A5A0
	ldr r0, _0809A59C @ =gUnknown_080D8CDC
	ldrh r0, [r0, #0x20]
	b _0809A5AC
	.align 2, 0
_0809A56C: .4byte gDispCnt
_0809A570: .4byte 0x00001741
_0809A574: .4byte gBgSprites_Unknown1
_0809A578: .4byte gBgSprites_Unknown2
_0809A57C: .4byte gBgCntRegs
_0809A580: .4byte 0x0000030E
_0809A584: .4byte gBgScrollRegs
_0809A588: .4byte gUnknown_080D8F18
_0809A58C: .4byte 0x0600C000
_0809A590: .4byte 0x06001800
_0809A594: .4byte gLoadedSaveGame
_0809A598: .4byte gUnknown_080D946D
_0809A59C: .4byte gUnknown_080D8CDC
_0809A5A0:
	ldr r0, _0809A624 @ =gUnknown_080D8CDC
	adds r1, r4, #0
	adds r1, #0xa
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_0809A5AC:
	strh r0, [r3, #0x1c]
	movs r6, #0
	movs r4, #0
	strh r4, [r3, #0x1e]
	strh r4, [r3, #0x20]
	strh r4, [r3, #0x22]
	strh r4, [r3, #0x24]
	movs r5, #0x10
	strh r5, [r3, #0x26]
	strh r5, [r3, #0x28]
	adds r0, r3, #0
	adds r0, #0x2a
	strb r6, [r0]
	movs r0, #1
	strh r0, [r3, #0x2e]
	adds r0, r3, #0
	bl DrawBackground
	ldr r1, _0809A628 @ =gBgCntRegs
	ldr r0, _0809A62C @ =0x00001B89
	strh r0, [r1, #4]
	ldr r0, _0809A630 @ =gBgScrollRegs
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	movs r1, #0x8d
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r2, _0809A634 @ =gUnknown_080D8F18
	ldrb r1, [r7, #6]
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, _0809A638 @ =0x06008000
	str r2, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r2, _0809A63C @ =0x0600D800
	str r2, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r2, _0809A624 @ =gUnknown_080D8CDC
	adds r1, #5
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	ldr r2, _0809A640 @ =0x0000025E
	adds r1, r7, r2
	strb r6, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809A624: .4byte gUnknown_080D8CDC
_0809A628: .4byte gBgCntRegs
_0809A62C: .4byte 0x00001B89
_0809A630: .4byte gBgScrollRegs
_0809A634: .4byte gUnknown_080D8F18
_0809A638: .4byte 0x06008000
_0809A63C: .4byte 0x0600D800
_0809A640: .4byte 0x0000025E

	thumb_func_start sub_809A644
sub_809A644: @ 0x0809A644
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r2, _0809A6B8 @ =gUnknown_080D8EF8
	ldrh r1, [r2]
	movs r4, #0
	movs r3, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #0x64]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x68]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	adds r0, #0x9c
	ldrb r2, [r5, #0xb]
	subs r2, #0xd
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _0809A6BC @ =gUnknown_080D8D08
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	adds r1, r2, r1
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #3
	adds r2, r2, r3
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809A6B8: .4byte gUnknown_080D8EF8
_0809A6BC: .4byte gUnknown_080D8D08

	thumb_func_start Task_809A6C0
Task_809A6C0: @ 0x0809A6C0
	push {r4, r5, r6, r7, lr}
	ldr r0, _0809A728 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _0809A710
	ldr r2, _0809A72C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809A730 @ =gWinRegs
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
	ldr r1, _0809A734 @ =gBldRegs
	ldr r0, _0809A738 @ =0x00003FBF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #0x10]
	strh r5, [r4, #0xe]
_0809A710:
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _0809A73C
	adds r0, r4, #0
	bl sub_809AD08
	cmp r0, #0
	bne _0809A73C
	bl sub_802613C
	b _0809A7FA
	.align 2, 0
_0809A728: .4byte gCurTask
_0809A72C: .4byte gDispCnt
_0809A730: .4byte gWinRegs
_0809A734: .4byte gBldRegs
_0809A738: .4byte 0x00003FBF
_0809A73C:
	adds r0, r4, #0
	bl sub_809B13C
	adds r0, r4, #0
	bl sub_809ADF0
	adds r0, r4, #0
	bl sub_809AE50
	adds r0, r4, #0
	bl sub_809AF08
	adds r0, r4, #0
	bl sub_809B69C
	adds r0, r4, #0
	bl sub_809B6C0
	adds r0, r4, #0
	movs r1, #1
	bl sub_809B424
	cmp r0, #1
	bne _0809A772
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809A772:
	adds r0, r4, #0
	movs r1, #1
	bl sub_809B470
	cmp r0, #1
	bne _0809A784
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809A784:
	adds r0, r4, #0
	movs r1, #1
	bl sub_809B4BC
	cmp r0, #1
	bne _0809A796
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809A796:
	adds r0, r4, #0
	movs r1, #1
	bl sub_809B548
	cmp r0, #1
	bne _0809A7A8
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809A7A8:
	ldr r6, _0809A7C4 @ =gBldRegs
	ldrh r7, [r6, #4]
	cmp r7, #0
	beq _0809A7CC
	ldrh r0, [r4, #0x10]
	lsrs r0, r0, #8
	strh r0, [r6, #4]
	ldr r1, _0809A7C8 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r3, [r4, #0x10]
	adds r0, r0, r3
	strh r0, [r4, #0x10]
	b _0809A7FA
	.align 2, 0
_0809A7C4: .4byte gBldRegs
_0809A7C8: .4byte 0xFFFFFF00
_0809A7CC:
	cmp r5, #4
	bne _0809A7FA
	movs r0, #0xe
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _0809A7E0
	adds r0, r4, #0
	bl sub_809B700
_0809A7E0:
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_809B704
	cmp r0, #0
	beq _0809A7FA
	movs r0, #1
	strh r0, [r4, #0xe]
	strh r7, [r6, #4]
	ldr r0, _0809A800 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809A804 @ =Task_8099758
	str r0, [r1, #8]
_0809A7FA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809A800: .4byte gCurTask
_0809A804: .4byte Task_8099758

	thumb_func_start sub_809A808
sub_809A808: @ 0x0809A808
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r3, r6, #0
	adds r3, #0x9c
	ldr r0, _0809A834 @ =gUnknown_080D8F18
	ldrb r1, [r6, #5]
	adds r1, r1, r0
	ldrb r2, [r1]
	ldrb r1, [r6, #6]
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r2, #0
	beq _0809A826
	cmp r0, #0
	bne _0809A850
_0809A826:
	cmp r2, #2
	beq _0809A82E
	cmp r0, #2
	bne _0809A838
_0809A82E:
	movs r2, #4
	b _0809A866
	.align 2, 0
_0809A834: .4byte gUnknown_080D8F18
_0809A838:
	cmp r2, #3
	beq _0809A840
	cmp r0, #3
	bne _0809A844
_0809A840:
	movs r2, #6
	b _0809A866
_0809A844:
	cmp r2, #4
	beq _0809A84C
	cmp r0, #4
	bne _0809A864
_0809A84C:
	movs r2, #3
	b _0809A866
_0809A850:
	cmp r2, #4
	bne _0809A858
	cmp r0, #1
	beq _0809A860
_0809A858:
	cmp r2, #1
	bne _0809A864
	cmp r0, #4
	bne _0809A864
_0809A860:
	movs r2, #5
	b _0809A866
_0809A864:
	movs r2, #2
_0809A866:
	ldr r1, _0809A8C8 @ =gUnknown_080D8D08
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #3
	adds r0, r2, r0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r5, #0
	movs r4, #0
	strh r0, [r3, #0xc]
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #3
	adds r0, r2, r0
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r2, _0809A8CC @ =gUnknown_080D8F00
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x64]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x68]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809A8C8: .4byte gUnknown_080D8D08
_0809A8CC: .4byte gUnknown_080D8F00

	thumb_func_start sub_809A8D0
sub_809A8D0: @ 0x0809A8D0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	adds r7, r6, #0
	ldr r2, _0809A954 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0809A958 @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	movs r0, #0xe3
	lsls r0, r0, #2
	strh r0, [r1, #2]
	ldr r0, _0809A95C @ =gBgScrollRegs
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, _0809A960 @ =0x0600C000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _0809A964 @ =0x06001800
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r3, _0809A968 @ =gUnknown_080D8CDC
	subs r1, r6, #2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x10
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _0809A96C @ =0x0000021E
	adds r1, r5, r2
	strb r4, [r1]
	movs r1, #5
	strh r1, [r0, #0x2e]
	bl DrawBackground
	cmp r6, #4
	beq _0809A942
	cmp r6, #6
	beq _0809A942
	cmp r6, #3
	bne _0809A974
_0809A942:
	ldr r0, _0809A970 @ =gUnknown_080D8F18
	ldrb r1, [r5, #5]
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0809A990
	movs r0, #0x80
	lsls r0, r0, #5
	b _0809A994
	.align 2, 0
_0809A954: .4byte gDispCnt
_0809A958: .4byte gBgCntRegs
_0809A95C: .4byte gBgScrollRegs
_0809A960: .4byte 0x0600C000
_0809A964: .4byte 0x06001800
_0809A968: .4byte gUnknown_080D8CDC
_0809A96C: .4byte 0x0000021E
_0809A970: .4byte gUnknown_080D8F18
_0809A974:
	cmp r7, #5
	bne _0809A996
	ldr r0, _0809A98C @ =gUnknown_080D8F18
	ldrb r1, [r5, #5]
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #1
	bne _0809A990
	movs r0, #0x80
	lsls r0, r0, #5
	b _0809A994
	.align 2, 0
_0809A98C: .4byte gUnknown_080D8F18
_0809A990:
	movs r0, #0xf0
	lsls r0, r0, #8
_0809A994:
	strh r0, [r5, #0x18]
_0809A996:
	movs r0, #0
	strh r0, [r5, #0x12]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_809A9A0
sub_809A9A0: @ 0x0809A9A0
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, _0809AA04 @ =gDispCnt
	ldr r2, _0809AA08 @ =0x00001541
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0809AA0C @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	ldr r0, _0809AA10 @ =0x00001B89
	strh r0, [r1, #4]
	ldr r0, _0809AA14 @ =gBgScrollRegs
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r3, #0x4c]
	movs r0, #0xaa
	lsls r0, r0, #7
	str r0, [r3, #0x50]
	movs r1, #0x8d
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, _0809AA18 @ =0x06008000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _0809AA1C @ =0x0600D800
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _0809AA20 @ =gUnknown_080D8CDC
	ldrh r1, [r1, #0x1e]
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x10
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _0809AA24 @ =0x0000025E
	adds r3, r3, r2
	strb r4, [r3]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809AA04: .4byte gDispCnt
_0809AA08: .4byte 0x00001541
_0809AA0C: .4byte gBgCntRegs
_0809AA10: .4byte 0x00001B89
_0809AA14: .4byte gBgScrollRegs
_0809AA18: .4byte 0x06008000
_0809AA1C: .4byte 0x0600D800
_0809AA20: .4byte gUnknown_080D8CDC
_0809AA24: .4byte 0x0000025E

	thumb_func_start Task_809AA28
Task_809AA28: @ 0x0809AA28
	push {r4, r5, r6, lr}
	ldr r6, _0809AAAC @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_809ADF0
	adds r0, r5, #0
	bl sub_809AE50
	adds r0, r5, #0
	bl sub_809AF08
	adds r0, r5, #0
	bl sub_809B69C
	adds r0, r5, #0
	bl sub_809B6C0
	ldrb r0, [r5, #0xb]
	cmp r0, #0xb
	bls _0809AA6E
	movs r0, #1
	strb r0, [r5, #0xb]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r5, #0x3c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r5, #0x40]
	ldrb r0, [r5, #5]
	strb r0, [r5, #3]
_0809AA6E:
	ldr r1, _0809AAB0 @ =0x0300009C
	adds r0, r4, r1
	ldr r2, _0809AAB4 @ =gUnknown_080D8D08
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #6
	adds r1, r1, r2
	ldrh r1, [r1]
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #6
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	bl UpdateSpriteAnimation
	movs r0, #4
	strb r0, [r5, #0xb]
	strh r4, [r5, #0x12]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r5, #0x4c]
	movs r0, #0xaa
	lsls r0, r0, #7
	str r0, [r5, #0x50]
	ldr r1, [r6]
	ldr r0, _0809AAB8 @ =Task_8098DE4
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809AAAC: .4byte gCurTask
_0809AAB0: .4byte 0x0300009C
_0809AAB4: .4byte gUnknown_080D8D08
_0809AAB8: .4byte Task_8098DE4

	thumb_func_start Task_809AABC
Task_809AABC: @ 0x0809AABC
	push {r4, r5, lr}
	ldr r0, _0809AB5C @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_809ADF0
	adds r0, r4, #0
	bl sub_809AE50
	adds r0, r4, #0
	bl sub_809AF08
	adds r0, r4, #0
	bl sub_809B69C
	adds r0, r4, #0
	bl sub_809B6C0
	adds r0, r4, #0
	movs r1, #1
	bl sub_809B32C
	adds r0, r4, #0
	bl sub_809B13C
	adds r0, r4, #0
	movs r1, #1
	bl sub_809B3C4
	adds r0, r4, #0
	bl sub_809B41C
	adds r0, r4, #0
	movs r1, #1
	bl sub_809AC44
	cmp r0, #1
	bne _0809ABC8
	movs r0, #0xa0
	lsls r0, r0, #9
	str r0, [r4, #0x34]
	ldrb r0, [r4, #5]
	movs r2, #0
	strb r0, [r4, #3]
	movs r0, #0x1f
	strb r0, [r4, #0xb]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x3c]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x40]
	ldr r0, _0809AB60 @ =0x03000234
	adds r3, r5, r0
	ldr r1, _0809AB64 @ =gUnknown_080D8F18
	ldrb r0, [r4, #5]
	adds r0, r0, r1
	ldrb r5, [r0]
	ldr r0, _0809AB68 @ =0x06008000
	str r0, [r3, #4]
	strh r2, [r3, #0xa]
	ldr r0, _0809AB6C @ =0x0600D800
	str r0, [r3, #0xc]
	strh r2, [r3, #0x18]
	strh r2, [r3, #0x1a]
	ldr r1, _0809AB70 @ =gLoadedSaveGame
	ldr r0, _0809AB74 @ =gUnknown_080D946D
	adds r0, r5, r0
	ldrb r1, [r1, #0x10]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0809AB7C
	ldr r0, _0809AB78 @ =gUnknown_080D8CDC
	ldrh r0, [r0, #0x20]
	b _0809AB86
	.align 2, 0
_0809AB5C: .4byte gCurTask
_0809AB60: .4byte 0x03000234
_0809AB64: .4byte gUnknown_080D8F18
_0809AB68: .4byte 0x06008000
_0809AB6C: .4byte 0x0600D800
_0809AB70: .4byte gLoadedSaveGame
_0809AB74: .4byte gUnknown_080D946D
_0809AB78: .4byte gUnknown_080D8CDC
_0809AB7C:
	ldr r0, _0809ABBC @ =gUnknown_080D8CDC
	adds r1, r5, #5
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
_0809AB86:
	strh r0, [r3, #0x1c]
	movs r1, #0
	movs r0, #0
	strh r0, [r3, #0x1e]
	strh r0, [r3, #0x20]
	strh r0, [r3, #0x22]
	strh r0, [r3, #0x24]
	movs r0, #0x10
	strh r0, [r3, #0x26]
	strh r0, [r3, #0x28]
	adds r0, r3, #0
	adds r0, #0x2a
	strb r1, [r0]
	movs r0, #6
	strh r0, [r3, #0x2e]
	adds r0, r3, #0
	bl DrawBackground
	movs r0, #0x91
	lsls r0, r0, #8
	str r0, [r4, #0x70]
	ldr r0, _0809ABC0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809ABC4 @ =Task_809AA28
	str r0, [r1, #8]
	b _0809AC3C
	.align 2, 0
_0809ABBC: .4byte gUnknown_080D8CDC
_0809ABC0: .4byte gCurTask
_0809ABC4: .4byte Task_809AA28
_0809ABC8:
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _0809ABDE
	adds r0, r4, #0
	bl sub_809AD08
	cmp r0, #0
	bne _0809ABDE
	bl sub_802613C
	b _0809AC3C
_0809ABDE:
	ldr r0, _0809AC04 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	ldrb r2, [r4, #7]
	cmp r0, #0
	beq _0809AC38
	adds r0, r2, #0
	cmp r0, #0
	beq _0809AC0C
	cmp r0, #3
	beq _0809AC0C
	ldr r0, _0809AC08 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	b _0809AC0E
	.align 2, 0
_0809AC04: .4byte gPressedKeys
_0809AC08: .4byte gMultiSioStatusFlags
_0809AC0C:
	movs r0, #1
_0809AC0E:
	cmp r0, #0
	beq _0809AC38
	movs r0, #0xc
	strb r0, [r4, #0xb]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0809AC24
	adds r0, r4, #0
	bl sub_809B700
_0809AC24:
	ldr r0, _0809AC30 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0809AC34 @ =Task_8099680
	str r0, [r1, #8]
	b _0809AC3C
	.align 2, 0
_0809AC30: .4byte gCurTask
_0809AC34: .4byte Task_8099680
_0809AC38:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
_0809AC3C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809AC44
sub_809AC44: @ 0x0809AC44
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r3, #0
	cmp r1, #0
	beq _0809AC9E
	ldr r4, _0809AC6C @ =0xFFFFF820
	ldr r1, [r2, #0x34]
	ldr r0, _0809AC70 @ =0x000077FF
	cmp r1, r0
	bgt _0809AC78
	movs r5, #0xc0
	lsls r5, r5, #3
	adds r0, r1, r5
	str r0, [r2, #0x34]
	ldr r0, [r2, #0x54]
	ldr r1, _0809AC74 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r2, #0x54]
	b _0809AC86
	.align 2, 0
_0809AC6C: .4byte 0xFFFFF820
_0809AC70: .4byte 0x000077FF
_0809AC74: .4byte 0xFFFFFA00
_0809AC78:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x34]
	movs r0, #0xc9
	lsls r0, r0, #8
	str r0, [r2, #0x54]
	movs r3, #1
_0809AC86:
	ldr r0, [r2, #0x44]
	cmp r0, #0
	ble _0809AC9A
	adds r0, r0, r4
	str r0, [r2, #0x44]
	cmp r0, #0
	bge _0809ACF8
	movs r0, #0
	str r0, [r2, #0x44]
	b _0809ACF8
_0809AC9A:
	movs r0, #0
	b _0809ACF0
_0809AC9E:
	movs r4, #0xfc
	lsls r4, r4, #3
	ldr r1, [r2, #0x34]
	asrs r0, r1, #8
	cmp r0, #0x3c
	ble _0809ACC0
	ldr r5, _0809ACBC @ =0xFFFFFA00
	adds r0, r1, r5
	str r0, [r2, #0x34]
	ldr r0, [r2, #0x54]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r2, #0x54]
	b _0809ACCC
	.align 2, 0
_0809ACBC: .4byte 0xFFFFFA00
_0809ACC0:
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r2, #0x34]
	ldr r0, _0809ACE4 @ =0x00010500
	str r0, [r2, #0x54]
	movs r3, #1
_0809ACCC:
	ldr r1, [r2, #0x44]
	ldr r0, _0809ACE8 @ =0x000077FF
	cmp r1, r0
	bgt _0809ACEC
	adds r0, r1, r4
	str r0, [r2, #0x44]
	movs r1, #0xf0
	lsls r1, r1, #7
	cmp r0, r1
	ble _0809ACF8
	str r1, [r2, #0x44]
	b _0809ACF8
	.align 2, 0
_0809ACE4: .4byte 0x00010500
_0809ACE8: .4byte 0x000077FF
_0809ACEC:
	movs r0, #0xf0
	lsls r0, r0, #7
_0809ACF0:
	str r0, [r2, #0x44]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0809ACF8:
	cmp r3, #2
	beq _0809AD00
	movs r0, #0
	b _0809AD02
_0809AD00:
	movs r0, #1
_0809AD02:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_809AD08
sub_809AD08: @ 0x0809AD08
	push {lr}
	adds r3, r0, #0
	movs r2, #0x20
	ldrb r0, [r3, #7]
	cmp r0, #1
	bne _0809AD1E
	ldr r0, _0809AD30 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #1
	bls _0809AD1E
	movs r2, #0x22
_0809AD1E:
	ldr r0, _0809AD34 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809AD38
	movs r0, #2
	b _0809AD3A
	.align 2, 0
_0809AD30: .4byte gStageData
_0809AD34: .4byte gMultiSioStatusFlags
_0809AD38:
	movs r0, #1
_0809AD3A:
	ands r1, r0
	cmp r1, #0
	bne _0809AD42
	movs r2, #0x21
_0809AD42:
	cmp r2, #0x21
	bne _0809AD4C
	ldrh r0, [r3, #0x16]
	adds r0, #1
	strh r0, [r3, #0x16]
_0809AD4C:
	ldrh r0, [r3, #0x16]
	cmp r0, #0x77
	bls _0809AD6C
	cmp r2, #0x21
	beq _0809AD64
	cmp r2, #0x21
	bgt _0809AD60
	cmp r2, #0x20
	beq _0809AD6C
	b _0809AD68
_0809AD60:
	cmp r2, #0x22
	bne _0809AD68
_0809AD64:
	movs r0, #0
	b _0809AD6E
_0809AD68:
	movs r0, #0
	strh r0, [r3, #0x16]
_0809AD6C:
	movs r0, #1
_0809AD6E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809AD74
sub_809AD74: @ 0x0809AD74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x74
	movs r0, #2
	mov sb, r0
	ldrb r0, [r5, #0xb]
	movs r1, #0x78
	cmp r0, #0xd
	bls _0809AD90
	movs r1, #0xb4
_0809AD90:
	movs r6, #0
	movs r0, #0x28
	rsbs r0, r0, #0
	adds r0, r0, r1
	mov r8, r0
	adds r7, r1, #0
	adds r7, #0x28
_0809AD9E:
	cmp r6, #0
	beq _0809ADAC
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #8
	mov r1, r8
	subs r0, r1, r0
	b _0809ADB2
_0809ADAC:
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #8
	adds r0, r7, r0
_0809ADB2:
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x60]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	cmp r6, #0
	beq _0809ADC8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0809ADCE
_0809ADC8:
	ldr r0, [r4, #8]
	ldr r1, _0809ADEC @ =0xFFFFFBFF
	ands r0, r1
_0809ADCE:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, sb
	blo _0809AD9E
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809ADEC: .4byte 0xFFFFFBFF

	thumb_func_start sub_809ADF0
sub_809ADF0: @ 0x0809ADF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0xc4
_0809ADFA:
	ldr r0, [r5, #0x2c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	cmp r6, #0
	beq _0809AE18
	ldr r0, [r4, #8]
	ldr r1, _0809AE14 @ =0xFFFFFBFF
	ands r0, r1
	b _0809AE20
	.align 2, 0
_0809AE14: .4byte 0xFFFFFBFF
_0809AE18:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0809AE20:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0809ADFA
	adds r4, r5, #0
	adds r4, #0x9c
	ldr r0, [r5, #0x24]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x28]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809AE50
sub_809AE50: @ 0x0809AE50
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r4, r6, r0
	movs r7, #0
_0809AE5E:
	ldr r0, [r6, #0x64]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	strb r7, [r4, #0x1f]
	cmp r5, #0
	beq _0809AE7A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0809AE80
_0809AE7A:
	ldr r0, [r4, #8]
	ldr r1, _0809AEC0 @ =0xFFFFFBFF
	ands r0, r1
_0809AE80:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0809AE5E
	ldrb r1, [r6, #0xa]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
	ldr r1, _0809AEC4 @ =gUnknown_080D8F18
	ldrb r0, [r6, #5]
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r4, r6, #0
	adds r4, #0xec
	ldr r1, _0809AEC8 @ =gLoadedSaveGame
	ldr r0, _0809AECC @ =gUnknown_080D946D
	adds r0, r2, r0
	ldrb r1, [r1, #0x10]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0809AED4
	ldr r1, _0809AED0 @ =gUnknown_080D8E80
	lsls r0, r3, #3
	adds r0, #6
	b _0809AEDA
	.align 2, 0
_0809AEC0: .4byte 0xFFFFFBFF
_0809AEC4: .4byte gUnknown_080D8F18
_0809AEC8: .4byte gLoadedSaveGame
_0809AECC: .4byte gUnknown_080D946D
_0809AED0: .4byte gUnknown_080D8E80
_0809AED4:
	ldr r1, _0809AF04 @ =gUnknown_080D8E80
	lsls r0, r3, #3
	adds r0, r2, r0
_0809AEDA:
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r0, [r6, #0x64]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x68]
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
_0809AF04: .4byte gUnknown_080D8E80

	thumb_func_start sub_809AF08
sub_809AF08: @ 0x0809AF08
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r4, r6, r0
_0809AF14:
	ldr r0, [r6, #0x6c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #1
	strb r0, [r4, #0x1f]
	cmp r5, #0
	beq _0809AF32
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0809AF38
_0809AF32:
	ldr r0, [r4, #8]
	ldr r1, _0809AF78 @ =0xFFFFFBFF
	ands r0, r1
_0809AF38:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0809AF14
	ldrb r1, [r6, #0xa]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
	ldr r1, _0809AF7C @ =gUnknown_080D8F18
	ldrb r0, [r6, #6]
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r1, _0809AF80 @ =gLoadedSaveGame
	ldr r0, _0809AF84 @ =gUnknown_080D946D
	adds r0, r2, r0
	ldrb r1, [r1, #0x10]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0809AF8C
	ldr r1, _0809AF88 @ =gUnknown_080D8E80
	lsls r0, r3, #3
	adds r0, #6
	b _0809AF92
	.align 2, 0
_0809AF78: .4byte 0xFFFFFBFF
_0809AF7C: .4byte gUnknown_080D8F18
_0809AF80: .4byte gLoadedSaveGame
_0809AF84: .4byte gUnknown_080D946D
_0809AF88: .4byte gUnknown_080D8E80
_0809AF8C:
	ldr r1, _0809AFBC @ =gUnknown_080D8E80
	lsls r0, r3, #3
	adds r0, r2, r0
_0809AF92:
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r0, [r6, #0x6c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809AFBC: .4byte gUnknown_080D8E80

	thumb_func_start sub_809AFC0
sub_809AFC0: @ 0x0809AFC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldrb r1, [r6, #5]
	ldrb r2, [r6, #6]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0809AFE4
	lsls r0, r1, #3
	adds r0, r0, r2
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, _0809AFE0 @ =gUnknown_080D8F95
	b _0809AFEE
	.align 2, 0
_0809AFE0: .4byte gUnknown_080D8F95
_0809AFE4:
	lsls r0, r1, #3
	adds r0, r0, r2
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, _0809B018 @ =gUnknown_080D8F1D
_0809AFEE:
	adds r7, r1, r0
	movs r5, #0
	movs r0, #0xec
	adds r0, r0, r6
	mov r8, r0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r4, r6, r0
_0809AFFE:
	movs r0, #0x78
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	cmp r5, #0
	beq _0809B01C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0809B022
	.align 2, 0
_0809B018: .4byte gUnknown_080D8F1D
_0809B01C:
	ldr r0, [r4, #8]
	ldr r1, _0809B090 @ =0xFFFFFBFF
	ands r0, r1
_0809B022:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0809AFFE
	mov r4, r8
	ldrb r0, [r7]
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r4, r6, r0
	ldrb r0, [r7, #1]
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r4, r6, r0
	ldrb r0, [r7, #2]
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809B090: .4byte 0xFFFFFBFF

	thumb_func_start sub_809B094
sub_809B094: @ 0x0809B094
	ldr r2, _0809B0C0 @ =gBgScrollRegs
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	strh r1, [r2]
	ldr r1, [r0, #0x48]
	asrs r1, r1, #8
	strh r1, [r2, #2]
	ldr r1, [r0, #0x54]
	asrs r1, r1, #8
	strh r1, [r2, #4]
	ldr r1, [r0, #0x58]
	asrs r1, r1, #8
	rsbs r1, r1, #0
	strh r1, [r2, #6]
	ldr r1, [r0, #0x4c]
	asrs r1, r1, #8
	strh r1, [r2, #8]
	ldr r0, [r0, #0x50]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r2, #0xa]
	bx lr
	.align 2, 0
_0809B0C0: .4byte gBgScrollRegs

	thumb_func_start Task_CharacterSelectInit
Task_CharacterSelectInit: @ 0x0809B0C4
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _0809B100 @ =gCurTask
	ldr r0, [r6]
	ldrh r3, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r3, r5
	ldr r1, _0809B104 @ =0x03000003
	adds r0, r3, r1
	ldr r2, _0809B108 @ =0x0300000B
	adds r1, r3, r2
	ldr r4, _0809B10C @ =0x0300003C
	adds r2, r3, r4
	adds r4, #4
	adds r3, r3, r4
	ldr r4, [r5, #0x1c]
	str r4, [sp]
	bl sub_809BF3C
	str r0, [r5, #0x20]
	ldrb r0, [r5, #7]
	cmp r0, #1
	bne _0809B114
	bl sub_8024068
	ldr r1, [r6]
	ldr r0, _0809B110 @ =Task_80981A8
	b _0809B12C
	.align 2, 0
_0809B100: .4byte gCurTask
_0809B104: .4byte 0x03000003
_0809B108: .4byte 0x0300000B
_0809B10C: .4byte 0x0300003C
_0809B110: .4byte Task_80981A8
_0809B114:
	cmp r0, #2
	bne _0809B128
	bl sub_80258D4
	ldr r1, [r6]
	ldr r0, _0809B124 @ =Task_80981A8
	b _0809B12C
	.align 2, 0
_0809B124: .4byte Task_80981A8
_0809B128:
	ldr r1, [r6]
	ldr r0, _0809B138 @ =Task_80983E8
_0809B12C:
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809B138: .4byte Task_80983E8

	thumb_func_start sub_809B13C
sub_809B13C: @ 0x0809B13C
	ldrh r1, [r0, #0x12]
	adds r1, #0xc0
	strh r1, [r0, #0x12]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_809B148
sub_809B148: @ 0x0809B148
	push {lr}
	adds r1, r0, #0
	movs r2, #0x78
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0809B168
	ldr r0, [r1, #0x3c]
	ldr r3, _0809B164 @ =0xFFFFF200
	adds r0, r0, r3
	str r0, [r1, #0x3c]
	lsls r2, r2, #8
	cmp r0, r2
	bgt _0809B17E
	b _0809B178
	.align 2, 0
_0809B164: .4byte 0xFFFFF200
_0809B168:
	ldr r0, [r1, #0x3c]
	movs r3, #0xe0
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1, #0x3c]
	lsls r2, r2, #8
	cmp r0, r2
	blt _0809B17E
_0809B178:
	str r2, [r1, #0x3c]
	movs r0, #1
	b _0809B180
_0809B17E:
	movs r0, #0
_0809B180:
	pop {r1}
	bx r1

	thumb_func_start sub_809B184
sub_809B184: @ 0x0809B184
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x68]
	movs r3, #0x91
	lsls r3, r3, #8
	cmp r1, r3
	bgt _0809B198
	str r3, [r2, #0x68]
	movs r0, #1
	b _0809B1A8
_0809B198:
	ldr r0, _0809B1AC @ =0xFFFFFA00
	adds r1, r1, r0
	str r1, [r2, #0x68]
	ldr r0, _0809B1B0 @ =0x000090FF
	cmp r1, r0
	bgt _0809B1A6
	str r3, [r2, #0x68]
_0809B1A6:
	movs r0, #0
_0809B1A8:
	pop {r1}
	bx r1
	.align 2, 0
_0809B1AC: .4byte 0xFFFFFA00
_0809B1B0: .4byte 0x000090FF

	thumb_func_start sub_809B1B4
sub_809B1B4: @ 0x0809B1B4
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x70]
	movs r3, #0x91
	lsls r3, r3, #8
	cmp r1, r3
	bgt _0809B1C8
	str r3, [r2, #0x70]
	movs r0, #1
	b _0809B1D8
_0809B1C8:
	ldr r0, _0809B1DC @ =0xFFFFFA00
	adds r1, r1, r0
	str r1, [r2, #0x70]
	ldr r0, _0809B1E0 @ =0x000090FF
	cmp r1, r0
	bgt _0809B1D6
	str r3, [r2, #0x70]
_0809B1D6:
	movs r0, #0
_0809B1D8:
	pop {r1}
	bx r1
	.align 2, 0
_0809B1DC: .4byte 0xFFFFFA00
_0809B1E0: .4byte 0x000090FF

	thumb_func_start sub_809B1E4
sub_809B1E4: @ 0x0809B1E4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _0809B20C
	ldr r0, [r2, #0x3c]
	ldr r1, _0809B204 @ =0xFFFFF200
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	ldr r1, _0809B208 @ =0xFFFFA600
	cmp r0, r1
	bgt _0809B22C
	movs r0, #0x96
	lsls r0, r0, #9
	b _0809B21E
	.align 2, 0
_0809B204: .4byte 0xFFFFF200
_0809B208: .4byte 0xFFFFA600
_0809B20C:
	ldr r0, [r2, #0x3c]
	movs r1, #0xe0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	ldr r1, _0809B224 @ =0x000149FF
	cmp r0, r1
	ble _0809B22C
	ldr r0, _0809B228 @ =0xFFFFC400
_0809B21E:
	str r0, [r2, #0x3c]
	movs r0, #1
	b _0809B22E
	.align 2, 0
_0809B224: .4byte 0x000149FF
_0809B228: .4byte 0xFFFFC400
_0809B22C:
	movs r0, #0
_0809B22E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809B234
sub_809B234: @ 0x0809B234
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x68]
	ldr r0, _0809B248 @ =0x0000B3FF
	cmp r2, r0
	ble _0809B24C
	adds r0, #1
	str r0, [r1, #0x68]
	movs r0, #1
	b _0809B256
	.align 2, 0
_0809B248: .4byte 0x0000B3FF
_0809B24C:
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r2, r3
	str r0, [r1, #0x68]
	movs r0, #0
_0809B256:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809B25C
sub_809B25C: @ 0x0809B25C
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x70]
	ldr r0, _0809B270 @ =0x0000B3FF
	cmp r2, r0
	ble _0809B274
	adds r0, #1
	str r0, [r1, #0x70]
	movs r0, #1
	b _0809B27E
	.align 2, 0
_0809B270: .4byte 0x0000B3FF
_0809B274:
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r2, r3
	str r0, [r1, #0x70]
	movs r0, #0
_0809B27E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809B284
sub_809B284: @ 0x0809B284
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x5c]
	ldr r0, _0809B298 @ =0x000004FF
	cmp r2, r0
	bgt _0809B29C
	adds r0, r2, #0
	adds r0, #0x40
	b _0809B29E
	.align 2, 0
_0809B298: .4byte 0x000004FF
_0809B29C:
	movs r0, #0
_0809B29E:
	str r0, [r1, #0x5c]
	movs r0, #0xb4
	lsls r0, r0, #7
	str r0, [r1, #0x60]
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_809B2AC
sub_809B2AC: @ 0x0809B2AC
	push {lr}
	adds r1, r0, #0
	movs r2, #0x78
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0809B2CC
	ldr r0, [r1, #0x4c]
	ldr r3, _0809B2C8 @ =0xFFFFF200
	adds r0, r0, r3
	str r0, [r1, #0x4c]
	lsls r2, r2, #8
	cmp r0, r2
	bgt _0809B2DE
	b _0809B2DC
	.align 2, 0
_0809B2C8: .4byte 0xFFFFF200
_0809B2CC:
	ldr r0, [r1, #0x4c]
	movs r3, #0xe0
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1, #0x4c]
	lsls r2, r2, #8
	cmp r0, r2
	blt _0809B2DE
_0809B2DC:
	str r2, [r1, #0x4c]
_0809B2DE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809B2E4
sub_809B2E4: @ 0x0809B2E4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _0809B30C
	ldr r0, [r2, #0x4c]
	ldr r1, _0809B304 @ =0xFFFFF200
	adds r0, r0, r1
	str r0, [r2, #0x4c]
	ldr r1, _0809B308 @ =0xFFFFA600
	cmp r0, r1
	bgt _0809B320
	movs r0, #0x96
	lsls r0, r0, #9
	b _0809B31E
	.align 2, 0
_0809B304: .4byte 0xFFFFF200
_0809B308: .4byte 0xFFFFA600
_0809B30C:
	ldr r0, [r2, #0x4c]
	movs r1, #0xe0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2, #0x4c]
	ldr r1, _0809B324 @ =0x000149FF
	cmp r0, r1
	ble _0809B320
	ldr r0, _0809B328 @ =0xFFFFC400
_0809B31E:
	str r0, [r2, #0x4c]
_0809B320:
	pop {r0}
	bx r0
	.align 2, 0
_0809B324: .4byte 0x000149FF
_0809B328: .4byte 0xFFFFC400

	thumb_func_start sub_809B32C
sub_809B32C: @ 0x0809B32C
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r0, #0xa0
	lsls r0, r0, #3
	movs r4, #0xf0
	lsls r4, r4, #2
	adds r3, r0, r4
	movs r5, #0xd0
	lsls r5, r5, #2
	adds r4, r0, r5
	cmp r1, #0
	beq _0809B378
	ldr r1, [r2, #0x3c]
	ldr r0, _0809B358 @ =0x00012BFF
	cmp r1, r0
	ble _0809B35C
	adds r0, #1
	str r0, [r2, #0x3c]
	movs r0, #1
	b _0809B3AC
	.align 2, 0
_0809B358: .4byte 0x00012BFF
_0809B35C:
	adds r0, r1, r3
	str r0, [r2, #0x3c]
	movs r1, #0x96
	lsls r1, r1, #9
	cmp r0, r1
	ble _0809B36A
	str r1, [r2, #0x3c]
_0809B36A:
	ldr r0, [r2, #0x4c]
	adds r0, r0, r4
	str r0, [r2, #0x4c]
	cmp r0, r1
	ble _0809B3AA
	str r1, [r2, #0x4c]
	b _0809B3AA
_0809B378:
	ldr r1, [r2, #0x3c]
	movs r3, #0xb4
	lsls r3, r3, #8
	cmp r1, r3
	bgt _0809B388
	str r3, [r2, #0x3c]
	movs r0, #1
	b _0809B3AC
_0809B388:
	ldr r0, _0809B3B4 @ =0xFFFFF740
	adds r1, r1, r0
	str r1, [r2, #0x3c]
	ldr r0, _0809B3B8 @ =0x0000B3FF
	cmp r1, r0
	bgt _0809B396
	str r3, [r2, #0x3c]
_0809B396:
	ldr r0, [r2, #0x4c]
	ldr r1, _0809B3BC @ =0xFFFFF7C0
	adds r0, r0, r1
	str r0, [r2, #0x4c]
	ldr r1, _0809B3C0 @ =0x00006DFF
	cmp r0, r1
	bgt _0809B3AA
	movs r0, #0xdc
	lsls r0, r0, #7
	str r0, [r2, #0x4c]
_0809B3AA:
	movs r0, #0
_0809B3AC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0809B3B4: .4byte 0xFFFFF740
_0809B3B8: .4byte 0x0000B3FF
_0809B3BC: .4byte 0xFFFFF7C0
_0809B3C0: .4byte 0x00006DFF

	thumb_func_start sub_809B3C4
sub_809B3C4: @ 0x0809B3C4
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r3, #0
	cmp r1, #0
	beq _0809B3F0
	ldr r1, [r2, #0x64]
	ldr r0, _0809B3E4 @ =0x000077FF
	cmp r1, r0
	bgt _0809B3E8
	movs r4, #0xc2
	lsls r4, r4, #3
	adds r0, r1, r4
	str r0, [r2, #0x64]
	b _0809B40C
	.align 2, 0
_0809B3E4: .4byte 0x000077FF
_0809B3E8:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x64]
	b _0809B414
_0809B3F0:
	ldr r0, [r2, #0x64]
	movs r1, #0xf0
	lsls r1, r1, #6
	cmp r0, r1
	ble _0809B408
	ldr r1, _0809B404 @ =0xFFFFF9F0
	adds r0, r0, r1
	str r0, [r2, #0x64]
	b _0809B40C
	.align 2, 0
_0809B404: .4byte 0xFFFFF9F0
_0809B408:
	str r1, [r2, #0x64]
	movs r3, #1
_0809B40C:
	cmp r3, #0
	bne _0809B414
	movs r0, #0
	b _0809B416
_0809B414:
	movs r0, #1
_0809B416:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_809B41C
sub_809B41C: @ 0x0809B41C
	ldr r1, [r0, #0x3c]
	str r1, [r0, #0x6c]
	movs r0, #1
	bx lr

	thumb_func_start sub_809B424
sub_809B424: @ 0x0809B424
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0809B44E
	ldr r1, [r2, #0x34]
	ldr r0, _0809B440 @ =0x000059FF
	cmp r1, r0
	bgt _0809B444
	movs r0, #3
	lsls r0, r0, #8
	adds r0, r1, r0
	b _0809B462
	.align 2, 0
_0809B440: .4byte 0x000059FF
_0809B444:
	movs r0, #0xb4
	lsls r0, r0, #7
	str r0, [r2, #0x34]
	movs r0, #1
	b _0809B466
_0809B44E:
	ldr r0, [r2, #0x34]
	movs r1, #0xf0
	lsls r1, r1, #6
	cmp r0, r1
	bgt _0809B45E
	str r1, [r2, #0x34]
	movs r0, #1
	b _0809B466
_0809B45E:
	ldr r1, _0809B46C @ =0xFFFFFD00
	adds r0, r0, r1
_0809B462:
	str r0, [r2, #0x34]
	movs r0, #0
_0809B466:
	pop {r1}
	bx r1
	.align 2, 0
_0809B46C: .4byte 0xFFFFFD00

	thumb_func_start sub_809B470
sub_809B470: @ 0x0809B470
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0809B496
	ldr r0, [r2, #0x3c]
	movs r1, #0x96
	lsls r1, r1, #8
	cmp r0, r1
	ble _0809B490
	ldr r1, _0809B48C @ =0xFFFFFD00
	adds r0, r0, r1
	b _0809B4B2
	.align 2, 0
_0809B48C: .4byte 0xFFFFFD00
_0809B490:
	str r1, [r2, #0x3c]
	movs r0, #1
	b _0809B4B6
_0809B496:
	ldr r1, [r2, #0x3c]
	ldr r0, _0809B4A8 @ =0x0000B3FF
	cmp r1, r0
	ble _0809B4AC
	adds r0, #1
	str r0, [r2, #0x3c]
	movs r0, #1
	b _0809B4B6
	.align 2, 0
_0809B4A8: .4byte 0x0000B3FF
_0809B4AC:
	movs r0, #3
	lsls r0, r0, #8
	adds r0, r1, r0
_0809B4B2:
	str r0, [r2, #0x3c]
	movs r0, #0
_0809B4B6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809B4BC
sub_809B4BC: @ 0x0809B4BC
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r3, #0
	movs r4, #3
	cmp r1, #0
	bne _0809B4FA
	ldr r1, [r2, #0x64]
	ldr r0, _0809B4DC @ =0x00005EFF
	cmp r1, r0
	bgt _0809B4E0
	lsls r0, r4, #8
	adds r0, r1, r0
	str r0, [r2, #0x64]
	b _0809B4E8
	.align 2, 0
_0809B4DC: .4byte 0x00005EFF
_0809B4E0:
	movs r0, #0xbe
	lsls r0, r0, #7
	str r0, [r2, #0x64]
	movs r3, #1
_0809B4E8:
	ldr r1, [r2, #0x54]
	movs r0, #0xc9
	lsls r0, r0, #8
	cmp r1, r0
	ble _0809B52A
	lsls r0, r4, #8
	subs r0, r1, r0
	str r0, [r2, #0x54]
	b _0809B532
_0809B4FA:
	ldr r0, [r2, #0x64]
	movs r1, #0xf0
	lsls r1, r1, #6
	cmp r0, r1
	ble _0809B510
	ldr r1, _0809B50C @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r2, #0x64]
	b _0809B514
	.align 2, 0
_0809B50C: .4byte 0xFFFFFD00
_0809B510:
	str r1, [r2, #0x64]
	movs r3, #1
_0809B514:
	ldr r1, [r2, #0x54]
	ldr r0, _0809B524 @ =0x000104FF
	cmp r1, r0
	bgt _0809B528
	lsls r0, r4, #8
	adds r0, r1, r0
	str r0, [r2, #0x54]
	b _0809B532
	.align 2, 0
_0809B524: .4byte 0x000104FF
_0809B528:
	ldr r0, _0809B53C @ =0x00010500
_0809B52A:
	str r0, [r2, #0x54]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0809B532:
	cmp r3, #2
	beq _0809B540
	movs r0, #0
	b _0809B542
	.align 2, 0
_0809B53C: .4byte 0x00010500
_0809B540:
	movs r0, #1
_0809B542:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_809B548
sub_809B548: @ 0x0809B548
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r3, #0
	movs r4, #3
	cmp r1, #0
	bne _0809B584
	ldr r0, [r2, #0x6c]
	movs r1, #0x91
	lsls r1, r1, #8
	cmp r0, r1
	ble _0809B56C
	ldr r1, _0809B568 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r2, #0x6c]
	b _0809B570
	.align 2, 0
_0809B568: .4byte 0xFFFFFD00
_0809B56C:
	str r1, [r2, #0x6c]
	movs r3, #1
_0809B570:
	ldr r1, [r2, #0x4c]
	ldr r0, _0809B580 @ =0x0000C8FF
	cmp r1, r0
	ble _0809B5A8
	movs r0, #0xc9
	lsls r0, r0, #8
	b _0809B5B8
	.align 2, 0
_0809B580: .4byte 0x0000C8FF
_0809B584:
	ldr r1, [r2, #0x6c]
	ldr r0, _0809B594 @ =0x0000B3FF
	cmp r1, r0
	bgt _0809B598
	lsls r0, r4, #8
	adds r0, r1, r0
	str r0, [r2, #0x6c]
	b _0809B5A0
	.align 2, 0
_0809B594: .4byte 0x0000B3FF
_0809B598:
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r2, #0x6c]
	movs r3, #1
_0809B5A0:
	ldr r1, [r2, #0x4c]
	ldr r0, _0809B5B0 @ =0x0000B3FF
	cmp r1, r0
	bgt _0809B5B4
_0809B5A8:
	lsls r0, r4, #8
	adds r0, r1, r0
	str r0, [r2, #0x4c]
	b _0809B5C0
	.align 2, 0
_0809B5B0: .4byte 0x0000B3FF
_0809B5B4:
	movs r0, #0xb4
	lsls r0, r0, #8
_0809B5B8:
	str r0, [r2, #0x4c]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0809B5C0:
	cmp r3, #2
	beq _0809B5C8
	movs r0, #0
	b _0809B5CA
_0809B5C8:
	movs r0, #1
_0809B5CA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_809B5D0
sub_809B5D0: @ 0x0809B5D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r2, _0809B624 @ =gUnknown_080D8F18
	ldrb r1, [r5, #5]
	adds r1, r1, r2
	ldrb r3, [r1]
	ldr r4, _0809B628 @ =gDispCnt
	ldrh r1, [r4]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r4]
	ldr r1, _0809B62C @ =0x0600C000
	str r1, [r0, #4]
	ldr r1, _0809B630 @ =0x06001800
	str r1, [r0, #0xc]
	ldr r1, _0809B634 @ =gUnknown_080D8CDC
	adds r3, #0xa
	lsls r3, r3, #1
	adds r3, r3, r1
	ldrh r1, [r3]
	strh r1, [r0, #0x1c]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	movs r0, #3
	strb r0, [r5, #0xb]
	ldrb r0, [r5, #7]
	cmp r0, #1
	bne _0809B61C
	adds r0, r5, #0
	bl sub_809B700
_0809B61C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809B624: .4byte gUnknown_080D8F18
_0809B628: .4byte gDispCnt
_0809B62C: .4byte 0x0600C000
_0809B630: .4byte 0x06001800
_0809B634: .4byte gUnknown_080D8CDC

	thumb_func_start sub_809B638
sub_809B638: @ 0x0809B638
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r0, [r4, #0x3c]
	movs r6, #0xa5
	lsls r6, r6, #9
	cmp r0, r6
	bne _0809B64C
	movs r5, #1
	b _0809B660
_0809B64C:
	adds r0, r4, #0
	bl sub_809B1E4
	cmp r0, #1
	bne _0809B660
	ldrb r0, [r4, #4]
	strb r0, [r4, #3]
	movs r5, #1
	str r6, [r4, #0x3c]
	strb r0, [r4, #5]
_0809B660:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_809B668
sub_809B668: @ 0x0809B668
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r0, [r4, #0x3c]
	ldr r6, _0809B67C @ =0xFFFFA600
	cmp r0, r6
	bne _0809B680
	movs r5, #1
	b _0809B694
	.align 2, 0
_0809B67C: .4byte 0xFFFFA600
_0809B680:
	adds r0, r4, #0
	bl sub_809B1E4
	cmp r0, #1
	bne _0809B694
	ldrb r0, [r4, #4]
	strb r0, [r4, #3]
	movs r5, #1
	str r6, [r4, #0x3c]
	strb r0, [r4, #5]
_0809B694:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_809B69C
sub_809B69C: @ 0x0809B69C
	ldr r2, _0809B6BC @ =gBgScrollRegs
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	strh r1, [r2]
	ldr r1, [r0, #0x48]
	asrs r1, r1, #8
	strh r1, [r2, #2]
	ldr r1, [r0, #0x54]
	asrs r1, r1, #8
	strh r1, [r2, #4]
	ldr r0, [r0, #0x58]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_0809B6BC: .4byte gBgScrollRegs

	thumb_func_start sub_809B6C0
sub_809B6C0: @ 0x0809B6C0
	push {r4, lr}
	sub sp, #0x10
	ldrh r4, [r0, #0x12]
	lsrs r4, r4, #6
	ldrh r1, [r0, #0x18]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0x40
	str r3, [sp]
	ldr r3, [r0, #0x4c]
	lsls r3, r3, #8
	asrs r3, r3, #0x10
	str r3, [sp, #4]
	ldr r0, [r0, #0x50]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _0809B6FC @ =gBgAffineRegs
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809B6FC: .4byte gBgAffineRegs

	thumb_func_start sub_809B700
sub_809B700: @ 0x0809B700
	bx lr
	.align 2, 0

	thumb_func_start sub_809B704
sub_809B704: @ 0x0809B704
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	movs r1, #0
	ldrb r2, [r3, #7]
	cmp r2, #0
	beq _0809B726
	cmp r2, #3
	beq _0809B726
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _0809B72A
	ldrb r3, [r3, #0xb]
	cmp r1, r3
	bne _0809B72A
_0809B726:
	movs r0, #1
	b _0809B72C
_0809B72A:
	movs r0, #0
_0809B72C:
	pop {r1}
	bx r1

	thumb_func_start sub_809B730
sub_809B730: @ 0x0809B730
	push {lr}
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _0809B750
	cmp r0, #3
	beq _0809B750
	ldr r0, _0809B74C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	b _0809B752
	.align 2, 0
_0809B74C: .4byte gMultiSioStatusFlags
_0809B750:
	movs r0, #1
_0809B752:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_CharacterSelect
TaskDestructor_CharacterSelect: @ 0x0809B758
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0809B76C @ =0x030000C4
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0809B76C: .4byte 0x030000C4

@ --- End of Character Select ---
