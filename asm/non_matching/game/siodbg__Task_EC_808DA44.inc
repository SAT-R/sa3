
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0808DA74 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	adds r4, r7, #0
	ldr r0, _0808DA78 @ =gStageData
	ldrb r6, [r0, #6]
	cmp r6, #0
	bne _0808DA80
	ldr r1, _0808DA7C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024984
	b _0808DA8E
	.align 2, 0
_0808DA74: .4byte gCurTask
_0808DA78: .4byte gStageData
_0808DA7C: .4byte gUnknown_080D8F18
_0808DA80:
	ldr r1, _0808DAD4 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r7, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024C68
_0808DA8E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0
	ldr r1, _0808DAD8 @ =gMultiSioRecv
	mov r8, r1
	movs r1, #0xe
	adds r1, r1, r4
	mov sl, r1
	lsls r0, r0, #0x10
	mov ip, r0
	mov sb, r8
	mov r5, sl
_0808DAA6:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	mov r2, sb
	adds r3, r0, r2
	adds r2, r5, r1
	ldrb r0, [r3, #4]
	strb r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0808DAA6
	mov r0, ip
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _0808DADC
	bl sub_802613C
	b _0808DC20
	.align 2, 0
_0808DAD4: .4byte gUnknown_080D8F18
_0808DAD8: .4byte gMultiSioRecv
_0808DADC:
	cmp r2, #2
	beq _0808DAE2
	b _0808DBEC
_0808DAE2:
	movs r0, #0x3c
	strh r0, [r4, #0xc]
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #0
	bne _0808DB28
	ldr r0, _0808DB14 @ =gUnknown_03001060
	adds r0, #0x4c
	ldrb r0, [r0]
	ldr r2, _0808DB18 @ =gCharacterSelectedVoices
	ldr r1, _0808DB1C @ =gUnknown_080D6EE0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r0, _0808DB20 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DB24 @ =Task_EC_808DCFC
	str r0, [r1, #8]
	b _0808DC20
	.align 2, 0
_0808DB14: .4byte gUnknown_03001060
_0808DB18: .4byte gCharacterSelectedVoices
_0808DB1C: .4byte gUnknown_080D6EE0
_0808DB20: .4byte gCurTask
_0808DB24: .4byte Task_EC_808DCFC
_0808DB28:
	cmp r1, #1
	bne _0808DB88
	ldr r0, _0808DB50 @ =gUnknown_03001060
	adds r5, r0, #0
	adds r5, #0x4c
	adds r3, r0, #0
	adds r3, #0x4d
	ldrb r0, [r3]
	mov r1, r8
	ldrb r1, [r1, #4]
	cmp r0, r1
	bne _0808DB5C
	strb r2, [r4, #0x17]
	movs r0, #0xff
	strb r0, [r3]
	ldr r0, _0808DB54 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DB58 @ =Task_EC_808D7F0
	str r0, [r1, #8]
	b _0808DC20
	.align 2, 0
_0808DB50: .4byte gUnknown_03001060
_0808DB54: .4byte gCurTask
_0808DB58: .4byte Task_EC_808D7F0
_0808DB5C:
	ldr r1, _0808DB7C @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	ldrb r0, [r4, #0xe]
	strb r0, [r5]
	ldrb r0, [r3]
	ldr r2, _0808DB80 @ =gCharacterSelectedVoices
	ldr r1, _0808DB84 @ =gUnknown_080D6EE0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	b _0808DBC2
	.align 2, 0
_0808DB7C: .4byte gUnknown_080D8F18
_0808DB80: .4byte gCharacterSelectedVoices
_0808DB84: .4byte gUnknown_080D6EE0
_0808DB88:
	movs r2, #0
	ldr r7, _0808DBD8 @ =gUnknown_03001060
	ldr r6, _0808DBDC @ =gCharacterSelectedVoices
	mov sb, r6
	ldr r0, _0808DBE0 @ =gUnknown_080D6EE0
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0x4c
	mov r3, sl
_0808DB9A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r6
	adds r1, r3, r0
	ldrb r1, [r1]
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808DB9A
	asrs r0, r5, #0x10
	adds r0, r7, r0
	adds r0, #0x4a
	ldrb r0, [r0]
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sb
_0808DBC2:
	ldrh r0, [r0]
	bl m4aSongNumStart
	movs r0, #0xc
	strb r0, [r4, #0x17]
	ldr r0, _0808DBE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808DBE8 @ =Task_EC_808DD6C
	str r0, [r1, #8]
	b _0808DC20
	.align 2, 0
_0808DBD8: .4byte gUnknown_03001060
_0808DBDC: .4byte gCharacterSelectedVoices
_0808DBE0: .4byte gUnknown_080D6EE0
_0808DBE4: .4byte gCurTask
_0808DBE8: .4byte Task_EC_808DD6C
_0808DBEC:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #2
	bne _0808DC04
	ldr r0, _0808DC00 @ =gUnknown_080D6EE0
	mov r2, r8
	ldrb r1, [r2, #4]
	b _0808DC0E
	.align 2, 0
_0808DC00: .4byte gUnknown_080D6EE0
_0808DC04:
	cmp r1, #3
	bne _0808DC14
	ldr r3, _0808DC30 @ =gMultiSioRecv+1*0x18
	ldr r0, _0808DC34 @ =gUnknown_080D6EE0
	ldrb r1, [r3, #4]
_0808DC0E:
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r4, #0x12]
_0808DC14:
	asrs r0, r5, #0x10
	cmp r0, #1
	ble _0808DC20
	adds r0, r7, #0
	bl UpdateScreenFade
_0808DC20:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DC30: .4byte gMultiSioRecv+1*0x18
_0808DC34: .4byte gUnknown_080D6EE0

.syntax divided
