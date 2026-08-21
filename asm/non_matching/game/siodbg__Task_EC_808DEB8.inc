
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0808DEEC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0808DEF0 @ =gStageData
	ldrb r6, [r0, #6]
	movs r5, #0
	cmp r6, #0
	bne _0808DEF8
	ldr r1, _0808DEF4 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80259F8
	b _0808DF06
	.align 2, 0
_0808DEEC: .4byte gCurTask
_0808DEF0: .4byte gStageData
_0808DEF4: .4byte gUnknown_080D8F18
_0808DEF8:
	ldr r1, _0808DF18 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8024F84
_0808DF06:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0808DF1C
_0808DF10:
	bl sub_802613C
	b _0808E050
	.align 2, 0
_0808DF18: .4byte gUnknown_080D8F18
_0808DF1C:
	lsls r0, r6, #0x10
	adds r7, r0, #0
	cmp r7, #0
	bne _0808DF34
	ldr r1, _0808DF30 @ =gUnknown_080D8F18
	movs r0, #0x13
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	ldrb r6, [r0]
	b _0808DF38
	.align 2, 0
_0808DF30: .4byte gUnknown_080D8F18
_0808DF34:
	ldr r0, _0808DF4C @ =gMultiSioRecv
	ldrb r6, [r0, #4]
_0808DF38:
	ldr r2, _0808DF50 @ =gUnknown_03001060
	ldrb r1, [r2, #7]
	adds r3, r2, #0
	cmp r1, #7
	beq _0808DF5E
	cmp r1, #7
	bgt _0808DF54
	cmp r1, #3
	beq _0808DF5A
	b _0808DF10
	.align 2, 0
_0808DF4C: .4byte gMultiSioRecv
_0808DF50: .4byte gUnknown_03001060
_0808DF54:
	cmp r1, #0xf
	beq _0808DF62
	b _0808DF10
_0808DF5A:
	movs r2, #0
	b _0808DF64
_0808DF5E:
	movs r2, #1
	b _0808DF64
_0808DF62:
	movs r2, #2
_0808DF64:
	movs r1, #0
	ldr r0, _0808DFF4 @ =gUnknown_080D6F00
	mov sl, r0
	lsls r2, r2, #2
	mov r8, r2
	asrs r2, r7, #0x10
	mov ip, r2
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	ldr r6, _0808DFF8 @ =gUnknown_030010AC
	mov sb, r6
_0808DF7C:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	add r0, r8
	add r0, sl
	ldrb r2, [r0]
	cmp r2, ip
	beq _0808DFAE
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r2, _0808DFFC @ =gMultiSioRecv
	adds r0, r0, r2
	ldrb r0, [r0, #4]
	ldr r6, [sp]
	cmp r0, r6
	bne _0808DFB4
	mov r2, sb
	ldrb r2, [r2]
	cmp r0, r2
	beq _0808DFB4
	adds r2, r3, #0
	adds r2, #0x4d
	ldrb r2, [r2]
	cmp r0, r2
	beq _0808DFB4
_0808DFAE:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0808DFB4:
	movs r6, #0x80
	lsls r6, r6, #9
	adds r0, r1, r6
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0808DF7C
	cmp r5, #4
	bne _0808E050
	ldrb r0, [r4, #0x17]
	cmp r0, #0xc
	bhi _0808DFD0
	movs r0, #0xd
	strb r0, [r4, #0x17]
_0808DFD0:
	ldrb r0, [r4, #0x17]
	cmp r0, #0xd
	bls _0808E050
	asrs r2, r7, #0x10
	cmp r2, #0
	beq _0808DFE0
	cmp r2, #2
	bne _0808E006
_0808DFE0:
	ldrb r0, [r3, #7]
	ands r5, r0
	cmp r5, #0
	beq _0808E000
	cmp r2, #0
	bne _0808E000
	movs r2, #0
	movs r0, #0xff
	b _0808E01E
	.align 2, 0
_0808DFF4: .4byte gUnknown_080D6F00
_0808DFF8: .4byte gUnknown_030010AC
_0808DFFC: .4byte gMultiSioRecv
_0808E000:
	movs r2, #1
	movs r0, #2
	b _0808E01E
_0808E006:
	ldrb r1, [r3, #7]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808E01A
	cmp r2, #1
	bne _0808E01A
	movs r2, #0
	movs r0, #0xff
	b _0808E01E
_0808E01A:
	movs r2, #1
	movs r0, #3
_0808E01E:
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x10]
	adds r1, r3, #0
	adds r1, #0x4e
	strb r0, [r1]
	ldrb r1, [r4, #0x11]
	adds r0, r3, #0
	adds r0, #0x4f
	strb r1, [r0]
	cmp r2, #0
	beq _0808E048
	movs r0, #0xff
	strb r0, [r4, #0x12]
	ldr r0, _0808E040 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E044 @ =Task_EC_808E068
	b _0808E04E
	.align 2, 0
_0808E040: .4byte gCurTask
_0808E044: .4byte Task_EC_808E068
_0808E048:
	ldr r0, _0808E060 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0808E064 @ =Task_EC_808E430
_0808E04E:
	str r0, [r1, #8]
_0808E050:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E060: .4byte gCurTask
_0808E064: .4byte Task_EC_808E430

.syntax divided
