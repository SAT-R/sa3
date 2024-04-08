.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable131
CreateEntity_Interactable131: @ 0x0804BAF8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804BBA4 @ =sub_804BBC8
	movs r1, #0xc2
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _0804BBA8 @ =sub_804C214
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r1, #0
	mov sb, r1
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r2, r8
	str r2, [r0]
	ldrb r1, [r2]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	ldr r6, _0804BBAC @ =0x0300016C
	adds r1, r3, r6
	mov r2, sb
	strh r2, [r1]
	adds r6, #2
	adds r2, r3, r6
	ldr r1, _0804BBB0 @ =0x0000FFE8
	strh r1, [r2]
	ldr r1, _0804BBB4 @ =0x03000170
	adds r2, r3, r1
	movs r1, #0x18
	strh r1, [r2]
	adds r6, #4
	adds r2, r3, r6
	ldr r1, _0804BBB8 @ =0x0000FF40
	strh r1, [r2]
	ldr r2, _0804BBBC @ =0x03000174
	adds r1, r3, r2
	mov r6, sb
	strh r6, [r1]
	ldr r1, _0804BBC0 @ =0x0300017C
	adds r2, r3, r1
	mov r6, r8
	ldrb r1, [r6]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	str r1, [r2]
	ldr r1, _0804BBC4 @ =0x03000180
	adds r3, r3, r1
	ldrb r1, [r6, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	str r1, [r3]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r6]
	bl sub_804BEE4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804BBA4: .4byte sub_804BBC8
_0804BBA8: .4byte sub_804C214
_0804BBAC: .4byte 0x0300016C
_0804BBB0: .4byte 0x0000FFE8
_0804BBB4: .4byte 0x03000170
_0804BBB8: .4byte 0x0000FF40
_0804BBBC: .4byte 0x03000174
_0804BBC0: .4byte 0x0300017C
_0804BBC4: .4byte 0x03000180

	thumb_func_start sub_804BBC8
