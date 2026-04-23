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
	ldr r0, _0802AE50 @ =0x00000535 @ ANIM_RING
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
	bl CreateCollectRingEffect
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
