.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_805CF90
sub_805CF90: @ 0x0805CF90
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r2, _0805CFDC @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	ldr r1, [r2, #4]
	subs r4, r4, r1
	adds r0, #0x80
	movs r1, #0xf8
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0805CFBA
	adds r0, r4, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0805CFBA
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r4, r0
	ble _0805CFE0
_0805CFBA:
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0xf8
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0805CFD6
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0805CFD6
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _0805CFE0
_0805CFD6:
	movs r0, #0
	b _0805CFE2
	.align 2, 0
_0805CFDC: .4byte gCamera
_0805CFE0:
	movs r0, #1
_0805CFE2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_805CFE8
sub_805CFE8: @ 0x0805CFE8
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0805D004
	movs r4, #0x1a
	ldrsh r0, [r1, r4]
	cmp r0, #0
	blt _0805D016
_0805D004:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0805D052
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0805D052
_0805D016:
	ldr r0, [sp, #8]
	subs r0, #0x30
	lsls r0, r0, #8
	str r0, [r1, #0x14]
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r1, #0x1a]
	lsls r0, r3, #0x18
	asrs r2, r0, #0x18
	adds r3, r0, #0
	cmp r2, #0
	bge _0805D036
	movs r4, #0x18
	ldrsh r0, [r1, r4]
	cmp r0, #0
	blt _0805D042
_0805D036:
	cmp r2, #0
	ble _0805D052
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0805D052
_0805D042:
	cmp r3, #0
	bge _0805D04C
	movs r0, #0xfd
	lsls r0, r0, #8
	b _0805D050
_0805D04C:
	movs r0, #0xc0
	lsls r0, r0, #2
_0805D050:
	strh r0, [r1, #0x18]
_0805D052:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_805D058
sub_805D058: @ 0x0805D058
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x18
	ldr r2, [r0, #0xc]
	asrs r2, r2, #8
	ldrh r1, [r0, #6]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r3, _0805D098 @ =gCamera
	ldr r1, [r3]
	subs r2, r2, r1
	strh r2, [r5, #0x10]
	ldr r1, [r0, #0x10]
	asrs r1, r1, #8
	ldrh r0, [r0, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805D098: .4byte gCamera

	thumb_func_start TaskDestructor_805D09C
TaskDestructor_805D09C: @ 0x0805D09C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x18]
	bl VramFree
	pop {r0}
	bx r0
