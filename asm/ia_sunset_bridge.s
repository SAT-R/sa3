.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_SunsetBridge
CreateEntity_SunsetBridge: @ 0x08044C48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _08044D5C @ =sub_8044DD4
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08044D60 @ =sub_8045134
	str r1, [sp]
	movs r1, #0xa8
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	ldr r3, _08044D64 @ =0x03000080
	add r3, r8
	mov sl, r3
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r0, sb
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #8]
	strb r6, [r7, #9]
	mov r1, sb
	ldrb r3, [r1]
	lsls r3, r3, #3
	lsls r4, r4, #8
	adds r3, r3, r4
	str r3, [r7, #0xc]
	ldrb r2, [r1, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	str r2, [r7, #0x10]
	ldr r0, _08044D68 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r4, _08044D6C @ =gPlayers
	adds r0, r0, r4
	str r0, [r7, #0x74]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	str r0, [r7, #0x78]
	mov r4, sb
	movs r1, #4
	ldrsb r1, [r4, r1]
	lsls r1, r1, #3
	adds r1, r2, r1
	strh r1, [r7, #0x16]
	ldrb r0, [r4, #6]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r7, #0x1a]
	movs r1, #3
	ldrsb r1, [r4, r1]
	lsls r1, r1, #3
	adds r1, r3, r1
	strh r1, [r7, #0x14]
	ldrb r0, [r4, #5]
	lsls r0, r0, #3
	adds r1, r1, r0
	strh r1, [r7, #0x18]
	lsls r3, r3, #8
	str r3, [r7, #0xc]
	lsls r2, r2, #8
	str r2, [r7, #0x10]
	movs r0, #0x20
	str r0, [r7, #0x6c]
	str r0, [r7, #0x70]
	ldrb r0, [r4, #5]
	lsls r0, r0, #3
	movs r1, #0x18
	bl __divsi3
	ldr r2, _08044D70 @ =0x03000068
	add r2, r8
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _08044D2A
	movs r0, #0x10
	strh r0, [r2]
_08044D2A:
	mov r1, sb
	ldrb r0, [r1, #5]
	lsls r0, r0, #2
	strh r0, [r7, #0x20]
	movs r3, #0x14
	ldrsh r0, [r7, r3]
	movs r4, #0x18
	ldrsh r1, [r7, r4]
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r7, #0x1c]
	mov r1, sb
	ldrb r0, [r1, #6]
	lsls r0, r0, #3
	strh r0, [r7, #0x22]
	ldrh r0, [r2]
	cmp r0, #1
	bls _08044D74
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0x80
	lsls r0, r0, #2
	bl __divsi3
	b _08044D78
	.align 2, 0
_08044D5C: .4byte sub_8044DD4
_08044D60: .4byte sub_8045134
_08044D64: .4byte 0x03000080
_08044D68: .4byte gStageData
_08044D6C: .4byte gPlayers
_08044D70: .4byte 0x03000068
_08044D74:
	movs r0, #0x80
	lsls r0, r0, #2
_08044D78:
	strh r0, [r7, #0x24]
	adds r0, r7, #0
	bl sub_8045060
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r4, sb
	strb r0, [r4]
	movs r0, #0xc
	bl VramMalloc
	mov r1, sl
	str r0, [r1]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	mov r3, sl
	strh r0, [r3, #0x14]
	movs r0, #0xdf
	lsls r0, r0, #2
	strh r0, [r3, #0xc]
	strb r2, [r3, #0x1a]
	strh r1, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	strh r1, [r3, #0x10]
	strh r1, [r3, #0x12]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r3, #8]
	mov r0, sl
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8044DD4
sub_8044DD4: @ 0x08044DD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08044E98 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r2, r0
	ldr r0, [r6]
	str r0, [sp, #0xc]
	ldr r1, _08044E9C @ =0x03000080
	adds r1, r1, r2
	mov sb, r1
	ldr r3, [r6, #0xc]
	lsls r3, r3, #8
	lsrs r3, r3, #0x10
	ldr r1, [r6, #0x10]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldr r0, _08044EA0 @ =0x03000068
	adds r2, r2, r0
	ldrh r2, [r2]
	str r2, [sp, #0x10]
	movs r0, #0
	str r0, [r6, #0x7c]
	movs r2, #0
	lsls r1, r1, #0x10
	str r1, [sp, #0x14]
	lsls r3, r3, #0x10
	str r3, [sp, #0x1c]
_08044E18:
	lsls r0, r2, #2
	adds r1, r6, #0
	adds r1, #0x74
	adds r1, r1, r0
	ldr r5, [r1]
	movs r1, #0
	mov r8, r1
	movs r7, #0
	ldrh r0, [r6, #0x14]
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, #1
	str r2, [sp, #0x18]
	ldr r2, [sp, #0x10]
	cmp r8, r2
	bhs _08044EB8
_08044E3A:
	lsls r1, r7, #2
	adds r0, r6, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r6, #0x70]
	muls r0, r1, r0
	lsls r0, r0, #8
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	ldr r3, [sp, #0x14]
	asrs r2, r3, #0x10
	asrs r0, r0, #0x10
	adds r2, r2, r0
	str r5, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r0, sb
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08044EA4
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _08044EA4
	ldr r0, [r5, #4]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x25
	ands r0, r1
	str r0, [r5, #4]
	mov r2, sb
	str r2, [r5, #0x6c]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80450D8
	movs r3, #1
	mov r8, r3
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	bne _08044EB8
	str r5, [r6, #0x7c]
	b _08044EB8
	.align 2, 0
_08044E98: .4byte gCurTask
_08044E9C: .4byte 0x03000080
_08044EA0: .4byte 0x03000068
_08044EA4:
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r4, r1
	lsrs r4, r0, #0x10
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, [sp, #0x10]
	cmp r7, r2
	blo _08044E3A
_08044EB8:
	mov r3, r8
	cmp r3, #0
	bne _08044ED8
	ldr r1, [r5, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08044ED8
	ldr r0, [r5, #0x6c]
	cmp r0, sb
	bne _08044ED8
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #4]
	str r3, [r5, #0x6c]
_08044ED8:
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bls _08044E18
	ldr r2, [sp, #0x1c]
	asrs r0, r2, #0x10
	ldr r3, [sp, #0x14]
	asrs r1, r3, #0x10
	ldr r3, _08044F14 @ =gCamera
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _08044F5C
	movs r1, #0
	ldr r5, _08044F18 @ =gPlayers
_08044F00:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _08044F1C
	mov r0, sl
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08044F20
	.align 2, 0
_08044F14: .4byte gCamera
_08044F18: .4byte gPlayers
_08044F1C:
	ldr r0, _08044F54 @ =gStageData
	ldrb r1, [r0, #6]
_08044F20:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	mov sl, r0
	mov r0, sb
	mov r1, sl
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08044F00
	ldrb r0, [r6, #8]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldr r0, _08044F58 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08044F62
	.align 2, 0
_08044F54: .4byte gStageData
_08044F58: .4byte gCurTask
_08044F5C:
	adds r0, r6, #0
	bl sub_8044F74
_08044F62:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8044F74
sub_8044F74: @ 0x08044F74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0x80
	adds r0, r0, r5
	mov r8, r0
	ldr r2, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	ldr r1, _08044FD0 @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	adds r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r2, #0
	beq _08044FD4
	ldr r1, [r2, #0x10]
	ldr r0, [r5, #0x1c]
	subs r4, r1, r0
	cmp r4, #0
	bge _08044FB2
	subs r4, r0, r1
_08044FB2:
	movs r0, #0x20
	ldrsh r1, [r5, r0]
	adds r0, r4, #0
	bl __divsi3
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	subs r4, r0, r4
	cmp r4, #0
	blt _08044FD4
	cmp r4, r0
	ble _08044FD6
	adds r4, r0, #0
	b _08044FD6
	.align 2, 0
_08044FD0: .4byte gCamera
_08044FD4:
	movs r4, #0
_08044FD6:
	ldr r1, [r5, #0x6c]
	str r1, [r5, #0x70]
	cmp r4, r1
	bge _08044FEC
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	beq _08044FE8
	str r4, [r5, #0x6c]
	b _08044FF4
_08044FE8:
	subs r0, r1, #4
	b _08044FF2
_08044FEC:
	cmp r4, r1
	ble _08044FF4
	adds r0, r1, #4
_08044FF2:
	str r0, [r5, #0x6c]
_08044FF4:
	ldr r4, [r5, #0x70]
	cmp r4, #0x1f
	bgt _08044FFE
	movs r4, #0x20
	b _08045008
_08044FFE:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r4, r0
	ble _08045008
	adds r4, r0, #0
_08045008:
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	adds r7, r0, #0
	adds r7, #0xc
	movs r6, #0
	cmp r6, sl
	bge _0804504E
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
_0804501E:
	ldr r0, _0804505C @ =gCamera
	ldr r0, [r0]
	subs r0, r7, r0
	mov r1, r8
	strh r0, [r1, #0x10]
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	muls r0, r4, r0
	asrs r0, r0, #8
	add r0, sb
	mov r1, r8
	strh r0, [r1, #0x12]
	mov r0, r8
	bl DisplaySprite
	adds r7, #0x18
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, sl
	blt _0804501E
_0804504E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804505C: .4byte gCamera

	thumb_func_start sub_8045060
sub_8045060: @ 0x08045060
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	adds r0, #0x68
	ldrh r5, [r0]
	movs r1, #0
	movs r4, #0
	cmp r4, r5
	bge _080450AE
	movs r0, #0x28
	add r0, ip
	mov r8, r0
	ldr r2, _080450D4 @ =gSineTable
	mov sb, r2
_08045080:
	lsls r3, r4, #2
	add r3, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	add r0, sb
	movs r6, #0
	ldrsh r2, [r0, r6]
	mov r7, ip
	movs r6, #0x22
	ldrsh r0, [r7, r6]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	str r0, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrh r0, [r7, #0x24]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r4, r5
	blt _08045080
_080450AE:
	cmp r4, #0xf
	bhi _080450C8
	mov r1, ip
	adds r1, #0x28
	movs r2, #0
_080450B8:
	lsls r0, r4, #2
	adds r0, r1, r0
	str r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _080450B8
_080450C8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080450D4: .4byte gSineTable

	thumb_func_start sub_80450D8
sub_80450D8: @ 0x080450D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	lsls r2, r0, #1
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	movs r3, #0x14
	ldrsh r1, [r4, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _080450F4
	movs r0, #0
_080450F4:
	lsls r0, r0, #9
	adds r1, r2, #0
	bl __divsi3
	ldr r1, _08045130 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	asrs r0, r0, #6
	ldr r1, [r4, #0x6c]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r5, #0x14]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045130: .4byte gSineTable

	thumb_func_start sub_8045134
sub_8045134: @ 0x08045134
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08045148 @ =0x03000080
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_08045148: .4byte 0x03000080
