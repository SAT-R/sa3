.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.else

	thumb_func_start sub_80A9E24
sub_80A9E24: @ 0x080A9E24
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _080A9EA0 @ =Task_40_B_80A9EB4
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080A9EA4 @ =TaskDestructor_40_B_80AB8F8
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r0, r4
	str r5, [r4]
	movs r3, #0
	strb r3, [r4, #4]
	movs r5, #0
	strh r3, [r4, #6]
	strh r3, [r4, #8]
	str r6, [r4, #0xc]
	ldr r1, _080A9EA8 @ =0xFFFFCE00
	str r1, [r4, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #6
	str r1, [r4, #0x14]
	ldr r1, _080A9EAC @ =0x03000018
	adds r0, r0, r1
	str r6, [r0]
	ldr r1, [r4, #0xc]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r4, #0xc]
	ldr r2, _080A9EB0 @ =gUnknown_080DA06C
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r3, [r0, #0xe]
	strh r3, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r3, [r0, #8]
	bl UpdateSpriteAnimation
	ldr r0, [r4, #0xc]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A9EA0: .4byte Task_40_B_80A9EB4
_080A9EA4: .4byte TaskDestructor_40_B_80AB8F8
_080A9EA8: .4byte 0xFFFFCE00
_080A9EAC: .4byte 0x03000018
_080A9EB0: .4byte gUnknown_080DA06C

	thumb_func_start Task_40_B_80A9EB4
Task_40_B_80A9EB4: @ 0x080A9EB4
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A9F28 @ =gCurTask
	ldr r0, [r7]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80AB8B0
	ldr r0, _080A9F2C @ =0x03000018
	adds r4, r4, r0
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	movs r6, #0
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bne _080A9EFA
	ldr r1, [r5]
	movs r0, #0x12
	strb r0, [r1]
_080A9EFA:
	ldrh r0, [r5, #8]
	cmp r0, #0xb3
	bls _080A9F20
	ldr r1, _080A9F30 @ =gUnknown_080DA06C
	ldrh r0, [r1, #8]
	strh r0, [r4, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	strh r6, [r4, #0x10]
	strh r6, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	strh r6, [r5, #8]
	ldr r1, [r7]
	ldr r0, _080A9F34 @ =sub_80A9F38
	str r0, [r1, #8]
_080A9F20:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9F28: .4byte gCurTask
_080A9F2C: .4byte 0x03000018
_080A9F30: .4byte gUnknown_080DA06C
_080A9F34: .4byte sub_80A9F38

	thumb_func_start sub_80A9F38
sub_80A9F38: @ 0x080A9F38
	push {r4, r5, r6, r7, lr}
	ldr r7, _080A9F9C @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	adds r0, r4, #0
	bl sub_80AB8B0
	ldr r0, _080A9FA0 @ =0x03000018
	adds r5, r5, r0
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	movs r6, #0
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1d
	bls _080A9F96
	ldr r1, _080A9FA4 @ =gUnknown_080DA06C
	ldrh r0, [r1, #0x10]
	strh r0, [r5, #0xc]
	ldrb r0, [r1, #0x12]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	strh r6, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r1, [r7]
	ldr r0, _080A9FA8 @ =sub_80A9FAC
	str r0, [r1, #8]
_080A9F96:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A9F9C: .4byte gCurTask
_080A9FA0: .4byte 0x03000018
_080A9FA4: .4byte gUnknown_080DA06C
_080A9FA8: .4byte sub_80A9FAC

	thumb_func_start sub_80A9FAC
sub_80A9FAC: @ 0x080A9FAC
	push {r4, r5, r6, r7, lr}
	ldr r7, _080AA038 @ =gCurTask
	ldr r0, [r7]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	adds r0, #0x18
	adds r4, r4, r0
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r5, r0, #0
	adds r0, r4, #0
	bl DisplaySprite
	cmp r5, #1
	beq _080AA064
	ldrb r3, [r6, #4]
	cmp r3, #0
	bne _080AA01A
	ldr r2, _080AA03C @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080AA040 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldr r0, _080AA044 @ =0x00003FFF
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080AA048 @ =gBldRegs
	ldr r0, _080AA04C @ =0x00003FBF
	strh r0, [r1]
	strh r3, [r1, #4]
	strh r3, [r6, #6]
	movs r0, #1
	strb r0, [r6, #4]
	ldr r0, _080AA050 @ =0x0000029D @ SE_PHOTO_CAMERA
	bl m4aSongNumStart
_080AA01A:
	ldr r1, _080AA048 @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080AA054
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r4, [r6, #6]
	adds r0, r0, r4
	strh r0, [r6, #6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
	b _080AA064
	.align 2, 0
_080AA038: .4byte gCurTask
_080AA03C: .4byte gDispCnt
_080AA040: .4byte gWinRegs
_080AA044: .4byte 0x00003FFF
_080AA048: .4byte gBldRegs
_080AA04C: .4byte 0x00003FBF
_080AA050: .4byte 0x0000029D
_080AA054:
	movs r0, #0x10
	strh r0, [r1, #4]
	ldr r1, [r6]
	movs r0, #0x16
	strb r0, [r1]
	ldr r0, [r7]
	bl TaskDestroy
_080AA064:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AA06C
sub_80AA06C: @ 0x080AA06C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _080AA1A0 @ =Task_100_80AB8FC
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AA1A4 @ =Task_100_80AB98C
	str r1, [sp]
	adds r1, r2, #0
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r4, r0
	str r5, [r7]
	movs r0, #0
	mov sl, r0
	movs r5, #0
	strh r5, [r7, #4]
	ldr r0, _080AA1A8 @ =0xFFFF2E00
	str r0, [r7, #8]
	movs r0, #0xe0
	lsls r0, r0, #5
	str r0, [r7, #0xc]
	ldr r1, _080AA1AC @ =0x030000B0
	adds r0, r4, r1
	str r6, [r0]
	ldr r2, _080AA1B0 @ =gUnknown_080DBA94
	ldr r1, [r2, #0xc]
	lsls r1, r1, #5
	adds r6, r6, r1
	ldrh r1, [r2, #8]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #0xa]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0xa0
	lsls r1, r1, #1
	mov sb, r1
	mov r1, sb
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r0, _080AA1B4 @ =0x030000D8
	adds r4, r4, r0
	str r6, [r4]
	ldr r2, [sp, #4]
	ldr r0, [r2, #4]
	lsls r0, r0, #5
	adds r6, r6, r0
	ldrh r0, [r2]
	strh r0, [r4, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	ldr r0, [r7, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	mov r1, sb
	strh r1, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	mov r0, r8
	strb r0, [r4, #0x1c]
	mov r1, sl
	strb r1, [r4, #0x1f]
	str r5, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r4, #0
	ldr r3, _080AA1B8 @ =gUnknown_080DA2C8
	movs r0, #0
	mov r8, r0
_080AA13A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x10
	adds r0, r7, r0
	str r6, [r0]
	lsls r2, r4, #3
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r6, r6, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	str r5, [r0, #8]
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp, #8]
	cmp r4, #3
	bls _080AA13A
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080AA1A0: .4byte Task_100_80AB8FC
_080AA1A4: .4byte Task_100_80AB98C
_080AA1A8: .4byte 0xFFFF2E00
_080AA1AC: .4byte 0x030000B0
_080AA1B0: .4byte gUnknown_080DBA94
_080AA1B4: .4byte 0x030000D8
_080AA1B8: .4byte gUnknown_080DA2C8

	thumb_func_start sub_80AA1BC
sub_80AA1BC: @ 0x080AA1BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	movs r7, #0
	movs r5, #0
	adds r4, r6, #0
	adds r4, #0xd8
	movs r0, #0
	mov r8, r0
_080AA1D2:
	ldr r1, [r6, #8]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r6, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r1, r7, r1
	strh r1, [r4, #0x10]
	ldr r0, [r4, #8]
	ldr r3, _080AA26C @ =0xFFFFFBFF
	ands r0, r3
	str r0, [r4, #8]
	mov r0, r8
	strb r0, [r4, #0x1f]
	adds r0, r4, #0
	str r3, [sp]
	bl DisplaySprite
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r3, [sp]
	cmp r5, #2
	bls _080AA1D2
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r2, [r6, #8]
	asrs r2, r2, #8
	movs r4, #0
	strh r2, [r0, #0x10]
	ldr r1, [r6, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	adds r2, r7, r2
	strh r2, [r0, #0x10]
	ldr r1, [r0, #8]
	ands r1, r3
	str r1, [r0, #8]
	strb r4, [r0, #0x1f]
	bl DisplaySprite
	movs r5, #0
_080AA22E:
	lsls r4, r5, #2
	adds r4, r4, r5
	lsls r4, r4, #3
	adds r4, #0x10
	adds r4, r6, r4
	ldr r1, [r6, #8]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r6, #0xc]
	asrs r0, r0, #8
	adds r1, #0x3a
	strh r1, [r4, #0x10]
	adds r0, #0x28
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080AA22E
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA26C: .4byte 0xFFFFFBFF

	thumb_func_start sub_80AA270
sub_80AA270: @ 0x080AA270
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r4, r0, #0
	mov sb, r1
	ldr r1, _080AA348 @ =gDispCnt
	ldr r2, _080AA34C @ =0x00001041
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080AA350 @ =Task_54_80AA384
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AA354 @ =TaskDestructor_54_80AB990
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r6, r0
	str r4, [r0]
	movs r5, #0
	movs r2, #0
	strh r2, [r0, #8]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [sp, #4]
	ldr r3, _080AA358 @ =0x040000D4
	add r0, sp, #4
	str r0, [r3]
	ldr r1, _080AA35C @ =gBgCntRegs
	mov r8, r1
	ldrh r1, [r1, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _080AA360 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _080AA364 @ =gBgSprites_Unknown1
	strb r5, [r4, #3]
	ldr r0, _080AA368 @ =gBgSprites_Unknown2
	strb r5, [r0, #0xc]
	strb r5, [r0, #0xd]
	movs r1, #0xff
	strb r1, [r0, #0xe]
	movs r3, #0x40
	strb r3, [r0, #0xf]
	strb r5, [r4, #2]
	strb r5, [r0, #8]
	strb r5, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	strb r5, [r4, #1]
	strb r5, [r0, #4]
	strb r5, [r0, #5]
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	ldr r0, _080AA36C @ =0x00004E07
	mov r1, r8
	strh r0, [r1]
	ldr r0, _080AA370 @ =gBgScrollRegs
	strh r2, [r0]
	ldr r1, _080AA374 @ =0x03000014
	adds r0, r6, r1
	ldr r1, _080AA378 @ =0x06004000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080AA37C @ =0x06007000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	movs r1, #0xa0
	lsls r1, r1, #1     @ Credits "SONIC ADVANCE 3 END"
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r1, _080AA380 @ =0x0300003E
	adds r6, r6, r1
	strb r5, [r6]
	strh r2, [r0, #0x2e]
	bl DrawBackground
	mov r0, sb
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080AA348: .4byte gDispCnt
_080AA34C: .4byte 0x00001041
_080AA350: .4byte Task_54_80AA384
_080AA354: .4byte TaskDestructor_54_80AB990
_080AA358: .4byte 0x040000D4
_080AA35C: .4byte gBgCntRegs
_080AA360: .4byte 0x85000010
_080AA364: .4byte gBgSprites_Unknown1
_080AA368: .4byte gBgSprites_Unknown2
_080AA36C: .4byte 0x00004E07
_080AA370: .4byte gBgScrollRegs
_080AA374: .4byte 0x03000014
_080AA378: .4byte 0x06004000
_080AA37C: .4byte 0x06007000
_080AA380: .4byte 0x0300003E

	thumb_func_start Task_54_80AA384
Task_54_80AA384: @ 0x080AA384
	push {r4, r5, r6, r7, lr}
	ldr r6, _080AA3E4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r4, [r3, #4]
	ldr r5, _080AA3E8 @ =gBldRegs
	cmp r4, #0
	bne _080AA3D0
	ldr r2, _080AA3EC @ =gDispCnt
	ldrh r0, [r2]
	movs r7, #0x80
	lsls r7, r7, #6
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA3F0 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x31
	strh r0, [r1, #8]
	strh r4, [r1, #0xa]
	ldr r0, _080AA3F4 @ =0x000001C1
	strh r0, [r5]
	movs r0, #0x10
	strh r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r3, #6]
	movs r0, #1
	strh r0, [r3, #4]
	ldr r1, _080AA3F8 @ =0x00001141
	adds r0, r1, #0
	strh r0, [r2]
_080AA3D0:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _080AA3FC
	ldrh r0, [r3, #6]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	ldrh r0, [r3, #6]
	subs r0, #0x40
	strh r0, [r3, #6]
	b _080AA404
	.align 2, 0
_080AA3E4: .4byte gCurTask
_080AA3E8: .4byte gBldRegs
_080AA3EC: .4byte gDispCnt
_080AA3F0: .4byte gWinRegs
_080AA3F4: .4byte 0x000001C1
_080AA3F8: .4byte 0x00001141
_080AA3FC:
	strh r0, [r5, #4]
	ldr r1, [r6]
	ldr r0, _080AA40C @ =sub_80AB994
	str r0, [r1, #8]
_080AA404:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA40C: .4byte sub_80AB994

	thumb_func_start sub_80AA410
sub_80AA410: @ 0x080AA410
	push {r4, r5, r6, lr}
	ldr r5, _080AA464 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	ldrh r0, [r3, #4]
	ldr r4, _080AA468 @ =gBldRegs
	cmp r0, #0
	beq _080AA450
	ldr r2, _080AA46C @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA470 @ =gWinRegs
	movs r2, #0
	movs r0, #0xf0
	strh r0, [r1]
	movs r0, #0xa0
	strh r0, [r1, #4]
	movs r0, #0x31
	strh r0, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r0, _080AA474 @ =0x000001C1
	strh r0, [r4]
	strh r2, [r3, #6]
	strh r2, [r3, #4]
	strh r2, [r4, #4]
_080AA450:
	ldrh r0, [r4, #4]
	cmp r0, #0xf
	bhi _080AA478
	ldrh r0, [r3, #6]
	lsrs r0, r0, #8
	strh r0, [r4, #4]
	ldrh r0, [r3, #6]
	adds r0, #0x40
	strh r0, [r3, #6]
	b _080AA490
	.align 2, 0
_080AA464: .4byte gCurTask
_080AA468: .4byte gBldRegs
_080AA46C: .4byte gDispCnt
_080AA470: .4byte gWinRegs
_080AA474: .4byte 0x000001C1
_080AA478:
	movs r0, #0x10
	strh r0, [r4, #4]
	ldrh r0, [r3, #8]
	adds r0, #1
	strh r0, [r3, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _080AA490
	ldr r1, [r5]
	ldr r0, _080AA498 @ =sub_80AA49C
	str r0, [r1, #8]
_080AA490:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AA498: .4byte sub_80AA49C

	thumb_func_start sub_80AA49C
sub_80AA49C: @ 0x080AA49C
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r0, #0
	ldr r1, _080AA508 @ =gLoadedSaveGame
	mov ip, r1
	mov r6, ip
	adds r6, #0x37
	movs r7, #4
_080AA4AC:
	movs r2, #0
	adds r4, r0, #1
	lsls r3, r0, #2
_080AA4B2:
	adds r0, r2, r3
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080AA4C6
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080AA4C6:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080AA4B2
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080AA4AC
	mov r0, ip
	adds r0, #0x33
	ldrb r2, [r0]
	movs r0, #3
	ands r0, r2
	cmp r0, #3
	beq _080AA502
	ldr r1, _080AA50C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _080AA4F8
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AA502
_080AA4F8:
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	bne _080AA510
_080AA502:
	bl LaunchGameIntro
	b _080AA52E
	.align 2, 0
_080AA508: .4byte gLoadedSaveGame
_080AA50C: .4byte gStageData
_080AA510:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080AA51C
	movs r0, #1
	b _080AA52A
_080AA51C:
	cmp r5, #0x1c
	bne _080AA53C
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _080AA53C
	movs r0, #2
_080AA52A:
	bl sub_80AB120
_080AA52E:
	ldr r0, _080AA538 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080AA548
	.align 2, 0
_080AA538: .4byte gCurTask
_080AA53C:
	bl LaunchGameIntro
	ldr r0, _080AA550 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AA548:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA550: .4byte gCurTask

	thumb_func_start sub_80AA554
sub_80AA554: @ 0x080AA554
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080AA600 @ =Task_48_C_80AB9CC
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AA604 @ =TaskDestructor_48_C_80AB9C8
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, _080AA608 @ =gLoadedSaveGame
	ldr r2, _080AA60C @ =0x00000366
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	strb r2, [r1]
	strb r4, [r1, #1]
	movs r2, #0
	strh r0, [r1, #6]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	str r0, [sp, #4]
	ldr r3, _080AA610 @ =0x040000D4
	add r0, sp, #4
	str r0, [r3]
	ldr r0, _080AA614 @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, _080AA618 @ =0x85000010
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r4, _080AA61C @ =gBgSprites_Unknown1
	strb r2, [r4, #3]
	ldr r0, _080AA620 @ =gBgSprites_Unknown2
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	movs r1, #0xff
	strb r1, [r0, #0xe]
	movs r3, #0x40
	strb r3, [r0, #0xf]
	strb r2, [r4, #2]
	strb r2, [r0, #8]
	strb r2, [r0, #9]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0xa]
	strb r3, [r0, #0xb]
	strb r2, [r4, #1]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	strb r1, [r0, #6]
	strb r3, [r0, #7]
	strb r2, [r4]
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r1, [r0, #2]
	strb r3, [r0, #3]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AA624 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080AA628 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA600: .4byte Task_48_C_80AB9CC
_080AA604: .4byte TaskDestructor_48_C_80AB9C8
_080AA608: .4byte gLoadedSaveGame
_080AA60C: .4byte 0x00000366
_080AA610: .4byte 0x040000D4
_080AA614: .4byte gBgCntRegs
_080AA618: .4byte 0x85000010
_080AA61C: .4byte gBgSprites_Unknown1
_080AA620: .4byte gBgSprites_Unknown2
_080AA624: .4byte gBgPalette
_080AA628: .4byte gFlags

	thumb_func_start sub_80AA62C
sub_80AA62C: @ 0x080AA62C
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _080AA684 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA688 @ =gBgCntRegs
	movs r4, #0
	movs r2, #0
	ldr r0, _080AA68C @ =0x00005687
	strh r0, [r1]
	ldr r0, _080AA690 @ =gBgScrollRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, r3, #0
	adds r0, #8
	ldr r1, _080AA694 @ =0x06004000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080AA698 @ =0x0600B000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080AA69C @ =0x00000141
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r3, #0x32
	strb r4, [r3]
	movs r1, #4
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA684: .4byte gDispCnt
_080AA688: .4byte gBgCntRegs
_080AA68C: .4byte 0x00005687
_080AA690: .4byte gBgScrollRegs
_080AA694: .4byte 0x06004000
_080AA698: .4byte 0x0600B000
_080AA69C: .4byte 0x00000141

	thumb_func_start sub_80AA6A0
sub_80AA6A0: @ 0x080AA6A0
	push {r4, r5, r6, lr}
	ldr r5, _080AA72C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #1]
	cmp r0, #1
	bls _080AA6D4
	ldr r0, _080AA730 @ =gMPlayInfo_BGM
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _080AA734 @ =gMPlayInfo_SE1
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _080AA738 @ =gMPlayInfo_SE2
	movs r1, #4
	bl m4aMPlayFadeOut
	ldr r0, _080AA73C @ =gMPlayInfo_SE3
	movs r1, #4
	bl m4aMPlayFadeOut
_080AA6D4:
	ldrh r0, [r4, #2]
	ldr r3, _080AA740 @ =gBldRegs
	cmp r0, #0
	bne _080AA716
	ldr r2, _080AA744 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA748 @ =gWinRegs
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
	ldr r0, _080AA74C @ =0x00003FFF
	strh r0, [r3]
	movs r0, #0x10
	strh r0, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r4, #4]
	movs r0, #1
	strh r0, [r4, #2]
_080AA716:
	ldrh r0, [r3, #4]
	cmp r0, #0
	beq _080AA750
	ldrh r0, [r4, #4]
	lsrs r0, r0, #8
	strh r0, [r3, #4]
	ldrh r0, [r4, #4]
	subs r0, #0x40
	strh r0, [r4, #4]
	b _080AA762
	.align 2, 0
_080AA72C: .4byte gCurTask
_080AA730: .4byte gMPlayInfo_BGM
_080AA734: .4byte gMPlayInfo_SE1
_080AA738: .4byte gMPlayInfo_SE2
_080AA73C: .4byte gMPlayInfo_SE3
_080AA740: .4byte gBldRegs
_080AA744: .4byte gDispCnt
_080AA748: .4byte gWinRegs
_080AA74C: .4byte 0x00003FFF
_080AA750:
	strh r0, [r3, #4]
	ldrb r0, [r4, #1]
	cmp r0, #1
	bls _080AA75C
	subs r0, #2
	strb r0, [r4, #1]
_080AA75C:
	ldr r1, [r5]
	ldr r0, _080AA768 @ =sub_80AB9F4
	str r0, [r1, #8]
_080AA762:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AA768: .4byte sub_80AB9F4

	thumb_func_start sub_80AA76C
sub_80AA76C: @ 0x080AA76C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _080AA7CC @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrh r0, [r6, #2]
	ldr r4, _080AA7D0 @ =gBldRegs
	cmp r0, #0
	beq _080AA7B8
	ldr r2, _080AA7D4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AA7D8 @ =gWinRegs
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
	ldr r0, _080AA7DC @ =0x00003FFF
	strh r0, [r4]
	strh r3, [r6, #4]
	strh r3, [r6, #2]
_080AA7B8:
	ldrh r0, [r4, #4]
	cmp r0, #0xf
	bhi _080AA7E0
	ldrh r0, [r6, #4]
	lsrs r0, r0, #8
	strh r0, [r4, #4]
	ldrh r0, [r6, #4]
	adds r0, #0x40
	strh r0, [r6, #4]
	b _080AA90C
	.align 2, 0
_080AA7CC: .4byte gCurTask
_080AA7D0: .4byte gBldRegs
_080AA7D4: .4byte gDispCnt
_080AA7D8: .4byte gWinRegs
_080AA7DC: .4byte 0x00003FFF
_080AA7E0:
	movs r3, #0
	movs r2, #0x10
	strh r2, [r4, #4]
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _080AA7EE
	b _080AA8EC
_080AA7EE:
	movs r0, #0
	mov r8, r0
	ldr r4, _080AA854 @ =gLoadedSaveGame
	ldrh r1, [r4, #0x34]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080AA808
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r4, #0x34]
	bl sub_8001E58
_080AA808:
	movs r0, #0
	adds r5, r4, #0
	adds r7, r5, #0
	adds r7, #0x37
	movs r1, #4
	mov ip, r1
_080AA814:
	movs r2, #0
	adds r4, r0, #1
	lsls r3, r0, #2
_080AA81A:
	adds r0, r2, r3
	adds r0, r0, r7
	ldrb r1, [r0]
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	beq _080AA832
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_080AA832:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080AA81A
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080AA814
	adds r0, r5, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0x7f
	beq _080AA858
	bl sub_80AA91C
	b _080AA8AA
	.align 2, 0
_080AA854: .4byte gLoadedSaveGame
_080AA858:
	adds r0, r5, #0
	adds r0, #0x33
	ldrb r2, [r0]
	movs r0, #3
	ands r0, r2
	cmp r0, #3
	beq _080AA882
	ldr r1, _080AA890 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _080AA878
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AA882
_080AA878:
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	bne _080AA89C
_080AA882:
	movs r0, #0
	strh r0, [r6, #6]
	ldr r0, _080AA894 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AA898 @ =sub_80ABA20
	str r0, [r1, #8]
	b _080AA90C
	.align 2, 0
_080AA890: .4byte gStageData
_080AA894: .4byte gCurTask
_080AA898: .4byte sub_80ABA20
_080AA89C:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080AA8B8
	movs r0, #1
	bl sub_80AB120
_080AA8AA:
	ldr r0, _080AA8B4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080AA90C
	.align 2, 0
_080AA8B4: .4byte gCurTask
_080AA8B8:
	mov r3, r8
	cmp r3, #0x1c
	bne _080AA8D8
	movs r0, #2
	bl sub_80AB120
	ldr r0, _080AA8D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AA8D4 @ =sub_80ABA80
	str r0, [r1, #8]
	b _080AA90C
	.align 2, 0
_080AA8D0: .4byte gCurTask
_080AA8D4: .4byte sub_80ABA80
_080AA8D8:
	ldr r0, _080AA8E4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AA8E8 @ =sub_80ABA94
	str r0, [r1, #8]
	b _080AA90C
	.align 2, 0
_080AA8E4: .4byte gCurTask
_080AA8E8: .4byte sub_80ABA94
_080AA8EC:
	ldr r2, _080AA918 @ =gLoadedSaveGame
	ldrh r1, [r2, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080AA902
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2, #0x34]
	bl sub_8001E58
_080AA902:
	bl sub_80A8F90
	ldr r0, [r5]
	bl TaskDestroy
_080AA90C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA918: .4byte gLoadedSaveGame

	thumb_func_start sub_80AA91C
sub_80AA91C: @ 0x080AA91C
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _080AAA10 @ =gDispCnt
	movs r5, #0x40
	ldr r0, _080AAA14 @ =0x00006040
	strh r0, [r1]
	ldr r0, _080AAA18 @ =Task_14C_80AAC38
	movs r1, #0xa6
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080AAA1C @ =TaskDestructor_14C_80ABAF4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, _080AAA20 @ =gLoadedSaveGame
	ldr r1, _080AAA24 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0
	strb r0, [r4]
	movs r3, #0
	strh r1, [r4, #2]
	movs r0, #2
	strb r0, [r4, #1]
	str r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #8]
	str r1, [r4, #0x14]
	ldr r0, _080AAA28 @ =0xFFFF9C00
	str r0, [r4, #0x18]
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r4, #0x1c]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r4, #0x20]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #0x24]
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r4, #0x28]
	strh r1, [r4, #6]
	strh r1, [r4, #4]
	str r1, [sp, #4]
	ldr r2, _080AAA2C @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _080AAA30 @ =gBgCntRegs
	ldrh r1, [r0]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _080AAA34 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _080AAA38 @ =gBgSprites_Unknown1
	strb r3, [r2]
	ldr r0, _080AAA3C @ =gBgSprites_Unknown2
	strb r3, [r0]
	strb r3, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #2]
	strb r5, [r0, #3]
	strb r3, [r2, #1]
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #6]
	strb r5, [r0, #7]
	strb r3, [r2, #2]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	strb r1, [r0, #0xa]
	strb r5, [r0, #0xb]
	strb r3, [r2, #3]
	strb r3, [r0, #0xc]
	strb r3, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r5, [r0, #0xf]
	adds r0, r4, #0
	bl sub_80AAB6C
	ldr r2, _080AAA40 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AAA44 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080AAA48 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAA10: .4byte gDispCnt
_080AAA14: .4byte 0x00006040
_080AAA18: .4byte Task_14C_80AAC38
_080AAA1C: .4byte TaskDestructor_14C_80ABAF4
_080AAA20: .4byte gLoadedSaveGame
_080AAA24: .4byte 0x00000366
_080AAA28: .4byte 0xFFFF9C00
_080AAA2C: .4byte 0x040000D4
_080AAA30: .4byte gBgCntRegs
_080AAA34: .4byte 0x85000010
_080AAA38: .4byte gBgSprites_Unknown1
_080AAA3C: .4byte gBgSprites_Unknown2
_080AAA40: .4byte gWinRegs
_080AAA44: .4byte gBgPalette
_080AAA48: .4byte gFlags

	thumb_func_start sub_80AAA4C
sub_80AAA4C: @ 0x080AAA4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r4, #0
	ldr r7, _080AAB5C @ =0x06010000
	ldr r3, _080AAB60 @ =gUnknown_080DA2E8
	movs r0, #0
	mov sl, r0
	movs r5, #0
_080AAA66:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r0, r6, r0
	str r7, [r0]
	lsls r2, r4, #3
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r7, r7, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	movs r1, #0x40
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r2, #0x10
	mov sb, r2
	mov r1, sb
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	str r5, [r0, #8]
	str r3, [sp]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp]
	cmp r4, #1
	bls _080AAA66
	adds r0, r6, #0
	adds r0, #0x7c
	str r7, [r6, #0x7c]
	ldr r3, _080AAB64 @ =gUnknown_080DA2F8
	ldrb r2, [r6]
	lsls r2, r2, #3
	adds r1, r3, #4
	adds r1, r2, r1
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r7, r7, r1
	adds r2, r2, r3
	ldrh r1, [r2]
	movs r5, #0
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r6]
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	adds r0, #0xa4
	str r7, [r0]
	ldr r2, _080AAB68 @ =gUnknown_080DA328
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldr r1, [r6, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r6, #0x28]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	mov r1, sb
	strb r1, [r0, #0x1c]
	strb r5, [r0, #0x1f]
	str r4, [r0, #8]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AAB5C: .4byte 0x06010000
_080AAB60: .4byte gUnknown_080DA2E8
_080AAB64: .4byte gUnknown_080DA2F8
_080AAB68: .4byte gUnknown_080DA328

	thumb_func_start sub_80AAB6C
sub_80AAB6C: @ 0x080AAB6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, _080AAC18 @ =gBgCntRegs
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r4, #0
	ldr r0, _080AAC1C @ =0x00005888
	mov r2, r8
	strh r0, [r2, #4]
	ldr r6, _080AAC20 @ =gBgScrollRegs
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	strh r0, [r6, #8]
	ldr r0, [r7, #0x18]
	asrs r0, r0, #8
	strh r0, [r6, #0xa]
	adds r0, r7, #0
	adds r0, #0xcc
	ldr r1, _080AAC24 @ =0x06008000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080AAC28 @ =0x0600C000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	movs r1, #0x96
	lsls r1, r1, #1         @ Eggman
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	movs r5, #0x20
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0xf6
	mov r2, sb
	strb r2, [r1]
	movs r1, #6
	strh r1, [r0, #0x2e]
	bl DrawBackground
	ldr r0, _080AAC2C @ =0x00000681
	mov r1, r8
	strh r0, [r1, #2]
	strh r4, [r6, #4]
	strh r4, [r6, #6]
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080AAC30 @ =0x06003000
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldr r1, _080AAC34 @ =0x0000012B
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r2, #0x2a
	adds r1, r7, r2
	mov r2, sb
	strb r2, [r1]
	movs r1, #5
	strh r1, [r0, #0x2e]
	bl DrawBackground
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AAC18: .4byte gBgCntRegs
_080AAC1C: .4byte 0x00005888
_080AAC20: .4byte gBgScrollRegs
_080AAC24: .4byte 0x06008000
_080AAC28: .4byte 0x0600C000
_080AAC2C: .4byte 0x00000681
_080AAC30: .4byte 0x06003000
_080AAC34: .4byte 0x0000012B

	thumb_func_start Task_14C_80AAC38
Task_14C_80AAC38: @ 0x080AAC38
	push {r4, r5, r6, r7, lr}
	ldr r0, _080AACFC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r7, #0
	ldrh r0, [r6, #6]
	cmp r0, #0
	bne _080AACA6
	ldr r2, _080AAD00 @ =gBldRegs
	movs r0, #0xc2
	strh r0, [r2]
	ldr r4, _080AAD04 @ =gDispCnt
	ldrh r0, [r4]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _080AAD08 @ =gWinRegs
	movs r0, #0xff
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _080AAD0C @ =0x00001137
	strh r0, [r1, #8]
	strh r7, [r1, #0xa]
	movs r0, #0x10
	strh r0, [r2, #4]
	movs r5, #0x80
	lsls r5, r5, #5
	strh r5, [r6, #4]
	movs r0, #1
	strh r0, [r6, #6]
	adds r0, r6, #0
	bl sub_80AAA4C
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	orrs r0, r5
	strh r0, [r4]
	bl m4aMPlayAllStop
	movs r0, #0x5b      @ MUS_MESSAGE
	bl m4aSongNumStart
_080AACA6:
	ldr r1, [r6, #0x10]
	ldr r0, _080AAD10 @ =0x00002FFF
	cmp r1, r0
	ble _080AACC0
	ldr r2, _080AAD14 @ =0xFFFFFF00
	adds r0, r1, r2
	str r0, [r6, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #6
	cmp r0, r1
	bgt _080AACC0
	str r1, [r6, #0x10]
	movs r7, #1
_080AACC0:
	ldr r1, [r6, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	cmp r1, r2
	bgt _080AACE0
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	str r1, [r6, #8]
	ldr r0, _080AAD18 @ =0x00003FFF
	cmp r1, r0
	ble _080AACE0
	str r2, [r6, #8]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080AACE0:
	ldr r0, _080AAD00 @ =gBldRegs
	ldrh r1, [r0, #4]
	adds r3, r0, #0
	cmp r1, #0
	beq _080AAD1C
	ldrh r0, [r6, #4]
	lsrs r0, r0, #8
	strh r0, [r3, #4]
	ldr r1, _080AAD14 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r6, #4]
	adds r0, r0, r2
	strh r0, [r6, #4]
	b _080AAD22
	.align 2, 0
_080AACFC: .4byte gCurTask
_080AAD00: .4byte gBldRegs
_080AAD04: .4byte gDispCnt
_080AAD08: .4byte gWinRegs
_080AAD0C: .4byte 0x00001137
_080AAD10: .4byte 0x00002FFF
_080AAD14: .4byte 0xFFFFFF00
_080AAD18: .4byte 0x00003FFF
_080AAD1C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080AAD22:
	ldr r4, _080AAD5C @ =gWinRegs
	ldr r0, [r6, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r6, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	movs r2, #0
	strh r1, [r4, #4]
	cmp r7, #3
	bne _080AAD56
	movs r0, #0xf0
	strh r0, [r3]
	ldr r0, _080AAD60 @ =0x00003017
	strh r0, [r4, #8]
	movs r0, #0x1f
	strh r0, [r3, #2]
	strh r2, [r3, #4]
	strh r2, [r6, #6]
	strh r2, [r6, #4]
	strh r2, [r6, #2]
	ldr r0, _080AAD64 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AAD68 @ =sub_80AAD6C
	str r0, [r1, #8]
_080AAD56:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AAD5C: .4byte gWinRegs
_080AAD60: .4byte 0x00003017
_080AAD64: .4byte gCurTask
_080AAD68: .4byte sub_80AAD6C

	thumb_func_start sub_80AAD6C
sub_80AAD6C: @ 0x080AAD6C
	push {r4, r5, lr}
	ldr r0, _080AAD98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABBC8
	ldr r1, _080AAD9C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080AADA0
	ldrh r0, [r4, #4]
	adds r0, #0x80
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r1, #4]
	b _080AADB4
	.align 2, 0
_080AAD98: .4byte gCurTask
_080AAD9C: .4byte gBldRegs
_080AADA0:
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AAE04 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080AAE08 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
_080AADB4:
	ldrh r0, [r4, #2]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x96
	ble _080AAE20
	movs r3, #0x80
	lsls r3, r3, #5
	strh r3, [r4, #4]
	strh r5, [r4, #2]
	ldr r2, _080AAE0C @ =gBldRegs
	movs r0, #0xd0
	strh r0, [r2]
	ldr r1, _080AAE10 @ =gWinRegs
	ldr r0, _080AAE14 @ =0x00003017
	strh r0, [r1, #8]
	movs r0, #0x1f
	strh r0, [r2, #2]
	movs r0, #0x10
	strh r0, [r2, #4]
	strh r5, [r4, #6]
	strh r3, [r4, #4]
	movs r0, #0
	bl sub_80C4C0C
	ldr r1, _080AAE04 @ =gBgPalette
	strh r0, [r1]
	ldr r2, _080AAE08 @ =gFlags
	ldr r0, [r2]
	movs r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080AAE18 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AAE1C @ =sub_80AAE50
	str r0, [r1, #8]
	b _080AAE40
	.align 2, 0
_080AAE04: .4byte gBgPalette
_080AAE08: .4byte gFlags
_080AAE0C: .4byte gBldRegs
_080AAE10: .4byte gWinRegs
_080AAE14: .4byte 0x00003017
_080AAE18: .4byte gCurTask
_080AAE1C: .4byte sub_80AAE50
_080AAE20:
	ldr r2, _080AAE48 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080AAE4C @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
_080AAE40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAE48: .4byte gWinRegs
_080AAE4C: .4byte gBgScrollRegs

	thumb_func_start sub_80AAE50
sub_80AAE50: @ 0x080AAE50
	push {r4, r5, lr}
	ldr r5, _080AAE88 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80ABBEC
	cmp r0, #1
	bne _080AAE90
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080AAE90
	movs r0, #0
	strh r0, [r4, #2]
	ldr r1, [r5]
	ldr r0, _080AAE8C @ =sub_80AAEC0
	str r0, [r1, #8]
	b _080AAEB0
	.align 2, 0
_080AAE88: .4byte gCurTask
_080AAE8C: .4byte sub_80AAEC0
_080AAE90:
	ldr r2, _080AAEB8 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080AAEBC @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
_080AAEB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAEB8: .4byte gWinRegs
_080AAEBC: .4byte gBgScrollRegs

	thumb_func_start sub_80AAEC0
sub_80AAEC0: @ 0x080AAEC0
	push {r4, r5, lr}
	ldr r5, _080AAEF4 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80AB0D8
	ldr r2, _080AAEF8 @ =gBldRegs
	ldrh r1, [r2, #4]
	cmp r1, #0
	beq _080AAF00
	ldr r1, _080AAEFC @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	strh r0, [r2, #4]
	b _080AAF20
	.align 2, 0
_080AAEF4: .4byte gCurTask
_080AAEF8: .4byte gBldRegs
_080AAEFC: .4byte 0xFFFFFF00
_080AAF00:
	strh r1, [r2, #4]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080AAF20
	strh r1, [r4, #2]
	strh r1, [r4, #4]
	ldr r1, [r5]
	ldr r0, _080AAF1C @ =sub_80ABAF8
	str r0, [r1, #8]
	b _080AAF40
	.align 2, 0
_080AAF1C: .4byte sub_80ABAF8
_080AAF20:
	ldr r2, _080AAF48 @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldr r1, _080AAF4C @ =gBgScrollRegs
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	strh r0, [r1, #0xa]
_080AAF40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAF48: .4byte gWinRegs
_080AAF4C: .4byte gBgScrollRegs

	thumb_func_start sub_80AAF50
sub_80AAF50: @ 0x080AAF50
	push {r4, r5, lr}
	ldr r5, _080AAF88 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80AB0D8
	ldr r2, _080AAF8C @ =gBldRegs
	ldrh r0, [r2, #4]
	cmp r0, #0xf
	bhi _080AAF90
	ldrh r0, [r4, #4]
	lsrs r0, r0, #8
	strh r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r4, #4]
	b _080AAFA0
	.align 2, 0
_080AAF88: .4byte gCurTask
_080AAF8C: .4byte gBldRegs
_080AAF90:
	ldr r1, _080AAFA8 @ =gWinRegs
	movs r0, #0x17
	strh r0, [r1, #8]
	movs r0, #0x10
	strh r0, [r2, #4]
	ldr r1, [r5]
	ldr r0, _080AAFAC @ =sub_80AAFB0
	str r0, [r1, #8]
_080AAFA0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAFA8: .4byte gWinRegs
_080AAFAC: .4byte sub_80AAFB0

	thumb_func_start sub_80AAFB0
sub_80AAFB0: @ 0x080AAFB0
	push {r4, r5, r6, r7, lr}
	ldr r0, _080AB090 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	movs r7, #0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80AB0D8
	ldr r0, [r4, #0x10]
	ldr r1, _080AB094 @ =0x00004FFF
	cmp r0, r1
	bgt _080AAFE8
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, r1
	ble _080AAFEA
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0x10]
_080AAFE8:
	movs r5, #1
_080AAFEA:
	ldr r0, [r4, #8]
	cmp r0, #0
	ble _080AAFFE
	ldr r1, _080AB098 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _080AB004
	movs r0, #0
	str r0, [r4, #8]
_080AAFFE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080AB004:
	ldr r2, _080AB09C @ =gWinRegs
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	lsls r1, r0, #8
	adds r1, r1, r0
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r2, #4]
	cmp r5, #2
	bne _080AB0C8
	ldr r2, _080AB0A0 @ =gLoadedSaveGame
	adds r0, r2, #0
	adds r0, #0x33
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	mov ip, r2
	cmp r0, #3
	beq _080AB0C0
	ldr r1, _080AB0A4 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _080AB03E
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AB0C0
_080AB03E:
	adds r0, r1, #0
	adds r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #1
	beq _080AB0C0
	movs r0, #0
	mov r5, ip
	adds r5, #0x37
	movs r6, #4
_080AB050:
	movs r3, #0
	adds r2, r0, #1
	lsls r4, r0, #2
_080AB056:
	adds r0, r3, r4
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080AB06A
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080AB06A:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080AB056
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080AB050
	mov r0, ip
	adds r0, #0x33
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080AB0A8
	movs r0, #1
	b _080AB0AE
	.align 2, 0
_080AB090: .4byte gCurTask
_080AB094: .4byte 0x00004FFF
_080AB098: .4byte 0xFFFFFE00
_080AB09C: .4byte gWinRegs
_080AB0A0: .4byte gLoadedSaveGame
_080AB0A4: .4byte gStageData
_080AB0A8:
	cmp r7, #0x1c
	bne _080AB0C0
	movs r0, #2
_080AB0AE:
	bl sub_80AB120
	ldr r0, _080AB0BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080AB0C8
	.align 2, 0
_080AB0BC: .4byte gCurTask
_080AB0C0:
	ldr r0, _080AB0D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AB0D4 @ =sub_80ABB38
	str r0, [r1, #8]
_080AB0C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AB0D0: .4byte gCurTask
_080AB0D4: .4byte sub_80ABB38

	thumb_func_start sub_80AB0D8
sub_80AB0D8: @ 0x080AB0D8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldr r0, [r4, #0x24]
	asrs r0, r0, #8
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0x28]
	asrs r2, r0, #8
	strh r2, [r1, #0x12]
	ldrb r0, [r4]
	cmp r0, #0
	beq _080AB0F6
	subs r0, r2, #4
	strh r0, [r1, #0x12]
_080AB0F6:
	adds r0, r1, #0
	bl DisplaySprite
	ldrb r0, [r4]
	cmp r0, #0
	beq _080AB118
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r1, [r4, #0x24]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x28]
	asrs r1, r1, #8
	adds r1, #0xa
	strh r1, [r0, #0x12]
	bl DisplaySprite
_080AB118:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AB120
sub_80AB120: @ 0x080AB120
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, _080AB1AC @ =gDispCnt
	movs r1, #0x82
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r5]
	ldr r0, _080AB1B0 @ =Task_D4_80AB1C4
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080AB1B4 @ =TaskDestructor_D4_80ABC1C
	str r1, [sp]
	movs r1, #0xd4
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0]
	movs r3, #0
	strh r2, [r0, #4]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r0, #8]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x20]
	strb r3, [r0, #1]
	strh r2, [r0, #2]
	str r2, [r0, #0x24]
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	ldr r2, _080AB1B8 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldrh r0, [r2, #8]
	movs r1, #0x3f
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080AB1BC @ =gBldRegs
	ldr r0, _080AB1C0 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB1AC: .4byte gDispCnt
_080AB1B0: .4byte Task_D4_80AB1C4
_080AB1B4: .4byte TaskDestructor_D4_80ABC1C
_080AB1B8: .4byte gWinRegs
_080AB1BC: .4byte gBldRegs
_080AB1C0: .4byte 0x00003FFF

	thumb_func_start Task_D4_80AB1C4
Task_D4_80AB1C4: @ 0x080AB1C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080AB270 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	ldr r0, _080AB274 @ =gLoadedSaveGame
	ldr r1, _080AB278 @ =0x00000366
	adds r0, r0, r1
	ldrb r0, [r0]
	mov ip, r0
	movs r2, #4
	ldrsh r5, [r7, r2]
	cmp r5, #0
	bne _080AB2A4
	ldr r1, _080AB27C @ =0x06010000
	ldr r3, _080AB280 @ =0x0300002C
	adds r0, r6, r3
	str r1, [r0]
	ldr r2, _080AB284 @ =gUnknown_080DA358
	ldrh r1, [r2]
	movs r4, #0
	strh r1, [r0, #0xc]
	ldrb r1, [r2, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r7, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	subs r1, #0x11
	str r1, [r0, #0x20]
	bl UpdateSpriteAnimation
	ldr r2, _080AB288 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB28C @ =gBgCntRegs
	ldr r0, _080AB290 @ =0x00000602
	strh r0, [r1, #2]
	ldr r0, _080AB294 @ =gBgScrollRegs
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	ldr r1, _080AB298 @ =0x03000094
	adds r0, r6, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	strh r5, [r0, #0xa]
	ldr r1, _080AB29C @ =0x06003000
	str r1, [r0, #0xc]
	strh r5, [r0, #0x18]
	strh r5, [r0, #0x1a]
	movs r1, #0xab
	lsls r1, r1, #1
	strh r1, [r0, #0x1c]
	strh r5, [r0, #0x1e]
	strh r5, [r0, #0x20]
	strh r5, [r0, #0x22]
	strh r5, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080AB2A0 @ =0x030000BE
	adds r1, r6, r2
	strb r4, [r1]
	movs r1, #1
	b _080AB380
	.align 2, 0
_080AB270: .4byte gCurTask
_080AB274: .4byte gLoadedSaveGame
_080AB278: .4byte 0x00000366
_080AB27C: .4byte 0x06010000
_080AB280: .4byte 0x0300002C
_080AB284: .4byte gUnknown_080DA358
_080AB288: .4byte gDispCnt
_080AB28C: .4byte gBgCntRegs
_080AB290: .4byte 0x00000602
_080AB294: .4byte gBgScrollRegs
_080AB298: .4byte 0x03000094
_080AB29C: .4byte 0x06003000
_080AB2A0: .4byte 0x030000BE
_080AB2A4:
	cmp r5, #1
	beq _080AB2AA
	b _080AB3AC
_080AB2AA:
	ldr r1, _080AB2DC @ =gBgCntRegs
	movs r3, #0
	ldr r0, _080AB2E0 @ =0x00000E04
	strh r0, [r1]
	ldr r2, _080AB2E4 @ =gDispCnt
	ldrh r0, [r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080AB2E8 @ =gBgScrollRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r0, _080AB2EC @ =0x03000054
	adds r1, r6, r0
	movs r2, #0
	ldrb r0, [r7]
	cmp r0, #0
	beq _080AB2D6
	cmp r0, #3
	bne _080AB2F0
_080AB2D6:
	movs r2, #0xc
	b _080AB2FA
	.align 2, 0
_080AB2DC: .4byte gBgCntRegs
_080AB2E0: .4byte 0x00000E04
_080AB2E4: .4byte gDispCnt
_080AB2E8: .4byte gBgScrollRegs
_080AB2EC: .4byte 0x03000054
_080AB2F0:
	cmp r0, #1
	beq _080AB2FA
	cmp r0, #2
	bne _080AB2FA
	movs r2, #6
_080AB2FA:
	ldr r0, _080AB388 @ =0x06004000
	str r0, [r1, #4]
	movs r3, #0
	mov r8, r3
	movs r4, #0
	strh r4, [r1, #0xa]
	ldr r0, _080AB38C @ =0x06007000
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	ldr r6, _080AB390 @ =gUnknown_080DA330
	mov r3, ip
	adds r0, r2, r3
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	movs r5, #0x20
	strh r5, [r1, #0x26]
	strh r5, [r1, #0x28]
	adds r0, r1, #0
	adds r0, #0x2a
	mov r2, r8
	strb r2, [r0]
	strh r4, [r1, #0x2e]
	adds r0, r1, #0
	bl DrawBackground
	ldr r2, _080AB394 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB398 @ =gBgCntRegs
	ldr r0, _080AB39C @ =0x00001D0D
	strh r0, [r1, #4]
	ldr r0, _080AB3A0 @ =gBgScrollRegs
	strh r4, [r0, #8]
	strh r4, [r0, #0xa]
	adds r0, r7, #0
	adds r0, #0x94
	ldr r1, _080AB3A4 @ =0x0600C000
	str r1, [r0, #4]
	strh r4, [r0, #0xa]
	ldr r1, _080AB3A8 @ =0x0600E800
	str r1, [r0, #0xc]
	strh r4, [r0, #0x18]
	strh r4, [r0, #0x1a]
	ldrh r1, [r6, #0x26]
	strh r1, [r0, #0x1c]
	strh r4, [r0, #0x1e]
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r5, [r0, #0x26]
	strh r5, [r0, #0x28]
	adds r1, r7, #0
	adds r1, #0xbe
	mov r4, r8
	strb r4, [r1]
	movs r1, #2
_080AB380:
	strh r1, [r0, #0x2e]
	bl DrawBackground
	b _080AB494
	.align 2, 0
_080AB388: .4byte 0x06004000
_080AB38C: .4byte 0x06007000
_080AB390: .4byte gUnknown_080DA330
_080AB394: .4byte gDispCnt
_080AB398: .4byte gBgCntRegs
_080AB39C: .4byte 0x00001D0D
_080AB3A0: .4byte gBgScrollRegs
_080AB3A4: .4byte 0x0600C000
_080AB3A8: .4byte 0x0600E800
_080AB3AC:
	cmp r5, #2
	bne _080AB494
	ldrb r0, [r7]
	cmp r0, #0
	beq _080AB3BA
	cmp r0, #3
	bne _080AB40C
_080AB3BA:
	ldr r2, _080AB434 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB438 @ =gBgCntRegs
	movs r3, #0
	movs r2, #0
	ldr r0, _080AB43C @ =0x00001608
	strh r0, [r1, #6]
	ldr r0, _080AB440 @ =gBgScrollRegs
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	ldr r4, _080AB444 @ =0x03000094
	adds r0, r6, r4
	ldr r1, _080AB448 @ =0x06008000
	str r1, [r0, #4]
	strh r2, [r0, #0xa]
	ldr r1, _080AB44C @ =0x0600B000
	str r1, [r0, #0xc]
	strh r2, [r0, #0x18]
	strh r2, [r0, #0x1a]
	ldr r1, _080AB450 @ =gUnknown_080DA330
	ldrh r1, [r1, #0x24]
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	strh r2, [r0, #0x24]
	movs r1, #0x20
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	ldr r2, _080AB454 @ =0x030000BE
	adds r1, r6, r2
	strb r3, [r1]
	movs r1, #3
	strh r1, [r0, #0x2e]
	bl DrawBackground
_080AB40C:
	ldr r5, _080AB458 @ =gBgPalette
	movs r0, #0
	strh r0, [r5]
	ldr r3, _080AB45C @ =gFlags
	ldr r2, [r3]
	movs r4, #1
	orrs r2, r4
	str r2, [r3]
	strh r0, [r7, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _080AB464
	ldr r0, _080AB460 @ =gUnknown_080DA360
	movs r1, #0
	movs r2, #0x50
	bl CopyBgPaletteMasked
	b _080AB476
	.align 2, 0
_080AB434: .4byte gDispCnt
_080AB438: .4byte gBgCntRegs
_080AB43C: .4byte 0x00001608
_080AB440: .4byte gBgScrollRegs
_080AB444: .4byte 0x03000094
_080AB448: .4byte 0x06008000
_080AB44C: .4byte 0x0600B000
_080AB450: .4byte gUnknown_080DA330
_080AB454: .4byte 0x030000BE
_080AB458: .4byte gBgPalette
_080AB45C: .4byte gFlags
_080AB460: .4byte gUnknown_080DA360
_080AB464:
	ldr r1, _080AB480 @ =0x040000D4
	ldr r0, _080AB484 @ =gUnknown_080DA360
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _080AB488 @ =0x80000050
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	orrs r2, r4
	str r2, [r3]
_080AB476:
	ldr r0, _080AB48C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AB490 @ =sub_80AB4A4
	str r0, [r1, #8]
	b _080AB49A
	.align 2, 0
_080AB480: .4byte 0x040000D4
_080AB484: .4byte gUnknown_080DA360
_080AB488: .4byte 0x80000050
_080AB48C: .4byte gCurTask
_080AB490: .4byte sub_80AB4A4
_080AB494:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_080AB49A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80AB4A4
sub_80AB4A4: @ 0x080AB4A4
	push {r4, r5, r6, lr}
	ldr r0, _080AB550 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldrb r3, [r5, #1]
	cmp r3, #0
	bne _080AB506
	ldr r2, _080AB554 @ =gDispCnt
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #6
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB558 @ =gWinRegs
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
	ldr r1, _080AB55C @ =gBldRegs
	ldr r0, _080AB560 @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r5, #2]
	movs r0, #1
	strb r0, [r5, #1]
	ldr r0, _080AB564 @ =gBgScrollRegs
	strh r3, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	strh r3, [r0, #0xc]
	strh r3, [r0, #0xe]
_080AB506:
	adds r0, r5, #0
	bl sub_80ABD10
	adds r0, r5, #0
	bl sub_80ABC80
	adds r0, r5, #0
	bl sub_80ABCF4
	ldr r0, _080AB568 @ =0x0300002C
	adds r4, r4, r0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _080AB55C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080AB570
	ldrh r0, [r5, #2]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r1, _080AB56C @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r6, [r5, #2]
	adds r0, r0, r6
	strh r0, [r5, #2]
	b _080AB596
	.align 2, 0
_080AB550: .4byte gCurTask
_080AB554: .4byte gDispCnt
_080AB558: .4byte gWinRegs
_080AB55C: .4byte gBldRegs
_080AB560: .4byte 0x00003FFF
_080AB564: .4byte gBgScrollRegs
_080AB568: .4byte 0x0300002C
_080AB56C: .4byte 0xFFFFFF00
_080AB570:
	strh r0, [r1, #4]
	bl m4aMPlayAllStop
	ldrb r0, [r5]
	cmp r0, #3
	bne _080AB588
	ldr r0, _080AB584 @ =0x0000029F @ SE_671
	bl m4aSongNumStart
	b _080AB58E
	.align 2, 0
_080AB584: .4byte 0x0000029F
_080AB588:
	ldr r0, _080AB59C @ =0x000002A1 @ SE_673
	bl m4aSongNumStart
_080AB58E:
	ldr r0, _080AB5A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AB5A4 @ =sub_80AB770
	str r0, [r1, #8]
_080AB596:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AB59C: .4byte 0x000002A1
_080AB5A0: .4byte gCurTask
_080AB5A4: .4byte sub_80AB770

	thumb_func_start sub_80AB5A8
sub_80AB5A8: @ 0x080AB5A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, _080AB640 @ =gCurTask
	ldr r0, [r7]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r6, r0
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080AB5F6
	ldr r2, _080AB644 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080AB648 @ =gWinRegs
	movs r4, #0
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
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0xa]
	ldr r1, _080AB64C @ =gBldRegs
	ldr r0, _080AB650 @ =0x00003FFF
	strh r0, [r1]
	strh r4, [r5, #2]
	strb r3, [r5, #1]
_080AB5F6:
	adds r0, r5, #0
	bl sub_80ABD10
	adds r0, r5, #0
	bl sub_80ABC80
	adds r0, r5, #0
	bl sub_80ABCF4
	ldr r0, _080AB654 @ =0x0300002C
	adds r4, r6, r0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r1, _080AB64C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bhi _080AB658
	ldrh r0, [r5, #2]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r3, [r5, #2]
	adds r0, r0, r3
	strh r0, [r5, #2]
	b _080AB760
	.align 2, 0
_080AB640: .4byte gCurTask
_080AB644: .4byte gDispCnt
_080AB648: .4byte gWinRegs
_080AB64C: .4byte gBldRegs
_080AB650: .4byte 0x00003FFF
_080AB654: .4byte 0x0300002C
_080AB658:
	movs r0, #0x10
	strh r0, [r1, #4]
	ldrb r0, [r5]
	cmp r0, #1
	bne _080AB6D0
	movs r6, #0
	movs r0, #0
	ldr r1, _080AB6BC @ =gLoadedSaveGame
	mov r8, r1
	mov r7, r8
	adds r7, #0x37
	movs r3, #4
	mov ip, r3
_080AB672:
	movs r3, #0
	adds r2, r0, #1
	lsls r4, r0, #2
_080AB678:
	adds r0, r3, r4
	adds r0, r0, r7
	ldrb r1, [r0]
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	beq _080AB68C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080AB68C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080AB678
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080AB672
	mov r2, r8
	adds r2, #0x33
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	bl sub_8001E58
	cmp r6, #0x1c
	bne _080AB6C0
	movs r0, #2
	bl sub_80AB120
	b _080AB758
	.align 2, 0
_080AB6BC: .4byte gLoadedSaveGame
_080AB6C0:
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, _080AB6CC @ =gCurTask
	ldr r1, [r0]
	b _080AB6EA
	.align 2, 0
_080AB6CC: .4byte gCurTask
_080AB6D0:
	cmp r0, #2
	bne _080AB6F8
	ldr r1, _080AB6F0 @ =gLoadedSaveGame
	adds r1, #0x33
	ldrb r2, [r1]
	movs r0, #2
	orrs r0, r2
	strb r0, [r1]
	bl sub_8001E58
	movs r0, #0
	strh r0, [r5, #4]
	ldr r1, [r7]
_080AB6EA:
	ldr r0, _080AB6F4 @ =sub_80ABC20
	str r0, [r1, #8]
	b _080AB760
	.align 2, 0
_080AB6F0: .4byte gLoadedSaveGame
_080AB6F4: .4byte sub_80ABC20
_080AB6F8:
	cmp r0, #0
	bne _080AB750
	ldr r1, _080AB734 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AB738 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AB73C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AB740 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AB744 @ =gVramGraphicsCopyCursor
	ldr r0, _080AB748 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080AB74C @ =gStageData
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #4
	bl WarpToMap
	b _080AB760
	.align 2, 0
_080AB734: .4byte 0x0000FFFF
_080AB738: .4byte gBackgroundsCopyQueueCursor
_080AB73C: .4byte gBackgroundsCopyQueueIndex
_080AB740: .4byte gBgSpritesCount
_080AB744: .4byte gVramGraphicsCopyCursor
_080AB748: .4byte gVramGraphicsCopyQueueIndex
_080AB74C: .4byte gStageData
_080AB750:
	movs r0, #3
	movs r1, #1
	bl CreateMainMenu
_080AB758:
	ldr r0, _080AB76C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AB760:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AB76C: .4byte gCurTask

	thumb_func_start sub_80AB770
sub_80AB770: @ 0x080AB770
	push {r4, r5, r6, lr}
	ldr r6, _080AB7C0 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80ABD10
	adds r0, r5, #0
	bl sub_80ABC80
	adds r0, r5, #0
	bl sub_80ABCF4
	ldr r0, _080AB7C4 @ =0x0300002C
	adds r4, r4, r0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r0, [r5]
	cmp r0, #0
	bne _080AB7C8
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0x77
	bgt _080AB7CC
	adds r0, r1, #1
	b _080AB7CE
	.align 2, 0
_080AB7C0: .4byte gCurTask
_080AB7C4: .4byte 0x0300002C
_080AB7C8:
	cmp r0, #3
	bne _080AB7F4
_080AB7CC:
	movs r0, #0x78
_080AB7CE:
	strh r0, [r5, #4]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x77
	ble _080AB80A
	ldr r0, _080AB7EC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AB80A
	ldr r0, _080AB7F0 @ =gCurTask
	ldr r1, [r0]
	b _080AB806
	.align 2, 0
_080AB7EC: .4byte gPressedKeys
_080AB7F0: .4byte gCurTask
_080AB7F4:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	ble _080AB80A
	ldr r1, [r6]
_080AB806:
	ldr r0, _080AB810 @ =sub_80AB5A8
	str r0, [r1, #8]
_080AB80A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AB810: .4byte sub_80AB5A8

	thumb_func_start TaskDestructor_40_A_80AB814
TaskDestructor_40_A_80AB814: @ 0x080AB814
	bx lr
	.align 2, 0

	thumb_func_start Task_40_A_80AB818
Task_40_A_80AB818: @ 0x080AB818
	push {r4, r5, lr}
	ldr r5, _080AB844 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80AB88C
	adds r0, r4, #0
	bl sub_80A9CA0
	cmp r0, #1
	bne _080AB83C
	ldr r1, [r5]
	ldr r0, _080AB848 @ =Task_40_A_80AB84C
	str r0, [r1, #8]
_080AB83C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB844: .4byte gCurTask
_080AB848: .4byte Task_40_A_80AB84C

	thumb_func_start Task_40_A_80AB84C
Task_40_A_80AB84C: @ 0x080AB84C
	push {r4, r5, lr}
	ldr r5, _080AB884 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80A9D78
	adds r0, r4, #0
	bl sub_80AB88C
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xe
	bls _080AB87C
	ldr r0, _080AB888 @ =gBldRegs
	ldrh r0, [r0, #4]
	cmp r0, #0x10
	bne _080AB87C
	ldr r0, [r5]
	bl TaskDestroy
_080AB87C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AB884: .4byte gCurTask
_080AB888: .4byte gBldRegs

	thumb_func_start sub_80AB88C
sub_80AB88C: @ 0x080AB88C
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x18
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80AB8B0
sub_80AB8B0: @ 0x080AB8B0
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x10]
	ldr r2, _080AB8D4 @ =0x00001DFF
	cmp r0, r2
	bgt _080AB8C8
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r1, #0x10]
	cmp r0, r2
	ble _080AB8D8
_080AB8C8:
	movs r0, #0xf0
	lsls r0, r0, #5
	str r0, [r1, #0x10]
	movs r0, #1
	b _080AB8F2
	.align 2, 0
_080AB8D4: .4byte 0x00001DFF
_080AB8D8:
	ldr r0, [r1, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #6
	cmp r0, r2
	ble _080AB8EA
	subs r0, #0x40
	str r0, [r1, #0x14]
	cmp r0, r2
	bgt _080AB8F0
_080AB8EA:
	str r2, [r1, #0x14]
	movs r0, #1
	b _080AB8F2
_080AB8F0:
	movs r0, #0
_080AB8F2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_40_B_80AB8F8
TaskDestructor_40_B_80AB8F8: @ 0x080AB8F8
	bx lr
	.align 2, 0

	thumb_func_start Task_100_80AB8FC
Task_100_80AB8FC: @ 0x080AB8FC
	push {r4, r5, lr}
	ldr r5, _080AB920 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AA1BC
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0x13
	bhi _080AB924
	adds r0, r4, #0
	bl sub_80AB93C
	b _080AB934
	.align 2, 0
_080AB920: .4byte gCurTask
_080AB924:
	adds r0, r4, #0
	bl sub_80AB960
	cmp r0, #1
	bne _080AB934
	ldr r0, [r5]
	bl TaskDestroy
_080AB934:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AB93C
sub_80AB93C: @ 0x080AB93C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	bge _080AB952
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r1, #8]
	cmp r0, #0
	ble _080AB95A
_080AB952:
	movs r0, #0
	str r0, [r1, #8]
	movs r0, #1
	b _080AB95C
_080AB95A:
	movs r0, #0
_080AB95C:
	pop {r1}
	bx r1

	thumb_func_start sub_80AB960
sub_80AB960: @ 0x080AB960
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	ldr r2, _080AB97C @ =0xFFFF2E00
	cmp r0, r2
	ble _080AB976
	ldr r3, _080AB980 @ =0xFFFFFB00
	adds r0, r0, r3
	str r0, [r1, #8]
	cmp r0, r2
	bge _080AB984
_080AB976:
	str r2, [r1, #8]
	movs r0, #1
	b _080AB986
	.align 2, 0
_080AB97C: .4byte 0xFFFF2E00
_080AB980: .4byte 0xFFFFFB00
_080AB984:
	movs r0, #0
_080AB986:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Task_100_80AB98C
Task_100_80AB98C: @ 0x080AB98C
	bx lr
	.align 2, 0

	thumb_func_start TaskDestructor_54_80AB990
TaskDestructor_54_80AB990: @ 0x080AB990
	bx lr
	.align 2, 0

	thumb_func_start sub_80AB994
sub_80AB994: @ 0x080AB994
	push {lr}
	ldr r0, _080AB9C0 @ =gCurTask
	ldr r3, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldrh r0, [r2, #8]
	adds r0, #1
	strh r0, [r2, #8]
	lsls r0, r0, #0x10
	movs r1, #0x96
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080AB9BA
	movs r0, #0
	strh r0, [r2, #8]
	ldr r0, _080AB9C4 @ =sub_80AA410
	str r0, [r3, #8]
_080AB9BA:
	pop {r0}
	bx r0
	.align 2, 0
_080AB9C0: .4byte gCurTask
_080AB9C4: .4byte sub_80AA410

	thumb_func_start TaskDestructor_48_C_80AB9C8
TaskDestructor_48_C_80AB9C8: @ 0x080AB9C8
	bx lr
	.align 2, 0

	thumb_func_start Task_48_C_80AB9CC
Task_48_C_80AB9CC: @ 0x080AB9CC
	push {r4, lr}
	ldr r4, _080AB9EC @ =gCurTask
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	bl sub_80AA62C
	ldr r1, [r4]
	ldr r0, _080AB9F0 @ =sub_80AA6A0
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AB9EC: .4byte gCurTask
_080AB9F0: .4byte sub_80AA6A0

	thumb_func_start sub_80AB9F4
sub_80AB9F4: @ 0x080AB9F4
	push {lr}
	ldr r0, _080ABA18 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #2
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _080ABA14
	ldr r0, _080ABA1C @ =sub_80AA76C
	str r0, [r2, #8]
_080ABA14:
	pop {r0}
	bx r0
	.align 2, 0
_080ABA18: .4byte gCurTask
_080ABA1C: .4byte sub_80AA76C

	thumb_func_start sub_80ABA20
sub_80ABA20: @ 0x080ABA20
	push {lr}
	ldr r0, _080ABA64 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABA5E
	ldr r1, _080ABA68 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABA6C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABA70 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABA74 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABA78 @ =gVramGraphicsCopyCursor
	ldr r0, _080ABA7C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABA5E:
	pop {r0}
	bx r0
	.align 2, 0
_080ABA64: .4byte gCurTask
_080ABA68: .4byte 0x0000FFFF
_080ABA6C: .4byte gBackgroundsCopyQueueCursor
_080ABA70: .4byte gBackgroundsCopyQueueIndex
_080ABA74: .4byte gBgSpritesCount
_080ABA78: .4byte gVramGraphicsCopyCursor
_080ABA7C: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80ABA80
sub_80ABA80: @ 0x080ABA80
	push {lr}
	ldr r0, _080ABA90 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_080ABA90: .4byte gCurTask

	thumb_func_start sub_80ABA94
sub_80ABA94: @ 0x080ABA94
	push {lr}
	ldr r0, _080ABAD8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABAD2
	ldr r1, _080ABADC @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABAE0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABAE4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABAE8 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABAEC @ =gVramGraphicsCopyCursor
	ldr r0, _080ABAF0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABAD2:
	pop {r0}
	bx r0
	.align 2, 0
_080ABAD8: .4byte gCurTask
_080ABADC: .4byte 0x0000FFFF
_080ABAE0: .4byte gBackgroundsCopyQueueCursor
_080ABAE4: .4byte gBackgroundsCopyQueueIndex
_080ABAE8: .4byte gBgSpritesCount
_080ABAEC: .4byte gVramGraphicsCopyCursor
_080ABAF0: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start TaskDestructor_14C_80ABAF4
TaskDestructor_14C_80ABAF4: @ 0x080ABAF4
	bx lr
	.align 2, 0

	thumb_func_start sub_80ABAF8
sub_80ABAF8: @ 0x080ABAF8
	push {r4, r5, lr}
	ldr r5, _080ABB30 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ABB98
	adds r0, r4, #0
	bl sub_80AB0D8
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb4
	ble _080ABB2A
	movs r0, #0
	strh r0, [r4, #2]
	ldr r1, [r5]
	ldr r0, _080ABB34 @ =sub_80AAF50
	str r0, [r1, #8]
_080ABB2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ABB30: .4byte gCurTask
_080ABB34: .4byte sub_80AAF50

	thumb_func_start sub_80ABB38
sub_80ABB38: @ 0x080ABB38
	push {lr}
	ldr r0, _080ABB7C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABB76
	ldr r1, _080ABB80 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABB84 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABB88 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABB8C @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABB90 @ =gVramGraphicsCopyCursor
	ldr r0, _080ABB94 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABB76:
	pop {r0}
	bx r0
	.align 2, 0
_080ABB7C: .4byte gCurTask
_080ABB80: .4byte 0x0000FFFF
_080ABB84: .4byte gBackgroundsCopyQueueCursor
_080ABB88: .4byte gBackgroundsCopyQueueIndex
_080ABB8C: .4byte gBgSpritesCount
_080ABB90: .4byte gVramGraphicsCopyCursor
_080ABB94: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80ABB98
sub_80ABB98: @ 0x080ABB98
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_080ABB9E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x2c
	adds r0, r5, r0
	ldr r1, [r5, #0x1c]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x20]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080ABB9E
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80ABBC8
sub_80ABBC8: @ 0x080ABBC8
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x18]
	cmp r2, #0
	bge _080ABBE6
	ldrb r0, [r1, #1]
	lsls r0, r0, #8
	adds r0, r2, r0
	str r0, [r1, #0x18]
	cmp r0, #0
	blt _080ABBE6
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #1
	b _080ABBE8
_080ABBE6:
	movs r0, #0
_080ABBE8:
	pop {r1}
	bx r1

	thumb_func_start sub_80ABBEC
sub_80ABBEC: @ 0x080ABBEC
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x20]
	ldr r0, _080ABC10 @ =0x00006FFF
	cmp r1, r0
	ble _080ABC14
	subs r1, #0x80
	ldrb r0, [r2, #1]
	lsls r0, r0, #7
	subs r1, r1, r0
	str r1, [r2, #0x20]
	movs r0, #0xe0
	lsls r0, r0, #7
	cmp r1, r0
	bgt _080ABC14
	str r0, [r2, #0x20]
	movs r0, #1
	b _080ABC16
	.align 2, 0
_080ABC10: .4byte 0x00006FFF
_080ABC14:
	movs r0, #0
_080ABC16:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_D4_80ABC1C
TaskDestructor_D4_80ABC1C: @ 0x080ABC1C
	bx lr
	.align 2, 0

	thumb_func_start sub_80ABC20
sub_80ABC20: @ 0x080ABC20
	push {lr}
	ldr r0, _080ABC64 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _080ABC5E
	ldr r1, _080ABC68 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080ABC6C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080ABC70 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080ABC74 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080ABC78 @ =gVramGraphicsCopyCursor
	ldr r0, _080ABC7C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl LaunchGameIntro
_080ABC5E:
	pop {r0}
	bx r0
	.align 2, 0
_080ABC64: .4byte gCurTask
_080ABC68: .4byte 0x0000FFFF
_080ABC6C: .4byte gBackgroundsCopyQueueCursor
_080ABC70: .4byte gBackgroundsCopyQueueIndex
_080ABC74: .4byte gBgSpritesCount
_080ABC78: .4byte gVramGraphicsCopyCursor
_080ABC7C: .4byte gVramGraphicsCopyQueueIndex

	thumb_func_start sub_80ABC80
sub_80ABC80: @ 0x080ABC80
	push {r4, lr}
	movs r3, #0
	ldr r1, [r0, #0x24]
	adds r1, #0x90
	str r1, [r0, #0x24]
	ldr r2, _080ABCC8 @ =gSineTable
	asrs r1, r1, #8
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x1c
	subs r0, #5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _080ABCCC @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080ABCD0 @ =gHBlankCopyTarget
	ldr r0, _080ABCD4 @ =0x0400001A
	str r0, [r1]
	ldr r1, _080ABCD8 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080ABCDC @ =gBgOffsetsHBlankPrimary
	ldr r1, [r0]
	movs r2, #0
_080ABCBE:
	cmp r3, #0x63
	bls _080ABCE0
	strh r4, [r1]
	b _080ABCE2
	.align 2, 0
_080ABCC8: .4byte gSineTable
_080ABCCC: .4byte gFlags
_080ABCD0: .4byte gHBlankCopyTarget
_080ABCD4: .4byte 0x0400001A
_080ABCD8: .4byte gHBlankCopySize
_080ABCDC: .4byte gBgOffsetsHBlankPrimary
_080ABCE0:
	strh r2, [r1]
_080ABCE2:
	adds r1, #2
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x9f
	bls _080ABCBE
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80ABCF4
sub_80ABCF4: @ 0x080ABCF4
	ldr r2, [r0, #0x18]
	adds r2, #0xc0
	str r2, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	subs r1, #0xc0
	str r1, [r0, #0x1c]
	ldr r0, _080ABD0C @ =gBgScrollRegs
	asrs r2, r2, #8
	strh r2, [r0, #4]
	asrs r1, r1, #8
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
_080ABD0C: .4byte gBgScrollRegs

	thumb_func_start sub_80ABD10
sub_80ABD10: @ 0x080ABD10
	ldr r1, [r0, #0x20]
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x20]
	movs r2, #0xf0
	lsls r2, r2, #7
	str r2, [r0, #8]
	ldr r3, _080ABD40 @ =gSineTable
	asrs r1, r1, #8
	movs r2, #0xff
	ands r1, r2
	lsls r1, r1, #3
	adds r1, r1, r3
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r1, r1, #3
	movs r2, #0xf4
	lsls r2, r2, #7
	adds r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080ABD40: .4byte gSineTable

	thumb_func_start sub_80ABD44
sub_80ABD44: @ 0x080ABD44
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ABD98 @ =Task_62C_80ABE28
	ldr r1, _080ABD9C @ =0x0000062C
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080ABDA0 @ =TaskDestructor_62C_80AC9E4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r2, [r0, #1]
	movs r3, #0
	strh r2, [r0, #4]
	ldr r1, _080ABDA4 @ =0x06010000
	str r1, [r0, #0x10]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	strb r3, [r0, #2]
	strb r4, [r0]
	ldr r3, _080ABDA8 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080ABDB0
	ldr r0, _080ABDAC @ =gUnknown_080DB824
	movs r1, #0x70
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _080ABDC6
	.align 2, 0
_080ABD98: .4byte Task_62C_80ABE28
_080ABD9C: .4byte 0x0000062C
_080ABDA0: .4byte TaskDestructor_62C_80AC9E4
_080ABDA4: .4byte 0x06010000
_080ABDA8: .4byte gFlags
_080ABDAC: .4byte gUnknown_080DB824
_080ABDB0:
	ldr r1, _080ABDE0 @ =0x040000D4
	ldr r0, _080ABDE4 @ =gUnknown_080DB824
	str r0, [r1]
	ldr r0, _080ABDE8 @ =gObjPalette + 0xE0
	str r0, [r1, #4]
	ldr r0, _080ABDEC @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_080ABDC6:
	ldr r3, _080ABDF0 @ =gFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080ABDF8
	ldr r0, _080ABDF4 @ =gUnknown_080DB804
	movs r1, #0xe0
	movs r2, #0x10
	bl CopyObjPaletteMasked
	b _080ABE0E
	.align 2, 0
_080ABDE0: .4byte 0x040000D4
_080ABDE4: .4byte gUnknown_080DB824
_080ABDE8: .4byte gObjPalette + 0xE0
_080ABDEC: .4byte 0x80000010
_080ABDF0: .4byte gFlags
_080ABDF4: .4byte gUnknown_080DB804
_080ABDF8:
	ldr r1, _080ABE18 @ =0x040000D4
	ldr r0, _080ABE1C @ =gUnknown_080DB804
	str r0, [r1]
	ldr r0, _080ABE20 @ =gObjPalette + 0x1c0
	str r0, [r1, #4]
	ldr r0, _080ABE24 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #2
	orrs r2, r0
	str r2, [r3]
_080ABE0E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ABE18: .4byte 0x040000D4
_080ABE1C: .4byte gUnknown_080DB804
_080ABE20: .4byte gObjPalette + 0x1c0
_080ABE24: .4byte 0x80000010

	thumb_func_start Task_62C_80ABE28
Task_62C_80ABE28: @ 0x080ABE28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _080AC020 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldrb r4, [r7, #1]
	adds r0, r4, #0
	adds r0, #0xa
	cmp r4, r0
	bge _080ABEA4
	ldr r6, _080AC024 @ =gUnknown_080DA420
	ldr r0, [r6, #4]
	lsls r0, r0, #5
	mov r8, r0
	movs r0, #0
	mov sb, r0
	movs r5, #0
_080ABE56:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	add r1, r8
	str r1, [r7, #0x10]
	ldrh r1, [r6]
	strh r1, [r0, #0xc]
	ldrb r2, [r6, #2]
	adds r1, r4, r2
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r5, [r0, #0xe]
	strh r5, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sb
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r7, #1]
	adds r0, #0xa
	cmp r4, r0
	blt _080ABE56
_080ABEA4:
	ldrb r0, [r7, #1]
	adds r0, #0xa
	movs r2, #0
	strb r0, [r7, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _080ABEB6
	b _080AC010
_080ABEB6:
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x20
	str r1, [r7, #0x10]
	movs r4, #0
	ldr r1, _080AC028 @ =0x00000462     @ ANIM_ASCII
	mov sb, r1              @ sb = r1 = ANIM_ASCII
	mov r1, sb
	strh r1, [r0, #0xc]
	movs r1, #0xe
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	movs r5, #0x80
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb              @ r1 = sb = ANIM_ASCII
	strh r1, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	subs r1, #7
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb              @ r1 = sb = ANIM_ASCII
	strh r1, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	subs r1, #9
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb              @ r1 = sb = ANIM_ASCII
	strh r1, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	str r2, [sp]
	bl UpdateSpriteAnimation
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldrb r1, [r7, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x14
	adds r0, r7, r0
	ldr r1, [r7, #0x10]
	str r1, [r0]
	ldr r1, [r7, #0x10]
	adds r1, #0x40
	str r1, [r7, #0x10]
	mov r1, sb              @ r1 = sb = ANIM_ASCII
	strh r1, [r0, #0xc]
	movs r1, #0xd
	strb r1, [r0, #0x1a]
	subs r1, #0xe
	strb r1, [r0, #0x1b]
	ldr r2, [sp]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	mov r1, r8
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	strb r6, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r5, [r0, #8]
	bl UpdateSpriteAnimation
	strb r4, [r7, #1]
	ldr r0, _080AC020 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC02C @ =sub_80AC030
	str r0, [r1, #8]
_080AC010:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC020: .4byte gCurTask
_080AC024: .4byte gUnknown_080DA420
_080AC028: .4byte 0x00000462
_080AC02C: .4byte sub_80AC030

	thumb_func_start sub_80AC030
sub_80AC030: @ 0x080AC030
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080AC0B4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r5, #0
	ldr r7, _080AC0B8 @ =gUnknown_080DB844
	movs r0, #0
	mov r8, r0
	movs r6, #0
_080AC04C:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, _080AC0BC @ =0x0000058C
	adds r0, r0, r1
	adds r0, r4, r0
	ldr r1, [r4, #0x10]
	str r1, [r0]
	lsls r3, r5, #3
	adds r1, r7, #4
	adds r1, r3, r1
	ldr r2, [r1]
	lsls r2, r2, #5
	ldr r1, [r4, #0x10]
	adds r1, r1, r2
	str r1, [r4, #0x10]
	adds r3, r3, r7
	ldrh r1, [r3]
	strh r1, [r0, #0xc]
	ldrb r1, [r3, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	strh r6, [r0, #0x10]
	strh r6, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, r8
	strb r1, [r0, #0x1f]
	movs r1, #0x80
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _080AC04C
	ldr r0, _080AC0B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC0C0 @ =sub_80AC0C4
	str r0, [r1, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC0B4: .4byte gCurTask
_080AC0B8: .4byte gUnknown_080DB844
_080AC0BC: .4byte 0x0000058C
_080AC0C0: .4byte sub_80AC0C4

	thumb_func_start sub_80AC0C4
sub_80AC0C4: @ 0x080AC0C4
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _080AC0F0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AC2B4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC0F8
	ldr r0, _080AC0F4 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC104
	b _080AC15C
	.align 2, 0
_080AC0F0: .4byte gCurTask
_080AC0F4: .4byte gLoadedSaveGame
_080AC0F8:
	ldr r0, _080AC13C @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC15C
_080AC104:
	ldr r0, _080AC140 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC15C
	ldr r1, _080AC144 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC148 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC14C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC150 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC154 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC158 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC1D8
	.align 2, 0
_080AC13C: .4byte gLoadedSaveGame
_080AC140: .4byte gInput
_080AC144: .4byte 0x0000FFFF
_080AC148: .4byte gBackgroundsCopyQueueCursor
_080AC14C: .4byte gBackgroundsCopyQueueIndex
_080AC150: .4byte gBgSpritesCount
_080AC154: .4byte gVramGraphicsCopyCursor
_080AC158: .4byte gVramGraphicsCopyQueueIndex
_080AC15C:
	ldr r1, [r4, #0xc]
	adds r1, #0x80
	str r1, [r4, #0xc]
	lsrs r1, r1, #8
	subs r1, #0xa
	ldr r2, _080AC1A8 @ =strCredits_CreatedBy
	ldrb r5, [r4, #1]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r2, r0, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x24
	ldrsh r0, [r2, r3]
	cmp r1, r0
	blt _080AC1D8
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #2
	bne _080AC1B0
	ldrb r1, [r4, #2]
	ldr r0, _080AC1AC @ =0x0000058C
	adds r2, r4, r0
	adds r3, r4, #0
	adds r3, #8
	adds r0, r4, #0
	adds r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	bl sub_80ACA80
	ldrb r0, [r4, #2]
	adds r0, #1
	strb r0, [r4, #2]
	b _080AC1C2
	.align 2, 0
_080AC1A8: .4byte strCredits_CreatedBy
_080AC1AC: .4byte 0x0000058C
_080AC1B0:
	adds r1, r4, #0
	adds r1, #0x14
	adds r2, r4, #0
	adds r2, #8
	adds r3, r4, #0
	adds r3, #0xc
	adds r0, r5, #0
	bl sub_80AC9E8
_080AC1C2:
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x7e
	bls _080AC1D8
	ldr r0, _080AC1E0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC1E4 @ =sub_80AC1E8
	str r0, [r1, #8]
_080AC1D8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AC1E0: .4byte gCurTask
_080AC1E4: .4byte sub_80AC1E8

	thumb_func_start sub_80AC1E8
sub_80AC1E8: @ 0x080AC1E8
	push {r4, lr}
	ldr r0, _080AC210 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80AC2B4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC218
	ldr r0, _080AC214 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC224
	b _080AC27C
	.align 2, 0
_080AC210: .4byte gCurTask
_080AC214: .4byte gLoadedSaveGame
_080AC218:
	ldr r0, _080AC25C @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC27C
_080AC224:
	ldr r0, _080AC260 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC27C
	ldr r1, _080AC264 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC268 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC26C @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC270 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC274 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC278 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC2A0
	.align 2, 0
_080AC25C: .4byte gLoadedSaveGame
_080AC260: .4byte gInput
_080AC264: .4byte 0x0000FFFF
_080AC268: .4byte gBackgroundsCopyQueueCursor
_080AC26C: .4byte gBackgroundsCopyQueueIndex
_080AC270: .4byte gBgSpritesCount
_080AC274: .4byte gVramGraphicsCopyCursor
_080AC278: .4byte gVramGraphicsCopyQueueIndex
_080AC27C:
	ldr r0, [r4, #0xc]
	adds r0, #0x80
	str r0, [r4, #0xc]
	lsrs r0, r0, #8
	ldr r1, _080AC2A8 @ =strCredits_CreatedBy
	ldr r2, _080AC2AC @ =0x000013D4
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, #0x82
	cmp r0, r1
	blo _080AC2A0
	ldrb r0, [r4]
	bl sub_80ACAF0
	ldr r0, _080AC2B0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AC2A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC2A8: .4byte strCredits_CreatedBy
_080AC2AC: .4byte 0x000013D4
_080AC2B0: .4byte gCurTask

	thumb_func_start sub_80AC2B4
sub_80AC2B4: @ 0x080AC2B4
	push {r4, lr}
	movs r3, #0
	ldr r2, _080AC380 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _080AC384 @ =gHBlankCopyTarget
	ldr r0, _080AC388 @ =0x04000052
	str r0, [r1]
	ldr r1, _080AC38C @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080AC390 @ =gBgOffsetsHBlankPrimary
	ldr r1, [r0]
	movs r2, #0
	movs r0, #0xff
	lsls r0, r0, #8
	adds r4, r0, #0
_080AC2DA:
	strh r4, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bls _080AC2DA
	movs r2, #0x28
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r4, r0, #0
_080AC2F0:
	strh r4, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x31
	bls _080AC2F0
	movs r2, #0x32
	ldr r4, _080AC394 @ =gUnknown_080DB930
_080AC302:
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x40
	bls _080AC302
	movs r2, #0x41
	movs r3, #0xf
_080AC320:
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x68
	bls _080AC320
	movs r3, #0xe
	movs r2, #0x69
	ldr r4, _080AC394 @ =gUnknown_080DB930
_080AC334:
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x77
	bls _080AC334
	movs r2, #0x73
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r3, r0, #0
_080AC356:
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x82
	bls _080AC356
	movs r2, #0x82
	movs r0, #0xff
	lsls r0, r0, #8
	adds r3, r0, #0
_080AC36C:
	strh r3, [r1]
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xa0
	bls _080AC36C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC380: .4byte gFlags
_080AC384: .4byte gHBlankCopyTarget
_080AC388: .4byte 0x04000052
_080AC38C: .4byte gHBlankCopySize
_080AC390: .4byte gBgOffsetsHBlankPrimary
_080AC394: .4byte gUnknown_080DB930

	thumb_func_start Task_130_80AC398
Task_130_80AC398: @ 0x080AC398
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0x80
	mov sb, r0
	ldr r0, _080AC408 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r4, #0
	ldr r2, _080AC40C @ =strCredits_CreatedBy
	ldrb r3, [r6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r4, r0
	blt _080AC3C6
	b _080AC4F4
_080AC3C6:
	lsls r0, r4, #0x18
	asrs r4, r0, #0x18
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r4, r1
	adds r2, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	adds r3, r1, #0
	mov r8, r0
	cmp r3, #0x30
	bne _080AC410
	adds r1, r4, #1
	lsls r1, r1, #3
	adds r0, r6, #0
	adds r0, #0x14
	adds r1, r0, r1
	lsls r2, r4, #3
	adds r0, r0, r2
	ldr r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1]
	adds r1, r6, #0
	adds r1, #0x18
	adds r1, r1, r2
	ldr r0, [r1]
	mov r2, sb
	subs r0, r0, r2
	str r0, [r1]
	b _080AC4D6
	.align 2, 0
_080AC408: .4byte gCurTask
_080AC40C: .4byte strCredits_CreatedBy
_080AC410:
	cmp r3, #0x2e
	bne _080AC418
	movs r1, #0x1e
	b _080AC440
_080AC418:
	cmp r3, #0x26
	bne _080AC420
	movs r1, #0x1f
	b _080AC440
_080AC420:
	cmp r3, #0x28
	bne _080AC428
	movs r1, #0x20
	b _080AC440
_080AC428:
	cmp r3, #0x29
	bne _080AC430
	movs r1, #0x21
	b _080AC440
_080AC430:
	cmp r3, #0x2d
	bne _080AC438
	movs r1, #0x22
	b _080AC440
_080AC438:
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080AC440:
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r6, r3
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r7, r1, #2
	adds r1, r7, r1
	lsls r1, r1, #3
	ldr r0, [r0]
	adds r5, r0, r1
	ldr r1, [r6, #0xc]
	movs r0, #0
	mov ip, r0
	strh r1, [r5, #0x10]
	mov r2, r8
	asrs r4, r2, #0x18
	adds r3, r6, #0
	adds r3, #0x14
	cmp r4, #0
	beq _080AC474
	lsls r0, r4, #3
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r0, r1, r0
	strh r0, [r5, #0x10]
_080AC474:
	adds r2, r4, #1
	lsls r2, r2, #3
	adds r2, r3, r2
	lsls r4, r4, #3
	adds r3, r3, r4
	ldr r0, _080AC4BC @ =gUnknown_080DB868
	adds r0, r7, r0
	ldr r1, [r0]
	lsls r1, r1, #8
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r2]
	ldr r2, [r6, #0x10]
	adds r1, r6, #0
	adds r1, #0x18
	adds r1, r1, r4
	ldr r0, [r1]
	asrs r0, r0, #8
	adds r2, r2, r0
	strh r2, [r5, #0x12]
	ldr r0, [r1]
	mov r3, sb
	subs r0, r0, r3
	str r0, [r1]
	ldr r2, _080AC4C0 @ =strCredits_CreatedBy
	ldrb r1, [r6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #1
	bne _080AC4C4
	movs r0, #8
	b _080AC4CE
	.align 2, 0
_080AC4BC: .4byte gUnknown_080DB868
_080AC4C0: .4byte strCredits_CreatedBy
_080AC4C4:
	cmp r0, #3
	bne _080AC4CC
	mov r0, ip
	b _080AC4CE
_080AC4CC:
	movs r0, #1
_080AC4CE:
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	bl DisplaySprite
_080AC4D6:
	movs r1, #0x80
	lsls r1, r1, #0x11
	add r1, r8
	lsrs r4, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, _080AC510 @ =strCredits_CreatedBy
	ldrb r3, [r6]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r1, r0
	bge _080AC4F4
	b _080AC3C6
_080AC4F4:
	ldr r1, [r6, #0x18]
	ldr r0, _080AC514 @ =0x00002CFF
	cmp r1, r0
	bgt _080AC504
	ldr r0, _080AC518 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_080AC504:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC510: .4byte strCredits_CreatedBy
_080AC514: .4byte 0x00002CFF
_080AC518: .4byte gCurTask

	thumb_func_start Task_294_80AC51C
Task_294_80AC51C: @ 0x080AC51C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _080AC5B4 @ =gCurTask
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r2, r0
	ldrb r0, [r5, #1]
	adds r1, r0, #0
	cmp r1, #0xe
	bhi _080AC5C0
	adds r0, #5
	strb r0, [r5, #1]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, r0
	bhs _080AC606
	ldr r7, _080AC5B8 @ =gUnknown_080DB950
	movs r0, #0
	mov sl, r0
	movs r6, #0
	ldr r1, _080AC5BC @ =gUnknown_080DB958
	mov r8, r1
	movs r2, #1
	add r2, r8
	mov sb, r2
_080AC55A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r5, r0
	ldr r1, [r5, #8]
	str r1, [r0]
	ldr r1, [r5, #8]
	adds r1, #0x80
	str r1, [r5, #8]
	ldrh r1, [r7]
	strh r1, [r0, #0xc]
	ldrb r3, [r7, #2]
	adds r1, r4, r3
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	lsls r2, r4, #1
	mov r3, r8
	adds r1, r2, r3
	ldrb r1, [r1]
	adds r1, #0x38
	strh r1, [r0, #0x10]
	add r2, sb
	ldrb r1, [r2]
	adds r1, #0x84
	strh r1, [r0, #0x12]
	strh r6, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r1, sl
	strb r1, [r0, #0x1f]
	str r6, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r2, [r5, #1]
	cmp r4, r2
	blo _080AC55A
	b _080AC606
	.align 2, 0
_080AC5B4: .4byte gCurTask
_080AC5B8: .4byte gUnknown_080DB950
_080AC5BC: .4byte gUnknown_080DB958
_080AC5C0:
	ldr r3, _080AC614 @ =0x03000014
	adds r0, r2, r3
	ldr r1, [r5, #8]
	str r1, [r0]
	ldr r1, [r5, #8]
	movs r2, #0xb0
	lsls r2, r2, #3
	adds r1, r1, r2
	str r1, [r5, #8]
	movs r4, #0
	movs r2, #0
	ldr r1, _080AC618 @ =0x000005F1
	strh r1, [r0, #0xc]
	strb r4, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r1, [r5, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r4, [r0, #0x1f]
	str r2, [r0, #8]
	bl UpdateSpriteAnimation
	strb r4, [r5, #1]
	ldr r1, [r6]
	ldr r0, _080AC61C @ =sub_80AC620
	str r0, [r1, #8]
_080AC606:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AC614: .4byte 0x03000014
_080AC618: .4byte 0x000005F1
_080AC61C: .4byte sub_80AC620

	thumb_func_start sub_80AC620
sub_80AC620: @ 0x080AC620
	push {r4, lr}
	ldr r0, _080AC648 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ACBD4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC650
	ldr r0, _080AC64C @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC65C
	b _080AC6B4
	.align 2, 0
_080AC648: .4byte gCurTask
_080AC64C: .4byte gLoadedSaveGame
_080AC650:
	ldr r0, _080AC694 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC6B4
_080AC65C:
	ldr r0, _080AC698 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC6B4
	ldr r1, _080AC69C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC6A0 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC6A4 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC6A8 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC6AC @ =gVramGraphicsCopyCursor
	ldr r0, _080AC6B0 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC6CE
	.align 2, 0
_080AC694: .4byte gLoadedSaveGame
_080AC698: .4byte gInput
_080AC69C: .4byte 0x0000FFFF
_080AC6A0: .4byte gBackgroundsCopyQueueCursor
_080AC6A4: .4byte gBackgroundsCopyQueueIndex
_080AC6A8: .4byte gBgSpritesCount
_080AC6AC: .4byte gVramGraphicsCopyCursor
_080AC6B0: .4byte gVramGraphicsCopyQueueIndex
_080AC6B4:
	adds r0, r4, #0
	bl sub_80ACBA8
	cmp r0, #1
	bne _080AC6CE
	movs r0, #0x80
	lsls r0, r0, #2     @ VOICE__ANNOUNCER__CONGRATULATIONS
	bl m4aSongNumStart
	ldr r0, _080AC6D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC6D8 @ =sub_80AC6DC
	str r0, [r1, #8]
_080AC6CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC6D4: .4byte gCurTask
_080AC6D8: .4byte sub_80AC6DC

	thumb_func_start sub_80AC6DC
sub_80AC6DC: @ 0x080AC6DC
	push {r4, lr}
	ldr r0, _080AC724 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	bgt _080AC70A
	adds r0, r4, #0
	bl sub_80ACBD4
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080AC70A
	movs r0, #0x32
	strb r0, [r4, #2]
_080AC70A:
	adds r0, r4, #0
	bl sub_80ACBF0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC72C
	ldr r0, _080AC728 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC738
	b _080AC790
	.align 2, 0
_080AC724: .4byte gCurTask
_080AC728: .4byte gLoadedSaveGame
_080AC72C:
	ldr r0, _080AC770 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC790
_080AC738:
	ldr r0, _080AC774 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC790
	ldr r1, _080AC778 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC77C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC780 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC784 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC788 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC78C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC7C2
	.align 2, 0
_080AC770: .4byte gLoadedSaveGame
_080AC774: .4byte gInput
_080AC778: .4byte 0x0000FFFF
_080AC77C: .4byte gBackgroundsCopyQueueCursor
_080AC780: .4byte gBackgroundsCopyQueueIndex
_080AC784: .4byte gBgSpritesCount
_080AC788: .4byte gVramGraphicsCopyCursor
_080AC78C: .4byte gVramGraphicsCopyQueueIndex
_080AC790:
	ldrb r1, [r4, #1]
	cmp r1, #0x12
	bhi _080AC7BA
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	bne _080AC7C2
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r1, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _080AC7C2
	movs r0, #0x13
	strb r0, [r4, #1]
	b _080AC7C2
_080AC7BA:
	ldr r0, _080AC7C8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC7CC @ =sub_80AC7D0
	str r0, [r1, #8]
_080AC7C2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AC7C8: .4byte gCurTask
_080AC7CC: .4byte sub_80AC7D0

	thumb_func_start sub_80AC7D0
sub_80AC7D0: @ 0x080AC7D0
	push {r4, lr}
	ldr r0, _080AC7F8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_80ACBF0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC800
	ldr r0, _080AC7FC @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC80C
	b _080AC864
	.align 2, 0
_080AC7F8: .4byte gCurTask
_080AC7FC: .4byte gLoadedSaveGame
_080AC800:
	ldr r0, _080AC844 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC864
_080AC80C:
	ldr r0, _080AC848 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC864
	ldr r1, _080AC84C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC850 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC854 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC858 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC85C @ =gVramGraphicsCopyCursor
	ldr r0, _080AC860 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC8E8
	.align 2, 0
_080AC844: .4byte gLoadedSaveGame
_080AC848: .4byte gInput
_080AC84C: .4byte 0x0000FFFF
_080AC850: .4byte gBackgroundsCopyQueueCursor
_080AC854: .4byte gBackgroundsCopyQueueIndex
_080AC858: .4byte gBgSpritesCount
_080AC85C: .4byte gVramGraphicsCopyCursor
_080AC860: .4byte gVramGraphicsCopyQueueIndex
_080AC864:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _080AC8C8
	ldr r2, _080AC8B0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080AC8B4 @ =gWinRegs
	movs r0, #0xf0
	strh r0, [r2]
	movs r0, #0xa0
	strh r0, [r2, #4]
	ldrh r0, [r2, #8]
	movs r1, #0x3f
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2, #0xa]
	ldr r1, _080AC8B8 @ =gBldRegs
	ldr r0, _080AC8BC @ =0x00003FFF
	strh r0, [r1]
	movs r0, #0
	strh r0, [r4, #6]
	ldr r0, _080AC8C0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080AC8C4 @ =sub_80AC8F0
	str r0, [r1, #8]
	b _080AC8E8
	.align 2, 0
_080AC8B0: .4byte gDispCnt
_080AC8B4: .4byte gWinRegs
_080AC8B8: .4byte gBldRegs
_080AC8BC: .4byte 0x00003FFF
_080AC8C0: .4byte gCurTask
_080AC8C4: .4byte sub_80AC8F0
_080AC8C8:
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	bgt _080AC8E8
	adds r0, r4, #0
	bl sub_80ACBD4
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080AC8E8
	movs r0, #0x32
	strb r0, [r4, #2]
_080AC8E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80AC8F0
sub_80AC8F0: @ 0x080AC8F0
	push {r4, lr}
	ldr r0, _080AC914 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080AC91C
	ldr r0, _080AC918 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080AC928
	b _080AC980
	.align 2, 0
_080AC914: .4byte gCurTask
_080AC918: .4byte gLoadedSaveGame
_080AC91C:
	ldr r0, _080AC960 @ =gLoadedSaveGame
	ldrh r1, [r0, #0x34]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080AC980
_080AC928:
	ldr r0, _080AC964 @ =gInput
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080AC980
	ldr r1, _080AC968 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080AC96C @ =gBackgroundsCopyQueueCursor
	ldr r0, _080AC970 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080AC974 @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080AC978 @ =gVramGraphicsCopyCursor
	ldr r0, _080AC97C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80AA554
	b _080AC9DC
	.align 2, 0
_080AC960: .4byte gLoadedSaveGame
_080AC964: .4byte gInput
_080AC968: .4byte 0x0000FFFF
_080AC96C: .4byte gBackgroundsCopyQueueCursor
_080AC970: .4byte gBackgroundsCopyQueueIndex
_080AC974: .4byte gBgSpritesCount
_080AC978: .4byte gVramGraphicsCopyCursor
_080AC97C: .4byte gVramGraphicsCopyQueueIndex
_080AC980:
	ldr r1, _080AC99C @ =gBldRegs
	ldrh r0, [r1, #4]
	cmp r0, #0xf
	bls _080AC9A4
	movs r0, #0x10
	strh r0, [r1, #4]
	ldrb r0, [r4]
	bl sub_80AA554
	ldr r0, _080AC9A0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080AC9DC
	.align 2, 0
_080AC99C: .4byte gBldRegs
_080AC9A0: .4byte gCurTask
_080AC9A4:
	ldrh r0, [r4, #6]
	lsrs r0, r0, #8
	strh r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	strh r0, [r4, #6]
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x1d
	bgt _080AC9D6
	adds r0, r4, #0
	bl sub_80ACBD4
	movs r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _080AC9D6
	movs r0, #0x32
	strb r0, [r4, #2]
_080AC9D6:
	adds r0, r4, #0
	bl sub_80ACBF0
_080AC9DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_62C_80AC9E4
TaskDestructor_62C_80AC9E4: @ 0x080AC9E4
	bx lr
	.align 2, 0

	thumb_func_start sub_80AC9E8
sub_80AC9E8: @ 0x080AC9E8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ACA6C @ =Task_130_80AC398
	movs r1, #0x98
	lsls r1, r1, #1
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080ACA70 @ =TaskDestructor_130_80ACB48
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r3, r1
	ldr r2, _080ACA74 @ =0x0300012C
	adds r0, r3, r2
	str r5, [r0]
	movs r5, #0
	strb r4, [r1]
	str r6, [r1, #4]
	mov r0, r8
	str r0, [r1, #8]
	ldr r4, _080ACA78 @ =strCredits_CreatedBy
	ldrb r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0, #0x22]
	str r0, [r1, #0xc]
	str r5, [r1, #0x10]
	movs r2, #0
	ldr r0, _080ACA7C @ =0x03000014
	adds r4, r3, r0
	movs r6, #0
	adds r0, #4
	adds r3, r3, r0
	movs r5, #0x82
	lsls r5, r5, #8
_080ACA4A:
	lsls r1, r2, #3
	adds r0, r4, r1
	str r6, [r0]
	adds r1, r3, r1
	str r5, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x22
	bls _080ACA4A
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080ACA6C: .4byte Task_130_80AC398
_080ACA70: .4byte TaskDestructor_130_80ACB48
_080ACA74: .4byte 0x0300012C
_080ACA78: .4byte strCredits_CreatedBy
_080ACA7C: .4byte 0x03000014

	thumb_func_start sub_80ACA80
sub_80ACA80: @ 0x080ACA80
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	mov r8, r2
	adds r6, r3, #0
	ldr r7, [sp, #0x1c]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ACAE4 @ =Task_18_80ACB50
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _080ACAE8 @ =TaskDestructor_18_80ACB4C
	str r1, [sp]
	movs r1, #0x18
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	strb r4, [r1, #1]
	strb r5, [r1]
	str r6, [r1, #4]
	str r7, [r1, #8]
	ldr r3, _080ACAEC @ =strCredits_CreatedBy
	ldrb r2, [r1]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #8
	str r0, [r1, #0xc]
	movs r0, #0x82
	lsls r0, r0, #8
	str r0, [r1, #0x10]
	mov r0, r8
	str r0, [r1, #0x14]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACAE4: .4byte Task_18_80ACB50
_080ACAE8: .4byte TaskDestructor_18_80ACB4C
_080ACAEC: .4byte strCredits_CreatedBy

	thumb_func_start sub_80ACAF0
sub_80ACAF0: @ 0x080ACAF0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _080ACB3C @ =Task_294_80AC51C
	movs r1, #0xa5
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _080ACB40 @ =TaskDestructor_294_80ACBA4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	strb r4, [r0]
	strb r2, [r0, #1]
	strh r2, [r0, #4]
	movs r1, #0x1e
	strb r1, [r0, #2]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r0, #0xc]
	movs r1, #0x8c
	lsls r1, r1, #8
	str r1, [r0, #0x10]
	strh r2, [r0, #6]
	ldr r1, _080ACB44 @ =0x06010000
	str r1, [r0, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080ACB3C: .4byte Task_294_80AC51C
_080ACB40: .4byte TaskDestructor_294_80ACBA4
_080ACB44: .4byte 0x06010000

	thumb_func_start TaskDestructor_130_80ACB48
TaskDestructor_130_80ACB48: @ 0x080ACB48
	bx lr
	.align 2, 0

	thumb_func_start TaskDestructor_18_80ACB4C
TaskDestructor_18_80ACB4C: @ 0x080ACB4C
	bx lr
	.align 2, 0

	thumb_func_start Task_18_80ACB50
Task_18_80ACB50: @ 0x080ACB50
	push {r4, r5, lr}
	ldr r5, _080ACB98 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, _080ACB9C @ =gUnknown_080DB864
	ldrb r0, [r4, #1]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	strh r1, [r0, #0x12]
	bl DisplaySprite
	ldr r0, [r4, #0x10]
	subs r0, #0x80
	str r0, [r4, #0x10]
	ldr r1, _080ACBA0 @ =0x00001DFF
	cmp r0, r1
	bgt _080ACB92
	ldr r0, [r5]
	bl TaskDestroy
_080ACB92:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080ACB98: .4byte gCurTask
_080ACB9C: .4byte gUnknown_080DB864
_080ACBA0: .4byte 0x00001DFF
    
	thumb_func_start TaskDestructor_294_80ACBA4
TaskDestructor_294_80ACBA4: @ 0x080ACBA4
	bx lr
	.align 2, 0

	thumb_func_start sub_80ACBA8
sub_80ACBA8: @ 0x080ACBA8
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x10]
	movs r2, #0xa0
	lsls r2, r2, #5
	cmp r0, r2
	ble _080ACBC0
	ldr r3, _080ACBC8 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r1, #0x10]
	cmp r0, r2
	bgt _080ACBCC
_080ACBC0:
	str r2, [r1, #0x10]
	movs r0, #1
	b _080ACBCE
	.align 2, 0
_080ACBC8: .4byte 0xFFFFFE00
_080ACBCC:
	movs r0, #0
_080ACBCE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ACBD4
sub_80ACBD4: @ 0x080ACBD4
	push {lr}
	adds r2, r0, #0
	adds r2, #0x14
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	strh r1, [r2, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	bl DisplaySprite
	pop {r0}
	bx r0

	thumb_func_start sub_80ACBF0
sub_80ACBF0: @ 0x080ACBF0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	ldrb r0, [r5, #1]
	cmp r4, r0
	bhs _080ACC32
	ldr r6, _080ACC38 @ =gUnknown_080DB958
	adds r7, r6, #1
_080ACC00:
	ldr r0, _080ACC3C @ =gUnknown_080DB97E
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x3c
	adds r0, r5, r0
	lsls r2, r4, #1
	adds r1, r2, r6
	ldrb r1, [r1]
	adds r1, #0x38
	strh r1, [r0, #0x10]
	adds r2, r2, r7
	ldrb r1, [r2]
	adds r1, #0x84
	strh r1, [r0, #0x12]
	bl DisplaySprite
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, #1]
	cmp r4, r0
	blo _080ACC00
_080ACC32:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ACC38: .4byte gUnknown_080DB958
_080ACC3C: .4byte gUnknown_080DB97E
.endif
