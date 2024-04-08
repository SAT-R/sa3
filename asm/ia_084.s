.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_Interactable084
CreateEntity_Interactable084: @ 0x0803DCCC
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0803DD90 @ =sub_803DE28
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0803DD94 @ =sub_803E410
	str r1, [sp]
	movs r1, #0x6c
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r3, r0
	ldr r1, _0803DD98 @ =0x0300000C
	adds r1, r1, r3
	mov sl, r1
	movs r2, #0
	mov r8, r2
	strh r4, [r0, #4]
	strh r5, [r0, #6]
	mov r1, sb
	str r1, [r0]
	ldrb r1, [r1]
	strb r1, [r0, #0xa]
	strb r6, [r0, #0xb]
	mov r2, sb
	ldrb r1, [r2]
	lsls r1, r1, #3
	lsls r4, r4, #8
	adds r1, r1, r4
	lsls r1, r1, #8
	str r1, [r0, #0x5c]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	lsls r5, r5, #8
	adds r1, r1, r5
	lsls r1, r1, #8
	str r1, [r0, #0x60]
	ldr r2, _0803DD9C @ =0x03000064
	adds r1, r3, r2
	mov r2, r8
	strh r2, [r1]
	ldr r1, _0803DDA0 @ =0x03000066
	adds r2, r3, r1
	movs r1, #0x30
	strh r1, [r2]
	ldr r2, _0803DDA4 @ =0x03000068
	adds r1, r3, r2
	mov r2, r8
	strh r2, [r1]
	ldr r1, _0803DDA8 @ =0x0300006A
	adds r3, r3, r1
	strh r2, [r3]
	ldr r1, [r0, #0x5c]
	asrs r1, r1, #8
	ldr r3, _0803DDAC @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	mov r2, sl
	strh r1, [r2, #0x10]
	ldr r1, [r0, #0x60]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r1, r1, r2
	mov r2, sl
	strh r1, [r2, #0x12]
	movs r2, #2
	rsbs r2, r2, #0
	adds r1, r2, #0
	mov r2, sb
	strb r1, [r2]
	bl sub_803DDB0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803DD90: .4byte sub_803DE28
_0803DD94: .4byte sub_803E410
_0803DD98: .4byte 0x0300000C
_0803DD9C: .4byte 0x03000064
_0803DDA0: .4byte 0x03000066
_0803DDA4: .4byte 0x03000068
_0803DDA8: .4byte 0x0300006A
_0803DDAC: .4byte gCamera

	thumb_func_start sub_803DDB0
sub_803DDB0: @ 0x0803DDB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov r7, sb
	adds r7, #0xc
	movs r0, #0x15
	bl VramMalloc
	mov r1, sb
	str r0, [r1, #0xc]
	movs r3, #0
	movs r2, #0
	ldr r1, _0803DE24 @ =0x000003DA
	mov r8, r1
	mov r1, r8
	strh r1, [r7, #0xc]
	strb r3, [r7, #0x1a]
	movs r6, #0xc0
	lsls r6, r6, #3
	strh r6, [r7, #0x14]
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	movs r1, #0xff
	strb r1, [r7, #0x1b]
	movs r5, #0x10
	strb r5, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r7, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r7, #8]
	adds r7, #0x28
	mov r1, sb
	str r0, [r1, #0x34]
	mov r0, r8
	strh r0, [r7, #0xc]
	strb r3, [r7, #0x1a]
	strh r6, [r7, #0x14]
	strh r2, [r7, #0xe]
	strh r2, [r7, #0x16]
	adds r0, r4, #0
	strb r0, [r7, #0x1b]
	strb r5, [r7, #0x1c]
	strb r3, [r7, #0x1f]
	str r4, [r7, #0x20]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r7, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DE24: .4byte 0x000003DA

	thumb_func_start sub_803DE28
sub_803DE28: @ 0x0803DE28
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _0803DE4C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0xc
	adds r7, r1, r0
	movs r1, #0
_0803DE3E:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0803DE54
	ldr r0, _0803DE50 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803DE5E
	.align 2, 0
_0803DE4C: .4byte gCurTask
_0803DE50: .4byte gUnknown_030008A0
_0803DE54:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803DE5E:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803DEC4 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803DEA8
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x60]
	asrs r2, r2, #8
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	adds r3, r4, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803DEA8
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, _0803DEC8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803DECC @ =sub_803DED0
	str r0, [r1, #8]
_0803DEA8:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803DE3E
	bl sub_803E32C
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803DEC4: .4byte gPlayers
_0803DEC8: .4byte gCurTask
_0803DECC: .4byte sub_803DED0

	thumb_func_start sub_803DED0
sub_803DED0: @ 0x0803DED0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803DF84 @ =gCurTask
	mov sl, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r7
	mov r8, r0
	ldr r1, _0803DF88 @ =0x0300000C
	adds r1, r1, r7
	mov sb, r1
	ldr r0, [r0, #0x60]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2, #0x5c]
	asrs r1, r1, #8
	add r3, sp, #8
	str r3, [sp]
	ldr r2, _0803DF8C @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bgt _0803DFA8
	lsls r1, r0, #8
	mov r2, r8
	ldr r0, [r2, #0x60]
	adds r0, r0, r1
	str r0, [r2, #0x60]
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _0803DF90 @ =0x03000064
	adds r1, r7, r3
	strh r0, [r1]
	ldr r0, _0803DF94 @ =0x03000066
	adds r5, r7, r0
	movs r2, #0xa0
	lsls r2, r2, #1
	strh r2, [r5]
	ldr r4, _0803DF98 @ =gUnknown_082B48B4
	ldrh r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	ldr r2, _0803DF9C @ =0x03000068
	adds r3, r7, r2
	strh r0, [r3]
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	asrs r0, r0, #0xe
	ldr r1, _0803DFA0 @ =0x0300006A
	adds r2, r7, r1
	strh r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	mov r3, r8
	ldr r0, [r3, #0x5c]
	adds r0, r0, r1
	str r0, [r3, #0x5c]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r3, #0x60]
	adds r0, r0, r1
	str r0, [r3, #0x60]
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _0803DFA4 @ =sub_803E0D8
	str r0, [r1, #8]
	b _0803DFC6
	.align 2, 0
_0803DF84: .4byte gCurTask
_0803DF88: .4byte 0x0300000C
_0803DF8C: .4byte sub_805217C
_0803DF90: .4byte 0x03000064
_0803DF94: .4byte 0x03000066
_0803DF98: .4byte gUnknown_082B48B4
_0803DF9C: .4byte 0x03000068
_0803DFA0: .4byte 0x0300006A
_0803DFA4: .4byte sub_803E0D8
_0803DFA8:
	ldr r3, _0803DFD8 @ =0x03000066
	adds r2, r7, r3
	ldrh r1, [r2]
	adds r3, #4
	adds r0, r7, r3
	strh r1, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	mov r3, r8
	ldr r0, [r3, #0x60]
	adds r0, r0, r1
	str r0, [r3, #0x60]
	ldrh r0, [r2]
	adds r0, #0x30
	strh r0, [r2]
_0803DFC6:
	movs r1, #0
_0803DFC8:
	movs r5, #0
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0803DFE0
	ldr r0, _0803DFDC @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803DFEA
	.align 2, 0
_0803DFD8: .4byte 0x03000066
_0803DFDC: .4byte gUnknown_030008A0
_0803DFE0:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803DFEA:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803E060 @ =gPlayers
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803E0B2
	ldr r2, [r6, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0803E06A
	ldr r0, [r6, #0x6c]
	cmp r0, sb
	bne _0803E06A
	mov r0, r8
	adds r0, #0x64
	ldrh r1, [r0]
	ldr r0, _0803E064 @ =0x000001FF
	cmp r1, r0
	bhi _0803E028
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r6, #0x14]
_0803E028:
	mov r0, r8
	adds r0, #0x68
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	mov r0, r8
	adds r0, #0x6a
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, #0
	bne _0803E068
	adds r0, r6, #0
	bl sub_801226C
	cmp r0, #0
	bge _0803E068
	adds r0, r6, #0
	bl sub_8008E38
	b _0803E06A
	.align 2, 0
_0803E060: .4byte gPlayers
_0803E064: .4byte 0x000001FF
_0803E068:
	movs r5, #1
_0803E06A:
	mov r0, r8
	ldr r1, [r0, #0x5c]
	asrs r1, r1, #8
	ldr r2, [r0, #0x60]
	asrs r2, r2, #8
	movs r0, #1
	str r0, [sp]
	mov r0, sb
	adds r3, r6, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803E0B2
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	cmp r5, #0
	bne _0803E0B2
	ldrh r0, [r6, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r6, #0x1c]
	ldrh r0, [r6, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r6, #0x18]
	ldrh r0, [r6, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r6, #0x1a]
_0803E0B2:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0803E0C2
	b _0803DFC8
_0803E0C2:
	bl sub_803E32C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803E0D8
sub_803E0D8: @ 0x0803E0D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803E114 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r6, r0, r1
	adds r1, #0xc
	adds r1, r1, r0
	mov r8, r1
	ldr r3, _0803E118 @ =0x03000064
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r0, #0x80
	ldr r1, _0803E11C @ =0x000003FF
	ands r0, r1
	lsrs r4, r0, #8
	adds r0, r4, #0
	cmp r0, #1
	beq _0803E140
	cmp r0, #1
	bgt _0803E120
	cmp r0, #0
	beq _0803E12A
	b _0803E192
	.align 2, 0
_0803E114: .4byte gCurTask
_0803E118: .4byte 0x03000064
_0803E11C: .4byte 0x000003FF
_0803E120:
	cmp r0, #2
	beq _0803E15C
	cmp r0, #3
	beq _0803E178
	b _0803E192
_0803E12A:
	ldr r0, [r6, #0x60]
	asrs r0, r0, #8
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0803E13C @ =sub_805217C
	b _0803E186
	.align 2, 0
_0803E13C: .4byte sub_805217C
_0803E140:
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r6, #0x60]
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0803E158 @ =sub_805203C
	str r2, [sp, #4]
	movs r2, #0
	b _0803E18C
	.align 2, 0
_0803E158: .4byte sub_805203C
_0803E15C:
	ldr r0, [r6, #0x60]
	asrs r0, r0, #8
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #8
	movs r3, #8
	rsbs r3, r3, #0
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _0803E174 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	b _0803E18C
	.align 2, 0
_0803E174: .4byte sub_805217C
_0803E178:
	ldr r0, [r6, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r6, #0x60]
	asrs r1, r1, #8
	add r3, sp, #8
	str r3, [sp]
	ldr r2, _0803E1A4 @ =sub_805203C
_0803E186:
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
_0803E18C:
	bl sub_80517FC
	adds r2, r0, #0
_0803E192:
	adds r0, r4, #0
	cmp r0, #1
	beq _0803E1BC
	cmp r0, #1
	bgt _0803E1A8
	cmp r0, #0
	beq _0803E1B2
	b _0803E1D6
	.align 2, 0
_0803E1A4: .4byte sub_805203C
_0803E1A8:
	cmp r0, #2
	beq _0803E1C4
	cmp r0, #3
	beq _0803E1CE
	b _0803E1D6
_0803E1B2:
	lsls r1, r2, #8
	ldr r0, [r6, #0x60]
	adds r0, r0, r1
	str r0, [r6, #0x60]
	b _0803E1D6
_0803E1BC:
	lsls r1, r2, #8
	ldr r0, [r6, #0x5c]
	subs r0, r0, r1
	b _0803E1D4
_0803E1C4:
	lsls r1, r2, #8
	ldr r0, [r6, #0x60]
	subs r0, r0, r1
	str r0, [r6, #0x60]
	b _0803E1D6
_0803E1CE:
	lsls r1, r2, #8
	ldr r0, [r6, #0x5c]
	adds r0, r0, r1
_0803E1D4:
	str r0, [r6, #0x5c]
_0803E1D6:
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #0x64
	strh r0, [r1]
	movs r4, #0x66
	adds r4, r4, r6
	mov ip, r4
	movs r2, #0xa0
	lsls r2, r2, #1
	strh r2, [r4]
	ldr r4, _0803E250 @ =gUnknown_082B48B4
	ldrh r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	adds r3, r6, #0
	adds r3, #0x68
	strh r0, [r3]
	ldrh r0, [r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r1, [r0, r4]
	mov r2, ip
	movs r4, #0
	ldrsh r0, [r2, r4]
	muls r0, r1, r0
	asrs r0, r0, #0xe
	adds r2, r6, #0
	adds r2, #0x6a
	strh r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r6, #0x5c]
	adds r0, r0, r1
	str r0, [r6, #0x5c]
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r0, [r6, #0x60]
	adds r0, r0, r1
	str r0, [r6, #0x60]
	movs r1, #0
	mov sl, r3
	mov sb, r2
_0803E23E:
	movs r7, #0
	lsls r0, r1, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _0803E258
	ldr r0, _0803E254 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
	b _0803E262
	.align 2, 0
_0803E250: .4byte gUnknown_082B48B4
_0803E254: .4byte gUnknown_030008A0
_0803E258:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0803E262:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803E2BC @ =gPlayers
	adds r5, r0, r1
	adds r0, r5, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803E308
	ldr r0, [r5, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803E2C2
	ldr r0, [r5, #0x6c]
	cmp r0, r8
	bne _0803E2C2
	ldr r1, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	str r1, [r5, #0x14]
	mov r3, sl
	movs r0, #0
	ldrsh r2, [r3, r0]
	ldr r0, [r5, #0x10]
	adds r0, r0, r2
	str r0, [r5, #0x10]
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	adds r0, r5, #0
	bl sub_801226C
	cmp r0, #0
	bge _0803E2C0
	adds r0, r5, #0
	bl sub_8008E38
	b _0803E2C2
	.align 2, 0
_0803E2BC: .4byte gPlayers
_0803E2C0:
	movs r7, #1
_0803E2C2:
	ldr r1, [r6, #0x5c]
	asrs r1, r1, #8
	ldr r2, [r6, #0x60]
	asrs r2, r2, #8
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	adds r3, r5, #0
	bl sub_8020950
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803E308
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	cmp r7, #0
	bne _0803E308
	ldrh r0, [r5, #0x1c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r5, #0x1c]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r5, #0x1a]
_0803E308:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803E23E
	bl sub_803E32C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803E32C
sub_803E32C: @ 0x0803E32C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803E384 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r0, r8
	mov sb, r0
	ldr r0, [r0]
	mov sl, r0
	mov r1, sb
	ldr r0, [r1, #0x5c]
	asrs r0, r0, #8
	ldr r2, _0803E388 @ =gCamera
	ldr r1, [r2]
	subs r7, r0, r1
	mov r1, sb
	ldr r0, [r1, #0x60]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r6, r0, r1
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_802C1D0
	cmp r0, #0
	bne _0803E3D0
	movs r1, #0
	ldr r7, _0803E38C @ =gPlayers
_0803E370:
	lsls r0, r1, #0x10
	adds r6, r0, #0
	cmp r6, #0
	beq _0803E390
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803E394
	.align 2, 0
_0803E384: .4byte gCurTask
_0803E388: .4byte gCamera
_0803E38C: .4byte gPlayers
_0803E390:
	ldr r0, _0803E3C8 @ =gUnknown_030008A0
	ldrb r1, [r0, #6]
_0803E394:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r7
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80213B0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0803E370
	mov r1, sb
	ldrb r0, [r1, #0xa]
	mov r1, sl
	strb r0, [r1]
	ldr r0, _0803E3CC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0803E3F8
	.align 2, 0
_0803E3C8: .4byte gUnknown_030008A0
_0803E3CC: .4byte gCurTask
_0803E3D0:
	ldr r5, _0803E408 @ =0x0300000C
	add r5, r8
	strh r7, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r5, _0803E40C @ =0x03000034
	add r5, r8
	strh r7, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
_0803E3F8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803E408: .4byte 0x0300000C
_0803E40C: .4byte 0x03000034

	thumb_func_start sub_803E410
sub_803E410: @ 0x0803E410
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
