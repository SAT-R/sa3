.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01

	thumb_func_start Task_805DDCC
Task_805DDCC: @ 0x0805DDCC
	push {r4, r5, lr}
	ldr r5, _0805DE04 @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_805DADC
	ldr r0, _0805DE08 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805DE10
	cmp r1, #4
	beq _0805DE10
	adds r0, r4, #0
	bl sub_805D8D4
	cmp r0, #1
	bne _0805DE10
	ldr r1, [r5]
	ldr r0, _0805DE0C @ =sub_805DE34
	str r0, [r1, #8]
	b _0805DE2A
	.align 2, 0
_0805DE04: .4byte gCurTask
_0805DE08: .4byte gStageData
_0805DE0C: .4byte sub_805DE34
_0805DE10:
	adds r1, r4, #0
	adds r1, #0x74
	adds r2, r4, #0
	adds r2, #0x60
	adds r0, r4, #0
	bl sub_805D9C0
	cmp r0, #1
	bne _0805DE2A
	ldr r0, _0805DE30 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805DE2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DE30: .4byte gCurTask
.endif

	thumb_func_start sub_805DE34
sub_805DE34: @ 0x0805DE34
	push {r4, r5, lr}
	ldr r5, _0805DE6C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_805DADC
	ldr r0, _0805DE70 @ =gStageData
	ldrb r1, [r0, #4]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0805DE78
	cmp r1, #4
	beq _0805DE78
	adds r0, r4, #0
	bl sub_805D47C
	cmp r0, #1
	bne _0805DE78
	ldr r1, [r5]
	ldr r0, _0805DE74 @ =sub_805D314
	str r0, [r1, #8]
	b _0805DE92
	.align 2, 0
_0805DE6C: .4byte gCurTask
_0805DE70: .4byte gStageData
_0805DE74: .4byte sub_805D314
_0805DE78:
	adds r1, r4, #0
	adds r1, #0x74
	adds r2, r4, #0
	adds r2, #0x60
	adds r0, r4, #0
	bl sub_805D9C0
	cmp r0, #1
	bne _0805DE92
	ldr r0, _0805DE98 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0805DE92:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DE98: .4byte gCurTask

	thumb_func_start sub_805DE9C
sub_805DE9C: @ 0x0805DE9C
	push {r4, lr}
	movs r4, #0
	str r4, [r3]
	strb r4, [r3, #8]
	str r4, [r3, #4]
	str r1, [r3, #0x1c]
	ldr r1, [r2]
	str r1, [r3, #0x10]
	ldr r1, [r2, #4]
	str r1, [r3, #0x14]
	ldrh r1, [r0, #0x12]
	strh r1, [r3, #0xc]
	ldrh r0, [r0, #0x14]
	strh r0, [r3, #0xe]
	adds r0, r3, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_805DEC4
sub_805DEC4: @ 0x0805DEC4
	push {lr}
	ldrh r0, [r0, #6]
	ldr r1, _0805DED8 @ =0x030000A4
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0
	.align 2, 0
_0805DED8: .4byte 0x030000A4
