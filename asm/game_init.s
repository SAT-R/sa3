.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start GameInit
GameInit: @ 0x080BB9EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _080BBA70 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	subs r1, #4
	ldr r2, _080BBA74 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080BBA78 @ =gFlags
	movs r1, #0
	str r1, [r2]
	ldr r0, _080BBA7C @ =gUnknown_03003C00
	str r1, [r0]
	ldr r1, _080BBA80 @ =gUnknown_030035A4
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, _080BBA84 @ =0x04000134
	ldrh r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x18
	lsrs r0, r3, #0x10
	ldr r5, _080BBA88 @ =gUnknown_030035A0
	ldr r6, _080BBA8C @ =gUnknown_03003B64
	ldr r4, _080BBA90 @ =gUnknown_03003D20
	mov r8, r4
	ldr r7, _080BBA94 @ =gUnknown_03006840
	mov sb, r7
	ldr r4, _080BBA98 @ =gUnknown_03006208
	mov sl, r4
	ldr r7, _080BBA9C @ =gUnknown_03003F34
	mov ip, r7
	add r4, sp, #4
	cmp r1, r0
	beq _080BBA60
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r2]
	ldr r1, _080BBAA0 @ =0x040000D4
	ldr r0, _080BBAA4 @ =0x0600C000
	str r0, [r1]
	ldr r0, _080BBAA8 @ =gUnknown_02035000
	str r0, [r1, #4]
	ldr r0, _080BBAAC @ =0x80005000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080BBA58:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _080BBA58
_080BBA60:
	ldrh r0, [r5]
	cmp r0, #0xf
	bne _080BBAB0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	b _080BBAB2
	.align 2, 0
_080BBA70: .4byte 0x04000208
_080BBA74: .4byte 0x00004014
_080BBA78: .4byte gFlags
_080BBA7C: .4byte gUnknown_03003C00
_080BBA80: .4byte gUnknown_030035A4
_080BBA84: .4byte 0x04000134
_080BBA88: .4byte gUnknown_030035A0
_080BBA8C: .4byte gUnknown_03003B64
_080BBA90: .4byte gUnknown_03003D20
_080BBA94: .4byte gUnknown_03006840
_080BBA98: .4byte gUnknown_03006208
_080BBA9C: .4byte gUnknown_03003F34
_080BBAA0: .4byte 0x040000D4
_080BBAA4: .4byte 0x0600C000
_080BBAA8: .4byte gUnknown_02035000
_080BBAAC: .4byte 0x80005000
_080BBAB0:
	movs r0, #0
_080BBAB2:
	str r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r1, _080BBE28 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080BBE2C @ =0x85006000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080BBADC
_080BBAD4:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080BBAD4
_080BBADC:
	movs r0, #0
	str r0, [sp]
	ldr r1, _080BBE28 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080BBE30 @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080BBB04
_080BBAFC:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080BBAFC
_080BBB04:
	movs r0, #0
	str r0, [sp]
	ldr r1, _080BBE28 @ =0x040000D4
	mov r7, sp
	str r7, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080BBE30 @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _080BBB2C
_080BBB24:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _080BBB24
_080BBB2C:
	movs r0, #0xff
	strb r0, [r6]
	movs r0, #0
	ldr r1, _080BBE34 @ =gUnknown_03003F94
	strb r0, [r1]
	mov r2, r8
	strb r0, [r2]
	mov r7, sb
	strb r0, [r7]
	mov r1, sl
	strb r0, [r1]
	mov r2, ip
	strb r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r7, sp
	str r7, [r0]
	ldr r1, _080BBE38 @ =gUnknown_03003590
	str r1, [r0, #4]
	ldr r1, _080BBE3C @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBB6E
_080BBB66:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBB66
_080BBB6E:
	movs r0, #0
	ldr r2, _080BBE40 @ =gUnknown_03006230
	str r0, [r2]
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r7, sp
	str r7, [r0]
	ldr r1, _080BBE44 @ =gUnknown_03003C10
	str r1, [r0, #4]
	ldr r1, _080BBE3C @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBB9A
_080BBB92:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBB92
_080BBB9A:
	movs r1, #0
	ldr r2, _080BBE48 @ =gUnknown_03002AF4
	strh r1, [r2]
	strh r1, [r2, #2]
	movs r0, #0x80
	ldr r7, _080BBE4C @ =gDispCnt
	strh r0, [r7]
	str r1, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _080BBE50 @ =gUnknown_030035D0
	str r2, [r0, #4]
	ldr r1, _080BBE54 @ =0x85000060
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBBCE
_080BBBC6:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBBC6
_080BBBCE:
	movs r0, #0
	ldr r7, _080BBE58 @ =gUnknown_03002C00
	strb r0, [r7]
	ldr r1, _080BBE5C @ =gUnknown_03003F90
	strb r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r4]
	ldr r0, _080BBE28 @ =0x040000D4
	str r4, [r0]
	ldr r7, _080BBE60 @ =gUnknown_03006240
	str r7, [r0, #4]
	ldr r1, _080BBE64 @ =0x81000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBC02
_080BBBFA:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBBFA
_080BBC02:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r4]
	ldr r0, _080BBE28 @ =0x040000D4
	str r4, [r0]
	ldr r2, _080BBE68 @ =gUnknown_03003750
	str r2, [r0, #4]
	ldr r1, _080BBE64 @ =0x81000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBC2C
_080BBC24:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBC24
_080BBC2C:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r4, sp
	str r4, [r0]
	ldr r7, _080BBE6C @ =gUnknown_03002B50
	str r7, [r0, #4]
	ldr r1, _080BBE70 @ =0x85000008
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBC56
_080BBC4E:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBC4E
_080BBC56:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _080BBE74 @ =gUnknown_03006210
	str r2, [r0, #4]
	ldr r1, _080BBE70 @ =0x85000008
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBC80
_080BBC78:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBC78
_080BBC80:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r4, sp
	str r4, [r0]
	ldr r7, _080BBE78 @ =gObjPalette
	str r7, [r0, #4]
	ldr r1, _080BBE7C @ =0x85000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBCA8
_080BBCA0:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBCA0
_080BBCA8:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _080BBE80 @ =gUnknown_03003D30
	str r2, [r0, #4]
	ldr r1, _080BBE7C @ =0x85000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBCD0
_080BBCC8:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBCC8
_080BBCD0:
	bl sub_80C4B48
	ldr r0, _080BBE84 @ =gUnknown_03002C30
	movs r3, #0
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strh r2, [r0, #0x10]
	strh r1, [r0, #0x12]
	strh r1, [r0, #0x14]
	strh r2, [r0, #0x16]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldr r0, _080BBE88 @ =gUnknown_03002C24
	strb r3, [r0]
	ldr r0, _080BBE8C @ =gUnknown_03002C54
	strh r1, [r0]
	ldr r0, _080BBE90 @ =gUnknown_03002AF0
	strh r2, [r0]
	ldr r0, _080BBE94 @ =gUnknown_03006844
	strh r2, [r0]
	ldr r0, _080BBE98 @ =gUnknown_03003F3C
	strh r1, [r0]
	ldr r0, _080BBE9C @ =gUnknown_03006204
	strh r1, [r0]
	ldr r0, _080BBEA0 @ =gUnknown_03002C5C
	strh r1, [r0]
	ldr r0, _080BBEA4 @ =gUnknown_03003C0C
	strh r1, [r0]
	ldr r0, _080BBEA8 @ =gUnknown_03006848
	strh r2, [r0]
	ldr r0, _080BBEAC @ =gWinRegs
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _080BBEB0 @ =gBldRegs
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _080BBEB4 @ =gUnknown_03006868
	str r1, [r0]
	movs r2, #0
	ldr r6, _080BBEB8 @ =gUnknown_03003B70
	movs r5, #0x14
	ldr r4, _080BBEBC @ =gUnknown_03003C30
	movs r3, #8
_080BBD3E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r6
	strb r5, [r1]
	adds r1, r0, r4
	strb r3, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _080BBD3E
	ldr r0, _080BBEC0 @ =gUnknown_03006C10
	movs r1, #0
	strb r1, [r0, #8]
	ldr r0, _080BBEC4 @ =gUnknown_03002B80
	strh r1, [r0]
	ldr r0, _080BBEC8 @ =gUnknown_03006860
	str r1, [r0]
	ldr r0, _080BBECC @ =gUnknown_03003574
	str r1, [r0]
	movs r2, #0
	ldr r5, _080BBED0 @ =gUnknown_03002E70
	ldr r6, _080BBED4 @ =gUnknown_03002B84
	ldr r7, _080BBED8 @ =gUnknown_030035BC
	ldr r4, _080BBEDC @ =gUnknown_03003C5C
	mov ip, r4
	ldr r0, _080BBEE0 @ =gUnknown_03003F30
	mov r8, r0
	ldr r1, _080BBEE4 @ =gUnknown_03002B8C
	mov sb, r1
	ldr r4, _080BBEE8 @ =gUnknown_03002BF4
	mov sl, r4
	ldr r4, _080BBEEC @ =gIntrTable
	ldr r3, _080BBEF0 @ =gUnknown_082B483C
_080BBD84:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r2, r0, r4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xe
	ble _080BBD84
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _080BBEF4 @ =0x85000140
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBDC4
_080BBDBC:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBDBC
_080BBDC4:
	str r5, [r6]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r7]
	movs r0, #0
	mov r4, ip
	str r0, [r4]
	mov r7, r8
	strb r0, [r7]
	mov r1, sb
	strb r0, [r1]
	mov r2, sl
	strb r0, [r2]
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r4, sp
	str r4, [r0]
	ldr r7, _080BBEF8 @ =gUnknown_03003B50
	str r7, [r0, #4]
	ldr r1, _080BBE3C @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBE06
_080BBDFE:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBDFE
_080BBE06:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBE28 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _080BBEFC @ =gUnknown_03003FA0
	str r2, [r0, #4]
	ldr r1, _080BBE3C @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	b _080BBF00
	.align 2, 0
_080BBE28: .4byte 0x040000D4
_080BBE2C: .4byte 0x85006000
_080BBE30: .4byte 0x85000100
_080BBE34: .4byte gUnknown_03003F94
_080BBE38: .4byte gUnknown_03003590
_080BBE3C: .4byte 0x85000004
_080BBE40: .4byte gUnknown_03006230
_080BBE44: .4byte gUnknown_03003C10
_080BBE48: .4byte gUnknown_03002AF4
_080BBE4C: .4byte gDispCnt
_080BBE50: .4byte gUnknown_030035D0
_080BBE54: .4byte 0x85000060
_080BBE58: .4byte gUnknown_03002C00
_080BBE5C: .4byte gUnknown_03003F90
_080BBE60: .4byte gUnknown_03006240
_080BBE64: .4byte 0x81000200
_080BBE68: .4byte gUnknown_03003750
_080BBE6C: .4byte gUnknown_03002B50
_080BBE70: .4byte 0x85000008
_080BBE74: .4byte gUnknown_03006210
_080BBE78: .4byte gObjPalette
_080BBE7C: .4byte 0x85000080
_080BBE80: .4byte gUnknown_03003D30
_080BBE84: .4byte gUnknown_03002C30
_080BBE88: .4byte gUnknown_03002C24
_080BBE8C: .4byte gUnknown_03002C54
_080BBE90: .4byte gUnknown_03002AF0
_080BBE94: .4byte gUnknown_03006844
_080BBE98: .4byte gUnknown_03003F3C
_080BBE9C: .4byte gUnknown_03006204
_080BBEA0: .4byte gUnknown_03002C5C
_080BBEA4: .4byte gUnknown_03003C0C
_080BBEA8: .4byte gUnknown_03006848
_080BBEAC: .4byte gWinRegs
_080BBEB0: .4byte gBldRegs
_080BBEB4: .4byte gUnknown_03006868
_080BBEB8: .4byte gUnknown_03003B70
_080BBEBC: .4byte gUnknown_03003C30
_080BBEC0: .4byte gUnknown_03006C10
_080BBEC4: .4byte gUnknown_03002B80
_080BBEC8: .4byte gUnknown_03006860
_080BBECC: .4byte gUnknown_03003574
_080BBED0: .4byte gUnknown_03002E70
_080BBED4: .4byte gUnknown_03002B84
_080BBED8: .4byte gUnknown_030035BC
_080BBEDC: .4byte gUnknown_03003C5C
_080BBEE0: .4byte gUnknown_03003F30
_080BBEE4: .4byte gUnknown_03002B8C
_080BBEE8: .4byte gUnknown_03002BF4
_080BBEEC: .4byte gIntrTable
_080BBEF0: .4byte gUnknown_082B483C
_080BBEF4: .4byte 0x85000140
_080BBEF8: .4byte gUnknown_03003B50
_080BBEFC: .4byte gUnknown_03003FA0
_080BBF00:
	bge _080BBF0A
_080BBF02:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBF02
_080BBF0A:
	movs r0, #0
	ldr r4, _080BBFA8 @ =gUnknown_03006200
	strb r0, [r4]
	ldr r7, _080BBFAC @ =gUnknown_03002C58
	strb r0, [r7]
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBFB0 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _080BBFB4 @ =gUnknown_03002B70
	str r2, [r0, #4]
	ldr r1, _080BBFB8 @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBF3C
_080BBF34:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBF34
_080BBF3C:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BBFB0 @ =0x040000D4
	mov r4, sp
	str r4, [r0]
	ldr r7, _080BBFBC @ =gUnknown_03006850
	str r7, [r0, #4]
	ldr r1, _080BBFB8 @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BBF64
_080BBF5C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BBF5C
_080BBF64:
	bl m4aSoundInit
	ldr r0, _080BBFC0 @ =0x0093A600
	bl m4aSoundMode
	ldr r1, _080BBFC4 @ =gExecSoundMain
	movs r0, #1
	strb r0, [r1]
	bl TasksInit
	bl EwramInitHeap
	ldr r1, _080BBFC8 @ =gVramHeapMaxTileSlots
	movs r2, #0xbc
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080BBFCC @ =gUnknown_03002C50
	ldr r0, _080BBFD0 @ =0x06012200
	str r0, [r1]
	bl VramResetHeapState
	bl IdentifyFlash
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080BBFD8
	ldr r0, _080BBFD4 @ =gFlags
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0]
	b _080BBFE0
	.align 2, 0
_080BBFA8: .4byte gUnknown_03006200
_080BBFAC: .4byte gUnknown_03002C58
_080BBFB0: .4byte 0x040000D4
_080BBFB4: .4byte gUnknown_03002B70
_080BBFB8: .4byte 0x85000004
_080BBFBC: .4byte gUnknown_03006850
_080BBFC0: .4byte 0x0093A600
_080BBFC4: .4byte gExecSoundMain
_080BBFC8: .4byte gVramHeapMaxTileSlots
_080BBFCC: .4byte gUnknown_03002C50
_080BBFD0: .4byte 0x06012200
_080BBFD4: .4byte gFlags
_080BBFD8:
	ldr r1, _080BC094 @ =gUnknown_03001EC4
	movs r0, #1
	bl SetFlashTimerIntr
_080BBFE0:
	ldr r1, _080BC098 @ =0x040000D4
	ldr r0, _080BC09C @ =IntrMain
	str r0, [r1]
	ldr r2, _080BC0A0 @ =gUnknown_03001EF0
	str r2, [r1, #4]
	ldr r0, _080BC0A4 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r3, #0x80
	lsls r3, r3, #0x18
	ldr r4, _080BC0A8 @ =gUnknown_03003C40
	ldr r5, _080BC0AC @ =gUnknown_03002B90
	ldr r6, _080BC0B0 @ =gUnknown_03002C64
	ldr r7, _080BC0B4 @ =gUnknown_03002C68
	cmp r0, #0
	bge _080BC00A
_080BC002:
	ldr r0, [r1, #8]
	ands r0, r3
	cmp r0, #0
	bne _080BC002
_080BC00A:
	ldr r0, _080BC0B8 @ =gUnknown_03007FFC
	str r2, [r0]
	ldr r0, _080BC0BC @ =0x04000200
	movs r2, #1
	strh r2, [r0]
	ldr r1, _080BC0C0 @ =0x04000004
	movs r0, #0x18
	strh r0, [r1]
	ldr r0, _080BC0C4 @ =0x04000208
	strh r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BC098 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r4, [r0, #4]
	ldr r1, _080BC0C8 @ =0x85000006
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BC044
_080BC03C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BC03C
_080BC044:
	movs r0, #0
	str r0, [sp]
	ldr r0, _080BC098 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	str r5, [r0, #4]
	ldr r1, _080BC0CC @ =0x85000018
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _080BC06A
_080BC062:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BC062
_080BC06A:
	movs r4, #0
	str r4, [r6]
	strb r4, [r7]
	movs r0, #0
	bl MultiSioInit
	ldr r0, _080BC0D0 @ =gUnknown_0300620C
	strb r4, [r0]
	ldr r0, _080BC0D4 @ =gUnknown_03002BF0
	str r4, [r0]
	ldr r0, _080BC0D8 @ =gUnknown_03002C60
	strb r4, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BC094: .4byte gUnknown_03001EC4
_080BC098: .4byte 0x040000D4
_080BC09C: .4byte IntrMain
_080BC0A0: .4byte gUnknown_03001EF0
_080BC0A4: .4byte 0x84000080
_080BC0A8: .4byte gUnknown_03003C40
_080BC0AC: .4byte gUnknown_03002B90
_080BC0B0: .4byte gUnknown_03002C64
_080BC0B4: .4byte gUnknown_03002C68
_080BC0B8: .4byte gUnknown_03007FFC
_080BC0BC: .4byte 0x04000200
_080BC0C0: .4byte 0x04000004
_080BC0C4: .4byte 0x04000208
_080BC0C8: .4byte 0x85000006
_080BC0CC: .4byte 0x85000018
_080BC0D0: .4byte gUnknown_0300620C
_080BC0D4: .4byte gUnknown_03002BF0
_080BC0D8: .4byte gUnknown_03002C60

	thumb_func_start GameLoop
GameLoop: @ 0x080BC0DC
	push {r4, r5, r6, lr}
	ldr r5, _080BC120 @ =gFlags
	movs r6, #0x80
	lsls r6, r6, #3
_080BC0E4:
	ldr r1, _080BC124 @ =gExecSoundMain
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080BC0FA
	bl sub_80BCB84
_080BC0FA:
	ldr r0, _080BC128 @ =gUnknown_03003B64
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080BC154
	bl sub_80BCA94
	ldr r0, _080BC12C @ =gUnknown_03002C68
	ldrb r0, [r0]
	cmp r0, #0
	beq _080BC13C
	ldr r0, _080BC130 @ =gUnknown_03003C40
	ldr r1, _080BC134 @ =gUnknown_03002B90
	movs r2, #0
	bl MultiSioMain
	ldr r1, _080BC138 @ =gUnknown_03002C64
	str r0, [r1]
	b _080BC150
	.align 2, 0
_080BC120: .4byte gFlags
_080BC124: .4byte gExecSoundMain
_080BC128: .4byte gUnknown_03003B64
_080BC12C: .4byte gUnknown_03002C68
_080BC130: .4byte gUnknown_03003C40
_080BC134: .4byte gUnknown_03002B90
_080BC138: .4byte gUnknown_03002C64
_080BC13C:
	ldr r0, [r5]
	movs r1, #0x90
	lsls r1, r1, #0xc
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	bne _080BC150
	bl sub_80C6908
_080BC150:
	bl TasksExec
_080BC154:
	ldr r1, _080BC184 @ =gUnknown_03003C00
	ldr r4, _080BC188 @ =gFlags
	ldr r0, [r4]
	str r0, [r1]
	bl VBlankIntrWait
	ldr r1, _080BC18C @ =gUnknown_03002C24
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080BC190
	bl sub_80BC5B0
	ldr r0, [r4]
	ands r0, r6
	cmp r0, #0
	bne _080BC1AC
	bl sub_80BCD5C
	b _080BC1A0
	.align 2, 0
_080BC184: .4byte gUnknown_03003C00
_080BC188: .4byte gFlags
_080BC18C: .4byte gUnknown_03002C24
_080BC190:
	bl sub_80BC1FC
	ldr r0, [r4]
	ands r0, r6
	cmp r0, #0
	bne _080BC1AC
	bl sub_80BC4D0
_080BC1A0:
	ldr r1, _080BC1BC @ =gFlags
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _080BC1C0
_080BC1AC:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5]
	ldr r1, _080BC1BC @ =gFlags
	b _080BC1C6
	.align 2, 0
_080BC1BC: .4byte gFlags
_080BC1C0:
	ldr r0, _080BC1F4 @ =0xFFFFF7FF
	ands r2, r0
	str r2, [r1]
_080BC1C6:
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080BC1D6
	bl m4aSoundMain
_080BC1D6:
	ldr r2, _080BC1F8 @ =0x04000004
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080BC1E4
	b _080BC0E4
_080BC1E4:
	movs r3, #1
_080BC1E6:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080BC1E6
	b _080BC0E4
	.align 2, 0
_080BC1F4: .4byte 0xFFFFF7FF
_080BC1F8: .4byte 0x04000004

	thumb_func_start sub_80BC1FC
sub_80BC1FC: @ 0x080BC1FC
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _080BC2DC @ =gDispCnt
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _080BC2E0 @ =0x040000D4
	ldr r0, _080BC2E4 @ =gUnknown_030035C0
	str r0, [r3]
	ldr r0, _080BC2E8 @ =0x04000008
	str r0, [r3, #4]
	ldr r0, _080BC2EC @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _080BC2F0 @ =gFlags
	ldr r2, [r1]
	movs r5, #1
	adds r0, r2, #0
	ands r0, r5
	adds r6, r1, #0
	cmp r0, #0
	beq _080BC240
	ldr r0, _080BC2F4 @ =gUnknown_03003D30
	str r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r0, _080BC2F8 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r2, r5
	str r2, [r6]
_080BC240:
	ldr r0, [r6]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BC25E
	ldr r0, _080BC2FC @ =gObjPalette
	str r0, [r3]
	ldr r0, _080BC300 @ =0x05000200
	str r0, [r3, #4]
	ldr r0, _080BC2F8 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r6]
	eors r0, r1
	str r0, [r6]
_080BC25E:
	ldr r0, _080BC304 @ =gWinRegs
	str r0, [r3]
	ldr r0, _080BC308 @ =0x04000040
	str r0, [r3, #4]
	ldr r0, _080BC30C @ =0x84000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _080BC310 @ =gBldRegs
	str r0, [r3]
	ldr r0, _080BC314 @ =0x04000050
	str r0, [r3, #4]
	ldr r0, _080BC318 @ =0x80000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _080BC31C @ =gUnknown_03003C10
	str r0, [r3]
	ldr r0, _080BC320 @ =0x04000010
	str r0, [r3, #4]
	ldr r0, _080BC324 @ =0x80000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _080BC328 @ =gUnknown_03002C30
	str r0, [r3]
	ldr r0, _080BC32C @ =0x04000020
	str r0, [r3, #4]
	ldr r0, _080BC330 @ =0x84000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r6]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080BC34C
	ldr r2, _080BC334 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	mov r0, sp
	str r0, [r3]
	ldr r1, _080BC338 @ =gUnknown_03003FA0
	str r1, [r3, #4]
	ldr r0, _080BC33C @ =0x85000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r2, _080BC340 @ =gUnknown_03002B8C
	ldrb r0, [r2]
	cmp r0, #0
	beq _080BC2D4
	ldr r0, _080BC344 @ =gUnknown_03003B50
	str r0, [r3]
	str r1, [r3, #4]
	ldrb r0, [r2]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_080BC2D4:
	ldr r1, _080BC348 @ =gUnknown_03002BF4
	ldrb r0, [r2]
	strb r0, [r1]
	b _080BC35A
	.align 2, 0
_080BC2DC: .4byte gDispCnt
_080BC2E0: .4byte 0x040000D4
_080BC2E4: .4byte gUnknown_030035C0
_080BC2E8: .4byte 0x04000008
_080BC2EC: .4byte 0x84000002
_080BC2F0: .4byte gFlags
_080BC2F4: .4byte gUnknown_03003D30
_080BC2F8: .4byte 0x84000080
_080BC2FC: .4byte gObjPalette
_080BC300: .4byte 0x05000200
_080BC304: .4byte gWinRegs
_080BC308: .4byte 0x04000040
_080BC30C: .4byte 0x84000003
_080BC310: .4byte gBldRegs
_080BC314: .4byte 0x04000050
_080BC318: .4byte 0x80000003
_080BC31C: .4byte gUnknown_03003C10
_080BC320: .4byte 0x04000010
_080BC324: .4byte 0x80000008
_080BC328: .4byte gUnknown_03002C30
_080BC32C: .4byte 0x04000020
_080BC330: .4byte 0x84000008
_080BC334: .4byte 0x04000200
_080BC338: .4byte gUnknown_03003FA0
_080BC33C: .4byte 0x85000004
_080BC340: .4byte gUnknown_03002B8C
_080BC344: .4byte gUnknown_03003B50
_080BC348: .4byte gUnknown_03002BF4
_080BC34C:
	ldr r2, _080BC438 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080BC43C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080BC440 @ =gUnknown_03002BF4
	strb r4, [r0]
_080BC35A:
	ldr r0, [r6]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080BC382
	ldr r2, _080BC444 @ =0x040000D4
	ldr r0, _080BC448 @ =gUnknown_03002B84
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _080BC44C @ =gUnknown_03003C5C
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _080BC450 @ =gUnknown_03003F30
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_080BC382:
	ldr r0, _080BC454 @ =gUnknown_03003B64
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080BC3D0
	bl sub_80C1124
	ldr r0, _080BC444 @ =0x040000D4
	ldr r3, _080BC458 @ =gUnknown_03006240
	str r3, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r2, _080BC45C @ =0x80000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _080BC460 @ =0x07000100
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _080BC464 @ =0x07000200
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _080BC468 @ =0x07000300
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_080BC3D0:
	movs r4, #0
	ldr r0, _080BC46C @ =gUnknown_03002C58
	ldrb r1, [r0]
	cmp r4, r1
	bhs _080BC3F4
	ldr r6, _080BC470 @ =gUnknown_03006850
	adds r5, r0, #0
_080BC3DE:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5]
	cmp r4, r0
	blo _080BC3DE
_080BC3F4:
	ldr r0, _080BC474 @ =gFlags
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _080BC484
	movs r0, #0
	str r0, [sp]
	ldr r2, _080BC444 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r1, _080BC470 @ =gUnknown_03006850
	str r1, [r2, #4]
	ldr r0, _080BC478 @ =0x85000004
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, _080BC47C @ =gUnknown_03006200
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BC42E
	ldr r0, _080BC480 @ =gUnknown_03002B70
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r0, [r3]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_080BC42E:
	ldr r1, _080BC46C @ =gUnknown_03002C58
	ldrb r0, [r3]
	strb r0, [r1]
	b _080BC488
	.align 2, 0
_080BC438: .4byte 0x04000200
_080BC43C: .4byte 0x0000FFFD
_080BC440: .4byte gUnknown_03002BF4
_080BC444: .4byte 0x040000D4
_080BC448: .4byte gUnknown_03002B84
_080BC44C: .4byte gUnknown_03003C5C
_080BC450: .4byte gUnknown_03003F30
_080BC454: .4byte gUnknown_03003B64
_080BC458: .4byte gUnknown_03006240
_080BC45C: .4byte 0x80000080
_080BC460: .4byte 0x07000100
_080BC464: .4byte 0x07000200
_080BC468: .4byte 0x07000300
_080BC46C: .4byte gUnknown_03002C58
_080BC470: .4byte gUnknown_03006850
_080BC474: .4byte gFlags
_080BC478: .4byte 0x85000004
_080BC47C: .4byte gUnknown_03006200
_080BC480: .4byte gUnknown_03002B70
_080BC484:
	ldr r0, _080BC49C @ =gUnknown_03002C58
	strb r1, [r0]
_080BC488:
	ldr r1, _080BC4A0 @ =gUnknown_03003B64
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _080BC492
	movs r4, #0
_080BC492:
	movs r0, #0xff
	strb r0, [r1]
	ldr r5, _080BC4A4 @ =gUnknown_082B4874
	b _080BC4AE
	.align 2, 0
_080BC49C: .4byte gUnknown_03002C58
_080BC4A0: .4byte gUnknown_03003B64
_080BC4A4: .4byte gUnknown_082B4874
_080BC4A8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080BC4AE:
	cmp r4, #3
	bhi _080BC4C4
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl _call_via_r0
	cmp r0, #0
	bne _080BC4A8
	ldr r0, _080BC4CC @ =gUnknown_03003B64
	strb r4, [r0]
_080BC4C4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BC4CC: .4byte gUnknown_03003B64

	thumb_func_start sub_80BC4D0
sub_80BC4D0: @ 0x080BC4D0
	push {r4, lr}
	sub sp, #4
	ldr r1, _080BC508 @ =gUnknown_03002B8C
	movs r0, #0
	strb r0, [r1]
	ldr r2, _080BC50C @ =gFlags
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r1, #0x20
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	bne _080BC528
	ldr r1, _080BC510 @ =gUnknown_03002B84
	ldr r0, [r1]
	ldr r2, _080BC514 @ =gUnknown_03002E70
	cmp r0, r2
	bne _080BC51C
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _080BC518 @ =gUnknown_030035BC
	str r2, [r0]
	b _080BC528
	.align 2, 0
_080BC508: .4byte gUnknown_03002B8C
_080BC50C: .4byte gFlags
_080BC510: .4byte gUnknown_03002B84
_080BC514: .4byte gUnknown_03002E70
_080BC518: .4byte gUnknown_030035BC
_080BC51C:
	str r2, [r1]
	ldr r1, _080BC59C @ =gUnknown_030035BC
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
_080BC528:
	ldr r0, [r4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _080BC5A0 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _080BC5A4 @ =gUnknown_03006240
	mov ip, r1
	str r1, [r0, #4]
	ldr r2, _080BC5A8 @ =0x81000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	add r1, ip
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	add r1, ip
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	add r1, ip
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _080BC5AC @ =gUnknown_03006200
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BC59C: .4byte gUnknown_030035BC
_080BC5A0: .4byte 0x040000D4
_080BC5A4: .4byte gUnknown_03006240
_080BC5A8: .4byte 0x81000080
_080BC5AC: .4byte gUnknown_03006200

	thumb_func_start sub_80BC5B0
sub_80BC5B0: @ 0x080BC5B0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _080BC668 @ =gDispCnt
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _080BC66C @ =gUnknown_030035C0
	ldr r7, _080BC670 @ =0x04000008
	ldr r2, _080BC674 @ =0x04000002
	adds r1, r7, #0
	bl CpuSet
	ldr r5, _080BC678 @ =gFlags
	ldr r0, [r5]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _080BC5EA
	ldr r0, _080BC67C @ =gUnknown_03003D30
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, [r5]
	eors r0, r6
	str r0, [r5]
_080BC5EA:
	ldr r0, [r5]
	movs r6, #2
	ands r0, r6
	cmp r0, #0
	beq _080BC604
	ldr r0, _080BC680 @ =gObjPalette
	ldr r1, _080BC684 @ =0x05000200
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, [r5]
	eors r0, r6
	str r0, [r5]
_080BC604:
	ldr r0, _080BC688 @ =gWinRegs
	ldr r1, _080BC68C @ =0x04000040
	ldr r2, _080BC690 @ =0x04000003
	bl CpuSet
	ldr r0, _080BC694 @ =gBldRegs
	ldr r1, _080BC698 @ =0x04000050
	movs r2, #3
	bl CpuSet
	ldr r0, _080BC69C @ =gUnknown_03003C10
	ldr r1, _080BC6A0 @ =0x04000010
	movs r2, #8
	bl CpuSet
	ldr r0, _080BC6A4 @ =gUnknown_03002C30
	ldr r1, _080BC6A8 @ =0x04000020
	adds r2, r7, #0
	bl CpuSet
	ldr r0, [r5]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080BC6C4
	ldr r2, _080BC6AC @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	ldr r5, _080BC6B0 @ =gUnknown_03003FA0
	ldr r2, _080BC6B4 @ =0x01000004
	mov r0, sp
	adds r1, r5, #0
	bl CpuFastSet
	ldr r4, _080BC6B8 @ =gUnknown_03002B8C
	ldrb r0, [r4]
	cmp r0, #0
	beq _080BC660
	ldr r0, _080BC6BC @ =gUnknown_03003B50
	ldrb r2, [r4]
	adds r1, r5, #0
	bl CpuFastSet
_080BC660:
	ldr r1, _080BC6C0 @ =gUnknown_03002BF4
	ldrb r0, [r4]
	strb r0, [r1]
	b _080BC6D2
	.align 2, 0
_080BC668: .4byte gDispCnt
_080BC66C: .4byte gUnknown_030035C0
_080BC670: .4byte 0x04000008
_080BC674: .4byte 0x04000002
_080BC678: .4byte gFlags
_080BC67C: .4byte gUnknown_03003D30
_080BC680: .4byte gObjPalette
_080BC684: .4byte 0x05000200
_080BC688: .4byte gWinRegs
_080BC68C: .4byte 0x04000040
_080BC690: .4byte 0x04000003
_080BC694: .4byte gBldRegs
_080BC698: .4byte 0x04000050
_080BC69C: .4byte gUnknown_03003C10
_080BC6A0: .4byte 0x04000010
_080BC6A4: .4byte gUnknown_03002C30
_080BC6A8: .4byte 0x04000020
_080BC6AC: .4byte 0x04000200
_080BC6B0: .4byte gUnknown_03003FA0
_080BC6B4: .4byte 0x01000004
_080BC6B8: .4byte gUnknown_03002B8C
_080BC6BC: .4byte gUnknown_03003B50
_080BC6C0: .4byte gUnknown_03002BF4
_080BC6C4:
	ldr r2, _080BC748 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080BC74C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080BC750 @ =gUnknown_03002BF4
	strb r4, [r0]
_080BC6D2:
	ldr r0, _080BC754 @ =gUnknown_03003B64
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080BC6EC
	bl sub_80C1124
	ldr r0, _080BC758 @ =gUnknown_03006240
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
_080BC6EC:
	movs r4, #0
	ldr r0, _080BC75C @ =gUnknown_03002C58
	ldrb r1, [r0]
	cmp r4, r1
	bhs _080BC710
	ldr r6, _080BC760 @ =gUnknown_03006850
	adds r5, r0, #0
_080BC6FA:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5]
	cmp r4, r0
	blo _080BC6FA
_080BC710:
	ldr r0, _080BC764 @ =gFlags
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _080BC774
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r5, _080BC760 @ =gUnknown_03006850
	ldr r2, _080BC768 @ =0x01000004
	adds r1, r5, #0
	bl CpuFastSet
	ldr r4, _080BC76C @ =gUnknown_03006200
	ldrb r0, [r4]
	cmp r0, #0
	beq _080BC73E
	ldr r0, _080BC770 @ =gUnknown_03002B70
	ldrb r2, [r4]
	adds r1, r5, #0
	bl CpuFastSet
_080BC73E:
	ldr r1, _080BC75C @ =gUnknown_03002C58
	ldrb r0, [r4]
	strb r0, [r1]
	b _080BC778
	.align 2, 0
_080BC748: .4byte 0x04000200
_080BC74C: .4byte 0x0000FFFD
_080BC750: .4byte gUnknown_03002BF4
_080BC754: .4byte gUnknown_03003B64
_080BC758: .4byte gUnknown_03006240
_080BC75C: .4byte gUnknown_03002C58
_080BC760: .4byte gUnknown_03006850
_080BC764: .4byte gFlags
_080BC768: .4byte 0x01000004
_080BC76C: .4byte gUnknown_03006200
_080BC770: .4byte gUnknown_03002B70
_080BC774:
	ldr r0, _080BC78C @ =gUnknown_03002C58
	strb r1, [r0]
_080BC778:
	ldr r1, _080BC790 @ =gUnknown_03003B64
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _080BC782
	movs r4, #0
_080BC782:
	movs r0, #0xff
	strb r0, [r1]
	ldr r5, _080BC794 @ =gUnknown_082B4874
	b _080BC79E
	.align 2, 0
_080BC78C: .4byte gUnknown_03002C58
_080BC790: .4byte gUnknown_03003B64
_080BC794: .4byte gUnknown_082B4874
_080BC798:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080BC79E:
	cmp r4, #3
	bhi _080BC7B4
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl _call_via_r0
	cmp r0, #0
	bne _080BC798
	ldr r0, _080BC7BC @ =gUnknown_03003B64
	strb r4, [r0]
_080BC7B4:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BC7BC: .4byte gUnknown_03003B64

	thumb_func_start sub_80BC7C0
sub_80BC7C0: @ 0x080BC7C0
	push {r4, r5, r6, lr}
	ldr r4, _080BC84C @ =0x040000B0
	ldrh r1, [r4, #0xa]
	ldr r0, _080BC850 @ =0x0000C5FF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	ldr r0, _080BC854 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	bl m4aSoundVSync
	ldr r1, _080BC858 @ =gUnknown_03007FF8
	ldrh r0, [r1]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _080BC85C @ =gExecSoundMain
	strb r2, [r0]
	ldr r5, _080BC860 @ =gUnknown_03003C00
	ldr r3, [r5]
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	beq _080BC878
	ldr r2, _080BC864 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r2, r4, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r6, r5, #0
	ldr r4, _080BC868 @ =gUnknown_03002B84
	ldr r5, _080BC86C @ =gUnknown_03003C5C
	ldr r3, _080BC870 @ =gUnknown_03003F30
	cmp r0, #0
	bge _080BC81A
_080BC812:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _080BC812
_080BC81A:
	ldr r2, _080BC84C @ =0x040000B0
	ldr r0, [r4]
	str r0, [r2]
	ldr r0, [r5]
	str r0, [r2, #4]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r1, [r3]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r5]
	str r0, [r2, #4]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	ldr r1, _080BC874 @ =0xA2600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _080BC88E
	.align 2, 0
_080BC84C: .4byte 0x040000B0
_080BC850: .4byte 0x0000C5FF
_080BC854: .4byte 0x00007FFF
_080BC858: .4byte gUnknown_03007FF8
_080BC85C: .4byte gExecSoundMain
_080BC860: .4byte gUnknown_03003C00
_080BC864: .4byte 0x04000200
_080BC868: .4byte gUnknown_03002B84
_080BC86C: .4byte gUnknown_03003C5C
_080BC870: .4byte gUnknown_03003F30
_080BC874: .4byte 0xA2600000
_080BC878:
	ldr r4, _080BC8D0 @ =gUnknown_03003C5C
	ldr r0, [r4]
	adds r6, r5, #0
	cmp r0, #0
	beq _080BC88E
	ldr r2, _080BC8D4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080BC8D8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	str r3, [r4]
_080BC88E:
	ldr r0, [r6]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080BC8E8
	ldr r2, _080BC8DC @ =0x04000004
	ldrh r0, [r2]
	movs r3, #0x20
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080BC8E0 @ =gUnknown_03003C58
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _080BC8E4 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _080BC8D4 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	b _080BC904
	.align 2, 0
_080BC8D0: .4byte gUnknown_03003C5C
_080BC8D4: .4byte 0x04000200
_080BC8D8: .4byte 0x0000FFFD
_080BC8DC: .4byte 0x04000004
_080BC8E0: .4byte gUnknown_03003C58
_080BC8E4: .4byte 0x0000FFFB
_080BC8E8:
	ldr r2, _080BC9A8 @ =0x04000004
	ldrh r3, [r2]
	ldr r1, _080BC9AC @ =0x0000FFFB
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2]
	ldrh r3, [r2]
	ldr r0, _080BC9B0 @ =0x0000FFDF
	ands r0, r3
	strh r0, [r2]
	ldr r2, _080BC9B4 @ =0x04000200
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_080BC904:
	ldr r3, [r6]
	movs r4, #0x80
	lsls r4, r4, #8
	ands r3, r4
	cmp r3, #0
	bne _080BC992
	ldr r0, _080BC9B8 @ =0x04000130
	ldrh r1, [r0]
	movs r0, #0xf
	adds r5, r0, #0
	bics r5, r1
	cmp r5, #0xf
	bne _080BC992
	ldr r2, _080BC9BC @ =gFlags
	ldr r1, [r2]
	orrs r1, r4
	ldr r0, _080BC9B4 @ =0x04000200
	strh r3, [r0]
	adds r0, #8
	strh r3, [r0]
	ldr r0, _080BC9A8 @ =0x04000004
	strh r3, [r0]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2]
	ldr r1, _080BC9C0 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _080BC9C4 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _080BC9C8 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _080BC9CC @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	ldr r0, _080BC9D0 @ =gUnknown_030035A0
	strh r5, [r0]
	movs r0, #0x20
	bl SoftReset
_080BC992:
	ldr r1, _080BC9D4 @ =gUnknown_03003574
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _080BC9D8 @ =0x04000202
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BC9A8: .4byte 0x04000004
_080BC9AC: .4byte 0x0000FFFB
_080BC9B0: .4byte 0x0000FFDF
_080BC9B4: .4byte 0x04000200
_080BC9B8: .4byte 0x04000130
_080BC9BC: .4byte gFlags
_080BC9C0: .4byte 0x040000B0
_080BC9C4: .4byte 0x0000C5FF
_080BC9C8: .4byte 0x00007FFF
_080BC9CC: .4byte 0x040000D4
_080BC9D0: .4byte gUnknown_030035A0
_080BC9D4: .4byte gUnknown_03003574
_080BC9D8: .4byte 0x04000202

	thumb_func_start sub_80BC9DC
sub_80BC9DC: @ 0x080BC9DC
	push {r4, r5, r6, r7, lr}
	ldr r2, _080BCA28 @ =gUnknown_03006208
	ldr r0, _080BCA2C @ =gUnknown_03003F34
	ldrb r1, [r2]
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r1, r0
	beq _080BCA8A
	adds r6, r2, #0
_080BC9EE:
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080BCA30 @ =gUnknown_030035D0
	adds r2, r1, r0
	ldrh r0, [r2, #8]
	cmp r0, #0
	beq _080BCA66
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #3
	ldr r3, _080BCA34 @ =0x040000D4
_080BCA08:
	cmp r0, r5
	bls _080BCA40
	ldr r0, [r2]
	adds r0, r0, r4
	str r0, [r3]
	ldr r0, [r2, #4]
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _080BCA38 @ =0x80000200
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _080BCA3C @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r2, #8]
	adds r0, r0, r1
	b _080BCA5C
	.align 2, 0
_080BCA28: .4byte gUnknown_03006208
_080BCA2C: .4byte gUnknown_03003F34
_080BCA30: .4byte gUnknown_030035D0
_080BCA34: .4byte 0x040000D4
_080BCA38: .4byte 0x80000200
_080BCA3C: .4byte 0xFFFFFC00
_080BCA40:
	ldr r0, [r2]
	adds r0, r0, r4
	str r0, [r3]
	ldr r0, [r2, #4]
	adds r0, r0, r4
	str r0, [r3, #4]
	ldrh r0, [r2, #8]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #0
_080BCA5C:
	strh r0, [r2, #8]
	adds r4, r4, r5
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _080BCA08
_080BCA66:
	ldrb r0, [r6]
	adds r2, r0, #1
	movs r0, #0x1f
	ands r2, r0
	strb r2, [r6]
	ldr r0, _080BCA80 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080BCA84
	movs r0, #0
	b _080BCA8C
	.align 2, 0
_080BCA80: .4byte 0x04000004
_080BCA84:
	ldrb r0, [r7]
	cmp r2, r0
	bne _080BC9EE
_080BCA8A:
	movs r0, #1
_080BCA8C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80BCA94
sub_80BCA94: @ 0x080BCA94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _080BCAC8 @ =gUnknown_030035B0
	ldr r0, _080BCACC @ =gUnknown_03003B70
	mov sb, r0
	ldr r1, _080BCAD0 @ =gUnknown_03003C30
	mov r8, r1
	ldr r4, _080BCAD4 @ =gUnknown_030035A0
	ldr r0, _080BCAD8 @ =0x04000130
	ldrh r1, [r0]
	ldr r2, _080BCADC @ =0x000003FF
	adds r0, r2, #0
	bics r0, r1
	strh r0, [r4]
	ldr r1, _080BCAE0 @ =gUnknown_03002B80
	strh r0, [r1]
	ldr r0, _080BCAE4 @ =gUnknown_03006C10
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _080BCAE8
	ldrh r0, [r4]
	bl sub_80C4510
	b _080BCAF2
	.align 2, 0
_080BCAC8: .4byte gUnknown_030035B0
_080BCACC: .4byte gUnknown_03003B70
_080BCAD0: .4byte gUnknown_03003C30
_080BCAD4: .4byte gUnknown_030035A0
_080BCAD8: .4byte 0x04000130
_080BCADC: .4byte 0x000003FF
_080BCAE0: .4byte gUnknown_03002B80
_080BCAE4: .4byte gUnknown_03006C10
_080BCAE8:
	cmp r0, #2
	bne _080BCAF2
	bl sub_80C44E0
	strh r0, [r4]
_080BCAF2:
	ldr r2, _080BCB38 @ =gUnknown_03003F8C
	ldr r6, _080BCB3C @ =gUnknown_030035A0
	ldr r5, _080BCB40 @ =gUnknown_03003F38
	ldrh r3, [r6]
	ldrh r4, [r5]
	adds r0, r3, #0
	eors r0, r4
	adds r1, r0, #0
	ands r1, r3
	strh r1, [r2]
	ldr r2, _080BCB44 @ =gUnknown_03003B7C
	ands r0, r4
	strh r0, [r2]
	strh r3, [r5]
	ldr r0, _080BCB48 @ =gUnknown_030035C8
	strh r1, [r0]
	movs r1, #0
	mov ip, r6
	movs r6, #1
	adds r5, r0, #0
_080BCB1A:
	mov r3, ip
	ldrh r0, [r3]
	lsls r1, r1, #0x18
	asrs r2, r1, #0x18
	asrs r0, r2
	ands r0, r6
	adds r4, r1, #0
	cmp r0, #0
	bne _080BCB4C
	adds r0, r7, r2
	mov r3, sb
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	b _080BCB6A
	.align 2, 0
_080BCB38: .4byte gUnknown_03003F8C
_080BCB3C: .4byte gUnknown_030035A0
_080BCB40: .4byte gUnknown_03003F38
_080BCB44: .4byte gUnknown_03003B7C
_080BCB48: .4byte gUnknown_030035C8
_080BCB4C:
	adds r3, r7, r2
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BCB58
	subs r0, #1
	b _080BCB68
_080BCB58:
	adds r0, r6, #0
	lsls r0, r2
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
_080BCB68:
	strb r0, [r3]
_080BCB6A:
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r4, r2
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _080BCB1A
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80BCB84
sub_80BCB84: @ 0x080BCB84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r1, _080BCC4C @ =gUnknown_03003C00
	ldr r0, [r1]
	str r0, [sp, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r2, _080BCC4C @ =gUnknown_03003C00
	str r0, [r2]
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	strh r0, [r1]
	add r0, sp, #8
	mov sl, r0
	ldr r1, _080BCC50 @ =0x04000004
	mov sb, r1
	ldrh r0, [r1]
	mov r2, sl
	strh r0, [r2]
	movs r0, #0x80
	subs r1, #4
	strh r0, [r1]
	ldr r1, _080BCC54 @ =0x04000132
	ldr r2, _080BCC58 @ =0x00008304
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _080BCC5C @ =0x04000208
	movs r6, #0
	strh r6, [r5]
	mov r0, sb
	strh r6, [r0]
	mov r7, sp
	adds r7, #2
	ldr r4, _080BCC60 @ =0x04000200
	ldrh r0, [r4]
	strh r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r4]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	mov r8, r0
	strh r0, [r5]
	bl SetBIASLevel_000
	svc #3
	bl SetBIASLevel_200
	strh r6, [r5]
	ldrh r0, [r7]
	strh r0, [r4]
	mov r1, r8
	strh r1, [r5]
	mov r2, sl
	ldrh r0, [r2]
	mov r1, sb
	strh r0, [r1]
	bl VBlankIntrWait
	mov r0, sp
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x13
	strh r0, [r2]
	ldr r0, [sp, #4]
	ldr r1, _080BCC4C @ =gUnknown_03003C00
	str r0, [r1]
	ldr r2, _080BCC64 @ =gFlags
	ldr r0, [r2]
	ldr r1, _080BCC68 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r2]
	bl m4aSoundVSyncOn
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080BCC4C: .4byte gUnknown_03003C00
_080BCC50: .4byte 0x04000004
_080BCC54: .4byte 0x04000132
_080BCC58: .4byte 0x00008304
_080BCC5C: .4byte 0x04000208
_080BCC60: .4byte 0x04000200
_080BCC64: .4byte gFlags
_080BCC68: .4byte 0xFFFBFFFF

	thumb_func_start sub_80BCC6C
sub_80BCC6C: @ 0x080BCC6C
	push {r4, r5, r6, lr}
	ldr r0, _080BCCAC @ =0x04000006
	ldrb r0, [r0]
	adds r5, r0, #0
	cmp r5, #0x9f
	bhi _080BCC9E
	movs r4, #0
	ldr r0, _080BCCB0 @ =gUnknown_03002BF4
	ldrb r0, [r0]
	cmp r4, r0
	bhs _080BCC9E
	ldr r6, _080BCCB4 @ =gUnknown_03003FA0
_080BCC84:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _080BCCB0 @ =gUnknown_03002BF4
	ldrb r0, [r0]
	cmp r4, r0
	blo _080BCC84
_080BCC9E:
	ldr r1, _080BCCB8 @ =0x04000202
	movs r0, #2
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BCCAC: .4byte 0x04000006
_080BCCB0: .4byte gUnknown_03002BF4
_080BCCB4: .4byte gUnknown_03003FA0
_080BCCB8: .4byte 0x04000202

	thumb_func_start sub_80BCCBC
sub_80BCCBC: @ 0x080BCCBC
	ldr r1, _080BCCC4 @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCCC4: .4byte 0x04000202

	thumb_func_start sub_80BCCC8
sub_80BCCC8: @ 0x080BCCC8
	ldr r1, _080BCCD4 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCCD4: .4byte 0x04000202

	thumb_func_start sub_80BCCD8
sub_80BCCD8: @ 0x080BCCD8
	ldr r1, _080BCCE4 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCCE4: .4byte 0x04000202

	thumb_func_start sub_80BCCE8
sub_80BCCE8: @ 0x080BCCE8
	ldr r1, _080BCCF4 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCCF4: .4byte 0x04000202

	thumb_func_start sub_80BCCF8
sub_80BCCF8: @ 0x080BCCF8
	ldr r1, _080BCD04 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD04: .4byte 0x04000202

	thumb_func_start sub_80BCD08
sub_80BCD08: @ 0x080BCD08
	ldr r1, _080BCD10 @ =0x04000202
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD10: .4byte 0x04000202

	thumb_func_start sub_80BCD14
sub_80BCD14: @ 0x080BCD14
	ldr r1, _080BCD1C @ =0x04000202
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD1C: .4byte 0x04000202

	thumb_func_start sub_80BCD20
sub_80BCD20: @ 0x080BCD20
	ldr r1, _080BCD28 @ =0x04000202
	movs r0, #0x20
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD28: .4byte 0x04000202

	thumb_func_start sub_80BCD2C
sub_80BCD2C: @ 0x080BCD2C
	ldr r1, _080BCD34 @ =0x04000202
	movs r0, #0x40
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD34: .4byte 0x04000202

	thumb_func_start sub_80BCD38
sub_80BCD38: @ 0x080BCD38
	ldr r1, _080BCD44 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD44: .4byte 0x04000202

	thumb_func_start sub_80BCD48
sub_80BCD48: @ 0x080BCD48
	ldr r1, _080BCD54 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080BCD54: .4byte 0x04000202
_080BCD58:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_80BCD5C
sub_80BCD5C: @ 0x080BCD5C
	push {r4, lr}
	sub sp, #4
	ldr r1, _080BCD94 @ =gUnknown_03002B8C
	movs r0, #0
	strb r0, [r1]
	ldr r2, _080BCD98 @ =gFlags
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r1, #0x20
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	bne _080BCDB4
	ldr r1, _080BCD9C @ =gUnknown_03002B84
	ldr r0, [r1]
	ldr r2, _080BCDA0 @ =gUnknown_03002E70
	cmp r0, r2
	bne _080BCDA8
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _080BCDA4 @ =gUnknown_030035BC
	str r2, [r0]
	b _080BCDB4
	.align 2, 0
_080BCD94: .4byte gUnknown_03002B8C
_080BCD98: .4byte gFlags
_080BCD9C: .4byte gUnknown_03002B84
_080BCDA0: .4byte gUnknown_03002E70
_080BCDA4: .4byte gUnknown_030035BC
_080BCDA8:
	str r2, [r1]
	ldr r1, _080BCDE8 @ =gUnknown_030035BC
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
_080BCDB4:
	ldr r0, [r4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp]
	ldr r1, _080BCDEC @ =gUnknown_03006240
	ldr r2, _080BCDF0 @ =0x01000100
	mov r0, sp
	bl CpuFastSet
	ldr r1, _080BCDF4 @ =gUnknown_03006200
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080BCDE8: .4byte gUnknown_030035BC
_080BCDEC: .4byte gUnknown_03006240
_080BCDF0: .4byte 0x01000100
_080BCDF4: .4byte gUnknown_03006200
