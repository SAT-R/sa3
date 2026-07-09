
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0xf0
	adds r0, r0, r4
	mov r8, r0
	ldr r5, [r4, #0x50]
	ldrh r3, [r4, #0x2c]
	cmp r3, #0x64
	bne _0806982E
	b _08069A80
_0806982E:
	cmp r3, #0x64
	bgt _0806987E
	cmp r3, #0x14
	bne _08069838
	b _080699D8
_08069838:
	cmp r3, #0x14
	bgt _08069858
	cmp r3, #0xa
	beq _08069934
	cmp r3, #0xa
	bgt _0806984A
	cmp r3, #0
	beq _080698E2
	b _08069D0A
_0806984A:
	cmp r3, #0xb
	bne _08069850
	b _0806994E
_08069850:
	cmp r3, #0x13
	bne _08069856
	b _0806997A
_08069856:
	b _08069D0A
_08069858:
	cmp r3, #0x32
	bne _0806985E
	b _08069A32
_0806985E:
	cmp r3, #0x32
	bgt _08069870
	cmp r3, #0x1e
	bne _08069868
	b _080699FE
_08069868:
	cmp r3, #0x28
	bne _0806986E
	b _08069A20
_0806986E:
	b _08069D0A
_08069870:
	cmp r3, #0x3c
	bne _08069876
	b _08069A54
_08069876:
	cmp r3, #0x5a
	bne _0806987C
	b _08069A66
_0806987C:
	b _08069D0A
_0806987E:
	movs r1, #0x96
	lsls r1, r1, #1
	cmp r3, r1
	bne _08069888
	b _08069BF4
_08069888:
	cmp r3, r1
	bgt _080698AC
	cmp r3, #0x78
	bne _08069892
	b _08069B58
_08069892:
	cmp r3, #0x78
	bgt _0806989E
	cmp r3, #0x6e
	bne _0806989C
	b _08069AB2
_0806989C:
	b _08069D0A
_0806989E:
	cmp r3, #0xc8
	bne _080698A4
	b _08069BB4
_080698A4:
	cmp r3, #0xd2
	bne _080698AA
	b _08069BDC
_080698AA:
	b _08069D0A
_080698AC:
	movs r0, #0xfa
	lsls r0, r0, #1
	cmp r3, r0
	bne _080698B6
	b _08069C96
_080698B6:
	cmp r3, r0
	bgt _080698CE
	movs r2, #0x9b
	lsls r2, r2, #1
	cmp r3, r2
	bne _080698C4
	b _08069C88
_080698C4:
	subs r0, #0xb4
	cmp r3, r0
	bne _080698CC
	b _08069C6C
_080698CC:
	b _08069D0A
_080698CE:
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r3, r0
	bne _080698D8
	b _08069CD4
_080698D8:
	adds r0, #0xa
	cmp r3, r0
	bne _080698E0
	b _08069CE6
_080698E0:
	b _08069D0A
_080698E2:
	ldr r2, _08069924 @ =gDispCnt
	ldrh r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2]
	str r3, [sp, #4]
	ldr r2, _08069928 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	ldr r0, _0806992C @ =gBgCntRegs
	ldrh r1, [r0, #4]
	movs r0, #0xc
	ands r0, r1
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08069930 @ =0x85000010
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #0xa
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #3
	beq _08069956
	bl sub_807A2AC
	b _08069D0A
	.align 2, 0
_08069924: .4byte gDispCnt
_08069928: .4byte 0x040000D4
_0806992C: .4byte gBgCntRegs
_08069930: .4byte 0x85000010
_08069934:
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #3
	beq _08069956
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0806994A
	movs r0, #0xb
	b _08069D08
_0806994A:
	movs r0, #0x13
	b _08069D08
_0806994E:
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08069964
_08069956:
	ldr r0, _08069960 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08069DC6
	.align 2, 0
_08069960: .4byte gCurTask
_08069964:
	cmp r0, #2
	beq _0806996A
	b _08069D0A
_0806996A:
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08069976
	b _08069D0A
_08069976:
	movs r0, #0x13
	b _08069D08
_0806997A:
	ldr r0, [r4, #8]
	ldrb r0, [r0]
	cmp r0, #2
	beq _08069984
	b _08069D0A
_08069984:
	movs r2, #1
	movs r1, #0
	ldr r6, _080699D0 @ =gPlayers
	ldr r5, _080699D4 @ =0xFFFFF9EF
	movs r3, #0xbf
	lsls r3, r3, #1
_08069990:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r6
	ldr r0, [r0, #0x10]
	asrs r0, r0, #8
	adds r0, r0, r5
	cmp r0, r3
	bls _080699AC
	movs r2, #0
_080699AC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08069990
	cmp r2, #0
	bne _080699BE
	b _08069D0A
_080699BE:
	movs r0, #0x3c
	strh r0, [r4, #0x2e]
	movs r0, #0x14
	strh r0, [r4, #0x2c]
	movs r0, #0x32
	bl sub_80299D4
	b _08069D0A
	.align 2, 0
_080699D0: .4byte gPlayers
_080699D4: .4byte 0xFFFFF9EF
_080699D8:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080699E6
	b _08069D0A
_080699E6:
	bl sub_807A4A8
	movs r0, #0x97
	lsls r0, r0, #3
	mov r1, r8
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0x3c
	strh r0, [r4, #0x2e]
	movs r0, #0x1e
	b _08069D08
_080699FE:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08069A0C
	b _08069D0A
_08069A0C:
	movs r0, #0x97
	lsls r0, r0, #3
	mov r2, r8
	strh r0, [r2, #0xc]
	movs r0, #0
	strb r0, [r2, #0x1a]
	movs r0, #0x3c
	strh r0, [r4, #0x2e]
	movs r0, #0x28
	b _08069D08
_08069A20:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08069A2E
	b _08069D0A
_08069A2E:
	movs r0, #0x32
	b _08069D08
_08069A32:
	ldr r0, [r4, #0x3c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r4, #0x3c]
	ldr r1, _08069A50 @ =0x00005FFF
	cmp r0, r1
	bgt _08069A44
	b _08069D0A
_08069A44:
	movs r0, #0xc0
	lsls r0, r0, #7
	str r0, [r4, #0x3c]
	movs r0, #0x3c
	strh r0, [r4, #0x2e]
	b _08069D08
	.align 2, 0
_08069A50: .4byte 0x00005FFF
_08069A54:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08069A62
	b _08069D0A
_08069A62:
	movs r0, #0x5a
	b _08069D08
_08069A66:
	ldr r0, _08069A78 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08069A7C @ =sub_8068C38
	str r0, [r1, #8]
	movs r0, #0
	strb r0, [r4, #0xe]
	strh r0, [r4, #0x30]
	movs r0, #1
	b _08069D04
	.align 2, 0
_08069A78: .4byte gCurTask
_08069A7C: .4byte sub_8068C38
_08069A80:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08069A90
	b _08069D0A
_08069A90:
	movs r0, #0
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08069AAC
	movs r0, #1
	strb r0, [r4, #0x12]
	strh r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0x44]
	movs r0, #0xfa
	lsls r0, r0, #1
	b _08069D08
_08069AAC:
	strh r0, [r4, #0x30]
	movs r0, #0x6e
	b _08069D08
_08069AB2:
	ldr r1, _08069AD8 @ =gSineTable
	ldrh r0, [r4, #0x30]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08069AC4
	adds r0, #0x3f
_08069AC4:
	asrs r1, r0, #6
	str r1, [r4, #0x38]
	ldrb r0, [r4, #0xe]
	adds r3, r0, #0
	cmp r3, #0
	bne _08069ADC
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	b _08069AE0
	.align 2, 0
_08069AD8: .4byte gSineTable
_08069ADC:
	ldr r0, [r4, #0x34]
	subs r0, r0, r1
_08069AE0:
	ldr r1, _08069B20 @ =0x0003FFFF
	ands r0, r1
	str r0, [r4, #0x34]
	ldrh r0, [r4, #0x30]
	adds r0, #4
	movs r2, #0
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	ldr r1, _08069B24 @ =0x01FF0000
	cmp r0, r1
	bls _08069B00
	strh r2, [r4, #0x30]
	str r2, [r4, #0x38]
	str r2, [r4, #0x44]
	movs r0, #0x78
	strh r0, [r4, #0x2c]
_08069B00:
	ldrh r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08069B0C
	b _08069D0A
_08069B0C:
	movs r2, #0
	lsls r0, r3, #0x18
	cmp r0, #0
	bne _08069B28
	ldr r0, [r4]
	ldr r1, [r5, #0x10]
	cmp r0, r1
	ble _08069B32
	b _08069B36
	.align 2, 0
_08069B20: .4byte 0x0003FFFF
_08069B24: .4byte 0x01FF0000
_08069B28:
	ldr r0, [r4]
	ldr r1, [r5, #0x10]
	cmp r0, r1
	bge _08069B32
	movs r2, #1
_08069B32:
	cmp r2, #0
	beq _08069B50
_08069B36:
	ldr r0, [r4]
	subs r3, r0, r1
	cmp r3, #0
	bge _08069B40
	subs r3, r1, r0
_08069B40:
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r3, r0
	bgt _08069B4C
	str r0, [r4, #0x40]
	b _08069D0A
_08069B4C:
	str r3, [r4, #0x40]
	b _08069D0A
_08069B50:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	b _08069D0A
_08069B58:
	ldr r2, [r4, #0x3c]
	ldr r1, [r4, #0x40]
	cmp r2, r1
	beq _08069B70
	ldr r0, [r4, #0x44]
	adds r0, #0x40
	str r0, [r4, #0x44]
	adds r0, r2, r0
	str r0, [r4, #0x3c]
	cmp r0, r1
	blt _08069B70
	str r1, [r4, #0x3c]
_08069B70:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08069B8C
	ldr r0, [r4, #0x38]
	subs r0, #0x80
	str r0, [r4, #0x38]
	ldr r1, _08069B88 @ =0xFFFFF000
	cmp r0, r1
	bgt _08069B9E
	str r1, [r4, #0x38]
	b _08069B9E
	.align 2, 0
_08069B88: .4byte 0xFFFFF000
_08069B8C:
	ldr r0, [r4, #0x38]
	adds r0, #0x80
	str r0, [r4, #0x38]
	ldr r1, _08069BAC @ =0x00000FFF
	cmp r0, r1
	ble _08069B9E
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #0x38]
_08069B9E:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	adds r0, r0, r1
	ldr r1, _08069BB0 @ =0x0003FFFF
	ands r0, r1
	str r0, [r4, #0x34]
	b _08069D0A
	.align 2, 0
_08069BAC: .4byte 0x00000FFF
_08069BB0: .4byte 0x0003FFFF
_08069BB4:
	movs r0, #0x78
	strh r0, [r4, #0x2e]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	ldr r0, _08069BD8 @ =0x00000225
	bl m4aSongNumStart
	movs r0, #0xd2
	b _08069D08
	.align 2, 0
_08069BD8: .4byte 0x00000225
_08069BDC:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08069BEC
	b _08069D0A
_08069BEC:
	str r0, [r4, #0x38]
	str r0, [r4, #0x44]
	strh r1, [r4, #0x2c]
	b _08069D0A
_08069BF4:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _08069C38
	ldr r0, [r4, #0x38]
	adds r0, #8
	str r0, [r4, #0x38]
	ldr r1, _08069C2C @ =0x000003FF
	cmp r0, r1
	ble _08069C0C
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r4, #0x38]
_08069C0C:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	adds r0, r0, r1
	ldr r1, _08069C30 @ =0x0003FFFF
	ands r0, r1
	str r0, [r4, #0x34]
	ldr r1, _08069C34 @ =0x0002FFFF
	cmp r0, r1
	ble _08069D0A
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x34]
	movs r0, #0xa0
	lsls r0, r0, #1
	b _08069D08
	.align 2, 0
_08069C2C: .4byte 0x000003FF
_08069C30: .4byte 0x0003FFFF
_08069C34: .4byte 0x0002FFFF
_08069C38:
	ldr r0, [r4, #0x38]
	subs r0, #8
	str r0, [r4, #0x38]
	ldr r1, _08069C64 @ =0xFFFFFC00
	cmp r0, r1
	bgt _08069C46
	str r1, [r4, #0x38]
_08069C46:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x38]
	adds r0, r0, r1
	ldr r1, _08069C68 @ =0x0003FFFF
	ands r0, r1
	str r0, [r4, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	cmp r0, r1
	bgt _08069D0A
	str r1, [r4, #0x34]
	movs r0, #0xa0
	lsls r0, r0, #1
	b _08069D08
	.align 2, 0
_08069C64: .4byte 0xFFFFFC00
_08069C68: .4byte 0x0003FFFF
_08069C6C:
	ldr r0, [r4, #0x3c]
	ldr r3, _08069C84 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r4, #0x3c]
	movs r1, #0xc0
	lsls r1, r1, #7
	cmp r0, r1
	bgt _08069D0A
	str r1, [r4, #0x3c]
	strh r2, [r4, #0x2c]
	b _08069D0A
	.align 2, 0
_08069C84: .4byte 0xFFFFFE00
_08069C88:
	ldrb r0, [r4, #0xe]
	movs r1, #1
	eors r0, r1
	movs r1, #0
	strb r0, [r4, #0xe]
	strh r1, [r4, #0x30]
	b _08069D02
_08069C96:
	ldr r0, [r4, #0x44]
	subs r0, #0x20
	str r0, [r4, #0x44]
	ldr r1, [r4, #0x3c]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	movs r0, #0xe0
	lsls r0, r0, #6
	cmp r1, r0
	bgt _08069D0A
	str r0, [r4, #0x3c]
	movs r0, #0x78
	strh r0, [r4, #0x2e]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #0x20
	movs r2, #0
	bl CreateScreenShake
	ldr r0, _08069CD0 @ =0x00000225
	bl m4aSongNumStart
	movs r0, #0xff
	lsls r0, r0, #1
	b _08069D08
	.align 2, 0
_08069CD0: .4byte 0x00000225
_08069CD4:
	ldrh r0, [r4, #0x2e]
	subs r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08069D0A
	movs r0, #0x82
	lsls r0, r0, #2
	b _08069D08
_08069CE6:
	ldr r0, [r4, #0x3c]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r4, #0x3c]
	ldr r1, _08069DD4 @ =0x00005FFF
	cmp r0, r1
	ble _08069D0A
	movs r0, #0xc0
	lsls r0, r0, #7
	str r0, [r4, #0x3c]
	movs r0, #0
	strb r0, [r4, #0x12]
	strh r0, [r4, #0x30]
_08069D02:
	movs r0, #0x3c
_08069D04:
	strh r0, [r4, #0x2e]
	movs r0, #0x64
_08069D08:
	strh r0, [r4, #0x2c]
_08069D0A:
	ldr r0, [r4, #0x34]
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	ldr r6, _08069DD8 @ =gSineTable
	movs r0, #0x80
	lsls r0, r0, #1
	mov ip, r0
	adds r7, r1, r0
	lsls r0, r7, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r2, [r4, #0x3c]
	muls r0, r2, r0
	cmp r0, #0
	bge _08069D2E
	ldr r3, _08069DDC @ =0x00003FFF
	adds r0, r0, r3
_08069D2E:
	asrs r3, r0, #0xe
	lsls r0, r1, #1
	adds r0, r0, r6
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r2, r0
	cmp r0, #0
	bge _08069D42
	ldr r1, _08069DDC @ =0x00003FFF
	adds r0, r0, r1
_08069D42:
	asrs r5, r0, #0xe
	ldr r1, [r4]
	adds r1, r1, r3
	str r1, [r4, #0x58]
	ldr r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r4, #0x5c]
	asrs r1, r1, #8
	ldr r2, _08069DE0 @ =gCamera
	ldr r0, [r2]
	subs r1, r1, r0
	mov r3, r8
	strh r1, [r3, #0x10]
	ldr r0, [r4, #0x5c]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x12]
	ldrh r0, [r4, #0x2c]
	cmp r0, #0x78
	bne _08069DC6
	ldr r5, _08069DE4 @ =0x000003FF
	adds r0, r5, #0
	adds r1, r0, #0
	ands r1, r7
	lsls r0, r1, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r5, [r0, r2]
	mov r3, ip
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r3, [r0, r1]
	ldrb r0, [r4, #0xe]
	movs r2, #4
	cmp r0, #0
	bne _08069D92
	movs r2, #2
_08069D92:
	lsls r2, r2, #2
	adds r0, r4, #0
	adds r0, #0x14
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r4, #0
	adds r0, #0x16
	adds r0, r0, r2
	movs r5, #0
	ldrsh r2, [r0, r5]
	adds r0, r3, #0
	muls r0, r2, r0
	adds r1, r1, r0
	asrs r1, r1, #6
	ldr r0, [r4, #0x5c]
	adds r0, r0, r1
	lsls r2, r2, #8
	subs r5, r0, r2
	ldr r0, _08069DE8 @ =0x0000A9FF
	cmp r5, r0
	ble _08069DC6
	movs r0, #0xc8
	strh r0, [r4, #0x2c]
_08069DC6:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08069DD4: .4byte 0x00005FFF
_08069DD8: .4byte gSineTable
_08069DDC: .4byte 0x00003FFF
_08069DE0: .4byte gCamera
_08069DE4: .4byte 0x000003FF
_08069DE8: .4byte 0x0000A9FF

.syntax divided
