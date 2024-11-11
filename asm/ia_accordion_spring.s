.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Task_803F8A0
Task_803F8A0: @ 0x0803F8A0
	push {r4, r5, r6, r7, lr}
	ldr r0, _0803F930 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	adds r0, #0x14
	adds r7, r1, r0
	movs r5, #0
_0803F8B4:
	lsls r0, r5, #2
	adds r1, r6, #0
	adds r1, #0xc
	adds r1, r1, r0
	ldr r4, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803F8D4
	cmp r1, #8
	beq _0803F8D4
	cmp r1, #0x10
	bne _0803F8F4
_0803F8D4:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0803F8F4
	adds r0, r4, #0
	bl sub_803F938
	cmp r0, #0
	beq _0803F8F4
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	adds r0, r4, #0
	bl Player_8009E8C
_0803F8F4:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803F8B4
	adds r1, r6, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bne _0803F924
	movs r0, #0
	strb r0, [r7, #0x1a]
	ldrb r0, [r7, #0x1b]
	orrs r0, r1
	strb r0, [r7, #0x1b]
	ldr r0, _0803F930 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803F934 @ =Task_AccordionSpringMain
	str r0, [r1, #8]
_0803F924:
	bl sub_803FA5C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F930: .4byte gCurTask
_0803F934: .4byte Task_AccordionSpringMain

	thumb_func_start sub_803F938
sub_803F938: @ 0x0803F938
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0803F980 @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r1, r2, r1
	ldr r3, _0803F984 @ =0x03000014
	adds r0, r2, r3
	adds r3, #0x2c
	adds r2, r2, r3
	movs r3, #0x3e
	ldrsh r1, [r1, r3]
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r5, #0
	str r5, [sp]
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #9
	ands r3, r2
	cmp r3, #0
	beq _0803F988
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	strh r5, [r4, #0x1a]
	movs r0, #1
	b _0803F9E8
	.align 2, 0
_0803F980: .4byte gCurTask
_0803F984: .4byte 0x03000014
_0803F988:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0803F9E6
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r5, r1, r0
	str r5, [r4, #0x10]
	strh r3, [r4, #0x18]
	strh r3, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _0803F9C0
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803F9C0
	ldr r1, _0803F9BC @ =0xFFFFFF00
	adds r0, r5, r1
	b _0803F9DC
	.align 2, 0
_0803F9BC: .4byte 0xFFFFFF00
_0803F9C0:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0803F9E6
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803F9E6
	ldr r0, [r4, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
_0803F9DC:
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #4]
_0803F9E6:
	movs r0, #0
_0803F9E8:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_803F9F0
sub_803F9F0: @ 0x0803F9F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0803FA10 @ =gStageData
	ldrb r0, [r1, #9]
	cmp r0, #5
	bne _0803FA18
	ldrb r0, [r1, #0xa]
	cmp r0, #9
	beq _0803FA18
	movs r0, #0x16
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _0803FA14 @ =0x000003AD
	b _0803FA24
	.align 2, 0
_0803FA10: .4byte gStageData
_0803FA14: .4byte 0x000003AD
_0803FA18:
	movs r0, #0x2a
	bl VramMalloc
	str r0, [r4]
	movs r1, #0
	ldr r0, _0803FA58 @ =0x00000376
_0803FA24:
	strh r0, [r4, #0xc]
	strb r1, [r4, #0x1a]
	movs r2, #0
	movs r1, #0
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
_0803FA58: .4byte 0x00000376

	thumb_func_start sub_803FA5C
sub_803FA5C: @ 0x0803FA5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0803FAA4 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4]
	mov r8, r0
	ldr r0, _0803FAA8 @ =0x03000014
	adds r5, r1, r0
	adds r0, #0x2c
	adds r1, r1, r0
	movs r0, #0x3e
	ldrsh r6, [r4, r0]
	movs r0, #0
	ldrsh r7, [r1, r0]
	adds r0, r6, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0803FAAC
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
	b _0803FAE0
	.align 2, 0
_0803FAA4: .4byte gCurTask
_0803FAA8: .4byte 0x03000014
_0803FAAC:
	ldr r1, _0803FAEC @ =gCamera
	ldr r0, [r1]
	subs r0, r6, r0
	strh r0, [r5, #0x10]
	ldr r0, [r1, #4]
	subs r0, r7, r0
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	ldrh r0, [r5, #0x10]
	adds r0, #0x10
	lsls r0, r0, #0x10
	ldr r1, _0803FAF0 @ =0x010F0000
	cmp r0, r1
	bhi _0803FADE
	movs r1, #0x12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0803FADE
	cmp r0, #0xb3
	bgt _0803FADE
	adds r0, r5, #0
	bl DisplaySprite
_0803FADE:
	movs r0, #1
_0803FAE0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803FAEC: .4byte gCamera
_0803FAF0: .4byte 0x010F0000

	thumb_func_start TaskDestructor_AccordionSpring
TaskDestructor_AccordionSpring: @ 0x0803FAF4
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x14]
	bl VramFree
	pop {r0}
	bx r0