sub_804BBC8: @ 0x0804BBC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _0804BC24 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	str r0, [sp, #0xc]
	ldr r0, _0804BC28 @ =0x0300016C
	adds r5, r3, r0
	ldrh r4, [r5]
	cmp r4, #0
	bne _0804BC68
	ldr r1, _0804BC2C @ =0x0300016E
	adds r2, r3, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x18
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0804BC38
	ldr r0, _0804BC30 @ =0x03000172
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	ldrh r1, [r2]
	adds r1, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	adds r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, _0804BC34 @ =0xFFFFFF00
	cmp r1, r0
	bge _0804BCBC
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	b _0804BCBC
	.align 2, 0
_0804BC24: .4byte gCurTask
_0804BC28: .4byte 0x0300016C
_0804BC2C: .4byte 0x0300016E
_0804BC30: .4byte 0x03000172
_0804BC34: .4byte 0xFFFFFF00
_0804BC38:
	movs r0, #1
	strh r0, [r5]
	ldr r1, _0804BC58 @ =0x03000172
	adds r0, r3, r1
	strh r4, [r0]
	ldr r0, _0804BC5C @ =0x03000174
	adds r1, r3, r0
	movs r0, #0xc0
	strh r0, [r1]
	ldr r0, _0804BC60 @ =0x0000FFE8
	strh r0, [r2]
	ldr r0, _0804BC64 @ =0x0000025B
	bl sub_8003DF0
	b _0804BCBC
	.align 2, 0
_0804BC58: .4byte 0x03000172
_0804BC5C: .4byte 0x03000174
_0804BC60: .4byte 0x0000FFE8
_0804BC64: .4byte 0x0000025B
_0804BC68:
	ldr r1, _0804BC98 @ =0x03000170
	adds r4, r3, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0x17
	ble _0804BCA0
	ldr r0, _0804BC9C @ =0x03000174
	adds r1, r3, r0
	ldrh r0, [r1]
	subs r0, #2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _0804BCBC
	strh r1, [r4]
	b _0804BCBC
	.align 2, 0
_0804BC98: .4byte 0x03000170
_0804BC9C: .4byte 0x03000174
_0804BCA0:
	movs r2, #0
	strh r2, [r5]
	ldr r0, _0804BDC0 @ =0x03000172
	adds r1, r3, r0
	ldr r0, _0804BDC4 @ =0x0000FF40
	strh r0, [r1]
	ldr r1, _0804BDC8 @ =0x03000174
	adds r0, r3, r1
	strh r2, [r0]
	movs r0, #0x18
	strh r0, [r4]
	ldr r0, _0804BDCC @ =0x0000025B
	bl sub_8003DF0
_0804BCBC:
	movs r2, #0
	mov r3, sp
	adds r3, #8
	str r3, [sp, #0x1c]
	ldr r0, _0804BDD0 @ =gUnknown_082B48B4
	mov ip, r0
	movs r3, #0xb7
	lsls r3, r3, #1
	ldr r1, [sp, #0xc]
	adds r3, r1, r3
	str r3, [sp, #0x18]
_0804BCD2:
	lsls r2, r2, #0x10
	mov sb, r2
	mov r0, sb
	asrs r0, r0, #0x10
	mov r8, r0
	movs r1, #0x2c
	mov r0, r8
	muls r0, r1, r0
	adds r0, #0xc
	ldr r2, [sp, #0xc]
	adds r7, r2, r0
	mov r3, r8
	lsls r4, r3, #1
	mov r3, sp
	adds r3, r3, r4
	adds r3, #4
	ldrh r0, [r7]
	strh r0, [r3]
	ldr r0, [sp, #0x1c]
	adds r5, r0, r4
	ldrh r0, [r7, #2]
	strh r0, [r5]
	ldr r1, [sp, #0x18]
	adds r6, r1, r4
	ldrh r1, [r6]
	ldr r0, _0804BDD4 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	add r0, ip
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x17
	strh r2, [r7]
	ldrh r1, [r6]
	ldr r0, _0804BDD4 @ =0x000003FF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x17
	strh r0, [r7, #2]
	ldrh r0, [r3]
	subs r0, r0, r2
	strh r0, [r3]
	ldrh r0, [r5]
	ldrh r1, [r7, #2]
	subs r0, r0, r1
	strh r0, [r5]
	movs r2, #0
	mov r5, sb
	add r4, r8
_0804BD40:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, r1
	movs r2, #0x2c
	muls r0, r2, r0
	adds r0, #0x64
	ldr r3, [sp, #0xc]
	adds r7, r3, r0
	ldrh r2, [r6]
	ldr r0, _0804BDD4 @ =0x000003FF
	ands r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	adds r1, #1
	muls r0, r1, r0
	strh r0, [r7]
	ldrh r2, [r6]
	ldr r0, _0804BDD4 @ =0x000003FF
	ands r0, r2
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x19
	muls r0, r1, r0
	strh r0, [r7, #2]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #2
	ble _0804BD40
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, r3
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804BCD2
	ldr r1, [sp, #0xc]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	str r0, [sp, #0x10]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrh r0, [r0]
	str r0, [sp, #0x14]
	movs r2, #0
_0804BDB0:
	lsls r0, r2, #0x10
	mov sb, r0
	cmp r0, #0
	bne _0804BDDC
	ldr r0, _0804BDD8 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804BDE6
	.align 2, 0
_0804BDC0: .4byte 0x03000172
_0804BDC4: .4byte 0x0000FF40
_0804BDC8: .4byte 0x03000174
_0804BDCC: .4byte 0x0000025B
_0804BDD0: .4byte gUnknown_082B48B4
_0804BDD4: .4byte 0x000003FF
_0804BDD8: .4byte gStageData
_0804BDDC:
	mov r0, sl
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804BDE6:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804BEE0 @ =gPlayers
	adds r0, r0, r1
	mov sl, r0
	mov r0, sl
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0804BE0C
	cmp r1, #8
	beq _0804BE0C
	cmp r1, #0x10
	bne _0804BEBA
_0804BE0C:
	mov r0, sl
	bl sub_802C0D4
	cmp r0, #0
	bne _0804BEBA
	movs r2, #0
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	mov r8, r0
	ldr r1, [sp, #0x14]
	lsls r6, r1, #0x10
_0804BE22:
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x2c
	muls r0, r3, r0
	adds r0, #0xc
	ldr r1, [sp, #0xc]
	adds r7, r1, r0
	adds r4, r7, #4
	mov r0, sl
	ldr r1, [r0, #4]
	movs r0, #0x20
	ands r1, r0
	adds r5, r2, #0
	cmp r1, #0
	beq _0804BE76
	mov r1, sl
	ldr r0, [r1, #0x6c]
	cmp r0, r4
	bne _0804BE76
	lsls r2, r3, #1
	mov r0, sp
	adds r0, r0, r2
	adds r0, #4
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	mov r3, sl
	ldr r0, [r3, #0x10]
	subs r0, r0, r1
	str r0, [r3, #0x10]
	ldr r1, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r3, [sp, #0x1c]
	adds r2, r3, r2
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #8
	subs r1, r1, r0
	mov r0, sl
	str r1, [r0, #0x14]
_0804BE76:
	movs r2, #0
	ldrsh r1, [r7, r2]
	mov r3, r8
	asrs r0, r3, #0x10
	adds r1, r1, r0
	movs r0, #2
	ldrsh r2, [r7, r0]
	asrs r0, r6, #0x10
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	mov r3, sl
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0804BEAC
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	mov r2, sl
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x14]
_0804BEAC:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, r3
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804BE22
_0804BEBA:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804BECA
	b _0804BDB0
_0804BECA:
	bl sub_804C008
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BEE0: .4byte gPlayers

	thumb_func_start sub_804BEE4
sub_804BEE4: @ 0x0804BEE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _0804BF04 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #5
	bne _0804BF0C
	ldr r0, _0804BF08 @ =0x000003AF
	mov sb, r0
	mov r1, sb
	str r1, [sp]
	b _0804BF16
	.align 2, 0
_0804BF04: .4byte gStageData
_0804BF08: .4byte 0x000003AF
_0804BF0C:
	movs r3, #0xe6
	lsls r3, r3, #2
	mov sb, r3
	mov r0, sb
	str r0, [sp]
_0804BF16:
	movs r0, #0x1a
	bl VramMalloc
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sl, r1
	str r0, [r1]
	adds r2, r7, #0
	adds r2, #0x10
	str r0, [r7, #0x10]
	movs r4, #0
	mov r3, sb
	strh r3, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r3, #0x10
	mov r8, r3
	mov r0, r8
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r2, #0x20]
	movs r5, #0x80
	lsls r5, r5, #5
	str r5, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r2, r7, #0
	adds r2, #0x3c
	mov r3, sl
	ldr r0, [r3]
	str r0, [r7, #0x3c]
	mov r0, sb
	strh r0, [r2, #0xc]
	movs r1, #0
	strb r1, [r2, #0x1a]
	movs r3, #0xc0
	lsls r3, r3, #3
	strh r3, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	adds r0, r6, #0
	strb r0, [r2, #0x1b]
	mov r0, r8
	strb r0, [r2, #0x1c]
	strb r1, [r2, #0x1f]
	str r6, [r2, #0x20]
	str r5, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0
	movs r1, #0x19
	lsls r6, r1, #5
	movs r3, #0
	mov r8, r3
	movs r5, #0
_0804BF9E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	movs r0, #0x2c
	adds r1, r4, #0
	muls r1, r0, r1
	adds r1, #0x64
	adds r1, r7, r1
	adds r2, r1, #4
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	adds r0, r0, r6
	str r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	movs r1, #1
	strb r1, [r2, #0x1a]
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	strh r5, [r2, #0xe]
	strh r5, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r3, r8
	strb r3, [r2, #0x1f]
	subs r0, #0x11
	str r0, [r2, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #5
	ble _0804BF9E
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804C008
sub_804C008: @ 0x0804C008
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0
	mov r8, r0
	ldr r0, _0804C108 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov sl, r0
	ldr r1, [r0]
	str r1, [sp]
	ldr r2, _0804C10C @ =0x0300017C
	adds r0, r4, r2
	ldrh r1, [r0]
	ldr r3, _0804C110 @ =0x03000180
	adds r0, r4, r3
	ldrh r0, [r0]
	mov ip, r0
	ldr r0, _0804C114 @ =0x0300000C
	adds r5, r4, r0
	ldr r2, _0804C118 @ =0x03000010
	adds r7, r4, r2
	ldrh r2, [r5]
	lsls r1, r1, #0x10
	mov sb, r1
	asrs r0, r1, #0x10
	adds r2, r0, r2
	ldr r3, _0804C11C @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r7, #0x10]
	ldrh r2, [r5, #2]
	mov r5, ip
	lsls r5, r5, #0x10
	str r5, [sp, #4]
	asrs r1, r5, #0x10
	adds r2, r1, r2
	ldr r3, [r3, #4]
	subs r2, r2, r3
	strh r2, [r7, #0x12]
	ldr r2, _0804C120 @ =0x03000038
	adds r5, r4, r2
	ldr r3, _0804C124 @ =0x0300003C
	adds r4, r4, r3
	ldrh r2, [r5]
	adds r2, r0, r2
	str r2, [sp, #0xc]
	ldr r2, _0804C11C @ =gCamera
	ldr r2, [r2]
	ldr r3, [sp, #0xc]
	subs r3, r3, r2
	strh r3, [r4, #0x10]
	ldrh r2, [r5, #2]
	adds r2, r1, r2
	ldr r5, _0804C11C @ =gCamera
	ldr r3, [r5, #4]
	subs r2, r2, r3
	strh r2, [r4, #0x12]
	bl sub_802C198
	cmp r0, #1
	bne _0804C094
	movs r0, #1
	mov r8, r0
_0804C094:
	movs r1, #0x10
	ldrsh r0, [r7, r1]
	movs r2, #0x12
	ldrsh r1, [r7, r2]
	bl sub_802C1D0
	cmp r0, #1
	bne _0804C0B4
	movs r1, #2
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0804C0B4:
	movs r5, #0x10
	ldrsh r0, [r4, r5]
	movs r2, #0x12
	ldrsh r1, [r4, r2]
	bl sub_802C1D0
	cmp r0, #1
	bne _0804C0D4
	movs r1, #4
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0804C0D4:
	mov r5, r8
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _0804C17C
	movs r2, #0
	ldr r3, _0804C128 @ =gPlayers
_0804C0E2:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, #0xc
	mov r1, sl
	adds r5, r1, r0
	movs r1, #0
	adds r7, r2, #0
_0804C0F4:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _0804C12C
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804C130
	.align 2, 0
_0804C108: .4byte gCurTask
_0804C10C: .4byte 0x0300017C
_0804C110: .4byte 0x03000180
_0804C114: .4byte 0x0300000C
_0804C118: .4byte 0x03000010
_0804C11C: .4byte gCamera
_0804C120: .4byte 0x03000038
_0804C124: .4byte 0x0300003C
_0804C128: .4byte gPlayers
_0804C12C:
	ldr r0, _0804C174 @ =gStageData
	ldrb r1, [r0, #6]
_0804C130:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r3
	adds r0, r5, #0
	adds r1, r6, #0
	str r3, [sp, #8]
	bl sub_80213B0
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r4, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #8]
	cmp r0, #1
	ble _0804C0F4
	adds r0, r7, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804C0E2
	mov r3, sl
	ldrb r0, [r3, #0xa]
	ldr r5, [sp]
	strb r0, [r5]
	ldr r0, _0804C178 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804C200
	.align 2, 0
_0804C174: .4byte gStageData
_0804C178: .4byte gCurTask
_0804C17C:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _0804C190
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0804C190:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0804C1A4
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0804C1A4:
	movs r1, #0
	ldr r0, [sp, #4]
	mov r8, r0
	ldr r7, _0804C210 @ =gCamera
_0804C1AC:
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
	movs r0, #0x2c
	muls r0, r6, r0
	adds r0, #0x64
	mov r1, sl
	adds r5, r1, r0
	adds r4, r5, #4
	mov r2, sb
	asrs r0, r2, #0x10
	ldrh r3, [r5]
	adds r0, r0, r3
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	mov r1, r8
	asrs r0, r1, #0x10
	ldrh r5, [r5, #2]
	adds r0, r0, r5
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	movs r2, #0x10
	ldrsh r0, [r4, r2]
	movs r3, #0x12
	ldrsh r1, [r4, r3]
	bl sub_802C1D0
	cmp r0, #1
	bne _0804C1F4
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0804C1F4:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _0804C1AC
_0804C200:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C210: .4byte gCamera

	thumb_func_start sub_804C214
sub_804C214: @ 0x0804C214
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0804C228 @ =0x03000178
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0804C228: .4byte 0x03000178
