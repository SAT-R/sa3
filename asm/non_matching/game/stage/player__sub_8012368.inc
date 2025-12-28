
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r5, [r0]
	ldr r0, [r4, #0x10]
	str r0, [sp, #8]
	ldr r1, [r4, #0x14]
	str r1, [sp, #0xc]
	movs r3, #0x18
	ldrsh r2, [r4, r3]
	str r2, [sp, #0x10]
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	str r0, [sp, #0x14]
	ldr r2, [sp, #8]
	asrs r0, r2, #8
	subs r0, #3
	adds r7, r4, #0
	adds r7, #0x24
	movs r1, #0
	ldrsb r1, [r7, r1]
	subs r1, r0, r1
	ldr r3, [sp, #0xc]
	asrs r6, r3, #8
	adds r2, r5, #0
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	ldr r3, _08012434 @ =0x000002FF
	mov sl, r3
	cmp r0, sl
	bgt _080123B4
	movs r2, #0x80
	orrs r2, r5
_080123B4:
	movs r3, #8
	rsbs r3, r3, #0
	movs r0, #0
	mov sb, r0
	str r0, [sp]
	ldr r0, _08012438 @ =sub_805203C
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r1, r6, #0
	bl sub_80517FC
	cmp r0, #0
	bgt _080123D8
	lsls r1, r0, #8
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
_080123D8:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	adds r0, #3
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r3, r0, r1
	ldr r0, [r4, #0x14]
	asrs r1, r0, #8
	adds r2, r5, #0
	movs r5, #0x1a
	ldrsh r0, [r4, r5]
	cmp r0, sl
	bgt _080123F6
	movs r0, #0x80
	orrs r2, r0
_080123F6:
	mov r0, sb
	str r0, [sp]
	mov r5, r8
	str r5, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_80517FC
	cmp r0, #0
	bgt _08012412
	lsls r1, r0, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
_08012412:
	movs r2, #1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08012422
	movs r2, #0
_08012422:
	cmp r2, #0
	bne _0801243C
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8011024
	b _08012448
	.align 2, 0
_08012434: .4byte 0x000002FF
_08012438: .4byte sub_805203C
_0801243C:
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8011024
_08012448:
	ldr r1, [sp, #8]
	str r1, [r4, #0x10]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x14]
	mov r3, sp
	ldrh r3, [r3, #0x10]
	strh r3, [r4, #0x18]
	mov r5, sp
	ldrh r5, [r5, #0x14]
	strh r5, [r4, #0x1a]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided
