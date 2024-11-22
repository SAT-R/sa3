.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

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
