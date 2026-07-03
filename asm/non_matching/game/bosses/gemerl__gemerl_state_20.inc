
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _080669F8 @ =gPlayers
	adds r6, r5, #0
	adds r6, #0x3c
	ldr r2, _080669FC @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl sub_8068A6C
	movs r3, #0x16
	ldrsh r1, [r5, r3]
	ldr r0, _08066A00 @ =0xFFFFFD00
	cmp r1, r0
	bge _08066AA0
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #0xc]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	ldr r2, [r5, #8]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08066A0E
	ldr r0, _08066A04 @ =0x000001FF
	cmp r4, r0
	bls _08066A08
	movs r4, #0
	b _08066A22
	.align 2, 0
_080669F8: .4byte gPlayers
_080669FC: .4byte gUnknown_080D56F0
_08066A00: .4byte 0xFFFFFD00
_08066A04: .4byte 0x000001FF
_08066A08:
	cmp r4, #0xff
	bls _08066A22
	b _08066A1E
_08066A0E:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	bls _08066A1A
	adds r4, r0, #0
	b _08066A22
_08066A1A:
	cmp r4, #0xff
	bhi _08066A22
_08066A1E:
	movs r4, #0x80
	lsls r4, r4, #1
_08066A22:
	ldr r7, _08066AB0 @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r3, [r0, r1]
	ldr r2, _08066AB4 @ =gUnknown_080D56F0
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #4
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r3, #0
	muls r0, r2, r0
	asrs r1, r0, #0xe
	cmp r1, #0
	bge _08066A56
	rsbs r1, r1, #0
_08066A56:
	lsls r0, r4, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r4, r0, #0
	muls r4, r2, r4
	lsls r4, r4, #2
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A38
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r5, #0
	movs r1, #0x15
	bl Gemerl_SwitchState
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08066A9A
	ldrb r0, [r6, #0x1a]
	adds r0, #1
	strb r0, [r6, #0x1a]
_08066A9A:
	movs r0, #0xe7      @ SE_231
	bl m4aSongNumStart
_08066AA0:
	adds r0, r5, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08066AB0: .4byte gSineTable
_08066AB4: .4byte gUnknown_080D56F0

.syntax divided
