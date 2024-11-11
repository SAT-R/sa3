.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_FerrisWheel
Task_FerrisWheel: @ 0x08046B1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08046B50 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08046B54 @ =0x03000034
	adds r0, r1, r0
	str r0, [sp, #8]
	ldr r2, _08046B58 @ =0x030000BC
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _08046B60
	ldr r3, _08046B5C @ =0x030000BE
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #6
	b _08046B68
	.align 2, 0
_08046B50: .4byte gCurTask
_08046B54: .4byte 0x03000034
_08046B58: .4byte 0x030000BC
_08046B5C: .4byte 0x030000BE
_08046B60:
	ldr r0, _08046BF0 @ =0x030000BE
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, #6
_08046B68:
	strh r0, [r1]
	mov r3, r8
	adds r3, #0xbe
	ldrh r0, [r3]
	ldr r2, _08046BF4 @ =0x000003FF
	adds r1, r2, #0
	ands r1, r0
	strh r1, [r3]
	ldrh r6, [r3]
	movs r1, #0
	ldr r7, _08046BF8 @ =gSineTable
	mov sb, r2
_08046B80:
	lsls r3, r1, #0x10
	asrs r3, r3, #0x10
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, #0x5c
	mov r1, r8
	adds r4, r1, r0
	lsls r0, r6, #1
	adds r0, r0, r7
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r2, r2, #0x18
	lsls r0, r2, #4
	adds r0, r0, r2
	asrs r0, r0, #4
	strh r0, [r4]
	asrs r1, r1, #0x18
	lsls r0, r1, #4
	adds r0, r0, r1
	asrs r0, r0, #4
	strh r0, [r4, #2]
	lsls r0, r2, #2
	adds r0, r0, r2
	asrs r0, r0, #2
	strh r0, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r1
	asrs r0, r0, #2
	strh r0, [r4, #6]
	adds r6, #0x80
	mov r2, sb
	ands r6, r2
	strh r6, [r4, #8]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r1, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #7
	ble _08046B80
	movs r1, #0
_08046BE0_loop:
	lsls r0, r1, #0x10
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _08046C00
	ldr r0, _08046BFC @ =gStageData
	ldrb r1, [r0, #6]
	b _08046C0A
	.align 2, 0
_08046BF0: .4byte 0x030000BE
_08046BF4: .4byte 0x000003FF
_08046BF8: .4byte gSineTable
_08046BFC: .4byte gStageData
_08046C00:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08046C0A:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08046C70 @ =gPlayers
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08046C30
	cmp r1, #8
	beq _08046C30
	cmp r1, #0x10
	beq _08046C30
	b _08046DEE
_08046C30:
	ldr r3, [sp, #0x14]
	asrs r4, r3, #0x10
	mov r0, r8
	adds r0, #0xc2
	adds r6, r0, r4
	ldrb r0, [r6]
	cmp r0, #0
	beq _08046C44
	subs r0, #1
	strb r0, [r6]
_08046C44:
	ldrb r0, [r6]
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08046C5C
	ldr r1, [r5]
	ldr r0, _08046C74 @ =Player_800D944
	cmp r1, r0
	bne _08046C7C
_08046C5C:
	mov r0, r8
	adds r0, #0xc0
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0]
	ldr r0, [r5, #4]
	ldr r1, _08046C78 @ =0xCFFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	b _08046DEE
	.align 2, 0
_08046C70: .4byte gPlayers
_08046C74: .4byte Player_800D944
_08046C78: .4byte 0xCFFFFFFF
_08046C7C:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	beq _08046C88
	b _08046DEE
_08046C88:
	ldr r1, [r5]
	ldr r0, _08046D0C @ =Player_8008A8C
	cmp r1, r0
	bne _08046C92
	b _08046DEE
_08046C92:
	ldr r0, _08046D10 @ =Player_800ED80
	cmp r1, r0
	bne _08046C9A
	b _08046DEE
_08046C9A:
	ldr r0, _08046D14 @ =sub_800E5CC
	cmp r1, r0
	bne _08046D76
	mov r0, r8
	adds r0, #0xc0
	adds r3, r0, r4
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08046D76
	ldr r0, _08046D18 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r2, [r0, #0x14]
	ands r2, r1
	cmp r2, #0
	beq _08046D24
	movs r0, #0x1e
	strb r0, [r6]
	movs r0, #0xff
	strb r0, [r3]
	movs r0, #0x74
	bl sub_8003DF0
	adds r0, r5, #0
	bl sub_800D880
	ldr r0, [r5, #4]
	ldr r1, _08046D1C @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	movs r4, #0
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r5, #0x1c]
	mov r0, r8
	adds r0, #0xbc
	ldrh r0, [r0]
	cmp r0, #0
	beq _08046CF4
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	rsbs r0, r0, #0
	strh r0, [r5, #0x1c]
_08046CF4:
	adds r0, r5, #0
	bl sub_801479C
	adds r0, r5, #0
	adds r0, #0x26
	strb r4, [r0]
	adds r0, r5, #0
	ldr r1, _08046D20 @ =Player_800DB30
	bl SetPlayerCallback
	b _08046DEE
	.align 2, 0
_08046D0C: .4byte Player_8008A8C
_08046D10: .4byte Player_800ED80
_08046D14: .4byte sub_800E5CC
_08046D18: .4byte gStageData
_08046D1C: .4byte 0xEFFFFFFF
_08046D20: .4byte Player_800DB30
_08046D24:
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x5c
	mov r3, r8
	adds r4, r3, r0
	ldr r1, _08046E14 @ =0x00000387
	adds r0, r1, #0
	ldrh r3, [r4, #8]
	adds r0, r0, r3
	rsbs r0, r0, #0
	ldr r3, _08046E18 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	movs r1, #0x8c
	strh r1, [r5, #0x30]
	lsrs r0, r0, #2
	adds r1, r5, #0
	adds r1, #0x26
	strb r0, [r1]
	mov r0, r8
	adds r0, #0xc4
	movs r3, #4
	ldrsh r1, [r4, r3]
	ldr r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	mov r0, r8
	adds r0, #0xc8
	movs r3, #6
	ldrsh r1, [r4, r3]
	ldr r0, [r0]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r5, #0x14]
	strh r2, [r5, #0x18]
	strh r2, [r5, #0x1a]
	strh r2, [r5, #0x1c]
_08046D76:
	movs r7, #0
	mov r0, r8
	adds r0, #0xc4
	str r0, [sp, #0x10]
	movs r1, #0xc8
	add r1, r8
	mov sl, r1
	ldr r2, [sp, #0x14]
	asrs r1, r2, #0x10
	subs r0, #4
	adds r0, r0, r1
	mov sb, r0
_08046D8E:
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x5c
	mov r3, r8
	adds r4, r3, r0
	movs r0, #4
	ldrsh r1, [r4, r0]
	ldr r3, [sp, #0x10]
	ldr r0, [r3]
	adds r6, r0, r1
	movs r0, #6
	ldrsh r1, [r4, r0]
	mov r3, sl
	ldr r0, [r3]
	adds r3, r0, r1
	ldr r1, [r5]
	ldr r0, _08046E1C @ =sub_800E5CC
	adds r4, r2, #0
	cmp r1, r0
	beq _08046DE0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _08046DE0
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	adds r1, r6, #0
	adds r2, r3, #0
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08046DE0
	adds r0, r5, #0
	bl sub_800BA78
	mov r1, sb
	strb r7, [r1]
_08046DE0:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r4, r2
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08046D8E
_08046DEE:
	ldr r3, [sp, #0x14]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08046E00
	b _08046BE0_loop
_08046E00:
	bl sub_8046EC0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08046E14: .4byte 0x00000387
_08046E18: .4byte 0x000003FF
_08046E1C: .4byte sub_800E5CC

.if 0
.endif
