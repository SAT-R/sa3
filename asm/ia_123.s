.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable123
CreateEntity_Interactable123: @ 0x0804A938
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
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
	ldr r0, _0804A9F0 @ =sub_804AA08
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804A9F4 @ =sub_804AE64
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, r8
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	ldr r6, _0804A9F8 @ =0x0300005C
	adds r1, r3, r6
	strb r2, [r1]
	ldr r7, _0804A9FC @ =0x0300005D
	adds r1, r3, r7
	strb r2, [r1]
	mov r2, r8
	ldrb r1, [r2, #5]
	lsls r1, r1, #2
	adds r6, #2
	adds r2, r3, r6
	strh r1, [r2]
	ldr r1, _0804AA00 @ =gStageData
	ldr r2, [r1, #0x1c]
	adds r7, #3
	adds r1, r3, r7
	strh r2, [r1]
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	adds r6, #4
	adds r4, r3, r6
	strh r1, [r4]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	adds r7, #4
	adds r2, r3, r7
	strh r1, [r2]
	ldr r1, _0804AA04 @ =0x0300000C
	adds r5, r3, r1
	ldrh r1, [r4]
	strh r1, [r5, #0x10]
	ldrh r1, [r2]
	strh r1, [r5, #0x12]
	subs r6, #0x2e
	adds r5, r3, r6
	ldrh r1, [r4]
	strh r1, [r5, #0x10]
	ldrh r1, [r2]
	strh r1, [r5, #0x12]
	movs r7, #2
	rsbs r7, r7, #0
	adds r1, r7, #0
	mov r2, r8
	strb r1, [r2]
	bl sub_804AC58
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A9F0: .4byte sub_804AA08
_0804A9F4: .4byte sub_804AE64
_0804A9F8: .4byte 0x0300005C
_0804A9FC: .4byte 0x0300005D
_0804AA00: .4byte gStageData
_0804AA04: .4byte 0x0300000C

	thumb_func_start sub_804AA08
sub_804AA08: @ 0x0804AA08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _0804AA64 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	ldr r1, _0804AA68 @ =0x0300005C
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _0804AA78
	ldr r2, _0804AA6C @ =0x03000062
	adds r0, r3, r2
	ldr r4, _0804AA70 @ =0x0300005E
	adds r2, r3, r4
	ldrh r1, [r0]
	ldrh r2, [r2]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	ldr r1, _0804AA74 @ =0x03000064
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	adds r1, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	b _0804AA88
	.align 2, 0
_0804AA64: .4byte gCurTask
_0804AA68: .4byte 0x0300005C
_0804AA6C: .4byte 0x03000062
_0804AA70: .4byte 0x0300005E
_0804AA74: .4byte 0x03000064
_0804AA78:
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #0
	str r3, [sp, #0xc]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #0
	str r0, [sp, #0x10]
_0804AA88:
	movs r1, #0
	mov r2, sl
	adds r2, #0x62
	str r2, [sp, #0x18]
	movs r3, #0x5e
	add r3, sl
	mov r8, r3
	mov r4, sl
	adds r4, #0x64
	str r4, [sp, #0x1c]
	movs r0, #0x5c
	add r0, sl
	mov sb, r0
	subs r2, #2
	str r2, [sp, #0x14]
_0804AAA6:
	lsls r0, r1, #0x10
	str r0, [sp, #0x20]
	cmp r0, #0
	bne _0804AAB8
	ldr r0, _0804AAB4 @ =gStageData
	ldrb r1, [r0, #6]
	b _0804AAC2
	.align 2, 0
_0804AAB4: .4byte gStageData
_0804AAB8:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0804AAC2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804AAF8 @ =gPlayers
	adds r6, r0, r1
	movs r2, #0
_0804AAD2:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xc
	mov r3, sl
	adds r7, r3, r0
	ldr r4, [sp, #0x18]
	movs r0, #0
	ldrsh r3, [r4, r0]
	str r2, [sp, #0x24]
	cmp r1, #0
	beq _0804AAFC
	mov r1, r8
	ldrh r0, [r1]
	adds r0, r3, r0
	b _0804AB02
	.align 2, 0
_0804AAF8: .4byte gPlayers
_0804AAFC:
	mov r2, r8
	ldrh r0, [r2]
	subs r0, r3, r0
_0804AB02:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, [sp, #0x1c]
	ldrh r5, [r3]
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0804ABEA
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	str r0, [sp]
	adds r0, r7, #0
	adds r3, r6, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _0804AB3E
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	b _0804AB5A
_0804AB3E:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0804AB5A
	ldr r1, [r6, #0x14]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r1, r4
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r6, #0x14]
	strh r3, [r6, #0x1a]
_0804AB5A:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0804AB76
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r6, #0x10]
	adds r1, r1, r0
	str r1, [r6, #0x10]
	movs r0, #0
	strh r0, [r6, #0x18]
	strh r0, [r6, #0x1c]
_0804AB76:
	mov r0, sb
	ldrb r3, [r0]
	cmp r3, #2
	beq _0804ABEA
	ldr r0, [r6, #0x10]
	lsls r0, r0, #8
	ldr r1, [r6, #0x14]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	asrs r2, r0, #0x10
	ldr r4, [sp, #4]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	ble _0804ABEA
	ldr r4, [sp, #0xc]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804ABEA
	lsls r0, r1, #0x10
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	asrs r2, r0, #0x10
	cmp r0, r1
	ble _0804ABEA
	ldr r4, [sp, #0x10]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _0804ABEA
	cmp r3, #0
	bne _0804ABD2
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #8
	beq _0804ABEA
	cmp r1, #0x14
	beq _0804ABEA
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	b _0804ABEA
_0804ABD2:
	mov r2, r8
	ldrh r0, [r2]
	cmp r0, #0x25
	bhi _0804ABEA
	adds r0, r6, #0
	bl sub_802C080
	cmp r0, #0
	bne _0804ABEA
	adds r0, r6, #0
	bl sub_8008E38
_0804ABEA:
	ldr r3, [sp, #0x24]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r3, r4
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804ABFC
	b _0804AAD2
_0804ABFC:
	ldr r1, [sp, #0x20]
	adds r0, r1, r4
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0804AC0A
	b _0804AAA6
_0804AC0A:
	mov r2, sb
	ldrb r0, [r2]
	ldr r2, _0804AC54 @ =gStageData
	cmp r0, #1
	bne _0804AC3A
	ldr r0, [r2, #0x1c]
	ldr r3, [sp, #0x14]
	ldrh r1, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r4, r8
	ldrh r0, [r4]
	cmp r0, #0x20
	bls _0804AC34
	subs r0, r0, r1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bhi _0804AC3A
_0804AC34:
	movs r0, #2
	mov r1, sb
	strb r0, [r1]
_0804AC3A:
	ldr r0, [r2, #0x1c]
	ldr r2, [sp, #0x14]
	strh r0, [r2]
	bl sub_804ACF0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AC54: .4byte gStageData

	thumb_func_start sub_804AC58
sub_804AC58: @ 0x0804AC58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0x1b
	bl VramMalloc
	str r0, [r7, #0x68]
	adds r1, r7, #0
	adds r1, #0xc
	str r0, [r7, #0xc]
	movs r5, #0
	movs r4, #0
	ldr r0, _0804ACE8 @ =0x000003A2
	mov sl, r0
	mov r0, sl
	strh r0, [r1, #0xc]
	strb r5, [r1, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	mov sb, r0
	mov r0, sb
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r5, [r1, #0x1f]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r1, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	adds r1, r7, #0
	adds r1, #0x34
	ldr r0, [r7, #0x68]
	str r0, [r7, #0x34]
	mov r0, sl
	strh r0, [r1, #0xc]
	strb r5, [r1, #0x1a]
	mov r0, sb
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	adds r0, r6, #0
	strb r0, [r1, #0x1b]
	mov r0, r8
	strb r0, [r1, #0x1c]
	strb r5, [r1, #0x1f]
	str r6, [r1, #0x20]
	ldr r0, _0804ACEC @ =0x00081400
	str r0, [r1, #8]
	adds r0, r1, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ACE8: .4byte 0x000003A2
_0804ACEC: .4byte 0x00081400

	thumb_func_start sub_804ACF0
sub_804ACF0: @ 0x0804ACF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0804AD58 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0]
	mov sb, r0
	ldr r1, _0804AD5C @ =0x03000062
	adds r0, r4, r1
	ldrh r1, [r0]
	ldr r2, _0804AD60 @ =0x03000064
	adds r0, r4, r2
	ldrh r2, [r0]
	lsls r7, r1, #0x10
	asrs r0, r7, #0x10
	lsls r5, r2, #0x10
	asrs r1, r5, #0x10
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804ADBC
	movs r2, #0
	ldr r3, _0804AD64 @ =gPlayers
_0804AD2E:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xc
	mov r4, r8
	adds r5, r4, r0
	movs r1, #0
	adds r7, r2, #0
_0804AD42:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _0804AD68
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0804AD6C
	.align 2, 0
_0804AD58: .4byte gCurTask
_0804AD5C: .4byte 0x03000062
_0804AD60: .4byte 0x03000064
_0804AD64: .4byte gPlayers
_0804AD68:
	ldr r0, _0804ADB4 @ =gStageData
	ldrb r1, [r0, #6]
_0804AD6C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r3
	adds r0, r5, #0
	adds r1, r6, #0
	str r3, [sp]
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp]
	cmp r0, #1
	ble _0804AD42
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r7, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804AD2E
	mov r4, r8
	ldrb r0, [r4, #0xa]
	mov r1, sb
	strb r0, [r1]
	ldr r0, _0804ADB8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0804AE4E
	.align 2, 0
_0804ADB4: .4byte gStageData
_0804ADB8: .4byte gCurTask
_0804ADBC:
	movs r3, #0
	mov sl, r7
	mov sb, r5
	ldr r2, _0804ADF0 @ =0x0300005E
	adds r7, r4, r2
_0804ADC6:
	lsls r3, r3, #0x10
	asrs r2, r3, #0x10
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0xc
	mov r4, r8
	adds r5, r4, r0
	ldr r0, _0804ADF4 @ =gCamera
	ldr r1, [r0]
	mov r4, sl
	asrs r0, r4, #0x10
	subs r1, r0, r1
	strh r1, [r5, #0x10]
	adds r6, r3, #0
	cmp r2, #0
	bne _0804ADF8
	ldrh r0, [r7]
	subs r0, r1, r0
	b _0804ADFC
	.align 2, 0
_0804ADF0: .4byte 0x0300005E
_0804ADF4: .4byte gCamera
_0804ADF8:
	ldrh r0, [r7]
	adds r0, r1, r0
_0804ADFC:
	strh r0, [r5, #0x10]
	ldr r0, _0804AE20 @ =gCamera
	ldr r1, [r0, #4]
	mov r2, sb
	asrs r0, r2, #0x10
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	movs r1, #0
_0804AE0C:
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	beq _0804AE24
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	b _0804AE2A
	.align 2, 0
_0804AE20: .4byte gCamera
_0804AE24:
	ldr r0, [r5, #8]
	ldr r1, _0804AE60 @ =0xFFFFF7FF
	ands r0, r1
_0804AE2A:
	str r0, [r5, #8]
	adds r0, r5, #0
	bl DisplaySprite
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804AE0C
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r6, r2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0804ADC6
_0804AE4E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AE60: .4byte 0xFFFFF7FF

	thumb_func_start sub_804AE64
sub_804AE64: @ 0x0804AE64
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x68]
	bl VramFree
	pop {r0}
	bx r0
