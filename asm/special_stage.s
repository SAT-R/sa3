.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
	ldr r1, _080B3FE0 @ =gInput
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
_080B3FE0: .4byte gInput
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
	ldr r1, _080B4118 @ =gInput
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
_080B4118: .4byte gInput
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
	ldr r0, _080B41F8 @ =gInput
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
_080B41F8: .4byte gInput
_080B41FC:
	ldr r1, _080B4218 @ =0x03000088
	adds r0, r3, r1
	ldr r1, [r0]
	ldr r0, _080B421C @ =0x01E50000
	cmp r1, r0
	bgt _080B4224
	ldr r0, _080B4220 @ =gInput
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
_080B4220: .4byte gInput
_080B4224:
	ldr r0, _080B427C @ =0x021AFFFF
	cmp r1, r0
	ble _080B4240
	ldr r0, _080B4280 @ =gInput
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
	ldr r0, _080B4288 @ =gPressedKeys
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
	movs r0, #0x74      @ SE_JUMP
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
_080B4280: .4byte gInput
_080B4284: .4byte 0x03000023
_080B4288: .4byte gPressedKeys
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
	ldr r1, _080B42D0 @ =gInput
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
_080B42D0: .4byte gInput
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
	ldr r0, _080B43A8 @ =gPressedKeys
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
	movs r0, #0x74      @ SE_JUMP
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
_080B43A8: .4byte gPressedKeys
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
	ldr r2, _080B4418 @ =gInput
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
_080B4418: .4byte gInput
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
	bl TransformSprite
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
	movs r0, #0x76      @ SE_LOST_RINGS
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
	movs r0, #0x51      @ MUS_EMERALD_GET
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
	ldr r0, _080B4938 @ =Task_80B494C
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
	ldr r0, _080B4948 @ =0x0000020E @ SE_526
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
_080B4938: .4byte Task_80B494C
_080B493C: .4byte gUnknown_080DBE58
_080B4940: .4byte 0x0300006C
_080B4944: .4byte 0x0300006E
_080B4948: .4byte 0x0000020E

	thumb_func_start Task_80B494C
Task_80B494C: @ 0x080B494C
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
	bl sa3__sub_80B1560
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _080B4A5C @ =gUnknown_080DC408
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x10
	bl sa3__sub_80B1560
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, _080B4A60 @ =gUnknown_080DC3F8
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x10
	bl sa3__sub_80B1560
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldr r0, _080B4A64 @ =gUnknown_080DC3E8
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x10
	bl sa3__sub_80B1560
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
	ldr r1, _080B4CE8 @ =gBgAffineRegs + (1 * 0x10)
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
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
_080B4CE8: .4byte gBgAffineRegs + (1 * 0x10)

	thumb_func_start SpStage_InitializeBoost
SpStage_InitializeBoost: @ 0x080B4CEC
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
	ldr r0, _080B4DF0 @ =gInput
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
_080B4DF0: .4byte gInput
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
	ldr r0, _080B4ED0 @ =Task_80B5038
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
	ldr r5, _080B4EDC @ =0x030008DA
	adds r0, r1, r5
	strh r2, [r0]
	ldr r2, _080B4EE0 @ =0x030008DC
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
	ldr r0, _080B4EE4 @ =0x030005F4
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
_080B4ED0: .4byte Task_80B5038
_080B4ED4: .4byte 0x000008E8
_080B4ED8: .4byte 0x000008C7
_080B4EDC: .4byte 0x030008DA
_080B4EE0: .4byte 0x030008DC
_080B4EE4: .4byte 0x030005F4
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
	movs r0, #0x75      @ SE_RING_OLD_2
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

	thumb_func_start Task_80B5038
Task_80B5038: @ 0x080B5038
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
	ldr r0, _080B51C4 @ =0x030007B4
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
_080B51C4: .4byte 0x030007B4
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
	ldr r3, _080B53EC @ =0x030008E2
	adds r1, r4, r3
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	ldr r0, _080B53F0 @ =0x030008E4
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
	ldr r0, _080B5418 @ =0x030008DC
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
	ldr r0, _080B5430 @ =0x0300075E
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080B5392
	subs r0, #1
	strb r0, [r1]
	ldr r3, _080B5434 @ =0x03000744
	adds r1, r4, r3
	movs r0, #0
	bl sub_80B6464
