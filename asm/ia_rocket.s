.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Rocket
CreateEntity_Rocket: @ 0x08045BF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x8c
	mov sl, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r1, _08045D8C @ =gUnknown_080D0328
	add r0, sp, #4
	movs r2, #8
	bl memcpy
	add r0, sp, #0xc
	mov sb, r0
	ldr r1, _08045D90 @ =gUnknown_080D0330
	movs r2, #0x80
	bl memcpy
	ldr r0, _08045D94 @ =sub_8045DE4
	movs r1, #0xc4
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08045D98 @ =sub_804646C
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r3, r0
	movs r1, #0
	mov r8, r1
	strh r4, [r7, #4]
	strh r5, [r7, #6]
	mov r0, sl
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #8]
	strb r6, [r7, #9]
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	lsls r4, r4, #8
	adds r0, r0, r4
	strh r0, [r7, #0x18]
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	lsls r5, r5, #8
	adds r0, r0, r5
	strh r0, [r7, #0x1a]
	movs r1, #0x18
	ldrsh r0, [r7, r1]
	lsls r0, r0, #8
	str r0, [r7, #0x10]
	movs r0, #0x1a
	ldrsh r2, [r7, r0]
	lsls r2, r2, #8
	str r2, [r7, #0x14]
	ldr r1, _08045D9C @ =0x030000E0
	adds r5, r3, r1
	ldr r0, _08045DA0 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r4, _08045DA4 @ =gPlayers
	adds r0, r0, r4
	str r0, [r5]
	ldr r1, _08045DA8 @ =0x030000E4
	adds r3, r3, r1
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
	str r0, [r3]
	mov r3, r8
	strb r3, [r7, #0xa]
	mov r1, sl
	movs r0, #4
	ldrsb r0, [r1, r0]
	lsls r0, r0, #0xb
	adds r2, r2, r0
	str r2, [r7, #0x1c]
	movs r4, #0
	movs r3, #0xe
	add r3, sp
	mov r8, r3
	add r6, sp, #0x10
	mov r5, sp
	adds r5, #0x12
_08045CD2:
	lsls r3, r4, #3
	adds r2, r7, #0
	adds r2, #0x60
	adds r2, r2, r3
	mov r1, sb
	adds r0, r1, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, r7, #0
	adds r2, #0x64
	adds r2, r2, r3
	mov r1, r8
	adds r0, r1, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r7, #0x1c]
	adds r0, r0, r1
	str r0, [r2]
	lsls r1, r4, #2
	adds r1, r7, r1
	adds r0, r6, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1, #0x20]
	adds r3, r5, r3
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1, #0x22]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xf
	bls _08045CD2
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r1, sl
	strb r0, [r1]
	add r0, sp, #4
	ldrb r0, [r0, #1]
	bl VramMalloc
	adds r5, r0, #0
	movs r4, #0
	movs r3, #0
	mov r8, r3
	movs r6, #0
_08045D3A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xe8
	adds r2, r7, r0
	str r5, [r2]
	ldr r0, _08045DAC @ =0x00000393
	strh r0, [r2, #0xc]
	lsls r1, r4, #1
	mov r0, sp
	adds r0, r0, r1
	adds r0, #4
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	cmp r4, #0
	bne _08045D66
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r3, #0
_08045D66:
	strh r0, [r2, #0x14]
	strh r6, [r2, #0xe]
	strh r6, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, r8
	strb r0, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	cmp r4, #0
	bne _08045DB0
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	b _08045DB2
	.align 2, 0
_08045D8C: .4byte gUnknown_080D0328
_08045D90: .4byte gUnknown_080D0330
_08045D94: .4byte sub_8045DE4
_08045D98: .4byte sub_804646C
_08045D9C: .4byte 0x030000E0
_08045DA0: .4byte gStageData
_08045DA4: .4byte gPlayers
_08045DA8: .4byte 0x030000E4
_08045DAC: .4byte 0x00000393
_08045DB0:
	str r6, [r2, #8]
_08045DB2:
	cmp r4, #0
	beq _08045DC4
	mov r0, sp
	adds r0, #5
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r5, r5, r0
	b _08045DCA
_08045DC4:
	adds r0, r2, #0
	bl UpdateSpriteAnimation
_08045DCA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08045D3A
	add sp, #0x8c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8045DE4
sub_8045DE4: @ 0x08045DE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08045F0C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6]
	str r0, [sp, #8]
	ldr r2, _08045F10 @ =0x030000E8
	adds r2, r2, r1
	mov r8, r2
	ldr r7, [r6, #0x18]
	movs r0, #0
	strb r0, [r6, #0xa]
	movs r5, #0
	ldr r3, _08045F14 @ =0x030000E0
	adds r3, r1, r3
	str r3, [sp, #0xc]
	lsls r0, r7, #0x10
	mov sl, r0
	asrs r0, r7, #0x10
	lsls r0, r0, #0x10
	mov sb, r0
_08045E1E:
	lsls r1, r5, #2
	adds r0, r6, #0
	adds r0, #0xe0
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r2, [r4, #4]
	ldr r3, _08045F18 @ =0x01000100
	ands r3, r2
	lsls r1, r7, #0x10
	str r1, [sp, #0x10]
	asrs r0, r7, #0x10
	str r0, [sp, #0x14]
	cmp r3, #0
	bne _08045E86
	ldr r1, [r4]
	ldr r0, _08045F1C @ =sub_801D73C
	cmp r1, r0
	beq _08045E86
	movs r0, #4
	ands r2, r0
	cmp r2, #0
	beq _08045E86
	str r4, [sp]
	str r3, [sp, #4]
	mov r0, r8
	mov r2, sl
	asrs r1, r2, #0x10
	mov r3, sb
	asrs r2, r3, #0x10
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08045E86
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_800BE60
	ldr r0, [r4, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #4]
	mov r0, r8
	str r0, [r4, #0x6c]
	lsls r1, r5, #1
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r6, #0xa]
	orrs r0, r1
	strb r0, [r6, #0xa]
_08045E86:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08045E1E
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _08045EA4
	ldr r0, _08045F20 @ =0x00000256
	bl sub_8003DF0
	ldr r0, _08045F0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08045F24 @ =sub_8045F48
	str r0, [r1, #8]
_08045EA4:
	ldr r1, [sp, #0x10]
	asrs r0, r1, #0x10
	ldr r1, [sp, #0x14]
	ldr r3, _08045F28 @ =gCamera
	ldr r2, [r3]
	subs r2, r0, r2
	ldr r3, [r3, #4]
	subs r3, r1, r3
	bl sub_802C140
	cmp r0, #0
	bne _08045F30
	movs r5, #0
	movs r7, #0
_08045EC0:
	lsls r0, r5, #2
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	ldr r4, [r0]
	ldrb r1, [r6, #0xa]
	lsls r0, r5, #1
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08045EEC
	adds r0, r4, #0
	bl Player_8009E8C
	ldr r0, [r4, #4]
	ldr r1, _08045F2C @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	strh r7, [r4, #0x18]
_08045EEC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08045EC0
	ldrb r0, [r6, #8]
	ldr r3, [sp, #8]
	strb r0, [r3]
	ldr r0, _08045F20 @ =0x00000256
	bl sub_8003E28
	ldr r0, _08045F0C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08045F36
	.align 2, 0
_08045F0C: .4byte gCurTask
_08045F10: .4byte 0x030000E8
_08045F14: .4byte 0x030000E0
_08045F18: .4byte 0x01000100
_08045F1C: .4byte sub_801D73C
_08045F20: .4byte 0x00000256
_08045F24: .4byte sub_8045F48
_08045F28: .4byte gCamera
_08045F2C: .4byte 0xEFFFFFFF
_08045F30:
	adds r0, r6, #0
	bl sub_8046438
_08045F36:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8045F48
sub_8045F48: @ 0x08045F48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08046028 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r2, _0804602C @ =0x030000E8
	adds r2, r1, r2
	str r2, [sp, #0xc]
	mov r4, r8
	ldr r5, [r4, #0x10]
	ldr r6, [r4, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldr r2, _08046030 @ =0xFFFFFA00
	adds r6, r6, r2
	str r5, [r4, #0x10]
	str r6, [r4, #0x14]
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r2, _08046034 @ =0x030000E0
	adds r2, r1, r2
	str r2, [sp, #0x1c]
_08045F88:
	ldr r4, [sp, #0x14]
	lsls r0, r4, #2
	mov r1, r8
	adds r1, #0xe0
	adds r1, r1, r0
	ldr r4, [r1]
	ldr r0, [r4, #4]
	ldr r1, _08046038 @ =0x01000100
	ands r0, r1
	ldr r2, [sp, #0x14]
	lsls r7, r2, #1
	cmp r0, #0
	beq _08045FB4
	movs r0, #1
	lsls r0, r7
	mov r2, r8
	ldrb r1, [r2, #0xa]
	bics r1, r0
	movs r0, #2
	lsls r0, r7
	orrs r1, r0
	strb r1, [r2, #0xa]
_08045FB4:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	movs r3, #3
	lsls r3, r7
	ands r3, r0
	cmp r3, #0
	bne _0804603C
	ldr r1, [r4, #4]
	adds r0, r1, #0
	ldr r2, _08046038 @ =0x01000100
	ands r0, r2
	asrs r2, r5, #8
	mov sl, r2
	asrs r2, r6, #8
	mov sb, r2
	cmp r0, #0
	beq _08045FD8
	b _08046160
_08045FD8:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08045FE2
	b _08046160
_08045FE2:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08045FEC
	b _08046160
_08045FEC:
	str r4, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, sl
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08046000
	b _08046160
_08046000:
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_800BE60
	ldr r0, [r4, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #4]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x6c]
	movs r0, #1
	lsls r0, r7
	mov r4, r8
	ldrb r1, [r4, #0xa]
	orrs r0, r1
	strb r0, [r4, #0xa]
	b _08046160
	.align 2, 0
_08046028: .4byte gCurTask
_0804602C: .4byte 0x030000E8
_08046030: .4byte 0xFFFFFA00
_08046034: .4byte 0x030000E0
_08046038: .4byte 0x01000100
_0804603C:
	movs r2, #1
	lsls r2, r7
	ands r0, r2
	asrs r1, r5, #8
	mov sl, r1
	asrs r1, r6, #8
	mov sb, r1
	cmp r3, r0
	beq _08046050
	b _08046160
_08046050:
	ldr r0, [r4, #0x14]
	ldr r1, _080460A8 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804606A
	ldr r0, [r4, #0x6c]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq _0804607A
_0804606A:
	mov r0, r8
	ldrb r1, [r0, #0xa]
	bics r1, r2
	movs r0, #2
	lsls r0, r7
	orrs r1, r0
	mov r2, r8
	strb r1, [r2, #0xa]
_0804607A:
	ldr r1, [r4]
	ldr r0, _080460AC @ =Player_800D944
	cmp r1, r0
	beq _08046088
	ldr r0, _080460B0 @ =sub_800EB58
	cmp r1, r0
	beq _080460B8
_08046088:
	ldr r0, [r4, #4]
	ldr r1, _080460B4 @ =0xEFFFFFDF
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #1
	lsls r0, r7
	mov r2, r8
	ldrb r1, [r2, #0xa]
	bics r1, r0
	movs r0, #2
	lsls r0, r7
	orrs r1, r0
	strb r1, [r2, #0xa]
	b _08046158
	.align 2, 0
_080460A8: .4byte 0xFFFFFA00
_080460AC: .4byte Player_800D944
_080460B0: .4byte sub_800EB58
_080460B4: .4byte 0xEFFFFFDF
_080460B8:
	ldr r0, _08046104 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08046128
	movs r0, #1
	lsls r0, r7
	mov r2, r8
	ldrb r1, [r2, #0xa]
	bics r1, r0
	movs r0, #2
	lsls r0, r7
	orrs r1, r0
	strb r1, [r2, #0xa]
	ldr r0, [r4, #4]
	ldr r1, _08046108 @ =0xEFFFFFD7
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
	strh r0, [r4, #0x1a]
	movs r1, #0
	strh r1, [r4, #0x18]
	ldr r0, [r4, #0xc]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08046110
	adds r0, r4, #0
	ldr r1, _0804610C @ =sub_8006250
	bl SetPlayerCallback
	asrs r2, r5, #8
	mov sl, r2
	asrs r4, r6, #8
	mov sb, r4
	b _08046160
	.align 2, 0
_08046104: .4byte gStageData
_08046108: .4byte 0xEFFFFFD7
_0804610C: .4byte sub_8006250
_08046110:
	adds r0, r4, #0
	ldr r1, _08046124 @ =sub_8006310
	bl SetPlayerCallback
	asrs r0, r5, #8
	mov sl, r0
	asrs r1, r6, #8
	mov sb, r1
	b _08046160
	.align 2, 0
_08046124: .4byte sub_8006310
_08046128:
	mov r2, r8
	ldr r0, [r2, #0x14]
	movs r1, #0x9c
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _0804614C
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r2, _08046148 @ =0xFFFFFC00
	b _08046154
	.align 2, 0
_08046148: .4byte 0xFFFFFC00
_0804614C:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
_08046154:
	adds r0, r0, r2
	str r0, [r4, #0x10]
_08046158:
	asrs r4, r5, #8
	mov sl, r4
	asrs r0, r6, #8
	mov sb, r0
_08046160:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #1
	bhi _08046170
	b _08045F88
_08046170:
	mov r1, r8
	ldr r0, [r1, #0x1c]
	ldr r2, [sp, #0x10]
	lsls r7, r2, #0x10
	asrs r4, r2, #0x10
	str r4, [sp, #0x18]
	cmp r6, r0
	bge _080461E8
	movs r0, #0
	str r0, [sp, #0x14]
	movs r5, #0
_08046186:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #2
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	ldr r4, [r0]
	mov r0, r8
	ldrb r1, [r0, #0xa]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #1
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080461C0
	adds r0, r4, #0
	bl Player_8009E8C
	ldr r1, [r4, #4]
	ldr r0, _08046268 @ =0xEFFFFFFF
	ands r1, r0
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	str r5, [r4, #0x6c]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	strh r5, [r4, #0x18]
_080461C0:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #1
	bls _08046186
	movs r0, #0x5a
	mov r4, r8
	strh r0, [r4, #0xc]
	ldr r0, _0804626C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08046270 @ =sub_8046298
	str r0, [r1, #8]
	ldr r0, _08046274 @ =0x00000256
	bl sub_8003E28
	ldr r0, _08046278 @ =0x00000299
	bl sub_8003DF0
_080461E8:
	asrs r0, r7, #0x10
	ldr r1, [sp, #0x18]
	ldr r3, _0804627C @ =gCamera
	ldr r2, [r3]
	mov r4, sl
	subs r2, r4, r2
	ldr r3, [r3, #4]
	mov r4, sb
	subs r3, r4, r3
	bl sub_802C140
	cmp r0, #0
	bne _08046280
	movs r0, #0
	str r0, [sp, #0x14]
	movs r5, #0
_08046208:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #2
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	ldr r4, [r0]
	mov r0, r8
	ldrb r1, [r0, #0xa]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #1
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08046242
	adds r0, r4, #0
	bl Player_8009E8C
	ldr r1, [r4, #4]
	ldr r0, _08046268 @ =0xEFFFFFFF
	ands r1, r0
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	str r5, [r4, #0x6c]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	strh r5, [r4, #0x18]
_08046242:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	cmp r0, #1
	bls _08046208
	mov r4, r8
	ldrb r0, [r4, #8]
	ldr r1, [sp, #8]
	strb r0, [r1]
	ldr r0, _0804626C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08046274 @ =0x00000256
	bl sub_8003E28
	b _08046286
	.align 2, 0
_08046268: .4byte 0xEFFFFFFF
_0804626C: .4byte gCurTask
_08046270: .4byte sub_8046298
_08046274: .4byte 0x00000256
_08046278: .4byte 0x00000299
_0804627C: .4byte gCamera
_08046280:
	mov r0, r8
	bl sub_8046438
_08046286:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8046298
sub_8046298: @ 0x08046298
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r7, _080462CC @ =gCurTask
	ldr r0, [r7]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r5, [r6]
	ldr r1, _080462D0 @ =gUnknown_080D03B0
	mov r0, sp
	movs r2, #0x10
	bl memcpy
	ldrh r0, [r6, #0xc]
	subs r0, #1
	strh r0, [r6, #0xc]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080462D4
	ldrb r0, [r6, #8]
	strb r0, [r5]
	ldr r0, [r7]
	bl TaskDestroy
	b _0804633C
	.align 2, 0
_080462CC: .4byte gCurTask
_080462D0: .4byte gUnknown_080D03B0
_080462D4:
	adds r0, r6, #0
	bl sub_8046358
	ldrh r1, [r6, #0xc]
	cmp r1, #0x1d
	bhi _080462E8
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0804633C
_080462E8:
	ldr r1, _08046344 @ =0x03000110
	adds r0, r4, r1
	bl UpdateSpriteAnimation
	ldr r1, _08046348 @ =0x03000138
	adds r0, r4, r1
	bl UpdateSpriteAnimation
	ldr r1, _0804634C @ =0x03000160
	adds r0, r4, r1
	bl UpdateSpriteAnimation
	movs r5, #0
	ldr r0, _08046350 @ =0x03000060
	adds r4, r4, r0
	ldr r7, _08046354 @ =gCamera
_08046308:
	mov r1, sp
	adds r0, r1, r5
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xe8
	adds r0, r6, r0
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, [r7]
	subs r1, r1, r2
	strh r1, [r0, #0x10]
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	ldr r2, [r7, #4]
	subs r1, r1, r2
	strh r1, [r0, #0x12]
	adds r4, #8
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _08046308
_0804633C:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046344: .4byte 0x03000110
_08046348: .4byte 0x03000138
_0804634C: .4byte 0x03000160
_08046350: .4byte 0x03000060
_08046354: .4byte gCamera

	thumb_func_start sub_8046358
sub_8046358: @ 0x08046358
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x60
	adds r4, r0, #0
	adds r4, #0x20
	ldrh r0, [r0, #0xc]
	cmp r0, #0x19
	bls _08046408
	subs r0, #0x1a
	ldr r3, _08046404 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	movs r1, #0x40
	subs r0, r1, r0
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	subs r0, r1, r0
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r1, r0, #1
	adds r1, r1, r0
	asrs r1, r1, #9
	movs r0, #0x60
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bgt _080463C6
	movs r1, #0xa
_080463C6:
	movs r2, #0
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
_080463CC:
	ldrh r0, [r4, #2]
	adds r0, #0x10
	strh r0, [r4, #2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	movs r1, #2
	ldrsh r0, [r4, r1]
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r1, r1, #5
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	adds r5, #8
	adds r4, #4
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _080463CC
	b _08046432
	.align 2, 0
_08046404: .4byte gSineTable
_08046408:
	movs r2, #0
_0804640A:
	ldrh r0, [r4, #2]
	adds r0, #0x20
	strh r0, [r4, #2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	adds r5, #8
	adds r4, #4
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bls _0804640A
_08046432:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8046438
sub_8046438: @ 0x08046438
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xe8
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	ldr r3, _08046468 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046468: .4byte gCamera

	thumb_func_start sub_804646C
sub_804646C: @ 0x0804646C
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08046480 @ =0x030000E8
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_08046480: .4byte 0x030000E8

	thumb_func_start sub_8046484
sub_8046484: @ 0x08046484
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0804655C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r2, _08046560 @ =0x0300000C
	adds r2, r2, r0
	mov r8, r2
	ldr r0, [r1, #0x64]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	str r6, [sp, #8]
	ldr r0, [r1, #0x68]
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov sb, r4
	bl sub_80467F0
	ldr r0, _08046564 @ =gStageData
	mov sl, r0
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _08046568 @ =gPlayers
	adds r5, r0, r2
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r7, r0, r2
	mov r1, sl
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08046574
	ldr r0, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	ands r0, r2
	cmp r0, #0
	bne _0804650E
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08046538
_0804650E:
	ldr r3, [r7, #4]
	mov r0, sb
	ands r3, r0
	cmp r3, #0
	bne _08046530
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	str r7, [sp]
	str r3, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08046538
_08046530:
	mov r1, sl
	ldrb r0, [r1, #4]
	cmp r0, #5
	bne _080465E0
_08046538:
	ldr r1, _0804656C @ =0x00000207
	adds r0, r5, #0
	bl Player_PlaySoundEffect
	adds r0, r5, #0
	bl sub_8016F28
	ldr r1, _08046564 @ =gStageData
	movs r0, #5
	strb r0, [r1, #4]
	ldr r1, _08046570 @ =sub_800613C
	adds r0, r5, #0
	bl SetPlayerCallback
	bl sub_80469AC
	b _080465E0
	.align 2, 0
_0804655C: .4byte gCurTask
_08046560: .4byte 0x0300000C
_08046564: .4byte gStageData
_08046568: .4byte gPlayers
_0804656C: .4byte 0x00000207
_08046570: .4byte sub_800613C
_08046574:
	ldr r3, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r3, r0
	cmp r3, #0
	bne _080465E0
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r0, sb
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	str r5, [sp]
	str r3, [sp, #4]
	mov r0, r8
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _080465E0
	ldr r1, _080465CC @ =0x00000207
	adds r0, r5, #0
	bl Player_PlaySoundEffect
	adds r0, r5, #0
	bl sub_8016F28
	movs r0, #5
	mov r1, sl
	strb r0, [r1, #4]
	ldrb r0, [r1, #3]
	cmp r0, #4
	beq _080465D4
	ldr r4, _080465D0 @ =sub_800613C
	adds r0, r5, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	adds r0, r7, #0
	adds r1, r4, #0
	bl SetPlayerCallback
	b _080465DC
	.align 2, 0
_080465CC: .4byte 0x00000207
_080465D0: .4byte sub_800613C
_080465D4:
	ldr r1, _080465F0 @ =Player_8005BD4
	adds r0, r5, #0
	bl SetPlayerCallback
_080465DC:
	bl sub_80469AC
_080465E0:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080465F0: .4byte Player_8005BD4

	thumb_func_start sub_80465F4
sub_80465F4: @ 0x080465F4
	push {r4, r5, r6, r7, lr}
	ldr r0, _08046630 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08046634 @ =0x0300000C
	adds r2, r0, r1
	adds r1, #0x54
	adds r3, r0, r1
	ldrh r0, [r3]
	adds r1, r0, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x77
	bgt _08046614
	b _08046710
_08046614:
	ldr r7, _08046638 @ =gStageData
	ldrb r0, [r7, #3]
	cmp r0, #4
	bne _08046680
	movs r5, #0
	ldr r6, _0804663C @ =gPlayers
_08046620:
	lsls r0, r5, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _08046640
	ldr r0, _08046638 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804664A
	.align 2, 0
_08046630: .4byte gCurTask
_08046634: .4byte 0x0300000C
_08046638: .4byte gStageData
_0804663C: .4byte gPlayers
_08046640:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804664A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	adds r0, r4, #0
	ldr r1, _08046678 @ =Player_8005E80
	bl SetPlayerCallback
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08046620
	ldr r0, _0804667C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08046754
	.align 2, 0
_08046678: .4byte Player_8005E80
_0804667C: .4byte gCurTask
_08046680:
	ldrb r1, [r7, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r2, _080466F4 @ =gPlayers
	adds r4, r0, r2
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r6, r0, #0x1c
	adds r4, #0x2b
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r5, r0, #0x1c
	bl sub_8003D2C
	ldr r1, _080466F8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080466FC @ =gUnknown_03003F94
	ldr r0, _08046700 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08046704 @ =gUnknown_03006840
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08046708 @ =gVramGraphicsCopyCursor
	ldr r0, _0804670C @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	ldrb r1, [r7, #6]
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bls _080466EA
	adds r0, r6, #0
	adds r6, r5, #0
	adds r5, r0, #0
_080466EA:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_8053128
	b _08046754
	.align 2, 0
_080466F4: .4byte gPlayers
_080466F8: .4byte 0x0000FFFF
_080466FC: .4byte gUnknown_03003F94
_08046700: .4byte gUnknown_03003D20
_08046704: .4byte gUnknown_03006840
_08046708: .4byte gVramGraphicsCopyCursor
_0804670C: .4byte gVramGraphicsCopyQueueIndex
_08046710:
	movs r5, #0
	movs r6, #0x10
	rsbs r6, r6, #0
	ldr r4, _0804675C @ =0x0000FFF0
_08046718:
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	ldrh r0, [r2, #0x12]
	subs r0, r0, r1
	strh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bge _0804672E
	strh r4, [r2, #0x12]
_0804672E:
	ldrb r1, [r2, #0x1c]
	cmp r1, #0x3f
	bhi _0804673E
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, r1, r0
	strb r0, [r2, #0x1c]
_0804673E:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r2, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08046718
	bl sub_80469E0
_08046754:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804675C: .4byte 0x0000FFF0

	thumb_func_start sub_8046760
sub_8046760: @ 0x08046760
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r6, #0
	movs r5, #0
	movs r0, #0xed
	lsls r0, r0, #2
	mov sl, r0
	mov r0, sl
	strh r0, [r4, #0xc]
	strb r6, [r4, #0x1a]
	movs r7, #0xc0
	lsls r7, r7, #3
	strh r7, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	mov sb, r0
	mov r0, sb
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r4, #0x28
	movs r0, #6
	bl VramMalloc
	str r0, [r4]
	mov r0, sl
	strh r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0x1a]
	strh r7, [r4, #0x14]
	strh r5, [r4, #0xe]
	strh r5, [r4, #0x16]
	subs r0, #9
	strb r0, [r4, #0x1b]
	mov r0, sb
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1f]
	mov r0, r8
	str r0, [r4, #0x20]
	movs r0, #0x82
	lsls r0, r0, #0xb
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80467F0
sub_80467F0: @ 0x080467F0
	push {r4, r5, r6, r7, lr}
	ldr r7, _0804681C @ =gCurTask
	ldr r0, [r7]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	adds r0, #0xc
	adds r4, r1, r0
	ldr r6, [r5]
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x68]
	bl IsPointInScreenRect
	cmp r0, #0
	bne _08046820
	ldrb r0, [r5, #0xa]
	strb r0, [r6]
	ldr r0, [r7]
	bl TaskDestroy
	b _0804685A
	.align 2, 0
_0804681C: .4byte gCurTask
_08046820:
	ldr r0, [r5, #0x64]
	ldr r2, _08046860 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [r5, #0x68]
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r5, #0
_08046838:
	strh r7, [r4, #0x10]
	strh r6, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08046838
_0804685A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046860: .4byte gCamera

	thumb_func_start sub_8046864
sub_8046864: @ 0x08046864
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, _080468D4 @ =sub_8046484
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _080468D8 @ =sub_80468E4
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	adds r7, r0, #0
	ldrh r1, [r7, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0xc
	adds r2, r1, r0
	str r4, [r3, #0x5c]
	adds r0, #0x54
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
	str r6, [r3, #0x64]
	str r5, [r3, #0x68]
	movs r1, #0
_0804689E:
	strh r6, [r2, #0x10]
	strh r5, [r2, #0x12]
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r2, #0x28
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804689E
	adds r0, r3, #0
	adds r0, #0xc
	bl sub_8046760
	ldr r0, _080468DC @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bne _080468C8
	ldr r0, _080468E0 @ =sub_8046900
	str r0, [r7, #8]
_080468C8:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080468D4: .4byte sub_8046484
_080468D8: .4byte sub_80468E4
_080468DC: .4byte gStageData
_080468E0: .4byte sub_8046900

	thumb_func_start sub_80468E4
sub_80468E4: @ 0x080468E4
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

	thumb_func_start sub_8046900
sub_8046900: @ 0x08046900
	push {r4, lr}
	ldr r4, _08046920 @ =gCurTask
	ldr r2, [r4]
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08046924
	adds r0, r2, #0
	bl TaskDestroy
	b _0804693C
	.align 2, 0
_08046920: .4byte gCurTask
_08046924:
	cmp r0, #2
	bne _08046938
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08046938
	ldr r1, [r4]
	ldr r0, _08046944 @ =sub_8046948
	str r0, [r1, #8]
_08046938:
	bl sub_80467F0
_0804693C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046944: .4byte sub_8046948

	thumb_func_start sub_8046948
sub_8046948: @ 0x08046948
	push {r4, r5, lr}
	ldr r5, _08046974 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804696A
	movs r0, #0
	strh r0, [r4, #8]
	ldr r1, [r5]
	ldr r0, _08046978 @ =sub_804697C
	str r0, [r1, #8]
_0804696A:
	bl sub_80467F0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08046974: .4byte gCurTask
_08046978: .4byte sub_804697C

	thumb_func_start sub_804697C
sub_804697C: @ 0x0804697C
	push {lr}
	ldr r0, _080469A4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r1, #8]
	adds r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0804699C
	ldr r0, _080469A8 @ =sub_8046484
	str r0, [r2, #8]
_0804699C:
	bl sub_80467F0
	pop {r0}
	bx r0
	.align 2, 0
_080469A4: .4byte gCurTask
_080469A8: .4byte sub_8046484

	thumb_func_start sub_80469AC
sub_80469AC: @ 0x080469AC
	ldr r3, _080469D0 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r0, _080469D4 @ =0x03000060
	adds r2, r1, r0
	movs r0, #0
	strh r0, [r2]
	ldr r0, _080469D8 @ =0x0300000C
	adds r1, r1, r0
	movs r0, #4
	strb r0, [r1, #0x1a]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	ldr r1, [r3]
	ldr r0, _080469DC @ =sub_80465F4
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_080469D0: .4byte gCurTask
_080469D4: .4byte 0x03000060
_080469D8: .4byte 0x0300000C
_080469DC: .4byte sub_80465F4

	thumb_func_start sub_80469E0
sub_80469E0: @ 0x080469E0
	push {r4, r5, lr}
	ldr r0, _08046A38 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _08046A3C @ =0x0300000C
	adds r4, r0, r1
	ldrh r2, [r4, #0x12]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08046A32
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _08046A32
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	bgt _08046A32
	movs r5, #0
_08046A14:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08046A14
_08046A32:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08046A38: .4byte gCurTask
_08046A3C: .4byte 0x0300000C
