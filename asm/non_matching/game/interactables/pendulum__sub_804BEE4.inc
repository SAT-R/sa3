.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0     @ r7 = pend
	ldr r0, _0804BF04 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #5
	bne _0804BF0C
	ldr r0, _0804BF08 @ =0x000003AF
	mov sb, r0
	mov r1, sb
	str r1, [sp]
	b _0804BF16
	.align 2, 0
_0804BF04: .4byte gStageData
_0804BF08: .4byte 0x000003AF
_0804BF0C:
	movs r3, #0xe6
	lsls r3, r3, #2
	mov sb, r3
	mov r0, sb
	str r0, [sp]
_0804BF16:
	movs r0, #0x1a
	bl VramMalloc
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sl, r1
	str r0, [r1]
	adds r2, r7, #0
	adds r2, #0x10
	str r0, [r7, #0x10]
	movs r4, #0
	mov r3, sb
	strh r3, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r3, #0x10
	mov r8, r3
	mov r0, r8
	strb r0, [r2, #0x1c]
	movs r1, #0
	strb r1, [r2, #0x1f]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r2, #0x20]
	movs r5, #0x80
	lsls r5, r5, #5
	str r5, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r2, r7, #0
	adds r2, #0x3c
	mov r3, sl
	ldr r0, [r3]
	str r0, [r7, #0x3c]
	mov r0, sb
	strh r0, [r2, #0xc]
	movs r1, #0
	strb r1, [r2, #0x1a]
	movs r3, #0xc0
	lsls r3, r3, #3
	strh r3, [r2, #0x14]
	strh r4, [r2, #0xe]
	strh r4, [r2, #0x16]
	adds r0, r6, #0
	strb r0, [r2, #0x1b]
	mov r0, r8
	strb r0, [r2, #0x1c]
	strb r1, [r2, #0x1f]
	str r6, [r2, #0x20]
	str r5, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	movs r0, #0
	movs r1, #0x19
	lsls r6, r1, #5     @ r6 = 800
	movs r3, #0
	mov r8, r3
	movs r5, #0
_0804BF9E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	movs r0, #0x2c
	adds r1, r4, #0
	muls r1, r0, r1
	adds r1, #0x64
	adds r1, r7, r1
	adds r2, r1, #4
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	adds r0, r0, r6
	str r0, [r1, #4]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	movs r1, #1
	strb r1, [r2, #0x1a]
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	strh r5, [r2, #0xe]
	strh r5, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r3, r8
	strb r3, [r2, #0x1f]
	subs r0, #0x11
	str r0, [r2, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	adds r0, r2, #0
	bl UpdateSpriteAnimation
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #5
	ble _0804BF9E
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
