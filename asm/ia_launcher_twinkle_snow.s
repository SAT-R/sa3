.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start sub_803F188
sub_803F188: @ 0x0803F188
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x36
	bl VramMalloc
	adds r1, r0, #0
	str r1, [r4, #0x6c]
	adds r0, r4, #0
	adds r0, #0xc
	str r1, [r4, #0xc]
	movs r3, #0
	movs r2, #0
	ldr r1, _0803F1D0 @ =0x0000038E
	strh r1, [r0, #0xc]
	strb r3, [r0, #0x1a]
	subs r1, #0x8e
	strh r1, [r0, #0x14]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	str r1, [r0, #0x28]
	str r1, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F1D0: .4byte 0x0000038E
.endif

	thumb_func_start sub_803F1D4
sub_803F1D4: @ 0x0803F1D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803F240 @ =gCurTask
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r7, r0
	ldr r1, _0803F244 @ =0x0300000C
	adds r4, r7, r1
	ldr r5, [r6]
	ldrb r0, [r6, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r6, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	ldrh r2, [r6, #6]
	lsls r2, r2, #8
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r3, _0803F248 @ =gCamera
	ldr r2, [r3]
	mov sb, r2
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	mov r2, sb
	subs r2, r0, r2
	strh r2, [r4, #0x10]
	ldr r2, [r3, #4]
	lsrs r3, r1, #0x10
	mov sb, r3
	asrs r1, r1, #0x10
	subs r2, r1, r2
	strh r2, [r4, #0x12]
	bl IsPointInScreenRect
	cmp r0, #0
	bne _0803F24C
	ldrb r0, [r6, #0xa]
	strb r0, [r5]
	mov r1, r8
	ldr r0, [r1]
	bl TaskDestroy
	b _0803F362
	.align 2, 0
_0803F240: .4byte gCurTask
_0803F244: .4byte 0x0300000C
_0803F248: .4byte gCamera
_0803F24C:
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	movs r5, #0
	ldr r2, _0803F274 @ =0x03000074
	adds r2, r2, r7
	mov r8, r2
	ldr r3, _0803F278 @ =0x03000075
	adds r7, r7, r3
_0803F25E:
	cmp r5, #0
	beq _0803F27C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	b _0803F28A
	.align 2, 0
_0803F274: .4byte 0x03000074
_0803F278: .4byte 0x03000075
_0803F27C:
	ldr r0, [r4, #8]
	ldr r1, _0803F34C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
_0803F28A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _0803F25E
	mov r0, r8
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0803F2E8
	subs r0, r1, #1
	mov r1, r8
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0
	bne _0803F2E8
	ldr r0, _0803F350 @ =0x00000255
	bl sub_8003DF0
	adds r1, r6, #0
	adds r1, #0x44
	ldr r0, [r6, #0x6c]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r6, #0x44]
	movs r2, #0
	ldr r0, _0803F354 @ =0x000003A6
	strh r0, [r1, #0xc]
	strb r2, [r1, #0x1a]
	subs r0, #0xa6
	strh r0, [r1, #0x14]
	strh r4, [r1, #0xe]
	strh r4, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	strb r2, [r1, #0x1f]
	subs r0, #0x11
	str r0, [r1, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #8]
_0803F2E8:
	adds r1, r7, #0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0803F2F8
	subs r0, r2, #1
	strb r0, [r1]
_0803F2F8:
	mov r5, r8
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0803F362
	adds r4, r6, #0
	adds r4, #0x44
	ldr r2, _0803F358 @ =gCamera
	ldr r1, [r2]
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r1, [r2, #4]
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	subs r0, #0x30
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0803F362
	ldrb r1, [r7]
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0
	ble _0803F35C
	strb r1, [r5]
	movs r0, #0xff
	strb r0, [r7]
	b _0803F362
	.align 2, 0
_0803F34C: .4byte 0xFFFFFBFF
_0803F350: .4byte 0x00000255
_0803F354: .4byte 0x000003A6
_0803F358: .4byte gCamera
_0803F35C:
	movs r0, #0xff
	mov r3, r8
	strb r0, [r3]
_0803F362:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TaskDestruction_IceLauncher
TaskDestruction_IceLauncher: @ 0x0803F370
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x6c]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start sub_803F384
sub_803F384: @ 0x0803F384
	push {r4, lr}
	adds r2, r0, #0
	adds r2, #0x44
	ldr r1, [r0, #0x6c]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r1, r1, r3
	str r1, [r0, #0x44]
	movs r4, #0
	movs r1, #0
	ldr r0, _0803F3C0 @ =0x000003A6
	strh r0, [r2, #0xc]
	strb r4, [r2, #0x1a]
	strh r3, [r2, #0x14]
	strh r1, [r2, #0xe]
	strh r1, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	strb r4, [r2, #0x1f]
	subs r0, #0x11
	str r0, [r2, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r2, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F3C0: .4byte 0x000003A6
