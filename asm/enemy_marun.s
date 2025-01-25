.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8063EDC
sub_8063EDC: @ 0x08063EDC
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x38
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x28]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xc]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xe]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_Marun
TaskDestructor_Marun: @ 0x08063F08
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x38]
	bl VramFree
	pop {r0}
	bx r0
