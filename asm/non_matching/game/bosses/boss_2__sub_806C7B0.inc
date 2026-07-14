
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0806C8A0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r3, _0806C8A4 @ =gCamera
	ldr r0, [r3]
	subs r1, r1, r0
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	subs r0, r0, r2
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	movs r1, #0
	ldr r7, _0806C8A8 @ =gBgAffineRegs
	ldr r4, _0806C8AC @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C7E4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r4
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C7E4
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r0, [r3]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	subs r0, r0, r2
	str r0, [sp, #0x14]
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	ldrh r0, [r6, #0x2c]
	lsrs r0, r0, #4
	movs r5, #0x28
	str r5, [sp]
	ldr r2, [sp, #0x10]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r2, [sp, #0x14]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	adds r4, r6, #0
	adds r4, #0x6c
	movs r7, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	strb r7, [r6, #0x16]
	ldrb r0, [r6, #0x17]
	cmp r0, #0
	bne _0806C898
	strh r0, [r6, #0x2a]
	strb r7, [r6, #0x18]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x51
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	adds r0, r6, #0
	adds r0, #0xc4
	adds r1, r6, #0
	adds r1, #0x48
	adds r2, r6, #0
	adds r2, #0x16
	bl sub_80789EC
	ldr r2, _0806C8B0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0806C8B4 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0806C8A0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C8B8 @ =sub_806C8BC
	str r0, [r1, #8]
_0806C898:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C8A0: .4byte gCurTask
_0806C8A4: .4byte gCamera
_0806C8A8: .4byte gBgAffineRegs
_0806C8AC: .4byte gPlayers
_0806C8B0: .4byte gDispCnt
_0806C8B4: .4byte 0x0000FBFF
_0806C8B8: .4byte sub_806C8BC

.syntax divided
