
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0806D14C @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	adds r6, r1, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	adds r7, r0, #0
	lsls r1, r1, #8
	str r1, [r4, #0x48]
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	ldrh r0, [r4, #0x2c]
	lsrs r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0x28
	str r5, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806D150 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D14C: .4byte gCamera
_0806D150: .4byte gBgAffineRegs

.syntax divided
