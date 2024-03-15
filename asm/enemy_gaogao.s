.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_GaoGao
CreateEntity_GaoGao: @ 0x0805DEDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _0805DF54 @ =sub_805E018
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0805DF58 @ =sub_805E22C
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	mov r0, r8
	str r0, [r7]
	ldrb r0, [r0]
	strb r0, [r7, #5]
	strb r4, [r7, #4]
	strh r5, [r7, #8]
	strh r6, [r7, #0xa]
	mov r2, r8
	ldrb r1, [r2]
	lsls r1, r1, #0xb
	str r1, [r7, #0x14]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0xb
	str r0, [r7, #0x18]
	str r1, [r7, #0xc]
	str r0, [r7, #0x10]
	movs r0, #3
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x1c]
	ldrb r0, [r2, #5]
	lsls r0, r0, #0xb
	adds r1, r1, r0
	str r1, [r7, #0x20]
	ldrb r1, [r2, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805DF5C
	movs r0, #0xff
	b _0805DF5E
	.align 2, 0
_0805DF54: .4byte sub_805E018
_0805DF58: .4byte sub_805E22C
_0805DF5C:
	movs r0, #1
_0805DF5E:
	strb r0, [r7, #7]
	movs r1, #0
	strb r1, [r7, #6]
	add r0, sp, #4
	strh r1, [r0]
	adds r1, r7, #0
	adds r1, #0x50
	ldr r2, _0805DF90 @ =0x01000002
	bl sub_80C7520
	adds r0, r7, #0
	bl sub_805DF94
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	mov r2, r8
	strb r0, [r2]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DF90: .4byte 0x01000002

	thumb_func_start sub_805DF94
sub_805DF94: @ 0x0805DF94
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl VramMalloc
	adds r6, r4, #0
	adds r6, #0x24
	str r0, [r4, #0x24]
	ldr r1, _0805E010 @ =gUnknown_080D1F5C
	ldrh r0, [r1]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r4, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _0805E014 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r6, #0x10]
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r6, #0x12]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	strh r3, [r6, #0xe]
	strh r3, [r6, #0x16]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	strb r5, [r6, #0x1f]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r6, #8]
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _0805DFFE
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r0, r1
	str r0, [r6, #8]
_0805DFFE:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x20]
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E010: .4byte gUnknown_080D1F5C
_0805E014: .4byte gCamera

	thumb_func_start sub_805E018
sub_805E018: @ 0x0805E018
	push {r4, lr}
	ldr r0, _0805E064 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r1, _0805E068 @ =0x03000014
	adds r0, r3, r1
	subs r1, #0xc
	adds r2, r3, r1
	subs r1, #2
	adds r3, r3, r1
	movs r1, #0
	bl sub_805CD70
	ldr r0, _0805E06C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805E050
	cmp r1, #4
	beq _0805E050
	adds r0, r4, #0
	bl sub_805E144
_0805E050:
	adds r0, r4, #0
	bl sub_805E1F0
	cmp r0, #1
	bne _0805E070
	ldr r0, _0805E064 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0805E09A
	.align 2, 0
_0805E064: .4byte gCurTask
_0805E068: .4byte 0x03000014
_0805E06C: .4byte gUnknown_030008A0
_0805E070:
	adds r0, r4, #0
	bl sub_805E17C
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r1, r0
	ble _0805E084
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _0805E09A
_0805E084:
	adds r2, r4, #0
	adds r2, #0x24
	ldr r1, _0805E0A0 @ =gUnknown_080D1F5C
	ldrh r0, [r1, #8]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #0xa]
	strb r0, [r2, #0x1a]
	ldr r0, _0805E0A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805E0A8 @ =sub_805E0AC
	str r0, [r1, #8]
_0805E09A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E0A0: .4byte gUnknown_080D1F5C
_0805E0A4: .4byte gCurTask
_0805E0A8: .4byte sub_805E0AC

	thumb_func_start sub_805E0AC
sub_805E0AC: @ 0x0805E0AC
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805E0D4 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_805E17C
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_805E1F0
	cmp r0, #1
	bne _0805E0D8
	ldr r0, [r7]
	bl TaskDestroy
	b _0805E132
	.align 2, 0
_0805E0D4: .4byte gCurTask
_0805E0D8:
	ldr r0, _0805E10C @ =gUnknown_030008A0
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805E132
	cmp r1, #4
	beq _0805E132
	cmp r6, #0
	bne _0805E132
	ldr r0, _0805E110 @ =0x03000024
	adds r2, r5, r0
	ldr r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0805E118
	ldr r0, _0805E114 @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r2, #8]
	movs r0, #1
	b _0805E11E
	.align 2, 0
_0805E10C: .4byte gUnknown_030008A0
_0805E110: .4byte 0x03000024
_0805E114: .4byte 0xFFFFFBFF
_0805E118:
	orrs r1, r3
	str r1, [r2, #8]
	movs r0, #0xff
_0805E11E:
	strb r0, [r4, #7]
	ldr r1, _0805E138 @ =gUnknown_080D1F5C
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldr r0, _0805E13C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0805E140 @ =sub_805E018
	str r0, [r1, #8]
_0805E132:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E138: .4byte gUnknown_080D1F5C
_0805E13C: .4byte gCurTask
_0805E140: .4byte sub_805E018

	thumb_func_start sub_805E144
sub_805E144: @ 0x0805E144
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0805E166
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	bgt _0805E178
	adds r0, #0x40
	str r0, [r2, #0x14]
	cmp r0, r1
	ble _0805E178
	b _0805E176
_0805E166:
	ldr r0, [r2, #0x14]
	ldr r1, [r2, #0x1c]
	cmp r0, r1
	blt _0805E178
	subs r0, #0x40
	str r0, [r2, #0x14]
	cmp r0, r1
	bge _0805E178
_0805E176:
	str r1, [r2, #0x14]
_0805E178:
	pop {r0}
	bx r0

	thumb_func_start sub_805E17C
sub_805E17C: @ 0x0805E17C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x24
	ldr r2, [r0, #0x14]
	asrs r2, r2, #8
	ldrh r1, [r0, #8]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805E1BC @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r0, #0xa]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805E1BC: .4byte gCamera

	thumb_func_start sub_805E1C0
sub_805E1C0: @ 0x0805E1C0
	push {lr}
	adds r2, r1, #0
	movs r1, #0
	str r1, [r2]
	strb r1, [r2, #8]
	str r1, [r2, #4]
	adds r1, r0, #0
	adds r1, #0x24
	str r1, [r2, #0x1c]
	ldr r1, [r0, #0x14]
	str r1, [r2, #0x10]
	ldr r1, [r0, #0x18]
	str r1, [r2, #0x14]
	ldrh r1, [r0, #8]
	strh r1, [r2, #0xc]
	ldrh r1, [r0, #0xa]
	strh r1, [r2, #0xe]
	movs r1, #7
	ldrsb r1, [r0, r1]
	adds r0, r2, #0
	bl sub_805C890
	pop {r1}
	bx r1

	thumb_func_start sub_805E1F0
sub_805E1F0: @ 0x0805E1F0
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_805E1C0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x24
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r4, #8]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #5]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_805E22C
sub_805E22C: @ 0x0805E22C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x24]
	bl VramFree
	pop {r0}
	bx r0
