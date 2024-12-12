.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start CreateBuzzerProjectile
CreateBuzzerProjectile: @ 0x0805A33C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0805A39C @ =Task_BuzzerProjectileInit
	ldr r2, _0805A3A0 @ =0x00004040
	ldr r1, _0805A3A4 @ =TaskDestructor_BuzzerProjectile
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0, #0x10]
	mov r1, sb
	str r1, [r0, #0x14]
	mov r1, r8
	str r1, [r0, #8]
	mov r1, sb
	str r1, [r0, #0xc]
	strh r4, [r0]
	strh r5, [r0, #2]
	strh r6, [r0, #4]
	bl InitSpriteProjectile
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A39C: .4byte Task_BuzzerProjectileInit
_0805A3A0: .4byte 0x00004040
_0805A3A4: .4byte TaskDestructor_BuzzerProjectile

	thumb_func_start Task_BuzzerProjectileInit
Task_BuzzerProjectileInit: @ 0x0805A3A8
	push {r4, r5, lr}
	ldr r5, _0805A3E0 @ =gCurTask
	ldr r0, [r5]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_805A3E4
	adds r0, r4, #0
	bl sub_805A464
	adds r0, r4, #0
	bl sub_805A194
	adds r0, r4, #0
	bl sub_805A424
	cmp r0, #1
	bne _0805A3D8
	ldr r0, [r5]
	bl TaskDestroy
_0805A3D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A3E0: .4byte gCurTask

	thumb_func_start sub_805A3E4
sub_805A3E4: @ 0x0805A3E4
	push {r4, lr}
	ldr r4, _0805A420 @ =gSineTable
	ldrh r3, [r0, #4]
	lsrs r3, r3, #2
	movs r1, #0xff
	ands r3, r1
	lsls r1, r3, #3
	adds r1, r1, r4
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r1, r1, #1
	ldr r2, [r0, #0x14]
	adds r2, r2, r1
	str r2, [r0, #0x14]
	lsls r3, r3, #3
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r3, r1
	adds r3, r3, r4
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r1, r1, #1
	ldr r2, [r0, #0x10]
	adds r2, r2, r1
	str r2, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A420: .4byte gSineTable

	thumb_func_start sub_805A424
sub_805A424: @ 0x0805A424
	push {lr}
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805A458 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #0xf0
	bhi _0805A454
	cmp r1, #0xa0
	bls _0805A45C
_0805A454:
	movs r0, #1
	b _0805A45E
	.align 2, 0
_0805A458: .4byte gCamera
_0805A45C:
	movs r0, #0
_0805A45E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805A464
sub_805A464: @ 0x0805A464
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805A4A4 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
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
_0805A4A4: .4byte gCamera

	thumb_func_start TaskDestructor_BuzzerProjectile
TaskDestructor_BuzzerProjectile: @ 0x0805A4A8
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0
