
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r4, #0
	ldr r0, _080858B8 @ =gBgOffsetsHBlankPrimary
	ldr r1, [r0]
	ldr r2, _080858BC @ =gBgOffsetsBuffer
	mov sb, r0
	cmp r1, r2
	bne _080858C8
	add r1, sp, #8
	strh r4, [r1]
	ldr r0, _080858C0 @ =0x040000D4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _080858C4 @ =0x81000140
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	b _080858DE
	.align 2, 0
_080858B8: .4byte gBgOffsetsHBlankPrimary
_080858BC: .4byte gBgOffsetsBuffer
_080858C0: .4byte 0x040000D4
_080858C4: .4byte 0x81000140
_080858C8:
	add r0, sp, #8
	strh r4, [r0]
	ldr r1, _08085948 @ =0x040000D4
	str r0, [r1]
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r2, r4
	str r0, [r1, #4]
	ldr r0, _0808594C @ =0x81000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080858DE:
	ldr r2, _08085950 @ =gFlags
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	lsls r0, r6, #0x10
	lsrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r1, #0xef
	bls _080858F6
	bl _080862C4
_080858F6:
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #0x9f
	ble _08085904
	bl _080862C4
_08085904:
	cmp r1, #0
	bge _0808590C
	bl _080862C4
_0808590C:
	mov r1, r8
	lsrs r0, r1, #5
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _08085954 @ =gUnknown_080D5D30
	adds r0, r2, r0
	ldrb r0, [r0]
	adds r2, r0, #0
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08085934
	ldr r1, _08085958 @ =gHBlankCopySize
	movs r0, #2
	strb r0, [r1]
	mov r0, sb
	ldr r3, [r0]
	ldr r1, _0808595C @ =gHBlankCopyTarget
	ldr r0, _08085960 @ =0x04000040
	str r0, [r1]
_08085934:
	cmp r2, #0xf
	bls _0808593C
	bl _080862C4
_0808593C:
	lsls r0, r2, #2
	ldr r1, _08085964 @ =_08085968
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08085948: .4byte 0x040000D4
_0808594C: .4byte 0x81000140
_08085950: .4byte gFlags
_08085954: .4byte gUnknown_080D5D30
_08085958: .4byte gHBlankCopySize
_0808595C: .4byte gHBlankCopyTarget
_08085960: .4byte 0x04000040
_08085964: .4byte _08085968
_08085968: @ jump table
	.4byte _080859A8 @ case 0
	.4byte _080859E4 @ case 1
	.4byte _08085AAC @ case 2
	.4byte _08085B28 @ case 3
	.4byte _08085BE8 @ case 4
	.4byte _08085C10 @ case 5
	.4byte _08085CE0 @ case 6
	.4byte _08085D58 @ case 7
	.4byte _08085E2A @ case 8
	.4byte _08085E64 @ case 9
	.4byte _08085F36 @ case 10
	.4byte _08085FBC @ case 11
	.4byte _0808608C @ case 12
	.4byte _080860AC @ case 13
	.4byte _08086174 @ case 14
	.4byte _080861F4 @ case 15
_080859A8:
	asrs r1, r5, #0x10
	ldr r2, _080859E0 @ =0xFFF80000
	adds r0, r5, r2
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080859B6
	movs r2, #0
_080859B6:
	adds r0, r1, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _080859C6
	movs r4, #0xa0
_080859C6:
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0
	movs r3, #0xf0
	bl sa2__sub_8007A08
	bl _080862C4
	.align 2, 0
_080859E0: .4byte 0xFFF80000
_080859E4:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r2, _08085A34 @ =0xFFF90000
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085A38 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	movs r4, #0
	mov r8, r4
	cmp r6, #0x9f
	bls _08085A16
	bl _080862C4
_08085A16:
	adds r4, r1, #0
	movs r5, #0xf0
	ldr r0, _08085A3C @ =gUnknown_080D5E84
	mov sl, r0
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r2, #1
	mov sb, r2
_08085A28:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08085A40
	strb r5, [r3]
	b _08085A5C
	.align 2, 0
_08085A34: .4byte 0xFFF90000
_08085A38: .4byte gHBlankCopySize
_08085A3C: .4byte gUnknown_080D5E84
_08085A40:
	adds r0, r7, #0
	adds r0, #0xe
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08085A5A
	mov r0, sb
	strb r0, [r4]
_08085A5A:
	strb r2, [r3]
_08085A5C:
	adds r3, #1
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08085A68
	strb r5, [r3]
	b _08085A88
_08085A68:
	lsls r0, r7, #1
	add r0, sl
	ldrh r0, [r0]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08085A84
	strb r5, [r3]
	adds r3, #1
	mov r2, sb
	strb r2, [r4, #1]
	b _08085A8A
_08085A84:
	add r2, r8
	strb r2, [r3]
_08085A88:
	adds r3, #1
_08085A8A:
	cmp r7, #0xd
	bne _08085A92
	ldr r0, _08085AA8 @ =0x0000FFFA
	mov r8, r0
_08085A92:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0x9f
	bls _08085A28
	bl _080862C4
	.align 2, 0
_08085AA8: .4byte 0x0000FFFA
_08085AAC:
	movs r2, #0xc0
	lsls r2, r2, #0xb
	adds r1, r4, r2
	ldr r4, _08085B00 @ =0xFFFA0000
	adds r0, r5, r4
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085B04 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	lsls r1, r1, #8
	lsrs r4, r1, #0x18
	adds r5, r4, #0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	cmp r6, #0x9f
	bls _08085ADC
	bl _080862C4
_08085ADC:
	strb r5, [r3]
	adds r3, #1
	strb r4, [r3]
	adds r3, #1
	cmp r5, #0xef
	bhi _08085AEE
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_08085AEE:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08085B08
	cmp r4, #0xef
	bhi _08085B1C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _08085B1C
	.align 2, 0
_08085B00: .4byte 0xFFFA0000
_08085B04: .4byte gHBlankCopySize
_08085B08:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xa
	bls _08085B1C
	movs r0, #1
	strb r0, [r1]
_08085B1C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x9f
	bls _08085ADC
	b _080862C4
_08085B28:
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r2, _08085B74 @ =0xFFFD0000
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085B78 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	movs r4, #0
	mov r8, r4
	cmp r6, #0x9f
	bls _08085B58
	b _080862C4
_08085B58:
	adds r4, r1, #0
	movs r5, #0xf0
	ldr r0, _08085B7C @ =gUnknown_080D5FC4
	mov sl, r0
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r2, #1
	mov sb, r2
_08085B6A:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08085B80
	strb r5, [r3]
	b _08085B9A
	.align 2, 0
_08085B74: .4byte 0xFFFD0000
_08085B78: .4byte gHBlankCopySize
_08085B7C: .4byte gUnknown_080D5FC4
_08085B80:
	adds r0, r7, #7
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08085B98
	mov r0, sb
	strb r0, [r4]
_08085B98:
	strb r2, [r3]
_08085B9A:
	adds r3, #1
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08085BA6
	strb r5, [r3]
	b _08085BC6
_08085BA6:
	lsls r0, r7, #1
	add r0, sl
	ldrh r0, [r0]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08085BC2
	strb r5, [r3]
	adds r3, #1
	mov r2, sb
	strb r2, [r4, #1]
	b _08085BC8
_08085BC2:
	add r2, r8
	strb r2, [r3]
_08085BC6:
	adds r3, #1
_08085BC8:
	cmp r7, #6
	bne _08085BD0
	ldr r0, _08085BE4 @ =0x0000FFF2
	mov r8, r0
_08085BD0:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0x9f
	bls _08085B6A
	b _080862C4
	.align 2, 0
_08085BE4: .4byte 0x0000FFF2
_08085BE8:
	adds r2, r7, #0
	cmp r5, #0
	bge _08085BF0
	movs r2, #0
_08085BF0:
	adds r1, r6, #0
	subs r1, #8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r3, r6, #0
	adds r3, #8
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0xa0
	str r0, [sp]
	movs r0, #0
	bl sa2__sub_8007A08
	b _080862C4
_08085C10:
	ldr r1, _08085C60 @ =0xFFF90000
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r2, _08085C64 @ =0xFFFD0000
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085C68 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	movs r4, #0
	mov r8, r4
	cmp r6, #0x9f
	bls _08085C3E
	b _080862C4
_08085C3E:
	adds r5, r1, #0
	ldr r0, _08085C6C @ =gUnknown_080D5FC4
	mov sl, r0
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	movs r2, #1
	mov sb, r2
_08085C50:
	ldrb r0, [r5, #1]
	adds r4, r0, #0
	cmp r4, #0
	beq _08085C70
	movs r4, #0
	strb r4, [r3]
	b _08085C96
	.align 2, 0
_08085C60: .4byte 0xFFF90000
_08085C64: .4byte 0xFFFD0000
_08085C68: .4byte gHBlankCopySize
_08085C6C: .4byte gUnknown_080D5FC4
_08085C70:
	lsls r0, r7, #1
	add r0, sl
	ldrh r1, [r0]
	mov r0, ip
	subs r1, r0, r1
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085C94
	strb r4, [r3]
	adds r3, #1
	mov r4, sb
	strb r4, [r5, #1]
	b _08085C98
_08085C94:
	strb r2, [r3]
_08085C96:
	adds r3, #1
_08085C98:
	ldrb r1, [r5]
	cmp r1, #0
	beq _08085CA4
	movs r0, #0
	strb r0, [r3]
	b _08085CC4
_08085CA4:
	adds r0, r7, #7
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	mov r2, ip
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085CC2
	strb r1, [r3]
	adds r3, #1
	mov r4, sb
	strb r4, [r5]
	b _08085CC6
_08085CC2:
	strb r2, [r3]
_08085CC4:
	adds r3, #1
_08085CC6:
	cmp r7, #6
	bne _08085CCE
	movs r0, #0xe
	mov r8, r0
_08085CCE:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0x9f
	bls _08085C50
	b _080862C4
_08085CE0:
	ldr r2, _08085D30 @ =0xFFFA0000
	adds r1, r4, r2
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085D34 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	lsls r1, r1, #8
	lsrs r4, r1, #0x18
	adds r5, r4, #0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	cmp r6, #0x9f
	bls _08085D0A
	b _080862C4
_08085D0A:
	strb r5, [r3]
	adds r3, #1
	strb r4, [r3]
	adds r3, #1
	cmp r4, #0
	beq _08085D1C
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08085D1C:
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08085D38
	cmp r5, #0
	beq _08085D4C
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08085D4C
	.align 2, 0
_08085D30: .4byte 0xFFFA0000
_08085D34: .4byte gHBlankCopySize
_08085D38:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xa
	bls _08085D4C
	movs r0, #1
	strb r0, [r1, #1]
_08085D4C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x9f
	bls _08085D0A
	b _080862C4
_08085D58:
	ldr r1, _08085DA8 @ =0xFFFD0000
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r2, _08085DAC @ =0xFFF90000
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085DB0 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	movs r4, #0
	mov r8, r4
	cmp r6, #0x9f
	bls _08085D86
	b _080862C4
_08085D86:
	adds r5, r1, #0
	ldr r0, _08085DB4 @ =gUnknown_080D5E84
	mov sl, r0
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	movs r2, #1
	mov sb, r2
_08085D98:
	ldrb r0, [r5, #1]
	adds r4, r0, #0
	cmp r4, #0
	beq _08085DB8
	movs r4, #0
	strb r4, [r3]
	b _08085DDE
	.align 2, 0
_08085DA8: .4byte 0xFFFD0000
_08085DAC: .4byte 0xFFF90000
_08085DB0: .4byte gHBlankCopySize
_08085DB4: .4byte gUnknown_080D5E84
_08085DB8:
	lsls r0, r7, #1
	add r0, sl
	ldrh r1, [r0]
	mov r0, ip
	subs r1, r0, r1
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085DDC
	strb r4, [r3]
	adds r3, #1
	mov r4, sb
	strb r4, [r5, #1]
	b _08085DE0
_08085DDC:
	strb r2, [r3]
_08085DDE:
	adds r3, #1
_08085DE0:
	ldrb r1, [r5]
	cmp r1, #0
	beq _08085DEC
	movs r0, #0
	strb r0, [r3]
	b _08085E0E
_08085DEC:
	adds r0, r7, #0
	adds r0, #0xe
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	mov r2, ip
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085E0C
	strb r1, [r3]
	adds r3, #1
	mov r4, sb
	strb r4, [r5]
	b _08085E10
_08085E0C:
	strb r2, [r3]
_08085E0E:
	adds r3, #1
_08085E10:
	cmp r7, #0xd
	bne _08085E18
	movs r0, #6
	mov r8, r0
_08085E18:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0x9f
	bls _08085D98
	b _080862C4
_08085E2A:
	asrs r1, r5, #0x10
	ldr r2, _08085E60 @ =0xFFF80000
	adds r0, r5, r2
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085E38
	movs r2, #0
_08085E38:
	adds r0, r1, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _08085E48
	movs r4, #0xa0
_08085E48:
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r6, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl sa2__sub_8007A08
	b _080862C4
	.align 2, 0
_08085E60: .4byte 0xFFF80000
_08085E64:
	ldr r1, _08085EB8 @ =0xFFFD0000
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r2, #0xe0
	lsls r2, r2, #0xb
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085EBC @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	mov r4, ip
	strb r4, [r3, #1]
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	mov r8, r0
	cmp r6, #0
	bne _08085E96
	b _080862C0
_08085E96:
	adds r5, r1, #0
	ldr r1, _08085EC0 @ =gUnknown_080D5E84
	mov sl, r1
	mov r2, ip
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	movs r4, #1
	mov sb, r4
_08085EA8:
	ldrb r0, [r5, #1]
	adds r4, r0, #0
	cmp r4, #0
	beq _08085EC4
	movs r0, #0
	strb r0, [r3]
	b _08085EEA
	.align 2, 0
_08085EB8: .4byte 0xFFFD0000
_08085EBC: .4byte gHBlankCopySize
_08085EC0: .4byte gUnknown_080D5E84
_08085EC4:
	lsls r0, r7, #1
	add r0, sl
	ldrh r1, [r0]
	mov r2, ip
	subs r1, r2, r1
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085EE8
	strb r4, [r3]
	subs r3, #1
	mov r4, sb
	strb r4, [r5, #1]
	b _08085EEC
_08085EE8:
	strb r2, [r3]
_08085EEA:
	subs r3, #1
_08085EEC:
	ldrb r1, [r5]
	cmp r1, #0
	beq _08085EF8
	movs r0, #0
	strb r0, [r3]
	b _08085F1A
_08085EF8:
	adds r0, r7, #0
	adds r0, #0xe
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	mov r2, ip
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08085F18
	strb r1, [r3]
	subs r3, #1
	mov r4, sb
	strb r4, [r5]
	b _08085F1C
_08085F18:
	strb r2, [r3]
_08085F1A:
	subs r3, #1
_08085F1C:
	cmp r7, #0xd
	bne _08085F24
	movs r0, #6
	mov r8, r0
_08085F24:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0
	bne _08085EA8
	b _080862C0
_08085F36:
	ldr r1, _08085F94 @ =0xFFFA0000
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r2, #0xc0
	lsls r2, r2, #0xb
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08085F98 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	mov r4, ip
	strb r4, [r3, #1]
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	adds r5, r4, #0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	cmp r6, #0
	bne _08085F6E
	b _080862C0
_08085F6E:
	strb r5, [r3]
	subs r3, #1
	strb r4, [r3]
	subs r3, #1
	cmp r4, #0
	beq _08085F80
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08085F80:
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08085F9C
	cmp r5, #0
	beq _08085FB0
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08085FB0
	.align 2, 0
_08085F94: .4byte 0xFFFA0000
_08085F98: .4byte gHBlankCopySize
_08085F9C:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xa
	bls _08085FB0
	movs r0, #1
	strb r0, [r1, #1]
_08085FB0:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _08085F6E
	b _080862C0
_08085FBC:
	ldr r2, _08086010 @ =0xFFF90000
	adds r0, r4, r2
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r4, #0xc0
	lsls r4, r4, #0xa
	adds r0, r5, r4
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08086014 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	mov r0, ip
	strb r0, [r3, #1]
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	movs r1, #0
	mov r8, r1
	cmp r6, #0
	bne _08085FF0
	b _080862C0
_08085FF0:
	adds r5, r2, #0
	ldr r2, _08086018 @ =gUnknown_080D5FC4
	mov sl, r2
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	movs r0, #1
	mov sb, r0
_08086002:
	ldrb r0, [r5, #1]
	adds r4, r0, #0
	cmp r4, #0
	beq _0808601C
	movs r1, #0
	strb r1, [r3]
	b _08086042
	.align 2, 0
_08086010: .4byte 0xFFF90000
_08086014: .4byte gHBlankCopySize
_08086018: .4byte gUnknown_080D5FC4
_0808601C:
	lsls r0, r7, #1
	add r0, sl
	ldrh r1, [r0]
	mov r2, ip
	subs r1, r2, r1
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08086040
	strb r4, [r3]
	subs r3, #1
	mov r4, sb
	strb r4, [r5, #1]
	b _08086044
_08086040:
	strb r2, [r3]
_08086042:
	subs r3, #1
_08086044:
	ldrb r1, [r5]
	cmp r1, #0
	beq _08086050
	movs r0, #0
	strb r0, [r3]
	b _08086070
_08086050:
	adds r0, r7, #7
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	mov r2, ip
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0808606E
	strb r1, [r3]
	subs r3, #1
	mov r4, sb
	strb r4, [r5]
	b _08086072
_0808606E:
	strb r2, [r3]
_08086070:
	subs r3, #1
_08086072:
	cmp r7, #6
	bne _0808607A
	movs r0, #0xe
	mov r8, r0
_0808607A:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0
	bne _08086002
	b _080862C0
_0808608C:
	adds r1, r6, #0
	subs r1, #8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r6, #0
	adds r3, #8
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0
	movs r2, #0
	bl sa2__sub_8007A08
	b _080862C4
_080860AC:
	movs r1, #0xe0
	lsls r1, r1, #0xb
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r2, #0xc0
	lsls r2, r2, #0xa
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08086100 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	mov r4, ip
	strb r4, [r3, #1]
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	mov r8, r0
	cmp r6, #0
	bne _080860E0
	b _080862C0
_080860E0:
	adds r4, r1, #0
	movs r1, #0xf0
	mov sb, r1
	ldr r2, _08086104 @ =gUnknown_080D5FC4
	mov sl, r2
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	movs r2, #1
	mov ip, r2
_080860F4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08086108
	mov r0, sb
	strb r0, [r3]
	b _08086122
	.align 2, 0
_08086100: .4byte gHBlankCopySize
_08086104: .4byte gUnknown_080D5FC4
_08086108:
	adds r0, r7, #7
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08086120
	mov r1, ip
	strb r1, [r4]
_08086120:
	strb r2, [r3]
_08086122:
	subs r3, #1
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _08086150
	lsls r0, r7, #1
	add r0, sl
	ldrh r1, [r0]
	adds r1, r5, r1
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08086152
	mov r0, sb
	strb r0, [r3]
	subs r3, #1
	mov r1, ip
	strb r1, [r4, #1]
	b _08086156
_08086150:
	mov r2, sb
_08086152:
	strb r2, [r3]
	subs r3, #1
_08086156:
	cmp r7, #6
	bne _0808615E
	ldr r2, _08086170 @ =0x0000FFF2
	mov r8, r2
_0808615E:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0
	bne _080860F4
	b _080862C0
	.align 2, 0
_08086170: .4byte 0x0000FFF2
_08086174:
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	adds r0, r5, r1
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _080861D0 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	mov r2, ip
	strb r2, [r3, #1]
	mov r4, ip
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	adds r5, r4, #0
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	cmp r6, #0
	bne _080861AA
	b _080862C0
_080861AA:
	strb r5, [r3]
	subs r3, #1
	strb r4, [r3]
	subs r3, #1
	cmp r5, #0xef
	bhi _080861BC
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080861BC:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080861D4
	cmp r4, #0xef
	bhi _080861E8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _080861E8
	.align 2, 0
_080861D0: .4byte gHBlankCopySize
_080861D4:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xa
	bls _080861E8
	movs r0, #1
	strb r0, [r1]
_080861E8:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080861AA
	b _080862C0
_080861F4:
	movs r1, #0xc0
	lsls r1, r1, #0xa
	adds r0, r4, r1
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r2, #0xe0
	lsls r2, r2, #0xb
	adds r0, r5, r2
	lsls r0, r0, #8
	lsrs r6, r0, #0x18
	ldr r0, _08086244 @ =gHBlankCopySize
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r3, r3, r0
	mov r4, ip
	strb r4, [r3, #1]
	add r2, sp, #4
	adds r1, r2, #0
	movs r0, #0
	strb r0, [r1, #1]
	strb r0, [r2]
	movs r7, #0
	mov r8, r0
	cmp r6, #0
	beq _080862C0
	adds r4, r1, #0
	movs r1, #0xf0
	mov sb, r1
	mov r2, ip
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	movs r0, #1
	mov sl, r0
_08086236:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08086248
	mov r1, sb
	strb r1, [r3]
	b _08086266
	.align 2, 0
_08086244: .4byte gHBlankCopySize
_08086248:
	adds r0, r7, #0
	adds r0, #0xe
	lsls r0, r0, #1
	ldr r2, _08086274 @ =gUnknown_080D5E84
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _08086264
	mov r0, sl
	strb r0, [r4]
_08086264:
	strb r2, [r3]
_08086266:
	subs r3, #1
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08086278
	mov r1, sb
	strb r1, [r3]
	b _080862A6
	.align 2, 0
_08086274: .4byte gUnknown_080D5E84
_08086278:
	lsls r0, r7, #1
	ldr r2, _080862A0 @ =gUnknown_080D5E84
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r1, r5, r1
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _080862A4
	mov r0, sb
	strb r0, [r3]
	subs r3, #1
	mov r1, sl
	strb r1, [r4, #1]
	b _080862A8
	.align 2, 0
_080862A0: .4byte gUnknown_080D5E84
_080862A4:
	strb r2, [r3]
_080862A6:
	subs r3, #1
_080862A8:
	cmp r7, #0xd
	bne _080862B0
	ldr r2, _080862D4 @ =0x0000FFFA
	mov r8, r2
_080862B0:
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r6, #0
	bne _08086236
_080862C0:
	movs r0, #0
	strb r0, [r3, #1]
_080862C4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080862D4: .4byte 0x0000FFFA

.syntax divided
