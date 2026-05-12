
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	lsls r1, r1, #0x10
	ldr r0, _0802AEC0 @ =gTask_03001CFC
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r2
	mov sb, r0
	ldr r0, _0802AEC4 @ =0x03000028
	adds r4, r2, r0
	movs r6, #0
	movs r7, #0
	lsrs r5, r1, #0x10
	cmp r1, #0
	bne _0802AE90
	b _0802AFE0
_0802AE90:
	ldr r0, _0802AEC8 @ =gStageData
	ldrb r1, [r0, #3]
	adds r3, r0, #0
	cmp r1, #6
	bne _0802AED0
	ldrb r2, [r3, #6]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r1, _0802AECC @ =gPlayers
	adds r0, r0, r1
	cmp r0, r8
	beq _0802AED4
	mov r0, r8
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r2, r0
	bne _0802AEDA
	b _0802AED4
	.align 2, 0
_0802AEC0: .4byte gTask_03001CFC
_0802AEC4: .4byte 0x03000028
_0802AEC8: .4byte gStageData
_0802AECC: .4byte gPlayers
_0802AED0:
	cmp r1, #5
	bne _0802AEDA
_0802AED4:
	adds r0, r3, #0
	adds r0, #0xac
	strh r6, [r0]
_0802AEDA:
	ldrb r0, [r3, #3]
	cmp r0, #5
	bls _0802AEEE
	adds r1, r5, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _0802AEFA
	movs r1, #0x10
	b _0802AEFA
_0802AEEE:
	adds r1, r5, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _0802AEFA
	movs r1, #0x20
_0802AEFA:
	adds r5, r1, #0
	movs r0, #0x76  @ SE_LOST_RINGS
	bl m4aSongNumStart
	movs r3, #0x91
	lsls r3, r3, #3
	mov r1, r8
	ldrh r0, [r1, #6]
	movs r1, #1
	ands r0, r1
	movs r1, #0xac
	lsls r1, r1, #2
	add r1, sb
	strb r0, [r1]
	movs r2, #0
	mov sb, r2
	mov ip, r2
	ldr r0, _0802AF50 @ =gPseudoRandom
	mov sl, r0
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
_0802AF24:
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _0802AFD4
	movs r0, #0xb4
	strh r0, [r4, #0xc]
	mov r0, r8
	adds r0, #0x27
	ldrb r0, [r0]
	strh r0, [r4, #0xe]
	mov r1, r8
	ldr r0, [r1, #0x10]
	str r0, [r4]
	ldr r0, [r1, #0x14]
	str r0, [r4, #4]
	cmp r3, #0
	blt _0802AF88
	asrs r2, r3, #8
	cmp r2, #5
	ble _0802AF54
	rsbs r0, r2, #0
	adds r0, #9
	b _0802AF56
	.align 2, 0
_0802AF50: .4byte gPseudoRandom
_0802AF54:
	adds r0, r2, #0
_0802AF56:
	adds r2, r0, #0
	movs r1, #0xff
	ands r1, r3
	lsls r0, r1, #3
	ldr r6, _0802AFF0 @ =gSineTable
	adds r0, r0, r6
	movs r7, #0
	ldrsh r6, [r0, r7]
	asrs r6, r2
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r7, _0802AFF0 @ =gSineTable
	adds r1, r1, r7
	movs r0, #0
	ldrsh r7, [r1, r0]
	asrs r7, r2
	asrs r0, r6, #2
	subs r6, r6, r0
	asrs r0, r7, #2
	subs r7, r7, r0
	adds r3, #0x10
	movs r0, #0x80
	orrs r3, r0
_0802AF88:
	movs r1, #0
	strh r6, [r4, #8]
	strh r7, [r4, #0xa]
	mov r2, r8
	ldr r0, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #9
	ands r0, r2
	cmp r0, #0
	beq _0802AFA0
	rsbs r0, r7, #0
	strh r0, [r4, #0xa]
_0802AFA0:
	rsbs r3, r3, #0
	rsbs r6, r6, #0
	strh r1, [r4, #0x10]
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0802AFF4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0802AFF8 @ =0x3C6EF35F
	adds r0, r0, r1
	mov r1, sl
	str r0, [r1]
	ands r0, r2
	cmp r0, #0
	bne _0802AFC0
	movs r0, #4
	strh r0, [r4, #0x10]
_0802AFC0:
	movs r0, #3
	mov r1, ip
	ands r1, r0
	ldrh r0, [r4, #0x10]
	orrs r1, r0
	strh r1, [r4, #0x10]
	movs r2, #1
	add ip, r2
	cmp ip, r5
	bge _0802AFE0
_0802AFD4:
	movs r0, #1
	add sb, r0
	adds r4, #0x14
	mov r1, sb
	cmp r1, #0x1f
	ble _0802AF24
_0802AFE0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802AFF0: .4byte gSineTable
_0802AFF4: .4byte 0x00196225
_0802AFF8: .4byte 0x3C6EF35F

.syntax divided
