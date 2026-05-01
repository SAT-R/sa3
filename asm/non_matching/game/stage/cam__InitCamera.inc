
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _0804F864 @ =gCamera
	mov r8, r0
	ldr r1, _0804F868 @ =gStageData
	mov sl, r1
	ldr r1, _0804F86C @ =gDispCnt
	movs r0, #0x40
	strh r0, [r1]
	movs r6, #0
	movs r0, #0xb0
	lsls r0, r0, #5
	mov r2, sl
	strh r0, [r2, #0x10]
	ldrb r0, [r2, #0xa]
	cmp r0, #7
	bne _0804F76E
	b _0804F948
_0804F76E:
	ldr r1, _0804F870 @ =gBgCntRegs
	movs r0, #0xf0
	lsls r0, r0, #5
	strh r0, [r1, #2]
	ldr r0, _0804F874 @ =0x00001F01
	strh r0, [r1, #4]
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _0804F7B4
	ldr r3, _0804F878 @ =gBgSprites_Unknown1
	strb r6, [r3]
	ldr r0, _0804F87C @ =gBgSprites_Unknown2
	strb r6, [r0]
	strb r6, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r6, [r3, #1]
	strb r6, [r0, #4]
	strb r6, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r6, [r3, #2]
	strb r6, [r0, #8]
	strb r6, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	strb r6, [r3, #3]
	strb r6, [r0, #0xc]
	strb r6, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r2, [r0, #0xf]
_0804F7B4:
	ldr r5, _0804F880 @ =gStageBackgroundsRam
	ldr r4, _0804F884 @ =gStageCameraBgTemplates
	adds r1, r4, #0
	adds r1, #0xc0
	adds r0, r5, #0
	movs r2, #0x40
	bl memcpy
	adds r6, r5, #0
	adds r6, #0x40
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x40
	bl memcpy
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r4, #0
	adds r1, #0x40
	movs r2, #0x40
	bl memcpy
	adds r0, r5, #0
	adds r0, #0xc0
	adds r4, #0x80
	adds r1, r4, #0
	movs r2, #0x40
	bl memcpy
	movs r0, #0
	ldr r3, [sp, #8]
	lsls r3, r3, #2
	mov sb, r3
_0804F7F6:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r0, #1
	lsls r1, r4, #6
	adds r1, r1, r5
	mov r3, sb
	adds r2, r0, r3
	strh r2, [r1, #0x1c]
	lsls r0, r0, #6
	adds r0, r0, r6
	bl DrawBackground
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #1
	ble _0804F7F6
	ldr r0, _0804F868 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0804F8F4
	ldr r5, _0804F888 @ =sBackgroundProcs
	ldr r0, [sp, #8]
	lsls r4, r0, #3
	adds r0, r4, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _0804F832
	bl _call_via_r0
_0804F832:
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r4, [r0]
	cmp r4, #0
	beq _0804F894
	ldr r2, _0804F88C @ =0x00001002
	ldr r0, _0804F890 @ =TaskDestructor_80511A4
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	str r0, [r1, #0x50]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	b _0804F898
	.align 2, 0
_0804F864: .4byte gCamera
_0804F868: .4byte gStageData
_0804F86C: .4byte gDispCnt
_0804F870: .4byte gBgCntRegs
_0804F874: .4byte 0x00001F01
_0804F878: .4byte gBgSprites_Unknown1
_0804F87C: .4byte gBgSprites_Unknown2
_0804F880: .4byte gStageBackgroundsRam
_0804F884: .4byte gStageCameraBgTemplates
_0804F888: .4byte sBackgroundProcs
_0804F88C: .4byte 0x00001002
_0804F890: .4byte TaskDestructor_80511A4
_0804F894:
	mov r2, r8
	str r4, [r2, #0x50]
_0804F898:
	ldr r4, _0804F8EC @ =gTilemaps
	mov r2, sb
	adds r2, #2
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0804F8C4
	ldr r0, _0804F8F0 @ =gStageBackgroundsRam
	adds r1, r0, #0
	adds r1, #0xdc
	strh r2, [r1]
	adds r0, #0xc0
	bl DrawBackground
	mov r3, sl
	ldrh r1, [r3, #0x10]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x10]
_0804F8C4:
	mov r1, sb
	adds r1, #3
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0804F8D4
	b _0804FCBE
_0804F8D4:
	ldr r0, _0804F8F0 @ =gStageBackgroundsRam
	strh r1, [r0, #0x1c]
	bl DrawBackground
	mov r3, sl
	ldrh r1, [r3, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x10]
	b _0804FCBE
	.align 2, 0
_0804F8EC: .4byte gTilemaps
_0804F8F0: .4byte gStageBackgroundsRam
_0804F8F4:
	bl sub_80510F8
	ldr r0, _0804F93C @ =gStageBackgroundsRam
	mov r2, sb
	adds r2, #2
	adds r1, r0, #0
	adds r1, #0xdc
	movs r4, #0
	strh r2, [r1]
	adds r0, #0xc0
	bl DrawBackground
	mov r3, sl
	ldrh r1, [r3, #0x10]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x10]
	ldr r0, _0804F940 @ =Task_8051668
	ldr r2, _0804F944 @ =0x00001002
	str r4, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	mov r3, r8
	str r0, [r3, #0x50]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r4, [r1]
	str r4, [r1, #4]
	str r4, [r1, #8]
	b _0804FCBE
	.align 2, 0
_0804F93C: .4byte gStageBackgroundsRam
_0804F940: .4byte Task_8051668
_0804F944: .4byte 0x00001002
_0804F948:
	mov r1, sl
	ldrb r0, [r1, #9]
	cmp r0, #4
	bne _0804F952
	b _0804FA58
_0804F952:
	cmp r0, #6
	bne _0804F958
	b _0804FB6E
_0804F958:
	ldr r0, _0804FA20 @ =0x00001301
	strh r0, [r1, #0x10]
	ldr r1, _0804FA24 @ =gBgCntRegs
	ldr r0, _0804FA28 @ =0x00001D0B
	strh r0, [r1]
	ldr r0, _0804FA2C @ =0x00001F02
	strh r0, [r1, #2]
	ldr r0, _0804FA30 @ =0x00001A85
	strh r0, [r1, #4]
	ldr r3, _0804FA34 @ =gBgSprites_Unknown1
	strb r6, [r3]
	ldr r0, _0804FA38 @ =gBgSprites_Unknown2
	strb r6, [r0]
	strb r6, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r6, [r3, #1]
	strb r6, [r0, #4]
	strb r6, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r6, [r3, #2]
	strb r6, [r0, #8]
	strb r6, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	movs r2, #0
	str r2, [sp, #4]
	ldr r1, _0804FA3C @ =0x040000D4
	add r3, sp, #4
	str r3, [r1]
	ldr r5, _0804FA40 @ =0x06004000
	str r5, [r1, #4]
	ldr r0, _0804FA44 @ =0x85000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r7, _0804FA48 @ =gStageBackgroundsRam
	ldr r4, _0804FA4C @ =gStageCameraBgTemplates
	adds r1, r4, #0
	adds r1, #0x80
	adds r0, r7, #0
	movs r2, #0x40
	bl memcpy
	adds r6, r7, #0
	adds r6, #0x40
	adds r1, r4, #0
	adds r1, #0x40
	adds r0, r6, #0
	movs r2, #0x40
	bl memcpy
	adds r0, r7, #0
	adds r0, #0x80
	adds r1, r4, #0
	movs r2, #0x40
	bl memcpy
	adds r0, r7, #0
	adds r0, #0x84
	str r5, [r0]
	adds r1, r7, #0
	adds r1, #0x8c
	ldr r0, _0804FA50 @ =0x0600D000
	str r0, [r1]
	movs r0, #0x10
	strh r0, [r7, #0x2e]
	subs r1, #0x1e
	movs r0, #0x61
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0x16
	strh r0, [r1]
	ldr r0, [sp, #8]
	lsls r4, r0, #2
	adds r0, r4, #2
	strh r0, [r7, #0x1c]
	adds r0, r7, #0
	bl DrawBackground
	adds r1, r4, #1
	adds r0, r7, #0
	adds r0, #0x5c
	strh r1, [r0]
	adds r0, r6, #0
	bl DrawBackground
	movs r1, #0
	mov r2, r8
	str r1, [r2, #0x50]
	ldr r0, _0804FA54 @ =gBgScrollRegs
	strh r1, [r0]
	movs r3, #0
	strh r3, [r0, #2]
	mov sb, r4
	b _0804FCBE
	.align 2, 0
_0804FA20: .4byte 0x00001301
_0804FA24: .4byte gBgCntRegs
_0804FA28: .4byte 0x00001D0B
_0804FA2C: .4byte 0x00001F02
_0804FA30: .4byte 0x00001A85
_0804FA34: .4byte gBgSprites_Unknown1
_0804FA38: .4byte gBgSprites_Unknown2
_0804FA3C: .4byte 0x040000D4
_0804FA40: .4byte 0x06004000
_0804FA44: .4byte 0x85000010
_0804FA48: .4byte gStageBackgroundsRam
_0804FA4C: .4byte gStageCameraBgTemplates
_0804FA50: .4byte 0x0600D000
_0804FA54: .4byte gBgScrollRegs
_0804FA58:
	movs r0, #0x90
	lsls r0, r0, #5
	mov r1, sl
	strh r0, [r1, #0x10]
	ldr r1, _0804FB3C @ =gBgCntRegs
	ldr r0, _0804FB40 @ =0x00001F02
	strh r0, [r1, #2]
	ldr r3, _0804FB44 @ =gBgSprites_Unknown1
	strb r6, [r3]
	ldr r0, _0804FB48 @ =gBgSprites_Unknown2
	strb r6, [r0]
	strb r6, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r6, [r3, #1]
	strb r6, [r0, #4]
	strb r6, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r6, [r3, #3]
	strb r6, [r0, #0xc]
	strb r6, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r2, [r0, #0xf]
	ldr r7, _0804FB4C @ =gStageBackgroundsRam
	ldr r4, _0804FB50 @ =gStageCameraBgTemplates
	adds r5, r7, #0
	adds r5, #0x40
	adds r1, r4, #0
	adds r1, #0x40
	adds r0, r5, #0
	movs r2, #0x40
	bl memcpy
	adds r4, #0x80
	ldr r0, _0804FB54 @ =gStageBackgroundsRam + (3 * 0x40)
	adds r1, r4, #0
	movs r2, #0x40
	bl memcpy
	adds r1, r7, #0
	adds r1, #0x6e
	movs r0, #0x61
	strh r0, [r1]
	ldr r2, [sp, #8]
	lsls r4, r2, #2
	adds r1, r4, #1
	adds r0, r7, #0
	adds r0, #0x5c
	strh r1, [r0]
	adds r0, r5, #0
	bl DrawBackground
	ldr r3, [sp, #8]
	lsls r5, r3, #3
	ldr r1, _0804FB58 @ =sBackgroundProcs
	adds r0, r5, r1
	ldr r0, [r0]
	mov sb, r4
	cmp r0, #0
	beq _0804FADE
	bl _call_via_r0
_0804FADE:
	ldr r0, _0804FB5C @ =gTilemaps
	mov r2, sb
	adds r2, #2
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0804FB08
	adds r0, r7, #0
	adds r0, #0xdc
	strh r2, [r0]
	ldr r0, _0804FB54 @ =gStageBackgroundsRam + (3 * 0x40)
	bl DrawBackground
	mov r2, sl
	ldrh r0, [r2, #0x10]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0x10]
_0804FB08:
	ldr r0, _0804FB58 @ =sBackgroundProcs
	adds r0, #4
	adds r0, r5, r0
	ldr r4, [r0]
	cmp r4, #0
	beq _0804FB68
	ldr r2, _0804FB60 @ =0x00001002
	ldr r0, _0804FB64 @ =TaskDestructor_80511A4
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	str r0, [r1, #0x50]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	b _0804FCBE
	.align 2, 0
_0804FB3C: .4byte gBgCntRegs
_0804FB40: .4byte 0x00001F02
_0804FB44: .4byte gBgSprites_Unknown1
_0804FB48: .4byte gBgSprites_Unknown2
_0804FB4C: .4byte gStageBackgroundsRam
_0804FB50: .4byte gStageCameraBgTemplates
_0804FB54: .4byte gStageBackgroundsRam + (3 * 0x40)
_0804FB58: .4byte sBackgroundProcs
_0804FB5C: .4byte gTilemaps
_0804FB60: .4byte 0x00001002
_0804FB64: .4byte TaskDestructor_80511A4
_0804FB68:
	mov r3, r8
	str r4, [r3, #0x50]
	b _0804FCBE
_0804FB6E:
	ldr r1, _0804FC54 @ =gBgCntRegs
	movs r0, #0xf0
	lsls r0, r0, #5
	strh r0, [r1, #2]
	ldr r0, _0804FC58 @ =0x00001F01
	strh r0, [r1, #4]
	ldr r3, _0804FC5C @ =gBgSprites_Unknown1
	strb r6, [r3]
	ldr r0, _0804FC60 @ =gBgSprites_Unknown2
	strb r6, [r0]
	strb r6, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x20
	strb r2, [r0, #3]
	strb r6, [r3, #1]
	strb r6, [r0, #4]
	strb r6, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r6, [r3, #2]
	strb r6, [r0, #8]
	strb r6, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	strb r6, [r3, #3]
	strb r6, [r0, #0xc]
	strb r6, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r2, [r0, #0xf]
	ldr r5, _0804FC64 @ =gStageBackgroundsRam
	ldr r4, _0804FC68 @ =gStageCameraBgTemplates
	adds r1, r4, #0
	adds r1, #0xc0
	adds r0, r5, #0
	movs r2, #0x40
	bl memcpy
	adds r6, r5, #0
	adds r6, #0x40
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x40
	bl memcpy
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r4, #0
	adds r1, #0x40
	movs r2, #0x40
	bl memcpy
	adds r0, r5, #0
	adds r0, #0xc0
	adds r4, #0x80
	adds r1, r4, #0
	movs r2, #0x40
	bl memcpy
	movs r0, #0
	ldr r1, [sp, #8]
	lsls r1, r1, #2
	mov sb, r1
	ldr r2, [sp, #8]
	lsls r7, r2, #3
_0804FBF4:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r0, #1
	lsls r1, r4, #6
	adds r1, r1, r5
	mov r3, sb
	adds r2, r0, r3
	strh r2, [r1, #0x1c]
	lsls r0, r0, #6
	adds r0, r0, r6
	bl DrawBackground
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #1
	ble _0804FBF4
	ldr r4, _0804FC6C @ =sBackgroundProcs
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0804FC24
	bl _call_via_r0
_0804FC24:
	adds r0, r4, #4
	adds r0, r7, r0
	ldr r4, [r0]
	cmp r4, #0
	beq _0804FC78
	ldr r2, _0804FC70 @ =0x00001002
	ldr r0, _0804FC74 @ =TaskDestructor_80511A4
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	str r0, [r1, #0x50]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	b _0804FC7C
	.align 2, 0
_0804FC54: .4byte gBgCntRegs
_0804FC58: .4byte 0x00001F01
_0804FC5C: .4byte gBgSprites_Unknown1
_0804FC60: .4byte gBgSprites_Unknown2
_0804FC64: .4byte gStageBackgroundsRam
_0804FC68: .4byte gStageCameraBgTemplates
_0804FC6C: .4byte sBackgroundProcs
_0804FC70: .4byte 0x00001002
_0804FC74: .4byte TaskDestructor_80511A4
_0804FC78:
	mov r2, r8
	str r4, [r2, #0x50]
_0804FC7C:
	ldr r4, _0804FCD4 @ =gTilemaps
	mov r2, sb
	adds r2, #2
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0804FCA8
	ldr r0, _0804FCD8 @ =gStageBackgroundsRam
	adds r1, r0, #0
	adds r1, #0xdc
	strh r2, [r1]
	adds r0, #0xc0
	bl DrawBackground
	mov r3, sl
	ldrh r1, [r3, #0x10]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x10]
_0804FCA8:
	mov r1, sb
	adds r1, #3
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0804FCBE
	ldr r0, _0804FCD8 @ =gStageBackgroundsRam
	strh r1, [r0, #0x1c]
	bl DrawBackground
_0804FCBE:
	ldr r0, _0804FCDC @ =gStageData
	ldrb r1, [r0, #3]
	adds r5, r0, #0
	cmp r1, #7
	beq _0804FCE8
	ldr r0, _0804FCE0 @ =gRefCollision
	ldr r1, _0804FCE4 @ =gCollisionTable
	add r1, sb
	ldr r1, [r1]
	str r1, [r0]
	b _0804FCEE
	.align 2, 0
_0804FCD4: .4byte gTilemaps
_0804FCD8: .4byte gStageBackgroundsRam
_0804FCDC: .4byte gStageData
_0804FCE0: .4byte gRefCollision
_0804FCE4: .4byte gCollisionTable
_0804FCE8:
	ldr r1, _0804FD28 @ =gRefCollision
	ldr r0, _0804FD2C @ =CollHeader_85D8C64_fg
	str r0, [r1]
_0804FCEE:
	ldrh r0, [r5, #0x28]
	subs r0, #0x78
	mov r3, r8
	str r0, [r3]
	cmp r0, #0
	bge _0804FCFE
	movs r0, #0
	str r0, [r3]
_0804FCFE:
	ldrh r0, [r5, #0x2a]
	subs r0, #0x54
	mov r1, r8
	str r0, [r1, #4]
	cmp r0, #0
	bge _0804FD0E
	movs r0, #0
	str r0, [r1, #4]
_0804FD0E:
	ldrb r0, [r5, #3]
	cmp r0, #7
	beq _0804FD34
	ldr r1, _0804FD30 @ =gCameraMaxCoords
	adds r0, r1, #2
	add r0, sb
	ldrh r0, [r0]
	mov r2, r8
	str r0, [r2, #0x14]
	add r1, sb
	ldrh r0, [r1]
	str r0, [r2, #0x1c]
	b _0804FD42
	.align 2, 0
_0804FD28: .4byte gRefCollision
_0804FD2C: .4byte CollHeader_85D8C64_fg
_0804FD30: .4byte gCameraMaxCoords
_0804FD34:
	movs r0, #0xa8
	lsls r0, r0, #3
	mov r3, r8
	str r0, [r3, #0x14]
	movs r0, #0xf0
	lsls r0, r0, #3
	str r0, [r3, #0x1c]
_0804FD42:
	movs r2, #0x80
	lsls r2, r2, #5
	mov r0, r8
	str r2, [r0, #0x20]
	movs r0, #0xc
	mov r1, r8
	str r0, [r1, #0x24]
	ldr r0, [r1]
	str r0, [r1, #0x28]
	ldr r0, [r1, #4]
	str r0, [r1, #0x2c]
	movs r0, #8
	str r0, [r1, #0x38]
	movs r4, #0
	ldr r0, _0804FD88 @ =0x0000FFFC
	ldr r3, _0804FD8C @ =gCamera+0x66
	strh r0, [r3]
	adds r1, r5, #0
	ldrb r0, [r1, #3]
	cmp r0, #7
	beq _0804FE4C
	ldrb r1, [r1, #9]
	adds r3, r1, #0
	cmp r3, #8
	bne _0804FD94
	ldr r0, _0804FD90 @ =Task_80516CC
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	str r0, [r1, #0x48]
	b _0804FDD4
	.align 2, 0
_0804FD88: .4byte 0x0000FFFC
_0804FD8C: .4byte gCamera+0x66
_0804FD90: .4byte Task_80516CC
_0804FD94:
	ldrb r0, [r5, #0xa]
	cmp r0, #7
	bne _0804FDC0
	subs r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804FDC0
	cmp r3, #6
	beq _0804FDC0
	ldr r0, _0804FDBC @ =Task_80516C0
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	mov r2, r8
	str r0, [r2, #0x48]
	b _0804FDD4
	.align 2, 0
_0804FDBC: .4byte Task_80516C0
_0804FDC0:
	ldr r0, _0804FDF4 @ =Task_8051688
	movs r2, #0x80
	lsls r2, r2, #5
	movs r1, #0
	str r1, [sp]
	movs r3, #0
	bl TaskCreate
	mov r3, r8
	str r0, [r3, #0x48]
_0804FDD4:
	ldr r0, _0804FDF8 @ =gStageData
	ldrb r1, [r0, #9]
	cmp r1, #8
	bne _0804FE08
	ldr r0, _0804FDFC @ =Task_80517B8
	ldr r2, _0804FE00 @ =0x00001001
	ldr r1, _0804FE04 @ =TaskDestructor_805116C
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	str r0, [r1, #0x4c]
	b _0804FE6E
	.align 2, 0
_0804FDF4: .4byte Task_8051688
_0804FDF8: .4byte gStageData
_0804FDFC: .4byte Task_80517B8
_0804FE00: .4byte 0x00001001
_0804FE04: .4byte TaskDestructor_805116C
_0804FE08:
	ldrb r0, [r0, #0xa]
	cmp r0, #7
	bne _0804FE28
	cmp r1, #6
	beq _0804FE28
	ldr r0, _0804FE1C @ =Task_8051748
	ldr r2, _0804FE20 @ =0x00001001
	ldr r1, _0804FE24 @ =TaskDestructor_805116C
	str r1, [sp]
	b _0804FE62
	.align 2, 0
_0804FE1C: .4byte Task_8051748
_0804FE20: .4byte 0x00001001
_0804FE24: .4byte TaskDestructor_805116C
_0804FE28:
	ldr r0, _0804FE40 @ =Task_80516D8
	ldr r2, _0804FE44 @ =0x00001001
	ldr r1, _0804FE48 @ =TaskDestructor_805116C
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	mov r3, r8
	str r0, [r3, #0x4c]
	b _0804FE6E
	.align 2, 0
_0804FE40: .4byte Task_80516D8
_0804FE44: .4byte 0x00001001
_0804FE48: .4byte TaskDestructor_805116C
_0804FE4C:
	ldr r0, _0804FE80 @ =Task_8051688
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	str r0, [r1, #0x48]
	ldr r0, _0804FE84 @ =Task_80516D8
	ldr r2, _0804FE88 @ =0x00001001
	str r4, [sp]
_0804FE62:
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	mov r2, r8
	str r0, [r2, #0x4c]
_0804FE6E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804FE80: .4byte Task_8051688
_0804FE84: .4byte Task_80516D8
_0804FE88: .4byte 0x00001001

.syntax divided
