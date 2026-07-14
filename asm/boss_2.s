.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.else
	thumb_func_start sub_806CFD4
sub_806CFD4: @ 0x0806CFD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r1, _0806D000 @ =gCamera
	ldr r1, [r1, #4]
	subs r3, r0, r1
	lsls r3, r3, #8
	ldr r0, _0806D004 @ =0xFFFF8800
	cmp r3, r0
	ble _0806CFF2
	ldr r5, _0806D008 @ =0xFFFFFC00
	adds r3, r3, r5
	cmp r3, r0
	bge _0806D00C
_0806CFF2:
	adds r3, r0, #0
	lsls r0, r1, #8
	adds r0, r0, r3
	str r0, [r4, #4]
	movs r0, #1
	b _0806D014
	.align 2, 0
_0806D000: .4byte gCamera
_0806D004: .4byte 0xFFFF8800
_0806D008: .4byte 0xFFFFFC00
_0806D00C:
	lsls r0, r1, #8
	adds r0, r0, r3
	str r0, [r4, #4]
	movs r0, #0
_0806D014:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_806D01C
sub_806D01C: @ 0x0806D01C
	push {lr}
	adds r3, r0, #0
	ldr r2, _0806D048 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0806D04C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0806D050 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0806D058
	adds r0, r3, #0
	adds r0, #0x24
	strb r1, [r0]
	ldrb r0, [r3, #0x1d]
	cmp r0, #1
	bne _0806D070
	ldr r0, _0806D054 @ =0xFFFFF900
	b _0806D072
	.align 2, 0
_0806D048: .4byte gPseudoRandom
_0806D04C: .4byte 0x00196225
_0806D050: .4byte 0x3C6EF35F
_0806D054: .4byte 0xFFFFF900
_0806D058:
	adds r0, r3, #0
	adds r0, #0x24
	movs r1, #0xff
	strb r1, [r0]
	ldrb r0, [r3, #0x1d]
	cmp r0, #1
	bne _0806D070
	ldr r0, _0806D06C @ =0xFFFFF900
	b _0806D072
	.align 2, 0
_0806D06C: .4byte 0xFFFFF900
_0806D070:
	ldr r0, _0806D078 @ =0xFFFFFF00
_0806D072:
	str r0, [r3, #0x40]
	pop {r0}
	bx r0
	.align 2, 0
_0806D078: .4byte 0xFFFFFF00

	thumb_func_start sub_806D07C
sub_806D07C: @ 0x0806D07C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0806D0E0 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	adds r6, r1, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	adds r7, r0, #0
	lsls r1, r1, #8
	str r1, [r4, #0x48]
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	ldrh r0, [r4, #0x2c]
	lsrs r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0x28
	str r5, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806D0E4 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D0E0: .4byte gCamera
_0806D0E4: .4byte gBgAffineRegs

	thumb_func_start sub_806D0E8
sub_806D0E8: @ 0x0806D0E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4]
	asrs r1, r1, #8
	ldr r2, _0806D14C @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	adds r6, r1, #0
	ldr r0, [r4, #4]
	asrs r0, r0, #8
	ldr r2, [r2, #4]
	subs r0, r0, r2
	adds r7, r0, #0
	lsls r1, r1, #8
	str r1, [r4, #0x48]
	lsls r0, r0, #8
	str r0, [r4, #0x4c]
	ldrh r0, [r4, #0x2c]
	lsrs r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r5, #0x28
	str r5, [sp]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, _0806D150 @ =gBgAffineRegs
	str r1, [sp, #0xc]
	adds r1, r2, #0
	movs r3, #0x28
	bl sa2__sub_8003EE4
	adds r4, #0x6c
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation_BG
	adds r0, r4, #0
	bl sub_80BE46C
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D14C: .4byte gCamera
_0806D150: .4byte gBgAffineRegs

	thumb_func_start TaskDestructor_Boss2Entrance
TaskDestructor_Boss2Entrance: @ 0x0806D154
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_Boss2Exit
TaskDestructor_Boss2Exit: @ 0x0806D168
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_806D17C
sub_806D17C: @ 0x0806D17C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0xc]
	ldr r0, _0806D18C @ =0xFFFFBA00
	cmp r1, r0
	bgt _0806D190
	movs r0, #1
	b _0806D198
	.align 2, 0
_0806D18C: .4byte 0xFFFFBA00
_0806D190:
	ldr r3, _0806D19C @ =0xFFFFFF00
	adds r0, r1, r3
	str r0, [r2, #0xc]
	movs r0, #0
_0806D198:
	pop {r1}
	bx r1
	.align 2, 0
_0806D19C: .4byte 0xFFFFFF00
.endif
