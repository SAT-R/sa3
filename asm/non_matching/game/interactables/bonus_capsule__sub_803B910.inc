
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _0803B9CC @ =gUnknown_080CFA4E
	mov r0, sp
	movs r2, #2
	bl memcpy
	ldr r0, _0803B9D0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0     @ r5 = cap
	ldr r2, [r5]        @ r2 = me
	ldrb r0, [r5, #0xa]
	lsls r0, r0, #3
	ldrh r1, [r5, #4]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]    @ sp04 = worldX
	ldrb r0, [r2, #1]
	lsls r0, r0, #3
	ldrh r1, [r5, #6]
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]    @ sp08 = worldY
	movs r6, #0
_0803B956:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r5, r0
	bl UpdateSpriteAnimation
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #2
	bls _0803B956
	movs r6, #0         @ r6 = i
	movs r2, #0x68
	adds r2, r2, r5
	mov sl, r2          @ sl = &cap->unk68[0][0]
	movs r7, #0x6c
	adds r7, r7, r5
	mov sb, r7
	movs r0, #0x48
	adds r0, r0, r5
	mov r8, r0
	ldr r7, _0803B9D4 @ =gCamera
_0803B988:
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r4, r5, r1     @ r4 = s
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _0803B99C
	movs r2, #0xbb
	lsls r2, r2, #3
	adds r4, r5, r2
_0803B99C:
	lsls r2, r6, #3
	mov r1, sl
	adds r0, r1, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	ldr r1, [r7]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	add r2, sb
	ldr r0, [r2]
	asrs r0, r0, #8
	ldr r1, [r7, #4]
	subs r0, r0, r1
	strh r0, [r4, #0x12]
	lsls r0, r6, #2         @ r0 = i * 4
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _0803B9DC
	ldr r0, [r4, #8]
	ldr r1, _0803B9D8 @ =0xFFFFFBFF
	ands r0, r1
	b _0803B9E4
	.align 2, 0
_0803B9CC: .4byte gUnknown_080CFA4E
_0803B9D0: .4byte gCurTask
_0803B9D4: .4byte gCamera
_0803B9D8: .4byte 0xFFFFFBFF
_0803B9DC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0803B9E4:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0803B988
	ldrh r1, [r5, #0x2c]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0x3b
	bhi _0803BA12
	lsls r0, r1, #0x11
	lsrs r0, r0, #0x10
	mov ip, r0
	lsrs r7, r2, #0x12
	ldrh r1, [r5, #0x2c]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsrs r3, r0, #3
	b _0803BA1C
_0803BA12:
	movs r7, #0x78
	mov ip, r7
	movs r7, #0xf
	movs r3, #0x28
	ldrh r1, [r5, #0x2c]
_0803BA1C:
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r4, r5, r0     @ r4 = s = &cap->spr5B0[2];
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]  @ sp0C = cap->unk2C * 5
	movs r0, #0xd
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10] @ sp10 = cap->unk2C * 13
	ldr r2, _0803BB08 @ =gCamera
	ldr r1, [r2]
	ldr r5, [sp, #4]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]    @ sp04 = worldX - gCamera.x
	ldr r0, [r2, #4]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]    @ sp08 = worldY - gCamera.y
	movs r6, #0         @ r6 = i = 0
	mov r5, ip          @ r5 = ip
	lsls r5, r5, #0x10
	mov sl, r5
	lsls r7, r7, #0x10
	mov sb, r7
	ldr r7, _0803BB0C @ =gSineTable
	mov r8, r7
	movs r5, #1
_0803BA70:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	ldr r1, [sp, #0xc]  @ r1 = sp0C = cap->unk2C * 5
	adds r3, r1, r0
	adds r0, r3, #0
	ldr r2, _0803BB10 @ =0x000003FF
	ands r0, r2
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16  @ r0 = val
	mov r7, sl
	asrs r1, r7, #0x10
	muls r1, r0, r1
	asrs r1, r1, #8
	adds r2, r6, #0
	ands r2, r5
	mov r7, sp
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0, r1
	ldr r7, [sp, #4]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	ldr r7, _0803BB10 @ =0x000003FF
	ands r0, r7
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	mov r7, sb
	asrs r1, r7, #0x10
	muls r1, r0, r1
	asrs r1, r1, #8
	lsrs r0, r6, #1
	ands r0, r5
	add r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0, r1
	ldr r7, [sp, #8]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	cmp r2, #0
	beq _0803BB18
	ldr r1, _0803BB14 @ =0xFFFFFF00
	adds r0, r3, r1
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0803BB34
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0803BB3A
	.align 2, 0
_0803BB08: .4byte gCamera
_0803BB0C: .4byte gSineTable
_0803BB10: .4byte 0x000003FF
_0803BB14: .4byte 0xFFFFFF00
_0803BB18:
	ldr r2, _0803BB30 @ =0xFFFFFF00
	adds r0, r3, r2
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0803BB34
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0803BB3A
	.align 2, 0
_0803BB30: .4byte 0xFFFFFF00
_0803BB34:
	ldr r0, [r4, #8]
	ldr r1, _0803BB5C @ =0xFFFFFBFF
	ands r0, r1
_0803BB3A:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl DisplaySprite
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0803BA70
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BB5C: .4byte 0xFFFFFBFF

.syntax divided
