.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start we__sub_805274C
we__sub_805274C: @ 0x080B1AF4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r3, #0
	subs r3, #1
	cmp r0, #0
	beq _08052790
	movs r6, #0x1f
	movs r7, #0x1f
_0805275E:
	ldrh r0, [r4]
	adds r2, r7, #0
	ands r2, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x15
	ands r1, r7
	lsrs r0, r0, #0x1a
	ands r0, r7
	lsrs r2, r2, #1
	ands r2, r6
	lsrs r1, r1, #1
	ands r1, r6
	lsls r1, r1, #5
	orrs r2, r1
	lsrs r0, r0, #1
	ands r0, r6
	lsls r0, r0, #0xa
	orrs r2, r0
	strh r2, [r5]
	adds r5, #2
	adds r4, #2
	adds r0, r3, #0
	subs r3, #1
	cmp r0, #0
	bne _0805275E
_08052790:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
