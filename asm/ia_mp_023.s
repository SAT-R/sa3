.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_InteractableMP023
CreateEntity_InteractableMP023: @ 0x0804E9CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
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
	ldr r0, _0804EA98 @ =Task_IA_MP023
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804EA9C @ =TaskDestructor_IA_MP023
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	movs r1, #0
	mov sb, r1
	movs r2, #0
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r7, r8
	str r7, [r0]
	ldrb r1, [r7]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	ldrb r1, [r7]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	ldr r4, _0804EAA0 @ =0x0300006C
	adds r6, r3, r4
	strh r1, [r6]
	ldrb r1, [r7, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	ldr r7, _0804EAA4 @ =0x0300006E
	adds r5, r3, r7
	strh r1, [r5]
	adds r4, #4
	adds r1, r3, r4
	strh r2, [r1]
	mov r7, r8
	ldrb r2, [r7, #7]
	adds r4, #2
	adds r1, r3, r4
	strb r2, [r1]
	ldr r7, _0804EAA8 @ =0x03000073
	adds r1, r3, r7
	mov r2, sb
	strb r2, [r1]
	adds r4, #2
	adds r1, r3, r4
	strb r2, [r1]
	ldr r1, _0804EAAC @ =0x0300000C
	adds r7, r3, r1
	ldr r4, _0804EAB0 @ =gCamera
	ldr r2, [r4]
	ldrh r1, [r6]
	subs r1, r1, r2
	strh r1, [r7, #0x10]
	ldr r2, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r2
	strh r1, [r7, #0x12]
	ldr r2, _0804EAB4 @ =0x03000034
	adds r7, r3, r2
	ldr r2, [r4]
	ldrh r1, [r6]
	subs r1, r1, r2
	strh r1, [r7, #0x10]
	ldr r2, [r4, #4]
	ldrh r1, [r5]
	subs r1, r1, r2
	strh r1, [r7, #0x12]
	movs r4, #2
	rsbs r4, r4, #0
	adds r1, r4, #0
	mov r6, r8
	strb r1, [r6]
	bl sub_804ED44
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EA98: .4byte Task_IA_MP023
_0804EA9C: .4byte TaskDestructor_IA_MP023
_0804EAA0: .4byte 0x0300006C
_0804EAA4: .4byte 0x0300006E
_0804EAA8: .4byte 0x03000073
_0804EAAC: .4byte 0x0300000C
_0804EAB0: .4byte gCamera
_0804EAB4: .4byte 0x03000034

	thumb_func_start Task_IA_MP023
Task_IA_MP023: @ 0x0804EAB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r4, _0804EAFC @ =gCurTask
	ldr r0, [r4]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r5, r0
	ldr r1, _0804EB00 @ =0x0300006C
	adds r0, r5, r1
	ldr r2, _0804EB04 @ =0x0300006E
	adds r1, r5, r2
	movs r2, #0
	ldrsh r3, [r0, r2]
	mov sb, r3
	movs r0, #0
	ldrsh r3, [r1, r0]
	mov r8, r3
	mov r0, sb
	mov r1, r8
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0804EB08
	ldr r0, [r7]
	ldrb r1, [r7, #0xa]
	strb r1, [r0]
	ldr r0, [r4]
	bl TaskDestroy
	b _0804EBFC
	.align 2, 0
_0804EAFC: .4byte gCurTask
_0804EB00: .4byte 0x0300006C
_0804EB04: .4byte 0x0300006E
_0804EB08:
	ldr r2, _0804EB3C @ =gUnknown_03001060
	adds r0, r2, #0
	adds r0, #0x54
	ldr r3, _0804EB40 @ =0x03000072
	adds r1, r5, r3
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0804EBFC
	adds r0, r2, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0804EBFC
	ldr r2, _0804EB44 @ =gStageData
	adds r0, r2, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804EB48
	movs r0, #0
	str r0, [r7, #0x68]
	b _0804EB84
	.align 2, 0
_0804EB3C: .4byte gUnknown_03001060
_0804EB40: .4byte 0x03000072
_0804EB44: .4byte gStageData
_0804EB48:
	adds r0, r1, #0
	subs r0, #0x21
	lsls r0, r0, #0x10
	movs r1, #0xbf
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0804EBDC
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804EB8C @ =gPlayers
	adds r4, r0, r1
	ldr r0, _0804EB90 @ =0x0300000C
	adds r6, r5, r0
	str r4, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r1, sb
	mov r2, r8
	movs r3, #0
	bl sub_8020700
	adds r5, r0, #0
	cmp r5, #0
	beq _0804EB94
	str r4, [r7, #0x68]
_0804EB84:
	adds r0, r7, #0
	bl sub_804EC14
	b _0804EBF6
	.align 2, 0
_0804EB8C: .4byte gPlayers
_0804EB90: .4byte 0x0300000C
_0804EB94:
	str r5, [sp]
	adds r0, r6, #0
	mov r1, sb
	mov r2, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	cmp r1, #0
	beq _0804EBF6
	movs r2, #0x80
	lsls r2, r2, #9
	ands r2, r1
	cmp r2, #0
	beq _0804EBC0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	strh r5, [r4, #0x1a]
	b _0804EBF6
_0804EBC0:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0804EBF6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	strh r2, [r4, #0x18]
	strh r2, [r4, #0x1c]
	b _0804EBF6
_0804EBDC:
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0804EC0C @ =gPlayers
	adds r4, r0, r1
	ldr r1, _0804EC10 @ =0x0300000C
	adds r0, r5, r1
	adds r1, r4, #0
	bl sub_80213B0
_0804EBF6:
	movs r0, #1
	bl sub_804EE08
_0804EBFC:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EC0C: .4byte gPlayers
_0804EC10: .4byte 0x0300000C

	thumb_func_start sub_804EC14
sub_804EC14: @ 0x0804EC14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r5, [r6, #0x68]
	cmp r5, #0
	beq _0804EC48
	ldr r1, [r5, #4]
	movs r2, #4
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0804EC48
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5, #0x1a]
	movs r0, #0x6c
	strh r0, [r5, #0x30]
	ldr r0, _0804ECAC @ =0x0000FFFF
	strh r0, [r5, #0x32]
	orrs r1, r2
	str r1, [r5, #4]
	ldr r1, _0804ECB0 @ =sub_800DAF4
	adds r0, r5, #0
	bl sub_800D87C
_0804EC48:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r7, _0804ECB4 @ =gStageData
	ldrb r2, [r7, #6]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, _0804ECB8 @ =gPlayers
	mov r8, r2
	add r1, r8
	bl sub_80213B0
	adds r1, r6, #0
	adds r1, #0x73
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804ECBC @ =gUnknown_03001060
	adds r0, #0x55
	ldrb r0, [r0]
	adds r0, #1
	lsls r0, r0, #4
	adds r4, r6, #0
	adds r4, #0x74
	strb r0, [r4]
	movs r0, #0x96
	bl sub_80BA57C
	adds r0, r6, #0
	adds r0, #0x6c
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r6, #0
	adds r1, #0x6e
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl CreateSomeCloudEffect
	cmp r5, #0
	beq _0804ED26
	ldrb r2, [r4]
	movs r5, #0xf0
	ands r5, r2
	cmp r5, #0x10
	beq _0804ECC0
	cmp r5, #0x20
	beq _0804ECF2
	b _0804ED26
	.align 2, 0
_0804ECAC: .4byte 0x0000FFFF
_0804ECB0: .4byte sub_800DAF4
_0804ECB4: .4byte gStageData
_0804ECB8: .4byte gPlayers
_0804ECBC: .4byte gUnknown_03001060
_0804ECC0:
	ldrb r1, [r7, #6]
	movs r0, #0x10
	bl sub_80276F4
	ldrb r1, [r7, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, r8
	adds r0, #0x66
	movs r1, #0xe1
	lsls r1, r1, #2
	strh r1, [r0]
	ldrb r1, [r7, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, r8
	adds r0, #0x69
	strb r5, [r0]
	b _0804ED26
_0804ECF2:
	adds r1, r7, #0
	adds r1, #0x8e
	ldrb r0, [r1]
	ldrb r3, [r7, #6]
	cmp r0, r3
	bne _0804ED08
	movs r1, #1
	lsls r1, r3
	movs r0, #0xf
	bics r0, r1
	b _0804ED12
_0804ED08:
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0xf
	ands r0, r1
_0804ED12:
	orrs r0, r2
	strb r0, [r4]
	ldrb r0, [r4]
	ldr r1, _0804ED38 @ =gStageData
	ldrb r1, [r1, #6]
	bl sub_80276F4
	ldrb r0, [r4]
	bl sub_80296F8
_0804ED26:
	ldr r0, _0804ED3C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0804ED40 @ =sub_804F004
	str r0, [r1, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804ED38: .4byte gStageData
_0804ED3C: .4byte gCurTask
_0804ED40: .4byte sub_804F004

	thumb_func_start sub_804ED44
sub_804ED44: @ 0x0804ED44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r7, sl
	adds r7, #0xc
	movs r0, #0x10
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0xc]
	movs r4, #0
	ldr r0, _0804EDFC @ =0x00000524
	strh r0, [r7, #0xc]
	movs r0, #0
	strb r0, [r7, #0x1a]
	movs r5, #0xc0
	lsls r5, r5, #3
	strh r5, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	mov sb, r1
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r7, #0x20]
	movs r6, #0x90
	lsls r6, r6, #5
	str r6, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r7, #0x28
	movs r0, #4
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0x34]
	ldr r0, _0804EE00 @ =0x00000523
	strh r0, [r7, #0xc]
	ldr r0, _0804EE04 @ =gUnknown_03001060
	adds r0, #0x55
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r0, #0xf
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	mov r0, r8
	str r0, [r7, #0x20]
	str r6, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, sl
	adds r0, #0x5c
	strh r4, [r0]
	adds r0, #2
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EDFC: .4byte 0x00000524
_0804EE00: .4byte 0x00000523
_0804EE04: .4byte gUnknown_03001060

	thumb_func_start sub_804EE08
sub_804EE08: @ 0x0804EE08
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0804EE64 @ =gUnknown_03001060
	adds r0, #0x52
	ldrh r4, [r0]
	adds r5, r4, #0
	ldr r0, _0804EE68 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r1, _0804EE6C @ =0x0300006C
	adds r0, r3, r1
	ldr r2, _0804EE70 @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _0804EE74 @ =0x0300006E
	adds r0, r3, r1
	ldr r2, [r2, #4]
	ldrh r1, [r0]
	subs r1, r1, r2
	ldr r2, _0804EE78 @ =0x03000070
	adds r3, r3, r2
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	cmp r0, #0
	beq _0804EE82
	cmp r4, #0x1f
	bhi _0804EE7C
	lsls r0, r4, #0x13
	b _0804EE96
	.align 2, 0
_0804EE64: .4byte gUnknown_03001060
_0804EE68: .4byte gCurTask
_0804EE6C: .4byte 0x0300006C
_0804EE70: .4byte gCamera
_0804EE74: .4byte 0x0300006E
_0804EE78: .4byte 0x03000070
_0804EE7C:
	ldr r0, _0804EE88 @ =0x0000019F
	cmp r4, r0
	bhi _0804EE8C
_0804EE82:
	movs r2, #0x80
	lsls r2, r2, #1
	b _0804EE9C
	.align 2, 0
_0804EE88: .4byte 0x0000019F
_0804EE8C:
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r5
	lsls r0, r0, #0x12
_0804EE96:
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0804EF18
_0804EE9C:
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0804EF18
	adds r0, r6, #0
	adds r0, #0x60
	strh r2, [r0]
	adds r0, #2
	strh r7, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r4, r6, #0
	adds r4, #0x34
	ldr r5, _0804EF24 @ =gUnknown_03002C24
	ldrb r0, [r5]
	movs r1, #0x81
	lsls r1, r1, #5
	mov r8, r1
	orrs r0, r1
	str r0, [r4, #8]
	adds r7, r6, #0
	adds r7, #0x5c
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_80BF8F4
	ldr r0, _0804EF28 @ =gUnknown_03001060
	adds r0, #0x55
	ldrb r0, [r0]
	adds r0, #0xf
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	mov r2, sb
	cmp r2, #0
	beq _0804EF18
	subs r4, #0x28
	ldrb r0, [r5]
	mov r1, r8
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_80BF8F4
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_0804EF18:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EF24: .4byte gUnknown_03002C24
_0804EF28: .4byte gUnknown_03001060

	thumb_func_start CreateSomeCloudEffect
CreateSomeCloudEffect: @ 0x0804EF2C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0804EFC0 @ =Task_SomeCloudEffect
	ldr r2, _0804EFC4 @ =0x00004040
	ldr r1, _0804EFC8 @ =TaskDestructor_SomeCloudEffect
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r0, #0
	mov sb, r0
	movs r0, #0
	mov r8, r0
	strh r5, [r4, #0x28]
	strh r6, [r4, #0x2a]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4]
	ldr r0, _0804EFCC @ =0x0000053A
	strh r0, [r4, #0xc]
	mov r0, sb
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r1, _0804EFD0 @ =gCamera
	ldr r0, [r1]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r5, r5, r0
	strh r5, [r4, #0x10]
	ldr r0, [r1, #4]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	subs r6, r6, r0
	strh r6, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	mov r0, r8
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r0, sb
	strb r0, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804EFC0: .4byte Task_SomeCloudEffect
_0804EFC4: .4byte 0x00004040
_0804EFC8: .4byte TaskDestructor_SomeCloudEffect
_0804EFCC: .4byte 0x0000053A
_0804EFD0: .4byte gCamera

	thumb_func_start TaskDestructor_IA_MP023
TaskDestructor_IA_MP023: @ 0x0804EFD4
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

	thumb_func_start TaskDestructor_SomeCloudEffect
TaskDestructor_SomeCloudEffect: @ 0x0804EFF0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_804F004
sub_804F004: @ 0x0804F004
	push {r4, lr}
	ldr r4, _0804F02C @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	ldr r0, _0804F030 @ =0x03000073
	adds r2, r3, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0804F038
	movs r0, #0
	strb r0, [r2]
	ldr r1, [r4]
	ldr r0, _0804F034 @ =sub_804F05C
	str r0, [r1, #8]
	b _0804F046
	.align 2, 0
_0804F02C: .4byte gCurTask
_0804F030: .4byte 0x03000073
_0804F034: .4byte sub_804F05C
_0804F038:
	ldr r2, _0804F054 @ =0x03000070
	adds r1, r3, r2
	ldr r2, _0804F058 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_0804F046:
	movs r0, #0
	bl sub_804EE08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F054: .4byte 0x03000070
_0804F058: .4byte 0xFFFFFF00

	thumb_func_start sub_804F05C
sub_804F05C: @ 0x0804F05C
	push {lr}
	ldr r3, _0804F080 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r0, _0804F084 @ =0x03000073
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0804F08C
	ldr r1, [r3]
	ldr r0, _0804F088 @ =sub_804F098
	str r0, [r1, #8]
	b _0804F092
	.align 2, 0
_0804F080: .4byte gCurTask
_0804F084: .4byte 0x03000073
_0804F088: .4byte sub_804F098
_0804F08C:
	movs r0, #0
	bl sub_804EE08
_0804F092:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804F098
sub_804F098: @ 0x0804F098
	push {r4, lr}
	ldr r4, _0804F0D0 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	ldr r0, _0804F0D4 @ =gUnknown_03001060
	adds r0, #0x52
	ldrh r1, [r0]
	ldr r0, _0804F0D8 @ =0x000001DF
	cmp r1, r0
	bls _0804F0C8
	ldr r0, _0804F0DC @ =0x03000070
	adds r1, r3, r0
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804F0E0 @ =0x03000073
	adds r0, r3, r1
	strb r2, [r0]
	adds r1, #1
	adds r0, r3, r1
	strb r2, [r0]
	ldr r1, [r4]
	ldr r0, _0804F0E4 @ =Task_IA_MP023
	str r0, [r1, #8]
_0804F0C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F0D0: .4byte gCurTask
_0804F0D4: .4byte gUnknown_03001060
_0804F0D8: .4byte 0x000001DF
_0804F0DC: .4byte 0x03000070
_0804F0E0: .4byte 0x03000073
_0804F0E4: .4byte Task_IA_MP023

	thumb_func_start Task_SomeCloudEffect
Task_SomeCloudEffect: @ 0x0804F0E8
	push {r4, r5, lr}
	ldr r5, _0804F11C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0804F120 @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r4, #0x28]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	beq _0804F124
	adds r0, r4, #0
	bl DisplaySprite
	b _0804F12A
	.align 2, 0
_0804F11C: .4byte gCurTask
_0804F120: .4byte gCamera
_0804F124:
	ldr r0, [r5]
	bl TaskDestroy
_0804F12A:
	pop {r4, r5}
	pop {r0}
	bx r0
