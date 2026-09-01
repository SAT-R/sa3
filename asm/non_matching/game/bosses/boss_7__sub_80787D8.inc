
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	movs r7, #0
	ldr r0, _08078878 @ =gUnknown_080D5A64
	mov sl, r0
	movs r1, #0
	mov ip, r1
	ldr r0, _0807887C @ =gSineTable
	mov sb, r0
_080787F4:
	mov r1, ip
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, sl
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r5, r0, #3
	lsls r0, r0, #2
	adds r5, r5, r0
	str r5, [sp, #8]
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	add r1, sb
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #3
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #0xc]
	lsls r0, r7, #3
	mov r3, r8
	adds r3, #0x28
	adds r3, r3, r0
	mov r1, ip
	str r1, [r3]
	mov r4, r8
	adds r4, #0x24
	adds r4, r4, r0
	str r1, [r4]
	asrs r2, r2, #6
	lsls r1, r7, #1
	mov r0, r8
	adds r0, #8
	adds r6, r0, r1
	ldrh r0, [r6]
	lsrs r0, r0, #6
	adds r1, r2, #0
	muls r1, r0, r1
	lsls r1, r1, #4
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	asrs r5, r5, #6
	ldrh r0, [r6]
	lsrs r0, r0, #6
	adds r1, r5, #0
	muls r1, r0, r1
	lsls r1, r1, #4
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldrh r1, [r6]
	lsrs r0, r1, #6
	cmp r0, #0x10
	blo _08078880
	movs r0, #1
	b _08078892
	.align 2, 0
_08078878: .4byte gUnknown_080D5A64
_0807887C: .4byte gSineTable
_08078880:
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r6]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _080787F4
	movs r0, #0
_08078892:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
