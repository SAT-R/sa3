.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8063E5C
sub_8063E5C: @ 0x08063E5C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r3, #0
	adds r5, #0x38
	adds r4, r3, #0
	adds r4, #0x2c
	ldr r1, [r3, #0x24]
	asrs r1, r1, #8
	ldrh r0, [r3, #0xc]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, _08063EA4 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r5, #0x10]
	ldr r1, [r3, #0x28]
	asrs r1, r1, #8
	ldrh r0, [r3, #0xe]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r2, #4]
	subs r1, r1, r0
	strh r1, [r5, #0x12]
	ldr r2, _08063EA8 @ =gUnknown_080D210C
	ldrh r0, [r5, #0xc]
	ldrh r6, [r2, #0x10]
	cmp r0, r6
	bne _08063EAC
	ldrb r0, [r5, #0x1a]
	ldrb r2, [r2, #0x12]
	cmp r0, r2
	bne _08063EAC
	adds r0, r1, #0
	subs r0, #0xb
	b _08063EB0
	.align 2, 0
_08063EA4: .4byte gCamera
_08063EA8: .4byte gUnknown_080D210C
_08063EAC:
	ldrh r0, [r5, #0x12]
	adds r0, #6
_08063EB0:
	strh r0, [r5, #0x12]
	ldrh r0, [r3, #0x10]
	strh r0, [r4]
	ldrh r0, [r5, #0x10]
	strh r0, [r4, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r4, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	bl TransformSprite
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r4, r0, #0
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8063EDC
sub_8063EDC: @ 0x08063EDC
	push {lr}
	movs r2, #0
	str r2, [r1]
	strb r2, [r1, #8]
	str r2, [r1, #4]
	adds r2, r0, #0
	adds r2, #0x38
	str r2, [r1, #0x1c]
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x10]
	ldr r2, [r0, #0x28]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0xc]
	strh r2, [r1, #0xc]
	ldrh r0, [r0, #0xe]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_Marun
TaskDestructor_Marun: @ 0x08063F08
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x38]
	bl VramFree
	pop {r0}
	bx r0
