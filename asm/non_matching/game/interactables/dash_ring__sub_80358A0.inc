
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08035930 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov ip, r0          @ ip = ring
	ldr r6, [r0]        @ r6 = me
	ldrb r3, [r0, #0xa]
	lsls r3, r3, #3
	ldrh r0, [r0, #4]
	lsls r0, r0, #8
	adds r3, r3, r0
	lsls r3, r3, #8     @ qWorldX = TO_WORLD_POS()
	ldrb r2, [r6, #1]
	lsls r2, r2, #3
	mov r1, ip
	ldrh r0, [r1, #6]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #8     @ qWorldY = Q(TO_WORLD_POS(me->y, ring->base.regionY);
	ldr r1, _08035934 @ =gStageData
	ldr r4, _08035938 @ =0x03000072
	adds r0, r5, r4
	ldrb r4, [r0]       @ r4 ring->unk72
	ldr r0, [r1, #0x1c]
	ldr r7, _0803593C @ =0x0300006E
	adds r1, r5, r7
	muls r0, r4, r0
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r4, _08035940 @ =0x000003FF
	adds r1, r4, #0
	ands r0, r1
	subs r7, #2
	adds r4, r5, r7     @ r4 = &ring->unk6C
	strh r0, [r4]
	movs r0, #4
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r2, r2, r0     @ r2 = qTop
	ldrb r0, [r6, #6]
	lsls r7, r0, #0xa   @ r7 = qHeight
	movs r0, #3
	ldrsb r0, [r6, r0]
	lsls r0, r0, #0xb
	adds r3, r3, r0     @ r3 = qLeft
	ldrb r1, [r6, #5]
	lsls r1, r1, #0xa
	adds r6, r3, r1     @ r6 = qRight
	adds r2, r2, r7
	mov r8, r2          @ r8 = qBottom
	ldr r2, _08035944 @ =gSineTable
	ldrh r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]  @ r0 = SIN(ring->unk6C)
	muls r0, r1, r0
	asrs r3, r0, #0xe
	ldr r4, _08035948 @ =0x03000070
	adds r5, r5, r4
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803594C
	subs r0, r6, r3
	b _0803594E
	.align 2, 0
_08035930: .4byte gCurTask
_08035934: .4byte gStageData
_08035938: .4byte 0x03000072
_0803593C: .4byte 0x0300006E
_08035940: .4byte 0x000003FF
_08035944: .4byte gSineTable
_08035948: .4byte 0x03000070
_0803594C:
	adds r0, r6, r3
_0803594E:
	mov r1, ip
	str r0, [r1, #0x7c]
	mov r3, ip
	adds r3, #0x80
	mov r0, ip
	adds r0, #0x6c
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r7, r0
	asrs r2, r0, #0xe
	mov r0, ip
	adds r0, #0x70
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803597C
	mov r7, r8
	subs r0, r7, r2
	b _08035980
_0803597C:
	mov r1, r8
	adds r0, r1, r2
_08035980:
	str r0, [r3]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
