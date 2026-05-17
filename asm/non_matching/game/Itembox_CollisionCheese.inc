
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0          @ sb   = r0 = itembox
	mov ip, r1          @ ip   = r1 = arg1
	str r2, [sp]        @ sp00 = r2 = arg2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3          @ sl = r3 = arg3
	ldr r0, _0802D5CC @ =gStageData
	adds r0, #0x98
	ldr r0, [r0]
	ldrh r3, [r0, #6]   @ r3 = taskCheese
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0          @ r8 = cheese;
	mov r0, sl          @ r0 = sl = arg3
	lsls r6, r0, #3		@ r6 = arg3 * 8
	mov r0, sb
	adds r0, #0x20
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802D4E6
	b _0802D5EC_ret_0
_0802D4E6:
	mov r2, r8
	ldr r0, [r2, #0x48]
	cmp r0, r1
	bne _0802D4F0
	b _0802D5EC_ret_0
_0802D4F0:
	ldrh r1, [r2, #0x16]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802D5EC_ret_0
	ldr r7, _0802D5D0 @ =0x0300004C
	adds r0, r3, r7
	ldrb r0, [r0]
	ldr r2, _0802D5D4 @ =0xFFFFFF00
	ands r2, r5
	orrs r2, r0
	ldr r1, _0802D5D8 @ =0x0300004D
	adds r0, r3, r1
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _0802D5DC @ =0xFFFF00FF
	ands r1, r2
	orrs r1, r0
	ldr r2, _0802D5E0 @ =0x0300004E
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _0802D5E4 @ =0xFF00FFFF
	ands r2, r1
	orrs r2, r0
	adds r7, #3
	adds r0, r3, r7
	ldrb r0, [r0]
	adds r0, #4
	lsls r0, r0, #0x18
	ldr r3, _0802D5E8 @ =0x00FFFFFF
	ands r3, r2
	orrs r3, r0
	adds r5, r3, #0
	add r6, sb
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #4]
	adds r2, r0, #0
	add r2, ip
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	lsls r1, r5, #0x18
	asrs r1, r1, #0x18
	mov ip, r1
	adds r1, r0, r1
	cmp r2, r1
	bgt _0802D574
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r6, [sp, #4]
	subs r0, r0, r6
	adds r0, r2, r0
	cmp r0, r1
	bge _0802D582
	cmp r2, r1
	blt _0802D5EC_ret_0
_0802D574:
	lsls r0, r3, #8
	asrs r0, r0, #0x18
	mov r7, ip
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0802D5EC_ret_0
_0802D582:
	mov r1, sl
	lsls r0, r1, #3
	mov r2, sb
	adds r3, r2, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r6, #0
	ldrsb r6, [r0, r6]
	ldr r7, [sp]
	adds r2, r7, r6
	mov r0, r8
	ldr r1, [r0, #4]
	asrs r1, r1, #8
	lsls r0, r5, #0x10
	asrs r4, r0, #0x18
	adds r1, r1, r4
	cmp r2, r1
	bgt _0802D5BC
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r2, r0
	cmp r0, r1
	bge _0802D5C6
	cmp r2, r1
	blt _0802D5EC_ret_0
_0802D5BC:
	asrs r0, r5, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0802D5EC_ret_0
_0802D5C6:
	movs r0, #1
	b _0802D5EE_ret
	.align 2, 0
_0802D5CC: .4byte gStageData
_0802D5D0: .4byte 0x0300004C
_0802D5D4: .4byte 0xFFFFFF00
_0802D5D8: .4byte 0x0300004D
_0802D5DC: .4byte 0xFFFF00FF
_0802D5E0: .4byte 0x0300004E
_0802D5E4: .4byte 0xFF00FFFF
_0802D5E8: .4byte 0x00FFFFFF
_0802D5EC_ret_0:
	movs r0, #0
_0802D5EE_ret:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

.syntax divided
