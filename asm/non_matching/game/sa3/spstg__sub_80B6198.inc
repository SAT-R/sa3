
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #4]
	ldrh r6, [r0, #6]
	movs r2, #0xc0
	lsls r2, r2, #0x12
	adds r0, r6, r2
	mov ip, r0
	ldr r0, [r7, #8]
	ldrh r4, [r0, #6]
	ldr r0, [r7, #0xc]
	ldrh r3, [r0, #6]
	adds r3, r3, r2
	adds r2, #0x8c
	adds r0, r4, r2
	ldr r0, [r0]
	str r0, [sp]
	adds r2, #4
	adds r0, r4, r2
	ldr r5, [r0]
	ldr r2, _080B6220 @ =0xFFFFEC00
	adds r0, r5, r2
	lsls r0, r0, #1
	movs r2, #0xf2
	lsls r2, r2, #7
	subs r2, r2, r0
	mov sb, r2
	ldr r0, [r3, #0x54]
	subs r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldr r3, _080B6224 @ =0x030008E0
	adds r6, r6, r3
	strh r0, [r6]
	movs r2, #0x8b
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r5, [r0]
	ldr r3, _080B6228 @ =0x030000A0
	adds r4, r4, r3
	ldr r2, [r4]
	movs r0, #0x78
	subs r0, r0, r2
	lsls r0, r0, #0xe
	adds r5, r5, r0
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080B622C
	movs r1, #0x8c
	lsls r1, r1, #4
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #8
	ble _080B621A
	movs r1, #8
_080B621A:
	adds r0, r1, #0
	b _080B622E
	.align 2, 0
_080B6220: .4byte 0xFFFFEC00
_080B6224: .4byte 0x030008E0
_080B6228: .4byte 0x030000A0
_080B622C:
	lsrs r0, r2, #0x10
_080B622E:
	movs r2, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _080B62B2
	ldr r3, _080B62E8 @ =0x000008E2
	add r3, ip
	mov r8, r3
	ldr r6, _080B62EC @ =gSineTable
	ldr r7, _080B62F0 @ =0x0000FF60
	mov sl, r7
	str r0, [sp, #4]
_080B6246:
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _080B62F4 @ =0x000005F4
	adds r0, r0, r1
	mov r3, ip
	adds r2, r3, r0
	str r5, [r2]
	ldr r7, [sp]
	str r7, [r2, #4]
	mov r0, sb
	str r0, [r2, #8]
	lsls r0, r4, #7
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r3, _080B62F8 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	adds r3, r0, #0
	lsls r0, r3, #1
	adds r0, r0, r6
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r3, r7
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r7, #0
	ldrsh r0, [r0, r7]
	asrs r1, r1, #7
	str r1, [r2, #0xc]
	movs r0, #0xa0
	str r0, [r2, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r2, #0x14]
	mov r3, sl
	strh r3, [r2, #0x18]
	movs r0, #1
	strb r0, [r2, #0x1a]
	movs r7, #0
	strb r7, [r2, #0x1b]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #4]
	cmp r0, r1
	blt _080B6246
_080B62B2:
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	cmp r0, #7
	bgt _080B62D6
	ldr r3, _080B62F4 @ =0x000005F4
	movs r2, #0
_080B62BE:
	asrs r0, r1, #0x10
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r3
	add r1, ip
	strb r2, [r1, #0x1a]
	adds r0, #1
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #7
	ble _080B62BE
_080B62D6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B62E8: .4byte 0x000008E2
_080B62EC: .4byte gSineTable
_080B62F0: .4byte 0x0000FF60
_080B62F4: .4byte 0x000005F4
_080B62F8: .4byte 0x000003FF

.syntax divided
