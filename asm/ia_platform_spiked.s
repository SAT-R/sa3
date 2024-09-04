.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80455FC
sub_80455FC: @ 0x080455FC
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x40
	ldr r1, [r0, #0xc]
	asrs r1, r1, #8
	ldr r3, _08045644 @ =gCamera
	ldr r2, [r3]
	subs r1, r1, r2
	strh r1, [r4, #0x10]
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r1, [r3, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #8]
	ldr r1, _08045648 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08045644: .4byte gCamera
_08045648: .4byte 0xFFFFFBFF

	thumb_func_start TaskDestructor_PlatformSpiked
TaskDestructor_PlatformSpiked: @ 0x0804564C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x40]
	bl VramFree
	pop {r0}
	bx r0
