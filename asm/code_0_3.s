.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start Create_gTask_03001CFC
Create_gTask_03001CFC: @ 0x0802AD64
	push {r4, lr}
	sub sp, #8
	ldr r0, _0802AD7C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0802AD98
	cmp r0, #5
	bhi _0802AD88
	ldr r4, _0802AD80 @ =gTask_03001CFC
	ldr r0, _0802AD84 @ =Task_802B71C
	b _0802AD9C
	.align 2, 0
_0802AD7C: .4byte gStageData
_0802AD80: .4byte gTask_03001CFC
_0802AD84: .4byte Task_802B71C
_0802AD88:
	ldr r4, _0802AD90 @ =gTask_03001CFC
	ldr r0, _0802AD94 @ =sub_802B744
	b _0802AD9C
	.align 2, 0
_0802AD90: .4byte gTask_03001CFC
_0802AD94: .4byte sub_802B744
_0802AD98:
	ldr r4, _0802ADCC @ =gTask_03001CFC
	ldr r0, _0802ADD0 @ =sub_802B76C
_0802AD9C:
	movs r1, #0xad
	lsls r1, r1, #2
	ldr r2, _0802ADD4 @ =0x00002001
	ldr r3, _0802ADD8 @ =TaskDestructor_802B778
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	str r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r1, r4, #0
	movs r0, #0
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	ldr r0, _0802ADDC @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _0802ADE4
	ldr r0, _0802ADE0 @ =0x06014180
	b _0802ADE6
	.align 2, 0
_0802ADCC: .4byte gTask_03001CFC
_0802ADD0: .4byte sub_802B76C
_0802ADD4: .4byte 0x00002001
_0802ADD8: .4byte TaskDestructor_802B778
_0802ADDC: .4byte gStageData
_0802ADE0: .4byte 0x06014180
_0802ADE4:
	ldr r0, _0802AE4C @ =0x060141A0
