
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0x27
	ldrb r6, [r0]
	ldr r5, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r5, r0
	cmp r5, #0
	beq _08011E96
	adds r0, r4, #0
	bl sub_8016E70
	b _08011FA6
_08011E96:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	subs r0, #3
	movs r1, #0x24
	adds r1, r1, r4
	mov r8, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r7, r0, r1
	ldr r0, [r4, #0x14]
	asrs r1, r0, #8
	adds r2, r6, #0
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	ldr r3, _08011F3C @ =0x000002FF
	mov sl, r3
	cmp r0, sl
	bgt _08011EC0
	movs r2, #0x80
	orrs r2, r6
_08011EC0:
	movs r3, #8
	rsbs r3, r3, #0
	str r5, [sp]
	ldr r0, _08011F40 @ =sub_805203C
	mov sb, r0
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _08011EE2
	lsls r1, r2, #8
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	strh r5, [r4, #0x18]
_08011EE2:
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	adds r0, #3
	mov r2, r8
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r3, r0, r1
	ldr r0, [r4, #0x14]
	asrs r1, r0, #8
	adds r2, r6, #0
	movs r6, #0x1a
	ldrsh r0, [r4, r6]
	cmp r0, sl
	bgt _08011F02
	movs r0, #0x80
	orrs r2, r0
_08011F02:
	str r5, [sp]
	mov r0, sb
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #8
	bl sub_80517FC
	adds r2, r0, #0
	cmp r2, #0
	bgt _08011F20
	lsls r1, r2, #8
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	strh r5, [r4, #0x18]
_08011F20:
	add r3, sp, #0xc
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08011F44
	movs r0, #2
	adds r1, r4, #0
	add r2, sp, #8
	bl sub_8011024
	b _08011F4E
	.align 2, 0
_08011F3C: .4byte 0x000002FF
_08011F40: .4byte sub_805203C
_08011F44:
	movs r0, #3
	adds r1, r4, #0
	add r2, sp, #8
	bl sub_8011024
_08011F4E:
	adds r2, r0, #0
	cmp r2, #0
	bgt _08011FA6
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08011F62
	rsbs r2, r2, #0
_08011F62:
	lsls r1, r2, #8
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	add r0, sp, #8
	ldrb r2, [r0]
	adds r0, r2, #0
	adds r0, #0x20
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08011FA2
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0x40
	cmp r0, #0
	ble _08011FA2
	adds r0, r4, #0
	adds r0, #0x26
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_8012F10
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08011F9E
	rsbs r0, r0, #0
_08011F9E:
	strh r0, [r4, #0x1c]
	b _08011FA6
_08011FA2:
	movs r0, #0
	strh r0, [r4, #0x1a]
_08011FA6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
