.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0

	thumb_func_start TaskDestructor_Ginpe
TaskDestructor_Ginpe: @ 0x080607B0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	bl VramFree
	pop {r0}
	bx r0
.endif

	thumb_func_start CreateGinpeProjectile
CreateGinpeProjectile: @ 0x080607C4
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #8
	mov sb, r0
	mov sl, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r0, [sp, #0x24]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _08060848 @ =Task_GinpeProj
	ldr r2, _0806084C @ =0x00004040
	ldr r1, _08060850 @ =TaskDestructor_GinpeProj
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	ldrh r1, [r0, #6]
	movs r4, #0xc0
	lsls r4, r4, #0x12
	adds r4, r1, r4
	mov r0, sb
	str r0, [r4, #0x10]
	mov r0, sl
	str r0, [r4, #0x14]
	movs r0, #0
	movs r2, #0
	strh r5, [r4, #4]
	strh r6, [r4, #6]
	strb r0, [r4]
	mov r0, r8
	strb r0, [r4, #1]
	movs r0, #0xff
	strb r0, [r4, #2]
	strh r2, [r4, #0xa]
	strh r2, [r4, #0xc]
	strh r2, [r4, #8]
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _08060854 @ =0x03000044
	adds r1, r1, r0
	ldr r2, _08060858 @ =0x01000002
	add r0, sp, #4
	bl CpuSet
	adds r0, r4, #0
	bl sub_80604F0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060848: .4byte Task_GinpeProj
_0806084C: .4byte 0x00004040
_08060850: .4byte TaskDestructor_GinpeProj
_08060854: .4byte 0x03000044
_08060858: .4byte 0x01000002

	thumb_func_start Task_GinpeProj
Task_GinpeProj: @ 0x0806085C
	push {r4, r5, r6, r7, lr}
	ldr r7, _080608A4 @ =gCurTask
	ldr r0, [r7]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	movs r6, #0
	adds r0, r4, #0
	bl sub_80605FC
	adds r0, r4, #0
	bl sub_80608FC
	adds r0, r4, #0
	bl CheckPlayerCollisionProj
	cmp r0, #1
	bne _08060884
	movs r6, #1
_08060884:
	cmp r6, #1
	bne _080608B4
	ldr r0, _080608A8 @ =0x03000018
	adds r1, r5, r0
	ldr r2, _080608AC @ =gUnknown_080D2014
	ldrh r0, [r2, #8]
	movs r3, #0
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #0xa]
	strb r0, [r1, #0x1a]
	str r3, [r1, #8]
	ldr r1, [r7]
	ldr r0, _080608B0 @ =sub_80608CC
	str r0, [r1, #8]
	b _080608C4
	.align 2, 0
_080608A4: .4byte gCurTask
_080608A8: .4byte 0x03000018
_080608AC: .4byte gUnknown_080D2014
_080608B0: .4byte sub_80608CC
_080608B4:
	adds r0, r4, #0
	bl sub_8060940
	cmp r0, #1
	bne _080608C4
	ldr r0, [r7]
	bl TaskDestroy
_080608C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80608CC
sub_80608CC: @ 0x080608CC
	push {r4, r5, r6, lr}
	ldr r6, _080608F8 @ =gCurTask
	ldr r0, [r6]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_80608FC
	adds r5, r0, #0
	adds r0, r4, #0
	bl CheckPlayerCollisionProj
	cmp r5, #0
	bne _080608F2
	ldr r0, [r6]
	bl TaskDestroy
_080608F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080608F8: .4byte gCurTask

	thumb_func_start sub_80608FC
sub_80608FC: @ 0x080608FC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0x10]
	asrs r2, r2, #8
	ldrh r1, [r0, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0806093C @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x14]
	asrs r1, r1, #8
	ldrh r0, [r0, #6]
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
_0806093C: .4byte gCamera

	thumb_func_start sub_8060940
sub_8060940: @ 0x08060940
	push {r4, lr}
	sub sp, #0x28
	movs r4, #0
	str r4, [sp, #4]
	adds r1, r0, #0
	adds r1, #0x18
	str r1, [sp, #0x1c]
	ldr r1, [r0, #0x10]
	str r1, [sp, #0x10]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0x14]
	mov r2, sp
	ldrh r1, [r0, #4]
	movs r3, #0
	strh r1, [r2, #0xc]
	mov r1, sp
	ldrh r0, [r0, #6]
	strh r0, [r1, #0xe]
	str r4, [sp]
	mov r0, sp
	strb r3, [r0, #8]
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_GinpeProj
TaskDestructor_GinpeProj: @ 0x08060978
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0
