
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	str r1, [sp]
	str r2, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r8, r0
	ldr r0, [sp, #0x30]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, r8
	adds r0, #0xe0
	ldr r2, [r0]
	movs r1, #0xc
	adds r1, r1, r2
	mov ip, r1
	mov r6, r8
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802D390
	b _0802D494
_0802D390:
	lsls r0, r3, #3
	mov r1, sb
	adds r1, #0x20
	adds r1, r1, r0
	ldr r1, [r1]
	movs r6, #1
	rsbs r6, r6, #0
	mov sl, r0
	cmp r1, r6
	beq _0802D494
	lsls r1, r7, #3
	adds r0, r2, #0
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r6
	beq _0802D494
	add ip, r1
	mov r0, ip
	adds r0, #0x24
	ldrb r0, [r0]
	ldr r2, _0802D484 @ =0xFFFFFF00
	ands r2, r5
	orrs r2, r0
	mov r0, ip
	adds r0, #0x25
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _0802D488 @ =0xFFFF00FF
	ands r1, r2
	orrs r1, r0
	mov r0, ip
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _0802D48C @ =0xFF00FFFF
	ands r2, r1
	orrs r2, r0
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	adds r0, #4
	lsls r0, r0, #0x18
	ldr r3, _0802D490 @ =0x00FFFFFF
	ands r3, r2
	orrs r3, r0
	adds r5, r3, #0
	mov r6, sb
	add r6, sl
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r7, [sp]
	adds r2, r7, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	lsls r1, r5, #0x18
	asrs r1, r1, #0x18
	mov ip, r1
	adds r1, r0, r1
	cmp r2, r1
	bgt _0802D430
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r6, [sp, #8]
	subs r0, r0, r6
	adds r0, r2, r0
	cmp r0, r1
	bge _0802D43E
	cmp r2, r1
	blt _0802D494
_0802D430:
	lsls r0, r3, #8
	asrs r0, r0, #0x18
	mov r7, ip
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0802D494
_0802D43E:
	mov r3, sb
	add r3, sl
	adds r0, r3, #0
	adds r0, #0x25
	movs r6, #0
	ldrsb r6, [r0, r6]
	ldr r0, [sp, #4]
	adds r2, r0, r6
	mov r7, r8
	ldr r1, [r7, #0x14]
	asrs r1, r1, #8
	lsls r0, r5, #0x10
	asrs r4, r0, #0x18
	adds r1, r1, r4
	cmp r2, r1
	bgt _0802D474
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r2, r0
	cmp r0, r1
	bge _0802D47E
	cmp r2, r1
	blt _0802D494
_0802D474:
	asrs r0, r5, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0802D494
_0802D47E:
	movs r0, #1
	b _0802D496
	.align 2, 0
_0802D484: .4byte 0xFFFFFF00
_0802D488: .4byte 0xFFFF00FF
_0802D48C: .4byte 0xFF00FFFF
_0802D490: .4byte 0x00FFFFFF
_0802D494:
	movs r0, #0
_0802D496:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
