
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0800C9F0 @ =gPlayers
	adds r5, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0800C9F8
	ldr r0, [r4, #0x14]
	ldr r1, _0800C9F4 @ =0xFFFFE000
	b _0800C9FE
	.align 2, 0
_0800C9F0: .4byte gPlayers
_0800C9F4: .4byte 0xFFFFE000
_0800C9F8:
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #6
_0800C9FE:
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800CA12
	ldr r0, [r4, #4]
	orrs r0, r1
	b _0800CA1A
_0800CA12:
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0800CA1A:
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r0, _0800CA8C @ =0xFFFEFFFF
	ands r1, r0
	str r1, [r4, #4]
	ldr r0, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #9
	ands r0, r7
	orrs r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800CA3E
	b _0800CB52
_0800CA3E:
	adds r0, r4, #0
	bl sub_8011D08
	adds r0, r4, #0
	bl sub_8011E70
	adds r0, r4, #0
	bl sub_8011FB8
	adds r0, r4, #0
	bl sub_8012118
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x5c
	bne _0800CA7A
	ldr r6, [r4]
	ldr r0, _0800CA90 @ =sub_800C9C4
	cmp r6, r0
	bne _0800CA7A
	adds r0, r4, #0
	bl sub_8017004
	movs r1, #0x30
	ldrsh r0, [r4, r1]
	cmp r0, #0x5c
	bne _0800CA7A
	ldr r0, [r4]
	cmp r0, r6
	beq _0800CA98
_0800CA7A:
	ldr r0, [r5, #4]
	ldr r1, _0800CA94 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	b _0800CB52
	.align 2, 0
_0800CA8C: .4byte 0xFFFEFFFF
_0800CA90: .4byte sub_800C9C4
_0800CA94: .4byte 0xFDFFFFFF
_0800CA98:
	ldr r0, [r4, #4]
	ands r0, r7
	cmp r0, #0
	beq _0800CAA8
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #6
	b _0800CAAC
_0800CAA8:
	ldr r0, [r4, #0x14]
	ldr r1, _0800CAE4 @ =0xFFFFE000
_0800CAAC:
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, _0800CAE8 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _0800CAD6
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r2, #0x1c
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #8
	beq _0800CAD6
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #8
	bne _0800CAEC
_0800CAD6:
	ldrh r0, [r5, #0x30]
	subs r0, #0xce
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0800CB52
	b _0800CB06
	.align 2, 0
_0800CAE4: .4byte 0xFFFFE000
_0800CAE8: .4byte gStageData
_0800CAEC:
	ldrh r1, [r5, #0x34]
	ldr r0, _0800CB3C @ =0x00000151
	cmp r1, r0
	beq _0800CB52
	adds r0, #0xe
	cmp r1, r0
	beq _0800CB52
	adds r0, #0x3e
	cmp r1, r0
	beq _0800CB52
	subs r0, #0x3d
	cmp r1, r0
	beq _0800CB52
_0800CB06:
	movs r0, #0
	strh r0, [r4, #0x18]
	ldr r0, [r5, #4]
	ldr r1, _0800CB40 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r5, #4]
	adds r0, r4, #0
	bl Player_8012FE0
	movs r0, #0x18
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	ldr r1, _0800CB44 @ =0xDDFFFFBF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800CB48
	adds r0, r4, #0
	bl sub_800E150
	b _0800CB52
	.align 2, 0
_0800CB3C: .4byte 0x00000151
_0800CB40: .4byte 0xFDFFFFFF
_0800CB44: .4byte 0xDDFFFFBF
_0800CB48:
	ldr r1, _0800CB58 @ =sub_800DF10
	str r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
_0800CB52:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CB58: .4byte sub_800DF10

.syntax divided
