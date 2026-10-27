
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r7, r1, #0
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r2, r8
	adds r6, r2, r0
	ldr r4, [r2, #0x20]
	ldr r1, [r4, #0x10]
	asrs r1, r1, #8
	ldr r0, [r6]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _0807DAE4 @ =0xFFFF0000
	ldr r2, [sp]
	ands r2, r3
	orrs r2, r1
	str r2, [sp]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _0807DAE8 @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	mov r5, sp
	ldr r0, [sp, #4]
	ands r0, r3
	str r0, [sp, #4]
	mov r0, sp
	movs r1, #8
	bl sa2__sub_8085A9C
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [r6, #8]
	movs r2, #2
	ldrsh r0, [r5, r2]
	str r0, [r6, #0xc]
	ldr r2, [r4, #0x10]
	ldr r0, [r6]
	subs r2, r2, r0
	ldr r1, [r4, #0x14]
	ldr r0, [r6, #4]
	subs r1, r1, r0
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r6, #0x24]
	asrs r0, r0, #4
	str r0, [r6, #0x1c]
	movs r0, #0
	str r0, [r6, #0x20]
	movs r0, #0xa
	strh r0, [r6, #0x14]
	movs r0, #0xc8
	strh r0, [r6, #0x16]
	movs r1, #0xa8
	lsls r1, r1, #2
	add r1, r8
	cmp r7, #0
	beq _0807DAEC
	movs r0, #0x98
	lsls r0, r0, #3
	b _0807DAF0
	.align 2, 0
_0807DAE4: .4byte 0xFFFF0000
_0807DAE8: .4byte 0x0000FFFF
_0807DAEC:
	movs r0, #0xa0
	lsls r0, r0, #3
_0807DAF0:
	strh r0, [r1, #0x14]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
