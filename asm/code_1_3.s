.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_220_8053DEC
Task_220_8053DEC: @ 0x08053DEC
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
	bl Task_220_805374C
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
	ldr r0, _08053EA0 @ =Task_8053EA4
	str r0, [r1, #8]
_08053E90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053E98: .4byte gSineTable
_08053E9C: .4byte gCurTask
_08053EA0: .4byte Task_8053EA4

	thumb_func_start Task_8053EA4
Task_8053EA4: @ 0x08053EA4
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
	bl Task_220_805374C
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
	bl Task_220_805374C
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
	bl Task_220_805374C
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
	bl Task_220_805374C
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
	bl Task_220_805374C
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
	bl Task_220_805374C
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
	bl StageIntro_ShowZoneName
	ldr r0, _08054478 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08054484
	.align 2, 0
_08054474: .4byte gStageData
_08054478: .4byte gCurTask
_0805447C:
	movs r0, #0x47 @ Altar Emerald
	movs r1, #0
	bl WarpToMap
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
	bl TransformSprite
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
	bl TransformSprite
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
	bl TransformSprite
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
	bl TransformSprite
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

.if 0
.endif
