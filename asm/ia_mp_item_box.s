.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_804ED44
sub_804ED44: @ 0x0804ED44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r7, sl
	adds r7, #0xc
	movs r0, #0x10
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0xc]
	movs r4, #0
	ldr r0, _0804EDFC @ =0x00000524
	strh r0, [r7, #0xc]
	movs r0, #0
	strb r0, [r7, #0x1a]
	movs r5, #0xc0
	lsls r5, r5, #3
	strh r5, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r1, #0x10
	mov sb, r1
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	str r0, [r7, #0x20]
	movs r6, #0x90
	lsls r6, r6, #5
	str r6, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r7, #0x28
	movs r0, #4
	bl VramMalloc
	mov r1, sl
	str r0, [r1, #0x34]
	ldr r0, _0804EE00 @ =0x00000523
	strh r0, [r7, #0xc]
	ldr r0, _0804EE04 @ =gUnknown_03001060
	adds r0, #0x55
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	adds r0, #0xf
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x14]
	strh r4, [r7, #0xe]
	strh r4, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r1, #0
	strb r1, [r7, #0x1f]
	mov r0, r8
	str r0, [r7, #0x20]
	str r6, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	mov r0, sl
	adds r0, #0x5c
	strh r4, [r0]
	adds r0, #2
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EDFC: .4byte 0x00000524
_0804EE00: .4byte 0x00000523
_0804EE04: .4byte gUnknown_03001060

	thumb_func_start sub_804EE08
sub_804EE08: @ 0x0804EE08
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r0, _0804EE64 @ =gUnknown_03001060
	adds r0, #0x52
	ldrh r4, [r0]
	adds r5, r4, #0
	ldr r0, _0804EE68 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r3, r0
	ldr r1, _0804EE6C @ =0x0300006C
	adds r0, r3, r1
	ldr r2, _0804EE70 @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _0804EE74 @ =0x0300006E
	adds r0, r3, r1
	ldr r2, [r2, #4]
	ldrh r1, [r0]
	subs r1, r1, r2
	ldr r2, _0804EE78 @ =0x03000070
	adds r3, r3, r2
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	cmp r0, #0
	beq _0804EE82
	cmp r4, #0x1f
	bhi _0804EE7C
	lsls r0, r4, #0x13
	b _0804EE96
	.align 2, 0
_0804EE64: .4byte gUnknown_03001060
_0804EE68: .4byte gCurTask
_0804EE6C: .4byte 0x0300006C
_0804EE70: .4byte gCamera
_0804EE74: .4byte 0x0300006E
_0804EE78: .4byte 0x03000070
_0804EE7C:
	ldr r0, _0804EE88 @ =0x0000019F
	cmp r4, r0
	bhi _0804EE8C
_0804EE82:
	movs r2, #0x80
	lsls r2, r2, #1
	b _0804EE9C
	.align 2, 0
_0804EE88: .4byte 0x0000019F
_0804EE8C:
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r5
	lsls r0, r0, #0x12
_0804EE96:
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0804EF18
_0804EE9C:
	movs r0, #0xfe
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0804EF18
	adds r0, r6, #0
	adds r0, #0x60
	strh r2, [r0]
	adds r0, #2
	strh r7, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r4, r6, #0
	adds r4, #0x34
	ldr r5, _0804EF24 @ =gUnknown_03002C24
	ldrb r0, [r5]
	movs r1, #0x81
	lsls r1, r1, #5
	mov r8, r1
	orrs r0, r1
	str r0, [r4, #8]
	adds r7, r6, #0
	adds r7, #0x5c
	adds r0, r4, #0
	adds r1, r7, #0
	bl TransformSprite
	ldr r0, _0804EF28 @ =gUnknown_03001060
	adds r0, #0x55
	ldrb r0, [r0]
	adds r0, #0xf
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	mov r2, sb
	cmp r2, #0
	beq _0804EF18
	subs r4, #0x28
	ldrb r0, [r5]
	mov r1, r8
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r1, r7, #0
	bl TransformSprite
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
_0804EF18:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EF24: .4byte gUnknown_03002C24
_0804EF28: .4byte gUnknown_03001060

	thumb_func_start CreateCloudEffect
CreateCloudEffect: @ 0x0804EF2C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0804EFC0 @ =Task_SomeCloudEffect
	ldr r2, _0804EFC4 @ =0x00004040
	ldr r1, _0804EFC8 @ =TaskDestructor_SomeCloudEffect
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	movs r0, #0
	mov sb, r0
	movs r0, #0
	mov r8, r0
	strh r5, [r4, #0x28]
	strh r6, [r4, #0x2a]
	movs r0, #0x10
	bl VramMalloc
	str r0, [r4]
	ldr r0, _0804EFCC @ =0x0000053A
	strh r0, [r4, #0xc]
	mov r0, sb
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r1, _0804EFD0 @ =gCamera
	ldr r0, [r1]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r5, r5, r0
	strh r5, [r4, #0x10]
	ldr r0, [r1, #4]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	subs r6, r6, r0
	strh r6, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	mov r0, r8
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x16]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r0, sb
	strb r0, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x20]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804EFC0: .4byte Task_SomeCloudEffect
_0804EFC4: .4byte 0x00004040
_0804EFC8: .4byte TaskDestructor_SomeCloudEffect
_0804EFCC: .4byte 0x0000053A
_0804EFD0: .4byte gCamera

	thumb_func_start TaskDestructor_ItemBoxMP
TaskDestructor_ItemBoxMP: @ 0x0804EFD4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_SomeCloudEffect
TaskDestructor_SomeCloudEffect: @ 0x0804EFF0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start Task_804F004
Task_804F004: @ 0x0804F004
	push {r4, lr}
	ldr r4, _0804F02C @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	ldr r0, _0804F030 @ =0x03000073
	adds r2, r3, r0
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0804F038
	movs r0, #0
	strb r0, [r2]
	ldr r1, [r4]
	ldr r0, _0804F034 @ =sub_804F05C
	str r0, [r1, #8]
	b _0804F046
	.align 2, 0
_0804F02C: .4byte gCurTask
_0804F030: .4byte 0x03000073
_0804F034: .4byte sub_804F05C
_0804F038:
	ldr r2, _0804F054 @ =0x03000070
	adds r1, r3, r2
	ldr r2, _0804F058 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_0804F046:
	movs r0, #0
	bl sub_804EE08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F054: .4byte 0x03000070
_0804F058: .4byte 0xFFFFFF00

	thumb_func_start sub_804F05C
sub_804F05C: @ 0x0804F05C
	push {lr}
	ldr r3, _0804F080 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	ldr r0, _0804F084 @ =0x03000073
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0804F08C
	ldr r1, [r3]
	ldr r0, _0804F088 @ =sub_804F098
	str r0, [r1, #8]
	b _0804F092
	.align 2, 0
_0804F080: .4byte gCurTask
_0804F084: .4byte 0x03000073
_0804F088: .4byte sub_804F098
_0804F08C:
	movs r0, #0
	bl sub_804EE08
_0804F092:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_804F098
sub_804F098: @ 0x0804F098
	push {r4, lr}
	ldr r4, _0804F0D0 @ =gCurTask
	ldr r0, [r4]
	ldrh r3, [r0, #6]
	ldr r0, _0804F0D4 @ =gUnknown_03001060
	adds r0, #0x52
	ldrh r1, [r0]
	ldr r0, _0804F0D8 @ =0x000001DF
	cmp r1, r0
	bls _0804F0C8
	ldr r0, _0804F0DC @ =0x03000070
	adds r1, r3, r0
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804F0E0 @ =0x03000073
	adds r0, r3, r1
	strb r2, [r0]
	adds r1, #1
	adds r0, r3, r1
	strb r2, [r0]
	ldr r1, [r4]
	ldr r0, _0804F0E4 @ =Task_ItemBoxMP
	str r0, [r1, #8]
_0804F0C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804F0D0: .4byte gCurTask
_0804F0D4: .4byte gUnknown_03001060
_0804F0D8: .4byte 0x000001DF
_0804F0DC: .4byte 0x03000070
_0804F0E0: .4byte 0x03000073
_0804F0E4: .4byte Task_ItemBoxMP

	thumb_func_start Task_SomeCloudEffect
Task_SomeCloudEffect: @ 0x0804F0E8
	push {r4, r5, lr}
	ldr r5, _0804F11C @ =gCurTask
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _0804F120 @ =gCamera
	ldr r1, [r2]
	ldrh r0, [r4, #0x28]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	ldrh r0, [r4, #0x2a]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	beq _0804F124
	adds r0, r4, #0
	bl DisplaySprite
	b _0804F12A
	.align 2, 0
_0804F11C: .4byte gCurTask
_0804F120: .4byte gCamera
_0804F124:
	ldr r0, [r5]
	bl TaskDestroy
_0804F12A:
	pop {r4, r5}
	pop {r0}
	bx r0
