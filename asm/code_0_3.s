.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_8022978
sub_8022978: @ 0x08022978
	push {r4, r5, r6, lr}
	ldr r0, _08022A00 @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	ldr r5, _08022A04 @ =gStageData
	adds r5, #0xae
	ldrh r0, [r5]
	movs r1, #60
	bl Div
	adds r4, r0, #0
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldrh r1, [r5]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08022A08 @ =0x030000F0
	adds r3, r6, r0
	ldr r2, _08022A0C @ =gUnknown_080CE4B2
	lsrs r1, r1, #0xf
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r0, #0x10
	strb r0, [r3, #0x1a]
	ldr r0, _08022A10 @ =0x03000118
	adds r3, r6, r0
	adds r2, #1
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r3, #0x1a]
	adds r0, r4, #0
	movs r1, #60
	bl Div
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	subs r4, r4, r1
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08022A14 @ =0x030000A0
	adds r3, r6, r1
	ldr r2, _08022A18 @ =gUnknown_080CE438
	lsrs r4, r4, #0xf
	adds r1, r4, r2
	ldrb r1, [r1]
	adds r1, #0x10
	strb r1, [r3, #0x1a]
	ldr r1, _08022A1C @ =0x030000C8
	adds r3, r6, r1
	adds r2, #1
	adds r4, r4, r2
	ldrb r1, [r4]
	adds r1, #0x10
	strb r1, [r3, #0x1a]
	ldr r1, _08022A20 @ =0x03000078
	adds r3, r6, r1
	adds r0, #0x10
	strb r0, [r3, #0x1a]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08022A00: .4byte gCurTask
_08022A04: .4byte gStageData
_08022A08: .4byte 0x030000F0
_08022A0C: .4byte gUnknown_080CE4B2
_08022A10: .4byte 0x03000118
_08022A14: .4byte 0x030000A0
_08022A18: .4byte gUnknown_080CE438
_08022A1C: .4byte 0x030000C8
_08022A20: .4byte 0x03000078

	thumb_func_start sub_8022A24
sub_8022A24: @ 0x08022A24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08022A68 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08022A6C @ =gStageData
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #3
	bhi _08022B08
	ldr r0, _08022A70 @ =0x03000234
	adds r2, r1, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	movs r0, #0x3f
	ands r1, r0
	strb r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08022A74
	movs r0, #0x40
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08022A76
	.align 2, 0
_08022A68: .4byte gCurTask
_08022A6C: .4byte gStageData
_08022A70: .4byte 0x03000234
_08022A74:
	ldrb r0, [r2]
_08022A76:
	movs r2, #0
	ldr r1, _08022B18 @ =gUnknown_080CEE40
	mov sl, r1
	ldr r1, _08022B1C @ =gStageData + 0x8E
	mov sb, r1
	lsls r0, r0, #0x18
	asrs r6, r0, #0x18
	movs r1, #0x20
	subs r1, r1, r6
	movs r7, #0x1f
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x10
	mov ip, r0
_08022A94:
	lsls r4, r2, #0x18
	asrs r4, r4, #0x18
	lsls r5, r4, #1
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #5
	adds r0, r5, r0
	add r0, sl
	ldrh r3, [r0]
	movs r0, #0x1f
	ands r0, r3
	adds r2, r0, #0
	muls r2, r6, r2
	asrs r2, r2, #5
	add r2, ip
	ands r2, r7
	lsrs r0, r3, #5
	ands r0, r7
	adds r1, r0, #0
	muls r1, r6, r1
	asrs r1, r1, #5
	add r1, ip
	ands r1, r7
	lsrs r3, r3, #0xa
	ands r3, r7
	adds r0, r3, #0
	muls r0, r6, r0
	asrs r0, r0, #5
	add r0, ip
	ands r0, r7
	movs r3, #0x85
	lsls r3, r3, #2
	add r3, r8
	adds r5, r3, r5
	lsls r1, r1, #5
	orrs r2, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r5]
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r2, r4, #0x18
	asrs r4, r4, #0x18
	cmp r4, #0xf
	ble _08022A94
	ldr r0, _08022B20 @ =0x040000D4
	str r3, [r0]
	ldr r1, _08022B24 @ =gObjPalette + 0x100
	str r1, [r0, #4]
	ldr r1, _08022B28 @ =0x80000010
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08022B2C @ =gFlags
	ldr r0, [r1]
	movs r1, #2
	orrs r0, r1
	ldr r1, _08022B2C @ =gFlags
	str r0, [r1]
_08022B08:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022B18: .4byte gUnknown_080CEE40
_08022B1C: .4byte gStageData + 0x8E
_08022B20: .4byte 0x040000D4
_08022B24: .4byte gObjPalette + 0x100
_08022B28: .4byte 0x80000010
_08022B2C: .4byte gFlags

	thumb_func_start sub_8022B30
sub_8022B30: @ 0x08022B30
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x28]
	add r0, sp, #0x28
	ldr r2, _08022D14 @ =0x0500000A
	mov r1, sp
	bl CpuSet
	mov r1, sp
	ldr r0, _08022D18 @ =0x0000FFFF
	strh r0, [r1, #0x18]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	subs r0, #0x11
	str r0, [sp, #0x20]
	adds r7, r6, #0
	movs r4, #0
_08022B60:
	mov r0, sp
	adds r1, r7, #0
	ldr r2, _08022D1C @ =0x0400000A
	bl CpuSet
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r7, #0x28
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	ble _08022B60
	adds r7, r6, #0
	ldr r1, _08022D20 @ =0x06012000
	str r1, [r7]
	movs r2, #0
	mov sb, r2
	ldr r0, _08022D24 @ =0x0000058D		@ ANIM_UI_TIME
	strh r0, [r7, #0xc]
	movs r4, #0
	strb r4, [r7, #0x1a]
	movs r0, #0x8c
	mov r8, r0
	mov r2, r8
	strh r2, [r7, #0x10]
	movs r4, #0xa
	mov ip, r4
	mov r0, ip
	strh r0, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	ldr r3, _08022D28 @ =0x00000462		@ ANIM_ASCII
	strh r3, [r7, #0xc]
	movs r4, #0x1a
	strb r4, [r7, #0x1a]
	movs r0, #0xb4
	strh r0, [r7, #0x10]
	movs r2, #0x14
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	strh r3, [r7, #0xc]					@ ANIM_ASCII
	strb r4, [r7, #0x1a]
	movs r0, #0xd2
	strh r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	strh r3, [r7, #0xc]					@ ANIM_ASCII
	movs r4, #0x10
	strb r4, [r7, #0x1a]
	movs r0, #0xaa
	strh r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	strh r3, [r7, #0xc]					@ ANIM_ASCII
	strb r4, [r7, #0x1a]
	movs r0, #0xbe
	strh r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	strh r3, [r7, #0xc]					@ ANIM_ASCII
	strb r4, [r7, #0x1a]
	movs r0, #0xc8
	strh r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	strh r3, [r7, #0xc]					@ ANIM_ASCII
	strb r4, [r7, #0x1a]
	movs r0, #0xdc
	strh r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	strh r3, [r7, #0xc]					@ ANIM_ASCII
	strb r4, [r7, #0x1a]
	movs r0, #0xe6
	strh r0, [r7, #0x10]
	strh r2, [r7, #0x12]
	adds r1, #0x40
	adds r7, #0x28
	str r1, [r7]
	ldr r4, _08022D2C @ =0x000005EC		@ ANIM_VS_CHAO_ICON
	strh r4, [r7, #0xc]
	movs r2, #0
	strb r2, [r7, #0x1a]
	ldr r0, [r7, #8]
	movs r2, #0x80
	lsls r2, r2, #0xb
	orrs r0, r2
	str r0, [r7, #8]
	movs r0, #0
	strb r0, [r7, #0x1f]
	mov r0, ip
	strh r0, [r7, #0x10]
	movs r5, #2
	movs r3, #2
	strh r3, [r7, #0x12]
	adds r1, #0xc0
	adds r7, #0x28
	str r1, [r7]
	strh r4, [r7, #0xc]					@ ANIM_VS_CHAO_ICON
	movs r0, #0
	strb r0, [r7, #0x1a]
	ldr r0, [r7, #8]
	orrs r0, r2
	str r0, [r7, #8]
	movs r0, #1
	strb r0, [r7, #0x1f]
	movs r0, #0x1e
	strh r0, [r7, #0x10]
	strh r3, [r7, #0x12]
	adds r1, #0xc0
	adds r7, #0x28
	str r1, [r7]
	strh r4, [r7, #0xc]					@ ANIM_VS_CHAO_ICON
	movs r0, #0
	strb r0, [r7, #0x1a]
	ldr r0, [r7, #8]
	orrs r0, r2
	str r0, [r7, #8]
	strb r5, [r7, #0x1f]
	movs r0, #0x32
	strh r0, [r7, #0x10]
	strh r3, [r7, #0x12]
	adds r1, #0xc0
	adds r7, #0x28
	str r1, [r7]
	strh r4, [r7, #0xc]					@ ANIM_VS_CHAO_ICON
	movs r4, #0
	strb r4, [r7, #0x1a]
	ldr r0, [r7, #8]
	orrs r0, r2
	str r0, [r7, #8]
	movs r0, #3
	strb r0, [r7, #0x1f]
	movs r0, #0x46
	strh r0, [r7, #0x10]
	strh r3, [r7, #0x12]
	adds r1, #0xc0
	adds r7, #0x28
	str r1, [r7]
	ldr r0, _08022D30 @ =0x000005E7		@ ANIM_INDICATOR_SONIC
	strh r0, [r7, #0xc]
	strb r4, [r7, #0x1a]
	ldr r0, [r7, #8]
	ldr r1, _08022D34 @ =0x00040020
	orrs r0, r1
	ldr r2, _08022D38 @ =gNextFreeAffineIndex
	ldrb r1, [r2]
	orrs r0, r1
	str r0, [r7, #8]
	movs r0, #8
	strb r0, [r7, #0x1f]
	movs r3, #0x78
	strh r3, [r7, #0x10]
	mov r0, r8
	strh r0, [r7, #0x12]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r6, r2
	mov r4, sb
	strh r4, [r1]
	adds r2, #2
	adds r0, r6, r2
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	movs r4, #0x83
	lsls r4, r4, #2
	adds r0, r6, r4
	strh r2, [r0]
	ldr r2, _08022D3C @ =0x0000020E
	adds r0, r6, r2
	strh r3, [r0]
	adds r4, #4
	adds r0, r6, r4
	mov r2, r8
	strh r2, [r0]
	adds r0, r7, #0
	bl TransformSprite
	adds r7, r6, #0
	movs r4, #0
_08022CEE:
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	lsls r0, r4, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	adds r7, #0x28
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	ble _08022CEE
	add sp, #0x2c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022D14: .4byte 0x0500000A
_08022D18: .4byte 0x0000FFFF
_08022D1C: .4byte 0x0400000A
_08022D20: .4byte 0x06012000
_08022D24: .4byte 0x0000058D
_08022D28: .4byte 0x00000462
_08022D2C: .4byte 0x000005EC
_08022D30: .4byte 0x000005E7
_08022D34: .4byte 0x00040020
_08022D38: .4byte gNextFreeAffineIndex
_08022D3C: .4byte 0x0000020E

	thumb_func_start sub_8022D40
sub_8022D40: @ 0x08022D40
	push {r4, r5, r6, r7, lr}
	ldr r0, _08022D74 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r5, #0
	ldr r3, _08022D78 @ =gStageData
	adds r7, r3, #0
	adds r7, #0x8e
	ldr r4, _08022D7C @ =0x0000015F
_08022D58:
	ldrb r1, [r7]
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r1, r2
	bne _08022D80
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r6, r0
	adds r0, r0, r4
	movs r1, #8
	strb r1, [r0]
	b _08022D8C
	.align 2, 0
_08022D74: .4byte gCurTask
_08022D78: .4byte gStageData
_08022D7C: .4byte 0x0000015F
_08022D80:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r6, r0
	adds r0, r0, r4
	strb r5, [r0]
_08022D8C:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08022D58
	adds r0, r3, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	ldrb r3, [r3, #6]
	cmp r0, r3
	beq _08022DCC
	cmp r0, #0xff
	beq _08022DCC
	bl sub_8023000
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08022DCC
	bl sub_8022E84
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r4, r6, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08022DCC:
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r4, r6, r1
	movs r5, #0
_08022DD4:
	ldr r0, _08022E78 @ =gUnknown_03001060
	ldrb r1, [r0, #7]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08022DF2
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08022DF2:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08022DD4
	adds r4, r6, #0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	adds r4, #0x28
	movs r5, #0
_08022E12:
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
	ble _08022E12
	ldr r0, _08022E7C @ =gStageData
	adds r0, #0xae
	ldrh r1, [r0]
	ldr r0, _08022E80 @ =0x00000E0F
	movs r6, #0
	cmp r1, r0
	bhi _08022E4A
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r6, r0, #0x1f
_08022E4A:
	movs r5, #0
	movs r7, #0
_08022E4E:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	strb r6, [r4, #0x1f]
	adds r0, r4, #0
	bl DisplaySprite
	strb r7, [r4, #0x1f]
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	adds r4, #0x28
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08022E4E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022E78: .4byte gUnknown_03001060
_08022E7C: .4byte gStageData
_08022E80: .4byte 0x00000E0F

	thumb_func_start sub_8022E84
sub_8022E84: @ 0x08022E84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _08022F44 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	ldr r1, _08022F48 @ =gStageData
	ldrb r0, [r1, #6]
	lsls r6, r0, #2
	adds r6, r6, r0
	lsls r6, r6, #2
	adds r6, r6, r0
	lsls r6, r6, #4
	ldr r2, _08022F4C @ =gPlayers
	adds r6, r6, r2
	adds r1, #0x8e
	ldrb r1, [r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r1, _08022F50 @ =0x030001E0
	adds r1, r1, r3
	mov sb, r1
	ldr r1, [r6, #0x10]
	ldr r2, [r0, #0x10]
	subs r1, r1, r2
	lsls r1, r1, #8
	lsrs r7, r1, #0x10
	ldr r1, [r6, #0x14]
	ldr r0, [r0, #0x14]
	subs r1, r1, r0
	lsls r1, r1, #8
	lsrs r5, r1, #0x10
	ldr r2, _08022F54 @ =gNextFreeAffineIndex
	ldrb r0, [r2]
	ldr r1, _08022F58 @ =0x00040020
	orrs r0, r1
	mov r1, sb
	str r0, [r1, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	asrs r0, r0, #0x12
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	asrs r1, r1, #0x12
	str r3, [sp]
	bl sa2__sub_8004418
	ldr r2, _08022F5C @ =0xFFFFFF00
	adds r0, r0, r2
	ldr r2, _08022F60 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldr r3, [sp]
	ldr r1, _08022F64 @ =0x03000208
	adds r3, r3, r1
	strh r0, [r3]
	rsbs r4, r4, #0
	ldr r1, [r6, #0x10]
	asrs r1, r1, #8
	ldr r2, _08022F68 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r1
	lsls r4, r4, #0x10
	rsbs r5, r5, #0
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	bgt _08022F6C
	movs r7, #0x10
	b _08022F72
	.align 2, 0
_08022F44: .4byte gCurTask
_08022F48: .4byte gStageData
_08022F4C: .4byte gPlayers
_08022F50: .4byte 0x030001E0
_08022F54: .4byte gNextFreeAffineIndex
_08022F58: .4byte 0x00040020
_08022F5C: .4byte 0xFFFFFF00
_08022F60: .4byte 0x000003FF
_08022F64: .4byte 0x03000208
_08022F68: .4byte gCamera
_08022F6C:
	cmp r4, #0xe0
	ble _08022F72
	movs r7, #0xe0
_08022F72:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	bgt _08022F7E
	movs r5, #0x18
	b _08022F84
_08022F7E:
	cmp r0, #0x90
	ble _08022F84
	movs r5, #0x90
_08022F84:
	ldr r0, _08022FAC @ =0x0000020E
	add r0, r8
	strh r7, [r0]
	movs r0, #0x84
	lsls r0, r0, #2
	add r0, r8
	strh r5, [r0]
	movs r1, #0x82
	lsls r1, r1, #2
	add r1, r8
	mov r0, sb
	bl TransformSprite
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022FAC: .4byte 0x0000020E

	thumb_func_start sub_8022FB0
sub_8022FB0: @ 0x08022FB0
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08022FE4 @ =Task_8022FEC
	movs r1, #0x8e
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #6
	movs r5, #0
	str r5, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	bl sub_8022B30
	ldr r0, _08022FE8 @ =0x03000234
	adds r4, r4, r0
	strb r5, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022FE4: .4byte Task_8022FEC
_08022FE8: .4byte 0x03000234

	thumb_func_start Task_8022FEC
Task_8022FEC: @ 0x08022FEC
	push {lr}
	bl sub_8022978
	bl sub_8022A24
	bl sub_8022D40
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8023000
sub_8023000: @ 0x08023000
	push {lr}
	ldr r0, _0802303C @ =gStageData
	adds r0, #0x8e
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08023040 @ =gPlayers
	adds r0, r0, r1
	adds r0, #0xe0
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0xc
	ldrh r0, [r1, #0x10]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xee
	bhi _08023044
	movs r2, #0x12
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08023044
	cmp r0, #0x9f
	bgt _08023044
	movs r0, #1
	b _08023046
	.align 2, 0
_0802303C: .4byte gStageData
_08023040: .4byte gPlayers
_08023044:
	movs r0, #0
_08023046:
	pop {r1}
	bx r1
	.align 2, 0
