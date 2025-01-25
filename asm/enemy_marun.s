.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_8063D38
sub_8063D38: @ 0x08063D38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x2c
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #1
	beq _08063DA0
	adds r5, r6, #0
	adds r5, #0x5c
	ldrb r0, [r5]
	subs r0, #0x10
	strb r0, [r5]
	adds r4, r6, #0
	adds r4, #0x5d
	ldrb r0, [r4]
	subs r0, #0x10
	strb r0, [r4]
	adds r3, r6, #0
	adds r3, #0x5e
	ldrb r0, [r3]
	subs r0, #0x10
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x5f
	ldrb r0, [r2]
	subs r0, #0x10
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	subs r0, #0x10
	strb r0, [r1]
	ldrb r0, [r6, #8]
	mov r8, r5
	adds r7, r4, #0
	adds r5, r3, #0
	adds r4, r2, #0
	cmp r0, #1
	bne _08063DC4
_08063DA0:
	adds r4, r6, #0
	adds r4, #0x5c
	movs r0, #0xfc
	strb r0, [r4]
	adds r3, r6, #0
	adds r3, #0x5d
	strb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x5e
	movs r0, #4
	strb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x5f
	strb r0, [r1]
	mov r8, r4
	adds r7, r3, #0
	adds r5, r2, #0
	adds r4, r1, #0
_08063DC4:
	adds r0, r6, #0
	mov r1, sp
	bl sub_8063EDC
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0x38
	str r0, [sp, #0x1c]
	ldr r0, [r6, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x20]
	str r0, [sp, #0x14]
	mov r1, sp
	ldrh r0, [r6, #0xc]
	movs r2, #0
	strh r0, [r1, #0xc]
	ldrh r0, [r6, #0xe]
	strh r0, [r1, #0xe]
	ldr r0, [r6]
	str r0, [sp]
	ldrb r0, [r6, #7]
	strb r0, [r1, #8]
	mov r0, sp
	str r2, [sp, #0x28]
	bl sub_805C280
	adds r3, r0, #0
	ldrb r0, [r6, #8]
	ldr r2, [sp, #0x28]
	cmp r0, #1
	beq _08063E44
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	ldrb r0, [r7]
	adds r0, #0x10
	strb r0, [r7]
	ldrb r0, [r5]
	adds r0, #0x10
	strb r0, [r5]
	ldrb r0, [r4]
	adds r0, #0x10
	strb r0, [r4]
	adds r1, r6, #0
	adds r1, #0x64
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #0x10
	strb r0, [r1]
	ldrb r0, [r6, #8]
	cmp r0, #1
	bne _08063E4E
_08063E44:
	mov r0, r8
	strb r2, [r0]
	strb r2, [r7]
	strb r2, [r5]
	strb r2, [r4]
_08063E4E:
	adds r0, r3, #0
	add sp, #0x2c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

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
