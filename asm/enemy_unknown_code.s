.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_805CE14
sub_805CE14: @ 0x0805CE14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	mov sl, r3
	movs r7, #0
	ldr r0, [r6]
	asrs r5, r0, #8
	ldr r0, [r6, #4]
	asrs r4, r0, #8
	cmp r2, #0
	beq _0805CE40
	ldrh r0, [r2]
	lsls r0, r0, #8
	adds r5, r5, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #8
	adds r4, r4, r0
_0805CE40:
	str r7, [sp]
	ldr r0, _0805CEB8 @ =sub_805217C
	mov sb, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_8052394
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r1, sl
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0805CE8E
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0805CE8E
	adds r0, r4, #1
	movs r1, #0
	str r1, [sp]
	mov r2, sb
	str r2, [sp, #4]
	adds r1, r5, #0
	movs r2, #1
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_8052394
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0805CEA8
_0805CE8E:
	mov r0, sl
	strb r7, [r0]
	lsls r0, r7, #0x18
	asrs r1, r0, #0x10
	ldr r0, [r6, #4]
	subs r0, r0, r1
	str r0, [r6, #4]
	mov r2, r8
	cmp r2, #0
	beq _0805CEA8
	ldr r0, [r2, #4]
	subs r0, r0, r1
	str r0, [r2, #4]
_0805CEA8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CEB8: .4byte sub_805217C

	thumb_func_start sub_805CEBC
sub_805CEBC: @ 0x0805CEBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x20]
	ldr r7, [sp, #0x24]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0805CF2C @ =Task_40_805C198
	ldr r2, _0805CF30 @ =0x00004040
	ldr r1, _0805CF34 @ =TaskDestructor_805D09C
	str r1, [sp]
	movs r1, #0x40
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x3c
	strh r1, [r0, #0xa]
	mov r1, r8
	str r1, [r0, #0xc]
	mov r1, sb
	str r1, [r0, #0x10]
	strh r4, [r0, #6]
	strh r5, [r0, #8]
	str r7, [r0, #0x14]
	strb r6, [r0, #4]
	strb r2, [r0, #5]
	bl sub_805C138
	cmp r6, #0
	bne _0805CF1C
	movs r0, #0x8a      @ SE_POOF
	bl m4aSongNumStart
_0805CF1C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CF2C: .4byte Task_40_805C198
_0805CF30: .4byte 0x00004040
_0805CF34: .4byte TaskDestructor_805D09C

	thumb_func_start sub_805CF38
sub_805CF38: @ 0x0805CF38
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0805CF76
	ldr r0, _0805CF80 @ =Task_14_805C03C
	ldr r2, _0805CF84 @ =0x00004040
	ldr r1, _0805CF88 @ =TaskDestructor_805C03C
	str r1, [sp]
	movs r1, #0x14
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r1, [sp, #0x18]
	str r1, [r0, #0x10]
	str r6, [r0, #8]
	str r7, [r0, #0xc]
	strh r5, [r0, #2]
	strh r4, [r0, #4]
_0805CF76:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CF80: .4byte Task_14_805C03C
_0805CF84: .4byte 0x00004040
_0805CF88: .4byte TaskDestructor_805C03C

    thumb_func_start TaskDestructor_805C03C
TaskDestructor_805C03C:
    bx lr
    .align 2 , 0

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