_080B5392:
	ldr r0, _080B5438 @ =0x0300077A
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080B53AA
	subs r0, #1
	strb r0, [r1]
	ldr r3, _080B543C @ =0x03000760
	adds r1, r4, r3
	movs r0, #0
	bl sub_80B6464
_080B53AA:
	ldr r0, _080B5440 @ =0x03000796
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080B53C2
	subs r0, #1
	strb r0, [r1]
	ldr r3, _080B5444 @ =0x0300077C
	adds r1, r4, r3
	movs r0, #0
	bl sub_80B6464
_080B53C2:
	ldr r0, _080B5448 @ =0x030007B2
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080B53DA
	subs r0, #1
	strb r0, [r1]
	ldr r3, _080B544C @ =0x03000798
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
_080B53EC: .4byte 0x030008E2
_080B53F0: .4byte 0x030008E4
_080B53F4: .4byte 0x000003FF
_080B53F8: .4byte 0x03000004
_080B53FC: .4byte 0x0300002C
_080B5400: .4byte 0x03000054
_080B5404: .4byte 0x0300007C
_080B5408: .4byte 0x030000A4
_080B540C: .4byte 0x030000CC
_080B5410: .4byte 0x030000F4
_080B5414: .4byte 0x0300011C
_080B5418: .4byte 0x030008DC
_080B541C: .4byte 0x0000060E
_080B5420: .4byte 0x000005F4
_080B5424: .4byte 0x0000062C
_080B5428: .4byte 0x00000664
_080B542C: .4byte 0x0000069C
_080B5430: .4byte 0x0300075E
_080B5434: .4byte 0x03000744
_080B5438: .4byte 0x0300077A
_080B543C: .4byte 0x03000760
_080B5440: .4byte 0x03000796
_080B5444: .4byte 0x0300077C
_080B5448: .4byte 0x030007B2
_080B544C: .4byte 0x03000798

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
	ldr r0, _080B54D8 @ =0x030008E4
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
_080B54D8: .4byte 0x030008E4
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
	ldr r2, _080B5B88 @ =0x030008E4
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
	ldr r2, _080B5B8C @ =0x030008DE
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
_080B5B88: .4byte 0x030008E4
_080B5B8C: .4byte 0x030008DE
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
	ldr r0, _080B5C80 @ =0x0000020F @ SE_527
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
	bl sub_8E8_80B69B4
	lsls r0, r5, #5
	ldr r1, _080B5DF0 @ =gOamBuffer + 0x6
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
_080B5DF0: .4byte gOamBuffer + 0x6

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
	bl sub_8E8_80B69B4
_080B5E78:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0xb
	ldr r1, _080B5EB8 @ =gOamBuffer + 0x6
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
_080B5EB8: .4byte gOamBuffer + 0x6

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
	ldr r2, _080B5FD8 @ =0x030008E4
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
_080B5FD8: .4byte 0x030008E4
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
	bl sub_8E8_80B69B4
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
	ldr r1, _080B60DC @ =gOamBuffer + 0x6
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
_080B60DC: .4byte gOamBuffer + 0x6

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
	bl sub_8E8_80B69B4
	lsls r0, r7, #5
	ldr r1, _080B6194 @ =gOamBuffer + 0x6
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
_080B6194: .4byte gOamBuffer + 0x6

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
	ldr r3, _080B6224 @ =0x030008E0
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
_080B6224: .4byte 0x030008E0
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
	ldr r0, _080B645C @ =0x030008E0
	add r0, sl
	ldrh r0, [r0]
	adds r0, r0, r5
	strh r0, [r1, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #0x14]
	mov r0, r8
	bl sub_8E8_80B69B4
	lsls r4, r4, #5
	ldr r0, _080B6460 @ =gOamBuffer + 0x6
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
_080B645C: .4byte 0x030008E0
_080B6460: .4byte gOamBuffer + 0x6

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
	bl sub_8E8_80B69B4
	lsls r4, r4, #5
	ldr r0, _080B6534 @ =gOamBuffer + 0x6
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
_080B6534: .4byte gOamBuffer + 0x6

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

.if 0
.endif
