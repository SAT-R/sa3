.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.else
	thumb_func_start sub_806D07C
sub_806D07C: @ 0x0806D07C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0806D0E0 @ =gCamera
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
	ldr r1, _0806D0E4 @ =gBgAffineRegs
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
_0806D0E0: .4byte gCamera
_0806D0E4: .4byte gBgAffineRegs

	thumb_func_start sub_806D0E8
sub_806D0E8: @ 0x0806D0E8
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

	thumb_func_start TaskDestructor_Boss2Entrance
TaskDestructor_Boss2Entrance: @ 0x0806D154
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Boss2Exit
TaskDestructor_Boss2Exit: @ 0x0806D168
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_806D17C
sub_806D17C: @ 0x0806D17C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0xc]
	ldr r0, _0806D18C @ =0xFFFFBA00
	cmp r1, r0
	bgt _0806D190
	movs r0, #1
	b _0806D198
	.align 2, 0
_0806D18C: .4byte 0xFFFFBA00
_0806D190:
	ldr r3, _0806D19C @ =0xFFFFFF00
	adds r0, r1, r3
	str r0, [r2, #0xc]
	movs r0, #0
_0806D198:
	pop {r1}
	bx r1
	.align 2, 0
_0806D19C: .4byte 0xFFFFFF00
.endif
