.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ This function is already decompiled
	thumb_func_start TaskDestructor_Kyacchaa
TaskDestructor_Kyacchaa: @ 0x08065F98
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x5c]
	bl VramFree
	pop {r0}
	bx r0
