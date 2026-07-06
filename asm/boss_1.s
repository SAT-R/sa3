.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

    @ Called on init of Boss 1
	thumb_func_start CreateBoss_8068B3C
CreateBoss_8068B3C: @ 0x08068B3C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _08068B88 @ =sub_806A728
	movs r1, #0xde
	lsls r1, r1, #1     @ 0x1BC
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08068B8C @ =TaskDestructor_Boss_806A7E4
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldr r2, _08068B90 @ =gStageData
	adds r0, r2, #0
	adds r0, #0x88
	mov r1, r8
	str r1, [r0]
	ldrh r1, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	lsls r4, r4, #8
	str r4, [r6]
	lsls r5, r5, #8
	str r5, [r6, #4]
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _08068B94
	movs r0, #8
	b _08068B96
	.align 2, 0
_08068B88: .4byte sub_806A728
_08068B8C: .4byte TaskDestructor_Boss_806A7E4
_08068B90: .4byte gStageData
_08068B94:
	movs r0, #6
_08068B96:
	strb r0, [r6, #0xc]
	str r7, [r6, #8]
	movs r1, #0
	strb r1, [r6, #0xd]
	movs r0, #0
	strh r1, [r6, #0x32]
	strb r0, [r6, #0xf]
	strh r1, [r6, #0x2c]
	strh r1, [r6, #0x2e]
	strb r0, [r6, #0x10]
	strb r0, [r6, #0x11]
	strb r0, [r6, #0x12]
	ldr r0, _08068C34 @ =gPlayers
	str r0, [r6, #0x50]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r6, #0x54]
	str r1, [r6, #0x48]
	str r1, [r6, #0x4c]
	movs r0, #0x9e
	bl VramMalloc
	str r0, [r6, #0x28]
	adds r0, r6, #0
	bl sub_8069460
	adds r0, r6, #0
	bl sub_80692E4
	adds r0, r6, #0
	bl sub_806940C
	movs r5, #0
	movs r0, #0x16
	adds r0, r0, r6
	mov ip, r0
	movs r1, #0x88
	lsls r1, r1, #1
	mov sb, r1
	adds r7, r6, #0
	adds r7, #0x14
_08068BEA:
	lsls r2, r5, #3
	add r2, sb
	adds r2, r6, r2
	lsls r3, r5, #2
	adds r4, r7, r3
	movs r1, #4
	ldrsb r1, [r2, r1]
	movs r0, #6
	ldrsb r0, [r2, r0]
	subs r0, r1, r0
	asrs r0, r0, #1
	subs r1, r1, r0
	strh r1, [r4]
	add r3, ip
	movs r1, #5
	ldrsb r1, [r2, r1]
	movs r0, #7
	ldrsb r0, [r2, r0]
	subs r0, r1, r0
	asrs r0, r0, #1
	subs r1, r1, r0
	strh r1, [r3]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08068BEA
	bl SetFixedRandomIfTimeAttackMode
	mov r0, r8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08068C34: .4byte gPlayers

	thumb_func_start sub_8068C38
sub_8068C38: @ 0x08068C38
	push {r4, r5, r6, lr}
	ldr r0, _08068CBC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xf0
	adds r6, r1, r0
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_8069814
	adds r0, r4, #0
	bl sub_8069360
	adds r0, r4, #0
	bl sub_806A894
	ldr r0, [r4, #0x50]
	bl sub_8068E5C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r4, #0x54]
	bl sub_8068E5C
	adds r0, r5, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r1, [r4, #0xd]
	movs r0, #0xd
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _08068C96
	subs r0, r1, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08068C96
	movs r0, #0x97
	lsls r0, r0, #3
	strh r0, [r6, #0xc]
	movs r0, #0
	strb r0, [r6, #0x1a]
_08068C96:
	cmp r5, #0
	beq _08068CA0
	adds r0, r4, #0
	bl sub_806A5DC
_08068CA0:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08068CDE
	ldr r1, _08068CC0 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08068CD0
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08068CC8
	ldr r0, _08068CBC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08068CC4 @ =sub_806A7A4
	b _08068CDC
	.align 2, 0
_08068CBC: .4byte gCurTask
_08068CC0: .4byte gStageData
_08068CC4: .4byte sub_806A7A4
_08068CC8:
	movs r0, #1
	movs r1, #0
	bl sub_8027674
_08068CD0:
	adds r0, r4, #0
	bl sub_806A818
	ldr r0, _08068CF8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08068CFC @ =sub_806A760
_08068CDC:
	str r0, [r1, #8]
_08068CDE:
	adds r0, r4, #0
	bl sub_8069578
	adds r0, r4, #0
	bl sub_806A854
	adds r0, r4, #0
	bl sub_806A898
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068CF8: .4byte gCurTask
_08068CFC: .4byte sub_806A760

	thumb_func_start sub_8068D00
sub_8068D00: @ 0x08068D00
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r0, _08068D20 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r6, r0
	ldr r0, [r4, #0x50]
	ldrh r5, [r4, #0x32]
	cmp r5, #0
	beq _08068D24
	cmp r5, #1
	beq _08068D74
	b _08068D88
	.align 2, 0
_08068D20: .4byte gCurTask
_08068D24:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _08068D30
	bl VramFree
	str r5, [r4, #0x48]
_08068D30:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _08068D3C
	bl VramFree
	str r5, [r4, #0x4c]
_08068D3C:
	ldr r0, [r4, #0x58]
	asrs r0, r0, #8
	str r0, [sp]
	ldr r0, [r4, #0x5c]
	asrs r0, r0, #8
	str r0, [sp, #4]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #3
	movs r1, #0xd4
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r1, _08068D6C @ =0x030000EC
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r0, #0xc
	str r0, [sp, #0xc]
	ldr r1, _08068D70 @ =sub_807A37C
	mov r0, sp
	bl sub_8078E34
	movs r0, #1
	b _08068D86
	.align 2, 0
_08068D6C: .4byte 0x030000EC
_08068D70: .4byte sub_807A37C
_08068D74:
	ldr r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r1, r0
	cmp r1, #0
	bne _08068D88
	ldr r0, [r4, #8]
	strb r1, [r0]
	movs r0, #0x64
_08068D86:
	strh r0, [r4, #0x32]
_08068D88:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8068D90
sub_8068D90: @ 0x08068D90
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r7, #0
	ldr r0, _08068E04 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	ldr r0, _08068E08 @ =0x03000138
	adds r6, r5, r0
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08068E40
	ldr r1, _08068E0C @ =0x030000E8
	adds r0, r5, r1
	ldr r1, [r0]
	asrs r1, r1, #8
	ldr r2, _08068E10 @ =0x030000EC
	adds r0, r5, r2
	ldr r2, [r0]
	asrs r2, r2, #8
	str r7, [sp]
	adds r0, r6, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08068DDE
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r7, #1
_08068DDE:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08068E40
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _08068E14
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08068E2E
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	b _08068E22
	.align 2, 0
_08068E04: .4byte gCurTask
_08068E08: .4byte 0x03000138
_08068E0C: .4byte 0x030000E8
_08068E10: .4byte 0x030000EC
_08068E14:
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08068E2E
	ldr r0, [r4, #0x10]
	ldr r1, _08068E58 @ =0xFFFFFF00
_08068E22:
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_08068E2E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x18]
_08068E40:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08068E4C
	movs r7, #1
_08068E4C:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08068E58: .4byte 0xFFFFFF00

	thumb_func_start sub_8068E5C
sub_8068E5C: @ 0x08068E5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	mov r0, sl
	adds r0, #0x24
	ldrb r3, [r0]
	rsbs r0, r3, #0
	add r1, sp, #4
	strb r0, [r1]
	mov r2, sp
	adds r2, #5
	movs r0, #0xf7
	strb r0, [r2]
	mov r0, sp
	adds r0, #6
	strb r3, [r0]
	adds r2, #2
	movs r0, #9
	strb r0, [r2]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, _08068EBC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r2, _08068EC0 @ =0x030000F0
	adds r2, r1, r2
	str r2, [sp, #0x1c]
	mov r0, sl
	bl sub_802C080
	cmp r0, #0
	beq _08068EC4
	movs r0, #0
	b _080692C8
	.align 2, 0
_08068EBC: .4byte gCurTask
_08068EC0: .4byte 0x030000F0
_08068EC4:
	ldr r0, [r6, #0x58]
	ldr r1, [r6, #0x5c]
	bl sub_8004D68
	ldr r2, _08069014 @ =gPlayers
	ldr r0, _08069018 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08068F0E
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r1, [r0]
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
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _08068F1C
_08068F0E:
	ldr r0, [sp, #0x1c]
	bl sub_807A1DC
	cmp r0, #1
	bne _08068F1C
	movs r3, #1
	str r3, [sp, #0xc]
_08068F1C:
	ldr r2, [sp, #0x1c]
	adds r2, #0x27
	movs r0, #0x14
	strb r0, [r2]
	mov r4, sl
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, _0806901C @ =gCamera
	ldr r0, [r0]
	subs r1, r1, r0
	mov r0, sp
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r3, r1, r4
	ldr r5, [sp, #0x1c]
	movs r7, #0x10
	ldrsh r1, [r5, r7]
	adds r0, r5, #0
	adds r0, #0x24
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r1, r1, r5
	mov r8, r2
	mov sb, r0
	cmp r3, r1
	bgt _08068F66
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r3, r0
	cmp r0, r1
	bge _08068F7A
	cmp r3, r1
	bge _08068F66
	b _080690B0
_08068F66:
	ldr r0, [sp, #0x1c]
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	bge _08068F7A
	b _080690B0
_08068F7A:
	mov r0, sl
	ldr r2, [r0, #0x14]
	asrs r1, r2, #8
	ldr r0, _0806901C @ =gCamera
	ldr r0, [r0, #4]
	subs r1, r1, r0
	mov r0, sp
	movs r4, #1
	ldrsb r4, [r0, r4]
	adds r1, r1, r4
	ldr r3, [sp, #0x1c]
	movs r5, #0x12
	ldrsh r0, [r3, r5]
	adds r3, #0x25
	movs r5, #0
	ldrsb r5, [r3, r5]
	adds r3, r0, r5
	cmp r1, r3
	bgt _08068FB6
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r3
	bge _08068FC4
	cmp r1, r3
	bge _08068FB6
	b _080690B0
_08068FB6:
	mov r7, r8
	movs r0, #0
	ldrsb r0, [r7, r0]
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	blt _080690B0
_08068FC4:
	mov r0, sl
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	ldr r0, [r6, #0x58]
	asrs r0, r0, #8
	subs r1, r1, r0
	asrs r0, r2, #8
	ldr r2, [r6, #0x5c]
	asrs r2, r2, #8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r6, #0x34]
	lsls r0, r0, #8
	movs r7, #0
	lsrs r5, r0, #0x10
	asrs r3, r0, #0x10
	ldr r4, _08069020 @ =0xFFFFFF00
	adds r2, r3, r4
	cmp r2, #0
	bge _08069028
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r3, r1
	bgt _08069036
	ldr r5, _08069024 @ =0x000003FF
	adds r0, r5, #0
	adds r5, r0, #0
	ands r5, r2
	cmp r5, r1
	bge _08069038
	b _08069036
	.align 2, 0
_08069014: .4byte gPlayers
_08069018: .4byte gStageData
_0806901C: .4byte gCamera
_08069020: .4byte 0xFFFFFF00
_08069024: .4byte 0x000003FF
_08069028:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r2, r1
	bge _08069038
	cmp r3, r1
	ble _08069038
_08069036:
	movs r7, #1
_08069038:
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r3, _08069058 @ =0x000003FF
	cmp r1, r3
	ble _0806905C
	asrs r0, r4, #0x10
	cmp r2, r0
	blt _0806906C
	ands r1, r3
	cmp r1, r0
	ble _08069068
	b _0806906C
	.align 2, 0
_08069058: .4byte 0x000003FF
_0806905C:
	asrs r0, r4, #0x10
	cmp r1, r0
	ble _08069068
	cmp r2, r0
	bge _08069068
	movs r7, #1
_08069068:
	cmp r7, #0
	beq _080690A6
_0806906C:
	mov r1, sl
	ldr r0, [r1, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080690B0
	mov r0, sl
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r1, [r0, #0x34]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0806909E
	movs r0, #0xd
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _08069098
	mov r0, sl
	bl sub_80044CC
_08069098:
	movs r2, #1
	str r2, [sp, #0xc]
	b _080690B0
_0806909E:
	mov r0, sl
	bl Player_8014550
	b _08069180
_080690A6:
	mov r0, sl
	bl Player_8014550
	movs r3, #1
	str r3, [sp, #0x10]
_080690B0:
	ldr r4, [sp, #0x10]
	cmp r4, #0
	bne _08069180
	ldr r5, [sp, #0xc]
	cmp r5, #0
	bne _08069180
	mov r7, sl
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08069180
	mov r0, sl
	adds r0, #0xe0
	ldr r4, [r0]
	ldr r2, [r4, #0x34]
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r0, #0
	cmp r2, r1
	beq _08069180
	mov r1, sl
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r3, r0, r1
	ldr r0, [r6, #0x58]
	asrs r0, r0, #8
	mov r2, sb
	movs r5, #0
	ldrsb r5, [r2, r5]
	adds r2, r0, r5
	cmp r3, r2
	bgt _08069114
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r1
	adds r0, r3, r0
	cmp r0, r2
	bge _08069126
	cmp r3, r2
	blt _08069180
_08069114:
	ldr r0, [sp, #0x1c]
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r3
	blt _08069180
_08069126:
	mov r3, sl
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r3, [r7]
	adds r1, r3, #0
	adds r1, #0x39
	movs r4, #0
	ldrsb r4, [r1, r4]
	adds r2, r0, r4
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #8
	ldr r1, [sp, #0x1c]
	adds r1, #0x25
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r2, r1
	bgt _08069160
	adds r0, r3, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r4
	adds r0, r2, r0
	cmp r0, r1
	bge _0806916E
	cmp r2, r1
	blt _08069180
_08069160:
	mov r4, r8
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r2
	blt _08069180
_0806916E:
	movs r0, #0xd
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0806917C
	mov r0, sl
	bl sub_80044CC
_0806917C:
	movs r5, #1
	str r5, [sp, #0xc]
_08069180:
	movs r0, #0
	mov r7, r8
	strb r0, [r7]
	ldr r0, [r6, #0x34]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, _080692D8 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldr r2, _080692DC @ =gSineTable
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r4, #0
	ldrsh r3, [r1, r4]
	str r3, [sp, #0x14]
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r7, [r0, r1]
	str r7, [sp, #0x18]
	movs r2, #1
	str r2, [sp, #8]
	adds r3, r6, #0
	adds r3, #0x14
	str r3, [sp, #0x20]
	adds r6, #0x16
	str r6, [sp, #0x24]
	mov r8, sp
_080691C4:
	ldr r5, [sp, #8]
	lsls r4, r5, #2
	ldr r6, [sp, #0x20]
	adds r0, r6, r4
	movs r7, #0
	ldrsh r3, [r0, r7]
	ldr r0, [sp, #0x18]
	adds r2, r0, #0
	muls r2, r3, r2
	ldr r5, [sp, #0x14]
	adds r1, r5, #0
	muls r1, r3, r1
	mov ip, r1
	ldr r6, [sp, #0x24]
	adds r0, r6, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r0, r5, #0
	muls r0, r1, r0
	subs r2, r2, r0
	ldr r5, [sp, #0x18]
	adds r0, r5, #0
	muls r0, r1, r0
	add ip, r0
	asrs r2, r2, #0xe
	mov r6, ip
	asrs r6, r6, #0xe
	mov ip, r6
	mov r7, sl
	ldr r1, [r7, #0x10]
	asrs r1, r1, #8
	ldr r0, _080692E0 @ =gCamera
	ldr r0, [r0]
	subs r1, r1, r0
	mov r0, r8
	movs r6, #0
	ldrsb r6, [r0, r6]
	adds r5, r1, r6
	ldr r7, [sp, #0x1c]
	movs r0, #0x10
	ldrsh r1, [r7, r0]
	adds r1, r1, r2
	subs r1, r1, r3
	ldr r3, [sp, #8]
	lsls r2, r3, #3
	adds r3, r7, r2
	adds r0, r3, #0
	adds r0, #0x24
	movs r7, #0
	ldrsb r7, [r0, r7]
	adds r1, r1, r7
	mov sb, r2
	cmp r5, r1
	bgt _08069242
	mov r2, r8
	movs r0, #2
	ldrsb r0, [r2, r0]
	subs r0, r0, r6
	adds r0, r5, r0
	cmp r0, r1
	bge _08069254
	cmp r5, r1
	blt _080692B6
_08069242:
	adds r0, r3, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r5
	blt _080692B6
_08069254:
	mov r3, sl
	ldr r1, [r3, #0x14]
	asrs r1, r1, #8
	ldr r5, _080692E0 @ =gCamera
	ldr r0, [r5, #4]
	subs r1, r1, r0
	mov r6, r8
	movs r5, #1
	ldrsb r5, [r6, r5]
	adds r2, r1, r5
	ldr r7, [sp, #0x1c]
	movs r0, #0x12
	ldrsh r1, [r7, r0]
	add r1, ip
	ldr r3, [sp, #0x24]
	adds r0, r3, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r1, r1, r0
	adds r4, r7, #0
	add r4, sb
	adds r3, r4, #0
	adds r3, #0x25
	ldrb r3, [r3]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r1, r1, r3
	cmp r2, r1
	bgt _0806929E
	movs r0, #3
	ldrsb r0, [r6, r0]
	subs r0, r0, r5
	adds r0, r2, r0
	cmp r0, r1
	bge _080692B0
	cmp r2, r1
	blt _080692B6
_0806929E:
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _080692B6
_080692B0:
	mov r0, sl
	bl Player_8014550
_080692B6:
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	bhi _080692C6
	b _080691C4
_080692C6:
	ldr r0, [sp, #0xc]
_080692C8:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080692D8: .4byte 0x000003FF
_080692DC: .4byte gSineTable
_080692E0: .4byte gCamera

	thumb_func_start sub_80692E4
sub_80692E4: @ 0x080692E4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r5, r7, #0
	adds r5, #0xe8
	ldr r0, [r7]
	str r0, [r5]
	adds r6, r7, #0
	adds r6, #0xec
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r6]
	movs r0, #0x24
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08069358 @ =0x000004B5
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
	adds r0, #0x4b
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r2, _0806935C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4]
	str r0, [r7, #0x4c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069358: .4byte 0x000004B5
_0806935C: .4byte gCamera

	thumb_func_start sub_8069360
sub_8069360: @ 0x08069360
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r6, r4, r0
	ldr r5, [r4, #0x50]
	adds r0, r5, #0
	bl sub_8068D90
	adds r2, r0, #0
	strb r2, [r4, #0xf]
	ldr r1, [r4, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	bgt _08069392
	lsls r0, r2, #0x18
	cmp r0, #0
	beq _08069392
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _08069392
	adds r0, r5, #0
	bl Player_8014550
_08069392:
	ldr r0, [r5, #0x10]
	asrs r1, r0, #8
	ldr r0, _080693A0 @ =0x0000069F
	cmp r1, r0
	bgt _080693A4
	movs r3, #0
	b _080693C4
	.align 2, 0
_080693A0: .4byte 0x0000069F
_080693A4:
	ldr r0, _080693B0 @ =0x000006DF
	cmp r1, r0
	ble _080693B4
	movs r3, #8
	b _080693C4
	.align 2, 0
_080693B0: .4byte 0x000006DF
_080693B4:
	ldr r2, _08069404 @ =0xFFFFF960
	adds r0, r1, r2
	cmp r0, #0
	bge _080693BE
	adds r0, #7
_080693BE:
	asrs r0, r0, #3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080693C4:
	ldr r1, _08069408 @ =gUnknown_080D575C
	lsls r2, r3, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	strb r0, [r6, #0x1a]
	strb r3, [r4, #0x11]
	ldr r5, [r4, #0x54]
	adds r0, r5, #0
	bl sub_8068D90
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, [r4, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	bgt _080693FE
	cmp r2, #0
	beq _080693FE
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _080693FE
	adds r0, r5, #0
	bl Player_8014550
_080693FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08069404: .4byte 0xFFFFF960
_08069408: .4byte gUnknown_080D575C

	thumb_func_start sub_806940C
sub_806940C: @ 0x0806940C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, _08069458 @ =0x06004040
	str r1, [r0]
	movs r2, #0
	movs r4, #0
	ldr r1, _0806945C @ =0x000004B6
	strh r1, [r0, #0xc]
	strb r2, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0x16]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #9
	str r1, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x20]
	movs r1, #0x40
	strh r1, [r0, #0x10]
	movs r1, #0x68
	strh r1, [r0, #0x12]
	bl UpdateSpriteAnimation_BG
	strh r4, [r5, #0x30]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069458: .4byte 0x06004040
_0806945C: .4byte 0x000004B6

	thumb_func_start sub_8069460
sub_8069460: @ 0x08069460
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	mov r7, sl
	adds r7, #0xf0
	movs r6, #0xd8
	lsls r6, r6, #1
	add r6, sl
	mov r1, sl
	ldr r0, [r1]
	str r0, [r1, #0x58]
	ldr r0, [r1, #4]
	str r0, [r1, #0x5c]
	movs r0, #0x44
	bl VramMalloc
	adds r5, r0, #0
	mov r0, sl
	str r5, [r0, #0x48]
	str r5, [r7]
	movs r3, #0
	movs r4, #0
	movs r0, #0x97
	lsls r0, r0, #3
	strh r0, [r7, #0xc]
	strb r3, [r7, #0x1a]
	adds r0, #8
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r7, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	mov sb, r1
	ldr r0, _0806956C @ =0x0000107F
	str r0, [r7, #8]
	mov r1, sl
	ldr r0, [r1, #0x58]
	asrs r0, r0, #8
	ldr r2, _08069570 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, sl
	ldr r0, [r1, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	strh r4, [r6]
	ldrh r0, [r7, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	adds r0, r7, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl UpdateSpriteAnimation
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	movs r7, #0xc4
	lsls r7, r7, #1
	add r7, sl
	str r5, [r7]
	ldr r0, _08069574 @ =0x000004B7
	strh r0, [r7, #0xc]
	ldr r3, [sp, #4]
	strb r3, [r7, #0x1a]
	adds r0, #0x89
	strh r0, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	strb r1, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	mov r0, r8
	str r0, [r7, #0x20]
	mov r1, sb
	str r1, [r7, #8]
	mov r1, sl
	ldr r0, [r1, #0x58]
	asrs r0, r0, #8
	ldr r2, [sp]
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r1, sl
	ldr r0, [r1, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	movs r0, #0xc0
	lsls r0, r0, #0xa
	mov r1, sl
	str r0, [r1, #0x34]
	str r4, [r1, #0x38]
	movs r0, #0xe0
	lsls r0, r0, #6
	str r0, [r1, #0x3c]
	str r4, [r1, #0x40]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806956C: .4byte 0x0000107F
_08069570: .4byte gCamera
_08069574: .4byte 0x000004B7

	thumb_func_start sub_8069578
sub_8069578: @ 0x08069578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0xf0
	adds r0, r0, r5
	mov sb, r0
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, [r5, #0x34]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	ldr r3, _080695E4 @ =0x000003FF
	adds r2, r3, #0
	ands r0, r2
	strh r0, [r1]
	mov r2, sb
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #6]
	ldrh r0, [r2, #0x12]
	strh r0, [r1, #8]
	mov r0, sb
	bl TransformSprite
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r0, sb
	bl DisplaySprite
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r3, r3, r5
	mov sb, r3
	ldrb r0, [r5, #0x10]
	cmp r0, #0x64
	bne _080695D2
	b _08069780
_080695D2:
	cmp r0, #0x64
	ble _080695D8
	b _080697E8
_080695D8:
	cmp r0, #0
	beq _080695E8
	cmp r0, #0xa
	beq _080696A8
	b _080697E8
	.align 2, 0
_080695E4: .4byte 0x000003FF
_080695E8:
	ldr r0, [r5, #0x34]
	ldr r1, _08069690 @ =0xFFFD0000
	adds r1, r0, r1
	str r1, [sp]
	cmp r1, #0
	bge _080695F8
	ldr r2, _08069694 @ =0xFFFD0007
	adds r1, r0, r2
_080695F8:
	asrs r1, r1, #3
	str r1, [sp]
	movs r3, #0xc0
	lsls r3, r3, #0xa
	adds r0, r0, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r4, r0, #1
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	bge _08069610
	adds r0, #7
_08069610:
	asrs r0, r0, #3
	mov sl, r0
	ldr r0, [r5]
	mov r8, r0
	ldr r7, [r5, #4]
	movs r6, #0
	ldr r3, _08069698 @ =gSineTable
	ldr r5, _0806969C @ =gCamera
_08069620:
	ldr r1, [sp]
	adds r4, r4, r1
	ldr r0, _080696A0 @ =0x0003FFFF
	ands r4, r0
	asrs r2, r4, #8
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _08069646
	ldr r1, _080696A4 @ =0x00003FFF
	adds r0, r0, r1
_08069646:
	asrs r1, r0, #0xe
	lsls r0, r2, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	cmp r0, #0
	bge _0806965E
	ldr r2, _080696A4 @ =0x00003FFF
	adds r0, r0, r2
_0806965E:
	asrs r0, r0, #0xe
	add r8, r1
	adds r7, r7, r0
	mov r1, r8
	asrs r0, r1, #8
	ldr r1, [r5]
	subs r0, r0, r1
	mov r2, sb
	strh r0, [r2, #0x10]
	asrs r0, r7, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r2, #0x12]
	mov r0, sb
	str r3, [sp, #0x14]
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r3, [sp, #0x14]
	cmp r6, #6
	bls _08069620
	b _080697E8
	.align 2, 0
_08069690: .4byte 0xFFFD0000
_08069694: .4byte 0xFFFD0007
_08069698: .4byte gSineTable
_0806969C: .4byte gCamera
_080696A0: .4byte 0x0003FFFF
_080696A4: .4byte 0x00003FFF
_080696A8:
	ldr r0, [r5, #0x34]
	ldr r3, _080697F8 @ =0xFFFD0000
	adds r3, r0, r3
	str r3, [sp]
	adds r1, r3, #0
	cmp r1, #0
	bge _080696BA
	ldr r2, _080697FC @ =0xFFFD0007
	adds r1, r0, r2
_080696BA:
	asrs r1, r1, #3
	str r1, [sp]
	movs r3, #0xc0
	lsls r3, r3, #0xa
	adds r0, r0, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r4, r0, #1
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	bge _080696D2
	adds r0, #7
_080696D2:
	asrs r0, r0, #3
	mov sl, r0
	ldr r0, [r5]
	mov r8, r0
	ldr r7, [r5, #4]
	movs r6, #0
	adds r1, r5, #0
	adds r1, #0x68
	str r1, [sp, #0xc]
	adds r2, r5, #0
	adds r2, #0x6c
	str r2, [sp, #0x10]
	adds r3, r5, #0
	adds r3, #0xa8
	str r3, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xac
	str r0, [sp, #8]
	ldr r1, _08069800 @ =0x00003FFF
	mov ip, r1
_080696FA:
	ldr r2, [sp]
	adds r4, r4, r2
	ldr r0, _08069804 @ =0x0003FFFF
	ands r4, r0
	asrs r2, r4, #8
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r2, r3
	lsls r0, r0, #1
	ldr r1, _08069808 @ =gSineTable
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _08069720
	add r0, ip
_08069720:
	asrs r1, r0, #0xe
	lsls r0, r2, #1
	ldr r2, _08069808 @ =gSineTable
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	cmp r0, #0
	bge _08069738
	add r0, ip
_08069738:
	asrs r0, r0, #0xe
	add r8, r1
	adds r7, r7, r0
	lsls r1, r6, #3
	ldr r3, [sp, #0xc]
	adds r0, r3, r1
	mov r2, r8
	str r2, [r0]
	ldr r3, [sp, #0x10]
	adds r0, r3, r1
	str r7, [r0]
	ldr r0, [sp, #4]
	adds r3, r0, r1
	lsrs r0, r6, #1
	lsls r2, r0, #8
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	str r2, [r3]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0806976A
	rsbs r0, r2, #0
	str r0, [r3]
_0806976A:
	ldr r2, [sp, #8]
	adds r1, r2, r1
	ldr r0, _0806980C @ =0xFFFFFC00
	str r0, [r1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #6
	bls _080696FA
	movs r0, #0x64
	strb r0, [r5, #0x10]
_08069780:
	movs r6, #0
	adds r3, r5, #0
	adds r3, #0x68
	str r3, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x6c
	str r0, [sp, #0x10]
	adds r1, r5, #0
	adds r1, #0xa8
	str r1, [sp, #4]
	adds r5, #0xac
	str r5, [sp, #8]
	ldr r4, _08069810 @ =gCamera
_0806979A:
	lsls r2, r6, #3
	ldr r0, [sp, #0xc]
	adds r3, r0, r2
	ldr r0, [sp, #4]
	adds r1, r0, r2
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #8]
	adds r0, r1, r2
	ldr r1, [r0]
	adds r1, #0x20
	str r1, [r0]
	ldr r0, [sp, #0x10]
	adds r2, r0, r2
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r3]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	mov r1, sb
	strh r0, [r1, #0x10]
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	mov r2, sb
	strh r0, [r2, #0x12]
	mov r0, sb
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #6
	bls _0806979A
_080697E8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080697F8: .4byte 0xFFFD0000
_080697FC: .4byte 0xFFFD0007
_08069800: .4byte 0x00003FFF
_08069804: .4byte 0x0003FFFF
_08069808: .4byte gSineTable
_0806980C: .4byte 0xFFFFFC00
_08069810: .4byte gCamera

	thumb_func_start sub_8069814
sub_8069814: @ 0x08069814
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0xf0
	adds r0, r0, r4
	mov r8, r0
	ldr r5, [r4, #0x50]
	ldrh r3, [r4, #0x2c]
	cmp r3, #0x64
	bne _0806982E
	b _08069A80
_0806982E:
	cmp r3, #0x64
	bgt _0806987E
	cmp r3, #0x14
	bne _08069838
	b _080699D8
_08069838:
	cmp r3, #0x14
	bgt _08069858
	cmp r3, #0xa
	beq _08069934
	cmp r3, #0xa
	bgt _0806984A
	cmp r3, #0
	beq _080698E2
	b _08069D0A
_0806984A:
	cmp r3, #0xb
	bne _08069850
	b _0806994E
_08069850:
	cmp r3, #0x13
	bne _08069856
	b _0806997A
_08069856:
	b _08069D0A
_08069858:
	cmp r3, #0x32
	bne _0806985E
	b _08069A32
_0806985E:
	cmp r3, #0x32
	bgt _08069870
	cmp r3, #0x1e
	bne _08069868
	b _080699FE
_08069868:
	cmp r3, #0x28
	bne _0806986E
	b _08069A20
_0806986E:
	b _08069D0A
_08069870:
	cmp r3, #0x3c
	bne _08069876
	b _08069A54
_08069876:
	cmp r3, #0x5a
	bne _0806987C
	b _08069A66
_0806987C:
	b _08069D0A
_0806987E:
	movs r1, #0x96
	lsls r1, r1, #1
	cmp r3, r1
	bne _08069888
	b _08069BF4
_08069888:
	cmp r3, r1
	bgt _080698AC
	cmp r3, #0x78
	bne _08069892
	b _08069B58
_08069892:
	cmp r3, #0x78
	bgt _0806989E
	cmp r3, #0x6e
	bne _0806989C
	b _08069AB2
_0806989C:
	b _08069D0A
_0806989E:
	cmp r3, #0xc8
	bne _080698A4
	b _08069BB4
_080698A4:
	cmp r3, #0xd2
	bne _080698AA
	b _08069BDC
_080698AA:
	b _08069D0A
_080698AC:
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r3, r0
	bne _080698B6
	b _08069C96
_080698B6:
	cmp r3, r0
	bgt _080698CE
	movs r2, #0x9b
	lsls r2, r2, #1
	cmp r3, r2
	bne _080698C4
	b _08069C88
_080698C4:
	subs r0, #0xb4
	cmp r3, r0
	bne _080698CC
	b _08069C6C
_080698CC:
	b _08069D0A
_080698CE:
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r3, r0
	bne _080698D8
	b _08069CD4
_080698D8:
	adds r0, #0xa
	cmp r3, r0
	bne _080698E0
	b _08069CE6
_080698E0:
	b _08069D0A
_080698E2:
	ldr r2, _08069924 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	str r3, [sp, #4]
	ldr r2, _08069928 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _0806992C @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08069930 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #0xa
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #3
	beq _08069956
	bl sub_807A2AC
	b _08069D0A
	.align 2, 0
_08069924: .4byte gDispCnt
_08069928: .4byte 0x040000D4
_0806992C: .4byte gBgCntRegs
_08069930: .4byte 0x85000010
_08069934:
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #3
	beq _08069956
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806994A
	movs r0, #0xb
	b _08069D08
_0806994A:
	movs r0, #0x13
	b _08069D08
_0806994E:
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08069964
_08069956:
	ldr r0, _08069960 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08069DC6
	.align 2, 0
_08069960: .4byte gCurTask
_08069964:
	cmp r0, #2
	beq _0806996A
	b _08069D0A
_0806996A:
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08069976
	b _08069D0A
_08069976:
	movs r0, #0x13
	b _08069D08
_0806997A:
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #2
	beq _08069984
	b _08069D0A
_08069984:
	movs r2, #1
	movs r1, #0
	ldr r6, _080699D0 @ =gPlayers
	ldr r5, _080699D4 @ =0xFFFFF9EF
	movs r3, #0xbf
	lsls r3, r3, #1
_08069990:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	adds r0, r0, r5
	cmp r0, r3
	bls _080699AC
	movs r2, #0
_080699AC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08069990
	cmp r2, #0
	bne _080699BE
	b _08069D0A
_080699BE:
	movs r0, #0x3c
	strh r0, [r4, #0x2e]
	movs r0, #0x14
	strh r0, [r4, #0x2c]
	movs r0, #0x32
	bl sub_80299D4
	b _08069D0A
	.align 2, 0
_080699D0: .4byte gPlayers
_080699D4: .4byte 0xFFFFF9EF
_080699D8:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080699E6
	b _08069D0A
_080699E6:
	bl sub_807A4A8
	movs r0, #0x97
	lsls r0, r0, #3
	mov r1, r8
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0x3c
	strh r0, [r4, #0x2e]
	movs r0, #0x1e
	b _08069D08
_080699FE:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08069A0C
	b _08069D0A
_08069A0C:
	movs r0, #0x97
	lsls r0, r0, #3
	mov r2, r8
	strh r0, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
	movs r0, #0x3c
	strh r0, [r4, #0x2e]
	movs r0, #0x28
	b _08069D08
_08069A20:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08069A2E
	b _08069D0A
_08069A2E:
	movs r0, #0x32
	b _08069D08
_08069A32:
	ldr r0, [r4, #0x3c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r4, #0x3c]
	ldr r1, _08069A50 @ =0x00005FFF
	cmp r0, r1
	bgt _08069A44
	b _08069D0A
_08069A44:
	movs r0, #0xc0
	lsls r0, r0, #7
	str r0, [r4, #0x3c]
	movs r0, #0x3c
	strh r0, [r4, #0x2e]
	b _08069D08
	.align 2, 0
_08069A50: .4byte 0x00005FFF
_08069A54:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08069A62
	b _08069D0A
_08069A62:
	movs r0, #0x5a
	b _08069D08
_08069A66:
	ldr r0, _08069A78 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08069A7C @ =sub_8068C38
	str r0, [r1, #8]
	movs r0, #0
	strb r0, [r4, #0xe]
	strh r0, [r4, #0x30]
	movs r0, #1
	b _08069D04
	.align 2, 0
_08069A78: .4byte gCurTask
_08069A7C: .4byte sub_8068C38
_08069A80:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069A90
	b _08069D0A
_08069A90:
	movs r0, #0
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08069AAC
	movs r0, #1
	strb r0, [r4, #0x12]
	strh r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0x44]
	movs r0, #0xfa
	lsls r0, r0, #1
	b _08069D08
_08069AAC:
	strh r0, [r4, #0x30]
	movs r0, #0x6e
	b _08069D08
_08069AB2:
	ldr r1, _08069AD8 @ =gSineTable
	ldrh r0, [r4, #0x30]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08069AC4
	adds r0, #0x3f
_08069AC4:
	asrs r1, r0, #6
	str r1, [r4, #0x38]
	ldrb r0, [r4, #0xe]
	adds r3, r0, #0
	cmp r3, #0
	bne _08069ADC
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	b _08069AE0
	.align 2, 0
_08069AD8: .4byte gSineTable
_08069ADC:
	ldr r0, [r4, #0x34]
	subs r0, r0, r1
_08069AE0:
	ldr r1, _08069B20 @ =0x0003FFFF
	ands r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r4, #0x30]
	adds r0, #4
	movs r2, #0
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	ldr r1, _08069B24 @ =0x01FF0000
	cmp r0, r1
	bls _08069B00
	strh r2, [r4, #0x30]
	str r2, [r4, #0x38]
	str r2, [r4, #0x44]
	movs r0, #0x78
	strh r0, [r4, #0x2c]
_08069B00:
	ldrh r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08069B0C
	b _08069D0A
_08069B0C:
	movs r2, #0
	lsls r0, r3, #0x18
	cmp r0, #0
	bne _08069B28
	ldr r0, [r4]
	ldr r1, [r5, #0x10]
	cmp r0, r1
	ble _08069B32
	b _08069B36
	.align 2, 0
_08069B20: .4byte 0x0003FFFF
_08069B24: .4byte 0x01FF0000
_08069B28:
	ldr r0, [r4]
	ldr r1, [r5, #0x10]
	cmp r0, r1
	bge _08069B32
	movs r2, #1
_08069B32:
	cmp r2, #0
	beq _08069B50
_08069B36:
	ldr r0, [r4]
	subs r3, r0, r1
	cmp r3, #0
	bge _08069B40
	subs r3, r1, r0
_08069B40:
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r3, r0
	bgt _08069B4C
	str r0, [r4, #0x40]
	b _08069D0A
_08069B4C:
	str r3, [r4, #0x40]
	b _08069D0A
_08069B50:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	b _08069D0A
_08069B58:
	ldr r2, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	cmp r2, r1
	beq _08069B70
	ldr r0, [r4, #0x44]
	adds r0, #0x40
	str r0, [r4, #0x44]
	adds r0, r2, r0
	str r0, [r4, #0x3c]
	cmp r0, r1
	blt _08069B70
	str r1, [r4, #0x3c]
_08069B70:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08069B8C
	ldr r0, [r4, #0x38]
	subs r0, #0x80
	str r0, [r4, #0x38]
	ldr r1, _08069B88 @ =0xFFFFF000
	cmp r0, r1
	bgt _08069B9E
	str r1, [r4, #0x38]
	b _08069B9E
	.align 2, 0
_08069B88: .4byte 0xFFFFF000
_08069B8C:
	ldr r0, [r4, #0x38]
	adds r0, #0x80
	str r0, [r4, #0x38]
	ldr r1, _08069BAC @ =0x00000FFF
	cmp r0, r1
	ble _08069B9E
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x38]
_08069B9E:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	adds r0, r0, r1
	ldr r1, _08069BB0 @ =0x0003FFFF
	ands r0, r1
	str r0, [r4, #0x34]
	b _08069D0A
	.align 2, 0
_08069BAC: .4byte 0x00000FFF
_08069BB0: .4byte 0x0003FFFF
_08069BB4:
	movs r0, #0x78
	strh r0, [r4, #0x2e]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	ldr r0, _08069BD8 @ =0x00000225
	bl m4aSongNumStart
	movs r0, #0xd2
	b _08069D08
	.align 2, 0
_08069BD8: .4byte 0x00000225
_08069BDC:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069BEC
	b _08069D0A
_08069BEC:
	str r0, [r4, #0x38]
	str r0, [r4, #0x44]
	strh r1, [r4, #0x2c]
	b _08069D0A
_08069BF4:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08069C38
	ldr r0, [r4, #0x38]
	adds r0, #8
	str r0, [r4, #0x38]
	ldr r1, _08069C2C @ =0x000003FF
	cmp r0, r1
	ble _08069C0C
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0x38]
_08069C0C:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	adds r0, r0, r1
	ldr r1, _08069C30 @ =0x0003FFFF
	ands r0, r1
	str r0, [r4, #0x34]
	ldr r1, _08069C34 @ =0x0002FFFF
	cmp r0, r1
	ble _08069D0A
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x34]
	movs r0, #0xa0
	lsls r0, r0, #1
	b _08069D08
	.align 2, 0
_08069C2C: .4byte 0x000003FF
_08069C30: .4byte 0x0003FFFF
_08069C34: .4byte 0x0002FFFF
_08069C38:
	ldr r0, [r4, #0x38]
	subs r0, #8
	str r0, [r4, #0x38]
	ldr r1, _08069C64 @ =0xFFFFFC00
	cmp r0, r1
	bgt _08069C46
	str r1, [r4, #0x38]
_08069C46:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	adds r0, r0, r1
	ldr r1, _08069C68 @ =0x0003FFFF
	ands r0, r1
	str r0, [r4, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	cmp r0, r1
	bgt _08069D0A
	str r1, [r4, #0x34]
	movs r0, #0xa0
	lsls r0, r0, #1
	b _08069D08
	.align 2, 0
_08069C64: .4byte 0xFFFFFC00
_08069C68: .4byte 0x0003FFFF
_08069C6C:
	ldr r0, [r4, #0x3c]
	ldr r3, _08069C84 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r4, #0x3c]
	movs r1, #0xc0
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08069D0A
	str r1, [r4, #0x3c]
	strh r2, [r4, #0x2c]
	b _08069D0A
	.align 2, 0
_08069C84: .4byte 0xFFFFFE00
_08069C88:
	ldrb r0, [r4, #0xe]
	movs r1, #1
	eors r0, r1
	movs r1, #0
	strb r0, [r4, #0xe]
	strh r1, [r4, #0x30]
	b _08069D02
_08069C96:
	ldr r0, [r4, #0x44]
	subs r0, #0x20
	str r0, [r4, #0x44]
	ldr r1, [r4, #0x3c]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	movs r0, #0xe0
	lsls r0, r0, #6
	cmp r1, r0
	bgt _08069D0A
	str r0, [r4, #0x3c]
	movs r0, #0x78
	strh r0, [r4, #0x2e]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	ldr r0, _08069CD0 @ =0x00000225
	bl m4aSongNumStart
	movs r0, #0xff
	lsls r0, r0, #1
	b _08069D08
	.align 2, 0
_08069CD0: .4byte 0x00000225
_08069CD4:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08069D0A
	movs r0, #0x82
	lsls r0, r0, #2
	b _08069D08
_08069CE6:
	ldr r0, [r4, #0x3c]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r4, #0x3c]
	ldr r1, _08069DD4 @ =0x00005FFF
	cmp r0, r1
	ble _08069D0A
	movs r0, #0xc0
	lsls r0, r0, #7
	str r0, [r4, #0x3c]
	movs r0, #0
	strb r0, [r4, #0x12]
	strh r0, [r4, #0x30]
_08069D02:
	movs r0, #0x3c
_08069D04:
	strh r0, [r4, #0x2e]
	movs r0, #0x64
_08069D08:
	strh r0, [r4, #0x2c]
_08069D0A:
	ldr r0, [r4, #0x34]
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	ldr r6, _08069DD8 @ =gSineTable
	movs r0, #0x80
	lsls r0, r0, #1
	mov ip, r0
	adds r7, r1, r0
	lsls r0, r7, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r2, [r4, #0x3c]
	muls r0, r2, r0
	cmp r0, #0
	bge _08069D2E
	ldr r3, _08069DDC @ =0x00003FFF
	adds r0, r0, r3
_08069D2E:
	asrs r3, r0, #0xe
	lsls r0, r1, #1
	adds r0, r0, r6
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r2, r0
	cmp r0, #0
	bge _08069D42
	ldr r1, _08069DDC @ =0x00003FFF
	adds r0, r0, r1
_08069D42:
	asrs r5, r0, #0xe
	ldr r1, [r4]
	adds r1, r1, r3
	str r1, [r4, #0x58]
	ldr r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r4, #0x5c]
	asrs r1, r1, #8
	ldr r2, _08069DE0 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	mov r3, r8
	strh r1, [r3, #0x10]
	ldr r0, [r4, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	ldrh r0, [r4, #0x2c]
	cmp r0, #0x78
	bne _08069DC6
	ldr r5, _08069DE4 @ =0x000003FF
	adds r0, r5, #0
	adds r1, r0, #0
	ands r1, r7
	lsls r0, r1, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r5, [r0, r2]
	mov r3, ip
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r3, [r0, r1]
	ldrb r0, [r4, #0xe]
	movs r2, #4
	cmp r0, #0
	bne _08069D92
	movs r2, #2
_08069D92:
	lsls r2, r2, #2
	adds r0, r4, #0
	adds r0, #0x14
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r4, #0
	adds r0, #0x16
	adds r0, r0, r2
	movs r5, #0
	ldrsh r2, [r0, r5]
	adds r0, r3, #0
	muls r0, r2, r0
	adds r1, r1, r0
	asrs r1, r1, #6
	ldr r0, [r4, #0x5c]
	adds r0, r0, r1
	lsls r2, r2, #8
	subs r5, r0, r2
	ldr r0, _08069DE8 @ =0x0000A9FF
	cmp r5, r0
	ble _08069DC6
	movs r0, #0xc8
	strh r0, [r4, #0x2c]
_08069DC6:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069DD4: .4byte 0x00005FFF
_08069DD8: .4byte gSineTable
_08069DDC: .4byte 0x00003FFF
_08069DE0: .4byte gCamera
_08069DE4: .4byte 0x000003FF
_08069DE8: .4byte 0x0000A9FF

	thumb_func_start sub_8069DEC
sub_8069DEC: @ 0x08069DEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	ldrh r0, [r5, #0x32]
	adds r3, r0, #1
	movs r0, #0
	mov r8, r0
	strh r3, [r5, #0x32]
	ldrh r1, [r5, #0x2c]
	cmp r1, #0x6f
	bne _08069E0C
	b _0806A114
_08069E0C:
	cmp r1, #0x6f
	bgt _08069E2A
	cmp r1, #0xa
	beq _08069E68
	cmp r1, #0xa
	bgt _08069E1E
	cmp r1, #0
	beq _08069E54
	b _08069E9A
_08069E1E:
	cmp r1, #0x64
	beq _08069EA8
	cmp r1, #0x6e
	bne _08069E28
	b _0806A010
_08069E28:
	b _08069E9A
_08069E2A:
	cmp r1, #0xc8
	bne _08069E30
	b _0806A480
_08069E30:
	cmp r1, #0xc8
	bgt _08069E42
	cmp r1, #0x70
	bne _08069E3A
	b _0806A218
_08069E3A:
	cmp r1, #0x78
	bne _08069E40
	b _0806A31C
_08069E40:
	b _08069E9A
_08069E42:
	cmp r1, #0xd2
	bne _08069E48
	b _0806A51C
_08069E48:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _08069E52
	b _0806A570
_08069E52:
	b _08069E9A
_08069E54:
	ldrb r1, [r5, #0xd]
	movs r0, #0xd
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08069E64
	subs r0, r1, #1
	strb r0, [r5, #0xd]
	b _08069E9A
_08069E64:
	movs r0, #0xa
	b _08069E98
_08069E68:
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	bge _08069E76
	movs r0, #0x80
	lsls r0, r0, #1
	b _08069E78
_08069E76:
	ldr r0, _08069EA0 @ =0xFFFFFF00
_08069E78:
	str r0, [r5, #0x60]
	ldr r0, _08069EA4 @ =0xFFFFFA00
	str r0, [r5, #0x64]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	movs r0, #0xa
	strb r0, [r5, #0x10]
	movs r0, #0x64
_08069E98:
	strh r0, [r5, #0x2c]
_08069E9A:
	adds r7, r5, #0
	adds r7, #0xf0
	b _0806A590
	.align 2, 0
_08069EA0: .4byte 0xFFFFFF00
_08069EA4: .4byte 0xFFFFFA00
_08069EA8:
	ldr r1, [r5, #0x64]
	mov sb, r1
	adds r1, #0x20
	str r1, [r5, #0x64]
	ldr r0, _08069F60 @ =0x000007FF
	cmp r1, r0
	ble _08069EBA
	adds r0, #1
	str r0, [r5, #0x64]
_08069EBA:
	ldr r1, [r5, #0x58]
	ldr r0, [r5, #0x60]
	adds r6, r1, r0
	str r6, [r5, #0x58]
	ldr r1, [r5, #0x5c]
	ldr r0, [r5, #0x64]
	adds r7, r1, r0
	str r7, [r5, #0x5c]
	ldrh r1, [r5, #0x32]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08069F36
	ldr r3, _08069F64 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _08069F68 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08069F6C @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r4, _08069F70 @ =0x000003FF
	ands r4, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r3, r0, #0
	ldr r1, _08069F74 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	lsrs r3, r0, #6
	adds r1, r6, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r2, r7, r3
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	bl sub_8079758
_08069F36:
	ldrh r1, [r5, #0x32]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08069F46
	ldr r0, _08069F78 @ =0x00000221
	bl m4aSongNumStart
_08069F46:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _08069F88
	cmp r0, #0
	bge _08069F7C
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	bgt _08069F88
	mov r2, r8
	str r2, [r5, #0x60]
	b _08069F88
	.align 2, 0
_08069F60: .4byte 0x000007FF
_08069F64: .4byte gPseudoRandom
_08069F68: .4byte 0x00196225
_08069F6C: .4byte 0x3C6EF35F
_08069F70: .4byte 0x000003FF
_08069F74: .4byte gSineTable
_08069F78: .4byte 0x00000221
_08069F7C:
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	blt _08069F88
	mov r4, r8
	str r4, [r5, #0x60]
_08069F88:
	adds r7, r5, #0
	adds r7, #0xf0
	mov r0, sb
	cmp r0, #0
	bge _08069FD8
	ldr r0, [r5, #0x64]
	cmp r0, #0
	blt _08069FD8
	adds r3, r7, #0
	movs r0, #0x97
	lsls r0, r0, #3
	strh r0, [r3, #0xc]
	movs r0, #3
	strb r0, [r3, #0x1a]
	movs r0, #0x98
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	movs r1, #0x80
	lsls r1, r1, #6
	ldr r0, _0806A004 @ =0x0000207F
	str r0, [r3, #8]
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r3, r5, r2
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	str r1, [r3, #8]
	movs r4, #0x9c
	lsls r4, r4, #1
	adds r3, r5, r4
	subs r0, #0x40
	strh r0, [r3, #0x14]
	str r1, [r3, #8]
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r3, r5, r0
	movs r0, #0x88
	lsls r0, r0, #9
	str r0, [r3, #8]
_08069FD8:
	ldr r1, [r5, #0x5c]
	ldr r0, _0806A008 @ =0x00009DFF
	cmp r1, r0
	bgt _08069FE2
	b _0806A590
_08069FE2:
	adds r0, #1
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	ldr r0, _0806A00C @ =0xFFFFFC00
	str r0, [r5, #0x64]
	movs r0, #0x6e
	strh r0, [r5, #0x2c]
	b _0806A590
	.align 2, 0
_0806A004: .4byte 0x0000207F
_0806A008: .4byte 0x00009DFF
_0806A00C: .4byte 0xFFFFFC00
_0806A010:
	ldr r1, [r5, #0x64]
	adds r1, #0x20
	str r1, [r5, #0x64]
	ldr r2, [r5, #0x58]
	ldr r0, [r5, #0x60]
	adds r6, r2, r0
	str r6, [r5, #0x58]
	ldr r0, [r5, #0x5c]
	adds r7, r0, r1
	str r7, [r5, #0x5c]
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0806A08E
	ldr r3, _0806A0B8 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _0806A0BC @ =0x00196225
	muls r0, r2, r0
	ldr r1, _0806A0C0 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r4, _0806A0C4 @ =0x000003FF
	ands r4, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r3, r0, #0
	ldr r1, _0806A0C8 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	lsrs r3, r0, #6
	adds r1, r6, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r2, r7, r3
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	bl sub_8079758
_0806A08E:
	ldrh r1, [r5, #0x32]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806A09E
	ldr r0, _0806A0CC @ =0x00000221
	bl m4aSongNumStart
_0806A09E:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _0806A0DC
	cmp r0, #0
	bge _0806A0D0
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	bgt _0806A0DC
	mov r2, r8
	str r2, [r5, #0x60]
	b _0806A0DC
	.align 2, 0
_0806A0B8: .4byte gPseudoRandom
_0806A0BC: .4byte 0x00196225
_0806A0C0: .4byte 0x3C6EF35F
_0806A0C4: .4byte 0x000003FF
_0806A0C8: .4byte gSineTable
_0806A0CC: .4byte 0x00000221
_0806A0D0:
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	blt _0806A0DC
	mov r4, r8
	str r4, [r5, #0x60]
_0806A0DC:
	ldr r1, [r5, #0x5c]
	ldr r0, _0806A10C @ =0x00009DFF
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r1, r0
	bgt _0806A0EA
	b _0806A590
_0806A0EA:
	adds r0, #1
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	ldr r0, _0806A110 @ =0xFFFFFD00
	str r0, [r5, #0x64]
	movs r0, #0x6f
	strh r0, [r5, #0x2c]
	b _0806A590
	.align 2, 0
_0806A10C: .4byte 0x00009DFF
_0806A110: .4byte 0xFFFFFD00
_0806A114:
	ldr r1, [r5, #0x64]
	adds r1, #0x20
	str r1, [r5, #0x64]
	ldr r2, [r5, #0x58]
	ldr r0, [r5, #0x60]
	adds r6, r2, r0
	str r6, [r5, #0x58]
	ldr r0, [r5, #0x5c]
	adds r7, r0, r1
	str r7, [r5, #0x5c]
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0806A192
	ldr r3, _0806A1BC @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _0806A1C0 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _0806A1C4 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r4, _0806A1C8 @ =0x000003FF
	ands r4, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r3, r0, #0
	ldr r1, _0806A1CC @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	lsrs r3, r0, #6
	adds r1, r6, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r2, r7, r3
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	bl sub_8079758
_0806A192:
	ldrh r1, [r5, #0x32]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806A1A2
	ldr r0, _0806A1D0 @ =0x00000221
	bl m4aSongNumStart
_0806A1A2:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _0806A1E0
	cmp r0, #0
	bge _0806A1D4
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	bgt _0806A1E0
	mov r2, r8
	str r2, [r5, #0x60]
	b _0806A1E0
	.align 2, 0
_0806A1BC: .4byte gPseudoRandom
_0806A1C0: .4byte 0x00196225
_0806A1C4: .4byte 0x3C6EF35F
_0806A1C8: .4byte 0x000003FF
_0806A1CC: .4byte gSineTable
_0806A1D0: .4byte 0x00000221
_0806A1D4:
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	blt _0806A1E0
	mov r4, r8
	str r4, [r5, #0x60]
_0806A1E0:
	ldr r1, [r5, #0x5c]
	ldr r0, _0806A210 @ =0x00009DFF
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r1, r0
	bgt _0806A1EE
	b _0806A590
_0806A1EE:
	adds r0, #1
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	ldr r0, _0806A214 @ =0xFFFFFE00
	str r0, [r5, #0x64]
	movs r0, #0x70
	strh r0, [r5, #0x2c]
	b _0806A590
	.align 2, 0
_0806A210: .4byte 0x00009DFF
_0806A214: .4byte 0xFFFFFE00
_0806A218:
	ldr r1, [r5, #0x64]
	adds r1, #0x20
	str r1, [r5, #0x64]
	ldr r2, [r5, #0x58]
	ldr r0, [r5, #0x60]
	adds r6, r2, r0
	str r6, [r5, #0x58]
	ldr r0, [r5, #0x5c]
	adds r7, r0, r1
	str r7, [r5, #0x5c]
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0806A296
	ldr r3, _0806A2C0 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _0806A2C4 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _0806A2C8 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r4, _0806A2CC @ =0x000003FF
	ands r4, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r3, r0, #0
	ldr r1, _0806A2D0 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	lsrs r3, r0, #6
	adds r1, r6, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r2, r7, r3
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	bl sub_8079758
_0806A296:
	ldrh r1, [r5, #0x32]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806A2A6
	ldr r0, _0806A2D4 @ =0x00000221
	bl m4aSongNumStart
_0806A2A6:
	ldr r0, [r5, #0x60]
	cmp r0, #0
	beq _0806A2E4
	cmp r0, #0
	bge _0806A2D8
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	bgt _0806A2E4
	mov r2, r8
	str r2, [r5, #0x60]
	b _0806A2E4
	.align 2, 0
_0806A2C0: .4byte gPseudoRandom
_0806A2C4: .4byte 0x00196225
_0806A2C8: .4byte 0x3C6EF35F
_0806A2CC: .4byte 0x000003FF
_0806A2D0: .4byte gSineTable
_0806A2D4: .4byte 0x00000221
_0806A2D8:
	ldr r1, [r5, #0x58]
	ldr r0, [r5]
	cmp r1, r0
	blt _0806A2E4
	mov r4, r8
	str r4, [r5, #0x60]
_0806A2E4:
	ldr r1, [r5, #0x5c]
	ldr r0, _0806A318 @ =0x00009DFF
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r1, r0
	bgt _0806A2F2
	b _0806A590
_0806A2F2:
	adds r0, #1
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	movs r1, #0
	movs r0, #0xb4
	strh r0, [r5, #0x2e]
	movs r0, #0x78
	strh r0, [r5, #0x2c]
	strb r1, [r5, #0x13]
	b _0806A590
	.align 2, 0
_0806A318: .4byte 0x00009DFF
_0806A31C:
	ldrh r0, [r5, #0x2e]
	subs r0, #1
	strh r0, [r5, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806A330
	movs r0, #0x14
	strh r0, [r5, #0x2e]
	movs r0, #0xc8
	strh r0, [r5, #0x2c]
_0806A330:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	cmp r0, #0x3c
	ble _0806A348
	ldrh r1, [r5, #0x32]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806A348
	ldr r0, _0806A460 @ =0x00000221
	bl m4aSongNumStart
_0806A348:
	ldrh r0, [r5, #0x32]
	movs r6, #3
	ands r6, r0
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r6, #0
	beq _0806A358
	b _0806A590
_0806A358:
	ldr r2, _0806A464 @ =gPseudoRandom
	mov r8, r2
	ldr r0, [r2]
	ldr r4, _0806A468 @ =0x00196225
	muls r0, r4, r0
	ldr r1, _0806A46C @ =0x3C6EF35F
	mov sl, r1
	adds r1, r0, r1
	str r1, [r2]
	adds r4, r1, #0
	ldr r2, _0806A470 @ =0x000003FF
	ands r4, r2
	ldr r0, _0806A474 @ =0x000001FF
	cmp r4, r0
	bhi _0806A37A
	adds r0, #1
	adds r4, r4, r0
_0806A37A:
	ldr r2, _0806A468 @ =0x00196225
	adds r0, r1, #0
	muls r0, r2, r0
	add r0, sl
	mov r1, r8
	str r0, [r1]
	movs r3, #0x1f
	ands r3, r0
	ldr r2, _0806A478 @ =gSineTable
	mov sb, r2
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r3, r0
	lsrs r3, r0, #6
	ldrb r0, [r5, #0x13]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	ldr r1, [r5, #0x58]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #0x5c]
	adds r2, r2, r3
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0xc0
	lsls r3, r3, #2
	str r4, [sp]
	movs r4, #0x1e
	str r4, [sp, #4]
	movs r4, #0x20
	str r4, [sp, #8]
	ldr r4, [r5, #0x28]
	str r4, [sp, #0xc]
	bl sub_8079758
	ldrb r0, [r5, #0x13]
	adds r0, #1
	strb r0, [r5, #0x13]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0806A3E8
	strb r6, [r5, #0x13]
_0806A3E8:
	ldrh r0, [r5, #0x32]
	movs r6, #3
	ands r6, r0
	cmp r6, #0
	beq _0806A3F4
	b _0806A590
_0806A3F4:
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _0806A468 @ =0x00196225
	muls r0, r2, r0
	add r0, sl
	adds r4, r0, #0
	ldr r1, _0806A470 @ =0x000003FF
	ands r4, r1
	muls r0, r2, r0
	add r0, sl
	mov r2, r8
	str r0, [r2]
	movs r1, #0x50
	bl __umodsi3
	adds r3, r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r3, r0, r3
	ldr r1, [r5, #0x58]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r0, _0806A47C @ =gCamera
	ldr r2, [r0, #4]
	lsrs r3, r3, #0xe
	adds r3, #0x50
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	str r4, [sp]
	movs r4, #0x1e
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	bl sub_8079758
	b _0806A590
	.align 2, 0
_0806A460: .4byte 0x00000221
_0806A464: .4byte gPseudoRandom
_0806A468: .4byte 0x00196225
_0806A46C: .4byte 0x3C6EF35F
_0806A470: .4byte 0x000003FF
_0806A474: .4byte 0x000001FF
_0806A478: .4byte gSineTable
_0806A47C: .4byte gCamera
_0806A480:
	ldrh r1, [r5, #0x2e]
	movs r0, #1
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _0806A4A0
	ldr r2, _0806A498 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806A49C @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	b _0806A4AE
	.align 2, 0
_0806A498: .4byte gDispCnt
_0806A49C: .4byte 0x0000FBFF
_0806A4A0:
	ldr r0, _0806A50C @ =gDispCnt
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r2, r4, #0
	orrs r1, r2
	strh r1, [r0]
_0806A4AE:
	subs r0, r3, #1
	strh r0, [r5, #0x2e]
	lsls r0, r0, #0x10
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r0, #0
	bne _0806A590
	movs r4, #0
	ldr r6, _0806A510 @ =0x000003FF
_0806A4C0:
	ldr r1, [r5, #0x58]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #0x5c]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
	adds r0, r4, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bls _0806A4C0
	ldr r0, _0806A514 @ =0x00000221
	bl m4aSongNumStart
	ldr r2, _0806A50C @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806A518 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xa
	strh r0, [r5, #0x2e]
	movs r0, #0xd2
	strh r0, [r5, #0x2c]
	b _0806A590
	.align 2, 0
_0806A50C: .4byte gDispCnt
_0806A510: .4byte 0x000003FF
_0806A514: .4byte 0x00000221
_0806A518: .4byte 0x0000FBFF
_0806A51C:
	ldrh r0, [r5, #0x2e]
	subs r0, #1
	strh r0, [r5, #0x2e]
	lsls r0, r0, #0x10
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r0, #0
	bne _0806A590
	movs r4, #0
	ldr r6, _0806A56C @ =0x000003FF
_0806A530:
	ldr r1, [r5, #0x58]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #0x5c]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	movs r0, #6
	movs r3, #0x80
	lsls r3, r3, #2
	bl sub_8079758
	adds r0, r4, #0
	adds r0, #0x80
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bls _0806A530
	movs r0, #0xa
	strh r0, [r5, #0x2e]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r5, #0x2c]
	b _0806A590
	.align 2, 0
_0806A56C: .4byte 0x000003FF
_0806A570:
	ldrh r0, [r5, #0x2e]
	subs r0, #1
	strh r0, [r5, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r5, #0
	adds r7, #0xf0
	cmp r0, #0
	bne _0806A590
	strh r0, [r5, #0x32]
	ldr r0, _0806A5CC @ =0x000003F2
	strh r0, [r5, #0x2c]
	ldr r0, _0806A5D0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806A5D4 @ =sub_8068D00
	str r0, [r1, #8]
_0806A590:
	adds r3, r7, #0
	ldr r0, [r5, #0x58]
	asrs r0, r0, #8
	ldr r2, _0806A5D8 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	ldr r1, [r5, #0x50]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r5, #0x54]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A5CC: .4byte 0x000003F2
_0806A5D0: .4byte gCurTask
_0806A5D4: .4byte sub_8068D00
_0806A5D8: .4byte gCamera

	thumb_func_start sub_806A5DC
sub_806A5DC: @ 0x0806A5DC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xf0
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	beq _0806A694
	movs r0, #0xd
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0806A694
	subs r1, #1
	strb r1, [r4, #0xc]
	ldr r0, _0806A610 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0806A614
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0806A622
	movs r0, #0x33
	bl sub_80299D4
	b _0806A622
	.align 2, 0
_0806A610: .4byte gStageData
_0806A614:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0806A622
	movs r0, #0x33
	bl sub_80299D4
_0806A622:
	movs r0, #0x97
	lsls r0, r0, #3
	strh r0, [r5, #0xc]
	movs r0, #2
	strb r0, [r5, #0x1a]
	movs r0, #0x7a
	strb r0, [r4, #0xd]
	ldr r0, _0806A67C @ =0x000004B9
	movs r1, #0
	movs r2, #0x7a
	movs r3, #1
	bl sub_8078DB0
	ldr r0, _0806A680 @ =0x000004BB
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	ldr r0, _0806A684 @ =0x000004BA
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0xeb
	bl m4aSongNumStart
	bl sub_807A468
	ldr r1, _0806A688 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _0806A694
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _0806A68C
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0806A694
	adds r1, r0, #0
	movs r0, #3
	bl sub_8027674
	b _0806A694
	.align 2, 0
_0806A67C: .4byte 0x000004B9
_0806A680: .4byte 0x000004BB
_0806A684: .4byte 0x000004BA
_0806A688: .4byte gStageData
_0806A68C:
	ldrb r1, [r4, #0xc]
	movs r0, #4
	bl sub_8027674
_0806A694:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806A69C
sub_0806A69C: @ 0x0806A69C
	push {r4, r5, r6, r7, lr}
	ldr r1, _0806A6F8 @ =gStageData
	adds r7, r1, #0
	adds r7, #0x88
	ldr r1, [r7]
	ldrh r5, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r5, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	cmp r1, #1
	bne _0806A704
	movs r3, #0
	strb r3, [r6, #0xc]
	ldr r0, _0806A6FC @ =0x03000138
	adds r5, r5, r0
	ldr r1, [r6, #0x50]
	ldr r0, [r1, #4]
	movs r4, #0x80
	lsls r4, r4, #0x14
	orrs r0, r4
	str r0, [r1, #4]
	ldr r2, [r6, #0x54]
	ldr r0, [r2, #4]
	orrs r0, r4
	str r0, [r2, #4]
	strh r3, [r6, #0x32]
	strh r3, [r6, #0x2c]
	strh r3, [r6, #0x2e]
	adds r0, r5, #0
	bl ResolvePlayerSpriteCollision
	ldr r1, [r6, #0x54]
	adds r0, r5, #0
	bl ResolvePlayerSpriteCollision
	ldr r1, [r7]
	ldr r0, _0806A700 @ =sub_806A760
	str r0, [r1, #8]
	b _0806A720
	.align 2, 0
_0806A6F8: .4byte gStageData
_0806A6FC: .4byte 0x03000138
_0806A700: .4byte sub_806A760
_0806A704:
	cmp r1, #1
	blt _0806A720
	cmp r1, #4
	bgt _0806A720
	cmp r1, #3
	blt _0806A720
	ldrb r1, [r6, #0xc]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _0806A720
	adds r0, r6, #0
	bl sub_806A5DC
_0806A720:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806A728
sub_806A728: @ 0x0806A728
	push {r4, lr}
	ldr r0, _0806A75C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8069814
	adds r0, r4, #0
	bl sub_8069360
	adds r0, r4, #0
	bl sub_8069578
	adds r0, r4, #0
	bl sub_806A854
	adds r0, r4, #0
	bl sub_806A898
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A75C: .4byte gCurTask

	thumb_func_start sub_806A760
sub_806A760: @ 0x0806A760
	push {r4, lr}
	ldr r0, _0806A79C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8069DEC
	ldr r0, _0806A7A0 @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0806A794
	adds r0, r4, #0
	bl sub_8069578
	adds r0, r4, #0
	bl sub_806A854
	adds r0, r4, #0
	bl sub_806A898
_0806A794:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A79C: .4byte gCurTask
_0806A7A0: .4byte gDispCnt

	thumb_func_start sub_806A7A4
sub_806A7A4: @ 0x0806A7A4
	push {r4, lr}
	ldr r0, _0806A7E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	adds r0, r4, #0
	bl sub_8069578
	adds r0, r4, #0
	bl sub_806A854
	adds r0, r4, #0
	bl sub_806A898
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A7E0: .4byte gCurTask

	thumb_func_start TaskDestructor_Boss_806A7E4
TaskDestructor_Boss_806A7E4: @ 0x0806A7E4
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x28]
	bl VramFree
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0806A802
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x48]
_0806A802:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0806A810
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x4c]
_0806A810:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806A818
sub_806A818: @ 0x0806A818
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #4]
	movs r3, #0x80
	lsls r3, r3, #0x14
	orrs r0, r3
	str r0, [r1, #4]
	ldr r2, [r4, #0x54]
	ldr r0, [r2, #4]
	orrs r0, r3
	str r0, [r2, #4]
	movs r0, #0
	strh r0, [r4, #0x32]
	strh r0, [r4, #0x2c]
	strh r0, [r4, #0x2e]
	adds r0, r5, #0
	bl ResolvePlayerSpriteCollision
	ldr r1, [r4, #0x54]
	adds r0, r5, #0
	bl ResolvePlayerSpriteCollision
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806A854
sub_806A854: @ 0x0806A854
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r3, r0
	adds r0, r3, #0
	adds r0, #0xe8
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, _0806A890 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r3, #0
	adds r0, #0xec
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
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
_0806A890: .4byte gCamera

	thumb_func_start sub_806A894
sub_806A894: @ 0x0806A894
	bx lr
	.align 2, 0

	thumb_func_start sub_806A898
sub_806A898: @ 0x0806A898
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0x58]
	asrs r1, r1, #8
	ldr r3, _0806A8FC @ =gCamera
	ldr r2, [r3]
	subs r6, r1, r2
	ldr r1, [r0, #0x5c]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r7, r1, r2
	ldr r0, [r0, #0x34]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r2, _0806A900 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0x40
	str r5, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806A904 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
	strh r5, [r4, #0x10]
	movs r0, #0x68
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BE46C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A8FC: .4byte gCamera
_0806A900: .4byte 0x000003FF
_0806A904: .4byte gBgAffineRegs

	thumb_func_start sub_806A908
sub_806A908: @ 0x0806A908
    movs r0, #0
	bx lr
	.align 2, 0
