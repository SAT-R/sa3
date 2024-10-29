
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #4]        @ sp04 = cap
	adds r7, r1, #0         @ r7 = p
	str r2, [sp, #8]        @ sp08 = arr
	str r3, [sp, #0xc]      @ sp0C = param3
	movs r0, #0
	str r0, [sp, #0x10]     @ sp10 = i
_0803AD50:
	ldr r1, [sp, #0x10]
	lsls r1, r1, #4
	mov sb, r1              @ sb = r1 = i * 16
	ldr r2, [sp, #0x10]     @ r2 = i
	subs r0, r1, r2
	lsls r0, r0, #2         @ r0 = i * 60
	ldr r3, [sp, #4]        @ r3 = sp04 = cap
	adds r0, r0, r3
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r0         @ r1 = cap + 0x100 + i * 0x3C
	mov sl, r1              @ sl = s = &cap->unkEC[i].s
	lsls r4, r2, #2         @ r4 = i * 4
	ldr r2, _0803ADD4 @ =sSwitchesPositions
	adds r0, r4, r2
	ldrh r0, [r0]
	mov r8, r0              @ r8 = sSwitchesPositions[i][0];
	ldr r3, _0803ADD8 @ =sSwitchesPositions+0x2
	adds r0, r4, r3
	ldrh r5, [r0]           @ r5 = sSwitchesPositions[i][1];
	movs r6, #0             @ r6 = 0
	str r7, [sp]
	mov r0, sl
	mov r1, r8
	adds r2, r5, #0
	movs r3, #0
	bl sub_8020E3C
	str r0, [sp, #0x14]     @ sp14 = sp14 = sub_8020E3C(s, r8, r5, 0, p);
	str r6, [sp]
	mov r0, sl
	mov r1, r8
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_8020950
	adds r3, r0, #0         @ r3 = res
	mov r8, sb              @ r8 = sb = i * 16
	ldr r0, [sp, #0x10]     @ r0 = sp10 = i
	cmp r0, #0
	bne _0803AE28
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _0803AE4E
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _0803ADDC
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803ADDC
	ldr r1, [r7, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803ADDC
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	b _0803ADFE
	.align 2, 0
_0803ADD4: .4byte sSwitchesPositions
_0803ADD8: .4byte sSwitchesPositions+0x2
_0803ADDC:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _0803AE08
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803AE08
	ldr r1, [r7, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803AE08
	ldr r0, [r7, #0x10]
	ldr r2, _0803AE24 @ =0xFFFFFF00
_0803ADFE:
	adds r0, r0, r2
	str r0, [r7, #0x10]
	movs r0, #0x40
	orrs r1, r0
	str r1, [r7, #4]
_0803AE08:
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	adds r1, r3, #0
	ands r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r2, #0
	strh r2, [r7, #0x1c]
	strh r2, [r7, #0x18]
	b _0803AE4E
	.align 2, 0
_0803AE24: .4byte 0xFFFFFF00
_0803AE28:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0803AE4E
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	ldr r1, [r7, #4]
	movs r0, #0x20
	orrs r1, r0
	subs r0, #0x25
	ands r1, r0
	str r1, [r7, #4]
	mov r3, sl
	str r3, [r7, #0x6c]
	b _0803B04A_continue
_0803AE4E:
	ldr r0, [sp, #0x14]     @ r0 = sp14
	cmp r0, #0
	bne _0803AE56
	b _0803AFBC
_0803AE56:
	mov r1, r8
	ldr r2, [sp, #0x10]     @ r2 = sp10 = i
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r1, [sp, #4]        @ sp04 = cap
	adds r1, #0xec
	adds r0, r1, r0
	ldr r0, [r0]
	mov sb, r1              @ sb = r1 = &cap->unkEC[0]
	cmp r0, #2
	bne _0803AE6E
	b _0803AFBC
_0803AE6E:
	ldr r1, [sp, #8]		@ r1 = sp08 = arr
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803AE7A
	b _0803AFBC
_0803AE7A:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _0803AE82
	b _0803AFBC
_0803AE82:
	movs r5, #0
	movs r6, #0
	movs r0, #0x30
	ldrsh r1, [r7, r0]
	ldrh r2, [r7, #0x30]
	cmp r1, #0xaa
	beq _0803AEA0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0803AEA0
	cmp r1, #0xbb
	beq _0803AEA0
	cmp r1, #0xe5
	bne _0803AEA2
_0803AEA0:
	movs r5, #1
_0803AEA2:
	cmp r2, #0xff
	bne _0803AEA8
	movs r6, #1
_0803AEA8:
	ldr r1, [sp, #0x10]     @ r1 = sp10 = i
	cmp r1, #0
	bne _0803AED0
	cmp r5, #0
	bne _0803AEDC
	cmp r6, #0
	bne _0803AEDC
	movs r2, #0x1a
	ldrsh r0, [r7, r2]
	movs r2, #0
	cmp r0, #0
	blt _0803AED8
	ldr r1, [r7, #0x14]
	ldr r0, _0803AECC @ =0x000047FF
	cmp r1, r0
	bgt _0803AED8
	b _0803AEDC
	.align 2, 0
_0803AECC: .4byte 0x000047FF
_0803AED0:
	movs r2, #1
	cmp r5, #0
	beq _0803AED8
	movs r2, #0
_0803AED8:
	cmp r2, #0
	beq _0803AFBC
_0803AEDC:
	ldr r3, [sp, #4]		@ r3 = sp04 = cap
	ldrb r1, [r3, #0xe]
	ldr r0, [sp, #0x10]     @ r0 = sp10 = i
	cmp r1, r0
	bne _0803AF3A
	movs r0, #0x13
	strb r0, [r3, #0xf]
	movs r0, #0xff
	orrs r0, r1
	strb r0, [r3, #0xe]
	mov r1, r8
	ldr r2, [sp, #0x10]     @ r2 = sp10 = i
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r0, r3, r0
	adds r0, #0xf0
	ldrb r0, [r0]
	movs r2, #3
	cmp r0, #0x3c
	bls _0803AF0C
	movs r2, #1
	cmp r0, #0x78
	bhi _0803AF0C
	movs r2, #2
_0803AF0C:
	ldr r0, [r7, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	bne _0803AF20
	ldr r3, [sp, #4]
	ldrb r0, [r3, #0x10]
	adds r0, r2, r0
	strb r0, [r3, #0x10]
_0803AF20:
	ldr r1, _0803AF90 @ =sSwitchesPositions
	adds r0, r4, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r3, _0803AF94 @ =sSwitchesPositions+0x2
	adds r1, r4, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl CreatePointsPopUp
_0803AF3A:
	ldr r0, [sp, #8]		@ r0 = sp08 = arr
	adds r1, r4, r0
	movs r0, #1
	str r0, [r1]
	movs r0, #0xff
	mov r1, sl				@ r1 = sl = s
	strb r0, [r1, #0x1b]
	ldrb r0, [r1, #0x1a]
	adds r0, #1
	movs r4, #0             @ r4 = 0
	strb r0, [r1, #0x1a]
	mov r2, r8				@ r2 = r8 = i * 16
	ldr r3, [sp, #0x10]     @ r3 = sp10 = i
	subs r1, r2, r3
	lsls r1, r1, #2         @ r1 = i * 60
	ldr r2, [sp, #4]        @ r2 = sp04 = cap
	adds r0, r2, r1
	adds r0, #0xf0          @ r0 = &cap->unkEC[i].unk4
	strb r4, [r0]           @ cap->unkEC[i].unk4 = 0
	add r1, sb              @ r1 = &cap->unkEC[i]
	movs r0, #2
	str r0, [r1]
	ldr r0, _0803AF98 @ =0x0000020B
	bl sub_8003DF0
	ldr r1, [r7, #4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r7, #4]
	ldr r3, [sp, #0x10]     @ r3 = sp10 = i
	cmp r3, #0
	bne _0803AFA0
	adds r0, r7, #0
	ldr r1, _0803AF9C @ =Player_80072D8
	bl SetPlayerCallback
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r7, #0x1a]
	b _0803B04A_continue
	.align 2, 0
_0803AF90: .4byte sSwitchesPositions
_0803AF94: .4byte sSwitchesPositions+0x2
_0803AF98: .4byte 0x0000020B
_0803AF9C: .4byte Player_80072D8
_0803AFA0:
	ldr r0, [sp, #0x10]     @ r0 = sp10 = i
	cmp r0, #2
	bhi _0803AFB4
	strh r4, [r7, #0x1c]    @ r4 = 0
	ldr r0, _0803AFB0 @ =0x0000FF80
	strh r0, [r7, #0x18]
	b _0803B04A_continue
	.align 2, 0
_0803AFB0: .4byte 0x0000FF80
_0803AFB4:
	strh r4, [r7, #0x1c]    @ r4 = 0
	movs r0, #0x80
	strh r0, [r7, #0x18]
	b _0803B04A_continue
_0803AFBC:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0803AFE2
	lsls r1, r3, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x14]
	adds r0, r0, r1
	str r0, [r7, #0x14]
	ldr r1, [r7, #4]
	movs r0, #0x20
	orrs r1, r0
	subs r0, #0x25
	ands r1, r0
	str r1, [r7, #4]
	mov r1, sl
	str r1, [r7, #0x6c]
	b _0803B04A_continue
_0803AFE2:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r3
	cmp r0, #0
	beq _0803B008
	ldrh r1, [r7, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803B034
	ldr r1, [r7, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803B034
	ldr r0, [r7, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	b _0803B02A
_0803B008:
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r3
	cmp r0, #0
	beq _0803B04A_continue
	ldrh r1, [r7, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803B034
	ldr r1, [r7, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803B034
	ldr r0, [r7, #0x10]
	ldr r2, _0803B06C @ =0xFFFFFF00
_0803B02A:
	adds r0, r0, r2
	str r0, [r7, #0x10]
	movs r0, #0x40
	orrs r1, r0
	str r1, [r7, #4]
_0803B034:
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	movs r2, #0
	strh r2, [r7, #0x1c]
_0803B04A_continue:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]     @ i++
	cmp r0, #4
	bhi _0803B05A
	b _0803AD50
_0803B05A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B06C: .4byte 0xFFFFFF00

.syntax divided
