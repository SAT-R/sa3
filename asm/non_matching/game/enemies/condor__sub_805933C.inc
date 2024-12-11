
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0     @ r7 = enemy
	adds r0, #0x38
	str r0, [sp]
	ldr r0, [r7, #0x28]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r7, #0x2c]
	asrs r0, r0, #8
	mov r8, r0
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #8
	add sb, r0
	ldrh r0, [r7, #0xc]
	lsls r0, r0, #8
	add r8, r0
	movs r1, #0
	mov sl, r1
	b _08059426
_0805936C:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	mov r2, r8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	mov r3, sb
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _080593D4 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _080593A4
	ldr r3, [sp]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080593BE
_080593A4:
	ldr r1, _080593D8 @ =0xFFFFFEFF
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xfe
	bhi _0805941C
	ldr r2, [sp]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805941C
_080593BE:
	ldr r0, [r5, #0x10]
	asrs r2, r0, #8
	mov r3, sb
	subs r1, r3, r2
	adds r6, r0, #0
	cmp r1, #0
	blt _080593DC
	cmp r1, #0x63
	ble _080593E4
	b _0805941C
	.align 2, 0
_080593D4: .4byte 0xFFFF0000
_080593D8: .4byte 0xFFFFFEFF
_080593DC:
	mov r1, sb
	subs r0, r2, r1
	cmp r0, #0x63
	bgt _0805941C
_080593E4:
	mov r3, r8
	adds r3, #0x1a
	ldr r0, [r5, #0x14]
	asrs r2, r0, #8
	subs r1, r3, r2
	adds r4, r0, #0
	cmp r1, #0
	blt _080593FA
	cmp r1, #0x63
	ble _08059400
	b _0805941C
_080593FA:
	subs r0, r2, r3
	cmp r0, #0x63
	bgt _0805941C
_08059400:
	asrs r0, r4, #8
	subs r0, #0x1a
	cmp r8, r0
	bge _0805941C
	str r6, [r7, #0x10]
	ldr r0, [r5, #0x14]
	ldr r2, _08059418 @ =0xFFFFE600
	adds r0, r0, r2
	str r0, [r7, #0x14]
	movs r0, #1
	b _0805943A
	.align 2, 0
_08059418: .4byte 0xFFFFE600
_0805941C:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_08059426:
	mov r3, sl
	cmp r3, #1
	bhi _08059438
	mov r0, sl
	bl sub_805CD20
	adds r5, r0, #0
	cmp r5, #0
	bne _0805936C
_08059438:
	movs r0, #0
_0805943A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
