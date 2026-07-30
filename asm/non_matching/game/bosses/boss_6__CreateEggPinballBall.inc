
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08074414 @ =Task_Ball_807442C
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov sb, r1
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r3, r0, r3
	ldr r2, _08074418 @ =0x0300001C
	adds r0, r0, r2
	adds r1, r6, #0
	adds r1, #0x5a
	ldr r5, _0807441C @ =0xFFFFFF00
	adds r4, r5, #0
	ldrh r1, [r1]
	adds r4, r4, r1
	ldr r7, _08074420 @ =0x000003FF
	adds r1, r7, #0
	ands r4, r1
	ldr r2, _08074424 @ =gSineTable
	lsls r1, r4, #1
	adds r1, r1, r2
	movs r7, #0
	ldrsh r5, [r1, r7]
	mov sl, r5
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r7, [r1, r2]
	mov r8, r7
	adds r1, r6, #0
	adds r1, #0x3d
	ldrb r1, [r1]
	movs r5, #0x41
	subs r5, r5, r1
	str r6, [r3]
	movs r7, #0xc
	ldrsh r2, [r6, r7]
	ldr r1, [r6]
	adds r1, r1, r2
	mov r7, r8
	asrs r2, r7, #1
	adds r1, r1, r2
	str r1, [r3, #4]
	movs r1, #0xe
	ldrsh r2, [r6, r1]
	ldr r1, [r6, #4]
	adds r1, r1, r2
	mov r7, sl
	asrs r2, r7, #1
	adds r1, r1, r2
	str r1, [r3, #8]
	mov r1, r8
	muls r1, r5, r1
	asrs r1, r1, #8
	movs r2, #0
	strh r1, [r3, #0xc]
	mov r1, sl
	muls r1, r5, r1
	asrs r1, r1, #8
	strh r1, [r3, #0xe]
	str r5, [r3, #0x10]
	strh r4, [r3, #0x14]
	movs r1, #0xc
	strb r1, [r3, #0x18]
	strb r2, [r3, #0x19]
	strb r2, [r3, #0x1a]
	strb r2, [r3, #0x1b]
	ldr r1, [r6, #0x68]
	str r1, [r3, #0x44]
	ldr r1, [r6, #0x6c]
	str r1, [r3, #0x48]
	ldr r1, [r6, #0x50]
	str r1, [r0]
	ldr r1, _08074428 @ =0x000004E4
	strh r1, [r0, #0xc]
	strb r2, [r0, #0x1a]
	subs r1, #0xe4
	strh r1, [r0, #0x14]
	mov r1, sb
	strh r1, [r0, #0xe]
	strh r1, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r2, [r0, #0x1f]
	subs r1, #0x11
	str r1, [r0, #0x20]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #8]
	bl UpdateSpriteAnimation
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08074414: .4byte Task_Ball_807442C
_08074418: .4byte 0x0300001C
_0807441C: .4byte 0xFFFFFF00
_08074420: .4byte 0x000003FF
_08074424: .4byte gSineTable
_08074428: .4byte 0x000004E4

.syntax divided
