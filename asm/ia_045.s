.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable045
CreateEntity_Interactable045: @ 0x08032B5C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
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
	ldr r0, _08032C0C @ =sub_8032C2C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _08032C10 @ =sub_8033280
	str r1, [sp]
	movs r1, #0x90
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r2, r3
	movs r0, #0
	mov r8, r0
	strh r4, [r3, #4]
	strh r5, [r3, #6]
	mov r1, sb
	str r1, [r3]
	ldrb r0, [r1]
	strb r0, [r3, #0xa]
	strb r6, [r3, #0xb]
	ldr r0, _08032C14 @ =0x0300008C
	adds r1, r2, r0
	movs r0, #0xf0
	lsls r0, r0, #7
	strh r0, [r1]
	ldr r1, _08032C18 @ =0x0300008E
	adds r0, r2, r1
	mov r1, r8
	strb r1, [r0]
	ldr r1, _08032C1C @ =0x0300008F
	adds r0, r2, r1
	mov r1, r8
	strb r1, [r0]
	ldr r0, _08032C20 @ =0x03000084
	adds r4, r2, r0
	ldrb r1, [r3, #0xa]
	lsls r1, r1, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4]
	ldr r1, _08032C24 @ =0x03000088
	adds r4, r2, r1
	mov r1, sb
	ldrb r0, [r1, #1]
	lsls r0, r0, #3
	ldrh r1, [r3, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	subs r0, #0x20
	str r0, [r4]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r1, sb
	strb r0, [r1]
	ldr r3, _08032C28 @ =0x0300000C
	adds r0, r2, r3
	adds r3, #0x28
	adds r1, r2, r3
	adds r3, #0x28
	adds r2, r2, r3
	bl sub_8033098
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08032C0C: .4byte sub_8032C2C
_08032C10: .4byte sub_8033280
_08032C14: .4byte 0x0300008C
_08032C18: .4byte 0x0300008E
_08032C1C: .4byte 0x0300008F
_08032C20: .4byte 0x03000084
_08032C24: .4byte 0x03000088
_08032C28: .4byte 0x0300000C

	thumb_func_start sub_8032C2C
sub_8032C2C: @ 0x08032C2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, _08032C7C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0
	ldr r3, _08032C80 @ =0x0300000C
	adds r3, r1, r3
	str r3, [sp, #8]
	ldr r0, _08032C84 @ =0x0300005C
	adds r0, r1, r0
	str r0, [sp, #0xc]
	movs r3, #0
	mov r8, r3
	ldr r0, _08032C88 @ =0x0300008E
	adds r0, r0, r1
	mov sb, r0
_08032C60:
	mov r1, sb
	add r1, r8
	movs r0, #0
	strb r0, [r1]
	mov r3, r8
	cmp r3, #0
	beq _08032C8C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08032C90
	.align 2, 0
_08032C7C: .4byte gCurTask
_08032C80: .4byte 0x0300000C
_08032C84: .4byte 0x0300005C
_08032C88: .4byte 0x0300008E
_08032C8C:
	ldr r0, _08032D4C @ =gStageData
	ldrb r1, [r0, #6]
_08032C90:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08032D50 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	adds r5, r0, #0
	cmp r5, #0
	bne _08032D16
	mov r7, sl
	adds r7, #0x84
	ldr r1, [r7]
	mov r6, sl
	adds r6, #0x88
	ldr r2, [r6]
	str r5, [sp]
	ldr r0, [sp, #8]
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08032CD6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08032CD6:
	ldr r1, [r7]
	ldr r2, [r6]
	adds r2, #0x78
	str r4, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0xc]
	movs r3, #0
	bl sub_8020700
	adds r5, r0, #0
	cmp r5, #1
	bne _08032D16
	adds r0, r4, #0
	bl sub_8016F28
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	ldr r1, _08032D54 @ =sub_800A168
	bl SetPlayerCallback
	mov r0, sb
	add r0, r8
	strb r5, [r0]
	movs r0, #1
	str r0, [sp, #0x10]
_08032D16:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #1
	bls _08032C60
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _08032D38
	ldr r0, _08032D58 @ =0x00000247
	bl sub_8003DF0
	ldr r0, _08032D5C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032D60 @ =sub_8032D64
	str r0, [r1, #8]
_08032D38:
	bl sub_8033158
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032D4C: .4byte gStageData
_08032D50: .4byte gPlayers
_08032D54: .4byte sub_800A168
_08032D58: .4byte 0x00000247
_08032D5C: .4byte gCurTask
_08032D60: .4byte sub_8032D64

	thumb_func_start sub_8032D64
sub_8032D64: @ 0x08032D64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08032DF0 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov sl, r0
	ldr r0, _08032DF4 @ =0x0300000C
	adds r0, r5, r0
	str r0, [sp, #8]
	ldr r1, _08032DF8 @ =0x0300005C
	adds r1, r5, r1
	str r1, [sp, #0xc]
	ldr r3, _08032DFC @ =0x0300008C
	adds r6, r5, r3
	ldr r1, _08032E00 @ =0xFFFFFE00
	adds r0, r1, #0
	ldrh r3, [r6]
	adds r0, r0, r3
	strh r0, [r6]
	lsls r0, r0, #0x10
	ldr r1, _08032E04 @ =0x07FF0000
	cmp r0, r1
	bgt _08032DAC
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r6]
	ldr r0, _08032E08 @ =0x00000247
	bl sub_8003E28
_08032DAC:
	ldr r1, _08032E0C @ =0x03000084
	adds r0, r5, r1
	ldr r2, [r0]
	ldr r0, _08032E10 @ =0x03000088
	adds r3, r5, r0
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [sp, #0x10]
	movs r7, #0
	ldr r1, _08032E14 @ =0x0300008E
	adds r1, r1, r5
	mov r8, r1
	movs r5, #0
	mov sb, r5
	lsls r2, r2, #8
	movs r0, #0x80
	lsls r0, r0, #3
	adds r0, r2, r0
	str r0, [sp, #0x18]
	ldr r1, _08032E18 @ =0xFFFFFC00
	adds r1, r2, r1
	str r1, [sp, #0x1c]
	str r3, [sp, #0x14]
_08032DE0:
	cmp r7, #0
	beq _08032E1C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08032E20
	.align 2, 0
_08032DF0: .4byte gCurTask
_08032DF4: .4byte 0x0300000C
_08032DF8: .4byte 0x0300005C
_08032DFC: .4byte 0x0300008C
_08032E00: .4byte 0xFFFFFE00
_08032E04: .4byte 0x07FF0000
_08032E08: .4byte 0x00000247
_08032E0C: .4byte 0x03000084
_08032E10: .4byte 0x03000088
_08032E14: .4byte 0x0300008E
_08032E18: .4byte 0xFFFFFC00
_08032E1C:
	ldr r0, _08032E50 @ =gStageData
	ldrb r1, [r0, #6]
_08032E20:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08032E54 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _08032E58
	cmp r1, #8
	beq _08032E58
	cmp r1, #0x10
	beq _08032E58
	mov r3, r8
	adds r0, r3, r7
	mov r5, sb
	strb r5, [r0]
	b _08032F96
	.align 2, 0
_08032E50: .4byte gStageData
_08032E54: .4byte gPlayers
_08032E58:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r3, r0, #0
	cmp r3, #0
	bne _08032E8E
	mov r0, sl
	adds r0, #0x84
	ldr r1, [r0]
	ldr r0, [sp, #0x14]
	ldr r2, [r0]
	str r3, [sp]
	ldr r0, [sp, #8]
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08032E8E
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08032E8E:
	ldr r1, [r4, #4]
	ldr r0, _08032EE4 @ =0x01000100
	ands r0, r1
	cmp r0, #0
	beq _08032EA6
	ldr r0, _08032EE8 @ =0xEFFFFFFF
	ands r1, r0
	str r1, [r4, #4]
	mov r1, r8
	adds r0, r1, r7
	mov r3, sb
	strb r3, [r0]
_08032EA6:
	ldr r1, [r4]
	ldr r0, _08032EEC @ =Player_800D944
	cmp r1, r0
	bne _08032EBE
	ldr r0, [r4, #4]
	ldr r1, _08032EE8 @ =0xEFFFFFFF
	ands r0, r1
	str r0, [r4, #4]
	mov r5, r8
	adds r0, r5, r7
	mov r1, sb
	strb r1, [r0]
_08032EBE:
	mov r3, r8
	adds r6, r3, r7
	ldrb r0, [r6]
	cmp r0, #0
	beq _08032F3C
	movs r0, #0x7a
	strh r0, [r4, #0x30]
	mov r5, sb
	strh r5, [r4, #0x18]
	strh r5, [r4, #0x1a]
	ldr r1, [r4, #4]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _08032EF0
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x10]
	b _08032EF4
	.align 2, 0
_08032EE4: .4byte 0x01000100
_08032EE8: .4byte 0xEFFFFFFF
_08032EEC: .4byte Player_800D944
_08032EF0:
	ldr r1, [sp, #0x1c]
	str r1, [r4, #0x10]
_08032EF4:
	ldr r3, [sp, #0x10]
	lsls r0, r3, #8
	movs r5, #0xa0
	lsls r5, r5, #6
	adds r0, r0, r5
	str r0, [r4, #0x14]
	ldr r0, _08032F30 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08032F96
	ldr r0, _08032F34 @ =0xEFFFFFFF
	ands r0, r2
	str r0, [r4, #4]
	adds r0, r4, #0
	ldr r1, _08032F38 @ =sub_800A094
	bl SetPlayerCallback
	movs r0, #0xfb
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	mov r0, sb
	strh r0, [r4, #0x18]
	mov r1, r8
	adds r0, r1, r7
	mov r3, sb
	strb r3, [r0]
	b _08032F96
	.align 2, 0
_08032F30: .4byte gStageData
_08032F34: .4byte 0xEFFFFFFF
_08032F38: .4byte sub_800A094
_08032F3C:
	adds r0, r4, #0
	bl sub_802C0D4
	adds r3, r0, #0
	cmp r3, #0
	bne _08032F96
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	cmp r0, #0
	ble _08032F96
	mov r0, sl
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, #8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldr r5, [sp, #0x14]
	ldr r2, [r5]
	adds r2, r2, r0
	str r4, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0xc]
	movs r3, #0
	bl sub_8020700
	adds r5, r0, #0
	cmp r5, #1
	bne _08032F96
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r3, #5
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	strb r1, [r0]
	adds r0, r4, #0
	ldr r1, _08032FCC @ =sub_800A168
	bl SetPlayerCallback
	strb r5, [r6]
_08032F96:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #1
	bhi _08032FA2
	b _08032DE0
_08032FA2:
	mov r5, r8
	ldrh r0, [r5]
	cmp r0, #0
	bne _08032FB8
	ldr r0, _08032FD0 @ =0x00000247
	bl sub_8003E28
	ldr r0, _08032FD4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032FD8 @ =sub_8032FDC
	str r0, [r1, #8]
_08032FB8:
	bl sub_8033158
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032FCC: .4byte sub_800A168
_08032FD0: .4byte 0x00000247
_08032FD4: .4byte gCurTask
_08032FD8: .4byte sub_8032FDC

	thumb_func_start sub_8032FDC
sub_8032FDC: @ 0x08032FDC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _08033024 @ =gCurTask
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	adds r1, #0xc
	adds r7, r0, r1
	adds r1, #0x80
	adds r2, r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _08033028 @ =0x77FF0000
	cmp r0, r1
	ble _08033012
	movs r0, #0xf0
	lsls r0, r0, #7
	strh r0, [r2]
	ldr r0, _0803302C @ =sub_8032C2C
	str r0, [r3, #8]
_08033012:
	movs r5, #0
_08033014:
	cmp r5, #0
	beq _08033030
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _08033034
	.align 2, 0
_08033024: .4byte gCurTask
_08033028: .4byte 0x77FF0000
_0803302C: .4byte sub_8032C2C
_08033030:
	ldr r0, _08033090 @ =gStageData
	ldrb r1, [r0, #6]
_08033034:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08033094 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	adds r3, r0, #0
	cmp r3, #0
	bne _08033078
	adds r0, r6, #0
	adds r0, #0x84
	ldr r1, [r0]
	adds r0, #4
	ldr r2, [r0]
	str r3, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08033078
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
_08033078:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08033014
	bl sub_8033158
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033090: .4byte gStageData
_08033094: .4byte gPlayers

	thumb_func_start sub_8033098
sub_8033098: @ 0x08033098
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0xa
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	mov sl, r1
	movs r2, #0
	movs r1, #0xc0
	lsls r1, r1, #3
	mov ip, r1
	mov r1, ip
	strh r1, [r4, #0x14]
	movs r1, #0xdb
	lsls r1, r1, #2
	mov sb, r1
	mov r1, sb
	strh r1, [r4, #0xc]
	movs r1, #2
	strb r1, [r4, #0x1a]
	strh r2, [r4, #0x16]
	movs r1, #0xff
	strb r1, [r4, #0x1b]
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strb r1, [r4, #0x1c]
	mov r1, sl
	strb r1, [r4, #0x1f]
	strh r2, [r4, #0x10]
	strh r2, [r4, #0x12]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [r4, #8]
	adds r0, #0xc0
	str r0, [r5]
	movs r1, #0xc8
	lsls r1, r1, #3
	strh r1, [r5, #0x14]
	mov r1, sb
	strh r1, [r5, #0xc]
	movs r1, #1
	strb r1, [r5, #0x1a]
	strh r2, [r5, #0x16]
	subs r1, #2
	strb r1, [r5, #0x1b]
	mov r1, r8
	strb r1, [r5, #0x1c]
	mov r1, sl
	strb r1, [r5, #0x1f]
	strh r2, [r5, #0x10]
	strh r2, [r5, #0x12]
	str r3, [r5, #8]
	adds r0, #0x20
	str r0, [r6]
	mov r0, ip
	strh r0, [r6, #0x14]
	mov r1, sb
	strh r1, [r6, #0xc]
	mov r0, sl
	strb r0, [r6, #0x1a]
	strh r2, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	mov r1, r8
	strb r1, [r6, #0x1c]
	mov r0, sl
	strb r0, [r6, #0x1f]
	strh r2, [r6, #0x10]
	strh r2, [r6, #0x12]
	str r3, [r6, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8033158
sub_8033158: @ 0x08033158
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080331E0 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov r8, r0
	ldr r1, _080331E4 @ =0x0300000C
	adds r6, r2, r1
	ldr r7, [r0]
	mov sb, r7
	ldr r0, _080331E8 @ =0x03000084
	adds r4, r2, r0
	adds r1, #0x7c
	adds r0, r2, r1
	ldr r3, _080331EC @ =gCamera
	ldr r1, [r3, #4]
	movs r7, #0
	ldrsh r5, [r0, r7]
	subs r1, r5, r1
	ldr r7, _080331F0 @ =0x0300008C
	adds r0, r2, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, [r3]
	movs r1, #0
	ldrsh r4, [r4, r1]
	subs r0, r4, r0
	strh r0, [r6, #0x10]
	ldr r0, [r3, #4]
	subs r0, r5, r0
	strh r0, [r6, #0x12]
	ldr r0, _080331F4 @ =0x0300008E
	adds r2, r2, r0
	ldrh r0, [r2]
	cmp r0, #0
	bne _080331F8
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	ldrsh r2, [r6, r0]
	movs r0, #0x12
	ldrsh r3, [r6, r0]
	adds r0, r4, #0
	bl sub_802C140
	cmp r0, #0
	bne _080331F8
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sb
	strb r0, [r2]
	mov r7, sl
	ldr r0, [r7]
	bl TaskDestroy
	b _0803326A
	.align 2, 0
_080331E0: .4byte gCurTask
_080331E4: .4byte 0x0300000C
_080331E8: .4byte 0x03000084
_080331EC: .4byte gCamera
_080331F0: .4byte 0x0300008C
_080331F4: .4byte 0x0300008E
_080331F8:
	ldrh r0, [r6, #0x10]
	mov sb, r0
	ldrh r1, [r6, #0x12]
	mov sl, r1
	ldr r0, [r6, #8]
	movs r5, #0x80
	lsls r5, r5, #3
	orrs r0, r5
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #8]
	ldr r4, _08033278 @ =0xFFFFFBFF
	ands r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	mov r6, r8
	adds r6, #0x5c
	mov r2, sb
	strh r2, [r6, #0x10]
	strh r7, [r6, #0x12]
	ldr r0, [r6, #8]
	orrs r0, r5
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	ldr r0, [r6, #8]
	ands r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl DisplaySprite
	subs r6, #0x28
	lsls r1, r7, #0x10
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r1, r0
	ble _0803326A
	adds r4, r2, #0
_08033250:
	mov r0, sb
	strh r0, [r6, #0x10]
	strh r7, [r6, #0x12]
	adds r0, r6, #0
	bl DisplaySprite
	lsls r0, r7, #0x10
	ldr r1, _0803327C @ =0xFFF00000
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	bgt _08033250
_0803326A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033278: .4byte 0xFFFFFBFF
_0803327C: .4byte 0xFFF00000

	thumb_func_start sub_8033280
sub_8033280: @ 0x08033280
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
