.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
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
	ldr r0, _0806A5D4 @ =Task_8068D00
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
_0806A5D4: .4byte Task_8068D00
_0806A5D8: .4byte gCamera
.endif

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
	ldr r0, _0806A700 @ =Task_806A760
	str r0, [r1, #8]
	b _0806A720
	.align 2, 0
_0806A6F8: .4byte gStageData
_0806A6FC: .4byte 0x03000138
_0806A700: .4byte Task_806A760
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
	bl UpdateGroundPlate
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

	thumb_func_start Task_806A760
Task_806A760: @ 0x0806A760
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
