.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_801CD50
sub_801CD50: @ 0x0801CD50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r4, r0, #0
	movs r7, #0
	ldr r1, _0801CDF4 @ =gUnknown_080CECD0
	mov r0, sp
	movs r2, #0x14
	bl memcpy
	add r6, sp, #0x14
	ldr r1, _0801CDF8 @ =gUnknown_080CECE4
	adds r0, r6, #0
	movs r2, #0x14
	bl memcpy
	adds r0, r4, #0
	bl sub_801D1D0
	adds r0, r4, #0
	bl sub_801D2FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801CD86
	adds r0, r4, #0
	bl sub_801CE94
_0801CD86:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r1
	mov ip, r1
	cmp r0, #0
	beq _0801CE4C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r3, [r0]
	lsls r1, r3, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801CDFC @ =gPlayers
	adds r2, r0, r1
	ldr r0, _0801CE00 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _0801CDCC
	movs r5, #0x1c
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #8
	beq _0801CDCC
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #8
	bne _0801CE04
_0801CDCC:
	movs r0, #0x30
	ldrsh r3, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1a
	add r0, sp
	ldrh r0, [r0]
	cmp r3, r0
	beq _0801CE28
	lsrs r1, r1, #0x1a
	mov r0, sp
	adds r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r3, r0
	beq _0801CE28
	movs r7, #1
	b _0801CE2C
	.align 2, 0
