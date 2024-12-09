.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start CreateTakkonProjectile
CreateTakkonProjectile: @ 0x0805B894
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0805B8E0 @ =Task_TakkonProjectileInit
	ldr r2, _0805B8E4 @ =0x00004040
	ldr r1, _0805B8E8 @ =TaskDestructor_TakkonProjectile
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r6, [r0, #4]
	mov r1, r8
	str r1, [r0, #8]
	strh r4, [r0]
	strh r5, [r0, #2]
	bl sub_805B568
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B8E0: .4byte Task_TakkonProjectileInit
_0805B8E4: .4byte 0x00004040
_0805B8E8: .4byte TaskDestructor_TakkonProjectile

	thumb_func_start Task_Proj_805B8EC
Task_Proj_805B8EC: @ 0x0805B8EC
	push {r4, r5, r6, lr}
	ldr r6, _0805B918 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_Proj_805B928
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805B670
	cmp r5, #0
	bne _0805B912
	ldr r0, [r6]
	bl TaskDestroy
_0805B912:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B918: .4byte gCurTask

	thumb_func_start sub_Proj_805B91C
sub_Proj_805B91C: @ 0x0805B91C
	ldr r1, [r0, #8]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #8]
	bx lr

	thumb_func_start sub_Proj_805B928
sub_Proj_805B928: @ 0x0805B928
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0xc
	ldr r2, [r0, #4]
	asrs r2, r2, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805B968 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #8]
	asrs r1, r1, #8
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805B968: .4byte gCamera

	thumb_func_start TaskDestructor_TakkonProjectile
TaskDestructor_TakkonProjectile: @ 0x0805B96C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0
