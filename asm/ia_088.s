.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable088
CreateEntity_Interactable088: @ 0x0803E978
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	adds r4, r3, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0803EA80 @ =sub_803EE78
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803EA84 @ =sub_803EEC4
	str r1, [sp]
	movs r1, #0x84
	movs r3, #0
	bl TaskCreate
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r2, r0
	adds r0, #0xc
	adds r0, r0, r2
	mov ip, r0
	ldr r1, _0803EA88 @ =0x0300003C
	adds r1, r1, r2
	mov sl, r1
	strh r5, [r7, #4]
	mov r3, sb
	strh r3, [r7, #6]
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #0xa]
	strb r4, [r7, #0xb]
	mov r1, r8
	ldrb r0, [r1, #6]
	lsls r0, r0, #4
	adds r1, r0, #0
	adds r1, #0x80
	mov r3, r8
	movs r0, #3
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0803E9E4
	rsbs r1, r1, #0
_0803E9E4:
	ldr r4, _0803EA8C @ =0x0300007C
	adds r0, r2, r4
	strh r1, [r0]
	mov r1, r8
	ldrb r0, [r1, #5]
	lsls r0, r0, #0xb
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	adds r0, r0, r1
	adds r4, #2
	adds r6, r2, r4
	strh r0, [r6]
	ldr r0, _0803EA90 @ =0x03000080
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	mov r3, r8
	ldrb r2, [r3]
	lsls r2, r2, #3
	lsls r0, r5, #8
	adds r2, r2, r0
	lsls r2, r2, #8
	str r2, [r7, #0x74]
	ldrb r3, [r3, #1]
	lsls r3, r3, #3
	mov r4, sb
	lsls r0, r4, #8
	adds r3, r3, r0
	lsls r3, r3, #8
	str r3, [r7, #0x78]
	ldr r5, _0803EA94 @ =gUnknown_082B48B4
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r5
	ldrh r4, [r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x16
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	movs r5, #0
	ldrsh r0, [r6, r5]
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r2, r2, r0
	asrs r2, r2, #8
	str r2, [r7, #0x6c]
	movs r2, #0
	ldrsh r0, [r6, r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r3, r3, r0
	asrs r3, r3, #8
	str r3, [r7, #0x70]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	mov r4, r8
	strb r0, [r4]
	mov r0, ip
	mov r1, sl
	bl sub_803EBE0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EA80: .4byte sub_803EE78
_0803EA84: .4byte sub_803EEC4
_0803EA88: .4byte 0x0300003C
_0803EA8C: .4byte 0x0300007C
_0803EA90: .4byte 0x03000080
_0803EA94: .4byte gUnknown_082B48B4

	thumb_func_start sub_803EA98
sub_803EA98: @ 0x0803EA98
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0803EB18 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	adds r0, #0xc
	adds r0, r0, r3
	mov r8, r0
	ldr r1, [r6, #0x6c]
	mov sb, r1
	ldr r7, [r6, #0x70]
	ldr r4, _0803EB1C @ =gUnknown_082B48B4
	ldr r2, _0803EB20 @ =0x03000080
	adds r0, r3, r2
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x16
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r4, _0803EB24 @ =0x0300007E
	adds r3, r3, r4
	movs r4, #0
	ldrsh r0, [r3, r4]
	muls r0, r2, r0
	asrs r0, r0, #8
	ldr r2, [r6, #0x74]
	adds r2, r2, r0
	str r2, [r6, #0x6c]
	movs r4, #0
	ldrsh r0, [r3, r4]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r1, [r6, #0x78]
	adds r1, r1, r0
	str r1, [r6, #0x70]
	mov r0, sb
	subs r0, r0, r2
	mov sb, r0
	subs r7, r7, r1
	movs r4, #0
_0803EB06:
	cmp r4, #0
	beq _0803EB28
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803EB2C
	.align 2, 0
_0803EB18: .4byte gCurTask
_0803EB1C: .4byte gUnknown_082B48B4
_0803EB20: .4byte 0x03000080
_0803EB24: .4byte 0x0300007E
_0803EB28:
	ldr r0, _0803EB88 @ =gStageData
	ldrb r1, [r0, #6]
_0803EB2C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803EB8C @ =gPlayers
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803EB50
	cmp r1, #8
	beq _0803EB50
	cmp r1, #0x10
	bne _0803EBC6
_0803EB50:
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803EBC6
	ldr r2, [r5, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0803EB9C
	ldr r0, [r5, #0x6c]
	cmp r0, r8
	bne _0803EB9C
	ldr r0, [r5, #0x10]
	mov r1, sb
	subs r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	subs r1, r0, r7
	str r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	beq _0803EB94
	ldr r2, _0803EB90 @ =0xFFFFFF00
	b _0803EB98
	.align 2, 0
_0803EB88: .4byte gStageData
_0803EB8C: .4byte gPlayers
_0803EB90: .4byte 0xFFFFFF00
_0803EB94:
	movs r2, #0x80
	lsls r2, r2, #1
_0803EB98:
	adds r0, r1, r2
	str r0, [r5, #0x14]
_0803EB9C:
	ldr r1, [r6, #0x6c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x70]
	asrs r2, r2, #8
	movs r0, #0
	str r0, [sp]
	mov r0, r8
	adds r3, r5, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803EBC6
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
_0803EBC6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803EB06
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803EBE0
sub_803EBE0: @ 0x0803EBE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r1, _0803EC20 @ =gStageData
	ldrb r0, [r1, #9]
	cmp r0, #1
	beq _0803EC02
	cmp r0, #5
	beq _0803EC2C
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	bne _0803EC2C
_0803EC02:
	mov r1, sp
	movs r4, #0
	movs r0, #0xc
	strh r0, [r1]
	add r3, sp, #4
	ldr r0, _0803EC24 @ =0x0000037D
	strh r0, [r3]
	add r2, sp, #8
	strh r4, [r2]
	movs r0, #1
	strh r0, [r1, #2]
	ldr r0, _0803EC28 @ =0x0000037B
	strh r0, [r3, #2]
	strh r4, [r2, #2]
	b _0803EC48
	.align 2, 0
_0803EC20: .4byte gStageData
_0803EC24: .4byte 0x0000037D
_0803EC28: .4byte 0x0000037B
_0803EC2C:
	mov r1, sp
	movs r5, #0
	movs r0, #0xc
	strh r0, [r1]
	add r3, sp, #4
	ldr r4, _0803ECE0 @ =0x0000039F
	strh r4, [r3]
	add r2, sp, #8
	strh r5, [r2]
	movs r0, #1
	strh r0, [r1, #2]
	strh r4, [r3, #2]
	movs r0, #2
	strh r0, [r2, #2]
_0803EC48:
	mov r0, sp
	ldrh r0, [r0]
	mov r1, sp
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	bl VramMalloc
	adds r4, r0, #0
	str r4, [r7]
	mov r1, sp
	ldrh r0, [r1, #4]
	movs r5, #0
	strh r0, [r7, #0xc]
	ldrh r0, [r1, #8]
	strb r0, [r7, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	strh r5, [r7, #0xe]
	strh r5, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	str r1, [r7, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sl, r0
	str r0, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #5
	adds r4, r4, r0
	str r4, [r6]
	mov r1, sp
	ldrh r0, [r1, #6]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r5, [r6, #0xe]
	strh r5, [r6, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1b]
	mov r0, sb
	strb r0, [r6, #0x1c]
	movs r1, #0
	strb r1, [r6, #0x1f]
	mov r0, r8
	str r0, [r6, #0x20]
	mov r1, sl
	str r1, [r6, #8]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803ECE0: .4byte 0x0000039F

	thumb_func_start sub_803ECE4
sub_803ECE4: @ 0x0803ECE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803ED4C @ =gCurTask
	ldr r0, [r0]
	ldrh r6, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r6, r0
	adds r0, #0xc
	adds r0, r6, r0
	str r0, [sp]
	ldr r1, _0803ED50 @ =0x0300003C
	adds r5, r6, r1
	ldr r2, [r7]
	mov r8, r2
	ldr r3, [r7, #0x74]
	mov sl, r3
	ldr r0, [r7, #0x78]
	str r0, [sp, #4]
	asrs r0, r3, #8
	ldr r2, [sp, #4]
	asrs r1, r2, #8
	ldr r3, _0803ED54 @ =gCamera
	ldr r2, [r3]
	subs r2, r0, r2
	mov ip, r2
	ldr r2, [r3, #4]
	mov sb, r2
	mov r3, sb
	subs r3, r1, r3
	mov sb, r3
	mov r2, ip
	bl sub_802C140
	cmp r0, #0
	bne _0803ED9C
	movs r1, #0
	ldr r6, _0803ED58 @ =gPlayers
_0803ED38:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0803ED5C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803ED60
	.align 2, 0
_0803ED4C: .4byte gCurTask
_0803ED50: .4byte 0x0300003C
_0803ED54: .4byte gCamera
_0803ED58: .4byte gPlayers
_0803ED5C:
	ldr r0, _0803ED94 @ =gStageData
	ldrb r1, [r0, #6]
_0803ED60:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r6
	ldr r0, [sp]
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803ED38
	ldrb r0, [r7, #0xa]
	mov r2, r8
	strb r0, [r2]
	ldr r0, _0803ED98 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803EE54
	.align 2, 0
_0803ED94: .4byte gStageData
_0803ED98: .4byte gCurTask
_0803ED9C:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldr r2, _0803EE64 @ =gUnknown_082B48B4
	ldr r3, _0803EE68 @ =0x03000080
	adds r0, r6, r3
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov sb, r0
	ldr r2, _0803EE6C @ =0x0300007E
	adds r1, r6, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r2, _0803EE70 @ =0xFFFFEA00
	adds r6, r0, r2
	movs r4, #0
	str r1, [sp, #8]
	cmp r4, r6
	bge _0803EE10
	ldr r7, _0803EE74 @ =gCamera
_0803EDDE:
	movs r3, #0xb0
	lsls r3, r3, #5
	adds r4, r4, r3
	mov r0, r8
	muls r0, r4, r0
	asrs r0, r0, #8
	add r0, sl
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	mov r0, sb
	muls r0, r4, r0
	asrs r0, r0, #8
	ldr r1, [sp, #4]
	adds r0, r1, r0
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl DisplaySprite
	cmp r4, r6
	blt _0803EDDE
_0803EE10:
	ldr r2, [sp, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	add r0, sl
	asrs r0, r0, #8
	ldr r2, _0803EE74 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	ldr r3, [sp]
	strh r0, [r3, #0x10]
	ldr r1, [sp, #8]
	movs r3, #0
	ldrsh r0, [r1, r3]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r0, r3, r0
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	ldr r1, [sp]
	strh r0, [r1, #0x12]
	ldr r0, [sp]
	bl UpdateSpriteAnimation
	ldr r0, [sp]
	bl DisplaySprite
_0803EE54:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EE64: .4byte gUnknown_082B48B4
_0803EE68: .4byte 0x03000080
_0803EE6C: .4byte 0x0300007E
_0803EE70: .4byte 0xFFFFEA00
_0803EE74: .4byte gCamera

	thumb_func_start sub_803EE78
sub_803EE78: @ 0x0803EE78
	push {lr}
	bl sub_803EE8C
	bl sub_803EA98
	bl sub_803ECE4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803EE8C
sub_803EE8C: @ 0x0803EE8C
	push {r4, lr}
	ldr r0, _0803EEB4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	ldr r3, _0803EEB8 @ =gStageData
	ldr r2, _0803EEBC @ =0x0300007C
	adds r0, r1, r2
	movs r4, #0
	ldrsh r2, [r0, r4]
	ldr r0, [r3, #0x1c]
	muls r0, r2, r0
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x16
	ldr r2, _0803EEC0 @ =0x03000080
	adds r1, r1, r2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803EEB4: .4byte gCurTask
_0803EEB8: .4byte gStageData
_0803EEBC: .4byte 0x0300007C
_0803EEC0: .4byte 0x03000080

	thumb_func_start sub_803EEC4
sub_803EEC4: @ 0x0803EEC4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
