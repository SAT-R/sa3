.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start TaskDestructor_Minecart
TaskDestructor_Minecart: @ 0x08048618
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x68]
	bl VramFree
	pop {r0}
	bx r0
