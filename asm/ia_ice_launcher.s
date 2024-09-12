.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start sub_804B24C
sub_804B24C: @ 0x0804B24C
	push {r4, lr}
	ldr r2, _0804B274 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
	adds r0, #0x10
	adds r4, r1, r0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B278
	ldr r0, [r2]
	bl TaskDestroy
	b _0804B2B8
	.align 2, 0
_0804B274: .4byte gCurTask
_0804B278:
	movs r1, #8
	ldrsh r0, [r3, r1]
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	ldrh r0, [r3, #0xc]
	ldrh r2, [r3, #0xa]
	adds r0, r0, r2
	strh r0, [r3, #0xa]
	movs r0, #0xa
	ldrsh r2, [r3, r0]
	ldr r0, [r3, #4]
	adds r0, r0, r2
	str r0, [r3, #4]
	asrs r1, r1, #8
	ldr r2, _0804B2C0 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	strh r1, [r4, #0x10]
	ldr r0, [r3, #4]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	ldrb r1, [r3, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804B2B8
	adds r0, r4, #0
	bl DisplaySprite
_0804B2B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B2C0: .4byte gCamera

	thumb_func_start CreateIceShiver
CreateIceShiver: @ 0x0804B2C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	mov sl, r1
	adds r5, r2, #0
	ldr r0, [sp, #0x30]
	mov r8, r0
	mov r2, sb
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	mov r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	mov r2, r8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, _0804B3B4 @ =gUnknown_080D03D8
	add r0, sp, #4
	movs r2, #6
	bl memcpy
	ldr r0, _0804B3B8 @ =sub_804B24C
	movs r2, #0x84
	lsls r2, r2, #6
	ldr r1, _0804B3BC @ =sub_804B3E0
	str r1, [sp]
	movs r1, #0x38
	movs r3, #0
	bl TaskCreate
	ldrh r4, [r0, #6]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r6, r4, r6
	ldr r3, _0804B3C0 @ =0x03000010
	adds r4, r4, r3
	movs r7, #0
	mov r0, r8
	strb r0, [r6, #0xe]
	movs r2, #0
	mov r8, r2
	movs r0, #0x20
	strh r0, [r6, #0xc]
	ldr r2, _0804B3C4 @ =gSineTable
	ldr r1, _0804B3C8 @ =0x000003FF
	ldr r3, [sp, #0xc]
	ands r1, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	muls r0, r5, r0
	asrs r0, r0, #0xe
	strh r0, [r6, #8]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	muls r0, r5, r0
	asrs r0, r0, #0xe
	strh r0, [r6, #0xa]
	movs r0, #4
	bl VramMalloc
	str r0, [r4]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r4, #0xc]
	mov r3, r8
	strb r3, [r4, #0x1a]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xe]
	strh r7, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r3, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	str r7, [r4, #8]
	mov r0, sb
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r6]
	mov r2, sl
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	str r2, [r6, #4]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B3B4: .4byte gUnknown_080D03D8
_0804B3B8: .4byte sub_804B24C
_0804B3BC: .4byte sub_804B3E0
_0804B3C0: .4byte 0x03000010
_0804B3C4: .4byte gSineTable
_0804B3C8: .4byte 0x000003FF

	thumb_func_start TaskDestructor_IceLauncher
TaskDestructor_IceLauncher: @ 0x0804B3CC
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_804B3E0
sub_804B3E0: @ 0x0804B3E0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
