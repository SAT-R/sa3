
.syntax unified
.text
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #8]
	cmp r2, #0x64
	beq _080849E0
	cmp r2, #0x64
	bgt _08084934
	cmp r2, #0
	beq _0808494E
	cmp r2, #0xa
	beq _08084986
	b _08084B26
_08084934:
	cmp r2, #0xc8
	bne _0808493A
	b _08084B04
_0808493A:
	cmp r2, #0xc8
	bgt _08084946
	cmp r2, #0x6e
	bne _08084944
	b _08084A6C
_08084944:
	b _08084B26
_08084946:
	cmp r2, #0xd2
	bne _0808494C
	b _08084B12
_0808494C:
	b _08084B26
_0808494E:
	adds r0, r4, #0
	adds r0, #0xb8
	movs r1, #0
	strh r2, [r0]
	adds r0, #2
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r1, #0
	adds r5, r4, #0
	adds r5, #0xed
	adds r2, r4, #0
	adds r2, #0xbc
	movs r3, #0
_0808496A:
	adds r0, r2, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #6
	bls _0808496A
	movs r0, #1
	strb r0, [r5]
	movs r0, #0
	strh r0, [r4, #4]
	movs r0, #0xa
	strh r0, [r4, #8]
	b _08084B26
_08084986:
	adds r0, r4, #0
	adds r0, #0xee
	ldrb r0, [r0]
	cmp r0, #0
	bne _08084992
	b _08084B26
_08084992:
	adds r1, r4, #0
	adds r1, #0xed
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r4, r2
	str r1, [r0]
	movs r0, #0x85
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r1, #0
	movs r3, #0
	ldr r2, _080849DC @ =0x000004FE
_080849BA:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r5, #0xed
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r4, r0
	strh r2, [r0, #0xc]
	strb r3, [r0, #0x1a]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _080849BA
	movs r0, #0x64
	strh r0, [r4, #8]
	b _08084B26
	.align 2, 0
_080849DC: .4byte 0x000004FE
_080849E0:
	adds r2, r4, #0
	adds r2, #0xbb
	ldrb r0, [r2]
	cmp r0, #5
	bhi _08084A06
	adds r1, r4, #0
	adds r1, #0xbc
	ldrb r0, [r2]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x17
	bls _08084A06
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_08084A06:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r5, r4, r1
	ldr r0, [r5]
	asrs r0, r0, #8
	cmp r0, #0
	bge _08084A1E
	ldr r2, _08084A58 @ =0x000003FF
	adds r0, r0, r2
_08084A1E:
	asrs r0, r0, #0xa
	lsls r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r4, r1
	ldr r1, _08084A5C @ =gUnknown_080D5D20
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r1, [r2]
	ldr r3, [r0]
	subs r1, r1, r3
	ldr r0, _08084A60 @ =0x0003FFFF
	ands r1, r0
	str r1, [r2]
	asrs r1, r1, #8
	adds r0, r4, #0
	adds r0, #0xb8
	strh r1, [r0]
	ldr r0, [r5]
	adds r1, r0, r3
	str r1, [r5]
	ldr r0, _08084A64 @ =0x000BFFFF
	cmp r1, r0
	ble _08084AEC
	ldr r2, _08084A68 @ =0xFFF80000
	adds r0, r1, r2
	str r0, [r5]
	movs r0, #0x6e
	b _08084AEA
	.align 2, 0
_08084A58: .4byte 0x000003FF
_08084A5C: .4byte gUnknown_080D5D20
_08084A60: .4byte 0x0003FFFF
_08084A64: .4byte 0x000BFFFF
_08084A68: .4byte 0xFFF80000
_08084A6C:
	adds r2, r4, #0
	adds r2, #0xbb
	ldrb r0, [r2]
	cmp r0, #0
	beq _08084A8E
	adds r1, r0, #0
	adds r1, r4, r1
	adds r1, #0xbb
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08084A8E
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
_08084A8E:
	movs r5, #0x80
	lsls r5, r5, #1
	adds r2, r4, r5
	ldr r1, _08084AF8 @ =gUnknown_080D5D20
	ldr r0, [r2]
	ldr r3, [r1, #8]
	subs r0, r0, r3
	ldr r1, _08084AFC @ =0x0003FFFF
	ands r0, r1
	str r0, [r2]
	asrs r0, r0, #8
	adds r2, r4, #0
	adds r2, #0xb8
	strh r0, [r2]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	subs r0, r0, r3
	str r0, [r1]
	cmp r0, #0
	bgt _08084AEC
	movs r0, #0
	strh r0, [r2]
	movs r0, #0x85
	lsls r0, r0, #2
	bl m4aSongNumStop
	movs r1, #0
	ldr r3, _08084B00 @ =0x000004FE
	movs r2, #1
_08084ACC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r5, #0xed
	lsls r5, r5, #2
	adds r0, r0, r5
	adds r0, r4, r0
	strh r3, [r0, #0xc]
	strb r2, [r0, #0x1a]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08084ACC
	movs r0, #0xc8
_08084AEA:
	strh r0, [r4, #8]
_08084AEC:
	adds r0, r4, #0
	movs r1, #5
	bl sub_878_8082E2C
	b _08084B26
	.align 2, 0
_08084AF8: .4byte gUnknown_080D5D20
_08084AFC: .4byte 0x0003FFFF
_08084B00: .4byte 0x000004FE
_08084B04:
	movs r0, #2
	adds r1, r4, #0
	adds r1, #0xed
	strb r0, [r1]
	movs r0, #0xd2
	strh r0, [r4, #8]
	b _08084B26
_08084B12:
	adds r0, r4, #0
	adds r0, #0xee
	ldrb r0, [r0]
	cmp r0, #0
	beq _08084B26
	adds r1, r4, #0
	adds r1, #0xed
	movs r0, #0
	strb r0, [r1]
	strb r0, [r4, #1]
_08084B26:
	pop {r4, r5}
	pop {r0}
	bx r0

.syntax divided
