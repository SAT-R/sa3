
.syntax unified
.text
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _0806C1B8 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r5, r4
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0806C1BC @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	str r0, [sp, #0x14]
	lsls r1, r1, #8
	str r1, [r4, #0x48]
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	ldrh r0, [r4, #0x2c]
	lsrs r0, r0, #4
	movs r6, #0x28
	str r6, [sp]
	ldr r2, [sp, #0x10]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r2, [sp, #0x14]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806C1C0 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r1, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	ldr r0, _0806C1C4 @ =0x0300006C
	adds r5, r5, r0
	strh r6, [r5, #0x10]
	strh r6, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r5, #0
	bl sub_80BE46C
	adds r0, r4, #0
	bl sub_806BC50
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806C1B8: .4byte gCurTask
_0806C1BC: .4byte gCamera
_0806C1C0: .4byte gBgAffineRegs
_0806C1C4: .4byte 0x0300006C

.syntax divided
