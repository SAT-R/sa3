
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7]
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	add r8, r0
	movs r0, #8
	adds r0, r0, r7
	mov sl, r0
	movs r2, #0x38
	adds r2, r2, r7
	mov sb, r2
	movs r4, #0x88
	adds r4, r4, r7
	mov ip, r4
	ldr r1, [r4]
	ldr r5, _080B4644 @ =0xFE1B0000
	adds r0, r1, r5
	lsls r5, r0, #3
	adds r5, r5, r0
	lsls r5, r5, #3
	subs r5, r5, r0
	asrs r5, r5, #0x14
	str r5, [sp]
	movs r3, #0xf0
	mov r2, r8
	ldr r0, [r2, #0x4c]
	subs r0, r0, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	ldr r0, [r2, #0x58]
	asrs r0, r0, #8
	ldr r2, _080B4648 @ =0x000003FF
	ands r0, r2
	lsls r0, r0, #1
	ldr r4, _080B464C @ =gSineTable
	adds r0, r0, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	asrs r1, r1, #0x11
	muls r1, r0, r1
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	asrs r0, r0, #8
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r0, _080B4650 @ =0x00001070
	mov r4, sl
	str r0, [r4, #8]
	mov r5, r8
	ldr r6, [r5, #0x58]
	asrs r6, r6, #8
	ands r6, r2
	ldr r4, [r5, #0x4c]
	mov r2, ip
	ldr r0, [r2]
	subs r4, r4, r0
	str r4, [sp, #4]
	ldr r0, [r5, #0x48]
	lsrs r0, r0, #8
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #0xa
	asrs r2, r2, #0x10
	lsls r0, r6, #1
	ldr r4, _080B464C @ =gSineTable
	adds r0, r0, r4
	movs r4, #0
	ldrsh r5, [r0, r4]
	mov ip, r5
	mov r0, ip
	muls r0, r2, r0
	asrs r0, r0, #0xe
	ldr r5, [sp]
	subs r3, r3, r5
	adds r3, r3, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x18
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r6, r4
	lsls r0, r0, #1
	ldr r5, _080B464C @ =gSineTable
	adds r0, r0, r5
	movs r4, #0
	ldrsh r5, [r0, r4]
	adds r0, r2, #0
	muls r0, r5, r0
	asrs r0, r0, #0xe
	subs r1, r1, r0
	ldr r0, [sp, #4]
	asrs r4, r0, #0x10
	adds r0, r4, #0
	muls r0, r5, r0
	asrs r0, r0, #0xc
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, r3, r0
	lsls r0, r4, #3
	adds r0, r0, r4
	asrs r0, r0, #1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, ip
	muls r0, r4, r0
	asrs r0, r0, #0xe
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, sl
	strh r3, [r2, #0x10]
	strh r1, [r2, #0x12]
	mov r4, r8
	ldr r0, [r4, #0x48]
	lsrs r0, r0, #8
	mov r5, sb
	strh r0, [r5, #2]
	ldr r0, [r4, #0x48]
	lsrs r0, r0, #8
	strh r0, [r5, #4]
	strh r3, [r5, #6]
	strh r1, [r5, #8]
	strh r6, [r7, #0x38]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	mov r1, sb
	bl TransformSprite
	mov r0, sl
	bl DisplaySprite
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B4644: .4byte 0xFE1B0000
_080B4648: .4byte 0x000003FF
_080B464C: .4byte gSineTable
_080B4650: .4byte 0x00001070

.syntax divided
