.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start sub_80581C8
sub_80581C8: @ 0x080581C8
	push {lr}
	sub sp, #4
	bl sub_807B6C8
	ldr r0, _080581E8 @ =sub_80581F0
	movs r2, #0xf0
	lsls r2, r2, #8
	movs r1, #0
	str r1, [sp]
	movs r3, #0
	bl TaskCreate
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_080581E8: .4byte sub_80581F0

	thumb_func_start sub_80581EC
sub_80581EC: @ 0x080581EC
	bx lr
	.align 2, 0
    
	thumb_func_start sub_80581F0
sub_80581F0: @ 0x080581F0
	bx lr
	.align 2, 0
