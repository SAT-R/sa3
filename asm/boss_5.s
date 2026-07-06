.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

    @ Called on init of Boss 5
    @ NOTE: There is also an enemy in the sonic universe called "Egg Chaser",
    @       so we call it EggChaserBoss, to differentiate
	thumb_func_start CreateEggChaserBoss
CreateEggChaserBoss: @ 0x08071A08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, _08071A60 @ =Task_EggChaserBossInit
	movs r1, #0xee
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r3, _08071A64 @ =TaskDestructor_EggChaserBoss
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	str r0, [sp, #4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r1, _08071A68 @ =gStageData
	adds r0, r1, #0
	adds r0, #0x88
	ldr r2, [sp, #4]
	str r2, [r0]
	adds r4, #4
	lsls r4, r4, #8
	str r4, [r7]
	lsls r6, r6, #8
	str r6, [r7, #4]
	movs r0, #0
	strh r0, [r7, #0x10]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x16]
	strh r0, [r7, #0x18]
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _08071A6C
	movs r0, #8
	b _08071A6E
	.align 2, 0
_08071A60: .4byte Task_EggChaserBossInit
_08071A64: .4byte TaskDestructor_EggChaserBoss
_08071A68: .4byte gStageData
_08071A6C:
	movs r0, #6
_08071A6E:
	strb r0, [r7, #0x12]
	mov r0, r8
	str r0, [r7, #0xc]
	movs r1, #0
	strb r1, [r7, #0x13]
	movs r0, #4
	strb r0, [r7, #0x1a]
	strb r1, [r7, #0x1b]
	strh r1, [r7, #0x26]
	ldr r0, _08071D40 @ =0x0000049C
	strh r0, [r7, #0x24]
	adds r1, r7, #0
	adds r1, #0x2c
	movs r0, #1
	strb r0, [r1]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, _08071D44 @ =gPlayers
	str r2, [r0]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r3, r7, r0
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
	adds r0, r0, r2
	str r0, [r3]
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, _08071D48 @ =gStageData
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0xf6
	bl VramMalloc
	str r0, [r7, #0x20]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r7, #0x38]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #0x3a]
	movs r4, #0
	adds r3, r7, #0
	adds r3, #0x90
	adds r6, r7, #0
	adds r6, #0xb8
	mov sb, r4
_08071AE8:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xe0
	adds r2, r7, r0
	str r5, [r2]
	ldr r0, _08071D4C @ =0x000004DA
	strh r0, [r2, #0xc]
	movs r1, #0
	strb r1, [r2, #0x1a]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r2, #0x14]
	mov r0, sb
	strh r0, [r2, #0xe]
	strh r0, [r2, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	mov r1, sb
	str r1, [r2, #8]
	ldr r1, [r7]
	asrs r1, r1, #8
	ldr r0, _08071D50 @ =gCamera
	mov r8, r0
	ldr r0, [r0]
	subs r0, r1, r0
	strh r0, [r2, #0x10]
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	mov r1, r8
	ldr r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	str r3, [sp, #8]
	bl UpdateSpriteAnimation
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r5, r2
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp, #8]
	cmp r4, #1
	bls _08071AE8
	str r5, [r3]
	movs r4, #0
	movs r0, #0x9b
	lsls r0, r0, #3
	strh r0, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	movs r1, #0x98
	lsls r1, r1, #3
	strh r1, [r3, #0x14]
	strh r4, [r3, #0xe]
	strh r4, [r3, #0x16]
	ldrb r0, [r3, #0x1b]
	mov r2, sl
	orrs r0, r2
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r1, #0
	strb r1, [r3, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r3, #0x20]
	str r4, [r3, #8]
	ldr r0, [r7]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r3, #0x10]
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r5, r0
	str r5, [r6]
	ldr r0, _08071D54 @ =0x000004D9
	strh r0, [r6, #0xc]
	movs r1, #1
	mov sb, r1
	mov r2, sb
	strb r2, [r6, #0x1a]
	subs r0, #0x19
	strh r0, [r6, #0x14]
	strh r4, [r6, #0xe]
	strh r4, [r6, #0x16]
	ldrb r0, [r6, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r6, #0x1b]
	movs r2, #0x10
	strb r2, [r6, #0x1c]
	movs r0, #0
	strb r0, [r6, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r6, #0x20]
	str r4, [r6, #8]
	ldr r0, [r7]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	ldr r0, [r7, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r6, #0x12]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	adds r5, #0x20
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r2, r7, r0
	str r5, [r2]
	ldr r0, _08071D58 @ =0x000004D7
	strh r0, [r2, #0xc]
	movs r1, #0
	strb r1, [r2, #0x1a]
	subs r0, #0x97
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r5, r5, r1
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r2, r7, r0
	str r5, [r2]
	ldr r0, _08071D5C @ =0x000004DC
	strh r0, [r2, #0xc]
	movs r1, #0
	strb r1, [r2, #0x1a]
	subs r0, #0xdc
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r5, r5, r1
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r2, r7, r0
	str r5, [r2]
	ldr r1, _08071D60 @ =0x000004DB
	mov r8, r1
	mov r0, r8
	strh r0, [r2, #0xc]
	movs r1, #0
	strb r1, [r2, #0x1a]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r5, r5, r1
	movs r0, #0xda
	lsls r0, r0, #1
	adds r2, r7, r0
	str r5, [r2]
	mov r1, r8
	strh r1, [r2, #0xc]
	mov r0, sb
	strb r0, [r2, #0x1a]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0x20]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r5, #0x40
	str r5, [r7, #0x1c]
	movs r0, #0xad
	lsls r0, r0, #3
	strh r0, [r7, #0x24]
	movs r1, #0
	strb r1, [r7, #0x1a]
	ldr r4, _08071D64 @ =gUnknown_080D5888
	adds r5, r4, #2
_08071CFA:
	ldrb r0, [r7, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r2, #0x24
	ldrsh r1, [r7, r2]
	adds r2, r7, #0
	bl sub_8072E50
	ldrb r0, [r7, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r0, [r0]
	ldrh r1, [r7, #0x24]
	adds r0, r0, r1
	strh r0, [r7, #0x24]
	ldrb r0, [r7, #0x1a]
	adds r0, #1
	strb r0, [r7, #0x1a]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08071CFA
	bl SetFixedRandomIfTimeAttackMode
	ldr r0, [sp, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08071D40: .4byte 0x0000049C
_08071D44: .4byte gPlayers
_08071D48: .4byte gStageData
_08071D4C: .4byte 0x000004DA
_08071D50: .4byte gCamera
_08071D54: .4byte 0x000004D9
_08071D58: .4byte 0x000004D7
_08071D5C: .4byte 0x000004DC
_08071D60: .4byte 0x000004DB
_08071D64: .4byte gUnknown_080D5888

	thumb_func_start sub_8071D68
sub_8071D68: @ 0x08071D68
	push {r4, r5, lr}
	ldr r0, _08071D88 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08071D8C
	adds r0, r2, #0
	bl TaskDestroy
	b _08071DDE
	.align 2, 0
_08071D88: .4byte gCurTask
_08071D8C:
	adds r0, r4, #0
	bl sub_80728B4
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	cmp r0, #2
	bne _08071DDE
	movs r1, #0
	ldr r5, _08071DE4 @ =gPlayers
	ldr r3, _08071DE8 @ =0xFFFFFB7F
	movs r2, #0x93
	lsls r2, r2, #1
_08071DA4:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	adds r0, r0, r3
	cmp r0, r2
	bhi _08071DDE
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08071DA4
	movs r0, #0x32
	bl sub_80299D4
	ldr r0, _08071DEC @ =gCamera
	ldr r0, [r0, #0x14]
	str r0, [r4, #0x28]
	ldr r0, _08071DF0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08071DF4 @ =sub_8071DF8
	str r0, [r1, #8]
_08071DDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08071DE4: .4byte gPlayers
_08071DE8: .4byte 0xFFFFFB7F
_08071DEC: .4byte gCamera
_08071DF0: .4byte gCurTask
_08071DF4: .4byte sub_8071DF8

	thumb_func_start sub_8071DF8
sub_8071DF8: @ 0x08071DF8
	push {r4, r5, r6, lr}
	ldr r6, _08071E24 @ =gCurTask
	ldr r0, [r6]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r0, _08071E28 @ =0x03000164
	adds r1, r2, r0
	ldrh r0, [r4, #0x14]
	adds r0, #1
	movs r5, #0
	movs r3, #0
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0x14]
	cmp r0, #0x78
	beq _08071E40
	cmp r0, #0x78
	bgt _08071E2C
	cmp r0, #0x3c
	beq _08071E32
	b _08071E74
	.align 2, 0
_08071E24: .4byte gCurTask
_08071E28: .4byte 0x03000164
_08071E2C:
	cmp r0, #0xb4
	beq _08071E4C
	b _08071E74
_08071E32:
	ldr r0, _08071E3C @ =0x000004DC
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	b _08071E74
	.align 2, 0
_08071E3C: .4byte 0x000004DC
_08071E40:
	ldr r0, _08071E48 @ =0x000004DC
	strh r0, [r1, #0xc]
	strb r5, [r1, #0x1a]
	b _08071E74
	.align 2, 0
_08071E48: .4byte 0x000004DC
_08071E4C:
	strh r3, [r4, #0x14]
	ldr r1, _08071E88 @ =gUnknown_080D58CC
	ldrb r0, [r4, #0x12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x16]
	strh r3, [r4, #0x30]
	movs r0, #1
	strh r0, [r4, #0x32]
	strh r3, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r1, _08071E8C @ =0x0300002C
	adds r0, r2, r1
	strb r5, [r0]
	bl sub_807A4A8
	ldr r1, [r6]
	ldr r0, _08071E90 @ =sub_8071E94
	str r0, [r1, #8]
_08071E74:
	adds r0, r4, #0
	bl sub_8073570
	adds r0, r4, #0
	bl sub_80728B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08071E88: .4byte gUnknown_080D58CC
_08071E8C: .4byte 0x0300002C
_08071E90: .4byte sub_8071E94

	thumb_func_start sub_8071E94
sub_8071E94: @ 0x08071E94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08071F08 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r0, _08071F0C @ =0x0300013C
	adds r7, r5, r0
	ldr r1, _08071F10 @ =0x03000164
	adds r1, r1, r5
	mov r8, r1
	ldrh r0, [r4, #0x14]
	adds r0, #1
	movs r1, #0
	mov sb, r1
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_8072B80
	ldr r1, _08071F14 @ =0x03000130
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_8073480
	ldr r1, _08071F18 @ =0x03000134
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_8073480
	ldrb r0, [r4, #0x13]
	movs r6, #0x13
	ldrsb r6, [r4, r6]
	cmp r6, #0
	beq _08071F1C
	subs r0, #1
	strb r0, [r4, #0x13]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08071EFA
	mov r1, sb
	mov r0, r8
	strb r1, [r0, #0x1a]
	movs r0, #0xff
	mov r1, r8
	strb r0, [r1, #0x1b]
_08071EFA:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _08071FEA
	subs r0, #1
	strh r0, [r4, #0x16]
	b _08071FEA
	.align 2, 0
_08071F08: .4byte gCurTask
_08071F0C: .4byte 0x0300013C
_08071F10: .4byte 0x03000164
_08071F14: .4byte 0x03000130
_08071F18: .4byte 0x03000134
_08071F1C:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _08071F32
	subs r0, #1
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl sub_80725FC
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _08071FE4
_08071F32:
	ldrb r0, [r7, #0x1a]
	cmp r0, #1
	beq _08071F54
	cmp r0, #1
	bgt _08071F42
	cmp r0, #0
	beq _08071F4C
	b _08071FE0
_08071F42:
	cmp r0, #2
	beq _08071FC8
	cmp r0, #3
	beq _08071FD0
	b _08071FE0
_08071F4C:
	movs r0, #8
	strh r0, [r4, #0x16]
	movs r0, #1
	b _08071FDE
_08071F54:
	movs r0, #0x82
	lsls r0, r0, #1
	strh r0, [r4, #0x16]
	movs r0, #2
	strb r0, [r7, #0x1a]
	strh r6, [r4, #0x26]
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #4]
	ldr r1, _08071FB4 @ =0xFFFFE800
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r3, #0
	ldr r0, _08071FB8 @ =0x03000088
	adds r0, r0, r5
	mov ip, r0
	ldr r1, _08071FBC @ =0x0300008C
	adds r1, r1, r5
	mov r8, r1
	ldr r0, _08071FC0 @ =0x03000048
	adds r6, r5, r0
	ldr r1, _08071FC4 @ =0x0300004C
	adds r5, r5, r1
_08071F88:
	lsls r1, r3, #3
	adds r2, r6, r1
	ldr r0, [r4, #0x40]
	str r0, [r2]
	adds r1, r5, r1
	ldr r0, [r4, #0x44]
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08071F88
	movs r0, #0
	mov r1, ip
	str r0, [r1]
	mov r1, r8
	str r0, [r1]
	strh r0, [r4, #0x30]
	movs r0, #1
	strh r0, [r4, #0x32]
	b _08071FE0
	.align 2, 0
_08071FB4: .4byte 0xFFFFE800
_08071FB8: .4byte 0x03000088
_08071FBC: .4byte 0x0300008C
_08071FC0: .4byte 0x03000048
_08071FC4: .4byte 0x0300004C
_08071FC8:
	movs r0, #8
	strh r0, [r4, #0x16]
	movs r0, #3
	b _08071FDE
_08071FD0:
	ldr r0, _08072008 @ =gUnknown_080D58CC
	ldrb r1, [r4, #0x12]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r4, #0x16]
	mov r0, sb
_08071FDE:
	strb r0, [r7, #0x1a]
_08071FE0:
	movs r0, #0xff
	strb r0, [r7, #0x1b]
_08071FE4:
	adds r0, r4, #0
	bl sub_80735C4
_08071FEA:
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _08072040
	ldr r1, _0807200C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08072020
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08072018
	ldr r0, _08072010 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08072014 @ =sub_8073420
	b _0807202C
	.align 2, 0
_08072008: .4byte gUnknown_080D58CC
_0807200C: .4byte gStageData
_08072010: .4byte gCurTask
_08072014: .4byte sub_8073420
_08072018:
	movs r0, #1
	movs r1, #0
	bl sub_8027674
_08072020:
	adds r0, r4, #0
	bl sub_8072D04
	ldr r0, _08072038 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807203C @ =sub_80733CC
_0807202C:
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_80728B4
	b _080720CA
	.align 2, 0
_08072038: .4byte gCurTask
_0807203C: .4byte sub_80733CC
_08072040:
	ldr r0, _08072080 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08072084 @ =gPlayers
	adds r3, r0, r1
	ldr r2, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r2
	cmp r0, #0
	bne _080720B2
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	ldr r1, _08072088 @ =gCamera
	ldr r5, [r1, #0x14]
	cmp r0, r5
	ble _080720B2
	movs r0, #0x80
	lsls r0, r0, #1
	ands r2, r0
	cmp r2, #0
	bne _08072090
	ldr r1, _0807208C @ =Player_HitWithoutRingsUpdate
	adds r0, r3, #0
	bl SetPlayerCallback
	b _080720B2
	.align 2, 0
_08072080: .4byte gStageData
_08072084: .4byte gPlayers
_08072088: .4byte gCamera
_0807208C: .4byte Player_HitWithoutRingsUpdate
_08072090:
	ldr r2, [r3]
	ldr r1, _080720D8 @ =Player_HitWithoutRingsUpdate
	cmp r2, r1
	beq _080720B2
	ldr r0, _080720DC @ =sub_800913C
	cmp r2, r0
	beq _080720B2
	ldr r0, _080720E0 @ =sub_800DF9C
	cmp r2, r0
	beq _080720B2
	adds r0, r5, #0
	subs r0, #8
	lsls r0, r0, #8
	str r0, [r3, #0x14]
	adds r0, r3, #0
	bl SetPlayerCallback
_080720B2:
	adds r0, r4, #0
	bl sub_8072558
	adds r0, r4, #0
	bl sub_8073608
	adds r0, r4, #0
	bl sub_8073570
	adds r0, r4, #0
	bl sub_80728B4
_080720CA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080720D8: .4byte Player_HitWithoutRingsUpdate
_080720DC: .4byte sub_800913C
_080720E0: .4byte sub_800DF9C

	thumb_func_start sub_80720E4
sub_80720E4: @ 0x080720E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _08072128 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r2, _0807212C @ =0x0300013C
	adds r2, r2, r0
	mov r8, r2
	ldr r4, _08072130 @ =0x03000164
	adds r4, r4, r0
	mov sl, r4
	ldrh r0, [r5, #0x14]
	adds r0, #1
	movs r6, #0
	mov sb, r6
	strh r0, [r5, #0x14]
	ldrh r6, [r5, #0x30]
	cmp r6, #0x14
	bne _0807211A
	b _08072294
_0807211A:
	cmp r6, #0x14
	bgt _08072134
	cmp r6, #0
	beq _08072142
	cmp r6, #0xa
	beq _0807217C
	b _08072424
	.align 2, 0
_08072128: .4byte gCurTask
_0807212C: .4byte 0x0300013C
_08072130: .4byte 0x03000164
_08072134:
	cmp r6, #0x32
	bne _0807213A
	b _0807234C
_0807213A:
	cmp r6, #0x64
	bne _08072140
	b _0807236C
_08072140:
	b _08072424
_08072142:
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	asrs r1, r1, #8
	ldr r0, _0807215C @ =0x00000514
	cmp r1, r0
	ble _08072160
	movs r0, #0xff
	lsls r0, r0, #8
	b _08072164
	.align 2, 0
_0807215C: .4byte 0x00000514
_08072160:
	movs r0, #0x80
	lsls r0, r0, #1
_08072164:
	strh r0, [r5, #8]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	ldr r1, _08072178 @ =gCamera
	ldr r0, [r5, #0x28]
	str r0, [r1, #0x14]
	movs r0, #0xa
	strh r0, [r5, #0x30]
	b _08072424
	.align 2, 0
_08072178: .4byte gCamera
_0807217C:
	ldrh r0, [r5, #0xa]
	adds r0, #0x40
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	ble _08072190
	strh r1, [r5, #0xa]
_08072190:
	movs r2, #8
	ldrsh r1, [r5, r2]
	ldr r0, [r5]
	adds r2, r0, r1
	str r2, [r5]
	movs r4, #0xa
	ldrsh r1, [r5, r4]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	movs r6, #8
	ldrsh r0, [r5, r6]
	cmp r0, #0
	beq _080721D0
	cmp r0, #0
	bge _080721C4
	asrs r1, r2, #8
	ldr r0, _080721C0 @ =0x00000514
	cmp r1, r0
	bgt _080721D0
	mov r0, sb
	strh r0, [r5, #8]
	b _080721D0
	.align 2, 0
_080721C0: .4byte 0x00000514
_080721C4:
	asrs r1, r2, #8
	ldr r0, _08072278 @ =0x00000513
	cmp r1, r0
	ble _080721D0
	mov r1, sb
	strh r1, [r5, #8]
_080721D0:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, _0807227C @ =0x00000596
	cmp r0, r1
	ble _080721F8
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	movs r0, #0x14
	strh r0, [r5, #0x30]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #4
	movs r2, #0
	bl CreateScreenShake
_080721F8:
	ldrh r1, [r5, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08072268
	ldr r3, _08072280 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _08072284 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08072288 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r7, _0807228C @ =0x000003FF
	ands r7, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r4, r0, #0
	ldr r1, _08072290 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r0, r4, r0
	lsrs r2, r0, #6
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r4, r0
	lsrs r0, r0, #6
	ldr r1, [r5]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r2, r2, r0
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r7, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_08072268:
	ldrh r1, [r5, #0x14]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	beq _08072274
	b _08072424
_08072274:
	b _08072360
	.align 2, 0
_08072278: .4byte 0x00000513
_0807227C: .4byte 0x00000596
_08072280: .4byte gPseudoRandom
_08072284: .4byte 0x00196225
_08072288: .4byte 0x3C6EF35F
_0807228C: .4byte 0x000003FF
_08072290: .4byte gSineTable
_08072294:
	ldrh r0, [r5, #0xa]
	adds r0, #0x20
	strh r0, [r5, #0xa]
	movs r2, #8
	ldrsh r1, [r5, r2]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	movs r4, #0xa
	ldrsh r1, [r5, r4]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0xc8
	lsls r1, r1, #3
	cmp r0, r1
	ble _080722C0
	movs r0, #0x3c
	strh r0, [r5, #0x32]
	movs r0, #0x32
	strh r0, [r5, #0x30]
_080722C0:
	ldrh r1, [r5, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807232A
	ldr r3, _08072338 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _0807233C @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08072340 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r7, _08072344 @ =0x000003FF
	ands r7, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r4, #0x1f
	ands r4, r0
	ldr r1, _08072348 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r4, r0
	lsrs r2, r0, #6
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r4, r0
	lsrs r0, r0, #6
	ldr r1, [r5]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r2, r2, r0
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r7, [sp]
	str r6, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_0807232A:
	ldrh r1, [r5, #0x14]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08072424
	b _08072360
	.align 2, 0
_08072338: .4byte gPseudoRandom
_0807233C: .4byte 0x00196225
_08072340: .4byte 0x3C6EF35F
_08072344: .4byte 0x000003FF
_08072348: .4byte gSineTable
_0807234C:
	ldrh r0, [r5, #0x32]
	subs r0, #1
	strh r0, [r5, #0x32]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08072424
	movs r0, #0xb4
	strh r0, [r5, #0x32]
	movs r0, #0x64
	strh r0, [r5, #0x30]
_08072360:
	ldr r0, _08072368 @ =0x00000221
	bl m4aSongNumStart
	b _08072424
	.align 2, 0
_08072368: .4byte 0x00000221
_0807236C:
	ldrh r1, [r5, #0x32]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080723F6
	ldr r4, _080724B8 @ =gPseudoRandom
	ldr r0, [r4]
	ldr r3, _080724BC @ =0x00196225
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r2, _080724C0 @ =0x3C6EF35F
	adds r1, r1, r2
	movs r0, #0xff
	ands r0, r1
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r7, r0, r6
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [r4]
	movs r1, #0x30
	bl __umodsi3
	adds r4, r0, #0
	movs r0, #3
	adds r3, r4, #0
	ands r3, r0
	lsls r3, r3, #8
	ldr r2, _080724C4 @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r1, r0, #0
	muls r1, r4, r1
	lsls r0, r7, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	muls r2, r4, r2
	lsrs r1, r1, #0xe
	ldr r4, _080724C8 @ =0x00000514
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsrs r2, r2, #0xe
	ldr r6, _080724CC @ =0x00000604
	adds r2, r2, r6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r4, #0
	orrs r3, r0
	str r7, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	mov r6, sb
	str r6, [sp, #8]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_080723F6:
	ldrh r1, [r5, #0x32]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08072406
	ldr r0, _080724D0 @ =0x00000221
	bl m4aSongNumStart
_08072406:
	ldrh r0, [r5, #0x32]
	subs r0, #1
	strh r0, [r5, #0x32]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08072424
	strh r0, [r5, #0x14]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r5, #0x30]
	ldr r0, _080724D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080724D8 @ =sub_80724E4
	str r0, [r1, #8]
_08072424:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r4, _080724DC @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x10]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	mov r2, r8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #8]
	mov r0, r8
	bl DisplaySprite
	mov r6, r8
	ldr r0, [r6, #8]
	ldr r1, _080724E0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #8]
	mov r0, r8
	bl DisplaySprite
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	bne _08072488
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	mov r1, sl
	strh r0, [r1, #0x10]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	mov r2, sl
	strh r0, [r2, #0x12]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
_08072488:
	movs r4, #0x98
	lsls r4, r4, #1
	adds r0, r5, r4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	movs r6, #0x9a
	lsls r6, r6, #1
	adds r0, r5, r6
	ldr r1, [r0]
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
_080724B8: .4byte gPseudoRandom
_080724BC: .4byte 0x00196225
_080724C0: .4byte 0x3C6EF35F
_080724C4: .4byte gSineTable
_080724C8: .4byte 0x00000514
_080724CC: .4byte 0x00000604
_080724D0: .4byte 0x00000221
_080724D4: .4byte gCurTask
_080724D8: .4byte sub_80724E4
_080724DC: .4byte gCamera
_080724E0: .4byte 0xFFFFFBFF

	thumb_func_start sub_80724E4
sub_80724E4: @ 0x080724E4
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _08072508 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r1, _0807250C @ =0x03000130
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r4, #0x14]
	cmp r1, #0
	beq _08072510
	cmp r1, #1
	beq _0807253C
	b _08072550
	.align 2, 0
_08072508: .4byte gCurTask
_0807250C: .4byte 0x03000130
_08072510:
	ldr r0, [r4]
	asrs r0, r0, #8
	str r0, [sp]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	subs r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r4]
	asrs r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	str r0, [sp, #0xc]
	ldr r1, _08072538 @ =sub_807A37C
	mov r0, sp
	bl sub_8078E34
	movs r0, #1
	b _0807254E
	.align 2, 0
_08072538: .4byte sub_807A37C
_0807253C:
	ldr r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #0x14
	ands r1, r0
	cmp r1, #0
	bne _08072550
	ldr r0, [r4, #0xc]
	strb r1, [r0]
	movs r0, #0x64
_0807254E:
	strh r0, [r4, #0x14]
_08072550:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8072558
sub_8072558: @ 0x08072558
	push {lr}
	mov ip, r0
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #0x1b]
	ldr r1, [r1, #4]
	ldr r0, _080725F0 @ =0x00036100
	cmp r1, r0
	bgt _080725EC
	movs r0, #1
	mov r2, ip
	strb r0, [r2, #0x1b]
	movs r0, #0x98
	lsls r0, r0, #1
	add r0, ip
	ldr r1, [r0]
	ldr r0, [r1, #0x14]
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1, #0x14]
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, ip
	ldr r1, [r0]
	ldr r0, [r1, #0x14]
	adds r0, r0, r2
	str r0, [r1, #0x14]
	mov r1, ip
	ldr r0, [r1, #4]
	adds r0, r0, r2
	str r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r1, [r1, #0x24]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2, #0x24]
	movs r0, #0x9c
	lsls r0, r0, #1
	add r0, ip
	ldr r0, [r0]
	cmp r0, #0
	beq _080725CA
	ldr r0, _080725F4 @ =gStageData
	adds r0, #0x98
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r1, #4]
_080725CA:
	ldr r3, _080725F8 @ =gCamera
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r3, #4]
	mov r2, ip
	ldr r0, [r2, #4]
	asrs r0, r0, #8
	adds r2, r0, #0
	subs r2, #0xb4
	str r2, [r3, #0x10]
	adds r0, #0x14
	str r0, [r3, #0x14]
	movs r0, #0
	bl sub_802B6D0
_080725EC:
	pop {r0}
	bx r0
	.align 2, 0
_080725F0: .4byte 0x00036100
_080725F4: .4byte gStageData
_080725F8: .4byte gCamera

	thumb_func_start sub_80725FC
sub_80725FC: @ 0x080725FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0, #0x1a]
	cmp r0, #2
	beq _08072618
	b _0807289E
_08072618:
	ldrh r5, [r4, #0x30]
	cmp r5, #0x64
	beq _0807270C
	cmp r5, #0x64
	bgt _0807262C
	cmp r5, #0
	beq _0807264E
	cmp r5, #0xa
	beq _08072676
	b _0807271A
_0807262C:
	movs r1, #0x96
	lsls r1, r1, #1
	cmp r5, r1
	bne _08072636
	b _0807275C
_08072636:
	cmp r5, r1
	bgt _08072642
	cmp r5, #0xc8
	bne _08072640
	b _08072748
_08072640:
	b _0807271A
_08072642:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r5, r0
	bne _0807264C
	b _08072788
_0807264C:
	b _0807271A
_0807264E:
	movs r0, #0x3c
	strh r0, [r4, #0x32]
	movs r0, #0xa
	strh r0, [r4, #0x30]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0x16]
	adds r2, r4, #0
	adds r2, #0x88
	str r5, [r2]
	adds r1, r4, #0
	adds r1, #0x8c
	adds r0, #0x18
	str r0, [r1]
	strh r5, [r4, #0x26]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x3c]
	adds r6, r2, #0
	b _080727BA
_08072676:
	ldrh r0, [r4, #0x32]
	subs r0, #1
	strh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08072690
	movs r0, #0x8c
	lsls r0, r0, #2
	bl m4aSongNumStart
	strh r5, [r4, #0x32]
	movs r0, #0x64
	strh r0, [r4, #0x30]
_08072690:
	movs r2, #0x10
	ldrsh r1, [r4, r2]
	ldr r0, [r4]
	adds r0, r0, r1
	asrs r5, r0, #8
	ldr r1, [r4, #4]
	asrs r0, r1, #8
	adds r2, r0, #0
	subs r2, #0x18
	movs r3, #0x98
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r3, [r0]
	ldr r7, _080726F8 @ =0xFFFFE800
	adds r1, r1, r7
	ldr r0, [r3, #0x14]
	adds r6, r4, #0
	adds r6, #0x88
	cmp r0, r1
	blt _080726BA
	b _080727BA
_080726BA:
	asrs r0, r0, #8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x10]
	asrs r1, r1, #8
	subs r1, r1, r5
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r4, #0x3c]
	ldr r0, _080726FC @ =0xFFFFFF00
	adds r1, r1, r0
	ldr r2, _08072700 @ =0x000003FF
	adds r5, r2, #0
	ands r1, r5
	ldrh r0, [r4, #0x26]
	movs r2, #0xa
	bl sa2__sub_808558C
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08072704
	ldrh r0, [r4, #0x26]
	adds r0, #4
	ands r0, r5
	b _080727B8
	.align 2, 0
_080726F8: .4byte 0xFFFFE800
_080726FC: .4byte 0xFFFFFF00
_08072700: .4byte 0x000003FF
_08072704:
	ldrh r0, [r4, #0x26]
	subs r0, #4
	ands r0, r5
	b _080727B8
_0807270C:
	ldrh r1, [r4, #0x32]
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _08072720
	subs r0, r1, #1
	strh r0, [r4, #0x32]
_0807271A:
	adds r6, r4, #0
	adds r6, #0x88
	b _080727BA
_08072720:
	adds r2, r4, #0
	adds r2, #0x88
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, _08072744 @ =0x00008BFF
	adds r6, r2, #0
	cmp r1, r0
	ble _080727BA
	movs r0, #0x3c
	strh r0, [r4, #0x32]
	movs r0, #0xc8
	strh r0, [r4, #0x30]
	b _080727BA
	.align 2, 0
_08072744: .4byte 0x00008BFF
_08072748:
	ldrh r0, [r4, #0x32]
	subs r0, #1
	strh r0, [r4, #0x32]
	lsls r0, r0, #0x10
	adds r6, r4, #0
	adds r6, #0x88
	cmp r0, #0
	bne _080727BA
	strh r1, [r4, #0x30]
	b _080727BA
_0807275C:
	adds r0, r4, #0
	adds r0, #0x88
	adds r3, r4, #0
	adds r3, #0x8c
	ldr r1, [r0]
	ldr r2, [r3]
	subs r1, r1, r2
	str r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bgt _080727BA
	movs r0, #0
	str r0, [r6]
	str r0, [r3]
	movs r0, #0x3c
	strh r0, [r4, #0x32]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r4, #0x30]
	movs r0, #0x78
	strh r0, [r4, #0x16]
	b _080727BA
_08072788:
	ldrh r1, [r4, #0x26]
	adds r2, r1, #0
	adds r6, r4, #0
	adds r6, #0x88
	cmp r2, #0
	beq _080727BA
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bls _080727A2
	adds r0, r1, #0
	adds r0, #8
	b _080727A6
_080727A2:
	adds r0, r1, #0
	subs r0, #8
_080727A6:
	strh r0, [r4, #0x26]
	ldrh r1, [r4, #0x26]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r6, r4, #0
	adds r6, #0x88
	cmp r1, r0
	bls _080727BA
	movs r0, #0
_080727B8:
	strh r0, [r4, #0x26]
_080727BA:
	ldr r3, [r6]
	cmp r3, #0
	beq _08072884
	movs r7, #0x10
	ldrsh r0, [r4, r7]
	ldr r1, [r4]
	adds r5, r1, r0
	ldr r0, [r4, #4]
	ldr r1, _08072878 @ =0xFFFFE800
	adds r2, r0, r1
	adds r0, r3, #0
	cmp r0, #0
	bge _080727D6
	adds r0, #7
_080727D6:
	asrs r0, r0, #3
	mov r8, r0
	ldr r0, _0807287C @ =gSineTable
	ldrh r3, [r4, #0x3c]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r1, r3, r7
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r7, #0
	ldrsh r1, [r1, r7]
	mov r7, r8
	muls r7, r1, r7
	adds r1, r7, #0
	mov sl, r0
	cmp r1, #0
	bge _080727FC
	ldr r0, _08072880 @ =0x00003FFF
	adds r1, r1, r0
_080727FC:
	asrs r1, r1, #0xe
	mov sb, r1
	lsls r0, r3, #1
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _08072816
	ldr r7, _08072880 @ =0x00003FFF
	adds r0, r0, r7
_08072816:
	asrs r0, r0, #0xe
	mov r8, r0
	movs r3, #0
	movs r0, #0x48
	adds r0, r0, r4
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x4c
	str r1, [sp]
_08072828:
	lsls r1, r3, #3
	mov r7, ip
	adds r0, r7, r1
	str r5, [r0]
	ldr r0, [sp]
	adds r1, r0, r1
	str r2, [r1]
	add r5, sb
	add r2, r8
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08072828
	ldrh r1, [r4, #0x3c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #1
	add r0, sl
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r2, [r6]
	muls r0, r2, r0
	cmp r0, #0
	bge _08072860
	ldr r7, _08072880 @ =0x00003FFF
	adds r0, r0, r7
_08072860:
	asrs r5, r0, #0xe
	lsls r0, r1, #1
	add r0, sl
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	cmp r0, #0
	bge _08072874
	ldr r2, _08072880 @ =0x00003FFF
	adds r0, r0, r2
_08072874:
	asrs r2, r0, #0xe
	b _08072888
	.align 2, 0
_08072878: .4byte 0xFFFFE800
_0807287C: .4byte gSineTable
_08072880: .4byte 0x00003FFF
_08072884:
	movs r5, #0
	movs r2, #0
_08072888:
	movs r3, #0x10
	ldrsh r1, [r4, r3]
	ldr r0, [r4]
	adds r0, r0, r1
	adds r0, r0, r5
	str r0, [r4, #0x40]
	ldr r7, _080728B0 @ =0xFFFFE800
	adds r1, r2, r7
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #0x44]
_0807289E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080728B0: .4byte 0xFFFFE800

	thumb_func_start sub_80728B4
sub_80728B4: @ 0x080728B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r0, r0, r6
	mov sb, r0
	movs r1, #0xb2
	lsls r1, r1, #1
	adds r1, r6, r1
	str r1, [sp, #4]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r0, r6, r0
	str r0, [sp, #8]
	movs r1, #0xda
	lsls r1, r1, #1
	adds r1, r6, r1
	str r1, [sp, #0xc]
	adds r4, r6, #0
	adds r4, #0xe0
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r7, _08072B68 @ =gCamera
	ldr r1, [r7]
	subs r0, r0, r1
	subs r0, #0x78
	strh r0, [r4, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x84
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	adds r0, #0x78
	strh r0, [r4, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	cmp r0, #2
	beq _0807293C
	b _08072A72
_0807293C:
	adds r4, r6, #0
	adds r4, #0x90
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x28
	movs r5, #0
	movs r0, #0x48
	adds r0, r0, r6
	mov sl, r0
	movs r1, #0x4c
	adds r1, r1, r6
	mov r8, r1
_0807296A:
	lsls r2, r5, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, r8
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0807296A
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _08072B6C @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08072B70 @ =0x03000090
	adds r7, r5, r1
	mov r0, r8
	bl sub_802C080
	cmp r0, #0
	bne _08072A04
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, _08072B74 @ =0x030000B8
	adds r7, r5, r1
	movs r4, #0
	ldr r0, _08072B78 @ =0x03000048
	adds r0, r0, r5
	mov sl, r0
	subs r1, #0x6c
	adds r5, r5, r1
_080729DE:
	lsls r2, r4, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r2, r5, r2
	ldr r2, [r2]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _080729DE
_08072A04:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r0, _08072B6C @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r1, _08072B70 @ =0x03000090
	adds r7, r5, r1
	mov r0, r8
	bl sub_802C080
	cmp r0, #0
	bne _08072A72
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, _08072B74 @ =0x030000B8
	adds r7, r5, r1
	movs r4, #0
	ldr r0, _08072B78 @ =0x03000048
	adds r0, r0, r5
	mov sl, r0
	subs r1, #0x6c
	adds r5, r5, r1
_08072A4C:
	lsls r2, r4, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r2, r5, r2
	ldr r2, [r2]
	asrs r2, r2, #8
	mov r0, r8
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08072A4C
_08072A72:
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r4, _08072B68 @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	mov r1, sb
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	mov r1, sb
	strh r0, [r1, #0x12]
	mov r0, sb
	bl UpdateSpriteAnimation
	mov r1, sb
	ldr r0, [r1, #8]
	movs r7, #0x80
	lsls r7, r7, #3
	orrs r0, r7
	str r0, [r1, #8]
	mov r0, sb
	bl DisplaySprite
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r5, _08072B7C @ =0xFFFFFBFF
	ands r0, r5
	str r0, [r1, #8]
	mov r0, sb
	bl DisplaySprite
	mov r1, sb
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _08072AEC
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	ldr r1, [sp, #4]
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	ldr r1, [sp, #4]
	strh r0, [r1, #0x12]
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r0, [sp, #4]
	bl DisplaySprite
_08072AEC:
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	ldr r1, [sp, #8]
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	ldr r1, [sp, #8]
	strh r0, [r1, #0x12]
	ldr r0, [r1, #8]
	orrs r0, r7
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	bl DisplaySprite
	ldr r1, [sp, #8]
	ldr r0, [r1, #8]
	ands r0, r5
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	bl DisplaySprite
	ldr r0, [r6]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	subs r0, #0x5c
	ldr r1, [sp, #0xc]
	strh r0, [r1, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	strh r0, [r1, #0x12]
	ldr r0, [r1, #8]
	ands r0, r5
	str r0, [r1, #8]
	movs r5, #0
_08072B40:
	ldr r0, [sp, #0xc]
	bl DisplaySprite
	ldr r1, [sp, #0xc]
	ldrh r0, [r1, #0x10]
	adds r0, #8
	strh r0, [r1, #0x10]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x16
	bls _08072B40
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072B68: .4byte gCamera
_08072B6C: .4byte gCurTask
_08072B70: .4byte 0x03000090
_08072B74: .4byte 0x030000B8
_08072B78: .4byte 0x03000048
_08072B7C: .4byte 0xFFFFFBFF

	thumb_func_start sub_8072B80
sub_8072B80: @ 0x08072B80
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r5, [r0]
	movs r4, #0x9e
	lsls r4, r4, #1
	adds r3, r2, r4
	ldr r4, [r5, #4]
	movs r6, #0x80
	lsls r6, r6, #1
	ands r4, r6
	cmp r4, #0
	beq _08072BA0
	b _08072CFA
_08072BA0:
	ldrh r1, [r2, #0x34]
	cmp r1, #0x64
	beq _08072C50
	cmp r1, #0x64
	bgt _08072BBE
	cmp r1, #0xa
	beq _08072C1C
	cmp r1, #0xa
	bgt _08072BB8
	cmp r1, #0
	beq _08072BDA
	b _08072CFA
_08072BB8:
	cmp r1, #0x14
	beq _08072BEE
	b _08072CFA
_08072BBE:
	cmp r1, #0xc8
	bne _08072BC4
	b _08072CD0
_08072BC4:
	cmp r1, #0xc8
	bgt _08072BCE
	cmp r1, #0x96
	beq _08072C8C
	b _08072CFA
_08072BCE:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	bne _08072BD8
	b _08072CE0
_08072BD8:
	b _08072CFA
_08072BDA:
	strh r4, [r2, #0x3e]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2, #0x38]
	strh r6, [r2, #0x3a]
	movs r0, #0x3c
	strh r0, [r2, #0x36]
	movs r0, #0x14
	strh r0, [r2, #0x34]
	b _08072CFA
_08072BEE:
	ldrh r0, [r2, #0x36]
	subs r0, #1
	strh r0, [r2, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08072BFC
	b _08072CFA
_08072BFC:
	adds r3, r2, #0
	adds r3, #0xe0
	ldr r0, _08072C18 @ =0x000004DA
	strh r0, [r3, #0xc]
	movs r1, #1
	strb r1, [r3, #0x1a]
	movs r4, #0x84
	lsls r4, r4, #1
	adds r3, r2, r4
	strh r0, [r3, #0xc]
	movs r0, #2
	strb r0, [r3, #0x1a]
	strh r1, [r2, #0x36]
	b _08072CDA
	.align 2, 0
_08072C18: .4byte 0x000004DA
_08072C1C:
	ldrh r0, [r2, #0x36]
	subs r0, #1
	strh r0, [r2, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08072CFA
	ldr r0, [r2, #4]
	ldr r1, [r5, #0x14]
	subs r0, r0, r1
	asrs r0, r0, #8
	cmp r0, #0
	bge _08072C36
	rsbs r0, r0, #0
_08072C36:
	cmp r0, #0x64
	ble _08072C3E
	movs r0, #0x96
	b _08072C40
_08072C3E:
	movs r0, #0x64
_08072C40:
	strh r0, [r2, #0x34]
	ldr r0, _08072C4C @ =0x0000022F
	bl m4aSongNumStart
	b _08072CFA
	.align 2, 0
_08072C4C: .4byte 0x0000022F
_08072C50:
	ldrh r0, [r2, #0x38]
	subs r0, #0x10
	ldr r3, _08072C88 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0x38]
	ldrh r0, [r2, #0x3a]
	adds r0, #0x10
	ands r0, r1
	strh r0, [r2, #0x3a]
	ldr r0, [r2, #4]
	subs r0, #0x80
	str r0, [r2, #4]
	ldrh r0, [r2, #0x3e]
	adds r0, #0x10
	strh r0, [r2, #0x3e]
	lsls r0, r0, #0x10
	movs r1, #0xaa
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08072CFA
	strh r4, [r2, #0x3e]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2, #0x38]
	strh r6, [r2, #0x3a]
	movs r0, #1
	b _08072CD8
	.align 2, 0
_08072C88: .4byte 0x000003FF
_08072C8C:
	ldrh r0, [r2, #0x38]
	subs r0, #0x10
	ldr r3, _08072CC8 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0x38]
	ldrh r0, [r2, #0x3a]
	adds r0, #0x10
	ands r0, r1
	strh r0, [r2, #0x3a]
	ldr r0, [r2, #4]
	ldr r1, _08072CCC @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r2, #0x3e]
	adds r0, #0x10
	strh r0, [r2, #0x3e]
	lsls r0, r0, #0x10
	movs r1, #0xaa
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08072CFA
	strh r4, [r2, #0x3e]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r2, #0x38]
	strh r6, [r2, #0x3a]
	movs r0, #1
	b _08072CD8
	.align 2, 0
_08072CC8: .4byte 0x000003FF
_08072CCC: .4byte 0xFFFFFF00
_08072CD0:
	ldrb r0, [r3, #0x1a]
	cmp r0, #0
	bne _08072CFA
	movs r0, #0x1e
_08072CD8:
	strh r0, [r2, #0x36]
_08072CDA:
	movs r0, #0xa
	strh r0, [r2, #0x34]
	b _08072CFA
_08072CE0:
	ldrh r0, [r2, #0x38]
	subs r0, #0x10
	ldr r3, _08072D00 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2, #0x38]
	ldrh r0, [r2, #0x3a]
	adds r0, #0x10
	ands r0, r1
	strh r0, [r2, #0x3a]
	ldr r0, [r2, #4]
	subs r0, #0x80
	str r0, [r2, #4]
_08072CFA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08072D00: .4byte 0x000003FF

	thumb_func_start sub_8072D04
sub_8072D04: @ 0x08072D04
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r6, #0x14]
	movs r5, #0
	ldr r7, _08072D9C @ =Player_800E67C
_08072D14:
	lsls r1, r5, #2
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x1c]
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	adds r1, r7, #0
	bl SetPlayerCallback
	adds r2, r4, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [r4, #4]
	ldr r0, _08072DA0 @ =0xFFFFFEFF
	ands r1, r0
	str r1, [r4, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08072D76
	adds r0, r4, #0
	bl _call_via_r7
_08072D76:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08072D14
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0
	bl CreateScreenShake
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08072D9C: .4byte Player_800E67C
_08072DA0: .4byte 0xFFFFFEFF

	thumb_func_start sub_8072DA4
sub_8072DA4: @ 0x08072DA4
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08072E48
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _08072DC0
	subs r0, #1
	strb r0, [r4, #0x12]
_08072DC0:
	ldr r0, _08072DD8 @ =gStageData
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08072DDC
	ldrb r0, [r4, #0x12]
	cmp r0, #4
	bne _08072DE8
	movs r0, #0x33
	bl sub_80299D4
	b _08072DE8
	.align 2, 0
_08072DD8: .4byte gStageData
_08072DDC:
	ldrb r0, [r4, #0x12]
	cmp r0, #3
	bne _08072DE8
	movs r0, #0x33
	bl sub_80299D4
_08072DE8:
	movs r0, #0xeb
	bl m4aSongNumStart
	bl sub_807A468
	movs r0, #0x7a
	strb r0, [r4, #0x13]
	movs r0, #2
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldr r0, _08072E34 @ =0x000004DD
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	ldr r0, _08072E38 @ =0x000004DE
	movs r1, #0
	movs r2, #0x7a
	movs r3, #0
	bl sub_8078DB0
	ldr r1, _08072E3C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08072E48
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08072E40
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _08072E48
	adds r1, r0, #0
	movs r0, #3
	bl sub_8027674
	b _08072E48
	.align 2, 0
_08072E34: .4byte 0x000004DD
_08072E38: .4byte 0x000004DE
_08072E3C: .4byte gStageData
_08072E40:
	ldrb r1, [r4, #0x12]
	movs r0, #4
	bl sub_8027674
_08072E48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8072E50
sub_8072E50: @ 0x08072E50
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r0, _08072EE4 @ =sub_8072EF0
	movs r2, #0x80
	lsls r2, r2, #6
	movs r6, #0
	str r6, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r0, r1
	ldr r2, _08072EE8 @ =0x03000018
	adds r0, r0, r2
	mov r2, r8
	str r2, [r1]
	lsls r4, r4, #8
	str r4, [r1, #4]
	lsls r5, r5, #8
	str r5, [r1, #8]
	movs r3, #0
	strh r6, [r1, #0xc]
	strh r6, [r1, #0xe]
	strb r3, [r1, #0x10]
	strb r3, [r1, #0x11]
	strb r3, [r1, #0x13]
	movs r2, #0x98
	lsls r2, r2, #1
	add r2, r8
	ldr r2, [r2]
	str r2, [r1, #0x40]
	movs r2, #0x9a
	lsls r2, r2, #1
	add r2, r8
	ldr r2, [r2]
	str r2, [r1, #0x44]
	mov r2, r8
	ldr r1, [r2, #0x20]
	str r1, [r0]
	ldr r1, _08072EEC @ =0x000004DF
	strh r1, [r0, #0xc]
	strb r3, [r0, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r0, #0x14]
	strh r6, [r0, #0xe]
	strh r6, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08072EE4: .4byte sub_8072EF0
_08072EE8: .4byte 0x03000018
_08072EEC: .4byte 0x000004DF

	thumb_func_start sub_8072EF0
sub_8072EF0: @ 0x08072EF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08072F88 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5]
	mov sb, r0
	ldr r2, _08072F8C @ =0x03000018
	adds r2, r2, r1
	mov r8, r2
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _08072F22
	ldr r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r0, r2
	str r0, [r5, #8]
_08072F22:
	movs r6, #0
	ldr r0, _08072F90 @ =0x03000040
	adds r0, r0, r1
	mov sl, r0
	movs r7, #1
_08072F2C:
	lsls r0, r6, #2
	add r0, sl
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _08072FAA
	ldr r1, [r5, #4]
	asrs r1, r1, #8
	ldr r2, [r5, #8]
	asrs r2, r2, #8
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08072F98
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, _08072F94 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, r6
	bne _08072FAA
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08072F7A
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _08072FAA
_08072F7A:
	adds r0, r7, #0
	lsls r0, r6
	ldrb r1, [r5, #0x10]
	orrs r0, r1
	strb r0, [r5, #0x10]
	strb r7, [r5, #0x11]
	b _08072FAA
	.align 2, 0
_08072F88: .4byte gCurTask
_08072F8C: .4byte 0x03000018
_08072F90: .4byte 0x03000040
_08072F94: .4byte gStageData
_08072F98:
	ldr r0, _08072FD8 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, r6
	bne _08072FAA
	adds r1, r7, #0
	lsls r1, r6
	ldrb r0, [r5, #0x10]
	bics r0, r1
	strb r0, [r5, #0x10]
_08072FAA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08072F2C
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	ldr r1, _08072FDC @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #0x10
	adds r0, r0, r2
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08072FE4
	ldr r0, _08072FE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08073026
	.align 2, 0
_08072FD8: .4byte gStageData
_08072FDC: .4byte gCamera
_08072FE0: .4byte gCurTask
_08072FE4:
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	bne _08072FF0
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	bne _08072FF8
_08072FF0:
	mov r1, sb
	ldrb r0, [r1, #0x12]
	cmp r0, #0
	bne _08073020
_08072FF8:
	ldr r1, [r5, #0x40]
	mov r0, r8
	bl ResolvePlayerSpriteCollision
	ldr r1, [r5, #0x44]
	mov r0, r8
	bl ResolvePlayerSpriteCollision
	movs r0, #0
	strb r0, [r5, #0x11]
	ldr r0, _08073038 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0807303C @ =sub_8073040
	str r0, [r1, #8]
	mov r2, sb
	ldrb r0, [r2, #0x12]
	cmp r0, #0
	bne _08073020
	movs r0, #1
	strb r0, [r5, #0x13]
_08073020:
	adds r0, r5, #0
	bl sub_8073258
_08073026:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073038: .4byte gCurTask
_0807303C: .4byte sub_8073040

	thumb_func_start sub_8073040
sub_8073040: @ 0x08073040
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08073160 @ =gCurTask
	ldr r0, [r1]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r7, r0
	ldr r0, [r4]
	mov ip, r0
	movs r2, #0x9e
	lsls r2, r2, #1
	add r2, ip
	mov r8, r2
	ldr r3, _08073164 @ =0x03000018
	adds r3, r3, r7
	mov sb, r3
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _08073078
	ldr r0, [r4, #8]
	movs r6, #0x80
	lsls r6, r6, #0xa
	adds r0, r0, r6
	str r0, [r4, #8]
_08073078:
	ldrh r0, [r4, #0xe]
	adds r0, #0x20
	strh r0, [r4, #0xe]
	movs r0, #0xe
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	mov r1, r8
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	beq _08073092
	b _08073196
_08073092:
	mov r2, ip
	movs r0, #0x13
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0807309E
	b _08073196
_0807309E:
	ldrb r0, [r2, #0x12]
	cmp r0, #0
	beq _08073196
	ldr r2, [r4, #4]
	asrs r1, r2, #8
	ldr r3, _08073168 @ =0x0300003C
	adds r0, r7, r3
	movs r5, #0
	ldrsb r5, [r0, r5]
	adds r3, r1, r5
	mov r6, ip
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	movs r1, #0xb0
	lsls r1, r1, #1
	add r1, ip
	movs r6, #0
	ldrsb r6, [r1, r6]
	adds r1, r0, r6
	mov sl, r2
	cmp r3, r1
	bgt _080730E6
	ldr r2, _0807316C @ =0x0300003E
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r3, r0
	cmp r0, r1
	bge _080730FA
	cmp r3, r1
	blt _08073196
_080730E6:
	movs r0, #0xb1
	lsls r0, r0, #1
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r1, r0
	cmp r0, r3
	blt _08073196
_080730FA:
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	mov r1, sb
	adds r1, #0x25
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r3, r0, r2
	mov r6, ip
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	mov r1, r8
	adds r1, #0x25
	movs r5, #0
	ldrsb r5, [r1, r5]
	adds r1, r0, r5
	cmp r3, r1
	bgt _08073132
	mov r0, sb
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	adds r0, r3, r0
	cmp r0, r1
	bge _08073144
	cmp r3, r1
	blt _08073196
_08073132:
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r5
	adds r0, r1, r0
	cmp r0, r3
	blt _08073196
_08073144:
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	strh r0, [r4, #0xe]
	mov r2, ip
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	cmp sl, r0
	bge _08073174
	ldr r0, _08073170 @ =0x0000FE80
	b _08073178
	.align 2, 0
_08073160: .4byte gCurTask
_08073164: .4byte 0x03000018
_08073168: .4byte 0x0300003C
_0807316C: .4byte 0x0300003E
_08073170: .4byte 0x0000FE80
_08073174:
	movs r0, #0xc0
	lsls r0, r0, #1
_08073178:
	strh r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0x12]
	ldr r6, _080731BC @ =gCurTask
	ldr r1, [r6]
	ldr r0, _080731C0 @ =sub_80731DC
	str r0, [r1, #8]
	mov r0, ip
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	bne _08073196
	mov r0, ip
	bl sub_8072DA4
_08073196:
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldr r1, _080731C4 @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _080731C8
	ldr r0, _080731BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _080731CE
	.align 2, 0
_080731BC: .4byte gCurTask
_080731C0: .4byte sub_80731DC
_080731C4: .4byte gCamera
_080731C8:
	adds r0, r4, #0
	bl sub_8073258
_080731CE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80731DC
sub_80731DC: @ 0x080731DC
	push {r4, lr}
	ldr r4, _0807323C @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldr r0, [r2]
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _080731FC
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [r2, #8]
_080731FC:
	ldrh r0, [r2, #0xe]
	adds r0, #0x20
	strh r0, [r2, #0xe]
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0xe
	ldrsh r1, [r2, r0]
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	ldrb r1, [r2, #0x12]
	subs r3, r1, #1
	strb r3, [r2, #0x12]
	asrs r0, r0, #8
	ldr r1, _08073240 @ =gCamera
	ldr r1, [r1, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0x10
	adds r0, r0, r1
	movs r1, #0xb4
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08073244
	ldr r0, [r4]
	bl TaskDestroy
	b _08073252
	.align 2, 0
_0807323C: .4byte gCurTask
_08073240: .4byte gCamera
_08073244:
	movs r0, #2
	ands r3, r0
	cmp r3, #0
	bne _08073252
	adds r0, r2, #0
	bl sub_8073258
_08073252:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8073258
sub_8073258: @ 0x08073258
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x18
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _08073290
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, _08073284 @ =gCamera
	ldr r1, [r2]
	subs r3, r0, r1
	strh r3, [r5, #0x10]
	ldr r0, _08073288 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0807328C
	adds r0, r3, #1
	b _0807329A
	.align 2, 0
_08073284: .4byte gCamera
_08073288: .4byte gStageData
_0807328C:
	subs r0, r3, #1
	b _0807329A
_08073290:
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, _080732C4 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
_0807329A:
	strh r0, [r5, #0x10]
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	beq _080732B8
	ldr r0, _080732C8 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080732BE
_080732B8:
	adds r0, r5, #0
	bl DisplaySprite
_080732BE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080732C4: .4byte gCamera
_080732C8: .4byte gStageData

	thumb_func_start sub_80732CC
sub_80732CC: @ 0x080732CC
	push {r4, lr}
	ldr r1, _08073304 @ =gStageData
	adds r4, r1, #0
	adds r4, #0x88
	ldr r1, [r4]
	ldrh r2, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r3, r2, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	cmp r1, #1
	bne _0807330C
	movs r0, #0
	strb r0, [r3, #0x12]
	adds r0, r3, #0
	bl sub_8072D04
	ldr r1, [r4]
	ldr r0, _08073308 @ =sub_80733CC
	str r0, [r1, #8]
	b _08073328
	.align 2, 0
_08073304: .4byte gStageData
_08073308: .4byte sub_80733CC
_0807330C:
	cmp r1, #1
	blt _08073328
	cmp r1, #4
	bgt _08073328
	cmp r1, #3
	blt _08073328
	ldrb r1, [r3, #0x12]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08073328
	adds r0, r3, #0
	bl sub_8072DA4
_08073328:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Task_EggChaserBossInit
Task_EggChaserBossInit: @ 0x08073330
	push {r4, r5, lr}
	ldr r4, _08073350 @ =gCurTask
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, [r5, #0xc]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08073354
	adds r0, r2, #0
	bl TaskDestroy
	b _08073374
	.align 2, 0
_08073350: .4byte gCurTask
_08073354:
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08073368
	ldr r1, [r4]
	ldr r0, _08073364 @ =sub_8073380
	b _0807336C
	.align 2, 0
_08073364: .4byte sub_8073380
_08073368:
	ldr r1, [r4]
	ldr r0, _0807337C @ =sub_8071D68
_0807336C:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_80728B4
_08073374:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807337C: .4byte sub_8071D68

	thumb_func_start sub_8073380
sub_8073380: @ 0x08073380
	push {r4, r5, lr}
	ldr r5, _080733A0 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	cmp r0, #3
	bne _080733A4
	adds r0, r2, #0
	bl TaskDestroy
	b _080733C2
	.align 2, 0
_080733A0: .4byte gCurTask
_080733A4:
	adds r0, r4, #0
	bl sub_80728B4
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	cmp r0, #2
	bne _080733C2
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080733C2
	ldr r1, [r5]
	ldr r0, _080733C8 @ =sub_8071D68
	str r0, [r1, #8]
_080733C2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080733C8: .4byte sub_8071D68

	thumb_func_start sub_80733CC
sub_80733CC: @ 0x080733CC
	push {r4, lr}
	ldr r0, _08073410 @ =gCurTask
	ldr r4, [r0]
	ldrh r3, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r2, #0
	strh r2, [r0, #0x30]
	movs r1, #1
	strh r1, [r0, #0x32]
	strh r2, [r0, #0x14]
	ldr r1, _08073414 @ =sub_80720E4
	str r1, [r4, #8]
	ldr r2, _08073418 @ =0x03000130
	adds r1, r3, r2
	ldr r2, [r1]
	ldr r1, [r2, #4]
	movs r4, #0x80
	lsls r4, r4, #0x14
	orrs r1, r4
	str r1, [r2, #4]
	ldr r1, _0807341C @ =0x03000134
	adds r3, r3, r1
	ldr r2, [r3]
	ldr r1, [r2, #4]
	orrs r1, r4
	str r1, [r2, #4]
	bl sub_80728B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08073410: .4byte gCurTask
_08073414: .4byte sub_80720E4
_08073418: .4byte 0x03000130
_0807341C: .4byte 0x03000134

	thumb_func_start sub_8073420
sub_8073420: @ 0x08073420
	push {r4, lr}
	ldr r0, _08073454 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldr r3, _08073458 @ =0x03000130
	adds r1, r2, r3
	ldr r3, [r1]
	ldr r1, [r3, #4]
	movs r4, #0x80
	lsls r4, r4, #0x14
	orrs r1, r4
	str r1, [r3, #4]
	ldr r1, _0807345C @ =0x03000134
	adds r2, r2, r1
	ldr r2, [r2]
	ldr r1, [r2, #4]
	orrs r1, r4
	str r1, [r2, #4]
	bl sub_80728B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08073454: .4byte gCurTask
_08073458: .4byte 0x03000130
_0807345C: .4byte 0x03000134

	thumb_func_start TaskDestructor_EggChaserBoss
TaskDestructor_EggChaserBoss: @ 0x08073460
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _08073478
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x20]
_08073478:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8073480
sub_8073480: @ 0x08073480
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	bl sub_802C080
	cmp r0, #0
	bne _080734E2
	adds r3, r4, #0
	adds r3, #0xe0
	ldr r1, [r4]
	asrs r1, r1, #8
	subs r1, #0x78
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r3, #0
	movs r3, #0
	bl sub_8020CE0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r3, r4, r0
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r1, #0x78
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r3, #0
	movs r3, #0
	bl sub_8020CE0
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r3, r4, r1
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	ldr r1, [r4]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, [r4, #4]
	asrs r2, r2, #8
	str r5, [sp]
	adds r0, r3, #0
	movs r3, #0
	bl sub_8020CE0
_080734E2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80734EC
sub_80734EC: @ 0x080734EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _08073564 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, #0x90
	adds r6, r5, r0
	adds r0, r7, #0
	bl sub_802C080
	cmp r0, #0
	bne _08073556
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	ldr r2, [r4, #0x44]
	asrs r2, r2, #8
	str r7, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
	ldr r1, _08073568 @ =0x030000B8
	adds r6, r5, r1
	movs r4, #0
	ldr r0, _0807356C @ =0x03000048
	adds r0, r0, r5
	mov r8, r0
	subs r1, #0x6c
	adds r5, r5, r1
_08073532:
	lsls r2, r4, #3
	mov r1, r8
	adds r0, r1, r2
	ldr r1, [r0]
	asrs r1, r1, #8
	adds r2, r5, r2
	ldr r2, [r2]
	asrs r2, r2, #8
	str r7, [sp]
	adds r0, r6, #0
	movs r3, #0
	bl sub_8020CE0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08073532
_08073556:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08073564: .4byte gCurTask
_08073568: .4byte 0x030000B8
_0807356C: .4byte 0x03000048

	thumb_func_start sub_8073570
sub_8073570: @ 0x08073570
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	ldr r0, _080735BC @ =gCamera
	ldr r0, [r0, #4]
	cmp r1, r0
	ble _080735B4
	ldr r4, _080735C0 @ =gUnknown_080D5888
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r5, #0
	bl sub_8072E50
	ldrb r0, [r5, #0x1a]
	lsls r0, r0, #2
	adds r4, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	ldrh r1, [r5, #0x24]
	adds r0, r0, r1
	strh r0, [r5, #0x24]
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bls _080735B4
	movs r0, #0
	strb r0, [r5, #0x1a]
_080735B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080735BC: .4byte gCamera
_080735C0: .4byte gUnknown_080D5888

	thumb_func_start sub_80735C4
sub_80735C4: @ 0x080735C4
	push {lr}
	adds r3, r0, #0
	movs r1, #0xab
	lsls r1, r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080735FC
	ldrb r0, [r3, #0x12]
	movs r1, #9
	subs r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r2, [r3, #0x18]
	adds r0, r0, r2
	strh r0, [r3, #0x18]
	ldr r2, _08073600 @ =gSineTable
	ldr r1, _08073604 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #5
	subs r0, r0, r1
	asrs r0, r0, #5
	strh r0, [r3, #0x10]
_080735FC:
	pop {r0}
	bx r0
	.align 2, 0
_08073600: .4byte gSineTable
_08073604: .4byte 0x000003FF

	thumb_func_start sub_8073608
sub_8073608: @ 0x08073608
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #4]
	asrs r2, r0, #8
	ldr r0, _08073620 @ =0x00000513
	cmp r2, r0
	ble _08073628
	ldr r1, _08073624 @ =gCamera
	adds r0, r2, #0
	subs r0, #0xa0
	b _0807362E
	.align 2, 0
_08073620: .4byte 0x00000513
_08073624: .4byte gCamera
_08073628:
	ldr r1, _0807363C @ =gCamera
	adds r0, r2, #0
	subs r0, #0xb4
_0807362E:
	str r0, [r1, #0x10]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	adds r0, #0x14
	str r0, [r1, #0x14]
	pop {r0}
	bx r0
	.align 2, 0
_0807363C: .4byte gCamera
