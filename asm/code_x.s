.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_80B1AF4
sub_80B1AF4: @ 0x080B1AF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, _080B1B8C @ =gStageData
	adds r0, r1, #0
	adds r0, #0xa0
	movs r4, #0
	str r4, [r0]
	movs r0, #0xa
	strb r0, [r1, #0xa]
	adds r0, r1, #0
	adds r0, #0x85
	strb r4, [r0]
	movs r0, #3
	strb r0, [r1, #4]
	ldr r2, _080B1B90 @ =gPlayers
	ldrb r1, [r1, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, #4
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r2, _080B1B94 @ =0xFFFFFEFF
	ands r1, r2
	str r1, [r0]
	bl sub_80B6B20
	ldr r0, _080B1B98 @ =sub_80B2228
	ldr r1, _080B1B9C @ =0x000008E8
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _080B1BA0 @ =sub_80B2224
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	ldr r1, _080B1BA4 @ =gUnknown_030008B0
	adds r0, r2, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	str r1, [r0]
	ldr r3, _080B1BA8 @ =gUnknown_030008B4
	adds r0, r2, r3
	str r1, [r0]
	ldr r1, _080B1BAC @ =gUnknown_030008B8
	adds r0, r2, r1
	str r4, [r0]
	adds r3, #8
	adds r1, r2, r3
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _080B1BB4
	ldr r1, _080B1BB0 @ =gUnknown_030008C6
	adds r0, r2, r1
	strb r5, [r0]
	b _080B1BBC
	.align 2, 0
_080B1B8C: .4byte gStageData
_080B1B90: .4byte gPlayers
_080B1B94: .4byte 0xFFFFFEFF
_080B1B98: .4byte sub_80B2228
_080B1B9C: .4byte 0x000008E8
_080B1BA0: .4byte sub_80B2224
_080B1BA4: .4byte gUnknown_030008B0
_080B1BA8: .4byte gUnknown_030008B4
_080B1BAC: .4byte gUnknown_030008B8
_080B1BB0: .4byte gUnknown_030008C6
_080B1BB4:
	ldr r3, _080B1CEC @ =gUnknown_030008C6
	adds r1, r2, r3
	movs r0, #2
	strb r0, [r1]
_080B1BBC:
	ldr r1, _080B1CF0 @ =0x000008C7
	adds r0, r7, r1
	movs r2, #0
	strb r6, [r0]
	ldr r3, _080B1CF4 @ =0x000008BE
	adds r0, r7, r3
	movs r4, #0
	strh r2, [r0]
	ldr r0, _080B1CF8 @ =0x000008CA
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	adds r3, #0xd
	adds r1, r7, r3
	movs r0, #2
	strb r0, [r1]
	ldr r1, _080B1CFC @ =0x000008CC
	adds r0, r7, r1
	strb r4, [r0]
	adds r3, #2
	adds r0, r7, r3
	strb r4, [r0]
	subs r1, #0xc
	adds r0, r7, r1
	strh r2, [r0]
	ldr r1, _080B1D00 @ =gUnknown_080DBE82
	lsls r0, r6, #0x10
	asrs r0, r0, #0xe
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r3, #0xb
	adds r6, r7, r3
	strh r0, [r6]
	ldr r1, _080B1D04 @ =0x000008C4
	adds r0, r7, r1
	strh r2, [r0]
	ldr r2, _080B1D08 @ =0x000008C8
	adds r0, r7, r2
	strb r4, [r0]
	adds r3, #0xc
	adds r0, r7, r3
	strb r4, [r0]
	adds r1, #0xb
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #8
	adds r0, r7, r2
	strb r4, [r0]
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r1, #0x64
	bl Div
	ldr r1, _080B1D0C @ =0x000008D1
	adds r5, r7, r1
	strb r0, [r5]
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r1, #0xa
	bl Div
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	subs r0, r0, r1
	ldr r3, _080B1D10 @ =0x000008D2
	adds r1, r7, r3
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r1, #0xa
	bl Mod
	ldr r2, _080B1D14 @ =0x000008D3
	adds r1, r7, r2
	strb r0, [r1]
	ldr r3, _080B1D18 @ =0x000008D4
	adds r0, r7, r3
	strb r4, [r0]
	ldr r1, _080B1D1C @ =0x000008D5
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #3
	adds r0, r7, r2
	strb r4, [r0]
	adds r3, #3
	adds r0, r7, r3
	strb r4, [r0]
	ldr r0, _080B1D20 @ =0x000008D8
	adds r1, r7, r0
	movs r0, #0x78
	strh r0, [r1]
	adds r2, #4
	adds r1, r7, r2
	movs r0, #0x8c
	strh r0, [r1]
	adds r3, #5
	adds r1, r7, r3
	movs r0, #0x40
	strh r0, [r1]
	ldr r0, _080B1D24 @ =0x000008DE
	adds r1, r7, r0
	movs r0, #0x28
	strb r0, [r1]
	adds r2, #5
	adds r1, r7, r2
	movs r0, #0x3c
	strb r0, [r1]
	subs r3, #0x13
	adds r0, r7, r3
	mov r2, r8
	strb r2, [r0]
	ldrb r1, [r1]
	movs r0, #0x9f
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r3, #0x17
	adds r1, r7, r3
	strb r0, [r1]
	movs r2, #1
	ldrb r0, [r1]
	cmp r2, r0
	bge _080B1CC2
	adds r1, r0, #0
_080B1CB8:
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	blt _080B1CB8
_080B1CC2:
	movs r1, #0x8e
	lsls r1, r1, #4
	adds r0, r7, r1
	strb r2, [r0]
	ldr r2, _080B1D28 @ =0x000008DF
	adds r0, r7, r2
	ldrb r1, [r0]
	movs r0, #0x9f
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r1, r1, r0
	ldr r3, _080B1D2C @ =0x000008E1
	adds r0, r7, r3
	strb r1, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B1CEC: .4byte gUnknown_030008C6
_080B1CF0: .4byte 0x000008C7
_080B1CF4: .4byte 0x000008BE
_080B1CF8: .4byte 0x000008CA
_080B1CFC: .4byte 0x000008CC
_080B1D00: .4byte gUnknown_080DBE82
_080B1D04: .4byte 0x000008C4
_080B1D08: .4byte 0x000008C8
_080B1D0C: .4byte 0x000008D1
_080B1D10: .4byte 0x000008D2
_080B1D14: .4byte 0x000008D3
_080B1D18: .4byte 0x000008D4
_080B1D1C: .4byte 0x000008D5
_080B1D20: .4byte 0x000008D8
_080B1D24: .4byte 0x000008DE
_080B1D28: .4byte 0x000008DF
_080B1D2C: .4byte 0x000008E1

	thumb_func_start sub_80B1D30
sub_80B1D30: @ 0x080B1D30
	ldr r1, _080B1D80 @ =gDispCnt
	ldr r2, _080B1D84 @ =0x00001C42
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080B1D88 @ =gUnknown_030035C0
	movs r3, #0
	movs r2, #0
	ldr r0, _080B1D8C @ =0x0000D086
	strh r0, [r1, #4]
	movs r0, #0xe4
	lsls r0, r0, #5
	strh r0, [r1, #6]
	ldr r1, _080B1D90 @ =gBldRegs
	movs r0, #0xaf
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r0, _080B1D94 @ =gUnknown_03003C10
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	ldr r2, _080B1D98 @ =gUnknown_03006230
	strb r3, [r2, #2]
	ldr r0, _080B1D9C @ =gUnknown_03003590
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	movs r1, #0xff
	strb r1, [r0, #0xa]
	movs r1, #0x80
	strb r1, [r0, #0xb]
	strb r3, [r2, #3]
	strb r3, [r0, #0xc]
	strb r3, [r0, #0xd]
	subs r1, #0x81
	strb r1, [r0, #0xe]
	movs r1, #0x20
	strb r1, [r0, #0xf]
	bx lr
	.align 2, 0
_080B1D80: .4byte gDispCnt
_080B1D84: .4byte 0x00001C42
_080B1D88: .4byte gUnknown_030035C0
_080B1D8C: .4byte 0x0000D086
_080B1D90: .4byte gBldRegs
_080B1D94: .4byte gUnknown_03003C10
_080B1D98: .4byte gUnknown_03006230
_080B1D9C: .4byte gUnknown_03003590

	thumb_func_start sub_80B1DA0
sub_80B1DA0: @ 0x080B1DA0
	push {r4, r5, r6, lr}
	ldr r0, _080B1E14 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r0, #0x7c
	adds r5, r4, r0
	ldr r0, _080B1E18 @ =gStageData
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _080B1DC4
	ldr r1, _080B1E1C @ =gUnknown_030008C7
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B1DE4
_080B1DC4:
	ldr r2, _080B1E20 @ =0x03000014
	adds r0, r4, r2
	bl DisplaySprite
	ldr r1, _080B1E24 @ =gBldRegs
	movs r0, #0xaf
	strh r0, [r1]
	ldr r0, _080B1E28 @ =gUnknown_030008BE
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x8b
	ble _080B1E0E
_080B1DE4:
	ldr r2, _080B1E24 @ =gBldRegs
	movs r1, #0
	movs r3, #0xbf
	strh r3, [r2]
	movs r0, #0x10
	strh r0, [r2, #4]
	strh r1, [r5]
	movs r0, #2
	strh r0, [r5, #2]
	strh r1, [r5, #4]
	adds r0, #0xfe
	strh r0, [r5, #6]
	strh r1, [r5, #0xa]
	strh r3, [r5, #8]
	ldr r2, _080B1E2C @ =0x000008BE
	adds r0, r6, r2
	strh r1, [r0]
	ldr r0, _080B1E14 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080B1E30 @ =sub_80B1E34
	str r0, [r1, #8]
_080B1E0E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B1E14: .4byte gCurTask
_080B1E18: .4byte gStageData
_080B1E1C: .4byte gUnknown_030008C7
_080B1E20: .4byte 0x03000014
_080B1E24: .4byte gBldRegs
_080B1E28: .4byte gUnknown_030008BE
_080B1E2C: .4byte 0x000008BE
_080B1E30: .4byte sub_80B1E34

	thumb_func_start sub_80B1E34
sub_80B1E34: @ 0x080B1E34
	push {r4, r5, lr}
	ldr r0, _080B1E5C @ =gCurTask
	ldr r2, [r0]
	ldrh r5, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r0, _080B1E60 @ =gUnknown_030008C4
	adds r1, r5, r0
	movs r0, #2
	strh r0, [r1]
	ldr r3, _080B1E64 @ =gUnknown_030008BE
	adds r0, r5, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080B1E68
	cmp r0, #1
	beq _080B1EA4
	b _080B1EB4
	.align 2, 0
_080B1E5C: .4byte gCurTask
_080B1E60: .4byte gUnknown_030008C4
_080B1E64: .4byte gUnknown_030008BE
_080B1E68:
	adds r0, r4, #0
	bl sub_80B33D0
	str r0, [r4, #8]
	ldr r0, _080B1E9C @ =gUnknown_030008E4
	adds r1, r5, r0
	ldr r0, _080B1EA0 @ =gUnknown_03001EA0
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r4, #0
	bl sub_80B48A4
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_80B4E1C
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_80B3314
	str r0, [r4]
	adds r0, r4, #0
	bl sub_80B22CC
	str r0, [r4, #0x10]
	b _080B1EB4
	.align 2, 0
_080B1E9C: .4byte gUnknown_030008E4
_080B1EA0: .4byte gUnknown_03001EA0
_080B1EA4:
	movs r0, #3
	strh r0, [r1]
	ldr r0, _080B1EB0 @ =sub_80B2284
	str r0, [r2, #8]
	b _080B1EBE
	.align 2, 0
_080B1EB0: .4byte sub_80B2284
_080B1EB4:
	ldr r3, _080B1EC4 @ =0x000008BE
	adds r1, r4, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_080B1EBE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B1EC4: .4byte 0x000008BE

	thumb_func_start sub_80B1EC8
sub_80B1EC8: @ 0x080B1EC8
	push {r4, lr}
	ldr r3, _080B1F2C @ =gCurTask
	ldr r0, [r3]
	ldrh r2, [r0, #6]
	ldr r1, _080B1F30 @ =gUnknown_030008C8
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B1EE4
	ldr r4, _080B1F34 @ =gUnknown_030008BE
	adds r1, r2, r4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_080B1EE4:
	ldr r0, _080B1F38 @ =gUnknown_030008DF
	adds r1, r2, r0
	movs r0, #0x3c
	strb r0, [r1]
	ldr r4, _080B1F3C @ =gUnknown_030008DA
	adds r1, r2, r4
	movs r0, #0x8c
	strh r0, [r1]
	ldr r0, _080B1F40 @ =gUnknown_030008B0
	adds r1, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r1]
	subs r4, #0x26
	adds r1, r2, r4
	movs r0, #0xf0
	lsls r0, r0, #0xe
	str r0, [r1]
	ldr r0, _080B1F34 @ =gUnknown_030008BE
	adds r1, r2, r0
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0xdb
	ble _080B1F26
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080B1F44 @ =gUnknown_030008C4
	adds r1, r2, r0
	movs r0, #5
	strh r0, [r1]
	ldr r1, [r3]
	ldr r0, _080B1F48 @ =sub_80B1F4C
	str r0, [r1, #8]
_080B1F26:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1F2C: .4byte gCurTask
_080B1F30: .4byte gUnknown_030008C8
_080B1F34: .4byte gUnknown_030008BE
_080B1F38: .4byte gUnknown_030008DF
_080B1F3C: .4byte gUnknown_030008DA
_080B1F40: .4byte gUnknown_030008B0
_080B1F44: .4byte gUnknown_030008C4
_080B1F48: .4byte sub_80B1F4C

	thumb_func_start sub_80B1F4C
sub_80B1F4C: @ 0x080B1F4C
	push {lr}
	ldr r2, _080B1F74 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r0, [r3, #8]
	ldrh r0, [r0, #6]
	ldr r1, _080B1F78 @ =0x030000AC
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #1
	cmp r0, #0x15
	bhi _080B2038
	lsls r0, r0, #2
	ldr r1, _080B1F7C @ =_080B1F80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B1F74: .4byte gCurTask
_080B1F78: .4byte 0x030000AC
_080B1F7C: .4byte _080B1F80
_080B1F80: @ jump table
	.4byte _080B1FD8 @ case 0
	.4byte _080B1FD8 @ case 1
	.4byte _080B1FD8 @ case 2
	.4byte _080B1FD8 @ case 3
	.4byte _080B1FD8 @ case 4
	.4byte _080B1FD8 @ case 5
	.4byte _080B1FD8 @ case 6
	.4byte _080B1FD8 @ case 7
	.4byte _080B1FE4 @ case 8
	.4byte _080B2014 @ case 9
	.4byte _080B1FE4 @ case 10
	.4byte _080B1FFC @ case 11
	.4byte _080B1FFC @ case 12
	.4byte _080B1FE4 @ case 13
	.4byte _080B2014 @ case 14
	.4byte _080B1FE4 @ case 15
	.4byte _080B1FE4 @ case 16
	.4byte _080B1FE4 @ case 17
	.4byte _080B1FE4 @ case 18
	.4byte _080B2014 @ case 19
	.4byte _080B1FE4 @ case 20
	.4byte _080B2014 @ case 21
_080B1FD8:
	ldr r1, _080B1FE0 @ =gStageData
	movs r0, #3
	b _080B1FE8
	.align 2, 0
_080B1FE0: .4byte gStageData
_080B1FE4:
	ldr r1, _080B1FF4 @ =gStageData
	movs r0, #9
_080B1FE8:
	strb r0, [r1, #4]
	ldr r0, _080B1FF8 @ =0x000008C4
	adds r1, r3, r0
	movs r0, #5
	strh r0, [r1]
	b _080B2038
	.align 2, 0
_080B1FF4: .4byte gStageData
_080B1FF8: .4byte 0x000008C4
_080B1FFC:
	ldr r1, _080B200C @ =gStageData
	movs r0, #9
	strb r0, [r1, #4]
	ldr r0, _080B2010 @ =0x000008C4
	adds r1, r3, r0
	movs r0, #6
	strh r0, [r1]
	b _080B2038
	.align 2, 0
_080B200C: .4byte gStageData
_080B2010: .4byte 0x000008C4
_080B2014:
	ldr r1, _080B202C @ =gStageData
	movs r0, #6
	strb r0, [r1, #4]
	ldr r0, _080B2030 @ =0x000008C4
	adds r1, r3, r0
	movs r0, #7
	strh r0, [r1]
	ldr r1, [r2]
	ldr r0, _080B2034 @ =sub_80B205C
	str r0, [r1, #8]
	b _080B2050
	.align 2, 0
_080B202C: .4byte gStageData
_080B2030: .4byte 0x000008C4
_080B2034: .4byte sub_80B205C
_080B2038:
	ldr r0, _080B2054 @ =gUnknown_03003F8C
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080B2050
	ldr r0, _080B2058 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #1
	beq _080B2050
	bl sub_800341C
_080B2050:
	pop {r0}
	bx r0
	.align 2, 0
_080B2054: .4byte gUnknown_03003F8C
_080B2058: .4byte gStageData

	thumb_func_start sub_80B205C
sub_80B205C: @ 0x080B205C
	push {r4, lr}
	ldr r4, _080B209C @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	ldr r1, _080B20A0 @ =0x0300007C
	adds r0, r0, r1
	movs r2, #0
	movs r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	movs r1, #0x40
	strh r1, [r0, #6]
	strh r2, [r0, #0xa]
	movs r1, #0xbf
	strh r1, [r0, #8]
	bl UpdateScreenFade
	ldr r1, _080B20A4 @ =gDispCnt
	ldr r2, _080B20A8 @ =0x00009C42
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080B20AC @ =gWinRegs
	ldr r0, _080B20B0 @ =0x0000103F
	strh r0, [r1, #0xa]
	ldr r1, [r4]
	ldr r0, _080B20B4 @ =sub_80B20B8
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B209C: .4byte gCurTask
_080B20A0: .4byte 0x0300007C
_080B20A4: .4byte gDispCnt
_080B20A8: .4byte 0x00009C42
_080B20AC: .4byte gWinRegs
_080B20B0: .4byte 0x0000103F
_080B20B4: .4byte sub_80B20B8

	thumb_func_start sub_80B20B8
sub_80B20B8: @ 0x080B20B8
	push {r4, r5, r6, lr}
	ldr r0, _080B20E4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _080B20E8 @ =0x0300007C
	adds r0, r5, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B20FC
	ldr r1, _080B20EC @ =gDispCnt
	ldr r2, _080B20F0 @ =0x00009C42
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080B20F4 @ =gWinRegs
	ldr r0, _080B20F8 @ =0x0000103F
	strh r0, [r1, #0xa]
	b _080B2214
	.align 2, 0
_080B20E4: .4byte gCurTask
_080B20E8: .4byte 0x0300007C
_080B20EC: .4byte gDispCnt
_080B20F0: .4byte 0x00009C42
_080B20F4: .4byte gWinRegs
_080B20F8: .4byte 0x0000103F
_080B20FC:
	ldr r0, _080B2178 @ =gFlags
	ldr r1, [r0]
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0]
	ldr r0, [r4]
	cmp r0, #0
	beq _080B2116
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
_080B2116:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _080B2124
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #4]
_080B2124:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080B2132
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #8]
_080B2132:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _080B2140
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #0xc]
_080B2140:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _080B214E
	bl TaskDestroy
	movs r0, #0
	str r0, [r4, #0x10]
_080B214E:
	ldr r6, _080B217C @ =gStageData
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _080B218C
	movs r4, #0
	ldr r3, _080B2180 @ =gUnknown_030008C2
	adds r0, r5, r3
	ldr r6, _080B2184 @ =gUnknown_030008C0
	adds r1, r5, r6
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r2, r0
	bgt _080B216E
	movs r4, #1
_080B216E:
	ldr r1, _080B2188 @ =gUnknown_030008C7
	adds r0, r5, r1
	ldrb r1, [r0]
	b _080B21C0
	.align 2, 0
_080B2178: .4byte gFlags
_080B217C: .4byte gStageData
_080B2180: .4byte gUnknown_030008C2
_080B2184: .4byte gUnknown_030008C0
_080B2188: .4byte gUnknown_030008C7
_080B218C:
	ldr r1, _080B21D4 @ =gUnknown_030008D4
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r2, _080B21D8 @ =gUnknown_030008C7
	adds r3, r5, r2
	cmp r0, #0
	beq _080B21A6
	adds r4, r3, #0
	ldrb r0, [r4]
	cmp r0, #6
	bne _080B21EC
_080B21A6:
	movs r4, #0
	ldr r6, _080B21DC @ =gUnknown_030008C2
	adds r0, r5, r6
	ldr r2, _080B21E0 @ =gUnknown_030008C0
	adds r1, r5, r2
	movs r6, #0
	ldrsh r2, [r0, r6]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r2, r0
	bgt _080B21BE
	movs r4, #1
_080B21BE:
	ldrb r1, [r3]
_080B21C0:
	ldr r2, _080B21E4 @ =gUnknown_030008C6
	adds r0, r5, r2
	ldrb r2, [r0]
	ldr r3, _080B21E8 @ =gUnknown_030008C9
	adds r0, r5, r3
	ldrb r3, [r0]
	adds r0, r4, #0
	bl sub_80B6CD8
	b _080B220C
	.align 2, 0
_080B21D4: .4byte gUnknown_030008D4
_080B21D8: .4byte gUnknown_030008C7
_080B21DC: .4byte gUnknown_030008C2
_080B21E0: .4byte gUnknown_030008C0
_080B21E4: .4byte gUnknown_030008C6
_080B21E8: .4byte gUnknown_030008C9
_080B21EC:
	ldr r0, _080B221C @ =gUnknown_030008C9
	adds r2, r5, r0
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r4]
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	strb r3, [r6, #0xd]
	ldrb r1, [r4]
	adds r1, #1
	ldrb r2, [r2]
	movs r0, #0
	bl sub_80B1AF4
_080B220C:
	ldr r0, _080B2220 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080B2214:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B221C: .4byte gUnknown_030008C9
_080B2220: .4byte gCurTask
    
	thumb_func_start sub_80B2224
sub_80B2224: @ 0x080B2224
	bx lr
	.align 2, 0

	thumb_func_start sub_80B2228
sub_80B2228: @ 0x080B2228
	push {r4, r5, lr}
	sub sp, #0x18
	ldr r5, _080B2274 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	bl sub_80B1D30
	ldr r1, _080B2278 @ =0x03000014
	adds r0, r4, r1
	movs r3, #0x8c
	lsls r3, r3, #3
	movs r2, #0
	str r2, [sp]
	movs r1, #0x78
	str r1, [sp, #4]
	movs r1, #0x50
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x28
	bl sub_80B6BB8
	ldr r0, _080B227C @ =gUnknown_030008C4
	adds r4, r4, r0
	movs r0, #1
	strh r0, [r4]
	movs r0, #0x41
	bl m4aSongNumStart
	ldr r1, [r5]
	ldr r0, _080B2280 @ =sub_80B1DA0
	str r0, [r1, #8]
	add sp, #0x18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B2274: .4byte gCurTask
_080B2278: .4byte 0x03000014
_080B227C: .4byte gUnknown_030008C4
_080B2280: .4byte sub_80B1DA0

	thumb_func_start sub_80B2284
sub_80B2284: @ 0x080B2284
	push {r4, r5, lr}
	ldr r5, _080B22B8 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	ldr r1, _080B22BC @ =0x0300007C
	adds r0, r4, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B22B0
	ldr r0, _080B22C0 @ =gUnknown_030008BE
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080B22C4 @ =gUnknown_030008C4
	adds r1, r4, r0
	movs r0, #4
	strh r0, [r1]
	ldr r1, [r5]
	ldr r0, _080B22C8 @ =sub_80B1EC8
	str r0, [r1, #8]
_080B22B0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B22B8: .4byte gCurTask
_080B22BC: .4byte 0x0300007C
_080B22C0: .4byte gUnknown_030008BE
_080B22C4: .4byte gUnknown_030008C4
_080B22C8: .4byte sub_80B1EC8

	thumb_func_start sub_80B22CC
sub_80B22CC: @ 0x080B22CC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080B2340 @ =sub_80B2358
	movs r1, #0xa9
	lsls r1, r1, #2
	movs r2, #0xd0
	lsls r2, r2, #8
	ldr r3, _080B2344 @ =sub_80B2D84
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r5, r0, #0
	ldrh r2, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	str r4, [r0]
	ldr r3, _080B2348 @ =0x03000284
	adds r1, r2, r3
	movs r3, #0
	str r3, [r1]
	ldr r4, _080B234C @ =0x03000288
	adds r1, r2, r4
	strb r3, [r1]
	ldr r6, _080B2350 @ =0x0300028E
	adds r1, r2, r6
	movs r4, #0
	strh r3, [r1]
	subs r6, #5
	adds r1, r2, r6
	strb r4, [r1]
	adds r6, #1
	adds r1, r2, r6
	strb r4, [r1]
	adds r6, #1
	adds r1, r2, r6
	strb r4, [r1]
	ldr r4, _080B2354 @ =0x0300028C
	adds r1, r2, r4
	strh r3, [r1]
	adds r6, #5
	adds r1, r2, r6
	strh r3, [r1]
	adds r4, #6
	adds r1, r2, r4
	strh r3, [r1]
	adds r6, #4
	adds r2, r2, r6
	strh r3, [r2]
	bl sub_80B2D90
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B2340: .4byte sub_80B2358
_080B2344: .4byte sub_80B2D84
_080B2348: .4byte 0x03000284
_080B234C: .4byte 0x03000288
_080B2350: .4byte 0x0300028E
_080B2354: .4byte 0x0300028C

	thumb_func_start sub_80B2358
sub_80B2358: @ 0x080B2358
	push {r4, r5, r6, r7, lr}
	ldr r0, _080B2390 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r4, r1
	ldr r6, [r5]
	ldr r0, [r6, #8]
	ldrh r0, [r0, #6]
	adds r7, r0, r1
	bl sub_80B2640
	ldr r0, _080B2394 @ =0x03000288
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _080B239C
	ldr r1, _080B2398 @ =0x000008C4
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #4
	bne _080B23A2
	adds r0, r5, #0
	bl sub_80B2D9C
	b _080B23A2
	.align 2, 0
_080B2390: .4byte gCurTask
_080B2394: .4byte 0x03000288
_080B2398: .4byte 0x000008C4
_080B239C:
	adds r0, r5, #0
	bl sub_80B28AC
_080B23A2:
	ldr r1, _080B23BC @ =0x0000028B
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bhi _080B2418
	lsls r0, r0, #2
	ldr r1, _080B23C0 @ =_080B23C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B23BC: .4byte 0x0000028B
_080B23C0: .4byte _080B23C4
_080B23C4: @ jump table
	.4byte _080B23D8 @ case 0
	.4byte _080B23E8 @ case 1
	.4byte _080B23F0 @ case 2
	.4byte _080B2412 @ case 3
	.4byte _080B2418 @ case 4
_080B23D8:
	adds r0, r7, #0
	adds r0, #0xac
	ldrh r0, [r0]
	cmp r0, #0xa
	beq _080B23FA
	cmp r0, #0xc
	bne _080B2418
	b _080B2408
_080B23E8:
	adds r0, r5, #0
	bl sub_80B2D0C
	b _080B2418
_080B23F0:
	adds r0, r7, #0
	adds r0, #0xac
	ldrh r0, [r0]
	cmp r0, #0xf
	bne _080B2404
_080B23FA:
	adds r0, r5, #0
	movs r1, #0
	bl sub_80B2C98
	b _080B2418
_080B2404:
	cmp r0, #0x13
	bne _080B2418
_080B2408:
	adds r0, r5, #0
	movs r1, #1
	bl sub_80B2C98
	b _080B2418
_080B2412:
	adds r0, r5, #0
	bl sub_80B2D0C
_080B2418:
	ldr r1, _080B243C @ =0x000008C4
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #4
	bne _080B2444
	ldr r1, _080B2440 @ =0x0000028A
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080B2444
	adds r0, r5, #0
	movs r1, #0
	bl sub_80B29B4
	b _080B24A6
	.align 2, 0
_080B243C: .4byte 0x000008C4
_080B2440: .4byte 0x0000028A
_080B2444:
	ldr r1, _080B2468 @ =0x000008C4
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #6
	bne _080B2470
	ldr r1, _080B246C @ =0x0000028A
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bne _080B2470
	adds r0, r5, #0
	movs r1, #1
	bl sub_80B29B4
	b _080B24A6
	.align 2, 0
_080B2468: .4byte 0x000008C4
_080B246C: .4byte 0x0000028A
_080B2470:
	ldr r1, _080B249C @ =0x0000028A
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	beq _080B24A6
	cmp r0, #0
	beq _080B24A6
	cmp r0, #4
	beq _080B24A6
	adds r1, #0xa
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0xa8
	lsls r0, r0, #8
	cmp r1, r0
	bls _080B24A0
	adds r0, r5, #0
	bl sub_80B2E9C
	b _080B24A6
	.align 2, 0
_080B249C: .4byte 0x0000028A
_080B24A0:
	adds r0, r5, #0
	bl sub_80B2B38
_080B24A6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80B24AC
sub_80B24AC: @ 0x080B24AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	mov r1, sl
	ldm r1!, {r5}
	ldr r2, _080B2624 @ =0x000008CE
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	ldr r2, _080B2628 @ =gUnknown_080DBEA0
	adds r7, r0, r2
	ldrh r2, [r7, #4]
	ldrh r3, [r7]
	movs r6, #0x80
	lsls r6, r6, #5
	str r6, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	movs r0, #0x10
	mov r8, r0
	str r0, [sp, #8]
	movs r0, #1
	mov sb, r0
	str r0, [sp, #0xc]
	ldrb r0, [r7, #2]
	str r0, [sp, #0x10]
	movs r4, #0
	str r4, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0
	bl sub_80B6BB8
	ldr r1, _080B262C @ =0x000008CF
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	ldr r2, _080B2628 @ =gUnknown_080DBEA0
	adds r7, r0, r2
	mov r0, sl
	adds r0, #0x2c
	ldrh r2, [r7, #4]
	ldrh r3, [r7]
	str r6, [sp]
	movs r1, #0x6c
	str r1, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	ldrb r1, [r7, #2]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0
	bl sub_80B6BB8
	movs r2, #0x8d
	lsls r2, r2, #4
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	ldr r1, _080B2628 @ =gUnknown_080DBEA0
	adds r7, r0, r1
	mov r0, sl
	adds r0, #0x54
	ldrh r2, [r7, #4]
	ldrh r3, [r7]
	str r6, [sp]
	movs r1, #0x74
	str r1, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	ldrb r1, [r7, #2]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0
	bl sub_80B6BB8
	mov r0, sl
	adds r0, #0x7c
	ldr r3, _080B2630 @ =0x00000464
	str r6, [sp]
	movs r1, #0x78
	str r1, [sp, #4]
	movs r1, #0xe
	str r1, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0
	movs r2, #8
	bl sub_80B6BB8
	ldr r2, _080B2634 @ =0x000008D1
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	ldr r1, _080B2628 @ =gUnknown_080DBEA0
	adds r7, r0, r1
	mov r0, sl
	adds r0, #0xa4
	ldrh r2, [r7, #4]
	ldrh r3, [r7]
	str r6, [sp]
	movs r1, #0x7c
	str r1, [sp, #4]
	movs r1, #0x18
	mov r8, r1
	str r1, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	ldrb r1, [r7, #2]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0
	bl sub_80B6BB8
	ldr r2, _080B2638 @ =0x000008D2
	adds r0, r5, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	ldr r1, _080B2628 @ =gUnknown_080DBEA0
	adds r7, r0, r1
	mov r0, sl
	adds r0, #0xcc
	ldrh r2, [r7, #4]
	ldrh r3, [r7]
	str r6, [sp]
	movs r1, #0x84
	str r1, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	ldrb r1, [r7, #2]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0
	bl sub_80B6BB8
	ldr r2, _080B263C @ =0x000008D3
	adds r5, r5, r2
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #3
	ldr r1, _080B2628 @ =gUnknown_080DBEA0
	adds r7, r0, r1
	mov r0, sl
	adds r0, #0xf4
	ldrh r2, [r7, #4]
	ldrh r3, [r7]
	str r6, [sp]
	movs r1, #0x8c
	str r1, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	ldrb r1, [r7, #2]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0
	bl sub_80B6BB8
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2624: .4byte 0x000008CE
_080B2628: .4byte gUnknown_080DBEA0
_080B262C: .4byte 0x000008CF
_080B2630: .4byte 0x00000464
_080B2634: .4byte 0x000008D1
_080B2638: .4byte 0x000008D2
_080B263C: .4byte 0x000008D3

	thumb_func_start sub_80B2640
sub_80B2640: @ 0x080B2640
	push {r4, r5, r6, lr}
	ldr r0, _080B26CC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r6, [r0]
	ldr r1, _080B26D0 @ =0x000008C8
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B265E
	bl sub_80B26FC
_080B265E:
	ldr r0, _080B26D4 @ =0x000008CE
	adds r5, r6, r0
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _080B2672
	ldr r1, _080B26D8 @ =0x03000004
	adds r0, r4, r1
	bl DisplaySprite
_080B2672:
	ldrh r0, [r5]
	cmp r0, #0
	beq _080B2680
	ldr r1, _080B26DC @ =0x0300002C
	adds r0, r4, r1
	bl DisplaySprite
_080B2680:
	ldr r1, _080B26E0 @ =0x03000054
	adds r0, r4, r1
	bl DisplaySprite
	ldr r1, _080B26E4 @ =0x0300007C
	adds r0, r4, r1
	bl DisplaySprite
	ldr r1, _080B26E8 @ =0x000008D1
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080B26A6
	ldr r1, _080B26EC @ =0x030000A4
	adds r0, r4, r1
	bl DisplaySprite
_080B26A6:
	movs r1, #0x8d
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r1, _080B26F0 @ =0x00FFFF00
	ands r0, r1
	cmp r0, #0
	beq _080B26BE
	ldr r1, _080B26F4 @ =0x030000CC
	adds r0, r4, r1
	bl DisplaySprite
_080B26BE:
	ldr r1, _080B26F8 @ =0x030000F4
	adds r0, r4, r1
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B26CC: .4byte gCurTask
_080B26D0: .4byte 0x000008C8
_080B26D4: .4byte 0x000008CE
_080B26D8: .4byte 0x03000004
_080B26DC: .4byte 0x0300002C
_080B26E0: .4byte 0x03000054
_080B26E4: .4byte 0x0300007C
_080B26E8: .4byte 0x000008D1
_080B26EC: .4byte 0x030000A4
_080B26F0: .4byte 0x00FFFF00
_080B26F4: .4byte 0x030000CC
_080B26F8: .4byte 0x030000F4

	thumb_func_start sub_80B26FC
sub_80B26FC: @ 0x080B26FC
	push {r4, r5, r6, r7, lr}
	ldr r0, _080B2814 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	ldr r5, [r0]
	ldr r1, _080B2818 @ =0x000008CE
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	ldr r4, _080B281C @ =gUnknown_080DBEA0
	adds r2, r0, r4
	ldr r0, _080B2820 @ =0x03000004
	adds r1, r6, r0
	ldrh r0, [r2]
	movs r7, #0
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #2]
	strb r0, [r1, #0x1a]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	ldr r1, _080B2824 @ =0x000008CF
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r2, r0, r4
	ldr r0, _080B2828 @ =0x0300002C
	adds r1, r6, r0
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #2]
	strb r0, [r1, #0x1a]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	movs r1, #0x8d
	lsls r1, r1, #4
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r2, r0, r4
	ldr r0, _080B282C @ =0x03000054
	adds r1, r6, r0
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #2]
	strb r0, [r1, #0x1a]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	ldr r1, _080B2830 @ =0x000008D1
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r2, r0, r4
	ldr r0, _080B2834 @ =0x030000A4
	adds r1, r6, r0
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #2]
	strb r0, [r1, #0x1a]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	ldr r1, _080B2838 @ =0x000008D2
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r2, r0, r4
	ldr r0, _080B283C @ =0x030000CC
	adds r1, r6, r0
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #2]
	strb r0, [r1, #0x1a]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	ldr r1, _080B2840 @ =0x000008D3
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r2, r0, r4
	ldr r4, _080B2844 @ =0x030000F4
	adds r1, r6, r4
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #2]
	strb r0, [r1, #0x1a]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	ldr r0, _080B2848 @ =0x000008D4
	adds r3, r5, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _080B2860
	movs r1, #0x8c
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r2, _080B284C @ =0x000008C2
	adds r1, r5, r2
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r2, r0
	blt _080B28A2
	movs r2, #1
	strb r2, [r3]
	ldr r1, _080B2850 @ =0x000008D6
	adds r0, r5, r1
	strb r2, [r0]
	ldr r4, _080B2854 @ =0x000008D7
	adds r1, r5, r4
	movs r0, #0x78
	strb r0, [r1]
	ldr r0, _080B2858 @ =0x0300007C
	adds r1, r6, r0
	ldr r0, _080B285C @ =0x00000464
	strh r0, [r1, #0xc]
	strb r2, [r1, #0x1a]
	b _080B2882
	.align 2, 0
_080B2814: .4byte gCurTask
_080B2818: .4byte 0x000008CE
_080B281C: .4byte gUnknown_080DBEA0
_080B2820: .4byte 0x03000004
_080B2824: .4byte 0x000008CF
_080B2828: .4byte 0x0300002C
_080B282C: .4byte 0x03000054
_080B2830: .4byte 0x000008D1
_080B2834: .4byte 0x030000A4
_080B2838: .4byte 0x000008D2
_080B283C: .4byte 0x030000CC
_080B2840: .4byte 0x000008D3
_080B2844: .4byte 0x030000F4
_080B2848: .4byte 0x000008D4
_080B284C: .4byte 0x000008C2
_080B2850: .4byte 0x000008D6
_080B2854: .4byte 0x000008D7
_080B2858: .4byte 0x0300007C
_080B285C: .4byte 0x00000464
_080B2860:
	movs r1, #0x8c
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r2, _080B288C @ =0x000008C2
	adds r1, r5, r2
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r2, r0
	bge _080B2898
	strb r7, [r3]
	ldr r0, _080B2890 @ =0x0300007C
	adds r1, r6, r0
	ldr r0, _080B2894 @ =0x00000464
	strh r0, [r1, #0xc]
	strb r7, [r1, #0x1a]
_080B2882:
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	b _080B28A2
	.align 2, 0
_080B288C: .4byte 0x000008C2
_080B2890: .4byte 0x0300007C
_080B2894: .4byte 0x00000464
_080B2898:
	ldr r2, _080B28A8 @ =0x0300007C
	adds r1, r6, r2
	adds r0, r1, #0
	bl UpdateSpriteAnimation
_080B28A2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B28A8: .4byte 0x0300007C

	thumb_func_start sub_80B28AC
sub_80B28AC: @ 0x080B28AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r6, r5, r0
	ldr r1, _080B28E8 @ =0x0000028E
	adds r4, r5, r1
	ldrh r0, [r4]
	adds r0, #0xc0
	strh r0, [r4]
	ldr r0, _080B28EC @ =gUnknown_080DBF68
	ldrh r1, [r4]
	bl sub_80B1560
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	lsls r0, r0, #0x10
	ldr r1, _080B28F0 @ =gUnknown_080DBF94
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	lsls r0, r0, #0x10
	ldr r1, _080B28F4 @ =0x012B0000
	cmp r0, r1
	ble _080B28F8
	adds r0, r5, #0
	bl sub_80B2DF4
	b _080B2918
	.align 2, 0
_080B28E8: .4byte 0x0000028E
_080B28EC: .4byte gUnknown_080DBF68
_080B28F0: .4byte gUnknown_080DBF94
_080B28F4: .4byte 0x012B0000
_080B28F8:
	ldrh r2, [r4]
	ldr r1, _080B2920 @ =0xFFFF8ACF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	ldr r1, _080B2924 @ =0x0E0E0000
	cmp r0, r1
	bls _080B290C
	ldr r0, _080B2928 @ =0x0000ABC0
	cmp r2, r0
	bls _080B2912
_080B290C:
	adds r0, r6, #0
	bl UpdateSpriteAnimation
_080B2912:
	adds r0, r6, #0
	bl DisplaySprite
_080B2918:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2920: .4byte 0xFFFF8ACF
_080B2924: .4byte 0x0E0E0000
_080B2928: .4byte 0x0000ABC0

	thumb_func_start sub_80B292C
sub_80B292C: @ 0x080B292C
	push {r4, r5, r6, lr}
	sub sp, #0x3c
	adds r5, r0, #0
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r6, r5, r0
	movs r4, #0
	ldr r1, _080B299C @ =gUnknown_080DBFA8
	add r0, sp, #0x18
	movs r2, #0x24
	bl memcpy
	add r0, sp, #0x18
	ldrh r2, [r0]
	adds r0, #2
	ldrh r3, [r0]
	str r4, [sp]
	movs r0, #0x78
	str r0, [sp, #4]
	movs r0, #0x50
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	add r0, sp, #0x1c
	ldrb r0, [r0]
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	adds r0, r6, #0
	movs r1, #1
	bl sub_80B6BB8
	ldr r0, _080B29A0 @ =0x040000D4
	ldr r2, _080B29A4 @ =gUnknown_03003562
	str r2, [r0]
	movs r3, #0xa6
	lsls r3, r3, #2
	adds r1, r5, r3
	str r1, [r0, #4]
	ldr r3, _080B29A8 @ =0x80000003
	str r3, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, #6
	str r2, [r0]
	ldr r2, _080B29AC @ =0x0000029E
	adds r1, r5, r2
	str r1, [r0, #4]
	str r3, [r0, #8]
	ldr r0, [r0, #8]
	ldr r3, _080B29B0 @ =0x00000289
	adds r5, r5, r3
	movs r0, #1
	strb r0, [r5]
	add sp, #0x3c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B299C: .4byte gUnknown_080DBFA8
_080B29A0: .4byte 0x040000D4
_080B29A4: .4byte gUnknown_03003562
_080B29A8: .4byte 0x80000003
_080B29AC: .4byte 0x0000029E
_080B29B0: .4byte 0x00000289

	thumb_func_start sub_80B29B4
sub_80B29B4: @ 0x080B29B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	lsls r1, r1, #0x18
	ldr r0, [r0]
	ldr r2, _080B2AD4 @ =gUnknown_080DBE82
	lsrs r1, r1, #0x17
	ldr r3, _080B2AD8 @ =0x000008C7
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r4, [r1]
	add r1, sp, #0x18
	movs r0, #0xa
	strh r0, [r1]
	movs r0, #0xb
	strh r0, [r1, #8]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x64
	bl Div
	add r1, sp, #0x18
	strh r0, [r1, #2]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	add r3, sp, #0x18
	adds r1, r3, #0
	movs r5, #2
	ldrsh r2, [r1, r5]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	subs r0, r0, r1
	strh r0, [r3, #4]
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	add r1, sp, #0x18
	strh r0, [r1, #6]
	adds r0, r1, #0
	ldrh r0, [r0, #2]
	movs r1, #1
	mov sb, r1
	cmp r0, #0
	beq _080B2A28
	movs r2, #0
	mov sb, r2
_080B2A28:
	movs r7, #0
	mov r3, sb
	lsls r3, r3, #2
	str r3, [sp, #0x28]
	mov r5, sb
	adds r5, #1
	str r5, [sp, #0x24]
	movs r0, #0
	mov sl, r0
_080B2A3A:
	lsls r6, r7, #1
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x18
	movs r1, #0
	ldrsh r5, [r0, r1]
	lsls r5, r5, #3
	ldr r0, _080B2ADC @ =gUnknown_080DBEF8
	adds r5, r5, r0
	lsls r4, r7, #2
	adds r4, r4, r7
	lsls r4, r4, #3
	movs r2, #0xca
	lsls r2, r2, #1
	adds r0, r4, r2
	add r0, r8
	ldrh r2, [r5, #4]
	ldrh r3, [r5]
	mov ip, r3
	mov r1, sl
	str r1, [sp]
	ldr r1, [sp, #0x28]
	add r1, sb
	lsls r1, r1, #1
	adds r1, r6, r1
	ldr r3, _080B2AE0 @ =gUnknown_080DBF94
	adds r1, r1, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	str r1, [sp, #4]
	ldr r1, _080B2AE4 @ =gUnknown_080DBFCC
	adds r1, r6, r1
	movs r3, #0
	ldrsh r1, [r1, r3]
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	ldrb r1, [r5, #2]
	str r1, [sp, #0x10]
	mov r5, sl
	str r5, [sp, #0x14]
	movs r1, #1
	mov r3, ip
	bl sub_80B6BB8
	add r4, r8
	movs r0, #0xd8
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0x10
	strb r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bls _080B2A3A
	ldr r0, _080B2AE8 @ =0x0000028A
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080B2AF0
	movs r0, #0xa4
	lsls r0, r0, #2
	add r0, r8
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080B2AEC @ =0x00000292
	add r0, r8
	strh r1, [r0]
	movs r0, #0xa5
	lsls r0, r0, #2
	add r0, r8
	strh r1, [r0]
	b _080B2B12
	.align 2, 0
_080B2AD4: .4byte gUnknown_080DBE82
_080B2AD8: .4byte 0x000008C7
_080B2ADC: .4byte gUnknown_080DBEF8
_080B2AE0: .4byte gUnknown_080DBF94
_080B2AE4: .4byte gUnknown_080DBFCC
_080B2AE8: .4byte 0x0000028A
_080B2AEC: .4byte 0x00000292
_080B2AF0:
	movs r1, #0xa4
	lsls r1, r1, #2
	add r1, r8
	movs r0, #0xe7
	lsls r0, r0, #7
	strh r0, [r1]
	ldr r1, _080B2B30 @ =0x00000292
	add r1, r8
	movs r0, #0xd9
	lsls r0, r0, #7
	strh r0, [r1]
	movs r1, #0xa5
	lsls r1, r1, #2
	add r1, r8
	movs r0, #0xcb
	lsls r0, r0, #7
	strh r0, [r1]
_080B2B12:
	ldr r1, _080B2B34 @ =0x0000028A
	add r1, r8
	ldrb r0, [r1]
	ldr r2, [sp, #0x24]
	adds r0, r0, r2
	strb r0, [r1]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2B30: .4byte 0x00000292
_080B2B34: .4byte 0x0000028A

	thumb_func_start sub_80B2B38
sub_80B2B38: @ 0x080B2B38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0
	mov sb, r0
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #0xc0
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #3
	cmp r0, r2
	bls _080B2B6C
	ldr r3, _080B2B94 @ =0x00000292
	adds r1, r6, r3
	ldrh r0, [r1]
	adds r0, #0xc0
	strh r0, [r1]
_080B2B6C:
	ldr r1, _080B2B94 @ =0x00000292
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, r2
	bls _080B2B82
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #0xc0
	strh r0, [r1]
_080B2B82:
	ldr r3, _080B2B98 @ =0x0000028A
	adds r1, r6, r3
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bgt _080B2B9C
	ldrb r0, [r1]
	b _080B2BA2
	.align 2, 0
_080B2B94: .4byte 0x00000292
_080B2B98: .4byte 0x0000028A
_080B2B9C:
	subs r0, r2, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080B2BA2:
	mov r8, r0
	movs r5, #0
_080B2BA6:
	lsls r4, r5, #1
	movs r1, #0xa4
	lsls r1, r1, #2
	adds r0, r6, r1
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r0, _080B2BE8 @ =gUnknown_080DBF68
	bl sub_80B1560
	mov r2, sp
	adds r1, r2, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _080B2BA6
	movs r5, #0
	mov r7, r8
	subs r7, #1
	movs r3, #0x8d
	lsls r3, r3, #6
	mov sl, r3
_080B2BD8:
	cmp r5, #3
	bgt _080B2BEC
	cmp r5, #1
	bge _080B2BF8
	cmp r5, #0
	beq _080B2BF2
	b _080B2C02
	.align 2, 0
_080B2BE8: .4byte gUnknown_080DBF68
_080B2BEC:
	cmp r5, #4
	beq _080B2BFE
	b _080B2C02
_080B2BF2:
	movs r0, #0
	mov sb, r0
	b _080B2C02
_080B2BF8:
	movs r1, #1
	mov sb, r1
	b _080B2C02
_080B2BFE:
	movs r2, #2
	mov sb, r2
_080B2C02:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r3, #0xca
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r4, r6, r0
	mov r0, r8
	cmp r0, #2
	bne _080B2C1A
	cmp r5, #1
	beq _080B2C5E
_080B2C1A:
	mov r1, sb
	lsls r2, r1, #1
	mov r3, sp
	adds r1, r3, r2
	lsls r0, r7, #2
	adds r0, r0, r7
	adds r0, r0, r5
	lsls r0, r0, #1
	ldr r3, _080B2C84 @ =gUnknown_080DBF94
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	movs r1, #0xa4
	lsls r1, r1, #2
	adds r0, r6, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r2, _080B2C88 @ =0x0000733F
	cmp r0, r2
	bls _080B2C58
	ldr r3, _080B2C8C @ =0x00007F40
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, sl
	bls _080B2C58
	adds r0, r4, #0
	bl UpdateSpriteAnimation
_080B2C58:
	adds r0, r4, #0
	bl DisplaySprite
_080B2C5E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080B2BD8
	ldr r0, _080B2C90 @ =gBldRegs
	movs r1, #0xbd
	lsls r1, r1, #6
	strh r1, [r0]
	ldr r1, _080B2C94 @ =0x00001010
	strh r1, [r0, #2]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B2C84: .4byte gUnknown_080DBF94
_080B2C88: .4byte 0x0000733F
_080B2C8C: .4byte 0x00007F40
_080B2C90: .4byte gBldRegs
_080B2C94: .4byte 0x00001010

	thumb_func_start sub_80B2C98
sub_80B2C98: @ 0x080B2C98
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r6, r0, #0
	lsls r1, r1, #0x18
	ldr r5, _080B2CFC @ =gUnknown_080DBF60
	cmp r1, #0
	bne _080B2CA8
	subs r5, #8
_080B2CA8:
	movs r1, #0x97
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r2, [r5, #4]
	ldrh r3, [r5]
	movs r4, #0
	str r4, [sp]
	movs r1, #0x78
	str r1, [sp, #4]
	movs r1, #0x50
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	ldrb r1, [r5, #2]
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #1
	bl sub_80B6BB8
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #0xe7
	lsls r0, r0, #7
	strh r0, [r1]
	ldr r0, _080B2D00 @ =0x0000028B
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _080B2D04 @ =gBldRegs
	movs r0, #0xbd
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r0, _080B2D08 @ =0x00001010
	strh r0, [r1, #2]
	strh r4, [r1, #4]
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2CFC: .4byte gUnknown_080DBF60
_080B2D00: .4byte 0x0000028B
_080B2D04: .4byte gBldRegs
_080B2D08: .4byte 0x00001010

	thumb_func_start sub_80B2D0C
sub_80B2D0C: @ 0x080B2D0C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, #0xc0
	strh r0, [r4]
	ldr r0, _080B2D4C @ =gUnknown_080DBF68
	ldrh r1, [r4]
	bl sub_80B1560
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	lsls r0, r0, #0x10
	movs r1, #0x97
	lsls r1, r1, #2
	adds r6, r5, r1
	ldr r1, _080B2D50 @ =gUnknown_080DBF94
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r6, #0x10]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _080B2D54
	adds r0, r5, #0
	bl sub_80B2ED4
	b _080B2D76
	.align 2, 0
_080B2D4C: .4byte gUnknown_080DBF68
_080B2D50: .4byte gUnknown_080DBF94
_080B2D54:
	ldrh r1, [r4]
	ldr r0, _080B2D7C @ =0x0000733F
	cmp r1, r0
	bls _080B2D70
	ldr r2, _080B2D80 @ =0x00007F40
	adds r0, r1, r2
	lsls r0, r0, #0x10
	movs r1, #0x8d
	lsls r1, r1, #0x16
	cmp r0, r1
	bls _080B2D70
	adds r0, r6, #0
	bl UpdateSpriteAnimation
_080B2D70:
	adds r0, r6, #0
	bl DisplaySprite
_080B2D76:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2D7C: .4byte 0x0000733F
_080B2D80: .4byte 0x00007F40

	thumb_func_start sub_80B2D84
sub_80B2D84: @ 0x080B2D84
	bx lr
	.align 2, 0
_080B2D88:
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_80B2D90
sub_80B2D90: @ 0x080B2D90
	push {lr}
	bl sub_80B24AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B2D9C
sub_80B2D9C: @ 0x080B2D9C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r6, r0, #0
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r2, #0xa2
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r4, #0
	movs r5, #1
	strb r5, [r1]
	movs r1, #0xa1
	lsls r1, r1, #2
	adds r2, r6, r1
	ldr r1, _080B2DE8 @ =gUnknown_03001EA0
	ldr r1, [r1]
	str r1, [r2]
	ldr r3, _080B2DEC @ =0x00000471
	str r4, [sp]
	movs r1, #0x78
	str r1, [sp, #4]
	movs r1, #0x50
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0
	movs r2, #0x14
	bl sub_80B6BB8
	ldr r2, _080B2DF0 @ =0x0000028E
	adds r0, r6, r2
	strh r4, [r0]
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2DE8: .4byte gUnknown_03001EA0
_080B2DEC: .4byte 0x00000471
_080B2DF0: .4byte 0x0000028E

	thumb_func_start sub_80B2DF4
sub_80B2DF4: @ 0x080B2DF4
	ldr r2, _080B2E14 @ =gUnknown_03001EA0
	movs r1, #0xa1
	lsls r1, r1, #2
	adds r3, r0, r1
	ldr r1, [r3]
	str r1, [r2]
	movs r2, #0
	str r2, [r3]
	movs r3, #0xa2
	lsls r3, r3, #2
	adds r1, r0, r3
	strb r2, [r1]
	ldr r1, _080B2E18 @ =0x0000028E
	adds r0, r0, r1
	strh r2, [r0]
	bx lr
	.align 2, 0
_080B2E14: .4byte gUnknown_03001EA0
_080B2E18: .4byte 0x0000028E

	thumb_func_start sub_80B2E1C
sub_80B2E1C: @ 0x080B2E1C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r5, r3, r0
	ldr r0, [r3]
	ldr r1, _080B2E38 @ =0x000008D5
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B2E44
	ldr r2, _080B2E3C @ =0x050003F8
	ldr r4, _080B2E40 @ =0x050003F2
	b _080B2E48
	.align 2, 0
_080B2E38: .4byte 0x000008D5
_080B2E3C: .4byte 0x050003F8
_080B2E40: .4byte 0x050003F2
_080B2E44:
	ldr r2, _080B2E70 @ =0x050003F2
	ldr r4, _080B2E74 @ =0x050003F8
_080B2E48:
	ldr r0, _080B2E78 @ =0x040000D4
	ldr r6, _080B2E7C @ =0x0000029E
	adds r1, r3, r6
	str r1, [r0]
	str r2, [r0, #4]
	ldr r2, _080B2E80 @ =0x80000003
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	subs r6, #6
	adds r1, r3, r6
	str r1, [r0]
	str r4, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B2E70: .4byte 0x050003F2
_080B2E74: .4byte 0x050003F8
_080B2E78: .4byte 0x040000D4
_080B2E7C: .4byte 0x0000029E
_080B2E80: .4byte 0x80000003

	thumb_func_start sub_80B2E84
sub_80B2E84: @ 0x080B2E84
	ldr r1, _080B2E94 @ =0x00000289
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080B2E98 @ =gUnknown_03001E9C
	str r1, [r0]
	bx lr
	.align 2, 0
_080B2E94: .4byte 0x00000289
_080B2E98: .4byte gUnknown_03001E9C

	thumb_func_start sub_80B2E9C
sub_80B2E9C: @ 0x080B2E9C
	push {lr}
	ldr r2, _080B2EB0 @ =0x0000028A
	adds r1, r0, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bgt _080B2EB4
	movs r0, #4
	b _080B2EB6
	.align 2, 0
_080B2EB0: .4byte 0x0000028A
_080B2EB4:
	movs r0, #7
_080B2EB6:
	strb r0, [r1]
	ldr r0, _080B2ECC @ =gUnknown_03001E9C
	movs r2, #0
	str r2, [r0]
	ldr r0, _080B2ED0 @ =gBldRegs
	movs r1, #0xbf
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	pop {r0}
	bx r0
	.align 2, 0
_080B2ECC: .4byte gUnknown_03001E9C
_080B2ED0: .4byte gBldRegs

	thumb_func_start sub_80B2ED4
sub_80B2ED4: @ 0x080B2ED4
	ldr r1, _080B2EF0 @ =0x0000028B
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #0
	strb r1, [r0]
	ldr r0, _080B2EF4 @ =gUnknown_03001E9C
	str r2, [r0]
	ldr r0, _080B2EF8 @ =gBldRegs
	movs r1, #0xbf
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	bx lr
	.align 2, 0
_080B2EF0: .4byte 0x0000028B
_080B2EF4: .4byte gUnknown_03001E9C
_080B2EF8: .4byte gBldRegs

	thumb_func_start sub_80B2EFC
sub_80B2EFC: @ 0x080B2EFC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov r8, r0
	ldr r7, [r0]
	ldr r1, _080B2F40 @ =0x000008DA
	adds r0, r7, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r3, _080B2F44 @ =0x000008DE
	adds r1, r7, r3
	ldrb r1, [r1]
	subs r0, r0, r1
	lsls r6, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #3
	bl EwramMalloc
	mov r1, r8
	str r0, [r1, #0xc]
	movs r5, #0
	adds r4, r0, #0
_080B2F2C:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080B2F44 @ =0x000008DE
	adds r1, r7, r2
	ldrb r1, [r1]
	subs r1, r0, r1
	cmp r1, #0
	bne _080B2F48
	str r1, [r4]
	b _080B2F50
	.align 2, 0
_080B2F40: .4byte 0x000008DA
_080B2F44: .4byte 0x000008DE
_080B2F48:
	adds r0, r6, #0
	bl __divsi3
	str r0, [r4]
_080B2F50:
	lsls r0, r5, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	adds r4, #4
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B2F2C
	movs r0, #0x80
	lsls r0, r0, #3
	bl EwramMalloc
	mov r1, r8
	str r0, [r1, #8]
	movs r5, #0
	adds r4, r0, #0
_080B2F72:
	lsls r2, r5, #0x10
	asrs r1, r2, #0x10
	ldr r3, _080B2F88 @ =0x000008DE
	adds r0, r7, r3
	ldrb r0, [r0]
	subs r0, r1, r0
	adds r5, r2, #0
	cmp r6, #0
	bne _080B2F8C
	str r6, [r4]
	b _080B2F94
	.align 2, 0
_080B2F88: .4byte 0x000008DE
_080B2F8C:
	adds r1, r6, #0
	bl __divsi3
	str r0, [r4]
_080B2F94:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	adds r4, #4
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B2F72
	ldr r2, _080B3070 @ =0x000008DF
	adds r0, r7, r2
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, #0xb0
	adds r5, r7, r0
	ldr r3, _080B3074 @ =0x000008DC
	adds r0, r7, r3
	ldrh r0, [r0]
	lsls r3, r1, #0x10
	cmp r1, #0xff
	bgt _080B3014
	mov r1, r8
	ldr r1, [r1, #0xc]
	mov sb, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	subs r2, #7
	adds r2, r2, r7
	mov ip, r2
	ldr r0, _080B3078 @ =0x000008DA
	adds r6, r7, r0
_080B2FD0:
	asrs r3, r3, #0x10
	lsls r0, r3, #2
	add r0, sb
	ldr r0, [r0]
	adds r2, r0, #0
	muls r2, r4, r2
	asrs r2, r2, #8
	mov r1, ip
	movs r7, #0
	ldrsh r0, [r1, r7]
	rsbs r0, r0, #0
	adds r1, r0, #0
	muls r1, r2, r1
	movs r7, #0
	ldrsh r0, [r6, r7]
	subs r0, r3, r0
	muls r2, r0, r2
	lsls r1, r1, #1
	rsbs r1, r1, #0
	asrs r1, r1, #8
	adds r0, r1, #0
	muls r0, r4, r0
	stm r5!, {r0}
	lsls r2, r2, #2
	rsbs r2, r2, #0
	asrs r2, r2, #8
	adds r0, r2, #0
	muls r0, r4, r0
	stm r5!, {r0}
	adds r3, #1
	lsls r3, r3, #0x10
	asrs r0, r3, #0x10
	cmp r0, #0xff
	ble _080B2FD0
_080B3014:
	movs r0, #0x80
	lsls r0, r0, #5
	bl EwramMalloc
	mov r1, r8
	str r0, [r1, #4]
	ldr r1, _080B307C @ =gUnknown_03002B84
	str r0, [r1]
	adds r5, r0, #0
	mov r4, sp
	mov r0, sp
	movs r1, #0
	movs r2, #0x10
	bl memset
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4]
	strh r0, [r4, #6]
	movs r4, #0
_080B303C:
	mov r0, sp
	adds r1, r5, #0
	movs r2, #8
	bl CpuSet
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #8
	strh r1, [r5, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	adds r5, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080B303C
	mov r0, r8
	bl sub_80B33CC
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B3070: .4byte 0x000008DF
_080B3074: .4byte 0x000008DC
_080B3078: .4byte 0x000008DA
_080B307C: .4byte gUnknown_03002B84

	thumb_func_start sub_80B3080
sub_80B3080: @ 0x080B3080
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r0, _080B30D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r0]
	mov sb, r0
	ldr r0, [r0, #0xc]
	ldrh r2, [r0, #6]
	adds r2, r2, r1
	ldr r1, _080B30D8 @ =gUnknown_03003F30
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080B30DC @ =gUnknown_03003C5C
	ldr r0, _080B30E0 @ =0x04000020
	str r0, [r1]
	ldr r1, _080B30E4 @ =gUnknown_03002B84
	mov r3, r8
	ldr r0, [r3, #4]
	str r0, [r1]
	ldr r0, [r3, #0x10]
	movs r5, #0xaa
	lsls r5, r5, #0xb
	adds r0, r0, r5
	str r0, [r3, #0x10]
	ldr r0, [r2, #0x54]
	lsls r0, r0, #8
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	bgt _080B30E8
	movs r6, #0x14
	b _080B30EE
	.align 2, 0
_080B30D4: .4byte gCurTask
_080B30D8: .4byte gUnknown_03003F30
_080B30DC: .4byte gUnknown_03003C5C
_080B30E0: .4byte 0x04000020
_080B30E4: .4byte gUnknown_03002B84
_080B30E8:
	cmp r0, #0x78
	ble _080B30EE
	movs r6, #0x78
_080B30EE:
	ldr r7, [r1]
	ldr r0, _080B3274 @ =0x000008BC
	add r0, sb
	ldrh r1, [r0]
	ldr r2, _080B3278 @ =gSineTable
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #2
	mov sl, r0
	ldr r0, _080B327C @ =0x000008DC
	add r0, sb
	ldrh r0, [r0]
	str r0, [sp, #0x14]
	mov r5, sp
	mov r0, sp
	movs r1, #0
	movs r2, #0x10
	bl memset
	strh r4, [r5]
	strh r4, [r5, #6]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x78
	subs r0, r0, r1
	asrs r0, r0, #2
	adds r0, #0x3c
	lsls r0, r0, #0x10
	ldr r3, _080B3280 @ =gFlags
	ldr r1, [r3]
	movs r2, #4
	orrs r1, r2
	str r1, [r3]
	movs r1, #0x5a
	lsrs r2, r0, #0x10
	str r2, [sp, #0x18]
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r6, #0
	cmp r6, r0
	bge _080B3186
	adds r5, r0, #0
_080B315C:
	mov r0, sp
	adds r1, r7, #0
	movs r2, #8
	bl CpuSet
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #8
	strh r1, [r7, #0xc]
	adds r7, #0x10
	lsls r1, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, r5
	blt _080B315C
_080B3186:
	ldr r0, _080B3284 @ =gUnknown_03002B84
	ldr r7, [r0]
	movs r4, #0x3c
	ldr r5, [sp, #0x18]
	lsls r0, r5, #0x10
	asrs r0, r0, #0xc
	adds r7, r7, r0
	lsls r6, r6, #0x10
	asrs r0, r6, #0x10
	cmp r0, #0x9f
	bgt _080B3262
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	ldr r2, _080B3288 @ =0x000008D8
	add r2, sb
	str r2, [sp, #0x20]
	ldr r3, [sp, #0x10]
	rsbs r3, r3, #0
	mov ip, r3
	mov r5, r8
	ldr r5, [r5, #0xc]
	str r5, [sp, #0x28]
	ldr r0, _080B328C @ =0x000008DA
	add r0, sb
	str r0, [sp, #0x24]
	movs r1, #0x8b
	lsls r1, r1, #4
	add sb, r1
_080B31C2:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	ldr r2, [sp, #0x28]
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r3, [sp, #0x1c]
	adds r2, r0, #0
	muls r2, r3, r2
	asrs r1, r2, #8
	ldr r5, [sp, #0x20]
	movs r3, #0
	ldrsh r0, [r5, r3]
	rsbs r0, r0, #0
	adds r5, r0, #0
	muls r5, r1, r5
	str r5, [sp, #0x2c]
	asrs r6, r6, #0x10
	ldr r3, [sp, #0x24]
	movs r5, #0
	ldrsh r0, [r3, r5]
	subs r0, r6, r0
	adds r3, r0, #0
	muls r3, r1, r3
	lsls r3, r3, #1
	asrs r2, r2, #0x10
	mov r1, sl
	muls r1, r2, r1
	asrs r1, r1, #0x10
	strh r1, [r7]
	adds r7, #2
	ldr r5, [sp, #0x10]
	adds r0, r5, #0
	muls r0, r2, r0
	asrs r0, r0, #0x10
	strh r0, [r7]
	adds r7, #2
	mov r0, ip
	muls r0, r2, r0
	asrs r0, r0, #0x10
	strh r0, [r7]
	adds r7, #2
	strh r1, [r7]
	adds r7, #2
	asrs r3, r3, #0x10
	adds r2, r5, #0
	muls r2, r3, r2
	ldr r0, [sp, #0x2c]
	asrs r5, r0, #0x10
	mov r0, sl
	muls r0, r5, r0
	adds r2, r2, r0
	mov r1, sb
	ldr r0, [r1]
	adds r2, r2, r0
	mov r0, ip
	muls r0, r5, r0
	mov r1, sl
	muls r1, r3, r1
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3, #0x10]
	adds r0, r0, r1
	asrs r2, r2, #8
	str r2, [r7]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [r7, #4]
	adds r7, #8
	adds r6, #1
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r6, r6, #0x10
	asrs r0, r6, #0x10
	cmp r0, #0x9f
	ble _080B31C2
_080B3262:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B3274: .4byte 0x000008BC
_080B3278: .4byte gSineTable
_080B327C: .4byte 0x000008DC
_080B3280: .4byte gFlags
_080B3284: .4byte gUnknown_03002B84
_080B3288: .4byte 0x000008D8
_080B328C: .4byte 0x000008DA

	thumb_func_start sub_80B3290
sub_80B3290: @ 0x080B3290
	push {r4, r5, r6, r7, lr}
	ldr r0, _080B32FC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r1, [r7]
	ldr r2, _080B3300 @ =0x000008C7
	adds r0, r1, r2
	ldr r2, _080B3304 @ =gUnknown_080DBFD8
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r2, _080B3308 @ =0x000008BC
	adds r0, r1, r2
	ldr r2, _080B330C @ =gUnknown_03003C10
	ldrb r0, [r0]
	rsbs r0, r0, #0
	strh r0, [r2, #4]
	movs r0, #0x30
	strh r0, [r2, #6]
	ldr r0, _080B3310 @ =0x000008C8
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #1
	beq _080B32F6
	lsls r0, r3, #0x10
	movs r1, #0
	adds r6, r0, #0
	cmp r6, #0
	ble _080B32F6
_080B32D2:
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, #0x94
	adds r4, r7, r4
	adds r0, r4, #0
	bl sub_80BE09C
	adds r0, r4, #0
	bl sub_80BE46C
	adds r5, #1
	lsls r5, r5, #0x10
	lsrs r1, r5, #0x10
	cmp r5, r6
	blt _080B32D2
_080B32F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B32FC: .4byte gCurTask
_080B3300: .4byte 0x000008C7
_080B3304: .4byte gUnknown_080DBFD8
_080B3308: .4byte 0x000008BC
_080B330C: .4byte gUnknown_03003C10
_080B3310: .4byte 0x000008C8

	thumb_func_start sub_80B3314
sub_80B3314: @ 0x080B3314
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r1, _080B3388 @ =gUnknown_080DBFEC
	add r0, sp, #0x18
	movs r2, #0xe
	bl memcpy
	ldr r0, _080B338C @ =sub_80B3080
	movs r1, #0x93
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	ldr r3, _080B3390 @ =sub_80B339C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r0, [r6, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	str r5, [r4]
	movs r2, #0
	str r2, [r4, #4]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	str r2, [r4, #0x10]
	ldr r1, _080B3394 @ =0x03000014
	adds r0, r0, r1
	ldr r1, _080B3398 @ =0x000008C7
	adds r5, r5, r1
	ldrb r1, [r5]
	lsls r1, r1, #1
	add r1, sp
	adds r1, #0x18
	ldrh r3, [r1]
	movs r1, #0x80
	str r1, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r1, #1
	movs r2, #0x10
	bl sub_80B6B3C
	adds r0, r4, #0
	bl sub_80B2EFC
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B3388: .4byte gUnknown_080DBFEC
_080B338C: .4byte sub_80B3080
_080B3390: .4byte sub_80B339C
_080B3394: .4byte 0x03000014
_080B3398: .4byte 0x000008C7

	thumb_func_start sub_80B339C
sub_80B339C: @ 0x080B339C
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080B33B0
	bl EwramFree
_080B33B0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _080B33BA
	bl EwramFree
_080B33BA:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _080B33C4
	bl EwramFree
_080B33C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B33CC
sub_80B33CC: @ 0x080B33CC
	bx lr
	.align 2, 0

	thumb_func_start sub_80B33D0
sub_80B33D0: @ 0x080B33D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r5, r0, #0
	add r1, sp, #0x18
	ldr r0, _080B353C @ =gUnknown_080DC36C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r0, _080B3540 @ =gUnknown_080DC380
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	str r1, [sp, #0x30]
	ldr r3, _080B3544 @ =0x000008C7
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r0, _080B3548 @ =sub_80B3648
	movs r1, #0x88
	lsls r1, r1, #1
	movs r2, #0x90
	lsls r2, r2, #8
	movs r4, #0
	mov r8, r4
	str r4, [sp]
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #0x34]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	str r5, [r7]
	mov r0, r8
	str r0, [r7, #4]
	ldr r1, _080B354C @ =0x03000088
	adds r3, r4, r1
	ldr r2, _080B3550 @ =gUnknown_080DBE58
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #1
	adds r0, r1, r2
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #0x10
	str r0, [r3]
	ldr r0, _080B3554 @ =0x0300008C
	adds r3, r4, r0
	adds r2, #2
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0x10
	str r0, [r3]
	ldr r3, _080B3558 @ =0x03000090
	adds r0, r4, r3
	mov r6, r8
	str r6, [r0]
	ldr r1, _080B355C @ =0x030000AC
	adds r0, r4, r1
	movs r2, #0
	mov sb, r2
	strh r6, [r0]
	adds r3, #0x1e
	adds r0, r4, r3
	mov r6, r8
	strh r6, [r0]
	adds r1, #7
	adds r0, r4, r1
	mov r2, sb
	strb r2, [r0]
	adds r3, #0xe
	adds r3, r3, r4
	mov sl, r3
	ldr r6, _080B3560 @ =0x000008C6
	adds r6, r5, r6
	str r6, [sp, #0x38]
	ldrb r0, [r6]
	lsls r0, r0, #2
	add r0, sp
	adds r0, #0x18
	ldr r0, [r0]
	str r0, [r3]
	bl sub_80B6CA4
	ldr r1, _080B3564 @ =0x03000084
	adds r2, r4, r1
	ldr r6, _080B3568 @ =gUnknown_03001EA0
	ldr r1, [r6]
	str r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0xb
	adds r0, r1, r0
	str r0, [r6]
	ldr r2, _080B356C @ =0x03000008
	adds r0, r4, r2
	ldr r3, _080B3570 @ =0x000008DA
	adds r5, r5, r3
	movs r3, #0
	ldrsh r2, [r5, r3]
	mov r5, sl
	ldr r3, [r5]
	str r3, [sp]
	movs r3, #9
	bl sub_80B4498
	ldr r1, _080B3574 @ =0x030000E8
	adds r0, r4, r1
	ldr r1, [r6]
	add r5, sp, #0x2c
	str r5, [sp]
	movs r2, #0
	movs r3, #4
	bl sub_80B4498
	ldrh r1, [r5, #4]
	lsls r1, r1, #5
	ldr r0, [r6]
	adds r0, r0, r1
	str r0, [r6]
	ldr r2, _080B3578 @ =0x03000094
	adds r0, r4, r2
	mov r3, r8
	str r3, [r0]
	ldr r5, _080B357C @ =0x03000098
	adds r0, r4, r5
	str r3, [r0]
	ldr r6, _080B3580 @ =0x0300009C
	adds r0, r4, r6
	str r3, [r0]
	ldr r1, _080B3584 @ =0x030000A0
	adds r0, r4, r1
	movs r1, #0x78
	str r1, [r0]
	adds r2, #0x10
	adds r0, r4, r2
	str r1, [r0]
	ldr r3, _080B3588 @ =0x030000B2
	adds r1, r4, r3
	movs r0, #1
	strb r0, [r1]
	adds r5, #0x10
	adds r0, r4, r5
	mov r6, r8
	str r6, [r0]
	ldr r1, _080B358C @ =0x030000B5
	adds r0, r4, r1
	mov r2, sb
	strb r2, [r0]
	adds r3, #4
	adds r0, r4, r3
	strb r2, [r0]
	adds r5, #0xf
	adds r0, r4, r5
	strb r2, [r0]
	ldr r6, _080B3590 @ =0x030000B4
	adds r0, r4, r6
	strb r2, [r0]
	subs r1, #5
	adds r0, r4, r1
	mov r2, r8
	strh r2, [r0]
	adds r3, #3
	adds r4, r4, r3
	mov r5, sb
	strb r5, [r4]
	ldr r6, [sp, #0x38]
	ldrb r0, [r6]
	cmp r0, #4
	bls _080B3530
	b _080B3632
_080B3530:
	lsls r0, r0, #2
	ldr r1, _080B3594 @ =_080B3598
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B353C: .4byte gUnknown_080DC36C
_080B3540: .4byte gUnknown_080DC380
_080B3544: .4byte 0x000008C7
_080B3548: .4byte sub_80B3648
_080B354C: .4byte 0x03000088
_080B3550: .4byte gUnknown_080DBE58
_080B3554: .4byte 0x0300008C
_080B3558: .4byte 0x03000090
_080B355C: .4byte 0x030000AC
_080B3560: .4byte 0x000008C6
_080B3564: .4byte 0x03000084
_080B3568: .4byte gUnknown_03001EA0
_080B356C: .4byte 0x03000008
_080B3570: .4byte 0x000008DA
_080B3574: .4byte 0x030000E8
_080B3578: .4byte 0x03000094
_080B357C: .4byte 0x03000098
_080B3580: .4byte 0x0300009C
_080B3584: .4byte 0x030000A0
_080B3588: .4byte 0x030000B2
_080B358C: .4byte 0x030000B5
_080B3590: .4byte 0x030000B4
_080B3594: .4byte _080B3598
_080B3598: @ jump table
	.4byte _080B35AC @ case 0
	.4byte _080B35D0 @ case 1
	.4byte _080B35DC @ case 2
	.4byte _080B35E6 @ case 3
	.4byte _080B3610 @ case 4
_080B35AC:
	adds r0, r7, #0
	adds r0, #0xc0
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp]
	movs r1, #0x14
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #8
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	movs r2, #4
	movs r3, #0x9a
	bl sub_80B6BB8
	b _080B3632
_080B35D0:
	adds r0, r7, #0
	adds r0, #0xc0
	ldr r3, _080B35D8 @ =0x0000013D
	b _080B35EC
	.align 2, 0
_080B35D8: .4byte 0x0000013D
_080B35DC:
	adds r0, r7, #0
	adds r0, #0xc0
	movs r3, #0xf0
	lsls r3, r3, #1
	b _080B35EC
_080B35E6:
	adds r0, r7, #0
	adds r0, #0xc0
	ldr r3, _080B360C @ =0x00000283
_080B35EC:
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp]
	movs r1, #0x14
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #8
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	movs r2, #4
	bl sub_80B6BB8
	b _080B3632
	.align 2, 0
_080B360C: .4byte 0x00000283
_080B3610:
	adds r0, r7, #0
	adds r0, #0xc0
	ldr r3, _080B3644 @ =0x00000326
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp]
	movs r1, #0x14
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #8
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	movs r2, #4
	bl sub_80B6BB8
_080B3632:
	ldr r0, [sp, #0x34]
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B3644: .4byte 0x00000326

	thumb_func_start sub_80B3648
sub_80B3648: @ 0x080B3648
	push {r4, r5, r6, lr}
	ldr r0, _080B36A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r4, r1
	ldr r2, [r6]
	ldr r0, [r2, #0xc]
	ldrh r0, [r0, #6]
	adds r5, r0, r1
	ldr r0, _080B36A4 @ =0x03000088
	adds r3, r4, r0
	adds r0, #0xc
	adds r1, r4, r0
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3]
	ldr r3, _080B36A8 @ =0x0300008C
	adds r1, r4, r3
	ldr r0, [r1]
	ldr r3, _080B36AC @ =0x0001BF00
	adds r0, r0, r3
	str r0, [r1]
	ldr r3, _080B36B0 @ =0x000008B4
	adds r1, r2, r3
	str r0, [r1]
	ldr r0, _080B36B4 @ =0x000008C8
	adds r2, r2, r0
	ldrb r2, [r2]
	cmp r2, #0
	bne _080B36C0
	ldr r1, _080B36B8 @ =0x03000090
	adds r0, r4, r1
	ldr r1, [r5, #0x54]
	str r1, [r0]
	ldr r3, _080B36BC @ =0x030000AC
	adds r0, r4, r3
	strh r2, [r0]
	bl sub_80B39B8
	b _080B36C4
	.align 2, 0
_080B36A0: .4byte gCurTask
_080B36A4: .4byte 0x03000088
_080B36A8: .4byte 0x0300008C
_080B36AC: .4byte 0x0001BF00
_080B36B0: .4byte 0x000008B4
_080B36B4: .4byte 0x000008C8
_080B36B8: .4byte 0x03000090
_080B36BC: .4byte 0x030000AC
_080B36C0:
	bl sub_80B46DC
_080B36C4:
	adds r0, r6, #0
	bl sub_80B4508
	adds r2, r5, #0
	adds r2, #0x6c
	ldrh r1, [r2]
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bls _080B36E4
	movs r0, #0
	strh r0, [r2]
	ldr r0, _080B36EC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080B36F0 @ =sub_80B36F4
	str r0, [r1, #8]
_080B36E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B36EC: .4byte gCurTask
_080B36F0: .4byte sub_80B36F4

	thumb_func_start sub_80B36F4
sub_80B36F4: @ 0x080B36F4
	push {r4, r5, r6, lr}
	sub sp, #0x60
	ldr r0, _080B3744 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r6, [r5]
	ldr r1, _080B3748 @ =gUnknown_080DC388
	mov r0, sp
	movs r2, #0x60
	bl memcpy
	ldr r0, _080B374C @ =0x03000088
	adds r2, r4, r0
	adds r0, #0xc
	adds r1, r4, r0
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r2, _080B3750 @ =0x0300008C
	adds r1, r4, r2
	ldr r0, [r1]
	ldr r2, _080B3754 @ =0x0001BF00
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080B3758 @ =0x000008B4
	adds r1, r6, r2
	str r0, [r1]
	ldr r1, _080B375C @ =0x030000A8
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080B3764
	ldr r2, _080B3760 @ =0x030000B2
	adds r1, r4, r2
	movs r0, #2
	b _080B376A
	.align 2, 0
_080B3744: .4byte gCurTask
_080B3748: .4byte gUnknown_080DC388
_080B374C: .4byte 0x03000088
_080B3750: .4byte 0x0300008C
_080B3754: .4byte 0x0001BF00
_080B3758: .4byte 0x000008B4
_080B375C: .4byte 0x030000A8
_080B3760: .4byte 0x030000B2
_080B3764:
	ldr r0, _080B37B4 @ =0x030000B2
	adds r1, r4, r0
	movs r0, #1
_080B376A:
	strb r0, [r1]
	ldr r1, _080B37B8 @ =0x000008C8
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B37C0
	ldr r2, _080B37BC @ =0x000008C4
	adds r0, r6, r2
	ldrh r0, [r0]
	adds r4, r5, #0
	adds r4, #0xac
	cmp r0, #7
	beq _080B3798
	ldrh r0, [r4]
	adds r0, #2
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	bl _call_via_r0
	ldr r0, [sp]
	bl _call_via_r0
_080B3798:
	bl sub_80B37F0
	adds r0, r5, #0
	adds r0, #0xb4
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B37D6
	adds r0, r5, #0
	adds r0, #8
	bl DisplaySprite
	b _080B37D6
	.align 2, 0
_080B37B4: .4byte 0x030000B2
_080B37B8: .4byte 0x000008C8
_080B37BC: .4byte 0x000008C4
_080B37C0:
	ldr r0, [sp, #4]
	bl _call_via_r0
	bl sub_80B37F0
	adds r0, r5, #0
	adds r0, #8
	bl DisplaySprite
	adds r4, r5, #0
	adds r4, #0xac
_080B37D6:
	ldrh r1, [r4]
	adds r0, r1, #0
	cmp r0, #9
	beq _080B37E8
	cmp r0, #0xe
	beq _080B37E8
	adds r0, r5, #0
	adds r0, #0xae
	strh r1, [r0]
_080B37E8:
	add sp, #0x60
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80B37F0
sub_80B37F0: @ 0x080B37F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080B3834 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r2, r1
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r0, _080B3838 @ =0x030000AC
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #9
	beq _080B381E
	cmp r0, #0xe
	bne _080B3840
_080B381E:
	ldr r3, _080B383C @ =0x030000BC
	adds r1, r2, r3
	subs r3, #0xe
	adds r0, r2, r3
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, [r1]
	adds r1, r1, r0
	mov sb, r1
	b _080B384E
	.align 2, 0
_080B3834: .4byte gCurTask
_080B3838: .4byte 0x030000AC
_080B383C: .4byte 0x030000BC
_080B3840:
	ldr r3, _080B389C @ =0x030000BC
	adds r0, r2, r3
	ldrh r1, [r1]
	lsls r1, r1, #3
	ldr r0, [r0]
	adds r0, r0, r1
	mov sb, r0
_080B384E:
	adds r2, r5, #0
	adds r2, #0x88
	ldr r1, [r2]
	ldr r0, _080B38A0 @ =0xFE1B0000
	adds r1, r1, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	asrs r0, r0, #0x14
	movs r1, #0xf0
	subs r1, r1, r0
	lsls r1, r1, #0x10
	adds r0, r5, #0
	adds r0, #0xa0
	lsrs r3, r1, #0x10
	str r3, [sp, #4]
	asrs r1, r1, #0x10
	str r1, [r0]
	adds r1, r5, #0
	adds r1, #0xac
	ldrh r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r2, #0
	mov sl, r1
	cmp r0, #1
	bhi _080B38A4
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	bge _080B3894
	rsbs r0, r0, #0
_080B3894:
	lsls r0, r0, #6
	lsrs r0, r0, #0x10
	b _080B38A6
	.align 2, 0
_080B389C: .4byte 0x030000BC
_080B38A0: .4byte 0xFE1B0000
_080B38A4:
	movs r0, #0x10
_080B38A6:
	str r0, [sp, #8]
	bl sub_80B47C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B3904
	ldr r0, [r6, #0x4c]
	ldr r1, [r4]
	subs r0, r0, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	ldr r2, _080B3900 @ =gSineTable
	ldr r0, [r6, #0x58]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x16
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #0x11
	muls r0, r1, r0
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r1, #0x90
	ldr r1, [r1]
	asrs r1, r1, #8
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B3910
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r0, [r0]
	mov sb, r0
	b _080B3910
	.align 2, 0
_080B3900: .4byte gSineTable
_080B3904:
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
_080B3910:
	adds r0, r5, #0
	adds r0, #0xa4
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r6, r1, #0x10
	str r6, [r0]
	adds r1, r5, #0
	adds r1, #0xb9
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldr r3, [sp, #4]
	lsls r7, r3, #0x10
	cmp r0, #0
	beq _080B394E
	subs r0, r2, #1
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0xe8
	asrs r0, r7, #0x10
	subs r0, #8
	strh r0, [r4, #0x10]
	adds r0, r6, #0
	subs r0, #0x14
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080B394E:
	adds r0, r5, #0
	adds r0, #8
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r7, #0x10
	mov r3, sb
	str r3, [sp]
	adds r3, r6, #0
	bl sub_80B47EC
	mov r1, sl
	ldrh r0, [r1]
	subs r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080B397A
	ldr r0, [r5, #0x10]
	ldr r1, _080B39B4 @ =0xFFFFCFFF
	ands r0, r1
	str r0, [r5, #0x10]
_080B397A:
	mov r2, sl
	ldrh r0, [r2]
	subs r0, #0x11
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080B39A2
	adds r4, r5, #0
	adds r4, #0xc0
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r4, #0x10]
	mov r0, r8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_080B39A2:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B39B4: .4byte 0xFFFFCFFF

	thumb_func_start sub_80B39B8
sub_80B39B8: @ 0x080B39B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080B3A18 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r3, r1
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _080B3A1C @ =0x03000094
	adds r6, r3, r0
	ldr r1, [r6]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	asrs r0, r0, #5
	str r0, [r6]
	ldr r1, _080B3A20 @ =0x030000B7
	adds r0, r3, r1
	ldrb r4, [r0]
	cmp r4, #0
	beq _080B3A30
	ldr r0, _080B3A24 @ =0x030000B4
	adds r1, r3, r0
	movs r2, #0
	movs r0, #0x78
	strb r0, [r1]
	ldr r0, _080B3A28 @ =0x03000023
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	str r2, [r6]
	ldr r1, _080B3A2C @ =0x030000B5
	adds r0, r3, r1
	strb r2, [r0]
	adds r1, #1
	adds r0, r3, r1
	strb r2, [r0]
	subs r1, #0xe
	adds r0, r3, r1
	str r2, [r0]
	b _080B3A6C
	.align 2, 0
_080B3A18: .4byte gCurTask
_080B3A1C: .4byte 0x03000094
_080B3A20: .4byte 0x030000B7
_080B3A24: .4byte 0x030000B4
_080B3A28: .4byte 0x03000023
_080B3A2C: .4byte 0x030000B5
_080B3A30:
	ldr r0, _080B3AC4 @ =0x030000B5
	adds r7, r3, r0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080B3A6C
	ldr r0, _080B3AC8 @ =0x030000B4
	adds r1, r3, r0
	movs r0, #0x78
	strb r0, [r1]
	ldr r0, _080B3ACC @ =0x0300009C
	adds r1, r3, r0
	ldr r0, _080B3AD0 @ =0xFFFFFC00
	str r0, [r1]
	ldr r0, _080B3AD4 @ =0x030000AC
	adds r1, r3, r0
	movs r2, #0
	movs r0, #4
	strh r0, [r1]
	ldr r0, _080B3AD8 @ =0x03000023
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
	str r4, [r6]
	strb r2, [r7]
	ldr r1, _080B3ADC @ =0x030000B6
	adds r0, r3, r1
	strb r2, [r0]
	subs r1, #0xe
	adds r0, r3, r1
	str r4, [r0]
_080B3A6C:
	adds r2, r5, #0
	adds r2, #0xb4
	ldrb r1, [r2]
	adds r4, r5, #0
	adds r4, #0xb6
	cmp r1, #0
	beq _080B3A8C
	adds r0, r5, #0
	adds r0, #0xb7
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B3A88
	subs r0, r1, #1
	strb r0, [r2]
_080B3A88:
	movs r0, #0
	strb r0, [r4]
_080B3A8C:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080B3B0E
	bl sub_80B47C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B3B0E
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080B3AEE
	ldr r0, [r5]
	movs r1, #1
	bl sub_80B4CEC
	adds r0, r5, #0
	adds r0, #0x88
	ldr r1, [r0]
	mov r0, r8
	str r1, [r0, #0x4c]
	ldr r0, _080B3AE0 @ =0x01EFFFFF
	cmp r1, r0
	bgt _080B3AE4
	adds r0, #1
	b _080B3AEA
	.align 2, 0
_080B3AC4: .4byte 0x030000B5
_080B3AC8: .4byte 0x030000B4
_080B3ACC: .4byte 0x0300009C
_080B3AD0: .4byte 0xFFFFFC00
_080B3AD4: .4byte 0x030000AC
_080B3AD8: .4byte 0x03000023
_080B3ADC: .4byte 0x030000B6
_080B3AE0: .4byte 0x01EFFFFF
_080B3AE4:
	ldr r0, _080B3B18 @ =gUnknown_020F0000
	cmp r1, r0
	ble _080B3AEE
_080B3AEA:
	mov r1, r8
	str r0, [r1, #0x4c]
_080B3AEE:
	movs r0, #0xc8
	lsls r0, r0, #8
	str r0, [r6]
	adds r1, r5, #0
	adds r1, #0xac
	movs r3, #0
	movs r2, #0
	movs r0, #5
	strh r0, [r1]
	subs r1, #0x89
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x94
	str r2, [r0]
	strb r3, [r4]
_080B3B0E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B3B18: .4byte gUnknown_020F0000

	thumb_func_start sub_80B3B1C
sub_80B3B1C: @ 0x080B3B1C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080B3B8C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r3, r1
	mov ip, r0
	ldr r5, [r0]
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r2, r0, r1
	adds r1, #0x90
	adds r0, r3, r1
	ldr r6, [r0]
	ldr r7, _080B3B90 @ =0x0300009C
	adds r0, r3, r7
	ldr r4, [r0]
	adds r4, #0x30
	adds r6, r6, r4
	adds r1, #4
	adds r0, r3, r1
	movs r1, #0
	str r1, [r0]
	adds r7, #0xc
	adds r0, r3, r7
	str r1, [r0]
	ldr r0, [r2, #0x54]
	cmp r6, r0
	blt _080B3BB6
	adds r6, r0, #0
	movs r4, #0
	ldr r1, _080B3B94 @ =0x030000B0
	adds r0, r3, r1
	strh r4, [r0]
	str r4, [r2, #0x60]
	str r4, [r2, #0x64]
	movs r2, #0x8c
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r7, _080B3B98 @ =0x000008C2
	adds r1, r5, r7
	movs r5, #0
	ldrsh r2, [r0, r5]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r2, r0
	blt _080B3BA4
	ldr r0, _080B3B9C @ =0x030000AC
	adds r1, r3, r0
	movs r0, #0xa
	strh r0, [r1]
	ldr r2, _080B3BA0 @ =0x03000023
	adds r1, r3, r2
	b _080B3BB2
	.align 2, 0
_080B3B8C: .4byte gCurTask
_080B3B90: .4byte 0x0300009C
_080B3B94: .4byte 0x030000B0
_080B3B98: .4byte 0x000008C2
_080B3B9C: .4byte 0x030000AC
_080B3BA0: .4byte 0x03000023
_080B3BA4:
	ldr r4, _080B3BC8 @ =0xFFFFFC00
	ldr r5, _080B3BCC @ =0x030000AC
	adds r1, r3, r5
	movs r0, #0xc
	strh r0, [r1]
	ldr r7, _080B3BD0 @ =0x03000023
	adds r1, r3, r7
_080B3BB2:
	movs r0, #0xff
	strb r0, [r1]
_080B3BB6:
	mov r0, ip
	adds r0, #0x90
	str r6, [r0]
	adds r0, #0xc
	str r4, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B3BC8: .4byte 0xFFFFFC00
_080B3BCC: .4byte 0x030000AC
_080B3BD0: .4byte 0x03000023

	thumb_func_start sub_80B3BD4
sub_80B3BD4: @ 0x080B3BD4
	push {r4, r5, lr}
	ldr r0, _080B3C1C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _080B3C20 @ =0x030000AC
	adds r5, r4, r0
	subs r0, #0x1c
	adds r3, r4, r0
	ldr r1, [r3]
	adds r0, #0xc
	adds r2, r4, r0
	ldr r0, [r2]
	adds r0, #0x30
	adds r1, r1, r0
	str r1, [r3]
	str r0, [r2]
	ldrh r0, [r5]
	cmp r0, #0xc
	bne _080B3C14
	ldr r0, _080B3C24 @ =0x030000B0
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _080B3C14
	movs r0, #0
	strh r0, [r2]
	movs r0, #0xd
	strh r0, [r5]
_080B3C14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3C1C: .4byte gCurTask
_080B3C20: .4byte 0x030000AC
_080B3C24: .4byte 0x030000B0

	thumb_func_start sub_80B3C28
sub_80B3C28: @ 0x080B3C28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080B3D28 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	ldr r6, [r0]
	ldr r0, _080B3D2C @ =0x030000AC
	adds r0, r0, r1
	mov sl, r0
	ldrh r0, [r0]
	cmp r0, #0xa
	bne _080B3D18
	ldr r2, _080B3D30 @ =0x030000B0
	adds r7, r1, r2
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	ldr r3, _080B3D34 @ =0x000008C2
	adds r3, r3, r6
	mov r8, r3
	ldr r4, _080B3D38 @ =0x000008C7
	adds r4, r4, r6
	mov sb, r4
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldr r1, _080B3D3C @ =gUnknown_080DBE84
	adds r0, r0, r1
	ldrh r2, [r3]
	movs r4, #0
	ldrsh r1, [r3, r4]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge _080B3CBC
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r4, r8
	strh r0, [r4]
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x64
	bl Div
	ldr r1, _080B3D40 @ =0x000008D1
	adds r5, r6, r1
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	subs r0, r0, r1
	ldr r2, _080B3D44 @ =0x000008D2
	adds r1, r6, r2
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	ldr r3, _080B3D48 @ =0x000008D3
	adds r1, r6, r3
	strb r0, [r1]
_080B3CBC:
	ldrh r1, [r7]
	movs r0, #0xb4
	lsls r0, r0, #1
	cmp r1, r0
	bls _080B3D18
	movs r4, #0
	strh r4, [r7]
	mov r0, sl
	strh r4, [r0]
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r2, _080B3D3C @ =gUnknown_080DBE84
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r3, r8
	strh r0, [r3]
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x64
	bl Div
	ldr r1, _080B3D40 @ =0x000008D1
	adds r5, r6, r1
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	subs r0, r0, r1
	ldr r2, _080B3D44 @ =0x000008D2
	adds r1, r6, r2
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	ldr r3, _080B3D48 @ =0x000008D3
	adds r1, r6, r3
	strb r0, [r1]
_080B3D18:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B3D28: .4byte gCurTask
_080B3D2C: .4byte 0x030000AC
_080B3D30: .4byte 0x030000B0
_080B3D34: .4byte 0x000008C2
_080B3D38: .4byte 0x000008C7
_080B3D3C: .4byte gUnknown_080DBE84
_080B3D40: .4byte 0x000008D1
_080B3D44: .4byte 0x000008D2
_080B3D48: .4byte 0x000008D3

	thumb_func_start sub_80B3D4C
sub_80B3D4C: @ 0x080B3D4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080B3DC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r3, r1
	mov r8, r0
	ldr r5, [r0]
	ldr r0, [r5, #0xc]
	ldrh r0, [r0, #6]
	adds r2, r0, r1
	adds r1, #0x90
	adds r0, r3, r1
	ldr r6, [r0]
	ldr r7, _080B3DCC @ =0x0300009C
	adds r0, r3, r7
	ldr r4, [r0]
	adds r4, #0x30
	adds r6, r6, r4
	adds r1, #4
	adds r0, r3, r1
	movs r1, #0
	str r1, [r0]
	adds r7, #0xc
	adds r0, r3, r7
	str r1, [r0]
	ldr r0, [r2, #0x54]
	cmp r6, r0
	blt _080B3DF2
	adds r6, r0, #0
	movs r4, #0
	ldr r1, _080B3DD0 @ =0x030000B0
	adds r0, r3, r1
	strh r4, [r0]
	str r4, [r2, #0x60]
	str r4, [r2, #0x64]
	movs r2, #0x8c
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r7, _080B3DD4 @ =0x000008C2
	adds r1, r5, r7
	movs r5, #0
	ldrsh r2, [r0, r5]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r2, r0
	blt _080B3DE0
	ldr r0, _080B3DD8 @ =0x030000AC
	adds r1, r3, r0
	movs r0, #0xf
	strh r0, [r1]
	ldr r2, _080B3DDC @ =0x03000023
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x5c
	bl m4aSongNumStart
	b _080B3DF2
	.align 2, 0
_080B3DC8: .4byte gCurTask
_080B3DCC: .4byte 0x0300009C
_080B3DD0: .4byte 0x030000B0
_080B3DD4: .4byte 0x000008C2
_080B3DD8: .4byte 0x030000AC
_080B3DDC: .4byte 0x03000023
_080B3DE0:
	ldr r4, _080B3E08 @ =0xFFFFFC00
	ldr r5, _080B3E0C @ =0x030000AC
	adds r1, r3, r5
	movs r0, #0x13
	strh r0, [r1]
	ldr r7, _080B3E10 @ =0x03000023
	adds r1, r3, r7
	movs r0, #0xff
	strb r0, [r1]
_080B3DF2:
	mov r0, r8
	adds r0, #0x90
	str r6, [r0]
	adds r0, #0xc
	str r4, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B3E08: .4byte 0xFFFFFC00
_080B3E0C: .4byte 0x030000AC
_080B3E10: .4byte 0x03000023

	thumb_func_start sub_80B3E14
sub_80B3E14: @ 0x080B3E14
	push {r4, r5, lr}
	ldr r0, _080B3E5C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	ldr r0, _080B3E60 @ =0x030000AC
	adds r5, r4, r0
	subs r0, #0x1c
	adds r3, r4, r0
	ldr r1, [r3]
	adds r0, #0xc
	adds r2, r4, r0
	ldr r0, [r2]
	adds r0, #0x30
	adds r1, r1, r0
	str r1, [r3]
	str r0, [r2]
	ldrh r0, [r5]
	cmp r0, #0x13
	bne _080B3E54
	ldr r0, _080B3E64 @ =0x030000B0
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _080B3E54
	movs r0, #0
	strh r0, [r2]
	movs r0, #0x14
	strh r0, [r5]
_080B3E54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3E5C: .4byte gCurTask
_080B3E60: .4byte 0x030000AC
_080B3E64: .4byte 0x030000B0

	thumb_func_start sub_80B3E68
sub_80B3E68: @ 0x080B3E68
	push {r4, r5, lr}
	ldr r0, _080B3EE0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r5, r0, r1
	ldr r0, _080B3EE4 @ =0x030000AC
	adds r3, r4, r0
	ldrh r0, [r3]
	cmp r0, #0xf
	bne _080B3EF8
	ldr r0, _080B3EE8 @ =0x030000B0
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080B3EA4
	movs r0, #0
	strh r0, [r2]
	movs r0, #0x10
	strh r0, [r3]
_080B3EA4:
	ldr r0, _080B3EEC @ =0x03000088
	adds r3, r4, r0
	ldr r1, [r3]
	ldr r2, _080B3EF0 @ =0x01FFC000
	subs r0, r2, r1
	lsls r0, r0, #3
	asrs r0, r0, #8
	adds r1, r1, r0
	str r1, [r3]
	ldr r0, _080B3EF4 @ =0x03000090
	adds r4, r4, r0
	ldr r1, [r4]
	movs r3, #0xf0
	lsls r3, r3, #7
	subs r0, r3, r1
	asrs r0, r0, #5
	adds r1, r1, r0
	str r1, [r4]
	ldr r0, [r5, #0x4c]
	subs r2, r2, r0
	lsls r2, r2, #3
	asrs r2, r2, #8
	adds r0, r0, r2
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x54]
	subs r3, r3, r0
	asrs r3, r3, #5
	adds r0, r0, r3
	str r0, [r5, #0x54]
	b _080B3F0C
	.align 2, 0
_080B3EE0: .4byte gCurTask
_080B3EE4: .4byte 0x030000AC
_080B3EE8: .4byte 0x030000B0
_080B3EEC: .4byte 0x03000088
_080B3EF0: .4byte 0x01FFC000
_080B3EF4: .4byte 0x03000090
_080B3EF8:
	ldr r0, _080B3F14 @ =0x030000B0
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x11
	strh r0, [r3]
	ldr r0, _080B3F18 @ =0x03000023
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_080B3F0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3F14: .4byte 0x030000B0
_080B3F18: .4byte 0x03000023

	thumb_func_start sub_80B3F1C
sub_80B3F1C: @ 0x080B3F1C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080B3F98 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r3, r1
	mov ip, r0
	ldr r2, [r0]
	ldr r0, [r2, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r0, [r2]
	ldrh r2, [r0, #6]
	adds r2, r2, r1
	adds r1, #0x90
	adds r0, r3, r1
	ldr r5, [r0]
	movs r7, #0
	ldr r0, _080B3F9C @ =0x0300008C
	adds r4, r3, r0
	adds r1, #0x18
	adds r3, r3, r1
	ldr r0, [r4]
	ldr r1, [r3]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, [r3]
	lsls r1, r1, #2
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r2, [r3]
	subs r1, r2, #1
	str r1, [r3]
	movs r0, #0xc8
	lsls r0, r0, #8
	subs r0, r0, r1
	cmp r0, #0xb0
	ble _080B3F78
	ldr r1, _080B3FA0 @ =0xFFFFFBFF
	adds r0, r2, r1
	str r0, [r3]
	cmp r0, #0
	bgt _080B3F78
	movs r7, #1
_080B3F78:
	mov r0, ip
	adds r0, #0x88
	ldr r1, [r0]
	ldr r2, [r6, #0x4c]
	adds r3, r0, #0
	cmp r1, r2
	bge _080B3FA4
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r1, r2
	str r0, [r3]
	ldr r1, [r6, #0x4c]
	cmp r0, r1
	ble _080B3FB6
	b _080B3FB4
	.align 2, 0
_080B3F98: .4byte gCurTask
_080B3F9C: .4byte 0x0300008C
_080B3FA0: .4byte 0xFFFFFBFF
_080B3FA4:
	cmp r1, r2
	ble _080B3FB6
	ldr r2, _080B3FDC @ =0xFFFE0000
	adds r0, r1, r2
	str r0, [r3]
	ldr r1, [r6, #0x4c]
	cmp r0, r1
	bge _080B3FB6
_080B3FB4:
	str r1, [r3]
_080B3FB6:
	ldr r1, _080B3FE0 @ =gUnknown_030035A0
	ldrh r2, [r1]
	movs r0, #0x20
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _080B3FE8
	ldr r0, [r6, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r1, _080B3FE4 @ =gUnknown_020EFFFF
	cmp r0, r1
	bgt _080B400C
	ldr r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #8
	b _080B4002
	.align 2, 0
_080B3FDC: .4byte 0xFFFE0000
_080B3FE0: .4byte gUnknown_030035A0
_080B3FE4: .4byte gUnknown_020EFFFF
_080B3FE8:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080B400C
	ldr r0, [r6, #0x4c]
	ldr r1, _080B4028 @ =0xFFFF8000
	adds r0, r0, r1
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _080B400C
	ldr r0, [r3]
	ldr r2, _080B4028 @ =0xFFFF8000
_080B4002:
	adds r0, r0, r2
	str r0, [r3]
	ldr r0, [r6, #0x4c]
	adds r0, r0, r2
	str r0, [r6, #0x4c]
_080B400C:
	ldrh r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080B402C
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r5, r0
	ble _080B4042
	adds r5, r0, #0
	b _080B4042
	.align 2, 0
_080B4028: .4byte 0xFFFF8000
_080B402C:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B4042
	ldr r1, _080B4074 @ =0xFFFFFE80
	adds r5, r5, r1
	ldr r0, _080B4078 @ =0x000013FF
	cmp r5, r0
	bgt _080B4042
	movs r5, #0xa0
	lsls r5, r5, #5
_080B4042:
	mov r0, ip
	adds r0, #0x90
	str r5, [r0]
	str r5, [r6, #0x54]
	cmp r7, #0
	beq _080B406E
	mov r1, ip
	adds r1, #0xb8
	movs r2, #0
	movs r0, #0x14
	strb r0, [r1]
	mov r0, ip
	adds r0, #0xa8
	str r2, [r0]
	subs r0, #0x14
	str r2, [r0]
	subs r1, #0xc
	movs r0, #6
	strh r0, [r1]
	subs r1, #0x89
	movs r0, #0xff
	strb r0, [r1]
_080B406E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B4074: .4byte 0xFFFFFE80
_080B4078: .4byte 0x000013FF

	thumb_func_start sub_80B407C
sub_80B407C: @ 0x080B407C
	push {r4, r5, r6, lr}
	ldr r0, _080B40CC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	mov ip, r0
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r3, r0, r1
	adds r1, #0x90
	adds r0, r2, r1
	ldr r4, [r0]
	movs r6, #0
	ldr r0, _080B40D0 @ =0x030000B8
	adds r1, r2, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080B40AE
	movs r6, #1
_080B40AE:
	ldr r0, _080B40D4 @ =0x03000088
	adds r1, r2, r0
	ldr r0, [r1]
	ldr r2, [r3, #0x4c]
	cmp r0, r2
	bge _080B40D8
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, [r3, #0x4c]
	cmp r0, r2
	ble _080B40EA
	b _080B40E8
	.align 2, 0
_080B40CC: .4byte gCurTask
_080B40D0: .4byte 0x030000B8
_080B40D4: .4byte 0x03000088
_080B40D8:
	cmp r0, r2
	ble _080B40EA
	ldr r2, _080B4114 @ =0xFFFE0000
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, [r3, #0x4c]
	cmp r0, r2
	bge _080B40EA
_080B40E8:
	str r2, [r1]
_080B40EA:
	ldr r1, _080B4118 @ =gUnknown_030035A0
	ldrh r2, [r1]
	movs r0, #0x20
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _080B4120
	ldr r0, [r3, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	ldr r1, _080B411C @ =gUnknown_020EFFFF
	cmp r0, r1
	bgt _080B4148
	mov r0, ip
	adds r0, #0x88
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #8
	b _080B413E
	.align 2, 0
_080B4114: .4byte 0xFFFE0000
_080B4118: .4byte gUnknown_030035A0
_080B411C: .4byte gUnknown_020EFFFF
_080B4120:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080B4148
	ldr r0, [r3, #0x4c]
	ldr r1, _080B4164 @ =0xFFFF8000
	adds r0, r0, r1
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _080B4148
	mov r0, ip
	adds r0, #0x88
	ldr r1, [r0]
	ldr r2, _080B4164 @ =0xFFFF8000
_080B413E:
	adds r1, r1, r2
	str r1, [r0]
	ldr r0, [r3, #0x4c]
	adds r0, r0, r2
	str r0, [r3, #0x4c]
_080B4148:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080B4168
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r4, r0
	ble _080B417E
	adds r4, r0, #0
	b _080B417E
	.align 2, 0
_080B4164: .4byte 0xFFFF8000
_080B4168:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B417E
	ldr r1, _080B41A8 @ =0xFFFFFE80
	adds r4, r4, r1
	ldr r0, _080B41AC @ =0x000013FF
	cmp r4, r0
	bgt _080B417E
	movs r4, #0xa0
	lsls r4, r4, #5
_080B417E:
	mov r0, ip
	adds r0, #0x90
	str r4, [r0]
	str r4, [r3, #0x54]
	cmp r6, #0
	beq _080B41A0
	adds r0, #0x28
	movs r1, #0
	strb r1, [r0]
	subs r0, #0x24
	str r1, [r0]
	adds r0, #0x18
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x23
	movs r0, #0xff
	strb r0, [r1]
_080B41A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B41A8: .4byte 0xFFFFFE80
_080B41AC: .4byte 0x000013FF

	thumb_func_start sub_80B41B0
sub_80B41B0: @ 0x080B41B0
	push {r4, r5, r6, lr}
	ldr r0, _080B41EC @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r4, r3, r2
	ldr r1, [r4]
	ldr r0, [r1, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r2
	movs r5, #0
	ldr r0, _080B41F0 @ =0x000008C4
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #4
	bls _080B426A
	ldr r1, _080B41F4 @ =0x030000B3
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B41FC
	ldr r0, _080B41F8 @ =gUnknown_030035A0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080B422E
	movs r5, #1
	b _080B4238
	.align 2, 0
_080B41EC: .4byte gCurTask
_080B41F0: .4byte 0x000008C4
_080B41F4: .4byte 0x030000B3
_080B41F8: .4byte gUnknown_030035A0
_080B41FC:
	ldr r1, _080B4218 @ =0x03000088
	adds r0, r3, r1
	ldr r1, [r0]
	ldr r0, _080B421C @ =0x01E50000
	cmp r1, r0
	bgt _080B4224
	ldr r0, _080B4220 @ =gUnknown_030035A0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080B4240
	movs r5, #1
	b _080B4238
	.align 2, 0
_080B4218: .4byte 0x03000088
_080B421C: .4byte 0x01E50000
_080B4220: .4byte gUnknown_030035A0
_080B4224:
	ldr r0, _080B427C @ =0x021AFFFF
	cmp r1, r0
	ble _080B4240
	ldr r0, _080B4280 @ =gUnknown_030035A0
	ldrh r1, [r0]
_080B422E:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B4240
	movs r5, #2
_080B4238:
	ldr r0, _080B4284 @ =0x03000023
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_080B4240:
	ldr r0, _080B4288 @ =gUnknown_03003F8C
	ldr r1, _080B428C @ =gStageData
	ldrh r2, [r0]
	ldrh r0, [r1, #0x14]
	ands r0, r2
	cmp r0, #0
	beq _080B426A
	movs r5, #3
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #0x79
	ldr r0, _080B4290 @ =0xFFFFFC00
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #2
	str r0, [r6, #0x64]
	movs r0, #0x74
	bl m4aSongNumStart
_080B426A:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r1, [r6, #0x54]
	str r1, [r0]
	adds r0, #0x1c
	strh r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B427C: .4byte 0x021AFFFF
_080B4280: .4byte gUnknown_030035A0
_080B4284: .4byte 0x03000023
_080B4288: .4byte gUnknown_03003F8C
_080B428C: .4byte gStageData
_080B4290: .4byte 0xFFFFFC00

	thumb_func_start sub_80B4294
sub_80B4294: @ 0x080B4294
	push {r4, r5, r6, r7, lr}
	ldr r0, _080B42CC @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r2, r1
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	adds r1, #0xac
	adds r0, r2, r1
	ldrh r5, [r0]
	ldr r1, _080B42D0 @ =gUnknown_030035A0
	ldrh r3, [r1]
	movs r0, #0x20
	ands r0, r3
	adds r7, r1, #0
	cmp r0, #0
	beq _080B42D8
	ldr r0, _080B42D4 @ =0x03000094
	adds r1, r2, r0
	ldr r0, [r1]
	movs r2, #0xa8
	lsls r2, r2, #4
	b _080B42E8
	.align 2, 0
_080B42CC: .4byte gCurTask
_080B42D0: .4byte gUnknown_030035A0
_080B42D4: .4byte 0x03000094
_080B42D8:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _080B42EC
	ldr r0, _080B4304 @ =0x03000094
	adds r1, r2, r0
	ldr r0, [r1]
	ldr r2, _080B4308 @ =0xFFFFF580
_080B42E8:
	adds r0, r0, r2
	str r0, [r1]
_080B42EC:
	adds r2, r4, #0
	adds r2, #0x88
	ldr r1, [r2]
	ldr r3, _080B430C @ =0x01E50000
	cmp r1, r3
	bgt _080B4310
	adds r1, r4, #0
	adds r1, #0xb3
	movs r0, #1
	strb r0, [r1]
	str r3, [r2]
	b _080B4322
	.align 2, 0
_080B4304: .4byte 0x03000094
_080B4308: .4byte 0xFFFFF580
_080B430C: .4byte 0x01E50000
_080B4310:
	ldr r0, _080B4350 @ =0x021AFFFF
	cmp r1, r0
	ble _080B4322
	adds r1, r4, #0
	adds r1, #0xb3
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080B4354 @ =0x021B0000
	str r0, [r2]
_080B4322:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r1, [r0]
	adds r2, r0, #0
	cmp r1, #0
	bge _080B4330
	rsbs r1, r1, #0
_080B4330:
	ldr r0, _080B4358 @ =0x000004FE
	cmp r1, r0
	bgt _080B435C
	ldrh r1, [r7]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _080B435C
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #0xff
	strb r0, [r1]
	str r5, [r2]
	b _080B436C
	.align 2, 0
_080B4350: .4byte 0x021AFFFF
_080B4354: .4byte 0x021B0000
_080B4358: .4byte 0x000004FE
_080B435C:
	ldr r0, [r2]
	cmp r0, #0
	ble _080B4366
	movs r5, #2
	b _080B436C
_080B4366:
	cmp r0, #0
	bge _080B436C
	movs r5, #1
_080B436C:
	ldr r0, _080B43A8 @ =gUnknown_03003F8C
	ldr r1, _080B43AC @ =gStageData
	ldrh r2, [r0]
	ldrh r0, [r1, #0x14]
	ands r0, r2
	cmp r0, #0
	beq _080B4396
	movs r5, #3
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #0x79
	ldr r0, _080B43B0 @ =0xFFFFFC00
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #2
	str r0, [r6, #0x64]
	movs r0, #0x74
	bl m4aSongNumStart
_080B4396:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r1, [r6, #0x54]
	str r1, [r0]
	adds r0, #0x1c
	strh r5, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B43A8: .4byte gUnknown_03003F8C
_080B43AC: .4byte gStageData
_080B43B0: .4byte 0xFFFFFC00

	thumb_func_start sub_80B43B4
sub_80B43B4: @ 0x080B43B4
	push {r4, r5, r6, lr}
	ldr r0, _080B440C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r1, r2
	mov ip, r0
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r2
	adds r2, #0xac
	adds r0, r1, r2
	ldrh r5, [r0]
	ldr r3, _080B4410 @ =0x03000090
	adds r0, r1, r3
	ldr r4, [r0]
	ldr r0, _080B4414 @ =0x0300009C
	adds r1, r1, r0
	ldr r3, [r1]
	adds r3, #0x30
	adds r4, r4, r3
	ldr r2, _080B4418 @ =gUnknown_030035A0
	cmp r3, #0
	bge _080B43F6
	ldr r0, _080B441C @ =gStageData
	ldrh r1, [r2]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _080B43F6
	subs r3, #0x10
_080B43F6:
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080B4420
	mov r1, ip
	adds r1, #0x94
	ldr r0, [r1]
	movs r2, #0xa8
	lsls r2, r2, #4
	b _080B4430
	.align 2, 0
_080B440C: .4byte gCurTask
_080B4410: .4byte 0x03000090
_080B4414: .4byte 0x0300009C
_080B4418: .4byte gUnknown_030035A0
_080B441C: .4byte gStageData
_080B4420:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B4434
	mov r1, ip
	adds r1, #0x94
	ldr r0, [r1]
	ldr r2, _080B4444 @ =0xFFFFF580
_080B4430:
	adds r0, r0, r2
	str r0, [r1]
_080B4434:
	mov r1, ip
	adds r1, #0x88
	ldr r2, [r1]
	ldr r0, _080B4448 @ =0x01E4FFFF
	cmp r2, r0
	bgt _080B444C
	adds r0, #1
	b _080B4452
	.align 2, 0
_080B4444: .4byte 0xFFFFF580
_080B4448: .4byte 0x01E4FFFF
_080B444C:
	ldr r0, _080B446C @ =0x021B0000
	cmp r2, r0
	ble _080B4454
_080B4452:
	str r0, [r1]
_080B4454:
	ldr r0, [r6, #0x54]
	cmp r4, r0
	blt _080B4484
	adds r4, r0, #0
	movs r3, #0
	mov r0, ip
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	bne _080B4470
	movs r5, #0
	b _080B447E
	.align 2, 0
_080B446C: .4byte 0x021B0000
_080B4470:
	cmp r0, #0
	ble _080B4478
	movs r5, #2
	b _080B447E
_080B4478:
	cmp r0, #0
	bge _080B447E
	movs r5, #1
_080B447E:
	movs r0, #0
	str r0, [r6, #0x60]
	str r0, [r6, #0x64]
_080B4484:
	mov r0, ip
	adds r0, #0x90
	str r4, [r0]
	adds r0, #0xc
	str r3, [r0]
	adds r0, #0x10
	strh r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80B4498
sub_80B4498: @ 0x080B4498
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, [sp, #0x14]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	movs r3, #0x80
	lsls r3, r3, #5
	ldrb r2, [r5, #7]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080B44BA
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r3, r0
_080B44BA:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080B44C8
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r3, r0
_080B44C8:
	str r1, [r4]
	ldrh r0, [r5]
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #0xc]
	str r3, [r4, #8]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	strh r7, [r4, #0x12]
	lsls r0, r6, #6
	strh r0, [r4, #0x14]
	strh r1, [r4, #0x16]
	ldr r0, _080B4504 @ =0x0000FFFF
	strh r0, [r4, #0x18]
	ldrh r0, [r5, #2]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldrb r0, [r5, #6]
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B4504: .4byte 0x0000FFFF

	thumb_func_start sub_80B4508
sub_80B4508: @ 0x080B4508
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7]
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r8, r0
	movs r0, #8
	adds r0, r0, r7
	mov sl, r0
	movs r2, #0x38
	adds r2, r2, r7
	mov sb, r2
	movs r4, #0x88
	adds r4, r4, r7
	mov ip, r4
	ldr r1, [r4]
	ldr r5, _080B4644 @ =0xFE1B0000
	adds r0, r1, r5
	lsls r5, r0, #3
	adds r5, r5, r0
	lsls r5, r5, #3
	subs r5, r5, r0
	asrs r5, r5, #0x14
	str r5, [sp]
	movs r3, #0xf0
	mov r2, r8
	ldr r0, [r2, #0x4c]
	subs r0, r0, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	ldr r0, [r2, #0x58]
	asrs r0, r0, #8
	ldr r2, _080B4648 @ =0x000003FF
	ands r0, r2
	lsls r0, r0, #1
	ldr r4, _080B464C @ =gSineTable
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	asrs r1, r1, #0x11
	muls r1, r0, r1
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	asrs r0, r0, #8
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r0, _080B4650 @ =0x00001070
	mov r4, sl
	str r0, [r4, #8]
	mov r5, r8
	ldr r6, [r5, #0x58]
	asrs r6, r6, #8
	ands r6, r2
	ldr r4, [r5, #0x4c]
	mov r2, ip
	ldr r0, [r2]
	subs r4, r4, r0
	str r4, [sp, #4]
	ldr r0, [r5, #0x48]
	lsrs r0, r0, #8
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #0xa
	asrs r2, r2, #0x10
	lsls r0, r6, #1
	ldr r4, _080B464C @ =gSineTable
	adds r0, r0, r4
	movs r4, #0
	ldrsh r5, [r0, r4]
	mov ip, r5
	mov r0, ip
	muls r0, r2, r0
	asrs r0, r0, #0xe
	ldr r5, [sp]
	subs r3, r3, r5
	adds r3, r3, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x18
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r6, r4
	lsls r0, r0, #1
	ldr r5, _080B464C @ =gSineTable
	adds r0, r0, r5
	movs r4, #0
	ldrsh r5, [r0, r4]
	adds r0, r2, #0
	muls r0, r5, r0
	asrs r0, r0, #0xe
	subs r1, r1, r0
	ldr r0, [sp, #4]
	asrs r4, r0, #0x10
	adds r0, r4, #0
	muls r0, r5, r0
	asrs r0, r0, #0xc
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, r3, r0
	lsls r0, r4, #3
	adds r0, r0, r4
	asrs r0, r0, #1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, ip
	muls r0, r4, r0
	asrs r0, r0, #0xe
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sl
	strh r3, [r2, #0x10]
	strh r1, [r2, #0x12]
	mov r4, r8
	ldr r0, [r4, #0x48]
	lsrs r0, r0, #8
	mov r5, sb
	strh r0, [r5, #2]
	ldr r0, [r4, #0x48]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	strh r3, [r5, #6]
	strh r1, [r5, #8]
	strh r6, [r7, #0x38]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	mov r1, sb
	bl sub_80BF8F4
	mov r0, sl
	bl DisplaySprite
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B4644: .4byte 0xFE1B0000
_080B4648: .4byte 0x000003FF
_080B464C: .4byte gSineTable
_080B4650: .4byte 0x00001070

	thumb_func_start sub_80B4654
sub_80B4654: @ 0x080B4654
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r3, #8]
	ldrh r2, [r0, #6]
	ldr r4, _080B46A8 @ =0x030000B4
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B46A0
	ldr r0, _080B46AC @ =0x030000B5
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080B46A0
	movs r0, #1
	strb r0, [r2]
	movs r2, #0x8c
	lsls r2, r2, #4
	adds r0, r3, r2
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	beq _080B46A0
	cmp r0, #4
	bgt _080B4690
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
_080B4690:
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r3, #0
	bl sub_80B4FA8
	movs r0, #0x76
	bl m4aSongNumStart
_080B46A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B46A8: .4byte 0x030000B4
_080B46AC: .4byte 0x030000B5

	thumb_func_start sub_80B46B0
sub_80B46B0: @ 0x080B46B0
	push {lr}
	ldr r0, [r0, #8]
	ldrh r2, [r0, #6]
	ldr r1, _080B46D0 @ =0x030000B4
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, _080B46D4 @ =0xFF0000FF
	ands r0, r1
	cmp r0, #0
	bne _080B46CC
	ldr r0, _080B46D8 @ =0x030000B6
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_080B46CC:
	pop {r0}
	bx r0
	.align 2, 0
_080B46D0: .4byte 0x030000B4
_080B46D4: .4byte 0xFF0000FF
_080B46D8: .4byte 0x030000B6

	thumb_func_start sub_80B46DC
sub_80B46DC: @ 0x080B46DC
	bx lr
	.align 2, 0

	thumb_func_start sub_80B46E0
sub_80B46E0: @ 0x080B46E0
	push {r4, r5, r6, r7, lr}
	ldr r0, _080B472C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r1
	adds r1, #0xac
	adds r7, r4, r1
	ldrh r1, [r7]
	ldr r2, _080B4730 @ =0x03000090
	adds r6, r4, r2
	ldr r3, [r6]
	adds r2, #0xc
	adds r5, r4, r2
	ldr r2, [r5]
	adds r2, #0x40
	adds r3, r3, r2
	ldr r0, [r0, #0x54]
	cmp r3, r0
	blt _080B4720
	adds r3, r0, #0
	movs r2, #0
	ldr r0, _080B4734 @ =0x03000023
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0
_080B4720:
	str r3, [r6]
	str r2, [r5]
	strh r1, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B472C: .4byte gCurTask
_080B4730: .4byte 0x03000090
_080B4734: .4byte 0x03000023

	thumb_func_start sub_80B4738
sub_80B4738: @ 0x080B4738
	push {r4, r5, lr}
	ldr r0, _080B4768 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	ldr r0, _080B476C @ =0x03000090
	adds r5, r1, r0
	ldr r3, [r5]
	adds r0, #0xc
	adds r4, r1, r0
	ldr r2, [r4]
	adds r2, #0x30
	adds r3, r3, r2
	asrs r0, r3, #8
	cmp r0, #0xc8
	ble _080B475E
	ldr r0, _080B4770 @ =0x030000AC
	adds r1, r1, r0
	movs r0, #8
	strh r0, [r1]
_080B475E:
	str r3, [r5]
	str r2, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B4768: .4byte gCurTask
_080B476C: .4byte 0x03000090
_080B4770: .4byte 0x030000AC

	thumb_func_start sub_80B4774
sub_80B4774: @ 0x080B4774
	bx lr
	.align 2, 0

	thumb_func_start sub_80B4778
sub_80B4778: @ 0x080B4778
	push {r4, lr}
	ldr r0, _080B47BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xac
	adds r3, r1, r0
	ldrh r0, [r3]
	cmp r0, #0x12
	beq _080B47A6
	ldr r2, _080B47C0 @ =0x030000B0
	adds r0, r1, r2
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x3b
	bls _080B47A6
	movs r0, #0x12
	strh r0, [r3]
_080B47A6:
	adds r0, r4, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	cmp r0, #0x12
	bne _080B47B6
	movs r0, #0x51
	bl m4aSongNumStart
_080B47B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B47BC: .4byte gCurTask
_080B47C0: .4byte 0x030000B0

	thumb_func_start sub_80B47C4
sub_80B47C4: @ 0x080B47C4
	push {lr}
	ldr r0, _080B47E4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0
	ldr r2, _080B47E8 @ =0x030000AC
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #2
	bls _080B47DC
	cmp r0, #5
	bne _080B47DE
_080B47DC:
	movs r1, #1
_080B47DE:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B47E4: .4byte gCurTask
_080B47E8: .4byte 0x030000AC

	thumb_func_start sub_80B47EC
sub_80B47EC: @ 0x080B47EC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, [sp, #0x14]
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r2, #0x80
	lsls r2, r2, #5
	ldrb r1, [r5, #7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4812
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
_080B4812:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B4820
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
_080B4820:
	ldrh r0, [r5]
	strh r0, [r4, #0xc]
	str r2, [r4, #8]
	strh r6, [r4, #0x10]
	strh r3, [r4, #0x12]
	ldrh r0, [r5, #2]
	strb r0, [r4, #0x1a]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #0x10
	cmp r0, r1
	beq _080B483E
	adds r2, r7, #0
_080B483E:
	strb r2, [r4, #0x1c]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80B484C
sub_80B484C: @ 0x080B484C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r2, #0x88
	lsls r2, r2, #5
	ldrb r1, [r3, #7]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080B486C
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
_080B486C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080B487A
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r2, r0
_080B487A:
	ldrh r0, [r3]
	strh r0, [r4, #0xc]
	str r2, [r4, #8]
	strh r5, [r4, #0x12]
	ldrh r0, [r3, #2]
	strb r0, [r4, #0x1a]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #0x10
	cmp r0, r1
	beq _080B4896
	adds r2, r6, #0
_080B4896:
	strb r2, [r4, #0x1c]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80B48A4
sub_80B48A4: @ 0x080B48A4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _080B4934 @ =0x000008C7
	adds r0, r6, r1
	ldrb r0, [r0]
	mov r8, r0
	ldr r0, _080B4938 @ =sub_80B494C
	movs r2, #0xa0
	lsls r2, r2, #8
	movs r4, #0
	str r4, [sp]
	movs r1, #0x70
	movs r3, #0
	bl TaskCreate
	mov sb, r0
	ldrh r5, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r5, r2
	str r6, [r2]
	str r4, [r2, #4]
	ldr r3, _080B493C @ =gUnknown_080DBE58
	mov r6, r8
	lsls r1, r6, #1
	add r1, r8
	lsls r1, r1, #1
	adds r0, r1, r3
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #0x10
	str r0, [r2, #0x4c]
	adds r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r0, r0, #0x10
	str r0, [r2, #0x50]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x54]
	str r4, [r2, #0x58]
	ldr r6, _080B4940 @ =0x0300006C
	adds r0, r5, r6
	strh r4, [r0]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r2, #0x48]
	str r4, [r2, #0x68]
	str r4, [r2, #0x5c]
	str r4, [r2, #0x64]
	str r4, [r2, #0x60]
	ldr r0, _080B4944 @ =0x0300006E
	adds r5, r5, r0
	movs r0, #1
	strb r0, [r5]
	ldr r0, _080B4948 @ =0x0000020E
	bl m4aSongNumStart
	mov r0, sb
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B4934: .4byte 0x000008C7
_080B4938: .4byte sub_80B494C
_080B493C: .4byte gUnknown_080DBE58
_080B4940: .4byte 0x0300006C
_080B4944: .4byte 0x0300006E
_080B4948: .4byte 0x0000020E

	thumb_func_start sub_80B494C
sub_80B494C: @ 0x080B494C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080B4A4C @ =gCurTask
	ldr r0, [r1]
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r5, r3, r2
	ldr r1, [r5]
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	adds r0, r0, r2
	mov sb, r0
	ldr r0, [r1, #8]
	ldrh r0, [r0, #6]
	mov sl, r0
	ldr r0, _080B4A50 @ =0x0300006E
	adds r2, r3, r0
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	ldr r0, _080B4A54 @ =gUnknown_080DC418
	ldr r1, _080B4A58 @ =0x0300006C
	adds r6, r3, r1
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x10
	bl sub_80B1560
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _080B4A5C @ =gUnknown_080DC408
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x10
	bl sub_80B1560
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, _080B4A60 @ =gUnknown_080DC3F8
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x10
	bl sub_80B1560
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r0, _080B4A64 @ =gUnknown_080DC3E8
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x10
	bl sub_80B1560
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	lsls r4, r4, #6
	str r4, [r5, #0x54]
	ldr r0, _080B4A68 @ =0x000013FF
	cmp r4, r0
	bgt _080B49D6
	adds r0, #1
	str r0, [r5, #0x54]
_080B49D6:
	ldr r0, [r5, #0x54]
	movs r1, #0xf0
	lsls r1, r1, #7
	cmp r0, r1
	ble _080B49E2
	str r1, [r5, #0x54]
_080B49E2:
	mov r3, r8
	lsls r0, r3, #7
	str r0, [r5, #0x48]
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r3, _080B4A6C @ =0xFFFE0000
	adds r0, r0, r3
	mov r3, r8
	lsls r1, r3, #8
	adds r0, r0, r1
	mov r1, sb
	str r0, [r1, #0x10]
	lsls r1, r7, #0xe
	movs r3, #0xf8
	lsls r3, r3, #0x11
	adds r1, r1, r3
	str r1, [r5, #0x4c]
	ldr r0, _080B4A70 @ =0x000003FF
	ands r0, r2
	lsls r0, r0, #8
	str r0, [r5, #0x58]
	ldr r0, _080B4A74 @ =0x03000088
	add r0, sl
	str r1, [r0]
	adds r0, r5, #0
	bl sub_80B4DA8
	adds r0, r5, #0
	bl sub_80B4B68
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080B4A3C
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r5, #0x48]
	ldr r0, _080B4A4C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080B4A78 @ =sub_80B4D08
	str r0, [r1, #8]
_080B4A3C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B4A4C: .4byte gCurTask
_080B4A50: .4byte 0x0300006E
_080B4A54: .4byte gUnknown_080DC418
_080B4A58: .4byte 0x0300006C
_080B4A5C: .4byte gUnknown_080DC408
_080B4A60: .4byte gUnknown_080DC3F8
_080B4A64: .4byte gUnknown_080DC3E8
_080B4A68: .4byte 0x000013FF
_080B4A6C: .4byte 0xFFFE0000
_080B4A70: .4byte 0x000003FF
_080B4A74: .4byte 0x03000088
_080B4A78: .4byte sub_80B4D08

	thumb_func_start sub_80B4A7C
sub_80B4A7C: @ 0x080B4A7C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, [r3]
	ldr r0, [r0, #8]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	ldr r2, _080B4AC4 @ =0x03000088
	adds r0, r1, r2
	ldr r2, [r0]
	movs r4, #1
	ldr r0, _080B4AC8 @ =0x030000AC
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0xc
	blt _080B4AAE
	cmp r0, #0xd
	ble _080B4AAC
	cmp r0, #0x14
	bgt _080B4AAE
	cmp r0, #0x13
	blt _080B4AAE
_080B4AAC:
	movs r4, #0
_080B4AAE:
	cmp r4, #0
	beq _080B4B3C
	ldr r1, [r3, #0x4c]
	ldr r4, _080B4ACC @ =0xFFF50000
	adds r0, r1, r4
	cmp r2, r0
	bge _080B4AD0
	movs r1, #0xb0
	lsls r1, r1, #0xc
	b _080B4ADC
	.align 2, 0
_080B4AC4: .4byte 0x03000088
_080B4AC8: .4byte 0x030000AC
_080B4ACC: .4byte 0xFFF50000
_080B4AD0:
	movs r4, #0xc0
	lsls r4, r4, #0xc
	adds r0, r1, r4
	cmp r2, r0
	ble _080B4AE2
	ldr r1, _080B4AF0 @ =0xFFF40000
_080B4ADC:
	adds r0, r2, r1
	str r0, [r3, #0x4c]
	movs r5, #1
_080B4AE2:
	ldr r1, [r3, #0x4c]
	ldr r0, _080B4AF4 @ =0x01EFFFFF
	cmp r1, r0
	bgt _080B4AF8
	adds r0, #1
	b _080B4AFE
	.align 2, 0
_080B4AF0: .4byte 0xFFF40000
_080B4AF4: .4byte 0x01EFFFFF
_080B4AF8:
	ldr r0, _080B4B30 @ =gUnknown_020F0000
	cmp r1, r0
	ble _080B4B00
_080B4AFE:
	str r0, [r3, #0x4c]
_080B4B00:
	adds r0, r6, #0
	adds r0, #0x94
	ldr r0, [r0]
	asrs r1, r0, #0xb
	adds r0, r1, #0
	muls r0, r1, r0
	muls r1, r0, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r1, r0, #0xb
	ldr r2, _080B4B34 @ =gSineTable
	rsbs r0, r1, #0
	ldr r1, _080B4B38 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #2
	str r0, [r3, #0x58]
	adds r0, r6, #0
	adds r0, #0xb3
	strb r5, [r0]
	b _080B4B60
	.align 2, 0
_080B4B30: .4byte gUnknown_020F0000
_080B4B34: .4byte gSineTable
_080B4B38: .4byte 0x000003FF
_080B4B3C:
	ldr r1, [r3, #0x5c]
	adds r1, #0x80
	str r1, [r3, #0x5c]
	ldr r0, [r3, #0x54]
	adds r0, #0x60
	str r0, [r3, #0x54]
	ldr r0, [r3, #0x4c]
	subs r0, r0, r1
	str r0, [r3, #0x4c]
	asrs r1, r1, #6
	ldr r0, [r3, #0x48]
	adds r0, r0, r1
	str r0, [r3, #0x48]
	ldr r0, [r3, #0x58]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r0, r4
	str r0, [r3, #0x58]
_080B4B60:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B4B68
sub_80B4B68: @ 0x080B4B68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r7, [r4]
	ldr r0, [r7, #8]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
	ldr r1, [r4, #0x4c]
	ldr r0, _080B4BB0 @ =0xFE100000
	adds r1, r1, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	asrs r0, r0, #0x14
	movs r1, #0xbe
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	movs r3, #0
	ldr r0, [r4, #0x68]
	cmp r0, #1
	beq _080B4BDC
	cmp r0, #1
	blo _080B4BB4
	cmp r0, #2
	beq _080B4BFC
	cmp r0, #3
	beq _080B4C2C
	b _080B4C46
	.align 2, 0
_080B4BB0: .4byte 0xFE100000
_080B4BB4:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r3, r0, r1
	ldr r1, _080B4BD4 @ =0x030000A8
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, _080B4BD8 @ =0x0000C750
	cmp r1, r0
	ble _080B4C46
	movs r0, #1
	b _080B4C1C
	.align 2, 0
_080B4BD4: .4byte 0x030000A8
_080B4BD8: .4byte 0x0000C750
_080B4BDC:
	adds r2, r4, #0
	adds r2, #0x6c
	ldrh r1, [r2]
	ldr r0, _080B4BF8 @ =0x000001AF
	cmp r1, #5
	bhi _080B4BEA
	subs r0, #1
_080B4BEA:
	adds r3, r0, #0
	cmp r1, #0xc
	bls _080B4C46
	movs r0, #2
	str r0, [r4, #0x68]
	movs r0, #0
	b _080B4C44
	.align 2, 0
_080B4BF8: .4byte 0x000001AF
_080B4BFC:
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0xd8
	lsls r1, r1, #1
	adds r3, r0, r1
	ldr r1, _080B4C28 @ =0x030000A8
	adds r0, r2, r1
	ldr r1, [r0]
	movs r0, #0xc8
	lsls r0, r0, #8
	subs r0, r0, r1
	cmp r0, #0xb0
	ble _080B4C46
	movs r0, #3
_080B4C1C:
	str r0, [r4, #0x68]
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #0
	strh r0, [r1]
	b _080B4C46
	.align 2, 0
_080B4C28: .4byte 0x030000A8
_080B4C2C:
	adds r2, r4, #0
	adds r2, #0x6c
	ldrh r1, [r2]
	ldr r0, _080B4CE4 @ =0x000001AF
	cmp r1, #6
	bls _080B4C3A
	subs r0, #1
_080B4C3A:
	adds r3, r0, #0
	cmp r1, #0xc
	bls _080B4C46
	movs r0, #0
	str r0, [r4, #0x68]
_080B4C44:
	strh r0, [r2]
_080B4C46:
	ldr r0, [r4, #0x48]
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	adds r0, #0xa8
	ldr r1, [r0]
	movs r0, #0xc8
	lsls r0, r0, #8
	subs r0, r0, r1
	cmp r0, #0xaf
	bgt _080B4C76
	subs r0, #0x58
	adds r1, r0, #0
	cmp r0, #0
	bge _080B4C66
	rsbs r1, r0, #0
_080B4C66:
	adds r0, r1, #0
	subs r0, #0x58
	asrs r1, r0, #1
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080B4C76:
	adds r0, r4, #0
	adds r0, #8
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x10
	str r1, [sp]
	str r1, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r1, #0x13
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0x1c
	bl sub_80B6B3C
	ldr r0, [r4, #0x58]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x16
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x40
	str r1, [sp]
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r3, [r4, #0x54]
	asrs r3, r3, #8
	ldr r1, [r4, #0x60]
	asrs r1, r1, #9
	adds r1, #0x19
	adds r3, r3, r1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r3, [sp, #8]
	ldr r1, _080B4CE8 @ =gUnknown_03002C40
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x40
	bl sub_80BEBCC
	movs r0, #0x8b
	lsls r0, r0, #4
	adds r1, r7, r0
	ldr r0, [r4, #0x4c]
	str r0, [r1]
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B4CE4: .4byte 0x000001AF
_080B4CE8: .4byte gUnknown_03002C40

	thumb_func_start sub_80B4CEC
sub_80B4CEC: @ 0x080B4CEC
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	ldr r2, _080B4D04 @ =0x0300006C
	adds r0, r0, r2
	movs r2, #0
	strh r2, [r0]
	str r1, [r3, #0x68]
	bx lr
	.align 2, 0
_080B4D04: .4byte 0x0300006C

	thumb_func_start sub_80B4D08
sub_80B4D08: @ 0x080B4D08
	push {r4, lr}
	ldr r0, _080B4D4C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r2, r4
	ldr r0, _080B4D50 @ =0x0300006E
	adds r3, r2, r0
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r3]
	ldr r0, _080B4D54 @ =0x0300006C
	adds r2, r2, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r0, r4, #0
	bl sub_80B4D58
	adds r0, r4, #0
	bl sub_80B4A7C
	adds r0, r4, #0
	bl sub_80B4DA8
	adds r0, r4, #0
	bl sub_80B4B68
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B4D4C: .4byte gCurTask
_080B4D50: .4byte 0x0300006E
_080B4D54: .4byte 0x0300006C

	thumb_func_start sub_80B4D58
sub_80B4D58: @ 0x080B4D58
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x60]
	cmp r2, #0
	bne _080B4D68
	ldr r0, [r1, #0x64]
	cmp r0, #0
	beq _080B4DA4
_080B4D68:
	adds r3, r2, #0
	cmp r3, #0
	bge _080B4D74
	ldr r0, [r1, #0x64]
	adds r0, #0x28
	b _080B4D78
_080B4D74:
	ldr r0, [r1, #0x64]
	subs r0, #0x28
_080B4D78:
	str r0, [r1, #0x64]
	ldr r0, [r1, #0x60]
	ldr r2, [r1, #0x64]
	adds r0, r0, r2
	str r0, [r1, #0x60]
	cmp r3, #0
	bge _080B4D8C
	cmp r0, #0
	ble _080B4D98
	b _080B4D90
_080B4D8C:
	cmp r0, #0
	bge _080B4DA4
_080B4D90:
	movs r0, #0x64
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [r1, #0x64]
_080B4D98:
	ldr r0, [r1, #0x60]
	cmp r0, #0
	bge _080B4DA4
	movs r0, #0
	str r0, [r1, #0x60]
	str r0, [r1, #0x64]
_080B4DA4:
	pop {r0}
	bx r0

	thumb_func_start sub_80B4DA8
sub_80B4DA8: @ 0x080B4DA8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	ldr r1, [r0, #8]
	ldrh r1, [r1, #6]
	ldr r3, _080B4DE8 @ =0x000008C4
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, #4
	bls _080B4E10
	ldr r3, _080B4DEC @ =0x030000AC
	adds r0, r1, r3
	ldrh r0, [r0]
	cmp r0, #2
	bhi _080B4E10
	ldr r0, _080B4DF0 @ =gUnknown_030035A0
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080B4DF4
	ldr r0, [r2, #0x54]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r2, #0x54]
	movs r1, #0xf0
	lsls r1, r1, #7
	cmp r0, r1
	ble _080B4E10
	str r1, [r2, #0x54]
	b _080B4E10
	.align 2, 0
_080B4DE8: .4byte 0x000008C4
_080B4DEC: .4byte 0x030000AC
_080B4DF0: .4byte gUnknown_030035A0
_080B4DF4:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080B4E10
	ldr r0, [r2, #0x54]
	ldr r3, _080B4E14 @ =0xFFFFFE80
	adds r0, r0, r3
	str r0, [r2, #0x54]
	ldr r1, _080B4E18 @ =0x000013FF
	cmp r0, r1
	bgt _080B4E10
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r2, #0x54]
_080B4E10:
	pop {r0}
	bx r0
	.align 2, 0
_080B4E14: .4byte 0xFFFFFE80
_080B4E18: .4byte 0x000013FF

	thumb_func_start sub_80B4E1C
sub_80B4E1C: @ 0x080B4E1C
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r1, _080B4ECC @ =gUnknown_080DC428
	add r0, sp, #4
	movs r2, #0xe
	bl memcpy
	ldr r0, _080B4ED0 @ =sub_80B5038
	ldr r1, _080B4ED4 @ =0x000008E8
	movs r2, #0xb0
	lsls r2, r2, #8
	movs r4, #0
	str r4, [sp]
	movs r3, #0
	bl TaskCreate
	adds r6, r0, #0
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	str r5, [r3]
	ldr r0, _080B4ED8 @ =0x000008C7
	adds r5, r5, r0
	ldrb r0, [r5]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #4
	ldrh r2, [r0]
	ldr r5, _080B4EDC @ =gUnknown_030008DA
	adds r0, r1, r5
	strh r2, [r0]
	ldr r2, _080B4EE0 @ =gUnknown_030008DC
	adds r0, r1, r2
	strh r4, [r0]
	adds r5, #8
	adds r0, r1, r5
	strh r4, [r0]
	adds r2, #8
	adds r0, r1, r2
	strh r4, [r0]
	subs r5, #4
	adds r0, r1, r5
	strh r4, [r0]
	ldr r0, _080B4EE4 @ =gUnknown_030005F4
	adds r1, r1, r0
	movs r0, #0
	movs r2, #0
_080B4E7E:
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	strh r2, [r1, #0x18]
	strb r2, [r1, #0x1a]
	strb r2, [r1, #0x1b]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0x1c
	cmp r0, #7
	bls _080B4E7E
	ldr r2, _080B4EE8 @ =0x000006D4
	adds r1, r3, r2
	movs r0, #0
	movs r2, #0
_080B4EA4:
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	strh r2, [r1, #0x18]
	strb r2, [r1, #0x1a]
	strb r2, [r1, #0x1b]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0x1c
	cmp r0, #3
	bls _080B4EA4
	adds r0, r6, #0
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B4ECC: .4byte gUnknown_080DC428
_080B4ED0: .4byte sub_80B5038
_080B4ED4: .4byte 0x000008E8
_080B4ED8: .4byte 0x000008C7
_080B4EDC: .4byte gUnknown_030008DA
_080B4EE0: .4byte gUnknown_030008DC
_080B4EE4: .4byte gUnknown_030005F4
_080B4EE8: .4byte 0x000006D4

	thumb_func_start sub_80B4EEC
sub_80B4EEC: @ 0x080B4EEC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, [r6, #8]
	ldrh r1, [r0, #6]
	ldr r3, _080B4F94 @ =0x030000A8
	adds r0, r1, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _080B4F0A
	ldr r0, _080B4F98 @ =0x030000B9
	adds r1, r1, r0
	movs r0, #0x3c
	strb r0, [r1]
_080B4F0A:
	movs r1, #0x8c
	lsls r1, r1, #4
	adds r4, r6, r1
	ldrh r0, [r4]
	lsls r1, r2, #0x10
	asrs r5, r1, #0x10
	adds r0, r5, r0
	strh r0, [r4]
	movs r0, #0x75
	bl m4aSongNumStart
	movs r2, #0
	ldrsh r0, [r4, r2]
	ldr r1, _080B4F9C @ =0x000003E7
	cmp r0, r1
	ble _080B4F2C
	strh r1, [r4]
_080B4F2C:
	movs r7, #0
	cmp r7, r5
	bge _080B4F8C
	movs r3, #0x8d
	lsls r3, r3, #4
	adds r1, r6, r3
	movs r0, #0
	mov ip, r0
	movs r4, #9
_080B4F3E:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _080B4F7C
	mov r2, ip
	strb r2, [r1]
	ldr r0, _080B4FA0 @ =0x000008CF
	adds r3, r6, r0
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _080B4F7C
	strb r2, [r3]
	ldr r0, _080B4FA4 @ =0x000008CE
	adds r2, r6, r0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _080B4F7C
	strb r4, [r2]
	strb r4, [r3]
	strb r4, [r1]
_080B4F7C:
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	blt _080B4F3E
_080B4F8C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B4F94: .4byte 0x030000A8
_080B4F98: .4byte 0x030000B9
_080B4F9C: .4byte 0x000003E7
_080B4FA0: .4byte 0x000008CF
_080B4FA4: .4byte 0x000008CE

	thumb_func_start sub_80B4FA8
sub_80B4FA8: @ 0x080B4FA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_80B6198
	movs r0, #0x8c
	lsls r0, r0, #4
	adds r2, r5, r0
	ldrh r0, [r2]
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B4FD2
	movs r0, #0
	strh r0, [r2]
_080B4FD2:
	lsrs r6, r4, #0x10
	cmp r4, #0
	ble _080B5024
	movs r1, #0x8d
	lsls r1, r1, #4
	adds r3, r5, r1
	movs r4, #0
_080B4FE0:
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080B5018
	movs r1, #9
	strb r1, [r3]
	ldr r0, _080B502C @ =0x000008CF
	adds r2, r5, r0
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080B5018
	strb r1, [r2]
	ldr r0, _080B5030 @ =0x000008CE
	adds r1, r5, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _080B5018
	strb r4, [r1]
	strb r4, [r2]
	strb r4, [r3]
_080B5018:
	lsls r0, r6, #0x10
	ldr r1, _080B5034 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	cmp r0, #0
	bgt _080B4FE0
_080B5024:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B502C: .4byte 0x000008CF
_080B5030: .4byte 0x000008CE
_080B5034: .4byte 0xFFFF0000

	thumb_func_start sub_80B5038
sub_80B5038: @ 0x080B5038
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	ldr r0, _080B51C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	movs r2, #0
	ldr r0, _080B51C4 @ =gUnknown_030007B4
	adds r3, r1, r0
	movs r5, #1
	ldr r4, _080B51C8 @ =0x00000125
_080B5058:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, r0
	strb r5, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	ble _080B5058
	ldr r1, _080B51CC @ =0x000008DC
	adds r0, r7, r1
	movs r5, #0
	strh r5, [r0]
	adds r0, r7, #4
	ldr r1, _080B51D0 @ =0x0000045D
	mov sb, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	mov r8, r1
	str r1, [sp]
	movs r4, #0x14
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r6, #0xe
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0
	movs r2, #0x10
	mov r3, sb
	bl sub_80B6BB8
	adds r0, r7, #0
	adds r0, #0x2c
	mov r1, r8
	str r1, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	movs r1, #5
	str r1, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0
	movs r2, #4
	mov r3, sb
	bl sub_80B6BB8
	adds r0, r7, #0
	adds r0, #0x54
	ldr r3, _080B51D4 @ =0x00000473
	mov r1, r8
	str r1, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0
	movs r2, #4
	bl sub_80B6BB8
	adds r0, r7, #0
	adds r0, #0x7c
	ldr r3, _080B51D8 @ =0x00000475
	mov r1, r8
	str r1, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0
	movs r2, #4
	bl sub_80B6BB8
	adds r0, r7, #0
	adds r0, #0xa4
	ldr r3, _080B51DC @ =0x00000476
	mov r1, r8
	str r1, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0
	movs r2, #0x10
	bl sub_80B6BB8
	adds r0, r7, #0
	adds r0, #0xcc
	ldr r3, _080B51E0 @ =0x00000474
	mov r1, r8
	str r1, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0
	movs r2, #4
	bl sub_80B6BB8
	adds r0, r7, #0
	adds r0, #0xf4
	ldr r3, _080B51E4 @ =0x0000047A
	movs r1, #0x80
	lsls r1, r1, #5
	mov r8, r1
	str r1, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0
	movs r2, #0x10
	bl sub_80B6BB8
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r3, _080B51E8 @ =0x00000479
	mov r1, r8
	str r1, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0
	movs r2, #4
	bl sub_80B6BB8
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, _080B51EC @ =0x0000045C
	mov sb, r1
	mov r1, r8
	str r1, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0
	movs r2, #4
	mov r3, sb
	bl sub_80B6BB8
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r1, r8
	str r1, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #0
	movs r2, #4
	mov r3, sb
	bl sub_80B6BB8
	ldr r0, _080B51C0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080B51F0 @ =sub_80B524C
	str r0, [r1, #8]
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B51C0: .4byte gCurTask
_080B51C4: .4byte gUnknown_030007B4
_080B51C8: .4byte 0x00000125
_080B51CC: .4byte 0x000008DC
_080B51D0: .4byte 0x0000045D
_080B51D4: .4byte 0x00000473
_080B51D8: .4byte 0x00000475
_080B51DC: .4byte 0x00000476
_080B51E0: .4byte 0x00000474
_080B51E4: .4byte 0x0000047A
_080B51E8: .4byte 0x00000479
_080B51EC: .4byte 0x0000045C
_080B51F0: .4byte sub_80B524C

	thumb_func_start sub_80B51F4
sub_80B51F4: @ 0x080B51F4
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x88
	ldr r1, _080B5244 @ =gUnknown_080DC436
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	movs r1, #0
	str r1, [r4]
	movs r2, #0
	strh r1, [r4, #0x14]
	ldr r0, _080B5248 @ =0x000008C7
	adds r5, r5, r0
	ldrb r0, [r5]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B5244: .4byte gUnknown_080DC436
_080B5248: .4byte 0x000008C7

	thumb_func_start sub_80B524C
sub_80B524C: @ 0x080B524C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080B53E4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r6, [r5]
	ldr r1, _080B53E8 @ =0x000008C8
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B5268
	b _080B53DA
_080B5268:
	ldr r3, _080B53EC @ =gUnknown_030008E2
	adds r1, r4, r3
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	ldr r0, _080B53F0 @ =gUnknown_030008E4
	adds r2, r4, r0
	ldrh r0, [r2]
	adds r0, #4
	ldr r3, _080B53F4 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080B53F8 @ =0x03000004
	adds r0, r4, r1
	bl UpdateSpriteAnimation
	ldr r3, _080B53FC @ =0x0300002C
	adds r0, r4, r3
	bl UpdateSpriteAnimation
	ldr r1, _080B5400 @ =0x03000054
	adds r0, r4, r1
	bl UpdateSpriteAnimation
	ldr r3, _080B5404 @ =0x0300007C
	adds r0, r4, r3
	bl UpdateSpriteAnimation
	ldr r1, _080B5408 @ =0x030000A4
	adds r0, r4, r1
	bl UpdateSpriteAnimation
	ldr r3, _080B540C @ =0x030000CC
	adds r0, r4, r3
	bl UpdateSpriteAnimation
	ldr r1, _080B5410 @ =0x030000F4
	adds r0, r4, r1
	bl UpdateSpriteAnimation
	ldr r3, _080B5414 @ =0x0300011C
	adds r0, r4, r3
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl sub_80B51F4
	bl sub_80B5450
	adds r0, r6, #0
	bl sub_80B62FC
	ldr r0, _080B5418 @ =gUnknown_030008DC
	adds r6, r4, r0
	ldrh r0, [r6]
	adds r0, #1
	movs r1, #1
	ands r0, r1
	strh r0, [r6]
	movs r3, #0
	ldrsh r1, [r6, r3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r1, r0, #2
	adds r0, r5, r1
	ldr r7, _080B541C @ =0x0000060E
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #1
	bne _080B5302
	ldr r0, _080B5420 @ =0x000005F4
	adds r1, r1, r0
	adds r1, r5, r1
	movs r0, #0
	bl sub_80B6370
_080B5302:
	movs r1, #0
	ldrsh r2, [r6, r1]
	adds r0, r2, #2
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r5, r1
	adds r1, r1, r7
	ldrb r0, [r1]
	cmp r0, #1
	bne _080B532A
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	ldr r3, _080B5424 @ =0x0000062C
	adds r1, r1, r3
	adds r1, r5, r1
	movs r0, #1
	bl sub_80B6370
_080B532A:
	movs r0, #0
	ldrsh r2, [r6, r0]
	adds r0, r2, #4
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r5, r1
	adds r1, r1, r7
	ldrb r0, [r1]
	cmp r0, #1
	bne _080B5352
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	ldr r3, _080B5428 @ =0x00000664
	adds r1, r1, r3
	adds r1, r5, r1
	movs r0, #2
	bl sub_80B6370
_080B5352:
	movs r0, #0
	ldrsh r2, [r6, r0]
	adds r0, r2, #6
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r5, r1
	adds r1, r1, r7
	ldrb r0, [r1]
	cmp r0, #1
	bne _080B537A
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #2
	ldr r3, _080B542C @ =0x0000069C
	adds r1, r1, r3
	adds r1, r5, r1
	movs r0, #3
	bl sub_80B6370
_080B537A:
	ldr r0, _080B5430 @ =gUnknown_0300075E
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080B5392
	subs r0, #1
	strb r0, [r1]
	ldr r3, _080B5434 @ =gUnknown_03000744
	adds r1, r4, r3
	movs r0, #0
	bl sub_80B6464
_080B5392:
	ldr r0, _080B5438 @ =gUnknown_0300077A
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080B53AA
	subs r0, #1
	strb r0, [r1]
	ldr r3, _080B543C @ =gUnknown_03000760
	adds r1, r4, r3
	movs r0, #0
	bl sub_80B6464
_080B53AA:
	ldr r0, _080B5440 @ =gUnknown_03000796
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080B53C2
	subs r0, #1
	strb r0, [r1]
	ldr r3, _080B5444 @ =gUnknown_0300077C
	adds r1, r4, r3
	movs r0, #0
	bl sub_80B6464
_080B53C2:
	ldr r0, _080B5448 @ =gUnknown_030007B2
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080B53DA
	subs r0, #1
	strb r0, [r1]
	ldr r3, _080B544C @ =gUnknown_03000798
	adds r1, r4, r3
	movs r0, #0
	bl sub_80B6464
_080B53DA:
	bl sub_80B59E4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B53E4: .4byte gCurTask
_080B53E8: .4byte 0x000008C8
_080B53EC: .4byte gUnknown_030008E2
_080B53F0: .4byte gUnknown_030008E4
_080B53F4: .4byte 0x000003FF
_080B53F8: .4byte 0x03000004
_080B53FC: .4byte 0x0300002C
_080B5400: .4byte 0x03000054
_080B5404: .4byte 0x0300007C
_080B5408: .4byte 0x030000A4
_080B540C: .4byte 0x030000CC
_080B5410: .4byte 0x030000F4
_080B5414: .4byte 0x0300011C
_080B5418: .4byte gUnknown_030008DC
_080B541C: .4byte 0x0000060E
_080B5420: .4byte 0x000005F4
_080B5424: .4byte 0x0000062C
_080B5428: .4byte 0x00000664
_080B542C: .4byte 0x0000069C
_080B5430: .4byte gUnknown_0300075E
_080B5434: .4byte gUnknown_03000744
_080B5438: .4byte gUnknown_0300077A
_080B543C: .4byte gUnknown_03000760
_080B5440: .4byte gUnknown_03000796
_080B5444: .4byte gUnknown_0300077C
_080B5448: .4byte gUnknown_030007B2
_080B544C: .4byte gUnknown_03000798

	thumb_func_start sub_80B5450
sub_80B5450: @ 0x080B5450
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r0, _080B54C8 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	str r0, [sp, #0x14]
	ldr r3, [r0]
	str r3, [sp, #0x18]
	ldr r3, _080B54CC @ =gUnknown_08E2EF8C
	ldr r4, [sp, #0x18]
	ldr r5, _080B54D0 @ =0x000008C7
	adds r0, r4, r5
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r5, [r0]
	ldr r0, [r4, #8]
	ldrh r3, [r0, #6]
	adds r6, r3, r1
	str r6, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #6]
	adds r6, r0, r1
	ldr r4, _080B54D4 @ =gSineTable
	ldr r0, _080B54D8 @ =gUnknown_030008E4
	adds r2, r2, r0
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	str r0, [sp, #0x20]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
	ldr r4, _080B54DC @ =0x030000AC
	adds r3, r3, r4
	ldrh r0, [r3]
	adds r0, #1
	cmp r0, #0x15
	bhi _080B553C
	lsls r0, r0, #2
	ldr r1, _080B54E0 @ =_080B54E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B54C8: .4byte gCurTask
_080B54CC: .4byte gUnknown_08E2EF8C
_080B54D0: .4byte 0x000008C7
_080B54D4: .4byte gSineTable
_080B54D8: .4byte gUnknown_030008E4
_080B54DC: .4byte 0x030000AC
_080B54E0: .4byte _080B54E4
_080B54E4: @ jump table
	.4byte _080B5930 @ case 0
	.4byte _080B553C @ case 1
	.4byte _080B553C @ case 2
	.4byte _080B553C @ case 3
	.4byte _080B553C @ case 4
	.4byte _080B553C @ case 5
	.4byte _080B553C @ case 6
	.4byte _080B553C @ case 7
	.4byte _080B5930 @ case 8
	.4byte _080B5930 @ case 9
	.4byte _080B5930 @ case 10
	.4byte _080B5930 @ case 11
	.4byte _080B5930 @ case 12
	.4byte _080B5930 @ case 13
	.4byte _080B5930 @ case 14
	.4byte _080B5930 @ case 15
	.4byte _080B5930 @ case 16
	.4byte _080B5930 @ case 17
	.4byte _080B553C @ case 18
	.4byte _080B553C @ case 19
	.4byte _080B5930 @ case 20
	.4byte _080B5930 @ case 21
_080B553C:
	ldr r0, [sp, #0x1c]
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B5548
	b _080B5930
_080B5548:
	ldr r1, [sp, #0x18]
	movs r2, #0x8b
	lsls r2, r2, #4
	adds r0, r1, r2
	movs r4, #2
	ldrsh r3, [r0, r4]
	mov r8, r3
	ldr r0, [sp, #0x1c]
	adds r0, #0xa0
	ldr r0, [r0]
	movs r1, #0x78
	subs r0, r1, r0
	asrs r0, r0, #2
	add r8, r0
	ldr r0, [sp, #0x1c]
	adds r0, #0x8c
	movs r3, #2
	ldrsh r2, [r0, r3]
	mov sb, r2
	ldr r0, [sp, #0x1c]
	adds r0, #0x90
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r7, r1, r0
	ldr r1, [r6, #0x54]
	asrs r1, r1, #0xa
	movs r0, #0x1e
	subs r0, r0, r1
	adds r7, r7, r0
	ldr r0, [sp, #0x1c]
	adds r0, #0xac
	ldrh r1, [r0]
	str r0, [sp, #0x2c]
	cmp r1, #5
	bne _080B5590
	subs r7, #0x14
_080B5590:
	ldr r4, [sp, #0x14]
	ldr r6, _080B560C @ =0x000008DE
	adds r0, r4, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	adds r5, r5, r0
	movs r2, #0
	str r2, [sp, #0x28]
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080B55B0
	b _080B5930
_080B55B0:
	movs r4, #0
	ldrsh r0, [r5, r4]
	ldr r6, [sp, #0x14]
	ldr r2, _080B5610 @ =0x000007B4
	adds r1, r6, r2
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	beq _080B55C6
	b _080B5908
_080B55C6:
	movs r3, #8
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x20]
	lsls r2, r4, #0x10
	asrs r0, r2, #0x10
	muls r0, r1, r0
	asrs r0, r0, #0x10
	ldrh r6, [r5, #2]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrh r4, [r5, #4]
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldr r6, [sp, #0x24]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldrh r1, [r5, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0xc
	ldrsb r0, [r5, r0]
	adds r0, #1
	mov sl, r2
	cmp r0, #0xb
	bls _080B5602
	b _080B5908
_080B5602:
	lsls r0, r0, #2
	ldr r1, _080B5614 @ =_080B5618
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B560C: .4byte 0x000008DE
_080B5610: .4byte 0x000007B4
_080B5614: .4byte _080B5618
_080B5618: @ jump table
	.4byte _080B5908 @ case 0
	.4byte _080B5648 @ case 1
	.4byte _080B56A8 @ case 2
	.4byte _080B5710 @ case 3
	.4byte _080B576C @ case 4
	.4byte _080B57BC @ case 5
	.4byte _080B5908 @ case 6
	.4byte _080B5908 @ case 7
	.4byte _080B5908 @ case 8
	.4byte _080B5908 @ case 9
	.4byte _080B57BC @ case 10
	.4byte _080B5908 @ case 11
_080B5648:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	mov r0, r8
	subs r0, #0xa
	cmp r1, r0
	bgt _080B5656
	b _080B5908
_080B5656:
	adds r0, #0x14
	cmp r1, r0
	blt _080B565E
	b _080B5908
_080B565E:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	mov r0, sb
	subs r0, #0xa
	cmp r1, r0
	bgt _080B566C
	b _080B5908
_080B566C:
	adds r0, #0x12
	cmp r1, r0
	blt _080B5674
	b _080B5908
_080B5674:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r0, r7, #0
	subs r0, #0x1a
	cmp r1, r0
	bge _080B5682
	b _080B5908
_080B5682:
	adds r0, #0x3a
	cmp r1, r0
	ble _080B568A
	b _080B5908
_080B568A:
	ldr r0, [sp, #0x1c]
	adds r0, #0xb2
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	bl sub_80B4EEC
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x14]
	ldr r4, _080B56A4 @ =0x000007B4
	adds r0, r3, r4
	b _080B5704
	.align 2, 0
_080B56A4: .4byte 0x000007B4
_080B56A8:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	mov r0, r8
	subs r0, #0xa
	cmp r1, r0
	bgt _080B56B6
	b _080B5908
_080B56B6:
	adds r0, #0x14
	cmp r1, r0
	blt _080B56BE
	b _080B5908
_080B56BE:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	mov r0, sb
	subs r0, #0xa
	cmp r1, r0
	bgt _080B56CC
	b _080B5908
_080B56CC:
	adds r0, #0x12
	cmp r1, r0
	blt _080B56D4
	b _080B5908
_080B56D4:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r0, r7, #0
	subs r0, #0x1a
	cmp r1, r0
	bge _080B56E2
	b _080B5908
_080B56E2:
	adds r0, #0x3a
	cmp r1, r0
	ble _080B56EA
	b _080B5908
_080B56EA:
	ldr r0, [sp, #0x1c]
	adds r0, #0xb2
	ldrb r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldr r0, [sp, #0x18]
	bl sub_80B4EEC
	movs r6, #0
	ldrsh r1, [r5, r6]
	ldr r2, [sp, #0x14]
	ldr r3, _080B570C @ =0x000007B4
	adds r0, r2, r3
_080B5704:
	adds r0, r0, r1
	movs r1, #0xb
	strb r1, [r0]
	b _080B5908
	.align 2, 0
_080B570C: .4byte 0x000007B4
_080B5710:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	mov r0, r8
	subs r0, #5
	cmp r1, r0
	bgt _080B571E
	b _080B5908
_080B571E:
	adds r0, #0xa
	cmp r1, r0
	blt _080B5726
	b _080B5908
_080B5726:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	mov r0, sb
	subs r0, #0xa
	cmp r1, r0
	bgt _080B5734
	b _080B5908
_080B5734:
	adds r0, #0x12
	cmp r1, r0
	blt _080B573C
	b _080B5908
_080B573C:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r0, r7, #0
	subs r0, #0xe
	cmp r1, r0
	bge _080B574A
	b _080B5908
_080B574A:
	adds r0, #0x2a
	cmp r1, r0
	ble _080B5752
	b _080B5908
_080B5752:
	ldr r0, [sp, #0x18]
	movs r1, #5
	bl sub_80B4654
	movs r4, #0
	ldrsh r0, [r5, r4]
	ldr r6, [sp, #0x14]
	ldr r2, _080B5768 @ =0x000007B4
	adds r1, r6, r2
	b _080B5902
	.align 2, 0
_080B5768: .4byte 0x000007B4
_080B576C:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	mov r0, r8
	subs r0, #0xa
	cmp r1, r0
	bgt _080B577A
	b _080B5908
_080B577A:
	adds r0, #0x14
	cmp r1, r0
	blt _080B5782
	b _080B5908
_080B5782:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	adds r1, #7
	cmp r0, r1
	blt _080B5790
	b _080B5908
_080B5790:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r0, r7, #0
	subs r0, #0x20
	cmp r1, r0
	bge _080B579E
	b _080B5908
_080B579E:
	adds r0, #0x40
	cmp r1, r0
	ble _080B57A6
	b _080B5908
_080B57A6:
	ldr r0, [sp, #0x18]
	bl sub_80B46B0
	movs r3, #0
	ldrsh r0, [r5, r3]
	ldr r4, [sp, #0x14]
	ldr r6, _080B57B8 @ =0x000007B4
	adds r1, r4, r6
	b _080B5902
	.align 2, 0
_080B57B8: .4byte 0x000007B4
_080B57BC:
	ldr r1, [sp, #0x2c]
	ldrh r0, [r1]
	cmp r0, #3
	bne _080B5898
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	mov r0, r8
	subs r0, #5
	cmp r1, r0
	bgt _080B57D2
	b _080B5908
_080B57D2:
	adds r0, #0xe
	cmp r1, r0
	blt _080B57DA
	b _080B5908
_080B57DA:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	mov r0, sb
	subs r0, #0xa
	cmp r1, r0
	bgt _080B57E8
	b _080B5908
_080B57E8:
	adds r0, #0x12
	cmp r1, r0
	blt _080B57F0
	b _080B5908
_080B57F0:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	subs r0, r7, #6
	cmp r1, r0
	bge _080B57FC
	b _080B5908
_080B57FC:
	adds r0, #0x2a
	cmp r1, r0
	ble _080B5804
	b _080B5908
_080B5804:
	ldr r1, [sp, #0x1c]
	adds r1, #0x9c
	ldr r0, _080B5888 @ =0xFFFFFC00
	str r0, [r1]
	ldr r1, [sp, #0x1c]
	adds r1, #0x94
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, [sp, #0x1c]
	adds r0, #0xb2
	ldrb r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	ldr r0, [sp, #0x18]
	bl sub_80B4EEC
	movs r2, #2
	ldrsh r1, [r5, r2]
	lsls r1, r1, #0x10
	movs r3, #8
	ldrsh r2, [r5, r3]
	mov r4, sl
	asrs r0, r4, #0x10
	muls r0, r2, r0
	adds r1, r1, r0
	str r1, [sp]
	movs r6, #4
	ldrsh r0, [r5, r6]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #6
	ldrsh r1, [r5, r0]
	lsls r1, r1, #0xc
	movs r2, #0xa
	ldrsh r3, [r5, r2]
	ldr r2, _080B588C @ =gSineTable
	ldr r4, [sp, #0x14]
	ldr r6, _080B5890 @ =0x000008E4
	adds r0, r4, r6
	ldrh r0, [r0]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	muls r0, r3, r0
	adds r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, sp
	bl sub_80B6778
	movs r6, #0
	ldrsh r1, [r5, r6]
	ldr r2, [sp, #0x14]
	ldr r3, _080B5894 @ =0x000007B4
	adds r0, r2, r3
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	b _080B5908
	.align 2, 0
_080B5888: .4byte 0xFFFFFC00
_080B588C: .4byte gSineTable
_080B5890: .4byte 0x000008E4
_080B5894: .4byte 0x000007B4
_080B5898:
	subs r0, r7, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	adds r0, r7, #0
	adds r0, #0x24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r1, r8
	subs r1, #5
	mov r0, r8
	adds r0, #9
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r0, r3, #0x10
	lsls r1, r1, #0x10
	asrs r3, r0, #0x10
	cmp r0, r1
	ble _080B5908
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r3, r0
	bge _080B5908
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	mov r0, sb
	subs r0, #0xa
	cmp r1, r0
	ble _080B5908
	adds r0, #0x12
	cmp r1, r0
	bge _080B5908
	lsls r0, r6, #0x10
	mov r4, ip
	lsls r1, r4, #0x10
	asrs r2, r0, #0x10
	cmp r0, r1
	blt _080B5908
	mov r6, sl
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bgt _080B5908
	ldr r0, [sp, #0x18]
	movs r1, #5
	bl sub_80B4654
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0x14]
	ldr r3, _080B5940 @ =0x000007B4
	adds r1, r2, r3
_080B5902:
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
_080B5908:
	adds r5, #0x10
	ldr r4, [sp, #0x28]
	lsls r0, r4, #0x18
	movs r6, #0x80
	lsls r6, r6, #0x11
	adds r0, r0, r6
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080B5930
	ldr r1, [sp, #0x28]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xf
	bgt _080B5930
	b _080B55B0
_080B5930:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B5940: .4byte 0x000007B4

	thumb_func_start sub_80B5944
sub_80B5944: @ 0x080B5944
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	ldr r0, _080B59D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r3, _080B59D8 @ =gUnknown_08E2EF8C
	ldr r5, _080B59DC @ =0x000008C7
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	lsrs r3, r1, #0x10
	asrs r1, r1, #0xc
	adds r1, r0, r1
	ldr r0, [r2, #8]
	ldrh r5, [r0, #6]
	ldr r0, [r2, #0xc]
	ldrh r0, [r0, #6]
	adds r7, r0, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _080B59CA
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	ldr r0, _080B59E0 @ =0x030000AC
	adds r2, r5, r0
	mov ip, r4
	subs r0, #0x1c
	adds r4, r5, r0
_080B5992:
	movs r5, #4
	ldrsh r0, [r1, r5]
	cmp r0, r6
	bge _080B59CA
	movs r0, #0xc
	ldrsb r0, [r1, r0]
	cmp r0, #7
	bne _080B59AA
	movs r0, #0xe
	strh r0, [r2]
	ldr r0, [r7, #0x54]
	str r0, [r4]
_080B59AA:
	movs r0, #0xc
	ldrsb r0, [r1, r0]
	cmp r0, #6
	bne _080B59B6
	movs r0, #9
	strh r0, [r2]
_080B59B6:
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	adds r1, #0x10
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, ip
	bne _080B5992
_080B59CA:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B59D4: .4byte gCurTask
_080B59D8: .4byte gUnknown_08E2EF8C
_080B59DC: .4byte 0x000008C7
_080B59E0: .4byte 0x030000AC

	thumb_func_start sub_80B59E4
sub_80B59E4: @ 0x080B59E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1fc
	ldr r0, _080B5AC0 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r7, r0, r2
	ldr r1, [r7]
	ldr r0, [r1, #8]
	ldrh r0, [r0, #6]
	adds r0, r0, r2
	mov r8, r0
	ldr r0, [r1, #0xc]
	ldrh r4, [r0, #6]
	adds r4, r4, r2
	ldr r2, _080B5AC4 @ =gUnknown_08E2EF8C
	ldr r0, _080B5AC8 @ =0x000008C7
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov sb, r0
	add r0, sp, #0x190
	ldr r1, _080B5ACC @ =gUnknown_080DC448
	movs r2, #0x6c
	bl memcpy
	ldr r0, [r4, #0x54]
	asrs r0, r0, #0xa
	movs r1, #0x1e
	subs r6, r1, r0
	movs r1, #0
	mov r5, sp
	movs r2, #0
_080B5A32:
	strh r2, [r5]
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r5, #0x14
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _080B5A32
	mov r0, r8
	adds r0, #0x8c
	movs r2, #2
	ldrsh r0, [r0, r2]
	ldr r1, _080B5AD0 @ =0x000008DE
	adds r4, r7, r1
	movs r2, #0
	ldrsh r1, [r4, r2]
	bl sub_80B5944
	strh r0, [r4]
	movs r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sp
	adds r2, r6, #0
	bl sub_80B65FC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #4
	add r1, sb
	mov r2, sp
	adds r3, r6, #0
	bl sub_80B5AD4
	movs r1, #0
	mov r5, sp
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _080B5AB2
	add r7, sp, #0x190
	adds r6, r0, #0
_080B5A8E:
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	adds r4, #1
	lsls r4, r4, #0x10
	adds r5, #0x14
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r6
	blt _080B5A8E
_080B5AB2:
	add sp, #0x1fc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B5AC0: .4byte gCurTask
_080B5AC4: .4byte gUnknown_08E2EF8C
_080B5AC8: .4byte 0x000008C7
_080B5ACC: .4byte gUnknown_080DC448
_080B5AD0: .4byte 0x000008DE

	thumb_func_start sub_80B5AD4
sub_80B5AD4: @ 0x080B5AD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r2, [sp, #0x28]
	str r3, [sp, #0x2c]
	ldr r2, _080B5B80 @ =gCurTask
	ldr r2, [r2]
	ldrh r3, [r2, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	str r2, [sp, #0x30]
	adds r5, r1, #0
	ldr r4, _080B5B84 @ =gSineTable
	ldr r2, _080B5B88 @ =gUnknown_030008E4
	adds r1, r3, r2
	ldrh r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	str r1, [sp, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x38]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r2, _080B5B8C @ =gUnknown_030008DE
	adds r3, r3, r2
	ldrh r3, [r3]
	mov sb, r3
	mov r0, sb
	adds r0, #0x14
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080B5B3E
	b _080B5CAE
_080B5B3E:
	mov r1, sb
	lsls r0, r1, #0x10
	lsls r1, r2, #0x10
	mov r8, r0
	str r1, [sp, #0x3c]
	cmp r8, r1
	blt _080B5B4E
	b _080B5CAE
_080B5B4E:
	mov r7, sp
_080B5B50:
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldr r3, [sp, #0x30]
	ldr r2, _080B5B90 @ =0x000007B4
	adds r1, r3, r2
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _080B5B66
	b _080B5C88
_080B5B66:
	movs r0, #0xc
	ldrsb r0, [r5, r0]
	adds r0, #1
	cmp r0, #5
	beq _080B5B94
	cmp r0, #5
	blt _080B5B98
	cmp r0, #8
	bgt _080B5B98
	cmp r0, #7
	blt _080B5B98
	b _080B5C88
	.align 2, 0
_080B5B80: .4byte gCurTask
_080B5B84: .4byte gSineTable
_080B5B88: .4byte gUnknown_030008E4
_080B5B8C: .4byte gUnknown_030008DE
_080B5B90: .4byte 0x000007B4
_080B5B94:
	movs r0, #0x10
	b _080B5B9A
_080B5B98:
	movs r0, #8
_080B5B9A:
	strh r0, [r7, #0xc]
	strh r0, [r7, #0xe]
	movs r3, #2
	ldrsh r1, [r5, r3]
	lsls r1, r1, #0x10
	movs r0, #8
	ldrsh r2, [r5, r0]
	ldr r3, [sp, #0x34]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r2, r0
	adds r1, r1, r0
	str r1, [sp]
	movs r0, #6
	ldrsh r1, [r5, r0]
	lsls r1, r1, #0xc
	movs r3, #0xa
	ldrsh r2, [r5, r3]
	ldr r3, [sp, #0x38]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r2, r0
	adds r1, r1, r0
	str r1, [sp, #8]
	movs r1, #4
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0
	strh r0, [r7, #0x10]
	movs r0, #5
	strh r0, [r7, #0x12]
	add r6, sp, #0x14
	ldr r3, [sp, #0x30]
	ldr r2, [r3]
	adds r0, r6, #0
	mov r1, sp
	ldr r3, [sp, #0x2c]
	bl sub_80B67C4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B5C88
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x13
	bgt _080B5C84
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, [sp, #0x28]
	adds r4, r2, r0
	adds r0, r6, #0
	adds r1, r4, #0
	ldr r2, _080B5C28 @ =0x04000005
	bl CpuSet
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r2, [sp, #0x30]
	ldr r3, _080B5C2C @ =0x000007B4
	adds r0, r2, r3
	adds r1, r0, r1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xa
	ble _080B5C30
	strh r0, [r4]
	b _080B5C68
	.align 2, 0
_080B5C28: .4byte 0x04000005
_080B5C2C: .4byte 0x000007B4
_080B5C30:
	movs r0, #0xc
	ldrsb r0, [r5, r0]
	adds r0, #1
	strh r0, [r4]
	cmp r0, #4
	bne _080B5C42
	mov r0, sb
	strh r0, [r4, #8]
	b _080B5C68
_080B5C42:
	cmp r0, #5
	bne _080B5C68
	ldr r1, [sp, #0x30]
	ldr r2, _080B5C78 @ =0x000008E2
	adds r0, r1, r2
	mov r3, r8
	asrs r1, r3, #0xa
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r0, _080B5C7C @ =0x000001FF
	ands r1, r0
	cmp r1, #0
	bne _080B5C68
	mov r0, sp
	bl sub_80B6538
	ldr r0, _080B5C80 @ =0x0000020F
	bl m4aSongNumStart
_080B5C68:
	mov r1, sl
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov sl, r0
	b _080B5C88
	.align 2, 0
_080B5C78: .4byte 0x000008E2
_080B5C7C: .4byte 0x000001FF
_080B5C80: .4byte 0x0000020F
_080B5C84:
	adds r0, r1, #0
	b _080B5CB4
_080B5C88:
	adds r5, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080B5CAE
	mov r1, sb
	lsls r0, r1, #0x10
	mov r8, r0
	ldr r2, [sp, #0x3c]
	cmp r8, r2
	bge _080B5CAE
	b _080B5B50
_080B5CAE:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
_080B5CB4:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80B5CC4
sub_80B5CC4: @ 0x080B5CC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r1, #0
	lsls r0, r0, #0x10
	ldr r1, _080B5D10 @ =gCurTask
	ldr r1, [r1]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r2, r2, r1
	ldr r1, [r2]
	mov sl, r1
	lsrs r3, r0, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r0, #0xca
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r7, r2, r1
	movs r3, #0
	ldrh r0, [r6]
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bhi _080B5D62
	lsls r0, r0, #2
	ldr r1, _080B5D14 @ =_080B5D18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080B5D10: .4byte gCurTask
_080B5D14: .4byte _080B5D18
_080B5D18: @ jump table
	.4byte _080B5D40 @ case 0
	.4byte _080B5D44 @ case 1
	.4byte _080B5D4A @ case 2
	.4byte _080B5D62 @ case 3
	.4byte _080B5D5E @ case 4
	.4byte _080B5D50 @ case 5
	.4byte _080B5D62 @ case 6
	.4byte _080B5D62 @ case 7
	.4byte _080B5D56 @ case 8
	.4byte _080B5D5E @ case 9
_080B5D40:
	adds r3, r2, #4
	b _080B5D62
_080B5D44:
	adds r3, r2, #0
	adds r3, #0x2c
	b _080B5D62
_080B5D4A:
	adds r3, r2, #0
	adds r3, #0x54
	b _080B5D62
_080B5D50:
	adds r3, r2, #0
	adds r3, #0xcc
	b _080B5D62
_080B5D56:
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r3, r2, r1
	b _080B5D62
_080B5D5E:
	adds r3, r2, #0
	adds r3, #0xa4
_080B5D62:
	ldrh r2, [r6, #2]
	mov r8, r2
	ldrh r4, [r6, #4]
	ldrh r0, [r6, #6]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _080B5DE8 @ =0x0400000A
	adds r0, r3, #0
	adds r1, r7, #0
	bl CpuSet
	movs r3, #0x83
	lsls r3, r3, #5
	adds r1, r3, #0
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	orrs r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #8]
	mov r3, r8
	strh r3, [r7, #0x10]
	strh r4, [r7, #0x12]
	movs r0, #4
	ldrsh r1, [r6, r0]
	ldr r0, _080B5DEC @ =0x000008DA
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0xf
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r3, #0
	cmp r1, r0
	bge _080B5DB6
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r2, r0, #0
_080B5DB6:
	strh r2, [r7, #0x14]
	adds r0, r7, #0
	bl sub_80B69B4
	lsls r0, r5, #5
	ldr r1, _080B5DF0 @ =gUnknown_03006246
	adds r0, r0, r1
	ldrh r1, [r6, #0xc]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r6, #0xe]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r6, #0x10]
	strh r1, [r0]
	ldrh r1, [r6, #0x12]
	strh r1, [r0, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B5DE8: .4byte 0x0400000A
_080B5DEC: .4byte 0x000008DA
_080B5DF0: .4byte gUnknown_03006246

	thumb_func_start sub_80B5DF4
sub_80B5DF4: @ 0x080B5DF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	ldr r0, _080B5EA8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r0, r2
	ldr r1, [r2]
	ldr r1, [r1, #8]
	ldrh r1, [r1, #6]
	mov sb, r1
	lsrs r1, r5, #0x10
	mov sl, r1
	asrs r5, r5, #0x10
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	movs r3, #0xca
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r7, r2, r1
	ldr r1, _080B5EAC @ =0x0300011C
	adds r0, r0, r1
	ldrh r3, [r6, #2]
	mov r8, r3
	ldrh r4, [r6, #4]
	ldrh r1, [r6, #6]
	subs r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _080B5EB0 @ =0x0400000A
	adds r1, r7, #0
	bl CpuSet
	movs r1, #0x83
	lsls r1, r1, #5
	adds r0, r1, #0
	orrs r5, r0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	orrs r5, r0
	str r5, [r7, #8]
	mov r3, r8
	strh r3, [r7, #0x10]
	strh r4, [r7, #0x12]
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r7, #0x14]
	ldr r0, _080B5EB4 @ =0x030000AC
	add r0, sb
	ldrh r0, [r0]
	cmp r0, #0x14
	bgt _080B5E72
	cmp r0, #0x13
	bge _080B5E78
_080B5E72:
	adds r0, r7, #0
	bl sub_80B69B4
_080B5E78:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0xb
	ldr r1, _080B5EB8 @ =gUnknown_03006246
	adds r0, r0, r1
	ldrh r1, [r6, #0xc]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r6, #0xe]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r6, #0x10]
	strh r1, [r0]
	ldrh r1, [r6, #0x12]
	strh r1, [r0, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B5EA8: .4byte gCurTask
_080B5EAC: .4byte 0x0300011C
_080B5EB0: .4byte 0x0400000A
_080B5EB4: .4byte 0x030000AC
_080B5EB8: .4byte gUnknown_03006246

	thumb_func_start sub_80B5EBC
sub_80B5EBC: @ 0x080B5EBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r3, r0, #0
	str r1, [sp, #0x28]
	ldr r0, _080B5FC8 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r1, r0, r2
	mov r8, r1
	ldr r5, [r1]
	ldr r1, [r5, #0xc]
	ldrh r1, [r1, #6]
	adds r1, r1, r2
	str r1, [sp, #0x2c]
	lsls r3, r3, #0x10
	str r3, [sp, #0x30]
	asrs r4, r3, #0x10
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #3
	movs r2, #0xca
	lsls r2, r2, #1
	adds r1, r1, r2
	mov r3, r8
	adds r7, r3, r1
	ldr r2, _080B5FCC @ =gUnknown_08E2EF8C
	ldr r6, _080B5FD0 @ =0x000008C7
	adds r1, r5, r6
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r3, [sp, #0x28]
	movs r6, #8
	ldrsh r1, [r3, r6]
	lsls r1, r1, #4
	adds r6, r2, r1
	ldr r1, _080B5FD4 @ =gSineTable
	mov sb, r1
	ldr r2, _080B5FD8 @ =gUnknown_030008E4
	adds r1, r0, r2
	ldrh r2, [r1]
	lsls r1, r2, #1
	add r1, sb
	ldrh r1, [r1]
	str r1, [sp, #0x38]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #1
	add r2, sb
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	ldr r1, _080B5FDC @ =0x0300007C
	adds r0, r0, r1
	ldr r2, _080B5FE0 @ =0x0400000A
	adds r1, r7, #0
	bl CpuSet
	movs r2, #0x83
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r4, r0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	orrs r4, r0
	str r4, [r7, #8]
	ldr r3, [sp, #0x28]
	movs r0, #4
	ldrsh r1, [r3, r0]
	ldr r2, _080B5FE4 @ =0x000008DA
	adds r5, r5, r2
	movs r3, #0
	ldrsh r0, [r5, r3]
	subs r0, #0xf
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r2, #0
	cmp r1, r0
	bge _080B5F76
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r3, r0, #0
_080B5F76:
	movs r2, #0
	strh r3, [r7, #0x14]
	ldr r1, [sp, #0x2c]
	ldr r0, [r1, #0x54]
	asrs r0, r0, #0xa
	movs r1, #0x1e
	subs r1, r1, r0
	str r1, [sp, #0x34]
	mov r0, sp
	movs r1, #8
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	mov r1, sp
	movs r0, #5
	strh r0, [r1, #0x12]
	movs r2, #4
	ldrsh r0, [r6, r2]
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	movs r2, #0
	ldr r3, [sp, #0x30]
	str r3, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	lsls r0, r0, #0x10
	str r0, [sp, #0x40]
	mov r1, sl
	lsls r1, r1, #0x10
	mov sl, r1
	add r4, sp, #0x14
_080B5FB2:
	movs r1, #0
	lsls r2, r2, #0x10
	mov sb, r2
_080B5FB8:
	mov r2, sb
	cmp r2, #0
	beq _080B5FEC
	ldr r0, _080B5FE8 @ =0x000008E2
	add r0, r8
	ldrh r0, [r0]
	rsbs r3, r0, #0
	b _080B5FF2
	.align 2, 0
_080B5FC8: .4byte gCurTask
_080B5FCC: .4byte gUnknown_08E2EF8C
_080B5FD0: .4byte 0x000008C7
_080B5FD4: .4byte gSineTable
_080B5FD8: .4byte gUnknown_030008E4
_080B5FDC: .4byte 0x0300007C
_080B5FE0: .4byte 0x0400000A
_080B5FE4: .4byte 0x000008DA
_080B5FE8: .4byte 0x000008E2
_080B5FEC:
	ldr r0, _080B60D0 @ =0x000008E2
	add r0, r8
	ldrh r3, [r0]
_080B5FF2:
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r3, r0
	ldr r0, _080B60D4 @ =0x000003FF
	ands r3, r0
	movs r0, #2
	ldrsh r1, [r6, r0]
	lsls r1, r1, #0x10
	movs r0, #8
	ldrsh r2, [r6, r0]
	mov ip, r2
	ldr r2, [sp, #0x40]
	asrs r0, r2, #0x10
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	str r1, [sp]
	lsls r0, r3, #1
	ldr r2, _080B60D8 @ =gSineTable
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	adds r1, r1, r0
	str r1, [sp]
	movs r0, #6
	ldrsh r1, [r6, r0]
	lsls r1, r1, #0xc
	movs r0, #0xa
	ldrsh r2, [r6, r0]
	mov ip, r2
	mov r2, sl
	asrs r0, r2, #0x10
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	str r1, [sp, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r3, r2
	lsls r0, r0, #1
	ldr r3, _080B60D8 @ =gSineTable
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [sp, #8]
	mov r3, r8
	ldr r2, [r3]
	adds r0, r4, #0
	mov r1, sp
	ldr r3, [sp, #0x34]
	bl sub_80B67C4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B6086
	ldrh r0, [r4, #2]
	strh r0, [r7, #0x10]
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl sub_80B69B4
_080B6086:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080B5FB8
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080B5FB2
	ldr r6, [sp, #0x3c]
	asrs r0, r6, #0xb
	ldr r1, _080B60DC @ =gUnknown_03006246
	adds r0, r0, r1
	ldr r2, [sp, #0x28]
	ldrh r1, [r2, #0xc]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r2, #0xe]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r2, #0x10]
	strh r1, [r0]
	ldrh r1, [r2, #0x12]
	strh r1, [r0, #8]
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B60D0: .4byte 0x000008E2
_080B60D4: .4byte 0x000003FF
_080B60D8: .4byte gSineTable
_080B60DC: .4byte gUnknown_03006246

	thumb_func_start sub_80B60E0
sub_80B60E0: @ 0x080B60E0
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r0, _080B6188 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r4, [r0]
	lsls r2, r2, #0x10
	asrs r7, r2, #0x10
	lsls r1, r7, #2
	adds r1, r1, r7
	lsls r1, r1, #3
	movs r2, #0xca
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r6, r0, r1
	ldrh r2, [r5]
	subs r2, #0xb
	lsls r2, r2, #0x10
	asrs r2, r2, #0x13
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #3
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r0, r1
	ldr r2, _080B618C @ =0x0400000A
	adds r1, r6, #0
	bl CpuSet
	movs r0, #0x83
	lsls r0, r0, #5
	adds r1, r0, #0
	adds r0, r7, #0
	orrs r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #8]
	ldrh r0, [r5, #2]
	strh r0, [r6, #0x10]
	ldrh r0, [r5, #4]
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	movs r2, #4
	ldrsh r1, [r5, r2]
	ldr r3, _080B6190 @ =0x000008DA
	adds r4, r4, r3
	movs r2, #0
	ldrsh r0, [r4, r2]
	subs r0, #0xf
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r3, #0
	cmp r1, r0
	bge _080B6160
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r2, r0, #0
_080B6160:
	strh r2, [r6, #0x14]
	adds r0, r6, #0
	bl sub_80B69B4
	lsls r0, r7, #5
	ldr r1, _080B6194 @ =gUnknown_03006246
	adds r0, r0, r1
	ldrh r1, [r5, #0xc]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r5, #0xe]
	strh r1, [r0]
	adds r0, #8
	ldrh r1, [r5, #0x10]
	strh r1, [r0]
	ldrh r1, [r5, #0x12]
	strh r1, [r0, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6188: .4byte gCurTask
_080B618C: .4byte 0x0400000A
_080B6190: .4byte 0x000008DA
_080B6194: .4byte gUnknown_03006246

	thumb_func_start sub_80B6198
sub_80B6198: @ 0x080B6198
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #4]
	ldrh r6, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r6, r2
	mov ip, r0
	ldr r0, [r7, #8]
	ldrh r4, [r0, #6]
	ldr r0, [r7, #0xc]
	ldrh r3, [r0, #6]
	adds r3, r3, r2
	adds r2, #0x8c
	adds r0, r4, r2
	ldr r0, [r0]
	str r0, [sp]
	adds r2, #4
	adds r0, r4, r2
	ldr r5, [r0]
	ldr r2, _080B6220 @ =0xFFFFEC00
	adds r0, r5, r2
	lsls r0, r0, #1
	movs r2, #0xf2
	lsls r2, r2, #7
	subs r2, r2, r0
	mov sb, r2
	ldr r0, [r3, #0x54]
	subs r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldr r3, _080B6224 @ =gUnknown_030008E0
	adds r6, r6, r3
	strh r0, [r6]
	movs r2, #0x8b
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r5, [r0]
	ldr r3, _080B6228 @ =0x030000A0
	adds r4, r4, r3
	ldr r2, [r4]
	movs r0, #0x78
	subs r0, r0, r2
	lsls r0, r0, #0xe
	adds r5, r5, r0
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080B622C
	movs r1, #0x8c
	lsls r1, r1, #4
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #8
	ble _080B621A
	movs r1, #8
_080B621A:
	adds r0, r1, #0
	b _080B622E
	.align 2, 0
_080B6220: .4byte 0xFFFFEC00
_080B6224: .4byte gUnknown_030008E0
_080B6228: .4byte 0x030000A0
_080B622C:
	lsrs r0, r2, #0x10
_080B622E:
	movs r2, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _080B62B2
	ldr r3, _080B62E8 @ =0x000008E2
	add r3, ip
	mov r8, r3
	ldr r6, _080B62EC @ =gSineTable
	ldr r7, _080B62F0 @ =0x0000FF60
	mov sl, r7
	str r0, [sp, #4]
_080B6246:
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _080B62F4 @ =0x000005F4
	adds r0, r0, r1
	mov r3, ip
	adds r2, r3, r0
	str r5, [r2]
	ldr r7, [sp]
	str r7, [r2, #4]
	mov r0, sb
	str r0, [r2, #8]
	lsls r0, r4, #7
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, _080B62F8 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	adds r3, r0, #0
	lsls r0, r3, #1
	adds r0, r0, r6
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r3, r7
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r7, #0
	ldrsh r0, [r0, r7]
	asrs r1, r1, #7
	str r1, [r2, #0xc]
	movs r0, #0xa0
	str r0, [r2, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r2, #0x14]
	mov r3, sl
	strh r3, [r2, #0x18]
	movs r0, #1
	strb r0, [r2, #0x1a]
	movs r7, #0
	strb r7, [r2, #0x1b]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #4]
	cmp r0, r1
	blt _080B6246
_080B62B2:
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	cmp r0, #7
	bgt _080B62D6
	ldr r3, _080B62F4 @ =0x000005F4
	movs r2, #0
_080B62BE:
	asrs r0, r1, #0x10
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	add r1, ip
	strb r2, [r1, #0x1a]
	adds r0, #1
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #7
	ble _080B62BE
_080B62D6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B62E8: .4byte 0x000008E2
_080B62EC: .4byte gSineTable
_080B62F0: .4byte 0x0000FF60
_080B62F4: .4byte 0x000005F4
_080B62F8: .4byte 0x000003FF

	thumb_func_start sub_80B62FC
sub_80B62FC: @ 0x080B62FC
	push {r4, r5, lr}
	ldr r0, [r0, #4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r2, #0
_080B630A:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080B636C @ =0x000005F4
	adds r0, r0, r1
	adds r3, r4, r0
	ldrb r0, [r3, #0x1a]
	cmp r0, #0
	beq _080B6356
	ldr r1, [r3, #0xc]
	lsls r1, r1, #8
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [r3, #0x10]
	lsls r1, r1, #8
	ldr r0, [r3, #4]
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, [r3, #8]
	ldr r1, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r3, #8]
	movs r5, #0x18
	ldrsh r0, [r3, r5]
	adds r1, r1, r0
	str r1, [r3, #0x14]
	ldrb r0, [r3, #0x1b]
	adds r0, #1
	movs r1, #0
	strb r0, [r3, #0x1b]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _080B6356
	strb r1, [r3, #0x1a]
_080B6356:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080B630A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B636C: .4byte 0x000005F4

	thumb_func_start sub_80B6370
sub_80B6370: @ 0x080B6370
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _080B6448 @ =gCurTask
	ldr r2, [r2]
	ldrh r2, [r2, #6]
	mov sl, r2
	movs r2, #0xc0
	lsls r2, r2, #0x12
	mov r3, sl
	adds r4, r3, r2
	ldr r3, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r0, #2
	add r0, sb
	lsls r0, r0, #3
	ldr r5, _080B644C @ =0x000004B4
	adds r0, r0, r5
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r3, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r2
	ldr r0, [r0, #0x54]
	asrs r0, r0, #8
	movs r3, #0x1e
	subs r3, r3, r0
	ldr r0, [r1]
	str r0, [sp]
	ldr r0, [r1, #4]
	str r0, [sp, #4]
	ldr r0, [r1, #8]
	lsls r0, r0, #4
	str r0, [sp, #8]
	mov r0, sp
	movs r2, #0
	movs r1, #8
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	mov r1, sp
	movs r0, #5
	strh r0, [r1, #0x12]
	add r7, sp, #0x14
	ldr r2, [r4]
	adds r0, r7, #0
	bl sub_80B67C4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B6438
	movs r0, #2
	ldrsh r6, [r7, r0]
	movs r1, #4
	ldrsh r5, [r7, r1]
	movs r3, #6
	ldrsh r0, [r7, r3]
	subs r5, r5, r0
	ldr r0, _080B6450 @ =0x03000004
	add r0, sl
	ldr r2, _080B6454 @ =0x0400000A
	mov r1, r8
	bl CpuSet
	mov r4, sb
	adds r4, #0x18
	ldr r0, _080B6458 @ =0x000C0060
	orrs r0, r4
	mov r1, r8
	str r0, [r1, #8]
	strh r6, [r1, #0x10]
	ldr r0, _080B645C @ =gUnknown_030008E0
	add r0, sl
	ldrh r0, [r0]
	adds r0, r0, r5
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #0x14]
	mov r0, r8
	bl sub_80B69B4
	lsls r4, r4, #5
	ldr r0, _080B6460 @ =gUnknown_03006246
	adds r4, r4, r0
	ldrh r0, [r7, #0xc]
	strh r0, [r4]
	adds r4, #8
	ldrh r0, [r7, #0xe]
	strh r0, [r4]
	adds r4, #8
	ldrh r0, [r7, #0x10]
	strh r0, [r4]
	ldrh r0, [r7, #0x12]
	strh r0, [r4, #8]
_080B6438:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6448: .4byte gCurTask
_080B644C: .4byte 0x000004B4
_080B6450: .4byte 0x03000004
_080B6454: .4byte 0x0400000A
_080B6458: .4byte 0x000C0060
_080B645C: .4byte gUnknown_030008E0
_080B6460: .4byte gUnknown_03006246

	thumb_func_start sub_80B6464
sub_80B6464: @ 0x080B6464
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _080B6524 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r4, r2, r3
	ldr r0, [r4]
	ldr r5, _080B6528 @ =0x030000F4
	adds r6, r2, r5
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	adds r0, r0, r3
	ldr r0, [r0, #0x54]
	asrs r0, r0, #0xa
	movs r3, #0x1e
	subs r3, r3, r0
	ldr r0, [r1]
	str r0, [sp]
	ldr r0, [r1, #4]
	str r0, [sp, #4]
	ldr r0, [r1, #8]
	str r0, [sp, #8]
	mov r0, sp
	movs r2, #0
	movs r1, #8
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	mov r1, sp
	movs r0, #5
	strh r0, [r1, #0x12]
	add r7, sp, #0x14
	ldr r2, [r4]
	adds r0, r7, #0
	bl sub_80B67C4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B6514
	movs r1, #2
	ldrsh r0, [r7, r1]
	mov r8, r0
	movs r0, #4
	ldrsh r5, [r7, r0]
	movs r1, #6
	ldrsh r0, [r7, r1]
	subs r5, r5, r0
	ldr r2, _080B652C @ =0x0400000A
	adds r0, r6, #0
	adds r1, r6, #0
	bl CpuSet
	mov r0, sb
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x14
	ldr r0, _080B6530 @ =0x000C0060
	orrs r0, r4
	str r0, [r6, #8]
	mov r1, r8
	strh r1, [r6, #0x10]
	strh r5, [r6, #0x12]
	movs r0, #0xc0
	strh r0, [r6, #0x14]
	adds r0, r6, #0
	bl sub_80B69B4
	lsls r4, r4, #5
	ldr r0, _080B6534 @ =gUnknown_03006246
	adds r4, r4, r0
	ldrh r0, [r7, #0xc]
	strh r0, [r4]
	adds r4, #8
	ldrh r0, [r7, #0xe]
	strh r0, [r4]
	adds r4, #8
	ldrh r0, [r7, #0x10]
	strh r0, [r4]
	ldrh r0, [r7, #0x12]
	strh r0, [r4, #8]
_080B6514:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6524: .4byte gCurTask
_080B6528: .4byte 0x030000F4
_080B652C: .4byte 0x0400000A
_080B6530: .4byte 0x000C0060
_080B6534: .4byte gUnknown_03006246

	thumb_func_start sub_80B6538
sub_80B6538: @ 0x080B6538
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _080B65D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r6, r0, r3
	ldr r0, [r6]
	ldr r1, [r0, #8]
	ldrh r2, [r1, #6]
	adds r3, r3, r2
	mov ip, r3
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r1, _080B65D8 @ =0x030000A0
	adds r0, r2, r1
	ldr r1, [r0]
	movs r0, #0x78
	subs r0, r0, r1
	lsls r0, r0, #0xe
	adds r5, r5, r0
	movs r1, #0
	ldr r0, _080B65DC @ =0x0300008C
	adds r7, r2, r0
	movs r2, #0
	mov r8, r2
_080B6576:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080B65E0 @ =0x000006D4
	adds r0, r0, r2
	adds r3, r6, r0
	ldrb r2, [r3, #0x1a]
	cmp r2, #0
	bne _080B65E8
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [r4, #4]
	str r0, [r3, #4]
	ldr r0, [r4, #8]
	str r0, [r3, #8]
	ldr r1, [r4]
	subs r1, r5, r1
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	asrs r0, r0, #0xb
	str r0, [r3, #0xc]
	ldr r1, [r4, #4]
	ldr r0, _080B65E4 @ =0xFF973C00
	adds r1, r1, r0
	ldr r0, [r7]
	subs r0, r0, r1
	asrs r0, r0, #6
	str r0, [r3, #0x10]
	ldr r1, [r4, #8]
	asrs r1, r1, #4
	movs r0, #0x8c
	lsls r0, r0, #8
	subs r0, r0, r1
	mov r1, ip
	adds r1, #0x90
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #2
	str r0, [r3, #0x14]
	strh r2, [r3, #0x18]
	movs r0, #1
	strb r0, [r3, #0x1a]
	mov r1, r8
	strb r1, [r3, #0x1b]
	b _080B65F2
	.align 2, 0
_080B65D4: .4byte gCurTask
_080B65D8: .4byte 0x030000A0
_080B65DC: .4byte 0x0300008C
_080B65E0: .4byte 0x000006D4
_080B65E4: .4byte 0xFF973C00
_080B65E8:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _080B6576
_080B65F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80B65FC
sub_80B65FC: @ 0x080B65FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	str r1, [sp, #0x28]
	ldr r1, _080B6710 @ =gCurTask
	ldr r1, [r1]
	ldrh r1, [r1, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r1, r1, r3
	str r1, [sp, #0x30]
	ldr r1, [r1]
	str r1, [sp, #0x34]
	ldr r1, [r1, #8]
	ldrh r2, [r1, #6]
	ldr r4, [sp, #0x34]
	ldr r1, [r4, #0xc]
	ldrh r1, [r1, #6]
	adds r1, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r5, #0x8b
	lsls r5, r5, #4
	adds r0, r4, r5
	movs r4, #2
	ldrsh r3, [r0, r4]
	mov sb, r3
	ldr r5, _080B6714 @ =0x030000A0
	adds r0, r2, r5
	ldr r0, [r0]
	movs r3, #0x78
	subs r0, r3, r0
	asrs r0, r0, #2
	add sb, r0
	ldr r4, _080B6718 @ =0x0300008C
	adds r0, r2, r4
	movs r4, #2
	ldrsh r5, [r0, r4]
	str r5, [sp, #0x38]
	ldr r5, _080B671C @ =0x03000090
	adds r2, r2, r5
	ldr r0, [r2]
	asrs r0, r0, #8
	subs r3, r3, r0
	mov r8, r3
	ldr r0, [r1, #0x54]
	asrs r0, r0, #0xa
	movs r1, #0x1e
	subs r1, r1, r0
	str r1, [sp, #0x2c]
	add r8, r1
	movs r2, #0
	mov r7, sp
_080B666E:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080B6720 @ =0x000006D4
	adds r0, r0, r1
	ldr r3, [sp, #0x30]
	adds r5, r3, r0
	ldrb r0, [r5, #0x1a]
	str r2, [sp, #0x3c]
	cmp r0, #0
	beq _080B674A
	ldr r3, [r5]
	ldr r0, [r5, #0xc]
	adds r3, r3, r0
	str r3, [r5]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x10]
	adds r2, r2, r0
	str r2, [r5, #4]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x14]
	adds r1, r1, r0
	str r1, [r5, #8]
	asrs r3, r3, #0x10
	asrs r2, r2, #0x10
	asrs r1, r1, #0xc
	mov r0, sb
	subs r0, #0xa
	cmp r3, r0
	ble _080B66DA
	adds r0, #0x14
	cmp r3, r0
	bge _080B66DA
	ldr r0, [sp, #0x38]
	subs r0, #0xa
	cmp r2, r0
	ble _080B66DA
	ldr r0, [sp, #0x38]
	adds r0, #8
	cmp r2, r0
	bge _080B66DA
	mov r0, r8
	subs r0, #0x11
	cmp r1, r0
	blt _080B66DA
	adds r0, #0x25
	cmp r1, r0
	bgt _080B66DA
	ldr r0, [sp, #0x34]
	movs r1, #5
	bl sub_80B4654
_080B66DA:
	ldr r0, [r5]
	str r0, [sp]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	movs r4, #0
	movs r1, #0
	movs r0, #8
	strh r0, [r7, #0xc]
	strh r0, [r7, #0xe]
	strh r1, [r7, #0x10]
	movs r0, #5
	strh r0, [r7, #0x12]
	add r6, sp, #0x14
	ldr r0, [sp, #0x30]
	ldr r2, [r0]
	adds r0, r6, #0
	mov r1, sp
	ldr r3, [sp, #0x2c]
	bl sub_80B67C4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B6724
	strb r4, [r5, #0x1a]
	b _080B674A
	.align 2, 0
_080B6710: .4byte gCurTask
_080B6714: .4byte 0x030000A0
_080B6718: .4byte 0x0300008C
_080B671C: .4byte 0x03000090
_080B6720: .4byte 0x000006D4
_080B6724:
	mov r1, sl
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	lsls r5, r4, #2
	adds r5, r5, r4
	lsls r5, r5, #2
	ldr r2, [sp, #0x28]
	adds r5, r2, r5
	adds r0, r6, #0
	adds r1, r5, #0
	ldr r2, _080B6770 @ =0x04000005
	bl CpuSet
	movs r0, #6
	strh r0, [r5]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sl, r4
_080B674A:
	ldr r3, [sp, #0x3c]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r3, r4
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080B666E
	mov r5, sl
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B6770: .4byte 0x04000005
_080B6774:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_80B6778
sub_80B6778: @ 0x080B6778
	push {r4, r5, lr}
	ldr r0, [r0, #4]
	ldrh r0, [r0, #6]
	ldr r3, _080B67A8 @ =gUnknown_03000744
	adds r2, r0, r3
	movs r4, #0
	movs r5, #0
_080B6786:
	ldrb r3, [r2, #0x1a]
	cmp r3, #0
	bne _080B67AC
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	ldr r0, [r1, #8]
	str r0, [r2, #8]
	str r3, [r2, #0xc]
	str r3, [r2, #0x10]
	str r3, [r2, #0x14]
	strh r3, [r2, #0x18]
	strb r5, [r2, #0x1b]
	movs r0, #4
	strb r0, [r2, #0x1a]
	b _080B67BE
	.align 2, 0
_080B67A8: .4byte gUnknown_03000744
_080B67AC:
	lsls r0, r4, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	adds r2, #0x1c
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080B6786
_080B67BE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80B67C4
sub_80B67C4: @ 0x080B67C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	mov sl, r1
	adds r7, r2, #0
	str r3, [sp]
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r7, #0xc]
	ldrh r3, [r0, #6]
	adds r3, r3, r1
	ldr r1, _080B6898 @ =0x000008BC
	adds r0, r7, r1
	ldrh r1, [r0]
	rsbs r1, r1, #0
	ldr r2, _080B689C @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldr r4, _080B68A0 @ =gSineTable
	lsls r0, r1, #1
	adds r0, r0, r4
	movs r5, #0
	ldrsh r2, [r0, r5]
	lsls r2, r2, #2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r0, #0
	ldrsh r5, [r1, r0]
	mov r1, sl
	ldr r0, [r1]
	ldr r4, [r3, #0x4c]
	subs r4, r4, r0
	ldr r1, [r1, #4]
	ldr r3, _080B68A4 @ =0x000008B4
	adds r0, r7, r3
	ldr r3, [r0]
	subs r3, r3, r1
	asrs r0, r2, #8
	asrs r3, r3, #8
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r5, r5, #6
	asrs r4, r4, #8
	adds r0, r5, #0
	muls r0, r4, r0
	adds r1, r1, r0
	asrs r1, r1, #2
	mov sb, r1
	rsbs r2, r2, #0
	asrs r2, r2, #8
	adds r0, r2, #0
	muls r0, r4, r0
	adds r1, r5, #0
	muls r1, r3, r1
	adds r0, r0, r1
	asrs r3, r0, #1
	ldr r5, _080B68A8 @ =0x000005AC
	adds r0, r7, r5
	ldr r2, [r0]
	ldr r0, _080B68AC @ =0x000008DF
	adds r4, r7, r0
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r0, r7, #0
	adds r0, #0xb4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r2
	ble _080B6916
	cmp r3, r0
	bge _080B6916
	movs r1, #0x8e
	lsls r1, r1, #4
	adds r0, r7, r1
	ldrb r5, [r0]
	ldr r2, _080B68B0 @ =0x000008E1
	adds r0, r7, r2
	ldrb r6, [r0]
	lsls r1, r5, #0x10
	movs r0, #0xb0
	adds r0, r0, r7
	mov ip, r0
	cmp r1, #0
	beq _080B68F2
_080B6882:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x9f
	ble _080B68B4
	asrs r0, r1, #0x11
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r5, #0x10
	b _080B68E6
	.align 2, 0
_080B6898: .4byte 0x000008BC
_080B689C: .4byte 0x000003FF
_080B68A0: .4byte gSineTable
_080B68A4: .4byte 0x000008B4
_080B68A8: .4byte 0x000005AC
_080B68AC: .4byte 0x000008DF
_080B68B0: .4byte 0x000008E1
_080B68B4:
	ldrb r1, [r4]
	cmp r2, r1
	bge _080B68C2
	lsls r1, r5, #0x10
	asrs r0, r1, #0x11
	adds r0, r2, r0
	b _080B68E2
_080B68C2:
	lsls r1, r2, #3
	adds r0, r7, #0
	adds r0, #0xb4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r3
	ble _080B68D8
	lsls r1, r5, #0x10
	asrs r0, r1, #0x11
	adds r0, r2, r0
	b _080B68E2
_080B68D8:
	cmp r0, r3
	bge _080B68F2
	lsls r1, r5, #0x10
	asrs r0, r1, #0x11
	subs r0, r2, r0
_080B68E2:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080B68E6:
	asrs r0, r1, #0x11
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #0x10
	cmp r1, #0
	bne _080B6882
_080B68F2:
	lsls r3, r6, #0x10
	asrs r5, r3, #0x10
	lsls r0, r5, #3
	add r0, ip
	ldr r1, [r0]
	asrs r1, r1, #1
	rsbs r0, r1, #0
	lsls r2, r0, #3
	adds r2, r2, r0
	asrs r2, r2, #3
	lsls r0, r1, #3
	adds r0, r0, r1
	asrs r7, r0, #3
	str r3, [sp, #8]
	cmp sb, r2
	ble _080B6916
	cmp sb, r7
	blt _080B691A
_080B6916:
	movs r0, #0
	b _080B69A2
_080B691A:
	mov r2, r8
	strh r6, [r2, #0xa]
	mov r3, sl
	ldrh r4, [r3, #0xe]
	subs r4, r6, r4
	movs r1, #0x12
	ldrsh r0, [r3, r1]
	lsls r0, r0, #0x10
	ldr r2, [sp, #4]
	ldr r1, [r2, #0xc]
	lsls r5, r5, #2
	adds r1, r5, r1
	ldr r1, [r1]
	bl __divsi3
	subs r4, r4, r0
	ldr r3, [sp]
	adds r4, r4, r3
	mov r0, r8
	strh r4, [r0, #4]
	mov r1, sb
	lsls r0, r1, #4
	add r0, sb
	lsls r0, r0, #3
	subs r0, r0, r1
	adds r1, r7, #0
	bl __divsi3
	movs r1, #0x78
	subs r1, r1, r0
	mov r2, r8
	strh r1, [r2, #8]
	mov r3, sl
	ldrh r0, [r3, #0xc]
	subs r1, r1, r0
	strh r1, [r2, #2]
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080B6982
	lsls r0, r0, #3
	ldr r2, [sp, #4]
	ldr r1, [r2, #0xc]
	adds r1, r5, r1
	ldr r1, [r1]
	bl __divsi3
	lsls r1, r0, #3
	adds r1, r1, r0
	asrs r1, r1, #2
	mov r3, r8
	strh r1, [r3, #6]
	b _080B6986
_080B6982:
	mov r5, r8
	strh r0, [r5, #6]
_080B6986:
	ldr r0, [sp, #4]
	ldr r1, [r0, #0xc]
	ldr r2, [sp, #8]
	asrs r0, r2, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	movs r1, #0
	mov r3, r8
	strh r0, [r3, #0xc]
	strh r0, [r3, #0x12]
	strh r1, [r3, #0x10]
	strh r1, [r3, #0xe]
	movs r0, #1
_080B69A2:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80B69B4
sub_80B69B4: @ 0x080B69B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r2, [r5, #4]
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _080B69E8
	ldr r0, _080B69E4 @ =gRefSpriteTables
	ldr r0, [r0]
	ldrh r1, [r5, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov r8, r1
	b _080B69FC
	.align 2, 0
_080B69E4: .4byte gRefSpriteTables
_080B69E8:
	ldr r0, _080B6B04 @ =gRefSpriteTables
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	mov r8, r0
_080B69FC:
	mov r1, r8
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1e]
	ldrh r0, [r1, #4]
	ldrh r1, [r1, #6]
	movs r3, #0x10
	ldrsh r2, [r5, r3]
	lsrs r0, r0, #1
	subs r2, r2, r0
	str r2, [sp]
	movs r7, #0x12
	ldrsh r0, [r5, r7]
	lsrs r1, r1, #1
	subs r0, r0, r1
	str r0, [sp, #4]
	movs r6, #0
	mov r0, r8
	ldrh r0, [r0, #2]
	str r0, [sp, #8]
	mov r1, r8
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r6, r0
	bge _080B6AF2
	ldr r3, _080B6B08 @ =0x040000D4
	mov sb, r3
	ldr r7, _080B6B0C @ =0x000001FF
	mov sl, r7
_080B6A34:
	ldr r0, _080B6B04 @ =gRefSpriteTables
	ldr r1, [r0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	ldrh r0, [r5, #0x14]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_80C108C
	adds r4, r0, #0
	ldr r0, _080B6B10 @ =iwram_end
	ldr r0, [r0]
	cmp r4, r0
	beq _080B6AF2
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	bne _080B6A6C
	ldr r0, _080B6B14 @ =gUnknown_03002C00
	ldrb r0, [r0]
	subs r0, #1
	strb r0, [r5, #0x1d]
_080B6A6C:
	mov r3, r8
	ldrh r1, [r3]
	adds r1, r1, r6
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r7, r0
	mov r7, sb
	str r0, [r7]
	str r4, [r7, #4]
	ldr r0, _080B6B18 @ =0x80000003
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r3, [r4, #2]
	mov r2, sl
	ands r2, r3
	movs r1, #0xff
	ldrb r0, [r4]
	ldr r7, [sp, #4]
	adds r0, r7, r0
	ands r0, r1
	movs r7, #0xc0
	lsls r7, r7, #2
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r4]
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	strh r3, [r4, #2]
	ldr r0, [r5, #8]
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #9
	orrs r0, r3
	ldr r3, [sp]
	adds r2, r3, r2
	mov r7, sl
	ands r2, r7
	orrs r0, r2
	strh r0, [r4, #2]
	ldrb r2, [r5, #0x1f]
	lsls r2, r2, #0xc
	ldrh r0, [r4, #4]
	adds r2, r2, r0
	strh r2, [r4, #4]
	ldr r1, [r5, #8]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r1, r0
	lsrs r1, r1, #2
	orrs r1, r2
	strh r1, [r4, #4]
	ldr r0, [r5]
	ldr r2, _080B6B1C @ =0xF9FF0000
	adds r0, r0, r2
	lsrs r0, r0, #5
	adds r1, r1, r0
	strh r1, [r4, #4]
	adds r1, r6, #1
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	cmp r1, r0
	blt _080B6A34
_080B6AF2:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6B04: .4byte gRefSpriteTables
_080B6B08: .4byte 0x040000D4
_080B6B0C: .4byte 0x000001FF
_080B6B10: .4byte iwram_end
_080B6B14: .4byte gUnknown_03002C00
_080B6B18: .4byte 0x80000003
_080B6B1C: .4byte 0xF9FF0000

	thumb_func_start sub_80B6B20
sub_80B6B20: @ 0x080B6B20
	ldr r1, _080B6B30 @ =gUnknown_03001EA0
	ldr r0, _080B6B34 @ =0x06010000
	str r0, [r1]
	ldr r1, _080B6B38 @ =gUnknown_03001E9C
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_080B6B30: .4byte gUnknown_03001EA0
_080B6B34: .4byte 0x06010000
_080B6B38: .4byte gUnknown_03001E9C

	thumb_func_start sub_80B6B3C
sub_80B6B3C: @ 0x080B6B3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r6, [sp, #0x20]
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r0, [sp, #0x28]
	mov sb, r0
	ldr r5, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	mov sl, r0
	ldr r0, [sp, #0x34]
	mov ip, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r1, r1, #0xe
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r1, r1, r4
	str r1, [r7, #4]
	movs r1, #0
	movs r0, #0
	strh r0, [r7, #0xa]
	lsls r2, r2, #0xb
	adds r2, r2, r4
	str r2, [r7, #0xc]
	strh r0, [r7, #0x18]
	strh r0, [r7, #0x1a]
	strh r3, [r7, #0x1c]
	strh r0, [r7, #0x1e]
	strh r0, [r7, #0x20]
	strh r0, [r7, #0x22]
	strh r0, [r7, #0x24]
	strh r6, [r7, #0x26]
	mov r2, r8
	strh r2, [r7, #0x28]
	adds r0, r7, #0
	adds r0, #0x2a
	mov r2, sb
	strb r2, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	strh r5, [r7, #0x2e]
	mov r0, sl
	strh r0, [r7, #0x30]
	mov r2, ip
	strh r2, [r7, #0x32]
	adds r0, r7, #0
	bl sub_80BD384
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80B6BB8
sub_80B6BB8: @ 0x080B6BB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	adds r7, r0, #0
	mov sb, r2
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x4c]
	ldr r4, [sp, #0x50]
	ldr r5, [sp, #0x54]
	ldr r6, [sp, #0x58]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov ip, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r2, sp
	cmp r7, #0
	beq _080B6BF8
	adds r2, r7, #0
_080B6BF8:
	lsls r0, r1, #0x18
	adds r7, r0, #0
	cmp r7, #0
	beq _080B6C1C
	ldr r1, _080B6C14 @ =gUnknown_03001E9C
	ldr r0, [r1]
	cmp r0, #0
	bne _080B6C0E
	ldr r0, _080B6C18 @ =gUnknown_03001EA0
	ldr r0, [r0]
	str r0, [r1]
_080B6C0E:
	ldr r0, [r1]
	b _080B6C20
	.align 2, 0
_080B6C14: .4byte gUnknown_03001E9C
_080B6C18: .4byte gUnknown_03001EA0
_080B6C1C:
	ldr r0, _080B6C60 @ =gUnknown_03001EA0
	ldr r0, [r0]
_080B6C20:
	str r0, [r2]
	movs r1, #0
	mov r0, ip
	strh r0, [r2, #0xc]
	ldr r0, [sp, #0x44]
	str r0, [r2, #8]
	mov r0, r8
	strh r0, [r2, #0x10]
	strh r3, [r2, #0x12]
	lsls r0, r4, #6
	strh r0, [r2, #0x14]
	strh r1, [r2, #0x16]
	ldr r0, _080B6C64 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	strb r5, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r6, [r2, #0x1f]
	subs r0, #0x11
	str r0, [r2, #0x20]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	asrs r3, r7, #0x18
	cmp r3, #0
	beq _080B6C68
	cmp r3, #1
	beq _080B6C84
	b _080B6C90
	.align 2, 0
_080B6C60: .4byte gUnknown_03001EA0
_080B6C64: .4byte 0x0000FFFF
_080B6C68:
	ldr r2, _080B6C7C @ =gUnknown_03001EA0
	mov r0, sb
	lsls r1, r0, #5
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _080B6C80 @ =gUnknown_03001E9C
	str r3, [r0]
	b _080B6C90
	.align 2, 0
_080B6C7C: .4byte gUnknown_03001EA0
_080B6C80: .4byte gUnknown_03001E9C
_080B6C84:
	ldr r2, _080B6CA0 @ =gUnknown_03001E9C
	mov r0, sb
	lsls r1, r0, #5
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_080B6C90:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B6CA0: .4byte gUnknown_03001E9C

	thumb_func_start sub_80B6CA4
sub_80B6CA4: @ 0x080B6CA4
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	ldrh r0, [r2]
	ldr r1, _080B6CD4 @ =0x0000FFFF
	cmp r0, r1
	beq _080B6CC8
	adds r4, r1, #0
_080B6CB4:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #4]
	cmp r0, r1
	bge _080B6CC0
	adds r3, r1, #0
_080B6CC0:
	adds r2, #8
	ldrh r0, [r2]
	cmp r0, r4
	bne _080B6CB4
_080B6CC8:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B6CD4: .4byte 0x0000FFFF

	thumb_func_start sub_80B6CD8
sub_80B6CD8: @ 0x080B6CD8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, _080B6D48 @ =sub_80B6D78
	movs r1, #0xa2
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _080B6D4C @ =sub_80B759C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	ldr r2, _080B6D50 @ =0x0300027D
	adds r0, r1, r2
	movs r2, #0
	strb r5, [r0]
	ldr r3, _080B6D54 @ =0x0300027C
	adds r0, r1, r3
	strb r7, [r0]
	rsbs r4, r4, #0
	lsrs r4, r4, #0x1f
	ldr r0, _080B6D58 @ =0x0300027E
	adds r3, r1, r0
	strb r4, [r3]
	ldr r4, _080B6D5C @ =0x03000280
	adds r0, r1, r4
	strb r2, [r0]
	ldr r0, _080B6D60 @ =0x03000284
	adds r4, r1, r0
	strh r2, [r4]
	subs r0, #3
	adds r2, r1, r0
	movs r0, #0x10
	strb r0, [r2]
	ldr r2, _080B6D64 @ =0x0300027F
	adds r1, r1, r2
	strb r6, [r1]
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B6D68
	movs r0, #1
	lsls r0, r7
	orrs r0, r6
	strb r0, [r1]
	b _080B6D6E
	.align 2, 0
_080B6D48: .4byte sub_80B6D78
_080B6D4C: .4byte sub_80B759C
_080B6D50: .4byte 0x0300027D
_080B6D54: .4byte 0x0300027C
_080B6D58: .4byte 0x0300027E
_080B6D5C: .4byte 0x03000280
_080B6D60: .4byte 0x03000284
_080B6D64: .4byte 0x0300027F
_080B6D68:
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r4]
_080B6D6E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B6D78
sub_80B6D78: @ 0x080B6D78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r0, _080B6E4C @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov r8, r0
	ldr r1, _080B6E50 @ =gDispCnt
	movs r2, #0x92
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080B6E54 @ =gUnknown_030035C0
	movs r4, #0
	ldr r0, _080B6E58 @ =0x00000703
	strh r0, [r1, #2]
	ldr r0, _080B6E5C @ =gUnknown_03003C10
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	ldr r1, _080B6E60 @ =0x0300000C
	adds r0, r7, r1
	ldr r3, _080B6E64 @ =0x000001AB
	movs r1, #0x1e
	str r1, [sp]
	movs r2, #0x14
	mov sb, r2
	str r2, [sp, #4]
	str r4, [sp, #8]
	movs r1, #1
	mov sl, r1
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #0
	movs r2, #7
	bl sub_80B6B3C
	ldr r0, _080B6E68 @ =gBldRegs
	strh r4, [r0, #4]
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r1, _080B6E6C @ =gUnknown_03001EA0
	ldr r0, _080B6E70 @ =0x06010000
	str r0, [r1]
	ldr r0, _080B6E74 @ =gUnknown_03001E9C
	str r4, [r0]
	ldr r0, _080B6E78 @ =gStageData
	ldrb r6, [r0, #0xd]
	cmp r6, #0
	bne _080B6EC4
	ldr r2, _080B6E7C @ =0x0300027E
	adds r0, r7, r2
	ldrb r2, [r0]
	cmp r2, #0
	beq _080B6E94
	ldr r1, _080B6E80 @ =0x0300004C
	adds r0, r7, r1
	ldr r5, _080B6E84 @ =gUnknown_080E3074
	ldr r2, _080B6E88 @ =0x0300027D
	adds r4, r7, r2
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrh r2, [r1, #4]
	ldrh r3, [r1]
	str r6, [sp]
	movs r1, #0x82
	lsls r1, r1, #1
	str r1, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	ldrb r1, [r4]
	lsls r1, r1, #3
	adds r1, r1, r5
	ldrb r1, [r1, #2]
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	movs r1, #1
	bl sub_80B6BB8
	ldr r2, _080B6E8C @ =0x03000074
	adds r0, r7, r2
	ldr r3, _080B6E90 @ =0x0000046D
	str r6, [sp]
	movs r1, #0xa5
	lsls r1, r1, #1
	str r1, [sp, #4]
	movs r1, #0x1c
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	mov r1, sl
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	movs r1, #1
	movs r2, #0x28
	bl sub_80B6BB8
	b _080B6FA2
	.align 2, 0
_080B6E4C: .4byte gCurTask
_080B6E50: .4byte gDispCnt
_080B6E54: .4byte gUnknown_030035C0
_080B6E58: .4byte 0x00000703
_080B6E5C: .4byte gUnknown_03003C10
_080B6E60: .4byte 0x0300000C
_080B6E64: .4byte 0x000001AB
_080B6E68: .4byte gBldRegs
_080B6E6C: .4byte gUnknown_03001EA0
_080B6E70: .4byte 0x06010000
_080B6E74: .4byte gUnknown_03001E9C
_080B6E78: .4byte gStageData
_080B6E7C: .4byte 0x0300027E
_080B6E80: .4byte 0x0300004C
_080B6E84: .4byte gUnknown_080E3074
_080B6E88: .4byte 0x0300027D
_080B6E8C: .4byte 0x03000074
_080B6E90: .4byte 0x0000046D
_080B6E94:
	ldr r1, _080B6EBC @ =0x0300009C
	adds r0, r7, r1
	ldr r3, _080B6EC0 @ =0x0000046D
	str r2, [sp]
	movs r1, #0x42
	str r1, [sp, #4]
	movs r1, #0x1c
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r1, #1
	movs r2, #0x20
	bl sub_80B6BB8
	movs r0, #0x43
	bl m4aSongNumStart
	b _080B7012
	.align 2, 0
_080B6EBC: .4byte 0x0300009C
_080B6EC0: .4byte 0x0000046D
_080B6EC4:
	movs r6, #0
	movs r2, #0
	str r2, [sp, #0x18]
	movs r5, #0
	movs r4, #0
	ldr r0, _080B6FAC @ =0x03000074
	adds r3, r7, r0
	ldr r1, _080B6FB0 @ =0x030000C4
	adds r1, r1, r7
	mov sl, r1
	ldr r2, _080B6FB4 @ =0x0300004C
	adds r2, r7, r2
	str r2, [sp, #0x1c]
	adds r0, #0x28
	adds r0, r7, r0
	str r0, [sp, #0x20]
	ldr r1, _080B6FB8 @ =0x0300027F
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r2, #1
_080B6EEC:
	adds r0, r1, #0
	asrs r0, r4
	ands r0, r2
	cmp r0, #0
	beq _080B6EFC
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080B6EFC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _080B6EEC
	cmp r6, #1
	bls _080B6F0E
	movs r2, #1
	str r2, [sp, #0x18]
_080B6F0E:
	ldr r0, _080B6FBC @ =0x0000027E
	add r0, r8
	mov sb, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B6F1C
	ldr r5, _080B6FC0 @ =0x0000FFF0
_080B6F1C:
	ldr r7, _080B6FC4 @ =0x00000481
	movs r4, #0
	str r4, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	lsls r5, r5, #0x10
	movs r1, #0xe0
	lsls r1, r1, #0xd
	adds r5, r5, r1
	asrs r5, r5, #0x10
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	movs r0, #8
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	adds r0, r3, #0
	movs r1, #1
	movs r2, #8
	adds r3, r7, #0
	bl sub_80B6BB8
	str r4, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, sl
	movs r1, #1
	movs r2, #6
	adds r3, r7, #0
	bl sub_80B6BB8
	str r4, [sp]
	movs r0, #0x58
	str r0, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	movs r0, #9
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	movs r1, #1
	movs r2, #0xc
	adds r3, r7, #0
	bl sub_80B6BB8
	str r4, [sp]
	movs r6, #0x8c
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r0, #0xa
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r0, [sp, #0x20]
	movs r1, #1
	movs r2, #0x16
	adds r3, r7, #0
	bl sub_80B6BB8
	mov r2, sb
	ldrb r4, [r2]
	cmp r4, #0
	beq _080B6FC8
_080B6FA2:
	movs r0, #0x42
	bl m4aSongNumStart
	b _080B7012
	.align 2, 0
_080B6FAC: .4byte 0x03000074
_080B6FB0: .4byte 0x030000C4
_080B6FB4: .4byte 0x0300004C
_080B6FB8: .4byte 0x0300027F
_080B6FBC: .4byte 0x0000027E
_080B6FC0: .4byte 0x0000FFF0
_080B6FC4: .4byte 0x00000481
_080B6FC8:
	mov r0, r8
	adds r0, #0xec
	str r4, [sp]
	movs r1, #0x24
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	movs r1, #0xc
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #1
	movs r2, #0x14
	adds r3, r7, #0
	bl sub_80B6BB8
	movs r0, #0x8a
	lsls r0, r0, #1
	add r0, r8
	str r4, [sp]
	movs r1, #0xac
	str r1, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	movs r1, #0xe
	str r1, [sp, #0x10]
	str r4, [sp, #0x14]
	movs r1, #1
	movs r2, #8
	adds r3, r7, #0
	bl sub_80B6BB8
	ldr r0, _080B7064 @ =0x00000282
	add r0, r8
	strb r4, [r0]
	movs r0, #0x43
	bl m4aSongNumStart
_080B7012:
	movs r4, #0
	movs r5, #0
_080B7016:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r0, r1
	add r0, r8
	ldr r2, _080B7068 @ =gUnknown_080E309C
	lsls r1, r4, #3
	adds r1, r1, r2
	ldrh r2, [r1, #4]
	ldrh r3, [r1]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	ldrb r1, [r1, #2]
	str r1, [sp, #0x10]
	str r5, [sp, #0x14]
	movs r1, #1
	bl sub_80B6BB8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _080B7016
	ldr r0, _080B706C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080B7070 @ =sub_80B7314
	str r0, [r1, #8]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7064: .4byte 0x00000282
_080B7068: .4byte gUnknown_080E309C
_080B706C: .4byte gCurTask
_080B7070: .4byte sub_80B7314

	thumb_func_start sub_80B7074
sub_80B7074: @ 0x080B7074
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	ldr r0, _080B70CC @ =gCurTask
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov sb, r0
	ldr r1, _080B70D0 @ =gUnknown_080E30DC
	mov r0, sp
	movs r2, #0x18
	bl memcpy
	add r4, sp, #0x18
	ldr r1, _080B70D4 @ =gUnknown_080E30F4
	adds r0, r4, #0
	movs r2, #0x18
	bl memcpy
	movs r5, #0
	ldr r0, _080B70D8 @ =gStageData
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	bne _080B70F8
	ldr r1, _080B70DC @ =0x0300027E
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B70E8
	ldr r2, _080B70E0 @ =0x0300004C
	adds r0, r7, r2
	bl DisplaySprite
	ldr r3, _080B70E4 @ =0x03000074
	adds r0, r7, r3
	bl DisplaySprite
	b _080B715E
	.align 2, 0
_080B70CC: .4byte gCurTask
_080B70D0: .4byte gUnknown_080E30DC
_080B70D4: .4byte gUnknown_080E30F4
_080B70D8: .4byte gStageData
_080B70DC: .4byte 0x0300027E
_080B70E0: .4byte 0x0300004C
_080B70E4: .4byte 0x03000074
_080B70E8:
	ldr r1, _080B70F4 @ =0x0300009C
	adds r0, r7, r1
	bl DisplaySprite
	b _080B715E
	.align 2, 0
_080B70F4: .4byte 0x0300009C
_080B70F8:
	ldr r2, _080B72B4 @ =0x03000074
	adds r0, r7, r2
	bl DisplaySprite
	ldr r3, _080B72B8 @ =0x0300004C
	adds r0, r7, r3
	bl DisplaySprite
	ldr r1, _080B72BC @ =0x0300009C
	adds r0, r7, r1
	bl DisplaySprite
	ldr r2, _080B72C0 @ =0x030000C4
	adds r0, r7, r2
	bl DisplaySprite
	ldr r3, _080B72C4 @ =0x0300027E
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B717A
	ldr r5, _080B72C8 @ =0x030000EC
	adds r6, r7, r5
	ldr r0, _080B72CC @ =0x03000282
	adds r4, r7, r0
	ldrb r1, [r4]
	movs r5, #1
	movs r0, #1
	ands r0, r1
	adds r0, #0xc
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r1, _080B72D0 @ =0x03000114
	adds r6, r7, r1
	ldrb r0, [r4]
	eors r0, r5
	ands r0, r5
	adds r0, #0xe
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl DisplaySprite
	ldr r5, _080B72D4 @ =0x0000FFF0
_080B715E:
	ldr r0, _080B72D8 @ =0x0000027E
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B717A
	movs r2, #0xa1
	lsls r2, r2, #2
	add r2, sb
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_080B717A:
	movs r1, #0xa1
	lsls r1, r1, #2
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #8
	str r3, [sp, #0x34]
	cmp r0, #0
	blt _080B7192
	ldrh r0, [r1]
	str r0, [sp, #0x34]
_080B7192:
	ldrh r4, [r1]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	movs r1, #0x54
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	lsrs r4, r4, #5
	movs r6, #0
	lsls r5, r5, #0x10
	str r5, [sp, #0x40]
	lsls r4, r4, #0x10
	str r4, [sp, #0x3c]
	ldr r1, _080B72DC @ =gSineTable
	mov r8, r1
	ldr r2, _080B72E0 @ =0x000003FF
	mov sl, r2
_080B71BA:
	movs r0, #0x92
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r3, [sp, #0x30]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	movs r4, #0
	lsls r7, r6, #3
	adds r5, r6, #1
	str r5, [sp, #0x38]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
_080B71D4:
	lsls r2, r4, #1
	mov r0, sp
	adds r3, r0, r2
	movs r0, #0x92
	muls r0, r4, r0
	adds r0, r5, r0
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #7
	subs r1, r1, r4
	muls r0, r1, r0
	asrs r0, r0, #9
	strh r0, [r3]
	add r2, sp
	adds r2, #0x18
	movs r0, #0x46
	muls r0, r4, r0
	adds r0, r5, r0
	mov r3, sl
	ands r0, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	asrs r0, r0, #9
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #6
	bls _080B71D4
	mov r0, sp
	ldr r1, [sp, #0x34]
	bl sub_80B1560
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #0x18
	ldr r1, [sp, #0x34]
	bl sub_80B1560
	lsls r4, r4, #0x10
	adds r2, r7, r6
	lsls r2, r2, #4
	adds r2, r2, r6
	ldr r5, [sp, #0x3c]
	asrs r1, r5, #0x10
	adds r2, r2, r1
	mov r1, sl
	ands r2, r1
	lsls r1, r2, #1
	add r1, r8
	movs r5, #0
	ldrsh r3, [r1, r5]
	lsls r1, r3, #2
	adds r1, r1, r3
	asrs r1, r1, #0xb
	movs r3, #0xd8
	lsls r3, r3, #0xf
	adds r4, r4, r3
	asrs r4, r4, #0x10
	adds r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r0, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #1
	adds r2, r2, r5
	lsls r2, r2, #1
	add r2, r8
	movs r1, #0
	ldrsh r2, [r2, r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	asrs r1, r1, #0xb
	movs r2, #0xba
	lsls r2, r2, #0xf
	adds r0, r0, r2
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x40]
	asrs r1, r3, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080B72E4 @ =0x0000027F
	add r0, sb
	ldrb r0, [r0]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B72E8
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r5, #0x3c
	adds r0, r0, r5
	mov r1, sb
	adds r6, r1, r0
	b _080B72EE
	.align 2, 0
_080B72B4: .4byte 0x03000074
_080B72B8: .4byte 0x0300004C
_080B72BC: .4byte 0x0300009C
_080B72C0: .4byte 0x030000C4
_080B72C4: .4byte 0x0300027E
_080B72C8: .4byte 0x030000EC
_080B72CC: .4byte 0x03000282
_080B72D0: .4byte 0x03000114
_080B72D4: .4byte 0x0000FFF0
_080B72D8: .4byte 0x0000027E
_080B72DC: .4byte gSineTable
_080B72E0: .4byte 0x000003FF
_080B72E4: .4byte 0x0000027F
_080B72E8:
	movs r6, #0x95
	lsls r6, r6, #2
	add r6, sb
_080B72EE:
	strh r4, [r6, #0x10]
	strh r2, [r6, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r2, [sp, #0x38]
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #6
	bhi _080B7304
	b _080B71BA
_080B7304:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80B7314
sub_80B7314: @ 0x080B7314
	push {r4, lr}
	ldr r0, _080B7350 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r0, _080B7354 @ =gStageData
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	bne _080B7372
	ldr r0, _080B7358 @ =0x03000281
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080B7372
	subs r0, #1
	strb r0, [r1]
	ldr r1, _080B735C @ =0x0300027E
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B7368
	ldr r0, _080B7360 @ =0x0300005C
	adds r1, r2, r0
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	ldr r0, _080B7364 @ =0x03000084
	b _080B736A
	.align 2, 0
_080B7350: .4byte gCurTask
_080B7354: .4byte gStageData
_080B7358: .4byte 0x03000281
_080B735C: .4byte 0x0300027E
_080B7360: .4byte 0x0300005C
_080B7364: .4byte 0x03000084
_080B7368:
	ldr r0, _080B7398 @ =0x030000AC
_080B736A:
	adds r1, r2, r0
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
_080B7372:
	movs r1, #0xa1
	lsls r1, r1, #2
	adds r4, r4, r1
	ldrh r0, [r4]
	adds r0, #0x80
	strh r0, [r4]
	bl sub_80B7074
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080B7392
	ldr r0, _080B739C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080B73A0 @ =sub_80B73A4
	str r0, [r1, #8]
_080B7392:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B7398: .4byte 0x030000AC
_080B739C: .4byte gCurTask
_080B73A0: .4byte sub_80B73A4

	thumb_func_start sub_80B73A4
sub_80B73A4: @ 0x080B73A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080B73FC @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r0, _080B7400 @ =0x03000284
	adds r1, r6, r0
	ldrh r0, [r1]
	adds r0, #0x80
	movs r7, #0
	strh r0, [r1]
	bl sub_80B7074
	ldr r0, _080B7404 @ =gStageData
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _080B73DE
	ldr r1, _080B7408 @ =0x0300027F
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x7f
	bne _080B7410
_080B73DE:
	ldr r1, _080B740C @ =0x03000280
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x78
	bls _080B7462
	movs r0, #1
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r7, [r4, #4]
	movs r0, #0x40
	b _080B742E
	.align 2, 0
_080B73FC: .4byte gCurTask
_080B7400: .4byte 0x03000284
_080B7404: .4byte gStageData
_080B7408: .4byte 0x0300027F
_080B740C: .4byte 0x03000280
_080B7410:
	ldr r0, _080B7440 @ =gUnknown_03003F8C
	ldrh r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080B7448
	movs r0, #0x6a
	bl m4aSongNumStart
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r7, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
_080B742E:
	strh r0, [r4, #6]
	strh r7, [r4, #0xa]
	movs r0, #0xbf
	strh r0, [r4, #8]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _080B7444 @ =sub_80B75A0
	str r0, [r1, #8]
	b _080B7462
	.align 2, 0
_080B7440: .4byte gUnknown_03003F8C
_080B7444: .4byte sub_80B75A0
_080B7448:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080B7462
	ldr r1, _080B746C @ =0x03000282
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r2, #1
	eors r1, r2
	strb r1, [r0]
	movs r0, #0x6c
	bl m4aSongNumStart
_080B7462:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B746C: .4byte 0x03000282

	thumb_func_start sub_80B7470
sub_80B7470: @ 0x080B7470
	push {r4, r5, r6, lr}
	ldr r0, _080B74F4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	movs r5, #0
	ldr r0, _080B74F8 @ =gStageData
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	bne _080B7538
	ldr r1, _080B74FC @ =0x0300027E
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B74C8
	adds r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	ldr r2, _080B7500 @ =gSaveGame
	cmp r0, #0x7f
	bne _080B74B8
	adds r3, r2, #0
	adds r3, #0x33
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080B74B8
	movs r5, #1
	movs r0, #4
	orrs r0, r1
	strb r0, [r3]
_080B74B8:
	ldr r1, _080B7504 @ =0x0000027F
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x32
	strb r1, [r0]
	bl sub_8001E58
_080B74C8:
	ldr r1, _080B7508 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080B750C @ =gUnknown_03003F94
	ldr r0, _080B7510 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080B7514 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080B7518 @ =gUnknown_03006208
	ldr r0, _080B751C @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	cmp r5, #0
	beq _080B7520
	movs r0, #0
	bl sub_80AB120
	b _080B7596
	.align 2, 0
_080B74F4: .4byte gCurTask
_080B74F8: .4byte gStageData
_080B74FC: .4byte 0x0300027E
_080B7500: .4byte gSaveGame
_080B7504: .4byte 0x0000027F
_080B7508: .4byte 0x0000FFFF
_080B750C: .4byte gUnknown_03003F94
_080B7510: .4byte gUnknown_03003D20
_080B7514: .4byte gUnknown_03006840
_080B7518: .4byte gUnknown_03006208
_080B751C: .4byte gUnknown_03003F34
_080B7520:
	ldr r0, _080B7534 @ =gStageData
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #2
	movs r1, #4
	bl sub_8002210
	b _080B7596
	.align 2, 0
_080B7534: .4byte gStageData
_080B7538:
	ldr r1, _080B7570 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080B7574 @ =gUnknown_03003F94
	ldr r0, _080B7578 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080B757C @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _080B7580 @ =gUnknown_03006208
	ldr r0, _080B7584 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080B7588 @ =0x03000282
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080B7568
	subs r1, #4
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B758C
_080B7568:
	movs r0, #1
	bl sub_808ADF0
	b _080B7596
	.align 2, 0
_080B7570: .4byte 0x0000FFFF
_080B7574: .4byte gUnknown_03003F94
_080B7578: .4byte gUnknown_03003D20
_080B757C: .4byte gUnknown_03006840
_080B7580: .4byte gUnknown_03006208
_080B7584: .4byte gUnknown_03003F34
_080B7588: .4byte 0x03000282
_080B758C:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_80B1AF4
_080B7596:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80B759C
sub_80B759C: @ 0x080B759C
	bx lr
	.align 2, 0

	thumb_func_start sub_80B75A0
sub_80B75A0: @ 0x080B75A0
	push {r4, r5, lr}
	ldr r5, _080B75D8 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	ldr r0, _080B75DC @ =0x03000284
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	bl sub_80B7074
	adds r0, r4, #0
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080B75D0
	ldr r1, [r5]
	ldr r0, _080B75E0 @ =sub_80B7470
	str r0, [r1, #8]
_080B75D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B75D8: .4byte gCurTask
_080B75DC: .4byte 0x03000284
_080B75E0: .4byte sub_80B7470

	thumb_func_start sub_80B75E4
sub_80B75E4: @ 0x080B75E4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r4, r7, #0
	adds r4, #0x1c
	bl sub_80B77D0
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_80B8E10
	ldr r1, _080B7628 @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	beq _080B762C
	cmp r0, #9
	beq _080B762C
	ldrb r0, [r1, #9]
	cmp r0, #7
	beq _080B762C
	adds r0, r4, #0
	bl sub_80B8E5C
	cmp r0, #0
	beq _080B762C
	ldr r1, [r4, #0x2c]
	ldr r2, [r4, #0x30]
	adds r0, r4, #0
	bl sub_80B8DA8
	b _080B76C0
	.align 2, 0
_080B7628: .4byte gStageData
_080B762C:
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	ldr r2, _080B76B8 @ =0xFFFFF400
	cmp r0, #0
	beq _080B763C
	movs r2, #0xc0
	lsls r2, r2, #4
_080B763C:
	movs r1, #8
	ldrsh r0, [r7, r1]
	ldr r1, [r5, #0x10]
	adds r1, r1, r0
	adds r1, r1, r2
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	ldr r2, [r5, #0x14]
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_80B8DA8
	ldr r3, [r4, #0xc]
	ldr r2, [r6, #0x10]
	ldr r1, [r4, #0x10]
	ldr r0, [r6, #0x14]
	subs r1, r1, r0
	subs r3, r3, r2
	cmp r3, #0
	bge _080B7666
	rsbs r3, r3, #0
_080B7666:
	ldr r0, _080B76BC @ =0x000017FF
	cmp r3, r0
	bgt _080B76C0
	cmp r1, #0
	bge _080B7672
	rsbs r1, r1, #0
_080B7672:
	cmp r1, r0
	bgt _080B76C0
	adds r0, r4, #0
	movs r1, #4
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	beq _080B7688
	b _080B77C4
_080B7688:
	adds r0, r4, #0
	movs r1, #5
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	beq _080B769A
	b _080B77C4
_080B769A:
	adds r0, r4, #0
	movs r1, #1
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8CAC
	cmp r0, #0
	bne _080B76AC
	b _080B77C4
_080B76AC:
	adds r0, r4, #0
	movs r1, #1
	bl sub_80B8D18
	b _080B77C4
	.align 2, 0
_080B76B8: .4byte 0xFFFFF400
_080B76BC: .4byte 0x000017FF
_080B76C0:
	adds r0, r4, #0
	bl sub_80B8DC8
	ldr r1, _080B77CC @ =gStageData
	ldrb r0, [r1, #0xa]
	cmp r0, #7
	beq _080B7728
	cmp r0, #9
	beq _080B7728
	ldrb r0, [r1, #9]
	cmp r0, #7
	beq _080B7728
	adds r0, r4, #0
	movs r1, #0xe
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0x11
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0x10
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0xf
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0x12
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
_080B7728:
	adds r0, r4, #0
	movs r1, #9
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0xa
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0xb
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0xc
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #0xd
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #8
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #7
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #3
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #2
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
	cmp r0, #0
	bne _080B77C4
	adds r0, r4, #0
	movs r1, #1
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_80B8D60
_080B77C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B77CC: .4byte gStageData

	thumb_func_start sub_80B77D0
sub_80B77D0: @ 0x080B77D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r3, r1, #0
	adds r7, r2, #0
	ldr r0, [r6, #0xc]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0x3f
	bne _080B7866
	ldr r4, _080B7844 @ =gUnknown_03006868
	ldr r0, [r4]
	ldr r1, _080B7848 @ =0x00196225
	mov sb, r1
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, _080B784C @ =0x3C6EF35F
	mov r8, r1
	adds r2, r0, r1
	str r2, [r4]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r2
	mov ip, r4
	cmp r0, #0
	bne _080B7866
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r5, #0xf
	adds r3, r5, #0
	ands r3, r0
	cmp r3, #2
	bne _080B7828
	adds r0, r7, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080B782C
_080B7828:
	cmp r3, #1
	bne _080B7854
_080B782C:
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _080B7848 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B784C @ =0x3C6EF35F
	adds r0, r0, r1
	mov r1, ip
	str r0, [r1]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x13
	ldr r1, _080B7850 @ =0xFFFFF000
	b _080B7862
	.align 2, 0
_080B7844: .4byte gUnknown_03006868
_080B7848: .4byte 0x00196225
_080B784C: .4byte 0x3C6EF35F
_080B7850: .4byte 0xFFFFF000
_080B7854:
	mov r0, sb
	muls r0, r2, r0
	add r0, r8
	str r0, [r4]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x12
	ldr r1, _080B7874 @ =0xFFFFE000
_080B7862:
	adds r0, r0, r1
	strh r0, [r6, #8]
_080B7866:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B7874: .4byte 0xFFFFE000

	thumb_func_start sub_80B7878
sub_80B7878: @ 0x080B7878
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	adds r1, #0x4a
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r5, _080B78B4 @ =gUnknown_03006868
	cmp r0, #0
	beq _080B78A0
	ldr r1, [r5]
	ldr r0, _080B78B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B78BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #4
	movs r1, #0xff
	ands r0, r1
	adds r0, #0x1e
	strh r0, [r4, #0x18]
_080B78A0:
	movs r0, #0x16
	ldrsh r3, [r4, r0]
	ldrh r0, [r2, #0x20]
	movs r1, #0xc1
	rsbs r1, r1, #0
	ands r0, r1
	cmp r0, #0
	beq _080B78C0
	adds r3, #0x5a
	b _080B78CA
	.align 2, 0
_080B78B4: .4byte gUnknown_03006868
_080B78B8: .4byte 0x00196225
_080B78BC: .4byte 0x3C6EF35F
_080B78C0:
	ldrh r0, [r2, #0x1e]
	ands r0, r1
	cmp r0, #0
	beq _080B78CA
	adds r3, #2
_080B78CA:
	ldr r1, [r5]
	ldr r0, _080B790C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7910 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #4
	movs r1, #0xff
	ands r0, r1
	adds r1, r0, #0
	adds r1, #0x78
	cmp r1, r3
	ble _080B78E6
	adds r1, r3, #0
_080B78E6:
	strh r1, [r4, #0x16]
	lsls r0, r1, #0x10
	cmp r0, #0
	beq _080B78F4
	movs r6, #1
	subs r0, r1, #1
	strh r0, [r4, #0x16]
_080B78F4:
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080B7904
	movs r6, #0
	subs r0, r1, #1
	strh r0, [r4, #0x18]
_080B7904:
	strh r6, [r4, #0x14]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B790C: .4byte 0x00196225
_080B7910: .4byte 0x3C6EF35F

	thumb_func_start sub_80B7914
sub_80B7914: @ 0x080B7914
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080B7940 @ =0x040000D4
	ldr r0, _080B7944 @ =gUnknown_08E2EFA8
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _080B7948 @ =0x8400011A
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r4, #0
	adds r0, #0x1c
	bl sub_80B8C2C
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80B9744
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B7940: .4byte 0x040000D4
_080B7944: .4byte gUnknown_08E2EFA8
_080B7948: .4byte 0x8400011A

	thumb_func_start sub_80B794C
sub_80B794C: @ 0x080B794C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x1c
	bl sub_80B8C6C
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_80B9770
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B7968
sub_80B7968: @ 0x080B7968
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	movs r0, #0x1c
	adds r0, r0, r5
	mov sb, r0
	ldr r4, [r5]
	adds r0, r5, #0
	bl sub_80B79C8
	ldr r0, _080B79C4 @ =gUnknown_08E2F410
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r3, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	bl _call_via_r3
	mov r0, sb
	adds r1, r6, #0
	mov r2, r8
	bl sub_80B8C70
	mov r0, sb
	bl sub_80B8E54
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_80B7878
	ldr r0, [r5, #0xc]
	adds r0, #1
	str r0, [r5, #0xc]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B79C4: .4byte gUnknown_08E2F410

	thumb_func_start sub_80B79C8
sub_80B79C8: @ 0x080B79C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #0x14]
	mov r1, sb
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	subs r4, r0, r2
	subs r5, r1, r3
	mov r0, r8
	ldr r6, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r6, r0
	cmp r6, #0
	bne _080B7A84
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r1, sb
	bl sub_80B9774
	adds r1, r4, #0
	cmp r4, #0
	bge _080B7A08
	rsbs r1, r4, #0
_080B7A08:
	ldr r0, _080B7A20 @ =0x0002CFFF
	cmp r1, r0
	bgt _080B7A28
	adds r1, r5, #0
	cmp r5, #0
	bge _080B7A16
	rsbs r1, r5, #0
_080B7A16:
	ldr r0, _080B7A24 @ =0x0001DFFF
	cmp r1, r0
	bgt _080B7A28
	str r6, [r7, #0x10]
	b _080B7A84
	.align 2, 0
_080B7A20: .4byte 0x0002CFFF
_080B7A24: .4byte 0x0001DFFF
_080B7A28:
	ldr r0, [r7, #0x10]
	adds r0, #1
	str r0, [r7, #0x10]
	cmp r0, #0xef
	ble _080B7A84
	adds r1, r4, #0
	cmp r4, #0
	bge _080B7A3A
	rsbs r1, r4, #0
_080B7A3A:
	ldr r0, _080B7A74 @ =0x0002CFFF
	movs r3, #0
	cmp r1, r0
	ble _080B7A44
	adds r3, r4, #0
_080B7A44:
	adds r1, r5, #0
	cmp r5, #0
	bge _080B7A4C
	rsbs r1, r5, #0
_080B7A4C:
	ldr r0, _080B7A78 @ =0x0001DFFF
	movs r4, #0
	cmp r1, r0
	ble _080B7A56
	adds r4, r5, #0
_080B7A56:
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r2, r7, r0
	str r4, [sp]
	mov r0, r8
	mov r1, sb
	bl sub_80B9650
	adds r4, r0, #0
	cmp r4, #0
	beq _080B7A7C
	movs r0, #0
	str r0, [r7, #0x10]
	b _080B7A84
	.align 2, 0
_080B7A74: .4byte 0x0002CFFF
_080B7A78: .4byte 0x0001DFFF
_080B7A7C:
	mov r0, r8
	bl sub_8008E38
	str r4, [r7, #0x10]
_080B7A84:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B7A94
sub_80B7A94: @ 0x080B7A94
	push {lr}
	adds r0, #0x1c
	bl sub_80B8E74
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_80B7AA4
sub_80B7AA4: @ 0x080B7AA4
	movs r1, #0x14
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_80B7AAC
nullsub_80B7AAC:
    bx lr
    .align 2, 0

	thumb_func_start sub_80B7AB0
sub_80B7AB0: @ 0x080B7AB0
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xa1
	lsls r2, r2, #1
	adds r2, r2, r0
	mov ip, r2
	ldrb r2, [r2]
	lsls r2, r2, #1
	adds r4, r0, #0
	adds r4, #0x42
	adds r2, r4, r2
	ldrh r3, [r2]
	adds r2, r1, #0
	bics r2, r3
	adds r0, #0x40
	strh r2, [r0]
	mov r3, ip
	ldrb r0, [r3]
	adds r0, #1
	movs r2, #0x7f
	ands r0, r2
	strb r0, [r3]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r4, r4, r0
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80B7AEC
sub_80B7AEC: @ 0x080B7AEC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r4]
	cmp r0, #3
	beq _080B7B5C
	ldr r3, [r5, #4]
	movs r1, #4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080B7B5C
	ldr r0, [r2, #4]
	ands r0, r1
	cmp r0, #0
	beq _080B7B24
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r4, #0x28]
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r1, r0
	bge _080B7BEA
	movs r3, #0xf0
	lsls r3, r3, #4
	b _080B7BEA
_080B7B24:
	movs r0, #0x30
	ldrsh r1, [r5, r0]
	cmp r1, #0x7a
	bne _080B7B52
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0x7a
	beq _080B7B4C
	ldr r1, [r4, #0x18]
	ldr r0, _080B7B48 @ =0xFFFFF800
	movs r3, #0xf0
	lsls r3, r3, #4
	cmp r1, r0
	bge _080B7BEA
	movs r3, #0xc0
	lsls r3, r3, #2
	b _080B7BEA
	.align 2, 0
_080B7B48: .4byte 0xFFFFF800
_080B7B4C:
	movs r3, #0x80
	lsls r3, r3, #1
	b _080B7BEA
_080B7B52:
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r3, r0
	cmp r3, #0
	beq _080B7B60
_080B7B5C:
	movs r0, #0
	b _080B7C06
_080B7B60:
	cmp r1, #0x21
	bne _080B7B88
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #0x21
	beq _080B7B72
	movs r3, #0x80
	lsls r3, r3, #5
	b _080B7BEA
_080B7B72:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bge _080B7B7A
	rsbs r1, r1, #0
_080B7B7A:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080B7B82
	rsbs r0, r0, #0
_080B7B82:
	adds r0, r1, r0
	asrs r3, r0, #8
	b _080B7BEA
_080B7B88:
	movs r0, #0x1c
	ldrsh r1, [r5, r0]
	ldr r2, [r4, #0x14]
	adds r0, r2, #0
	eors r0, r1
	cmp r0, #0
	blt _080B7BD4
	lsls r1, r1, #6
	adds r0, r2, #0
	cmp r0, #0
	bge _080B7BA0
	rsbs r0, r0, #0
_080B7BA0:
	cmp r1, #0
	bge _080B7BA6
	rsbs r1, r1, #0
_080B7BA6:
	cmp r0, r1
	bge _080B7BC0
	movs r3, #0x80
	lsls r3, r3, #1
	ldr r1, [r4, #0x18]
	ldr r0, _080B7BBC @ =0xFFFFF800
	cmp r1, r0
	bgt _080B7BEA
	lsls r3, r3, #2
	b _080B7BEA
	.align 2, 0
_080B7BBC: .4byte 0xFFFFF800
_080B7BC0:
	movs r3, #0x20
	ldr r1, [r4, #0x18]
	ldr r0, _080B7BD0 @ =0xFFFFF800
	cmp r1, r0
	bgt _080B7BEA
	movs r3, #0x40
	b _080B7BEA
	.align 2, 0
_080B7BD0: .4byte 0xFFFFF800
_080B7BD4:
	ldr r1, [r4, #0x18]
	cmp r1, #0
	ble _080B7BDE
	movs r3, #0x20
	b _080B7BEA
_080B7BDE:
	ldr r0, _080B7C0C @ =0xFFFFF000
	movs r3, #0x80
	cmp r1, r0
	bgt _080B7BEA
	movs r3, #0x80
	lsls r3, r3, #2
_080B7BEA:
	ldr r2, _080B7C10 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B7C14 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7C18 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B7C04
	movs r1, #1
_080B7C04:
	adds r0, r1, #0
_080B7C06:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B7C0C: .4byte 0xFFFFF000
_080B7C10: .4byte gUnknown_03006868
_080B7C14: .4byte 0x00196225
_080B7C18: .4byte 0x3C6EF35F

	thumb_func_start sub_80B7C1C
sub_80B7C1C: @ 0x080B7C1C
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrb r0, [r3]
	cmp r0, #7
	beq _080B7C40
	ldr r0, [r2, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080B7C40
	ldr r1, [r2, #0xc]
	movs r0, #6
	ands r1, r0
	cmp r1, #2
	beq _080B7C44
	cmp r1, #6
	beq _080B7C44
_080B7C40:
	movs r0, #0
	b _080B7CBE
_080B7C44:
	ldr r1, [r3, #0x14]
	adds r2, r1, #0
	cmp r1, #0
	bge _080B7C4E
	rsbs r2, r1, #0
_080B7C4E:
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r2, r0
	ble _080B7C78
	adds r0, r1, #0
	cmp r0, #0
	bge _080B7C5E
	rsbs r0, r0, #0
_080B7C5E:
	ldr r1, _080B7C74 @ =0xFFFF8800
	adds r0, r0, r1
	asrs r3, r0, #0xb
	adds r0, r3, #0
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080B7C70
	adds r0, r1, #0
_080B7C70:
	adds r3, r0, r1
	b _080B7CA2
	.align 2, 0
_080B7C74: .4byte 0xFFFF8800
_080B7C78:
	ldr r1, [r3, #0x18]
	ldr r0, _080B7C9C @ =0xFFFF8800
	cmp r1, r0
	bge _080B7CA0
	adds r0, r1, #0
	cmp r0, #0
	bge _080B7C88
	rsbs r0, r0, #0
_080B7C88:
	ldr r1, _080B7C9C @ =0xFFFF8800
	adds r0, r0, r1
	asrs r3, r0, #0xb
	adds r0, r3, #0
	cmp r0, #0x80
	ble _080B7C96
	movs r0, #0x80
_080B7C96:
	adds r3, r0, #0
	adds r3, #0x80
	b _080B7CA2
	.align 2, 0
_080B7C9C: .4byte 0xFFFF8800
_080B7CA0:
	movs r3, #0x10
_080B7CA2:
	ldr r2, _080B7CC4 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B7CC8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7CCC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B7CBC
	movs r1, #1
_080B7CBC:
	adds r0, r1, #0
_080B7CBE:
	pop {r1}
	bx r1
	.align 2, 0
_080B7CC4: .4byte gUnknown_03006868
_080B7CC8: .4byte 0x00196225
_080B7CCC: .4byte 0x3C6EF35F

	thumb_func_start sub_80B7CD0
sub_80B7CD0: @ 0x080B7CD0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	ldrb r0, [r5]
	cmp r0, #9
	beq _080B7D6C
	ldr r1, [r3, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B7D6C
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _080B7D6C
	ldr r1, [r3, #0xc]
	movs r4, #0xc0
	lsls r4, r4, #1
	ands r1, r4
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #2
	bne _080B7D0C
	cmp r1, #0
	beq _080B7D1C
	cmp r1, r4
	beq _080B7D1C
_080B7D0C:
	cmp r2, #1
	bne _080B7D6C
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _080B7D1C
	cmp r1, r4
	bne _080B7D6C
_080B7D1C:
	ldr r1, [r5, #0x18]
	ldr r0, _080B7D5C @ =0xFFFFF000
	cmp r1, r0
	bge _080B7D6C
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	movs r0, #0xa8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080B7D6C
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r1, #0xa7
	bgt _080B7D3C
	movs r3, #0x80
	lsls r3, r3, #6
_080B7D3C:
	ldr r2, _080B7D60 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B7D64 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7D68 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B7D56
	movs r1, #1
_080B7D56:
	adds r0, r1, #0
	b _080B7D6E
	.align 2, 0
_080B7D5C: .4byte 0xFFFFF000
_080B7D60: .4byte gUnknown_03006868
_080B7D64: .4byte 0x00196225
_080B7D68: .4byte 0x3C6EF35F
_080B7D6C:
	movs r0, #0
_080B7D6E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80B7D74
sub_80B7D74: @ 0x080B7D74
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4]
	cmp r0, #0xe
	beq _080B7DE8
	ldr r0, [r3, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080B7DE8
	ldr r1, [r4, #0x34]
	mvns r1, r1
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _080B7DE8
	ldr r2, [r3, #0xc]
	movs r0, #0x18
	ands r2, r0
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080B7DB2
	cmp r2, #0
	beq _080B7DC2
	cmp r2, #8
	beq _080B7DC2
_080B7DB2:
	cmp r1, #1
	bne _080B7DC8
	cmp r2, #0
	beq _080B7DC2
	cmp r2, #8
	beq _080B7DC2
	cmp r2, #0x10
	bne _080B7DC8
_080B7DC2:
	movs r1, #0x90
	lsls r1, r1, #7
	b _080B7DCC
_080B7DC8:
	movs r1, #0xc0
	lsls r1, r1, #6
_080B7DCC:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bge _080B7DD4
	rsbs r0, r0, #0
_080B7DD4:
	cmp r0, r1
	bgt _080B7DE8
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080B7DE0
	rsbs r0, r0, #0
_080B7DE0:
	movs r3, #0x80
	lsls r3, r3, #6
	cmp r0, r3
	ble _080B7DEC
_080B7DE8:
	movs r0, #0
	b _080B7E08
_080B7DEC:
	ldr r2, _080B7E10 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B7E14 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7E18 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B7E06
	movs r1, #1
_080B7E06:
	adds r0, r1, #0
_080B7E08:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B7E10: .4byte gUnknown_03006868
_080B7E14: .4byte 0x00196225
_080B7E18: .4byte 0x3C6EF35F

	thumb_func_start sub_80B7E1C
sub_80B7E1C: @ 0x080B7E1C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldrb r0, [r4]
	cmp r0, #0xf
	beq _080B7ECE
	ldr r0, [r2, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B7ECE
	ldr r1, [r4, #0x34]
	mvns r1, r1
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _080B7ECE
	ldr r3, [r2, #0xc]
	movs r5, #0xc0
	lsls r5, r5, #8
	ands r3, r5
	movs r6, #0
	adds r2, #0x2a
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _080B7E64
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7E60
	cmp r3, r5
	bne _080B7E64
_080B7E60:
	adds r6, r0, #0
	b _080B7EB2
_080B7E64:
	ldrb r0, [r2]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0
	bne _080B7E7E
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7EAE
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r3, r0
	beq _080B7EAE
_080B7E7E:
	cmp r1, #2
	bne _080B7E92
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7EAE
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r3, r0
	beq _080B7EAE
_080B7E92:
	cmp r1, #3
	bne _080B7E9E
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7EAE
_080B7E9E:
	cmp r1, #4
	bne _080B7EB2
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	beq _080B7EAE
	cmp r3, #0x20
	bne _080B7EB2
_080B7EAE:
	movs r6, #0x80
	lsls r6, r6, #6
_080B7EB2:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bge _080B7EBA
	rsbs r0, r0, #0
_080B7EBA:
	cmp r0, r6
	bgt _080B7ECE
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080B7EC6
	rsbs r0, r0, #0
_080B7EC6:
	movs r3, #0x80
	lsls r3, r3, #6
	cmp r0, r3
	ble _080B7ED2
_080B7ECE:
	movs r0, #0
	b _080B7EEE
_080B7ED2:
	ldr r2, _080B7EF4 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B7EF8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7EFC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B7EEC
	movs r1, #1
_080B7EEC:
	adds r0, r1, #0
_080B7EEE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B7EF4: .4byte gUnknown_03006868
_080B7EF8: .4byte 0x00196225
_080B7EFC: .4byte 0x3C6EF35F

	thumb_func_start sub_80B7F00
sub_80B7F00: @ 0x080B7F00
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4]
	cmp r0, #0x12
	beq _080B7F88
	cmp r0, #9
	bne _080B7F88
	ldr r0, [r3, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B7F88
	ldr r1, [r4, #0x34]
	mvns r1, r1
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _080B7F88
	ldr r2, [r3, #0xc]
	movs r5, #0xc0
	lsls r5, r5, #1
	ands r2, r5
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	bne _080B7F88
	cmp r2, r5
	bne _080B7F88
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bge _080B7F48
	rsbs r0, r0, #0
_080B7F48:
	movs r3, #0x80
	lsls r3, r3, #6
	cmp r0, r3
	bgt _080B7F88
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bge _080B7F58
	rsbs r0, r0, #0
_080B7F58:
	cmp r0, r3
	bgt _080B7F88
	ldr r2, _080B7F7C @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B7F80 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B7F84 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B7F76
	movs r1, #1
_080B7F76:
	adds r0, r1, #0
	b _080B7F8A
	.align 2, 0
_080B7F7C: .4byte gUnknown_03006868
_080B7F80: .4byte 0x00196225
_080B7F84: .4byte 0x3C6EF35F
_080B7F88:
	movs r0, #0
_080B7F8A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80B7F90
sub_80B7F90: @ 0x080B7F90
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrb r0, [r2]
	cmp r0, #0x10
	beq _080B802C
	ldr r0, [r3, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B802C
	ldr r1, [r2, #0x34]
	mvns r1, r1
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _080B802C
	ldr r1, [r2, #0x1c]
	movs r0, #0xe1
	lsls r0, r0, #6
	cmp r1, r0
	bhi _080B802C
	ldr r1, [r2, #0x14]
	cmp r1, #0
	bge _080B7FC4
	rsbs r1, r1, #0
_080B7FC4:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bgt _080B802C
	ldr r1, [r2, #0x18]
	ldr r0, _080B801C @ =0x00000FFF
	cmp r1, r0
	ble _080B802C
	ldr r1, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #0
	beq _080B7FF0
	cmp r2, #3
	beq _080B7FF0
	cmp r2, #1
	beq _080B7FF0
	cmp r2, #4
	bne _080B802C
_080B7FF0:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r1, r0
	cmp r1, #0
	beq _080B802C
	movs r3, #0x80
	lsls r3, r3, #6
	ldr r2, _080B8020 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8024 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8028 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B8018
	movs r1, #1
_080B8018:
	adds r0, r1, #0
	b _080B802E
	.align 2, 0
_080B801C: .4byte 0x00000FFF
_080B8020: .4byte gUnknown_03006868
_080B8024: .4byte 0x00196225
_080B8028: .4byte 0x3C6EF35F
_080B802C:
	movs r0, #0
_080B802E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80B8034
sub_80B8034: @ 0x080B8034
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrb r0, [r2]
	cmp r0, #0x11
	beq _080B80C0
	ldr r0, [r3, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B80C0
	ldr r1, [r2, #0x34]
	mvns r1, r1
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _080B80C0
	ldr r1, [r2, #0x1c]
	movs r0, #0xe1
	lsls r0, r0, #6
	cmp r1, r0
	bhi _080B80C0
	ldr r0, [r2, #0x14]
	cmp r0, #0
	bge _080B8068
	rsbs r0, r0, #0
_080B8068:
	movs r4, #0x80
	lsls r4, r4, #6
	cmp r0, r4
	bgt _080B80C0
	ldr r1, [r2, #0x18]
	ldr r0, _080B80B0 @ =0xFFFFF000
	cmp r1, r0
	bgt _080B80C0
	ldr r2, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080B80C0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	beq _080B80C0
	ldr r2, _080B80B4 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B80B8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B80BC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r4, r0
	bls _080B80AC
	movs r1, #1
_080B80AC:
	adds r0, r1, #0
	b _080B80C2
	.align 2, 0
_080B80B0: .4byte 0xFFFFF000
_080B80B4: .4byte gUnknown_03006868
_080B80B8: .4byte 0x00196225
_080B80BC: .4byte 0x3C6EF35F
_080B80C0:
	movs r0, #0
_080B80C2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80B80C8
sub_80B80C8: @ 0x080B80C8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r0, [r3]
	cmp r0, #0xc
	beq _080B8160
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B8160
	ldr r2, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080B8160
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	beq _080B8160
	ldr r1, [r3, #0x1c]
	movs r0, #0xe1
	lsls r0, r0, #6
	cmp r1, r0
	bhi _080B8160
	ldr r1, [r3, #0x14]
	cmp r1, #0
	bge _080B810A
	rsbs r1, r1, #0
_080B810A:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bgt _080B8160
	ldr r1, [r3, #0x18]
	ldr r0, _080B8150 @ =0xFFFFF000
	cmp r1, r0
	bgt _080B8160
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	movs r0, #0xa8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080B8160
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r1, #0xa7
	bgt _080B8132
	movs r3, #0x80
	lsls r3, r3, #5
_080B8132:
	ldr r2, _080B8154 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8158 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B815C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B814C
	movs r1, #1
_080B814C:
	adds r0, r1, #0
	b _080B8162
	.align 2, 0
_080B8150: .4byte 0xFFFFF000
_080B8154: .4byte gUnknown_03006868
_080B8158: .4byte 0x00196225
_080B815C: .4byte 0x3C6EF35F
_080B8160:
	movs r0, #0
_080B8162:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80B8168
sub_80B8168: @ 0x080B8168
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4]
	cmp r0, #0xd
	beq _080B8210
	ldr r0, [r3, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B8210
	ldr r2, [r3, #0xc]
	movs r5, #0xc0
	lsls r5, r5, #1
	ands r2, r5
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	bne _080B8210
	cmp r2, #0x80
	beq _080B81A4
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _080B81A4
	cmp r2, r5
	bne _080B8210
_080B81A4:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bge _080B81AC
	rsbs r1, r1, #0
_080B81AC:
	ldr r0, _080B81FC @ =0x00004FFF
	cmp r1, r0
	ble _080B8210
	movs r0, #0xc0
	lsls r0, r0, #1
	movs r1, #0
	cmp r2, r0
	bne _080B81BE
	ldr r1, _080B8200 @ =0xFFFFB000
_080B81BE:
	ldr r0, [r4, #0x18]
	cmp r0, r1
	blt _080B8210
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	movs r0, #0xa8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080B8210
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r1, #0xa7
	bgt _080B81DC
	movs r3, #0x80
	lsls r3, r3, #5
_080B81DC:
	ldr r2, _080B8204 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8208 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B820C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B81F6
	movs r1, #1
_080B81F6:
	adds r0, r1, #0
	b _080B8212
	.align 2, 0
_080B81FC: .4byte 0x00004FFF
_080B8200: .4byte 0xFFFFB000
_080B8204: .4byte gUnknown_03006868
_080B8208: .4byte 0x00196225
_080B820C: .4byte 0x3C6EF35F
_080B8210:
	movs r0, #0
_080B8212:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80B8218
sub_80B8218: @ 0x080B8218
	push {r4, lr}
	mov ip, r0
	adds r2, r1, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r3, [r0]
	mov r1, ip
	ldrh r0, [r1, #0x3e]
	subs r1, r0, #1
	mov r4, ip
	strh r1, [r4, #0x3e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080B82B2
	ldr r0, _080B82BC @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B8258
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8258:
	ldr r0, _080B82C0 @ =0xFFFFFE00
	cmp r1, r0
	bge _080B8266
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8266:
	mov r4, ip
	ldr r1, [r4, #0x10]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bge _080B8282
	ldr r0, [r2, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B8282
	movs r1, #0x1a
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080B82B2
_080B8282:
	ldr r0, _080B82C4 @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	movs r0, #0
	mov r4, ip
	strb r0, [r4]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B82C8 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B82CC @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B82D0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B82D4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	strh r0, [r4, #2]
_080B82B2:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B82BC: .4byte 0x0000FFCF
_080B82C0: .4byte 0xFFFFFE00
_080B82C4: .4byte gStageData
_080B82C8: .4byte gUnknown_080E3254
_080B82CC: .4byte gUnknown_03006868
_080B82D0: .4byte 0x00196225
_080B82D4: .4byte 0x3C6EF35F

	thumb_func_start sub_80B82D8
sub_80B82D8: @ 0x080B82D8
	push {r4, lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r1, _080B8304 @ =gStageData
	ldrh r2, [r1, #0x14]
	adds r0, r3, #0
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _080B8308
	bics r3, r2
	mov r0, ip
	ldrh r1, [r0, #0x3e]
	b _080B8316
	.align 2, 0
_080B8304: .4byte gStageData
_080B8308:
	mov r0, ip
	ldrh r1, [r0, #0x3e]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	bne _080B8316
	orrs r3, r2
_080B8316:
	subs r0, r1, #1
	mov r2, ip
	strh r0, [r2, #0x3e]
	lsls r0, r1, #0x10
	cmp r0, #0
	bgt _080B8354
	ldrh r0, [r4, #0x14]
	movs r1, #0x80
	orrs r0, r1
	bics r3, r0
	movs r0, #0
	strb r0, [r2]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B835C @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B8360 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8364 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8368 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r2, ip
	strh r0, [r2, #2]
_080B8354:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B835C: .4byte gUnknown_080E3254
_080B8360: .4byte gUnknown_03006868
_080B8364: .4byte 0x00196225
_080B8368: .4byte 0x3C6EF35F

	thumb_func_start sub_80B836C
sub_80B836C: @ 0x080B836C
	push {lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r1, [r1, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080B83BC
	ldr r0, _080B83B4 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B83A4
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B83A4:
	ldr r0, _080B83B8 @ =0xFFFFFE00
	cmp r1, r0
	bge _080B83E6
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	b _080B83E6
	.align 2, 0
_080B83B4: .4byte 0x0000FFCF
_080B83B8: .4byte 0xFFFFFE00
_080B83BC:
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B83EC @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B83F0 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B83F4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B83F8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
_080B83E6:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B83EC: .4byte gUnknown_080E3254
_080B83F0: .4byte gUnknown_03006868
_080B83F4: .4byte 0x00196225
_080B83F8: .4byte 0x3C6EF35F

	thumb_func_start sub_80B83FC
sub_80B83FC: @ 0x080B83FC
	push {r4, r5, lr}
	mov ip, r0
	adds r4, r2, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r0, [r1, #4]
	movs r5, #4
	ands r0, r5
	cmp r0, #0
	bne _080B8464
	mov r1, ip
	strb r0, [r1]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8450 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B8454 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8458 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B845C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B8460 @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	b _080B84BE
	.align 2, 0
_080B8450: .4byte gUnknown_080E3254
_080B8454: .4byte gUnknown_03006868
_080B8458: .4byte 0x00196225
_080B845C: .4byte 0x3C6EF35F
_080B8460: .4byte gStageData
_080B8464:
	ldr r0, _080B84A8 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B847C
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B847C:
	ldr r0, _080B84AC @ =0xFFFFFE00
	cmp r1, r0
	bge _080B848A
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B848A:
	ldr r0, _080B84B0 @ =gStageData
	ldrh r2, [r0, #0x14]
	eors r3, r2
	mov r0, ip
	ldr r1, [r0, #0x18]
	cmp r1, #0
	ble _080B84BE
	ldr r0, [r4, #4]
	ands r0, r5
	cmp r0, #0
	bne _080B84B4
	bics r3, r2
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	b _080B84BE
	.align 2, 0
_080B84A8: .4byte 0x0000FFCF
_080B84AC: .4byte 0xFFFFFE00
_080B84B0: .4byte gStageData
_080B84B4:
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _080B84BE
	bics r3, r2
_080B84BE:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80B84C8
sub_80B84C8: @ 0x080B84C8
	push {lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r1, [r1, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080B8530
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B851C @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B8520 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8524 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8528 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B852C @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	b _080B856C
	.align 2, 0
_080B851C: .4byte gUnknown_080E3254
_080B8520: .4byte gUnknown_03006868
_080B8524: .4byte 0x00196225
_080B8528: .4byte 0x3C6EF35F
_080B852C: .4byte gStageData
_080B8530:
	ldr r0, _080B8574 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B8548
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8548:
	ldr r0, _080B8578 @ =0xFFFFFE00
	cmp r1, r0
	bge _080B8556
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8556:
	ldr r0, _080B857C @ =gStageData
	ldrh r2, [r0, #0x14]
	orrs r3, r2
	mov r0, ip
	ldr r1, [r0, #0x18]
	ldr r0, _080B8580 @ =0xFFFFF000
	cmp r1, r0
	bge _080B856C
	bics r3, r2
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B856C:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8574: .4byte 0x0000FFCF
_080B8578: .4byte 0xFFFFFE00
_080B857C: .4byte gStageData
_080B8580: .4byte 0xFFFFF000

	thumb_func_start sub_80B8584
sub_80B8584: @ 0x080B8584
	push {lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r0, _080B85D8 @ =gStageData
	ldrh r0, [r0, #0x16]
	bics r3, r0
	ldr r1, [r1, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080B85EC
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B85DC @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B85E0 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B85E4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B85E8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	b _080B8612
	.align 2, 0
_080B85D8: .4byte gStageData
_080B85DC: .4byte gUnknown_080E3254
_080B85E0: .4byte gUnknown_03006868
_080B85E4: .4byte 0x00196225
_080B85E8: .4byte 0x3C6EF35F
_080B85EC:
	ldr r0, _080B8618 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B8604
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8604:
	ldr r0, _080B861C @ =0xFFFFFE00
	cmp r1, r0
	bge _080B8612
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8612:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8618: .4byte 0x0000FFCF
_080B861C: .4byte 0xFFFFFE00

	thumb_func_start sub_80B8620
sub_80B8620: @ 0x080B8620
	push {lr}
	mov ip, r0
	adds r2, r1, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #1
	mov r1, ip
	adds r1, #0x42
	adds r1, r1, r0
	ldrh r3, [r1]
	ldr r1, [r2, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080B86B0
	ldrh r0, [r2, #0x30]
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080B8668
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8660 @ =sub_80B86E4
	str r0, [r1]
	ldr r0, _080B8664 @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	b _080B86D6
	.align 2, 0
_080B8660: .4byte sub_80B86E4
_080B8664: .4byte gStageData
_080B8668:
	ldr r0, _080B869C @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B86A0 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B86A4 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B86A8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B86AC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	b _080B86D6
	.align 2, 0
_080B869C: .4byte gStageData
_080B86A0: .4byte gUnknown_080E3254
_080B86A4: .4byte gUnknown_03006868
_080B86A8: .4byte 0x00196225
_080B86AC: .4byte 0x3C6EF35F
_080B86B0:
	ldr r0, _080B86DC @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B86C8
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B86C8:
	ldr r0, _080B86E0 @ =0xFFFFFE00
	cmp r1, r0
	bge _080B86D6
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B86D6:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B86DC: .4byte 0x0000FFCF
_080B86E0: .4byte 0xFFFFFE00

	thumb_func_start sub_80B86E4
sub_80B86E4: @ 0x080B86E4
	push {lr}
	mov ip, r0
	adds r2, r1, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #1
	mov r1, ip
	adds r1, #0x42
	adds r1, r1, r0
	ldrh r3, [r1]
	ldr r1, [r2, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080B874C
	ldr r0, _080B8738 @ =0x0000FF3F
	ands r3, r0
	movs r0, #0
	mov r1, ip
	strb r0, [r1]
_080B8710:
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B873C @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B8740 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8744 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8748 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	b _080B87A4
	.align 2, 0
_080B8738: .4byte 0x0000FF3F
_080B873C: .4byte gUnknown_080E3254
_080B8740: .4byte gUnknown_03006868
_080B8744: .4byte 0x00196225
_080B8748: .4byte 0x3C6EF35F
_080B874C:
	ldrh r0, [r2, #0x30]
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080B8768
	ldr r0, _080B8764 @ =0x0000FF3F
	ands r3, r0
	mov r0, ip
	strb r1, [r0]
	b _080B8710
	.align 2, 0
_080B8764: .4byte 0x0000FF3F
_080B8768:
	mov r0, ip
	ldr r1, [r0, #0x18]
	ldr r0, _080B877C @ =0xFFFFF800
	cmp r1, r0
	bge _080B8784
	ldr r0, _080B8780 @ =0x0000FF7F
	ands r3, r0
	movs r0, #0x40
	b _080B8792
	.align 2, 0
_080B877C: .4byte 0xFFFFF800
_080B8780: .4byte 0x0000FF7F
_080B8784:
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	ble _080B87A0
	ldr r0, _080B879C @ =0x0000FFBF
	ands r3, r0
	movs r0, #0x80
_080B8792:
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	b _080B87A4
	.align 2, 0
_080B879C: .4byte 0x0000FFBF
_080B87A0:
	ldr r0, _080B87AC @ =0x0000FF3F
	ands r3, r0
_080B87A4:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B87AC: .4byte 0x0000FF3F

	thumb_func_start sub_80B87B0
sub_80B87B0: @ 0x080B87B0
	push {r4, r5, lr}
	mov ip, r0
	adds r4, r1, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r2, _080B87E0 @ =gStageData
	ldrh r1, [r2, #0x16]
	movs r0, #0x80
	orrs r1, r0
	adds r0, r3, #0
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080B87E4
	bics r3, r1
	b _080B882A
	.align 2, 0
_080B87E0: .4byte gStageData
_080B87E4:
	mov r0, ip
	ldr r2, [r0, #0x14]
	cmp r2, #0
	bge _080B8802
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B8802
	ldr r0, _080B8834 @ =0x0000FFEF
	ands r3, r0
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8802:
	cmp r2, #0
	ble _080B881C
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B881C
	ldr r0, _080B8838 @ =0x0000FFDF
	ands r3, r0
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B881C:
	ldrh r0, [r5, #0x16]
	orrs r3, r0
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B883C @ =sub_80B9454
	str r0, [r1]
_080B882A:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B8834: .4byte 0x0000FFEF
_080B8838: .4byte 0x0000FFDF
_080B883C: .4byte sub_80B9454

	thumb_func_start sub_80B8840
sub_80B8840: @ 0x080B8840
	push {lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r1, [r1, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080B88AC
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8898 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B889C @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B88A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B88A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B88A8 @ =gStageData
	ldrh r0, [r0, #0x16]
	movs r1, #0x80
	orrs r0, r1
	bics r3, r0
	b _080B88D2
	.align 2, 0
_080B8898: .4byte gUnknown_080E3254
_080B889C: .4byte gUnknown_03006868
_080B88A0: .4byte 0x00196225
_080B88A4: .4byte 0x3C6EF35F
_080B88A8: .4byte gStageData
_080B88AC:
	ldr r0, _080B88D8 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B88C4
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B88C4:
	ldr r0, _080B88DC @ =0xFFFFFE00
	cmp r1, r0
	bge _080B88D2
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B88D2:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B88D8: .4byte 0x0000FFCF
_080B88DC: .4byte 0xFFFFFE00

	thumb_func_start sub_80B88E0
sub_80B88E0: @ 0x080B88E0
	push {lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r1, [r1, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080B894C
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8938 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B893C @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8940 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8944 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B8948 @ =gStageData
	ldrh r0, [r0, #0x16]
	movs r1, #0x80
	orrs r0, r1
	bics r3, r0
	b _080B8972
	.align 2, 0
_080B8938: .4byte gUnknown_080E3254
_080B893C: .4byte gUnknown_03006868
_080B8940: .4byte 0x00196225
_080B8944: .4byte 0x3C6EF35F
_080B8948: .4byte gStageData
_080B894C:
	ldr r0, _080B8978 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B8964
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8964:
	ldr r0, _080B897C @ =0xFFFFFE00
	cmp r1, r0
	bge _080B8972
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8972:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8978: .4byte 0x0000FFCF
_080B897C: .4byte 0xFFFFFE00

	thumb_func_start sub_80B8980
sub_80B8980: @ 0x080B8980
	push {lr}
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r1, [r1, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080B89EC
	mov r0, ip
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B89D8 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B89DC @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B89E0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B89E4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B89E8 @ =gStageData
	ldrh r0, [r0, #0x16]
	movs r1, #0x40
	orrs r0, r1
	bics r3, r0
	b _080B8A12
	.align 2, 0
_080B89D8: .4byte gUnknown_080E3254
_080B89DC: .4byte gUnknown_03006868
_080B89E0: .4byte 0x00196225
_080B89E4: .4byte 0x3C6EF35F
_080B89E8: .4byte gStageData
_080B89EC:
	ldr r0, _080B8A18 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B8A04
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8A04:
	ldr r0, _080B8A1C @ =0xFFFFFE00
	cmp r1, r0
	bge _080B8A12
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8A12:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8A18: .4byte 0x0000FFCF
_080B8A1C: .4byte 0xFFFFFE00

	thumb_func_start sub_80B8A20
sub_80B8A20: @ 0x080B8A20
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r0, [r4, #4]
	movs r5, #4
	ands r0, r5
	cmp r0, #0
	bne _080B8A8C
	mov r1, ip
	strb r0, [r1]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8A78 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B8A7C @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8A80 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _080B8A84 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B8A88 @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	b _080B8B0E
	.align 2, 0
_080B8A78: .4byte gUnknown_080E3254
_080B8A7C: .4byte gUnknown_03006868
_080B8A80: .4byte 0x00196225
_080B8A84: .4byte 0x3C6EF35F
_080B8A88: .4byte gStageData
_080B8A8C:
	ldr r0, _080B8AAC @ =gStageData
	ldrh r1, [r0, #0x14]
	eors r3, r1
	mov r7, ip
	ldr r2, [r7, #0x18]
	adds r7, r0, #0
	cmp r2, #0
	ble _080B8ABA
	ldr r0, [r6, #4]
	ands r0, r5
	cmp r0, #0
	bne _080B8AB0
	bics r3, r1
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	b _080B8ABA
	.align 2, 0
_080B8AAC: .4byte gStageData
_080B8AB0:
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	ble _080B8ABA
	bics r3, r1
_080B8ABA:
	ldrh r1, [r7, #0x16]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080B8AC8
	bics r3, r1
	b _080B8B0E
_080B8AC8:
	mov r0, ip
	ldr r2, [r0, #0x14]
	cmp r2, #0
	bge _080B8AE6
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B8AE6
	ldr r0, _080B8B18 @ =0x0000FFEF
	ands r3, r0
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8AE6:
	cmp r2, #0
	ble _080B8B00
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8B00
	ldr r0, _080B8B1C @ =0x0000FFDF
	ands r3, r0
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8B00:
	ldrh r0, [r7, #0x16]
	orrs r3, r0
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8B20 @ =sub_80B8B24
	str r0, [r1]
_080B8B0E:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080B8B18: .4byte 0x0000FFEF
_080B8B1C: .4byte 0x0000FFDF
_080B8B20: .4byte sub_80B8B24

	thumb_func_start sub_80B8B24
sub_80B8B24: @ 0x080B8B24
	push {r4, r5, lr}
	mov ip, r0
	adds r5, r2, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	lsls r2, r2, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r3, [r0]
	ldr r0, [r1, #4]
	movs r4, #4
	ands r0, r4
	cmp r0, #0
	bne _080B8B8C
	mov r1, ip
	strb r0, [r1]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8B78 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B8B7C @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8B80 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8B84 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
	ldr r0, _080B8B88 @ =gStageData
	ldrh r0, [r0, #0x14]
	bics r3, r0
	b _080B8C0C
	.align 2, 0
_080B8B78: .4byte gUnknown_080E3254
_080B8B7C: .4byte gUnknown_03006868
_080B8B80: .4byte 0x00196225
_080B8B84: .4byte 0x3C6EF35F
_080B8B88: .4byte gStageData
_080B8B8C:
	ldr r0, _080B8BAC @ =gStageData
	ldrh r1, [r0, #0x14]
	eors r3, r1
	mov r0, ip
	ldr r2, [r0, #0x18]
	cmp r2, #0
	ble _080B8BBA
	ldr r0, [r5, #4]
	ands r0, r4
	cmp r0, #0
	bne _080B8BB0
	bics r3, r1
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	b _080B8BBA
	.align 2, 0
_080B8BAC: .4byte gStageData
_080B8BB0:
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	ble _080B8BBA
	bics r3, r1
_080B8BBA:
	ldr r0, _080B8C14 @ =0x0000FFCF
	ands r3, r0
	mov r0, ip
	ldr r1, [r0, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B8BD2
	movs r0, #0x10
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8BD2:
	ldr r0, _080B8C18 @ =0xFFFFFE00
	cmp r1, r0
	bge _080B8BE0
	movs r0, #0x20
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
_080B8BE0:
	movs r0, #9
	mov r1, ip
	strb r0, [r1]
	movs r1, #0xa2
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080B8C1C @ =gUnknown_080E3254
	ldr r0, [r0, #0x6c]
	str r0, [r1]
	ldr r2, _080B8C20 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8C24 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8C28 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	mov r1, ip
	strh r0, [r1, #2]
_080B8C0C:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080B8C14: .4byte 0x0000FFCF
_080B8C18: .4byte 0xFFFFFE00
_080B8C1C: .4byte gUnknown_080E3254
_080B8C20: .4byte gUnknown_03006868
_080B8C24: .4byte 0x00196225
_080B8C28: .4byte 0x3C6EF35F

	thumb_func_start sub_80B8C2C
sub_80B8C2C: @ 0x080B8C2C
	push {lr}
	sub sp, #4
	mov r2, sp
	movs r1, #0
	strh r1, [r2]
	ldr r1, _080B8C5C @ =0x040000D4
	str r2, [r1]
	str r0, [r1, #4]
	ldr r2, _080B8C60 @ =0x810000A4
	str r2, [r1, #8]
	ldr r2, [r1, #8]
	ldr r2, _080B8C64 @ =gUnknown_080E310C
	str r2, [r1]
	str r0, [r1, #4]
	ldr r2, _080B8C68 @ =0x800000A4
	str r2, [r1, #8]
	ldr r1, [r1, #8]
	movs r1, #0
	bl sub_80B8D18
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080B8C5C: .4byte 0x040000D4
_080B8C60: .4byte 0x810000A4
_080B8C64: .4byte gUnknown_080E310C
_080B8C68: .4byte 0x800000A4

	thumb_func_start sub_80B8C6C
sub_80B8C6C: @ 0x080B8C6C
	bx lr
	.align 2, 0

	thumb_func_start sub_80B8C70
sub_80B8C70: @ 0x080B8C70
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl _call_via_r3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_80B7AB0
	ldrh r0, [r4, #2]
	subs r1, r0, #1
	strh r1, [r4, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080B8CA2
	adds r0, r4, #0
	movs r1, #0
	bl sub_80B8D18
_080B8CA2:
	pop {r4}
	pop {r0}
	bx r0
_080B8CA8:
	.byte 0x00, 0x78, 0x70, 0x47

	thumb_func_start sub_80B8CAC
sub_80B8CAC: @ 0x080B8CAC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r2, _080B8CCC @ =gUnknown_080E3254
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #4
	adds r0, r0, r2
	ldr r3, [r0]
	cmp r3, #0
	bne _080B8CD0
	movs r0, #1
	b _080B8CDA
	.align 2, 0
_080B8CCC: .4byte gUnknown_080E3254
_080B8CD0:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl _call_via_r3
_080B8CDA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80B8CE0
sub_80B8CE0: @ 0x080B8CE0
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4]
	cmp r0, r3
	beq _080B8D0E
	ldr r2, _080B8D14 @ =gUnknown_080E3254
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r1, #8]
	ldrb r0, [r0, #8]
	cmp r1, r0
	bhi _080B8D0E
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_80B8D18
_080B8D0E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B8D14: .4byte gUnknown_080E3254

	thumb_func_start sub_80B8D18
sub_80B8D18: @ 0x080B8D18
	push {r4, lr}
	strb r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r4, r0, r2
	ldr r3, _080B8D50 @ =gUnknown_080E3254
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r1, [r2]
	str r1, [r4]
	ldr r3, _080B8D54 @ =gUnknown_03006868
	ldr r2, [r3]
	ldr r1, _080B8D58 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080B8D5C @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #8
	movs r2, #0x1f
	ands r1, r2
	adds r1, #0x3c
	strh r1, [r0, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B8D50: .4byte gUnknown_080E3254
_080B8D54: .4byte gUnknown_03006868
_080B8D58: .4byte 0x00196225
_080B8D5C: .4byte 0x3C6EF35F

	thumb_func_start sub_80B8D60
sub_80B8D60: @ 0x080B8D60
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r3, #0
	ldr r1, _080B8D88 @ =gUnknown_080E3254
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r3, [r0]
	cmp r3, #0
	beq _080B8D8C
	adds r0, r6, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl _call_via_r3
	b _080B8D8E
	.align 2, 0
_080B8D88: .4byte gUnknown_080E3254
_080B8D8C:
	movs r0, #1
_080B8D8E:
	cmp r0, #0
	bne _080B8D96
	movs r0, #0
	b _080B8DA0
_080B8D96:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80B8CE0
	movs r0, #1
_080B8DA0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80B8DA8
sub_80B8DA8: @ 0x080B8DA8
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_80B8DB0
sub_80B8DB0: @ 0x080B8DB0
	push {lr}
	adds r3, r0, #0
	cmp r1, #0
	beq _080B8DBC
	ldr r0, [r3, #0xc]
	str r0, [r1]
_080B8DBC:
	cmp r2, #0
	beq _080B8DC4
	ldr r0, [r3, #0x10]
	str r0, [r2]
_080B8DC4:
	pop {r0}
	bx r0

	thumb_func_start sub_80B8DC8
sub_80B8DC8: @ 0x080B8DC8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	ldr r6, [r4, #0xc]
	ldr r0, [r4, #4]
	subs r6, r6, r0
	ldr r5, [r4, #0x10]
	ldr r0, [r4, #8]
	subs r5, r5, r0
	asrs r0, r6, #8
	asrs r1, r5, #8
	adds r2, r0, #0
	muls r2, r0, r2
	mov r8, r2
	adds r0, r1, #0
	muls r0, r1, r0
	add r8, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_80BF30C
	str r6, [r4, #0x14]
	str r5, [r4, #0x18]
	mov r1, r8
	str r1, [r4, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4, #0x20]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80B8E10
sub_80B8E10: @ 0x080B8E10
	ldr r3, [r1, #0x10]
	str r3, [r0, #4]
	ldr r1, [r1, #0x14]
	str r1, [r0, #8]
	ldr r1, [r2, #0x10]
	str r1, [r0, #0x24]
	ldr r1, [r2, #0x14]
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0

	thumb_func_start sub_80B8E24
sub_80B8E24: @ 0x080B8E24
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	ldr r2, [r1, #0x10]
	subs r2, r5, r2
	ldr r0, [r1, #0x14]
	subs r0, r3, r0
	asrs r2, r2, #8
	asrs r0, r0, #8
	adds r1, r2, #0
	muls r1, r2, r1
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	ldr r0, [r4, #0x34]
	cmp r0, r1
	blo _080B8E4E
	str r5, [r4, #0x2c]
	str r3, [r4, #0x30]
	str r1, [r4, #0x34]
_080B8E4E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80B8E54
sub_80B8E54: @ 0x080B8E54
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x34]
	bx lr

	thumb_func_start sub_80B8E5C
sub_80B8E5C: @ 0x080B8E5C
	push {lr}
	ldr r1, [r0, #0x34]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080B8E6C
	movs r0, #1
	b _080B8E6E
_080B8E6C:
	movs r0, #0
_080B8E6E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80B8E74
sub_80B8E74: @ 0x080B8E74
	movs r2, #0xa1
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_80B8E88
sub_80B8E88: @ 0x080B8E88
	adds r0, #0x40
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_80B8E90
sub_80B8E90: @ 0x080B8E90
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xa1
	lsls r2, r2, #1
	adds r2, r2, r0
	mov ip, r2
	ldrb r2, [r2]
	lsls r2, r2, #1
	adds r3, r0, #0
	adds r3, #0x42
	adds r2, r3, r2
	ldrh r4, [r2]
	adds r2, r1, #0
	bics r2, r4
	adds r0, #0x40
	strh r2, [r0]
	mov r2, ip
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r3, r3, r0
	strh r1, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B8EC4
sub_80B8EC4: @ 0x080B8EC4
	push {lr}
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #1
	beq _080B8ED6
	cmp r0, #0
	beq _080B8EE2
	cmp r0, #2
	bne _080B8EDC
_080B8ED6:
	movs r3, #0x80
	lsls r3, r3, #1
	b _080B8EE6
_080B8EDC:
	movs r3, #0x20
	cmp r0, #6
	bne _080B8EE6
_080B8EE2:
	movs r3, #0xf0
	lsls r3, r3, #4
_080B8EE6:
	ldr r2, _080B8F08 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8F0C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8F10 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B8F00
	movs r1, #1
_080B8F00:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8F08: .4byte gUnknown_03006868
_080B8F0C: .4byte 0x00196225
_080B8F10: .4byte 0x3C6EF35F

	thumb_func_start sub_80B8F14
sub_80B8F14: @ 0x080B8F14
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #3
	beq _080B8F28
	ldr r0, [r1, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B8F2C
_080B8F28:
	movs r0, #0
	b _080B8F60
_080B8F2C:
	ldr r1, [r2, #0x14]
	cmp r1, #0
	bge _080B8F34
	rsbs r1, r1, #0
_080B8F34:
	movs r0, #0xc0
	lsls r0, r0, #5
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r1, r0
	ble _080B8F44
	movs r3, #0x80
	lsls r3, r3, #8
_080B8F44:
	ldr r2, _080B8F64 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8F68 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8F6C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B8F5E
	movs r1, #1
_080B8F5E:
	adds r0, r1, #0
_080B8F60:
	pop {r1}
	bx r1
	.align 2, 0
_080B8F64: .4byte gUnknown_03006868
_080B8F68: .4byte 0x00196225
_080B8F6C: .4byte 0x3C6EF35F

	thumb_func_start sub_80B8F70
sub_80B8F70: @ 0x080B8F70
	push {lr}
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #1
	bne _080B8F80
	movs r3, #0x80
	lsls r3, r3, #5
	b _080B8F8A
_080B8F80:
	cmp r0, #6
	bne _080B8F88
	movs r3, #0x10
	b _080B8F8A
_080B8F88:
	movs r3, #0x20
_080B8F8A:
	ldr r2, _080B8FAC @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B8FB0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B8FB4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B8FA4
	movs r1, #1
_080B8FA4:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8FAC: .4byte gUnknown_03006868
_080B8FB0: .4byte 0x00196225
_080B8FB4: .4byte 0x3C6EF35F

	thumb_func_start sub_80B8FB8
sub_80B8FB8: @ 0x080B8FB8
	push {lr}
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	cmp r0, #1
	beq _080B8FC6
	cmp r0, #0
	bne _080B8FCA
_080B8FC6:
	movs r3, #0x20
	b _080B8FDC
_080B8FCA:
	cmp r0, #2
	bne _080B8FD4
	movs r3, #0x80
	lsls r3, r3, #5
	b _080B8FDC
_080B8FD4:
	movs r3, #0x20
	cmp r0, #6
	bne _080B8FDC
	movs r3, #0x10
_080B8FDC:
	ldr r2, _080B8FFC @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B9000 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B9004 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B8FF6
	movs r1, #1
_080B8FF6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B8FFC: .4byte gUnknown_03006868
_080B9000: .4byte 0x00196225
_080B9004: .4byte 0x3C6EF35F

	thumb_func_start sub_80B9008
sub_80B9008: @ 0x080B9008
	push {lr}
	ldrb r0, [r0]
	cmp r0, #8
	beq _080B901E
	ldr r0, [r1, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080B901E
	movs r0, #1
	b _080B9020
_080B901E:
	movs r0, #0
_080B9020:
	pop {r1}
	bx r1

	thumb_func_start sub_80B9024
sub_80B9024: @ 0x080B9024
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4]
	cmp r0, #0xa
	beq _080B90AC
	ldr r1, [r3, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B90AC
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _080B90AC
	ldr r2, [r3, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r2, r0
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _080B90AC
	cmp r2, #0x80
	bne _080B90AC
	ldr r1, [r4, #0x18]
	ldr r0, _080B909C @ =0xFFFFF800
	cmp r1, r0
	bge _080B90AC
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	movs r0, #0xa8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080B90AC
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r1, #0xa7
	bgt _080B907C
	movs r3, #0x80
	lsls r3, r3, #6
_080B907C:
	ldr r2, _080B90A0 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B90A4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B90A8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B9096
	movs r1, #1
_080B9096:
	adds r0, r1, #0
	b _080B90AE
	.align 2, 0
_080B909C: .4byte 0xFFFFF800
_080B90A0: .4byte gUnknown_03006868
_080B90A4: .4byte 0x00196225
_080B90A8: .4byte 0x3C6EF35F
_080B90AC:
	movs r0, #0
_080B90AE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80B90B4
sub_80B90B4: @ 0x080B90B4
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4]
	cmp r0, #0xb
	beq _080B9140
	ldr r1, [r3, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080B9140
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	bne _080B9140
	ldr r2, [r3, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r2, r0
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #4
	bne _080B9140
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bne _080B9140
	ldr r1, [r4, #0x18]
	ldr r0, _080B9130 @ =0xFFFFF800
	cmp r1, r0
	bge _080B9140
	movs r0, #0x1a
	ldrsh r1, [r3, r0]
	movs r0, #0xa8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080B9140
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r1, #0xa7
	bgt _080B9110
	movs r3, #0x80
	lsls r3, r3, #6
_080B9110:
	ldr r2, _080B9134 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B9138 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B913C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	cmp r3, r0
	bls _080B912A
	movs r1, #1
_080B912A:
	adds r0, r1, #0
	b _080B9142
	.align 2, 0
_080B9130: .4byte 0xFFFFF800
_080B9134: .4byte gUnknown_03006868
_080B9138: .4byte 0x00196225
_080B913C: .4byte 0x3C6EF35F
_080B9140:
	movs r0, #0
_080B9142:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80B9148
sub_80B9148: @ 0x080B9148
	movs r2, #0xa1
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #1
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_80B915C
sub_80B915C: @ 0x080B915C
	ldr r3, _080B9184 @ =gUnknown_03006868
	ldr r2, [r3]
	ldr r1, _080B9188 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080B918C @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #8
	movs r2, #0x1f
	ands r1, r2
	adds r1, #6
	strh r1, [r0, #0x3e]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080B9190 @ =sub_80B95A0
	str r1, [r0]
	movs r0, #0
	bx lr
	.align 2, 0
_080B9184: .4byte gUnknown_03006868
_080B9188: .4byte 0x00196225
_080B918C: .4byte 0x3C6EF35F
_080B9190: .4byte sub_80B95A0

	thumb_func_start sub_80B9194
sub_80B9194: @ 0x080B9194
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	ldr r2, [r3, #0xc]
	ldr r0, [r1, #0x10]
	cmp r2, r0
	ble _080B91A6
	movs r4, #0x10
	b _080B91AC
_080B91A6:
	cmp r2, r0
	bge _080B91AC
	movs r4, #0x20
_080B91AC:
	movs r0, #0
	strb r0, [r3]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B91DC @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B91E0 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B91E4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B91E8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	strh r0, [r3, #2]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B91DC: .4byte gUnknown_080E3254
_080B91E0: .4byte gUnknown_03006868
_080B91E4: .4byte 0x00196225
_080B91E8: .4byte 0x3C6EF35F

	thumb_func_start sub_80B91EC
sub_80B91EC: @ 0x080B91EC
	push {r4, lr}
	mov ip, r0
	adds r4, r1, #0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080B922C
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, ip
	ldr r3, _080B9228 @ =sub_80B9324
	str r3, [r0]
	mov r0, ip
	adds r1, r4, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080B922E
	.align 2, 0
_080B9228: .4byte sub_80B9324
_080B922C:
	adds r0, r3, #0
_080B922E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80B9234
sub_80B9234: @ 0x080B9234
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, _080B925C @ =sub_80B95A0
	str r1, [r2]
	ldr r3, _080B9260 @ =gUnknown_03006868
	ldr r2, [r3]
	ldr r1, _080B9264 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080B9268 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #8
	movs r2, #0x3f
	ands r1, r2
	adds r1, #0x20
	strh r1, [r0, #0x3e]
	movs r0, #0x40
	bx lr
	.align 2, 0
_080B925C: .4byte sub_80B95A0
_080B9260: .4byte gUnknown_03006868
_080B9264: .4byte 0x00196225
_080B9268: .4byte 0x3C6EF35F

	thumb_func_start sub_80B926C
sub_80B926C: @ 0x080B926C
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, _080B9294 @ =sub_80B95A0
	str r1, [r2]
	ldr r3, _080B9298 @ =gUnknown_03006868
	ldr r2, [r3]
	ldr r1, _080B929C @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080B92A0 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #8
	movs r2, #0x3f
	ands r1, r2
	adds r1, #0x20
	strh r1, [r0, #0x3e]
	movs r0, #0x80
	bx lr
	.align 2, 0
_080B9294: .4byte sub_80B95A0
_080B9298: .4byte gUnknown_03006868
_080B929C: .4byte 0x00196225
_080B92A0: .4byte 0x3C6EF35F

	thumb_func_start sub_80B92A4
sub_80B92A4: @ 0x080B92A4
	movs r1, #0
	strb r1, [r0]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r2, r0, r1
	ldr r1, _080B92D0 @ =gUnknown_080E3254
	ldr r1, [r1]
	str r1, [r2]
	ldr r3, _080B92D4 @ =gUnknown_03006868
	ldr r2, [r3]
	ldr r1, _080B92D8 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080B92DC @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #8
	movs r2, #0x1f
	ands r1, r2
	adds r1, #0x3c
	strh r1, [r0, #2]
	movs r0, #0x80
	bx lr
	.align 2, 0
_080B92D0: .4byte gUnknown_080E3254
_080B92D4: .4byte gUnknown_03006868
_080B92D8: .4byte 0x00196225
_080B92DC: .4byte 0x3C6EF35F

	thumb_func_start sub_80B92E0
sub_80B92E0: @ 0x080B92E0
	push {lr}
	adds r3, r0, #0
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _080B930C
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B9314 @ =sub_80B82D8
	str r0, [r1]
	ldr r2, _080B9318 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B931C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B9320 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x10
	strh r0, [r3, #0x3e]
_080B930C:
	movs r0, #0x80
	pop {r1}
	bx r1
	.align 2, 0
_080B9314: .4byte sub_80B82D8
_080B9318: .4byte gUnknown_03006868
_080B931C: .4byte 0x00196225
_080B9320: .4byte 0x3C6EF35F

	thumb_func_start sub_80B9324
sub_80B9324: @ 0x080B9324
	push {lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x42
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	cmp r0, #0
	bne _080B9368
	movs r0, #0x30
	ands r2, r0
	ldr r0, _080B9360 @ =gStageData
	ldrh r0, [r0, #0x14]
	orrs r2, r0
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B9364 @ =sub_80B8218
	str r0, [r1]
	movs r0, #4
	strh r0, [r3, #0x3e]
	b _080B936C
	.align 2, 0
_080B9360: .4byte gStageData
_080B9364: .4byte sub_80B8218
_080B9368:
	movs r0, #0x30
	ands r2, r0
_080B936C:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80B9374
sub_80B9374: @ 0x080B9374
	adds r2, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _080B939C @ =gStageData
	ldrh r1, [r1, #0x14]
	bics r0, r1
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r2, r2, r1
	ldr r1, _080B93A0 @ =sub_80B84C8
	str r1, [r2]
	bx lr
	.align 2, 0
_080B939C: .4byte gStageData
_080B93A0: .4byte sub_80B84C8

	thumb_func_start sub_80B93A4
sub_80B93A4: @ 0x080B93A4
	push {lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _080B93D4 @ =gStageData
	ldrh r1, [r0, #0x16]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080B93DC
	orrs r2, r1
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B93D8 @ =sub_80B8584
	str r0, [r1]
	b _080B93DE
	.align 2, 0
_080B93D4: .4byte gStageData
_080B93D8: .4byte sub_80B8584
_080B93DC:
	bics r2, r1
_080B93DE:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_80B93E4
sub_80B93E4: @ 0x080B93E4
	push {lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _080B940C @ =gStageData
	ldrh r1, [r0, #0x14]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080B9410
	bics r2, r1
	b _080B9440
	.align 2, 0
_080B940C: .4byte gStageData
_080B9410:
	orrs r2, r1
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B9448 @ =sub_80B8620
	str r0, [r1]
	ldr r0, _080B944C @ =0x0000FFCF
	ands r2, r0
	ldr r1, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080B9432
	movs r0, #0x10
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
_080B9432:
	ldr r0, _080B9450 @ =0xFFFFFE00
	cmp r1, r0
	bge _080B9440
	movs r0, #0x20
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
_080B9440:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_080B9448: .4byte sub_80B8620
_080B944C: .4byte 0x0000FFCF
_080B9450: .4byte 0xFFFFFE00

	thumb_func_start sub_80B9454
sub_80B9454: @ 0x080B9454
	mov ip, r0
	movs r0, #0xa1
	lsls r0, r0, #1
	add r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _080B949C @ =gStageData
	ldrh r1, [r1, #0x16]
	bics r0, r1
	movs r1, #0
	mov r2, ip
	strb r1, [r2]
	movs r2, #0xa2
	lsls r2, r2, #1
	add r2, ip
	ldr r1, _080B94A0 @ =gUnknown_080E3254
	ldr r1, [r1]
	str r1, [r2]
	ldr r3, _080B94A4 @ =gUnknown_03006868
	ldr r2, [r3]
	ldr r1, _080B94A8 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080B94AC @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #8
	movs r2, #0x1f
	ands r1, r2
	adds r1, #0x3c
	mov r2, ip
	strh r1, [r2, #2]
	bx lr
	.align 2, 0
_080B949C: .4byte gStageData
_080B94A0: .4byte gUnknown_080E3254
_080B94A4: .4byte gUnknown_03006868
_080B94A8: .4byte 0x00196225
_080B94AC: .4byte 0x3C6EF35F

	thumb_func_start sub_80B94B0
sub_80B94B0: @ 0x080B94B0
	push {lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _080B94E0 @ =gStageData
	ldrh r1, [r0, #0x16]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080B94E8
	orrs r2, r1
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B94E4 @ =sub_80B8840
	str r0, [r1]
	b _080B94EA
	.align 2, 0
_080B94E0: .4byte gStageData
_080B94E4: .4byte sub_80B8840
_080B94E8:
	bics r2, r1
_080B94EA:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_80B94F0
sub_80B94F0: @ 0x080B94F0
	push {r4, lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _080B952C @ =gStageData
	ldrh r4, [r0, #0x16]
	movs r0, #0x70
	adds r1, r4, #0
	orrs r1, r0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080B9520
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _080B9530
_080B9520:
	bics r2, r1
	movs r0, #0x80
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
	b _080B953C
	.align 2, 0
_080B952C: .4byte gStageData
_080B9530:
	orrs r2, r4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B9544 @ =sub_80B88E0
	str r0, [r1]
_080B953C:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B9544: .4byte sub_80B88E0

	thumb_func_start sub_80B9548
sub_80B9548: @ 0x080B9548
	push {r4, lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r0, _080B9584 @ =gStageData
	ldrh r4, [r0, #0x16]
	movs r0, #0xb0
	adds r1, r4, #0
	orrs r1, r0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080B9578
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _080B9588
_080B9578:
	bics r2, r1
	movs r0, #0x40
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
	b _080B9594
	.align 2, 0
_080B9584: .4byte gStageData
_080B9588:
	orrs r2, r4
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B959C @ =sub_80B8980
	str r0, [r1]
_080B9594:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B959C: .4byte sub_80B8980

	thumb_func_start sub_80B95A0
sub_80B95A0: @ 0x080B95A0
	push {r4, lr}
	adds r3, r0, #0
	movs r1, #0xa1
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x42
	adds r0, r0, r1
	ldrh r4, [r0]
	ldrh r0, [r3, #0x3e]
	subs r1, r0, #1
	strh r1, [r3, #0x3e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080B95EA
	movs r0, #0
	strb r0, [r3]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080B95F4 @ =gUnknown_080E3254
	ldr r0, [r0]
	str r0, [r1]
	ldr r2, _080B95F8 @ =gUnknown_03006868
	ldr r1, [r2]
	ldr r0, _080B95FC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B9600 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	strh r0, [r3, #2]
_080B95EA:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080B95F4: .4byte gUnknown_080E3254
_080B95F8: .4byte gUnknown_03006868
_080B95FC: .4byte 0x00196225
_080B9600: .4byte 0x3C6EF35F

	thumb_func_start sub_80B9604
sub_80B9604: @ 0x080B9604
	push {r4, lr}
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r4, r0, r2
	movs r2, #0
	ldrsh r3, [r4, r2]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r2, [r1, #0x10]
	str r2, [r0]
	ldr r2, [r1, #0x14]
	str r2, [r0, #4]
	movs r3, #0x18
	ldrsh r2, [r1, r3]
	str r2, [r0, #8]
	movs r3, #0x1a
	ldrsh r2, [r1, r3]
	str r2, [r0, #0xc]
	ldrh r2, [r1, #0x1c]
	strh r2, [r0, #0x10]
	adds r2, r1, #0
	adds r2, #0x26
	ldrb r2, [r2]
	strb r2, [r0, #0x12]
	adds r1, #0x27
	ldrb r1, [r1]
	strb r1, [r0, #0x14]
	ldrh r0, [r4]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B9650
sub_80B9650: @ 0x080B9650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	str r1, [sp]
	str r2, [sp, #4]
	mov sl, r3
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r2, #1
	mov sb, r0
	movs r0, #0x1f
	mov r1, sb
	ands r1, r0
	mov sb, r1
	mov r1, ip
	ldr r0, [r1, #4]
	ldr r1, _080B971C @ =0x90060000
	ands r0, r1
	cmp r0, #0
	bne _080B9732
	adds r7, r2, #0
	cmp r7, sb
	beq _080B9732
_080B968C:
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #3
	ldr r2, [sp, #4]
	adds r6, r2, r0
	movs r0, #0x14
	ldrsb r0, [r6, r0]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080B9728
	ldr r2, [sp]
	ldr r0, [r2, #0x10]
	ldr r2, [r6]
	subs r3, r0, r2
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	ldr r1, [r6, #4]
	subs r4, r0, r1
	adds r5, r3, #0
	mov r8, r2
	adds r2, r1, #0
	cmp r3, #0
	bge _080B96BE
	rsbs r5, r3, #0
_080B96BE:
	ldr r0, _080B9720 @ =0x0001DFFF
	cmp r5, r0
	bgt _080B96D2
	adds r1, r4, #0
	cmp r4, #0
	bge _080B96CC
	rsbs r1, r4, #0
_080B96CC:
	ldr r0, _080B9724 @ =0x00013FFF
	cmp r1, r0
	ble _080B9728
_080B96D2:
	mov r0, sl
	cmp r0, #0
	beq _080B96E4
	eors r3, r0
	movs r1, #0x80
	lsls r1, r1, #0x18
	ands r3, r1
	cmp r3, #0
	bne _080B9728
_080B96E4:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _080B96F6
	eors r4, r0
	movs r1, #0x80
	lsls r1, r1, #0x18
	ands r4, r1
	cmp r4, #0
	bne _080B9728
_080B96F6:
	mov r0, r8
	mov r1, ip
	str r0, [r1, #0x10]
	str r2, [r1, #0x14]
	ldr r0, [r6, #8]
	strh r0, [r1, #0x18]
	ldr r0, [r6, #0xc]
	strh r0, [r1, #0x1a]
	ldrh r0, [r6, #0x10]
	strh r0, [r1, #0x1c]
	ldrb r0, [r6, #0x12]
	adds r1, #0x26
	strb r0, [r1]
	ldrb r1, [r6, #0x14]
	mov r0, ip
	adds r0, #0x27
	strb r1, [r0]
	movs r0, #1
	b _080B9734
	.align 2, 0
_080B971C: .4byte 0x90060000
_080B9720: .4byte 0x0001DFFF
_080B9724: .4byte 0x00013FFF
_080B9728:
	subs r7, #1
	movs r0, #0x1f
	ands r7, r0
	cmp r7, sb
	bne _080B968C
_080B9732:
	movs r0, #0
_080B9734:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80B9744
sub_80B9744: @ 0x080B9744
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0xff
	adds r1, r3, #0
	adds r1, #0x14
	movs r2, #0x1f
_080B9750:
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r1, #0x18
	subs r2, #1
	cmp r2, #0
	bge _080B9750
	movs r1, #0
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r3, r2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80B9770
sub_80B9770: @ 0x080B9770
	bx lr
	.align 2, 0

	thumb_func_start sub_80B9774
sub_80B9774: @ 0x080B9774
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	ldr r1, _080B97A0 @ =0x90060004
	ands r0, r1
	cmp r0, #0
	bne _080B9798
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80B97A4
	cmp r0, #0
	bne _080B9798
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80B9604
_080B9798:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B97A0: .4byte 0x90060004

	thumb_func_start sub_80B97A4
sub_80B97A4: @ 0x080B97A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov ip, r1
	movs r0, #0xc0
	lsls r0, r0, #2
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r7, r1, #1
	movs r0, #0x1f
	ands r7, r0
	adds r5, r1, #0
	cmp r5, r7
	beq _080B982A
	subs r0, #0x20
	mov sb, r0
_080B97CA:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	mov r1, r8
	adds r4, r1, r0
	ldrb r0, [r4, #0x14]
	lsls r6, r0, #0x18
	asrs r0, r6, #0x18
	cmp r0, sb
	beq _080B9820
	mov r2, ip
	ldr r3, [r2, #0x10]
	ldr r2, [r4]
	mov r0, ip
	ldr r1, [r0, #0x14]
	ldr r0, [r4, #4]
	subs r1, r1, r0
	subs r3, r3, r2
	cmp r3, #0
	bge _080B97F4
	rsbs r3, r3, #0
_080B97F4:
	ldr r0, _080B9818 @ =0x00003BFF
	cmp r3, r0
	bgt _080B9820
	cmp r1, #0
	bge _080B9800
	rsbs r1, r1, #0
_080B9800:
	ldr r0, _080B981C @ =0x000027FF
	cmp r1, r0
	bgt _080B9820
	mov r1, ip
	adds r1, #0x27
	lsrs r0, r6, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bne _080B9820
	movs r0, #1
	b _080B982C
	.align 2, 0
_080B9818: .4byte 0x00003BFF
_080B981C: .4byte 0x000027FF
_080B9820:
	subs r5, #1
	movs r0, #0x1f
	ands r5, r0
	cmp r5, r7
	bne _080B97CA
_080B982A:
	movs r0, #0
_080B982C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
