.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
.endif

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

	thumb_func_start TaskDestructor_ClosingWall
TaskDestructor_ClosingWall: @ 0x0804AE64
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x68]
	bl VramFree
	pop {r0}
	bx r0
