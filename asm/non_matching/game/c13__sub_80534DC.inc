
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r5, r7, #0
	adds r6, r5, #0
	adds r6, #0xd0
	ldr r0, _0805363C @ =0x06010000
	str r0, [r5]
	movs r0, #0x80
	lsls r0, r0, #5
	mov sl, r0
	mov r4, sl
	movs r3, #0x20
	orrs r4, r3
	str r4, [r5, #8]
	ldr r0, _08053640 @ =gUnknown_080D1C48
	mov r8, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0xc
	adds r0, r1, r0
	ldrh r0, [r0]
	movs r3, #0
	mov ip, r3
	strh r0, [r5, #0xc]
	movs r0, #0x42
	strh r0, [r5, #0x10]
	movs r0, #0x8c
	strh r0, [r5, #0x12]
	movs r3, #0x80
	lsls r3, r3, #3
	strh r3, [r5, #0x14]
	mov r0, ip
	strh r0, [r5, #0x16]
	ldr r0, _08053644 @ =0x0000FFFF
	strh r0, [r5, #0x18]
	ldr r3, _08053648 @ =gUnknown_080D1C4A
	adds r1, r1, r3
	ldrh r0, [r1]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	mov sb, r0
	mov r1, sb
	strb r1, [r5, #0x1c]
	movs r3, #0
	strb r3, [r5, #0x1f]
	movs r3, #1
	rsbs r3, r3, #0
	str r3, [r5, #0x20]
	str r3, [r5, #0x28]
	mov r0, ip
	strh r0, [r6]
	ldr r0, _0805364C @ =0x0000FFC0
	strh r0, [r6, #2]
	movs r0, #0x40
	strh r0, [r6, #4]
	ldrh r0, [r5, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r6, #8]
	adds r5, #0x28
	adds r6, r7, #0
	adds r6, #0xdc
	ldr r0, _08053650 @ =0x06010800
	str r0, [r7, #0x28]
	movs r0, #0x21
	mov r1, sl
	orrs r0, r1
	str r0, [r5, #8]
	lsls r2, r2, #0x10
	asrs r2, r2, #0xc
	mov r1, r8
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	movs r0, #0x30
	strh r0, [r5, #0x10]
	movs r0, #0x8c
	strh r0, [r5, #0x12]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
	mov r1, ip
	strh r1, [r5, #0x16]
	adds r1, r3, #0
	mov r0, sp
	strh r1, [r0]
	adds r0, r3, #0
	strh r0, [r5, #0x18]
	ldr r0, _08053648 @ =gUnknown_080D1C4A
	adds r2, r2, r0
	ldrh r0, [r2]
	strb r0, [r5, #0x1a]
	adds r2, r1, #0
	adds r0, r3, #0
	strb r0, [r5, #0x1b]
	mov r0, sb
	strb r0, [r5, #0x1c]
	movs r0, #1
	strb r0, [r5, #0x1f]
	str r3, [r5, #0x20]
	str r3, [r5, #0x28]
	mov r1, ip
	strh r1, [r6]
	ldr r0, _08053654 @ =0x0000FFE0
	strh r0, [r6, #2]
	movs r0, #0x20
	strh r0, [r6, #4]
	ldrh r0, [r5, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r6, #8]
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805362A
	adds r5, #0xc0
	ldr r0, _08053658 @ =0x06014000
	str r0, [r5]
	mov r0, sl
	str r0, [r5, #8]
	ldrb r0, [r1]
	subs r0, #1
	orrs r0, r4
	str r0, [r5, #8]
	mov r0, r8
	adds r0, #0x50
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrb r0, [r1]
	movs r1, #0x42
	cmp r0, #1
	beq _080535F6
	movs r1, #0x30
_080535F6:
	strh r1, [r5, #0x10]
	movs r1, #0x8c
	strh r1, [r5, #0x12]
	movs r4, #0x80
	lsls r4, r4, #3
	strh r4, [r5, #0x14]
	mov r0, ip
	strh r0, [r5, #0x16]
	ldrh r0, [r5, #0x18]
	mov r1, sp
	ldrh r1, [r1]
	orrs r0, r1
	strh r0, [r5, #0x18]
	mov r0, r8
	adds r0, #0x52
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	ldrb r0, [r5, #0x1b]
	orrs r0, r2
	strb r0, [r5, #0x1b]
	mov r4, sb
	strb r4, [r5, #0x1c]
	movs r0, #0
	strb r0, [r5, #0x1f]
	str r3, [r5, #0x20]
	str r3, [r5, #0x28]
_0805362A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805363C: .4byte 0x06010000
_08053640: .4byte gUnknown_080D1C48
_08053644: .4byte 0x0000FFFF
_08053648: .4byte gUnknown_080D1C4A
_0805364C: .4byte 0x0000FFC0
_08053650: .4byte 0x06010800
_08053654: .4byte 0x0000FFE0
_08053658: .4byte 0x06014000

.syntax divided