_0801CDF4: .4byte gUnknown_080CECD0
_0801CDF8: .4byte gUnknown_080CECE4
_0801CDFC: .4byte gPlayers
_0801CE00: .4byte gStageData
_0801CE04:
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r1, r0, #0x1c
	lsrs r0, r1, #0x1a
	adds r0, r6, r0
	ldrh r2, [r2, #0x34]
	ldrh r0, [r0]
	cmp r2, r0
	beq _0801CE28
	lsrs r1, r1, #0x1a
	mov r0, sp
	adds r0, #0x16
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r2, r0
	beq _0801CE28
	movs r7, #1
_0801CE28:
	cmp r7, #0
	beq _0801CE80
_0801CE2C:
	ldr r0, _0801CE48 @ =0xDDFBFFFF
	mov r1, ip
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	bl Player_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl Player_800DAF4
	b _0801CE8C
	.align 2, 0
_0801CE48: .4byte 0xDDFBFFFF
_0801CE4C:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0801CE80
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801CE80
	ldr r0, _0801CE7C @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _0801CE80
	adds r0, r4, #0
	bl Player_8007620
	b _0801CE8C
	.align 2, 0
_0801CE7C: .4byte gStageData
_0801CE80:
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8015064
_0801CE8C:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_801CE94
sub_801CE94: @ 0x0801CE94
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801CEF8 @ =gPlayers
	adds r5, r0, r1
	movs r3, #0
	ldr r0, _0801CEFC @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r2, [r0, #0x14]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0801CECA
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r3, r0, #0x1f
_0801CECA:
	ldrh r0, [r4, #0x1e]
	ands r2, r0
	cmp r2, #0
	bne _0801CEE0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	bne _0801CEE0
	movs r3, #1
_0801CEE0:
	cmp r3, #0
	beq _0801CF20
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	ldrh r2, [r4, #0x18]
	cmp r0, #0
	bgt _0801CF00
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _0801CF08
	.align 2, 0
_0801CEF8: .4byte gPlayers
_0801CEFC: .4byte gStageData
_0801CF00:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801CF08:
	str r0, [r4, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x12
	strh r0, [r4, #0x18]
	ldr r1, _0801CF1C @ =sub_801DF80
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801CF46
	.align 2, 0
_0801CF1C: .4byte sub_801DF80
_0801CF20:
	adds r0, r4, #0
	bl sub_801CF4C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _0801CF46
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
_0801CF46:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_801CF4C
sub_801CF4C: @ 0x0801CF4C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r4, [r0]
	ldr r2, [r3, #4]
	movs r0, #0x42
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #4]
	lsls r5, r4, #0x18
	asrs r1, r5, #0x18
	movs r6, #0x7f
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0801CF82
	movs r0, #0xe7
	strh r0, [r3, #0x30]
	lsrs r0, r5, #0x18
	cmp r0, #0x80
	bne _0801CF9A
	movs r0, #1
	orrs r2, r0
	str r2, [r3, #4]
	b _0801CF9A
_0801CF82:
	cmp r1, #0
	bge _0801CF8C
	rsbs r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0801CF8C:
	movs r0, #0xe8
	strh r0, [r3, #0x30]
	ldr r0, _0801CFA0 @ =0x00000203
	strh r0, [r3, #0x34]
	ands r4, r6
	lsrs r0, r4, #5
	strh r0, [r3, #0x36]
_0801CF9A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801CFA0: .4byte 0x00000203

	thumb_func_start sub_801CFA4
sub_801CFA4: @ 0x0801CFA4
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r4, [r0]
	ldr r2, [r3, #4]
	movs r0, #0x42
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #4]
	lsls r5, r4, #0x18
	asrs r1, r5, #0x18
	movs r6, #0x7f
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0801CFDA
	movs r0, #0xf3
	strh r0, [r3, #0x30]
	lsrs r0, r5, #0x18
	cmp r0, #0x80
	bne _0801CFF2
	movs r0, #1
	orrs r2, r0
	str r2, [r3, #4]
	b _0801CFF2
_0801CFDA:
	cmp r1, #0
	bge _0801CFE4
	rsbs r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0801CFE4:
	movs r0, #0xe8
	strh r0, [r3, #0x30]
	ldr r0, _0801CFF8 @ =0x00000203
	strh r0, [r3, #0x34]
	ands r4, r6
	lsrs r0, r4, #5
	strh r0, [r3, #0x36]
_0801CFF2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801CFF8: .4byte 0x00000203

	thumb_func_start sub_801CFFC
sub_801CFFC: @ 0x0801CFFC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D0D8
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801D0D8
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0801D0D8
	movs r0, #0xe
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x24
	movs r1, #6
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0801D068
	strh r2, [r4, #0x1a]
_0801D068:
	movs r2, #0xc0
	lsls r2, r2, #2
	strh r2, [r4, #0x1c]
	ldr r1, [r4, #4]
	movs r3, #0x80
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0801D07E
	asrs r0, r2, #1
	strh r0, [r4, #0x1c]
_0801D07E:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0801D098
	ldrh r0, [r4, #0x1c]
	rsbs r0, r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	strb r3, [r0]
	b _0801D0A6
_0801D098:
	ldrh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
_0801D0A6:
	movs r1, #0
	movs r0, #0xec
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0x26
	strb r1, [r0]
	movs r0, #0xa5
	lsls r0, r0, #1
	adds r5, r4, r0
	strb r1, [r5]
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	ldrb r1, [r5]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5]
	ldr r0, [r4, #4]
	ldr r1, _0801D0E0 @ =0x00040004
	orrs r0, r1
	str r0, [r4, #4]
	ldr r1, _0801D0E4 @ =sub_801DCDC
	adds r0, r4, #0
	bl SetPlayerCallback
_0801D0D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D0E0: .4byte 0x00040004
_0801D0E4: .4byte sub_801DCDC

	thumb_func_start sub_801D0E8
sub_801D0E8: @ 0x0801D0E8
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r5, #0
	ldr r0, _0801D140 @ =gStageData
	ldrh r1, [r2, #0x20]
	ldrh r3, [r0, #0x14]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0801D108
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
_0801D108:
	ldrh r0, [r2, #0x1e]
	ands r3, r0
	ldr r4, [r2, #4]
	cmp r3, #0
	bne _0801D11E
	movs r0, #0x80
	lsls r0, r0, #0x12
	ands r0, r4
	cmp r0, #0
	bne _0801D11E
	movs r5, #1
_0801D11E:
	adds r1, r4, #0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801D12A
	movs r5, #1
_0801D12A:
	cmp r5, #0
	beq _0801D160
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	ldrh r3, [r2, #0x18]
	cmp r0, #0
	bgt _0801D144
	movs r0, #1
	orrs r1, r0
	str r1, [r2, #4]
	b _0801D14C
	.align 2, 0
_0801D140: .4byte gStageData
_0801D144:
	movs r0, #2
	rsbs r0, r0, #0
	ands r4, r0
	str r4, [r2, #4]
_0801D14C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x12
	strh r0, [r2, #0x18]
	ldr r1, _0801D15C @ =sub_801DF80
	adds r0, r2, #0
	bl SetPlayerCallback
	b _0801D166
	.align 2, 0
_0801D15C: .4byte sub_801DF80
_0801D160:
	adds r0, r2, #0
	bl sub_801D16C
_0801D166:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_801D16C
sub_801D16C: @ 0x0801D16C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r4, [r0]
	ldr r2, [r3, #4]
	movs r0, #0x42
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r3, #4]
	lsls r5, r4, #0x18
	asrs r1, r5, #0x18
	movs r6, #0x7f
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _0801D1A2
	movs r0, #0xec
	strh r0, [r3, #0x30]
	lsrs r0, r5, #0x18
	cmp r0, #0x80
	bne _0801D1C2
	movs r0, #1
	orrs r2, r0
	str r2, [r3, #4]
	b _0801D1C2
_0801D1A2:
	cmp r1, #0
	bge _0801D1AC
	rsbs r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0801D1AC:
	movs r0, #0xe8
	strh r0, [r3, #0x30]
	ldr r0, _0801D1C8 @ =0x00000203
	strh r0, [r3, #0x34]
	ands r4, r6
	lsrs r0, r4, #5
	strh r0, [r3, #0x36]
	ldr r1, _0801D1CC @ =sub_801CD50
	adds r0, r3, #0
	bl SetPlayerCallback
_0801D1C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801D1C8: .4byte 0x00000203
_0801D1CC: .4byte sub_801CD50

	thumb_func_start sub_801D1D0
sub_801D1D0: @ 0x0801D1D0
	push {lr}
	mov ip, r0
	movs r1, #0x1c
	ldrsh r3, [r0, r1]
	cmp r3, #0
	bge _0801D1DE
	rsbs r3, r3, #0
_0801D1DE:
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, ip
	ldrb r2, [r0]
	ldr r0, _0801D1F0 @ =0x000002FF
	cmp r3, r0
	bgt _0801D1F4
	adds r3, #6
	b _0801D204
	.align 2, 0
_0801D1F0: .4byte 0x000002FF
_0801D1F4:
	ldr r0, _0801D238 @ =0x00000EFF
	cmp r3, r0
	bgt _0801D204
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0
	bne _0801D204
	adds r3, #3
_0801D204:
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801D220
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r3, r0
	ble _0801D220
	subs r3, #9
	cmp r3, r0
	bge _0801D220
	adds r3, r0, #0
_0801D220:
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0801D23C
	rsbs r0, r3, #0
	mov r1, ip
	strh r0, [r1, #0x1c]
	b _0801D240
	.align 2, 0
_0801D238: .4byte 0x00000EFF
_0801D23C:
	mov r0, ip
	strh r3, [r0, #0x1c]
_0801D240:
	mov r0, ip
	ldrh r1, [r0, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801D26A
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0x80
	beq _0801D2A0
	asrs r0, r1, #0x18
	cmp r0, #0
	bge _0801D260
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0801D260:
	lsls r0, r2, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801D29E
_0801D26A:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801D28E
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0801D2A0
	cmp r0, #0
	ble _0801D284
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0801D284:
	lsls r0, r2, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x12
	adds r0, r0, r2
	b _0801D29E
_0801D28E:
	lsls r0, r2, #0x18
	asrs r1, r0, #0x18
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0801D2A0
	adds r0, r1, #2
	lsls r0, r0, #0x18
_0801D29E:
	lsrs r2, r0, #0x18
_0801D2A0:
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, ip
	strb r2, [r0]
	ldr r1, _0801D2D4 @ =gSineTable
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x15
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	mov r3, ip
	strh r0, [r3, #0x18]
	ldrh r1, [r3, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r3, r2]
	cmp r0, #0x7f
	bgt _0801D2D8
	adds r0, r1, #0
	adds r0, #0x18
	b _0801D2DE
	.align 2, 0
_0801D2D4: .4byte gSineTable
_0801D2D8:
	adds r0, r1, #0
	subs r0, #0x18
	mov r3, ip
_0801D2DE:
	strh r0, [r3, #0x1a]
	ldr r1, _0801D2EC @ =gCamera
	ldr r0, [r1, #0x40]
	cmp r0, #0
	ble _0801D2F0
	subs r0, #2
	b _0801D2F6
	.align 2, 0
_0801D2EC: .4byte gCamera
_0801D2F0:
	cmp r0, #0
	bge _0801D2F8
	adds r0, #4
_0801D2F6:
	str r0, [r1, #0x40]
_0801D2F8:
	pop {r0}
	bx r0

	thumb_func_start sub_801D2FC
sub_801D2FC: @ 0x0801D2FC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8012634
	movs r1, #0xa5
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801D3B0
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _0801D324
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _0801D32C
_0801D324:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801D32C:
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r2, #0x40
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801D380
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0801D35C
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	b _0801D364
_0801D35C:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801D364:
	str r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8012BA4
	ldr r1, _0801D37C @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801D3DC
	.align 2, 0
_0801D37C: .4byte Player_8005380
_0801D380:
	ldr r1, _0801D3AC @ =sub_801DD2C
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0xea
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #6
	bl sub_8012F74
	adds r0, r4, #0
	movs r1, #0x6f
	bl Player_PlaySong
	b _0801D3DC
	.align 2, 0
_0801D3AC: .4byte sub_801DD2C
_0801D3B0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801D3E8
	ldr r2, _0801D3E0 @ =0x00000149
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0801D3DC
	adds r0, r4, #0
	bl sub_801D3F0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	ldr r1, _0801D3E4 @ =sub_801D8E8
	adds r0, r4, #0
	bl SetPlayerCallback
_0801D3DC:
	movs r0, #1
	b _0801D3EA
	.align 2, 0
_0801D3E0: .4byte 0x00000149
_0801D3E4: .4byte sub_801D8E8
_0801D3E8:
	movs r0, #0
_0801D3EA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_801D3F0
sub_801D3F0: @ 0x0801D3F0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r0, #0x40
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _0801D4C4
	ldr r0, [r5, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #4]
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0
	add r3, sp, #8
	bl sub_8011024
	adds r6, r0, #0
	ldr r0, [sp, #8]
	cmp r6, r0
	beq _0801D424
	b _0801D52C
_0801D424:
	cmp r6, #0
	bne _0801D42A
	b _0801D548
_0801D42A:
	ldr r3, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r3, r0
	cmp r3, #0
	beq _0801D47C
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	subs r0, #1
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	subs r1, #1
	adds r2, r5, #0
	adds r2, #0x24
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	movs r3, #8
	rsbs r3, r3, #0
	movs r4, #0
	str r4, [sp]
	ldr r4, _0801D478 @ =sub_805217C
	str r4, [sp, #4]
	bl sub_80517FC
	cmp r0, #0
	bge _0801D4B6
	b _0801D52C
	.align 2, 0
_0801D478: .4byte sub_805217C
_0801D47C:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	subs r1, #1
	adds r2, r5, #0
	adds r2, #0x24
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	str r3, [sp]
	ldr r3, _0801D4C0 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	blt _0801D52C
_0801D4B6:
	lsls r1, r6, #8
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
	b _0801D546
	.align 2, 0
_0801D4C0: .4byte sub_805217C
_0801D4C4:
	ldr r0, [r5, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0
	add r3, sp, #8
	bl sub_8011024
	adds r6, r0, #0
	ldr r0, [sp, #8]
	cmp r6, r0
	bne _0801D52C
	cmp r6, #0
	beq _0801D548
	ldr r3, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r3, r0
	cmp r3, #0
	bne _0801D540
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	adds r0, #1
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	adds r1, #1
	adds r2, r5, #0
	adds r2, #0x24
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r2, [r2]
	str r3, [sp]
	ldr r3, _0801D538 @ =sub_805217C
	str r3, [sp, #4]
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bge _0801D540
_0801D52C:
	ldr r1, _0801D53C @ =sub_801DF80
	adds r0, r5, #0
	bl SetPlayerCallback
	b _0801D548
	.align 2, 0
_0801D538: .4byte sub_805217C
_0801D53C: .4byte sub_801DF80
_0801D540:
	lsls r1, r6, #8
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
_0801D546:
	str r0, [r5, #0x10]
_0801D548:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_801D550
sub_801D550: @ 0x0801D550
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x18]
	movs r2, #0x18
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _0801D56C
	adds r0, r1, #0
	adds r0, #0x18
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0801D580
	b _0801D578
_0801D56C:
	adds r0, r1, #0
	subs r0, #0x18
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0801D580
_0801D578:
	adds r0, r4, #0
	bl sub_801DD68
	b _0801D5C0
_0801D580:
	ldr r1, [r4, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0801D598
	ldr r1, _0801D594 @ =sub_801DF80
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801D5C0
	.align 2, 0
_0801D594: .4byte sub_801DF80
_0801D598:
	strh r1, [r4, #0x1c]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_8012BA4
	adds r1, r4, #0
	adds r1, #0x4e
	movs r0, #0xf
	strh r0, [r1]
	adds r0, r4, #0
	bl Player_8005380
	adds r0, r4, #0
	bl sub_8012EA8
	ldr r1, _0801D5C8 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801D5C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D5C8: .4byte Player_8005380

	thumb_func_start sub_801D5CC
sub_801D5CC: @ 0x0801D5CC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801D628
	subs r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D5F4
	ldr r0, _0801D620 @ =0x0000FE80
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	movs r1, #0x70
	bl Player_PlaySong
_0801D5F4:
	adds r0, r4, #0
	bl sub_8017004
	ldr r1, [r4, #4]
	movs r0, #0x24
	ands r0, r1
	cmp r0, #4
	beq _0801D678
	movs r0, #2
	orrs r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FC0
	movs r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0801D624 @ =sub_801D684
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801D678
	.align 2, 0
_0801D620: .4byte 0x0000FE80
_0801D624: .4byte sub_801D684
_0801D628:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D678
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801D678
	movs r0, #0x24
	ands r0, r1
	cmp r0, #4
	beq _0801D678
	movs r0, #2
	orrs r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FC0
	movs r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0801D680 @ =sub_801D684
	adds r0, r4, #0
	bl SetPlayerCallback
_0801D678:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D680: .4byte sub_801D684

	thumb_func_start sub_801D684
sub_801D684: @ 0x0801D684
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801D6A8
	ldr r1, _0801D6A4 @ =Player_800891C
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801D732
	.align 2, 0
_0801D6A4: .4byte Player_800891C
_0801D6A8:
	ldrh r0, [r4, #0x1c]
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r1, #0
	ble _0801D6B6
	subs r0, #8
	b _0801D6BC
_0801D6B6:
	cmp r1, #0
	bge _0801D6BE
	adds r0, #8
_0801D6BC:
	strh r0, [r4, #0x1c]
_0801D6BE:
	ldrh r0, [r4, #0x1c]
	adds r0, #0x7f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _0801D6CE
	movs r0, #0
	strh r0, [r4, #0x1c]
_0801D6CE:
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0801D6E4
	adds r0, r4, #0
	bl Player_8005380
	adds r0, r4, #0
	bl sub_8012EA8
	b _0801D732
_0801D6E4:
	adds r0, r4, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D732
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_801480C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D732
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801D732
	ldr r1, _0801D738 @ =Player_800DB30
	adds r0, r4, #0
	bl SetPlayerCallback
_0801D732:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D738: .4byte Player_800DB30

	thumb_func_start Player_801D73C
Player_801D73C: @ 0x0801D73C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D7A6
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0801D778 @ =gPlayers
	adds r0, r0, r1
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801D77C
	movs r0, #0xf9
	lsls r0, r0, #8
	b _0801D780
	.align 2, 0
_0801D778: .4byte gPlayers
_0801D77C:
	movs r0, #0xe0
	lsls r0, r0, #3
_0801D780:
	strh r0, [r2, #0x18]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #4]
	movs r0, #0x14
	strh r0, [r2, #0x30]
	movs r0, #0xfe
	lsls r0, r0, #1
	strh r0, [r2, #0x34]
	movs r0, #1
	strh r0, [r2, #0x36]
	ldr r1, _0801D7AC @ =Player_801DF18
	adds r0, r2, #0
	bl SetPlayerCallback
_0801D7A6:
	pop {r0}
	bx r0
	.align 2, 0
_0801D7AC: .4byte Player_801DF18

	thumb_func_start sub_801D7B0
sub_801D7B0: @ 0x0801D7B0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801D7FC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #4]
	movs r5, #0
	movs r0, #0xe2
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	movs r1, #0x7e
	bl Player_PlaySong
	strh r5, [r4, #0x1c]
	ldr r5, _0801D800 @ =sub_801DA04
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D7FC: .4byte 0xFFFFBFFF
_0801D800: .4byte sub_801DA04

	thumb_func_start sub_801D804
sub_801D804: @ 0x0801D804
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801D844 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0xe3
	strh r0, [r4, #0x30]
	ldr r5, _0801D848 @ =sub_801C414
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D844: .4byte 0xFFFFBFFF
_0801D848: .4byte sub_801C414

	thumb_func_start sub_801D84C
sub_801D84C: @ 0x0801D84C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801D89C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	ldr r1, _0801D8A0 @ =0x00008004
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #0xe5
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x18]
	adds r0, #0x1b
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	movs r1, #0xe2
	bl Player_PlaySong
	ldr r5, _0801D8A4 @ =sub_801DB20
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D89C: .4byte 0xFFFFBFFF
_0801D8A0: .4byte 0x00008004
_0801D8A4: .4byte sub_801DB20

	thumb_func_start sub_801D8A8
sub_801D8A8: @ 0x0801D8A8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_801CCB4
	movs r0, #0xe7
	strh r0, [r5, #0x30]
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0801D8C6
	ldr r0, _0801D8E0 @ =0xFFFFFD00
	cmp r1, r0
	bge _0801D8C8
_0801D8C6:
	strh r0, [r5, #0x1a]
_0801D8C8:
	ldr r4, _0801D8E4 @ =sub_801CD50
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D8E0: .4byte 0xFFFFFD00
_0801D8E4: .4byte sub_801CD50

	thumb_func_start sub_801D8E8
sub_801D8E8: @ 0x0801D8E8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #3
	strb r0, [r1]
	movs r0, #0xee
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801D948 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0xa
	bl sub_8012F94
	adds r2, r4, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r5, _0801D94C @ =sub_801DDF4
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D948: .4byte 0xFFFFBFFF
_0801D94C: .4byte sub_801DDF4

	thumb_func_start sub_801D950
sub_801D950: @ 0x0801D950
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_801CCB4
	movs r0, #0xf3
	strh r0, [r4, #0x30]
	ldr r5, _0801D974 @ =sub_801DC34
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D974: .4byte sub_801DC34

	thumb_func_start sub_801D978
sub_801D978: @ 0x0801D978
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801D9C4 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FC0
	ldr r0, [r4, #4]
	ldr r1, _0801D9C8 @ =0x20008004
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0
	movs r0, #0xf6
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x14
	strh r0, [r1]
	ldr r5, _0801D9CC @ =Player_801D73C
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D9C4: .4byte 0xFFFFBFFF
_0801D9C8: .4byte 0x20008004
_0801D9CC: .4byte Player_801D73C

	thumb_func_start sub_801D9D0
sub_801D9D0: @ 0x0801D9D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D9FC
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801D9FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801DA04
sub_801DA04: @ 0x0801DA04
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DA6A
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801DA6A
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801DA6A
	adds r0, r4, #0
	movs r1, #0x7e
	bl Player_PlaySong
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0801DA70 @ =sub_801DA74
	adds r0, r4, #0
	bl SetPlayerCallback
_0801DA6A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DA70: .4byte sub_801DA74

	thumb_func_start sub_801DA74
sub_801DA74: @ 0x0801DA74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DACC
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801DACC
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801DACC
	ldr r1, _0801DAD4 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801DACC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DAD4: .4byte Player_8005380

	thumb_func_start sub_801DAD8
sub_801DAD8: @ 0x0801DAD8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0801DAF4
	ldr r1, _0801DAF0 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801DB18
	.align 2, 0
_0801DAF0: .4byte Player_800DAF4
_0801DAF4:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DB18
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801DB18:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801DB20
sub_801DB20: @ 0x0801DB20
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DB66
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801DB66
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801DB66
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0801DB6C @ =sub_801DB70
	adds r0, r4, #0
	bl SetPlayerCallback
_0801DB66:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DB6C: .4byte sub_801DB70

	thumb_func_start sub_801DB70
sub_801DB70: @ 0x0801DB70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DBBE
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801DBBE
	ldr r1, [r4]
	ldr r0, _0801DBC4 @ =Player_8005380
	cmp r1, r0
	beq _0801DBB0
	ldr r0, _0801DBC8 @ =Player_80077CC
	cmp r1, r0
	bne _0801DBBE
_0801DBB0:
	ldrh r0, [r4, #0x36]
	adds r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0801DBCC @ =sub_801DBD0
	adds r0, r4, #0
	bl SetPlayerCallback
_0801DBBE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DBC4: .4byte Player_8005380
_0801DBC8: .4byte Player_80077CC
_0801DBCC: .4byte sub_801DBD0

	thumb_func_start sub_801DBD0
sub_801DBD0: @ 0x0801DBD0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015144
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DC28
	adds r0, r4, #0
	bl Player_801479C
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8012EB8
	adds r0, r4, #0
	bl sub_8016E00
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801DC28
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801DC28
	ldr r1, _0801DC30 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801DC28:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DC30: .4byte Player_8005380

	thumb_func_start sub_801DC34
sub_801DC34: @ 0x0801DC34
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801D1D0
	adds r0, r4, #0
	bl sub_801D2FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DC4E
	adds r0, r4, #0
	bl sub_801DC60
_0801DC4E:
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8015064
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801DC60
sub_801DC60: @ 0x0801DC60
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #0
	ldr r0, _0801DCAC @ =gStageData
	ldrh r1, [r2, #0x20]
	ldrh r3, [r0, #0x14]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0801DC80
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r4, r0, #0x1f
_0801DC80:
	ldrh r0, [r2, #0x1e]
	ands r3, r0
	cmp r3, #0
	bne _0801DC96
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	bne _0801DC96
	movs r4, #1
_0801DC96:
	cmp r4, #0
	beq _0801DCD0
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	ldrh r3, [r2, #0x18]
	cmp r0, #0
	bgt _0801DCB0
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	b _0801DCB8
	.align 2, 0
_0801DCAC: .4byte gStageData
_0801DCB0:
	ldr r0, [r2, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0801DCB8:
	str r0, [r2, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x12
	strh r0, [r2, #0x18]
	ldr r1, _0801DCCC @ =sub_801DF80
	adds r0, r2, #0
	bl SetPlayerCallback
	b _0801DCD6
	.align 2, 0
_0801DCCC: .4byte sub_801DF80
_0801DCD0:
	adds r0, r2, #0
	bl sub_801CFA4
_0801DCD6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801DCDC
sub_801DCDC: @ 0x0801DCDC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DCF8
	ldr r1, _0801DCFC @ =sub_801DD00
	adds r0, r2, #0
	bl SetPlayerCallback
_0801DCF8:
	pop {r0}
	bx r0
	.align 2, 0
_0801DCFC: .4byte sub_801DD00

	thumb_func_start sub_801DD00
sub_801DD00: @ 0x0801DD00
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801D1D0
	adds r0, r4, #0
	bl sub_801D2FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DD1A
	adds r0, r4, #0
	bl sub_801D0E8
_0801DD1A:
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8015064
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801DD2C
sub_801DD2C: @ 0x0801DD2C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801D550
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801DD44
	adds r0, r4, #0
	bl sub_8016E50
_0801DD44:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DD62
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8016E00
_0801DD62:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801DD68
sub_801DD68: @ 0x0801DD68
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	bl sub_8012634
	movs r0, #1
	adds r1, r5, #0
	mov r2, sp
	movs r3, #0
	bl sub_8012E18
	adds r2, r0, #0
	cmp r2, #0xb
	bgt _0801DDA6
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801DD92
	rsbs r2, r2, #0
_0801DD92:
	lsls r1, r2, #8
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	mov r0, sp
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x26
	strb r1, [r0]
	b _0801DDDE
_0801DDA6:
	ldr r0, [r5, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0801DDDE
	movs r0, #0xe9
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	bl Player_8012FE0
	ldr r0, [r5, #0x14]
	ldr r1, _0801DDE8 @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _0801DDEC @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	ldr r4, _0801DDF0 @ =sub_801D9D0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
_0801DDDE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DDE8: .4byte 0xFFFFFB00
_0801DDEC: .4byte 0xDFFFFFFF
_0801DDF0: .4byte sub_801D9D0

	thumb_func_start sub_801DDF4
sub_801DDF4: @ 0x0801DDF4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_801C4A0
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DE14
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8017004
_0801DE14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801DE1C
sub_801DE1C: @ 0x0801DE1C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xf5
	strh r0, [r5, #0x30]
	ldr r0, [r5, #4]
	ldr r1, _0801DE48 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801DE4C
	adds r0, r5, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	b _0801DE5A
	.align 2, 0
_0801DE48: .4byte 0xDFFFFFFF
_0801DE4C:
	adds r0, r5, #0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
_0801DE5A:
	str r0, [r5, #0x14]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801DE8C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0801DE90 @ =sub_801C934
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DE8C: .4byte 0xFFFFBFFF
_0801DE90: .4byte sub_801C934

	thumb_func_start sub_801DE94
sub_801DE94: @ 0x0801DE94
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	ldr r0, [r4, #4]
	movs r1, #0x12
	orrs r0, r1
	str r0, [r4, #4]
	movs r5, #0
	movs r0, #0xf4
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8012FC0
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #0x6d
	bl Player_PlaySong
	ldr r5, _0801DEE0 @ =sub_801CA00
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DEE0: .4byte sub_801CA00

	thumb_func_start sub_801DEE4
sub_801DEE4: @ 0x0801DEE4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0xf2
	strh r0, [r4, #0x30]
	strh r1, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x9e
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x28
	strh r0, [r1]
	ldr r5, _0801DF14 @ =sub_801CC14
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF14: .4byte sub_801CC14

	thumb_func_start Player_801DF18
Player_801DF18: @ 0x0801DF18
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801DF6E
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldrh r0, [r4, #0x36]
	cmp r0, #1
	beq _0801DF4E
	movs r0, #1
	strh r0, [r4, #0x36]
_0801DF4E:
	ldr r2, [r4, #4]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0801DF60
	ldr r1, [r4]
	ldr r0, _0801DF74 @ =Player_801DF18
	cmp r1, r0
	beq _0801DF6E
_0801DF60:
	ldr r0, _0801DF78 @ =0xDDFFFFFF
	ands r2, r0
	str r2, [r4, #4]
	ldr r1, _0801DF7C @ =Player_800891C
	adds r0, r4, #0
	bl SetPlayerCallback
_0801DF6E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF74: .4byte Player_801DF18
_0801DF78: .4byte 0xDDFFFFFF
_0801DF7C: .4byte Player_800891C

	thumb_func_start sub_801DF80
sub_801DF80: @ 0x0801DF80
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xe9
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl Player_8012FE0
	ldr r0, [r4, #0x14]
	ldr r1, _0801DFB8 @ =0xFFFFFB00
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	ldr r1, _0801DFBC @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r5, _0801DFC0 @ =sub_801D9D0
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801DFB8: .4byte 0xFFFFFB00
_0801DFBC: .4byte 0xDFFFFFFF
_0801DFC0: .4byte sub_801D9D0

	thumb_func_start sub_801DFC4
sub_801DFC4: @ 0x0801DFC4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801DFFC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r5, #0
	bl sub_8012FA0
	movs r0, #0xf8
	strh r0, [r5, #0x30]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E000
	movs r0, #0xfc
	lsls r0, r0, #8
	b _0801E004
	.align 2, 0
_0801DFFC: .4byte 0xFFFFBFFF
_0801E000:
	movs r0, #0x80
	lsls r0, r0, #3
_0801E004:
	strh r0, [r5, #0x18]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r5, #0x1a]
	ldr r1, _0801E030 @ =0x00000212
	adds r0, r5, #0
	bl Player_PlaySong
	adds r0, r5, #0
	bl sub_8016F28
	ldr r4, _0801E034 @ =sub_801E92C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E030: .4byte 0x00000212
_0801E034: .4byte sub_801E92C

	thumb_func_start sub_801E038
sub_801E038: @ 0x0801E038
	push {r4, r5, lr}
	adds r5, r0, #0
	bl Player_800D880
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl sub_8012FA0
	movs r0, #0xfd
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801E070 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E074
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0801E078
	.align 2, 0
_0801E070: .4byte 0xFFFFBFFF
_0801E074:
	movs r0, #0xc0
	lsls r0, r0, #2
_0801E078:
	strh r0, [r5, #0x18]
	movs r0, #0
	strh r0, [r5, #0x1a]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0x14
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0x70
	bl Player_PlaySong
	ldr r4, _0801E0A8 @ =sub_801EAF4
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E0A8: .4byte sub_801EAF4

	thumb_func_start sub_801E0AC
sub_801E0AC: @ 0x0801E0AC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_8012FC0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	ldrh r1, [r5, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x14
	cmp r0, r1
	bhi _0801E0DE
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E0D8
	movs r0, #0xfc
	lsls r0, r0, #8
	b _0801E0DC
_0801E0D8:
	movs r0, #0x80
	lsls r0, r0, #3
_0801E0DC:
	strh r0, [r5, #0x18]
_0801E0DE:
	movs r0, #0
	strh r0, [r5, #0x1a]
	strh r0, [r5, #0x1c]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r5, #4]
	ldr r0, _0801E118 @ =0x00000101
	strh r0, [r5, #0x30]
	adds r0, r5, #0
	movs r1, #0x6f
	bl Player_PlaySong
	adds r0, r5, #0
	bl sub_8016F28
	ldr r4, _0801E11C @ =sub_801E4C0
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	bl _call_via_r4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E118: .4byte 0x00000101
_0801E11C: .4byte sub_801E4C0

	thumb_func_start sub_801E120
sub_801E120: @ 0x0801E120
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801E178
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0801E144
	movs r4, #8
_0801E144:
	ldr r1, _0801E170 @ =gUnknown_080CE5B8
	lsls r0, r4, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E15C
	rsbs r2, r2, #0
_0801E15C:
	strh r2, [r5, #0x1c]
	ldr r1, _0801E174 @ =Player_8005380
	adds r0, r5, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	movs r1, #0x6e
	bl Player_PlaySong
	b _0801E1D4
	.align 2, 0
_0801E170: .4byte gUnknown_080CE5B8
_0801E174: .4byte Player_8005380
_0801E178:
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r4, [r0]
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	adds r6, r0, #0
	cmp r1, #0
	beq _0801E196
	asrs r0, r2, #0x15
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bgt _0801E196
	movs r4, #0
_0801E196:
	ldr r0, _0801E210 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801E1D2
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	adds r2, r4, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	bge _0801E1BC
	adds r2, r1, #0
_0801E1BC:
	adds r4, r2, #0
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801E214 @ =0x00000211
	adds r0, r5, #0
	bl Player_PlaySong
_0801E1D2:
	strh r4, [r6]
_0801E1D4:
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801E218
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E248
	adds r0, r5, #0
	bl sub_8016E50
	adds r0, r5, #0
	bl sub_8016D30
	adds r0, r5, #0
	bl sub_8014E70
	adds r0, r5, #0
	bl sub_8016EB0
	adds r0, r5, #0
	bl Player_80149E4
	adds r0, r5, #0
	bl sub_8017004
	b _0801E248
	.align 2, 0
_0801E210: .4byte gStageData
_0801E214: .4byte 0x00000211
_0801E218:
	adds r0, r5, #0
	bl sub_8015144
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E248
	adds r0, r5, #0
	bl Player_801479C
	adds r0, r5, #0
	bl sub_8016D30
	adds r0, r5, #0
	bl sub_8014E70
	adds r0, r5, #0
	bl sub_8012EB8
	adds r0, r5, #0
	bl sub_8016E00
_0801E248:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801E250
sub_801E250: @ 0x0801E250
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E2CC
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801E292
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801E292
	movs r0, #1
	strh r0, [r4, #0x36]
_0801E292:
	ldr r1, [r4]
	ldr r0, _0801E2D4 @ =Player_8005380
	cmp r1, r0
	beq _0801E2AA
	ldr r0, _0801E2D8 @ =Player_80077CC
	cmp r1, r0
	beq _0801E2AA
	ldr r0, [r4, #4]
	ldr r1, _0801E2DC @ =0x00004024
	ands r0, r1
	cmp r0, #4
	beq _0801E2CC
_0801E2AA:
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	ldr r1, _0801E2E0 @ =sub_801EA44
	adds r0, r4, #0
	bl SetPlayerCallback
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0801E2CC
	adds r0, r4, #0
	movs r1, #0xdf
	bl Player_PlaySong
_0801E2CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E2D4: .4byte Player_8005380
_0801E2D8: .4byte Player_80077CC
_0801E2DC: .4byte 0x00004024
_0801E2E0: .4byte sub_801EA44

	thumb_func_start sub_801E2E4
sub_801E2E4: @ 0x0801E2E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E30A
	ldr r0, [r4, #4]
	ldr r1, _0801E350 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _0801E354 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
_0801E30A:
	adds r1, r4, #0
	adds r1, #0x5b
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801E326
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801E326
	adds r0, r4, #0
	movs r1, #0x81
	bl Player_PlaySong
_0801E326:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E34A
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801E34A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E350: .4byte 0xFFFF7FFF
_0801E354: .4byte Player_800DAF4

	thumb_func_start sub_801E358
sub_801E358: @ 0x0801E358
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E390
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	ldr r1, _0801E388 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _0801E38C @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801E3D0
	.align 2, 0
_0801E388: .4byte 0xFFFF7FFF
_0801E38C: .4byte Player_800DAF4
_0801E390:
	adds r1, r4, #0
	adds r1, #0x5b
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801E3AC
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801E3AC
	adds r0, r4, #0
	movs r1, #0x81
	bl Player_PlaySong
_0801E3AC:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E3D0
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801E3D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801E3D8
sub_801E3D8: @ 0x0801E3D8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	ldrh r0, [r1]
	subs r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E438
	ldr r0, [r4, #4]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801E404
	ldr r0, _0801E400 @ =0x0000FE08
	b _0801E406
	.align 2, 0
_0801E400: .4byte 0x0000FE08
_0801E404:
	ldr r0, _0801E418 @ =0x0000FC58
_0801E406:
	strh r0, [r4, #0x1a]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, _0801E41C @ =0xFFFFFD00
	cmp r1, r0
	bge _0801E420
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0801E428
	.align 2, 0
_0801E418: .4byte 0x0000FC58
_0801E41C: .4byte 0xFFFFFD00
_0801E420:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	ble _0801E42A
_0801E428:
	strh r0, [r4, #0x18]
_0801E42A:
	ldr r1, _0801E434 @ =sub_801EA9C
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801E444
	.align 2, 0
_0801E434: .4byte sub_801EA9C
_0801E438:
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801E444:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801E44C
sub_801E44C: @ 0x0801E44C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0801E46C
	adds r0, r4, #0
	movs r1, #0x80
	bl Player_PlaySong
_0801E46C:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0801E4A0
	ldr r0, _0801E488 @ =0x0000FA50
	strh r0, [r4, #0x1a]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E48C
	movs r0, #0xfe
	lsls r0, r0, #8
	b _0801E490
	.align 2, 0
_0801E488: .4byte 0x0000FA50
_0801E48C:
	movs r0, #0x80
	lsls r0, r0, #2
_0801E490:
	strh r0, [r4, #0x18]
	ldr r1, _0801E49C @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801E4B8
	.align 2, 0
_0801E49C: .4byte Player_800DAF4
_0801E4A0:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E4B8
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
_0801E4B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801E4C0
sub_801E4C0: @ 0x0801E4C0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x18]
	movs r2, #0x18
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _0801E4DA
	adds r0, #0x10
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0801E4EC
	b _0801E4E8
_0801E4DA:
	cmp r1, #0
	ble _0801E4EC
	subs r0, #0x10
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0801E4EC
_0801E4E8:
	movs r0, #0
	strh r0, [r4, #0x18]
_0801E4EC:
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801E50E
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r1, [r2, #0x14]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0801E50E
	ldr r0, _0801E53C @ =0xFFFFBFFF
	ands r1, r0
	str r1, [r2, #0x14]
	movs r0, #1
	strh r0, [r4, #0x36]
_0801E50E:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0801E544
	ldr r1, [r4, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0801E54E
	strh r1, [r4, #0x1a]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801E53C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	movs r0, #2
	strh r0, [r4, #0x36]
	ldr r1, _0801E540 @ =sub_801EB94
	b _0801E58E
	.align 2, 0
_0801E53C: .4byte 0xFFFFBFFF
_0801E540: .4byte sub_801EB94
_0801E544:
	ldr r0, [r4, #4]
	movs r5, #4
	ands r0, r5
	cmp r0, #0
	beq _0801E5A0
_0801E54E:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E5DA
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801E5DA
	adds r0, r4, #0
	bl Player_8012FF0
	ldr r0, _0801E598 @ =0x00000101
	strh r0, [r4, #0x30]
	ldr r1, _0801E59C @ =sub_801E4C0
_0801E58E:
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801E5DA
	.align 2, 0
_0801E598: .4byte 0x00000101
_0801E59C: .4byte sub_801E4C0
_0801E5A0:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E5DA
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8012EA8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801E5C4
	ldr r0, [r4, #4]
	orrs r0, r5
	b _0801E5CC
_0801E5C4:
	ldr r0, [r4, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
_0801E5CC:
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8016E00
	adds r0, r4, #0
	bl sub_8014E70
_0801E5DA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_801E5E0
sub_801E5E0: @ 0x0801E5E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801E60C @ =gStageData
	ldrh r1, [r4, #0x1e]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	bne _0801E614
	movs r0, #1
	strh r0, [r4, #0x36]
	adds r2, r4, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801E610 @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801E654
	.align 2, 0
_0801E60C: .4byte gStageData
_0801E610: .4byte Player_800DAF4
_0801E614:
	adds r0, r4, #0
	bl sub_8014940
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	asrs r1, r1, #4
	strh r1, [r4, #0x18]
	ldrh r1, [r4, #0x1a]
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	cmp r0, #0x7f
	bgt _0801E636
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r4, #0x1a]
_0801E636:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E654
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801E654:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801E65C
sub_801E65C: @ 0x0801E65C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_8012FC0
	movs r0, #0xf7
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_80170A0
	ldr r1, _0801E694 @ =0x00000211
	adds r0, r4, #0
	bl Player_PlaySong
	ldr r5, _0801E698 @ =sub_801E120
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E694: .4byte 0x00000211
_0801E698: .4byte sub_801E120

	thumb_func_start sub_801E69C
sub_801E69C: @ 0x0801E69C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801E6EC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #0x1e
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0xff
	strh r0, [r4, #0x30]
	ldr r5, _0801E6F0 @ =sub_801E980
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E6EC: .4byte 0xFFFFBFFF
_0801E6F0: .4byte sub_801E980

	thumb_func_start sub_801E6F4
sub_801E6F4: @ 0x0801E6F4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801E748 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	ldr r1, _0801E74C @ =0x00008004
	orrs r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E750 @ =0x00000103
	strh r0, [r4, #0x30]
	adds r0, #0x45
	adds r1, r4, r0
	movs r0, #0x10
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl Player_8017E50
	ldr r5, _0801E754 @ =sub_801E2E4
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E748: .4byte 0xFFFFBFFF
_0801E74C: .4byte 0x00008004
_0801E750: .4byte 0x00000103
_0801E754: .4byte sub_801E2E4

	thumb_func_start sub_801E758
sub_801E758: @ 0x0801E758
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801E7B0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	ldr r0, [r4, #4]
	ldr r1, _0801E7B4 @ =0x00008004
	orrs r0, r1
	str r0, [r4, #4]
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r4, #0x30]
	adds r0, #0x44
	adds r1, r4, r0
	movs r0, #0x10
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x5b
	movs r0, #0xa
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8017EF4
	ldr r5, _0801E7B8 @ =sub_801E358
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E7B0: .4byte 0xFFFFBFFF
_0801E7B4: .4byte 0x00008004
_0801E7B8: .4byte sub_801E358

	thumb_func_start sub_801E7BC
sub_801E7BC: @ 0x0801E7BC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	ldr r0, [r4, #4]
	ldr r1, _0801E81C @ =0x00008004
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	ldr r1, _0801E820 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r2, #0x14]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r0, #0
	strh r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r4, #0x1a]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xa
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #4]
	strh r2, [r4, #0x30]
	adds r0, r4, #0
	bl sub_8018034
	ldr r5, _0801E824 @ =sub_801E9E0
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E81C: .4byte 0x00008004
_0801E820: .4byte 0xFFFFBFFF
_0801E824: .4byte sub_801E9E0

	thumb_func_start sub_801E828
sub_801E828: @ 0x0801E828
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	bl sub_8012FA0
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x1a]
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x26
	strb r1, [r0]
	ldr r0, _0801E880 @ =0x00000105
	strh r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0x14
	strh r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	ldr r5, _0801E884 @ =sub_801E3D8
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E880: .4byte 0x00000105
_0801E884: .4byte sub_801E3D8

	thumb_func_start sub_801E888
sub_801E888: @ 0x0801E888
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	ldr r0, [r4, #4]
	movs r5, #4
	orrs r0, r5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl sub_8012FA0
	movs r0, #0
	strh r0, [r4, #0x1a]
	movs r0, #0x81
	lsls r0, r0, #1
	strh r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_8017F98
	ldr r5, _0801E8DC @ =sub_801E44C
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E8DC: .4byte sub_801E44C

	thumb_func_start sub_801E8E0
sub_801E8E0: @ 0x0801E8E0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl Player_800D880
	adds r0, r4, #0
	bl sub_8012FA0
	movs r0, #0
	strh r0, [r4, #0x1a]
	movs r0, #0x83
	lsls r0, r0, #1
	strh r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl Player_BoostModeDisengage
	ldr r0, [r4, #4]
	ldr r1, _0801E924 @ =0x00040004
	orrs r0, r1
	str r0, [r4, #4]
	ldr r5, _0801E928 @ =sub_801E5E0
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetPlayerCallback
	adds r0, r4, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E924: .4byte 0x00040004
_0801E928: .4byte sub_801E5E0

	thumb_func_start sub_801E92C
sub_801E92C: @ 0x0801E92C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0801E948 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x16]
	ands r0, r1
	cmp r0, #0
	beq _0801E950
	ldr r1, _0801E94C @ =sub_801E0AC
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801E97A
	.align 2, 0
_0801E948: .4byte gStageData
_0801E94C: .4byte sub_801E0AC
_0801E950:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E97A
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801E97A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_801E980
sub_801E980: @ 0x0801E980
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x5b
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801E9A0
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801E9A0
	ldr r1, _0801E9D8 @ =0x00000216
	adds r0, r4, #0
	bl Player_PlaySong
_0801E9A0:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E9D2
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801E9D2
	ldr r1, _0801E9DC @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801E9D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E9D8: .4byte 0x00000216
_0801E9DC: .4byte Player_8005380

	thumb_func_start sub_801E9E0
sub_801E9E0: @ 0x0801E9E0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801EA38
	adds r0, r4, #0
	bl sub_8014E70
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801EA38
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801EA38
	movs r0, #1
	strh r0, [r4, #0x36]
	ldr r1, _0801EA40 @ =sub_801E250
	adds r0, r4, #0
	bl SetPlayerCallback
_0801EA38:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EA40: .4byte sub_801E250

	thumb_func_start sub_801EA44
sub_801EA44: @ 0x0801EA44
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0801EA70
	movs r0, #2
	strh r0, [r4, #0x36]
	ldr r0, [r4, #4]
	ldr r1, _0801EA68 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #4]
	ldr r1, _0801EA6C @ =Player_800DAF4
	adds r0, r4, #0
	bl SetPlayerCallback
	b _0801EA94
	.align 2, 0
_0801EA68: .4byte 0xFFFF7FFF
_0801EA6C: .4byte Player_800DAF4
_0801EA70:
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801EA94
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801EA94:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801EA9C
sub_801EA9C: @ 0x0801EA9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014BC4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801EAEC
	ldrh r0, [r4, #0x36]
	cmp r0, #0
	bne _0801EABC
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	blt _0801EABC
	movs r0, #1
	strh r0, [r4, #0x36]
_0801EABC:
	adds r0, r4, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801EAEC
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
_0801EAEC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801EAF4
sub_801EAF4: @ 0x0801EAF4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrh r0, [r5]
	subs r0, #1
	strh r0, [r5]
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801EB38
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt _0801EB38
	ldr r1, _0801EB40 @ =sub_801EB44
	adds r0, r4, #0
	bl SetPlayerCallback
_0801EB38:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801EB40: .4byte sub_801EB44

	thumb_func_start sub_801EB44
sub_801EB44: @ 0x0801EB44
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8014940
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801EB88
	adds r0, r4, #0
	bl sub_8016E50
	adds r0, r4, #0
	bl sub_8016D30
	adds r0, r4, #0
	bl sub_8016EB0
	adds r0, r4, #0
	bl Player_80149E4
	adds r0, r4, #0
	bl sub_8017004
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0801EB88
	ldr r1, _0801EB90 @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801EB88:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EB90: .4byte Player_8005380

	thumb_func_start sub_801EB94
sub_801EB94: @ 0x0801EB94
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0801EBB0
	ldr r1, _0801EBBC @ =Player_8005380
	adds r0, r4, #0
	bl SetPlayerCallback
_0801EBB0:
	adds r0, r4, #0
	bl sub_8014E70
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801EBBC: .4byte Player_8005380

	thumb_func_start sub_801EBC0
sub_801EBC0: @ 0x0801EBC0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0801EBF8 @ =gStageData
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _0801ECA6
	cmp r4, #0
	beq _0801ECA6
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	cmp r1, #6
	beq _0801EBFC
	cmp r1, #7
	beq _0801EC0A
	ldr r0, [r5, #0x50]
	cmp r0, r4
	beq _0801EC18
	adds r0, r4, #0
	bl sub_801ECAC
	b _0801ECA6
	.align 2, 0
_0801EBF8: .4byte gStageData
_0801EBFC:
	str r4, [r5, #0x50]
	movs r0, #0
	str r0, [r5, #0x54]
	adds r0, r4, #0
	bl sub_8020544
	b _0801ECA6
_0801EC0A:
	str r4, [r5, #0x50]
	movs r0, #0
	str r0, [r5, #0x54]
	adds r0, r4, #0
	bl sub_8020558
	b _0801ECA6
_0801EC18:
	ldrb r0, [r5, #0x18]
	cmp r0, r1
	beq _0801ECA6
	cmp r0, #0xf
	beq _0801ECA6
	cmp r1, #0xd
	bhi _0801EC8A
	lsls r0, r1, #2
	ldr r1, _0801EC30 @ =_0801EC34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801EC30: .4byte _0801EC34
_0801EC34: @ jump table
	.4byte _0801EC6C @ case 0
	.4byte _0801EC6C @ case 1
	.4byte _0801EC8A @ case 2
	.4byte _0801EC8A @ case 3
	.4byte _0801EC7C @ case 4
	.4byte _0801EC84 @ case 5
	.4byte _0801EC8A @ case 6
	.4byte _0801EC8A @ case 7
	.4byte _0801EC8A @ case 8
	.4byte _0801EC74 @ case 9
	.4byte _0801EC74 @ case 10
	.4byte _0801EC8A @ case 11
	.4byte _0801EC6C @ case 12
	.4byte _0801EC74 @ case 13
_0801EC6C:
	adds r0, r4, #0
	bl sub_8020444
	b _0801EC8A
_0801EC74:
	adds r0, r4, #0
	bl sub_8020488
	b _0801EC8A
_0801EC7C:
	adds r0, r4, #0
	bl sub_802051C
	b _0801EC8A
_0801EC84:
	adds r0, r4, #0
	bl sub_8020530
_0801EC8A:
	str r4, [r5, #0x50]
	strb r6, [r5, #0x18]
	ldr r0, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801EC9C
	strb r1, [r5, #0x1c]
	b _0801EC9E
_0801EC9C:
	strb r0, [r5, #0x1c]
_0801EC9E:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r5, #0x1d]
_0801ECA6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_801ECAC
sub_801ECAC: @ 0x0801ECAC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r2, _0801ECF0 @ =gStageData
	adds r0, r2, #0
	adds r0, #0x98
	ldr r6, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r4, [r3, #0x50]
	adds r7, r2, #0
	cmp r4, r5
	beq _0801EDA4
	cmp r5, #0
	beq _0801EDA4
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0801ECF4
	ldr r0, [r3, #0x54]
	cmp r0, #0
	beq _0801ECE8
	adds r1, r4, #0
	adds r1, #0x54
	movs r0, #0
	strh r0, [r1]
_0801ECE8:
	movs r0, #0
	str r0, [r3, #0x54]
	b _0801ECF6
	.align 2, 0
_0801ECF0: .4byte gStageData
_0801ECF4:
	str r4, [r3, #0x54]
_0801ECF6:
	str r5, [r3, #0x50]
	ldr r0, [r3, #0x54]
	cmp r0, #0
	beq _0801ED48
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0x14
	bne _0801ED48
	ldr r0, [r3, #0x50]
	ldr r1, [r0, #4]
	movs r2, #1
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _0801ED20
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801ED24
_0801ED20:
	ldr r0, [r2, #0x10]
	ldr r1, _0801ED3C @ =0xFFFFE800
_0801ED24:
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801ED40
	ldr r0, [r2, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801ED44
	.align 2, 0
_0801ED3C: .4byte 0xFFFFE800
_0801ED40:
	ldr r0, [r2, #0x14]
	ldr r1, _0801ED5C @ =0xFFFFE800
_0801ED44:
	adds r0, r0, r1
	str r0, [r3, #4]
_0801ED48:
	movs r0, #0xf
	strb r0, [r3, #0x18]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801ED60
	strb r1, [r3, #0x1c]
	b _0801ED62
	.align 2, 0
_0801ED5C: .4byte 0xFFFFE800
_0801ED60:
	strb r0, [r3, #0x1c]
_0801ED62:
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r3, #0x1d]
	ldrb r0, [r7, #3]
	cmp r0, #4
	bls _0801EDA0
	movs r1, #0
	ldr r0, _0801EDAC @ =gPlayers
	cmp r0, r5
	beq _0801ED94
	adds r2, r0, #0
_0801ED7A:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _0801ED94
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	cmp r0, r5
	bne _0801ED7A
_0801ED94:
	ldrb r7, [r7, #6]
	cmp r1, r7
	bne _0801EDA0
	adds r0, r1, #0
	bl sub_80276A8
_0801EDA0:
	ldr r0, _0801EDB0 @ =sub_801F064
	str r0, [r6, #8]
_0801EDA4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EDAC: .4byte gPlayers
_0801EDB0: .4byte sub_801F064

	thumb_func_start sub_801EDB4
sub_801EDB4: @ 0x0801EDB4
	push {r4, r5, r6, lr}
	ldr r4, _0801EDFC @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r0, [r6]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #4]
	ldr r1, _0801EE00 @ =0xFFFFE800
	adds r0, r0, r1
	str r0, [r6, #0xc]
	movs r2, #0
	movs r1, #0
	strh r1, [r6, #0x10]
	strh r1, [r6, #0x12]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x14]
	strh r1, [r6, #0x16]
	movs r0, #0x3c
	strb r0, [r6, #0x1a]
	strb r2, [r6, #0x1b]
	strb r2, [r6, #0x19]
	ldr r0, _0801EE04 @ =0x03000020
	adds r5, r3, r0
	ldr r0, _0801EE08 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _0801EE10
	ldr r0, _0801EE0C @ =0x06014000
	b _0801EE16
	.align 2, 0
_0801EDFC: .4byte gCurTask
_0801EE00: .4byte 0xFFFFE800
_0801EE04: .4byte 0x03000020
_0801EE08: .4byte gStageData
_0801EE0C: .4byte 0x06014000
_0801EE10:
	cmp r0, #6
	bne _0801EE18
	ldr r0, _0801EE64 @ =0x06014020
_0801EE16:
	str r0, [r5]
_0801EE18:
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	ldr r1, _0801EE68 @ =gUnknown_08E2EB18
	ldrh r0, [r1]
	movs r3, #0
	movs r2, #0
	strh r0, [r5, #0xc]
	ldr r0, [r6, #0x50]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldr r0, [r6, #0x50]
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r2, [r5, #0x16]
	ldr r0, _0801EE6C @ =0x0000FFFF
	strh r0, [r5, #0x18]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r3, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
	ldr r1, [r4]
	ldr r0, _0801EE70 @ =sub_802056C
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801EE64: .4byte 0x06014020
_0801EE68: .4byte gUnknown_08E2EB18
_0801EE6C: .4byte 0x0000FFFF
_0801EE70: .4byte sub_802056C

	thumb_func_start sub_801EE74
sub_801EE74: @ 0x0801EE74
	push {r4, r5, r6, lr}
	ldr r6, _0801EED0 @ =gCurTask
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	ldr r0, [r1]
	str r0, [r1, #8]
	ldr r0, [r1, #4]
	str r0, [r1, #0xc]
	movs r4, #0
	movs r5, #0
	strh r5, [r1, #0x10]
	strh r5, [r1, #0x12]
	ldrh r3, [r1, #0x16]
	ldr r0, _0801EED4 @ =0x0000FFF9
	ands r0, r3
	strh r0, [r1, #0x16]
	strb r4, [r1, #0x18]
	strb r4, [r1, #0x19]
	strb r4, [r1, #0x1a]
	ldr r0, _0801EED8 @ =0x03000020
	adds r2, r2, r0
	ldr r1, _0801EEDC @ =gUnknown_08E2EB18
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x1a]
	strh r5, [r2, #0x16]
	ldr r0, _0801EEE0 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r0, [r2, #0x28]
	ldr r1, [r6]
	ldr r0, _0801EEE4 @ =sub_801EEE8
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801EED0: .4byte gCurTask
_0801EED4: .4byte 0x0000FFF9
_0801EED8: .4byte 0x03000020
_0801EEDC: .4byte gUnknown_08E2EB18
_0801EEE0: .4byte 0x0000FFFF
_0801EEE4: .4byte sub_801EEE8

	thumb_func_start sub_801EEE8
sub_801EEE8: @ 0x0801EEE8
	push {lr}
	ldr r0, _0801EF0C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldr r2, [r3, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801EF10
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801EF14
	.align 2, 0
_0801EF0C: .4byte gCurTask
_0801EF10:
	ldr r0, [r2, #0x10]
	ldr r1, _0801EF30 @ =0xFFFFE800
_0801EF14:
	adds r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #0x50]
	ldr r1, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #9
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _0801EF34
	ldr r0, [r2, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801EF38
	.align 2, 0
_0801EF30: .4byte 0xFFFFE800
_0801EF34:
	ldr r0, [r2, #0x14]
	ldr r1, _0801EF4C @ =0xFFFFE800
_0801EF38:
	adds r0, r0, r1
	str r0, [r3, #0xc]
	ldr r1, [r2, #0x10]
	ldr r0, [r3]
	cmp r1, r0
	bge _0801EF50
	ldrh r1, [r3, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801EF56
	.align 2, 0
_0801EF4C: .4byte 0xFFFFE800
_0801EF50:
	ldrh r1, [r3, #0x16]
	ldr r0, _0801EF68 @ =0x0000FFFE
	ands r0, r1
_0801EF56:
	strh r0, [r3, #0x16]
	movs r0, #1
	bl sub_8020130
	bl sub_8020284
	pop {r0}
	bx r0
	.align 2, 0
_0801EF68: .4byte 0x0000FFFE

	thumb_func_start sub_801EF6C
sub_801EF6C: @ 0x0801EF6C
	push {r4, r5, r6, lr}
	ldr r6, _0801EFD0 @ =gCurTask
	ldr r0, [r6]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r0, [r1]
	str r0, [r1, #8]
	ldr r0, [r1, #4]
	str r0, [r1, #0xc]
	movs r5, #0
	movs r4, #0
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	ldrh r2, [r1, #0x16]
	ldr r0, _0801EFD4 @ =0x0000FFFB
	ands r0, r2
	movs r2, #2
	orrs r0, r2
	strh r0, [r1, #0x16]
	movs r0, #1
	strb r0, [r1, #0x18]
	movs r0, #4
	strb r0, [r1, #0x19]
	strb r5, [r1, #0x1a]
	ldr r0, _0801EFD8 @ =0x03000020
	adds r3, r3, r0
	ldr r1, _0801EFDC @ =gUnknown_08E2EB18
	ldrh r0, [r1, #0x10]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0x12]
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x16]
	ldr r0, _0801EFE0 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldr r1, [r6]
	ldr r0, _0801EFE4 @ =sub_801EFE8
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801EFD0: .4byte gCurTask
_0801EFD4: .4byte 0x0000FFFB
_0801EFD8: .4byte 0x03000020
_0801EFDC: .4byte gUnknown_08E2EB18
_0801EFE0: .4byte 0x0000FFFF
_0801EFE4: .4byte sub_801EFE8

	thumb_func_start sub_801EFE8
sub_801EFE8: @ 0x0801EFE8
	push {r4, r5, r6, lr}
	ldr r0, _0801F040 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r0, [r5, #0x1b]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r5, #0x1b]
	ldrb r2, [r5, #0x1b]
	ldr r3, [r5, #0x50]
	ldr r4, _0801F044 @ =gSineTable
	lsls r2, r2, #4
	adds r1, #0xc1
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r6, #0
	ldrsh r1, [r0, r6]
	asrs r1, r1, #1
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r5, #8]
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r0, #0
	ldrsh r1, [r2, r0]
	asrs r1, r1, #1
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r3, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F048
	ldrh r1, [r5, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F04E
	.align 2, 0
_0801F040: .4byte gCurTask
_0801F044: .4byte gSineTable
_0801F048:
	ldrh r1, [r5, #0x16]
	ldr r0, _0801F060 @ =0x0000FFFE
	ands r0, r1
_0801F04E:
	strh r0, [r5, #0x16]
	movs r0, #4
	bl sub_8020130
	bl sub_8020284
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F060: .4byte 0x0000FFFE

	thumb_func_start sub_801F064
sub_801F064: @ 0x0801F064
	push {r4, r5, lr}
	ldr r5, _0801F0C4 @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r0, [r1]
	str r0, [r1, #8]
	ldr r0, [r1, #4]
	str r0, [r1, #0xc]
	movs r4, #0
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	ldrh r2, [r1, #0x16]
	ldr r0, _0801F0C8 @ =0x0000FFFD
	ands r0, r2
	movs r2, #4
	orrs r0, r2
	strh r0, [r1, #0x16]
	movs r0, #0xf
	strb r0, [r1, #0x18]
	movs r0, #0xc
	strb r0, [r1, #0x19]
	movs r0, #0x1e
	strb r0, [r1, #0x1a]
	ldr r0, _0801F0CC @ =0x03000020
	adds r3, r3, r0
	ldr r1, _0801F0D0 @ =gUnknown_08E2EB18
	ldrh r0, [r1, #0x30]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0x32]
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x16]
	ldr r0, _0801F0D4 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldr r1, [r5]
	ldr r0, _0801F0D8 @ =sub_80205F4
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F0C4: .4byte gCurTask
_0801F0C8: .4byte 0x0000FFFD
_0801F0CC: .4byte 0x03000020
_0801F0D0: .4byte gUnknown_08E2EB18
_0801F0D4: .4byte 0x0000FFFF
_0801F0D8: .4byte sub_80205F4

	thumb_func_start sub_801F0DC
sub_801F0DC: @ 0x0801F0DC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801F124 @ =gCurTask
	mov ip, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r3, [r5, #0x50]
	adds r3, #0x2a
	ldrb r0, [r3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0xa
	movs r1, #0xf0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	ldr r0, _0801F128 @ =gUnknown_08E2EB18
	lsls r1, r6, #2
	adds r2, r1, r0
	ldrh r4, [r2]
	adds r0, #2
	adds r1, r1, r0
	ldrh r7, [r1]
	movs r0, #0
	strh r0, [r5, #0x10]
	strh r0, [r5, #0x12]
	movs r0, #4
	strb r0, [r5, #0x18]
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	beq _0801F12C
	strb r6, [r5, #0x19]
	b _0801F130
	.align 2, 0
_0801F124: .4byte gCurTask
_0801F128: .4byte gUnknown_08E2EB18
_0801F12C:
	movs r0, #6
	strb r0, [r5, #0x19]
_0801F130:
	ldrh r1, [r5, #0x16]
	ldr r0, _0801F178 @ =0x0000FFFD
	ands r0, r1
	movs r3, #0
	strh r0, [r5, #0x16]
	movs r0, #0x3c
	strb r0, [r5, #0x1a]
	adds r2, r5, #0
	adds r2, #0x20
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	strh r4, [r2, #0xc]
	strb r7, [r2, #0x1a]
	strh r3, [r2, #0x16]
	ldr r0, _0801F17C @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r0, [r2, #0x28]
	mov r0, ip
	ldr r1, [r0]
	ldr r0, _0801F180 @ =sub_801F184
	str r0, [r1, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F178: .4byte 0x0000FFFD
_0801F17C: .4byte 0x0000FFFF
_0801F180: .4byte sub_801F184

	thumb_func_start sub_801F184
sub_801F184: @ 0x0801F184
	push {r4, lr}
	ldr r0, _0801F1A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F1AC
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801F1B0
	.align 2, 0
_0801F1A8: .4byte gCurTask
_0801F1AC:
	ldr r0, [r2, #0x10]
	ldr r1, _0801F1CC @ =0xFFFFE800
_0801F1B0:
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801F1D0
	ldr r0, [r2, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801F1D4
	.align 2, 0
_0801F1CC: .4byte 0xFFFFE800
_0801F1D0:
	ldr r0, [r2, #0x14]
	ldr r1, _0801F208 @ =0xFFFFE800
_0801F1D4:
	adds r0, r0, r1
	str r0, [r4, #0xc]
	movs r0, #1
	bl sub_8020130
	bl sub_8020284
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F248
	ldr r2, [r4, #0x50]
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	beq _0801F214
	ldr r0, _0801F20C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F210 @ =sub_801FC2C
	b _0801F246
	.align 2, 0
_0801F208: .4byte 0xFFFFE800
_0801F20C: .4byte gCurTask
_0801F210: .4byte sub_801FC2C
_0801F214:
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F226
	movs r0, #0x3c
	strb r0, [r4, #0x1a]
	b _0801F248
_0801F226:
	ldr r0, [r2, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	bne _0801F240
	ldr r0, _0801F238 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F23C @ =sub_801EF6C
	b _0801F246
	.align 2, 0
_0801F238: .4byte gCurTask
_0801F23C: .4byte sub_801EF6C
_0801F240:
	ldr r0, _0801F250 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F254 @ =sub_801EE74
_0801F246:
	str r0, [r1, #8]
_0801F248:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F250: .4byte gCurTask
_0801F254: .4byte sub_801EE74

	thumb_func_start sub_801F258
sub_801F258: @ 0x0801F258
	push {r4, r5, r6, lr}
	ldr r2, _0801F284 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	movs r5, #0
	ldr r4, [r3, #0x50]
	ldr r0, [r4, #0x10]
	str r0, [r3, #8]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0801F288
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #5
	b _0801F28C
	.align 2, 0
_0801F284: .4byte gCurTask
_0801F288:
	ldr r0, [r4, #0x14]
	ldr r1, _0801F2E8 @ =0xFFFFF000
_0801F28C:
	adds r0, r0, r1
	str r0, [r3, #0xc]
	movs r4, #0
	movs r0, #0x18
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x10]
	strh r4, [r3, #0x12]
	movs r0, #5
	strb r0, [r3, #0x18]
	movs r0, #7
	strb r0, [r3, #0x19]
	ldrh r1, [r3, #0x16]
	ldr r0, _0801F2EC @ =0x0000FFF9
	ands r0, r1
	strh r0, [r3, #0x16]
	adds r2, r3, #0
	adds r2, #0x20
	ldr r0, [r3, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F2BE
	movs r5, #0x80
	lsls r5, r5, #3
_0801F2BE:
	str r5, [r2, #8]
	ldr r1, _0801F2F0 @ =gUnknown_08E2EB18
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x1a]
	strh r4, [r2, #0x16]
	ldr r0, _0801F2F4 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r0, [r2, #0x28]
	ldr r1, [r6]
	ldr r0, _0801F2F8 @ =sub_801F2FC
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F2E8: .4byte 0xFFFFF000
_0801F2EC: .4byte 0x0000FFF9
_0801F2F0: .4byte gUnknown_08E2EB18
_0801F2F4: .4byte 0x0000FFFF
_0801F2F8: .4byte sub_801F2FC

	thumb_func_start sub_801F2FC
sub_801F2FC: @ 0x0801F2FC
	push {r4, lr}
	ldr r0, _0801F328 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #0x10]
	str r0, [r4, #8]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801F32C
	ldr r0, [r2, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	b _0801F332
	.align 2, 0
_0801F328: .4byte gCurTask
_0801F32C:
	ldr r0, [r2, #0x14]
	ldr r2, _0801F348 @ =0xFFFFF400
	adds r0, r0, r2
_0801F332:
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F34C
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F352
	.align 2, 0
_0801F348: .4byte 0xFFFFF400
_0801F34C:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801F368 @ =0x0000FFFE
	ands r0, r1
_0801F352:
	strh r0, [r4, #0x16]
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _0801F36C
	subs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #4
	bl sub_8020130
	b _0801F372
	.align 2, 0
_0801F368: .4byte 0x0000FFFE
_0801F36C:
	movs r0, #6
	bl sub_8020130
_0801F372:
	bl sub_8020284
	ldr r0, [r4, #8]
	ldr r1, [r4]
	subs r2, r0, r1
	cmp r2, #0
	blt _0801F38C
	ldr r0, _0801F388 @ =0x000003FE
	cmp r2, r0
	ble _0801F394
	b _0801F3CE
	.align 2, 0
_0801F388: .4byte 0x000003FE
_0801F38C:
	subs r1, r1, r0
	ldr r0, _0801F3A8 @ =0x000003FE
	cmp r1, r0
	bgt _0801F3CE
_0801F394:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #4]
	subs r2, r0, r1
	cmp r2, #0
	blt _0801F3B0
	ldr r0, _0801F3AC @ =0x000004FE
	cmp r2, r0
	ble _0801F3B8
	b _0801F3CE
	.align 2, 0
_0801F3A8: .4byte 0x000003FE
_0801F3AC: .4byte 0x000004FE
_0801F3B0:
	subs r1, r1, r0
	ldr r0, _0801F3EC @ =0x000004FE
	cmp r1, r0
	bgt _0801F3CE
_0801F3B8:
	ldr r1, _0801F3F0 @ =gUnknown_08E2EB18
	ldrh r0, [r1, #0x1c]
	strh r0, [r4, #0x2c]
	ldrh r0, [r1, #0x1e]
	adds r1, r4, #0
	adds r1, #0x3a
	strb r0, [r1]
	ldr r0, _0801F3F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F3F8 @ =sub_801F418
	str r0, [r1, #8]
_0801F3CE:
	ldr r1, [r4, #0x50]
	movs r2, #0x30
	ldrsh r0, [r1, r2]
	cmp r0, #0xbe
	beq _0801F408
	ldr r0, [r1, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	bne _0801F400
	ldr r0, _0801F3F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F3FC @ =sub_801EF6C
	b _0801F406
	.align 2, 0
_0801F3EC: .4byte 0x000004FE
_0801F3F0: .4byte gUnknown_08E2EB18
_0801F3F4: .4byte gCurTask
_0801F3F8: .4byte sub_801F418
_0801F3FC: .4byte sub_801EF6C
_0801F400:
	ldr r0, _0801F410 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F414 @ =sub_801EE74
_0801F406:
	str r0, [r1, #8]
_0801F408:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F410: .4byte gCurTask
_0801F414: .4byte sub_801EE74

	thumb_func_start sub_801F418
sub_801F418: @ 0x0801F418
	push {r4, lr}
	ldr r0, _0801F444 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #0x10]
	str r0, [r4]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801F448
	ldr r0, [r2, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r0, r1
	b _0801F44E
	.align 2, 0
_0801F444: .4byte gCurTask
_0801F448:
	ldr r0, [r2, #0x14]
	ldr r2, _0801F464 @ =0xFFFFF400
	adds r0, r0, r2
_0801F44E:
	str r0, [r4, #4]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F468
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F46E
	.align 2, 0
_0801F464: .4byte 0xFFFFF400
_0801F468:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801F490 @ =0x0000FFFE
	ands r0, r1
_0801F46E:
	strh r0, [r4, #0x16]
	bl sub_8020284
	ldr r1, [r4, #0x50]
	movs r2, #0x30
	ldrsh r0, [r1, r2]
	cmp r0, #0xbe
	beq _0801F4A4
	ldr r0, [r1, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	bne _0801F49C
	ldr r0, _0801F494 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F498 @ =sub_801EF6C
	b _0801F4A2
	.align 2, 0
_0801F490: .4byte 0x0000FFFE
_0801F494: .4byte gCurTask
_0801F498: .4byte sub_801EF6C
_0801F49C:
	ldr r0, _0801F4AC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F4B0 @ =sub_801EE74
_0801F4A2:
	str r0, [r1, #8]
_0801F4A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F4AC: .4byte gCurTask
_0801F4B0: .4byte sub_801EE74

	thumb_func_start sub_801F4B4
sub_801F4B4: @ 0x0801F4B4
	push {r4, r5, lr}
	ldr r5, _0801F51C @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, [r1, #0x50]
	ldr r0, [r2, #0x10]
	str r0, [r1, #8]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0xc]
	ldr r0, [r2, #0x10]
	str r0, [r1]
	ldr r0, [r2, #0x14]
	str r0, [r1, #4]
	movs r4, #0
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	movs r0, #4
	strb r0, [r1, #0x18]
	movs r0, #9
	strb r0, [r1, #0x19]
	ldrh r2, [r1, #0x16]
	ldr r0, _0801F520 @ =0x0000FFF9
	ands r0, r2
	strh r0, [r1, #0x16]
	ldr r0, _0801F524 @ =0x03000020
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	ldr r1, _0801F528 @ =gUnknown_08E2EB18
	ldrh r0, [r1, #0x24]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0x26]
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x16]
	ldr r0, _0801F52C @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldr r1, [r5]
	ldr r0, _0801F530 @ =sub_8020660
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F51C: .4byte gCurTask
_0801F520: .4byte 0x0000FFF9
_0801F524: .4byte 0x03000020
_0801F528: .4byte gUnknown_08E2EB18
_0801F52C: .4byte 0x0000FFFF
_0801F530: .4byte sub_8020660

	thumb_func_start sub_801F534
sub_801F534: @ 0x0801F534
	push {r4, r5, lr}
	ldr r5, _0801F59C @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, [r1, #0x50]
	ldr r0, [r2, #0x10]
	str r0, [r1, #8]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0xc]
	ldr r0, [r2, #0x10]
	str r0, [r1]
	ldr r0, [r2, #0x14]
	str r0, [r1, #4]
	movs r4, #0
	strh r4, [r1, #0x10]
	strh r4, [r1, #0x12]
	movs r0, #4
	strb r0, [r1, #0x18]
	movs r0, #0xa
	strb r0, [r1, #0x19]
	ldrh r2, [r1, #0x16]
	ldr r0, _0801F5A0 @ =0x0000FFF9
	ands r0, r2
	strh r0, [r1, #0x16]
	ldr r0, _0801F5A4 @ =0x03000020
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	ldr r1, _0801F5A8 @ =gUnknown_08E2EB18
	ldrh r0, [r1, #0x28]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0x2a]
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x16]
	ldr r0, _0801F5AC @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldr r1, [r5]
	ldr r0, _0801F5B0 @ =sub_80206B0
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F59C: .4byte gCurTask
_0801F5A0: .4byte 0x0000FFF9
_0801F5A4: .4byte 0x03000020
_0801F5A8: .4byte gUnknown_08E2EB18
_0801F5AC: .4byte 0x0000FFFF
_0801F5B0: .4byte sub_80206B0

	thumb_func_start sub_801F5B4
sub_801F5B4: @ 0x0801F5B4
	push {r4, r5, lr}
	ldr r5, _0801F61C @ =gCurTask
	ldr r0, [r5]
	ldrh r3, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r2, r3, r2
	ldr r0, [r2, #0x50]
	adds r1, r0, #0
	adds r1, #0xb0
	ldr r1, [r1]
	str r1, [r2, #8]
	adds r0, #0xb4
	ldr r0, [r0]
	str r0, [r2, #0xc]
	ldrh r0, [r2, #0x16]
	movs r1, #2
	movs r4, #0
	orrs r0, r1
	strh r0, [r2, #0x16]
	movs r0, #9
	strb r0, [r2, #0x18]
	strb r1, [r2, #0x19]
	movs r0, #0x1e
	strb r0, [r2, #0x1a]
	ldr r0, _0801F620 @ =0x03000020
	adds r3, r3, r0
	ldr r1, _0801F624 @ =gUnknown_08E2EB18
	ldrh r0, [r1, #8]
	strh r0, [r3, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r3, #0x1a]
	strh r4, [r3, #0x16]
	ldr r0, _0801F628 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldr r0, [r2, #0x50]
	movs r1, #0x84
	lsls r1, r1, #2
	bl Player_PlaySong
	ldr r1, [r5]
	ldr r0, _0801F62C @ =sub_801F630
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F61C: .4byte gCurTask
_0801F620: .4byte 0x03000020
_0801F624: .4byte gUnknown_08E2EB18
_0801F628: .4byte 0x0000FFFF
_0801F62C: .4byte sub_801F630

	thumb_func_start sub_801F630
sub_801F630: @ 0x0801F630
	push {r4, lr}
	ldr r0, _0801F670 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	adds r0, r2, #0
	adds r0, #0xbc
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801F65E
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	str r0, [r4, #8]
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r0, [r0]
	str r0, [r4, #0xc]
_0801F65E:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	cmp r1, r0
	bge _0801F674
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F67A
	.align 2, 0
_0801F670: .4byte gCurTask
_0801F674:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801F6B0 @ =0x0000FFFE
	ands r0, r1
_0801F67A:
	strh r0, [r4, #0x16]
	movs r0, #2
	bl sub_8020130
	bl sub_8020284
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F6C8
	ldrh r1, [r4, #0x16]
	ldr r0, _0801F6B4 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	bne _0801F6C0
	ldr r0, _0801F6B8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F6BC @ =sub_801EF6C
	b _0801F6C6
	.align 2, 0
_0801F6B0: .4byte 0x0000FFFE
_0801F6B4: .4byte 0x0000FFFD
_0801F6B8: .4byte gCurTask
_0801F6BC: .4byte sub_801EF6C
_0801F6C0:
	ldr r0, _0801F6D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F6D4 @ =sub_801EE74
_0801F6C6:
	str r0, [r1, #8]
_0801F6C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F6D0: .4byte gCurTask
_0801F6D4: .4byte sub_801EE74

	thumb_func_start sub_801F6D8
sub_801F6D8: @ 0x0801F6D8
	push {r4, lr}
	ldr r4, _0801F728 @ =gCurTask
	ldr r0, [r4]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	ldrh r3, [r1, #0x16]
	ldr r0, _0801F72C @ =0x0000FFFD
	ands r0, r3
	movs r3, #0
	strh r0, [r1, #0x16]
	movs r0, #0xb
	strb r0, [r1, #0x18]
	movs r0, #3
	strb r0, [r1, #0x19]
	movs r0, #0x1e
	strb r0, [r1, #0x1a]
	ldr r0, _0801F730 @ =0x03000020
	adds r2, r2, r0
	ldr r1, _0801F734 @ =gUnknown_08E2EB18
	ldrh r0, [r1, #0xc]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r2, #0x1a]
	strh r3, [r2, #0x16]
	ldr r0, _0801F738 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r0, [r2, #0x28]
	ldr r1, [r4]
	ldr r0, _0801F73C @ =sub_801F740
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F728: .4byte gCurTask
_0801F72C: .4byte 0x0000FFFD
_0801F730: .4byte 0x03000020
_0801F734: .4byte gUnknown_08E2EB18
_0801F738: .4byte 0x0000FFFF
_0801F73C: .4byte sub_801F740

	thumb_func_start sub_801F740
sub_801F740: @ 0x0801F740
	push {r4, lr}
	ldr r0, _0801F764 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F768
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801F76C
	.align 2, 0
_0801F764: .4byte gCurTask
_0801F768:
	ldr r0, [r2, #0x10]
	ldr r1, _0801F788 @ =0xFFFFE800
_0801F76C:
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x50]
	ldr r1, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #9
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _0801F78C
	ldr r0, [r2, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _0801F790
	.align 2, 0
_0801F788: .4byte 0xFFFFE800
_0801F78C:
	ldr r0, [r2, #0x14]
	ldr r1, _0801F7A4 @ =0xFFFFE800
_0801F790:
	adds r0, r0, r1
	str r0, [r4, #0xc]
	ldr r1, [r2, #0x10]
	ldr r0, [r4]
	cmp r1, r0
	bge _0801F7A8
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F7AE
	.align 2, 0
_0801F7A4: .4byte 0xFFFFE800
_0801F7A8:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801F7D4 @ =0x0000FFFE
	ands r0, r1
_0801F7AE:
	strh r0, [r4, #0x16]
	movs r0, #1
	bl sub_8020130
	bl sub_8020284
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F7CE
	ldr r0, _0801F7D8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F7DC @ =sub_801EE74
	str r0, [r1, #8]
_0801F7CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F7D4: .4byte 0x0000FFFE
_0801F7D8: .4byte gCurTask
_0801F7DC: .4byte sub_801EE74

	thumb_func_start sub_801F7E0
sub_801F7E0: @ 0x0801F7E0
	push {r4, lr}
	ldr r4, _0801F830 @ =gCurTask
	ldr r0, [r4]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	ldrh r3, [r1, #0x16]
	ldr r0, _0801F834 @ =0x0000FFFD
	ands r0, r3
	movs r3, #0
	strh r0, [r1, #0x16]
	movs r0, #0xb
	strb r0, [r1, #0x18]
	movs r0, #3
	strb r0, [r1, #0x19]
	movs r0, #0x1e
	strb r0, [r1, #0x1a]
	ldr r0, _0801F838 @ =0x03000020
	adds r2, r2, r0
	ldr r1, _0801F83C @ =gUnknown_08E2EB18
	ldrh r0, [r1, #0xc]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0xe]
	strb r0, [r2, #0x1a]
	strh r3, [r2, #0x16]
	ldr r0, _0801F840 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r0, [r2, #0x28]
	ldr r1, [r4]
	ldr r0, _0801F844 @ =sub_801F848
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F830: .4byte gCurTask
_0801F834: .4byte 0x0000FFFD
_0801F838: .4byte 0x03000020
_0801F83C: .4byte gUnknown_08E2EB18
_0801F840: .4byte 0x0000FFFF
_0801F844: .4byte sub_801F848

	thumb_func_start sub_801F848
sub_801F848: @ 0x0801F848
	push {r4, r5, r6, lr}
	ldr r0, _0801F898 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldrb r2, [r5, #0x1b]
	ldr r3, [r5, #0x50]
	ldr r4, _0801F89C @ =gSineTable
	lsls r2, r2, #4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r6, #0
	ldrsh r1, [r0, r6]
	asrs r1, r1, #1
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r5, #8]
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r0, #0
	ldrsh r1, [r2, r0]
	asrs r1, r1, #1
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r3, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F8A0
	ldrh r1, [r5, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F8A6
	.align 2, 0
_0801F898: .4byte gCurTask
_0801F89C: .4byte gSineTable
_0801F8A0:
	ldrh r1, [r5, #0x16]
	ldr r0, _0801F8CC @ =0x0000FFFE
	ands r0, r1
_0801F8A6:
	strh r0, [r5, #0x16]
	movs r0, #1
	bl sub_8020130
	bl sub_8020284
	ldrb r0, [r5, #0x1a]
	subs r0, #1
	strb r0, [r5, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F8C6
	ldr r0, _0801F8D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F8D4 @ =sub_801EF6C
	str r0, [r1, #8]
_0801F8C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F8CC: .4byte 0x0000FFFE
_0801F8D0: .4byte gCurTask
_0801F8D4: .4byte sub_801EF6C

	thumb_func_start sub_801F8D8
sub_801F8D8: @ 0x0801F8D8
	push {r4, lr}
	ldr r0, _0801F8F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F900
	ldr r0, [r2, #0x10]
	ldr r1, _0801F8FC @ =0xFFFFE800
	b _0801F906
	.align 2, 0
_0801F8F8: .4byte gCurTask
_0801F8FC: .4byte 0xFFFFE800
_0801F900:
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
_0801F906:
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x14]
	str r0, [r4, #0xc]
	ldrh r1, [r4, #0x16]
	movs r0, #2
	movs r3, #0
	orrs r0, r1
	strh r0, [r4, #0x16]
	movs r0, #9
	strb r0, [r4, #0x18]
	movs r0, #8
	strb r0, [r4, #0x19]
	movs r0, #0xa
	strb r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x20
	ldr r2, _0801F960 @ =gUnknown_08E2EB18
	ldrh r0, [r2, #0x20]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #0x22]
	strb r0, [r1, #0x1a]
	strh r3, [r1, #0x16]
	ldr r0, _0801F964 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x20]
	str r0, [r1, #0x28]
	ldr r0, [r4, #0x50]
	movs r1, #0x84
	lsls r1, r1, #2
	bl Player_PlaySong
	ldr r0, _0801F968 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F96C @ =sub_801F970
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F960: .4byte gUnknown_08E2EB18
_0801F964: .4byte 0x0000FFFF
_0801F968: .4byte gCurTask
_0801F96C: .4byte sub_801F970

	thumb_func_start sub_801F970
sub_801F970: @ 0x0801F970
	push {r4, lr}
	ldr r0, _0801F994 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F998
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801F99E
	.align 2, 0
_0801F994: .4byte gCurTask
_0801F998:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801F9C8 @ =0x0000FFFE
	ands r0, r1
_0801F99E:
	strh r0, [r4, #0x16]
	movs r0, #2
	bl sub_8020130
	bl sub_8020284
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801F9C2
	movs r0, #0xf
	strb r0, [r4, #0x1a]
	ldr r0, _0801F9CC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801F9D0 @ =sub_801F9D4
	str r0, [r1, #8]
_0801F9C2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F9C8: .4byte 0x0000FFFE
_0801F9CC: .4byte gCurTask
_0801F9D0: .4byte sub_801F9D4

	thumb_func_start sub_801F9D4
sub_801F9D4: @ 0x0801F9D4
	push {r4, lr}
	ldr r0, _0801F9F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801F9FC
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801FA02
	.align 2, 0
_0801F9F8: .4byte gCurTask
_0801F9FC:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FA2C @ =0x0000FFFE
	ands r0, r1
_0801FA02:
	strh r0, [r4, #0x16]
	movs r0, #0
	bl sub_8020130
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	beq _0801FA30
	ldr r2, [r4, #0x50]
	ldrb r1, [r4, #0x1a]
	movs r0, #0xf
	subs r0, r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #9
	ldr r0, [r2, #0x10]
	subs r0, r0, r1
	b _0801FA42
	.align 2, 0
_0801FA2C: .4byte 0x0000FFFE
_0801FA30:
	ldr r2, [r4, #0x50]
	ldrb r1, [r4, #0x1a]
	movs r0, #0xf
	subs r0, r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #9
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
_0801FA42:
	str r0, [r4]
	bl sub_8020284
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _0801FA56
	ldr r0, _0801FA5C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FA60 @ =sub_801EE74
	str r0, [r1, #8]
_0801FA56:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FA5C: .4byte gCurTask
_0801FA60: .4byte sub_801EE74

	thumb_func_start sub_801FA64
sub_801FA64: @ 0x0801FA64
	push {r4, lr}
	ldr r0, _0801FA84 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801FA8C
	ldr r0, [r2, #0x10]
	ldr r1, _0801FA88 @ =0xFFFFE800
	b _0801FA92
	.align 2, 0
_0801FA84: .4byte gCurTask
_0801FA88: .4byte 0xFFFFE800
_0801FA8C:
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
_0801FA92:
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x14]
	str r0, [r4, #0xc]
	ldrh r1, [r4, #0x16]
	movs r0, #2
	movs r3, #0
	orrs r0, r1
	strh r0, [r4, #0x16]
	movs r0, #9
	strb r0, [r4, #0x18]
	movs r0, #8
	strb r0, [r4, #0x19]
	movs r0, #0xa
	strb r0, [r4, #0x1a]
	adds r1, r4, #0
	adds r1, #0x20
	ldr r2, _0801FAEC @ =gUnknown_08E2EB18
	ldrh r0, [r2, #0x20]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #0x22]
	strb r0, [r1, #0x1a]
	strh r3, [r1, #0x16]
	ldr r0, _0801FAF0 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x20]
	str r0, [r1, #0x28]
	ldr r0, [r4, #0x50]
	movs r1, #0x84
	lsls r1, r1, #2
	bl Player_PlaySong
	ldr r0, _0801FAF4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FAF8 @ =sub_801FAFC
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FAEC: .4byte gUnknown_08E2EB18
_0801FAF0: .4byte 0x0000FFFF
_0801FAF4: .4byte gCurTask
_0801FAF8: .4byte sub_801FAFC

	thumb_func_start sub_801FAFC
sub_801FAFC: @ 0x0801FAFC
	push {r4, r5, r6, lr}
	ldr r0, _0801FB20 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801FB24
	ldrh r1, [r5, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801FB2A
	.align 2, 0
_0801FB20: .4byte gCurTask
_0801FB24:
	ldrh r1, [r5, #0x16]
	ldr r0, _0801FB98 @ =0x0000FFFE
	ands r0, r1
_0801FB2A:
	strh r0, [r5, #0x16]
	movs r0, #2
	bl sub_8020130
	bl sub_8020284
	ldrb r0, [r5, #0x1a]
	subs r0, #1
	strb r0, [r5, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801FB90
	ldr r4, _0801FB9C @ =gSineTable
	ldrb r0, [r5, #0x1d]
	lsls r0, r0, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	movs r1, #5
	bl __divsi3
	asrs r6, r0, #2
	str r6, [r5, #8]
	ldrb r0, [r5, #0x1d]
	lsls r0, r0, #3
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	movs r1, #5
	bl __divsi3
	asrs r1, r0, #2
	str r1, [r5, #0xc]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0801FB84
	rsbs r0, r6, #0
	str r0, [r5, #8]
	rsbs r0, r1, #0
	str r0, [r5, #0xc]
_0801FB84:
	movs r0, #0xf
	strb r0, [r5, #0x1a]
	ldr r0, _0801FBA0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FBA4 @ =sub_801FBA8
	str r0, [r1, #8]
_0801FB90:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FB98: .4byte 0x0000FFFE
_0801FB9C: .4byte gSineTable
_0801FBA0: .4byte gCurTask
_0801FBA4: .4byte sub_801FBA8

	thumb_func_start sub_801FBA8
sub_801FBA8: @ 0x0801FBA8
	push {r4, lr}
	ldr r0, _0801FBCC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801FBD0
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801FBD6
	.align 2, 0
_0801FBCC: .4byte gCurTask
_0801FBD0:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FC20 @ =0x0000FFFE
	ands r0, r1
_0801FBD6:
	strh r0, [r4, #0x16]
	movs r0, #0
	bl sub_8020130
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	ldr r3, [r4, #0x50]
	ldrb r0, [r4, #0x1a]
	movs r2, #0xf
	subs r0, r2, r0
	ldr r1, [r4, #8]
	muls r1, r0, r1
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r4]
	ldrb r0, [r4, #0x1a]
	subs r2, r2, r0
	ldr r0, [r4, #0xc]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r4, #4]
	bl sub_8020284
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _0801FC18
	ldr r0, _0801FC24 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FC28 @ =sub_801EE74
	str r0, [r1, #8]
_0801FC18:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FC20: .4byte 0x0000FFFE
_0801FC24: .4byte gCurTask
_0801FC28: .4byte sub_801EE74

	thumb_func_start sub_801FC2C
sub_801FC2C: @ 0x0801FC2C
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	ldr r0, _0801FCC0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r5, r3
	ldr r0, [r3, #0x50]
	adds r0, #0x2a
	ldrb r4, [r0]
	lsls r4, r4, #0x1c
	lsrs r4, r4, #0xa
	movs r1, #0xd0
	lsls r1, r1, #0xc
	adds r4, r4, r1
	lsrs r4, r4, #0x10
	ldr r0, _0801FCC4 @ =gUnknown_08E2EB18
	lsls r1, r4, #2
	adds r2, r1, r0
	ldrh r2, [r2]
	mov sb, r2
	adds r0, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	mov r8, r1
	ldr r0, [r3]
	str r0, [r3, #8]
	ldr r0, [r3, #4]
	str r0, [r3, #0xc]
	movs r6, #0
	movs r2, #0
	strh r2, [r3, #0x10]
	strh r2, [r3, #0x12]
	ldrh r1, [r3, #0x16]
	ldr r0, _0801FCC8 @ =0x0000FFFD
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strh r0, [r3, #0x16]
	strb r6, [r3, #0x18]
	strb r4, [r3, #0x19]
	strb r6, [r3, #0x1a]
	ldr r0, _0801FCCC @ =0x03000020
	adds r5, r5, r0
	mov r1, sb
	strh r1, [r5, #0xc]
	mov r0, r8
	strb r0, [r5, #0x1a]
	strh r2, [r5, #0x16]
	ldr r0, _0801FCD0 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0801FCD4 @ =sub_801FCD8
	str r0, [r1, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801FCC0: .4byte gCurTask
_0801FCC4: .4byte gUnknown_08E2EB18
_0801FCC8: .4byte 0x0000FFFD
_0801FCCC: .4byte 0x03000020
_0801FCD0: .4byte 0x0000FFFF
_0801FCD4: .4byte sub_801FCD8

	thumb_func_start sub_801FCD8
sub_801FCD8: @ 0x0801FCD8
	push {r4, lr}
	ldr r0, _0801FCFC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801FD00
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	b _0801FD06
	.align 2, 0
_0801FCFC: .4byte gCurTask
_0801FD00:
	ldr r0, [r2, #0x10]
	ldr r2, _0801FD20 @ =0xFFFFE800
	adds r0, r0, r2
_0801FD06:
	str r0, [r4, #8]
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0801FD24
	ldr r0, [r2, #0x14]
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r0, r0, r3
	b _0801FD2A
	.align 2, 0
_0801FD20: .4byte 0xFFFFE800
_0801FD24:
	ldr r0, [r2, #0x14]
	ldr r1, _0801FD40 @ =0xFFFFE800
	adds r0, r0, r1
_0801FD2A:
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x50]
	ldr r1, [r0, #0x10]
	ldr r0, [r4]
	cmp r1, r0
	bge _0801FD44
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801FD4A
	.align 2, 0
_0801FD40: .4byte 0xFFFFE800
_0801FD44:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FDA4 @ =0x0000FFFE
	ands r0, r1
_0801FD4A:
	strh r0, [r4, #0x16]
	movs r0, #1
	bl sub_8020130
	bl sub_8020284
	ldr r0, [r4, #0x50]
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801FD6A
	subs r0, r2, #1
	strh r0, [r1]
_0801FD6A:
	ldr r0, [r4, #0x54]
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801FD7E
	subs r0, r2, #1
	strh r0, [r1]
_0801FD7E:
	ldr r0, [r4, #0x50]
	adds r0, #0x54
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bne _0801FD9E
	ldr r0, [r4, #0x54]
	adds r0, #0x54
	strh r1, [r0]
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FDA8 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	bl sub_801ECAC
_0801FD9E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FDA4: .4byte 0x0000FFFE
_0801FDA8: .4byte 0x0000FFFB

	thumb_func_start sub_801FDAC
sub_801FDAC: @ 0x0801FDAC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0801FE2C @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov ip, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, ip
	adds r4, r1, r0
	ldr r3, [r4, #0x50]
	adds r0, r3, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	cmp r0, r8
	bne _0801FE44
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0xa
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	ldr r0, _0801FE30 @ =gUnknown_08E2EB18
	lsls r1, r5, #2
	adds r2, r1, r0
	ldrh r7, [r2]
	adds r0, #2
	adds r1, r1, r0
	ldrh r6, [r1]
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FE34 @ =0x0000FFFD
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0x16]
	movs r0, #0xb
	strb r0, [r4, #0x18]
	strb r5, [r4, #0x19]
	movs r0, #0x1e
	strb r0, [r4, #0x1a]
	ldr r3, _0801FE38 @ =0x03000020
	add r3, ip
	strh r7, [r3, #0xc]
	strb r6, [r3, #0x1a]
	strh r1, [r3, #0x16]
	ldr r0, _0801FE3C @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	mov r0, r8
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0801FE40 @ =sub_8020038
	b _0801FEB0
	.align 2, 0
_0801FE2C: .4byte gCurTask
_0801FE30: .4byte gUnknown_08E2EB18
_0801FE34: .4byte 0x0000FFFD
_0801FE38: .4byte 0x03000020
_0801FE3C: .4byte 0x0000FFFF
_0801FE40: .4byte sub_8020038
_0801FE44:
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0xa
	movs r1, #0xe0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	ldr r0, _0801FEC0 @ =gUnknown_08E2EB18
	lsls r1, r5, #2
	adds r2, r1, r0
	ldrh r7, [r2]
	adds r0, #2
	adds r1, r1, r0
	ldrh r6, [r1]
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	str r0, [r4, #8]
	adds r0, r3, #0
	adds r0, #0xb4
	ldr r0, [r0]
	str r0, [r4, #0xc]
	ldrh r1, [r4, #0x16]
	movs r0, #2
	movs r2, #0
	orrs r0, r1
	strh r0, [r4, #0x16]
	movs r0, #9
	strb r0, [r4, #0x18]
	strb r5, [r4, #0x19]
	movs r0, #0x1e
	strb r0, [r4, #0x1a]
	ldr r3, _0801FEC4 @ =0x03000020
	add r3, ip
	strh r7, [r3, #0xc]
	strb r6, [r3, #0x1a]
	strh r2, [r3, #0x16]
	ldr r0, _0801FEC8 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	mov r0, r8
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldr r0, [r4, #0x50]
	movs r1, #0x84
	lsls r1, r1, #2
	bl Player_PlaySong
	mov r0, sb
	ldr r1, [r0]
	ldr r0, _0801FECC @ =sub_801FED0
_0801FEB0:
	str r0, [r1, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FEC0: .4byte gUnknown_08E2EB18
_0801FEC4: .4byte 0x03000020
_0801FEC8: .4byte 0x0000FFFF
_0801FECC: .4byte sub_801FED0

	thumb_func_start sub_801FED0
sub_801FED0: @ 0x0801FED0
	push {r4, lr}
	ldr r0, _0801FF10 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	adds r0, r2, #0
	adds r0, #0xbc
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801FEFE
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	str r0, [r4, #8]
	adds r0, r2, #0
	adds r0, #0xb4
	ldr r0, [r0]
	str r0, [r4, #0xc]
_0801FEFE:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	cmp r1, r0
	bge _0801FF14
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0801FF1A
	.align 2, 0
_0801FF10: .4byte gCurTask
_0801FF14:
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FF44 @ =0x0000FFFE
	ands r0, r1
_0801FF1A:
	strh r0, [r4, #0x16]
	movs r0, #2
	bl sub_8020130
	bl sub_8020284
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801FF54
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FF48 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x16]
	ldr r0, _0801FF4C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801FF50 @ =sub_801FC2C
	str r0, [r1, #8]
	b _0801FF9C
	.align 2, 0
_0801FF44: .4byte 0x0000FFFE
_0801FF48: .4byte 0x0000FFFD
_0801FF4C: .4byte gCurTask
_0801FF50: .4byte sub_801FC2C
_0801FF54:
	ldr r0, [r4, #0x50]
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801FF68
	subs r0, r2, #1
	strh r0, [r1]
_0801FF68:
	ldr r0, [r4, #0x54]
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0801FF7C
	subs r0, r2, #1
	strh r0, [r1]
_0801FF7C:
	ldr r0, [r4, #0x50]
	adds r0, #0x54
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bne _0801FF9C
	ldr r0, [r4, #0x54]
	adds r0, #0x54
	strh r1, [r0]
	ldrh r1, [r4, #0x16]
	ldr r0, _0801FFA4 @ =0x0000FFF9
	ands r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	bl sub_801ECAC
_0801FF9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801FFA4: .4byte 0x0000FFF9

	thumb_func_start sub_801FFA8
sub_801FFA8: @ 0x0801FFA8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _08020020 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r0, [r4, #0x50]
	adds r0, #0x2a
	ldrb r3, [r0]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0xa
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r3, r3, r1
	lsrs r3, r3, #0x10
	ldr r0, _08020024 @ =gUnknown_08E2EB18
	lsls r1, r3, #2
	adds r2, r1, r0
	ldrh r6, [r2]
	adds r0, #2
	adds r1, r1, r0
	ldrh r2, [r1]
	ldrh r1, [r4, #0x16]
	ldr r0, _08020028 @ =0x0000FFFD
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0x16]
	movs r0, #0xb
	strb r0, [r4, #0x18]
	strb r3, [r4, #0x19]
	movs r0, #0x1e
	strb r0, [r4, #0x1a]
	ldr r0, _0802002C @ =0x03000020
	adds r5, r5, r0
	strh r6, [r5, #0xc]
	strb r2, [r5, #0x1a]
	strh r1, [r5, #0x16]
	ldr r0, _08020030 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x20]
	str r0, [r5, #0x28]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, _08020034 @ =sub_8020038
	str r0, [r1, #8]
	bl _call_via_r0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08020020: .4byte gCurTask
_08020024: .4byte gUnknown_08E2EB18
_08020028: .4byte 0x0000FFFD
_0802002C: .4byte 0x03000020
_08020030: .4byte 0x0000FFFF
_08020034: .4byte sub_8020038

	thumb_func_start sub_8020038
sub_8020038: @ 0x08020038
	push {r4, lr}
	ldr r0, _08020068 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #1
	bl sub_8020130
	bl sub_8020284
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802006C
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	b _08020072
	.align 2, 0
_08020068: .4byte gCurTask
_0802006C:
	ldr r0, [r2, #0x10]
	ldr r2, _08020090 @ =0xFFFFE800
	adds r0, r0, r2
_08020072:
	str r0, [r4, #8]
	ldr r0, [r4, #0x50]
	ldr r1, [r0, #4]
	movs r2, #0x80
	lsls r2, r2, #9
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _08020094
	ldr r0, [r2, #0x14]
	movs r3, #0xc0
	lsls r3, r3, #5
	adds r0, r0, r3
	b _0802009A
	.align 2, 0
_08020090: .4byte 0xFFFFE800
_08020094:
	ldr r0, [r2, #0x14]
	ldr r1, _080200AC @ =0xFFFFE800
	adds r0, r0, r1
_0802009A:
	str r0, [r4, #0xc]
	ldr r1, [r2, #0x10]
	ldr r0, [r4]
	cmp r1, r0
	bge _080200B0
	ldrh r1, [r4, #0x16]
	movs r0, #1
	orrs r0, r1
	b _080200B6
	.align 2, 0
_080200AC: .4byte 0xFFFFE800
_080200B0:
	ldrh r1, [r4, #0x16]
	ldr r0, _080200D0 @ =0x0000FFFE
	ands r0, r1
_080200B6:
	strh r0, [r4, #0x16]
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080200DC
	ldr r0, _080200D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080200D8 @ =sub_801FC2C
	str r0, [r1, #8]
	b _08020124
	.align 2, 0
_080200D0: .4byte 0x0000FFFE
_080200D4: .4byte gCurTask
_080200D8: .4byte sub_801FC2C
_080200DC:
	ldr r0, [r4, #0x50]
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080200F0
	subs r0, r2, #1
	strh r0, [r1]
_080200F0:
	ldr r0, [r4, #0x54]
	adds r1, r0, #0
	adds r1, #0x54
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08020104
	subs r0, r2, #1
	strh r0, [r1]
_08020104:
	ldr r0, [r4, #0x50]
	adds r0, #0x54
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0
	bne _08020124
	ldr r0, [r4, #0x54]
	adds r0, #0x54
	strh r1, [r0]
	ldrh r1, [r4, #0x16]
	ldr r0, _0802012C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r4, #0x54]
	bl sub_801ECAC
_08020124:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802012C: .4byte 0x0000FFFB

	thumb_func_start sub_8020130
sub_8020130: @ 0x08020130
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _080201B0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r7, [r5, #8]
	ldr r0, [r5, #0xc]
	mov r8, r0
	movs r2, #0
	ldr r1, _080201B4 @ =gStageData
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020170
	ldrb r0, [r1, #0xa]
	cmp r0, #8
	beq _08020170
	cmp r0, #9
	beq _08020170
	ldrb r0, [r1, #4]
	cmp r0, #9
	beq _08020170
	b _08020276
_08020170:
	ldr r0, [r5]
	subs r0, r7, r0
	asrs r6, r0, #8
	ldr r0, [r5, #4]
	mov r1, r8
	subs r0, r1, r0
	asrs r4, r0, #8
	cmp r6, #0
	bne _08020186
	cmp r4, #0
	beq _08020196
_08020186:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08020196:
	adds r1, r6, #0
	cmp r6, #0
	bge _0802019E
	rsbs r1, r6, #0
_0802019E:
	adds r0, r4, #0
	cmp r4, #0
	bge _080201A6
	rsbs r0, r4, #0
_080201A6:
	cmp r1, r0
	ble _080201B8
	adds r0, r6, #0
	b _080201BA
	.align 2, 0
_080201B0: .4byte gCurTask
_080201B4: .4byte gStageData
_080201B8:
	adds r0, r4, #0
_080201BA:
	cmp r0, #0
	bge _080201C0
	rsbs r0, r0, #0
_080201C0:
	lsls r1, r0, #5
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	ldr r3, _080201D4 @ =0x00007FFF
	cmp r1, r3
	ble _080201D8
	adds r1, r3, #0
	b _080201E0
	.align 2, 0
_080201D4: .4byte 0x00007FFF
_080201D8:
	lsls r0, r0, #7
	cmp r1, r0
	bge _080201E0
	adds r1, r0, #0
_080201E0:
	strh r1, [r5, #0x14]
	ldr r4, _0802022C @ =gSineTable
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	movs r3, #0x14
	ldrsh r1, [r5, r3]
	adds r3, r0, #0
	muls r3, r1, r3
	lsls r3, r3, #8
	asrs r3, r3, #0x10
	ldr r0, [r5]
	adds r6, r0, r3
	str r6, [r5]
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r1, r0, r1
	lsls r1, r1, #8
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	cmp r3, #0
	bge _08020230
	cmp r7, r6
	ble _08020236
	b _08020234
	.align 2, 0
_0802022C: .4byte gSineTable
_08020230:
	cmp r7, r6
	bge _08020236
_08020234:
	str r7, [r5]
_08020236:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _08020248
	ldr r0, [r5, #4]
	cmp r8, r0
	ble _08020252
	mov r3, r8
	str r3, [r5, #4]
	b _08020252
_08020248:
	ldr r0, [r5, #4]
	cmp r8, r0
	bge _08020252
	mov r0, r8
	str r0, [r5, #4]
_08020252:
	ldr r2, [r5, #0x50]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020276
	ldr r1, [r5, #0x54]
	cmp r1, #0
	beq _0802026E
	movs r0, #0
	bl sub_801EBC0
	b _08020276
_0802026E:
	movs r0, #4
	adds r1, r2, #0
	bl sub_801EBC0
_08020276:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8020284
sub_8020284: @ 0x08020284
	push {r4, r5, r6, r7, lr}
	ldr r0, _08020304 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r3, [r5, #0x50]
	adds r0, #0x20
	adds r4, r1, r0
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0x14
	bne _080202A8
	b _080203BC
_080202A8:
	ldr r1, [r5]
	asrs r1, r1, #8
	ldr r2, _08020308 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r5, #0x10]
	adds r1, r1, r2
	strh r1, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r5, #0x12]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	adds r3, #0xe0
	ldr r0, [r3]
	ldrh r0, [r0, #0x20]
	adds r0, #0x40
	strh r0, [r4, #0x14]
	ldr r1, [r4, #8]
	ldr r0, _0802030C @ =0xFFFFCFFF
	ands r1, r0
	str r1, [r4, #8]
	ldr r0, [r3]
	ldr r2, [r0, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r2, r0
	orrs r2, r1
	str r2, [r4, #8]
	ldrb r0, [r5, #0x19]
	cmp r0, #0xc
	bls _08020310
	ldr r0, [r3]
	adds r0, #0x2b
	ldrb r0, [r0]
	strb r0, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r2, r0
	b _08020318
	.align 2, 0
_08020304: .4byte gCurTask
_08020308: .4byte gCamera
_0802030C: .4byte 0xFFFFCFFF
_08020310:
	movs r0, #0
	strb r0, [r4, #0x1f]
	ldr r0, _0802032C @ =0xFFFBFFFF
	ands r2, r0
_08020318:
	str r2, [r4, #8]
	ldrh r1, [r5, #0x16]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08020334
	ldr r0, [r4, #8]
	ldr r1, _08020330 @ =0xFFFFFBFF
	ands r0, r1
	b _0802033C
	.align 2, 0
_0802032C: .4byte 0xFFFBFFFF
_08020330: .4byte 0xFFFFFBFF
_08020334:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0802033C:
	str r0, [r4, #8]
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08020356
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _0802035C
_08020356:
	ldr r0, [r4, #8]
	ldr r1, _080203C4 @ =0xFFFFF7FF
	ands r0, r1
_0802035C:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, [r5, #0x50]
	ldr r1, [r0]
	ldr r3, _080203C8 @ =sub_800EAEC
	cmp r1, r3
	beq _080203A4
	ldr r7, _080203CC @ =Player_800EAAC
	cmp r1, r7
	beq _080203A4
	ldr r6, _080203D0 @ =gPlayers
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r2, r0, #0x1e
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, r3
	beq _080203A4
	adds r0, r1, #0
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r6
	ldr r0, [r1]
	cmp r0, r7
	bne _080203AC
_080203A4:
	ldrh r1, [r5, #0x16]
	movs r0, #8
	orrs r0, r1
	strh r0, [r5, #0x16]
_080203AC:
	ldrh r1, [r5, #0x16]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080203BC
	adds r0, r4, #0
	bl DisplaySprite
_080203BC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080203C4: .4byte 0xFFFFF7FF
_080203C8: .4byte sub_800EAEC
_080203CC: .4byte Player_800EAAC
_080203D0: .4byte gPlayers

	thumb_func_start sub_80203D4
sub_80203D4: @ 0x080203D4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08020424 @ =gStageData
	adds r6, r0, #0
	adds r6, #0x98
	ldr r5, [r6]
	cmp r5, #0
	bne _0802041A
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0802041A
	ldr r0, _08020428 @ =sub_801EDB4
	ldr r2, _0802042C @ =0x00003010
	ldr r1, _08020430 @ =sub_8020434
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	str r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, [r4, #0x10]
	str r0, [r1]
	ldr r0, [r4, #0x14]
	str r0, [r1, #4]
	str r4, [r1, #0x50]
	str r5, [r1, #0x54]
_0802041A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08020424: .4byte gStageData
_08020428: .4byte sub_801EDB4
_0802042C: .4byte 0x00003010
_08020430: .4byte sub_8020434

	thumb_func_start sub_8020434
sub_8020434: @ 0x08020434
	ldr r0, _08020440 @ =gStageData
	adds r0, #0x98
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_08020440: .4byte gStageData

	thumb_func_start sub_8020444
sub_8020444: @ 0x08020444
	push {lr}
	adds r3, r0, #0
	ldr r0, _0802046C @ =gStageData
	adds r0, #0x98
	ldr r2, [r0]
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0802047C
	ldr r0, [r3, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	beq _08020474
	ldr r0, _08020470 @ =sub_801EE74
	b _0802047E
	.align 2, 0
_0802046C: .4byte gStageData
_08020470: .4byte sub_801EE74
_08020474:
	ldr r0, _08020478 @ =sub_801EF6C
	b _0802047E
	.align 2, 0
_08020478: .4byte sub_801EF6C
_0802047C:
	ldr r0, _08020484 @ =sub_801FC2C
_0802047E:
	str r0, [r2, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08020484: .4byte sub_801FC2C

	thumb_func_start sub_8020488
sub_8020488: @ 0x08020488
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _080204C0 @ =gStageData
	adds r0, #0x98
	ldr r4, [r0]
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _080204F4
	ldr r2, [r3, #0xc]
	movs r0, #0x18
	ands r2, r0
	cmp r2, #8
	beq _080204D8
	adds r0, r3, #0
	adds r0, #0xbc
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080204D0
	cmp r2, #0x10
	beq _080204C8
	ldr r0, _080204C4 @ =sub_801F6D8
	b _0802050E
	.align 2, 0
_080204C0: .4byte gStageData
_080204C4: .4byte sub_801F6D8
_080204C8:
	ldr r0, _080204CC @ =sub_801F7E0
	b _0802050E
	.align 2, 0
_080204CC: .4byte sub_801F7E0
_080204D0:
	ldr r0, _080204D4 @ =sub_801F5B4
	b _0802050E
	.align 2, 0
_080204D4: .4byte sub_801F5B4
_080204D8:
	ldr r0, [r3, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080204EC
	ldr r0, _080204E8 @ =sub_801F8D8
	b _0802050E
	.align 2, 0
_080204E8: .4byte sub_801F8D8
_080204EC:
	ldr r0, _080204F0 @ =sub_801FA64
	b _0802050E
	.align 2, 0
_080204F0: .4byte sub_801FA64
_080204F4:
	adds r0, r3, #0
	adds r0, #0xbc
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802050C
	ldr r0, _08020508 @ =sub_801FFA8
	b _0802050E
	.align 2, 0
_08020508: .4byte sub_801FFA8
_0802050C:
	ldr r0, _08020518 @ =sub_801FDAC
_0802050E:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020518: .4byte sub_801FDAC

	thumb_func_start sub_802051C
sub_802051C: @ 0x0802051C
	ldr r0, _08020528 @ =gStageData
	adds r0, #0x98
	ldr r1, [r0]
	ldr r0, _0802052C @ =sub_801F0DC
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08020528: .4byte gStageData
_0802052C: .4byte sub_801F0DC

	thumb_func_start sub_8020530
sub_8020530: @ 0x08020530
	ldr r0, _0802053C @ =gStageData
	adds r0, #0x98
	ldr r1, [r0]
	ldr r0, _08020540 @ =sub_801F258
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_0802053C: .4byte gStageData
_08020540: .4byte sub_801F258

	thumb_func_start sub_8020544
sub_8020544: @ 0x08020544
	ldr r0, _08020550 @ =gStageData
	adds r0, #0x98
	ldr r1, [r0]
	ldr r0, _08020554 @ =sub_801F4B4
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08020550: .4byte gStageData
_08020554: .4byte sub_801F4B4

	thumb_func_start sub_8020558
sub_8020558: @ 0x08020558
	ldr r0, _08020564 @ =gStageData
	adds r0, #0x98
	ldr r1, [r0]
	ldr r0, _08020568 @ =sub_801F534
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08020564: .4byte gStageData
_08020568: .4byte sub_801F534

	thumb_func_start sub_802056C
sub_802056C: @ 0x0802056C
	push {r4, lr}
	ldr r0, _08020590 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, [r4, #0x50]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020594
	ldr r0, [r2, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #5
	b _08020598
	.align 2, 0
_08020590: .4byte gCurTask
_08020594:
	ldr r0, [r2, #0x10]
	ldr r1, _080205D0 @ =0xFFFFE800
_08020598:
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0x14]
	ldr r1, _080205D0 @ =0xFFFFE800
	adds r0, r0, r1
	str r0, [r4, #0xc]
	movs r0, #1
	bl sub_8020130
	bl sub_8020284
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080205E4
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	bne _080205DC
	ldr r0, _080205D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080205D8 @ =sub_801EF6C
	b _080205E2
	.align 2, 0
_080205D0: .4byte 0xFFFFE800
_080205D4: .4byte gCurTask
_080205D8: .4byte sub_801EF6C
_080205DC:
	ldr r0, _080205EC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080205F0 @ =sub_801EE74
_080205E2:
	str r0, [r1, #8]
_080205E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080205EC: .4byte gCurTask
_080205F0: .4byte sub_801EE74

	thumb_func_start sub_80205F4
sub_80205F4: @ 0x080205F4
	push {r4, lr}
	ldr r0, _08020638 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #0
	bl sub_8020130
	ldrb r0, [r4, #0x1a]
	subs r0, #1
	strb r0, [r4, #0x1a]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020650
	ldr r3, [r4, #0x50]
	ldr r0, _0802063C @ =gStageData
	adds r0, #0x98
	ldr r2, [r0]
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0802064C
	ldr r0, [r3, #0xc]
	movs r1, #0x18
	ands r0, r1
	cmp r0, #0x10
	beq _08020644
	ldr r0, _08020640 @ =sub_801EE74
	b _0802064E
	.align 2, 0
_08020638: .4byte gCurTask
_0802063C: .4byte gStageData
_08020640: .4byte sub_801EE74
_08020644:
	ldr r0, _08020648 @ =sub_801EF6C
	b _0802064E
	.align 2, 0
_08020648: .4byte sub_801EF6C
_0802064C:
	ldr r0, _0802065C @ =sub_801FC2C
_0802064E:
	str r0, [r2, #8]
_08020650:
	bl sub_8020284
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802065C: .4byte sub_801FC2C

	thumb_func_start sub_8020660
sub_8020660: @ 0x08020660
	push {lr}
	ldr r0, _08020684 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r0, [r2, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020688
	ldrh r1, [r2, #0x16]
	movs r0, #1
	orrs r0, r1
	b _0802068E
	.align 2, 0
_08020684: .4byte gCurTask
_08020688:
	ldrh r1, [r2, #0x16]
	ldr r0, _080206AC @ =0x0000FFFE
	ands r0, r1
_0802068E:
	strh r0, [r2, #0x16]
	ldr r1, [r2, #0x50]
	ldr r0, [r1, #0x10]
	str r0, [r2, #8]
	ldr r0, [r1, #0x14]
	str r0, [r2, #0xc]
	ldr r0, [r1, #0x10]
	str r0, [r2]
	ldr r0, [r1, #0x14]
	str r0, [r2, #4]
	bl sub_8020284
	pop {r0}
	bx r0
	.align 2, 0
_080206AC: .4byte 0x0000FFFE

	thumb_func_start sub_80206B0
sub_80206B0: @ 0x080206B0
	push {lr}
	ldr r0, _080206D4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r0, [r2, #0x50]
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080206D8
	ldrh r1, [r2, #0x16]
	movs r0, #1
	orrs r0, r1
	b _080206DE
	.align 2, 0
_080206D4: .4byte gCurTask
_080206D8:
	ldrh r1, [r2, #0x16]
	ldr r0, _080206FC @ =0x0000FFFE
	ands r0, r1
_080206DE:
	strh r0, [r2, #0x16]
	ldr r1, [r2, #0x50]
	ldr r0, [r1, #0x10]
	str r0, [r2, #8]
	ldr r0, [r1, #0x14]
	str r0, [r2, #0xc]
	ldr r0, [r1, #0x10]
	str r0, [r2]
	ldr r0, [r1, #0x14]
	str r0, [r2, #4]
	bl sub_8020284
	pop {r0}
	bx r0
	.align 2, 0
_080206FC: .4byte 0x0000FFFE

@ bool32 sub_8020700(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5);
	thumb_func_start sub_8020700
sub_8020700: @ 0x08020700
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sb, r1
	mov sl, r2
	ldr r0, [sp, #0x24]
	mov ip, r0
	ldr r0, [sp, #0x28]
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, ip
	adds r0, #0xe0
	ldr r3, [r0]
	adds r6, r3, #0
	adds r6, #0xc
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802073A
	b _08020860
_0802073A:
	lsls r2, r2, #0x10
	asrs r1, r2, #0xd
	adds r0, r7, #0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	mov r8, r2
	cmp r0, r4
	bne _08020752
	b _08020860
_08020752:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	lsls r2, r1, #3
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, r4
	bne _08020766
	b _08020860
_08020766:
	cmp r1, #0
	bne _08020788
	mov r1, sp
	mov r0, ip
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	mov r0, sp
	strb r3, [r0, #2]
	strb r2, [r0, #3]
	b _080207AC
_08020788:
	mov r1, sp
	adds r2, r6, r2
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	strb r0, [r1, #3]
_080207AC:
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r2, r0, #8
	ldr r0, [r1, #0x14]
	asrs r5, r0, #8
	ldrh r0, [r1, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080207D4
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080207D2
	subs r5, #0x20
	b _080207D4
_080207D2:
	adds r5, #0x20
_080207D4:
	mov r1, r8
	asrs r0, r1, #0xd
	adds r3, r7, r0
	adds r0, r3, #0
	adds r0, #0x24
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, sb
	adds r1, r0, r4
	mov r0, sp
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r2, r2, r6
	cmp r1, r2
	bgt _08020808
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	bge _08020818
	cmp r1, r2
	blt _08020860
_08020808:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r2, r0
	cmp r0, r1
	blt _08020860
_08020818:
	mov r1, r8
	asrs r0, r1, #0xd
	adds r3, r7, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, sl
	adds r2, r0, r4
	mov r0, sp
	movs r6, #1
	ldrsb r6, [r0, r6]
	adds r1, r5, r6
	cmp r2, r1
	bgt _0802084C
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0802085C
	cmp r2, r1
	blt _08020860
_0802084C:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r2
	blt _08020860
_0802085C:
	movs r0, #1
	b _08020862
_08020860:
	movs r0, #0
_08020862:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8020874
sub_8020874: @ 0x08020874
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	mov sl, r1
	str r2, [sp, #0x10]
	ldr r0, [sp, #0x34]
	mov ip, r0              @ ip = Player *p
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	mov r0, ip
	adds r0, #0xe0
	ldr r3, [r0]
	adds r6, r3, #0
	adds r6, #0xc
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080208DC
	lsls r2, r2, #0x10
	asrs r1, r2, #0xd
	mov r0, r8
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	movs r4, #1
	rsbs r4, r4, #0
	adds r7, r2, #0
	cmp r0, r4
	beq _080208DC
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	lsls r2, r1, #3
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, r4
	bne _080208E0
_080208DC:
	movs r0, #0
	b _0802093E
_080208E0:
	cmp r1, #0
	bne _08020902
	add r1, sp, #0xc
	mov r0, ip
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	adds r0, r1, #0
	strb r3, [r0, #2]
	strb r2, [r0, #3]
	b _08020926
_08020902:
	add r1, sp, #0xc
	adds r2, r6, r2
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	strb r0, [r1, #3]
_08020926:
	asrs r1, r7, #0x10
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, ip
	str r0, [sp, #4]
	mov r0, sb
	str r0, [sp, #8]
	mov r0, r8
	mov r2, sl
	ldr r3, [sp, #0x10]
	bl sub_8020A58
_0802093E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    @ Collision Player->Sprite
	thumb_func_start sub_8020950
sub_8020950: @ 0x08020950
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	adds r5, r3, #0
	ldr r0, [sp, #0x30]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r4, [r0]
	rsbs r0, r4, #0
	add r1, sp, #0x10
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r3, [r0]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #0x11
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	add r0, sp, #0xc
	movs r2, #4
	bl memcpy
	movs r4, #0
	ldr r1, [r6, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080209AA
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080209AE
_080209AA:
	movs r0, #0
	b _08020A48
_080209AE:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080209CA
	ldr r0, [r5, #0x6c]
	cmp r0, r6
	bne _080209CA
	movs r4, #1
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #4]
_080209CA:
	ldrh r1, [r5, #0x30]
	adds r0, r1, #0
	subs r0, #0xce
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _080209E8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xbc
	beq _080209E8
	cmp r0, #0xbd
	beq _080209E8
	cmp r0, #0xbe
	bne _080209EA
_080209E8:
	movs r7, #1
_080209EA:
	add r0, sp, #0xc
	str r0, [sp]
	str r5, [sp, #4]
	str r7, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	mov r3, sb
	bl sub_8020A58
	adds r2, r0, #0
	cmp r2, #0
	beq _08020A2A
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08020A46
	ldr r0, [r5, #4]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x25
	ands r0, r1
	str r0, [r5, #4]
	str r6, [r5, #0x6c]
	cmp r4, #0
	bne _08020A46
	cmp r6, #0
	bne _08020A46
	ldrh r0, [r5, #0x18]
	strh r0, [r5, #0x1c]
	b _08020A46
_08020A2A:
	cmp r4, #0
	beq _08020A46
	ldr r1, [r5, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08020A46
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #4]
	str r2, [r5, #0x6c]
_08020A46:
	adds r0, r2, #0
_08020A48:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    @ Collision?
	thumb_func_start sub_8020A58
sub_8020A58: @ 0x08020A58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	mov sl, r2
	str r3, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov ip, r0              @ ip = Player *
	ldr r0, [sp, #0x40]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r1, #0x14]
	asrs r7, r0, #8
	movs r6, #0
	ldrh r0, [r1, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08020AA6
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08020AA4
	subs r7, #0x20
	b _08020AA6
_08020AA4:
	adds r7, #0x20
_08020AA6:
	lsls r1, r2, #0x10
	asrs r0, r1, #0xd
	ldr r2, [sp]
	adds r4, r2, r0
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x14]
	adds r3, r0, #0
	add r3, sl
	ldr r5, [sp, #0x38]     @ r5 = void *param4
	movs r0, #0
	ldrsb r0, [r5, r0]
	mov r5, sb
	adds r2, r5, r0
	mov r8, r1
	str r0, [sp, #0x10]
	cmp r3, r2
	bgt _08020AEA
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [sp, #0x14]
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _08020AFC
	cmp r3, r2
	bge _08020AEA
	b _08020CC6
_08020AEA:
	ldr r5, [sp, #0x38]
	movs r0, #2
	ldrsb r0, [r5, r0]
	ldr r1, [sp, #0x10]
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	bge _08020AFC
	b _08020CC6
_08020AFC:
	mov r2, r8
	asrs r0, r2, #0xd
	ldr r5, [sp]
	adds r3, r5, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	ldr r0, [sp, #4]
	adds r2, r0, r4
	ldr r1, [sp, #0x38]
	movs r0, #1
	ldrsb r0, [r1, r0]
	adds r1, r7, r0
	str r0, [sp, #0xc]
	cmp r2, r1
	bgt _08020B36
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _08020B48
	cmp r2, r1
	bge _08020B36
	b _08020CC6
_08020B36:
	ldr r3, [sp, #0x38]
	movs r0, #3
	ldrsb r0, [r3, r0]
	ldr r5, [sp, #0xc]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	bge _08020B48
	b _08020CC6
_08020B48:
	mov r1, r8
	asrs r0, r1, #0xd
	ldr r2, [sp]
	adds r1, r2, r0
	adds r0, r1, #0
	adds r0, #0x24
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r0, #2
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r2, r5, r4
	asrs r2, r2, #1
	add r2, sl
	subs r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, #0x27
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, [sp, #4]
	adds r3, r1, r0
	cmp r2, sb
	bgt _08020B90
	mov r2, sl
	adds r0, r2, r4
	ldr r1, [sp, #0x10]
	add r1, sb
	subs r5, r0, r1
	movs r0, #0x80
	lsls r0, r0, #0xb
	b _08020BA2
_08020B90:
	mov r1, sl
	adds r0, r1, r5
	ldr r2, [sp, #0x38]
	movs r1, #2
	ldrsb r1, [r2, r1]
	add r1, sb
	subs r5, r0, r1
	movs r0, #0x80
	lsls r0, r0, #0xc
_08020BA2:
	orrs r6, r0
	cmp r3, r7
	ble _08020BE6
	mov r3, r8
	asrs r0, r3, #0xd
	ldr r1, [sp]
	adds r0, r1, r0
	adds r0, #0x25
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, [sp, #4]
	adds r1, r2, r1
	ldr r3, [sp, #0x38]
	movs r0, #3
	ldrsb r0, [r3, r0]
	adds r0, r7, r0
	subs r3, r1, r0
	mov r0, ip
	ldr r1, [r0, #4]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r1, #0
	ands r0, r4
	adds r7, r1, #0
	cmp r0, #0
	beq _08020BDE
	subs r1, r3, #2
	cmp r1, #0
	ble _08020C26
	b _08020C24
_08020BDE:
	adds r1, r3, #5
	cmp r1, #0
	ble _08020C1A
	b _08020C18
_08020BE6:
	mov r1, r8
	asrs r0, r1, #0xd
	ldr r2, [sp]
	adds r0, r2, r0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp, #4]
	adds r0, r3, r0
	ldr r2, [sp, #0xc]
	adds r1, r7, r2
	subs r3, r0, r1
	mov r0, ip
	ldr r1, [r0, #4]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r1, #0
	ands r0, r4
	adds r7, r1, #0
	cmp r0, #0
	beq _08020C1E
	subs r1, r3, #5
	cmp r1, #0
	bge _08020C1A
_08020C18:
	movs r1, #0
_08020C1A:
	orrs r6, r4
	b _08020C2C
_08020C1E:
	adds r1, r3, #2
	cmp r1, #0
	bge _08020C26
_08020C24:
	movs r1, #0
_08020C26:
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r6, r0
_08020C2C:
	adds r2, r5, #0
	cmp r5, #0
	bge _08020C34
	rsbs r2, r5, #0
_08020C34:
	adds r0, r1, #0
	cmp r0, #0
	bge _08020C3C
	rsbs r0, r0, #0
_08020C3C:
	cmp r2, r0
	bge _08020C48
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r6, r0
	b _08020C88
_08020C48:
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r6
	cmp r0, #0
	beq _08020C88
	mov r1, ip
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08020C6C
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08020C6C
	movs r0, #0
	b _08020CC8
_08020C6C:
	movs r2, #4
	ands r2, r7
	cmp r2, #0
	bne _08020C88
	mov r0, ip
	adds r0, #0x26
	ldrb r0, [r0]
	adds r0, #0x20
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08020C88
	mov r1, ip
	strh r2, [r1, #0x1c]
_08020C88:
	lsls r0, r5, #8
	movs r2, #0xff
	lsls r2, r2, #8
	ands r0, r2
	movs r1, #0xff
	ands r3, r1
	orrs r0, r3
	orrs r6, r0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r6
	cmp r0, #0
	beq _08020CB4
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	bne _08020CB8
	ldr r0, _08020CB0 @ =0xFFF300FF
	b _08020CB6
	.align 2, 0
_08020CB0: .4byte 0xFFF300FF
_08020CB4:
	ldr r0, _08020CD8 @ =0xFFFF00FF
_08020CB6:
	ands r6, r0
_08020CB8:
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r6
	cmp r0, #0
	bne _08020CC6
	ldr r0, _08020CDC @ =0xFFFFFF00
	ands r6, r0
_08020CC6:
	adds r0, r6, #0
_08020CC8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08020CD8: .4byte 0xFFFF00FF
_08020CDC: .4byte 0xFFFFFF00

@ Input:
    @ R0 = s
    @ R1 = worldX (not Q)
    @ R2 = worldY (not Q)
    @ R3 = (u16) param3
	thumb_func_start sub_8020CE0
sub_8020CE0: @ 0x08020CE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	mov sl, r2
	ldr r6, [sp, #0x28]
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r7, r0, #0
	adds r7, #0xc
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r4, [r0]
	rsbs r0, r4, #0
	add r1, sp, #4
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x25
	ldrb r3, [r0]
	rsbs r2, r3, #0
	mov r0, sp
	adds r0, #5
	strb r2, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r3, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	bne _08020E28
	lsls r2, r5, #0x10
	asrs r1, r2, #0xd
	mov r0, r8
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	mov ip, r2
	cmp r0, r1
	beq _08020E28
	ldr r0, [r7, #0x20]
	cmp r0, r1
	beq _08020E28
	ldr r0, [r6, #0x10]
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	ldrh r0, [r6, #0x30]
	subs r0, #0x5c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08020D8A
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08020D80
	lsls r0, r5, #0x10
	ldr r1, _08020D7C @ =0xFFE00000
	b _08020D86
	.align 2, 0
_08020D7C: .4byte 0xFFE00000
_08020D80:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xe
_08020D86:
	adds r0, r0, r1
	lsrs r5, r0, #0x10
_08020D8A:
	mov r1, ip
	asrs r0, r1, #0xd
	mov r1, r8
	adds r2, r1, r0
	adds r0, r2, #0
	adds r0, #0x24
	movs r3, #0
	ldrsb r3, [r0, r3]
	mov r0, sb
	adds r4, r0, r3
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r1, sp
	movs r7, #0
	ldrsb r7, [r1, r7]
	adds r1, r0, r7
	cmp r4, r1
	bgt _08020DC4
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r4, r0
	cmp r0, r1
	bge _08020DD4
	cmp r4, r1
	blt _08020E28
_08020DC4:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r4
	blt _08020E28
_08020DD4:
	mov r1, ip
	asrs r0, r1, #0xd
	mov r1, r8
	adds r3, r1, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, sl
	adds r2, r0, r4
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sp
	movs r5, #1
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _08020E0E
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _08020E1E
	cmp r2, r1
	blt _08020E28
_08020E0E:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _08020E28
_08020E1E:
	adds r0, r6, #0
	bl Player_8014550
	movs r0, #1
	b _08020E2A
_08020E28:
	movs r0, #0
_08020E2A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8020E3C
sub_8020E3C: @ 0x08020E3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r5, r1, #0
	mov sl, r2
	ldr r6, [sp, #0x20]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r0, [r0]
	mov ip, r0
	movs r0, #0xc
	add r0, ip
	mov r8, r0
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08020F20
	lsls r0, r3, #0x10
	asrs r2, r0, #0xd
	adds r1, r7, #0
	adds r1, #0x20
	adds r1, r1, r2
	ldr r1, [r1]
	movs r3, #1
	rsbs r3, r3, #0
	mov sb, r0
	cmp r1, r3
	beq _08020F20
	mov r1, r8
	ldr r0, [r1, #0x28]
	cmp r0, r3
	beq _08020F20
	adds r3, r7, r2
	adds r0, r3, #0
	adds r0, #0x24
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r2, r5, r4
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0x38
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _08020EBE
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _08020ED0
	cmp r2, r1
	blt _08020F20
_08020EBE:
	mov r0, ip
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _08020F20
_08020ED0:
	mov r1, sb
	asrs r0, r1, #0xd
	adds r3, r7, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r4, #0
	ldrsb r4, [r0, r4]
	mov r0, sl
	adds r2, r0, r4
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	movs r1, #0x2d
	add r1, r8
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _08020F0A
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _08020F1C
	cmp r2, r1
	blt _08020F20
_08020F0A:
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _08020F20
_08020F1C:
	movs r0, #1
	b _08020F22
_08020F20:
	movs r0, #0
_08020F22:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8020F30
sub_8020F30: @ 0x08020F30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov ip, r2
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	mov r0, ip
	adds r0, #0xe0
	ldr r4, [r0]
	adds r7, r4, #0
	adds r7, #0xc
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r3, [r0]
	movs r0, #0xc
	adds r0, r0, r3
	mov sb, r0
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08020F6C
	b _080210AA
_08020F6C:
	lsls r2, r2, #0x10
	asrs r1, r2, #0xd
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r2
	cmp r0, r1
	bne _08020F84
	b _080210AA
_08020F84:
	lsls r0, r6, #0x10
	asrs r3, r0, #0x10
	lsls r2, r3, #3
	adds r0, r4, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, r1
	bne _08020F98
	b _080210AA
_08020F98:
	cmp r3, #0
	bne _08020FBA
	mov r1, sp
	mov r0, ip
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	mov r0, sp
	strb r3, [r0, #2]
	strb r2, [r0, #3]
	b _08020FDE
_08020FBA:
	mov r1, sp
	adds r2, r7, r2
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	strb r0, [r1, #3]
_08020FDE:
	mov r3, r8
	asrs r0, r3, #0x10
	cmp r0, #0
	bne _08021002
	add r1, sp, #4
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
	b _0802102A
_08021002:
	add r1, sp, #4
	lsls r0, r0, #3
	mov r3, sb
	adds r2, r3, r0
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	strb r0, [r1, #3]
_0802102A:
	adds r6, r1, #0
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r6, r3]
	adds r2, r0, r3
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	mov r1, sp
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r1, r0, r4
	cmp r2, r1
	bgt _08021058
	movs r0, #2
	ldrsb r0, [r6, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _08021068
	cmp r2, r1
	blt _080210AA
_08021058:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _080210AA
_08021068:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	movs r4, #1
	ldrsb r4, [r6, r4]
	adds r3, r0, r4
	mov r1, ip
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	mov r1, sp
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	cmp r3, r2
	bgt _08021096
	movs r0, #3
	ldrsb r0, [r6, r0]
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r2
	bge _080210A6
	cmp r3, r2
	blt _080210AA
_08021096:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r2, r0
	cmp r0, r3
	blt _080210AA
_080210A6:
	movs r0, #1
	b _080210AC
_080210AA:
	movs r0, #0
_080210AC:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80210BC
sub_80210BC: @ 0x080210BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov ip, r2
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	mov r0, ip
	adds r0, #0xe0
	ldr r6, [r0]
	movs r0, #0xc
	adds r0, r0, r6
	mov r8, r0
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r3, [r0]
	movs r1, #0xc
	adds r1, r1, r3
	mov sl, r1
	movs r4, #0
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08021124
	lsls r2, r2, #0x10
	asrs r1, r2, #0xd
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r2
	cmp r0, r1
	beq _08021124
	lsls r0, r7, #0x10
	asrs r3, r0, #0x10
	lsls r2, r3, #3
	adds r0, r6, #0
	adds r0, #0x2c
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, r1
	bne _08021128
_08021124:
	movs r0, #0
	b _0802139A
_08021128:
	ldr r0, _08021154 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _080211AE
	cmp r3, #0
	bne _08021158
	mov r1, sp
	mov r0, ip
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	mov r0, sp
	strb r3, [r0, #2]
	strb r2, [r0, #3]
	b _0802117C
	.align 2, 0
_08021154: .4byte gStageData
_08021158:
	mov r1, sp
	add r2, r8
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	strb r0, [r1, #3]
_0802117C:
	mov r2, sb
	asrs r0, r2, #0x10
	cmp r0, #0
	beq _080211CA
	add r1, sp, #4
	lsls r0, r0, #3
	mov r3, sl
	adds r2, r3, r0
	adds r0, r2, #0
	adds r0, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x25
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r0, r2, #0
	adds r0, #0x27
	ldrb r0, [r0]
	strb r0, [r1, #3]
	b _080211E4
_080211AE:
	mov r1, sp
	mov r0, ip
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	mov r0, sp
	strb r3, [r0, #2]
	strb r2, [r0, #3]
_080211CA:
	add r1, sp, #4
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r2, [r0]
	rsbs r0, r2, #0
	strb r0, [r1, #1]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
_080211E4:
	mov sl, r1
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r7, r0, #8
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r5, #0x10]
	asrs r6, r0, #8
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	mov r8, r0
	mov r2, sl
	movs r3, #0
	ldrsb r3, [r2, r3]
	adds r2, r6, r3
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r1, r7, r0
	cmp r2, r1
	bgt _08021228
	mov r5, sl
	movs r0, #2
	ldrsb r0, [r5, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0802123C
	cmp r2, r1
	bge _08021228
	b _08021398
_08021228:
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp, #8]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _0802123C
	b _08021398
_0802123C:
	mov r5, sl
	movs r3, #1
	ldrsb r3, [r5, r3]
	mov r0, r8
	adds r2, r0, r3
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r1, r0, #0
	add r1, sb
	cmp r2, r1
	bgt _0802126A
	movs r0, #3
	ldrsb r0, [r5, r0]
	subs r0, r0, r3
	adds r0, r2, r0
	cmp r0, r1
	bge _0802127E
	cmp r2, r1
	bge _0802126A
	b _08021398
_0802126A:
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp, #8]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	bge _0802127E
	b _08021398
_0802127E:
	mov r0, sl
	movs r5, #0
	ldrsb r5, [r0, r5]
	movs r3, #2
	ldrsb r3, [r0, r3]
	adds r0, r5, r3
	asrs r0, r0, #1
	adds r0, r6, r0
	mov r2, sl
	movs r1, #1
	ldrsb r1, [r2, r1]
	ldrb r2, [r2, #3]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	asrs r1, r1, #1
	add r1, r8
	str r1, [sp, #0xc]
	cmp r0, r7
	bgt _080212BA
	adds r1, r6, r3
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	subs r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xb
	b _080212CC
_080212BA:
	adds r1, r6, r5
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r7, r0
	subs r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xc
_080212CC:
	orrs r4, r0
	ldr r5, [sp, #0xc]
	cmp r5, sb
	ble _080212F8
	mov r0, sl
	movs r1, #1
	ldrsb r1, [r0, r1]
	add r1, r8
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	subs r2, r1, r0
	mov r1, ip
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _0802131E
	b _0802131A
_080212F8:
	mov r2, sl
	movs r1, #3
	ldrsb r1, [r2, r1]
	add r1, r8
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, sb
	subs r2, r1, r0
	mov r5, ip
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0802131E
_0802131A:
	orrs r4, r1
	b _08021324
_0802131E:
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r4, r0
_08021324:
	adds r1, r3, #0
	cmp r3, #0
	bge _0802132C
	rsbs r1, r3, #0
_0802132C:
	adds r0, r2, #0
	cmp r2, #0
	bge _08021334
	rsbs r0, r2, #0
_08021334:
	cmp r1, r0
	bge _0802133E
	movs r0, #0xc0
	lsls r0, r0, #0xc
	b _08021342
_0802133E:
	movs r0, #0xc0
	lsls r0, r0, #0xa
_08021342:
	ands r4, r0
	lsls r0, r3, #8
	movs r3, #0xff
	lsls r3, r3, #8
	ands r0, r3
	movs r1, #0xff
	ands r2, r1
	orrs r0, r2
	orrs r4, r0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r4
	cmp r0, #0
	beq _08021370
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #0
	bne _08021374
	ldr r0, _0802136C @ =0xFFF300FF
	b _08021372
	.align 2, 0
_0802136C: .4byte 0xFFF300FF
_08021370:
	ldr r0, _0802138C @ =0xFFFF00FF
_08021372:
	ands r4, r0
_08021374:
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r4
	cmp r0, #0
	beq _08021394
	movs r0, #0xff
	ands r0, r4
	cmp r0, #0
	bne _08021398
	ldr r0, _08021390 @ =0xFFFCFF00
	b _08021396
	.align 2, 0
_0802138C: .4byte 0xFFFF00FF
_08021390: .4byte 0xFFFCFF00
_08021394:
	ldr r0, _080213AC @ =0xFFFFFF00
_08021396:
	ands r4, r0
_08021398:
	adds r0, r4, #0
_0802139A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080213AC: .4byte 0xFFFFFF00

	thumb_func_start ResolvePlayerSpriteCollision
ResolvePlayerSpriteCollision: @ 0x080213B0
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r1, [r4, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080213E8
	ldr r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	ands r3, r1
	cmp r3, #0
	bne _080213E8
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080213E8
	ldr r0, [r2, #0x6c]
	cmp r0, r4
	bne _080213E8
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r2, #4]
	str r3, [r2, #0x6c]
_080213E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80213F0
sub_80213F0: @ 0x080213F0
	push {lr}
	bl Player_8014550
	pop {r0}
	bx r0
	.align 2, 0
