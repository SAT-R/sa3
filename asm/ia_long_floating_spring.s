.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_804C608
sub_804C608: @ 0x0804C608
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _0804C628 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #3
	bne _0804C62C
	movs r0, #0x18
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	movs r0, #0xf6
	lsls r0, r0, #2
	b _0804C638
	.align 2, 0
_0804C628: .4byte gStageData
_0804C62C:
	movs r0, #0x18
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _0804C678 @ =0x000003AB
_0804C638:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r0, [r4, #0x28]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r4, #8]
	cmp r5, #0
	beq _0804C66C
	movs r0, #0x80
	lsls r0, r0, #4
	orrs r0, r1
	str r0, [r4, #8]
_0804C66C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804C678: .4byte 0x000003AB

	thumb_func_start CreateEntity_LongFloatingSpringA
CreateEntity_LongFloatingSpringA: @ 0x0804C67C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_LongFloatingSpring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start CreateEntity_LongFloatingSpringB
CreateEntity_LongFloatingSpringB: @ 0x0804C6A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	movs r0, #3
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl CreateEntity_LongFloatingSpring
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_LongFloatingSpring
TaskDestructor_LongFloatingSpring: @ 0x0804C6D4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0
