
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r6, #5
	movs r4, #0
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	beq _0806B498
	movs r6, #7
	subs r0, #1
	strb r0, [r2, #0x14]
_0806B498:
	ldr r1, [r2, #0x38]
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B4A2
	rsbs r0, r1, #0
_0806B4A2:
	ldr r7, _0806B4C0 @ =0xFFFFFE0C
	adds r0, r0, r7
	ldr r5, _0806B4C4 @ =0x0000012B
	cmp r0, r5
	bls _0806B4BC
	ldr r3, [r2, #0x3c]
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B4B6
	rsbs r0, r3, #0
_0806B4B6:
	adds r0, r0, r7
	cmp r0, r5
	bhi _0806B4C8
_0806B4BC:
	movs r4, #2
	b _0806B50C
	.align 2, 0
_0806B4C0: .4byte 0xFFFFFE0C
_0806B4C4: .4byte 0x0000012B
_0806B4C8:
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B4D0
	rsbs r0, r1, #0
_0806B4D0:
	ldr r7, _0806B4EC @ =0xFFFFFCE0
	adds r0, r0, r7
	cmp r0, r5
	bls _0806B4E6
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B4E0
	rsbs r0, r3, #0
_0806B4E0:
	adds r0, r0, r7
	cmp r0, r5
	bhi _0806B4F0
_0806B4E6:
	movs r4, #3
	b _0806B50C
	.align 2, 0
_0806B4EC: .4byte 0xFFFFFCE0
_0806B4F0:
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B4F8
	rsbs r0, r1, #0
_0806B4F8:
	ldr r5, _0806B524 @ =0x0000044B
	cmp r0, r5
	bgt _0806B50A
	adds r0, r3, #0
	cmp r0, #0
	bge _0806B506
	rsbs r0, r0, #0
_0806B506:
	cmp r0, r5
	ble _0806B50C
_0806B50A:
	movs r4, #4
_0806B50C:
	adds r0, r2, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806B534
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0806B528
	adds r1, r4, #1
	b _0806B58C
	.align 2, 0
_0806B524: .4byte 0x0000044B
_0806B528:
	adds r0, r1, #0
	adds r0, #0xff
	cmp r0, #0x7f
	bhi _0806B58A
	adds r1, r4, #2
	b _0806B58C
_0806B534:
	cmp r0, #1
	bne _0806B54C
	cmp r1, #0x7f
	bgt _0806B540
	adds r1, r4, #1
	b _0806B58C
_0806B540:
	adds r0, r1, #0
	subs r0, #0x80
	cmp r0, #0x7f
	bhi _0806B58A
	adds r1, r4, #2
	b _0806B58C
_0806B54C:
	cmp r0, #2
	bne _0806B570
	ldr r3, [r2, #0x3c]
	movs r5, #0x80
	rsbs r5, r5, #0
	cmp r3, r5
	ble _0806B55E
	adds r1, r4, #1
	b _0806B58C
_0806B55E:
	ldr r0, _0806B56C @ =0xFFFFFF00
	cmp r3, r0
	ble _0806B58A
	cmp r1, r5
	bgt _0806B58A
	adds r1, r4, #2
	b _0806B58C
	.align 2, 0
_0806B56C: .4byte 0xFFFFFF00
_0806B570:
	cmp r0, #3
	bne _0806B594
	ldr r0, [r2, #0x3c]
	cmp r0, #0x7f
	bgt _0806B57E
	adds r1, r4, #1
	b _0806B58C
_0806B57E:
	cmp r0, #0xff
	bgt _0806B58A
	cmp r1, #0x7f
	ble _0806B58A
	adds r1, r4, #2
	b _0806B58C
_0806B58A:
	adds r1, r4, #3
_0806B58C:
	lsls r1, r6
	ldrh r0, [r2, #0x2c]
	subs r0, r0, r1
	strh r0, [r2, #0x2c]
_0806B594:
	ldrh r0, [r2, #0x2c]
	ldr r1, _0806B5A4 @ =0x00003FF0
	cmp r0, r1
	bls _0806B59E
	strh r1, [r2, #0x2c]
_0806B59E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B5A4: .4byte 0x00003FF0

.syntax divided
