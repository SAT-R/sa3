
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _0806C5BC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r1, #0
	ldr r7, _0806C5C0 @ =gCamera
	ldr r0, _0806C5C4 @ =gBgAffineRegs
	mov ip, r0
	ldr r5, _0806C5C8 @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C516:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C516
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r0, [r7]
	subs r1, r1, r0
	adds r3, r1, #0
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r7, #4]
	subs r0, r0, r2
	adds r4, r0, #0
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	ldrh r0, [r6, #0x2c]
	lsrs r0, r0, #4
	movs r5, #0x28
	str r5, [sp]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, ip
	str r1, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	adds r4, r6, #0
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	adds r0, r6, #0
	bl sub_806BC50
	ldrh r0, [r6, #0x2c]
	subs r0, #0xe0
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0806C5CC @ =0x00003FF0
	cmp r0, r1
	bls _0806C59C
	strh r1, [r6, #0x2c]
_0806C59C:
	adds r0, r6, #0
	bl sub_806C9C4
	adds r0, r6, #0
	bl sub_806CF70
	cmp r0, #1
	bne _0806C5B4
	ldr r0, _0806C5BC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C5D0 @ =sub_806C370
	str r0, [r1, #8]
_0806C5B4:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C5BC: .4byte gCurTask
_0806C5C0: .4byte gCamera
_0806C5C4: .4byte gBgAffineRegs
_0806C5C8: .4byte gPlayers
_0806C5CC: .4byte 0x00003FF0
_0806C5D0: .4byte sub_806C370

.syntax divided
