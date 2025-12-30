
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, #0x2b
	ldrb r2, [r0]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08015B70 @ =gPlayers
	adds r0, r0, r1
	mov sl, r0
	movs r0, #0x1c
	ands r0, r2
	cmp r0, #8
	bne _08015A72
	b _08015C80
_08015A72:
	cmp r0, #0x14
	bne _08015A78
	b _08015C80
_08015A78:
	ldr r0, _08015B74 @ =gStageData
	ldrb r0, [r0, #4]
	cmp r0, #3
	beq _08015A82
	b _08015C80
_08015A82:
	adds r0, r5, #0
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08015A90
	b _08015C80
_08015A90:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _08015A9E
	b _08015C80
_08015A9E:
	movs r2, #0
	mov sb, r2
_08015AA2:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	lsls r1, r7, #2
	adds r1, r1, r7
	lsls r1, r1, #2
	adds r1, r1, r7
	lsls r1, r1, #4
	ldr r2, _08015B70 @ =gPlayers
	adds r4, r1, r2
	mov r8, r0
	cmp r4, r5
	bne _08015ABE
	b _08015C6E
_08015ABE:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #0x14
	bne _08015ACE
	b _08015C6E
_08015ACE:
	cmp r1, #8
	bne _08015AD4
	b _08015C6E
_08015AD4:
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	beq _08015AE2
	b _08015C6E
_08015AE2:
	ldr r0, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #0x16
	ands r0, r2
	cmp r0, #0
	beq _08015AF0
	b _08015C6E
_08015AF0:
	ands r1, r2
	cmp r1, #0
	beq _08015AF8
	b _08015C6E
_08015AF8:
	ldr r2, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r2, r2, r0
	lsls r2, r2, #8
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0
	bge _08015B12
	rsbs r2, r2, #0
_08015B12:
	cmp r2, #0x40
	ble _08015B18
	b _08015C6E
_08015B18:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08015B22
	rsbs r0, r0, #0
_08015B22:
	cmp r0, #0x40
	ble _08015B28
	b _08015C6E
_08015B28:
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	movs r3, #1
	bl sub_80210BC
	adds r1, r0, #0
	cmp r1, #0
	beq _08015BB4
	ldr r6, _08015B74 @ =gStageData
	ldrb r0, [r6, #3]
	cmp r0, #7
	beq _08015B44
	b _08015C66
_08015B44:
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	cmp r0, #0xa
	beq _08015B78
	movs r3, #0x30
	ldrsh r0, [r4, r3]
	cmp r0, #0xa
	beq _08015B56
	b _08015C66
_08015B56:
	adds r0, r5, #0
	bl sub_8015C90
	adds r0, r4, #0
	adds r0, #0x4a
	movs r1, #0x78
	strh r1, [r0]
	ldr r2, _08015B74 @ =gStageData
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _08015B6E
	b _08015C80
_08015B6E:
	b _08015B9C
	.align 2, 0
_08015B70: .4byte gPlayers
_08015B74: .4byte gStageData
_08015B78:
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r0, #0xa
	beq _08015C66
	adds r0, r5, #0
	bl Player_8014550
	adds r0, r6, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, r7
	beq _08015B96
	ldrb r6, [r6, #6]
	cmp r0, r6
	bne _08015C80
_08015B96:
	mov r3, sb
	lsls r0, r3, #0x18
	b _08015BFA
_08015B9C:
	adds r0, r2, #0
	adds r0, #0x8e
	ldrb r1, [r0]
	mov r3, r8
	asrs r0, r3, #0x10
	cmp r1, r0
	beq _08015BB0
	ldrb r0, [r2, #6]
	cmp r1, r0
	bne _08015C80
_08015BB0:
	ldrb r0, [r2, #6]
	b _08015C42
_08015BB4:
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	movs r3, #0
	bl sub_80210BC
	adds r1, r0, #0
	cmp r1, #0
	beq _08015C08
	ldr r6, _08015BDC @ =gStageData
	ldrb r0, [r6, #3]
	cmp r0, #7
	beq _08015BE0
	cmp r4, sl
	beq _08015C66
	adds r0, r5, #0
	bl Player_8014550
	b _08015C80
	.align 2, 0
_08015BDC: .4byte gStageData
_08015BE0:
	adds r0, r5, #0
	bl Player_8014550
	adds r0, r6, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, r7
	beq _08015BF6
	ldrb r6, [r6, #6]
	cmp r0, r6
	bne _08015C80
_08015BF6:
	mov r1, sb
	lsls r0, r1, #0x18
_08015BFA:
	lsrs r0, r0, #0x18
	bl sub_80276A8
	adds r0, r4, #0
	bl sub_80293E8
	b _08015C80
_08015C08:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_80210BC
	adds r1, r0, #0
	cmp r1, #0
	beq _08015C54
	adds r0, r5, #0
	bl sub_8015C90
	adds r0, r4, #0
	adds r0, #0x4a
	movs r1, #0x78
	strh r1, [r0]
	ldr r1, _08015C50 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _08015C80
	adds r0, r1, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, r7
	beq _08015C40
	ldrb r2, [r1, #6]
	cmp r0, r2
	bne _08015C80
_08015C40:
	ldrb r0, [r1, #6]
_08015C42:
	bl sub_80276A8
	adds r0, r5, #0
	bl sub_80293E8
	b _08015C80
	.align 2, 0
_08015C50: .4byte gStageData
_08015C54:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_80210BC
	adds r1, r0, #0
	cmp r1, #0
	beq _08015C6E
_08015C66:
	adds r0, r5, #0
	bl sub_8015C90
	b _08015C80
_08015C6E:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r3, r0, #0x10
	mov sb, r3
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _08015C80
	b _08015AA2
_08015C80:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
