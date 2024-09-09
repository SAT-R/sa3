.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start sub_80450D8
sub_80450D8: @ 0x080450D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	lsls r2, r0, #1
	ldr r0, [r5, #0x10]
	asrs r0, r0, #8
	movs r3, #0x14
	ldrsh r1, [r4, r3]
	subs r0, r0, r1
	cmp r0, #0
	bge _080450F4
	movs r0, #0
_080450F4:
	lsls r0, r0, #9
	adds r1, r2, #0
	bl __divsi3
	ldr r1, _08045130 @ =gSineTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	muls r0, r1, r0
	asrs r0, r0, #6
	ldr r1, [r4, #0x6c]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r5, #0x14]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08045130: .4byte gSineTable
.endif

	thumb_func_start TaskDestructor_SunsetBridge
TaskDestructor_SunsetBridge: @ 0x08045134
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _08045148 @ =0x03000080
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_08045148: .4byte 0x03000080
