
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	mov r7, sl
	adds r7, #0x70
	movs r0, #0xb0
	lsls r0, r0, #1
	add r0, sl
	mov sb, r0
	mov r0, sl
	adds r0, #0x3c
	ldrb r0, [r0]
	str r0, [sp]
	mov r2, sl
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r5, _08074310 @ =gCamera
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	movs r6, #0xe
	ldrsh r1, [r2, r6]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	adds r7, #0x50
	mov r0, sl
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	ldr r0, [r0]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r3, sl
	movs r6, #0xe
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r7, #0x88
	lsls r7, r7, #1
	add r7, sl
	mov r0, sl
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	ldr r0, [r0]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	mov r3, sl
	movs r6, #0xe
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	mov r0, sl
	adds r0, #0x5a
	ldr r1, _08074314 @ =0xFFFFFF00
	adds r4, r1, #0
	ldrh r0, [r0]
	adds r4, r4, r0
	ldr r2, _08074318 @ =0x000003FF
	adds r0, r2, #0
	ands r4, r0
	ldr r2, _0807431C @ =gSineTable
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r6, #0
	ldrsh r3, [r0, r6]
	mov ip, r3
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r6, #0
	ldrsh r3, [r0, r6]
	mov r8, r3
	mov r0, sl
	adds r0, #0x46
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r3, [r0]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1b
	mov r7, sl
	adds r7, #0x98
	mov r1, sl
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldr r2, [r1]
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r0, [r5]
	subs r2, r2, r0
	strh r2, [r7, #0x10]
	movs r6, #0xe
	ldrsh r0, [r1, r6]
	ldr r1, [r1, #4]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r0, [r5, #4]
	subs r1, r1, r0
	mov r0, r8
	muls r0, r3, r0
	asrs r0, r0, #0xe
	subs r2, r2, r0
	strh r2, [r7, #0x10]
	mov r0, ip
	muls r0, r3, r0
	asrs r0, r0, #0xe
	subs r1, r1, r0
	strh r1, [r7, #0x12]
	ldr r2, _08074320 @ =gNextFreeAffineIndex
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r7, #8]
	ldrh r0, [r7, #0x10]
	mov r1, sb
	strh r0, [r1, #6]
	ldrh r0, [r7, #0x12]
	strh r0, [r1, #8]
	strh r4, [r1]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	mov r1, sb
	bl TransformSprite
	adds r0, r7, #0
	bl DisplaySprite
	adds r7, #0x50
	ldr r2, [sp]
	lsls r2, r2, #2
	str r2, [sp, #4]
	add r2, sl
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	mov r6, sl
	ldr r0, [r6]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5]
	subs r0, r0, r1
	strh r0, [r7, #0x10]
	movs r0, #0x12
	ldrsh r1, [r2, r0]
	ldr r0, [r6, #4]
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	subs r0, r0, r1
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r0, [r7, #8]
	ldr r1, _08074324 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	bl DisplaySprite
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r7, #8]
	adds r0, r7, #0
	bl DisplaySprite
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074310: .4byte gCamera
_08074314: .4byte 0xFFFFFF00
_08074318: .4byte 0x000003FF
_0807431C: .4byte gSineTable
_08074320: .4byte gNextFreeAffineIndex
_08074324: .4byte 0xFFFFFBFF

.syntax divided
