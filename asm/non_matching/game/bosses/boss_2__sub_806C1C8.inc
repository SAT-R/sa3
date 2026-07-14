
.syntax unified
.text
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _0806C2DC @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r2, _0806C2E0 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
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
	ldr r1, _0806C2E4 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	ldr r0, _0806C2E8 @ =0x0300006C
	adds r4, r4, r0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	adds r0, r6, #0
	bl sub_806BC50
	movs r1, #0
	ldr r3, _0806C2EC @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C240:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	adds r0, #0x52
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0806C240
	adds r0, r6, #0
	bl sub_806CFD4
	adds r4, r0, #0
	cmp r4, #1
	bne _0806C2C0
	ldr r2, _0806C2E0 @ =gCamera
	ldr r0, [r2]
	adds r0, #0x78
	lsls r0, r0, #8
	str r0, [r6]
	movs r1, #0
	str r1, [r6, #0x44]
	str r1, [r6, #0x40]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r6, #0x38]
	str r1, [r6, #0x3c]
	adds r0, r6, #0
	adds r0, #0x24
	strb r4, [r0]
	movs r3, #0
	strh r1, [r6, #0x2a]
	strb r3, [r6, #0x17]
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r0, [r2]
	subs r1, r1, r0
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	strb r4, [r6, #0x16]
	adds r2, r6, #0
	adds r2, #0x94
	ldr r0, _0806C2F0 @ =gUnknown_080D5780
	ldrh r1, [r0, #0x20]
	strh r1, [r2, #0xc]
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, _0806C2DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C2F4 @ =sub_806C2F8
	str r0, [r1, #8]
_0806C2C0:
	ldr r1, [r6, #0x50]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r6, #0x54]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806C2DC: .4byte gCurTask
_0806C2E0: .4byte gCamera
_0806C2E4: .4byte gBgAffineRegs
_0806C2E8: .4byte 0x0300006C
_0806C2EC: .4byte gPlayers
_0806C2F0: .4byte gUnknown_080D5780
_0806C2F4: .4byte sub_806C2F8

.syntax divided
