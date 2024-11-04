.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80384B0
sub_80384B0: @ 0x080384B0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #9
	bl VramMalloc
	str r0, [r4]
	movs r0, #0
	mov sl, r0
	movs r6, #0
	ldr r0, _08038540 @ =0x000003D1
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0x1a]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xe]
	strh r6, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r0, r8
	strb r0, [r4, #0x1c]
	mov r0, sl
	strb r0, [r4, #0x1f]
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	str r0, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r0, #4
	bl VramMalloc
	str r0, [r5]
	ldr r0, _08038544 @ =0x00000412
	strh r0, [r5, #0xc]
	mov r0, sl
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x14]
	strh r6, [r5, #0xe]
	strh r6, [r5, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r5, #0x1b]
	mov r0, r8
	strb r0, [r5, #0x1c]
	movs r0, #0xf
	strb r0, [r5, #0x1f]
	mov r0, sb
	str r0, [r5, #0x20]
	str r6, [r5, #8]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08038540: .4byte 0x000003D1
_08038544: .4byte 0x00000412

	thumb_func_start sub_8038548
sub_8038548: @ 0x08038548
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080385A0 @ =gCurTask
	mov sb, r0
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0xc
	adds r5, r1, r0
	ldr r1, [r4]
	mov r8, r1
	ldrb r2, [r4, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r6, r2, #0x10
	lsls r1, r1, #0x10
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl IsPointInScreenRect
	cmp r0, #0
	bne _080385A4
	ldrb r0, [r4, #0xa]
	mov r1, r8
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #0
	b _080385E4
	.align 2, 0
_080385A0: .4byte gCurTask
_080385A4:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _080385C8
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	ldr r2, _080385C4 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0x5c]
	ldr r0, [r0, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	b _080385D4
	.align 2, 0
_080385C4: .4byte gCamera
_080385C8:
	ldr r0, _080385F0 @ =gCamera
	ldr r1, [r0]
	subs r1, r6, r1
	strh r1, [r5, #0x10]
	ldr r0, [r0, #4]
	subs r0, r7, r0
_080385D4:
	strh r0, [r5, #0x12]
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	movs r0, #1
_080385E4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080385F0: .4byte gCamera

	thumb_func_start TaskDestructor_Omochao
TaskDestructor_Omochao: @ 0x080385F4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	bl VramFree
	ldr r0, [r4, #0x34]
	bl VramFree
	ldr r0, [r4, #0x64]
	bl EwramFree
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
