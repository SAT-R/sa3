
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	adds r7, r4, #0
	adds r7, #0x6c
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080670C8 @ =gUnknown_080D5B00+6*0xC
	adds r1, r1, r0
	str r1, [sp]
	movs r0, #0
	mov sl, r0
	mov sb, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068984
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080670D8
	ldr r2, _080670CC @ =gUnknown_080D56F0
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r7]
	adds r0, r0, r1
	ldr r2, _080670D0 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7]
	ldr r2, _080670D4 @ =gCamera
	ldr r0, [r2, #0x1c]
	subs r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	bge _0806710C
	b _08067108
	.align 2, 0
_080670C8: .4byte gUnknown_080D5B00+6*0xC
_080670CC: .4byte gUnknown_080D56F0
_080670D0: .4byte 0x000003FF
_080670D4: .4byte gCamera
_080670D8:
	ldr r2, _0806714C @ =gUnknown_080D56F0
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r1, [r7]
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _08067150 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	strh r1, [r7]
	ldr r2, _08067154 @ =gCamera
	ldr r0, [r2, #0x18]
	adds r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	ble _0806710C
_08067108:
	movs r3, #1
	mov sl, r3
_0806710C:
	ldr r0, [r4, #8]
	mov r8, r0
	asrs r0, r0, #8
	ldr r6, [r2, #0x18]
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806715C
	lsls r0, r2, #0x10
	ldr r1, _08067158 @ =0xFFD80000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	adds r2, r4, #0
	adds r2, #0x2f
	ldrb r1, [r2]
	movs r3, #0x1c
	muls r1, r3, r1
	adds r5, r2, #0
	cmp r0, r1
	ble _08067184
	movs r0, #1
	mov sb, r0
	adds r0, r6, #0
	adds r0, #0x28
	adds r0, r1, r0
	b _08067180
	.align 2, 0
_0806714C: .4byte gUnknown_080D56F0
_08067150: .4byte 0x000003FF
_08067154: .4byte gCamera
_08067158: .4byte 0xFFD80000
_0806715C:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r2, r4, #0
	adds r2, #0x2f
	ldrb r0, [r2]
	movs r5, #0x1c
	adds r3, r5, #0
	muls r3, r0, r3
	movs r0, #0xc8
	subs r0, r0, r3
	adds r5, r2, #0
	cmp r1, r0
	bge _08067184
	movs r0, #1
	mov sb, r0
	adds r0, r6, #0
	adds r0, #0xc8
	subs r0, r0, r3
_08067180:
	lsls r0, r0, #8
	str r0, [r4, #8]
_08067184:
	mov r1, sb
	cmp r1, #0
	beq _080671EA
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r2, [r5]
	adds r0, r0, r2
	movs r6, #1
	strb r6, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	ldrb r0, [r3]
	adds r1, r6, #0
	ands r1, r0
	adds r1, #6
	ldrb r2, [r5]
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_807A574
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	mov r3, r8
	str r3, [r4, #8]
	ldrb r0, [r5]
	ldr r5, [sp]
	ldrb r5, [r5, #8]
	cmp r0, r5
	bne _080671EA
	mov r0, sl
	cmp r0, #0
	beq _080671EA
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x31
	strb r6, [r0]
	movs r0, #0
	strh r0, [r7]
	adds r0, r4, #0
	movs r1, #0x24
	bl Gemerl_SwitchState
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
_080671EA:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

.syntax divided
