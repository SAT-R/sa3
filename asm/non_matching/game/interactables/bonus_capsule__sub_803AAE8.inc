
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0          @ r8 = cap
	adds r7, r1, #0     @ r7 = p
	lsls r6, r2, #0x18
	adds r0, #0xb0
	str r0, [sp, #8]    @ sp08 = s = &cap->s
	mov r2, r8          @ r2 = r8 = cap
	ldr r1, [r2]
	ldrb r5, [r2, #0xa]
	lsls r5, r5, #3     @ r5 = cap->unkA * 8
	ldrh r0, [r2, #4]
	lsls r0, r0, #8
	adds r5, r5, r0     @ r5 = worldX
	ldrb r4, [r1, #1]
	lsls r4, r4, #3
	ldrh r0, [r2, #6]
	lsls r0, r0, #8
	adds r4, r4, r0     @ r4 = worldY
	str r7, [sp]        @ sp00 = p
	lsrs r6, r6, #0x15
	mov r0, r8
	adds r0, #0x1c
	adds r0, r0, r6
	mov sl, r0          @ sl = playerX = &cap->playerPos[pid].x;
	ldr r0, [r0]
	str r0, [sp, #4]    @ sp04 = playerY = cap->playerPos[pid].y;
	ldr r0, [sp, #8]
	movs r1, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_803C094
	mov sb, r0          @ sb = resA
	str r0, [sp, #0xc]  @ sp0C = resA
	str r7, [sp]        @ sp00 = p
	mov r0, r8
	adds r0, #0x20
	adds r6, r0, r6     @ r6 = &cap->playerPos[pid].y
	ldr r0, [r6]
	str r0, [sp, #4]    @ sp04 = playerY
	ldr r0, [sp, #8]
	movs r1, #1
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_803C094
	adds r1, r0, #0
	str r1, [sp, #0x10] @ sp10 = resB
	movs r0, #0
	mov r3, sl
	str r0, [r3]
	str r0, [r6]
	movs r2, #0x80
	lsls r2, r2, #9
	mov r3, sb          @ r3 = sb = resA
	ands r3, r2
	cmp r3, #0
	beq _0803AB8A       @ if(resA & 0x10000)
	ldr r0, [sp, #0xc]
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #1
	mov r1, sl
	str r0, [r1]
	ldr r0, [r7, #4]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x25
	ands r0, r1
	str r0, [r7, #4]
	ldr r2, [sp, #8]
	str r2, [r7, #0x6c]
	b _0803AD22_return
_0803AB8A:
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0803AC24
	ldr r0, [sp, #0x10] @ r0 = sp10 = resB
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #1
	str r0, [r6]
	ldr r2, [r7, #4]
	movs r5, #0x20
	orrs r2, r5
	subs r0, #6
	ands r2, r0
	str r2, [r7, #4]
	ldr r1, [sp, #8]
	str r1, [r7, #0x6c]
	movs r4, #0x80
	lsls r4, r4, #0xc
	mov r0, sb          @ r0 = sb = resA
	ands r4, r0
	cmp r4, #0
	beq _0803ABE2
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803ABD8
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r7, #4]
_0803ABD8:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r2, [sp, #0xc]
	ands r0, r2
	b _0803AD16
_0803ABE2:
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _0803ABF0
	b _0803AD22_return
_0803ABF0:
	ldrh r1, [r7, #0x1e]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0803AC08
	ldr r0, [r7, #0x10]
	ldr r1, _0803AC20 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r0, #0x40
	orrs r2, r0
	str r2, [r7, #4]
_0803AC08:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r2, [sp, #0xc]
	ands r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	strh r4, [r7, #0x1c]
	b _0803AD22_return
	.align 2, 0
_0803AC20: .4byte 0xFFFFFF00
_0803AC24:
	movs r4, #0x80
	lsls r4, r4, #0xc
	mov r0, sb          @ r0 = sb = resA
	ands r0, r4
	cmp r0, #0
	beq _0803AC62
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803AC58
	movs r1, #0x9e
	lsls r1, r1, #1
	add r1, r8
	ldr r0, [r7, #0x6c]
	cmp r0, r1
	bne _0803AC58
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #4]
_0803AC58:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r1, [sp, #0xc]
	ands r0, r1
	b _0803AC9E
_0803AC62:
	movs r0, #0x80
	lsls r0, r0, #0xb
	adds r2, r0, #0
	mov r3, sb          @ r3 = sb = resA
	ands r2, r3
	cmp r2, #0
	beq _0803ACB4
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803AC96
	movs r1, #0xda
	lsls r1, r1, #1
	add r1, r8
	ldr r0, [r7, #0x6c]
	cmp r0, r1
	bne _0803AC96
	ldr r0, [r7, #0x10]
	ldr r1, _0803ACB0 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #4]
_0803AC96:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r2, [sp, #0xc]
	ands r0, r2
_0803AC9E:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	movs r0, #0
	strh r0, [r7, #0x1c]
	b _0803AD22_return
	.align 2, 0
_0803ACB0: .4byte 0xFFFFFF00
_0803ACB4:
	adds r3, r1, #0
	ands r3, r4
	cmp r3, #0
	beq _0803ACEE
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803ACD8
	ldr r0, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #4]
_0803ACD8:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r1, [sp, #0x10]
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	strh r2, [r7, #0x1c]
	b _0803AD22_return
_0803ACEE:
	ands r1, r0
	cmp r1, #0
	beq _0803AD22_return
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803AD0E
	ldr r0, [r7, #0x10]
	ldr r2, _0803AD34 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #4]
_0803AD0E:
	movs r0, #0xff
	lsls r0, r0, #8
	ldr r1, [sp, #0x10]
	ands r0, r1
_0803AD16:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
	strh r3, [r7, #0x1c]
_0803AD22_return:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803AD34: .4byte 0xFFFFFF00

.syntax divided
