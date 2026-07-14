
.syntax unified
.text
	push {r4, r5, r6, lr}
	sub sp, #4
	mov ip, r0
	movs r6, #0
	ldr r4, [r0, #4]
	adds r3, r4, #0
	asrs r3, r3, #8
	asrs r0, r4, #8
	ldr r5, _0806C770 @ =gCamera
	ldr r1, [r5, #4]
	subs r0, r0, r1
	cmp r0, #0x14
	ble _0806C722
	ldr r0, [r5, #0x14]
	adds r1, r3, #0
	adds r1, #0x30
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0806C722:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, r3
	bge _0806C778
	lsls r0, r0, #8
	adds r0, r4, r0
	mov r1, ip
	str r0, [r1, #4]
	adds r1, #0x24
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _0806C774 @ =gUnknown_080D57C0
	mov r4, ip
	ldrh r0, [r4, #0x2a]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r1, r0, #8
	lsls r0, r0, #9
	subs r1, r1, r0
	str r1, [r4, #0x3c]
	str r2, [r4, #0x44]
	ldrh r0, [r4, #0x2a]
	cmp r0, #3
	bhi _0806C75C
	adds r0, #1
	strh r0, [r4, #0x2a]
_0806C75C:
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	movs r0, #1
	b _0806C7A8
	.align 2, 0
_0806C770: .4byte gCamera
_0806C774: .4byte gUnknown_080D57C0
_0806C778:
	mov r0, ip
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	mov r2, ip
	ldr r1, [r2, #0x44]
	adds r1, r1, r0
	str r1, [r2, #0x44]
	ldr r0, [r2, #0x3c]
	adds r0, r0, r1
	str r0, [r2, #0x3c]
	movs r1, #0xc0
	lsls r1, r1, #3
	cmp r0, r1
	ble _0806C79C
	str r1, [r2, #0x3c]
_0806C79C:
	mov r4, ip
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r0, #0
_0806C7A8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

.syntax divided
