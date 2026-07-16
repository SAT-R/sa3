
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	ldr r1, [r0]
	str r1, [r0, #0x48]
	ldr r0, [r0, #4]
	mov r2, ip
	str r0, [r2, #0x4c]
	adds r3, r0, #0
	mov r0, ip
	adds r0, #0x80
	str r1, [r0]
	adds r0, #4
	str r3, [r0]
	movs r7, #0xb8
	add r7, ip
	mov sb, r7
	ldr r2, _0806D6B8 @ =0xFFFFDB00
	adds r0, r1, r2
	str r0, [r7]
	movs r7, #0xbc
	add r7, ip
	mov sl, r7
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r3, r2
	str r0, [r7]
	movs r7, #0xf0
	add r7, ip
	mov r8, r7
	movs r2, #0x94
	lsls r2, r2, #6
	adds r1, r1, r2
	str r1, [r7]
	mov r6, ip
	adds r6, #0xf4
	str r0, [r6]
	movs r4, #0x94
	lsls r4, r4, #1
	add r4, ip
	mov r7, sb
	ldr r0, [r7]
	str r0, [r4]
	movs r5, #0x96
	lsls r5, r5, #1
	add r5, ip
	mov r1, sl
	ldr r0, [r1]
	mov r2, ip
	ldr r1, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r5]
	movs r2, #0xb0
	lsls r2, r2, #1
	add r2, ip
	mov r7, r8
	ldr r0, [r7]
	str r0, [r2]
	movs r3, #0xb2
	lsls r3, r3, #1
	add r3, ip
	ldr r0, [r6]
	mov r7, ip
	ldr r1, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0xcc
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r4]
	str r0, [r1]
	movs r1, #0xce
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r5]
	str r0, [r1]
	movs r1, #0xe8
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r2]
	str r0, [r1]
	movs r1, #0xea
	lsls r1, r1, #1
	add r1, ip
	ldr r0, [r3]
	str r0, [r1]
	ldr r1, [r7, #0x10]
	ldr r2, _0806D6BC @ =0xFFFFE400
	adds r0, r1, r2
	cmp r0, #0
	bge _0806D62A
	ldr r7, _0806D6C0 @ =0xFFFFE403
	adds r0, r1, r7
_0806D62A:
	asrs r0, r0, #2
	adds r5, r0, #1
	mov r1, sl
	ldr r0, [r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r3, r0, r2
	movs r4, #0
	mov r7, r8
	str r7, [sp]
	str r6, [sp, #4]
	movs r0, #0x48
	add r0, ip
	mov r8, r0
	movs r1, #0x4c
	add r1, ip
	mov sl, r1
	mov ip, r8
	mov r7, sb
	mov r6, sl
_0806D652:
	adds r1, r4, #0
	adds r1, #8
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r1, ip
	adds r2, r1, r0
	ldr r1, [r7]
	str r1, [r2]
	adds r0, r6, r0
	str r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r3, r3, r5
	cmp r4, #3
	bls _0806D652
	ldr r2, [sp, #4]
	ldr r0, [r2]
	movs r7, #0xc0
	lsls r7, r7, #4
	adds r3, r0, r7
	movs r4, #0
	mov ip, r8
	ldr r7, [sp]
	mov r6, sl
_0806D686:
	adds r1, r4, #0
	adds r1, #0xc
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r1, ip
	adds r2, r1, r0
	ldr r1, [r7]
	str r1, [r2]
	adds r0, r6, r0
	str r3, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r3, r3, r5
	cmp r4, #3
	bls _0806D686
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D6B8: .4byte 0xFFFFDB00
_0806D6BC: .4byte 0xFFFFE400
_0806D6C0: .4byte 0xFFFFE403

.syntax divided
