
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	subs r0, r7, r0
	asrs r4, r0, #8
	subs r1, r2, r1
	asrs r3, r1, #8
	movs r2, #0xe1
	lsls r2, r2, #6
	adds r1, r4, #0
	muls r1, r4, r1
	adds r0, r3, #0
	muls r0, r3, r0
	adds r6, r1, r0
	cmp r2, r6
	blt _080051BE
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r1, [r0]
	mov sb, r0
	cmp r1, r6
	blo _080051BE
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08005198
	lsls r0, r2, #0x10
	ldr r1, _08005194 @ =0xFEFF0000
	adds r0, r0, r1
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080051BE
	b _080051A8
	.align 2, 0
_08005194: .4byte 0xFEFF0000
_08005198:
	lsls r0, r2, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _080051BE
_080051A8:
	adds r0, r5, #0
	adds r0, #0xb0
	str r7, [r0]
	adds r0, #4
	mov r1, r8
	str r1, [r0]
	mov r0, sb
	str r6, [r0]
	adds r0, r5, #0
	adds r0, #0xc2
	strh r2, [r0]
_080051BE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
