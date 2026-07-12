
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	movs r6, #5
	movs r4, #0
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	beq _0806B5BC
	movs r6, #7
	subs r0, #1
	strb r0, [r2, #0x14]
_0806B5BC:
	ldr r3, [r2, #0x38]
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B5C6
	rsbs r0, r3, #0
_0806B5C6:
	ldr r7, _0806B5E4 @ =0xFFFFFE0C
	adds r0, r0, r7
	ldr r5, _0806B5E8 @ =0x0000012B
	cmp r0, r5
	bls _0806B5E0
	ldr r1, [r2, #0x3c]
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B5DA
	rsbs r0, r1, #0
_0806B5DA:
	adds r0, r0, r7
	cmp r0, r5
	bhi _0806B5EC
_0806B5E0:
	movs r4, #2
	b _0806B630
	.align 2, 0
_0806B5E4: .4byte 0xFFFFFE0C
_0806B5E8: .4byte 0x0000012B
_0806B5EC:
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B5F4
	rsbs r0, r3, #0
_0806B5F4:
	ldr r7, _0806B610 @ =0xFFFFFCE0
	adds r0, r0, r7
	cmp r0, r5
	bls _0806B60A
	adds r0, r1, #0
	cmp r1, #0
	bge _0806B604
	rsbs r0, r1, #0
_0806B604:
	adds r0, r0, r7
	cmp r0, r5
	bhi _0806B614
_0806B60A:
	movs r4, #3
	b _0806B630
	.align 2, 0
_0806B610: .4byte 0xFFFFFCE0
_0806B614:
	adds r0, r3, #0
	cmp r3, #0
	bge _0806B61C
	rsbs r0, r3, #0
_0806B61C:
	ldr r5, _0806B644 @ =0x0000044B
	cmp r0, r5
	bgt _0806B62E
	adds r0, r1, #0
	cmp r0, #0
	bge _0806B62A
	rsbs r0, r0, #0
_0806B62A:
	cmp r0, r5
	ble _0806B630
_0806B62E:
	movs r4, #4
_0806B630:
	adds r0, r2, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806B654
	cmp r3, #0x7f
	bgt _0806B648
	adds r0, r4, #1
	b _0806B6A8
	.align 2, 0
_0806B644: .4byte 0x0000044B
_0806B648:
	adds r0, r3, #0
	subs r0, #0x80
	cmp r0, #0x7f
	bhi _0806B6A6
	adds r0, r4, #2
	b _0806B6A8
_0806B654:
	cmp r0, #1
	bne _0806B670
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r3, r0
	ble _0806B664
	adds r0, r4, #1
	b _0806B6A8
_0806B664:
	adds r0, r3, #0
	adds r0, #0xff
	cmp r0, #0x7f
	bhi _0806B6A6
	adds r0, r4, #2
	b _0806B6A8
_0806B670:
	cmp r0, #2
	bne _0806B688
	ldr r0, [r2, #0x3c]
	cmp r0, #0x7f
	bgt _0806B67E
	adds r0, r4, #1
	b _0806B6A8
_0806B67E:
	subs r0, #0x80
	cmp r0, #0x7f
	bhi _0806B6A6
	adds r0, r4, #2
	b _0806B6A8
_0806B688:
	cmp r0, #3
	bne _0806B6B0
	ldr r1, [r2, #0x3c]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0806B69A
	adds r0, r4, #1
	b _0806B6A8
_0806B69A:
	adds r0, r1, #0
	adds r0, #0xff
	cmp r0, #0x7f
	bhi _0806B6A6
	adds r0, r4, #2
	b _0806B6A8
_0806B6A6:
	adds r0, r4, #3
_0806B6A8:
	lsls r0, r6
	ldrh r1, [r2, #0x2c]
	adds r0, r0, r1
	strh r0, [r2, #0x2c]
_0806B6B0:
	ldrh r1, [r2, #0x2c]
	ldr r0, _0806B6C4 @ =0x00003FF0
	cmp r1, r0
	bls _0806B6BC
	movs r0, #0
	strh r0, [r2, #0x2c]
_0806B6BC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B6C4: .4byte 0x00003FF0

.syntax divided
