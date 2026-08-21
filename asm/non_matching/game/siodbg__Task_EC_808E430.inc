
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0808E460 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _0808E464 @ =gStageData
	ldrb r4, [r0, #6]
	ldr r0, _0808E468 @ =gUnknown_03001060
	ldrb r6, [r0, #7]
	cmp r4, #0
	bne _0808E470
	ldr r1, _0808E46C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024E1C
	b _0808E47E
	.align 2, 0
_0808E460: .4byte gCurTask
_0808E464: .4byte gStageData
_0808E468: .4byte gUnknown_03001060
_0808E46C: .4byte gUnknown_080D8F18
_0808E470:
	ldr r1, _0808E490 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80250EC
_0808E47E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0808E494
	bl sub_802613C
	b _0808E6A4
	.align 2, 0
_0808E490: .4byte gUnknown_080D8F18
_0808E494:
	cmp r0, #1
	beq _0808E49A
	b _0808E634
_0808E49A:
	movs r1, #0
	ldr r0, _0808E4DC @ =gUnknown_03001060
	mov ip, r0
	lsls r4, r4, #0x10
	adds r7, r5, #0
	adds r7, #0xe
	movs r0, #0x4c
	add r0, ip
	mov r8, r0
	adds r3, r7, #0
_0808E4AE:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	adds r2, r0, r1
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E4AE
	asrs r1, r4, #0x10
	cmp r1, #1
	bgt _0808E4E0
	movs r0, #4
	lsls r0, r1
	ands r6, r0
	cmp r6, #0
	bne _0808E4E0
	adds r0, r1, #2
	b _0808E4E2
	.align 2, 0
_0808E4DC: .4byte gUnknown_03001060
_0808E4E0:
	lsrs r0, r4, #0x10
_0808E4E2:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #2
	beq _0808E4F2
	asrs r0, r4, #0x10
	cmp r0, #2
	bne _0808E5D4
_0808E4F2:
	mov r0, ip
	adds r0, #0x4f
	ldrb r1, [r0]
	cmp r1, #0xff
	beq _0808E520
	mov r2, ip
	adds r2, #0x4e
	ldrb r0, [r2]
	cmp r0, r1
	bne _0808E520
	movs r0, #0x13
	strb r0, [r5, #0x17]
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _0808E518 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E51C @ =Task_EC_808E068
	str r0, [r1, #8]
	b _0808E6A4
	.align 2, 0
_0808E518: .4byte gCurTask
_0808E51C: .4byte Task_EC_808E068
_0808E520:
	movs r1, #0
	ldr r2, _0808E590 @ =gUnknown_030010AC
_0808E524:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #4
	bls _0808E532
	b _0808E6A4
_0808E532:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E524
	movs r1, #0x14
	ldrsb r1, [r5, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0808E59C
	lsrs r0, r4, #0x10
	cmp r0, #1
	bhi _0808E59C
	movs r1, #0
	ldr r5, _0808E590 @ =gUnknown_030010AC
	adds r3, r7, #0
_0808E556:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r5
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E556
	asrs r0, r4, #0x10
	add r0, ip
	adds r0, #0x4e
	ldrb r2, [r0]
	asrs r0, r6, #0x10
	cmp r0, #2
	beq _0808E5B8
	ldr r1, _0808E594 @ =gCharacterSelectedVoices
	ldr r0, _0808E598 @ =gUnknown_080D6EE0
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	b _0808E5B8
	.align 2, 0
_0808E590: .4byte gUnknown_030010AC
_0808E594: .4byte gCharacterSelectedVoices
_0808E598: .4byte gUnknown_080D6EE0
_0808E59C:
	asrs r0, r6, #0x10
	mov r1, ip
	adds r1, #0x4c
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, _0808E5C4 @ =gCharacterSelectedVoices
	ldr r1, _0808E5C8 @ =gUnknown_080D6EE0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl m4aSongNumStart
_0808E5B8:
	ldr r0, _0808E5CC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E5D0 @ =Task_EC_808EDA8
	str r0, [r1, #8]
	b _0808E6A4
	.align 2, 0
_0808E5C4: .4byte gCharacterSelectedVoices
_0808E5C8: .4byte gUnknown_080D6EE0
_0808E5CC: .4byte gCurTask
_0808E5D0: .4byte Task_EC_808EDA8
_0808E5D4:
	movs r1, #0
	ldr r2, _0808E620 @ =gUnknown_030010AC
_0808E5D8:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #4
	bhi _0808E6A4
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808E5D8
	asrs r0, r4, #0x10
	cmp r0, #3
	bne _0808E612
	asrs r0, r6, #0x10
	mov r1, ip
	adds r1, #0x4c
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, _0808E624 @ =gCharacterSelectedVoices
	ldr r1, _0808E628 @ =gUnknown_080D6EE0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl m4aSongNumStart
_0808E612:
	movs r0, #0
	strh r0, [r5, #0xc]
	ldr r0, _0808E62C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E630 @ =Task_EC_808E7B0
	str r0, [r1, #8]
	b _0808E6A4
	.align 2, 0
_0808E620: .4byte gUnknown_030010AC
_0808E624: .4byte gCharacterSelectedVoices
_0808E628: .4byte gUnknown_080D6EE0
_0808E62C: .4byte gCurTask
_0808E630: .4byte Task_EC_808E7B0
_0808E634:
	movs r1, #0
	lsls r4, r4, #0x10
	adds r7, r5, #0
	adds r7, #0xe
_0808E63C:
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r0, #4
	lsls r0, r2
	ands r0, r6
	adds r3, r1, #0
	cmp r0, #0
	beq _0808E65C
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E658 @ =gMultiSioRecv+2*0x18
	b _0808E664
	.align 2, 0
_0808E658: .4byte gMultiSioRecv+2*0x18
_0808E65C:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _0808E68C @ =gMultiSioRecv
_0808E664:
	adds r2, r0, r1
	asrs r0, r3, #0x10
	adds r1, r0, #2
	adds r1, r7, r1
	ldrb r2, [r2, #4]
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0808E63C
	asrs r0, r4, #0x10
	cmp r0, #0
	bne _0808E694
	ldr r0, _0808E690 @ =gUnknown_080D6EE0
	movs r1, #0x10
	ldrsb r1, [r5, r1]
	b _0808E69E
	.align 2, 0
_0808E68C: .4byte gMultiSioRecv
_0808E690: .4byte gUnknown_080D6EE0
_0808E694:
	cmp r0, #1
	bne _0808E6A4
	ldr r0, _0808E6B0 @ =gUnknown_080D6EE0
	movs r1, #0x11
	ldrsb r1, [r5, r1]
_0808E69E:
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #0x12]
_0808E6A4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E6B0: .4byte gUnknown_080D6EE0

.syntax divided
