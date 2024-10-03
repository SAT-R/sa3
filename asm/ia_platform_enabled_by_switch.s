.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8038618
sub_8038618: @ 0x08038618
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080386F0 @ =sub_803873C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080386F4 @ =sub_8038C28
	str r1, [sp]
	movs r1, #0x44
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, r8
	adds r7, r1, r0
	ldr r2, _080386F8 @ =0x0300000C
	add r2, r8
	str r2, [sp, #4]
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r3, sl
	str r3, [r7]
	ldrb r0, [r3]
	strb r0, [r7, #0xa]
	strb r6, [r7, #0xb]
	ldrb r1, [r3]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	str r1, [r7, #0x34]
	ldrb r2, [r3, #1]
	lsls r2, r2, #3
	lsls r5, r5, #8
	adds r2, r2, r5
	str r2, [r7, #0x38]
	mov r4, sb
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_804DC38
	strh r0, [r7, #0x3c]
	movs r0, #0
	strh r0, [r7, #0x3e]
	ldr r0, _080386FC @ =0x03000040
	add r0, r8
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08038700 @ =0x03000041
	add r8, r2
	mov r3, r8
	strb r4, [r3]
	movs r2, #0
	mov r4, sl
	ldrb r0, [r4, #7]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080386D2
	movs r3, #1
_080386B6:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #7
	bgt _080386D2
	mov r4, sl
	ldrb r0, [r4, #7]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _080386B6
_080386D2:
	adds r1, r7, #0
	adds r1, #0x42
	strb r2, [r1]
	ldr r0, _08038704 @ =gStageData
	adds r0, #0x2c
	ldrb r0, [r0]
	asrs r0, r2
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _08038708
	adds r0, r7, #0
	adds r0, #0x43
	strb r2, [r0]
	b _0803870E
	.align 2, 0
_080386F0: .4byte sub_803873C
_080386F4: .4byte sub_8038C28
_080386F8: .4byte 0x0300000C
_080386FC: .4byte 0x03000040
_08038700: .4byte 0x03000041
_08038704: .4byte gStageData
_08038708:
	adds r2, r7, #0
	adds r2, #0x43
	strb r0, [r2]
_0803870E:
	ldr r0, [r7, #0x34]
	ldr r2, [sp, #4]
	strh r0, [r2, #0x10]
	ldr r0, [r7, #0x38]
	strh r0, [r2, #0x12]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r4, sl
	strb r0, [r4]
	ldrb r0, [r1]
	ldr r1, [sp, #4]
	bl sub_8038910
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803873C
sub_803873C: @ 0x0803873C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08038808 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov ip, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	mov r1, ip
	adds r7, r1, r0
	movs r3, #0
	mov sl, r3
	adds r0, #0xc
	add r0, ip
	str r0, [sp, #4]
	ldr r5, [r7]
	ldr r0, _0803880C @ =0x03000043
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #1
	beq _08038770
	b _080388F8
_08038770:
	ldrb r3, [r7, #0xa]
	lsls r3, r3, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #8
	ldrb r2, [r5, #1]
	lsls r2, r2, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #8
	ldr r0, _08038810 @ =gStageData
	ldr r1, [r0, #0x1c]
	ldrh r0, [r7, #0x3c]
	lsrs r0, r0, #2
	adds r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #2
	strh r1, [r7, #0x3e]
	movs r0, #4
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	ldrb r4, [r5, #6]
	lsls r4, r4, #0xa
	movs r0, #3
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0xb
	adds r3, r3, r0
	ldrb r1, [r5, #5]
	lsls r1, r1, #0xa
	adds r3, r3, r1
	str r3, [sp, #8]
	adds r2, r2, r4
	ldr r3, [r7, #0x34]
	mov sb, r3
	ldr r0, [r7, #0x38]
	mov r8, r0
	ldr r5, _08038814 @ =gSineTable
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldr r1, [sp, #8]
	adds r3, r1, r0
	str r3, [r7, #0x34]
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	adds r2, r2, r0
	str r2, [r7, #0x38]
	mov r0, sb
	subs r0, r0, r3
	mov sb, r0
	mov r1, r8
	subs r1, r1, r2
	mov r8, r1
	movs r1, #0
	ldr r5, _08038818 @ =0x03000040
	add r5, ip
_080387FA:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0803881C
	ldr r0, _08038810 @ =gStageData
	ldrb r1, [r0, #6]
	b _08038826
	.align 2, 0
_08038808: .4byte gCurTask
_0803880C: .4byte 0x03000043
_08038810: .4byte gStageData
_08038814: .4byte gSineTable
_08038818: .4byte 0x03000040
_0803881C:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08038826:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803886C @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _080388A4
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08038870
	ldr r0, [r6, #0x6c]
	ldr r3, [sp, #4]
	cmp r0, r3
	bne _08038870
	ldr r0, [r6, #0x10]
	mov r1, sb
	subs r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x14]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r1, r8
	subs r0, r0, r1
	str r0, [r6, #0x14]
	movs r3, #1
	mov sl, r3
	b _0803887A
	.align 2, 0
_0803886C: .4byte gPlayers
_08038870:
	mov r0, sl
	cmp r0, #0
	bne _0803887A
	ldr r1, _080388CC @ =0x0000FFFF
	mov sl, r1
_0803887A:
	ldr r1, [r7, #0x34]
	asrs r1, r1, #8
	ldr r2, [r7, #0x38]
	asrs r2, r2, #8
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080388A4
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
_080388A4:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080387FA
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r1, r0, #0
	cmp r2, #0
	beq _080388E4
	cmp r2, #1
	bne _080388D0
	ldrb r0, [r5]
	cmp r0, #0xf
	bhi _080388D0
	adds r0, #1
	b _080388E2
	.align 2, 0
_080388CC: .4byte 0x0000FFFF
_080388D0:
	asrs r1, r1, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080388E4
	ldrb r0, [r5]
	cmp r0, #0
	beq _080388E4
	subs r0, #1
_080388E2:
	strb r0, [r5]
_080388E4:
	ldr r1, _0803890C @ =gSineTable
	ldrb r0, [r5]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x15
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
_080388F8:
	bl sub_8038988
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803890C: .4byte gSineTable

	thumb_func_start sub_8038910
sub_8038910: @ 0x08038910
	push {r4, r5, lr}
	sub sp, #0x2c
	adds r5, r1, #0
	ldr r1, _08038980 @ =gUnknown_080CF69C
	mov r0, sp
	movs r2, #0x2a
	bl memcpy
	ldr r2, _08038984 @ =gStageData
	ldrb r0, [r2, #0xa]
	movs r1, #0
	cmp r0, #9
	beq _0803892C
	ldrb r1, [r2, #9]
_0803892C:
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #1
	add r0, sp, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	bl VramMalloc
	str r0, [r5]
	mov r1, sp
	adds r0, r1, r4
	ldrh r0, [r0]
	movs r2, #0
	movs r1, #0
	strh r0, [r5, #0xc]
	mov r0, sp
	adds r0, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	strh r1, [r5, #0xe]
	strh r1, [r5, #0x16]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	strb r2, [r5, #0x1f]
	subs r0, #0x11
	str r0, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	add sp, #0x2c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08038980: .4byte gUnknown_080CF69C
_08038984: .4byte gStageData

	thumb_func_start sub_8038988
sub_8038988: @ 0x08038988
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08038A18 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	adds r0, #0xc
	adds r6, r5, r0
	ldr r1, [r7]
	mov r8, r1
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r7, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	mov r2, r8
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r2, [r7, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	ldr r2, [r7, #0x34]
	asrs r2, r2, #8
	mov ip, r2
	ldr r3, _08038A1C @ =gCamera
	mov sb, r3
	ldr r2, [r3]
	mov r3, ip
	subs r3, r3, r2
	movs r2, #0
	mov sl, r2
	strh r3, [r6, #0x10]
	ldr r2, [r7, #0x38]
	asrs r2, r2, #8
	mov r3, sb
	ldr r3, [r3, #4]
	subs r2, r2, r3
	strh r2, [r6, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0x10
	ldrsh r2, [r6, r3]
	str r2, [sp, #0xc]
	movs r3, #0x12
	ldrsh r2, [r6, r3]
	mov ip, r2
	ldr r2, [sp, #0xc]
	mov r3, ip
	bl sub_802C140
	cmp r0, #0
	bne _08038A68
	movs r1, #0
	ldr r2, _08038A20 @ =gPlayers
_08038A04:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _08038A24
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08038A28
	.align 2, 0
_08038A18: .4byte gCurTask
_08038A1C: .4byte gCamera
_08038A20: .4byte gPlayers
_08038A24:
	ldr r0, _08038A60 @ =gStageData
	ldrb r1, [r0, #6]
_08038A28:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r6, #0
	adds r1, r4, #0
	str r2, [sp, #8]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #8]
	cmp r0, #1
	ble _08038A04
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _08038A64 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08038BBE
	.align 2, 0
_08038A60: .4byte gStageData
_08038A64: .4byte gCurTask
_08038A68:
	ldr r3, _08038B04 @ =gStageData
	adds r0, r3, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	ldr r2, _08038B08 @ =0x03000042
	adds r1, r5, r2
	ldrb r2, [r1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08038B3E
	ldr r4, _08038B0C @ =0x03000043
	adds r4, r4, r5
	mov ip, r4
	ldrb r0, [r4]
	cmp r0, #0
	bne _08038B14
	strb r1, [r6, #0x1a]
	strb r1, [r4]
	ldr r1, [r3, #0x1c]
	ldrh r0, [r7, #0x3c]
	lsrs r0, r0, #2
	adds r1, r1, r0
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #2
	strh r1, [r7, #0x3e]
	mov r0, r8
	movs r3, #4
	ldrsb r3, [r0, r3]
	lsls r3, r3, #0xb
	ldr r1, [sp, #4]
	adds r3, r1, r3
	ldrb r4, [r0, #6]
	lsls r4, r4, #0xa
	movs r1, #3
	ldrsb r1, [r0, r1]
	lsls r1, r1, #0xb
	ldr r2, [sp]
	adds r1, r2, r1
	ldrb r2, [r0, #5]
	lsls r2, r2, #0xa
	adds r1, r1, r2
	adds r3, r3, r4
	mov r8, r3
	ldr r5, _08038B10 @ =gSineTable
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	adds r1, r1, r0
	str r1, [r7, #0x34]
	ldrh r0, [r7, #0x3e]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r4, r0
	asrs r0, r0, #0xe
	mov r4, r8
	adds r3, r4, r0
	str r3, [r7, #0x38]
	asrs r1, r1, #8
	mov r2, sb
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r0, [r7, #0x38]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	mov r7, ip
	b _08038B9C
	.align 2, 0
_08038B04: .4byte gStageData
_08038B08: .4byte 0x03000042
_08038B0C: .4byte 0x03000043
_08038B10: .4byte gSineTable
_08038B14:
	lsls r0, r2, #1
	adds r1, r3, #0
	adds r1, #0x2e
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0x77
	bhi _08038B30
	ldrb r0, [r6, #0x1a]
	mov r7, ip
	cmp r0, #2
	beq _08038B9C
	movs r0, #2
	strb r0, [r6, #0x1a]
	b _08038B9C
_08038B30:
	ldrb r0, [r6, #0x1a]
	mov r7, ip
	cmp r0, #2
	bne _08038B9C
	mov r3, sl
	strb r3, [r6, #0x1a]
	b _08038B9C
_08038B3E:
	ldr r1, _08038B60 @ =0x03000043
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #1
	bne _08038B9C
	mov r2, sl
	strb r2, [r7]
	movs r1, #0
	ldr r2, _08038B64 @ =gPlayers
_08038B52:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _08038B6C
	ldr r0, _08038B68 @ =gStageData
	ldrb r1, [r0, #6]
	b _08038B76
	.align 2, 0
_08038B60: .4byte 0x03000043
_08038B64: .4byte gPlayers
_08038B68: .4byte gStageData
_08038B6C:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08038B76:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	adds r0, r6, #0
	adds r1, r4, #0
	str r2, [sp, #8]
	bl sub_80213B0
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r5, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #8]
	cmp r0, #1
	ble _08038B52
_08038B9C:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08038BBE
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08038BB8
	ldrb r0, [r6, #0x1a]
	cmp r0, #1
	bne _08038BB8
	strb r1, [r6, #0x1a]
_08038BB8:
	adds r0, r6, #0
	bl DisplaySprite
_08038BBE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateEntity_Interactable067
CreateEntity_Interactable067: @ 0x08038BD0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8038618
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_Interactable068
CreateEntity_Interactable068: @ 0x08038BFC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_8038618
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8038C28
sub_8038C28: @ 0x08038C28
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
