
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808E098 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0808E09C @ =gStageData
	ldrb r6, [r0, #6]
	ldr r0, _0808E0A0 @ =gUnknown_03001060
	ldrb r7, [r0, #7]
	cmp r6, #0
	bne _0808E0A8
	ldr r1, _0808E0A4 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80259F8
	b _0808E0B6
	.align 2, 0
_0808E098: .4byte gCurTask
_0808E09C: .4byte gStageData
_0808E0A0: .4byte gUnknown_03001060
_0808E0A4: .4byte gUnknown_080D8F18
_0808E0A8:
	ldr r1, _0808E0C8 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024F84
_0808E0B6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808E0CC
	bl sub_802613C
	b _0808E2DC
	.align 2, 0
_0808E0C8: .4byte gUnknown_080D8F18
_0808E0CC:
	movs r4, #0
	movs r0, #0xe
	adds r0, r0, r5
	mov ip, r0
_0808E0D4:
	lsls r1, r4, #0x10
	asrs r2, r1, #0x10
	movs r0, #4
	lsls r0, r2
	ands r0, r7
	adds r3, r1, #0
	cmp r0, #0
	beq _0808E0F4
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E0F0 @ =gMultiSioRecv+2*0x18
	b _0808E0FC
	.align 2, 0
_0808E0F0: .4byte gMultiSioRecv+2*0x18
_0808E0F4:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E1A0 @ =gMultiSioRecv
_0808E0FC:
	adds r2, r0, r1
	asrs r0, r3, #0x10
	adds r1, r0, #2
	add r1, ip
	ldrb r2, [r2, #4]
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0808E0D4
	movs r1, #0x14
	ldrsb r1, [r5, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0808E122
	b _0808E2DC
_0808E122:
	ldrb r0, [r5, #0x16]
	cmp r0, #0
	bne _0808E12A
	b _0808E2DC
_0808E12A:
	ldr r0, _0808E1A4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808E200
	movs r4, #0
	ldr r1, _0808E1A8 @ =gUnknown_03001060
	mov ip, r1
	ldr r2, _0808E1AC @ =gUnknown_080D8F18
	mov r8, r2
	movs r3, #0x13
	ldrsb r3, [r5, r3]
	mov r7, ip
	adds r7, #0x4c
	adds r0, r3, r2
	ldrb r2, [r0]
_0808E14C:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, r2
	bne _0808E15A
	b _0808E2DC
_0808E15A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E14C
	lsls r1, r6, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #1
	bhi _0808E176
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r1, r3
	lsrs r6, r0, #0x10
_0808E176:
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	mov r1, ip
	adds r1, #0x4c
	adds r1, r2, r1
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0808E1B8
	movs r0, #0x15
	strb r0, [r5, #0x17]
	ldr r0, _0808E1B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E1B4 @ =Task_EC_808E430
	b _0808E1C2
	.align 2, 0
_0808E1A0: .4byte gMultiSioRecv
_0808E1A4: .4byte gPressedKeys
_0808E1A8: .4byte gUnknown_03001060
_0808E1AC: .4byte gUnknown_080D8F18
_0808E1B0: .4byte gCurTask
_0808E1B4: .4byte Task_EC_808E430
_0808E1B8:
	movs r0, #0x15
	strb r0, [r5, #0x17]
	ldr r0, _0808E1F8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E1FC @ =Task_EC_808E2E8
_0808E1C2:
	str r0, [r1, #8]
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	cmp r2, #1
	bgt _0808E1E0
	mov r0, ip
	ldrb r1, [r0, #7]
	movs r0, #4
	lsls r0, r2
	ands r1, r0
	cmp r1, #0
	bne _0808E1E0
	adds r0, r2, #2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0808E1E0:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r0, ip
	adds r0, #0x4c
	adds r1, r1, r0
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
	b _0808E2DC
	.align 2, 0
_0808E1F8: .4byte gCurTask
_0808E1FC: .4byte Task_EC_808E2E8
_0808E200:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0808E26C
	movs r0, #0x67      @ SE_CHARSELECT_SLIDE
	bl m4aSongNumStart
	ldr r1, _0808E224 @ =gUnknown_030010AC
	mov ip, r1
	ldr r7, _0808E228 @ =gUnknown_080D8F18
_0808E214:
	movs r6, #0
	ldrb r1, [r5, #0x13]
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0808E22C
	subs r0, r1, #1
	b _0808E22E
	.align 2, 0
_0808E224: .4byte gUnknown_030010AC
_0808E228: .4byte gUnknown_080D8F18
_0808E22C:
	movs r0, #4
_0808E22E:
	strb r0, [r5, #0x13]
	movs r4, #0
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r2, r0, r7
	mov r3, ip
	ldrb r1, [r3]
	adds r3, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0808E248
	movs r6, #1
	b _0808E214
_0808E248:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0808E266
	add r0, ip
	adds r1, r3, r7
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0808E248
	movs r6, #1
_0808E266:
	cmp r6, #0
	bne _0808E214
	b _0808E2D8
_0808E26C:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808E2D8
	movs r0, #0x67
	bl m4aSongNumStart
	ldr r2, _0808E294 @ =gUnknown_030010AC
	mov ip, r2
	ldr r7, _0808E298 @ =gUnknown_080D8F18
_0808E280:
	movs r6, #0
	ldrb r1, [r5, #0x13]
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	cmp r0, #3
	bgt _0808E29C
	adds r0, r1, #1
	strb r0, [r5, #0x13]
	b _0808E29E
	.align 2, 0
_0808E294: .4byte gUnknown_030010AC
_0808E298: .4byte gUnknown_080D8F18
_0808E29C:
	strb r6, [r5, #0x13]
_0808E29E:
	movs r4, #0
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r2, r0, r7
	mov r3, ip
	ldrb r1, [r3]
	adds r3, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0808E2B6
	movs r6, #1
	b _0808E280
_0808E2B6:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0808E2D4
	add r0, ip
	adds r1, r3, r7
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0808E2B6
	movs r6, #1
_0808E2D4:
	cmp r6, #0
	bne _0808E280
_0808E2D8:
	ldrb r0, [r5, #0x13]
	strb r0, [r5, #0x12]
_0808E2DC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
