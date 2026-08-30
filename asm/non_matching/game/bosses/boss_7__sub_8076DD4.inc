
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov ip, r0
	movs r2, #0
	ldr r0, [r0, #0x58]
	cmp r0, #0
	beq _08076DF0
	movs r0, #0
	str r0, [sp]
	b _08076E0A
_08076DF0:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x14
	bhi _08076E0A
	lsls r0, r2, #2
	mov r1, ip
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08076DF0
	str r2, [sp]
_08076E0A:
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x12
	bls _08076E2E
	movs r3, #0
	mov r1, ip
	adds r1, #4
	movs r2, #0
_08076E1C:
	lsls r0, r3, #2
	adds r0, r1, r0
	str r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x14
	bls _08076E1C
	b _0807715C
_08076E2E:
	mov r2, ip
	adds r2, #0xbc
	ldr r1, [sp]
	lsls r3, r1, #2
	mov r1, ip
	adds r1, #4
	adds r0, r1, r3
	ldr r0, [r0]
	str r0, [r2]
	mov r0, ip
	adds r0, #0xb5
	ldrb r4, [r0]
	movs r5, #0x58
	add r5, ip
	mov sb, r5
	str r1, [sp, #0x14]
	str r2, [sp, #0xc]
	mov r8, r3
	adds r6, r0, #0
	movs r7, #0xc0
	add r7, ip
	mov sl, r7
	adds r0, #2
	str r0, [sp, #4]
	adds r1, #0xb4
	str r1, [sp, #8]
	ldr r2, [sp]
	subs r2, #1
	str r2, [sp, #0x10]
	ldr r3, [sp]
	adds r3, #1
	str r3, [sp, #0x18]
	cmp r4, #0
	beq _08076EBC
	movs r3, #1
	movs r5, #0
	mov ip, r6
	ldr r7, [sp, #0x14]
	mov r4, sb
_08076E7C:
	mov r0, sl
	ldr r2, [r0]
	cmp r2, #0
	bge _08076E94
	mov r1, ip
	ldrb r0, [r1]
	lsls r1, r0, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r5, r0
	bge _08076EB8
	b _08076EA2
_08076E94:
	mov r1, ip
	ldrb r0, [r1]
	lsls r1, r0, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r5, r0
	ble _08076EB8
_08076EA2:
	adds r1, r4, r1
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	ldrb r0, [r6]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0]
	adds r5, r5, r0
	cmp r3, #0
	bne _08076E7C
_08076EB8:
	movs r0, #0
	strb r0, [r6]
_08076EBC:
	mov r2, sb
	add r2, r8
	ldr r1, [r2]
	mov r3, sl
	ldr r0, [r3]
	adds r1, r1, r0
	str r1, [r2]
	ldr r2, [sp, #0x14]
	add r2, r8
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #4]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08076F0C
	ldr r0, [r3]
	cmp r0, #0
	bge _08076EF8
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	cmp r0, #0
	bge _08076F0C
	movs r0, #0
	strb r0, [r1]
	b _08076F0C
_08076EF8:
	ldr r5, [sp, #4]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	cmp r0, #0
	ble _08076F0C
	movs r0, #0
	strb r0, [r5]
_08076F0C:
	ldr r4, [sp, #8]
	ldrb r1, [r4]
	cmp r1, #0
	beq _08076F72
	ldr r7, [sp, #0xc]
	ldr r0, [r7]
	cmp r0, #0
	bge _08076F44
	ldr r0, [sp, #0x14]
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	blt _08076F9C
	mov r2, sb
	add r2, r8
	ldr r0, [r2]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r2]
	mov r1, sl
	ldr r0, [r1]
	rsbs r0, r0, #0
	str r0, [r1]
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _08076F9C
_08076F44:
	cmp r0, #0
	beq _08076F9C
	ldr r0, [sp, #0x14]
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bge _08076F9C
	mov r2, sb
	add r2, r8
	ldr r0, [r2]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r2]
	mov r2, sl
	ldr r0, [r2]
	rsbs r0, r0, #0
	str r0, [r2]
	ldr r3, [sp, #8]
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	b _08076F9C
_08076F72:
	ldr r5, [sp, #0xc]
	ldr r0, [r5]
	cmp r0, #0
	bge _08076F86
	ldr r2, [sp, #0x14]
	add r2, r8
	ldr r0, [r2]
	cmp r0, #0
	blt _08076F9C
	b _08076F94
_08076F86:
	cmp r0, #0
	beq _08076F9C
	ldr r2, [sp, #0x14]
	add r2, r8
	ldr r0, [r2]
	cmp r0, #0
	bge _08076F9C
_08076F94:
	mov r0, sb
	add r0, r8
	str r1, [r0]
	str r1, [r2]
_08076F9C:
	ldr r4, [sp, #0x14]
	add r4, r8
	ldr r7, [sp, #0xc]
	ldr r0, [r7]
	ldr r1, [r4]
	subs r0, r0, r1
	str r0, [r7]
	mov r1, sl
	ldr r0, [r1]
	cmp r0, #0
	bge _08077088
	ldr r3, [sp]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r3, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r5, r0, #1
	adds r6, r5, #0
	cmp r5, #0
	bge _08076FD2
	rsbs r6, r5, #0
_08076FD2:
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	adds r4, r3, #0
	cmp r2, #0
	beq _0807701A
	ldr r7, _08077080 @ =gSineTable
	mov r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
_08076FE8:
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	cmp r0, #0
	bge _08076FFE
	ldr r1, _08077084 @ =0x00003FFF
	adds r0, r0, r1
_08076FFE:
	asrs r1, r0, #0xe
	lsls r0, r2, #2
	ldr r7, [sp, #0x14]
	adds r0, r7, r0
	adds r1, r5, r1
	str r1, [r0]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	bne _08076FE8
_0807701A:
	movs r0, #0x14
	ldr r1, [sp]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r3, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	adds r4, r3, #0
	cmp r2, #0x13
	bls _08077040
	b _0807715C
_08077040:
	ldr r7, _08077080 @ =gSineTable
	mov r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
_0807704A:
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	cmp r0, #0
	bge _08077060
	ldr r1, _08077084 @ =0x00003FFF
	adds r0, r0, r1
_08077060:
	asrs r1, r0, #0xe
	lsls r0, r2, #2
	ldr r7, [sp, #0x14]
	adds r0, r7, r0
	adds r1, r5, r1
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0x13
	bls _0807704A
	b _0807715C
	.align 2, 0
_08077080: .4byte gSineTable
_08077084: .4byte 0x00003FFF
_08077088:
	ldr r3, [sp]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r7, #0
	adds r1, r3, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r5, r0, #1
	adds r6, r5, #0
	cmp r5, #0
	bge _080770AA
	rsbs r6, r5, #0
_080770AA:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #0x18
	lsrs r2, r0, #0x18
	subs r0, r7, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	beq _080770F6
	ldr r7, _0807716C @ =gSineTable
	mov r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
_080770C4:
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	cmp r0, #0
	bge _080770DA
	ldr r1, _08077170 @ =0x00003FFF
	adds r0, r0, r1
_080770DA:
	asrs r1, r0, #0xe
	lsls r0, r2, #2
	ldr r7, [sp, #0x14]
	adds r0, r7, r0
	adds r1, r5, r1
	str r1, [r0]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	subs r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0
	bne _080770C4
_080770F6:
	movs r0, #0x14
	ldr r1, [sp]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	adds r1, r3, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	subs r4, r4, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r2, #0x13
	bhi _0807715C
	ldr r7, _0807716C @ =gSineTable
	mov r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
_0807712A:
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #1
	add r0, r8
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r6, r0
	cmp r0, #0
	bge _08077140
	ldr r1, _08077170 @ =0x00003FFF
	adds r0, r0, r1
_08077140:
	asrs r1, r0, #0xe
	lsls r0, r2, #2
	ldr r7, [sp, #0x14]
	adds r0, r7, r0
	adds r1, r5, r1
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	subs r0, r4, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0x13
	bls _0807712A
_0807715C:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807716C: .4byte gSineTable
_08077170: .4byte 0x00003FFF

.syntax divided
