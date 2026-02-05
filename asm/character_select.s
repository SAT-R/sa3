.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ --- Start of Character Select ---

.if 0
.endif

	thumb_func_start sub_809AC44
sub_809AC44: @ 0x0809AC44
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r3, #0
	cmp r1, #0
	beq _0809AC9E
	ldr r4, _0809AC6C @ =0xFFFFF820
	ldr r1, [r2, #0x34]
	ldr r0, _0809AC70 @ =0x000077FF
	cmp r1, r0
	bgt _0809AC78
	movs r5, #0xc0
	lsls r5, r5, #3
	adds r0, r1, r5
	str r0, [r2, #0x34]
	ldr r0, [r2, #0x54]
	ldr r1, _0809AC74 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r2, #0x54]
	b _0809AC86
	.align 2, 0
_0809AC6C: .4byte 0xFFFFF820
_0809AC70: .4byte 0x000077FF
_0809AC74: .4byte 0xFFFFFA00
_0809AC78:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x34]
	movs r0, #0xc9
	lsls r0, r0, #8
	str r0, [r2, #0x54]
	movs r3, #1
_0809AC86:
	ldr r0, [r2, #0x44]
	cmp r0, #0
	ble _0809AC9A
	adds r0, r0, r4
	str r0, [r2, #0x44]
	cmp r0, #0
	bge _0809ACF8
	movs r0, #0
	str r0, [r2, #0x44]
	b _0809ACF8
_0809AC9A:
	movs r0, #0
	b _0809ACF0
_0809AC9E:
	movs r4, #0xfc
	lsls r4, r4, #3
	ldr r1, [r2, #0x34]
	asrs r0, r1, #8
	cmp r0, #0x3c
	ble _0809ACC0
	ldr r5, _0809ACBC @ =0xFFFFFA00
	adds r0, r1, r5
	str r0, [r2, #0x34]
	ldr r0, [r2, #0x54]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r2, #0x54]
	b _0809ACCC
	.align 2, 0
_0809ACBC: .4byte 0xFFFFFA00
_0809ACC0:
	movs r0, #0xf0
	lsls r0, r0, #6
	str r0, [r2, #0x34]
	ldr r0, _0809ACE4 @ =0x00010500
	str r0, [r2, #0x54]
	movs r3, #1
_0809ACCC:
	ldr r1, [r2, #0x44]
	ldr r0, _0809ACE8 @ =0x000077FF
	cmp r1, r0
	bgt _0809ACEC
	adds r0, r1, r4
	str r0, [r2, #0x44]
	movs r1, #0xf0
	lsls r1, r1, #7
	cmp r0, r1
	ble _0809ACF8
	str r1, [r2, #0x44]
	b _0809ACF8
	.align 2, 0
_0809ACE4: .4byte 0x00010500
_0809ACE8: .4byte 0x000077FF
_0809ACEC:
	movs r0, #0xf0
	lsls r0, r0, #7
_0809ACF0:
	str r0, [r2, #0x44]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0809ACF8:
	cmp r3, #2
	beq _0809AD00
	movs r0, #0
	b _0809AD02
_0809AD00:
	movs r0, #1
_0809AD02:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_809AD08
sub_809AD08: @ 0x0809AD08
	push {lr}
	adds r3, r0, #0
	movs r2, #0x20
	ldrb r0, [r3, #7]
	cmp r0, #1
	bne _0809AD1E
	ldr r0, _0809AD30 @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #1
	bls _0809AD1E
	movs r2, #0x22
_0809AD1E:
	ldr r0, _0809AD34 @ =gMultiSioStatusFlags
	ldr r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809AD38
	movs r0, #2
	b _0809AD3A
	.align 2, 0
_0809AD30: .4byte gStageData
_0809AD34: .4byte gMultiSioStatusFlags
_0809AD38:
	movs r0, #1
_0809AD3A:
	ands r1, r0
	cmp r1, #0
	bne _0809AD42
	movs r2, #0x21
_0809AD42:
	cmp r2, #0x21
	bne _0809AD4C
	ldrh r0, [r3, #0x16]
	adds r0, #1
	strh r0, [r3, #0x16]
_0809AD4C:
	ldrh r0, [r3, #0x16]
	cmp r0, #0x77
	bls _0809AD6C
	cmp r2, #0x21
	beq _0809AD64
	cmp r2, #0x21
	bgt _0809AD60
	cmp r2, #0x20
	beq _0809AD6C
	b _0809AD68
_0809AD60:
	cmp r2, #0x22
	bne _0809AD68
_0809AD64:
	movs r0, #0
	b _0809AD6E
_0809AD68:
	movs r0, #0
	strh r0, [r3, #0x16]
_0809AD6C:
	movs r0, #1
_0809AD6E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809AD74
sub_809AD74: @ 0x0809AD74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x74
	movs r0, #2
	mov sb, r0
	ldrb r0, [r5, #0xb]
	movs r1, #0x78
	cmp r0, #0xd
	bls _0809AD90
	movs r1, #0xb4
_0809AD90:
	movs r6, #0
	movs r0, #0x28
	rsbs r0, r0, #0
	adds r0, r0, r1
	mov r8, r0
	adds r7, r1, #0
	adds r7, #0x28
_0809AD9E:
	cmp r6, #0
	beq _0809ADAC
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #8
	mov r1, r8
	subs r0, r1, r0
	b _0809ADB2
_0809ADAC:
	ldr r0, [r5, #0x5c]
	asrs r0, r0, #8
	adds r0, r7, r0
_0809ADB2:
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x60]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	cmp r6, #0
	beq _0809ADC8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0809ADCE
_0809ADC8:
	ldr r0, [r4, #8]
	ldr r1, _0809ADEC @ =0xFFFFFBFF
	ands r0, r1
_0809ADCE:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, sb
	blo _0809AD9E
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809ADEC: .4byte 0xFFFFFBFF

	thumb_func_start sub_809ADF0
sub_809ADF0: @ 0x0809ADF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0xc4
_0809ADFA:
	ldr r0, [r5, #0x2c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	cmp r6, #0
	beq _0809AE18
	ldr r0, [r4, #8]
	ldr r1, _0809AE14 @ =0xFFFFFBFF
	ands r0, r1
	b _0809AE20
	.align 2, 0
_0809AE14: .4byte 0xFFFFFBFF
_0809AE18:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0809AE20:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0809ADFA
	adds r4, r5, #0
	adds r4, #0x9c
	ldr r0, [r5, #0x24]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0x28]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809AE50
sub_809AE50: @ 0x0809AE50
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r4, r6, r0
	movs r7, #0
_0809AE5E:
	ldr r0, [r6, #0x64]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	strb r7, [r4, #0x1f]
	cmp r5, #0
	beq _0809AE7A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0809AE80
_0809AE7A:
	ldr r0, [r4, #8]
	ldr r1, _0809AEC0 @ =0xFFFFFBFF
	ands r0, r1
_0809AE80:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0809AE5E
	ldrb r1, [r6, #0xa]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
	ldr r1, _0809AEC4 @ =gUnknown_080D8F18
	ldrb r0, [r6, #5]
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r4, r6, #0
	adds r4, #0xec
	ldr r1, _0809AEC8 @ =gLoadedSaveGame
	ldr r0, _0809AECC @ =gUnknown_080D946D
	adds r0, r2, r0
	ldrb r1, [r1, #0x10]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0809AED4
	ldr r1, _0809AED0 @ =gUnknown_080D8E80
	lsls r0, r3, #3
	adds r0, #6
	b _0809AEDA
	.align 2, 0
_0809AEC0: .4byte 0xFFFFFBFF
_0809AEC4: .4byte gUnknown_080D8F18
_0809AEC8: .4byte gLoadedSaveGame
_0809AECC: .4byte gUnknown_080D946D
_0809AED0: .4byte gUnknown_080D8E80
_0809AED4:
	ldr r1, _0809AF04 @ =gUnknown_080D8E80
	lsls r0, r3, #3
	adds r0, r2, r0
_0809AEDA:
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r0, [r6, #0x64]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809AF04: .4byte gUnknown_080D8E80

	thumb_func_start sub_809AF08
sub_809AF08: @ 0x0809AF08
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r4, r6, r0
_0809AF14:
	ldr r0, [r6, #0x6c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	movs r0, #1
	strb r0, [r4, #0x1f]
	cmp r5, #0
	beq _0809AF32
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0809AF38
_0809AF32:
	ldr r0, [r4, #8]
	ldr r1, _0809AF78 @ =0xFFFFFBFF
	ands r0, r1
_0809AF38:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0809AF14
	ldrb r1, [r6, #0xa]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
	ldr r1, _0809AF7C @ =gUnknown_080D8F18
	ldrb r0, [r6, #6]
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r1, _0809AF80 @ =gLoadedSaveGame
	ldr r0, _0809AF84 @ =gUnknown_080D946D
	adds r0, r2, r0
	ldrb r1, [r1, #0x10]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0809AF8C
	ldr r1, _0809AF88 @ =gUnknown_080D8E80
	lsls r0, r3, #3
	adds r0, #6
	b _0809AF92
	.align 2, 0
_0809AF78: .4byte 0xFFFFFBFF
_0809AF7C: .4byte gUnknown_080D8F18
_0809AF80: .4byte gLoadedSaveGame
_0809AF84: .4byte gUnknown_080D946D
_0809AF88: .4byte gUnknown_080D8E80
_0809AF8C:
	ldr r1, _0809AFBC @ =gUnknown_080D8E80
	lsls r0, r3, #3
	adds r0, r2, r0
_0809AF92:
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	ldr r0, [r6, #0x6c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809AFBC: .4byte gUnknown_080D8E80

	thumb_func_start sub_809AFC0
sub_809AFC0: @ 0x0809AFC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldrb r1, [r6, #5]
	ldrb r2, [r6, #6]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	beq _0809AFE4
	lsls r0, r1, #3
	adds r0, r0, r2
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, _0809AFE0 @ =gUnknown_080D8F95
	b _0809AFEE
	.align 2, 0
_0809AFE0: .4byte gUnknown_080D8F95
_0809AFE4:
	lsls r0, r1, #3
	adds r0, r0, r2
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, _0809B018 @ =gUnknown_080D8F1D
_0809AFEE:
	adds r7, r1, r0
	movs r5, #0
	movs r0, #0xec
	adds r0, r0, r6
	mov r8, r0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r4, r6, r0
_0809AFFE:
	movs r0, #0x78
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	cmp r5, #0
	beq _0809B01C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0809B022
	.align 2, 0
_0809B018: .4byte gUnknown_080D8F1D
_0809B01C:
	ldr r0, [r4, #8]
	ldr r1, _0809B090 @ =0xFFFFFBFF
	ands r0, r1
_0809B022:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0809AFFE
	mov r4, r8
	ldrb r0, [r7]
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r4, r6, r0
	ldrb r0, [r7, #1]
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x68]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r4, r6, r0
	ldrb r0, [r7, #2]
	strh r0, [r4, #0x10]
	ldr r0, [r6, #0x70]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809B090: .4byte 0xFFFFFBFF

	thumb_func_start sub_809B094
sub_809B094: @ 0x0809B094
	ldr r2, _0809B0C0 @ =gBgScrollRegs
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	strh r1, [r2]
	ldr r1, [r0, #0x48]
	asrs r1, r1, #8
	strh r1, [r2, #2]
	ldr r1, [r0, #0x54]
	asrs r1, r1, #8
	strh r1, [r2, #4]
	ldr r1, [r0, #0x58]
	asrs r1, r1, #8
	rsbs r1, r1, #0
	strh r1, [r2, #6]
	ldr r1, [r0, #0x4c]
	asrs r1, r1, #8
	strh r1, [r2, #8]
	ldr r0, [r0, #0x50]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r2, #0xa]
	bx lr
	.align 2, 0
_0809B0C0: .4byte gBgScrollRegs

	thumb_func_start Task_CharacterSelectInit
Task_CharacterSelectInit: @ 0x0809B0C4
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _0809B100 @ =gCurTask
	ldr r0, [r6]
	ldrh r3, [r0, #6]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r5, r3, r5
	ldr r1, _0809B104 @ =0x03000003
	adds r0, r3, r1
	ldr r2, _0809B108 @ =0x0300000B
	adds r1, r3, r2
	ldr r4, _0809B10C @ =0x0300003C
	adds r2, r3, r4
	adds r4, #4
	adds r3, r3, r4
	ldr r4, [r5, #0x1c]
	str r4, [sp]
	bl sub_809BF3C
	str r0, [r5, #0x20]
	ldrb r0, [r5, #7]
	cmp r0, #1
	bne _0809B114
	bl sub_8024068
	ldr r1, [r6]
	ldr r0, _0809B110 @ =Task_80981A8
	b _0809B12C
	.align 2, 0
_0809B100: .4byte gCurTask
_0809B104: .4byte 0x03000003
_0809B108: .4byte 0x0300000B
_0809B10C: .4byte 0x0300003C
_0809B110: .4byte Task_80981A8
_0809B114:
	cmp r0, #2
	bne _0809B128
	bl sub_80258D4
	ldr r1, [r6]
	ldr r0, _0809B124 @ =Task_80981A8
	b _0809B12C
	.align 2, 0
_0809B124: .4byte Task_80981A8
_0809B128:
	ldr r1, [r6]
	ldr r0, _0809B138 @ =Task_80983E8
_0809B12C:
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809B138: .4byte Task_80983E8

	thumb_func_start sub_809B13C
sub_809B13C: @ 0x0809B13C
	ldrh r1, [r0, #0x12]
	adds r1, #0xc0
	strh r1, [r0, #0x12]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_809B148
sub_809B148: @ 0x0809B148
	push {lr}
	adds r1, r0, #0
	movs r2, #0x78
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0809B168
	ldr r0, [r1, #0x3c]
	ldr r3, _0809B164 @ =0xFFFFF200
	adds r0, r0, r3
	str r0, [r1, #0x3c]
	lsls r2, r2, #8
	cmp r0, r2
	bgt _0809B17E
	b _0809B178
	.align 2, 0
_0809B164: .4byte 0xFFFFF200
_0809B168:
	ldr r0, [r1, #0x3c]
	movs r3, #0xe0
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1, #0x3c]
	lsls r2, r2, #8
	cmp r0, r2
	blt _0809B17E
_0809B178:
	str r2, [r1, #0x3c]
	movs r0, #1
	b _0809B180
_0809B17E:
	movs r0, #0
_0809B180:
	pop {r1}
	bx r1

	thumb_func_start sub_809B184
sub_809B184: @ 0x0809B184
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x68]
	movs r3, #0x91
	lsls r3, r3, #8
	cmp r1, r3
	bgt _0809B198
	str r3, [r2, #0x68]
	movs r0, #1
	b _0809B1A8
_0809B198:
	ldr r0, _0809B1AC @ =0xFFFFFA00
	adds r1, r1, r0
	str r1, [r2, #0x68]
	ldr r0, _0809B1B0 @ =0x000090FF
	cmp r1, r0
	bgt _0809B1A6
	str r3, [r2, #0x68]
_0809B1A6:
	movs r0, #0
_0809B1A8:
	pop {r1}
	bx r1
	.align 2, 0
_0809B1AC: .4byte 0xFFFFFA00
_0809B1B0: .4byte 0x000090FF

	thumb_func_start sub_809B1B4
sub_809B1B4: @ 0x0809B1B4
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x70]
	movs r3, #0x91
	lsls r3, r3, #8
	cmp r1, r3
	bgt _0809B1C8
	str r3, [r2, #0x70]
	movs r0, #1
	b _0809B1D8
_0809B1C8:
	ldr r0, _0809B1DC @ =0xFFFFFA00
	adds r1, r1, r0
	str r1, [r2, #0x70]
	ldr r0, _0809B1E0 @ =0x000090FF
	cmp r1, r0
	bgt _0809B1D6
	str r3, [r2, #0x70]
_0809B1D6:
	movs r0, #0
_0809B1D8:
	pop {r1}
	bx r1
	.align 2, 0
_0809B1DC: .4byte 0xFFFFFA00
_0809B1E0: .4byte 0x000090FF

	thumb_func_start sub_809B1E4
sub_809B1E4: @ 0x0809B1E4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _0809B20C
	ldr r0, [r2, #0x3c]
	ldr r1, _0809B204 @ =0xFFFFF200
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	ldr r1, _0809B208 @ =0xFFFFA600
	cmp r0, r1
	bgt _0809B22C
	movs r0, #0x96
	lsls r0, r0, #9
	b _0809B21E
	.align 2, 0
_0809B204: .4byte 0xFFFFF200
_0809B208: .4byte 0xFFFFA600
_0809B20C:
	ldr r0, [r2, #0x3c]
	movs r1, #0xe0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	ldr r1, _0809B224 @ =0x000149FF
	cmp r0, r1
	ble _0809B22C
	ldr r0, _0809B228 @ =0xFFFFC400
_0809B21E:
	str r0, [r2, #0x3c]
	movs r0, #1
	b _0809B22E
	.align 2, 0
_0809B224: .4byte 0x000149FF
_0809B228: .4byte 0xFFFFC400
_0809B22C:
	movs r0, #0
_0809B22E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809B234
sub_809B234: @ 0x0809B234
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x68]
	ldr r0, _0809B248 @ =0x0000B3FF
	cmp r2, r0
	ble _0809B24C
	adds r0, #1
	str r0, [r1, #0x68]
	movs r0, #1
	b _0809B256
	.align 2, 0
_0809B248: .4byte 0x0000B3FF
_0809B24C:
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r2, r3
	str r0, [r1, #0x68]
	movs r0, #0
_0809B256:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809B25C
sub_809B25C: @ 0x0809B25C
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x70]
	ldr r0, _0809B270 @ =0x0000B3FF
	cmp r2, r0
	ble _0809B274
	adds r0, #1
	str r0, [r1, #0x70]
	movs r0, #1
	b _0809B27E
	.align 2, 0
_0809B270: .4byte 0x0000B3FF
_0809B274:
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r0, r2, r3
	str r0, [r1, #0x70]
	movs r0, #0
_0809B27E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809B284
sub_809B284: @ 0x0809B284
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x5c]
	ldr r0, _0809B298 @ =0x000004FF
	cmp r2, r0
	bgt _0809B29C
	adds r0, r2, #0
	adds r0, #0x40
	b _0809B29E
	.align 2, 0
_0809B298: .4byte 0x000004FF
_0809B29C:
	movs r0, #0
_0809B29E:
	str r0, [r1, #0x5c]
	movs r0, #0xb4
	lsls r0, r0, #7
	str r0, [r1, #0x60]
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_809B2AC
sub_809B2AC: @ 0x0809B2AC
	push {lr}
	adds r1, r0, #0
	movs r2, #0x78
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0809B2CC
	ldr r0, [r1, #0x4c]
	ldr r3, _0809B2C8 @ =0xFFFFF200
	adds r0, r0, r3
	str r0, [r1, #0x4c]
	lsls r2, r2, #8
	cmp r0, r2
	bgt _0809B2DE
	b _0809B2DC
	.align 2, 0
_0809B2C8: .4byte 0xFFFFF200
_0809B2CC:
	ldr r0, [r1, #0x4c]
	movs r3, #0xe0
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1, #0x4c]
	lsls r2, r2, #8
	cmp r0, r2
	blt _0809B2DE
_0809B2DC:
	str r2, [r1, #0x4c]
_0809B2DE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809B2E4
sub_809B2E4: @ 0x0809B2E4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _0809B30C
	ldr r0, [r2, #0x4c]
	ldr r1, _0809B304 @ =0xFFFFF200
	adds r0, r0, r1
	str r0, [r2, #0x4c]
	ldr r1, _0809B308 @ =0xFFFFA600
	cmp r0, r1
	bgt _0809B320
	movs r0, #0x96
	lsls r0, r0, #9
	b _0809B31E
	.align 2, 0
_0809B304: .4byte 0xFFFFF200
_0809B308: .4byte 0xFFFFA600
_0809B30C:
	ldr r0, [r2, #0x4c]
	movs r1, #0xe0
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r2, #0x4c]
	ldr r1, _0809B324 @ =0x000149FF
	cmp r0, r1
	ble _0809B320
	ldr r0, _0809B328 @ =0xFFFFC400
_0809B31E:
	str r0, [r2, #0x4c]
_0809B320:
	pop {r0}
	bx r0
	.align 2, 0
_0809B324: .4byte 0x000149FF
_0809B328: .4byte 0xFFFFC400

	thumb_func_start sub_809B32C
sub_809B32C: @ 0x0809B32C
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r0, #0xa0
	lsls r0, r0, #3
	movs r4, #0xf0
	lsls r4, r4, #2
	adds r3, r0, r4
	movs r5, #0xd0
	lsls r5, r5, #2
	adds r4, r0, r5
	cmp r1, #0
	beq _0809B378
	ldr r1, [r2, #0x3c]
	ldr r0, _0809B358 @ =0x00012BFF
	cmp r1, r0
	ble _0809B35C
	adds r0, #1
	str r0, [r2, #0x3c]
	movs r0, #1
	b _0809B3AC
	.align 2, 0
_0809B358: .4byte 0x00012BFF
_0809B35C:
	adds r0, r1, r3
	str r0, [r2, #0x3c]
	movs r1, #0x96
	lsls r1, r1, #9
	cmp r0, r1
	ble _0809B36A
	str r1, [r2, #0x3c]
_0809B36A:
	ldr r0, [r2, #0x4c]
	adds r0, r0, r4
	str r0, [r2, #0x4c]
	cmp r0, r1
	ble _0809B3AA
	str r1, [r2, #0x4c]
	b _0809B3AA
_0809B378:
	ldr r1, [r2, #0x3c]
	movs r3, #0xb4
	lsls r3, r3, #8
	cmp r1, r3
	bgt _0809B388
	str r3, [r2, #0x3c]
	movs r0, #1
	b _0809B3AC
_0809B388:
	ldr r0, _0809B3B4 @ =0xFFFFF740
	adds r1, r1, r0
	str r1, [r2, #0x3c]
	ldr r0, _0809B3B8 @ =0x0000B3FF
	cmp r1, r0
	bgt _0809B396
	str r3, [r2, #0x3c]
_0809B396:
	ldr r0, [r2, #0x4c]
	ldr r1, _0809B3BC @ =0xFFFFF7C0
	adds r0, r0, r1
	str r0, [r2, #0x4c]
	ldr r1, _0809B3C0 @ =0x00006DFF
	cmp r0, r1
	bgt _0809B3AA
	movs r0, #0xdc
	lsls r0, r0, #7
	str r0, [r2, #0x4c]
_0809B3AA:
	movs r0, #0
_0809B3AC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0809B3B4: .4byte 0xFFFFF740
_0809B3B8: .4byte 0x0000B3FF
_0809B3BC: .4byte 0xFFFFF7C0
_0809B3C0: .4byte 0x00006DFF

	thumb_func_start sub_809B3C4
sub_809B3C4: @ 0x0809B3C4
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r3, #0
	cmp r1, #0
	beq _0809B3F0
	ldr r1, [r2, #0x64]
	ldr r0, _0809B3E4 @ =0x000077FF
	cmp r1, r0
	bgt _0809B3E8
	movs r4, #0xc2
	lsls r4, r4, #3
	adds r0, r1, r4
	str r0, [r2, #0x64]
	b _0809B40C
	.align 2, 0
_0809B3E4: .4byte 0x000077FF
_0809B3E8:
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r2, #0x64]
	b _0809B414
_0809B3F0:
	ldr r0, [r2, #0x64]
	movs r1, #0xf0
	lsls r1, r1, #6
	cmp r0, r1
	ble _0809B408
	ldr r1, _0809B404 @ =0xFFFFF9F0
	adds r0, r0, r1
	str r0, [r2, #0x64]
	b _0809B40C
	.align 2, 0
_0809B404: .4byte 0xFFFFF9F0
_0809B408:
	str r1, [r2, #0x64]
	movs r3, #1
_0809B40C:
	cmp r3, #0
	bne _0809B414
	movs r0, #0
	b _0809B416
_0809B414:
	movs r0, #1
_0809B416:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_809B41C
sub_809B41C: @ 0x0809B41C
	ldr r1, [r0, #0x3c]
	str r1, [r0, #0x6c]
	movs r0, #1
	bx lr

	thumb_func_start sub_809B424
sub_809B424: @ 0x0809B424
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0809B44E
	ldr r1, [r2, #0x34]
	ldr r0, _0809B440 @ =0x000059FF
	cmp r1, r0
	bgt _0809B444
	movs r0, #3
	lsls r0, r0, #8
	adds r0, r1, r0
	b _0809B462
	.align 2, 0
_0809B440: .4byte 0x000059FF
_0809B444:
	movs r0, #0xb4
	lsls r0, r0, #7
	str r0, [r2, #0x34]
	movs r0, #1
	b _0809B466
_0809B44E:
	ldr r0, [r2, #0x34]
	movs r1, #0xf0
	lsls r1, r1, #6
	cmp r0, r1
	bgt _0809B45E
	str r1, [r2, #0x34]
	movs r0, #1
	b _0809B466
_0809B45E:
	ldr r1, _0809B46C @ =0xFFFFFD00
	adds r0, r0, r1
_0809B462:
	str r0, [r2, #0x34]
	movs r0, #0
_0809B466:
	pop {r1}
	bx r1
	.align 2, 0
_0809B46C: .4byte 0xFFFFFD00

	thumb_func_start sub_809B470
sub_809B470: @ 0x0809B470
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0809B496
	ldr r0, [r2, #0x3c]
	movs r1, #0x96
	lsls r1, r1, #8
	cmp r0, r1
	ble _0809B490
	ldr r1, _0809B48C @ =0xFFFFFD00
	adds r0, r0, r1
	b _0809B4B2
	.align 2, 0
_0809B48C: .4byte 0xFFFFFD00
_0809B490:
	str r1, [r2, #0x3c]
	movs r0, #1
	b _0809B4B6
_0809B496:
	ldr r1, [r2, #0x3c]
	ldr r0, _0809B4A8 @ =0x0000B3FF
	cmp r1, r0
	ble _0809B4AC
	adds r0, #1
	str r0, [r2, #0x3c]
	movs r0, #1
	b _0809B4B6
	.align 2, 0
_0809B4A8: .4byte 0x0000B3FF
_0809B4AC:
	movs r0, #3
	lsls r0, r0, #8
	adds r0, r1, r0
_0809B4B2:
	str r0, [r2, #0x3c]
	movs r0, #0
_0809B4B6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809B4BC
sub_809B4BC: @ 0x0809B4BC
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r3, #0
	movs r4, #3
	cmp r1, #0
	bne _0809B4FA
	ldr r1, [r2, #0x64]
	ldr r0, _0809B4DC @ =0x00005EFF
	cmp r1, r0
	bgt _0809B4E0
	lsls r0, r4, #8
	adds r0, r1, r0
	str r0, [r2, #0x64]
	b _0809B4E8
	.align 2, 0
_0809B4DC: .4byte 0x00005EFF
_0809B4E0:
	movs r0, #0xbe
	lsls r0, r0, #7
	str r0, [r2, #0x64]
	movs r3, #1
_0809B4E8:
	ldr r1, [r2, #0x54]
	movs r0, #0xc9
	lsls r0, r0, #8
	cmp r1, r0
	ble _0809B52A
	lsls r0, r4, #8
	subs r0, r1, r0
	str r0, [r2, #0x54]
	b _0809B532
_0809B4FA:
	ldr r0, [r2, #0x64]
	movs r1, #0xf0
	lsls r1, r1, #6
	cmp r0, r1
	ble _0809B510
	ldr r1, _0809B50C @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r2, #0x64]
	b _0809B514
	.align 2, 0
_0809B50C: .4byte 0xFFFFFD00
_0809B510:
	str r1, [r2, #0x64]
	movs r3, #1
_0809B514:
	ldr r1, [r2, #0x54]
	ldr r0, _0809B524 @ =0x000104FF
	cmp r1, r0
	bgt _0809B528
	lsls r0, r4, #8
	adds r0, r1, r0
	str r0, [r2, #0x54]
	b _0809B532
	.align 2, 0
_0809B524: .4byte 0x000104FF
_0809B528:
	ldr r0, _0809B53C @ =0x00010500
_0809B52A:
	str r0, [r2, #0x54]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0809B532:
	cmp r3, #2
	beq _0809B540
	movs r0, #0
	b _0809B542
	.align 2, 0
_0809B53C: .4byte 0x00010500
_0809B540:
	movs r0, #1
_0809B542:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_809B548
sub_809B548: @ 0x0809B548
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	movs r3, #0
	movs r4, #3
	cmp r1, #0
	bne _0809B584
	ldr r0, [r2, #0x6c]
	movs r1, #0x91
	lsls r1, r1, #8
	cmp r0, r1
	ble _0809B56C
	ldr r1, _0809B568 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r2, #0x6c]
	b _0809B570
	.align 2, 0
_0809B568: .4byte 0xFFFFFD00
_0809B56C:
	str r1, [r2, #0x6c]
	movs r3, #1
_0809B570:
	ldr r1, [r2, #0x4c]
	ldr r0, _0809B580 @ =0x0000C8FF
	cmp r1, r0
	ble _0809B5A8
	movs r0, #0xc9
	lsls r0, r0, #8
	b _0809B5B8
	.align 2, 0
_0809B580: .4byte 0x0000C8FF
_0809B584:
	ldr r1, [r2, #0x6c]
	ldr r0, _0809B594 @ =0x0000B3FF
	cmp r1, r0
	bgt _0809B598
	lsls r0, r4, #8
	adds r0, r1, r0
	str r0, [r2, #0x6c]
	b _0809B5A0
	.align 2, 0
_0809B594: .4byte 0x0000B3FF
_0809B598:
	movs r0, #0xb4
	lsls r0, r0, #8
	str r0, [r2, #0x6c]
	movs r3, #1
_0809B5A0:
	ldr r1, [r2, #0x4c]
	ldr r0, _0809B5B0 @ =0x0000B3FF
	cmp r1, r0
	bgt _0809B5B4
_0809B5A8:
	lsls r0, r4, #8
	adds r0, r1, r0
	str r0, [r2, #0x4c]
	b _0809B5C0
	.align 2, 0
_0809B5B0: .4byte 0x0000B3FF
_0809B5B4:
	movs r0, #0xb4
	lsls r0, r0, #8
_0809B5B8:
	str r0, [r2, #0x4c]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_0809B5C0:
	cmp r3, #2
	beq _0809B5C8
	movs r0, #0
	b _0809B5CA
_0809B5C8:
	movs r0, #1
_0809B5CA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_809B5D0
sub_809B5D0: @ 0x0809B5D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r2, _0809B624 @ =gUnknown_080D8F18
	ldrb r1, [r5, #5]
	adds r1, r1, r2
	ldrb r3, [r1]
	ldr r4, _0809B628 @ =gDispCnt
	ldrh r1, [r4]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r2, r6, #0
	orrs r1, r2
	strh r1, [r4]
	ldr r1, _0809B62C @ =0x0600C000
	str r1, [r0, #4]
	ldr r1, _0809B630 @ =0x06001800
	str r1, [r0, #0xc]
	ldr r1, _0809B634 @ =gUnknown_080D8CDC
	adds r3, #0xa
	lsls r3, r3, #1
	adds r3, r3, r1
	ldrh r1, [r3]
	strh r1, [r0, #0x1c]
	movs r1, #1
	strh r1, [r0, #0x2e]
	bl DrawBackground
	movs r0, #3
	strb r0, [r5, #0xb]
	ldrb r0, [r5, #7]
	cmp r0, #1
	bne _0809B61C
	adds r0, r5, #0
	bl sub_809B700
_0809B61C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809B624: .4byte gUnknown_080D8F18
_0809B628: .4byte gDispCnt
_0809B62C: .4byte 0x0600C000
_0809B630: .4byte 0x06001800
_0809B634: .4byte gUnknown_080D8CDC

	thumb_func_start sub_809B638
sub_809B638: @ 0x0809B638
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r0, [r4, #0x3c]
	movs r6, #0xa5
	lsls r6, r6, #9
	cmp r0, r6
	bne _0809B64C
	movs r5, #1
	b _0809B660
_0809B64C:
	adds r0, r4, #0
	bl sub_809B1E4
	cmp r0, #1
	bne _0809B660
	ldrb r0, [r4, #4]
	strb r0, [r4, #3]
	movs r5, #1
	str r6, [r4, #0x3c]
	strb r0, [r4, #5]
_0809B660:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_809B668
sub_809B668: @ 0x0809B668
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r0, [r4, #0x3c]
	ldr r6, _0809B67C @ =0xFFFFA600
	cmp r0, r6
	bne _0809B680
	movs r5, #1
	b _0809B694
	.align 2, 0
_0809B67C: .4byte 0xFFFFA600
_0809B680:
	adds r0, r4, #0
	bl sub_809B1E4
	cmp r0, #1
	bne _0809B694
	ldrb r0, [r4, #4]
	strb r0, [r4, #3]
	movs r5, #1
	str r6, [r4, #0x3c]
	strb r0, [r4, #5]
_0809B694:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_809B69C
sub_809B69C: @ 0x0809B69C
	ldr r2, _0809B6BC @ =gBgScrollRegs
	ldr r1, [r0, #0x44]
	asrs r1, r1, #8
	strh r1, [r2]
	ldr r1, [r0, #0x48]
	asrs r1, r1, #8
	strh r1, [r2, #2]
	ldr r1, [r0, #0x54]
	asrs r1, r1, #8
	strh r1, [r2, #4]
	ldr r0, [r0, #0x58]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_0809B6BC: .4byte gBgScrollRegs

	thumb_func_start sub_809B6C0
sub_809B6C0: @ 0x0809B6C0
	push {r4, lr}
	sub sp, #0x10
	ldrh r4, [r0, #0x12]
	lsrs r4, r4, #6
	ldrh r1, [r0, #0x18]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0x40
	str r3, [sp]
	ldr r3, [r0, #0x4c]
	lsls r3, r3, #8
	asrs r3, r3, #0x10
	str r3, [sp, #4]
	ldr r0, [r0, #0x50]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _0809B6FC @ =gBgAffineRegs
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809B6FC: .4byte gBgAffineRegs

	thumb_func_start sub_809B700
sub_809B700: @ 0x0809B700
	bx lr
	.align 2, 0

	thumb_func_start sub_809B704
sub_809B704: @ 0x0809B704
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	movs r1, #0
	ldrb r2, [r3, #7]
	cmp r2, #0
	beq _0809B726
	cmp r2, #3
	beq _0809B726
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _0809B72A
	ldrb r3, [r3, #0xb]
	cmp r1, r3
	bne _0809B72A
_0809B726:
	movs r0, #1
	b _0809B72C
_0809B72A:
	movs r0, #0
_0809B72C:
	pop {r1}
	bx r1

	thumb_func_start sub_809B730
sub_809B730: @ 0x0809B730
	push {lr}
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _0809B750
	cmp r0, #3
	beq _0809B750
	ldr r0, _0809B74C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	b _0809B752
	.align 2, 0
_0809B74C: .4byte gMultiSioStatusFlags
_0809B750:
	movs r0, #1
_0809B752:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_CharacterSelect
TaskDestructor_CharacterSelect: @ 0x0809B758
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0809B76C @ =0x030000C4
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0809B76C: .4byte 0x030000C4

@ --- End of Character Select ---
