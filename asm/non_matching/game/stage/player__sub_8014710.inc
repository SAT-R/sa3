
.syntax unified
.text
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _08014796
	movs r5, #0
	ldr r0, _0801476C @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	bne _08014796
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08014796
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08014796
	adds r2, r4, #0
	adds r2, #0x57
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0801475A
	subs r0, r1, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08014784
_0801475A:
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r3, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08014770
	movs r5, #1
	b _08014788
	.align 2, 0
_0801476C: .4byte gStageData
_08014770:
	subs r0, r3, #1
	strb r0, [r1]
	movs r0, #0x78
	strb r0, [r2]
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_801782C
_08014784:
	cmp r5, #0
	beq _08014796
_08014788:
	adds r0, r4, #0
	movs r1, #0x9d
	bl Player_PlaySong
	adds r0, r4, #0
	bl Player_HitWithoutRings
_08014796:
	pop {r4, r5}
	pop {r0}
	bx r0

.syntax divided
