
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _0806C45C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r3, _0806C460 @ =gCamera
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
	movs r1, #0
	ldr r7, _0806C464 @ =gBgAffineRegs
	ldr r4, _0806C468 @ =gPlayers
	movs r2, #0xb4
	lsls r2, r2, #1
_0806C3A8:
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
	bls _0806C3A8
	ldr r1, [r6]
	asrs r1, r1, #8
	ldr r0, [r3]
	subs r1, r1, r0
	str r1, [sp, #0x18]
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	ldr r2, [r3, #4]
	subs r0, r0, r2
	str r0, [sp, #0x1c]
	lsls r1, r1, #8
	str r1, [r6, #0x48]
	lsls r0, r0, #8
	str r0, [r6, #0x4c]
	ldrh r0, [r6, #0x2c]
	lsrs r0, r0, #4
	movs r5, #0x28
	str r5, [sp]
	ldr r2, [sp, #0x18]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r2, [sp, #0x1c]
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
	ldr r1, _0806C46C @ =0x00003FF0
	cmp r0, r1
	bls _0806C430
	strh r1, [r6, #0x2c]
_0806C430:
	adds r0, r6, #0
	bl sub_806C9C4
	ldr r0, [sp, #0x14]
	cmp r0, #0xa
	ble _0806C442
	adds r0, r6, #0
	bl sub_806C5D4
_0806C442:
	adds r0, r6, #0
	bl sub_806C6FC
	cmp r0, #1
	bne _0806C4DE
	ldr r4, [r6, #0x3c]
	cmp r4, #0
	beq _0806C474
	ldr r0, _0806C45C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C470 @ =sub_806C4F8
	b _0806C4DC
	.align 2, 0
_0806C45C: .4byte gCurTask
_0806C460: .4byte gCamera
_0806C464: .4byte gBgAffineRegs
_0806C468: .4byte gPlayers
_0806C46C: .4byte 0x00003FF0
_0806C470: .4byte sub_806C4F8
_0806C474:
	ldr r3, _0806C4E8 @ =gSineTable
	ldrb r1, [r6, #0x1f]
	lsls r0, r1, #3
	adds r0, r0, r3
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x16
	rsbs r2, r2, #0
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r3, [r1]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x16
	lsls r1, r2, #5
	ldr r0, [r6]
	adds r0, r0, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r0, r2
	str r2, [sp, #0x20]
	lsls r1, r3, #5
	ldr r0, [r6, #4]
	adds r0, r0, r1
	lsls r1, r3, #2
	adds r0, r0, r1
	lsls r3, r3, #1
	adds r3, r0, r3
	str r3, [sp, #0x24]
	asrs r1, r2, #8
	str r1, [sp, #0x20]
	adds r2, r3, #0
	asrs r0, r2, #8
	str r4, [sp]
	ldr r2, _0806C4EC @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r6, #4]
	adds r1, r1, r0
	str r1, [r6, #4]
	strh r4, [r6, #0x2a]
	ldr r0, _0806C4F0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0806C4F4 @ =sub_806C7B0
_0806C4DC:
	str r0, [r1, #8]
_0806C4DE:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806C4E8: .4byte gSineTable
_0806C4EC: .4byte sa2__sub_801EE64
_0806C4F0: .4byte gCurTask
_0806C4F4: .4byte sub_806C7B0

.syntax divided
