
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	movs r6, #0
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bgt _0803C724
	movs r2, #0
	str r2, [sp]
	cmp r0, #1
	bgt _0803C716
	movs r1, #2
_0803C716:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xf
	lsrs r3, r0, #0x10
	b _0803C73A
_0803C724:
	cmp r0, #0x18
	ble _0803C72A
	movs r1, #0x18
_0803C72A:
	movs r3, #1
	str r3, [sp]
	movs r3, #0x18
	lsls r0, r1, #0x12
	ldr r1, _0803C83C @ =0xFFC00000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov sl, r0
_0803C73A:
	ldr r2, _0803C840 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0803C844 @ =gUnknown_03003C5C
	ldr r0, _0803C848 @ =0x04000012
	str r0, [r1]
	ldr r1, _0803C84C @ =gUnknown_03003F30
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0803C850 @ =gUnknown_03002B84
	ldr r5, [r0]
	movs r2, #0     @ r2 = i = 0
	mov sb, r0
	lsls r7, r3, #0x10  @ r7 = r3
_0803C75A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	strh r1, [r5]
	adds r5, #2
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _0803C75A
	movs r3, #0x48
	mov r2, sb          @ r2 = gUnknown_03002B84
	ldr r5, [r2]
	asrs r1, r7, #0x10
	subs r0, r3, r1
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r2, #0
	adds r4, r1, #0
	subs r4, #0x40
_0803C784:
	strh r4, [r5]
	adds r5, #2
	lsls r1, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	lsls r0, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _0803C784
	lsls r3, r3, #0x10
	asrs r2, r3, #0x10
	asrs r1, r7, #0x10
	subs r0, r2, r1
	lsls r4, r0, #0x10
	asrs r0, r4, #0x10
	adds r2, r2, r1
	mov ip, r3
	cmp r0, r2
	bge _0803C7E2
	movs r3, #3
	mov r8, r3
	adds r3, r2, #0
_0803C7BC:
	asrs r2, r4, #0x10
	adds r0, r2, #0
	mov r1, r8
	ands r0, r1
	adds r1, r2, #0
	subs r1, #0x20
	subs r0, r0, r1
	strh r0, [r5]
	adds r5, #2
	adds r2, #1
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	lsls r4, r2, #0x10
	asrs r0, r4, #0x10
	cmp r0, r3
	blt _0803C7BC
_0803C7E2:
	mov r2, sb
	ldr r5, [r2]
	mov r3, ip
	asrs r0, r3, #0x10
	asrs r1, r7, #0x10
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r2, #0
	movs r3, #0x18
	rsbs r3, r3, #0
	adds r0, r3, #0
	subs r3, r0, r1
_0803C7FC:
	strh r3, [r5]
	adds r5, #2
	lsls r1, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	lsls r0, r6, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _0803C7FC
	ldr r3, [sp]
	cmp r3, #0
	bne _0803C854
	lsls r1, r6, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	bgt _0803C886
	movs r2, #0
_0803C82A:
	strh r2, [r5]
	adds r5, #2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	asrs r0, r1, #0x10
	cmp r0, #0x9f
	ble _0803C82A
	b _0803C886
	.align 2, 0
_0803C83C: .4byte 0xFFC00000
_0803C840: .4byte gFlags
_0803C844: .4byte gUnknown_03003C5C
_0803C848: .4byte 0x04000012
_0803C84C: .4byte gUnknown_03003F30
_0803C850: .4byte gUnknown_03002B84
_0803C854:
	mov r1, sb
	ldr r5, [r1]
	mov r3, sl
	lsls r2, r3, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x5e
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r5, r5, r0
	movs r3, #0
	cmp r3, r1
	bge _0803C886
_0803C86C:
	asrs r1, r2, #0x10
	adds r0, r1, #0
	subs r0, #0x50
	strh r0, [r5]
	adds r5, #2
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	blt _0803C86C
_0803C886:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
