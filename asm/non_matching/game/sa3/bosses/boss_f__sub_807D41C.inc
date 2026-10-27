
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r7, #0
	ldr r1, _0807D458 @ =gUnknown_080D5CA4
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r1, [sp, #8]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r2, #0xca
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r3, [sp, #4]
	adds r5, r3, r0
	adds r0, r1, #0
	add r0, sp
	ldrb r0, [r0]
	b _0807D5DC
	.align 2, 0
_0807D458: .4byte gUnknown_080D5CA4
_0807D45C:
	ldr r0, [sp, #8]
	cmp sb, r0
	bne _0807D464
	b _0807D5D4
_0807D464:
	mov r1, sb
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	movs r2, #0xca
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r3, [sp, #4]
	adds r4, r3, r0
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	bne _0807D47E
	b _0807D5D4
_0807D47E:
	ldr r1, [r5]
	ldr r0, [r4]
	subs r1, r1, r0
	mov ip, r1
	ldr r1, [r5, #4]
	ldr r0, [r4, #4]
	subs r6, r1, r0
	mov r1, ip
	mov r0, ip
	muls r0, r1, r0
	adds r1, r6, #0
	muls r1, r6, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0807D4A6
	b _0807D5D4
_0807D4A6:
	ldr r1, [r5]
	ldr r0, [r4]
	subs r1, r1, r0
	ldr r0, [r5, #4]
	ldr r2, [r4, #4]
	subs r0, r0, r2
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	strh r0, [r5, #0x16]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r3, _0807D604 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r5]
	ldr r1, [r4]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov ip, r0
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r6, r0, #1
	ldr r7, _0807D608 @ =gSineTable
	ldrh r3, [r5, #0x16]
	movs r0, #0x80
	lsls r0, r0, #1
	mov sl, r0
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0xb
	mov r8, r2
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0807D50C
	adds r0, #0x3f
_0807D50C:
	asrs r2, r0, #6
	lsls r0, r3, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0807D522
	adds r0, #0x3f
_0807D522:
	asrs r1, r0, #6
	mov r3, ip
	adds r0, r3, r2
	str r0, [r5]
	adds r0, r6, r1
	str r0, [r5, #4]
	ldrh r3, [r5, #0x16]
	mov r1, sl
	adds r0, r3, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r2, [r5, #0x10]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807D548
	ldr r1, _0807D60C @ =0x00003FFF
	adds r0, r0, r1
_0807D548:
	asrs r0, r0, #0xe
	str r0, [r5, #8]
	lsls r0, r3, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	cmp r0, #0
	bge _0807D55E
	ldr r1, _0807D60C @ =0x00003FFF
	adds r0, r0, r1
_0807D55E:
	asrs r0, r0, #0xe
	str r0, [r5, #0xc]
	ldrh r3, [r4, #0x16]
	mov r2, sl
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	cmp r0, #0
	bge _0807D57C
	adds r0, #0x3f
_0807D57C:
	asrs r2, r0, #6
	lsls r0, r3, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0807D592
	adds r0, #0x3f
_0807D592:
	asrs r1, r0, #6
	mov r3, ip
	adds r0, r3, r2
	str r0, [r4]
	adds r0, r6, r1
	str r0, [r4, #4]
	ldrh r2, [r4, #0x16]
	mov r1, sl
	adds r0, r2, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, [r4, #0x10]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807D5B8
	ldr r3, _0807D60C @ =0x00003FFF
	adds r0, r0, r3
_0807D5B8:
	asrs r0, r0, #0xe
	str r0, [r4, #8]
	lsls r0, r2, #1
	adds r0, r0, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _0807D5CE
	ldr r3, _0807D60C @ =0x00003FFF
	adds r0, r0, r3
_0807D5CE:
	asrs r0, r0, #0xe
	str r0, [r4, #0xc]
	movs r7, #1
_0807D5D4:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0807D5DC:
	mov sb, r0
	cmp r0, #2
	bhi _0807D5E4
	b _0807D45C
_0807D5E4:
	cmp r7, #0
	beq _0807D5F0
	movs r0, #0x8e
	lsls r0, r0, #2
	bl m4aSongNumStart
_0807D5F0:
	adds r0, r7, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0807D604: .4byte 0x000003FF
_0807D608: .4byte gSineTable
_0807D60C: .4byte 0x00003FFF

.syntax divided
