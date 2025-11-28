
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov ip, r0
	movs r0, #0
	mov r8, r0
	mov r1, ip
	ldr r5, [r1, #0x58]
	str r5, [sp]
	ldr r3, [r1, #0x5c]
	str r3, [sp, #4]
	ldrh r0, [r1, #0x12]
	lsls r0, r0, #0x10
	ldr r2, [r1, #0x28]
	subs r2, r2, r0
	str r2, [sp, #8]
	ldrh r1, [r1, #0x14]
	lsls r1, r1, #0x10
	mov r4, ip
	ldr r0, [r4, #0x2c]
	subs r0, r0, r1
	str r0, [sp, #0xc]
	subs r0, r0, r3
	asrs r0, r0, #6
	ldrh r1, [r4, #8]
	lsrs r4, r1, #6
	muls r0, r4, r0
	adds r3, r3, r0
	mov r7, ip
	str r3, [r7, #0x64]
	subs r2, r2, r5
	asrs r2, r2, #6
	adds r0, r2, #0
	muls r0, r4, r0
	adds r5, r5, r0
	str r5, [r7, #0x60]
	subs r1, #0x40
	strh r1, [r7, #8]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x16
	cmp r1, #0x3f
	bls _0805D652
	mov r0, r8
	strh r0, [r7, #8]
	movs r1, #1
	mov r8, r1
_0805D652:
	mov r4, ip
	ldr r0, [r4, #0x60]
	str r0, [r4, #0x30]
	movs r3, #0
	adds r4, #0x34
	str r4, [sp, #0x10]
	movs r5, #0x30
	add r5, ip
	mov sl, r5
	movs r7, #8
	add r7, ip
	mov sb, r7
_0805D66A:
	mov r0, ip
	ldr r6, [r0, #0x58]
	str r6, [sp]
	ldr r5, [r0, #0x5c]
	str r5, [sp, #4]
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x10
	mov r1, ip
	ldr r2, [r1, #0x28]
	subs r2, r2, r0
	str r2, [sp, #8]
	ldrh r0, [r1, #0x14]
	lsls r0, r0, #0x10
	ldr r1, [r1, #0x2c]
	subs r1, r1, r0
	str r1, [sp, #0xc]
	adds r3, #1
	str r3, [sp, #0x14]
	lsls r3, r3, #3
	ldr r7, [sp, #0x10]
	adds r4, r7, r3
	str r5, [r4]
	add r3, sl
	str r6, [r3]
	subs r1, r1, r5
	asrs r1, r1, #6
	ldr r5, [sp, #0x14]
	lsls r0, r5, #1
	mov r7, sb
	adds r5, r7, r0
	ldrh r0, [r5]
	lsrs r0, r0, #6
	muls r1, r0, r1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	subs r2, r2, r6
	asrs r2, r2, #6
	ldrh r0, [r5]
	lsrs r0, r0, #6
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldrh r0, [r5]
	subs r0, #0x40
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	cmp r0, #0x3f
	bls _0805D6E0
	movs r0, #0
	strh r0, [r5]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0805D6E0:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0805D66A
	mov r4, r8
	cmp r4, #5
	beq _0805D6F4
	movs r0, #0
	b _0805D6F6
_0805D6F4:
	movs r0, #1
_0805D6F6:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
