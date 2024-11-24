.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_8032A8C
Task_8032A8C: @ 0x08032A8C
	push {r4, r5, r6, lr}
	ldr r6, _08032AF4 @ =gCurTask
	ldr r0, [r6]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x10
	adds r5, r1, r0
	ldrh r0, [r4, #0x3a]
	subs r0, #1
	strh r0, [r4, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xdf
	bgt _08032AB0
	movs r0, #0xe0
	strh r0, [r4, #0x3a]
_08032AB0:
	ldrh r0, [r4, #0x3a]
	ldrh r1, [r4, #0x38]
	adds r0, r0, r1
	ldr r2, _08032AF8 @ =0x00003FF0
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x38]
	lsrs r0, r0, #4
	movs r1, #0x55
	bl Div
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xb
	bls _08032AD0
	movs r1, #0xb
_08032AD0:
	ldr r0, _08032AFC @ =0x0000036A
	strh r0, [r5, #0xc]
	strb r1, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	cmp r1, #0
	bne _08032AE8
	strh r1, [r4, #0x38]
	strh r1, [r4, #0x3a]
	ldr r1, [r6]
	ldr r0, _08032B00 @ =Task_RotatingHandleInit
	str r0, [r1, #8]
_08032AE8:
	movs r0, #0
	bl sub_8032410
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08032AF4: .4byte gCurTask
_08032AF8: .4byte 0x00003FF0
_08032AFC: .4byte 0x0000036A
_08032B00: .4byte Task_RotatingHandleInit

	thumb_func_start TaskDestructor_RotatingHandle
TaskDestructor_RotatingHandle: @ 0x08032B04
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8032B18
sub_8032B18: @ 0x08032B18
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, _08032B58 @ =0x0000036A
	strh r0, [r4, #0xc]
	strb r2, [r4, #0x1a]
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
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032B58: .4byte 0x0000036A
