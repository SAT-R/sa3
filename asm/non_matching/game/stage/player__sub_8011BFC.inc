
.syntax unified
.text
	push {r4, r5, lr}
	sub sp, #8
	mov ip, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, [r1, #0x10]
	asrs r5, r0, #8
	ldr r0, [r1, #0x14]
	asrs r4, r0, #8
	mov r0, ip
	adds r0, #0x29
	strb r2, [r0]
	lsls r0, r2, #0x18
	asrs r3, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0x28
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x20
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _08011C2E
	cmp r3, #0
	bgt _08011C32
	b _08011C38
_08011C2E:
	cmp r3, #0
	bgt _08011C38
_08011C32:
	adds r0, r2, #0
	adds r0, #0x1f
	lsls r0, r0, #0x18
_08011C38:
	lsrs r2, r0, #0x18
	lsrs r3, r2, #6
	cmp r3, #1
	beq _08011CA4
	cmp r3, #1
	bgt _08011C4A
	cmp r3, #0
	beq _08011C54
	b _08011CFC
_08011C4A:
	cmp r3, #2
	beq _08011C78
	cmp r3, #3
	beq _08011CD0
	b _08011CFC
_08011C54:
	adds r0, r4, #2
	mov r1, ip
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x27
	ldrb r2, [r1]
	str r3, [sp]
	ldr r1, _08011C74 @ =sub_805217C
	str r1, [sp, #4]
	adds r1, r5, #0
	b _08011CEE
	.align 2, 0
_08011C74: .4byte sub_805217C
_08011C78:
	subs r0, r4, #2
	mov r1, ip
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	mov r1, ip
	adds r1, #0x27
	ldrb r2, [r1]
	movs r3, #8
	rsbs r3, r3, #0
	movs r1, #0
	str r1, [sp]
	ldr r1, _08011CA0 @ =sub_805217C
	str r1, [sp, #4]
	adds r1, r5, #0
	bl sub_80517FC
	b _08011CFE
	.align 2, 0
_08011CA0: .4byte sub_805217C
_08011CA4:
	subs r0, r5, #2
	mov r1, ip
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	mov r1, ip
	adds r1, #0x27
	ldrb r2, [r1]
	movs r3, #8
	rsbs r3, r3, #0
	movs r1, #0
	str r1, [sp]
	ldr r1, _08011CCC @ =sub_805203C
	str r1, [sp, #4]
	adds r1, r4, #0
	bl sub_80517FC
	b _08011CFE
	.align 2, 0
_08011CCC: .4byte sub_805203C
_08011CD0:
	adds r0, r5, #2
	mov r1, ip
	adds r1, #0x24
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x27
	ldrb r2, [r1]
	movs r1, #0
	str r1, [sp]
	ldr r1, _08011CF8 @ =sub_805203C
	str r1, [sp, #4]
	adds r1, r4, #0
_08011CEE:
	movs r3, #8
	bl sub_80517FC
	b _08011CFE
	.align 2, 0
_08011CF8: .4byte sub_805203C
_08011CFC:
	movs r0, #0
_08011CFE:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
