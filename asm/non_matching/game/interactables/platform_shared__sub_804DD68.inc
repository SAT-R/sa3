.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	ldrh r2, [r3, #0x28]
	ldr r6, [r3, #0x1c]
	ldr r7, [r3, #0x20]
	ldr r4, [r3, #0x18]
	ldr r5, [r3, #0x14]
	cmp r1, #0
	beq _0804DD98
	ldr r0, _0804DD90 @ =gStageData
	ldr r0, [r0, #0x1c]
	muls r0, r1, r0
	adds r2, r2, r0
	ldr r1, _0804DD94 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	b _0804DDA6
	.align 2, 0
_0804DD90: .4byte gStageData
_0804DD94: .4byte 0x000003FF
_0804DD98:
	ldr r0, _0804DDCC @ =gStageData
	ldr r0, [r0, #0x1c]
	lsrs r1, r2, #2
	adds r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	lsls r2, r0, #2
_0804DDA6:
	ldr r1, _0804DDD0 @ =gSineTable
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	muls r0, r1, r0
	asrs r0, r0, #0xe
	adds r0, r6, r0
	str r0, [r3, #0xc]
	adds r0, r5, #0
	muls r0, r1, r0
	asrs r0, r0, #0xe
	adds r0, r7, r0
	str r0, [r3, #0x10]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804DDCC: .4byte gStageData
_0804DDD0: .4byte gSineTable

.syntax divided
