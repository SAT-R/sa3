
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	mov r2, ip
	adds r2, #0x52
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _08008AE8
	mov r1, ip
	adds r1, #0x9e
	movs r0, #0
	strh r0, [r1]
	mov r1, ip
	ldr r0, [r1, #4]
	ldr r1, _08008AD4 @ =0xDDFFFFBF
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08008AD8
	mov r0, ip
	bl sub_800E150
	b _08008C0E
	.align 2, 0
_08008AD4: .4byte 0xDDFFFFBF
_08008AD8:
	ldr r1, _08008AE4 @ =sub_800DF10
	mov r0, ip
	str r1, [r0]
	bl _call_via_r1
	b _08008C0E
	.align 2, 0
_08008AE4: .4byte sub_800DF10
_08008AE8:
	ldr r0, _08008B08 @ =gUnknown_03001060
	ldrb r1, [r0, #7]
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r1, r0
	beq _08008AF6
	b _08008C0E
_08008AF6:
	movs r1, #0
	adds r7, r2, #0
	ldr r5, _08008B0C @ =gPlayers
	ldr r2, _08008B10 @ =Player_800ED80
	mov sb, r2
	cmp ip, r5
	bne _08008B14
	movs r6, #0
	b _08008B30
	.align 2, 0
_08008B08: .4byte gUnknown_03001060
_08008B0C: .4byte gPlayers
_08008B10: .4byte Player_800ED80
_08008B14:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _08008B30
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r5
	cmp ip, r0
	bne _08008B14
	adds r6, r1, #0
_08008B30:
	movs r3, #2
	ands r3, r6
	movs r0, #1
	mov r8, r0
	movs r2, #1
	adds r0, r6, #0
	ands r0, r2
	mov r1, r8
	bics r1, r0
	adds r0, r1, #0
	orrs r3, r0
	ldrb r0, [r4, #7]
	asrs r0, r3
	ands r0, r2
	cmp r0, #0
	bne _08008B52
	ands r3, r2
_08008B52:
	ldrb r0, [r4, #8]
	asrs r0, r3
	ands r0, r2
	cmp r0, #0
	beq _08008C04
	ldrb r4, [r4, #9]
	adds r1, r3, #4
	adds r0, r4, #0
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08008BC4
	adds r1, r6, #4
	adds r0, r4, #0
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08008BC4
	lsls r2, r3, #2
	adds r2, r2, r3
	lsls r2, r2, #2
	adds r2, r2, r3
	lsls r2, r2, #4
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r2, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r1, ip
	adds r1, #0xe8
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r2, r0
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	asrs r4, r3
	mov r0, r8
	ands r4, r0
	mov r3, ip
	adds r3, #0xec
	ldrb r1, [r3]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r3]
	adds r2, r5, r2
	ldrh r1, [r2, #6]
	mov r2, r8
	ands r1, r2
	lsls r1, r1, #4
	movs r2, #0xf
	ands r0, r2
	b _08008C00
_08008BC4:
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	adds r1, #0xe8
	strh r0, [r1]
	mov r2, ip
	ldr r0, [r2, #0x14]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	mov r3, ip
	adds r3, #0xec
	movs r4, #0xf
	adds r1, r4, #0
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	mov r2, ip
	ldrh r1, [r2, #6]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	ands r0, r4
_08008C00:
	orrs r0, r1
	strb r0, [r3]
_08008C04:
	movs r0, #0
	strh r0, [r7]
	mov r0, sb
	mov r1, ip
	str r0, [r1]
_08008C0E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
