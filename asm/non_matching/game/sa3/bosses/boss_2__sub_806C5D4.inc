
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	movs r0, #0
	mov sb, r0
	mov r8, r0
	movs r0, #0
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r3, _0806C6A0 @ =gSineTable
	ldrb r1, [r7, #0x1f]
	lsls r0, r1, #3
	adds r0, r0, r3
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x16
	rsbs r2, r2, #0
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r3, [r1]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x16
	lsls r1, r2, #5
	ldr r0, [r7]
	adds r0, r0, r1
	lsls r1, r2, #2
	adds r0, r0, r1
	lsls r2, r2, #1
	adds r2, r0, r2
	str r2, [sp, #8]
	lsls r1, r3, #5
	ldr r0, [r7, #4]
	adds r0, r0, r1
	lsls r1, r3, #2
	adds r0, r0, r1
	lsls r3, r3, #1
	adds r3, r0, r3
	str r3, [sp, #0xc]
	adds r1, r2, #0
	asrs r6, r1, #8
	str r6, [sp, #8]
	adds r0, r3, #0
	asrs r0, r0, #8
	str r0, [sp, #0x10]
	movs r3, #8
	rsbs r3, r3, #0
	mov r1, sb
	str r1, [sp]
	ldr r4, _0806C6A4 @ =sa2__sub_801ED24
	str r4, [sp, #4]
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	movs r2, #0
	bl sa2__sub_801F07C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	mov sb, r5
	mov r0, r8
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	movs r2, #0
	movs r3, #8
	bl sa2__sub_801F07C
	ldr r3, [r7]
	asrs r2, r3, #8
	adds r1, r2, #0
	subs r1, #0x1e
	ldr r0, _0806C6A8 @ =gCamera
	ldr r0, [r0]
	cmp r1, r0
	bge _0806C6AC
	ldr r0, [r7, #0x38]
	cmp r0, #0
	bge _0806C680
	rsbs r0, r0, #0
_0806C680:
	str r0, [r7, #0x38]
	lsls r0, r5, #0x18
	asrs r0, r0, #0x10
	adds r0, r3, r0
	str r0, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x51
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	b _0806C6E0
	.align 2, 0
_0806C6A0: .4byte gSineTable
_0806C6A4: .4byte sa2__sub_801ED24
_0806C6A8: .4byte gCamera
_0806C6AC:
	adds r1, r2, #0
	adds r1, #0x1e
	adds r0, #0xf0
	cmp r1, r0
	ble _0806C6E0
	ldr r0, [r7, #0x38]
	cmp r0, #0
	bge _0806C6BE
	rsbs r0, r0, #0
_0806C6BE:
	rsbs r0, r0, #0
	str r0, [r7, #0x38]
	mov r1, sb
	lsls r0, r1, #0x18
	asrs r0, r0, #0x10
	adds r0, r3, r0
	str r0, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x51
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
_0806C6E0:
	ldr r0, [r7, #0x38]
	ldr r1, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	ldr r1, [r7]
	adds r1, r1, r0
	str r1, [r7]
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