_0802ADE6:
	str r0, [r4]
	movs r3, #0
	movs r2, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	ldr r0, _0802AE50 @ =0x00000535
	strh r0, [r1, #0xc]
	strb r3, [r1, #0x1a]
	strh r2, [r1, #0xe]
	strh r2, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x20
	strb r0, [r1, #0x1c]
	strb r3, [r1, #0x1f]
	ldr r0, _0802AE54 @ =0x00041200
	str r0, [r1, #8]
	ldr r1, _0802AE58 @ =0x000002AE
	adds r0, r4, r1
	strh r2, [r0]
	movs r0, #0xab
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x94
	strh r0, [r1]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x12
	str r0, [r1]
	movs r1, #0xac
	lsls r1, r1, #2
	adds r0, r4, r1
	strb r3, [r0]
	adds r1, r4, #0
	adds r1, #0x28
	add r0, sp, #4
	strh r2, [r0]
	ldr r0, _0802AE5C @ =0x040000D4
	add r2, sp, #4
	str r2, [r0]
	str r1, [r0, #4]
	ldr r1, _0802AE60 @ =0x81000140
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802AE4C: .4byte 0x060141A0
_0802AE50: .4byte 0x00000535
_0802AE54: .4byte 0x00041200
_0802AE58: .4byte 0x000002AE
_0802AE5C: .4byte 0x040000D4
_0802AE60: .4byte 0x81000140

	thumb_func_start sub_802AE64
sub_802AE64: @ 0x0802AE64
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

	thumb_func_start sub_802AFFC
sub_802AFFC: @ 0x0802AFFC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r7, [r0]
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802B044
	ldrh r1, [r4, #0x10]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0802B08C
	movs r0, #0xe
	ldrsh r2, [r4, r0]
	ldr r0, _0802B040 @ =sub_8051F54
	str r0, [sp]
	adds r0, r3, #0
	adds r1, r6, #0
	movs r3, #8
	bl sub_8052418
	cmp r0, #0
	bgt _0802B08C
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	b _0802B080
	.align 2, 0
_0802B040: .4byte sub_8051F54
_0802B044:
	cmp r0, #0
	bge _0802B08C
	ldr r1, _0802B09C @ =0x000002AE
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802B08C
	ldrh r1, [r4, #0x10]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0802B08C
	adds r0, r3, #0
	subs r0, #0x10
	movs r1, #0xe
	ldrsh r2, [r4, r1]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r1, _0802B0A0 @ =sub_8051F54
	str r1, [sp]
	adds r1, r6, #0
	bl sub_8052418
	cmp r0, #0
	bgt _0802B08C
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	subs r0, r0, r1
_0802B080:
	str r0, [r4, #4]
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r4, #0xa]
_0802B08C:
	ldrh r0, [r4, #0xa]
	adds r0, r0, r7
	strh r0, [r4, #0xa]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B09C: .4byte 0x000002AE
_0802B0A0: .4byte sub_8051F54

	thumb_func_start sub_802B0A4
sub_802B0A4: @ 0x0802B0A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	mov r8, r0
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _0802B0FC
	ldrh r1, [r4, #0x10]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0802B0FC
	adds r0, r6, #0
	subs r0, #0x10
	movs r1, #0xe
	ldrsh r2, [r4, r1]
	movs r3, #8
	rsbs r3, r3, #0
	ldr r1, _0802B158 @ =sub_8051F54
	str r1, [sp]
	adds r1, r7, #0
	bl sub_8052418
	cmp r0, #0
	bgt _0802B0FC
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	subs r0, r0, r1
	str r0, [r4, #4]
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r4, #0xa]
_0802B0FC:
	ldr r1, _0802B15C @ =0x000002AE
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802B144
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0802B144
	ldrh r1, [r4, #0x10]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0802B144
	movs r0, #0xe
	ldrsh r2, [r4, r0]
	ldr r0, _0802B158 @ =sub_8051F54
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r3, #8
	bl sub_8052418
	cmp r0, #0
	bgt _0802B144
	lsls r1, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldrh r1, [r4, #0xa]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	subs r0, r0, r1
	strh r0, [r4, #0xa]
_0802B144:
	ldrh r0, [r4, #0xa]
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r4, #0xa]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B158: .4byte sub_8051F54
_0802B15C: .4byte 0x000002AE

	thumb_func_start sub_802B160
sub_802B160: @ 0x0802B160
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r2, #7
	cmp r0, #0xfe
	bhi _0802B196
	movs r0, #8
	rsbs r0, r0, #0
	cmp r3, r0
	ble _0802B196
	cmp r3, #0xa7
	bgt _0802B196
	ldrh r0, [r1, #0xc]
	cmp r0, #0x1f
	bhi _0802B188
	ldr r0, _0802B19C @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0802B196
_0802B188:
	movs r0, #0xff
	strb r0, [r4, #0x1d]
	strh r2, [r4, #0x10]
	strh r3, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_0802B196:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802B19C: .4byte gStageData

	thumb_func_start sub_802B1A0
sub_802B1A0: @ 0x0802B1A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r1
	adds r6, r2, #0
	adds r7, r3, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [sp]
	movs r1, #0
	ldr r2, _0802B1D0 @ =gPlayers
	mov sl, r2
_0802B1C2:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0802B1D8
	ldr r0, _0802B1D4 @ =gStageData
	ldrb r1, [r0, #6]
	b _0802B1E2
	.align 2, 0
_0802B1D0: .4byte gPlayers
_0802B1D4: .4byte gStageData
_0802B1D8:
	mov r0, ip
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0802B1E2:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, sl
	mov ip, r0
	mov r0, ip
	adds r0, #0xe0
	ldr r4, [r0]
	mov r1, ip
	adds r1, #0x2b
	ldrb r2, [r1]
	movs r0, #0x1c
	ands r0, r2
	mov r8, r1
	cmp r0, #8
	bne _0802B226
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	mov r1, sl
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802B2D8
_0802B226:
	mov r1, sb
	ldrh r0, [r1, #0xc]
	ldr r2, [sp]
	cmp r0, r2
	bgt _0802B2D8
	mov r1, ip
	movs r2, #0x30
	ldrsh r0, [r1, r2]
	cmp r0, #0x66
	bne _0802B246
	mov r0, ip
	adds r0, #0x4a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0802B2D8
_0802B246:
	mov r2, ip
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802B2D8
	adds r4, #0x30
	adds r2, r6, #0
	subs r2, #8
	mov r1, ip
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _0802B276
	adds r0, r6, #0
	adds r0, #8
	cmp r0, r1
	bge _0802B282
	cmp r2, r1
	blt _0802B2D8
_0802B276:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0802B2D8
_0802B282:
	adds r2, r7, #0
	subs r2, #0x10
	mov r1, ip
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _0802B29E
	cmp r7, r1
	bge _0802B2AA
	cmp r2, r1
	blt _0802B2D8
_0802B29E:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0802B2D8
_0802B2AA:
	lsls r0, r6, #0x10
	lsls r1, r7, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_8029C54
	cmp r5, #0
	beq _0802B2CA
	mov r2, r8
	ldrb r0, [r2]
	movs r2, #0x1c
	ands r2, r0
	cmp r2, #8
	beq _0802B2CA
	cmp r2, #0x14
	bne _0802B2D0
_0802B2CA:
	movs r0, #1
	bl AddRings
_0802B2D0:
	movs r0, #1
	mov r1, sb
	strh r0, [r1, #0xc]
	b _0802B2E8
_0802B2D8:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0802B2E8
	b _0802B1C2
_0802B2E8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_802B2F8
sub_802B2F8: @ 0x0802B2F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802B3A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r0, _0802B3AC @ =0x03000028
	adds r7, r1, r0
	mov r0, sb
	bl UpdateSpriteAnimation
	movs r1, #0x1f
	mov sl, r1
_0802B31E:
	ldrh r0, [r7, #0xc]
	cmp r0, #0
	beq _0802B38C
	movs r2, #8
	ldrsh r0, [r7, r2]
	ldr r5, [r7]
	adds r5, r5, r0
	str r5, [r7]
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	ldr r4, [r7, #4]
	adds r4, r4, r0
	str r4, [r7, #4]
	asrs r5, r5, #8
	asrs r4, r4, #8
	ldr r2, _0802B3B0 @ =gCamera
	ldr r2, [r2]
	mov r8, r2
	mov r0, r8
	subs r0, r5, r0
	mov r8, r0
	ldr r1, _0802B3B0 @ =gCamera
	ldr r6, [r1, #4]
	subs r6, r4, r6
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_802B1A0
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_802B0A4
	mov r0, sb
	adds r1, r7, #0
	mov r2, r8
	adds r3, r6, #0
	bl sub_802B160
	ldrh r1, [r7, #0x10]
	ldr r2, _0802B3B4 @ =0x0000FFFC
	adds r0, r2, #0
	adds r2, r1, #0
	ands r2, r0
	adds r1, #1
	movs r0, #3
	ands r1, r0
	orrs r2, r1
	strh r2, [r7, #0x10]
	ldrh r0, [r7, #0xc]
	subs r0, #1
	strh r0, [r7, #0xc]
_0802B38C:
	adds r7, #0x14
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	mov r1, sl
	cmp r1, #0
	bge _0802B31E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B3A8: .4byte gCurTask
_0802B3AC: .4byte 0x03000028
_0802B3B0: .4byte gCamera
_0802B3B4: .4byte 0x0000FFFC

	thumb_func_start sub_802B3B8
sub_802B3B8: @ 0x0802B3B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802B468 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r0, _0802B46C @ =0x03000028
	adds r7, r1, r0
	mov r0, sb
	bl UpdateSpriteAnimation
	movs r1, #0x1f
	mov sl, r1
_0802B3DE:
	ldrh r0, [r7, #0xc]
	cmp r0, #0
	beq _0802B44C
	movs r2, #8
	ldrsh r0, [r7, r2]
	ldr r5, [r7]
	adds r5, r5, r0
	str r5, [r7]
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	ldr r4, [r7, #4]
	adds r4, r4, r0
	str r4, [r7, #4]
	asrs r5, r5, #8
	asrs r4, r4, #8
	ldr r2, _0802B470 @ =gCamera
	ldr r2, [r2]
	mov r8, r2
	mov r0, r8
	subs r0, r5, r0
	mov r8, r0
	ldr r1, _0802B470 @ =gCamera
	ldr r6, [r1, #4]
	subs r6, r4, r6
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_802B1A0
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_802AFFC
	mov r0, sb
	adds r1, r7, #0
	mov r2, r8
	adds r3, r6, #0
	bl sub_802B160
	ldrh r1, [r7, #0x10]
	ldr r2, _0802B474 @ =0x0000FFFC
	adds r0, r2, #0
	adds r2, r1, #0
	ands r2, r0
	adds r1, #1
	movs r0, #3
	ands r1, r0
	orrs r2, r1
	strh r2, [r7, #0x10]
	ldrh r0, [r7, #0xc]
	subs r0, #1
	strh r0, [r7, #0xc]
_0802B44C:
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	adds r7, #0x14
	mov r1, sl
	cmp r1, #0
	bge _0802B3DE
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B468: .4byte gCurTask
_0802B46C: .4byte 0x03000028
_0802B470: .4byte gCamera
_0802B474: .4byte 0x0000FFFC

	thumb_func_start sub_802B478
sub_802B478: @ 0x0802B478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802B528 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r0, _0802B52C @ =0x03000028
	adds r7, r1, r0
	mov r0, sb
	bl UpdateSpriteAnimation
	movs r1, #0x1f
	mov sl, r1
_0802B49E:
	ldrh r0, [r7, #0xc]
	cmp r0, #0
	beq _0802B50C
	movs r2, #8
	ldrsh r0, [r7, r2]
	ldr r5, [r7]
	adds r5, r5, r0
	str r5, [r7]
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	ldr r4, [r7, #4]
	adds r4, r4, r0
	str r4, [r7, #4]
	asrs r5, r5, #8
	asrs r4, r4, #8
	ldr r2, _0802B530 @ =gCamera
	ldr r2, [r2]
	mov r8, r2
	mov r0, r8
	subs r0, r5, r0
	mov r8, r0
	ldr r1, _0802B530 @ =gCamera
	ldr r6, [r1, #4]
	subs r6, r4, r6
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_802B1A0
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_802B0A4
	mov r0, sb
	adds r1, r7, #0
	mov r2, r8
	adds r3, r6, #0
	bl sub_802B160
	ldrh r1, [r7, #0x10]
	ldr r2, _0802B534 @ =0x0000FFFC
	adds r0, r2, #0
	adds r2, r1, #0
	ands r2, r0
	adds r1, #1
	movs r0, #3
	ands r1, r0
	orrs r2, r1
	strh r2, [r7, #0x10]
	ldrh r0, [r7, #0xc]
	subs r0, #1
	strh r0, [r7, #0xc]
_0802B50C:
	adds r7, #0x14
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	mov r1, sl
	cmp r1, #0
	bge _0802B49E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B528: .4byte gCurTask
_0802B52C: .4byte 0x03000028
_0802B530: .4byte gCamera
_0802B534: .4byte 0x0000FFFC

	thumb_func_start sub_802B538
sub_802B538: @ 0x0802B538
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802B5E8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r0, _0802B5EC @ =0x03000028
	adds r7, r1, r0
	mov r0, sb
	bl UpdateSpriteAnimation
	movs r1, #0x1f
	mov sl, r1
_0802B55E:
	ldrh r0, [r7, #0xc]
	cmp r0, #0
	beq _0802B5CC
	movs r2, #8
	ldrsh r0, [r7, r2]
	ldr r5, [r7]
	adds r5, r5, r0
	str r5, [r7]
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	ldr r4, [r7, #4]
	adds r4, r4, r0
	str r4, [r7, #4]
	asrs r5, r5, #8
	asrs r4, r4, #8
	ldr r2, _0802B5F0 @ =gCamera
	ldr r2, [r2]
	mov r8, r2
	mov r0, r8
	subs r0, r5, r0
	mov r8, r0
	ldr r1, _0802B5F0 @ =gCamera
	ldr r6, [r1, #4]
	subs r6, r4, r6
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_802B1A0
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_802AFFC
	mov r0, sb
	adds r1, r7, #0
	mov r2, r8
	adds r3, r6, #0
	bl sub_802B160
	ldrh r1, [r7, #0x10]
	ldr r2, _0802B5F4 @ =0x0000FFFC
	adds r0, r2, #0
	adds r2, r1, #0
	ands r2, r0
	adds r1, #1
	movs r0, #3
	ands r1, r0
	orrs r2, r1
	strh r2, [r7, #0x10]
	ldrh r0, [r7, #0xc]
	subs r0, #1
	strh r0, [r7, #0xc]
_0802B5CC:
	adds r7, #0x14
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	mov r1, sl
	cmp r1, #0
	bge _0802B55E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B5E8: .4byte gCurTask
_0802B5EC: .4byte 0x03000028
_0802B5F0: .4byte gCamera
_0802B5F4: .4byte 0x0000FFFC

	thumb_func_start sub_802B5F8
sub_802B5F8: @ 0x0802B5F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802B6A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sb, r0
	ldr r0, _0802B6AC @ =0x03000028
	adds r7, r1, r0
	mov r0, sb
	bl UpdateSpriteAnimation
	movs r1, #0x1f
	mov sl, r1
_0802B61E:
	ldrh r0, [r7, #0xc]
	cmp r0, #0
	beq _0802B68C
	movs r2, #8
	ldrsh r0, [r7, r2]
	ldr r5, [r7]
	adds r5, r5, r0
	str r5, [r7]
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	ldr r4, [r7, #4]
	adds r4, r4, r0
	str r4, [r7, #4]
	asrs r5, r5, #8
	asrs r4, r4, #8
	ldr r2, _0802B6B0 @ =gCamera
	ldr r2, [r2]
	mov r8, r2
	mov r0, r8
	subs r0, r5, r0
	mov r8, r0
	ldr r1, _0802B6B0 @ =gCamera
	ldr r6, [r1, #4]
	subs r6, r4, r6
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_802B1A0
	mov r0, sb
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_802AFFC
	mov r0, sb
	adds r1, r7, #0
	mov r2, r8
	adds r3, r6, #0
	bl sub_802B160
	ldrh r1, [r7, #0x10]
	ldr r2, _0802B6B4 @ =0x0000FFFC
	adds r0, r2, #0
	adds r2, r1, #0
	ands r2, r0
	adds r1, #1
	movs r0, #3
	ands r1, r0
	orrs r2, r1
	strh r2, [r7, #0x10]
	ldrh r0, [r7, #0xc]
	subs r0, #1
	strh r0, [r7, #0xc]
_0802B68C:
	adds r7, #0x14
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	mov r1, sl
	cmp r1, #0
	bge _0802B61E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B6A8: .4byte gCurTask
_0802B6AC: .4byte 0x03000028
_0802B6B0: .4byte gCamera
_0802B6B4: .4byte 0x0000FFFC

	thumb_func_start sub_802B6B8
sub_802B6B8: @ 0x0802B6B8
	push {r4, lr}
	ldr r4, _0802B6CC @ =gTask_03001CFC
	ldr r0, [r4]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802B6CC: .4byte gTask_03001CFC

	thumb_func_start sub_802B6D0
sub_802B6D0: @ 0x0802B6D0
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0802B714 @ =gTask_03001CFC
	ldr r0, [r0]
	cmp r0, #0
	beq _0802B70C
	ldrh r0, [r0, #6]
	ldr r4, _0802B718 @ =0x03000028
	adds r2, r0, r4
	lsls r0, r3, #0x10
	asrs r4, r0, #8
	lsls r0, r1, #0x10
	asrs r1, r0, #8
	movs r3, #0x1f
_0802B6F2:
	ldrh r0, [r2, #0xc]
	cmp r0, #0
	beq _0802B704
	ldr r0, [r2]
	adds r0, r0, r4
	str r0, [r2]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
_0802B704:
	subs r3, #1
	adds r2, #0x14
	cmp r3, #0
	bge _0802B6F2
_0802B70C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802B714: .4byte gTask_03001CFC
_0802B718: .4byte 0x03000028

	thumb_func_start Task_802B71C
Task_802B71C: @ 0x0802B71C
	push {lr}
	ldr r0, _0802B734 @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802B738 @ =0x030002B0
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B73C
	bl sub_802B2F8
	b _0802B740
	.align 2, 0
_0802B734: .4byte gCurTask
_0802B738: .4byte 0x030002B0
_0802B73C:
	bl sub_802B3B8
_0802B740:
	pop {r0}
	bx r0

	thumb_func_start sub_802B744
sub_802B744: @ 0x0802B744
	push {lr}
	ldr r0, _0802B75C @ =gCurTask
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	ldr r1, _0802B760 @ =0x030002B0
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B764
	bl sub_802B478
	b _0802B768
	.align 2, 0
_0802B75C: .4byte gCurTask
_0802B760: .4byte 0x030002B0
_0802B764:
	bl sub_802B538
_0802B768:
	pop {r0}
	bx r0

	thumb_func_start sub_802B76C
sub_802B76C: @ 0x0802B76C
	push {lr}
	bl sub_802B5F8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start TaskDestructor_802B778
TaskDestructor_802B778: @ 0x0802B778
	ldr r1, _0802B780 @ =gTask_03001CFC
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0802B780: .4byte gTask_03001CFC

	thumb_func_start sub_802B784
sub_802B784: @ 0x0802B784
	bx lr
	.align 2, 0

	thumb_func_start sub_802B788
sub_802B788: @ 0x0802B788
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _0802B814 @ =Task_802B868
	movs r2, #0x80
	lsls r2, r2, #6
	movs r1, #0
	mov sb, r1
	str r1, [sp]
	movs r1, #0x1c
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
	ldr r1, _0802B818 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	beq _0802B828
	ldr r4, _0802B81C @ =gUnknown_080D1224
	movs r0, #0xe
	ldrsh r5, [r1, r0]
	lsls r5, r5, #2
	adds r4, r5, r4
	ldr r0, [r4]
	ldr r0, [r0]
	lsrs r0, r0, #8
	bl EwramMalloc
	adds r6, r0, #0
	ldr r0, [r4]
	adds r1, r6, #0
	bl RLUnCompWram
	str r6, [r7]
	ldr r4, _0802B820 @ =gUnknown_080D1348
	adds r4, r5, r4
	ldr r0, [r4]
	ldr r0, [r0]
	lsrs r0, r0, #8
	bl EwramMalloc
	adds r6, r0, #0
	ldr r0, [r4]
	adds r1, r6, #0
	bl RLUnCompWram
	str r6, [r7, #4]
	ldr r0, _0802B824 @ =gUnknown_080D146C
	adds r5, r5, r0
	ldr r0, [r5]
	ldr r0, [r0]
	lsrs r0, r0, #8
	bl EwramMalloc
	adds r6, r0, #0
	ldr r0, [r5]
	adds r1, r6, #0
	bl RLUnCompWram
	str r6, [r7, #8]
	mov r1, sb
	str r1, [r7, #0x18]
	b _0802B834
	.align 2, 0
_0802B814: .4byte Task_802B868
_0802B818: .4byte gStageData
_0802B81C: .4byte gUnknown_080D1224
_0802B820: .4byte gUnknown_080D1348
_0802B824: .4byte gUnknown_080D146C
_0802B828:
	ldr r6, _0802B858 @ =gUnknown_0203F000
	ldr r0, _0802B85C @ =gUnknown_082DA130
	adds r1, r6, #0
	bl RLUnCompWram
	str r6, [r7]
_0802B834:
	ldr r1, _0802B860 @ =gCamera
	ldr r0, [r1]
	str r0, [r7, #0xc]
	ldr r0, [r1, #4]
	str r0, [r7, #0x10]
	movs r0, #1
	strb r0, [r7, #0x14]
	ldr r0, _0802B864 @ =gStageData
	adds r0, #0x94
	mov r1, r8
	str r1, [r0]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B858: .4byte gUnknown_0203F000
_0802B85C: .4byte gUnknown_082DA130
_0802B860: .4byte gCamera
_0802B864: .4byte gStageData

	thumb_func_start Task_802B868
Task_802B868: @ 0x0802B868
	push {r4, r5, r6, r7, lr}
	sub sp, #0x50
	ldr r2, _0802B8A4 @ =gStageData
	adds r0, r2, #0
	adds r0, #0xb0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802B87E
	b _0802BB72
_0802B87E:
	ldr r0, _0802B8A8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	bne _0802B926
	ldr r0, _0802B8AC @ =gCamera
	ldr r5, [r0]
	ldr r4, [r6, #0xc]
	subs r3, r5, r4
	adds r7, r0, #0
	cmp r3, #0
	blt _0802B8B0
	cmp r3, #0xf8
	bgt _0802B926
	b _0802B8B6
	.align 2, 0
_0802B8A4: .4byte gStageData
_0802B8A8: .4byte gCurTask
_0802B8AC: .4byte gCamera
_0802B8B0:
	subs r0, r4, r5
	cmp r0, #0xf8
	bgt _0802B926
_0802B8B6:
	ldr r3, [r7, #4]
	ldr r0, [r6, #0x10]
	subs r1, r3, r0
	cmp r1, #0
	blt _0802B8C6
	cmp r1, #0xd0
	bgt _0802B926
	b _0802B8CC
_0802B8C6:
	subs r0, r0, r3
	cmp r0, #0xd0
	bgt _0802B926
_0802B8CC:
	ldr r0, [r6]
	str r0, [sp, #0x48]
	ldr r1, [r6, #8]
	str r1, [sp, #0x44]
	ldr r3, [r6, #4]
	str r3, [sp, #0x4c]
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _0802B8EA
	adds r0, r1, #0
	adds r0, #0xc
	str r0, [sp, #0x44]
	adds r0, r3, #0
	adds r0, #0xc
	str r0, [sp, #0x4c]
_0802B8EA:
	ldr r0, [sp, #0x48]
	adds r1, r0, #4
	str r1, [sp, #0x48]
	ldrh r0, [r0, #4]
	str r0, [sp, #4]
	adds r0, r1, #4
	str r0, [sp, #0x48]
	ldrh r1, [r1, #4]
	str r1, [sp, #8]
	adds r0, #4
	str r0, [sp, #0x48]
	ldr r2, [r7]
	ldr r1, [r6, #0xc]
	cmp r2, r1
	ble _0802B914
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r1, r1, r0
	str r1, [sp, #0x24]
	adds r0, r2, r0
	b _0802B91E
_0802B914:
	adds r0, r2, #0
	subs r0, #0x80
	str r0, [sp, #0x24]
	ldr r0, [r6, #0xc]
	subs r0, #0x80
_0802B91E:
	str r0, [sp, #0x2c]
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _0802B92C
_0802B926:
	bl sub_802BB80
	b _0802BB72
_0802B92C:
	ldr r0, [r7, #4]
	adds r3, r0, #0
	subs r3, #0x80
	str r3, [sp, #0x28]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r0, r1
	str r2, [sp, #0x30]
	ldr r1, [r6, #0x10]
	cmp r0, r1
	ble _0802B94E
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r1, r3
	str r0, [sp, #0x38]
	str r2, [sp, #0x40]
	b _0802B956
_0802B94E:
	str r3, [sp, #0x38]
	ldr r0, [r6, #0x10]
	subs r0, #0x80
	str r0, [sp, #0x40]
_0802B956:
	ldr r1, [r7]
	adds r0, r1, #0
	subs r0, #0x80
	str r0, [sp, #0x34]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bge _0802B970
	movs r0, #0
	str r0, [sp, #0x24]
_0802B970:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bge _0802B97A
	movs r0, #0
	str r0, [sp, #0x28]
_0802B97A:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bge _0802B984
	movs r0, #0
	str r0, [sp, #0x2c]
_0802B984:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bge _0802B98E
	movs r0, #0
	str r0, [sp, #0x30]
_0802B98E:
	ldr r0, [sp, #4]
	lsls r3, r0, #8
	ldr r1, [sp, #0x24]
	adds r5, r0, #0
	cmp r1, r3
	blo _0802B99E
	subs r0, r3, #1
	str r0, [sp, #0x24]
_0802B99E:
	ldr r0, [sp, #8]
	lsls r2, r0, #8
	ldr r1, [sp, #0x28]
	adds r4, r0, #0
	cmp r1, r2
	blo _0802B9AE
	subs r0, r2, #1
	str r0, [sp, #0x28]
_0802B9AE:
	ldr r0, [sp, #0x2c]
	cmp r0, r3
	blo _0802B9B8
	subs r0, r3, #1
	str r0, [sp, #0x2c]
_0802B9B8:
	ldr r0, [sp, #0x30]
	cmp r0, r2
	blo _0802B9C2
	subs r0, r2, #1
	str r0, [sp, #0x30]
_0802B9C2:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bge _0802B9CC
	movs r0, #0
	str r0, [sp, #0x34]
_0802B9CC:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bge _0802B9D6
	movs r0, #0
	str r0, [sp, #0x38]
_0802B9D6:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bge _0802B9E0
	movs r0, #0
	str r0, [sp, #0x3c]
_0802B9E0:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bge _0802B9EA
	movs r0, #0
	str r0, [sp, #0x40]
_0802B9EA:
	ldr r0, [sp, #0x34]
	cmp r0, r3
	blo _0802B9F4
	subs r0, r3, #1
	str r0, [sp, #0x34]
_0802B9F4:
	ldr r0, [sp, #0x38]
	cmp r0, r2
	blo _0802B9FE
	subs r0, r2, #1
	str r0, [sp, #0x38]
_0802B9FE:
	lsls r1, r5, #8
	ldr r0, [sp, #0x3c]
	cmp r0, r1
	blo _0802BA0A
	subs r0, r1, #1
	str r0, [sp, #0x3c]
_0802BA0A:
	lsls r1, r4, #8
	ldr r0, [sp, #0x40]
	cmp r0, r1
	blo _0802BA16
	subs r0, r1, #1
	str r0, [sp, #0x40]
_0802BA16:
	ldr r1, [r7]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq _0802BABC
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	beq _0802BABC
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #0x30]
	cmp r2, r0
	beq _0802BABC
	mov r1, sp
	asrs r0, r2, #8
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r2, [r0, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x30]
	cmp r1, r0
	bge _0802BABC
	ldr r0, [sp, #8]
	cmp r2, r0
	bhs _0802BABC
	mov r5, sp
_0802BA48:
	ldr r0, [sp, #0x24]
	asrs r0, r0, #8
	strh r0, [r5]
	ldrh r2, [r5]
	lsls r1, r2, #8
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bge _0802BAA6
	ldr r0, [sp, #4]
	cmp r2, r0
	bhs _0802BAA6
	mov r4, sp
_0802BA60:
	ldr r0, _0802BA84 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0802BA88
	movs r0, #0
	mov r1, sp
	bl sub_802BD04
	movs r0, #0
	mov r1, sp
	bl sub_802BDE4
	movs r0, #0
	mov r1, sp
	bl sub_802BEE4
	b _0802BA90
	.align 2, 0
_0802BA84: .4byte gStageData
_0802BA88:
	movs r0, #0
	mov r1, sp
	bl sub_802BFA4
_0802BA90:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldrh r2, [r4]
	lsls r1, r2, #8
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	bge _0802BAA6
	ldr r0, [sp, #4]
	cmp r2, r0
	blo _0802BA60
_0802BAA6:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldrh r2, [r5, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x30]
	cmp r1, r0
	bge _0802BABC
	ldr r0, [sp, #8]
	cmp r2, r0
	blo _0802BA48
_0802BABC:
	ldr r0, _0802BB2C @ =gCamera
	ldr r1, [r0, #4]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	beq _0802BB68
	ldr r2, [sp, #0x38]
	ldr r0, [sp, #0x40]
	cmp r2, r0
	beq _0802BB68
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	beq _0802BB68
	mov r1, sp
	asrs r0, r2, #8
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r2, [r0, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x40]
	cmp r1, r0
	bge _0802BB68
	ldr r0, [sp, #8]
	cmp r2, r0
	bhs _0802BB68
	mov r5, sp
_0802BAF0:
	ldr r0, [sp, #0x34]
	asrs r0, r0, #8
	strh r0, [r5]
	ldrh r2, [r5]
	lsls r1, r2, #8
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bge _0802BB52
	ldr r0, [sp, #4]
	cmp r2, r0
	bhs _0802BB52
	mov r4, sp
_0802BB08:
	ldr r0, _0802BB30 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0802BB34
	movs r0, #1
	mov r1, sp
	bl sub_802BD04
	movs r0, #1
	mov r1, sp
	bl sub_802BDE4
	movs r0, #1
	mov r1, sp
	bl sub_802BEE4
	b _0802BB3C
	.align 2, 0
_0802BB2C: .4byte gCamera
_0802BB30: .4byte gStageData
_0802BB34:
	movs r0, #1
	mov r1, sp
	bl sub_802BFA4
_0802BB3C:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldrh r2, [r4]
	lsls r1, r2, #8
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bge _0802BB52
	ldr r0, [sp, #4]
	cmp r2, r0
	blo _0802BB08
_0802BB52:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldrh r2, [r5, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x40]
	cmp r1, r0
	bge _0802BB68
	ldr r0, [sp, #8]
	cmp r2, r0
	blo _0802BAF0
_0802BB68:
	ldr r0, _0802BB7C @ =gCamera
	ldr r1, [r0]
	str r1, [r6, #0xc]
	ldr r0, [r0, #4]
	str r0, [r6, #0x10]
_0802BB72:
	add sp, #0x50
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BB7C: .4byte gCamera

	thumb_func_start sub_802BB80
sub_802BB80: @ 0x0802BB80
	push {r4, r5, r6, lr}
	sub sp, #0x50
	ldr r2, _0802BC98 @ =gStageData
	adds r0, r2, #0
	adds r0, #0xb0
	ldrh r0, [r0]
	movs r3, #1
	ands r3, r0
	cmp r3, #0
	beq _0802BB96
	b _0802BCEE
_0802BB96:
	ldr r0, _0802BC9C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, [r6]
	str r0, [sp, #0x48]
	ldr r1, [r6, #8]
	str r1, [sp, #0x44]
	ldrb r0, [r2, #3]
	cmp r0, #7
	beq _0802BBBC
	adds r0, r1, #0
	adds r0, #0xc
	str r0, [sp, #0x44]
	ldr r0, [r6, #4]
	adds r0, #0xc
	str r0, [sp, #0x4c]
_0802BBBC:
	ldr r0, [sp, #0x48]
	adds r1, r0, #4
	str r1, [sp, #0x48]
	ldrh r0, [r0, #4]
	str r0, [sp, #4]
	adds r0, r1, #4
	str r0, [sp, #0x48]
	ldrh r1, [r1, #4]
	str r1, [sp, #8]
	adds r0, #4
	str r0, [sp, #0x48]
	ldr r1, _0802BCA0 @ =gCamera
	ldr r0, [r1]
	adds r2, r0, #0
	subs r2, #0x80
	str r2, [sp, #0x34]
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [sp, #0x3c]
	ldr r1, [r1, #4]
	adds r0, r1, #0
	subs r0, #0x80
	str r0, [sp, #0x38]
	subs r4, #0x50
	adds r0, r1, r4
	str r0, [sp, #0x40]
	cmp r2, #0
	bge _0802BBF8
	str r3, [sp, #0x34]
_0802BBF8:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bge _0802BC00
	str r3, [sp, #0x38]
_0802BC00:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bge _0802BC08
	str r3, [sp, #0x3c]
_0802BC08:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bge _0802BC10
	str r3, [sp, #0x40]
_0802BC10:
	ldr r0, [sp, #4]
	lsls r2, r0, #8
	ldr r0, [sp, #0x34]
	cmp r0, r2
	blo _0802BC1E
	subs r0, r2, #1
	str r0, [sp, #0x34]
_0802BC1E:
	ldr r0, [sp, #8]
	lsls r1, r0, #8
	ldr r0, [sp, #0x38]
	cmp r0, r1
	blo _0802BC2C
	subs r0, r1, #1
	str r0, [sp, #0x38]
_0802BC2C:
	ldr r0, [sp, #0x3c]
	cmp r0, r2
	blo _0802BC36
	subs r0, r2, #1
	str r0, [sp, #0x3c]
_0802BC36:
	ldr r0, [sp, #0x40]
	cmp r0, r1
	blo _0802BC40
	subs r0, r1, #1
	str r0, [sp, #0x40]
_0802BC40:
	mov r1, sp
	ldr r0, [sp, #0x38]
	asrs r0, r0, #8
	strh r0, [r1, #2]
	mov r0, sp
	ldrh r2, [r0, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x40]
	cmp r1, r0
	bge _0802BCD8
	ldr r0, [sp, #8]
	cmp r2, r0
	bhs _0802BCD8
	mov r5, sp
_0802BC5C:
	ldr r0, [sp, #0x34]
	asrs r0, r0, #8
	strh r0, [r5]
	ldrh r2, [r5]
	lsls r1, r2, #8
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bge _0802BCC2
	ldr r0, [sp, #4]
	cmp r2, r0
	bhs _0802BCC2
	mov r4, sp
_0802BC74:
	ldr r0, _0802BC98 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0802BCA4
	movs r0, #1
	mov r1, sp
	bl sub_802BD04
	movs r0, #1
	mov r1, sp
	bl sub_802BDE4
	movs r0, #1
	mov r1, sp
	bl sub_802BEE4
	b _0802BCAC
	.align 2, 0
_0802BC98: .4byte gStageData
_0802BC9C: .4byte gCurTask
_0802BCA0: .4byte gCamera
_0802BCA4:
	movs r0, #1
	mov r1, sp
	bl sub_802BFA4
_0802BCAC:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	ldrh r2, [r4]
	lsls r1, r2, #8
	ldr r0, [sp, #0x3c]
	cmp r1, r0
	bge _0802BCC2
	ldr r0, [sp, #4]
	cmp r2, r0
	blo _0802BC74
_0802BCC2:
	ldrh r0, [r5, #2]
	adds r0, #1
	strh r0, [r5, #2]
	ldrh r2, [r5, #2]
	lsls r1, r2, #8
	ldr r0, [sp, #0x40]
	cmp r1, r0
	bge _0802BCD8
	ldr r0, [sp, #8]
	cmp r2, r0
	blo _0802BC5C
_0802BCD8:
	ldr r1, _0802BCF8 @ =gCamera
	ldr r0, [r1]
	str r0, [r6, #0xc]
	ldr r0, [r1, #4]
	str r0, [r6, #0x10]
	movs r0, #0
	strb r0, [r6, #0x14]
	ldr r0, _0802BCFC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802BD00 @ =Task_802B868
	str r0, [r1, #8]
_0802BCEE:
	add sp, #0x50
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802BCF8: .4byte gCamera
_0802BCFC: .4byte gCurTask
_0802BD00: .4byte Task_802B868

	thumb_func_start sub_802BD04
sub_802BD04: @ 0x0802BD04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	movs r1, #0x34
	adds r1, r1, r4
	mov r8, r1
	cmp r0, #0
	bne _0802BD22
	movs r3, #0x24
	adds r3, r3, r4
	mov r8, r3
_0802BD22:
	ldrh r1, [r4, #2]
	ldr r0, [r4, #4]
	muls r0, r1, r0
	ldrh r1, [r4]
	ldr r2, [r4, #0x48]
	lsls r1, r1, #2
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #0x18]
	cmp r0, #0
	beq _0802BDD0
	subs r0, #8
	adds r0, r2, r0
	str r0, [r4, #0xc]
	movs r1, #0
	str r1, [r4, #0x18]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, #1
	cmp r0, r1
	beq _0802BDD0
	movs r5, #2
	rsbs r5, r5, #0
	mov sl, r5
	mov sb, r1
_0802BD5A:
	ldr r2, [r4, #0xc]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, sl
	bge _0802BD68
	adds r0, r2, #0
	b _0802BDBA
_0802BD68:
	ldrb r1, [r2]
	lsls r1, r1, #3
	ldrh r0, [r4]
	lsls r0, r0, #8
	adds r3, r1, r0
	str r3, [r4, #0x1c]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #0x20]
	mov r5, r8
	ldr r0, [r5]
	ldrh r7, [r4, #2]
	ldrh r6, [r4]
	cmp r3, r0
	blt _0802BDB8
	ldr r0, [r5, #8]
	cmp r3, r0
	bgt _0802BDB8
	ldr r0, [r5, #4]
	cmp r1, r0
	blt _0802BDB8
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bgt _0802BDB8
	ldr r1, _0802BDE0 @ =gSpriteInits_Interactables
	ldrb r0, [r2, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	cmp r5, #0
	beq _0802BDB8
	ldrb r3, [r4, #0x18]
	adds r0, r2, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl _call_via_r5
_0802BDB8:
	ldr r0, [r4, #0xc]
_0802BDBA:
	adds r0, #8
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	bne _0802BD5A
_0802BDD0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BDE0: .4byte gSpriteInits_Interactables

	thumb_func_start sub_802BDE4
sub_802BDE4: @ 0x0802BDE4
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0802BE24 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #2
	beq _0802BED8
	adds r6, r5, #0
	adds r6, #0x34
	cmp r1, #0
	bne _0802BDFE
	subs r6, #0x10
_0802BDFE:
	ldrh r1, [r5, #2]
	ldr r0, [r5, #4]
	muls r0, r1, r0
	ldrh r1, [r5]
	ldr r2, [r5, #0x44]
	lsls r1, r1, #2
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r5, #0x18]
	cmp r0, #0
	beq _0802BED8
	subs r0, #8
	adds r0, r2, r0
	str r0, [r5, #0x10]
	movs r1, #0
	str r1, [r5, #0x18]
	b _0802BECC
	.align 2, 0
_0802BE24: .4byte gStageData
_0802BE28:
	ldr r3, [r5, #0x10]
	movs r0, #0
	ldrsb r0, [r3, r0]
	movs r4, #2
	rsbs r4, r4, #0
	cmp r0, r4
	bge _0802BE3A
	adds r0, r3, #0
	b _0802BEC0
_0802BE3A:
	ldrb r1, [r3]
	lsls r1, r1, #3
	ldrh r0, [r5]
	lsls r0, r0, #8
	adds r2, r1, r0
	str r2, [r5, #0x1c]
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r5, #0x20]
	ldr r0, [r6]
	ldrh r7, [r5, #2]
	mov ip, r7
	ldrh r7, [r5]
	cmp r2, r0
	blt _0802BEBE
	ldr r0, [r6, #8]
	cmp r2, r0
	bgt _0802BEBE
	ldr r0, [r6, #4]
	cmp r1, r0
	blt _0802BEBE
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bgt _0802BEBE
	ldr r1, _0802BEA0 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _0802BE7C
	cmp r0, #5
	bne _0802BEA8
_0802BE7C:
	ldrb r0, [r1, #0xa]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0802BEA8
	ldrb r0, [r1, #1]
	cmp r0, #1
	bne _0802BEA8
	ldr r0, _0802BEA4 @ =gUnknown_080CF104
	ldrb r1, [r1, #9]
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r1, [r3, #2]
	cmp r0, r1
	bne _0802BEA8
	strb r4, [r3]
	b _0802BECA
	.align 2, 0
_0802BEA0: .4byte gStageData
_0802BEA4: .4byte gUnknown_080CF104
_0802BEA8:
	ldr r2, _0802BEE0 @ =gSpriteInits_Enemies
	ldr r0, [r5, #0x10]
	ldrb r1, [r0, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r3, [r5, #0x18]
	ldr r4, [r1]
	adds r1, r7, #0
	mov r2, ip
	bl _call_via_r4
_0802BEBE:
	ldr r0, [r5, #0x10]
_0802BEC0:
	adds r0, #8
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
_0802BECA:
	ldr r0, [r5, #0x10]
_0802BECC:
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802BE28
_0802BED8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BEE0: .4byte gSpriteInits_Enemies

	thumb_func_start sub_802BEE4
sub_802BEE4: @ 0x0802BEE4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	adds r7, r4, #0
	adds r7, #0x34
	cmp r0, #0
	bne _0802BEFA
	subs r7, #0x10
_0802BEFA:
	ldrh r1, [r4, #2]
	ldr r0, [r4, #4]
	muls r0, r1, r0
	ldrh r1, [r4]
	ldr r2, [r4, #0x4c]
	lsls r1, r1, #2
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4, #0x18]
	cmp r0, #0
	beq _0802BF98
	subs r0, #8
	adds r0, r2, r0
	str r0, [r4, #0x14]
	movs r1, #0
	str r1, [r4, #0x18]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, #1
	cmp r0, r1
	beq _0802BF98
	movs r0, #2
	rsbs r0, r0, #0
	mov sb, r0
	mov r8, r1
_0802BF32:
	ldr r2, [r4, #0x14]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, sb
	bge _0802BF40
	adds r0, r2, #3
	b _0802BF84
_0802BF40:
	ldrb r1, [r2]
	lsls r1, r1, #3
	ldrh r0, [r4]
	lsls r0, r0, #8
	adds r3, r1, r0
	str r3, [r4, #0x1c]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r4, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #0x20]
	ldr r0, [r7]
	ldrh r6, [r4, #2]
	ldrh r5, [r4]
	cmp r3, r0
	blt _0802BF80
	ldr r0, [r7, #8]
	cmp r3, r0
	bgt _0802BF80
	ldr r0, [r7, #4]
	cmp r1, r0
	blt _0802BF80
	ldr r0, [r7, #0xc]
	cmp r1, r0
	bgt _0802BF80
	ldrb r3, [r4, #0x18]
	adds r0, r2, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl CreateEntity_ItemBox
_0802BF80:
	ldr r0, [r4, #0x14]
	adds r0, #3
_0802BF84:
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r0, #1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _0802BF32
_0802BF98:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_802BFA4
sub_802BFA4: @ 0x0802BFA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	movs r1, #0x34
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #0
	bne _0802BFC2
	movs r3, #0x24
	adds r3, r3, r5
	mov r8, r3
_0802BFC2:
	ldrh r1, [r5, #2]
	ldr r0, [r5, #4]
	muls r0, r1, r0
	ldrh r1, [r5]
	ldr r2, [r5, #0x48]
	lsls r1, r1, #2
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r5, #0x18]
	cmp r0, #0
	beq _0802C06C
	subs r0, #8
	adds r0, r2, r0
	str r0, [r5, #0xc]
	movs r1, #0
	str r1, [r5, #0x18]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, #1
	cmp r0, r1
	beq _0802C06C
	movs r4, #2
	rsbs r4, r4, #0
	mov sl, r4
	mov sb, r1
_0802BFFA:
	ldr r2, [r5, #0xc]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, sl
	bge _0802C008
	adds r0, r2, #0
	b _0802C056
_0802C008:
	ldrb r1, [r2]
	lsls r1, r1, #3
	ldrh r0, [r5]
	lsls r0, r0, #8
	adds r3, r1, r0
	str r3, [r5, #0x1c]
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r5, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r5, #0x20]
	mov r4, r8
	ldr r0, [r4]
	ldrh r7, [r5, #2]
	ldrh r6, [r5]
	cmp r3, r0
	blt _0802C054
	ldr r0, [r4, #8]
	cmp r3, r0
	bgt _0802C054
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _0802C054
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bgt _0802C054
	ldr r1, _0802C07C @ =gSpriteInits_InteractablesMultiplayer
	ldrb r0, [r2, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r3, [r5, #0x18]
	ldr r4, [r0]
	adds r0, r2, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl _call_via_r4
_0802C054:
	ldr r0, [r5, #0xc]
_0802C056:
	adds r0, #8
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0xc]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sb
	bne _0802BFFA
_0802C06C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C07C: .4byte gSpriteInits_InteractablesMultiplayer

	thumb_func_start sub_802C080
sub_802C080: @ 0x0802C080
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #4]
	ldr r1, _0802C0C0 @ =0x11000300
	ands r0, r1
	cmp r0, #0
	bne _0802C0CC
	ldr r0, _0802C0C4 @ =gStageData
	ldrb r0, [r0, #4]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0802C0CC
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0802C0B2
	cmp r1, #8
	beq _0802C0B2
	cmp r1, #0x10
	bne _0802C0CC
_0802C0B2:
	ldr r1, [r2]
	ldr r0, _0802C0C8 @ =Player_800D944
	cmp r1, r0
	beq _0802C0CC
	movs r0, #0
	b _0802C0CE
	.align 2, 0
_0802C0C0: .4byte 0x11000300
_0802C0C4: .4byte gStageData
_0802C0C8: .4byte Player_800D944
_0802C0CC:
	movs r0, #1
_0802C0CE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802C0D4
sub_802C0D4: @ 0x0802C0D4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #4]
	ldr r1, _0802C0F0 @ =0x11000100
	ands r0, r1
	cmp r0, #0
	bne _0802C0F8
	ldr r1, [r2]
	ldr r0, _0802C0F4 @ =Player_800D944
	cmp r1, r0
	beq _0802C0F8
	movs r0, #0
	b _0802C0FA
	.align 2, 0
_0802C0F0: .4byte 0x11000100
_0802C0F4: .4byte Player_800D944
_0802C0F8:
	movs r0, #1
_0802C0FA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802C100
sub_802C100: @ 0x0802C100
	push {r4, lr}
	ldr r0, _0802C130 @ =gStageData
	adds r2, r0, #0
	adds r2, #0x94
	ldr r1, [r2]
	cmp r1, #0
	beq _0802C138
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _0802C134
	ldrh r4, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4]
	bl EwramFree
	ldr r0, [r4, #4]
	bl EwramFree
	ldr r0, [r4, #8]
	bl EwramFree
	b _0802C138
	.align 2, 0
_0802C130: .4byte gStageData
_0802C134:
	movs r0, #0
	str r0, [r2]
_0802C138:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

@ TODO/MATCHING: It doesn't look like it here, but maybe this gets s16 params?
@                It gets called with s16s in some places. (e.g. Task_BigAirBubble)
	thumb_func_start sub_802C140
sub_802C140: @ 0x0802C140
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r2, _0802C18C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	ldr r1, [r2, #4]
	subs r4, r4, r1
	adds r0, #0x80
	movs r1, #0xf8
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802C16A
	adds r0, r4, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0802C16A
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r4, r0
	ble _0802C190
_0802C16A:
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0xf8
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0802C186
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0802C186
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _0802C190
_0802C186:
	movs r0, #0
	b _0802C192
	.align 2, 0
_0802C18C: .4byte gCamera
_0802C190:
	movs r0, #1
_0802C192:
	pop {r4, r5}
	pop {r1}
	bx r1

@ NOTE: IsWorldPtActive/IsScreenPtActive are not about just visibility,
@       but about being in the range where entities spawn/are active.
@ Input:
    @ R0 = worldX @ Not Q_24_8!
    @ R1 = worldY @ Not Q_24_8!
	thumb_func_start IsWorldPtActive
IsWorldPtActive: @ 0x0802C198
	push {lr}
	adds r3, r1, #0
	ldr r2, _0802C1C4 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	ldr r1, [r2, #4]
	subs r3, r3, r1
	adds r0, #0x80
	movs r1, #0xf8
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802C1C0
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0802C1C0
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _0802C1C8
_0802C1C0:
	movs r0, #0
	b _0802C1CA
	.align 2, 0
_0802C1C4: .4byte gCamera
_0802C1C8:
	movs r0, #1
_0802C1CA:
	pop {r1}
	bx r1
	.align 2, 0

    @ Used by IAs 084, 101, 103, 112 and 131 (Pendulum)
	thumb_func_start IsScreenPtActive
IsScreenPtActive: @ 0x0802C1D0
	push {lr}
	adds r2, r1, #0
	adds r0, #0x80
	movs r1, #0xf8
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802C1EE
	adds r0, r2, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0802C1EE
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r2, r0
	ble _0802C1F2
_0802C1EE:
	movs r0, #0
	b _0802C1F4
_0802C1F2:
	movs r0, #1
_0802C1F4:
	pop {r1}
	bx r1

    @ Some On-Screen check?
    @ Used by IAs Gondola (Chaos Angel), 102 and 139
	thumb_func_start sub_802C1F8
sub_802C1F8: @ 0x0802C1F8
	push {lr}
	adds r2, r1, #0
	adds r0, #0x20
	movs r1, #0x98
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802C212
	adds r0, r2, #0
	adds r0, #0x20
	cmp r0, #0
	blt _0802C212
	cmp r2, #0xc0
	ble _0802C216
_0802C212:
	movs r0, #0
	b _0802C218
_0802C216:
	movs r0, #1
_0802C218:
	pop {r1}
	bx r1
