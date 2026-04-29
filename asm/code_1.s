.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ NOTE(Jace): Proc might be Boss-related?
	thumb_func_start sub_804F740
sub_804F740: @ 0x0804F740
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
	ldr r5, _0804F880 @ =gUnknown_03001D80
	ldr r4, _0804F884 @ =gUnknown_080D04A8
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
	ldr r5, _0804F888 @ =gUnknown_080D06CC
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
	ldr r0, _0804F890 @ =sub_80511A4
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
_0804F880: .4byte gUnknown_03001D80
_0804F884: .4byte gUnknown_080D04A8
_0804F888: .4byte gUnknown_080D06CC
_0804F88C: .4byte 0x00001002
_0804F890: .4byte sub_80511A4
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
	ldr r0, _0804F8F0 @ =gUnknown_03001D80
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
	ldr r0, _0804F8F0 @ =gUnknown_03001D80
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
_0804F8F0: .4byte gUnknown_03001D80
_0804F8F4:
	bl sub_80510F8
	ldr r0, _0804F93C @ =gUnknown_03001D80
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
	ldr r0, _0804F940 @ =sub_8051668
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
_0804F93C: .4byte gUnknown_03001D80
_0804F940: .4byte sub_8051668
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
	ldr r7, _0804FA48 @ =gUnknown_03001D80
	ldr r4, _0804FA4C @ =gUnknown_080D04A8
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
_0804FA48: .4byte gUnknown_03001D80
_0804FA4C: .4byte gUnknown_080D04A8
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
	ldr r7, _0804FB4C @ =gUnknown_03001D80
	ldr r4, _0804FB50 @ =gUnknown_080D04A8
	adds r5, r7, #0
	adds r5, #0x40
	adds r1, r4, #0
	adds r1, #0x40
	adds r0, r5, #0
	movs r2, #0x40
	bl memcpy
	adds r4, #0x80
	ldr r0, _0804FB54 @ =gUnknown_03001E40
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
	ldr r1, _0804FB58 @ =gUnknown_080D06CC
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
	ldr r0, _0804FB54 @ =gUnknown_03001E40
	bl DrawBackground
	mov r2, sl
	ldrh r0, [r2, #0x10]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0x10]
_0804FB08:
	ldr r0, _0804FB58 @ =gUnknown_080D06CC
	adds r0, #4
	adds r0, r5, r0
	ldr r4, [r0]
	cmp r4, #0
	beq _0804FB68
	ldr r2, _0804FB60 @ =0x00001002
	ldr r0, _0804FB64 @ =sub_80511A4
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
_0804FB4C: .4byte gUnknown_03001D80
_0804FB50: .4byte gUnknown_080D04A8
_0804FB54: .4byte gUnknown_03001E40
_0804FB58: .4byte gUnknown_080D06CC
_0804FB5C: .4byte gTilemaps
_0804FB60: .4byte 0x00001002
_0804FB64: .4byte sub_80511A4
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
	ldr r5, _0804FC64 @ =gUnknown_03001D80
	ldr r4, _0804FC68 @ =gUnknown_080D04A8
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
	ldr r4, _0804FC6C @ =gUnknown_080D06CC
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
	ldr r0, _0804FC74 @ =sub_80511A4
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
_0804FC64: .4byte gUnknown_03001D80
_0804FC68: .4byte gUnknown_080D04A8
_0804FC6C: .4byte gUnknown_080D06CC
_0804FC70: .4byte 0x00001002
_0804FC74: .4byte sub_80511A4
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
	ldr r0, _0804FCD8 @ =gUnknown_03001D80
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
	ldr r0, _0804FCD8 @ =gUnknown_03001D80
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
_0804FCD8: .4byte gUnknown_03001D80
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
	ldr r1, _0804FD30 @ =gUnknown_080D05A8
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
_0804FD30: .4byte gUnknown_080D05A8
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
	ldr r0, _0804FD90 @ =sub_80516CC
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
_0804FD90: .4byte sub_80516CC
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
	ldr r0, _0804FDBC @ =sub_80516C0
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	mov r2, r8
	str r0, [r2, #0x48]
	b _0804FDD4
	.align 2, 0
_0804FDBC: .4byte sub_80516C0
_0804FDC0:
	ldr r0, _0804FDF4 @ =sub_8051688
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
	ldr r0, _0804FDFC @ =sub_80517B8
	ldr r2, _0804FE00 @ =0x00001001
	ldr r1, _0804FE04 @ =sub_805116C
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	str r0, [r1, #0x4c]
	b _0804FE6E
	.align 2, 0
_0804FDF4: .4byte sub_8051688
_0804FDF8: .4byte gStageData
_0804FDFC: .4byte sub_80517B8
_0804FE00: .4byte 0x00001001
_0804FE04: .4byte sub_805116C
_0804FE08:
	ldrb r0, [r0, #0xa]
	cmp r0, #7
	bne _0804FE28
	cmp r1, #6
	beq _0804FE28
	ldr r0, _0804FE1C @ =sub_8051748
	ldr r2, _0804FE20 @ =0x00001001
	ldr r1, _0804FE24 @ =sub_805116C
	str r1, [sp]
	b _0804FE62
	.align 2, 0
_0804FE1C: .4byte sub_8051748
_0804FE20: .4byte 0x00001001
_0804FE24: .4byte sub_805116C
_0804FE28:
	ldr r0, _0804FE40 @ =sub_80516D8
	ldr r2, _0804FE44 @ =0x00001001
	ldr r1, _0804FE48 @ =sub_805116C
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	mov r3, r8
	str r0, [r3, #0x4c]
	b _0804FE6E
	.align 2, 0
_0804FE40: .4byte sub_80516D8
_0804FE44: .4byte 0x00001001
_0804FE48: .4byte sub_805116C
_0804FE4C:
	ldr r0, _0804FE80 @ =sub_8051688
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	mov r1, r8
	str r0, [r1, #0x48]
	ldr r0, _0804FE84 @ =sub_80516D8
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
_0804FE80: .4byte sub_8051688
_0804FE84: .4byte sub_80516D8
_0804FE88: .4byte 0x00001001

	thumb_func_start sub_804FE8C
sub_804FE8C: @ 0x0804FE8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _0804FF5C @ =gCamera
	mov ip, r0
	ldr r2, _0804FF60 @ =gStageData
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804FF64 @ =gPlayers
	adds r7, r0, r1
	mov r1, ip
	ldr r6, [r1]
	ldr r5, [r1, #4]
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _0804FEF8
	ldr r3, _0804FF68 @ =gUnknown_080D05A8
	ldrh r0, [r2, #0xe]
	lsls r1, r0, #2
	adds r0, r3, #2
	adds r0, r1, r0
	ldrh r2, [r0]
	mov r4, ip
	ldr r0, [r4, #0x14]
	cmp r0, r2
	ble _0804FED2
	str r2, [r4, #0x14]
_0804FED2:
	adds r0, r1, r3
	ldrh r1, [r0]
	mov r3, ip
	ldr r0, [r3, #0x1c]
	cmp r0, r1
	ble _0804FEE0
	str r1, [r3, #0x1c]
_0804FEE0:
	mov r4, ip
	ldr r0, [r4, #0x10]
	cmp r0, r2
	ble _0804FEEC
	movs r0, #0
	str r0, [r4, #0x10]
_0804FEEC:
	mov r2, ip
	ldr r0, [r2, #0x18]
	cmp r0, r1
	ble _0804FEF8
	movs r0, #0
	str r0, [r2, #0x18]
_0804FEF8:
	mov r3, ip
	str r6, [r3, #0x30]
	str r5, [r3, #0x34]
	adds r0, r7, #0
	adds r0, #0x9c
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r3, #8]
	adds r0, r7, #0
	adds r0, #0x9e
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r3, #0xa]
	ldr r0, [r3, #0x18]
	cmp r6, r0
	blt _0804FF28
	mov r4, ip
	ldr r0, [r4, #0x1c]
	subs r0, #0xf1
	adds r1, r6, #0
	cmp r1, r0
	ble _0804FF2A
_0804FF28:
	adds r1, r0, #0
_0804FF2A:
	adds r6, r1, #0
	mov r1, ip
	ldr r0, [r1, #0x10]
	cmp r5, r0
	blt _0804FF40
	mov r2, ip
	ldr r0, [r2, #0x14]
	subs r0, #0xa1
	adds r1, r5, #0
	cmp r1, r0
	ble _0804FF42
_0804FF40:
	adds r1, r0, #0
_0804FF42:
	adds r5, r1, #0
	mov r1, ip
	adds r1, #0x5a
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0804FF6C
	subs r0, r2, #1
	strh r0, [r1]
	mov r4, r8
	lsls r2, r4, #0x10
	b _08050114
	.align 2, 0
_0804FF5C: .4byte gCamera
_0804FF60: .4byte gStageData
_0804FF64: .4byte gPlayers
_0804FF68: .4byte gUnknown_080D05A8
_0804FF6C:
	mov r4, ip
	adds r4, #0x5c
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804FFB2
	ldrh r1, [r7, #0x18]
	ldr r0, [r7, #0x10]
	asrs r0, r0, #8
	mov r2, ip
	movs r3, #8
	ldrsh r2, [r2, r3]
	mov sb, r2
	add r0, sb
	subs r0, #0x78
	mov r2, ip
	str r0, [r2, #0x28]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r3, ip
	adds r3, #0x58
	movs r0, #0
	ldrsh r2, [r3, r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	adds r1, r1, r0
	asrs r1, r1, #4
	strh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x15
	mov r2, ip
	ldr r0, [r2, #0x28]
	adds r0, r0, r1
	str r0, [r2, #0x28]
_0804FFB2:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0805000E
	mov r2, ip
	adds r2, #0x66
	movs r3, #0
	ldrsh r4, [r2, r3]
	adds r0, r7, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r3, r0, #4
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0804FFDE
	rsbs r3, r3, #0
_0804FFDE:
	cmp r4, r3
	beq _0804FFF8
	cmp r4, r3
	bge _0804FFEE
	adds r4, #5
	cmp r4, r3
	ble _0804FFF6
	b _0804FFF4
_0804FFEE:
	subs r4, #5
	cmp r4, r3
	bge _0804FFF6
_0804FFF4:
	adds r4, r3, #0
_0804FFF6:
	strh r4, [r2]
_0804FFF8:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	mov r2, ip
	movs r3, #0xa
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x40]
	subs r1, #0x50
	adds r0, r0, r1
	adds r0, r0, r4
	str r0, [r2, #0x2c]
_0805000E:
	mov r4, ip
	ldr r0, [r4, #0x28]
	subs r1, r0, r6
	ldr r0, [r4, #0x38]
	cmp r1, r0
	ble _0805002C
	subs r2, r1, r0
	ldr r0, [r4, #0x20]
	asrs r1, r0, #8
	adds r3, r0, #0
	cmp r1, r2
	ble _08050028
	adds r1, r2, #0
_08050028:
	adds r6, r6, r1
	b _08050042
_0805002C:
	mov r2, ip
	ldr r3, [r2, #0x20]
	cmn r1, r0
	bge _08050042
	adds r1, r1, r0
	asrs r0, r3, #8
	rsbs r0, r0, #0
	cmp r0, r1
	bge _08050040
	adds r0, r1, #0
_08050040:
	adds r6, r6, r0
_08050042:
	mov r4, ip
	ldr r0, [r4, #0x18]
	cmp r6, r0
	blt _08050056
	mov r1, ip
	ldr r0, [r1, #0x1c]
	subs r0, #0xf0
	adds r1, r6, #0
	cmp r1, r0
	ble _08050058
_08050056:
	adds r1, r0, #0
_08050058:
	adds r6, r1, #0
	ldr r0, _080500A0 @ =0x00000FFF
	cmp r3, r0
	bgt _08050068
	adds r0, r3, #0
	adds r0, #0x20
	mov r2, ip
	str r0, [r2, #0x20]
_08050068:
	ldr r0, [r7, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080500A4
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	bne _0805008A
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #9
	beq _080500A4
_0805008A:
	mov r3, ip
	ldr r0, [r3, #0x3c]
	adds r0, #4
	str r0, [r3, #0x3c]
	cmp r0, #0x18
	ble _08050098
	movs r0, #0x18
_08050098:
	mov r4, ip
	str r0, [r4, #0x3c]
	b _080500B6
	.align 2, 0
_080500A0: .4byte 0x00000FFF
_080500A4:
	mov r1, ip
	ldr r0, [r1, #0x3c]
	subs r0, #4
	str r0, [r1, #0x3c]
	cmp r0, #0
	bge _080500B2
	movs r0, #0
_080500B2:
	mov r2, ip
	str r0, [r2, #0x3c]
_080500B6:
	mov r3, ip
	ldr r0, [r3, #0x2c]
	subs r1, r0, r5
	ldr r0, [r3, #0x3c]
	cmp r1, r0
	ble _080500D0
	subs r0, r1, r0
	ldr r1, [r3, #0x24]
	cmp r1, r0
	ble _080500CC
	adds r1, r0, #0
_080500CC:
	adds r5, r5, r1
	b _080500E4
_080500D0:
	cmn r1, r0
	bge _080500E4
	adds r1, r1, r0
	mov r4, ip
	ldr r0, [r4, #0x24]
	rsbs r0, r0, #0
	cmp r0, r1
	bge _080500E2
	adds r0, r1, #0
_080500E2:
	adds r5, r5, r0
_080500E4:
	mov r1, r8
	lsls r0, r1, #0x10
	adds r2, r0, #0
	cmp r2, #0
	bne _080500FC
	mov r3, ip
	ldr r0, [r3, #0x10]
	cmp r5, r0
	blt _08050110
	mov r4, ip
	ldr r0, [r4, #0x14]
	b _08050108
_080500FC:
	mov r1, ip
	ldr r0, [r1, #0x10]
	cmp r5, r0
	blt _08050110
	mov r3, ip
	ldr r0, [r3, #0x14]
_08050108:
	subs r0, #0xa0
	adds r1, r5, #0
	cmp r1, r0
	ble _08050112
_08050110:
	adds r1, r0, #0
_08050112:
	adds r5, r1, #0
_08050114:
	mov r4, ip
	ldr r0, [r4, #0x18]
	cmp r6, r0
	blt _08050128
	mov r1, ip
	ldr r0, [r1, #0x1c]
	subs r0, #0xf0
	adds r1, r6, #0
	cmp r1, r0
	ble _0805012A
_08050128:
	adds r1, r0, #0
_0805012A:
	adds r6, r1, #0
	mov r3, ip
	ldr r0, [r3, #0x10]
	cmp r5, r0
	blt _08050140
	mov r4, ip
	ldr r0, [r4, #0x14]
	subs r0, #0xa0
	adds r1, r5, #0
	cmp r1, r0
	ble _08050142
_08050140:
	adds r1, r0, #0
_08050142:
	mov r3, ip
	movs r4, #0xc
	ldrsh r0, [r3, r4]
	adds r6, r6, r0
	movs r4, #0xe
	ldrsh r0, [r3, r4]
	adds r5, r1, r0
	mov r0, ip
	adds r0, #0x62
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r6, r6, r0
	mov r0, ip
	adds r0, #0x64
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r5, r5, r0
	mov r4, ip
	str r6, [r4]
	str r5, [r4, #4]
	cmp r2, #0
	bne _0805017A
	ldr r0, [r4, #0x30]
	subs r0, r0, r6
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	subs r0, r0, r5
	str r0, [r4, #0x34]
_0805017A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8050188
sub_8050188: @ 0x08050188
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _08050204 @ =gCamera
	ldr r2, _08050208 @ =gStageData
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0805020C @ =gPlayers
	adds r7, r0, r1
	ldr r5, [r4]
	ldr r6, [r4, #4]
	str r5, [r4, #0x30]
	str r6, [r4, #0x34]
	adds r0, r7, #0
	adds r0, #0x9c
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r4, #8]
	adds r0, r7, #0
	adds r0, #0x9e
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	strh r0, [r4, #0xa]
	ldr r0, [r4, #0x18]
	mov sb, r2
	cmp r5, r0
	blt _080501D6
	ldr r0, [r4, #0x1c]
	subs r0, #0xf1
	adds r1, r5, #0
	cmp r1, r0
	ble _080501D8
_080501D6:
	adds r1, r0, #0
_080501D8:
	adds r5, r1, #0
	ldr r0, [r4, #0x10]
	cmp r6, r0
	blt _080501EA
	ldr r0, [r4, #0x14]
	subs r0, #0xa1
	adds r1, r6, #0
	cmp r1, r0
	ble _080501EC
_080501EA:
	adds r1, r0, #0
_080501EC:
	adds r6, r1, #0
	adds r1, r4, #0
	adds r1, #0x5a
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08050210
	subs r0, r2, #1
	strh r0, [r1]
	b _08050384
	.align 2, 0
_08050204: .4byte gCamera
_08050208: .4byte gStageData
_0805020C: .4byte gPlayers
_08050210:
	adds r2, r4, #0
	adds r2, #0x5c
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	bne _08050264
	mov r1, sb
	ldr r0, [r1, #0x1c]
	lsls r0, r0, #2
	movs r1, #0xa5
	lsls r1, r1, #4
	bl __umodsi3
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x28]
	mov r2, sb
	ldrb r1, [r2, #6]
	lsls r1, r1, #2
	adds r1, #4
	adds r2, r4, #0
	adds r2, #0x6a
	cmp r0, r1
	bge _08050260
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _08050260
	ldr r0, _0805025C @ =0x0000F5B0
	strh r0, [r2]
	ldr r0, [r4, #0x28]
	str r0, [r4]
	movs r5, #0
	b _08050264
	.align 2, 0
_0805025C: .4byte 0x0000F5B0
_08050260:
	movs r0, #0
	strh r0, [r2]
_08050264:
	mov r0, r8
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080502B2
	adds r1, r4, #0
	adds r1, #0x66
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r7, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #4
	cmp r2, r0
	beq _0805029E
	cmp r2, r0
	bge _08050294
	adds r2, #5
	cmp r2, r0
	ble _0805029C
	b _0805029A
_08050294:
	subs r2, #5
	cmp r2, r0
	bge _0805029C
_0805029A:
	adds r2, r0, #0
_0805029C:
	strh r2, [r1]
_0805029E:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	movs r3, #0xa
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	ldr r1, [r4, #0x40]
	subs r1, #0x50
	adds r0, r0, r1
	adds r0, r0, r2
	str r0, [r4, #0x2c]
_080502B2:
	ldr r1, [r4, #0x28]
	ldr r0, [r4]
	subs r0, r1, r0
	ldr r1, [r4, #0x38]
	cmp r0, r1
	ble _080502D0
	subs r1, r0, r1
	ldr r0, [r4, #0x20]
	asrs r2, r0, #8
	adds r3, r0, #0
	cmp r2, r1
	ble _080502CC
	adds r2, r1, #0
_080502CC:
	adds r5, r5, r2
	b _080502E4
_080502D0:
	ldr r3, [r4, #0x20]
	cmn r0, r1
	bge _080502E4
	adds r1, r0, r1
	asrs r0, r3, #8
	rsbs r0, r0, #0
	cmp r0, r1
	bge _080502E2
	adds r0, r1, #0
_080502E2:
	adds r5, r5, r0
_080502E4:
	ldr r0, [r4, #0x18]
	cmp r5, r0
	blt _080502F4
	ldr r0, [r4, #0x1c]
	subs r0, #0xf0
	adds r1, r5, #0
	cmp r1, r0
	ble _080502F6
_080502F4:
	adds r1, r0, #0
_080502F6:
	adds r5, r1, #0
	ldr r0, _08050334 @ =0x00000FFF
	cmp r3, r0
	bgt _08050304
	adds r0, r3, #0
	adds r0, #0x20
	str r0, [r4, #0x20]
_08050304:
	ldr r0, [r7, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08050338
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	bne _08050326
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #9
	beq _08050338
_08050326:
	ldr r0, [r4, #0x3c]
	adds r0, #4
	str r0, [r4, #0x3c]
	cmp r0, #0x18
	ble _08050344
	movs r0, #0x18
	b _08050344
	.align 2, 0
_08050334: .4byte 0x00000FFF
_08050338:
	ldr r0, [r4, #0x3c]
	subs r0, #4
	str r0, [r4, #0x3c]
	cmp r0, #0
	bge _08050344
	movs r0, #0
_08050344:
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x2c]
	subs r1, r0, r6
	ldr r0, [r4, #0x3c]
	cmp r1, r0
	ble _0805035E
	subs r0, r1, r0
	ldr r1, [r4, #0x24]
	cmp r1, r0
	ble _0805035A
	adds r1, r0, #0
_0805035A:
	adds r6, r6, r1
	b _08050370
_0805035E:
	cmn r1, r0
	bge _08050370
	adds r1, r1, r0
	ldr r0, [r4, #0x24]
	rsbs r0, r0, #0
	cmp r0, r1
	bge _0805036E
	adds r0, r1, #0
_0805036E:
	adds r6, r6, r0
_08050370:
	ldr r0, [r4, #0x10]
	cmp r6, r0
	blt _08050380
	ldr r0, [r4, #0x14]
	subs r0, #0xa0
	adds r1, r6, #0
	cmp r1, r0
	ble _08050382
_08050380:
	adds r1, r0, #0
_08050382:
	adds r6, r1, #0
_08050384:
	ldr r0, [r4, #0x18]
	cmp r5, r0
	blt _08050394
	ldr r0, [r4, #0x1c]
	subs r0, #0xf0
	adds r1, r5, #0
	cmp r1, r0
	ble _08050396
_08050394:
	adds r1, r0, #0
_08050396:
	adds r5, r1, #0
	ldr r0, [r4, #0x10]
	cmp r6, r0
	blt _080503A8
	ldr r0, [r4, #0x14]
	subs r0, #0xa0
	adds r1, r6, #0
	cmp r1, r0
	ble _080503AA
_080503A8:
	adds r1, r0, #0
_080503AA:
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	adds r5, r5, r0
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	adds r6, r1, r0
	adds r0, r4, #0
	adds r0, #0x62
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r5, r5, r0
	adds r0, r4, #0
	adds r0, #0x64
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r6, r6, r0
	str r5, [r4]
	str r6, [r4, #4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80503DC
sub_80503DC: @ 0x080503DC
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	mov sb, r0
	mov sl, r1
	ldr r4, _08050438 @ =gUnknown_03001DC0
	ldr r0, _0805043C @ =gBgScrollRegs
	mov r8, r0
	movs r0, #7
	mov r6, sb
	ands r6, r0
	mov r1, r8
	strh r6, [r1, #4]
	mov r5, sl
	ands r5, r0
	strh r5, [r1, #6]
	mov r0, sb
	strh r0, [r4, #0x30]
	mov r1, sl
	strh r1, [r4, #0x32]
	adds r0, r4, #0
	bl DrawBackground
	adds r0, r4, #0
	bl UpdateBgAnimationTiles
	adds r4, #0x40
	mov r0, r8
	strh r6, [r0, #8]
	strh r5, [r0, #0xa]
	mov r1, sb
	strh r1, [r4, #0x30]
	mov r0, sl
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl DrawBackground
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050438: .4byte gUnknown_03001DC0
_0805043C: .4byte gBgScrollRegs

	thumb_func_start sub_8050440
sub_8050440: @ 0x08050440
	push {r4, lr}
	ldr r1, _08050494 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, _08050498 @ =gUnknown_03001D80
	adds r2, r0, #0
	adds r2, #0xc4
	ldr r1, _0805049C @ =0x0600C000
	str r1, [r2]
	adds r2, #8
	ldr r1, _080504A0 @ =0x0600E800
	str r1, [r2]
	ldr r2, _080504A4 @ =gBgCntRegs
	ldr r1, _080504A8 @ =0x00001D0E
	strh r1, [r2, #6]
	ldr r1, _080504AC @ =0x06008000
	str r1, [r0, #4]
	ldr r1, _080504B0 @ =0x0600E000
	str r1, [r0, #0xc]
	ldr r4, _080504B4 @ =gStageData
	ldr r3, _080504B8 @ =0x000001B9
	adds r1, r3, #0
	ldrb r3, [r4]
	adds r1, r1, r3
	strh r1, [r0, #0x1c]
	ldr r1, _080504BC @ =0x00001C08
	strh r1, [r2]
	bl DrawBackground
	ldrh r1, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050494: .4byte gBgScrollRegs
_08050498: .4byte gUnknown_03001D80
_0805049C: .4byte 0x0600C000
_080504A0: .4byte 0x0600E800
_080504A4: .4byte gBgCntRegs
_080504A8: .4byte 0x00001D0E
_080504AC: .4byte 0x06008000
_080504B0: .4byte 0x0600E000
_080504B4: .4byte gStageData
_080504B8: .4byte 0x000001B9
_080504BC: .4byte 0x00001C08

	thumb_func_start sub_80504C0
sub_80504C0: @ 0x080504C0
	ldr r3, _080504F8 @ =gUnknown_03001D80
	ldr r0, _080504FC @ =0x06008000
	str r0, [r3, #4]
	ldr r0, _08050500 @ =0x0600A000
	str r0, [r3, #0xc]
	movs r0, #0x1e
	strh r0, [r3, #0x26]
	movs r0, #0x14
	strh r0, [r3, #0x28]
	ldr r2, _08050504 @ =gBgCntRegs
	ldr r0, _08050508 @ =0x00001408
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xc4
	ldr r0, _0805050C @ =0x0600C000
	str r0, [r1]
	adds r1, #8
	ldr r0, _08050510 @ =0x06009000
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #0xe6
	movs r1, #0x20
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _08050514 @ =0x0000D20F
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_080504F8: .4byte gUnknown_03001D80
_080504FC: .4byte 0x06008000
_08050500: .4byte 0x0600A000
_08050504: .4byte gBgCntRegs
_08050508: .4byte 0x00001408
_0805050C: .4byte 0x0600C000
_08050510: .4byte 0x06009000
_08050514: .4byte 0x0000D20F

	thumb_func_start sub_8050518
sub_8050518: @ 0x08050518
	ldr r3, _08050550 @ =gUnknown_03001D80
	ldr r0, _08050554 @ =0x06008000
	str r0, [r3, #4]
	ldr r0, _08050558 @ =0x0600A000
	str r0, [r3, #0xc]
	movs r0, #0x1e
	strh r0, [r3, #0x26]
	movs r0, #8
	strh r0, [r3, #0x28]
	ldr r2, _0805055C @ =gBgCntRegs
	ldr r0, _08050560 @ =0x00001408
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xc4
	ldr r0, _08050564 @ =0x0600C000
	str r0, [r1]
	adds r1, #8
	ldr r0, _08050568 @ =0x06009000
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #0xe6
	movs r1, #0x20
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _0805056C @ =0x0000D20E
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_08050550: .4byte gUnknown_03001D80
_08050554: .4byte 0x06008000
_08050558: .4byte 0x0600A000
_0805055C: .4byte gBgCntRegs
_08050560: .4byte 0x00001408
_08050564: .4byte 0x0600C000
_08050568: .4byte 0x06009000
_0805056C: .4byte 0x0000D20E

	thumb_func_start sub_8050570
sub_8050570: @ 0x08050570
	push {r4, lr}
	sub sp, #0xc
	ldr r1, _080505B8 @ =gUnknown_080D0914
	mov r0, sp
	movs r2, #0xc
	bl memcpy
	ldr r1, _080505BC @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r4, _080505C0 @ =gUnknown_03001D80
	ldr r1, _080505C4 @ =gUnknown_080D04A8
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	ldr r0, _080505C8 @ =gStageData
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r4, #0x1c]
	bl sub_80504C0
	adds r0, r4, #0
	bl DrawBackground
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080505B8: .4byte gUnknown_080D0914
_080505BC: .4byte gBgScrollRegs
_080505C0: .4byte gUnknown_03001D80
_080505C4: .4byte gUnknown_080D04A8
_080505C8: .4byte gStageData

	thumb_func_start sub_80505CC
sub_80505CC: @ 0x080505CC
	push {r4, lr}
	sub sp, #0xc
	ldr r1, _08050614 @ =gUnknown_080D0920
	mov r0, sp
	movs r2, #0xc
	bl memcpy
	ldr r1, _08050618 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r4, _0805061C @ =gUnknown_03001D80
	ldr r1, _08050620 @ =gUnknown_080D04A8
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	ldr r0, _08050624 @ =gStageData
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r4, #0x1c]
	bl sub_8050518
	adds r0, r4, #0
	bl DrawBackground
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050614: .4byte gUnknown_080D0920
_08050618: .4byte gBgScrollRegs
_0805061C: .4byte gUnknown_03001D80
_08050620: .4byte gUnknown_080D04A8
_08050624: .4byte gStageData

	thumb_func_start sub_8050628
sub_8050628: @ 0x08050628
	ldr r1, _08050668 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r3, _0805066C @ =gUnknown_03001D80
	ldr r0, _08050670 @ =0x06008000
	str r0, [r3, #4]
	ldr r0, _08050674 @ =0x0600E000
	str r0, [r3, #0xc]
	ldr r2, _08050678 @ =gBgCntRegs
	ldr r0, _0805067C @ =0x00001C0A
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xc4
	ldr r0, _08050680 @ =0x0600C000
	str r0, [r1]
	adds r1, #8
	ldr r0, _08050684 @ =0x0600E800
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #0xe6
	movs r1, #0x20
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0xee
	movs r0, #3
	strh r0, [r1]
	ldr r0, _08050688 @ =0x00001D0E
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_08050668: .4byte gBgScrollRegs
_0805066C: .4byte gUnknown_03001D80
_08050670: .4byte 0x06008000
_08050674: .4byte 0x0600E000
_08050678: .4byte gBgCntRegs
_0805067C: .4byte 0x00001C0A
_08050680: .4byte 0x0600C000
_08050684: .4byte 0x0600E800
_08050688: .4byte 0x00001D0E

	thumb_func_start sub_805068C
sub_805068C: @ 0x0805068C
	ldr r1, _080506C4 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r2, _080506C8 @ =gUnknown_03001D80
	adds r1, r2, #0
	adds r1, #0xc4
	ldr r0, _080506CC @ =0x0600C000
	str r0, [r1]
	adds r1, #8
	ldr r0, _080506D0 @ =0x0600E800
	str r0, [r1]
	ldr r1, _080506D4 @ =gBgCntRegs
	ldr r0, _080506D8 @ =0x00001D0E
	strh r0, [r1, #6]
	ldr r0, _080506DC @ =0x06008000
	str r0, [r2, #4]
	ldr r0, _080506E0 @ =0x0600A000
	str r0, [r2, #0xc]
	movs r0, #0x40
	strh r0, [r2, #0x26]
	strh r0, [r2, #0x28]
	ldr r0, _080506E4 @ =0x0000940A
	strh r0, [r1]
	bx lr
	.align 2, 0
_080506C4: .4byte gBgScrollRegs
_080506C8: .4byte gUnknown_03001D80
_080506CC: .4byte 0x0600C000
_080506D0: .4byte 0x0600E800
_080506D4: .4byte gBgCntRegs
_080506D8: .4byte 0x00001D0E
_080506DC: .4byte 0x06008000
_080506E0: .4byte 0x0600A000
_080506E4: .4byte 0x0000940A

	thumb_func_start sub_80506E8
sub_80506E8: @ 0x080506E8
	push {r4, lr}
	ldr r3, _08050710 @ =gBgScrollRegs
	ldr r4, _08050714 @ =gCamera
	ldr r2, [r4]
	asrs r0, r2, #6
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	ldr r1, [r4, #4]
	asrs r0, r1, #9
	strh r0, [r3, #0xe]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x17
	strh r2, [r3]
	adds r2, r3, #0
	cmp r1, #0
	blt _08050718
	lsrs r0, r1, #3
	b _0805071A
	.align 2, 0
_08050710: .4byte gBgScrollRegs
_08050714: .4byte gCamera
_08050718:
	movs r0, #0
_0805071A:
	strh r0, [r2, #2]
	adds r1, r3, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #3
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0805072E
	movs r0, #0
	strh r0, [r1, #2]
_0805072E:
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r1, #0xb0
	lsls r1, r1, #1
	cmp r0, r1
	ble _0805073C
	strh r1, [r3, #2]
_0805073C:
	bl sub_8050748
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8050748
sub_8050748: @ 0x08050748
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r0, _080507B4 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #0x7f
	ands r0, r1
	lsrs r4, r0, #3
	ldr r1, _080507B8 @ =gUnknown_080D092C
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	ldr r2, _080507BC @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080507C0 @ =gHBlankCopyTarget
	ldr r0, _080507C4 @ =0x0400001C
	str r0, [r1]
	ldr r1, _080507C8 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080507CC @ =gBgOffsetsHBlankPrimary
	ldr r5, [r0]
	ldr r0, _080507D0 @ =gBgScrollRegs
	movs r2, #0
	movs r3, #0xe
	ldrsh r1, [r0, r3]
	mov ip, r1
	ldr r0, _080507D4 @ =gCamera
	ldr r7, [r0]
	movs r6, #0xf
_0805078A:
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	add r0, ip
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	asrs r0, r0, #0x13
	add r0, sp
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #7
	subs r0, r0, r1
	adds r1, r7, #0
	asrs r1, r0
	movs r0, #0xff
	ands r1, r0
	strh r1, [r5]
	cmp r3, #0x90
	ble _080507D8
	movs r0, #1
	b _080507DE
	.align 2, 0
_080507B4: .4byte gStageData
_080507B8: .4byte gUnknown_080D092C
_080507BC: .4byte gFlags
_080507C0: .4byte gHBlankCopyTarget
_080507C4: .4byte 0x0400001C
_080507C8: .4byte gHBlankCopySize
_080507CC: .4byte gBgOffsetsHBlankPrimary
_080507D0: .4byte gBgScrollRegs
_080507D4: .4byte gCamera
_080507D8:
	cmp r3, #0x80
	ble _080507EC
	movs r0, #2
_080507DE:
	ands r0, r4
	cmp r0, #0
	bne _080507E8
	adds r0, r1, #1
	strh r0, [r5]
_080507E8:
	adds r4, #1
	ands r4, r6
_080507EC:
	adds r5, #2
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0805078A
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8050804
sub_8050804: @ 0x08050804
	push {r4, lr}
	ldr r0, _08050844 @ =gUnknown_03001D80
	mov ip, r0
	ldr r0, _08050848 @ =0x0600C000
	mov r1, ip
	str r0, [r1, #4]
	ldr r0, _0805084C @ =0x0600D000
	str r0, [r1, #0xc]
	movs r2, #0x1e
	strh r2, [r1, #0x26]
	movs r3, #0x14
	strh r3, [r1, #0x28]
	ldr r4, _08050850 @ =gBgCntRegs
	ldr r0, _08050854 @ =0x00001A0E
	strh r0, [r4]
	adds r1, #0xc4
	ldr r0, _08050858 @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _0805085C @ =0x0600E000
	str r0, [r1]
	mov r0, ip
	adds r0, #0xe6
	strh r2, [r0]
	adds r0, #2
	strh r3, [r0]
	ldr r0, _08050860 @ =0x00001C0A
	strh r0, [r4, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050844: .4byte gUnknown_03001D80
_08050848: .4byte 0x0600C000
_0805084C: .4byte 0x0600D000
_08050850: .4byte gBgCntRegs
_08050854: .4byte 0x00001A0E
_08050858: .4byte 0x06008000
_0805085C: .4byte 0x0600E000
_08050860: .4byte 0x00001C0A

	thumb_func_start sub_8050864
sub_8050864: @ 0x08050864
	push {r4, lr}
	ldr r1, _080508B0 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, _080508B4 @ =gUnknown_03001D80
	mov ip, r0
	mov r1, ip
	adds r1, #0xc4
	ldr r0, _080508B8 @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _080508BC @ =0x0600B000
	str r0, [r1]
	mov r0, ip
	adds r0, #0xe6
	movs r3, #0x20
	strh r3, [r0]
	adds r0, #2
	movs r1, #0x40
	strh r1, [r0]
	ldr r2, _080508C0 @ =gBgCntRegs
	ldr r0, _080508C4 @ =0x0000960A
	strh r0, [r2, #6]
	ldr r0, _080508C8 @ =0x0600C000
	mov r4, ip
	str r0, [r4, #4]
	ldr r0, _080508CC @ =0x0600E000
	str r0, [r4, #0xc]
	strh r3, [r4, #0x26]
	strh r1, [r4, #0x28]
	ldr r0, _080508D0 @ =0x00009C0E
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080508B0: .4byte gBgScrollRegs
_080508B4: .4byte gUnknown_03001D80
_080508B8: .4byte 0x06008000
_080508BC: .4byte 0x0600B000
_080508C0: .4byte gBgCntRegs
_080508C4: .4byte 0x0000960A
_080508C8: .4byte 0x0600C000
_080508CC: .4byte 0x0600E000
_080508D0: .4byte 0x00009C0E

	thumb_func_start sub_80508D4
sub_80508D4: @ 0x080508D4
	push {r4, r5, r6, lr}
	ldr r3, _08050910 @ =gBgScrollRegs
	ldr r1, _08050914 @ =gCamera
	ldr r2, [r1]
	asrs r0, r2, #3
	movs r5, #0xff
	ands r0, r5
	strh r0, [r3, #0xc]
	ldr r1, [r1, #4]
	asrs r0, r1, #3
	ldr r6, _08050918 @ =0x000001FF
	adds r4, r6, #0
	ands r0, r4
	strh r0, [r3, #0xe]
	asrs r2, r2, #2
	ands r2, r5
	strh r2, [r3]
	asrs r1, r1, #2
	ands r1, r4
	strh r1, [r3, #2]
	ldr r0, _0805091C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bhi _08050908
	bl sub_8050920
_08050908:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050910: .4byte gBgScrollRegs
_08050914: .4byte gCamera
_08050918: .4byte 0x000001FF
_0805091C: .4byte gStageData

	thumb_func_start sub_8050920
sub_8050920: @ 0x08050920
	push {r4, r5, r6, lr}
	ldr r0, _08050990 @ =gStageData
	ldrb r0, [r0, #0x1c]
	ldr r1, _08050994 @ =gBgScrollRegs
	lsrs r0, r0, #3
	ldrh r1, [r1, #0xe]
	adds r3, r0, r1
	movs r0, #0xf
	ands r3, r0
	ldr r2, _08050998 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0805099C @ =gHBlankCopyTarget
	ldr r0, _080509A0 @ =0x0400001C
	str r0, [r1]
	ldr r1, _080509A4 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080509A8 @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
	movs r5, #0
	ldr r0, _080509AC @ =gCamera
	ldr r0, [r0]
	asrs r4, r0, #3
	movs r0, #0xff
	ands r4, r0
	ldr r6, _080509B0 @ =gSineTable
_0805095A:
	strh r4, [r2]
	lsls r0, r3, #7
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1d
	adds r0, r4, r0
	strh r0, [r2]
	adds r1, r3, #1
	lsls r1, r1, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	lsrs r3, r0, #0x10
	adds r2, #2
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0805095A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050990: .4byte gStageData
_08050994: .4byte gBgScrollRegs
_08050998: .4byte gFlags
_0805099C: .4byte gHBlankCopyTarget
_080509A0: .4byte 0x0400001C
_080509A4: .4byte gHBlankCopySize
_080509A8: .4byte gBgOffsetsHBlankPrimary
_080509AC: .4byte gCamera
_080509B0: .4byte gSineTable

	thumb_func_start sub_80509B4
sub_80509B4: @ 0x080509B4
	ldr r0, _080509EC @ =gUnknown_03001D80
	mov ip, r0
	ldr r0, _080509F0 @ =0x0600C000
	mov r1, ip
	str r0, [r1, #4]
	ldr r0, _080509F4 @ =0x0600E000
	str r0, [r1, #0xc]
	movs r2, #0x20
	strh r2, [r1, #0x26]
	strh r2, [r1, #0x28]
	ldr r3, _080509F8 @ =gBgCntRegs
	ldr r0, _080509FC @ =0x00001C0E
	strh r0, [r3]
	adds r1, #0xc4
	ldr r0, _08050A00 @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _08050A04 @ =0x0600D000
	str r0, [r1]
	mov r0, ip
	adds r0, #0xe6
	strh r2, [r0]
	adds r1, #0x1c
	movs r0, #0x14
	strh r0, [r1]
	ldr r0, _08050A08 @ =0x00001A0A
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_080509EC: .4byte gUnknown_03001D80
_080509F0: .4byte 0x0600C000
_080509F4: .4byte 0x0600E000
_080509F8: .4byte gBgCntRegs
_080509FC: .4byte 0x00001C0E
_08050A00: .4byte 0x06008000
_08050A04: .4byte 0x0600D000
_08050A08: .4byte 0x00001A0A

	thumb_func_start sub_8050A0C
sub_8050A0C: @ 0x08050A0C
	push {r4, lr}
	ldr r0, _08050A70 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08050A44
	movs r0, #0x40
	bl EwramMalloc
	str r0, [r4, #8]
	adds r2, r0, #0
	movs r0, #0
	movs r3, #0
_08050A2E:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r2
	str r3, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xf
	ble _08050A2E
_08050A44:
	ldr r2, _08050A74 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r2, #0xc]
	strh r0, [r2, #0xe]
	ldr r0, [r4]
	adds r0, #1
	movs r1, #0xff
	ands r0, r1
	str r0, [r4]
	ldr r0, [r4, #4]
	adds r0, #1
	ands r0, r1
	str r0, [r4, #4]
	ldrh r0, [r2, #2]
	adds r0, #1
	ands r0, r1
	strh r0, [r2, #2]
	bl sub_8050A78
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050A70: .4byte gCurTask
_08050A74: .4byte gBgScrollRegs

	thumb_func_start sub_8050A78
sub_8050A78: @ 0x08050A78
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r0, _08050AF0 @ =gStageData
	ldr r4, [r0, #0x1c]
	movs r0, #0xff
	lsls r0, r0, #2
	ands r4, r0
	ldr r1, _08050AF4 @ =gUnknown_080D094C
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	ldr r2, _08050AF8 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08050AFC @ =gHBlankCopyTarget
	ldr r0, _08050B00 @ =0x04000010
	str r0, [r1]
	ldr r1, _08050B04 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08050B08 @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
	ldr r0, _08050B0C @ =gBgScrollRegs
	movs r3, #0
	movs r1, #2
	ldrsh r5, [r0, r1]
	ldr r0, _08050B10 @ =gSineTable
	lsls r4, r4, #1
	adds r4, r4, r0
	movs r0, #0
	ldrsh r4, [r4, r0]
	movs r6, #0x1f
_08050ABE:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	ands r0, r6
	add r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r4, r0
	asrs r0, r0, #9
	strh r0, [r2]
	adds r2, #2
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x9f
	ble _08050ABE
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050AF0: .4byte gStageData
_08050AF4: .4byte gUnknown_080D094C
_08050AF8: .4byte gFlags
_08050AFC: .4byte gHBlankCopyTarget
_08050B00: .4byte 0x04000010
_08050B04: .4byte gHBlankCopySize
_08050B08: .4byte gBgOffsetsHBlankPrimary
_08050B0C: .4byte gBgScrollRegs
_08050B10: .4byte gSineTable

	thumb_func_start sub_8050B14
sub_8050B14: @ 0x08050B14
	push {r4, lr}
	ldr r1, _08050B60 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, _08050B64 @ =gUnknown_03001D80
	mov ip, r0
	mov r1, ip
	adds r1, #0xc4
	ldr r0, _08050B68 @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _08050B6C @ =0x0600A000
	str r0, [r1]
	mov r0, ip
	adds r0, #0xe6
	movs r3, #0x20
	strh r3, [r0]
	adds r0, #2
	movs r1, #0x40
	strh r1, [r0]
	ldr r2, _08050B70 @ =gBgCntRegs
	ldr r0, _08050B74 @ =0x0000940A
	strh r0, [r2, #6]
	ldr r0, _08050B78 @ =0x0600C000
	mov r4, ip
	str r0, [r4, #4]
	ldr r0, _08050B7C @ =0x0600E000
	str r0, [r4, #0xc]
	strh r3, [r4, #0x26]
	strh r1, [r4, #0x28]
	ldr r0, _08050B80 @ =0x00009C0E
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050B60: .4byte gBgScrollRegs
_08050B64: .4byte gUnknown_03001D80
_08050B68: .4byte 0x06008000
_08050B6C: .4byte 0x0600A000
_08050B70: .4byte gBgCntRegs
_08050B74: .4byte 0x0000940A
_08050B78: .4byte 0x0600C000
_08050B7C: .4byte 0x0600E000
_08050B80: .4byte 0x00009C0E

	thumb_func_start sub_8050B84
sub_8050B84: @ 0x08050B84
	push {lr}
	ldr r1, _08050BA4 @ =gBgScrollRegs
	movs r0, #8
	strh r0, [r1]
	ldr r2, _08050BA8 @ =gCamera
	ldr r0, [r2, #4]
	ldr r3, _08050BAC @ =0xFFFFFCE0
	adds r0, r0, r3
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0
	blt _08050BB0
	asrs r0, r0, #0x13
	b _08050BB2
	.align 2, 0
_08050BA4: .4byte gBgScrollRegs
_08050BA8: .4byte gCamera
_08050BAC: .4byte 0xFFFFFCE0
_08050BB0:
	movs r0, #0
_08050BB2:
	strh r0, [r1, #2]
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	cmp r0, r1
	ble _08050BC2
	strh r1, [r3, #2]
_08050BC2:
	movs r0, #8
	strh r0, [r3, #0xc]
	ldr r0, [r2, #4]
	ldr r1, _08050BDC @ =0xFFFFFCE0
	adds r0, r0, r1
	strh r0, [r3, #0xe]
	adds r1, r3, #0
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _08050BE0
	asrs r0, r0, #0x13
	b _08050BE2
	.align 2, 0
_08050BDC: .4byte 0xFFFFFCE0
_08050BE0:
	movs r0, #0
_08050BE2:
	strh r0, [r1, #0xe]
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	movs r1, #0x90
	lsls r1, r1, #1
	cmp r0, r1
	ble _08050BF2
	strh r1, [r3, #0xe]
_08050BF2:
	ldr r0, _08050C04 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bhi _08050BFE
	bl sub_8050C08
_08050BFE:
	pop {r0}
	bx r0
	.align 2, 0
_08050C04: .4byte gStageData

	thumb_func_start sub_8050C08
sub_8050C08: @ 0x08050C08
	push {r4, r5, r6, lr}
	ldr r0, _08050C4C @ =gStageData
	ldr r0, [r0, #0x1c]
	ldr r1, _08050C50 @ =0x000001FF
	ands r0, r1
	lsrs r5, r0, #1
	ldr r2, _08050C54 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08050C58 @ =gHBlankCopyTarget
	ldr r0, _08050C5C @ =0x04000010
	str r0, [r1]
	ldr r1, _08050C60 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08050C64 @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
	ldr r0, _08050C68 @ =gBgScrollRegs
	movs r1, #0
	movs r3, #2
	ldrsh r4, [r0, r3]
	ldr r6, _08050C6C @ =gSineTable
_08050C38:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0x70
	ble _08050C70
	movs r0, #8
	b _08050C86
	.align 2, 0
_08050C4C: .4byte gStageData
_08050C50: .4byte 0x000001FF
_08050C54: .4byte gFlags
_08050C58: .4byte gHBlankCopyTarget
_08050C5C: .4byte 0x04000010
_08050C60: .4byte gHBlankCopySize
_08050C64: .4byte gBgOffsetsHBlankPrimary
_08050C68: .4byte gBgScrollRegs
_08050C6C: .4byte gSineTable
_08050C70:
	lsls r0, r0, #1
	adds r0, r5, r0
	lsls r0, r0, #2
	ldr r1, _08050CA0 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1b
	adds r0, #8
_08050C86:
	strh r0, [r2]
	adds r2, #2
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08050C38
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08050CA0: .4byte 0x000003FF

	thumb_func_start sub_8050CA4
sub_8050CA4: @ 0x08050CA4
	ldr r1, _08050CD4 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r2, _08050CD8 @ =gUnknown_03001D80
	adds r1, r2, #0
	adds r1, #0xc4
	ldr r0, _08050CDC @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _08050CE0 @ =0x0600A000
	str r0, [r1]
	adds r1, #0x1a
	movs r0, #0x40
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strh r0, [r1]
	ldr r1, _08050CE4 @ =gBgCntRegs
	ldr r0, _08050CE8 @ =0x0000540A
	strh r0, [r1, #6]
	bx lr
	.align 2, 0
_08050CD4: .4byte gBgScrollRegs
_08050CD8: .4byte gUnknown_03001D80
_08050CDC: .4byte 0x06008000
_08050CE0: .4byte 0x0600A000
_08050CE4: .4byte gBgCntRegs
_08050CE8: .4byte 0x0000540A

	thumb_func_start sub_8050CEC
sub_8050CEC: @ 0x08050CEC
	ldr r1, _08050D1C @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r1, _08050D20 @ =gUnknown_03001D80
	ldr r0, _08050D24 @ =0x0600C000
	str r0, [r1, #4]
	ldr r0, _08050D28 @ =0x0600D000
	str r0, [r1, #0xc]
	ldr r3, _08050D2C @ =gBgCntRegs
	ldr r0, _08050D30 @ =0x00009A0E
	strh r0, [r3]
	adds r2, r1, #0
	adds r2, #0xc4
	ldr r0, _08050D34 @ =0x06008000
	str r0, [r2]
	adds r1, #0xcc
	ldr r0, _08050D38 @ =0x0600E800
	str r0, [r1]
	ldr r0, _08050D3C @ =0x00001D0A
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_08050D1C: .4byte gBgScrollRegs
_08050D20: .4byte gUnknown_03001D80
_08050D24: .4byte 0x0600C000
_08050D28: .4byte 0x0600D000
_08050D2C: .4byte gBgCntRegs
_08050D30: .4byte 0x00009A0E
_08050D34: .4byte 0x06008000
_08050D38: .4byte 0x0600E800
_08050D3C: .4byte 0x00001D0A

	thumb_func_start sub_8050D40
sub_8050D40: @ 0x08050D40
	push {r4, lr}
	ldr r3, _08050D80 @ =gBgScrollRegs
	ldr r1, _08050D84 @ =gCamera
	ldr r4, [r1]
	asrs r0, r4, #3
	movs r2, #0xff
	ands r0, r2
	strh r0, [r3]
	ldr r1, [r1, #4]
	asrs r0, r1, #4
	cmp r0, #0x60
	ble _08050D5A
	movs r0, #0x60
_08050D5A:
	strh r0, [r3, #2]
	asrs r0, r4, #6
	ands r0, r2
	strh r0, [r3, #0xc]
	asrs r0, r1, #6
	ands r0, r2
	strh r0, [r3, #0xe]
	ldr r0, _08050D88 @ =gUnknown_03001E40
	bl UpdateBgAnimationTiles
	ldr r0, _08050D8C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bhi _08050D7A
	bl sub_8050D90
_08050D7A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050D80: .4byte gBgScrollRegs
_08050D84: .4byte gCamera
_08050D88: .4byte gUnknown_03001E40
_08050D8C: .4byte gStageData

	thumb_func_start sub_8050D90
sub_8050D90: @ 0x08050D90
	push {r4, r5, lr}
	sub sp, #0x20
	ldr r0, _08050DF8 @ =gStageData
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #0x15
	lsrs r5, r0, #0x16
	ldr r1, _08050DFC @ =gUnknown_080D096C
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	ldr r2, _08050E00 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08050E04 @ =gHBlankCopyTarget
	ldr r0, _08050E08 @ =0x0400001C
	str r0, [r1]
	ldr r1, _08050E0C @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08050E10 @ =gBgOffsetsHBlankPrimary
	ldr r3, [r0]
	ldr r0, _08050E14 @ =gBgScrollRegs
	movs r1, #0
	movs r2, #0xe
	ldrsh r4, [r0, r2]
_08050DC8:
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	add r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r5, r0
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x9f
	ble _08050DC8
	add sp, #0x20
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08050DF8: .4byte gStageData
_08050DFC: .4byte gUnknown_080D096C
_08050E00: .4byte gFlags
_08050E04: .4byte gHBlankCopyTarget
_08050E08: .4byte 0x0400001C
_08050E0C: .4byte gHBlankCopySize
_08050E10: .4byte gBgOffsetsHBlankPrimary
_08050E14: .4byte gBgScrollRegs

	thumb_func_start sub_8050E18
sub_8050E18: @ 0x08050E18
	push {r4, lr}
	ldr r0, _08050E58 @ =gUnknown_03001D80
	mov ip, r0
	mov r1, ip
	adds r1, #0xc4
	ldr r0, _08050E5C @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _08050E60 @ =0x0600B000
	str r0, [r1]
	mov r0, ip
	adds r0, #0xe6
	movs r3, #0x20
	strh r3, [r0]
	adds r0, #2
	movs r1, #0x40
	strh r1, [r0]
	ldr r2, _08050E64 @ =gBgCntRegs
	ldr r0, _08050E68 @ =0x0000960A
	strh r0, [r2, #6]
	ldr r0, _08050E6C @ =0x0600C000
	mov r4, ip
	str r0, [r4, #4]
	ldr r0, _08050E70 @ =0x0600E000
	str r0, [r4, #0xc]
	strh r3, [r4, #0x26]
	strh r1, [r4, #0x28]
	ldr r0, _08050E74 @ =0x00009C0E
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050E58: .4byte gUnknown_03001D80
_08050E5C: .4byte 0x06008000
_08050E60: .4byte 0x0600B000
_08050E64: .4byte gBgCntRegs
_08050E68: .4byte 0x0000960A
_08050E6C: .4byte 0x0600C000
_08050E70: .4byte 0x0600E000
_08050E74: .4byte 0x00009C0E

	thumb_func_start sub_8050E78
sub_8050E78: @ 0x08050E78
	push {r4, lr}
	ldr r3, _08050E98 @ =gBgScrollRegs
	ldr r2, _08050E9C @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	adds r4, r3, #0
	ldr r1, [r2, #4]
	asrs r0, r1, #0xa
	cmp r0, #0x5f
	bgt _08050EA0
	lsrs r0, r1, #9
	b _08050EA2
	.align 2, 0
_08050E98: .4byte gBgScrollRegs
_08050E9C: .4byte gCamera
_08050EA0:
	movs r0, #0x60
_08050EA2:
	strh r0, [r4, #0xe]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r3, #0xe]
	adds r0, r0, r1
	strh r0, [r3, #0xe]
	ldr r0, [r2]
	asrs r0, r0, #5
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3]
	adds r1, r3, #0
	ldr r2, [r2, #4]
	asrs r0, r2, #0xa
	cmp r0, #0x5f
	bgt _08050EC8
	lsrs r0, r2, #9
	b _08050ECA
_08050EC8:
	movs r0, #0x60
_08050ECA:
	strh r0, [r1, #2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r3, #2]
	adds r0, r0, r1
	strh r0, [r3, #2]
	bl sub_8050EE4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8050EE4
sub_8050EE4: @ 0x08050EE4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	ldr r0, _08050F18 @ =gStageData
	ldr r6, [r0, #0x1c]
	ldr r0, _08050F1C @ =0x000007FF
	ands r6, r0
	ldr r1, _08050F20 @ =gUnknown_080D098C
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	ldr r2, _08050F24 @ =gBgScrollRegs
	ldr r3, _08050F28 @ =gCamera
	ldr r0, [r3]
	asrs r0, r0, #4
	movs r1, #0xff
	ands r0, r1
	strh r0, [r2, #0xc]
	ldr r1, [r3, #4]
	asrs r0, r1, #0xa
	cmp r0, #0x5f
	bgt _08050F2C
	lsrs r0, r1, #9
	b _08050F2E
	.align 2, 0
_08050F18: .4byte gStageData
_08050F1C: .4byte 0x000007FF
_08050F20: .4byte gUnknown_080D098C
_08050F24: .4byte gBgScrollRegs
_08050F28: .4byte gCamera
_08050F2C:
	movs r0, #0x60
_08050F2E:
	strh r0, [r2, #0xe]
	ldr r3, _08050FA0 @ =gBgScrollRegs
	ldrh r4, [r3, #0xe]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r0, #0
	adds r0, r4, r5
	strh r0, [r3, #0xe]
	ldr r2, _08050FA4 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3]
	ldr r0, [r2, #4]
	asrs r0, r0, #9
	mov r8, r2
	cmp r0, #0x60
	ble _08050F56
	movs r0, #0x60
_08050F56:
	adds r0, r0, r5
	strh r0, [r3, #2]
	ldr r2, _08050FA8 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08050FAC @ =gHBlankCopyTarget
	ldr r0, _08050FB0 @ =0x0400001C
	str r0, [r1]
	ldr r1, _08050FB4 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08050FB8 @ =gBgOffsetsHBlankPrimary
	ldr r3, [r0]
	movs r1, #0
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	mov ip, r0
	movs r5, #0xff
_08050F82:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r1, r7, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	add r1, sp
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r1, r2, #0
	adds r4, r0, #0
	cmp r1, #0
	bne _08050FBC
	strh r1, [r3]
	b _08050FD4
	.align 2, 0
_08050FA0: .4byte gBgScrollRegs
_08050FA4: .4byte gCamera
_08050FA8: .4byte gFlags
_08050FAC: .4byte gHBlankCopyTarget
_08050FB0: .4byte 0x0400001C
_08050FB4: .4byte gHBlankCopySize
_08050FB8: .4byte gBgOffsetsHBlankPrimary
_08050FBC:
	cmp r1, ip
	bne _08050FC8
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #6
	b _08050FD0
_08050FC8:
	movs r1, #4
	subs r1, r1, r2
	adds r0, r6, #0
	asrs r0, r1
_08050FD0:
	ands r0, r5
	strh r0, [r3]
_08050FD4:
	adds r3, #2
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08050F82
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8050FF0
sub_8050FF0: @ 0x08050FF0
	push {r4, r5, r6, lr}
	ldr r3, _08051010 @ =gBgScrollRegs
	ldr r2, _08051014 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	ldr r1, [r2, #4]
	asrs r0, r1, #0xa
	adds r4, r3, #0
	cmp r0, #0x5f
	bgt _08051018
	lsrs r0, r1, #9
	b _0805101A
	.align 2, 0
_08051010: .4byte gBgScrollRegs
_08051014: .4byte gCamera
_08051018:
	movs r0, #0x60
_0805101A:
	strh r0, [r3, #0xe]
	ldr r0, [r2]
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	strh r0, [r4]
	ldr r0, [r2, #4]
	asrs r0, r0, #3
	ands r0, r1
	strh r0, [r4, #2]
	ldr r2, _08051064 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08051068 @ =gHBlankCopyTarget
	ldr r0, _0805106C @ =0x04000012
	str r0, [r1]
	ldr r1, _08051070 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08051074 @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
	movs r1, #0
	ldrh r5, [r4, #2]
	movs r0, #2
	ldrsh r3, [r4, r0]
	ldr r6, _08051078 @ =0xFFFFFF00
	adds r4, r3, r6
_08051054:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	adds r0, r3, r0
	cmp r0, #0xff
	ble _0805107C
	strh r4, [r2]
	b _0805107E
	.align 2, 0
_08051064: .4byte gFlags
_08051068: .4byte gHBlankCopyTarget
_0805106C: .4byte 0x04000012
_08051070: .4byte gHBlankCopySize
_08051074: .4byte gBgOffsetsHBlankPrimary
_08051078: .4byte 0xFFFFFF00
_0805107C:
	strh r5, [r2]
_0805107E:
	adds r2, #2
	movs r6, #0x80
	lsls r6, r6, #9
	adds r0, r1, r6
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _08051054
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8051094
sub_8051094: @ 0x08051094
	ldr r0, _080510D4 @ =gUnknown_03001D80
	mov ip, r0
	ldr r0, _080510D8 @ =0x0600C000
	mov r1, ip
	str r0, [r1, #4]
	ldr r0, _080510DC @ =0x0600D800
	str r0, [r1, #0xc]
	movs r0, #0x40
	strh r0, [r1, #0x26]
	movs r2, #0x20
	strh r2, [r1, #0x28]
	ldr r3, _080510E0 @ =gBgCntRegs
	ldr r0, _080510E4 @ =0x00005B0C
	strh r0, [r3]
	adds r1, #0xc4
	ldr r0, _080510E8 @ =0x06004000
	str r0, [r1]
	adds r1, #8
	ldr r0, _080510EC @ =0x0600E800
	str r0, [r1]
	mov r0, ip
	adds r0, #0xe6
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, _080510F0 @ =0x00001D06
	strh r0, [r3, #6]
	ldr r1, _080510F4 @ =gStageData
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1, #0x10]
	bx lr
	.align 2, 0
_080510D4: .4byte gUnknown_03001D80
_080510D8: .4byte 0x0600C000
_080510DC: .4byte 0x0600D800
_080510E0: .4byte gBgCntRegs
_080510E4: .4byte 0x00005B0C
_080510E8: .4byte 0x06004000
_080510EC: .4byte 0x0600E800
_080510F0: .4byte 0x00001D06
_080510F4: .4byte gStageData

	thumb_func_start sub_80510F8
sub_80510F8: @ 0x080510F8
	ldr r1, _08051128 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	ldr r2, _0805112C @ =gUnknown_03001D80
	adds r1, r2, #0
	adds r1, #0xc4
	ldr r0, _08051130 @ =0x06008000
	str r0, [r1]
	adds r1, #8
	ldr r0, _08051134 @ =0x0600E800
	str r0, [r1]
	adds r1, #0x1a
	movs r0, #0x20
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x14
	strh r0, [r1]
	ldr r1, _08051138 @ =gBgCntRegs
	ldr r0, _0805113C @ =0x00001D0A
	strh r0, [r1, #6]
	bx lr
	.align 2, 0
_08051128: .4byte gBgScrollRegs
_0805112C: .4byte gUnknown_03001D80
_08051130: .4byte 0x06008000
_08051134: .4byte 0x0600E800
_08051138: .4byte gBgCntRegs
_0805113C: .4byte 0x00001D0A

	thumb_func_start sub_8051140
sub_8051140: @ 0x08051140
	push {r4, lr}
	ldr r4, _08051168 @ =gCamera
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _08051152
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #0x48]
_08051152:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _08051160
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #0x4c]
_08051160:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051168: .4byte gCamera

	thumb_func_start sub_805116C
sub_805116C: @ 0x0805116C
	push {lr}
	ldr r1, _08051198 @ =gCamera
	movs r0, #0
	str r0, [r1, #0x48]
	str r0, [r1, #0x4c]
	ldr r3, _0805119C @ =gFlags
	movs r2, #0
	ldr r0, _080511A0 @ =gBgScrollRegs
	movs r1, #3
_0805117E:
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0805117E
	ldr r0, [r3]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_08051198: .4byte gCamera
_0805119C: .4byte gFlags
_080511A0: .4byte gBgScrollRegs

	thumb_func_start sub_80511A4
sub_80511A4: @ 0x080511A4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _080511B8
	bl EwramFree
_080511B8:
	pop {r0}
	bx r0

	thumb_func_start sub_80511BC
sub_80511BC: @ 0x080511BC
	ldr r1, _080511D0 @ =gUnknown_03001D80
	ldr r0, _080511D4 @ =0x0600C000
	str r0, [r1, #0x44]
	ldr r0, _080511D8 @ =0x0600E800
	str r0, [r1, #0x4c]
	ldr r1, _080511DC @ =gBgCntRegs
	ldr r0, _080511E0 @ =0x00001D0E
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_080511D0: .4byte gUnknown_03001D80
_080511D4: .4byte 0x0600C000
_080511D8: .4byte 0x0600E800
_080511DC: .4byte gBgCntRegs
_080511E0: .4byte 0x00001D0E

	thumb_func_start sub_80511E4
sub_80511E4: @ 0x080511E4
	ldr r1, _080511F8 @ =gUnknown_03001D80
	ldr r0, _080511FC @ =0x0600C000
	str r0, [r1, #0x44]
	ldr r0, _08051200 @ =0x0600E800
	str r0, [r1, #0x4c]
	ldr r1, _08051204 @ =gBgCntRegs
	ldr r0, _08051208 @ =0x00001D0E
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_080511F8: .4byte gUnknown_03001D80
_080511FC: .4byte 0x0600C000
_08051200: .4byte 0x0600E800
_08051204: .4byte gBgCntRegs
_08051208: .4byte 0x00001D0E

	thumb_func_start sub_805120C
sub_805120C: @ 0x0805120C
	ldr r1, _08051230 @ =gUnknown_03001D80
	ldr r0, _08051234 @ =0x0600C000
	str r0, [r1, #4]
	ldr r0, _08051238 @ =0x0600D000
	str r0, [r1, #0xc]
	ldr r3, _0805123C @ =gBgCntRegs
	ldr r0, _08051240 @ =0x00009A0E
	strh r0, [r3]
	adds r2, r1, #0
	adds r2, #0xc4
	ldr r0, _08051244 @ =0x06008000
	str r0, [r2]
	adds r1, #0xcc
	ldr r0, _08051248 @ =0x0600E800
	str r0, [r1]
	ldr r0, _0805124C @ =0x00001D0A
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_08051230: .4byte gUnknown_03001D80
_08051234: .4byte 0x0600C000
_08051238: .4byte 0x0600D000
_0805123C: .4byte gBgCntRegs
_08051240: .4byte 0x00009A0E
_08051244: .4byte 0x06008000
_08051248: .4byte 0x0600E800
_0805124C: .4byte 0x00001D0A

	thumb_func_start sub_8051250
sub_8051250: @ 0x08051250
	ldr r1, _0805127C @ =gUnknown_03001D80
	ldr r0, _08051280 @ =0x0600C000
	str r0, [r1, #4]
	ldr r0, _08051284 @ =0x0600C800
	str r0, [r1, #0xc]
	movs r0, #0x40
	strh r0, [r1, #0x26]
	strh r0, [r1, #0x28]
	ldr r3, _08051288 @ =gBgCntRegs
	ldr r0, _0805128C @ =0x0000990D
	strh r0, [r3]
	adds r2, r1, #0
	adds r2, #0xc4
	ldr r0, _08051290 @ =0x06008000
	str r0, [r2]
	adds r1, #0xcc
	ldr r0, _08051294 @ =0x0600E800
	str r0, [r1]
	ldr r0, _08051298 @ =0x00001D0A
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_0805127C: .4byte gUnknown_03001D80
_08051280: .4byte 0x0600C000
_08051284: .4byte 0x0600C800
_08051288: .4byte gBgCntRegs
_0805128C: .4byte 0x0000990D
_08051290: .4byte 0x06008000
_08051294: .4byte 0x0600E800
_08051298: .4byte 0x00001D0A

	thumb_func_start sub_805129C
sub_805129C: @ 0x0805129C
	ldr r1, _080512A8 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	bx lr
	.align 2, 0
_080512A8: .4byte gBgScrollRegs

	thumb_func_start sub_80512AC
sub_80512AC: @ 0x080512AC
	push {lr}
	ldr r2, _080512CC @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #0xc]
	ldr r0, _080512D0 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #4
	bne _080512C6
	ldr r0, _080512D4 @ =gCamera
	ldr r0, [r0, #4]
	asrs r1, r0, #3
	asrs r0, r0, #4
	adds r1, r1, r0
_080512C6:
	strh r1, [r2, #0xe]
	pop {r0}
	bx r0
	.align 2, 0
_080512CC: .4byte gBgScrollRegs
_080512D0: .4byte gStageData
_080512D4: .4byte gCamera

	thumb_func_start sub_80512D8
sub_80512D8: @ 0x080512D8
	ldr r1, _080512F0 @ =gBgScrollRegs
	ldrh r0, [r1, #0xc]
	adds r0, #1
	movs r2, #0xff
	ands r0, r2
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0xe]
	subs r0, #1
	ands r0, r2
	strh r0, [r1, #0xe]
	bx lr
	.align 2, 0
_080512F0: .4byte gBgScrollRegs

	thumb_func_start sub_80512F4
sub_80512F4: @ 0x080512F4
	ldr r0, _08051304 @ =gBgScrollRegs
	movs r2, #0
	strh r2, [r0]
	ldr r1, _08051308 @ =0x0000FFF0
	strh r1, [r0, #2]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	bx lr
	.align 2, 0
_08051304: .4byte gBgScrollRegs
_08051308: .4byte 0x0000FFF0

	thumb_func_start sub_805130C
sub_805130C: @ 0x0805130C
	push {lr}
	ldr r3, _0805133C @ =gBgScrollRegs
	ldr r2, _08051340 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #4
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	ldr r0, [r2, #4]
	asrs r0, r0, #5
	strh r0, [r3, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0805132C
	movs r0, #0
	strh r0, [r3, #0xe]
_0805132C:
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	cmp r0, #0x1f
	ble _08051338
	movs r0, #0x20
	strh r0, [r3, #0xe]
_08051338:
	pop {r0}
	bx r0
	.align 2, 0
_0805133C: .4byte gBgScrollRegs
_08051340: .4byte gCamera

	thumb_func_start sub_8051344
sub_8051344: @ 0x08051344
	push {lr}
	ldr r3, _08051374 @ =gBgScrollRegs
	ldr r2, _08051378 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #4
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	ldr r0, [r2, #4]
	asrs r0, r0, #5
	strh r0, [r3, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08051364
	movs r0, #0
	strh r0, [r3, #0xe]
_08051364:
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	cmp r0, #0x1f
	ble _08051370
	movs r0, #0x20
	strh r0, [r3, #0xe]
_08051370:
	pop {r0}
	bx r0
	.align 2, 0
_08051374: .4byte gBgScrollRegs
_08051378: .4byte gCamera

	thumb_func_start sub_805137C
sub_805137C: @ 0x0805137C
	push {lr}
	ldr r3, _080513AC @ =gBgScrollRegs
	ldr r2, _080513B0 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #2
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	ldr r0, [r2, #4]
	asrs r0, r0, #5
	strh r0, [r3, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0805139C
	movs r0, #0
	strh r0, [r3, #0xe]
_0805139C:
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	cmp r0, #0x2f
	ble _080513A8
	movs r0, #0x30
	strh r0, [r3, #0xe]
_080513A8:
	pop {r0}
	bx r0
	.align 2, 0
_080513AC: .4byte gBgScrollRegs
_080513B0: .4byte gCamera

	thumb_func_start sub_80513B4
sub_80513B4: @ 0x080513B4
	push {lr}
	ldr r3, _080513E4 @ =gBgScrollRegs
	ldr r2, _080513E8 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #2
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	ldr r0, [r2, #4]
	asrs r0, r0, #5
	strh r0, [r3, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080513D4
	movs r0, #0
	strh r0, [r3, #0xe]
_080513D4:
	movs r1, #0xe
	ldrsh r0, [r3, r1]
	cmp r0, #0x2f
	ble _080513E0
	movs r0, #0x30
	strh r0, [r3, #0xe]
_080513E0:
	pop {r0}
	bx r0
	.align 2, 0
_080513E4: .4byte gBgScrollRegs
_080513E8: .4byte gCamera

	thumb_func_start sub_80513EC
sub_80513EC: @ 0x080513EC
	ldr r1, _080513F8 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	bx lr
	.align 2, 0
_080513F8: .4byte gBgScrollRegs

	thumb_func_start sub_80513FC
sub_80513FC: @ 0x080513FC
	ldr r2, _08051410 @ =gBgScrollRegs
	ldr r0, _08051414 @ =gCamera
	ldr r0, [r0]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	movs r1, #0
	strh r0, [r2, #0xc]
	strh r1, [r2, #0xe]
	bx lr
	.align 2, 0
_08051410: .4byte gBgScrollRegs
_08051414: .4byte gCamera

	thumb_func_start sub_8051418
sub_8051418: @ 0x08051418
	ldr r2, _0805142C @ =gBgScrollRegs
	ldr r0, _08051430 @ =gCamera
	ldr r0, [r0]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	movs r1, #0
	strh r0, [r2, #0xc]
	strh r1, [r2, #0xe]
	bx lr
	.align 2, 0
_0805142C: .4byte gBgScrollRegs
_08051430: .4byte gCamera

	thumb_func_start sub_8051434
sub_8051434: @ 0x08051434
	push {lr}
	ldr r1, _08051460 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r2, _08051464 @ =gStageData
	ldrh r1, [r2, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #0x10]
	bl sub_805068C
	ldr r0, _08051468 @ =gUnknown_03001D80
	bl DrawBackground
	pop {r0}
	bx r0
	.align 2, 0
_08051460: .4byte gBgScrollRegs
_08051464: .4byte gStageData
_08051468: .4byte gUnknown_03001D80

	thumb_func_start sub_805146C
sub_805146C: @ 0x0805146C
	ldr r1, _08051488 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r1, _0805148C @ =gUnknown_03001D80
	ldr r0, _08051490 @ =0x0600C000
	str r0, [r1, #0x44]
	ldr r0, _08051494 @ =0x0600E800
	str r0, [r1, #0x4c]
	ldr r1, _08051498 @ =gBgCntRegs
	ldr r0, _0805149C @ =0x00001D0E
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_08051488: .4byte gBgScrollRegs
_0805148C: .4byte gUnknown_03001D80
_08051490: .4byte 0x0600C000
_08051494: .4byte 0x0600E800
_08051498: .4byte gBgCntRegs
_0805149C: .4byte 0x00001D0E

	thumb_func_start sub_80514A0
sub_80514A0: @ 0x080514A0
	ldr r3, _080514B8 @ =gBgScrollRegs
	ldr r2, _080514BC @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #4]
	ldr r0, [r2, #4]
	asrs r0, r0, #9
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_080514B8: .4byte gBgScrollRegs
_080514BC: .4byte gCamera

	thumb_func_start sub_80514C0
sub_80514C0: @ 0x080514C0
	ldr r2, _080514D8 @ =gBgScrollRegs
	movs r3, #0
	strh r3, [r2, #0xc]
	strh r3, [r2, #0xe]
	ldr r0, _080514DC @ =gCamera
	ldr r0, [r0]
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	strh r0, [r2]
	strh r3, [r2, #2]
	bx lr
	.align 2, 0
_080514D8: .4byte gBgScrollRegs
_080514DC: .4byte gCamera

	thumb_func_start sub_80514E0
sub_80514E0: @ 0x080514E0
	ldr r1, _080514FC @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r1, _08051500 @ =gUnknown_03001D80
	ldr r0, _08051504 @ =0x0600C000
	str r0, [r1, #0x44]
	ldr r0, _08051508 @ =0x0600E800
	str r0, [r1, #0x4c]
	ldr r1, _0805150C @ =gBgCntRegs
	ldr r0, _08051510 @ =0x00001D0E
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_080514FC: .4byte gBgScrollRegs
_08051500: .4byte gUnknown_03001D80
_08051504: .4byte 0x0600C000
_08051508: .4byte 0x0600E800
_0805150C: .4byte gBgCntRegs
_08051510: .4byte 0x00001D0E

	thumb_func_start sub_8051514
sub_8051514: @ 0x08051514
	ldr r3, _0805152C @ =gBgScrollRegs
	ldr r2, _08051530 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #4]
	ldr r0, [r2, #4]
	asrs r0, r0, #9
	strh r0, [r3, #6]
	bx lr
	.align 2, 0
_0805152C: .4byte gBgScrollRegs
_08051530: .4byte gCamera

	thumb_func_start sub_8051534
sub_8051534: @ 0x08051534
	ldr r2, _0805154C @ =gCamera
	ldr r0, [r2]
	ldr r1, _08051550 @ =0xFFFFFB80
	adds r0, r0, r1
	ldr r1, _08051554 @ =gBgScrollRegs
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x17
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #4]
	strh r0, [r1, #0xe]
	bx lr
	.align 2, 0
_0805154C: .4byte gCamera
_08051550: .4byte 0xFFFFFB80
_08051554: .4byte gBgScrollRegs

	thumb_func_start sub_8051558
sub_8051558: @ 0x08051558
	push {lr}
	ldr r0, _08051584 @ =gCamera
	ldr r1, [r0]
	ldr r0, _08051588 @ =0x00000527
	cmp r1, r0
	ble _0805157E
	ldr r0, _0805158C @ =0x000028FB
	cmp r1, r0
	ble _08051598
	ldr r0, _08051590 @ =0x0000301B
	cmp r1, r0
	ble _0805157E
	ldr r0, _08051594 @ =0x00003647
	movs r2, #1
	cmp r1, r0
	bgt _0805157A
	movs r2, #0
_0805157A:
	cmp r2, #0
	beq _08051598
_0805157E:
	bl sub_8050EE4
	b _0805159C
	.align 2, 0
_08051584: .4byte gCamera
_08051588: .4byte 0x00000527
_0805158C: .4byte 0x000028FB
_08051590: .4byte 0x0000301B
_08051594: .4byte 0x00003647
_08051598:
	bl sub_8050FF0
_0805159C:
	pop {r0}
	bx r0

	thumb_func_start sub_80515A0
sub_80515A0: @ 0x080515A0
	push {lr}
	ldr r0, _080515D8 @ =gCamera
	ldr r1, [r0]
	ldr r0, _080515DC @ =0x0000088F
	cmp r1, r0
	ble _080515D2
	ldr r0, _080515E0 @ =0x00002237
	cmp r1, r0
	ble _080515F4
	ldr r0, _080515E4 @ =0x00003493
	cmp r1, r0
	ble _080515D2
	ldr r0, _080515E8 @ =0x00003EBF
	cmp r1, r0
	ble _080515F4
	ldr r0, _080515EC @ =0x0000439F
	cmp r1, r0
	ble _080515D2
	ldr r0, _080515F0 @ =0x0000505F
	movs r2, #1
	cmp r1, r0
	bgt _080515CE
	movs r2, #0
_080515CE:
	cmp r2, #0
	beq _080515F4
_080515D2:
	bl sub_8050EE4
	b _080515F8
	.align 2, 0
_080515D8: .4byte gCamera
_080515DC: .4byte 0x0000088F
_080515E0: .4byte 0x00002237
_080515E4: .4byte 0x00003493
_080515E8: .4byte 0x00003EBF
_080515EC: .4byte 0x0000439F
_080515F0: .4byte 0x0000505F
_080515F4:
	bl sub_8050FF0
_080515F8:
	pop {r0}
	bx r0

	thumb_func_start sub_80515FC
sub_80515FC: @ 0x080515FC
	push {r4, lr}
	ldr r3, _08051624 @ =gBgScrollRegs
	ldr r2, _08051628 @ =gCamera
	ldr r1, [r2]
	ldr r4, _0805162C @ =0xFFFFFCB8
	adds r0, r1, r4
	strh r0, [r3]
	ldr r2, [r2, #4]
	ldr r4, _08051630 @ =0xFFFFFE48
	adds r0, r2, r4
	strh r0, [r3, #2]
	asrs r1, r1, #6
	movs r0, #0xff
	ands r1, r0
	strh r1, [r3, #0xc]
	asrs r2, r2, #9
	strh r2, [r3, #0xe]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051624: .4byte gBgScrollRegs
_08051628: .4byte gCamera
_0805162C: .4byte 0xFFFFFCB8
_08051630: .4byte 0xFFFFFE48

	thumb_func_start sub_8051634
sub_8051634: @ 0x08051634
	ldr r1, _0805164C @ =gUnknown_03001D80
	adds r2, r1, #0
	adds r2, #0xc4
	ldr r0, _08051650 @ =0x06008000
	str r0, [r2]
	adds r1, #0xcc
	ldr r0, _08051654 @ =0x0600E800
	str r0, [r1]
	ldr r1, _08051658 @ =gBgCntRegs
	ldr r0, _0805165C @ =0x00009D0A
	strh r0, [r1, #6]
	bx lr
	.align 2, 0
_0805164C: .4byte gUnknown_03001D80
_08051650: .4byte 0x06008000
_08051654: .4byte 0x0600E800
_08051658: .4byte gBgCntRegs
_0805165C: .4byte 0x00009D0A

	thumb_func_start sub_8051660
sub_8051660: @ 0x08051660
	bx lr
	.align 2, 0

	thumb_func_start sub_8051664
sub_8051664: @ 0x08051664
	bx lr
	.align 2, 0

	thumb_func_start sub_8051668
sub_8051668: @ 0x08051668
	ldr r3, _08051680 @ =gBgScrollRegs
	ldr r2, _08051684 @ =gCamera
	ldr r0, [r2]
	asrs r0, r0, #6
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0xc]
	ldr r0, [r2, #4]
	asrs r0, r0, #9
	strh r0, [r3, #0xe]
	bx lr
	.align 2, 0
_08051680: .4byte gBgScrollRegs
_08051684: .4byte gCamera

	thumb_func_start sub_8051688
sub_8051688: @ 0x08051688
	push {lr}
	ldr r0, _080516B4 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080516B8 @ =gPlayers
	adds r0, r0, r1
	ldr r0, [r0, #4]
	ldr r1, _080516BC @ =0x80000100
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	beq _080516B0
	movs r0, #0
	bl sub_804FE8C
_080516B0:
	pop {r0}
	bx r0
	.align 2, 0
_080516B4: .4byte gStageData
_080516B8: .4byte gPlayers
_080516BC: .4byte 0x80000100

	thumb_func_start sub_80516C0
sub_80516C0: @ 0x080516C0
	push {lr}
	movs r0, #0
	bl sub_804FE8C
	pop {r0}
	bx r0

	thumb_func_start sub_80516CC
sub_80516CC: @ 0x080516CC
	push {lr}
	bl sub_8050188
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80516D8
sub_80516D8: @ 0x080516D8
	push {lr}
	ldr r2, _080516F8 @ =gDispCnt
	ldr r1, _080516FC @ =gStageData
	ldrh r0, [r2]
	ldrh r1, [r1, #0x10]
	orrs r0, r1
	strh r0, [r2]
	bl sub_8051708
	ldr r0, _08051700 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08051704 @ =sub_8051708
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_080516F8: .4byte gDispCnt
_080516FC: .4byte gStageData
_08051700: .4byte gCurTask
_08051704: .4byte sub_8051708

	thumb_func_start sub_8051708
sub_8051708: @ 0x08051708
	push {lr}
	ldr r1, _08051718 @ =gCamera
	ldr r0, [r1]
	ldr r1, [r1, #4]
	bl sub_80503DC
	pop {r0}
	bx r0
	.align 2, 0
_08051718: .4byte gCamera

	thumb_func_start sub_805171C
sub_805171C: @ 0x0805171C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08051740 @ =gUnknown_03001DC0
	ldr r4, _08051744 @ =gBgScrollRegs
	movs r3, #7
	adds r2, r5, #0
	ands r2, r3
	strh r2, [r4, #4]
	adds r2, r1, #0
	ands r2, r3
	strh r2, [r4, #6]
	strh r5, [r0, #0x30]
	strh r1, [r0, #0x32]
	bl DrawBackground
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08051740: .4byte gUnknown_03001DC0
_08051744: .4byte gBgScrollRegs

	thumb_func_start sub_8051748
sub_8051748: @ 0x08051748
	push {lr}
	ldr r2, _08051768 @ =gDispCnt
	ldr r1, _0805176C @ =gStageData
	ldrh r0, [r2]
	ldrh r1, [r1, #0x10]
	orrs r0, r1
	strh r0, [r2]
	bl sub_8051778
	ldr r0, _08051770 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08051774 @ =sub_8051778
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08051768: .4byte gDispCnt
_0805176C: .4byte gStageData
_08051770: .4byte gCurTask
_08051774: .4byte sub_8051778

	thumb_func_start sub_8051778
sub_8051778: @ 0x08051778
	push {lr}
	ldr r1, _08051788 @ =gCamera
	ldr r0, [r1]
	ldr r1, [r1, #4]
	bl sub_805171C
	pop {r0}
	bx r0
	.align 2, 0
_08051788: .4byte gCamera

	thumb_func_start sub_805178C
sub_805178C: @ 0x0805178C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080517B0 @ =gUnknown_03001DC0
	ldr r4, _080517B4 @ =gBgScrollRegs
	movs r3, #7
	adds r2, r5, #0
	ands r2, r3
	strh r2, [r4, #4]
	adds r2, r1, #0
	ands r2, r3
	strh r2, [r4, #6]
	strh r5, [r0, #0x30]
	strh r1, [r0, #0x32]
	bl DrawBackground
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080517B0: .4byte gUnknown_03001DC0
_080517B4: .4byte gBgScrollRegs

	thumb_func_start sub_80517B8
sub_80517B8: @ 0x080517B8
	push {lr}
	ldr r2, _080517D8 @ =gDispCnt
	ldr r1, _080517DC @ =gStageData
	ldrh r0, [r2]
	ldrh r1, [r1, #0x10]
	orrs r0, r1
	strh r0, [r2]
	bl sub_80517E8
	ldr r0, _080517E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080517E4 @ =sub_80517E8
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_080517D8: .4byte gDispCnt
_080517DC: .4byte gStageData
_080517E0: .4byte gCurTask
_080517E4: .4byte sub_80517E8

	thumb_func_start sub_80517E8
sub_80517E8: @ 0x080517E8
	push {lr}
	ldr r1, _080517F8 @ =gCamera
	ldr r0, [r1]
	ldr r1, [r1, #4]
	bl sub_805178C
	pop {r0}
	bx r0
	.align 2, 0
_080517F8: .4byte gCamera

	thumb_func_start sub_80517FC
sub_80517FC: @ 0x080517FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov sb, r1
	mov sl, r2
	mov r8, r3
	ldr r7, [sp, #0x28]
	cmp r7, #0
	bne _08051818
	mov r7, sp
_08051818:
	mov r4, sp
	adds r4, #1
	adds r0, r6, #0
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	ldr r5, [sp, #0x2c]
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #0
	bne _080518F2
	mov r1, r8
	adds r0, r6, r1
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #0
	bne _080518B4
	mov r5, r8
	lsls r5, r5, #1
	adds r0, r6, r5
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	ldr r5, [sp, #0x2c]
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #0
	bne _08051874
	mov r0, r8
	cmp r0, #0
	ble _0805186C
	movs r0, #7
	ands r0, r6
	movs r1, #0x18
	subs r0, r1, r0
	b _080519DC
_0805186C:
	movs r0, #7
	ands r0, r6
	adds r0, #0x11
	b _080519DC
_08051874:
	cmp r1, #8
	bne _08051894
	ldrb r0, [r4]
	strb r0, [r7]
	mov r1, r8
	cmp r1, #0
	ble _0805188C
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #0x10
	b _080519DC
_0805188C:
	movs r0, #7
	ands r0, r6
	adds r0, #8
	b _080519DC
_08051894:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _080518AA
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x10
	b _080519DC
_080518AA:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #0x10
	b _080519DC
_080518B4:
	cmp r1, #8
	bne _080518D2
	ldrb r0, [r4]
	strb r0, [r7]
	mov r5, r8
	cmp r5, #0
	ble _080518CC
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #8
	b _080519DC
_080518CC:
	movs r0, #7
	ands r0, r6
	b _080519DC
_080518D2:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _080518E8
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #8
	b _080519DC
_080518E8:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #8
	b _080519DC
_080518F2:
	cmp r1, #8
	bne _080519C4
	ldrb r0, [r4]
	strb r0, [r7]
	mov r0, r8
	rsbs r0, r0, #0
	str r0, [sp, #4]
	adds r0, r6, r0
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	ldr r5, [sp, #0x2c]
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #8
	bne _0805198A
	ldrb r0, [r4]
	strb r0, [r7]
	ldr r0, [sp, #4]
	mov r1, r8
	subs r0, r0, r1
	adds r0, r6, r0
	mov r1, sb
	mov r2, sl
	adds r3, r4, #0
	bl _call_via_r5
	adds r1, r0, #0
	cmp r1, #8
	bne _0805194C
	ldrb r0, [r4]
	strb r0, [r7]
	mov r5, r8
	cmp r5, #0
	ble _08051944
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	subs r0, #0x10
	b _080519DC
_08051944:
	movs r0, #7
	ands r0, r6
	subs r0, #0x18
	b _080519DC
_0805194C:
	cmp r1, #0
	bne _0805196A
	mov r0, r8
	cmp r0, #0
	ble _08051962
	movs r0, #7
	ands r0, r6
	movs r1, #9
	rsbs r1, r1, #0
	subs r0, r1, r0
	b _080519DC
_08051962:
	movs r0, #7
	ands r0, r6
	subs r0, #0x10
	b _080519DC
_0805196A:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _08051980
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x10
	b _080519DC
_08051980:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x10
	b _080519DC
_0805198A:
	cmp r1, #0
	bne _080519A4
	mov r1, r8
	cmp r1, #0
	ble _0805199C
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	b _080519DC
_0805199C:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r6
	b _080519DC
_080519A4:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _080519BA
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #8
	b _080519DC
_080519BA:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #8
	b _080519DC
_080519C4:
	ldrb r0, [r4]
	strb r0, [r7]
	cmp r1, #0
	ble _080519D6
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r0, r1, r0
	b _080519DC
_080519D6:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
_080519DC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80519EC
sub_80519EC: @ 0x080519EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov sb, r1
	mov sl, r2
	mov r8, r3
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _08051A0A
	mov r1, sp
	str r1, [sp, #0x24]
_08051A0A:
	mov r5, sp
	adds r5, #1
	adds r0, r6, #0
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	ldr r4, [sp, #0x28]
	bl _call_via_r4
	adds r1, r0, #0
	cmp r1, #0
	beq _08051A24
	b _08051BF8
_08051A24:
	mov r7, r8
	adds r0, r6, r7
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r4
	adds r1, r0, #0
	cmp r1, #0
	beq _08051A3A
	b _08051BB6
_08051A3A:
	lsls r4, r7, #1
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	ldr r7, [sp, #0x28]
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #0
	beq _08051A52
	b _08051B72
_08051A52:
	add r4, r8
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #0
	bne _08051B2E
	add r4, r8
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #0
	bne _08051AEA
	add r4, r8
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #0
	bne _08051AA6
	mov r0, r8
	cmp r0, #0
	ble _08051A9E
	movs r0, #7
	ands r0, r6
	movs r1, #0x30
	subs r0, r1, r0
	b _08051E4C
_08051A9E:
	movs r0, #7
	ands r0, r6
	adds r0, #0x29
	b _08051E4C
_08051AA6:
	cmp r1, #8
	bne _08051AC8
	ldrb r0, [r5]
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	mov r2, r8
	cmp r2, #0
	ble _08051AC0
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #0x28
	b _08051E4C
_08051AC0:
	movs r0, #7
	ands r0, r6
	adds r0, #0x20
	b _08051E4C
_08051AC8:
	ldrb r0, [r5]
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	cmp r1, #0
	ble _08051AE0
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x28
	b _08051E4C
_08051AE0:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #0x28
	b _08051E4C
_08051AEA:
	cmp r1, #8
	bne _08051B0C
	ldrb r0, [r5]
	ldr r7, [sp, #0x24]
	strb r0, [r7]
	mov r0, r8
	cmp r0, #0
	ble _08051B04
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #0x20
	b _08051E4C
_08051B04:
	movs r0, #7
	ands r0, r6
	adds r0, #0x18
	b _08051E4C
_08051B0C:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051B24
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x20
	b _08051E4C
_08051B24:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #0x20
	b _08051E4C
_08051B2E:
	cmp r1, #8
	bne _08051B50
	ldrb r0, [r5]
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	mov r7, r8
	cmp r7, #0
	ble _08051B48
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #0x18
	b _08051E4C
_08051B48:
	movs r0, #7
	ands r0, r6
	adds r0, #0x10
	b _08051E4C
_08051B50:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051B68
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x18
	b _08051E4C
_08051B68:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #0x18
	b _08051E4C
_08051B72:
	cmp r1, #8
	bne _08051B94
	ldrb r0, [r5]
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	mov r7, r8
	cmp r7, #0
	ble _08051B8C
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #0x10
	b _08051E4C
_08051B8C:
	movs r0, #7
	ands r0, r6
	adds r0, #8
	b _08051E4C
_08051B94:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051BAC
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x10
	b _08051E4C
_08051BAC:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #0x10
	b _08051E4C
_08051BB6:
	cmp r1, #8
	bne _08051BD6
	ldrb r0, [r5]
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	mov r7, r8
	cmp r7, #0
	ble _08051BD0
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	adds r0, #8
	b _08051E4C
_08051BD0:
	movs r0, #7
	ands r0, r6
	b _08051E4C
_08051BD6:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051BEE
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #8
	b _08051E4C
_08051BEE:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	adds r0, #8
	b _08051E4C
_08051BF8:
	cmp r1, #8
	beq _08051BFE
	b _08051E32
_08051BFE:
	ldrb r0, [r5]
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	mov r7, r8
	rsbs r4, r7, #0
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	ldr r7, [sp, #0x28]
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #8
	beq _08051C1E
	b _08051DF6
_08051C1E:
	ldrb r0, [r5]
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	mov r2, r8
	subs r4, r4, r2
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #8
	beq _08051C3C
	b _08051DD0
_08051C3C:
	ldrb r0, [r5]
	ldr r7, [sp, #0x24]
	strb r0, [r7]
	mov r0, r8
	subs r4, r4, r0
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	ldr r7, [sp, #0x28]
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #8
	beq _08051C5C
	b _08051D90
_08051C5C:
	ldrb r0, [r5]
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	mov r2, r8
	subs r4, r4, r2
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #8
	bne _08051D50
	ldrb r0, [r5]
	ldr r7, [sp, #0x24]
	strb r0, [r7]
	mov r0, r8
	subs r4, r4, r0
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	ldr r7, [sp, #0x28]
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #8
	bne _08051D10
	ldrb r0, [r5]
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	mov r2, r8
	subs r4, r4, r2
	adds r0, r6, r4
	mov r1, sb
	mov r2, sl
	adds r3, r5, #0
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #8
	bne _08051CD0
	ldrb r0, [r5]
	ldr r4, [sp, #0x24]
	strb r0, [r4]
	mov r7, r8
	cmp r7, #0
	ble _08051CC8
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	subs r0, #0x28
	b _08051E4C
_08051CC8:
	movs r0, #7
	ands r0, r6
	subs r0, #0x30
	b _08051E4C
_08051CD0:
	cmp r1, #0
	bne _08051CEE
	mov r0, r8
	cmp r0, #0
	ble _08051CE6
	movs r0, #7
	ands r0, r6
	movs r1, #0x21
	rsbs r1, r1, #0
	subs r0, r1, r0
	b _08051E4C
_08051CE6:
	movs r0, #7
	ands r0, r6
	subs r0, #0x28
	b _08051E4C
_08051CEE:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051D06
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x28
	b _08051E4C
_08051D06:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x28
	b _08051E4C
_08051D10:
	cmp r1, #0
	bne _08051D2E
	mov r4, r8
	cmp r4, #0
	ble _08051D26
	movs r0, #7
	ands r0, r6
	movs r1, #0x19
	rsbs r1, r1, #0
	subs r0, r1, r0
	b _08051E4C
_08051D26:
	movs r0, #7
	ands r0, r6
	subs r0, #0x20
	b _08051E4C
_08051D2E:
	ldrb r0, [r5]
	ldr r7, [sp, #0x24]
	strb r0, [r7]
	cmp r1, #0
	ble _08051D46
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x20
	b _08051E4C
_08051D46:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x20
	b _08051E4C
_08051D50:
	cmp r1, #0
	bne _08051D6E
	mov r0, r8
	cmp r0, #0
	ble _08051D66
	movs r0, #7
	ands r0, r6
	movs r1, #0x11
	rsbs r1, r1, #0
	subs r0, r1, r0
	b _08051E4C
_08051D66:
	movs r0, #7
	ands r0, r6
	subs r0, #0x18
	b _08051E4C
_08051D6E:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051D86
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x18
	b _08051E4C
_08051D86:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x18
	b _08051E4C
_08051D90:
	cmp r1, #0
	bne _08051DAE
	mov r4, r8
	cmp r4, #0
	ble _08051DA6
_08051D9A:
	movs r0, #7
	ands r0, r6
	movs r1, #9
	rsbs r1, r1, #0
	subs r0, r1, r0
	b _08051E4C
_08051DA6:
	movs r0, #7
	ands r0, r6
	subs r0, #0x10
	b _08051E4C
_08051DAE:
	ldrb r0, [r5]
	ldr r7, [sp, #0x24]
	strb r0, [r7]
	cmp r1, #0
	ble _08051DC6
_08051DB8:
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #0x10
	b _08051E4C
_08051DC6:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x10
	b _08051E4C
_08051DD0:
	cmp r1, #0
	bne _08051DE2
	mov r0, r8
	cmp r0, #0
	bgt _08051D9A
	movs r0, #7
	ands r0, r6
	subs r0, #0x10
	b _08051E4C
_08051DE2:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	bgt _08051DB8
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #0x10
	b _08051E4C
_08051DF6:
	cmp r1, #0
	bne _08051E10
	mov r4, r8
	cmp r4, #0
	ble _08051E08
	movs r0, #7
	ands r0, r6
	mvns r0, r0
	b _08051E4C
_08051E08:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r6
	b _08051E4C
_08051E10:
	ldrb r0, [r5]
	ldr r7, [sp, #0x24]
	strb r0, [r7]
	cmp r1, #0
	ble _08051E28
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r1, r1, r0
	adds r0, r1, #0
	subs r0, #8
	b _08051E4C
_08051E28:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
	subs r0, #8
	b _08051E4C
_08051E32:
	ldrb r0, [r5]
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	cmp r1, #0
	ble _08051E46
	subs r1, #1
	movs r0, #7
	ands r0, r6
	subs r0, r1, r0
	b _08051E4C
_08051E46:
	movs r0, #7
	ands r0, r6
	adds r0, r1, r0
_08051E4C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8051E5C
sub_8051E5C: @ 0x08051E5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	cmp r3, #0
	blt _08051E84
	ldr r0, _08051E80 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r3, #0
	cmp r0, r1
	bls _08051E86
	adds r0, r1, #0
	b _08051E86
	.align 2, 0
_08051E80: .4byte gRefCollision
_08051E84:
	movs r0, #0
_08051E86:
	adds r3, r0, #0
	cmp r4, #0
	blt _08051EA4
	ldr r0, _08051EA0 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	subs r0, #1
	adds r1, r4, #0
	cmp r1, r0
	bls _08051EA6
	adds r1, r0, #0
	b _08051EA6
	.align 2, 0
_08051EA0: .4byte gRefCollision
_08051EA4:
	movs r1, #0
_08051EA6:
	adds r4, r1, #0
	movs r0, #1
	mov r8, r0
	adds r2, r7, #0
	ands r2, r0
	adds r0, r3, #0
	bl sub_80522AC
	adds r5, r0, #0
	ldr r3, _08051F3C @ =0x000003FF
	ands r3, r5
	movs r6, #7
	adds r2, r6, #0
	ands r2, r4
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08051ECE
	subs r2, r6, r2
_08051ECE:
	ldr r0, _08051F40 @ =gRefCollision
	ldr r4, [r0]
	lsls r0, r3, #3
	ldr r1, [r4]
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r1, r2]
	movs r0, #0xf
	ands r2, r0
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08051EF0
	movs r0, #0x10
	rsbs r0, r0, #0
	orrs r2, r0
_08051EF0:
	movs r0, #8
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08051EFA
	movs r2, #8
_08051EFA:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _08051F1C
	lsrs r0, r3, #3
	ldr r1, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08051F1C
	movs r2, #0
_08051F1C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _08051F48
	cmp r2, #8
	beq _08051F44
	cmp r2, #0
	beq _08051F44
	adds r0, r2, #0
	adds r0, #8
	cmp r2, #0
	ble _08051F46
	subs r0, #0x10
	b _08051F46
	.align 2, 0
_08051F3C: .4byte 0x000003FF
_08051F40: .4byte gRefCollision
_08051F44:
	adds r0, r2, #0
_08051F46:
	adds r2, r0, #0
_08051F48:
	adds r0, r2, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8051F54
sub_8051F54: @ 0x08051F54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	cmp r4, #0
	blt _08051F7C
	ldr r0, _08051F78 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	bls _08051F7E
	adds r0, r1, #0
	b _08051F7E
	.align 2, 0
_08051F78: .4byte gRefCollision
_08051F7C:
	movs r0, #0
_08051F7E:
	adds r4, r0, #0
	cmp r3, #0
	blt _08051F9C
	ldr r0, _08051F98 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	subs r1, r0, #1
	adds r0, r3, #0
	cmp r0, r1
	bls _08051F9E
	adds r0, r1, #0
	b _08051F9E
	.align 2, 0
_08051F98: .4byte gRefCollision
_08051F9C:
	movs r0, #0
_08051F9E:
	adds r3, r0, #0
	movs r0, #1
	mov r8, r0
	adds r2, r7, #0
	ands r2, r0
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_80522AC
	adds r5, r0, #0
	ldr r3, _08052024 @ =0x000003FF
	ands r3, r5
	movs r6, #7
	adds r2, r6, #0
	ands r2, r4
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	beq _08051FC8
	subs r2, r6, r2
_08051FC8:
	ldr r0, _08052028 @ =gRefCollision
	ldr r4, [r0]
	lsls r0, r3, #3
	ldr r1, [r4]
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #0
	ldrsb r2, [r1, r2]
	asrs r2, r2, #4
	movs r0, #8
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08051FE4
	movs r2, #8
_08051FE4:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _08052006
	lsrs r0, r3, #3
	ldr r1, [r4, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ands r3, r6
	lsls r1, r3, #1
	asrs r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08052006
	movs r2, #0
_08052006:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08052030
	cmp r2, #8
	beq _0805202C
	cmp r2, #0
	beq _0805202C
	adds r0, r2, #0
	adds r0, #8
	cmp r2, #0
	ble _0805202E
	subs r0, #0x10
	b _0805202E
	.align 2, 0
_08052024: .4byte 0x000003FF
_08052028: .4byte gRefCollision
_0805202C:
	adds r0, r2, #0
_0805202E:
	adds r2, r0, #0
_08052030:
	adds r0, r2, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805203C
sub_805203C: @ 0x0805203C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sl, r3
	cmp r4, #0
	blt _08052068
	ldr r0, _08052064 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	bls _0805206A
	adds r0, r1, #0
	b _0805206A
	.align 2, 0
_08052064: .4byte gRefCollision
_08052068:
	movs r0, #0
_0805206A:
	adds r4, r0, #0
	cmp r5, #0
	blt _08052088
	ldr r0, _08052084 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	subs r0, #1
	adds r1, r5, #0
	cmp r1, r0
	bls _0805208A
	adds r1, r0, #0
	b _0805208A
	.align 2, 0
_08052084: .4byte gRefCollision
_08052088:
	movs r1, #0
_0805208A:
	adds r5, r1, #0
	movs r0, #1
	mov sb, r0
	mov r2, r8
	ands r2, r0
	adds r0, r4, #0
	bl sub_80522AC
	adds r4, r0, #0
	ldr r6, _08052124 @ =0x000003FF
	ands r6, r4
	movs r7, #7
	adds r3, r7, #0
	ands r3, r5
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _080520B2
	subs r3, r7, r3
_080520B2:
	ldr r2, _08052128 @ =gRefCollision
	ldr r5, [r2]
	lsls r0, r6, #3
	ldr r1, [r5]
	adds r0, r0, r3
	adds r1, r1, r0
	movs r3, #0
	ldrsb r3, [r1, r3]
	movs r0, #0xf
	ands r3, r0
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq _080520D4
	movs r0, #0x10
	rsbs r0, r0, #0
	orrs r3, r0
_080520D4:
	movs r0, #8
	rsbs r0, r0, #0
	cmp r3, r0
	bne _080520DE
	movs r3, #8
_080520DE:
	movs r0, #0x80
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08052104
	lsrs r0, r6, #3
	ldr r1, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r7
	lsls r0, r0, #1
	asrs r1, r0
	mov r0, sb
	ands r1, r0
	cmp r1, #0
	beq _08052104
	movs r3, #0
_08052104:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08052130
	cmp r3, #8
	beq _0805212C
	cmp r3, #0
	beq _0805212C
	adds r0, r3, #0
	adds r0, #8
	cmp r3, #0
	ble _0805212E
	subs r0, #0x10
	b _0805212E
	.align 2, 0
_08052124: .4byte 0x000003FF
_08052128: .4byte gRefCollision
_0805212C:
	adds r0, r3, #0
_0805212E:
	adds r3, r0, #0
_08052130:
	ldr r0, [r2]
	ldr r0, [r0, #4]
	adds r0, r0, r6
	ldrb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0805214C
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0805214C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08052166
	cmp r3, #0
	beq _08052162
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08052164
_08052162:
	adds r0, r2, #0
_08052164:
	adds r2, r0, #0
_08052166:
	mov r1, sl
	strb r2, [r1]
	adds r0, r3, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805217C
sub_805217C: @ 0x0805217C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sl, r3
	cmp r5, #0
	blt _080521A8
	ldr r0, _080521A4 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r5, #0
	cmp r0, r1
	bls _080521AA
	adds r0, r1, #0
	b _080521AA
	.align 2, 0
_080521A4: .4byte gRefCollision
_080521A8:
	movs r0, #0
_080521AA:
	adds r5, r0, #0
	cmp r4, #0
	blt _080521C8
	ldr r0, _080521C4 @ =gRefCollision
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	bls _080521CA
	adds r0, r1, #0
	b _080521CA
	.align 2, 0
_080521C4: .4byte gRefCollision
_080521C8:
	movs r0, #0
_080521CA:
	adds r4, r0, #0
	movs r0, #1
	mov sb, r0
	mov r2, r8
	ands r2, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80522AC
	adds r4, r0, #0
	ldr r7, _08052254 @ =0x000003FF
	ands r7, r4
	movs r6, #7
	adds r3, r6, #0
	ands r3, r5
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080521F4
	subs r3, r6, r3
_080521F4:
	ldr r2, _08052258 @ =gRefCollision
	ldr r5, [r2]
	lsls r0, r7, #3
	ldr r1, [r5]
	adds r0, r0, r3
	adds r1, r1, r0
	movs r3, #0
	ldrsb r3, [r1, r3]
	asrs r3, r3, #4
	movs r0, #8
	rsbs r0, r0, #0
	cmp r3, r0
	bne _08052210
	movs r3, #8
_08052210:
	movs r0, #0x80
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08052236
	lsrs r0, r7, #3
	ldr r1, [r5, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r7, #0
	ands r0, r6
	lsls r0, r0, #1
	asrs r1, r0
	mov r0, sb
	ands r1, r0
	cmp r1, #0
	beq _08052236
	movs r3, #0
_08052236:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08052260
	cmp r3, #8
	beq _0805225C
	cmp r3, #0
	beq _0805225C
	adds r0, r3, #0
	adds r0, #8
	cmp r3, #0
	ble _0805225E
	subs r0, #0x10
	b _0805225E
	.align 2, 0
_08052254: .4byte 0x000003FF
_08052258: .4byte gRefCollision
_0805225C:
	adds r0, r3, #0
_0805225E:
	adds r3, r0, #0
_08052260:
	ldr r0, [r2]
	ldr r0, [r0, #4]
	adds r0, r0, r7
	ldrb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08052278
	rsbs r0, r2, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08052278:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08052296
	cmp r3, #0
	beq _08052292
	movs r0, #0x80
	rsbs r0, r0, #0
	subs r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08052294
_08052292:
	adds r0, r2, #0
_08052294:
	adds r2, r0, #0
_08052296:
	mov r1, sl
	strb r2, [r1]
	adds r0, r3, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80522AC
sub_80522AC: @ 0x080522AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r1, #0
	mov sb, r2
	asrs r4, r0, #3
	ldr r5, _080522C8 @ =0x03000400
	ldr r0, [r5]
	cmp r0, r4
	bne _080522CC
	ldr r7, [r5, #8]
	ldr r0, [r5, #4]
	b _080522E4
	.align 2, 0
_080522C8: .4byte 0x03000400
_080522CC:
	adds r0, r4, #0
	movs r1, #0xc
	bl Div
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r4, r1
	str r4, [r5]
	str r0, [r5, #4]
	str r1, [r5, #8]
	adds r7, r1, #0
_080522E4:
	mov r8, r0
	asrs r4, r6, #3
	ldr r6, _080522F8 @ =0x03000410
	ldr r0, [r6]
	cmp r0, r4
	bne _080522FC
	ldr r5, [r6, #8]
	ldr r3, [r6, #4]
	b _08052316
	.align 2, 0
_080522F8: .4byte 0x03000410
_080522FC:
	adds r0, r4, #0
	movs r1, #0xc
	bl Div
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r4, r1
	adds r3, r0, #0
	str r4, [r6]
	str r3, [r6, #4]
	str r1, [r6, #8]
	adds r5, r1, #0
_08052316:
	ldr r0, _08052358 @ =gRefCollision
	ldr r4, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldrh r0, [r4, #0x18]
	muls r0, r3, r0
	add r0, r8
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	lsls r1, r5, #3
	lsls r0, r5, #2
	adds r1, r1, r0
	adds r1, r1, r7
	lsls r3, r2, #8
	lsls r2, r2, #5
	lsls r1, r1, #1
	ldr r0, [r4, #8]
	adds r0, r0, r3
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08052358: .4byte gRefCollision

	thumb_func_start sub_805235C
sub_805235C: @ 0x0805235C
	sub sp, #4
	movs r3, #0
	str r3, [sp]
	ldr r0, _08052384 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08052388 @ =0x03000400
	str r1, [r0, #4]
	ldr r2, _0805238C @ =0x85000003
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08052390 @ =0x03000410
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08052384: .4byte 0x040000D4
_08052388: .4byte 0x03000400
_0805238C: .4byte 0x85000003
_08052390: .4byte 0x03000410

@ Collision (of projectiles with Player?)
	thumb_func_start sub_8052394
sub_8052394: @ 0x08052394
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r3
	ldr r6, [sp, #0x1c]
	cmp r6, #0
	bne _080523A8
	mov r6, sp
_080523A8:
	mov r4, sp
	adds r4, #1
	adds r0, r5, #0
	adds r3, r4, #0
	ldr r7, [sp, #0x20]
	bl _call_via_r7
	adds r1, r0, #0
	cmp r1, #0
	bne _080523D4
	mov r0, r8
	cmp r0, #0
	ble _080523CC
	movs r0, #7
	ands r0, r5
	movs r1, #8
	subs r0, r1, r0
	b _0805240A
_080523CC:
	movs r0, #7
	ands r0, r5
	adds r0, #1
	b _0805240A
_080523D4:
	cmp r1, #8
	bne _080523F2
	ldrb r0, [r4]
	strb r0, [r6]
	mov r7, r8
	cmp r7, #0
	ble _080523EA
	movs r0, #7
	ands r0, r5
	mvns r0, r0
	b _0805240A
_080523EA:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r5
	b _0805240A
_080523F2:
	ldrb r0, [r4]
	strb r0, [r6]
	cmp r1, #0
	ble _08052404
	subs r1, #1
	movs r0, #7
	ands r0, r5
	subs r0, r1, r0
	b _0805240A
_08052404:
	movs r0, #7
	ands r0, r5
	adds r0, r1, r0
_0805240A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8052418
sub_8052418: @ 0x08052418
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	ldr r3, [sp, #0xc]
	bl _call_via_r3
	adds r1, r0, #0
	cmp r1, #0
	bne _08052440
	cmp r5, #0
	ble _08052438
	movs r0, #7
	ands r0, r4
	movs r1, #8
	subs r0, r1, r0
	b _0805246C
_08052438:
	movs r0, #7
	ands r0, r4
	adds r0, #1
	b _0805246C
_08052440:
	cmp r1, #8
	bne _08052458
	cmp r5, #0
	ble _08052450
	movs r0, #7
	ands r0, r4
	mvns r0, r0
	b _0805246C
_08052450:
	movs r0, #8
	rsbs r0, r0, #0
	orrs r0, r4
	b _0805246C
_08052458:
	cmp r1, #0
	ble _08052466
	subs r1, #1
	movs r0, #7
	ands r0, r4
	subs r0, r1, r0
	b _0805246C
_08052466:
	movs r0, #7
	ands r0, r4
	adds r0, r1, r0
_0805246C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8052474
sub_8052474: @ 0x08052474
	push {r4, r5, lr}
	ldr r0, _08052498 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	beq _0805248E
	ldr r0, [r3]
	cmp r0, #0
	bgt _0805249C
_0805248E:
	adds r0, r2, #0
	bl TaskDestroy
	b _0805255C
	.align 2, 0
_08052498: .4byte gCurTask
_0805249C:
	ldr r5, _080524C0 @ =gCamera
	ldr r0, [r3, #0x10]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080524D0
	ldr r2, _080524C4 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080524C8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080524CC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x17
	adds r1, r0, #0
	subs r1, #0xff
	b _080524DE
	.align 2, 0
_080524C0: .4byte gCamera
_080524C4: .4byte gPseudoRandom
_080524C8: .4byte 0x00196225
_080524CC: .4byte 0x3C6EF35F
_080524D0:
	ldr r0, _080524F8 @ =gSineTable
	ldr r1, [r3, #0x14]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x16
_080524DE:
	ldr r0, [r3]
	muls r0, r1, r0
	asrs r2, r0, #0x10
	ldr r0, [r3, #0x10]
	movs r1, #3
	ands r1, r0
	adds r4, r0, #0
	cmp r1, #1
	beq _080524FC
	cmp r1, #2
	beq _08052504
	b _0805250E
	.align 2, 0
_080524F8: .4byte gSineTable
_080524FC:
	cmp r2, #0
	bge _0805250E
	rsbs r2, r2, #0
	b _0805250E
_08052504:
	adds r0, r2, #0
	cmp r2, #0
	bge _0805250C
	rsbs r0, r2, #0
_0805250C:
	rsbs r2, r0, #0
_0805250E:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08052524
	ldr r0, _08052564 @ =gStageData
	adds r0, #0xae
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805253A
_08052524:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0805252E
	strh r2, [r5, #0xc]
_0805252E:
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0805253A
	strh r2, [r5, #0xe]
_0805253A:
	ldr r0, [r3, #0xc]
	cmp r0, #0
	ble _08052544
	subs r0, #1
	str r0, [r3, #0xc]
_08052544:
	ldr r1, [r3]
	cmp r1, #0
	ble _08052550
	ldr r0, [r3, #4]
	subs r0, r1, r0
	str r0, [r3]
_08052550:
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #8]
	adds r0, r0, r1
	ldr r1, _08052568 @ =0x000003FF
	ands r0, r1
	str r0, [r3, #0x14]
_0805255C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052564: .4byte gStageData
_08052568: .4byte 0x000003FF

	thumb_func_start sub_805256C
sub_805256C: @ 0x0805256C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x1c]
	ldr r0, _080525B4 @ =sub_8052474
	ldr r2, _080525B8 @ =0x00000EFF
	ldr r1, _080525BC @ =sub_80525C0
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r1, r2
	str r4, [r1]
	str r5, [r1, #4]
	str r6, [r1, #8]
	movs r2, #0
	str r2, [r1, #0x14]
	mov r2, r8
	str r2, [r1, #0xc]
	str r7, [r1, #0x10]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080525B4: .4byte sub_8052474
_080525B8: .4byte 0x00000EFF
_080525BC: .4byte sub_80525C0

	thumb_func_start sub_80525C0
sub_80525C0: @ 0x080525C0
	push {lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r3, _080525EC @ =gCamera
	ldr r0, [r2, #0x10]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080525DA
	movs r0, #0
	strh r0, [r3, #0xc]
_080525DA:
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080525E8
	movs r0, #0
	strh r0, [r3, #0xe]
_080525E8:
	pop {r0}
	bx r0
	.align 2, 0
_080525EC: .4byte gCamera

	thumb_func_start sub_80525F0
sub_80525F0: @ 0x080525F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _08052668 @ =sub_8052798
	ldr r1, _0805266C @ =0x0000043C
	ldr r2, _08052670 @ =0x0000FFFE
	ldr r3, _08052674 @ =sub_8052C18
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldr r1, _08052678 @ =gCamera
	str r0, [r1, #0x54]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r1, _0805267C @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #1]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r1, r5
	str r1, [r0, #8]
	str r6, [r0, #0xc]
	bl sub_8052D2C
	ldr r0, _08052680 @ =0x03000014
	adds r4, r4, r0
	ldr r0, _08052684 @ =0x06014D80
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08052688 @ =0x000003CD
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08052668: .4byte sub_8052798
_0805266C: .4byte 0x0000043C
_08052670: .4byte 0x0000FFFE
_08052674: .4byte sub_8052C18
_08052678: .4byte gCamera
_0805267C: .4byte 0x0000FFFF
_08052680: .4byte 0x03000014
_08052684: .4byte 0x06014D80
_08052688: .4byte 0x000003CD

	thumb_func_start sub_805268C
sub_805268C: @ 0x0805268C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	asrs r7, r3, #4
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	beq _0805273E
	ldr r6, _08052744 @ =0x7BDE7BDE
	ldr r3, _08052748 @ =0x739C739C
	adds r2, r3, #0
	ands r2, r1
_080526A6:
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r6
	ands r0, r3
	adds r0, r0, r2
	lsrs r0, r0, #1
	adds r1, r1, r0
	lsrs r1, r1, #1
	stm r5!, {r1}
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	bne _080526A6
_0805273E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052744: .4byte 0x7BDE7BDE
_08052748: .4byte 0x739C739C

	thumb_func_start sub_805274C
sub_805274C: @ 0x0805274C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r3, #0
	subs r3, #1
	cmp r0, #0
	beq _08052790
	movs r6, #0x1f
	movs r7, #0x1f
_0805275E:
	ldrh r0, [r4]
	adds r2, r7, #0
	ands r2, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x15
	ands r1, r7
	lsrs r0, r0, #0x1a
	ands r0, r7
	lsrs r2, r2, #1
	ands r2, r6
	lsrs r1, r1, #1
	ands r1, r6
	lsls r1, r1, #5
	orrs r2, r1
	lsrs r0, r0, #1
	ands r0, r6
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r5]
	adds r5, #2
	adds r4, #2
	adds r0, r3, #0
	subs r3, #1
	cmp r0, #0
	bne _0805275E
_08052790:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8052798
sub_8052798: @ 0x08052798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	ldr r0, _080527D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r0, _080527D4 @ =gCamera
	str r0, [sp, #0x68]
	movs r1, #0
	mov sb, r1
	adds r0, r7, #0
	bl sub_8052B84
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080527D8
	movs r0, #1
	strb r0, [r7]
	ldr r1, [sp, #0x68]
	adds r1, #0x69
	strb r0, [r1]
	b _080527E2
	.align 2, 0
_080527D0: .4byte gCurTask
_080527D4: .4byte gCamera
_080527D8:
	mov r2, sb
	strb r2, [r7]
	ldr r0, [sp, #0x68]
	adds r0, #0x69
	strb r2, [r0]
_080527E2:
	ldrb r0, [r7]
	cmp r0, #0
	bne _080527FC
	ldr r0, _080527F8 @ =gFlags
	ldr r1, [r0]
	movs r2, #0x41
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	b _08052B62
	.align 2, 0
_080527F8: .4byte gFlags
_080527FC:
	ldr r0, _08052870 @ =gCamera
	ldr r1, [r0, #4]
	ldrh r0, [r7, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08052874 @ =gStageData
	ldrb r1, [r0, #3]
	mov sl, r0
	add r0, sp, #0xc
	mov r8, r0
	adds r2, r7, #0
	adds r2, #0x3c
	str r2, [sp, #0x6c]
	cmp r1, #4
	bhi _080528B0
	mov r1, sl
	ldr r0, [r1, #0x1c]
	ldr r1, _08052878 @ =0x000001FF
	ands r0, r1
	lsrs r5, r0, #1
	ldr r2, _0805287C @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08052880 @ =gHBlankCopyTarget
	ldr r0, _08052884 @ =0x0400001C
	str r0, [r1]
	ldr r1, _08052888 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0805288C @ =gBgOffsetsHBlankPrimary
	ldr r2, [r0]
	movs r1, #0
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	ldr r3, _08052890 @ =gSineTable
	mov ip, r3
	ldr r6, _08052894 @ =gBgScrollRegs
_0805284C:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r3, r0, #0
	cmp r4, r1
	bge _0805289C
	lsls r0, r1, #1
	adds r0, r5, r0
	lsls r0, r0, #4
	ldr r1, _08052898 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	adds r0, #8
	b _0805289E
	.align 2, 0
_08052870: .4byte gCamera
_08052874: .4byte gStageData
_08052878: .4byte 0x000001FF
_0805287C: .4byte gFlags
_08052880: .4byte gHBlankCopyTarget
_08052884: .4byte 0x0400001C
_08052888: .4byte gHBlankCopySize
_0805288C: .4byte gBgOffsetsHBlankPrimary
_08052890: .4byte gSineTable
_08052894: .4byte gBgScrollRegs
_08052898: .4byte 0x000003FF
_0805289C:
	ldrh r0, [r6, #0xc]
_0805289E:
	strh r0, [r2]
	adds r2, #2
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0805284C
_080528B0:
	mov r2, sl
	ldrb r0, [r2, #9]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08052A28 @ =0x040000D4
	ldr r1, _08052A2C @ =gObjPalette + 0x1F2
	str r1, [r0]
	mov r1, sp
	str r1, [r0, #4]
	ldr r1, _08052A30 @ =0x80000006
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08052A2C @ =gObjPalette + 0x1F2
	subs r1, #0xf2
	str r1, [r0]
	mov r1, r8
	str r1, [r0, #4]
	ldr r1, _08052A34 @ =0x80000010
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, [r2, #8]
	ldr r1, _08052A38 @ =0x00FFFF00
	ands r0, r1
	ldr r1, _08052A3C @ =0x00090400
	cmp r0, r1
	bne _080528F4
	mov r2, sb
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov sb, r0
_080528F4:
	mov r2, sl
	ldrb r0, [r2, #3]
	movs r5, #4
	cmp r0, #6
	beq _08052900
	movs r5, #3
_08052900:
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	lsls r0, r0, #1
	ldr r1, _08052A40 @ =gUnknown_080D1BF6
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r0, [sp, #0x6c]
	bl sub_8052D30
	lsls r0, r5, #0x10
	movs r1, #0
	adds r5, r0, #0
	cmp r5, #0
	ble _0805296A
	ldr r2, _08052A44 @ =gUnknown_080D1BC4
	mov sl, r2
	lsls r6, r4, #1
	ldr r3, _08052A48 @ =gPlayers
	mov sb, r3
_08052932:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #5
	adds r0, #0x3c
	adds r0, r7, r0
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	add r1, sb
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x19
	adds r1, r6, r1
	add r1, sl
	ldrh r1, [r1]
	movs r2, #0x10
	bl sub_8052D30
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	asrs r0, r5, #0x10
	cmp r4, r0
	blt _08052932
_0805296A:
	ldr r1, _08052A4C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bhi _0805299A
	adds r0, r7, #0
	adds r0, #0x7c
	ldr r4, _08052A50 @ =gUnknown_080D1BEC
	ldr r3, _08052A48 @ =gPlayers
	ldrb r2, [r1, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r3
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1b
	adds r1, r1, r4
	ldrh r1, [r1]
	movs r2, #0x10
	bl sub_8052D30
_0805299A:
	ldr r1, _08052A28 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _08052A54 @ =0x0000022E
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08052A30 @ =0x80000006
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r4, _08052A58 @ =gBgPalette
	cmp r0, #0
	bge _080529C0
_080529B8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080529B8
_080529C0:
	ldr r1, _08052A28 @ =0x040000D4
	mov r3, r8
	str r3, [r1]
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r7, r2
	str r0, [r1, #4]
	ldr r0, _08052A34 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080529E6
_080529DE:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080529DE
_080529E6:
	movs r3, #0x8f
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r2, [r7, #0xc]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r4, #0
	bl sub_805268C
	ldr r3, _08052A5C @ =gVBlankCallbacks
	ldr r2, _08052A60 @ =gNumVBlankCallbacks
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _08052A64 @ =sub_8052C54
	str r1, [r0]
	ldr r2, _08052A68 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	movs r0, #4
	ldrsh r2, [r7, r0]
	ldr r3, [sp, #0x68]
	ldr r1, [r3, #4]
	cmp r2, r1
	bgt _08052A6C
	movs r0, #0
	b _08052A7C
	.align 2, 0
_08052A28: .4byte 0x040000D4
_08052A2C: .4byte gObjPalette + 0x1F2
_08052A30: .4byte 0x80000006
_08052A34: .4byte 0x80000010
_08052A38: .4byte 0x00FFFF00
_08052A3C: .4byte 0x00090400
_08052A40: .4byte gUnknown_080D1BF6
_08052A44: .4byte gUnknown_080D1BC4
_08052A48: .4byte gPlayers
_08052A4C: .4byte gStageData
_08052A50: .4byte gUnknown_080D1BEC
_08052A54: .4byte 0x0000022E
_08052A58: .4byte gBgPalette
_08052A5C: .4byte gVBlankCallbacks
_08052A60: .4byte gNumVBlankCallbacks
_08052A64: .4byte sub_8052C54
_08052A68: .4byte gFlags
_08052A6C:
	adds r0, r1, #0
	adds r0, #0xa0
	cmp r2, r0
	bge _08052A7A
	ldrb r0, [r7, #4]
	subs r0, r0, r1
	b _08052A7C
_08052A7A:
	movs r0, #0xff
_08052A7C:
	strb r0, [r7, #2]
	ldrb r0, [r7, #1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9e
	bhi _08052AFA
	adds r5, r7, #0
	adds r5, #0x14
	ldr r0, [sp, #0x68]
	ldr r1, [r0]
	ldr r4, _08052B28 @ =gStageData
	ldr r0, [r4, #0x1c]
	lsrs r0, r0, #2
	adds r1, r1, r0
	movs r0, #7
	ands r1, r0
	rsbs r1, r1, #0
	strh r1, [r5, #0x10]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldrb r0, [r7, #2]
	adds r0, #1
	strh r0, [r5, #0x12]
	mov r8, r0
	ldr r0, [r5, #8]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08052AFA
	add r4, sp, #0x2c
	adds r0, r5, #0
	bl DisplaySprite
	movs r2, #0xf
	adds r1, r4, #0
_08052AD4:
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	strh r6, [r4]
	mov r0, r8
	strh r0, [r4, #2]
	lsls r0, r2, #0x10
	ldr r2, _08052B2C @ =0xFFFF0000
	adds r0, r0, r2
	adds r4, #4
	lsrs r2, r0, #0x10
	cmp r0, #0
	bgt _08052AD4
	adds r0, r5, #0
	movs r2, #0xf
	bl DisplaySprites
_08052AFA:
	ldrb r0, [r7, #2]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9e
	bhi _08052B44
	ldr r2, _08052B30 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08052B34 @ =gIntrTable
	ldr r0, _08052B38 @ =sub_8052CCC
	str r0, [r1, #0xc]
	movs r0, #1
	strh r0, [r2]
	ldr r1, _08052B3C @ =sa2__gUnknown_03002874
	ldrb r0, [r7, #2]
	subs r0, #1
	strb r0, [r1]
	ldr r2, _08052B40 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	b _08052B60
	.align 2, 0
_08052B28: .4byte gStageData
_08052B2C: .4byte 0xFFFF0000
_08052B30: .4byte 0x04000208
_08052B34: .4byte gIntrTable
_08052B38: .4byte sub_8052CCC
_08052B3C: .4byte sa2__gUnknown_03002874
_08052B40: .4byte gFlags
_08052B44:
	ldr r2, _08052B74 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08052B78 @ =gIntrTable
	ldr r0, _08052B7C @ =gIntrTableTemplate
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xc]
	movs r0, #1
	strh r0, [r2]
	ldr r2, _08052B80 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
_08052B60:
	str r0, [r2]
_08052B62:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052B74: .4byte 0x04000208
_08052B78: .4byte gIntrTable
_08052B7C: .4byte gIntrTableTemplate
_08052B80: .4byte gFlags

	thumb_func_start sub_8052B84
sub_8052B84: @ 0x08052B84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r3, _08052BA0 @ =gStageData
	adds r0, r3, #0
	adds r0, #0x84
	ldrb r2, [r0]
	cmp r2, #0
	bne _08052BB2
	b _08052C04
	.align 2, 0
_08052BA0: .4byte gStageData
_08052BA4:
	mov r0, sl
	strh r4, [r0, #4]
	ldrh r0, [r1, #2]
	mov r1, sl
	strh r0, [r1, #6]
	movs r0, #1
	b _08052C06
_08052BB2:
	ldr r1, _08052C14 @ =gCamera
	ldrh r7, [r1]
	adds r0, r7, #0
	adds r0, #0xf0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrh r6, [r1, #4]
	adds r0, r6, #0
	adds r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r3, #0
	adds r0, #0x80
	ldr r1, [r0]
	movs r5, #0
	cmp r5, r2
	bge _08052C04
	mov ip, r2
_08052BDA:
	ldrh r0, [r1]
	ldrh r4, [r1, #2]
	ldrh r2, [r1, #4]
	ldrh r3, [r1, #6]
	cmp r0, sb
	bhs _08052BF2
	cmp r4, r8
	bhs _08052BF2
	cmp r2, r7
	bls _08052BF2
	cmp r3, r6
	bhi _08052BA4
_08052BF2:
	lsls r0, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r1, #8
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, ip
	blt _08052BDA
_08052C04:
	movs r0, #0
_08052C06:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08052C14: .4byte gCamera

	thumb_func_start sub_8052C18
sub_8052C18: @ 0x08052C18
	ldr r2, _08052C40 @ =gFlags
	ldr r0, [r2]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r2, _08052C44 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08052C48 @ =gIntrTable
	ldr r0, _08052C4C @ =gIntrTableTemplate
	ldr r0, [r0, #0xc]
	str r0, [r1, #0xc]
	movs r0, #1
	strh r0, [r2]
	ldr r1, _08052C50 @ =gCamera
	movs r0, #0
	str r0, [r1, #0x54]
	bx lr
	.align 2, 0
_08052C40: .4byte gFlags
_08052C44: .4byte 0x04000208
_08052C48: .4byte gIntrTable
_08052C4C: .4byte gIntrTableTemplate
_08052C50: .4byte gCamera

	thumb_func_start sub_8052C54
sub_8052C54: @ 0x08052C54
	push {r4, lr}
	ldr r0, _08052CAC @ =gCamera
	ldr r0, [r0, #0x54]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	ldrb r3, [r1, #2]
	strb r3, [r1, #1]
	ldr r0, [r1, #8]
	movs r2, #2
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1, #8]
	lsls r3, r3, #0x18
	cmp r3, #0
	bne _08052CA4
	ldr r1, _08052CB0 @ =0x040000D4
	ldr r2, _08052CB4 @ =0x0300023C
	adds r0, r4, r2
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08052CB8 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08052CBC @ =0x0300003C
	adds r0, r4, r2
	str r0, [r1]
	ldr r0, _08052CC0 @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _08052CC4 @ =0x84000078
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08052CC8 @ =gFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
_08052CA4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052CAC: .4byte gCamera
_08052CB0: .4byte 0x040000D4
_08052CB4: .4byte 0x0300023C
_08052CB8: .4byte 0x84000080
_08052CBC: .4byte 0x0300003C
_08052CC0: .4byte 0x05000200
_08052CC4: .4byte 0x84000078
_08052CC8: .4byte gFlags

	thumb_func_start sub_8052CCC
sub_8052CCC: @ 0x08052CCC
	ldr r0, _08052D08 @ =gCamera
	ldr r0, [r0, #0x54]
	ldrh r0, [r0, #6]
	ldr r1, _08052D0C @ =0x0300003C
	adds r2, r0, r1
	ldr r1, _08052D10 @ =0x040000D4
	ldr r3, _08052D14 @ =0x0300023C
	adds r0, r0, r3
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08052D18 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r2, [r1]
	ldr r0, _08052D1C @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _08052D20 @ =0x84000078
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08052D24 @ =gFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08052D28 @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_08052D08: .4byte gCamera
_08052D0C: .4byte 0x0300003C
_08052D10: .4byte 0x040000D4
_08052D14: .4byte 0x0300023C
_08052D18: .4byte 0x84000080
_08052D1C: .4byte 0x05000200
_08052D20: .4byte 0x84000078
_08052D24: .4byte gFlags
_08052D28: .4byte 0x04000202

	thumb_func_start sub_8052D2C
sub_8052D2C: @ 0x08052D2C
	bx lr
	.align 2, 0

	thumb_func_start sub_8052D30
sub_8052D30: @ 0x08052D30
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	ldr r0, _08052D7C @ =gAnimations
	lsrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, [r0]
	ldm r2!, {r1}
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08052D76
	ldr r1, [r2]
	ldr r2, _08052D80 @ =0x040000D4
	ldr r0, _08052D84 @ =gRefSpriteTables
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	str r4, [r2, #4]
	lsrs r0, r3, #1
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08052D88 @ =gFlags
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_08052D76:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052D7C: .4byte gAnimations
_08052D80: .4byte 0x040000D4
_08052D84: .4byte gRefSpriteTables
_08052D88: .4byte gFlags
