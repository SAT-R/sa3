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
	ldr r3, _0804F878 @ =gUnknown_03006230
	strb r6, [r3]
	ldr r0, _0804F87C @ =gUnknown_03003590
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
	bl sub_80BD384
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
_0804F878: .4byte gUnknown_03006230
_0804F87C: .4byte gUnknown_03003590
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
	bl sub_80BD384
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
	bl sub_80BD384
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
	bl sub_80BD384
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
	ldr r3, _0804FA34 @ =gUnknown_03006230
	strb r6, [r3]
	ldr r0, _0804FA38 @ =gUnknown_03003590
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
	bl sub_80BD384
	adds r1, r4, #1
	adds r0, r7, #0
	adds r0, #0x5c
	strh r1, [r0]
	adds r0, r6, #0
	bl sub_80BD384
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
_0804FA34: .4byte gUnknown_03006230
_0804FA38: .4byte gUnknown_03003590
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
	ldr r3, _0804FB44 @ =gUnknown_03006230
	strb r6, [r3]
	ldr r0, _0804FB48 @ =gUnknown_03003590
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
	bl sub_80BD384
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
	bl sub_80BD384
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
_0804FB44: .4byte gUnknown_03006230
_0804FB48: .4byte gUnknown_03003590
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
	ldr r3, _0804FC5C @ =gUnknown_03006230
	strb r6, [r3]
	ldr r0, _0804FC60 @ =gUnknown_03003590
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
	bl sub_80BD384
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
_0804FC5C: .4byte gUnknown_03006230
_0804FC60: .4byte gUnknown_03003590
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
	bl sub_80BD384
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
	bl sub_80BD384
