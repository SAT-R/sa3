
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0     @ r5 = cap
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10  @ r7 = worldX
	movs r4, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #8     @ r2 = Q(worldY)
	movs r0, #0xb8
	lsls r0, r0, #5
	adds r6, r2, r0     @ r6 = Q(worldY) + Q(23)
	ldr r1, _0803B74C @ =gUnknown_080CFA3E
	mov r8, r1
_0803B708:
	lsls r2, r4, #2     @ r2 = i * 4
	adds r1, r5, #0
	adds r1, #0x48
	adds r1, r1, r2
	lsls r0, r4, #1     @ r0 = i * 2
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x4a
	adds r0, r0, r2
	ldr r2, _0803B750 @ =0xFFFFFB80
	adds r1, r2, #0
	cmp r4, #0
	beq _0803B72A
	subs r2, #0x40
	adds r1, r2, #0
_0803B72A:
	strh r1, [r0]
	lsls r1, r4, #3     @ r1 = i * 8
	adds r0, r5, #0
	adds r0, #0x68
	adds r3, r0, r1
	lsrs r1, r4, #1     @ r1 = i / 2
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	bne _0803B754
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r2, r0
	b _0803B75C
	.align 2, 0
_0803B74C: .4byte gUnknown_080CFA3E
_0803B750: .4byte 0xFFFFFB80
_0803B754:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r2, r0
_0803B75C:
	lsls r0, r0, #8
	str r0, [r3]
	lsls r0, r4, #3
	adds r1, r5, #0
	adds r1, #0x6c
	adds r1, r1, r0
	str r6, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803B708
	movs r0, #0x10
	bl VramMalloc
	adds r6, r0, #0
	movs r4, #0
	ldr r0, _0803B7FC @ =gTileInfoAnimals
	mov sb, r0              @ sb = &gTileInfoAnimals
	ldr r1, _0803B800 @ =gStageData
	mov r8, r1              @ r8 = gStageData
	movs r2, #0
	mov sl, r2              @ sl = 0
	movs r7, #0             @ r7 = 0
_0803B78C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3         @ r0 = i * 40
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r5, r0
	str r6, [r0]
	adds r6, #0x80
	lsls r3, r4, #3
	mov r1, r8
	ldrb r2, [r1, #9]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r3, r1
	add r1, sb
	ldrh r1, [r1, #4]
	strh r1, [r0, #0xc]
	mov r1, r8
	ldrb r2, [r1, #9]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r3, r3, r1
	add r3, sb
	ldrb r1, [r3, #6]
	strb r1, [r0, #0x1a]
	movs r1, #0x80
	strh r1, [r0, #0x14]
	strh r7, [r0, #0xe]
	strh r7, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	mov r2, sl
	strb r2, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	str r7, [r0, #8]
	bl UpdateSpriteAnimation
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0803B78C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B7FC: .4byte gTileInfoAnimals
_0803B800: .4byte gStageData

.syntax divided
