.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_806A728
sub_806A728: @ 0x0806A728
	push {r4, lr}
	ldr r0, _0806A75C @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8069814
	adds r0, r4, #0
	bl UpdateGroundPlate
	adds r0, r4, #0
	bl sub_8069578
	adds r0, r4, #0
	bl sub_806A854
	adds r0, r4, #0
	bl sub_806A898
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A75C: .4byte gCurTask

	thumb_func_start Task_806A760
Task_806A760: @ 0x0806A760
	push {r4, lr}
	ldr r0, _0806A79C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_8069DEC
	ldr r0, _0806A7A0 @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0806A794
	adds r0, r4, #0
	bl sub_8069578
	adds r0, r4, #0
	bl sub_806A854
	adds r0, r4, #0
	bl sub_806A898
_0806A794:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A79C: .4byte gCurTask
_0806A7A0: .4byte gDispCnt

	thumb_func_start sub_806A7A4
sub_806A7A4: @ 0x0806A7A4
	push {r4, lr}
	ldr r0, _0806A7E0 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
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
	adds r0, r4, #0
	bl sub_8069578
	adds r0, r4, #0
	bl sub_806A854
	adds r0, r4, #0
	bl sub_806A898
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A7E0: .4byte gCurTask

	thumb_func_start TaskDestructor_Boss_806A7E4
TaskDestructor_Boss_806A7E4: @ 0x0806A7E4
	push {r4, lr}
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x28]
	bl VramFree
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _0806A802
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x48]
_0806A802:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _0806A810
	bl VramFree
	movs r0, #0
	str r0, [r4, #0x4c]
_0806A810:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806A818
sub_806A818: @ 0x0806A818
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r1, [r4, #0x50]
	ldr r0, [r1, #4]
	movs r3, #0x80
	lsls r3, r3, #0x14
	orrs r0, r3
	str r0, [r1, #4]
	ldr r2, [r4, #0x54]
	ldr r0, [r2, #4]
	orrs r0, r3
	str r0, [r2, #4]
	movs r0, #0
	strh r0, [r4, #0x32]
	strh r0, [r4, #0x2c]
	strh r0, [r4, #0x2e]
	adds r0, r5, #0
	bl ResolvePlayerSpriteCollision
	ldr r1, [r4, #0x54]
	adds r0, r5, #0
	bl ResolvePlayerSpriteCollision
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_806A854
sub_806A854: @ 0x0806A854
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r3, r0
	adds r0, r3, #0
	adds r0, #0xe8
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r2, _0806A890 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	adds r0, r3, #0
	adds r0, #0xec
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A890: .4byte gCamera

	thumb_func_start sub_806A894
sub_806A894: @ 0x0806A894
	bx lr
	.align 2, 0

	thumb_func_start sub_806A898
sub_806A898: @ 0x0806A898
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r0, #0x58]
	asrs r1, r1, #8
	ldr r3, _0806A8FC @ =gCamera
	ldr r2, [r3]
	subs r6, r1, r2
	ldr r1, [r0, #0x5c]
	asrs r1, r1, #8
	ldr r2, [r3, #4]
	subs r7, r1, r2
	ldr r0, [r0, #0x34]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r2, _0806A900 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0x40
	str r5, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806A904 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x40
	bl sa2__sub_8003EE4
	strh r5, [r4, #0x10]
	movs r0, #0x68
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_80BE46C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A8FC: .4byte gCamera
_0806A900: .4byte 0x000003FF
_0806A904: .4byte gBgAffineRegs

	thumb_func_start sub_806A908
sub_806A908: @ 0x0806A908
    movs r0, #0
	bx lr
	.align 2, 0