_0804FCBE:
	ldr r0, _0804FCDC @ =gStageData
	ldrb r1, [r0, #3]
	adds r5, r0, #0
	cmp r1, #7
	beq _0804FCE8
	ldr r0, _0804FCE0 @ =gUnknown_03001E80
	ldr r1, _0804FCE4 @ =gUnknown_080D1100
	add r1, sb
	ldr r1, [r1]
	str r1, [r0]
	b _0804FCEE
	.align 2, 0
_0804FCD4: .4byte gTilemaps
_0804FCD8: .4byte gUnknown_03001D80
_0804FCDC: .4byte gStageData
_0804FCE0: .4byte gUnknown_03001E80
_0804FCE4: .4byte gUnknown_080D1100
_0804FCE8:
	ldr r1, _0804FD28 @ =gUnknown_03001E80
	ldr r0, _0804FD2C @ =gUnknown_085D8C64
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
_0804FD28: .4byte gUnknown_03001E80
_0804FD2C: .4byte gUnknown_085D8C64
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
	ldr r3, _0804FD8C @ =gUnknown_03001D76
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
_0804FD8C: .4byte gUnknown_03001D76
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
	bl sub_80BD384
	adds r0, r4, #0
	bl sub_80BDFDC
	adds r4, #0x40
	mov r0, r8
	strh r6, [r0, #8]
	strh r5, [r0, #0xa]
	mov r1, sb
	strh r1, [r4, #0x30]
	mov r0, sl
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_80BD384
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
	bl sub_80BD384
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
	bl sub_80BD384
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
	bl sub_80BD384
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
	ldr r1, _080507C0 @ =gUnknown_03003C5C
	ldr r0, _080507C4 @ =0x0400001C
	str r0, [r1]
	ldr r1, _080507C8 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080507CC @ =gBgOffsetsHBlank
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
_080507C0: .4byte gUnknown_03003C5C
_080507C4: .4byte 0x0400001C
_080507C8: .4byte gUnknown_03003F30
_080507CC: .4byte gBgOffsetsHBlank
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
	ldr r1, _0805099C @ =gUnknown_03003C5C
	ldr r0, _080509A0 @ =0x0400001C
	str r0, [r1]
	ldr r1, _080509A4 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080509A8 @ =gBgOffsetsHBlank
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
_0805099C: .4byte gUnknown_03003C5C
_080509A0: .4byte 0x0400001C
_080509A4: .4byte gUnknown_03003F30
_080509A8: .4byte gBgOffsetsHBlank
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
	ldr r1, _08050AFC @ =gUnknown_03003C5C
	ldr r0, _08050B00 @ =0x04000010
	str r0, [r1]
	ldr r1, _08050B04 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08050B08 @ =gBgOffsetsHBlank
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
_08050AFC: .4byte gUnknown_03003C5C
_08050B00: .4byte 0x04000010
_08050B04: .4byte gUnknown_03003F30
_08050B08: .4byte gBgOffsetsHBlank
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
	ldr r1, _08050C58 @ =gUnknown_03003C5C
	ldr r0, _08050C5C @ =0x04000010
	str r0, [r1]
	ldr r1, _08050C60 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08050C64 @ =gBgOffsetsHBlank
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
_08050C58: .4byte gUnknown_03003C5C
_08050C5C: .4byte 0x04000010
_08050C60: .4byte gUnknown_03003F30
_08050C64: .4byte gBgOffsetsHBlank
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
	bl sub_80BDFDC
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
	ldr r1, _08050E04 @ =gUnknown_03003C5C
	ldr r0, _08050E08 @ =0x0400001C
	str r0, [r1]
	ldr r1, _08050E0C @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08050E10 @ =gBgOffsetsHBlank
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
_08050E04: .4byte gUnknown_03003C5C
_08050E08: .4byte 0x0400001C
_08050E0C: .4byte gUnknown_03003F30
_08050E10: .4byte gBgOffsetsHBlank
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
	ldr r1, _08050FAC @ =gUnknown_03003C5C
	ldr r0, _08050FB0 @ =0x0400001C
	str r0, [r1]
	ldr r1, _08050FB4 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08050FB8 @ =gBgOffsetsHBlank
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
_08050FAC: .4byte gUnknown_03003C5C
_08050FB0: .4byte 0x0400001C
_08050FB4: .4byte gUnknown_03003F30
_08050FB8: .4byte gBgOffsetsHBlank
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
	ldr r1, _08051068 @ =gUnknown_03003C5C
	ldr r0, _0805106C @ =0x04000012
	str r0, [r1]
	ldr r1, _08051070 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08051074 @ =gBgOffsetsHBlank
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
_08051068: .4byte gUnknown_03003C5C
_0805106C: .4byte 0x04000012
_08051070: .4byte gUnknown_03003F30
_08051074: .4byte gBgOffsetsHBlank
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
	bl sub_80BD384
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
	bl sub_80BD384
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
	bl sub_80BD384
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
	ldr r0, _08051E80 @ =gUnknown_03001E80
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r3, #0
	cmp r0, r1
	bls _08051E86
	adds r0, r1, #0
	b _08051E86
	.align 2, 0
_08051E80: .4byte gUnknown_03001E80
_08051E84:
	movs r0, #0
_08051E86:
	adds r3, r0, #0
	cmp r4, #0
	blt _08051EA4
	ldr r0, _08051EA0 @ =gUnknown_03001E80
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	subs r0, #1
	adds r1, r4, #0
	cmp r1, r0
	bls _08051EA6
	adds r1, r0, #0
	b _08051EA6
	.align 2, 0
_08051EA0: .4byte gUnknown_03001E80
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
	ldr r0, _08051F40 @ =gUnknown_03001E80
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
_08051F40: .4byte gUnknown_03001E80
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
	ldr r0, _08051F78 @ =gUnknown_03001E80
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	bls _08051F7E
	adds r0, r1, #0
	b _08051F7E
	.align 2, 0
_08051F78: .4byte gUnknown_03001E80
_08051F7C:
	movs r0, #0
_08051F7E:
	adds r4, r0, #0
	cmp r3, #0
	blt _08051F9C
	ldr r0, _08051F98 @ =gUnknown_03001E80
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	subs r1, r0, #1
	adds r0, r3, #0
	cmp r0, r1
	bls _08051F9E
	adds r0, r1, #0
	b _08051F9E
	.align 2, 0
_08051F98: .4byte gUnknown_03001E80
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
	ldr r0, _08052028 @ =gUnknown_03001E80
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
_08052028: .4byte gUnknown_03001E80
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
	ldr r0, _08052064 @ =gUnknown_03001E80
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	bls _0805206A
	adds r0, r1, #0
	b _0805206A
	.align 2, 0
_08052064: .4byte gUnknown_03001E80
_08052068:
	movs r0, #0
_0805206A:
	adds r4, r0, #0
	cmp r5, #0
	blt _08052088
	ldr r0, _08052084 @ =gUnknown_03001E80
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	subs r0, #1
	adds r1, r5, #0
	cmp r1, r0
	bls _0805208A
	adds r1, r0, #0
	b _0805208A
	.align 2, 0
_08052084: .4byte gUnknown_03001E80
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
	ldr r2, _08052128 @ =gUnknown_03001E80
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
_08052128: .4byte gUnknown_03001E80
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
	ldr r0, _080521A4 @ =gUnknown_03001E80
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	subs r1, r0, #1
	adds r0, r5, #0
	cmp r0, r1
	bls _080521AA
	adds r0, r1, #0
	b _080521AA
	.align 2, 0
_080521A4: .4byte gUnknown_03001E80
_080521A8:
	movs r0, #0
_080521AA:
	adds r5, r0, #0
	cmp r4, #0
	blt _080521C8
	ldr r0, _080521C4 @ =gUnknown_03001E80
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	subs r1, r0, #1
	adds r0, r4, #0
	cmp r0, r1
	bls _080521CA
	adds r0, r1, #0
	b _080521CA
	.align 2, 0
_080521C4: .4byte gUnknown_03001E80
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
	ldr r2, _08052258 @ =gUnknown_03001E80
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
_08052258: .4byte gUnknown_03001E80
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
	ldr r0, _08052358 @ =gUnknown_03001E80
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
_08052358: .4byte gUnknown_03001E80

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
	ldr r1, _08052880 @ =gUnknown_03003C5C
	ldr r0, _08052884 @ =0x0400001C
	str r0, [r1]
	ldr r1, _08052888 @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0805288C @ =gBgOffsetsHBlank
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
_08052880: .4byte gUnknown_03003C5C
_08052884: .4byte 0x0400001C
_08052888: .4byte gUnknown_03003F30
_0805288C: .4byte gBgOffsetsHBlank
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
	ldr r1, _08052A2C @ =gUnknown_03003562
	str r1, [r0]
	mov r1, sp
	str r1, [r0, #4]
	ldr r1, _08052A30 @ =0x80000006
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08052A2C @ =gUnknown_03003562
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
	ldr r3, _08052A5C @ =gUnknown_03002B70
	ldr r2, _08052A60 @ =gUnknown_03006200
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
_08052A2C: .4byte gUnknown_03003562
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
_08052A5C: .4byte gUnknown_03002B70
_08052A60: .4byte gUnknown_03006200
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
	bl sub_80C0CA8
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
	ldr r1, _08052B3C @ =gUnknown_03003C58
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
_08052B3C: .4byte gUnknown_03003C58
_08052B40: .4byte gFlags
_08052B44:
	ldr r2, _08052B74 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _08052B78 @ =gIntrTable
	ldr r0, _08052B7C @ =gUnknown_082B483C
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
_08052B7C: .4byte gUnknown_082B483C
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
	ldr r0, _08052C4C @ =gUnknown_082B483C
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
_08052C4C: .4byte gUnknown_082B483C
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

	thumb_func_start sub_8052D8C
sub_8052D8C: @ 0x08052D8C
	push {r4, r5, r6, r7, lr}
	ldr r5, _08052E1C @ =gStageData
	movs r1, #0
	strb r1, [r5, #6]
	movs r4, #1
	movs r0, #1
	strb r0, [r5, #3]
	strb r1, [r5, #9]
	movs r0, #3
	strb r0, [r5, #0xa]
	strh r0, [r5, #0xe]
	bl sub_800214C
	ldr r0, _08052E20 @ =gPlayers
	mov ip, r0
	mov r7, ip
	adds r7, #0x2b
	ldrb r0, [r7]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r1, r0
	orrs r1, r4
	mov r6, ip
	adds r6, #0x2a
	ldrb r4, [r6]
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r4
	strb r0, [r6]
	movs r4, #0x1d
	rsbs r4, r4, #0
	ands r1, r4
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r7]
	ldr r6, _08052E24 @ =0x0000017B
	add r6, ip
	ldrb r0, [r6]
	ands r3, r0
	movs r1, #0xbd
	lsls r1, r1, #1
	add r1, ip
	ldrb r0, [r1]
	ands r2, r0
	movs r0, #2
	orrs r2, r0
	strb r2, [r1]
	ands r3, r4
	movs r0, #8
	orrs r3, r0
	strb r3, [r6]
	ldr r2, _08052E28 @ =0x000002CB
	add r2, ip
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08052E2C @ =0x0000041B
	add r1, ip
	ldrb r0, [r1]
	ands r4, r0
	strb r4, [r1]
	movs r1, #0xe
	ldrsh r0, [r5, r1]
	movs r1, #0
	bl sub_8002210
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052E1C: .4byte gStageData
_08052E20: .4byte gPlayers
_08052E24: .4byte 0x0000017B
_08052E28: .4byte 0x000002CB
_08052E2C: .4byte 0x0000041B

	thumb_func_start sub_8052E30
sub_8052E30: @ 0x08052E30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08052F18 @ =sub_8052F44
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08052F1C @ =sub_8053080
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r4, r1
	movs r0, #0
	mov sl, r0
	movs r5, #0
	movs r0, #0xe1
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r2, _08052F20 @ =0x03000062
	adds r0, r4, r2
	strh r5, [r0]
	subs r2, #2
	adds r0, r4, r2
	strh r5, [r0]
	strh r5, [r1, #2]
	ldr r0, _08052F24 @ =0x03000004
	adds r7, r4, r0
	ldr r0, _08052F28 @ =0x06013800
	str r0, [r7]
	ldr r2, _08052F2C @ =gUnknown_080D1C30
	ldr r1, _08052F30 @ =gStageData
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	movs r6, #0x78
	strh r6, [r7, #0x10]
	strh r6, [r7, #0x12]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x16]
	ldr r0, _08052F34 @ =0x0000FFFF
	strh r0, [r7, #0x18]
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	mov sb, r2
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r0, #0xf
	strb r0, [r7, #0x1f]
	str r5, [r7, #8]
	subs r2, #0x11
	mov r8, r2
	str r2, [r7, #0x20]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _08052F38 @ =0x0300002C
	adds r7, r4, r0
	movs r0, #0x18
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08052F3C @ =0x00000594
	strh r0, [r7, #0xc]
	strh r6, [r7, #0x10]
	movs r0, #0x60
	strh r0, [r7, #0x12]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x16]
	subs r0, #0x61
	strh r0, [r7, #0x18]
	mov r2, sl
	strb r2, [r7, #0x1a]
	strb r0, [r7, #0x1b]
	mov r0, sb
	strb r0, [r7, #0x1c]
	strb r2, [r7, #0x1f]
	str r5, [r7, #8]
	mov r2, r8
	str r2, [r7, #0x20]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, _08052F40 @ =0x03000054
	adds r4, r4, r0
	strh r5, [r4]
	movs r0, #1
	strh r0, [r4, #2]
	strh r5, [r4, #4]
	movs r0, #0x80
	strh r0, [r4, #6]
	movs r0, #0xbf
	strh r0, [r4, #8]
	strh r5, [r4, #0xa]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052F18: .4byte sub_8052F44
_08052F1C: .4byte sub_8053080
_08052F20: .4byte 0x03000062
_08052F24: .4byte 0x03000004
_08052F28: .4byte 0x06013800
_08052F2C: .4byte gUnknown_080D1C30
_08052F30: .4byte gStageData
_08052F34: .4byte 0x0000FFFF
_08052F38: .4byte 0x0300002C
_08052F3C: .4byte 0x00000594
_08052F40: .4byte 0x03000054

	thumb_func_start sub_8052F44
sub_8052F44: @ 0x08052F44
	push {r4, r5, r6, lr}
	ldr r0, _08052F94 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0x47
	bgt _08052F62
	ldr r2, _08052F98 @ =0x03000054
	adds r0, r6, r2
	bl UpdateScreenFade
_08052F62:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _08052FB4
	ldr r1, _08052F9C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08052FA0 @ =gUnknown_03003F94
	ldr r0, _08052FA4 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08052FA8 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08052FAC @ =gUnknown_03006208
	ldr r0, _08052FB0 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	bl m4aMPlayAllStop
	bl LaunchGameIntro
	b _0805301E
	.align 2, 0
_08052F94: .4byte gCurTask
_08052F98: .4byte 0x03000054
_08052F9C: .4byte 0x0000FFFF
_08052FA0: .4byte gUnknown_03003F94
_08052FA4: .4byte gUnknown_03003D20
_08052FA8: .4byte gUnknown_03006840
_08052FAC: .4byte gUnknown_03006208
_08052FB0: .4byte gUnknown_03003F34
_08052FB4:
	ldr r0, _08052FD4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08052FD8
	bl sub_8003D2C
	bl m4aMPlayAllStop
	bl LaunchTitleScreen
	b _0805301E
	.align 2, 0
_08052FD4: .4byte gPressedKeys
_08052FD8:
	ldr r0, _08053024 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _08053012
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r0, #0x5a
	ble _08052FEA
	strh r1, [r5, #2]
_08052FEA:
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #0x1d
	ble _08053002
	ldr r2, _08053028 @ =0x03000004
	adds r4, r6, r2
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08053002:
	ldr r0, _0805302C @ =0x0300002C
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08053012:
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
_0805301E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053024: .4byte gStageData
_08053028: .4byte 0x03000004
_0805302C: .4byte 0x0300002C

	thumb_func_start sub_8053030
sub_8053030: @ 0x08053030
	push {r4, lr}
	sub sp, #4
	ldr r0, _08053078 @ =sub_8053094
	movs r2, #0x80
	lsls r2, r2, #5
	movs r4, #0
	str r4, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	movs r2, #0x96
	lsls r2, r2, #2
	strh r2, [r1]
	ldr r1, _0805307C @ =0x03000004
	adds r0, r0, r1
	strh r4, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	movs r1, #0x80
	strh r1, [r0, #6]
	movs r1, #0xff
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	bl ScreenFadeUpdateValues
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08053078: .4byte sub_8053094
_0805307C: .4byte 0x03000004

	thumb_func_start sub_8053080
sub_8053080: @ 0x08053080
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8053094
sub_8053094: @ 0x08053094
	push {r4, lr}
	ldr r0, _080530B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
	ldrh r0, [r1]
	movs r3, #0
	ldrsh r4, [r1, r3]
	cmp r4, #0
	beq _080530B8
	subs r0, #1
	strh r0, [r1]
	b _080530FC
	.align 2, 0
_080530B4: .4byte gCurTask
_080530B8:
	ldr r1, _08053104 @ =0x03000004
	adds r0, r2, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080530FC
	ldr r0, _08053108 @ =gPlayers
	bl sub_8004F9C
	bl sub_8003D2C
	ldr r1, _0805310C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08053110 @ =gUnknown_03003F94
	ldr r0, _08053114 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08053118 @ =gUnknown_03006840
	strb r4, [r0]
	ldr r1, _0805311C @ =gUnknown_03006208
	ldr r0, _08053120 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08053124 @ =gStageData
	ldrb r1, [r0, #9]
	movs r0, #7
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80A872C
_080530FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08053104: .4byte 0x03000004
_08053108: .4byte gPlayers
_0805310C: .4byte 0x0000FFFF
_08053110: .4byte gUnknown_03003F94
_08053114: .4byte gUnknown_03003D20
_08053118: .4byte gUnknown_03006840
_0805311C: .4byte gUnknown_03006208
_08053120: .4byte gUnknown_03003F34
_08053124: .4byte gStageData

	thumb_func_start sub_8053128
sub_8053128: @ 0x08053128
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _08053168 @ =sub_8053904
	movs r1, #0x88
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	mov r8, r3
	str r3, [sp]
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	cmp r1, #1
	bne _08053170
	ldr r2, _0805316C @ =0x0300021C
	adds r0, r3, r2
	strb r1, [r0]
	lsls r5, r7, #0x10
	b _08053190
	.align 2, 0
_08053168: .4byte sub_8053904
_0805316C: .4byte 0x0300021C
_08053170:
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #1
	bne _08053188
	ldr r0, _08053184 @ =0x0300021C
	adds r1, r3, r0
	movs r0, #2
	strb r0, [r1]
	b _08053190
	.align 2, 0
_08053184: .4byte 0x0300021C
_08053188:
	ldr r1, _08053260 @ =0x0300021C
	adds r0, r3, r1
	mov r2, r8
	strb r2, [r0]
_08053190:
	adds r0, r4, #0
	bl sub_8053440
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	asrs r2, r5, #0x10
	adds r0, r4, #0
	bl sub_80534DC
	adds r0, r4, #0
	bl sub_805365C
	movs r3, #0xb2
	lsls r3, r3, #1
	adds r0, r4, r3
	movs r3, #0
	strh r3, [r0]
	movs r0, #0xb3
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x8c
	strh r0, [r1]
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r3, [r0]
	movs r2, #0xb5
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r3, [r0]
	adds r1, #4
	adds r0, r4, r1
	strh r3, [r0]
	adds r2, #4
	adds r0, r4, r2
	strh r3, [r0]
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x30
	strh r0, [r1]
	adds r2, #4
	adds r1, r4, r2
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #0xba
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _08053264 @ =0x0000FFF0
	strh r0, [r1]
	movs r1, #0xbb
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r3, [r0]
	adds r2, #6
	adds r0, r4, r2
	strh r3, [r0]
	adds r1, #4
	adds r0, r4, r1
	strb r6, [r0]
	adds r2, #3
	adds r0, r4, r2
	strb r7, [r0]
	subs r1, #0x2a
	adds r0, r4, r1
	strh r3, [r0]
	adds r1, #2
	adds r2, r4, r1
	movs r1, #2
	strh r1, [r2]
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r3, [r1]
	movs r1, #0xab
	lsls r1, r1, #1
	adds r2, r4, r1
	movs r1, #0x80
	strh r1, [r2]
	adds r1, #0xd8
	adds r2, r4, r1
	movs r1, #0xbf
	strh r1, [r2]
	movs r2, #0xad
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r3, [r1]
	bl ScreenFadeUpdateValues
	ldr r0, _08053268 @ =gStageData
	adds r2, r0, #0
	adds r2, #0xae
	ldr r1, _0805326C @ =gUnknown_080D1A40
	ldrh r0, [r0, #0xe]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	bhi _08053270
	movs r0, #0x56
	bl m4aSongNumStart
	b _08053276
	.align 2, 0
_08053260: .4byte 0x0300021C
_08053264: .4byte 0x0000FFF0
_08053268: .4byte gStageData
_0805326C: .4byte gUnknown_080D1A40
_08053270:
	movs r0, #0x57
	bl m4aSongNumStart
_08053276:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8053284
sub_8053284: @ 0x08053284
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08053304 @ =sub_8054EB8
	movs r1, #0xa9
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08053308 @ =sub_805332C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	ldr r2, _0805330C @ =0x03000290
	adds r0, r1, r2
	movs r3, #0
	strh r3, [r0]
	ldr r0, _08053310 @ =0x03000292
	adds r2, r1, r0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2]
	ldr r0, _08053314 @ =0x03000294
	adds r2, r1, r0
	movs r0, #0x50
	strh r0, [r2]
	ldr r2, _08053318 @ =0x03000296
	adds r1, r1, r2
	movs r0, #0xf0
	strh r0, [r1]
	movs r6, #1
	movs r5, #1
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r3, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #6]
	movs r0, #0xbf
	strh r0, [r4, #8]
	strh r3, [r4, #0xa]
	ldr r0, _0805331C @ =0x00007FFF
	bl sub_80C4C0C
	ldr r1, _08053320 @ =gBgPalette
	strh r0, [r1]
	ldr r1, _08053324 @ =gFlags
	ldr r0, [r1]
	orrs r0, r5
	str r0, [r1]
	adds r0, r4, #0
	bl sub_8055614
	ldr r0, _08053328 @ =gStageData
	adds r0, #0x85
	strb r6, [r0]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053304: .4byte sub_8054EB8
_08053308: .4byte sub_805332C
_0805330C: .4byte 0x03000290
_08053310: .4byte 0x03000292
_08053314: .4byte 0x03000294
_08053318: .4byte 0x03000296
_0805331C: .4byte 0x00007FFF
_08053320: .4byte gBgPalette
_08053324: .4byte gFlags
_08053328: .4byte gStageData

	thumb_func_start sub_805332C
sub_805332C: @ 0x0805332C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r0, #0
_0805333C:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #2
	ble _0805333C
	movs r0, #0
	adds r6, r5, #0
	adds r6, #0x84
	adds r7, r5, #0
	adds r7, #0xd4
	movs r1, #0xfc
	adds r1, r1, r5
	mov r8, r1
_0805336E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r6, r0
	ldr r0, [r0]
	bl VramFree
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #1
	ble _0805336E
	ldr r0, [r7]
	bl VramFree
	movs r0, #0
_08053394:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	add r0, r8
	ldr r0, [r0]
	bl VramFree
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #6
	ble _08053394
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	ldr r0, _080533F0 @ =gStageData
	ldrb r0, [r0, #3]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080533E4
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
_080533E4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080533F0: .4byte gStageData

	thumb_func_start sub_80533F4
sub_80533F4: @ 0x080533F4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0805343C @ =sub_8055DA8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0
	str r5, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	strh r4, [r0, #0xc]
	strb r1, [r0, #0xe]
	strh r5, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805343C: .4byte sub_8055DA8

	thumb_func_start sub_8053440
sub_8053440: @ 0x08053440
	push {r4, lr}
	mov ip, r0
	movs r0, #0x88
	lsls r0, r0, #1
	add r0, ip
	ldr r2, _080534C0 @ =gDispCnt
	movs r1, #0x42
	strh r1, [r2]
	ldr r2, _080534C4 @ =gBgCntRegs
	movs r4, #0
	movs r3, #0
	ldr r1, _080534C8 @ =0x00000F06
	strh r1, [r2, #2]
	ldr r1, _080534CC @ =0x00006381
	strh r1, [r2, #4]
	ldr r1, _080534D0 @ =gBgScrollRegs
	strh r3, [r1]
	strh r3, [r1, #2]
	movs r2, #0x10
	strh r2, [r1, #4]
	movs r2, #0x74
	strh r2, [r1, #6]
	strh r3, [r1, #8]
	strh r3, [r1, #0xa]
	strh r3, [r1, #0xc]
	strh r3, [r1, #0xe]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r1, _080534D4 @ =0x06001800
	str r1, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	movs r1, #0xd3
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	movs r1, #0x9d
	lsls r1, r1, #1
	add r1, ip
	strb r4, [r1]
	ldr r1, _080534D8 @ =0x0000013B
	add r1, ip
	strb r4, [r1]
	movs r1, #0x9e
	lsls r1, r1, #1
	add r1, ip
	strb r4, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	strh r3, [r0, #0x30]
	strh r3, [r0, #0x32]
	bl sub_80BD384
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080534C0: .4byte gDispCnt
_080534C4: .4byte gBgCntRegs
_080534C8: .4byte 0x00000F06
_080534CC: .4byte 0x00006381
_080534D0: .4byte gBgScrollRegs
_080534D4: .4byte 0x06001800
_080534D8: .4byte 0x0000013B

	thumb_func_start sub_80534DC
sub_80534DC: @ 0x080534DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r5, r7, #0
	adds r6, r5, #0
	adds r6, #0xd0
	ldr r0, _0805363C @ =0x06010000
	str r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sl, r0
	mov r4, sl
	movs r3, #0x20
	orrs r4, r3
	str r4, [r5, #8]
	ldr r0, _08053640 @ =gUnknown_080D1C48
	mov r8, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xc
	adds r0, r1, r0
	ldrh r0, [r0]
	movs r3, #0
	mov ip, r3
	strh r0, [r5, #0xc]
	movs r0, #0x42
	strh r0, [r5, #0x10]
	movs r0, #0x8c
	strh r0, [r5, #0x12]
	movs r3, #0x80
	lsls r3, r3, #3
	strh r3, [r5, #0x14]
	mov r0, ip
	strh r0, [r5, #0x16]
	ldr r0, _08053644 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	ldr r3, _08053648 @ =gUnknown_080D1C4A
	adds r1, r1, r3
	ldrh r0, [r1]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r5, #0x1c]
	movs r3, #0
	strb r3, [r5, #0x1f]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r5, #0x20]
	str r3, [r5, #0x28]
	mov r0, ip
	strh r0, [r6]
	ldr r0, _0805364C @ =0x0000FFC0
	strh r0, [r6, #2]
	movs r0, #0x40
	strh r0, [r6, #4]
	ldrh r0, [r5, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r6, #8]
	adds r5, #0x28
	adds r6, r7, #0
	adds r6, #0xdc
	ldr r0, _08053650 @ =0x06010800
	str r0, [r7, #0x28]
	movs r0, #0x21
	mov r1, sl
	orrs r0, r1
	str r0, [r5, #8]
	lsls r2, r2, #0x10
	asrs r2, r2, #0xc
	mov r1, r8
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	movs r0, #0x30
	strh r0, [r5, #0x10]
	movs r0, #0x8c
	strh r0, [r5, #0x12]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	mov r1, ip
	strh r1, [r5, #0x16]
	adds r1, r3, #0
	mov r0, sp
	strh r1, [r0]
	adds r0, r3, #0
	strh r0, [r5, #0x18]
	ldr r0, _08053648 @ =gUnknown_080D1C4A
	adds r2, r2, r0
	ldrh r0, [r2]
	strb r0, [r5, #0x1a]
	adds r2, r1, #0
	adds r0, r3, #0
	strb r0, [r5, #0x1b]
	mov r0, sb
	strb r0, [r5, #0x1c]
	movs r0, #1
	strb r0, [r5, #0x1f]
	str r3, [r5, #0x20]
	str r3, [r5, #0x28]
	mov r1, ip
	strh r1, [r6]
	ldr r0, _08053654 @ =0x0000FFE0
	strh r0, [r6, #2]
	movs r0, #0x20
	strh r0, [r6, #4]
	ldrh r0, [r5, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r6, #8]
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805362A
	adds r5, #0xc0
	ldr r0, _08053658 @ =0x06014000
	str r0, [r5]
	mov r0, sl
	str r0, [r5, #8]
	ldrb r0, [r1]
	subs r0, #1
	orrs r0, r4
	str r0, [r5, #8]
	mov r0, r8
	adds r0, #0x50
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrb r0, [r1]
	movs r1, #0x42
	cmp r0, #1
	beq _080535F6
	movs r1, #0x30
_080535F6:
	strh r1, [r5, #0x10]
	movs r1, #0x8c
	strh r1, [r5, #0x12]
	movs r4, #0x80
	lsls r4, r4, #3
	strh r4, [r5, #0x14]
	mov r0, ip
	strh r0, [r5, #0x16]
	ldrh r0, [r5, #0x18]
	mov r1, sp
	ldrh r1, [r1]
	orrs r0, r1
	strh r0, [r5, #0x18]
	mov r0, r8
	adds r0, #0x52
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	ldrb r0, [r5, #0x1b]
	orrs r0, r2
	strb r0, [r5, #0x1b]
	mov r4, sb
	strb r4, [r5, #0x1c]
	movs r0, #0
	strb r0, [r5, #0x1f]
	str r3, [r5, #0x20]
	str r3, [r5, #0x28]
_0805362A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805363C: .4byte 0x06010000
_08053640: .4byte gUnknown_080D1C48
_08053644: .4byte 0x0000FFFF
_08053648: .4byte gUnknown_080D1C4A
_0805364C: .4byte 0x0000FFC0
_08053650: .4byte 0x06010800
_08053654: .4byte 0x0000FFE0
_08053658: .4byte 0x06014000

	thumb_func_start sub_805365C
sub_805365C: @ 0x0805365C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	mov r4, sp
	mov r0, sp
	movs r1, #0
	movs r2, #0x10
	bl memset
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4]
	strh r0, [r4, #6]
	movs r0, #0xa0
	lsls r0, r0, #4
	bl EwramMalloc
	movs r2, #0xae
	lsls r2, r2, #1
	adds r1, r6, r2
	str r0, [r1]
	adds r4, r0, #0
	movs r5, #0
_0805368A:
	mov r0, sp
	adds r1, r4, #0
	movs r2, #8
	bl CpuSet
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0805368A
	movs r0, #0x80
	lsls r0, r0, #3
	bl EwramMalloc
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r6, r2
	str r0, [r1]
	movs r5, #0
_080536B8:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	lsls r5, r4, #2
	adds r5, r5, r0
	lsls r1, r4, #4
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r0, #0x80
	lsls r0, r0, #0xd
	bl __divsi3
	str r0, [r5]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xff
	ble _080536B8
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80536F0
sub_80536F0: @ 0x080536F0
	push {r4, r5, r6, lr}
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r2, r0, r1
	movs r4, #0
	movs r3, #0
	ldr r6, _08053744 @ =0x00000545
	movs r5, #1
	rsbs r5, r5, #0
_08053702:
	str r3, [r2]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r2, #8]
	strh r6, [r2, #0xc]
	strh r3, [r2, #0x10]
	strh r3, [r2, #0x12]
	strh r3, [r2, #0x14]
	strh r3, [r2, #0x16]
	ldr r0, _08053748 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	strb r4, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r3, [r2, #0x1f]
	str r5, [r2, #0x20]
	str r5, [r2, #0x28]
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r2, #0x28
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08053702
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053744: .4byte 0x00000545
_08053748: .4byte 0x0000FFFF

	thumb_func_start sub_805374C
sub_805374C: @ 0x0805374C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0805380C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	ldr r1, _08053810 @ =gUnknown_03003F30
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08053814 @ =gUnknown_03003C5C
	ldr r0, _08053818 @ =0x04000020
	str r0, [r1]
	ldr r1, _0805381C @ =gBgOffsetsHBlank
	ldr r2, _08053820 @ =0x0300015C
	adds r0, r3, r2
	ldr r5, [r0]
	str r5, [r1]
	ldr r2, _08053824 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r4, _08053828 @ =0x03000168
	adds r2, r3, r4
	ldr r1, _0805382C @ =0x0300016E
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r4, [r2]
	adds r0, r0, r4
	ldr r1, _08053830 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08053834 @ =0x0300016A
	adds r2, r3, r0
	ldr r1, _08053838 @ =0x03000170
	adds r0, r3, r1
	ldrh r0, [r0]
	ldrh r4, [r2]
	adds r0, r0, r4
	ldr r1, _0805383C @ =0x000007FF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08053840 @ =0x03000176
	adds r1, r3, r0
	ldr r2, _08053844 @ =0x03000172
	adds r0, r3, r2
	ldrh r0, [r0]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	ldr r0, _08053848 @ =0x03000178
	adds r2, r3, r0
	ldr r4, _0805384C @ =0x03000174
	adds r0, r3, r4
	ldrh r0, [r0]
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	ldr r4, _08053850 @ =gBgScrollRegs
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	movs r1, #0xff
	ands r0, r1
	strh r0, [r4]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ands r0, r1
	strh r0, [r4, #2]
	movs r1, #0
	ldr r0, _08053854 @ =0x03000166
	adds r6, r3, r0
	ldr r2, _08053858 @ =0x03000160
	adds r2, r2, r3
	mov ip, r2
	ldr r4, _08053834 @ =0x0300016A
	adds r4, r4, r3
	mov sb, r4
_080537F4:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r3, #0
	ldrsh r0, [r6, r3]
	subs r0, r2, r0
	adds r7, r1, #0
	cmp r0, #0
	blt _0805385C
	ldrh r0, [r6]
	subs r0, r2, r0
	b _08053860
	.align 2, 0
_0805380C: .4byte gCurTask
_08053810: .4byte gUnknown_03003F30
_08053814: .4byte gUnknown_03003C5C
_08053818: .4byte 0x04000020
_0805381C: .4byte gBgOffsetsHBlank
_08053820: .4byte 0x0300015C
_08053824: .4byte gFlags
_08053828: .4byte 0x03000168
_0805382C: .4byte 0x0300016E
_08053830: .4byte 0x00000FFF
_08053834: .4byte 0x0300016A
_08053838: .4byte 0x03000170
_0805383C: .4byte 0x000007FF
_08053840: .4byte 0x03000176
_08053844: .4byte 0x03000172
_08053848: .4byte 0x03000178
_0805384C: .4byte 0x03000174
_08053850: .4byte gBgScrollRegs
_08053854: .4byte 0x03000166
_08053858: .4byte 0x03000160
_0805385C:
	ldrh r0, [r6]
	subs r0, r0, r2
_08053860:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	mov r4, ip
	ldr r2, [r4]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	muls r1, r0, r1
	lsls r1, r1, #1
	mov r2, sb
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r7, #0x10
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r1, r0
	bge _080538A0
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _080538B0
	ldr r1, _0805389C @ =0xFFFF8000
	adds r0, r4, r1
	b _080538AC
	.align 2, 0
_0805389C: .4byte 0xFFFF8000
_080538A0:
	lsls r0, r4, #0x10
	cmp r0, #0
	blt _080538B0
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r4, r2
_080538AC:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080538B0:
	lsls r2, r3, #0x10
	mov r3, ip
	ldr r0, [r3]
	asrs r2, r2, #0xe
	adds r0, r2, r0
	ldr r0, [r0]
	lsrs r0, r0, #2
	strh r0, [r5]
	ldr r0, [r3]
	adds r2, r2, r0
	movs r0, #0xb2
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	muls r1, r0, r1
	lsrs r1, r1, #2
	movs r0, #0xb4
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	strh r1, [r5, #8]
	strh r4, [r5, #0xc]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r7, r4
	adds r5, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	bgt _080538F6
	b _080537F4
_080538F6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8053904
sub_8053904: @ 0x08053904
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0805393C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r1, _08053940 @ =gDispCnt
	ldr r2, _08053944 @ =0x00001441
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08053948 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _0805394C
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805394C
	bl sub_802613C
	b _08053B00
	.align 2, 0
_0805393C: .4byte gCurTask
_08053940: .4byte gDispCnt
_08053944: .4byte 0x00001441
_08053948: .4byte gStageData
_0805394C:
	bl sub_805374C
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x13
	cmp r1, #0xb
	bgt _0805398C
	movs r0, #0xb3
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	adds r1, r4, #0
	adds r1, #0xd8
	strh r0, [r1]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x13
	ldrh r2, [r2]
	adds r1, r1, r2
	asrs r0, r0, #0x14
	subs r1, r1, r0
	strh r1, [r4, #0x3a]
	adds r0, r4, #0
	adds r0, #0xe4
	strh r1, [r0]
_0805398C:
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r0, #0x60
	subs r1, r0, r1
	asrs r2, r1, #2
	movs r0, #0x82
	subs r0, r0, r2
	asrs r2, r1, #1
	subs r0, r0, r2
	asrs r1, r1, #3
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	movs r1, #0xd6
	adds r1, r1, r4
	mov sl, r1
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r1, #0x60
	subs r0, r1, r0
	asrs r0, r0, #2
	subs r1, r1, r0
	strh r1, [r4, #0x38]
	adds r2, r4, #0
	adds r2, #0xe2
	str r2, [sp]
	strh r1, [r2]
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, #0x40
	rsbs r0, r0, #0
	adds r7, r4, #0
	adds r7, #0xd2
	strh r0, [r7]
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, #0x40
	adds r6, r4, #0
	adds r6, #0xd4
	strh r0, [r6]
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, #0x20
	rsbs r0, r0, #0
	movs r1, #0xde
	adds r1, r1, r4
	mov sb, r1
	strh r0, [r1]
	ldrh r0, [r5]
	lsls r0, r0, #1
	adds r0, #0x20
	movs r2, #0xe0
	adds r2, r2, r4
	mov r8, r2
	strh r0, [r2]
	bl sub_8054514
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r4, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08053B00
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0x5f
	ble _08053B00
	movs r0, #0
	strh r0, [r5]
	movs r1, #0xb7
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0
	strh r2, [r0]
	subs r1, #0xa
	adds r0, r4, r1
	strh r2, [r0]
	movs r2, #0xb3
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #0x8c
	strh r0, [r1]
	ldr r5, _08053B10 @ =gUnknown_080D1C48
	adds r0, #0xee
	adds r1, r4, r0
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r1, r5, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r4, #0x1a]
	ldr r0, [r4, #8]
	movs r2, #0x20
	mov ip, r2
	orrs r0, r2
	str r0, [r4, #8]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r7]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6]
	movs r0, #0x82
	mov r2, sl
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0xd8
	movs r2, #0x96
	strh r2, [r0]
	ldr r0, _08053B14 @ =0x0000017B
	adds r3, r4, r0
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r4, #0x34]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	movs r1, #0x21
	orrs r0, r1
	str r0, [r4, #0x30]
	ldr r0, _08053B18 @ =0x0000FF20
	mov r1, sb
	strh r0, [r1]
	movs r0, #0xe0
	mov r1, r8
	strh r0, [r1]
	movs r1, #0x60
	ldr r0, [sp]
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xe4
	strh r2, [r0]
	movs r2, #0x87
	lsls r2, r2, #2
	adds r3, r4, r2
	ldrb r0, [r3]
	cmp r0, #0
	beq _08053AE8
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf4
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r0, [r0]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r2, r4, r1
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0xf0
	ldr r1, [r2]
	mov r0, ip
	orrs r1, r0
	ldrb r0, [r3]
	subs r0, #1
	orrs r1, r0
	str r1, [r2]
_08053AE8:
	ldr r1, _08053B1C @ =gBldRegs
	movs r0, #0x91
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #2]
	movs r2, #0
	strh r2, [r1, #4]
	ldr r0, _08053B20 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08053B24 @ =sub_8053B28
	str r0, [r1, #8]
_08053B00:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053B10: .4byte gUnknown_080D1C48
_08053B14: .4byte 0x0000017B
_08053B18: .4byte 0x0000FF20
_08053B1C: .4byte gBldRegs
_08053B20: .4byte gCurTask
_08053B24: .4byte sub_8053B28

	thumb_func_start sub_8053B28
sub_8053B28: @ 0x08053B28
	push {r4, lr}
	ldr r0, _08053B50 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08053B54 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08053B58
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053B58
	bl sub_802613C
	b _08053B9C
	.align 2, 0
_08053B50: .4byte gCurTask
_08053B54: .4byte gStageData
_08053B58:
	bl sub_805374C
	movs r0, #0xb3
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, #0xa
	strh r0, [r4, #0x12]
	adds r1, r4, #0
	adds r1, #0xd8
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #5
	strh r0, [r4, #0x3a]
	adds r1, #0xc
	strh r0, [r1]
	bl sub_8054514
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _08053B9C
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08053BA4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08053BA8 @ =sub_8053BAC
	str r0, [r1, #8]
_08053B9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08053BA4: .4byte gCurTask
_08053BA8: .4byte sub_8053BAC

	thumb_func_start sub_8053BAC
sub_8053BAC: @ 0x08053BAC
	push {r4, r5, lr}
	ldr r0, _08053BD4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08053BD8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08053BDC
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053BDC
	bl sub_802613C
	b _08053C5E
	.align 2, 0
_08053BD4: .4byte gCurTask
_08053BD8: .4byte gStageData
_08053BDC:
	bl sub_805374C
	movs r0, #0xb9
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x10
	strh r0, [r1]
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r5, r4, r1
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r1, r2, #0
	subs r1, r1, r0
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	bgt _08053C2E
	ldr r1, _08053C64 @ =gSineTable
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0x8c
	movs r2, #0xb3
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1]
_08053C2E:
	movs r0, #0xb3
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, #0xa
	strh r0, [r4, #0x12]
	adds r1, r4, #0
	adds r1, #0xd8
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #5
	strh r0, [r4, #0x3a]
	adds r1, #0xc
	strh r0, [r1]
	bl sub_8054514
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0x3f
	ble _08053C5E
	ldr r0, _08053C68 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08053C6C @ =sub_8053C70
	str r0, [r1, #8]
_08053C5E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053C64: .4byte gSineTable
_08053C68: .4byte gCurTask
_08053C6C: .4byte sub_8053C70

	thumb_func_start sub_8053C70
sub_8053C70: @ 0x08053C70
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08053C9C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _08053CA0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08053CA4
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053CA4
	bl sub_802613C
	b _08053DD2
	.align 2, 0
_08053C9C: .4byte gCurTask
_08053CA0: .4byte gStageData
_08053CA4:
	bl sub_805374C
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r4, r5, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r0, #0x40
	asrs r0, r0, #2
	adds r0, #0x10
	movs r2, #0xb9
	lsls r2, r2, #1
	adds r1, r5, r2
	strh r0, [r1]
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r0, #0x40
	asrs r0, r0, #1
	subs r0, #0x30
	adds r2, #2
	adds r1, r5, r2
	strh r0, [r1]
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	subs r0, #0x3f
	movs r1, #0xb7
	lsls r1, r1, #1
	adds r1, r1, r5
	mov sb, r1
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r4, r2]
	subs r0, #0x40
	asrs r0, r0, #1
	movs r1, #0x30
	subs r1, r1, r0
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r0, r0, r5
	mov r8, r0
	strh r1, [r0]
	movs r1, #0xb3
	lsls r1, r1, #1
	adds r2, r5, r1
	ldrh r0, [r2]
	adds r0, #0xa
	strh r0, [r5, #0x12]
	adds r1, r5, #0
	adds r1, #0xd8
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #5
	strh r0, [r5, #0x3a]
	adds r1, #0xc
	strh r0, [r1]
	bl sub_8054514
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x7f
	ble _08053DD2
	ldr r6, _08053DE0 @ =gUnknown_080D1C48
	movs r0, #0xbd
	lsls r0, r0, #1
	adds r1, r5, r0
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r4, r6, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r3, r6, #6
	adds r0, r0, r3
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	ldr r0, [r5, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r7, #0x80
	lsls r7, r7, #3
	orrs r0, r7
	str r0, [r5, #8]
	movs r0, #0x82
	strh r0, [r5, #0x10]
	movs r2, #0x96
	strh r2, [r5, #0x12]
	adds r0, #0xf9
	adds r1, r5, r0
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r5, #0x34]
	ldrb r0, [r1]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strb r0, [r1]
	ldr r0, [r5, #0x30]
	movs r1, #0x22
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r7
	str r0, [r5, #0x30]
	movs r0, #0x50
	strh r0, [r5, #0x38]
	strh r2, [r5, #0x3a]
	movs r1, #0x87
	lsls r1, r1, #2
	adds r3, r5, r1
	ldrb r0, [r3]
	cmp r0, #0
	beq _08053DBE
	adds r0, r6, #0
	adds r0, #0x54
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xf4
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x56
	ldrh r0, [r0]
	adds r2, #0x6c
	adds r1, r5, r2
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0xf0
	ldrb r1, [r3]
	subs r1, #1
	movs r0, #0x20
	orrs r1, r0
	ldr r0, [r2]
	bics r0, r1
	orrs r0, r7
	str r0, [r2]
_08053DBE:
	movs r0, #0x40
	mov r1, sb
	strh r0, [r1]
	movs r0, #0
	mov r2, r8
	strh r0, [r2]
	ldr r0, _08053DE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08053DE8 @ =sub_8053DEC
	str r0, [r1, #8]
_08053DD2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053DE0: .4byte gUnknown_080D1C48
_08053DE4: .4byte gCurTask
_08053DE8: .4byte sub_8053DEC

	thumb_func_start sub_8053DEC
sub_8053DEC: @ 0x08053DEC
	push {r4, r5, lr}
	ldr r0, _08053E14 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08053E18 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08053E1C
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053E1C
	bl sub_802613C
	b _08053E90
	.align 2, 0
_08053E14: .4byte gCurTask
_08053E18: .4byte gStageData
_08053E1C:
	bl sub_805374C
	movs r0, #0xb9
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x20
	strh r0, [r1]
	movs r2, #0xba
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _08053E3E
	subs r0, r2, #1
	strh r0, [r1]
_08053E3E:
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	adds r0, #2
	strh r0, [r5]
	ldr r1, _08053E98 @ =gSineTable
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0x8c
	movs r3, #0xb3
	lsls r3, r3, #1
	adds r1, r4, r3
	strh r0, [r1]
	movs r0, #0x82
	strh r0, [r4, #0x10]
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r4, #0x12]
	movs r0, #0x50
	strh r0, [r4, #0x38]
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r4, #0x3a]
	bl sub_805448C
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0xff
	ble _08053E90
	movs r0, #0
	strh r0, [r5]
	ldr r0, _08053E9C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08053EA0 @ =sub_8053EA4
	str r0, [r1, #8]
_08053E90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053E98: .4byte gSineTable
_08053E9C: .4byte gCurTask
_08053EA0: .4byte sub_8053EA4

	thumb_func_start sub_8053EA4
sub_8053EA4: @ 0x08053EA4
	push {r4, r5, r6, lr}
	ldr r0, _08053ECC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08053ED0 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08053ED4
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053ED4
	bl sub_802613C
	b _08053FA2
	.align 2, 0
_08053ECC: .4byte gCurTask
_08053ED0: .4byte gStageData
_08053ED4:
	bl sub_805374C
	movs r0, #0xb9
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r6, #0
	movs r0, #0x20
	strh r0, [r1]
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r6, [r0]
	movs r2, #0xb3
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r4, #0x12]
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r4, #0x3a]
	bl sub_805448C
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0x50
	bne _08053F22
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	adds r2, #1
	adds r1, r4, r2
	ldrb r1, [r1]
	bl sub_80545E0
_08053F22:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	ble _08053FA2
	ldr r0, _08053FA8 @ =gUnknown_080D1C48
	mov ip, r0
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrb r0, [r1]
	lsls r0, r0, #4
	mov r2, ip
	adds r2, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #4
	mov r1, ip
	adds r1, #0xa
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r4, #0x1a]
	ldr r0, _08053FAC @ =0x0000017B
	adds r3, r4, r0
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0x34]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strb r0, [r1]
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08053F98
	mov r0, ip
	adds r0, #0x58
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf4
	strh r1, [r0]
	mov r0, ip
	adds r0, #0x5a
	ldrh r0, [r0]
	movs r2, #0x81
	lsls r2, r2, #1
	adds r3, r4, r2
	strb r0, [r3]
_08053F98:
	strh r6, [r5]
	ldr r0, _08053FB0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08053FB4 @ =sub_8053FB8
	str r0, [r1, #8]
_08053FA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053FA8: .4byte gUnknown_080D1C48
_08053FAC: .4byte 0x0000017B
_08053FB0: .4byte gCurTask
_08053FB4: .4byte sub_8053FB8

	thumb_func_start sub_8053FB8
sub_8053FB8: @ 0x08053FB8
	push {r4, r5, r6, lr}
	ldr r0, _08053FE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08053FE4 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08053FE8
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08053FE8
	bl sub_802613C
	b _080540D0
	.align 2, 0
_08053FE0: .4byte gCurTask
_08053FE4: .4byte gStageData
_08053FE8:
	bl sub_805374C
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r5, #0
	movs r6, #0x20
	strh r6, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r5, [r0]
	movs r0, #0xb3
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r4, #0x12]
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r4, #0x3a]
	bl sub_805448C
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xf0
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0805402C
	subs r0, r3, #1
	strh r0, [r2]
_0805402C:
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080540D8 @ =0x01A30000
	cmp r0, r1
	ble _080540D0
	strh r5, [r2]
	ldr r0, _080540DC @ =gUnknown_080D1C48
	mov ip, r0
	movs r0, #0xbd
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrb r0, [r1]
	lsls r0, r0, #4
	mov r2, ip
	adds r2, #0xc
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #4
	mov r1, ip
	adds r1, #0xe
	adds r0, r0, r1
	ldrh r0, [r0]
	strb r0, [r4, #0x1a]
	ldr r0, [r4, #8]
	orrs r0, r6
	str r0, [r4, #8]
	ldr r0, _080540E0 @ =0x0000017B
	adds r3, r4, r0
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0x34]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strb r0, [r1]
	ldr r0, [r4, #0x30]
	movs r1, #0x21
	orrs r0, r1
	str r0, [r4, #0x30]
	movs r1, #0x87
	lsls r1, r1, #2
	adds r5, r4, r1
	ldrb r0, [r5]
	cmp r0, #0
	beq _080540C8
	mov r0, ip
	adds r0, #0x5c
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf4
	strh r1, [r0]
	mov r0, ip
	adds r0, #0x5e
	ldrh r0, [r0]
	movs r1, #0x81
	lsls r1, r1, #1
	adds r3, r4, r1
	strb r0, [r3]
	adds r2, r4, #0
	adds r2, #0xf0
	ldr r1, [r2]
	orrs r1, r6
	ldrb r0, [r5]
	subs r0, #1
	orrs r1, r0
	str r1, [r2]
_080540C8:
	ldr r0, _080540E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080540E8 @ =sub_80540EC
	str r0, [r1, #8]
_080540D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080540D8: .4byte 0x01A30000
_080540DC: .4byte gUnknown_080D1C48
_080540E0: .4byte 0x0000017B
_080540E4: .4byte gCurTask
_080540E8: .4byte sub_80540EC

	thumb_func_start sub_80540EC
sub_80540EC: @ 0x080540EC
	push {r4, r5, lr}
	ldr r0, _08054114 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08054118 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _0805411C
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0805411C
	bl sub_802613C
	b _080541F0
	.align 2, 0
_08054114: .4byte gCurTask
_08054118: .4byte gStageData
_0805411C:
	bl sub_805374C
	movs r0, #0xb9
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x10
	ble _08054134
	subs r0, r2, #1
	strh r0, [r1]
_08054134:
	movs r0, #0xba
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0xf
	bgt _08054148
	adds r0, r2, #1
	strh r0, [r1]
_08054148:
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r0, #0x82
	strh r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0xd6
	strh r0, [r1]
	movs r1, #0xb3
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	subs r0, #0xa
	ldrh r1, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	adds r0, #0xd8
	strh r1, [r0]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, #0x50
	strh r0, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0xe2
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xa
	strh r0, [r4, #0x3a]
	adds r1, #2
	strh r0, [r1]
	ldr r2, _080541F8 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r3, [r5]
	adds r0, r0, r3
	subs r1, #0x12
	strh r0, [r1]
	ldrh r1, [r5]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0xd4
	strh r0, [r1]
	bl sub_8054514
	ldrh r1, [r5]
	movs r0, #0x23
	subs r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0xb7
	lsls r3, r3, #1
	adds r2, r4, r3
	strh r0, [r2]
	ldrh r0, [r5]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	adds r3, #2
	adds r1, r4, r3
	strh r0, [r1]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080541F0
	movs r0, #0
	strh r0, [r5]
	movs r0, #0x10
	strh r0, [r2]
	ldr r0, _080541FC @ =0x0000FFE0
	strh r0, [r1]
	ldr r0, _08054200 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08054204 @ =sub_8054208
	str r0, [r1, #8]
_080541F0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080541F8: .4byte 0xFFFFFF00
_080541FC: .4byte 0x0000FFE0
_08054200: .4byte gCurTask
_08054204: .4byte sub_8054208

	thumb_func_start sub_8054208
sub_8054208: @ 0x08054208
	push {r4, lr}
	ldr r0, _08054230 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08054234 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08054238
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08054238
	bl sub_802613C
	b _0805428E
	.align 2, 0
_08054230: .4byte gCurTask
_08054234: .4byte gStageData
_08054238:
	bl sub_805374C
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0x10
	strh r1, [r0]
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	movs r0, #0xb3
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, #7
	strh r0, [r4, #0x12]
	adds r1, r4, #0
	adds r1, #0xd8
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #0xb
	strh r0, [r4, #0x3a]
	adds r1, #0xc
	strh r0, [r1]
	bl sub_8054514
	movs r2, #0xb6
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0805428E
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08054294 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08054298 @ =sub_805429C
	str r0, [r1, #8]
_0805428E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054294: .4byte gCurTask
_08054298: .4byte sub_805429C

	thumb_func_start sub_805429C
sub_805429C: @ 0x0805429C
	push {r4, r5, r6, lr}
	ldr r0, _080542C4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _080542C8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _080542CC
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080542CC
	bl sub_802613C
	b _080543E6
	.align 2, 0
_080542C4: .4byte gCurTask
_080542C8: .4byte gStageData
_080542CC:
	bl sub_805374C
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r6, #0
	movs r1, #0x10
	strh r1, [r0]
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r0, #0x20
	asrs r0, r0, #3
	cmp r0, #9
	bgt _08054308
	subs r2, #0xe
	adds r1, r4, r2
	subs r0, #0xa
	ldrh r1, [r1]
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	adds r0, r4, #0
	adds r0, #0xd8
	strh r1, [r0]
_08054308:
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	cmp r0, #9
	bgt _08054326
	movs r2, #0xb3
	lsls r2, r2, #1
	adds r1, r4, r2
	subs r0, #0xa
	ldrh r1, [r1]
	subs r1, r1, r0
	strh r1, [r4, #0x3a]
	adds r0, r4, #0
	adds r0, #0xe4
	strh r1, [r0]
_08054326:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0xbf
	bgt _08054350
	adds r0, #0x40
	asrs r0, r0, #3
	adds r0, #0x82
	strh r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0xd6
	strh r0, [r1]
	ldrh r0, [r5]
	subs r0, #0xe0
	subs r1, #4
	strh r0, [r1]
	ldrh r1, [r5]
	movs r0, #0xe0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0xd4
	strh r0, [r1]
_08054350:
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r0, #0x60
	strh r0, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0xe2
	strh r0, [r1]
	ldrh r0, [r5]
	subs r0, #0xe0
	subs r1, #4
	strh r0, [r1]
	ldrh r1, [r5]
	movs r0, #0xe0
	subs r0, r0, r1
	adds r1, r4, #0
	adds r1, #0xe0
	strh r0, [r1]
	bl sub_8054514
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	bne _080543BA
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r6, [r0]
	movs r2, #0xa9
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #1
	strh r0, [r1]
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r6, [r0]
	adds r2, #4
	adds r1, r4, r2
	movs r0, #0x80
	strh r0, [r1]
	adds r0, #0xd8
	adds r1, r4, r0
	movs r0, #0xbf
	strh r0, [r1]
	movs r1, #0xad
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r6, [r0]
	b _080543C8
_080543BA:
	cmp r0, #0x9f
	ble _080543C8
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r4, r2
	bl UpdateScreenFade
_080543C8:
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xdf
	ble _080543E6
	ldr r0, _080543EC @ =gMPlayInfo_BGM
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r0, _080543F0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080543F4 @ =sub_80543F8
	str r0, [r1, #8]
_080543E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080543EC: .4byte gMPlayInfo_BGM
_080543F0: .4byte gCurTask
_080543F4: .4byte sub_80543F8

	thumb_func_start sub_80543F8
sub_80543F8: @ 0x080543F8
	push {r4, lr}
	ldr r0, _08054420 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08054424 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _08054428
	bl sub_802610C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08054428
	bl sub_802613C
	b _08054484
	.align 2, 0
_08054420: .4byte gCurTask
_08054424: .4byte gStageData
_08054428:
	bl sub_805374C
	movs r1, #0xb9
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0x10
	strh r1, [r0]
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0]
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08054484
	ldr r4, _08054474 @ =gStageData
	ldrh r0, [r4, #0xe]
	bl sub_8000414
	ldrb r0, [r4, #9]
	cmp r0, #6
	beq _0805447C
	adds r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_8057AA0
	ldr r0, _08054478 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08054484
	.align 2, 0
_08054474: .4byte gStageData
_08054478: .4byte gCurTask
_0805447C:
	movs r0, #0x47
	movs r1, #0
	bl sub_8002210
_08054484:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805448C
sub_805448C: @ 0x0805448C
	push {r4, r5, r6, lr}
	ldr r0, _080544DC @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _080544E0 @ =0x03000028
	adds r4, r5, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _080544E4 @ =0x0300021C
	adds r4, r5, r1
	ldrb r0, [r4]
	cmp r0, #0
	beq _08054508
	ldr r2, _080544E8 @ =0x030000E8
	adds r0, r5, r2
	bl UpdateSpriteAnimation
	ldrb r0, [r4]
	cmp r0, #1
	bne _080544F0
	ldrh r1, [r6, #0x10]
	ldr r2, _080544EC @ =0x030000F8
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r1, [r6, #0x12]
	b _080544FA
	.align 2, 0
_080544DC: .4byte gCurTask
_080544E0: .4byte 0x03000028
_080544E4: .4byte 0x0300021C
_080544E8: .4byte 0x030000E8
_080544EC: .4byte 0x030000F8
_080544F0:
	ldrh r1, [r6, #0x38]
	ldr r2, _08054510 @ =0x030000F8
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r1, [r6, #0x3a]
_080544FA:
	adds r2, #2
	adds r0, r5, r2
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0xe8
	bl DisplaySprite
_08054508:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054510: .4byte 0x030000F8

	thumb_func_start sub_8054514
sub_8054514: @ 0x08054514
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08054594 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r5, r0
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	ldr r0, _08054598 @ =0x030000D0
	adds r0, r0, r5
	mov sb, r0
	adds r0, r6, #0
	mov r1, sb
	bl sub_80BF8F4
	adds r0, r6, #0
	bl DisplaySprite
	ldr r2, _0805459C @ =0x03000028
	adds r4, r5, r2
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, _080545A0 @ =0x030000DC
	adds r0, r0, r5
	mov r8, r0
	adds r0, r4, #0
	mov r1, r8
	bl sub_80BF8F4
	adds r0, r4, #0
	bl DisplaySprite
	ldr r2, _080545A4 @ =0x0300021C
	adds r7, r5, r2
	ldrb r0, [r7]
	cmp r0, #0
	beq _080545D0
	ldr r0, _080545A8 @ =0x030000E8
	adds r4, r5, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldrb r0, [r7]
	cmp r0, #1
	bne _080545B0
	ldrh r1, [r6, #0x10]
	ldr r2, _080545AC @ =0x030000F8
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r1, [r6, #0x12]
	adds r2, #2
	adds r0, r5, r2
	strh r1, [r0]
	adds r0, r4, #0
	mov r1, sb
	bl sub_80BF8F4
	b _080545C8
	.align 2, 0
_08054594: .4byte gCurTask
_08054598: .4byte 0x030000D0
_0805459C: .4byte 0x03000028
_080545A0: .4byte 0x030000DC
_080545A4: .4byte 0x0300021C
_080545A8: .4byte 0x030000E8
_080545AC: .4byte 0x030000F8
_080545B0:
	ldrh r1, [r6, #0x38]
	ldr r2, _080545DC @ =0x030000F8
	adds r0, r5, r2
	strh r1, [r0]
	ldrh r1, [r6, #0x3a]
	adds r2, #2
	adds r0, r5, r2
	strh r1, [r0]
	adds r0, r4, #0
	mov r1, r8
	bl sub_80BF8F4
_080545C8:
	adds r0, r6, #0
	adds r0, #0xe8
	bl DisplaySprite
_080545D0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080545DC: .4byte 0x030000F8

	thumb_func_start sub_80545E0
sub_80545E0: @ 0x080545E0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08054668 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	mov sb, r1
	ldr r0, _0805466C @ =sub_8054678
	movs r1, #0x9d
	lsls r1, r1, #2
	ldr r2, _08054670 @ =0x00000101
	movs r5, #0
	str r5, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	add r0, sb
	strh r5, [r0, #4]
	ldr r1, _08054674 @ =0x03000150
	adds r4, r4, r1
	str r4, [r0]
	strh r5, [r4]
	ldr r2, [r0]
	movs r1, #1
	strh r1, [r2, #2]
	ldr r1, [r0]
	strh r5, [r1, #4]
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r2, #6]
	ldr r2, [r0]
	movs r1, #0xbf
	strh r1, [r2, #8]
	ldr r1, [r0]
	strh r5, [r1, #0xa]
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r0, #0xa]
	movs r1, #0x50
	strh r1, [r0, #0xc]
	movs r1, #0xf0
	strh r1, [r0, #0xe]
	strb r6, [r0, #0x19]
	mov r1, r8
	strb r1, [r0, #0x1a]
	bl sub_80548E0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054668: .4byte gCurTask
_0805466C: .4byte sub_8054678
_08054670: .4byte 0x00000101
_08054674: .4byte 0x03000150

	thumb_func_start sub_8054678
sub_8054678: @ 0x08054678
	push {r4, r5, lr}
	ldr r5, _080546E4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4]
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080546DE
	ldr r2, _080546E8 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	ldr r1, _080546EC @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	ldr r3, _080546F0 @ =gWinRegs
	movs r1, #0
	movs r0, #0x20
	strh r0, [r3, #8]
	movs r0, #0x1f
	strh r0, [r3, #0xa]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	movs r0, #0xf0
	strb r0, [r4, #8]
	movs r0, #0xa0
	strb r0, [r4, #9]
	ldr r4, [r5]
	ldrh r2, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldrb r1, [r2, #6]
	lsls r1, r1, #8
	ldrb r0, [r2, #8]
	orrs r0, r1
	strh r0, [r3]
	ldrb r1, [r2, #7]
	lsls r1, r1, #8
	ldrb r0, [r2, #9]
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r0, _080546F4 @ =sub_80546F8
	str r0, [r4, #8]
_080546DE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080546E4: .4byte gCurTask
_080546E8: .4byte gDispCnt
_080546EC: .4byte 0x0000BFFF
_080546F0: .4byte gWinRegs
_080546F4: .4byte sub_80546F8

	thumb_func_start sub_80546F8
sub_80546F8: @ 0x080546F8
	push {r4, r5, r6, lr}
	ldr r1, _08054754 @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	ldrb r0, [r3, #7]
	adds r0, #4
	movs r5, #0
	strb r0, [r3, #7]
	ldrb r0, [r3, #9]
	subs r0, #4
	strb r0, [r3, #9]
	ldr r6, [r1]
	ldrh r2, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldr r4, _08054758 @ =gWinRegs
	ldrb r1, [r2, #6]
	lsls r1, r1, #8
	ldrb r0, [r2, #8]
	orrs r0, r1
	strh r0, [r4]
	ldrb r1, [r2, #7]
	lsls r1, r1, #8
	ldrb r0, [r2, #9]
	orrs r0, r1
	strh r0, [r4, #4]
	ldrb r0, [r3, #7]
	cmp r0, #0x43
	bls _0805474E
	movs r0, #0x10
	strh r0, [r4, #8]
	movs r0, #0x1f
	strh r0, [r4, #0xa]
	ldr r0, _0805475C @ =gBldRegs
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	ldr r0, _08054760 @ =sub_8056214
	str r0, [r6, #8]
_0805474E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054754: .4byte gCurTask
_08054758: .4byte gWinRegs
_0805475C: .4byte gBldRegs
_08054760: .4byte sub_8056214

	thumb_func_start sub_8054764
sub_8054764: @ 0x08054764
	push {r4, r5, lr}
	ldr r4, _080547D0 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r0, [r5, #7]
	subs r0, #2
	strb r0, [r5, #7]
	ldrb r0, [r5, #9]
	subs r0, #2
	strb r0, [r5, #9]
	ldrh r0, [r5, #0xc]
	subs r0, #2
	strh r0, [r5, #0xc]
	bl sub_8054E38
	ldr r4, [r4]
	ldrh r2, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldr r3, _080547D4 @ =gWinRegs
	ldrb r1, [r2, #6]
	lsls r1, r1, #8
	ldrb r0, [r2, #8]
	orrs r0, r1
	strh r0, [r3]
	ldrb r1, [r2, #7]
	lsls r1, r1, #8
	ldrb r0, [r2, #9]
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r5, #7]
	cmp r0, #0x18
	bhi _080547CA
	ldrh r1, [r5, #0x10]
	ldrh r2, [r5, #0xa]
	adds r0, r1, r2
	strh r0, [r5, #0xa]
	ldrh r0, [r5, #0x14]
	subs r0, r0, r1
	strh r0, [r5, #0x14]
	ldrh r0, [r5, #0x12]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	movs r0, #0
	strh r0, [r5, #0x10]
	ldr r0, _080547D8 @ =sub_8056268
	str r0, [r4, #8]
_080547CA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080547D0: .4byte gCurTask
_080547D4: .4byte gWinRegs
_080547D8: .4byte sub_8056268

	thumb_func_start sub_80547DC
sub_80547DC: @ 0x080547DC
	push {r4, r5, r6, lr}
	ldr r6, _08054808 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r0, _0805480C @ =0x03000224
	adds r3, r4, r0
	ldrh r1, [r3, #0x12]
	movs r2, #0x12
	ldrsh r0, [r3, r2]
	cmp r0, #0x4f
	bgt _08054814
	adds r0, r1, #2
	strh r0, [r3, #0x12]
	ldr r0, _08054810 @ =0x0300024C
	adds r3, r4, r0
	ldrh r0, [r3, #0x12]
	adds r0, #2
	strh r0, [r3, #0x12]
	b _08054856
	.align 2, 0
_08054808: .4byte gCurTask
_0805480C: .4byte 0x03000224
_08054810: .4byte 0x0300024C
_08054814:
	ldrb r0, [r3, #0x1c]
	cmp r0, #0x10
	bls _08054830
	movs r1, #0x50
	strh r1, [r3, #0x12]
	subs r0, #2
	strb r0, [r3, #0x1c]
	ldr r2, _0805482C @ =0x0300024C
	adds r3, r4, r2
	strh r1, [r3, #0x12]
	b _08054856
	.align 2, 0
_0805482C: .4byte 0x0300024C
_08054830:
	ldrh r0, [r5, #4]
	adds r1, r0, #1
	strh r1, [r5, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _08054856
	movs r2, #0
	movs r1, #0x50
	strh r1, [r3, #0x12]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	ldr r0, _08054870 @ =0x0300024C
	adds r3, r4, r0
	strh r1, [r3, #0x12]
	strh r2, [r5, #4]
	ldr r1, [r6]
	ldr r0, _08054874 @ =sub_8054878
	str r0, [r1, #8]
_08054856:
	bl sub_8054E38
	bl sub_80563BC
	bl sub_8056430
	bl sub_8056408
	bl sub_8056494
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054870: .4byte 0x0300024C
_08054874: .4byte sub_8054878

	thumb_func_start sub_8054878
sub_8054878: @ 0x08054878
	push {r4, r5, lr}
	ldr r1, _080548D0 @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r3, r0
	ldrb r0, [r3, #7]
	adds r0, #2
	strb r0, [r3, #7]
	ldrb r0, [r3, #9]
	subs r0, #2
	strb r0, [r3, #9]
	ldr r5, [r1]
	ldrh r2, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldr r4, _080548D4 @ =gWinRegs
	ldrb r1, [r2, #6]
	lsls r1, r1, #8
	ldrb r0, [r2, #8]
	orrs r0, r1
	strh r0, [r4]
	ldrb r1, [r2, #7]
	lsls r1, r1, #8
	ldrb r0, [r2, #9]
	orrs r0, r1
	strh r0, [r4, #4]
	ldrb r0, [r3, #7]
	ldrb r3, [r3, #9]
	cmp r0, r3
	blo _080548CA
	ldr r2, _080548D8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080548DC @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	adds r0, r5, #0
	bl TaskDestroy
_080548CA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080548D0: .4byte gCurTask
_080548D4: .4byte gWinRegs
_080548D8: .4byte gDispCnt
_080548DC: .4byte 0x0000DFFF

	thumb_func_start sub_80548E0
sub_80548E0: @ 0x080548E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	ldr r1, _08054CD4 @ =gStageData
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r4, _08054CD8 @ =gPlayers
	adds r1, r1, r4
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	mov sb, r0
	ldr r3, _08054CDC @ =gUnknown_080D1CA8
	adds r0, r2, r3
	ldrb r0, [r0]
	mov r5, sb
	adds r1, r5, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x10
	ldr r0, _08054CD4 @ =gStageData
	adds r0, #0xae
	ldrh r0, [r0]
	str r0, [sp, #8]
	ldr r5, _08054CD4 @ =gStageData
	ldrb r0, [r5, #3]
	cmp r0, #5
	bne _08054962
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	movs r5, #0xbd
	lsls r5, r5, #1
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	mov sb, r0
_08054962:
	movs r6, #0
	mov r0, sl
	strb r1, [r0, #0x16]
	adds r1, r2, #0
	adds r0, r1, r3
	ldrb r0, [r0]
	rsbs r0, r0, #0
	subs r0, #8
	mov r2, sl
	strh r0, [r2, #0x10]
	ldr r0, _08054CE0 @ =0x0000FFF8
	strh r0, [r2, #0x12]
	movs r0, #8
	strh r0, [r2, #0x14]
	movs r0, #0xe6
	strb r0, [r2, #0x18]
	mov r7, sl
	adds r7, #0x1c
	ldr r4, _08054CE4 @ =gUnknown_080D1CAE
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, _08054CE8 @ =gUnknown_080D1CB2
	adds r0, r0, r3
	ldrh r0, [r0]
	bl VramMalloc
	mov r5, sl
	str r0, [r5, #0x1c]
	ldrb r1, [r5, #0x19]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r1, [r5, #0x19]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r4, #2
	adds r0, r0, r5
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r1, sl
	ldrh r0, [r1, #0x10]
	ldrh r2, [r1, #0xa]
	adds r0, r0, r2
	strh r0, [r7, #0x10]
	ldrh r0, [r1, #0xc]
	subs r0, #8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	adds r7, #0x28
	movs r0, #4
	bl VramMalloc
	mov r2, sl
	str r0, [r2, #0x44]
	ldr r3, _08054CEC @ =0x00000596
	strh r3, [r7, #0xc]
	movs r0, #5
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrh r0, [r2, #0x12]
	ldrh r1, [r2, #0xa]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	ldrh r0, [r2, #0xc]
	subs r0, #8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	str r0, [r7, #0x20]
	adds r7, #0x28
	mov r1, sb
	lsls r0, r1, #1
	add r0, sb
	lsls r0, r0, #1
	ldr r2, _08054CE8 @ =gUnknown_080D1CB2
	adds r0, r0, r2
	ldrh r0, [r0]
	bl VramMalloc
	mov r3, sl
	str r0, [r3, #0x6c]
	ldrb r1, [r3, #0x1a]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r1, [r3, #0x1a]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strb r0, [r7, #0x1a]
	movs r5, #0x80
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrh r0, [r3, #0x14]
	ldrh r1, [r3, #0xa]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	ldrh r0, [r3, #0xc]
	subs r0, #8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	str r0, [r7, #0x20]
	adds r7, #0x28
	movs r0, #0xe
	bl VramMalloc
	str r0, [r7]
	ldr r5, _08054CEC @ =0x00000596
	strh r5, [r7, #0xc]
	movs r0, #0xa
	strb r0, [r7, #0x1a]
	movs r0, #0x3a
	mov r1, sl
	strb r0, [r1, #0x17]
	movs r2, #0x80
	strh r2, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrh r0, [r1, #0xe]
	strh r0, [r7, #0x10]
	movs r4, #0x1c
	strh r4, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r5, #0
	strb r5, [r7, #0x1f]
	str r0, [r7, #0x20]
	adds r7, #0x28
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08054CEC @ =0x00000596
	strh r0, [r7, #0xc]
	movs r0, #0x17
	strb r0, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r2, sl
	ldrh r0, [r2, #0xe]
	ldrb r3, [r2, #0x17]
	adds r0, r0, r3
	strh r0, [r7, #0x10]
	strh r4, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	adds r7, #0x28
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7]
	ldr r2, _08054CEC @ =0x00000596
	strh r2, [r7, #0xc]
	movs r0, #0xb
	strb r0, [r7, #0x1a]
	movs r3, #0x80
	strh r3, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r5, #0x34
	strh r5, [r7, #0x10]
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	subs r0, #0xc
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	ldr r0, [sp, #8]
	movs r1, #0x3c
	bl Mod
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, [sp, #8]
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	subs r4, r4, r1
	lsls r4, r4, #0x10
	mov r2, sp
	ldr r3, _08054CF0 @ =gUnknown_080CE4B2
	lsls r5, r5, #1
	adds r1, r3, #1
	adds r1, r5, r1
	ldrb r1, [r1]
	strb r1, [r2]
	adds r5, r5, r3
	ldrb r1, [r5]
	strb r1, [r2, #1]
	ldr r3, _08054CF4 @ =gUnknown_080CE438
	lsrs r4, r4, #0xf
	adds r1, r3, #1
	adds r1, r4, r1
	ldrb r1, [r1]
	strb r1, [r2, #2]
	adds r4, r4, r3
	ldrb r1, [r4]
	strb r1, [r2, #3]
	mov r1, sp
	strb r0, [r1, #4]
	movs r7, #0x86
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	ldr r3, _08054CEC @ =0x00000596
	strh r3, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r5, #0x80
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r1, sl
	ldrb r0, [r1, #0x18]
	adds r0, #0x54
	strh r0, [r7, #0x10]
	movs r2, #0x34
	strh r2, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r5, #0
	strb r5, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0x9a
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08054CEC @ =0x00000596
	strh r0, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #1]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r2, sl
	ldrb r0, [r2, #0x18]
	adds r0, #0x44
	strh r0, [r7, #0x10]
	movs r3, #0x34
	strh r3, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	strb r6, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xae
	lsls r7, r7, #1
	add r7, sl
	movs r0, #2
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08054CEC @ =0x00000596
	strh r0, [r7, #0xc]
	movs r4, #0xc
	strb r4, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r2, sl
	ldrb r0, [r2, #0x18]
	adds r0, #0x3a
	strh r0, [r7, #0x10]
	movs r3, #0x34
	strh r3, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	strb r5, [r7, #0x1c]
	movs r5, #0
	strb r5, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xc2
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08054CEC @ =0x00000596
	strh r0, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #2]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r2, sl
	ldrb r0, [r2, #0x18]
	adds r0, #0x2a
	strh r0, [r7, #0x10]
	movs r3, #0x34
	strh r3, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	movs r7, #0xd6
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	ldr r2, _08054CEC @ =0x00000596
	strh r2, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #3]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r3, #0x80
	strh r3, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r5, sl
	ldrb r0, [r5, #0x18]
	adds r0, #0x1a
	strh r0, [r7, #0x10]
	movs r0, #0x34
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xea
	lsls r7, r7, #1
	add r7, sl
	movs r0, #2
	bl VramMalloc
	str r0, [r7]
	ldr r3, _08054CEC @ =0x00000596
	strh r3, [r7, #0xc]
	b _08054CF8
	.align 2, 0
_08054CD4: .4byte gStageData
_08054CD8: .4byte gPlayers
_08054CDC: .4byte gUnknown_080D1CA8
_08054CE0: .4byte 0x0000FFF8
_08054CE4: .4byte gUnknown_080D1CAE
_08054CE8: .4byte gUnknown_080D1CB2
_08054CEC: .4byte 0x00000596
_08054CF0: .4byte gUnknown_080CE4B2
_08054CF4: .4byte gUnknown_080CE438
_08054CF8:
	strb r4, [r7, #0x1a]
	movs r5, #0x80
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r1, sl
	ldrb r0, [r1, #0x18]
	adds r0, #0x10
	strh r0, [r7, #0x10]
	movs r2, #0x34
	strh r2, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r5, #0
	strb r5, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xfe
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08054D78 @ =0x00000596
	strh r0, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #4]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	mov r2, sl
	ldrb r0, [r2, #0x18]
	strh r0, [r7, #0x10]
	movs r3, #0x34
	strh r3, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	ldr r2, _08054D7C @ =gStageData
	ldrb r0, [r2, #0xe]
	ldr r2, _08054D80 @ =gUnknown_080D1A40
	lsls r1, r0, #2
	adds r0, r1, r2
	ldr r3, [sp, #8]
	ldrh r0, [r0]
	cmp r3, r0
	bhi _08054D84
	movs r1, #0
	b _08054D94
	.align 2, 0
_08054D78: .4byte 0x00000596
_08054D7C: .4byte gStageData
_08054D80: .4byte gUnknown_080D1A40
_08054D84:
	adds r0, r2, #2
	adds r0, r1, r0
	movs r1, #2
	ldr r5, [sp, #8]
	ldrh r0, [r0]
	cmp r5, r0
	bhi _08054D94
	movs r1, #1
_08054D94:
	movs r7, #0x89
	lsls r7, r7, #2
	add r7, sl
	ldr r5, _08054E30 @ =gUnknown_080D1CD2
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl VramMalloc
	str r0, [r7]
	adds r0, r4, r5
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r7, #0xc]
	adds r5, #2
	adds r4, r4, r5
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r1, #0x78
	mov r8, r1
	mov r2, r8
	strh r2, [r7, #0x10]
	ldr r5, _08054E34 @ =0x0000FFF0
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x40
	strb r0, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x20]
	movs r7, #0x93
	lsls r7, r7, #2
	add r7, sl
	movs r0, #6
	bl VramMalloc
	str r0, [r7]
	movs r0, #0xed
	lsls r0, r0, #2
	strh r0, [r7, #0xc]
	movs r0, #8
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r7, #8]
	strh r6, [r7, #0xe]
	mov r1, r8
	strh r1, [r7, #0x10]
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	adds r0, r4, #0
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r4, [r7, #0x20]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054E30: .4byte gUnknown_080D1CD2
_08054E34: .4byte 0x0000FFF0

	thumb_func_start sub_8054E38
sub_8054E38: @ 0x08054E38
	push {r4, r5, r6, lr}
	ldr r0, _08054EA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, _08054EAC @ =0x0300001C
	adds r6, r5, r0
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	ldrh r0, [r4, #0xc]
	subs r0, #8
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _08054EB0 @ =0x03000044
	adds r6, r5, r0
	ldrh r0, [r4, #0x12]
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	ldrh r0, [r4, #0xc]
	subs r0, #8
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _08054EB4 @ =0x0300006C
	adds r6, r5, r0
	ldrh r0, [r4, #0x14]
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	ldrh r0, [r4, #0xc]
	subs r0, #8
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054EA8: .4byte gCurTask
_08054EAC: .4byte 0x0300001C
_08054EB0: .4byte 0x03000044
_08054EB4: .4byte 0x0300006C

	thumb_func_start sub_8054EB8
sub_8054EB8: @ 0x08054EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08054F3C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r5, r0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08054F30
	ldr r1, _08054F40 @ =0x0300028C
	adds r6, r5, r1
	movs r3, #0
	strb r3, [r6]
	ldr r7, _08054F44 @ =0x0300028D
	adds r7, r7, r5
	mov r8, r7
	strb r3, [r7]
	ldr r0, _08054F48 @ =0x0300028E
	adds r4, r5, r0
	movs r0, #0xf0
	strb r0, [r4]
	adds r1, #3
	adds r5, r5, r1
	movs r0, #0xa0
	strb r0, [r5]
	ldr r2, _08054F4C @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0x80
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	ldr r1, _08054F50 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08054F54 @ =gWinRegs
	strh r3, [r2, #8]
	movs r0, #0x1f
	strh r0, [r2, #0xa]
	ldrb r1, [r6]
	lsls r1, r1, #8
	ldrb r0, [r4]
	orrs r0, r1
	strh r0, [r2, #2]
	mov r0, r8
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r5]
	orrs r0, r1
	strh r0, [r2, #6]
	mov r7, sb
	ldr r1, [r7]
	ldr r0, _08054F58 @ =sub_8054F5C
	str r0, [r1, #8]
_08054F30:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054F3C: .4byte gCurTask
_08054F40: .4byte 0x0300028C
_08054F44: .4byte 0x0300028D
_08054F48: .4byte 0x0300028E
_08054F4C: .4byte gDispCnt
_08054F50: .4byte 0x0000DFFF
_08054F54: .4byte gWinRegs
_08054F58: .4byte sub_8054F5C

	thumb_func_start sub_8054F5C
sub_8054F5C: @ 0x08054F5C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08054FC8 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r1, _08054FCC @ =0x0300028D
	adds r3, r4, r1
	ldrb r0, [r3]
	adds r0, #4
	movs r6, #0
	strb r0, [r3]
	ldr r7, _08054FD0 @ =0x0300028F
	adds r2, r4, r7
	ldrb r0, [r2]
	subs r0, #4
	strb r0, [r2]
	ldr r5, _08054FD4 @ =gWinRegs
	subs r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r1, r1, #8
	subs r7, #1
	adds r0, r4, r7
	ldrb r0, [r0]
	orrs r0, r1
	strh r0, [r5, #2]
	ldrb r1, [r3]
	lsls r1, r1, #8
	ldrb r0, [r2]
	orrs r0, r1
	strh r0, [r5, #6]
	ldrb r0, [r3]
	cmp r0, #0x43
	bls _08054FC0
	movs r0, #0xc0
	lsls r0, r0, #6
	strh r0, [r5, #8]
	movs r0, #0x1f
	strh r0, [r5, #0xa]
	ldr r0, _08054FD8 @ =gBldRegs
	strh r6, [r0]
	strh r6, [r0, #2]
	strh r6, [r0, #4]
	ldr r1, _08054FDC @ =0x03000290
	adds r0, r4, r1
	strh r6, [r0]
	mov r7, ip
	ldr r1, [r7]
	ldr r0, _08054FE0 @ =sub_8054FE4
	str r0, [r1, #8]
_08054FC0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054FC8: .4byte gCurTask
_08054FCC: .4byte 0x0300028D
_08054FD0: .4byte 0x0300028F
_08054FD4: .4byte gWinRegs
_08054FD8: .4byte gBldRegs
_08054FDC: .4byte 0x03000290
_08054FE0: .4byte sub_8054FE4

	thumb_func_start sub_8054FE4
sub_8054FE4: @ 0x08054FE4
	push {r4, lr}
	ldr r0, _08055008 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0805500C @ =0x03000292
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x78
	ble _08055010
	adds r0, r2, #0
	subs r0, #0xc
	b _08055012
	.align 2, 0
_08055008: .4byte gCurTask
_0805500C: .4byte 0x03000292
_08055010:
	movs r0, #0x78
_08055012:
	strh r0, [r1]
	bl sub_8055CA8
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _08055038
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08055040 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08055044 @ =sub_8055048
	str r0, [r1, #8]
_08055038:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055040: .4byte gCurTask
_08055044: .4byte sub_8055048

	thumb_func_start sub_8055048
sub_8055048: @ 0x08055048
	push {r4, r5, r6, r7, lr}
	ldr r6, _080550D0 @ =gCurTask
	ldr r0, [r6]
	ldrh r5, [r0, #6]
	ldr r0, _080550D4 @ =0x0300028D
	adds r4, r5, r0
	ldrb r0, [r4]
	subs r0, #2
	strb r0, [r4]
	ldr r1, _080550D8 @ =0x0300028F
	adds r2, r5, r1
	ldrb r0, [r2]
	subs r0, #2
	strb r0, [r2]
	ldr r7, _080550DC @ =0x03000294
	adds r1, r5, r7
	ldrh r0, [r1]
	subs r0, #2
	strh r0, [r1]
	ldr r3, _080550E0 @ =gWinRegs
	ldr r1, _080550E4 @ =0x0300028C
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r1, r1, #8
	subs r7, #6
	adds r0, r5, r7
	ldrb r0, [r0]
	orrs r0, r1
	strh r0, [r3, #2]
	ldrb r1, [r4]
	lsls r1, r1, #8
	ldrb r0, [r2]
	orrs r0, r1
	strh r0, [r3, #6]
	bl sub_8055CA8
	ldrb r0, [r4]
	cmp r0, #0x18
	bhi _080550C8
	ldr r0, _080550E8 @ =0x03000292
	adds r1, r5, r0
	ldr r2, _080550EC @ =0x03000298
	adds r3, r5, r2
	ldrh r0, [r3]
	ldrh r7, [r1]
	adds r0, r0, r7
	strh r0, [r1]
	ldr r0, _080550F0 @ =0x0300029C
	adds r2, r5, r0
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	ldr r1, _080550F4 @ =0x0300029A
	adds r2, r5, r1
	ldrh r0, [r2]
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	movs r0, #0
	strh r0, [r3]
	ldr r1, [r6]
	ldr r0, _080550F8 @ =sub_80550FC
	str r0, [r1, #8]
_080550C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080550D0: .4byte gCurTask
_080550D4: .4byte 0x0300028D
_080550D8: .4byte 0x0300028F
_080550DC: .4byte 0x03000294
_080550E0: .4byte gWinRegs
_080550E4: .4byte 0x0300028C
_080550E8: .4byte 0x03000292
_080550EC: .4byte 0x03000298
_080550F0: .4byte 0x0300029C
_080550F4: .4byte 0x0300029A
_080550F8: .4byte sub_80550FC

	thumb_func_start sub_80550FC
sub_80550FC: @ 0x080550FC
	push {r4, lr}
	ldr r0, _08055120 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08055124 @ =0x03000292
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #8
	ble _08055128
	adds r0, r2, #0
	subs r0, #8
	b _0805512A
	.align 2, 0
_08055120: .4byte gCurTask
_08055124: .4byte 0x03000292
_08055128:
	movs r0, #8
_0805512A:
	strh r0, [r1]
	bl sub_8055CA8
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _08055150
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08055158 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805515C @ =sub_8055160
	str r0, [r1, #8]
_08055150:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055158: .4byte gCurTask
_0805515C: .4byte sub_8055160

	thumb_func_start sub_8055160
sub_8055160: @ 0x08055160
	push {r4, lr}
	ldr r0, _08055184 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _08055188 @ =0x03000296
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0x82
	ble _0805518C
	adds r0, r2, #0
	subs r0, #0xc
	b _0805518E
	.align 2, 0
_08055184: .4byte gCurTask
_08055188: .4byte 0x03000296
_0805518C:
	movs r0, #0x82
_0805518E:
	strh r0, [r1]
	bl sub_8055CA8
	bl sub_8056564
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _080551B8
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080551C0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080551C4 @ =sub_80551C8
	str r0, [r1, #8]
_080551B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080551C0: .4byte gCurTask
_080551C4: .4byte sub_80551C8

	thumb_func_start sub_80551C8
sub_80551C8: @ 0x080551C8
	push {r4, lr}
	ldr r0, _080551E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _080551EC @ =0x030002A0
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0x84
	bls _080551F0
	subs r0, #8
	strb r0, [r1]
	b _080551F8
	.align 2, 0
_080551E8: .4byte gCurTask
_080551EC: .4byte 0x030002A0
_080551F0:
	movs r0, #0x84
	strb r0, [r1]
	bl sub_80565BC
_080551F8:
	bl sub_8055CA8
	bl sub_8056564
	bl sub_8055D44
	movs r0, #0xa4
	lsls r0, r0, #2
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _0805522C
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r0, _08055234 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08055238 @ =sub_805523C
	str r0, [r1, #8]
_0805522C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055234: .4byte gCurTask
_08055238: .4byte sub_805523C

	thumb_func_start sub_805523C
sub_805523C: @ 0x0805523C
	push {r4, r5, lr}
	ldr r4, _08055264 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	ldr r0, _08055268 @ =0x03000214
	adds r2, r3, r0
	ldrh r1, [r2, #0x12]
	movs r5, #0x12
	ldrsh r0, [r2, r5]
	cmp r0, #0x4f
	bgt _08055270
	adds r0, r1, #2
	strh r0, [r2, #0x12]
	ldr r0, _0805526C @ =0x0300023C
	adds r2, r3, r0
	ldrh r0, [r2, #0x12]
	adds r0, #2
	strh r0, [r2, #0x12]
	b _080552A0
	.align 2, 0
_08055264: .4byte gCurTask
_08055268: .4byte 0x03000214
_0805526C: .4byte 0x0300023C
_08055270:
	ldrb r0, [r2, #0x1c]
	cmp r0, #0x10
	bls _0805528C
	movs r1, #0x50
	strh r1, [r2, #0x12]
	subs r0, #2
	strb r0, [r2, #0x1c]
	ldr r5, _08055288 @ =0x0300023C
	adds r2, r3, r5
	strh r1, [r2, #0x12]
	b _080552A0
	.align 2, 0
_08055288: .4byte 0x0300023C
_0805528C:
	movs r1, #0x50
	strh r1, [r2, #0x12]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	ldr r0, _080552C0 @ =0x0300023C
	adds r2, r3, r0
	strh r1, [r2, #0x12]
	ldr r1, [r4]
	ldr r0, _080552C4 @ =sub_80564D0
	str r0, [r1, #8]
_080552A0:
	bl sub_8055CA8
	bl sub_8056564
	bl sub_8055D44
	bl sub_80565BC
	bl sub_80565E4
	bl sub_8056620
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080552C0: .4byte 0x0300023C
_080552C4: .4byte sub_80564D0

	thumb_func_start sub_80552C8
sub_80552C8: @ 0x080552C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08055358 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r1, _0805535C @ =0x0300028D
	adds r3, r4, r1
	ldrb r0, [r3]
	adds r0, #4
	movs r6, #0
	strb r0, [r3]
	ldr r0, _08055360 @ =0x0300028F
	adds r2, r4, r0
	ldrb r0, [r2]
	subs r0, #4
	strb r0, [r2]
	ldr r7, _08055364 @ =gWinRegs
	subs r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r1, r1, #8
	mov r8, r1
	ldr r1, _08055368 @ =0x0300028E
	adds r0, r4, r1
	ldrb r0, [r0]
	mov r1, r8
	orrs r0, r1
	strh r0, [r7, #2]
	ldrb r1, [r3]
	lsls r1, r1, #8
	ldrb r0, [r2]
	orrs r0, r1
	strh r0, [r7, #6]
	ldrb r0, [r3]
	ldrb r2, [r2]
	cmp r0, r2
	blo _0805534E
	movs r0, #0x10
	strh r0, [r7, #8]
	movs r0, #0x1f
	strh r0, [r7, #0xa]
	ldr r0, _0805536C @ =gBldRegs
	strh r6, [r0]
	strh r6, [r0, #2]
	strh r6, [r0, #4]
	ldr r1, _08055370 @ =0x03000290
	adds r0, r4, r1
	strh r6, [r0]
	strh r6, [r5]
	movs r0, #1
	strh r0, [r5, #2]
	strh r6, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r5, #6]
	movs r0, #0xbf
	strh r0, [r5, #8]
	strh r6, [r5, #0xa]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _08055374 @ =sub_8056538
	str r0, [r1, #8]
_0805534E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055358: .4byte gCurTask
_0805535C: .4byte 0x0300028D
_08055360: .4byte 0x0300028F
_08055364: .4byte gWinRegs
_08055368: .4byte 0x0300028E
_0805536C: .4byte gBldRegs
_08055370: .4byte 0x03000290
_08055374: .4byte sub_8056538

	thumb_func_start sub_8055378
sub_8055378: @ 0x08055378
	push {r4, lr}
	ldr r0, _08055394 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08055398 @ =sub_8056538
	str r0, [r1, #8]
	ldr r4, _0805539C @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #6
	bne _080553A0
	movs r0, #1
	bl sub_809BFE8
	b _080555F0
	.align 2, 0
_08055394: .4byte gCurTask
_08055398: .4byte sub_8056538
_0805539C: .4byte gStageData
_080553A0:
	cmp r0, #3
	bne _080553F0
	ldrh r0, [r4, #0xe]
	bl sub_8000538
	bl sub_8003D2C
	ldr r1, _080553D8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080553DC @ =gUnknown_03003F94
	ldr r0, _080553E0 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080553E4 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080553E8 @ =gUnknown_03006208
	ldr r0, _080553EC @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	movs r1, #2
	bl sub_808723C
	b _080555F0
	.align 2, 0
_080553D8: .4byte 0x0000FFFF
_080553DC: .4byte gUnknown_03003F94
_080553E0: .4byte gUnknown_03003D20
_080553E4: .4byte gUnknown_03006840
_080553E8: .4byte gUnknown_03006208
_080553EC: .4byte gUnknown_03003F34
_080553F0:
	cmp r0, #4
	bne _08055440
	ldrh r0, [r4, #0xe]
	bl sub_8000538
	bl sub_8003D2C
	ldr r1, _08055428 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0805542C @ =gUnknown_03003F94
	ldr r0, _08055430 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08055434 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08055438 @ =gUnknown_03006208
	ldr r0, _0805543C @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	movs r1, #3
	bl sub_808723C
	b _080555F0
	.align 2, 0
_08055428: .4byte 0x0000FFFF
_0805542C: .4byte gUnknown_03003F94
_08055430: .4byte gUnknown_03003D20
_08055434: .4byte gUnknown_03006840
_08055438: .4byte gUnknown_03006208
_0805543C: .4byte gUnknown_03003F34
_08055440:
	ldrh r0, [r4, #0xe]
	bl sub_8000414
	ldrh r2, [r4, #0xe]
	cmp r2, #0x48
	bne _0805548C
	ldr r1, _08055474 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08055478 @ =gUnknown_03003F94
	ldr r0, _0805547C @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08055480 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08055484 @ =gUnknown_03006208
	ldr r0, _08055488 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	bl sub_80A872C
	b _080555F0
	.align 2, 0
_08055474: .4byte 0x0000FFFF
_08055478: .4byte gUnknown_03003F94
_0805547C: .4byte gUnknown_03003D20
_08055480: .4byte gUnknown_03006840
_08055484: .4byte gUnknown_03006208
_08055488: .4byte gUnknown_03003F34
_0805548C:
	cmp r2, #0x47
	bne _0805555C
	ldr r0, _080554F8 @ =gPlayers
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	movs r4, #0
	cmp r0, #0
	bne _080554C0
	ldr r1, _080554FC @ =gSaveGame
	adds r0, r1, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0x7f
	bne _080554C0
	ldrb r0, [r1, #0x10]
	cmp r0, #0x1f
	bne _080554C0
	ldrh r1, [r1, #0x34]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x1f
_080554C0:
	cmp r4, #0
	beq _0805551C
	bl sub_8003D2C
	ldr r1, _08055500 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08055504 @ =gUnknown_03003F94
	ldr r0, _08055508 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0805550C @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08055510 @ =gUnknown_03006208
	ldr r0, _08055514 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08055518 @ =gStageData
	adds r0, #0xba
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x48
	bl sub_8002210
	b _080555F0
	.align 2, 0
_080554F8: .4byte gPlayers
_080554FC: .4byte gSaveGame
_08055500: .4byte 0x0000FFFF
_08055504: .4byte gUnknown_03003F94
_08055508: .4byte gUnknown_03003D20
_0805550C: .4byte gUnknown_03006840
_08055510: .4byte gUnknown_03006208
_08055514: .4byte gUnknown_03003F34
_08055518: .4byte gStageData
_0805551C:
	bl sub_8003D2C
	ldr r1, _08055544 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08055548 @ =gUnknown_03003F94
	ldr r0, _0805554C @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08055550 @ =gUnknown_03006840
	strb r4, [r0]
	ldr r1, _08055554 @ =gUnknown_03006208
	ldr r0, _08055558 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #0
	bl sub_80A5954
	b _080555F0
	.align 2, 0
_08055544: .4byte 0x0000FFFF
_08055548: .4byte gUnknown_03003F94
_0805554C: .4byte gUnknown_03003D20
_08055550: .4byte gUnknown_03006840
_08055554: .4byte gUnknown_03006208
_08055558: .4byte gUnknown_03003F34
_0805555C:
	ldr r0, _080555A8 @ =gPlayers
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080555B4
	cmp r2, #0xf
	bne _0805557A
	ldr r0, _080555AC @ =gSaveGame
	ldrb r1, [r0, #0x10]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805559A
_0805557A:
	cmp r2, #0x23
	bne _0805558A
	ldr r0, _080555AC @ =gSaveGame
	ldrb r1, [r0, #0x10]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805559A
_0805558A:
	cmp r2, #0x37
	bne _080555B4
	ldr r0, _080555AC @ =gSaveGame
	ldrb r1, [r0, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080555B4
_0805559A:
	bl sub_8055F28
	ldr r0, _080555B0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080555F0
	.align 2, 0
_080555A8: .4byte gPlayers
_080555AC: .4byte gSaveGame
_080555B0: .4byte gCurTask
_080555B4:
	bl sub_8003D2C
	ldr r1, _080555F8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080555FC @ =gUnknown_03003F94
	ldr r0, _08055600 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08055604 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08055608 @ =gUnknown_03006208
	ldr r0, _0805560C @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _08055610 @ =gStageData
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
	bl sub_8002210
_080555F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080555F8: .4byte 0x0000FFFF
_080555FC: .4byte gUnknown_03003F94
_08055600: .4byte gUnknown_03003D20
_08055604: .4byte gUnknown_03006840
_08055608: .4byte gUnknown_03006208
_0805560C: .4byte gUnknown_03003F34
_08055610: .4byte gStageData

	thumb_func_start sub_8055614
sub_8055614: @ 0x08055614
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0
	ldr r1, _08055800 @ =gStageData
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r4, _08055804 @ =gPlayers
	adds r1, r1, r4
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #8]
	ldr r3, _08055808 @ =gUnknown_080D1CA8
	adds r0, r2, r3
	ldrb r0, [r0]
	ldr r5, [sp, #8]
	adds r1, r5, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0x10
	ldr r0, _08055800 @ =gStageData
	adds r0, #0xae
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	ldr r6, _08055800 @ =gStageData
	ldrb r0, [r6, #3]
	cmp r0, #5
	bne _08055696
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r2, r0, #0x1c
	movs r5, #0xbd
	lsls r5, r5, #1
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #8]
_08055696:
	ldr r0, _0805580C @ =0x0000029E
	add r0, sl
	movs r6, #0
	mov r8, r6
	strb r1, [r0]
	adds r0, r2, r3
	ldrb r0, [r0]
	rsbs r0, r0, #0
	subs r0, #8
	movs r5, #0xa6
	lsls r5, r5, #2
	add r5, sl
	strh r0, [r5]
	ldr r6, _08055810 @ =0x0000029A
	add r6, sl
	ldr r0, _08055814 @ =0x0000FFF8
	strh r0, [r6]
	movs r0, #0xa7
	lsls r0, r0, #2
	add r0, sl
	str r0, [sp, #0x10]
	movs r0, #8
	ldr r1, [sp, #0x10]
	strh r0, [r1]
	movs r1, #0xa8
	lsls r1, r1, #2
	add r1, sl
	movs r0, #0xe6
	strb r0, [r1]
	mov r7, sl
	adds r7, #0xc
	lsls r4, r2, #1
	adds r4, r4, r2
	lsls r4, r4, #1
	ldr r2, _08055818 @ =gUnknown_080D1CB2
	adds r0, r4, r2
	ldrh r0, [r0]
	bl VramMalloc
	mov r3, sl
	str r0, [r3, #0xc]
	ldr r1, _0805581C @ =gUnknown_080D1CAE
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldr r2, _08055820 @ =gUnknown_080D1CB0
	adds r4, r4, r2
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r3, #0x80
	strh r3, [r7, #0x14]
	mov r4, r8
	str r4, [r7, #8]
	strh r4, [r7, #0xe]
	ldr r0, _08055824 @ =0x00000292
	add r0, sl
	mov sb, r0
	ldrh r0, [r5]
	mov r1, sb
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	movs r5, #0xa5
	lsls r5, r5, #2
	add r5, sl
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r7, #0x12]
	mov r2, r8
	strh r2, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r4, #0
	strb r4, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x20]
	adds r7, #0x28
	movs r0, #4
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0x34]
	ldr r2, _08055828 @ =0x00000596
	strh r2, [r7, #0xc]
	movs r0, #5
	strb r0, [r7, #0x1a]
	movs r3, #0x80
	strh r3, [r7, #0x14]
	mov r4, r8
	str r4, [r7, #8]
	strh r4, [r7, #0xe]
	ldrh r0, [r6]
	mov r6, sb
	ldrh r6, [r6]
	adds r0, r0, r6
	strh r0, [r7, #0x10]
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r7, #0x12]
	mov r0, r8
	strh r0, [r7, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	adds r6, r1, #0
	adds r0, r1, #0
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	str r0, [r7, #0x20]
	ldr r4, _08055800 @ =gStageData
	ldrb r0, [r4, #9]
	cmp r0, #8
	bne _08055786
	movs r0, #5
	str r0, [sp, #8]
_08055786:
	mov r7, sl
	adds r7, #0x5c
	ldr r1, [sp, #8]
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #1
	ldr r2, _08055818 @ =gUnknown_080D1CB2
	adds r0, r4, r2
	ldrh r0, [r0]
	bl VramMalloc
	mov r3, sl
	str r0, [r3, #0x5c]
	ldr r1, _0805581C @ =gUnknown_080D1CAE
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldr r2, _08055820 @ =gUnknown_080D1CB0
	adds r4, r4, r2
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r3, #0x80
	strh r3, [r7, #0x14]
	mov r4, r8
	str r4, [r7, #8]
	strh r4, [r7, #0xe]
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	mov r2, sb
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r7, #0x10]
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r7, #0x12]
	mov r3, r8
	strh r3, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	orrs r0, r6
	strb r0, [r7, #0x1b]
	movs r4, #0x10
	strb r4, [r7, #0x1c]
	movs r5, #0
	strb r5, [r7, #0x1f]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r7, #0x20]
	adds r7, #0x28
	movs r0, #0xe
	bl VramMalloc
	str r0, [r7]
	ldr r0, _08055828 @ =0x00000596
	strh r0, [r7, #0xc]
	ldr r1, _08055800 @ =gStageData
	ldrb r0, [r1, #9]
	cmp r0, #7
	bne _0805582C
	movs r0, #9
	b _08055866
	.align 2, 0
_08055800: .4byte gStageData
_08055804: .4byte gPlayers
_08055808: .4byte gUnknown_080D1CA8
_0805580C: .4byte 0x0000029E
_08055810: .4byte 0x0000029A
_08055814: .4byte 0x0000FFF8
_08055818: .4byte gUnknown_080D1CB2
_0805581C: .4byte gUnknown_080D1CAE
_08055820: .4byte gUnknown_080D1CB0
_08055824: .4byte 0x00000292
_08055828: .4byte 0x00000596
_0805582C:
	cmp r0, #8
	bne _08055840
	movs r0, #0x19
	strb r0, [r7, #0x1a]
	ldr r1, _0805583C @ =0x0000029F
	add r1, sl
	movs r0, #0x39
	b _0805586E
	.align 2, 0
_0805583C: .4byte 0x0000029F
_08055840:
	ldr r2, _0805585C @ =gStageData
	ldrb r1, [r2, #0xa]
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _08055864
	adds r0, r1, #3
	strb r0, [r7, #0x1a]
	ldr r1, _08055860 @ =0x0000029F
	add r1, sl
	movs r0, #0x32
	b _0805586E
	.align 2, 0
_0805585C: .4byte gStageData
_08055860: .4byte 0x0000029F
_08055864:
	movs r0, #0xa
_08055866:
	strb r0, [r7, #0x1a]
	ldr r1, _08055B2C @ =0x0000029F
	add r1, sl
	movs r0, #0x3a
_0805586E:
	strb r0, [r1]
	movs r6, #0
	movs r3, #0x80
	strh r3, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldr r4, _08055B30 @ =0x00000296
	add r4, sl
	ldrh r0, [r4]
	strh r0, [r7, #0x10]
	movs r5, #0x1c
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	mov r7, sl
	adds r7, #0xac
	movs r0, #0xc
	bl VramMalloc
	str r0, [r7]
	ldr r3, _08055B34 @ =0x00000596
	mov sb, r3
	mov r0, sb
	strh r0, [r7, #0xc]
	movs r0, #0x17
	strb r0, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldr r1, _08055B2C @ =0x0000029F
	add r1, sl
	ldrh r0, [r4]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	str r0, [r7, #0x20]
	adds r7, #0x28
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7]
	mov r4, sb
	strh r4, [r7, #0xc]
	movs r0, #0xb
	strb r0, [r7, #0x1a]
	movs r5, #0x80
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r0, #0x34
	mov r8, r0
	mov r1, r8
	strh r1, [r7, #0x10]
	strh r1, [r7, #0x12]
	strh r6, [r7, #0x16]
	subs r0, #0x35
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	str r0, [r7, #0x20]
	ldr r0, [sp, #0xc]
	movs r1, #0x3c
	bl Mod
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, [sp, #0xc]
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	subs r4, r4, r1
	lsls r4, r4, #0x10
	mov r2, sp
	ldr r3, _08055B38 @ =gUnknown_080CE4B2
	lsls r5, r5, #1
	adds r1, r3, #1
	adds r1, r5, r1
	ldrb r1, [r1]
	strb r1, [r2]
	adds r5, r5, r3
	ldrb r1, [r5]
	strb r1, [r2, #1]
	ldr r3, _08055B3C @ =gUnknown_080CE438
	lsrs r4, r4, #0xf
	adds r1, r3, #1
	adds r1, r4, r1
	ldrb r1, [r1]
	strb r1, [r2, #2]
	adds r4, r4, r3
	ldrb r1, [r4]
	strb r1, [r2, #3]
	mov r1, sp
	strb r0, [r1, #4]
	adds r7, #0x28
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	mov r4, sb
	strh r4, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r5, #0x80
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r4, #0xa8
	lsls r4, r4, #2
	add r4, sl
	ldrb r0, [r4]
	adds r0, #0x54
	strh r0, [r7, #0x10]
	mov r0, r8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0x92
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	mov r3, sb
	strh r3, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #1]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrb r0, [r4]
	adds r0, #0x44
	strh r0, [r7, #0x10]
	mov r5, r8
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x20]
	movs r7, #0xa6
	lsls r7, r7, #1
	add r7, sl
	movs r0, #2
	bl VramMalloc
	str r0, [r7]
	mov r3, sb
	strh r3, [r7, #0xc]
	movs r5, #0xc
	strb r5, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrb r0, [r4]
	adds r0, #0x3a
	strh r0, [r7, #0x10]
	mov r1, r8
	strh r1, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	strb r2, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xba
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	mov r0, sb
	strh r0, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #2]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r1, #0x80
	strh r1, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrb r0, [r4]
	adds r0, #0x2a
	strh r0, [r7, #0x10]
	mov r2, r8
	strh r2, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r3, #0x10
	strb r3, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x20]
	movs r7, #0xce
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	mov r2, sb
	strh r2, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #3]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	movs r3, #0x80
	strh r3, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrb r0, [r4]
	adds r0, #0x1a
	strh r0, [r7, #0x10]
	mov r0, r8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xe2
	lsls r7, r7, #1
	add r7, sl
	movs r0, #2
	bl VramMalloc
	str r0, [r7]
	mov r3, sb
	strh r3, [r7, #0xc]
	strb r5, [r7, #0x1a]
	movs r5, #0x80
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrb r0, [r4]
	adds r0, #0x10
	strh r0, [r7, #0x10]
	mov r0, r8
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r0, [r7, #0x20]
	movs r7, #0xf6
	lsls r7, r7, #1
	add r7, sl
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	mov r3, sb
	strh r3, [r7, #0xc]
	mov r0, sp
	ldrb r0, [r0, #4]
	adds r0, #0xd
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	ldrb r0, [r4]
	strh r0, [r7, #0x10]
	mov r4, r8
	strh r4, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	strb r6, [r7, #0x1f]
	str r0, [r7, #0x20]
	ldr r0, _08055B40 @ =gStageData
	ldrb r0, [r0, #0xe]
	ldr r2, _08055B44 @ =gUnknown_080D1A40
	lsls r1, r0, #2
	adds r0, r1, r2
	ldr r3, [sp, #0xc]
	ldrh r0, [r0]
	cmp r3, r0
	bhi _08055B48
	movs r1, #0
	b _08055B58
	.align 2, 0
_08055B2C: .4byte 0x0000029F
_08055B30: .4byte 0x00000296
_08055B34: .4byte 0x00000596
_08055B38: .4byte gUnknown_080CE4B2
_08055B3C: .4byte gUnknown_080CE438
_08055B40: .4byte gStageData
_08055B44: .4byte gUnknown_080D1A40
_08055B48:
	adds r0, r2, #2
	adds r0, r1, r0
	movs r1, #2
	ldr r4, [sp, #0xc]
	ldrh r0, [r0]
	cmp r4, r0
	bhi _08055B58
	movs r1, #1
_08055B58:
	ldr r0, _08055C10 @ =gStageData
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08055B64
	movs r1, #2
_08055B64:
	movs r7, #0x85
	lsls r7, r7, #2
	add r7, sl
	ldr r5, _08055C14 @ =gUnknown_080D1CD2
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl VramMalloc
	str r0, [r7]
	adds r0, r4, r5
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r7, #0xc]
	adds r5, #2
	adds r4, r4, r5
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r5, #0x80
	mov r8, r5
	mov r0, r8
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r1, #0x78
	mov sb, r1
	mov r2, sb
	strh r2, [r7, #0x10]
	ldr r5, _08055C18 @ =0x0000FFF0
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x40
	strb r0, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x20]
	movs r7, #0x8f
	lsls r7, r7, #2
	add r7, sl
	movs r0, #6
	bl VramMalloc
	str r0, [r7]
	movs r0, #0xed
	lsls r0, r0, #2
	strh r0, [r7, #0xc]
	movs r0, #8
	strb r0, [r7, #0x1a]
	mov r0, r8
	strh r0, [r7, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r7, #8]
	strh r6, [r7, #0xe]
	mov r1, sb
	strh r1, [r7, #0x10]
	strh r5, [r7, #0x12]
	strh r6, [r7, #0x16]
	adds r0, r4, #0
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r2, #0
	strb r2, [r7, #0x1f]
	str r4, [r7, #0x20]
	ldr r3, _08055C10 @ =gStageData
	ldrb r0, [r3, #3]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08055C94
	ldrb r3, [r3, #9]
	ldr r4, _08055C10 @ =gStageData
	ldrb r1, [r4, #0xa]
	cmp r1, #7
	bne _08055C1C
	movs r1, #3
	b _08055C22
	.align 2, 0
_08055C10: .4byte gStageData
_08055C14: .4byte gUnknown_080D1CD2
_08055C18: .4byte 0x0000FFF0
_08055C1C:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08055C22:
	movs r4, #0
	ldr r5, _08055C3C @ =gSaveGame
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r2, r0, #2
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r1, r0, #4
	adds r0, r2, r1
	adds r0, r0, r5
	movs r3, #0x97
	lsls r3, r3, #1
	b _08055C52
	.align 2, 0
_08055C3C: .4byte gSaveGame
_08055C40:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bhi _08055C5C
	lsls r0, r4, #2
	adds r0, r0, r2
	adds r0, r0, r1
	adds r0, r0, r5
_08055C52:
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r6, [sp, #0xc]
	cmp r0, r6
	bls _08055C40
_08055C5C:
	movs r7, #0x99
	lsls r7, r7, #2
	add r7, sl
	movs r0, #8
	bl VramMalloc
	str r0, [r7]
	movs r2, #0
	movs r1, #0
	ldr r0, _08055CA4 @ =0x00000597
	strh r0, [r7, #0xc]
	strb r4, [r7, #0x1a]
	movs r0, #0x40
	strh r0, [r7, #0x14]
	str r1, [r7, #8]
	strh r1, [r7, #0xe]
	movs r0, #0x68
	strh r0, [r7, #0x10]
	movs r0, #0x5a
	strh r0, [r7, #0x12]
	strh r1, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	strb r2, [r7, #0x1f]
	subs r0, #0x11
	str r0, [r7, #0x20]
_08055C94:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055CA4: .4byte 0x00000597

	thumb_func_start sub_8055CA8
sub_8055CA8: @ 0x08055CA8
	push {r4, r5, r6, r7, lr}
	ldr r0, _08055D24 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08055D28 @ =0x0300000C
	adds r7, r4, r0
	ldr r1, _08055D2C @ =0x03000292
	adds r6, r4, r1
	adds r1, #6
	adds r0, r4, r1
	ldrh r0, [r0]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	ldr r0, _08055D30 @ =0x03000294
	adds r5, r4, r0
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r1, _08055D34 @ =0x03000034
	adds r7, r4, r1
	ldr r1, _08055D38 @ =0x0300029A
	adds r0, r4, r1
	ldrh r0, [r0]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, _08055D3C @ =0x0300005C
	adds r7, r4, r0
	ldr r1, _08055D40 @ =0x0300029C
	adds r4, r4, r1
	ldrh r0, [r4]
	ldrh r6, [r6]
	adds r0, r0, r6
	strh r0, [r7, #0x10]
	ldrh r0, [r5]
	subs r0, #8
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055D24: .4byte gCurTask
_08055D28: .4byte 0x0300000C
_08055D2C: .4byte 0x03000292
_08055D30: .4byte 0x03000294
_08055D34: .4byte 0x03000034
_08055D38: .4byte 0x0300029A
_08055D3C: .4byte 0x0300005C
_08055D40: .4byte 0x0300029C

	thumb_func_start sub_8055D44
sub_8055D44: @ 0x08055D44
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08055DA0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, _08055DA4 @ =gUnknown_080D1D50
	mov r0, sp
	movs r2, #7
	bl memcpy
	movs r0, #0
_08055D60:
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, #0xfc
	adds r4, r6, r4
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r1, [r0]
	mov r2, sp
	adds r0, r2, r5
	ldrb r0, [r0]
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r5, #1
	lsls r5, r5, #0x10
	lsrs r0, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #6
	ble _08055D60
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08055DA0: .4byte gCurTask
_08055DA4: .4byte gUnknown_080D1D50

	thumb_func_start sub_8055DA8
sub_8055DA8: @ 0x08055DA8
	push {r4, lr}
	ldr r0, _08055DD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08055DD4
	adds r0, r4, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08055E24
	movs r0, #1
	strb r0, [r4, #0xe]
	b _08055E24
	.align 2, 0
_08055DD0: .4byte gCurTask
_08055DD4:
	bl sub_8001E58
	bl sub_8003D2C
	ldr r1, _08055E2C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08055E30 @ =gUnknown_03003F94
	ldr r0, _08055E34 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08055E38 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08055E3C @ =gUnknown_03006208
	ldr r0, _08055E40 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _08055E44 @ =gStageData
	movs r0, #0
	strb r0, [r2, #0xd]
	ldr r3, _08055E48 @ =gPlayers
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldrb r1, [r2, #9]
	ldr r2, _08055E4C @ =gSaveGame
	adds r2, #0x32
	ldrb r2, [r2]
	bl sub_80B1AF4
_08055E24:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055E2C: .4byte 0x0000FFFF
_08055E30: .4byte gUnknown_03003F94
_08055E34: .4byte gUnknown_03003D20
_08055E38: .4byte gUnknown_03006840
_08055E3C: .4byte gUnknown_03006208
_08055E40: .4byte gUnknown_03003F34
_08055E44: .4byte gStageData
_08055E48: .4byte gPlayers
_08055E4C: .4byte gSaveGame

	thumb_func_start sub_8055E50
sub_8055E50: @ 0x08055E50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r0, _08055F1C @ =gStageData
	ldrb r2, [r0]
	mov r0, sl
	adds r0, #0x5e
	ldrb r0, [r0]
	mov sb, r0
	mov r0, sl
	adds r0, #0x5f
	ldrb r1, [r0]
	mov r7, sl
	adds r7, #0xc
	ldr r5, _08055F20 @ =gUnknown_080D1CE4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r4, r2, #3
	adds r4, r4, r2
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0xc]
	adds r0, r4, r5
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r7, #0xc]
	adds r5, #2
	adds r4, r4, r5
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r1, #0x78
	strh r1, [r7, #0x10]
	movs r0, #0x50
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r7, #0x20]
	adds r7, #0x28
	ldr r5, _08055F24 @ =gUnknown_080D1CD2
	mov r1, sb
	lsls r4, r1, #1
	add r4, sb
	lsls r4, r4, #1
	adds r0, r5, #4
	adds r0, r4, r0
	ldrh r0, [r0]
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0x34]
	adds r0, r4, r5
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	adds r5, #2
	adds r4, r4, r5
	ldrh r0, [r4]
	strb r0, [r7, #0x1a]
	movs r0, #0x80
	strh r0, [r7, #0x14]
	str r6, [r7, #8]
	strh r6, [r7, #0xe]
	movs r1, #0x78
	strh r1, [r7, #0x10]
	movs r0, #0x28
	strh r0, [r7, #0x12]
	strh r6, [r7, #0x16]
	subs r0, #0x29
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	mov r0, r8
	str r0, [r7, #0x20]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055F1C: .4byte gStageData
_08055F20: .4byte gUnknown_080D1CE4
_08055F24: .4byte gUnknown_080D1CD2

	thumb_func_start sub_8055F28
sub_8055F28: @ 0x08055F28
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08055F54 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #1
	bne _08055F5C
	ldr r0, _08055F58 @ =sub_8056714
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	bl sub_80566A8
	movs r0, #8
	bl sub_8001EEC
	b _08055FA6
	.align 2, 0
_08055F54: .4byte gStageData
_08055F58: .4byte sub_8056714
_08055F5C:
	cmp r0, #3
	bne _08055F84
	ldr r0, _08055F80 @ =sub_8056884
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	bl sub_8056818
	movs r0, #0x10
	bl sub_8001EEC
	b _08055FA6
	.align 2, 0
_08055F80: .4byte sub_8056884
_08055F84:
	cmp r0, #5
	bne _08056016
	ldr r0, _08056020 @ =sub_8056934
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	bl sub_80568CC
	movs r0, #2
	bl sub_8001EEC
_08055FA6:
	ldrh r0, [r4, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r5, #0
	movs r1, #0x78
	strh r1, [r0, #0x34]
	movs r1, #1
	strh r1, [r0]
	movs r1, #2
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	ldr r6, _08056024 @ =gStageData
	adds r4, r6, #0
	adds r4, #0xa4
	ldr r0, [r4]
	cmp r0, #0
	beq _08055FDC
	bl TaskDestroy
	str r5, [r4]
_08055FDC:
	movs r0, #9
	strb r0, [r6, #4]
	ldr r4, _08056028 @ =gPlayers
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r5, #0xf
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #1
	bne _08055FFA
	movs r0, #0
	adds r1, r4, #0
	bl sub_801EBC0
_08055FFA:
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #1
	bne _08056016
	movs r0, #0
	adds r1, r4, #0
	bl sub_801EBC0
_08056016:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056020: .4byte sub_8056934
_08056024: .4byte gStageData
_08056028: .4byte gPlayers

	thumb_func_start sub_805602C
sub_805602C: @ 0x0805602C
	push {lr}
	sub sp, #4
	bl sub_8003D2C
	ldr r1, _08056070 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08056074 @ =gUnknown_03003F94
	ldr r0, _08056078 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0805607C @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08056080 @ =gUnknown_03006208
	ldr r0, _08056084 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08056088 @ =sub_8056A20
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r3, #0
	bl TaskCreate
	ldr r1, _0805608C @ =gStageData
	movs r0, #6
	strb r0, [r1, #4]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08056070: .4byte 0x0000FFFF
_08056074: .4byte gUnknown_03003F94
_08056078: .4byte gUnknown_03003D20
_0805607C: .4byte gUnknown_03006840
_08056080: .4byte gUnknown_03006208
_08056084: .4byte gUnknown_03003F34
_08056088: .4byte sub_8056A20
_0805608C: .4byte gStageData

	thumb_func_start sub_8056090
sub_8056090: @ 0x08056090
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _080560F0 @ =sub_8056660
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080560F4 @ =sub_8056104
	str r1, [sp]
	movs r1, #0x64
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r2, _080560F8 @ =0x0300005C
	adds r3, r1, r2
	movs r2, #0
	strh r2, [r3]
	ldr r3, _080560FC @ =0x0300005E
	adds r2, r1, r3
	strb r4, [r2]
	adds r3, #1
	adds r2, r1, r3
	strb r5, [r2]
	ldr r2, _08056100 @ =0x03000060
	adds r1, r1, r2
	strb r6, [r1]
	bl sub_8055E50
	bl sub_80299FC
	movs r0, #0x61
	bl m4aSongNumStart
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080560F0: .4byte sub_8056660
_080560F4: .4byte sub_8056104
_080560F8: .4byte 0x0300005C
_080560FC: .4byte 0x0300005E
_08056100: .4byte 0x03000060

	thumb_func_start sub_8056104
sub_8056104: @ 0x08056104
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8056120
sub_8056120: @ 0x08056120
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08056164 @ =sub_8056984
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0
	str r5, [sp]
	movs r1, #0x10
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0, #0xc]
	strh r5, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r5, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r5, [r0, #0xa]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056164: .4byte sub_8056984

	thumb_func_start sub_8056168
sub_8056168: @ 0x08056168
	push {r4, lr}
	sub sp, #4
	ldr r0, _080561A4 @ =sub_80569B4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r4, #0
	str r4, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	movs r1, #1
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080561A4: .4byte sub_80569B4

	thumb_func_start sub_80561A8
sub_80561A8: @ 0x080561A8
	push {lr}
	ldr r0, _080561D8 @ =gPlayers
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080561E0
	ldr r1, _080561DC @ =gSaveGame
	adds r0, r1, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0x7f
	bne _080561E0
	ldrb r0, [r1, #0x10]
	cmp r0, #0x1f
	bne _080561E0
	ldrh r1, [r1, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080561E0
	movs r0, #1
	b _080561E2
	.align 2, 0
_080561D8: .4byte gPlayers
_080561DC: .4byte gSaveGame
_080561E0:
	movs r0, #0
_080561E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80561E8
sub_80561E8: @ 0x080561E8
	ldr r0, _0805620C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldr r3, _08056210 @ =gWinRegs
	ldrb r1, [r2, #6]
	lsls r1, r1, #8
	ldrb r0, [r2, #8]
	orrs r0, r1
	strh r0, [r3]
	ldrb r1, [r2, #7]
	lsls r1, r1, #8
	ldrb r0, [r2, #9]
	orrs r0, r1
	strh r0, [r3, #4]
	bx lr
	.align 2, 0
_0805620C: .4byte gCurTask
_08056210: .4byte gWinRegs

	thumb_func_start sub_8056214
sub_8056214: @ 0x08056214
	push {r4, lr}
	ldr r0, _08056234 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r1, [r4, #0xa]
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r0, #0x78
	ble _08056238
	adds r0, r1, #0
	subs r0, #0xc
	b _0805623A
	.align 2, 0
_08056234: .4byte gCurTask
_08056238:
	movs r0, #0x78
_0805623A:
	strh r0, [r4, #0xa]
	bl sub_8054E38
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _0805625A
	movs r0, #0
	strh r0, [r4, #4]
	ldr r0, _08056260 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056264 @ =sub_8054764
	str r0, [r1, #8]
_0805625A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056260: .4byte gCurTask
_08056264: .4byte sub_8054764

	thumb_func_start sub_8056268
sub_8056268: @ 0x08056268
	push {r4, lr}
	ldr r0, _08056288 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r1, [r4, #0xa]
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r0, #8
	ble _0805628C
	adds r0, r1, #0
	subs r0, #8
	b _0805628E
	.align 2, 0
_08056288: .4byte gCurTask
_0805628C:
	movs r0, #8
_0805628E:
	strh r0, [r4, #0xa]
	bl sub_8054E38
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _080562AE
	movs r0, #0
	strh r0, [r4, #4]
	ldr r0, _080562B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080562B8 @ =sub_80562BC
	str r0, [r1, #8]
_080562AE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080562B4: .4byte gCurTask
_080562B8: .4byte sub_80562BC

	thumb_func_start sub_80562BC
sub_80562BC: @ 0x080562BC
	push {r4, lr}
	ldr r0, _080562DC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r1, [r4, #0xe]
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0x82
	ble _080562E0
	adds r0, r1, #0
	subs r0, #0xc
	b _080562E2
	.align 2, 0
_080562DC: .4byte gCurTask
_080562E0:
	movs r0, #0x82
_080562E2:
	strh r0, [r4, #0xe]
	bl sub_8054E38
	bl sub_80563BC
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _08056306
	movs r0, #0
	strh r0, [r4, #4]
	ldr r0, _0805630C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056310 @ =sub_8056314
	str r0, [r1, #8]
_08056306:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805630C: .4byte gCurTask
_08056310: .4byte sub_8056314

	thumb_func_start sub_8056314
sub_8056314: @ 0x08056314
	push {r4, lr}
	ldr r0, _08056330 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #0x18]
	cmp r0, #0x84
	bls _08056334
	subs r0, #8
	strb r0, [r4, #0x18]
	b _0805633C
	.align 2, 0
_08056330: .4byte gCurTask
_08056334:
	movs r0, #0x84
	strb r0, [r4, #0x18]
	bl sub_8056408
_0805633C:
	bl sub_8054E38
	bl sub_80563BC
	bl sub_8056430
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _08056362
	movs r0, #0
	strh r0, [r4, #4]
	ldr r0, _08056368 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805636C @ =sub_8056370
	str r0, [r1, #8]
_08056362:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056368: .4byte gCurTask
_0805636C: .4byte sub_8056370

	thumb_func_start sub_8056370
sub_8056370: @ 0x08056370
	push {r4, r5, lr}
	ldr r5, _080563B4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_8054E38
	bl sub_80563BC
	bl sub_8056430
	bl sub_8056408
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3b
	bls _080563AE
	movs r0, #0
	strh r0, [r4, #4]
	movs r0, #0x82
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r1, [r5]
	ldr r0, _080563B8 @ =sub_80547DC
	str r0, [r1, #8]
_080563AE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080563B4: .4byte gCurTask
_080563B8: .4byte sub_80547DC

	thumb_func_start sub_80563BC
sub_80563BC: @ 0x080563BC
	push {r4, r5, r6, lr}
	ldr r0, _080563FC @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, _08056400 @ =0x03000094
	adds r6, r5, r0
	ldrh r0, [r4, #0xe]
	strh r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _08056404 @ =0x030000BC
	adds r6, r5, r0
	ldrh r0, [r4, #0xe]
	ldrb r4, [r4, #0x17]
	adds r0, r0, r4
	strh r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080563FC: .4byte gCurTask
_08056400: .4byte 0x03000094
_08056404: .4byte 0x030000BC

	thumb_func_start sub_8056408
sub_8056408: @ 0x08056408
	push {r4, lr}
	ldr r0, _08056428 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _0805642C @ =0x030000E4
	adds r4, r4, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056428: .4byte gCurTask
_0805642C: .4byte 0x030000E4

	thumb_func_start sub_8056430
sub_8056430: @ 0x08056430
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _0805648C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, _08056490 @ =gUnknown_080D1D50
	mov r0, sp
	movs r2, #7
	bl memcpy
	movs r0, #0
_0805644C:
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	movs r0, #0x86
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r4, r6, r4
	ldrb r1, [r6, #0x18]
	mov r2, sp
	adds r0, r2, r5
	ldrb r0, [r0]
	adds r1, r1, r0
	strh r1, [r4, #0x10]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r5, #1
	lsls r5, r5, #0x10
	lsrs r0, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #6
	ble _0805644C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805648C: .4byte gCurTask
_08056490: .4byte gUnknown_080D1D50

	thumb_func_start sub_8056494
sub_8056494: @ 0x08056494
	push {r4, r5, lr}
	ldr r0, _080564C4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _080564C8 @ =0x03000224
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _080564CC @ =0x0300024C
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080564C4: .4byte gCurTask
_080564C8: .4byte 0x03000224
_080564CC: .4byte 0x0300024C

	thumb_func_start sub_80564D0
sub_80564D0: @ 0x080564D0
	push {r4, lr}
	ldr r0, _0805650C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	bl sub_8055CA8
	bl sub_8056564
	bl sub_8055D44
	bl sub_80565BC
	bl sub_80565E4
	bl sub_8056620
	ldr r0, _08056510 @ =0x03000290
	adds r4, r4, r0
	ldrh r0, [r4]
	adds r1, r0, #1
	strh r1, [r4]
	ldr r0, _08056514 @ =gStageData
	ldrh r0, [r0, #0xe]
	cmp r0, #0x48
	beq _08056518
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x77
	bls _08056528
	b _08056520
	.align 2, 0
_0805650C: .4byte gCurTask
_08056510: .4byte 0x03000290
_08056514: .4byte gStageData
_08056518:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb3
	bls _08056528
_08056520:
	ldr r0, _08056530 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08056534 @ =sub_80552C8
	str r0, [r1, #8]
_08056528:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056530: .4byte gCurTask
_08056534: .4byte sub_80552C8

	thumb_func_start sub_8056538
sub_8056538: @ 0x08056538
	push {r4, lr}
	ldr r4, _0805655C @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056556
	ldr r1, [r4]
	ldr r0, _08056560 @ =sub_8055378
	str r0, [r1, #8]
_08056556:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805655C: .4byte gCurTask
_08056560: .4byte sub_8055378

	thumb_func_start sub_8056564
sub_8056564: @ 0x08056564
	push {r4, r5, r6, lr}
	ldr r0, _080565A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _080565AC @ =0x03000084
	adds r6, r4, r0
	ldr r0, _080565B0 @ =0x03000296
	adds r5, r4, r0
	ldrh r0, [r5]
	strh r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, _080565B4 @ =0x030000AC
	adds r6, r4, r0
	ldr r0, _080565B8 @ =0x0300029F
	adds r4, r4, r0
	ldrh r0, [r5]
	ldrb r4, [r4]
	adds r0, r0, r4
	strh r0, [r6, #0x10]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080565A8: .4byte gCurTask
_080565AC: .4byte 0x03000084
_080565B0: .4byte 0x03000296
_080565B4: .4byte 0x030000AC
_080565B8: .4byte 0x0300029F

	thumb_func_start sub_80565BC
sub_80565BC: @ 0x080565BC
	push {r4, lr}
	ldr r0, _080565DC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _080565E0 @ =0x030000D4
	adds r4, r4, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080565DC: .4byte gCurTask
_080565E0: .4byte 0x030000D4

	thumb_func_start sub_80565E4
sub_80565E4: @ 0x080565E4
	push {r4, r5, lr}
	ldr r0, _08056614 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _08056618 @ =0x03000214
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0805661C @ =0x0300023C
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056614: .4byte gCurTask
_08056618: .4byte 0x03000214
_0805661C: .4byte 0x0300023C

	thumb_func_start sub_8056620
sub_8056620: @ 0x08056620
	push {r4, lr}
	ldr r0, _08056654 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08056658 @ =0x03000264
	adds r4, r0, r1
	ldr r0, _0805665C @ =gStageData
	ldrb r0, [r0, #3]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0805664C
	ldrb r0, [r4, #0x1a]
	cmp r0, #4
	bhi _0805664C
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0805664C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056654: .4byte gCurTask
_08056658: .4byte 0x03000264
_0805665C: .4byte gStageData

	thumb_func_start sub_8056660
sub_8056660: @ 0x08056660
	push {r4, r5, lr}
	ldr r0, _08056698 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	ldr r0, _0805669C @ =0x0300000C
	adds r4, r5, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _080566A0 @ =0x03000060
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08056692
	ldr r0, _080566A4 @ =0x03000034
	adds r4, r5, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08056692:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056698: .4byte gCurTask
_0805669C: .4byte 0x0300000C
_080566A0: .4byte 0x03000060
_080566A4: .4byte 0x03000034

	thumb_func_start sub_80566A8
sub_80566A8: @ 0x080566A8
	push {r4, r5, lr}
	ldr r2, _080566FC @ =gPlayers
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	movs r5, #0
	strh r5, [r2, #0x30]
	movs r0, #0xe4
	lsls r0, r0, #0xd
	str r0, [r2, #0x10]
	ldr r4, _08056700 @ =0x0006B200
	str r4, [r2, #0x14]
	ldr r0, [r2, #4]
	ldr r3, _08056704 @ =0xEFFEFFFE
	ands r0, r3
	str r0, [r2, #4]
	strh r5, [r1, #0x30]
	movs r0, #0xe3
	lsls r0, r0, #0xd
	str r0, [r1, #0x10]
	str r4, [r1, #0x14]
	ldr r0, [r1, #4]
	ands r0, r3
	str r0, [r1, #4]
	ldr r0, _08056708 @ =gCamera
	ldr r1, _0805670C @ =0x00001C30
	str r1, [r0]
	str r1, [r0, #0x28]
	ldr r1, _08056710 @ =0x00000644
	str r1, [r0, #4]
	str r1, [r0, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080566FC: .4byte gPlayers
_08056700: .4byte 0x0006B200
_08056704: .4byte 0xEFFEFFFE
_08056708: .4byte gCamera
_0805670C: .4byte 0x00001C30
_08056710: .4byte 0x00000644

	thumb_func_start sub_8056714
sub_8056714: @ 0x08056714
	push {r4, r5, lr}
	ldr r5, _08056750 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0805674A
	ldrh r0, [r4, #0x34]
	subs r0, #1
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805674A
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #0x34]
	bl sub_80AE770
	ldr r1, [r5]
	ldr r0, _08056754 @ =sub_8056758
	str r0, [r1, #8]
_0805674A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056750: .4byte gCurTask
_08056754: .4byte sub_8056758

	thumb_func_start sub_8056758
sub_8056758: @ 0x08056758
	ldr r0, _0805676C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #0x34]
	subs r0, #1
	strh r0, [r1, #0x34]
	bx lr
	.align 2, 0
_0805676C: .4byte gCurTask

	thumb_func_start sub_8056770
sub_8056770: @ 0x08056770
	ldr r0, _08056798 @ =gCurTask
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	movs r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r0, _0805679C @ =sub_80567A0
	str r0, [r3, #8]
	bx lr
	.align 2, 0
_08056798: .4byte gCurTask
_0805679C: .4byte sub_80567A0

	thumb_func_start sub_80567A0
sub_80567A0: @ 0x080567A0
	push {lr}
	ldr r0, _080567F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080567F4
	bl sub_8003D2C
	ldr r1, _080567FC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08056800 @ =gUnknown_03003F94
	ldr r0, _08056804 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08056808 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0805680C @ =gUnknown_03006208
	ldr r0, _08056810 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r2, _08056814 @ =gStageData
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
	bl sub_8002210
_080567F4:
	pop {r0}
	bx r0
	.align 2, 0
_080567F8: .4byte gCurTask
_080567FC: .4byte 0x0000FFFF
_08056800: .4byte gUnknown_03003F94
_08056804: .4byte gUnknown_03003D20
_08056808: .4byte gUnknown_03006840
_0805680C: .4byte gUnknown_03006208
_08056810: .4byte gUnknown_03003F34
_08056814: .4byte gStageData

	thumb_func_start sub_8056818
sub_8056818: @ 0x08056818
	push {r4, r5, lr}
	ldr r2, _08056870 @ =gPlayers
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	movs r5, #0
	strh r5, [r2, #0x30]
	movs r0, #0xf9
	lsls r0, r0, #0xd
	str r0, [r2, #0x10]
	ldr r4, _08056874 @ =0x0002F200
	str r4, [r2, #0x14]
	ldr r0, [r2, #4]
	ldr r3, _08056878 @ =0xEFFEFFFE
	ands r0, r3
	str r0, [r2, #4]
	strh r5, [r1, #0x30]
	movs r0, #0xf8
	lsls r0, r0, #0xd
	str r0, [r1, #0x10]
	str r4, [r1, #0x14]
	ldr r0, [r1, #4]
	ands r0, r3
	str r0, [r1, #4]
	ldr r0, _0805687C @ =gCamera
	ldr r1, _08056880 @ =0x00001ED0
	str r1, [r0]
	str r1, [r0, #0x28]
	movs r1, #0xa1
	lsls r1, r1, #2
	str r1, [r0, #4]
	str r1, [r0, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056870: .4byte gPlayers
_08056874: .4byte 0x0002F200
_08056878: .4byte 0xEFFEFFFE
_0805687C: .4byte gCamera
_08056880: .4byte 0x00001ED0

	thumb_func_start sub_8056884
sub_8056884: @ 0x08056884
	push {r4, r5, lr}
	ldr r5, _080568C0 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080568BA
	ldrh r0, [r4, #0x34]
	cmp r0, #0x3c
	bne _080568A8
	bl sub_80AE174
_080568A8:
	ldrh r0, [r4, #0x34]
	subs r0, #1
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080568BA
	ldr r1, [r5]
	ldr r0, _080568C4 @ =sub_80568C8
	str r0, [r1, #8]
_080568BA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080568C0: .4byte gCurTask
_080568C4: .4byte sub_80568C8
    
    thumb_func_start sub_80568C8
sub_80568C8:
    bx lr
    .align 2 , 0

	thumb_func_start sub_80568CC
sub_80568CC: @ 0x080568CC
	push {r4, r5, lr}
	ldr r2, _08056920 @ =gPlayers
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r2
	movs r5, #0
	strh r5, [r2, #0x30]
	ldr r0, _08056924 @ =0x0031E000
	str r0, [r2, #0x10]
	movs r4, #0x89
	lsls r4, r4, #9
	str r4, [r2, #0x14]
	ldr r0, [r2, #4]
	ldr r3, _08056928 @ =0xEFFEFFFE
	ands r0, r3
	str r0, [r2, #4]
	strh r5, [r1, #0x30]
	movs r0, #0xc7
	lsls r0, r0, #0xe
	str r0, [r1, #0x10]
	str r4, [r1, #0x14]
	ldr r0, [r1, #4]
	ands r0, r3
	str r0, [r1, #4]
	ldr r0, _0805692C @ =gCamera
	ldr r1, _08056930 @ =0x00003190
	str r1, [r0]
	str r1, [r0, #0x28]
	movs r1, #0xa4
	str r1, [r0, #4]
	str r1, [r0, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056920: .4byte gPlayers
_08056924: .4byte 0x0031E000
_08056928: .4byte 0xEFFEFFFE
_0805692C: .4byte gCamera
_08056930: .4byte 0x00003190

	thumb_func_start sub_8056934
sub_8056934: @ 0x08056934
	push {r4, r5, lr}
	ldr r5, _08056978 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #0x34]
	cmp r0, #0x78
	bne _08056952
	bl sub_80AE1C8
	ldrh r0, [r4, #0x34]
	subs r0, #1
	strh r0, [r4, #0x34]
_08056952:
	adds r0, r4, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08056970
	ldrh r0, [r4, #0x34]
	subs r0, #1
	strh r0, [r4, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08056970
	ldr r1, [r5]
	ldr r0, _0805697C @ =sub_8056980
	str r0, [r1, #8]
_08056970:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056978: .4byte gCurTask
_0805697C: .4byte sub_8056980

	thumb_func_start sub_8056980
sub_8056980: @ 0x08056980
	bx lr
	.align 2, 0

	thumb_func_start sub_8056984
sub_8056984: @ 0x08056984
	push {r4, lr}
	ldr r4, _080569AC @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080569A6
	bl sub_8003D2C
	ldr r1, [r4]
	ldr r0, _080569B0 @ =sub_8056A58
	str r0, [r1, #8]
_080569A6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080569AC: .4byte gCurTask
_080569B0: .4byte sub_8056A58

	thumb_func_start sub_80569B4
sub_80569B4: @ 0x080569B4
	push {lr}
	ldr r0, _08056A00 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080569FA
	bl sub_8003D2C
	ldr r1, _08056A04 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08056A08 @ =gUnknown_03003F94
	ldr r0, _08056A0C @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08056A10 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08056A14 @ =gUnknown_03006208
	ldr r0, _08056A18 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08056A1C @ =gStageData
	movs r0, #1
	strb r0, [r1, #0xb]
	ldrb r0, [r1, #9]
	bl sub_8003D04
_080569FA:
	pop {r0}
	bx r0
	.align 2, 0
_08056A00: .4byte gCurTask
_08056A04: .4byte 0x0000FFFF
_08056A08: .4byte gUnknown_03003F94
_08056A0C: .4byte gUnknown_03003D20
_08056A10: .4byte gUnknown_03006840
_08056A14: .4byte gUnknown_03006208
_08056A18: .4byte gUnknown_03003F34
_08056A1C: .4byte gStageData

	thumb_func_start sub_8056A20
sub_8056A20: @ 0x08056A20
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8053284
	ldr r2, _08056A4C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08056A50 @ =0x0000F0FF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0x59
	bl m4aSongNumStart
	ldr r0, _08056A54 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_08056A4C: .4byte gDispCnt
_08056A50: .4byte 0x0000F0FF
_08056A54: .4byte gCurTask

	thumb_func_start sub_8056A58
sub_8056A58: @ 0x08056A58
	push {r4, lr}
	ldr r0, _08056A94 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, _08056A98 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08056A9C @ =gUnknown_03003F94
	ldr r0, _08056AA0 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08056AA4 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08056AA8 @ =gUnknown_03006208
	ldr r0, _08056AAC @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	movs r1, #0
	bl sub_8002210
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056A94: .4byte gCurTask
_08056A98: .4byte 0x0000FFFF
_08056A9C: .4byte gUnknown_03003F94
_08056AA0: .4byte gUnknown_03003D20
_08056AA4: .4byte gUnknown_03006840
_08056AA8: .4byte gUnknown_03006208
_08056AAC: .4byte gUnknown_03003F34

	thumb_func_start sub_8056AB0
sub_8056AB0: @ 0x08056AB0
	push {r4, lr}
	sub sp, #4
	ldr r0, _08056AF4 @ =sub_8057F54
	movs r2, #0x84
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	movs r1, #2
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	movs r1, #0x80
	strh r1, [r0, #6]
	movs r1, #0xff
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	bl ScreenFadeUpdateValues
	ldr r1, _08056AF8 @ =gStageData
	movs r0, #3
	strb r0, [r1, #4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056AF4: .4byte sub_8057F54
_08056AF8: .4byte gStageData

	thumb_func_start sub_8056AFC
sub_8056AFC: @ 0x08056AFC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08056B64 @ =sub_8057054
	movs r2, #0x84
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	movs r1, #0x70
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strb r4, [r0]
	movs r1, #0
	strh r5, [r0, #4]
	strb r1, [r0, #1]
	movs r3, #0xa0
	strb r3, [r0, #2]
	movs r4, #0x10
	strb r4, [r0, #3]
	ldr r2, _08056B68 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #7
	adds r1, r6, #0
	orrs r0, r1
	ldr r1, _08056B6C @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08056B70 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1, #2]
	strh r3, [r1, #6]
	movs r0, #0xfc
	lsls r0, r0, #6
	strh r0, [r1, #8]
	strh r5, [r1, #0xa]
	ldr r0, _08056B74 @ =gBldRegs
	movs r1, #0xbf
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r4, [r0, #4]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056B64: .4byte sub_8057054
_08056B68: .4byte gDispCnt
_08056B6C: .4byte 0x0000DFFF
_08056B70: .4byte gWinRegs
_08056B74: .4byte gBldRegs

	thumb_func_start sub_8056B78
sub_8056B78: @ 0x08056B78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r1, _08056BC0 @ =gUnknown_080D1E18
	add r0, sp, #4
	movs r2, #6
	bl memcpy
	ldr r1, _08056BC4 @ =gStageData
	ldrb r3, [r1, #6]
	adds r4, r3, #0
	ldrb r0, [r1, #9]
	cmp r0, #7
	bne _08056C18
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _08056BCC
	cmp r0, #5
	bne _08056BCC
	ldr r1, _08056BC8 @ =gPlayers
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	adds r0, #4
	ldrb r5, [r0]
	movs r2, #0xbd
	lsls r2, r2, #1
	adds r0, r1, r2
	b _08056C00
	.align 2, 0
_08056BC0: .4byte gUnknown_080D1E18
_08056BC4: .4byte gStageData
_08056BC8: .4byte gPlayers
_08056BCC:
	ldr r2, _08056C14 @ =gPlayers
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r3
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	adds r0, #4
	ldrb r5, [r0]
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
_08056C00:
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	adds r0, #4
	ldrb r4, [r0]
	movs r7, #7
	movs r6, #7
	b _08056D0A
	.align 2, 0
_08056C14: .4byte gPlayers
_08056C18:
	cmp r0, #8
	bne _08056C40
	movs r5, #0
	movs r4, #6
	movs r7, #8
	movs r6, #7
	adds r0, r1, #0
	adds r0, #0xba
	ldrb r0, [r0]
	cmp r0, #0
	bne _08056D0A
	ldr r0, _08056C3C @ =gCamera
	adds r0, #0x5c
	ldrh r2, [r0]
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	b _08056D0A
	.align 2, 0
_08056C3C: .4byte gCamera
_08056C40:
	ldrb r0, [r1, #0xa]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08056C4E
	b _08057006
_08056C4E:
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _08056C64
	ldr r2, _08056C60 @ =gPlayers
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r3
	b _08056CCE
	.align 2, 0
_08056C60: .4byte gPlayers
_08056C64:
	cmp r0, #5
	bne _08056C88
	ldr r1, _08056C84 @ =gPlayers
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	adds r0, #4
	ldrb r5, [r0]
	movs r3, #0xbd
	lsls r3, r3, #1
	adds r0, r1, r3
	b _08056CF8
	.align 2, 0
_08056C84: .4byte gPlayers
_08056C88:
	cmp r0, #6
	bne _08056CC4
	cmp r3, #0
	beq _08056C94
	cmp r3, #2
	bne _08056CAC
_08056C94:
	ldr r1, _08056CA8 @ =gUnknown_03001060
	adds r0, r1, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	add r0, sp
	adds r0, #4
	ldrb r5, [r0]
	adds r1, #0x4e
	ldrb r0, [r1]
	b _08056CFE
	.align 2, 0
_08056CA8: .4byte gUnknown_03001060
_08056CAC:
	ldr r1, _08056CC0 @ =gUnknown_03001060
	adds r0, r1, #0
	adds r0, #0x4d
	ldrb r0, [r0]
	add r0, sp
	adds r0, #4
	ldrb r5, [r0]
	adds r1, #0x4f
	ldrb r0, [r1]
	b _08056CFE
	.align 2, 0
_08056CC0: .4byte gUnknown_03001060
_08056CC4:
	ldr r2, _08056D74 @ =gPlayers
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r4
_08056CCE:
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	adds r0, #4
	ldrb r5, [r0]
	adds r1, #0x2b
	ldrb r1, [r1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
_08056CF8:
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
_08056CFE:
	add r0, sp
	adds r0, #4
	ldrb r4, [r0]
	ldr r0, _08056D78 @ =gStageData
	ldrb r7, [r0, #9]
	ldrb r6, [r0, #0xa]
_08056D0A:
	ldr r0, _08056D7C @ =sub_8057FE8
	movs r1, #0xb8
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08056D80 @ =sub_8057FB8
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	movs r2, #0
	strb r2, [r0]
	strb r7, [r0, #1]
	subs r0, r6, #3
	mov r3, r8
	strb r0, [r3, #2]
	movs r0, #0x50
	strb r0, [r3, #5]
	strb r0, [r3, #6]
	strh r2, [r3, #0xa]
	adds r0, #0xb0
	strh r0, [r3, #0xc]
	movs r0, #0xaa
	lsls r0, r0, #9
	str r0, [r3, #0x10]
	movs r0, #0xc8
	lsls r0, r0, #7
	str r0, [r3, #0x14]
	ldr r0, _08056D84 @ =0xFFFFFD00
	str r0, [r3, #0x18]
	ldr r0, _08056D88 @ =0xFFFFFE00
	str r0, [r3, #0x1c]
	strb r5, [r3, #3]
	strb r4, [r3, #4]
	ldr r5, _08056D8C @ =0x0300016C
	adds r1, r1, r5
	str r2, [r1]
	movs r0, #1
	movs r1, #1
	bl sub_80578EC
	cmp r6, #3
	blt _08056DAC
	cmp r6, #5
	ble _08056D90
	cmp r6, #7
	beq _08056DA0
	b _08056DAC
	.align 2, 0
_08056D74: .4byte gPlayers
_08056D78: .4byte gStageData
_08056D7C: .4byte sub_8057FE8
_08056D80: .4byte sub_8057FB8
_08056D84: .4byte 0xFFFFFD00
_08056D88: .4byte 0xFFFFFE00
_08056D8C: .4byte 0x0300016C
_08056D90:
	ldr r1, _08056D9C @ =gStageData
	ldrb r0, [r1, #0xa]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _08056DB0
	.align 2, 0
_08056D9C: .4byte gStageData
_08056DA0:
	movs r6, #3
	ldr r0, _08056DA8 @ =gStageData
	mov ip, r0
	b _08056DB2
	.align 2, 0
_08056DA8: .4byte gStageData
_08056DAC:
	movs r6, #0
	ldr r1, _08057018 @ =gStageData
_08056DB0:
	mov ip, r1
_08056DB2:
	ldr r1, _0805701C @ =gSaveGame
	lsls r0, r7, #2
	adds r0, r6, r0
	adds r1, #0x37
	adds r0, r0, r1
	ldrb r6, [r0]
	movs r4, #0
	ldr r2, _08057020 @ =gDispCnt
	mov sl, r2
	ldr r7, _08057024 @ =gWinRegs
	mov r3, r8
	adds r3, #0x20
	str r3, [sp, #0xc]
	mov r5, r8
	adds r5, #0x48
	str r5, [sp, #0x10]
	mov r0, r8
	adds r0, #0x70
	str r0, [sp, #0x14]
	mov r1, r8
	adds r1, #0x98
	str r1, [sp, #0x18]
	subs r3, #0x19
	movs r2, #2
	mov sb, r2
	movs r5, #1
_08056DE6:
	adds r2, r3, r4
	mov r0, sb
	subs r1, r0, r4
	adds r0, r6, #0
	asrs r0, r1
	ands r0, r5
	strb r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08056DE6
	mov r2, ip
	ldrb r1, [r2, #3]
	cmp r1, #1
	bne _08056E0E
	mov r3, r8
	strb r1, [r3, #7]
	strb r1, [r3, #8]
	strb r1, [r3, #9]
_08056E0E:
	mov r5, sl
	ldrh r0, [r5]
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	movs r4, #0
	movs r1, #0xf0
	strh r1, [r7]
	movs r0, #0xa0
	strh r0, [r7, #4]
	strh r1, [r7, #2]
	strh r0, [r7, #6]
	ldr r0, _08057028 @ =0x00007FFF
	bl sub_80C4C0C
	ldr r1, _0805702C @ =gBgPalette
	strh r0, [r1]
	ldr r2, _08057030 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08057034 @ =0x00003F10
	strh r0, [r7, #8]
	movs r0, #0x3f
	strh r0, [r7, #0xa]
	ldr r1, _08057038 @ =gBldRegs
	ldr r0, _0805703C @ =0x00003FEF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x9c
	bl VramMalloc
	adds r2, r0, #0
	ldr r7, [sp, #0xc]
	ldr r0, _0805701C @ =gSaveGame
	ldr r3, _08057040 @ =0x00000366
	adds r0, r0, r3
	ldrb r0, [r0]
	movs r3, #0
	cmp r0, #0
	beq _08056E6A
	movs r3, #9
_08056E6A:
	mov r5, r8
	str r2, [r5, #0x20]
	strh r4, [r7, #0x14]
	ldr r1, _08057044 @ =gUnknown_080D1D88
	ldrb r0, [r5, #1]
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r5, #1]
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x1c]
	bl UpdateSpriteAnimation
	ldr r2, [sp, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r4, #0
	movs r5, #0
	ldr r1, _08057048 @ =0x0000035E
	mov sl, r1
_08056EBA:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc0
	mov r3, r8
	adds r7, r3, r0
	str r2, [r7]
	strh r5, [r7, #0x14]
	mov r0, sl
	strh r0, [r7, #0xc]
	strb r4, [r7, #0x1a]
	strh r5, [r7, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r6, #0x10
	strb r6, [r7, #0x1c]
	movs r3, #0
	strb r3, [r7, #0x1f]
	strh r5, [r7, #0x10]
	strh r5, [r7, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x1c]
	bl UpdateSpriteAnimation
	ldr r2, [sp, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08056EBA
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, r2, r1
	ldr r7, [sp, #0x10]
	mov r3, r8
	str r2, [r3, #0x48]
	movs r5, #0
	mov sl, r5
	movs r4, #0
	strh r4, [r7, #0x14]
	ldr r5, _0805704C @ =0x0000035D
	strh r5, [r7, #0xc]
	ldrb r0, [r3, #3]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	mov r1, sb
	orrs r0, r1
	strb r0, [r7, #0x1b]
	strb r6, [r7, #0x1c]
	mov r3, sl
	strb r3, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	str r4, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x1c]
	bl UpdateSpriteAnimation
	ldr r2, [sp, #0x1c]
	adds r2, #0xe0
	ldr r7, [sp, #0x14]
	mov r0, r8
	str r2, [r0, #0x70]
	strh r4, [r7, #0x14]
	strh r5, [r7, #0xc]
	ldrb r0, [r0, #4]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	mov r1, sb
	orrs r0, r1
	strb r0, [r7, #0x1b]
	strb r6, [r7, #0x1c]
	mov r3, sl
	strb r3, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	str r4, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x1c]
	bl UpdateSpriteAnimation
	ldr r2, [sp, #0x1c]
	adds r2, #0xe0
	ldr r7, [sp, #0x18]
	str r2, [r7]
	strh r4, [r7, #0x14]
	strh r5, [r7, #0xc]
	movs r5, #5
	strb r5, [r7, #0x1a]
	strh r4, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	mov r1, sb
	orrs r0, r1
	strb r0, [r7, #0x1b]
	strb r6, [r7, #0x1c]
	mov r3, sl
	strb r3, [r7, #0x1f]
	strh r4, [r7, #0x10]
	strh r4, [r7, #0x12]
	str r4, [r7, #8]
	adds r0, r7, #0
	str r2, [sp, #0x1c]
	bl UpdateSpriteAnimation
	ldr r2, [sp, #0x1c]
	adds r2, #0x40
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, r8
	str r2, [r7]
	strh r4, [r7, #0x14]
	movs r0, #0xd7
	lsls r0, r0, #2
	strh r0, [r7, #0xc]
	mov r1, r8
	ldrb r0, [r1, #2]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	ldrb r0, [r7, #0x1b]
	mov r2, sb
	orrs r0, r2
	strb r0, [r7, #0x1b]
	strb r6, [r7, #0x1c]
	mov r3, sl
	strb r3, [r7, #0x1f]
	movs r0, #0xc8
	strh r0, [r7, #0x10]
	movs r0, #0x96
	strh r0, [r7, #0x12]
	ldr r2, _08057050 @ =gUnknown_03002C24
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r1, #0x60
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r1, #0xb0
	lsls r1, r1, #1
	add r1, r8
	ldrh r0, [r7, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r1, #8]
	strh r4, [r1]
	ldr r0, _08057018 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #8
	bne _08057006
	mov r0, r8
	strb r5, [r0, #4]
_08057006:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057018: .4byte gStageData
_0805701C: .4byte gSaveGame
_08057020: .4byte gDispCnt
_08057024: .4byte gWinRegs
_08057028: .4byte 0x00007FFF
_0805702C: .4byte gBgPalette
_08057030: .4byte gFlags
_08057034: .4byte 0x00003F10
_08057038: .4byte gBldRegs
_0805703C: .4byte 0x00003FEF
_08057040: .4byte 0x00000366
_08057044: .4byte gUnknown_080D1D88
_08057048: .4byte 0x0000035E
_0805704C: .4byte 0x0000035D
_08057050: .4byte gUnknown_03002C24

	thumb_func_start sub_8057054
sub_8057054: @ 0x08057054
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08057090 @ =gCurTask
	ldr r0, [r1]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldrb r1, [r7, #1]
	adds r1, #8
	movs r3, #0
	strb r1, [r7, #1]
	ldrb r0, [r7, #2]
	subs r0, #8
	strb r0, [r7, #2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x43
	bhi _08057098
	ldr r2, _08057094 @ =gWinRegs
	ldrb r1, [r7, #1]
	lsls r1, r1, #8
	ldrb r0, [r7, #2]
	orrs r0, r1
	strh r0, [r2, #6]
	b _080571C0
	.align 2, 0
_08057090: .4byte gCurTask
_08057094: .4byte gWinRegs
_08057098:
	movs r0, #0x44
	strb r0, [r7, #1]
	movs r1, #0x5c
	strb r1, [r7, #2]
	ldr r2, _080571D0 @ =gWinRegs
	mov sl, r2
	lsls r0, r0, #8
	orrs r0, r1
	movs r6, #0
	mov r8, r6
	strh r0, [r2, #6]
	ldr r0, _080571D4 @ =gStageData
	ldrb r4, [r0, #9]
	ldr r1, _080571D8 @ =0x03000008
	adds r0, r5, r1
	ldr r1, _080571DC @ =0x06008000
	str r1, [r0, #4]
	strh r3, [r0, #0xa]
	ldr r1, _080571E0 @ =0x0600A000
	str r1, [r0, #0xc]
	strh r3, [r0, #0x18]
	strh r3, [r0, #0x1a]
	movs r1, #0xb1
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r3, [r0, #0x1e]
	strh r3, [r0, #0x20]
	strh r3, [r0, #0x22]
	strh r3, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	movs r1, #0x15
	strh r1, [r0, #0x28]
	ldr r2, _080571E4 @ =0x03000032
	adds r1, r5, r2
	mov r6, r8
	strb r6, [r1]
	adds r2, #1
	adds r1, r5, r2
	strb r6, [r1]
	ldr r6, _080571E8 @ =0x03000034
	adds r1, r5, r6
	mov r2, r8
	strb r2, [r1]
	movs r6, #0x10
	mov sb, r6
	mov r1, sb
	strh r1, [r0, #0x2e]
	strh r3, [r0, #0x30]
	strh r3, [r0, #0x32]
	str r3, [sp]
	bl sub_80BD384
	ldr r2, _080571EC @ =gDispCnt
	ldrh r0, [r2]
	adds r6, #0xf0
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080571F0 @ =gBgCntRegs
	ldr r0, _080571F4 @ =0x00001408
	strh r0, [r1]
	ldr r1, _080571F8 @ =gBgScrollRegs
	ldr r3, [sp]
	strh r3, [r1]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	subs r0, #0x44
	strh r0, [r1, #2]
	ldr r1, _080571FC @ =0x040000D4
	ldr r0, _08057200 @ =gUnknown_086AB768
	str r0, [r1]
	ldr r0, _08057204 @ =gUnknown_03003E10
	str r0, [r1, #4]
	ldr r0, _08057208 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _0805720C @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08057210 @ =gSaveGame
	ldr r1, _08057214 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	beq _0805714E
	movs r1, #9
_0805714E:
	ldr r2, _08057218 @ =0x03000048
	adds r5, r5, r2
	ldr r6, _0805721C @ =gUnknown_080D1D88
	adds r4, r4, r1
	lsls r4, r4, #3
	adds r0, r6, #4
	adds r0, r4, r0
	ldr r0, [r0]
	str r3, [sp]
	bl VramMalloc
	str r0, [r5]
	adds r4, r4, r6
	ldrh r0, [r4]
	strh r0, [r5, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r5, #0x1a]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	ldr r3, [sp]
	strh r3, [r5, #0xe]
	strh r3, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	mov r6, r8
	strb r6, [r5, #0x1f]
	str r3, [r5, #8]
	movs r0, #0xa8
	strh r0, [r5, #0x10]
	movs r0, #0x50
	strh r0, [r5, #0x12]
	subs r0, #0x51
	str r0, [r5, #0x20]
	adds r0, r5, #0
	str r3, [sp]
	bl UpdateSpriteAnimation
	movs r0, #0x3c
	strh r0, [r7, #4]
	movs r0, #0xfc
	lsls r0, r0, #6
	mov r1, sl
	strh r0, [r1, #8]
	ldr r0, _08057220 @ =gBldRegs
	movs r1, #0xae
	strh r1, [r0]
	ldr r3, [sp]
	strh r3, [r0, #2]
	mov r2, sb
	strh r2, [r0, #4]
	ldr r6, _08057224 @ =gCurTask
	ldr r1, [r6]
	ldr r0, _08057228 @ =sub_8057F7C
	str r0, [r1, #8]
_080571C0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080571D0: .4byte gWinRegs
_080571D4: .4byte gStageData
_080571D8: .4byte 0x03000008
_080571DC: .4byte 0x06008000
_080571E0: .4byte 0x0600A000
_080571E4: .4byte 0x03000032
_080571E8: .4byte 0x03000034
_080571EC: .4byte gDispCnt
_080571F0: .4byte gBgCntRegs
_080571F4: .4byte 0x00001408
_080571F8: .4byte gBgScrollRegs
_080571FC: .4byte 0x040000D4
_08057200: .4byte gUnknown_086AB768
_08057204: .4byte gUnknown_03003E10
_08057208: .4byte 0x80000090
_0805720C: .4byte gFlags
_08057210: .4byte gSaveGame
_08057214: .4byte 0x00000366
_08057218: .4byte 0x03000048
_0805721C: .4byte gUnknown_080D1D88
_08057220: .4byte gBldRegs
_08057224: .4byte gCurTask
_08057228: .4byte sub_8057F7C

	thumb_func_start sub_805722C
sub_805722C: @ 0x0805722C
	push {r4, r5, r6, r7, lr}
	ldr r7, _08057268 @ =gCurTask
	ldr r0, [r7]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldrb r1, [r5, #1]
	adds r1, #4
	movs r6, #0
	strb r1, [r5, #1]
	ldrb r0, [r5, #2]
	subs r0, #4
	strb r0, [r5, #2]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	cmp r1, r0
	bhs _08057274
	ldr r1, _0805726C @ =0x03000048
	adds r0, r2, r1
	bl DisplaySprite
	ldr r2, _08057270 @ =gWinRegs
	ldrb r1, [r5, #1]
	lsls r1, r1, #8
	ldrb r0, [r5, #2]
	orrs r0, r1
	strh r0, [r2, #6]
	b _080572B2
	.align 2, 0
_08057268: .4byte gCurTask
_0805726C: .4byte 0x03000048
_08057270: .4byte gWinRegs
_08057274:
	ldr r2, _080572B8 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _080572BC @ =0x0000BEFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r4, _080572C0 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r4]
	movs r0, #0xa0
	strh r0, [r4, #4]
	ldr r0, [r5, #0x48]
	bl VramFree
	movs r0, #0x3f
	strh r0, [r4, #8]
	strh r6, [r4, #0xa]
	ldr r1, _080572C4 @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r6, [r1, #2]
	movs r2, #0x10
	movs r0, #0x10
	strh r0, [r1, #4]
	strb r2, [r5, #3]
	ldr r1, [r7]
	ldr r0, _080572C8 @ =sub_80572CC
	str r0, [r1, #8]
_080572B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080572B8: .4byte gDispCnt
_080572BC: .4byte 0x0000BEFF
_080572C0: .4byte gWinRegs
_080572C4: .4byte gBldRegs
_080572C8: .4byte sub_80572CC

	thumb_func_start sub_80572CC
sub_80572CC: @ 0x080572CC
	push {lr}
	ldr r3, _08057300 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #3]
	subs r0, #1
	strb r0, [r1, #3]
	ldr r2, _08057304 @ =gBldRegs
	ldrb r0, [r1, #3]
	strh r0, [r2, #4]
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _08057320
	ldr r0, _08057308 @ =gStageData
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #4
	bls _0805730C
	cmp r1, #7
	beq _0805730C
	movs r0, #2
	b _0805730E
	.align 2, 0
_08057300: .4byte gCurTask
_08057304: .4byte gBldRegs
_08057308: .4byte gStageData
_0805730C:
	movs r0, #3
_0805730E:
	strb r0, [r2, #4]
	ldr r2, _08057324 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08057328 @ =0x0000DFFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r3]
	bl TaskDestroy
_08057320:
	pop {r0}
	bx r0
	.align 2, 0
_08057324: .4byte gDispCnt
_08057328: .4byte 0x0000DFFF

	thumb_func_start sub_805732C
sub_805732C: @ 0x0805732C
	push {r4, r5, lr}
	ldr r0, _0805736C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x20
	adds r5, r1, r0
	ldrh r1, [r4, #0xa]
	adds r1, #1
	strh r1, [r4, #0xa]
	ldrh r2, [r4, #0xa]
	lsls r0, r2, #3
	subs r0, r0, r2
	asrs r0, r0, #1
	adds r0, #0x50
	strb r0, [r4, #5]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	bls _08057370
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _08057362
	subs r0, #0x10
	strh r0, [r4, #0xc]
_08057362:
	movs r0, #1
	movs r1, #0
	bl sub_80578EC
	b _08057378
	.align 2, 0
_0805736C: .4byte gCurTask
_08057370:
	movs r0, #1
	movs r1, #1
	bl sub_80578EC
_08057378:
	ldrh r0, [r4, #0xa]
	cmp r0, #0x10
	bne _0805738A
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r0, _080573A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080573A8 @ =sub_80573AC
	str r0, [r1, #8]
_0805738A:
	bl sub_8057848
	ldrb r0, [r4, #5]
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080573A4: .4byte gCurTask
_080573A8: .4byte sub_80573AC

	thumb_func_start sub_80573AC
sub_80573AC: @ 0x080573AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _080573F0 @ =gCurTask
	ldr r0, [r1]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldrh r0, [r7, #0xc]
	cmp r0, #0
	beq _080573CE
	subs r0, #0x10
	strh r0, [r7, #0xc]
_080573CE:
	ldr r0, _080573F4 @ =0x03000020
	adds r6, r2, r0
	ldrh r0, [r7, #0xa]
	adds r0, #1
	strh r0, [r7, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x69
	bne _080573FC
	movs r0, #0
	strh r0, [r7, #0xa]
	ldr r1, [r1]
	ldr r0, _080573F8 @ =sub_80575F0
	str r0, [r1, #8]
	bl _call_via_r0
	b _080575D4
	.align 2, 0
_080573F0: .4byte gCurTask
_080573F4: .4byte 0x03000020
_080573F8: .4byte sub_80575F0
_080573FC:
	cmp r0, #0
	beq _0805742C
	ldrh r0, [r7, #0xa]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #0x78
	strh r1, [r6, #0x10]
	ldr r3, _080574AC @ =gUnknown_080D1D58
	ldrb r2, [r7]
	lsls r0, r2, #3
	adds r0, r0, r2
	ldrb r2, [r7, #1]
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	blt _0805742C
	strh r2, [r6, #0x10]
_0805742C:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldrh r0, [r7, #0xa]
	movs r1, #0x10
	cmp r0, #0x10
	bhi _08057442
	adds r1, r0, #0
_08057442:
	movs r4, #0
	adds r0, r7, #7
	mov r8, r0
	movs r2, #0x70
	adds r2, r2, r7
	mov sl, r2
	adds r3, r7, #0
	adds r3, #0x98
	str r3, [sp]
	adds r0, #0x41
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r5, r0, #1
_08057462:
	mov r1, r8
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08057490
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc0
	adds r6, r7, r0
	movs r0, #2
	subs r0, r0, r4
	lsls r0, r0, #5
	subs r0, r5, r0
	strh r0, [r6, #0x10]
	ldrb r0, [r7, #5]
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
_08057490:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08057462
	ldrh r1, [r7, #0xa]
	adds r0, r1, #0
	cmp r0, #0x10
	bls _080574BA
	movs r3, #0
	cmp r0, #0x24
	bls _080574B0
	movs r2, #0
	b _080574C4
	.align 2, 0
_080574AC: .4byte gUnknown_080D1D58
_080574B0:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _080574C4
_080574BA:
	movs r2, #0
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080574C4:
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r6, r7, r0
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r4, r7, r1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, #0xc7
	strh r0, [r6, #0x10]
	ldr r2, _080575E4 @ =gUnknown_03002C24
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r1, #0x60
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r6, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0xc
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	ldrh r0, [r6, #0x10]
	strh r0, [r4, #6]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80BF8F4
	adds r0, r6, #0
	bl DisplaySprite
	ldr r2, [r7, #0x1c]
	adds r2, #0x20
	str r2, [r7, #0x1c]
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	ldr r0, [r7, #0x14]
	adds r0, r0, r2
	str r0, [r7, #0x14]
	lsls r1, r1, #8
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xdb
	bgt _08057536
	movs r5, #0xdc
_08057536:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _08057544
	movs r0, #0x78
	mov r8, r0
_08057544:
	ldr r4, _080575E8 @ =gUnknown_080D1D7C
	ldrb r0, [r7, #4]
	lsls r0, r0, #1
	adds r1, r4, #1
	mov sb, r1
	add r0, sb
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r6, sl
	strh r5, [r6, #0x10]
	mov r2, r8
	strh r2, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldrb r0, [r7, #4]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ldr r3, _080575EC @ =0xFFFB0000
	adds r0, r0, r3
	lsrs r5, r0, #0x10
	ldr r6, [sp]
	strh r5, [r6, #0x10]
	mov r0, r8
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	lsls r1, r5, #0x10
	ldrb r0, [r7, #3]
	lsls r0, r0, #1
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, _080575EC @ =0xFFFB0000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	subs r1, r1, r0
	ldr r6, [sp, #4]
	strh r1, [r6, #0x10]
	mov r3, r8
	strh r3, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	bl sub_8057848
	movs r0, #1
	movs r1, #0
	bl sub_80578EC
_080575D4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080575E4: .4byte gUnknown_03002C24
_080575E8: .4byte gUnknown_080D1D7C
_080575EC: .4byte 0xFFFB0000

	thumb_func_start sub_80575F0
sub_80575F0: @ 0x080575F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _08057668 @ =gCurTask
	ldr r0, [r2]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov r8, r0
	ldrh r0, [r0, #0xa]
	adds r0, #1
	mov r1, r8
	strh r0, [r1, #0xa]
	ldrh r1, [r1, #0xa]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x12
	lsrs r5, r0, #0x10
	adds r7, r2, #0
	cmp r1, #0xc
	bne _08057696
	ldr r0, _0805766C @ =gStageData
	ldrb r1, [r0, #9]
	adds r5, r0, #0
	cmp r1, #8
	bne _0805767C
	adds r6, r5, #0
	adds r6, #0xba
	ldrb r0, [r6]
	cmp r0, #0
	bne _0805767C
	ldrb r0, [r5, #3]
	cmp r0, #5
	beq _0805767C
	ldr r0, _08057670 @ =0x00000CAC
	bl EwramMalloc
	adds r2, r0, #0
	ldr r0, _08057674 @ =0x0300016C
	adds r4, r4, r0
	str r2, [r4]
	movs r0, #0
	movs r1, #0x2d
	bl sub_80236C8
	ldr r1, [r4]
	movs r0, #1
	strb r0, [r1, #0x1f]
	adds r1, r5, #0
	adds r1, #0x85
	strb r0, [r1]
	strb r0, [r6]
	ldr r1, [r7]
	ldr r0, _08057678 @ =sub_80577D4
	str r0, [r1, #8]
	b _080577A8
	.align 2, 0
_08057668: .4byte gCurTask
_0805766C: .4byte gStageData
_08057670: .4byte 0x00000CAC
_08057674: .4byte 0x0300016C
_08057678: .4byte sub_80577D4
_0805767C:
	ldrb r0, [r5, #3]
	cmp r0, #4
	bls _0805768A
	cmp r0, #7
	beq _0805768A
	movs r0, #2
	b _0805768C
_0805768A:
	movs r0, #3
_0805768C:
	strb r0, [r5, #4]
	ldr r0, [r7]
	bl TaskDestroy
	b _080577A8
_08057696:
	ldr r1, _080577B8 @ =0x03000020
	adds r7, r4, r1
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r6, #0
	ldr r0, _080577BC @ =0x03000007
	adds r0, r0, r4
	mov sb, r0
	lsls r5, r5, #0x10
	ldr r1, _080577C0 @ =0x03000070
	adds r1, r1, r4
	mov sl, r1
	ldr r0, _080577C4 @ =0x03000098
	adds r0, r4, r0
	str r0, [sp]
	ldr r1, _080577C8 @ =0x03000048
	adds r1, r4, r1
	str r1, [sp, #4]
_080576C2:
	mov r1, sb
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080576E8
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0xc0
	mov r1, r8
	adds r7, r1, r0
	ldrb r0, [r1, #5]
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_080576E8:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _080576C2
	movs r7, #0x9c
	lsls r7, r7, #1
	add r7, r8
	movs r0, #0xc8
	asrs r5, r5, #0x10
	subs r0, r0, r5
	movs r1, #0
	strh r0, [r7, #0x10]
	movs r0, #0x96
	strh r0, [r7, #0x12]
	str r1, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r4, #0xdc
	subs r4, r4, r5
	ldr r5, _080577CC @ =gUnknown_080D1D7C
	mov r1, r8
	ldrb r0, [r1, #4]
	lsls r0, r0, #1
	adds r6, r5, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r7, sl
	strh r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r1, r8
	ldrb r0, [r1, #4]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, r4, r0
	lsls r4, r4, #0x10
	ldr r0, _080577D0 @ =0xFFFB0000
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	ldr r7, [sp]
	strh r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	lsls r4, r4, #0x10
	mov r1, r8
	ldrb r0, [r1, #3]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _080577D0 @ =0xFFFB0000
	adds r4, r4, r1
	asrs r4, r4, #0x10
	subs r4, r4, r0
	ldr r7, [sp, #4]
	strh r4, [r7, #0x10]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, r8
	ldrb r1, [r0, #0xa]
	movs r0, #0xb
	subs r0, r0, r1
	mov r1, r8
	strb r0, [r1, #6]
	bl sub_8057848
_080577A8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080577B8: .4byte 0x03000020
_080577BC: .4byte 0x03000007
_080577C0: .4byte 0x03000070
_080577C4: .4byte 0x03000098
_080577C8: .4byte 0x03000048
_080577CC: .4byte gUnknown_080D1D7C
_080577D0: .4byte 0xFFFB0000

	thumb_func_start sub_80577D4
sub_80577D4: @ 0x080577D4
	push {r4, lr}
	ldr r0, _08057814 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08057818 @ =0x0300016C
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_8023734
	cmp r0, #0
	beq _0805783C
	ldr r1, _0805781C @ =gCamera
	adds r1, #0x5c
	ldrh r2, [r1]
	ldr r0, _08057820 @ =0x0000FFFE
	ands r0, r2
	movs r2, #0
	strh r0, [r1]
	ldr r0, _08057824 @ =gStageData
	adds r1, r0, #0
	adds r1, #0x85
	strb r2, [r1]
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #4
	bls _08057828
	cmp r1, #7
	beq _08057828
	movs r0, #2
	b _0805782A
	.align 2, 0
_08057814: .4byte gCurTask
_08057818: .4byte 0x0300016C
_0805781C: .4byte gCamera
_08057820: .4byte 0x0000FFFE
_08057824: .4byte gStageData
_08057828:
	movs r0, #3
_0805782A:
	strb r0, [r2, #4]
	ldr r0, _08057838 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08057842
	.align 2, 0
_08057838: .4byte gCurTask
_0805783C:
	adds r0, r4, #0
	bl sub_80239A8
_08057842:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8057848
sub_8057848: @ 0x08057848
	push {r4, r5, lr}
	ldr r0, _080578C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r2, _080578CC @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrb r2, [r5, #5]
	ldrb r1, [r5, #6]
	subs r0, r2, r1
	lsls r0, r0, #0x10
	adds r3, r2, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08057876
	movs r4, #0
_08057876:
	cmp r3, #0xa0
	ble _0805787C
	movs r3, #0xa0
_0805787C:
	ldr r1, _080578D0 @ =gWinRegs
	movs r2, #0xf0
	strh r2, [r1]
	lsls r0, r4, #0x10
	asrs r0, r0, #8
	orrs r3, r0
	strh r3, [r1, #4]
	strh r2, [r1, #2]
	movs r0, #0xa0
	strh r0, [r1, #6]
	ldr r0, _080578D4 @ =0x00003F10
	strh r0, [r1, #8]
	movs r0, #0x3f
	strh r0, [r1, #0xa]
	ldr r0, _080578D8 @ =0x00007FFF
	bl sub_80C4C0C
	ldr r1, _080578DC @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080578E0 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r2, _080578E4 @ =gBldRegs
	ldr r0, _080578E8 @ =0x00003FEF
	strh r0, [r2]
	ldrh r0, [r5, #0xc]
	lsrs r0, r0, #4
	strh r0, [r2, #4]
	ldrh r1, [r5, #0xc]
	lsrs r1, r1, #4
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r2, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080578C8: .4byte gCurTask
_080578CC: .4byte gDispCnt
_080578D0: .4byte gWinRegs
_080578D4: .4byte 0x00003F10
_080578D8: .4byte 0x00007FFF
_080578DC: .4byte gBgPalette
_080578E0: .4byte gFlags
_080578E4: .4byte gBldRegs
_080578E8: .4byte 0x00003FEF

	thumb_func_start sub_80578EC
sub_80578EC: @ 0x080578EC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldr r3, _08057970 @ =gStageData
	adds r2, r3, #0
	adds r2, #0xbc
	movs r1, #0
	strb r1, [r2]
	mov ip, r3
	cmp r0, #0
	beq _08057978
	movs r3, #0
	ldr r5, _08057974 @ =gPlayers
_08057904:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r2, r0, r5
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0
	beq _0805793C
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldr r0, [r1, #0x14]
	movs r4, #0x80
	orrs r0, r4
	str r0, [r1, #0x14]
	adds r0, r2, #0
	adds r0, #0xe4
	ldr r1, [r0]
	cmp r1, #0
	beq _0805793C
	ldr r0, [r1, #0x14]
	orrs r0, r4
	str r0, [r1, #0x14]
_0805793C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08057904
	mov r0, ip
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _08057960
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldr r0, [r2, #0x28]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r2, #0x28]
_08057960:
	mov r2, ip
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	b _080579DC
	.align 2, 0
_08057970: .4byte gStageData
_08057974: .4byte gPlayers
_08057978:
	movs r3, #0
	ldr r5, _08057A3C @ =gPlayers
_0805797C:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r2, r0, r5
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0
	beq _080579B6
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldr r0, [r1, #0x14]
	movs r4, #0x81
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [r1, #0x14]
	adds r0, r2, #0
	adds r0, #0xe4
	ldr r1, [r0]
	cmp r1, #0
	beq _080579B6
	ldr r0, [r1, #0x14]
	ands r0, r4
	str r0, [r1, #0x14]
_080579B6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0805797C
	mov r0, ip
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _080579DC
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r2, r0
	ldr r0, [r2, #0x28]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x28]
_080579DC:
	cmp r6, #0
	beq _08057A40
	movs r3, #0
	ldr r5, _08057A3C @ =gPlayers
	movs r6, #0x1c
	movs r4, #0x80
	lsls r4, r4, #0x13
_080579EA:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r2, r0, r5
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08057A0A
	ldr r0, [r2, #4]
	orrs r0, r4
	str r0, [r2, #4]
_08057A0A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080579EA
	mov r0, ip
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _08057A2E
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r2, [r1, #0x16]
	movs r0, #8
	orrs r0, r2
	strh r0, [r1, #0x16]
_08057A2E:
	mov r2, ip
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b _08057A8C
	.align 2, 0
_08057A3C: .4byte gPlayers
_08057A40:
	movs r3, #0
	ldr r5, _08057A94 @ =gPlayers
	movs r6, #0x1c
	ldr r4, _08057A98 @ =0xFBFFFFFF
_08057A48:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r2, r0, r5
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08057A68
	ldr r0, [r2, #4]
	ands r0, r4
	str r0, [r2, #4]
_08057A68:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08057A48
	mov r0, ip
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _08057A8C
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r2, [r1, #0x16]
	ldr r0, _08057A9C @ =0x0000FFF7
	ands r0, r2
	strh r0, [r1, #0x16]
_08057A8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057A94: .4byte gPlayers
_08057A98: .4byte 0xFBFFFFFF
_08057A9C: .4byte 0x0000FFF7

	thumb_func_start sub_8057AA0
sub_8057AA0: @ 0x08057AA0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08057B50 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08057B54 @ =sub_8057B70
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08057B58 @ =sub_80580EC
	str r1, [sp]
	movs r1, #0x84
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0]
	strb r2, [r0, #1]
	movs r3, #0
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r5, [r0, #6]
	strh r6, [r0, #8]
	strh r2, [r0, #0xa]
	str r2, [r0, #0xc]
	movs r1, #0xa0
	str r1, [r0, #0x10]
	movs r1, #0xa8
	lsls r1, r1, #8
	str r1, [r0, #0x14]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r0, #0x18]
	str r2, [sp, #4]
	ldr r2, _08057B5C @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _08057B60 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08057B64 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r4, _08057B68 @ =gUnknown_03006230
	strb r3, [r4]
	ldr r0, _08057B6C @ =gUnknown_03003590
	strb r3, [r0]
	strb r3, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	movs r2, #0x40
	strb r2, [r0, #3]
	strb r3, [r4, #1]
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r2, [r0, #7]
	strb r3, [r4, #2]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	strb r1, [r0, #0xa]
	strb r2, [r0, #0xb]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057B50: .4byte gDispCnt
_08057B54: .4byte sub_8057B70
_08057B58: .4byte sub_80580EC
_08057B5C: .4byte 0x040000D4
_08057B60: .4byte gBgCntRegs
_08057B64: .4byte 0x85000010
_08057B68: .4byte gUnknown_03006230
_08057B6C: .4byte gUnknown_03003590

	thumb_func_start sub_8057B70
sub_8057B70: @ 0x08057B70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08057C50 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov sb, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, sb
	adds r7, r1, r0
	ldr r0, _08057C54 @ =gSaveGame
	ldr r2, _08057C58 @ =0x00000366
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r1, #0
	cmp r0, #0
	beq _08057B9C
	movs r1, #9
_08057B9C:
	ldr r5, _08057C5C @ =gUnknown_080D1D88
	movs r0, #8
	ldrsh r6, [r7, r0]
	adds r4, r6, r1
	lsls r4, r4, #3
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0]
	bl VramMalloc
	adds r1, r0, #0
	ldr r0, _08057C60 @ =0x0300001C
	add r0, sb
	str r1, [r0]
	adds r4, r4, r5
	ldrh r1, [r4]
	movs r2, #0
	mov r8, r2
	movs r5, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r4, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #0x14]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xc0
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r4, #0x10
	strb r4, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r1, _08057C64 @ =gBgCntRegs
	ldr r0, _08057C68 @ =0x0000140B
	strh r0, [r1]
	ldr r1, _08057C6C @ =gBgScrollRegs
	strh r5, [r1]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	subs r0, #0x44
	strh r0, [r1, #2]
	ldr r0, _08057C70 @ =0x03000044
	add r0, sb
	ldr r1, _08057C74 @ =0x06008000
	str r1, [r0, #4]
	strh r5, [r0, #0xa]
	ldr r1, _08057C78 @ =0x0600A000
	str r1, [r0, #0xc]
	strh r5, [r0, #0x18]
	strh r5, [r0, #0x1a]
	movs r1, #0xb1
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r5, [r0, #0x1e]
	strh r5, [r0, #0x20]
	strh r5, [r0, #0x22]
	strh r5, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	movs r1, #0x15
	strh r1, [r0, #0x28]
	ldr r1, _08057C7C @ =0x0300006E
	add r1, sb
	mov r2, r8
	strb r2, [r1]
	strh r4, [r0, #0x2e]
	bl sub_80BD384
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _08057C80 @ =sub_8057C84
	str r0, [r1, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057C50: .4byte gCurTask
_08057C54: .4byte gSaveGame
_08057C58: .4byte 0x00000366
_08057C5C: .4byte gUnknown_080D1D88
_08057C60: .4byte 0x0300001C
_08057C64: .4byte gBgCntRegs
_08057C68: .4byte 0x0000140B
_08057C6C: .4byte gBgScrollRegs
_08057C70: .4byte 0x03000044
_08057C74: .4byte 0x06008000
_08057C78: .4byte 0x0600A000
_08057C7C: .4byte 0x0300006E
_08057C80: .4byte sub_8057C84

	thumb_func_start sub_8057C84
sub_8057C84: @ 0x08057C84
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r1, _08057D0C @ =0x0000FFFF
	mov r0, sp
	strh r1, [r0]
	ldr r5, _08057D10 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r0, [r3, #4]
	ldr r4, _08057D14 @ =gBldRegs
	cmp r0, #0
	bne _08057CF4
	ldr r2, _08057D18 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08057D1C @ =gWinRegs
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
	ldr r0, _08057D20 @ =0x00003FBF
	strh r0, [r4]
	movs r0, #0x10
	strh r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #2]
	movs r2, #1
	strh r2, [r3, #4]
	ldr r1, _08057D24 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08057D28 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08057D2C @ =0x80000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08057D30 @ =gFlags
	ldr r0, [r1]
	orrs r0, r2
	str r0, [r1]
_08057CF4:
	ldrh r2, [r4, #4]
	cmp r2, #0
	beq _08057D38
	ldrh r0, [r3, #2]
	lsrs r0, r0, #8
	strh r0, [r4, #4]
	ldr r1, _08057D34 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r6, [r3, #2]
	adds r0, r0, r6
	strh r0, [r3, #2]
	b _08057D52
	.align 2, 0
_08057D0C: .4byte 0x0000FFFF
_08057D10: .4byte gCurTask
_08057D14: .4byte gBldRegs
_08057D18: .4byte gDispCnt
_08057D1C: .4byte gWinRegs
_08057D20: .4byte 0x00003FBF
_08057D24: .4byte 0x040000D4
_08057D28: .4byte gBgPalette
_08057D2C: .4byte 0x80000001
_08057D30: .4byte gFlags
_08057D34: .4byte 0xFFFFFF00
_08057D38:
	ldr r1, _08057D5C @ =gWinRegs
	movs r0, #0x1f
	strh r0, [r1, #8]
	movs r0, #0x3f
	strh r0, [r1, #0xa]
	movs r0, #0xff
	strh r0, [r4]
	strh r2, [r4, #2]
	movs r0, #0x10
	strh r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, _08057D60 @ =sub_8057DEC
	str r0, [r1, #8]
_08057D52:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057D5C: .4byte gWinRegs
_08057D60: .4byte sub_8057DEC

	thumb_func_start sub_8057D64
sub_8057D64: @ 0x08057D64
	push {r4, r5, r6, lr}
	ldr r6, _08057DC8 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrh r0, [r4, #4]
	ldr r5, _08057DCC @ =gBldRegs
	cmp r0, #0
	beq _08057DAC
	ldr r2, _08057DD0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08057DD4 @ =gWinRegs
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
	ldr r0, _08057DD8 @ =0x00003FBF
	strh r0, [r5]
	strh r3, [r4, #2]
	strh r3, [r4, #4]
_08057DAC:
	ldrh r0, [r5, #4]
	cmp r0, #0xf
	bhi _08057DDC
	ldrh r0, [r4, #2]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r4, #2]
	adds r0, r0, r3
	strh r0, [r4, #2]
	b _08057DE2
	.align 2, 0
_08057DC8: .4byte gCurTask
_08057DCC: .4byte gBldRegs
_08057DD0: .4byte gDispCnt
_08057DD4: .4byte gWinRegs
_08057DD8: .4byte 0x00003FBF
_08057DDC:
	ldr r1, [r6]
	ldr r0, _08057DE8 @ =sub_805818C
	str r0, [r1, #8]
_08057DE2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057DE8: .4byte sub_805818C

	thumb_func_start sub_8057DEC
sub_8057DEC: @ 0x08057DEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r1, _08057E24 @ =0x0000FFFF
	mov r0, sp
	strh r1, [r0]
	ldr r0, _08057E28 @ =gCurTask
	ldr r7, [r0]
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, [r1, #0xc]
	adds r3, r0, #0
	adds r3, #8
	str r3, [r1, #0xc]
	ldr r0, [r1, #0x10]
	adds r2, r0, #0
	subs r2, #8
	str r2, [r1, #0x10]
	cmp r3, #0x43
	bgt _08057E30
	ldr r1, _08057E2C @ =gWinRegs
	lsls r0, r3, #8
	orrs r2, r0
	strh r2, [r1, #4]
	b _08057E92
	.align 2, 0
_08057E24: .4byte 0x0000FFFF
_08057E28: .4byte gCurTask
_08057E2C: .4byte gWinRegs
_08057E30:
	movs r0, #0x44
	str r0, [r1, #0xc]
	movs r0, #0x5c
	str r0, [r1, #0x10]
	ldr r6, _08057EA0 @ =gWinRegs
	ldr r0, _08057EA4 @ =0x0000445C
	movs r1, #0
	mov r8, r1
	strh r0, [r6, #4]
	ldr r1, _08057EA8 @ =0x040000D4
	ldr r0, _08057EAC @ =gUnknown_086AB768
	str r0, [r1]
	ldr r2, _08057EB0 @ =gUnknown_03003E10
	str r2, [r1, #4]
	ldr r0, _08057EB4 @ =0x80000090
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r4, _08057EB8 @ =gFlags
	ldr r3, [r4]
	movs r5, #1
	mov r0, sp
	str r0, [r1]
	subs r2, #0xe0
	str r2, [r1, #4]
	ldr r0, _08057EBC @ =0x80000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	orrs r3, r5
	str r3, [r4]
	ldr r2, _08057EC0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x1f
	strh r0, [r6, #8]
	movs r0, #0x3f
	strh r0, [r6, #0xa]
	ldr r1, _08057EC4 @ =gBldRegs
	movs r0, #0xff
	strh r0, [r1]
	mov r0, r8
	strh r0, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r0, _08057EC8 @ =sub_80580F0
	str r0, [r7, #8]
_08057E92:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057EA0: .4byte gWinRegs
_08057EA4: .4byte 0x0000445C
_08057EA8: .4byte 0x040000D4
_08057EAC: .4byte gUnknown_086AB768
_08057EB0: .4byte gUnknown_03003E10
_08057EB4: .4byte 0x80000090
_08057EB8: .4byte gFlags
_08057EBC: .4byte 0x80000001
_08057EC0: .4byte gDispCnt
_08057EC4: .4byte gBldRegs
_08057EC8: .4byte sub_80580F0

	thumb_func_start sub_8057ECC
sub_8057ECC: @ 0x08057ECC
	push {r4, lr}
	sub sp, #4
	ldr r0, _08057F08 @ =sub_8057F0C
	movs r2, #0x84
	lsls r2, r2, #6
	movs r4, #0
	str r4, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	strh r4, [r0]
	movs r1, #2
	strh r1, [r0, #2]
	strh r4, [r0, #4]
	adds r1, #0xfe
	strh r1, [r0, #6]
	movs r1, #0xbf
	strh r1, [r0, #8]
	strh r4, [r0, #0xa]
	bl ScreenFadeUpdateValues
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057F08: .4byte sub_8057F0C

	thumb_func_start sub_8057F0C
sub_8057F0C: @ 0x08057F0C
	push {lr}
	ldr r0, _08057F38 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057F4C
	ldr r0, _08057F3C @ =gStageData
	ldrb r1, [r0, #3]
	adds r2, r0, #0
	cmp r1, #4
	bls _08057F40
	cmp r1, #7
	beq _08057F40
	movs r0, #2
	b _08057F42
	.align 2, 0
_08057F38: .4byte gCurTask
_08057F3C: .4byte gStageData
_08057F40:
	movs r0, #3
_08057F42:
	strb r0, [r2, #4]
	ldr r0, _08057F50 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08057F4C:
	pop {r0}
	bx r0
	.align 2, 0
_08057F50: .4byte gCurTask

	thumb_func_start sub_8057F54
sub_8057F54: @ 0x08057F54
	push {r4, lr}
	ldr r4, _08057F78 @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08057F72
	ldr r0, [r4]
	bl TaskDestroy
_08057F72:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057F78: .4byte gCurTask

	thumb_func_start sub_8057F7C
sub_8057F7C: @ 0x08057F7C
	push {r4, r5, lr}
	ldr r5, _08057FB0 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x48
	adds r0, r0, r1
	bl DisplaySprite
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08057FA8
	strh r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, _08057FB4 @ =sub_805722C
	str r0, [r1, #8]
_08057FA8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057FB0: .4byte gCurTask
_08057FB4: .4byte sub_805722C

	thumb_func_start sub_8057FB8
sub_8057FB8: @ 0x08057FB8
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r0, [r0, #0x20]
	bl VramFree
	ldr r0, _08057FE4 @ =0x0300016C
	adds r4, r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08057FD6
	bl EwramFree
_08057FD6:
	movs r0, #0
	movs r1, #0
	bl sub_80578EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057FE4: .4byte 0x0300016C

	thumb_func_start sub_8057FE8
sub_8057FE8: @ 0x08057FE8
	push {r4, lr}
	ldr r4, _08058030 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r2, [r3, #0xa]
	adds r2, #1
	strh r2, [r3, #0xa]
	ldrh r0, [r3, #0xa]
	lsls r1, r0, #3
	adds r1, r1, r0
	movs r0, #0x50
	subs r0, r0, r1
	strb r0, [r3, #6]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #8
	bne _0805801E
	movs r0, #0xc
	strb r0, [r3, #6]
	movs r0, #0x10
	strh r0, [r3, #0xa]
	ldr r1, [r4]
	ldr r0, _08058034 @ =sub_8058038
	str r0, [r1, #8]
_0805801E:
	bl sub_8057848
	movs r0, #1
	movs r1, #1
	bl sub_80578EC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058030: .4byte gCurTask
_08058034: .4byte sub_8058038

	thumb_func_start sub_8058038
sub_8058038: @ 0x08058038
	push {r4, r5, lr}
	ldr r0, _0805808C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x20
	adds r5, r1, r0
	ldrh r0, [r4, #0xa]
	subs r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805805A
	ldr r0, _08058090 @ =sub_8058094
	str r0, [r2, #8]
_0805805A:
	bl sub_8057848
	movs r0, #1
	movs r1, #1
	bl sub_80578EC
	ldrh r0, [r4, #0xa]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	movs r0, #0x78
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldrb r0, [r4, #5]
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805808C: .4byte gCurTask
_08058090: .4byte sub_8058094

	thumb_func_start sub_8058094
sub_8058094: @ 0x08058094
	push {r4, r5, lr}
	ldr r0, _080580E4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x20
	adds r5, r1, r0
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	bne _080580BC
	movs r0, #0
	strh r0, [r4, #0xa]
	ldr r0, _080580E8 @ =sub_805732C
	str r0, [r2, #8]
_080580BC:
	bl sub_8057848
	movs r0, #1
	movs r1, #1
	bl sub_80578EC
	movs r0, #0x78
	strh r0, [r5, #0x10]
	ldrb r0, [r4, #5]
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080580E4: .4byte gCurTask
_080580E8: .4byte sub_805732C

	thumb_func_start sub_80580EC
sub_80580EC: @ 0x080580EC
	bx lr
	.align 2, 0

	thumb_func_start sub_80580F0
sub_80580F0: @ 0x080580F0
	push {r4, r5, lr}
	ldr r5, _08058120 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	ldr r1, _08058124 @ =0x0300001C
	adds r0, r0, r1
	bl DisplaySprite
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _0805811A
	ldr r1, [r5]
	ldr r0, _08058128 @ =sub_8057D64
	str r0, [r1, #8]
_0805811A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058120: .4byte gCurTask
_08058124: .4byte 0x0300001C
_08058128: .4byte sub_8057D64

	thumb_func_start sub_805812C
sub_805812C: @ 0x0805812C
	push {r4, r5, lr}
	ldr r5, _08058160 @ =gCurTask
	ldr r0, [r5]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	adds r1, #0x1c
	adds r0, r0, r1
	bl DisplaySprite
	ldr r0, [r4, #0xc]
	adds r3, r0, #0
	adds r3, #8
	str r3, [r4, #0xc]
	ldr r0, [r4, #0x10]
	adds r2, r0, #0
	subs r2, #8
	str r2, [r4, #0x10]
	cmp r3, #0x4f
	bgt _08058168
	ldr r1, _08058164 @ =gWinRegs
	lsls r0, r3, #8
	orrs r2, r0
	strh r2, [r1, #6]
	b _0805817A
	.align 2, 0
_08058160: .4byte gCurTask
_08058164: .4byte gWinRegs
_08058168:
	movs r0, #0x50
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r1, _08058180 @ =gWinRegs
	ldr r0, _08058184 @ =0x00005050
	strh r0, [r1, #6]
	ldr r1, [r5]
	ldr r0, _08058188 @ =sub_8057D64
	str r0, [r1, #8]
_0805817A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058180: .4byte gWinRegs
_08058184: .4byte 0x00005050
_08058188: .4byte sub_8057D64

	thumb_func_start sub_805818C
sub_805818C: @ 0x0805818C
	push {lr}
	ldr r0, _080581B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #8
	ldrsh r1, [r0, r2]
	cmp r1, #7
	beq _080581B8
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	b _080581BA
	.align 2, 0
_080581B4: .4byte gCurTask
_080581B8:
	movs r0, #0x47
_080581BA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	bl sub_8002210
	pop {r0}
	bx r0
