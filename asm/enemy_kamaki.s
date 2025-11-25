.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_80650C8
sub_80650C8: @ 0x080650C8
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0
	str r0, [r1]
	strb r0, [r1, #8]
	str r0, [r1, #4]
	adds r0, r2, #0
	adds r0, #0x2c
	str r0, [r1, #0x1c]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0x10]
	ldr r3, [r2, #0x18]
	str r3, [r1, #0x14]
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq _080650F0
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r3, r4
	str r0, [r1, #0x14]
_080650F0:
	ldrh r0, [r2, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #0xe]
	adds r0, r1, #0
	bl sub_805C63C
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8065104
sub_8065104: @ 0x08065104
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	bl sub_80650C8
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x10]
	ldr r1, [r4, #0x20]
	str r1, [sp, #0x14]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0806512E
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [sp, #0x14]
_0806512E:
	mov r1, sp
	ldrh r0, [r4, #0xa]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	str r0, [sp]
	ldrb r0, [r4, #6]
	strb r0, [r1, #8]
	mov r0, sp
	bl sub_805C280
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_Kamaki
TaskDestructor_Kamaki: @ 0x08065150
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x2c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_8065164
sub_8065164: @ 0x08065164
	push {r4, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x15
	adds r0, #0x10
	adds r0, r0, r1
	ldr r2, [r0]
	asrs r2, r2, #8
	mov r3, ip
	ldrh r0, [r3, #2]
	lsls r0, r0, #8
	adds r2, r2, r0
	ldr r3, _080651B0 @ =gCamera
	ldr r0, [r3]
	subs r2, r2, r0
	mov r0, ip
	adds r0, #0x14
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r1, r1, #8
	mov r4, ip
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, [r3, #4]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #0xf0
	bhi _080651AC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _080651B4
_080651AC:
	movs r0, #1
	b _080651B6
	.align 2, 0
_080651B0: .4byte gCamera
_080651B4:
	movs r0, #0
_080651B6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start TaskDestructor_80651BC
TaskDestructor_80651BC: @ 0x080651BC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x38]
	bl VramFree
	pop {r0}
	bx r0
