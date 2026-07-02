.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
.endif

	thumb_func_start Gemerl_State_6
Gemerl_State_6: @ 0x08066670
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x3c
	ldr r1, _080666AC @ =gUnknown_080D56DC
	adds r0, #0x20
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r0, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	movs r6, #0
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A6C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080666B0
	movs r1, #0x14
	ldrsh r0, [r5, r1]
	lsrs r6, r0, #0x1f
	b _080666BA
	.align 2, 0
_080666AC: .4byte gUnknown_080D56DC
_080666B0:
	movs r2, #0x14
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _080666BA
	movs r6, #1
_080666BA:
	cmp r6, #0
	beq _080666CC
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	movs r0, #1
	strh r0, [r5, #0x18]
_080666CC:
	ldrh r0, [r5, #0x18]
	subs r0, #1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08066702
	adds r0, r5, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	beq _080666F0
	cmp r0, #5
	bgt _080666EC
	cmp r0, #3
	beq _080666F0
	b _080666FA
_080666EC:
	cmp r0, #7
	bne _080666FA
_080666F0:
	adds r0, r5, #0
	movs r1, #0x32
	bl Gemerl_SwitchState
	b _08066702
_080666FA:
	adds r0, r5, #0
	movs r1, #7
	bl Gemerl_SwitchState
_08066702:
	adds r0, r5, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806671A
	adds r0, r5, #0
	bl sub_8068AAC
	adds r0, r5, #0
	bl sub_8067590
_0806671A:
	adds r0, r5, #0
	bl sub_8067A64
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_51
Gemerl_State_51: @ 0x08066728
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	cmp r0, #0xa
	beq _08066778
	cmp r0, #0xa
	bgt _08066748
	cmp r0, #1
	beq _08066750
	b _0806687E
_08066748:
	cmp r0, #0x64
	bne _0806674E
	b _0806684C
_0806674E:
	b _0806687E
_08066750:
	ldr r0, _0806682C @ =gCamera
	ldr r0, [r0]
	adds r0, #0x78
	lsls r0, r0, #8
	ldr r1, [r5, #8]
	subs r2, r0, r1
	adds r0, r2, #0
	cmp r2, #0
	bge _08066764
	adds r0, #0x3f
_08066764:
	asrs r0, r0, #6
	movs r1, #0
	strh r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	strh r0, [r5, #0x3a]
	strh r1, [r5, #0x16]
	movs r0, #0xa
	strh r0, [r5, #0x18]
	strh r1, [r5, #0x1a]
_08066778:
	ldr r0, _08066830 @ =gSineTable
	mov ip, r0
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsh r6, [r0, r1]
	movs r1, #0x3a
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	subs r0, r0, r6
	str r0, [r5, #0xc]
	ldrh r0, [r5, #0x1a]
	adds r0, #8
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _080667AC
	movs r0, #0
	strh r0, [r5, #0x14]
	movs r0, #0x64
	strh r0, [r5, #0x18]
	movs r0, #0x78
	strh r0, [r5, #0x1a]
_080667AC:
	ldr r0, _08066834 @ =gStageData
	mov r8, r0
	ldr r7, [r0, #0x1c]
	movs r0, #3
	ands r7, r0
	cmp r7, #0
	bne _08066816
	ldr r3, _08066838 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _0806683C @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08066840 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r4, _08066844 @ =0x000003FF
	ands r4, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r6, #0xf
	ands r6, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r6, r0
	lsrs r2, r0, #6
	lsls r0, r4, #1
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r6, r0
	lsrs r6, r0, #6
	ldr r1, [r5, #8]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #0xc]
	adds r2, r2, r6
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	str r4, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r5, #4]
	adds r0, #0x80
	str r0, [sp, #0xc]
	movs r0, #9
	bl sub_8079758
_08066816:
	mov r1, r8
	ldr r0, [r1, #0x1c]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0806687E
	ldr r0, _08066848 @ =0x00000221
	bl m4aSongNumStart
	b _0806687E
	.align 2, 0
_0806682C: .4byte gCamera
_08066830: .4byte gSineTable
_08066834: .4byte gStageData
_08066838: .4byte gPseudoRandom
_0806683C: .4byte 0x00196225
_08066840: .4byte 0x3C6EF35F
_08066844: .4byte 0x000003FF
_08066848: .4byte 0x00000221
_0806684C:
	ldrh r0, [r5, #0x1a]
	subs r0, #1
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0806687E
	strh r0, [r5, #0x18]
	ldr r6, [r4, #8]
	adds r0, r5, #0
	movs r1, #9
	bl Gemerl_SwitchState
	movs r1, #0x80
	lsls r1, r1, #3
	ands r6, r1
	cmp r6, #0
	beq _08066876
	ldr r0, [r4, #8]
	orrs r0, r1
	b _0806687C
_08066876:
	ldr r0, [r4, #8]
	ldr r1, _0806688C @ =0xFFFFFBFF
	ands r0, r1
_0806687C:
	str r0, [r4, #8]
_0806687E:
	movs r0, #0
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0806688C: .4byte 0xFFFFFBFF

	thumb_func_start Gemerl_State_8
Gemerl_State_8: @ 0x08066890
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x3c
	ldr r0, _080668E4 @ =gCamera
	ldr r0, [r0, #0x1c]
	adds r0, #0x10
	lsls r0, r0, #8
	ldr r1, [r5, #8]
	cmp r1, r0
	ble _080668E8
	adds r4, r5, #0
	adds r4, #0x33
	ldrb r0, [r4]
	cmp r0, #0
	beq _080668D4
	ldr r0, [r5, #0x3c]
	bl VramFree
	ldr r0, [r5, #0x78]
	bl VramFree
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r0, [r0]
	bl VramFree
	ldr r0, [r5, #4]
	bl VramFree
	movs r0, #0
	str r0, [r5, #4]
	strb r0, [r4]
_080668D4:
	ldrh r0, [r5, #0x18]
	subs r0, #1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08066968
	movs r0, #1
	b _0806696A
	.align 2, 0
_080668E4: .4byte gCamera
_080668E8:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A38
	ldr r0, _08066974 @ =gStageData
	ldr r6, [r0, #0x1c]
	movs r0, #7
	ands r6, r0
	cmp r6, #0
	bne _08066968
	ldr r4, _08066978 @ =gPseudoRandom
	ldr r0, [r4]
	ldr r2, _0806697C @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08066980 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r3, _08066984 @ =0x000003FF
	ands r3, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r4]
	movs r1, #0xf
	ands r1, r0
	ldr r4, _08066988 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r3, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	muls r2, r1, r2
	lsrs r2, r2, #6
	lsls r0, r3, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r1, r0
	lsrs r0, r0, #6
	ldr r1, [r5, #8]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #0xc]
	adds r2, r2, r0
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	movs r0, #8
	movs r3, #0x10
	bl sub_8079758
_08066968:
	movs r0, #0
_0806696A:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08066974: .4byte gStageData
_08066978: .4byte gPseudoRandom
_0806697C: .4byte 0x00196225
_08066980: .4byte 0x3C6EF35F
_08066984: .4byte 0x000003FF
_08066988: .4byte gSineTable

	thumb_func_start Gemerl_State_20
Gemerl_State_20: @ 0x0806698C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _080669F8 @ =gPlayers
	adds r6, r5, #0
	adds r6, #0x3c
	ldr r2, _080669FC @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl sub_8068A6C
	movs r3, #0x16
	ldrsh r1, [r5, r3]
	ldr r0, _08066A00 @ =0xFFFFFD00
	cmp r1, r0
	bge _08066AA0
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #0xc]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	ldr r2, [r5, #8]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sa2__sub_8004418
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08066A0E
	ldr r0, _08066A04 @ =0x000001FF
	cmp r4, r0
	bls _08066A08
	movs r4, #0
	b _08066A22
	.align 2, 0
_080669F8: .4byte gPlayers
_080669FC: .4byte gUnknown_080D56F0
_08066A00: .4byte 0xFFFFFD00
_08066A04: .4byte 0x000001FF
_08066A08:
	cmp r4, #0xff
	bls _08066A22
	b _08066A1E
_08066A0E:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r4, r0
	bls _08066A1A
	adds r4, r0, #0
	b _08066A22
_08066A1A:
	cmp r4, #0xff
	bhi _08066A22
_08066A1E:
	movs r4, #0x80
	lsls r4, r4, #1
_08066A22:
	ldr r7, _08066AB0 @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r3, [r0, r1]
	ldr r2, _08066AB4 @ =gUnknown_080D56F0
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #4
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r3, #0
	muls r0, r2, r0
	asrs r1, r0, #0xe
	cmp r1, #0
	bge _08066A56
	rsbs r1, r1, #0
_08066A56:
	lsls r0, r4, #1
	adds r0, r0, r7
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r4, r0, #0
	muls r4, r2, r4
	lsls r4, r4, #2
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A38
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r5, #0
	movs r1, #0x15
	bl Gemerl_SwitchState
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08066A9A
	ldrb r0, [r6, #0x1a]
	adds r0, #1
	strb r0, [r6, #0x1a]
_08066A9A:
	movs r0, #0xe7
	bl m4aSongNumStart
_08066AA0:
	adds r0, r5, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08066AB0: .4byte gSineTable
_08066AB4: .4byte gUnknown_080D56F0

	thumb_func_start Gemerl_State_21
Gemerl_State_21: @ 0x08066AB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x3c
	adds r6, r5, #0
	adds r6, #0x6c
	ldr r2, _08066B2C @ =gUnknown_080D56DC
	adds r7, r5, #0
	adds r7, #0x20
	movs r1, #0
	ldrsb r1, [r7, r1]
	movs r0, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	mov r8, r0
	mov sb, r8
	adds r0, r5, #0
	movs r1, #0
	bl sub_8068984
	mov ip, r0
	ldr r3, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r3, r0
	cmp r3, #0
	beq _08066B62
	ldr r2, _08066B30 @ =gUnknown_080D56F0
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r6]
	adds r0, r0, r1
	ldr r2, _08066B34 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	movs r2, #0
	strh r0, [r6]
	ldr r0, _08066B38 @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r5, #8]
	cmp r0, r1
	bge _08066B3C
	strh r2, [r6]
	b _08066B90
	.align 2, 0
_08066B2C: .4byte gUnknown_080D56DC
_08066B30: .4byte gUnknown_080D56F0
_08066B34: .4byte 0x000003FF
_08066B38: .4byte gCamera
_08066B3C:
	mov r0, ip
	cmp r0, #0
	beq _08066BD4
	strh r2, [r6]
	adds r0, r5, #0
	bl sub_8068AD8
	adds r0, r5, #0
	movs r1, #0x17
	bl Gemerl_SwitchState
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A38
	b _08066BD4
_08066B62:
	ldr r2, _08066BA4 @ =gUnknown_080D56F0
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r1, [r6]
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _08066BA8 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	strh r1, [r6]
	ldr r0, _08066BAC @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r5, #8]
	cmp r0, r1
	ble _08066BB0
	strh r3, [r6]
_08066B90:
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x14]
	adds r0, r5, #0
	movs r1, #0x16
	bl Gemerl_SwitchState
	b _08066BD4
	.align 2, 0
_08066BA4: .4byte gUnknown_080D56F0
_08066BA8: .4byte 0x000003FF
_08066BAC: .4byte gCamera
_08066BB0:
	mov r0, ip
	cmp r0, #0
	beq _08066BD4
	strh r3, [r6]
	adds r0, r5, #0
	bl sub_8068AD8
	adds r0, r5, #0
	movs r1, #0x17
	bl Gemerl_SwitchState
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A38
_08066BD4:
	adds r0, r5, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_25
Gemerl_State_25: @ 0x08066BEC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x2e
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08066C2C @ =gUnknown_080D5B00
	adds r2, r0, r1
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08066C3A
	adds r1, r4, #0
	adds r1, #0x2f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r2, #8]
	cmp r0, r2
	bne _08066C30
	adds r0, r4, #0
	movs r1, #0x1a
	bl Gemerl_SwitchState
	b _08066C76
	.align 2, 0
_08066C2C: .4byte gUnknown_080D5B00
_08066C30:
	adds r0, r4, #0
	movs r1, #0x19
	bl Gemerl_SwitchState
	b _08066C76
_08066C3A:
	cmp r0, #9
	bne _08066C76
	adds r2, r4, #0
	adds r2, #0x2f
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r1, [r2]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldrb r1, [r3]
	ldrb r2, [r2]
	adds r5, r4, #0
	adds r5, #0x30
	ldrb r3, [r5]
	adds r0, r4, #0
	bl sub_807A574
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa
	bne _08066C70
	movs r0, #0
	strb r0, [r5]
_08066C70:
	adds r0, r4, #0
	bl sub_08068B10
_08066C76:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08066C8E
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08066C8E:
	adds r0, r4, #0
	bl sub_8067B20
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_28
Gemerl_State_28: @ 0x08066C9C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _08066CF0 @ =gGemerlStates + (29 * 0x14)
	ldr r2, _08066CF4 @ =gUnknown_080D56DC
	adds r5, r4, #0
	adds r5, #0x20
	movs r1, #0
	ldrsb r1, [r5, r1]
	movs r0, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08066D02
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
	ldr r0, [r6]
	str r0, [r4]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08066CF8
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r6, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08066CFA
	.align 2, 0
_08066CF0: .4byte gGemerlStates + (29 * 0x14)
_08066CF4: .4byte gUnknown_080D56DC
_08066CF8:
	ldrh r0, [r6, #4]
_08066CFA:
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_8068AD8
_08066D02:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_29
Gemerl_State_29: @ 0x08066D0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0
	mov sb, r0
	movs r1, #0x3c
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08066D48
	ldr r0, _08066D44 @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r7, #8]
	cmp r0, r1
	bge _08066D5A
	movs r0, #1
	mov sb, r0
	b _08066D5A
	.align 2, 0
_08066D44: .4byte gCamera
_08066D48:
	ldr r0, _08066D98 @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r7, #8]
	cmp r0, r1
	ble _08066D5A
	movs r1, #1
	mov sb, r1
_08066D5A:
	adds r0, r7, #0
	bl sub_8067A64
	movs r6, #0
_08066D62:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08066D9C @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _08066DA0
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08066DEA
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _08066DEA
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	movs r0, #0
	b _08066DE8
	.align 2, 0
_08066D98: .4byte gCamera
_08066D9C: .4byte gPlayers
_08066DA0:
	ldr r1, [r7, #8]
	asrs r1, r1, #8
	ldr r2, [r7, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r8
	movs r3, #1
	bl sub_8020700
	adds r5, r0, #0
	cmp r5, #1
	bne _08066DEA
	adds r0, r4, #0
	bl Player_8009850
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08066DD8
	ldr r0, [r4, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _08066DDC
_08066DD8:
	ldr r0, [r4, #4]
	orrs r0, r5
_08066DDC:
	str r0, [r4, #4]
	ldr r0, [r4, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #4]
	mov r0, r8
_08066DE8:
	str r0, [r4, #0x6c]
_08066DEA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08066D62
	movs r6, #0
	ldr r3, _08066E2C @ =gPlayers
_08066DF8:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	adds r4, r0, r3
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08066E6C
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _08066E6C
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08066E30
	ldr r0, [r7, #8]
	movs r1, #0xf0
	lsls r1, r1, #5
	b _08066E34
	.align 2, 0
_08066E2C: .4byte gPlayers
_08066E30:
	ldr r0, [r7, #8]
	ldr r1, _08066E54 @ =0xFFFFE200
_08066E34:
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r7, #0xc]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	asrs r1, r0, #8
	ldr r2, _08066E58 @ =gCamera
	ldr r0, [r2, #0x1c]
	subs r0, #1
	cmp r1, r0
	blt _08066E5C
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	movs r0, #1
	mov sb, r0
	b _08066E6C
	.align 2, 0
_08066E54: .4byte 0xFFFFE200
_08066E58: .4byte gCamera
_08066E5C:
	ldr r0, [r2, #0x18]
	adds r0, #1
	cmp r1, r0
	bgt _08066E6C
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	movs r1, #1
	mov sb, r1
_08066E6C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08066DF8
	mov r0, sb
	cmp r0, #1
	bne _08066ED0
	adds r0, r7, #0
	movs r1, #0x1e
	bl Gemerl_SwitchState
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r7, #0
	bl sub_8068ACC
	movs r6, #0
	movs r5, #0
_08066E98:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08066EE0 @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08066EC6
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _08066EC6
	adds r0, r4, #0
	adds r0, #0x4a
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, r4, #0
	bl Call__Player_8014550
_08066EC6:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08066E98
_08066ED0:
	movs r0, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08066EE0: .4byte gPlayers

	thumb_func_start Gemerl_State_33
Gemerl_State_33: @ 0x08066EE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08066F60 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _08066F3E
	adds r0, r4, #0
	movs r1, #0x22
	bl Gemerl_SwitchState
	adds r0, r4, #0
	adds r0, #0x2f
	movs r1, #0
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x24
	movs r3, #0
_08066F30:
	adds r0, r2, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _08066F30
_08066F3E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08066F56
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08066F56:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08066F60: .4byte gUnknown_080D56F0

	thumb_func_start Gemerl_State_34
Gemerl_State_34: @ 0x08066F64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x3c
	ldr r0, _08067044 @ =gUnknown_080D56F0
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x20
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, r8
	adds r1, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl sub_8068A6C
	movs r2, #0x16
	ldrsh r1, [r5, r2]
	ldr r0, _08067048 @ =0xFFFFFD00
	cmp r1, r0
	bge _0806702E
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	mov sb, r1
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #2
	cmp r0, #0
	beq _08066FBA
	movs r4, #0
_08066FBA:
	ldr r2, _0806704C @ =gSineTable
	mov ip, r2
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, r8
	adds r1, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	adds r0, r2, #0
	muls r0, r3, r0
	asrs r1, r0, #0xe
	cmp r1, #0
	bge _08066FEC
	rsbs r1, r1, #0
_08066FEC:
	lsls r0, r4, #1
	add r0, ip
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r4, r0, #0
	muls r4, r3, r4
	lsls r4, r4, #2
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_8068A38
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r5, #0
	movs r1, #0x23
	bl Gemerl_SwitchState
	ldr r0, [r6, #8]
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0806702E
	ldrb r0, [r6, #0x1a]
	adds r0, #1
	strb r0, [r6, #0x1a]
_0806702E:
	adds r0, r5, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08067044: .4byte gUnknown_080D56F0
_08067048: .4byte 0xFFFFFD00
_0806704C: .4byte gSineTable

	thumb_func_start Gemerl_State_35
Gemerl_State_35: @ 0x08067050
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	adds r7, r4, #0
	adds r7, #0x6c
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080670C8 @ =gUnknown_080D5B48
	adds r1, r1, r0
	str r1, [sp]
	movs r0, #0
	mov sl, r0
	mov sb, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068984
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080670D8
	ldr r2, _080670CC @ =gUnknown_080D56F0
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r7]
	adds r0, r0, r1
	ldr r2, _080670D0 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7]
	ldr r2, _080670D4 @ =gCamera
	ldr r0, [r2, #0x1c]
	subs r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	bge _0806710C
	b _08067108
	.align 2, 0
_080670C8: .4byte gUnknown_080D5B48
_080670CC: .4byte gUnknown_080D56F0
_080670D0: .4byte 0x000003FF
_080670D4: .4byte gCamera
_080670D8:
	ldr r2, _0806714C @ =gUnknown_080D56F0
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r1, [r7]
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _08067150 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	strh r1, [r7]
	ldr r2, _08067154 @ =gCamera
	ldr r0, [r2, #0x18]
	adds r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	ble _0806710C
_08067108:
	movs r3, #1
	mov sl, r3
_0806710C:
	ldr r0, [r4, #8]
	mov r8, r0
	asrs r0, r0, #8
	ldr r6, [r2, #0x18]
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0806715C
	lsls r0, r2, #0x10
	ldr r1, _08067158 @ =0xFFD80000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	adds r2, r4, #0
	adds r2, #0x2f
	ldrb r1, [r2]
	movs r3, #0x1c
	muls r1, r3, r1
	adds r5, r2, #0
	cmp r0, r1
	ble _08067184
	movs r0, #1
	mov sb, r0
	adds r0, r6, #0
	adds r0, #0x28
	adds r0, r1, r0
	b _08067180
	.align 2, 0
_0806714C: .4byte gUnknown_080D56F0
_08067150: .4byte 0x000003FF
_08067154: .4byte gCamera
_08067158: .4byte 0xFFD80000
_0806715C:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r2, r4, #0
	adds r2, #0x2f
	ldrb r0, [r2]
	movs r5, #0x1c
	adds r3, r5, #0
	muls r3, r0, r3
	movs r0, #0xc8
	subs r0, r0, r3
	adds r5, r2, #0
	cmp r1, r0
	bge _08067184
	movs r0, #1
	mov sb, r0
	adds r0, r6, #0
	adds r0, #0xc8
	subs r0, r0, r3
_08067180:
	lsls r0, r0, #8
	str r0, [r4, #8]
_08067184:
	mov r1, sb
	cmp r1, #0
	beq _080671EA
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r2, [r5]
	adds r0, r0, r2
	movs r6, #1
	strb r6, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	ldrb r0, [r3]
	adds r1, r6, #0
	ands r1, r0
	adds r1, #6
	ldrb r2, [r5]
	ldrb r3, [r3]
	adds r0, r4, #0
	bl sub_807A574
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	mov r3, r8
	str r3, [r4, #8]
	ldrb r0, [r5]
	ldr r5, [sp]
	ldrb r5, [r5, #8]
	cmp r0, r5
	bne _080671EA
	mov r0, sl
	cmp r0, #0
	beq _080671EA
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x31
	strb r6, [r0]
	movs r0, #0
	strh r0, [r7]
	adds r0, r4, #0
	movs r1, #0x24
	bl Gemerl_SwitchState
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
_080671EA:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_36
Gemerl_State_36: @ 0x08067204
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08067240 @ =gUnknown_080D5B48
	adds r5, r1, r0
	ldr r0, _08067244 @ =gUnknown_080D56F0
	ldrh r0, [r0, #0x2a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r6, #1
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #7
	beq _08067248
	lsls r2, r2, #0x10
	asrs r2, r2, #0x13
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
	b _08067254
	.align 2, 0
_08067240: .4byte gUnknown_080D5B48
_08067244: .4byte gUnknown_080D56F0
_08067248:
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
_08067254:
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x14]
	movs r2, #0
	ldrb r0, [r5, #8]
	cmp r2, r0
	bhs _08067286
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _080672D8
_08067270:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r5, #8]
	cmp r2, r0
	bhs _08067286
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08067270
	movs r6, #0
_08067286:
	cmp r6, #0
	beq _080672D8
	adds r2, r4, #0
	adds r2, #0x30
	ldrb r0, [r2]
	cmp r0, #1
	bne _0806729E
	adds r0, r4, #0
	movs r1, #0x25
	bl Gemerl_SwitchState
	b _080672D8
_0806729E:
	movs r1, #0
	movs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	movs r2, #0
	adds r1, r4, #0
	adds r1, #0x24
	movs r3, #0
_080672B6:
	adds r0, r1, r2
	strb r3, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bls _080672B6
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0x22
	bl Gemerl_SwitchState
_080672D8:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_39
Gemerl_State_39: @ 0x080672E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0806736C @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	movs r2, #0
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806734A
	adds r0, r4, #0
	adds r0, #0x2f
	strb r2, [r0]
	adds r0, #2
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	movs r2, #0
	lsls r5, r1, #0x10
	adds r3, r4, #0
	adds r3, #0x24
	movs r1, #0
_0806731C:
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #9
	bls _0806731C
	ldr r0, [r4, #0xc]
	ldr r1, _08067370 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0xc]
	asrs r1, r5, #0x10
	adds r0, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0x28
	bl Gemerl_SwitchState
	ldr r0, _08067374 @ =0x00000219
	bl m4aSongNumStart
_0806734A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08067362
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08067362:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806736C: .4byte gUnknown_080D56F0
_08067370: .4byte 0xFFFFF800
_08067374: .4byte 0x00000219

	thumb_func_start Gemerl_State_40
Gemerl_State_40: @ 0x08067378
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080673F4 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _080673D2
	adds r0, r4, #0
	movs r1, #0x29
	bl Gemerl_SwitchState
	adds r0, r4, #0
	adds r0, #0x2f
	movs r1, #0
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0x24
	movs r3, #0
_080673C4:
	adds r0, r2, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _080673C4
_080673D2:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _080673EA
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_080673EA:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080673F4: .4byte gUnknown_080D56F0

	thumb_func_start Gemerl_State_44
Gemerl_State_44: @ 0x080673F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, _08067438 @ =gUnknown_080D5B60
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x6c
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08067444
	ldr r2, _0806743C @ =gUnknown_080D56F0
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r7]
	adds r0, r0, r1
	ldr r2, _08067440 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7]
	b _08067466
	.align 2, 0
_08067438: .4byte gUnknown_080D5B60
_0806743C: .4byte gUnknown_080D56F0
_08067440: .4byte 0x000003FF
_08067444:
	ldr r2, _080674B0 @ =gUnknown_080D56F0
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #8
	adds r0, r0, r2
	ldrh r1, [r7]
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _080674B4 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	strh r1, [r7]
_08067466:
	movs r1, #0x18
	ldrsh r0, [r5, r1]
	cmp r0, #0x5a
	bne _080674B8
	movs r6, #0
	mov r2, r8
	ldrb r2, [r2, #8]
	cmp r6, r2
	bhs _080674C4
	adds r4, r5, #0
	adds r4, #0x2f
_0806747C:
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r1, [r4]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r3, [r0]
	adds r0, r5, #0
	movs r1, #8
	bl sub_807A574
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r2, r8
	ldrb r2, [r2, #8]
	cmp r6, r2
	blo _0806747C
	b _080674C4
	.align 2, 0
_080674B0: .4byte gUnknown_080D56F0
_080674B4: .4byte 0x000003FF
_080674B8:
	cmp r0, #0x1e
	bne _080674C4
	adds r1, r5, #0
	adds r1, #0x31
	movs r0, #1
	strb r0, [r1]
_080674C4:
	adds r0, r5, #0
	movs r1, #0x2d
	bl sub_80689DC
	cmp r0, #0
	beq _080674DE
	movs r0, #0
	strh r0, [r7]
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5, #0xc]
_080674DE:
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_47
Gemerl_State_47: @ 0x080674EC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _08067588 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #0xe
	lsrs r7, r0, #0x10
	ldr r5, _0806758C @ =gUnknown_080D5B60
	movs r6, #1
	movs r2, #0
	ldrb r0, [r5, #8]
	cmp r2, r0
	bhs _0806753A
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r1, [r0]
	adds r3, r0, #0
	cmp r1, #0
	bne _08067538
_08067524:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r1, [r5, #8]
	cmp r2, r1
	bhs _0806753A
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08067524
_08067538:
	movs r6, #0
_0806753A:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8068984
	cmp r0, #1
	bne _08067568
	cmp r6, #0
	beq _08067568
	adds r0, r4, #0
	movs r1, #0x30
	bl Gemerl_SwitchState
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
_08067568:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08067580
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08067580:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08067588: .4byte gUnknown_080D56F0
_0806758C: .4byte gUnknown_080D5B60

	thumb_func_start sub_8067590
sub_8067590: @ 0x08067590
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r5, #0
	adds r7, #0x3c
	adds r3, r5, #0
	adds r3, #0x21
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _080675AA
	b _080676C8
_080675AA:
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #0
	bne _080675BC
	b _080676C8
_080675BC:
	subs r0, r2, #1
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x22
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x78
	strb r0, [r3]
	ldr r0, _08067608 @ =0x00000222
	bl m4aSongNumStart
	movs r0, #0xa3
	lsls r0, r0, #3
	movs r1, #0
	movs r2, #0x78
	movs r3, #0
	bl sub_8078DB0
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _08067620
	ldr r1, _0806760C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _080676C8
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08067610
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x83
	bl sub_8027674
	b _080676C8
	.align 2, 0
_08067608: .4byte 0x00000222
_0806760C: .4byte gStageData
_08067610:
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x84
	bl sub_8027674
	b _080676C8
_08067620:
	movs r4, #0
	movs r0, #0x6c
	adds r0, r0, r5
	mov r8, r0
_08067628:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _08067688 @ =gPlayers
	adds r2, r0, r1
	ldr r0, [r2, #0x6c]
	cmp r0, r7
	bne _08067650
	ldr r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08067650
	str r1, [r2, #0x6c]
	adds r0, r2, #0
	bl Player_8005380
_08067650:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08067628
	movs r2, #0
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	mov r0, r8
	strh r2, [r0]
	ldr r1, _0806768C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _080676A8
	strh r2, [r5, #0x1a]
	ldr r0, [r5, #0x10]
	str r0, [r5, #0xc]
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08067690
	ldr r1, [r5, #8]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	movs r0, #0x81
	bl sub_8027674
	b _080676B6
	.align 2, 0
_08067688: .4byte gPlayers
_0806768C: .4byte gStageData
_08067690:
	movs r1, #0
	ldrsb r1, [r6, r1]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x84
	bl sub_8027674
	adds r0, r5, #0
	movs r1, #0x36
	bl Gemerl_SwitchState
	b _080676C8
_080676A8:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, #0
	bl sub_8068984
	cmp r0, #1
	bne _080676C0
_080676B6:
	adds r0, r5, #0
	movs r1, #0x33
	bl Gemerl_SwitchState
	b _080676C8
_080676C0:
	adds r0, r5, #0
	movs r1, #0x35
	bl Gemerl_SwitchState
_080676C8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Gemerl_SwitchState
Gemerl_SwitchState: @ 0x080676D4
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0x3c
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08067704 @ =gGemerlStates
	adds r2, r0, r1
	ldr r0, [r2]
	str r0, [r4]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08067708
	subs r0, #1
	lsls r0, r0, #1
	adds r1, r2, #4
	adds r1, r1, r0
	ldrh r0, [r1]
	b _0806770A
	.align 2, 0
_08067704: .4byte gGemerlStates
_08067708:
	ldrh r0, [r2, #4]
_0806770A:
	strh r0, [r4, #0x18]
	ldrh r0, [r2, #0xe]
	strh r0, [r3, #0xc]
	ldrb r0, [r2, #0x10]
	strb r0, [r3, #0x1a]
	ldr r0, _08067738 @ =0x0000FFFF
	strh r0, [r3, #0x18]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x20]
	str r0, [r3, #0x28]
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	beq _08067730
	adds r0, r4, #0
	bl sub_8068A00
_08067730:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067738: .4byte 0x0000FFFF

	thumb_func_start sub_806773C
sub_806773C: @ 0x0806773C
	push {lr}
	adds r3, r0, #0
	ldr r0, _08067754 @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #7
	bhi _08067828
	lsls r0, r0, #2
	ldr r1, _08067758 @ =_0806775C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08067754: .4byte gStageData
_08067758: .4byte _0806775C
_0806775C: @ jump table
	.4byte _0806777C @ case 0
	.4byte _08067780 @ case 1
	.4byte _08067828 @ case 2
	.4byte _080677A8 @ case 3
	.4byte _08067828 @ case 4
	.4byte _080677D0 @ case 5
	.4byte _08067828 @ case 6
	.4byte _080677F8 @ case 7
_0806777C:
	movs r1, #0x31
	b _0806782A
_08067780:
	ldr r2, _08067798 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0806779C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080677A0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ldr r2, _080677A4 @ =gUnknown_080D5724
	b _0806780C
	.align 2, 0
_08067798: .4byte gPseudoRandom
_0806779C: .4byte 0x00196225
_080677A0: .4byte 0x3C6EF35F
_080677A4: .4byte gUnknown_080D5724
_080677A8:
	ldr r2, _080677C0 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080677C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080677C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ldr r2, _080677CC @ =gUnknown_080D572C
	b _0806780C
	.align 2, 0
_080677C0: .4byte gPseudoRandom
_080677C4: .4byte 0x00196225
_080677C8: .4byte 0x3C6EF35F
_080677CC: .4byte gUnknown_080D572C
_080677D0:
	ldr r2, _080677E8 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _080677EC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080677F0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ldr r2, _080677F4 @ =gUnknown_080D573C
	b _0806780C
	.align 2, 0
_080677E8: .4byte gPseudoRandom
_080677EC: .4byte 0x00196225
_080677F0: .4byte 0x3C6EF35F
_080677F4: .4byte gUnknown_080D573C
_080677F8:
	ldr r2, _08067818 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0806781C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08067820 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ldr r2, _08067824 @ =gUnknown_080D574C
_0806780C:
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	b _0806782A
	.align 2, 0
_08067818: .4byte gPseudoRandom
_0806781C: .4byte 0x00196225
_08067820: .4byte 0x3C6EF35F
_08067824: .4byte gUnknown_080D574C
_08067828:
	movs r1, #1
_0806782A:
	ldrh r0, [r3, #0x18]
	subs r0, #1
	strh r0, [r3, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806783C
	adds r0, r3, #0
	bl Gemerl_SwitchState
_0806783C:
	pop {r0}
	bx r0

	thumb_func_start sub_8067840
sub_8067840: @ 0x08067840
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	movs r0, #0x16
	ldrsh r2, [r4, r0]
	ldr r0, [r4, #0xc]
	adds r0, r0, r2
	str r0, [r4, #0xc]
	movs r5, #0
	movs r2, #0xb0
	lsls r2, r2, #4
	adds r0, r0, r2
	asrs r0, r0, #8
	asrs r1, r1, #8
	str r5, [sp]
	ldr r2, _080678B0 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #0
	bgt _0806788A
	adds r0, #1
	lsls r0, r0, #8
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	ldr r0, _080678B4 @ =0xFFFFFF00
	ands r1, r0
	subs r1, #1
	str r1, [r4, #0xc]
	strh r5, [r4, #0x16]
_0806788A:
	ldr r1, [r4]
	ldr r0, _080678B8 @ =Gemerl_State_8
	cmp r1, r0
	beq _080678A8
	ldr r2, _080678BC @ =gCamera
	ldr r0, [r2, #0x18]
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r1, r0
	blt _080678A6
	ldr r0, [r2, #0x1c]
	lsls r0, r0, #8
	cmp r1, r0
	ble _080678A8
_080678A6:
	str r0, [r4, #8]
_080678A8:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080678B0: .4byte sa2__sub_801EE64
_080678B4: .4byte 0xFFFFFF00
_080678B8: .4byte Gemerl_State_8
_080678BC: .4byte gCamera

	thumb_func_start sub_80678C0
sub_80678C0: @ 0x080678C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x40
	bl VramMalloc
	str r0, [r4]
	movs r0, #0
	mov sb, r0
	movs r0, #0
	mov r8, r0
	ldr r0, _08067990 @ =0x00000506
	strh r0, [r4, #0xc]
	mov r0, sb
	strb r0, [r4, #0x1a]
	movs r0, #0x98
	lsls r0, r0, #3
	mov sl, r0
	mov r0, sl
	strh r0, [r4, #0x14]
	mov r0, r8
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	mov r0, sb
	strb r0, [r4, #0x1f]
	movs r7, #1
	rsbs r7, r7, #0
	str r7, [r4, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4, #8]
	movs r0, #0xf
	bl VramMalloc
	str r0, [r5]
	ldr r0, _08067994 @ =0x0000050C
	strh r0, [r5, #0xc]
	mov r0, sb
	strb r0, [r5, #0x1a]
	mov r0, sl
	strh r0, [r5, #0x14]
	mov r0, r8
	strh r0, [r5, #0xe]
	strh r0, [r5, #0x16]
	adds r0, r7, #0
	strb r0, [r5, #0x1b]
	movs r0, #0x10
	strb r0, [r5, #0x1c]
	mov r0, sb
	strb r0, [r5, #0x1f]
	str r7, [r5, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r5, #8]
	movs r0, #0x24
	bl VramMalloc
	str r0, [r6]
	ldr r0, _08067998 @ =0x0000050E
	strh r0, [r6, #0xc]
	mov r0, sb
	strb r0, [r6, #0x1a]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r6, #0x14]
	mov r0, r8
	strh r0, [r6, #0xe]
	strh r0, [r6, #0x16]
	adds r0, r7, #0
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	mov r0, sb
	strb r0, [r6, #0x1f]
	str r7, [r6, #0x20]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r6, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r6, #0
	bl UpdateSpriteAnimation
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08067990: .4byte 0x00000506
_08067994: .4byte 0x0000050C
_08067998: .4byte 0x0000050E

	thumb_func_start sub_806799C
sub_806799C: @ 0x0806799C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	adds r6, r4, #0
	adds r6, #0x6c
	movs r7, #0
	adds r0, #0x33
	ldrb r0, [r0]
	cmp r0, #0
	bne _080679B6
	movs r0, #0
	b _08067A5E
_080679B6:
	ldr r0, [r4, #8]
	asrs r0, r0, #8
	ldr r2, _08067A44 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r5, #0x10]
	ldr r0, [r4, #0xc]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r5, #0x12]
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _080679DE
	subs r0, r2, #1
	strb r0, [r1]
_080679DE:
	ldrb r0, [r5, #0x1b]
	cmp r0, #0xff
	beq _08067A00
	adds r0, r4, #0
	adds r0, #0x22
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08067A00
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _08067A08
_08067A00:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r7, r0, #0
_08067A08:
	ldrh r0, [r6]
	cmp r0, #0
	beq _08067A4C
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08067A4C
	ldr r2, _08067A48 @ =gNextFreeAffineIndex
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	movs r0, #0x60
	orrs r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r5, #8]
	orrs r0, r1
	str r0, [r5, #8]
	ldrh r0, [r5, #0x10]
	strh r0, [r6, #6]
	ldrh r0, [r5, #0x12]
	strh r0, [r6, #8]
	adds r0, r5, #0
	adds r1, r6, #0
	bl TransformSprite
	b _08067A56
	.align 2, 0
_08067A44: .4byte gCamera
_08067A48: .4byte gNextFreeAffineIndex
_08067A4C:
	ldr r0, [r5, #8]
	movs r1, #0x80
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_08067A56:
	adds r0, r5, #0
	bl DisplaySprite
	adds r0, r7, #0
_08067A5E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8067A64
sub_8067A64: @ 0x08067A64
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x78
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	beq _08067AC0
	ldr r0, [r5, #8]
	asrs r0, r0, #8
	ldr r2, _08067A9C @ =gCamera
	ldr r1, [r2]
	subs r3, r0, r1
	strh r3, [r4, #0x10]
	ldr r0, [r5, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08067AA0
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r3, #0
	subs r0, #0x10
	b _08067AAC
	.align 2, 0
_08067A9C: .4byte gCamera
_08067AA0:
	ldr r0, [r4, #8]
	ldr r1, _08067AC8 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r3, #0
	adds r0, #0x10
_08067AAC:
	strh r0, [r4, #0x10]
	ldr r0, [r5, #0xc]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	subs r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl DisplaySprite
_08067AC0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08067AC8: .4byte 0xFFFFFBFF

	thumb_func_start sub_8067ACC
sub_8067ACC: @ 0x08067ACC
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0xa0
	movs r0, #0x32
	adds r0, r0, r3
	mov ip, r0
	ldrb r2, [r0]
	cmp r2, #0
	beq _08067B12
	ldrh r1, [r4, #0xc]
	ldr r0, _08067B18 @ =0x0000050E
	cmp r1, r0
	bne _08067B12
	subs r0, r2, #1
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	ldr r2, _08067B1C @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0xc]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	adds r0, #0xc
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08067B12:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067B18: .4byte 0x0000050E
_08067B1C: .4byte gCamera

	thumb_func_start sub_8067B20
sub_8067B20: @ 0x08067B20
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r4, #0xa0
	movs r0, #0x32
	adds r0, r0, r3
	mov ip, r0
	ldrb r2, [r0]
	cmp r2, #0
	beq _08067B8A
	ldrh r1, [r4, #0xc]
	ldr r0, _08067B5C @ =0x00000514
	cmp r1, r0
	bne _08067B8A
	subs r0, r2, #1
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r3, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08067B64
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	ldr r2, _08067B60 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	subs r0, #4
	b _08067B70
	.align 2, 0
_08067B5C: .4byte 0x00000514
_08067B60: .4byte gCamera
_08067B64:
	ldr r0, [r3, #8]
	asrs r0, r0, #8
	ldr r2, _08067B90 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	adds r0, #4
_08067B70:
	strh r0, [r4, #0x10]
	ldr r0, [r3, #0xc]
	asrs r0, r0, #8
	ldr r1, [r2, #4]
	subs r0, r0, r1
	subs r0, #0x10
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_08067B8A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067B90: .4byte gCamera

	thumb_func_start sub_8067B94
sub_8067B94: @ 0x08067B94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	movs r0, #0
	mov sb, r0
	movs r0, #1
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x3c
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08067C10
	cmp r0, #0x3b
	ble _08067BC4
	b _08067D0E
_08067BC4:
	movs r6, #0
_08067BC6:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08067C0C @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08067C00
	ldr r1, [r7, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08067C00
	mov r0, r8
	cmp r0, #0
	beq _08067C00
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020CE0
_08067C00:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08067BC6
	b _08067D0E
	.align 2, 0
_08067C0C: .4byte gPlayers
_08067C10:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl sub_8004D68
	ldr r2, _08067CC0 @ =gPlayers
	ldr r0, _08067CC4 @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08067C5A
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _08067C68
_08067C5A:
	adds r0, r7, #0
	bl sub_807A1DC
	cmp r0, #1
	bne _08067C68
	movs r0, #1
	mov sb, r0
_08067C68:
	movs r6, #0
_08067C6A:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08067CC0 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08067D04
	ldr r1, [r7, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08067CE2
	mov r0, r8
	cmp r0, #0
	beq _08067CE2
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #1
	bne _08067CC8
	mov r0, sl
	cmp r0, #0
	beq _08067CC8
	movs r0, #1
	mov sb, r0
	movs r0, #0
	mov r8, r0
	adds r0, r4, #0
	bl sub_80044CC
	b _08067CE2
	.align 2, 0
_08067CC0: .4byte gPlayers
_08067CC4: .4byte gStageData
_08067CC8:
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
	cmp r0, #0
	beq _08067CE2
	movs r0, #0
	mov r8, r0
_08067CE2:
	ldr r1, [r7, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08067D04
	mov r0, r8
	cmp r0, #0
	beq _08067D04
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020CE0
_08067D04:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08067C6A
_08067D0E:
	mov r0, sb
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8067D20
sub_8067D20: @ 0x08067D20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	movs r0, #0
	mov sb, r0
	movs r0, #1
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x3c
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08067D98
	movs r6, #0
_08067D4C:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08067D94 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08067D86
	ldr r1, [r7, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08067D86
	mov r0, r8
	cmp r0, #0
	beq _08067D86
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020CE0
_08067D86:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08067D4C
	b _08067E8C
	.align 2, 0
_08067D94: .4byte gPlayers
_08067D98:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl sub_8004D68
	ldr r2, _08067E68 @ =gPlayers
	ldr r0, _08067E6C @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08067DE2
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _08067DF0
_08067DE2:
	adds r0, r7, #0
	bl sub_807A1DC
	cmp r0, #1
	bne _08067DF0
	movs r0, #1
	mov sb, r0
_08067DF0:
	movs r6, #0
_08067DF2:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	ldr r1, _08067E68 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	bne _08067E82
	ldr r1, [r7, #0x28]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08067E2E
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #1
	bl sub_8020CE0
	cmp r0, #0
	beq _08067E2E
	movs r0, #0
	mov r8, r0
_08067E2E:
	ldr r1, [r7, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08067E82
	mov r0, r8
	cmp r0, #0
	beq _08067E82
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020E3C
	cmp r0, #1
	bne _08067E70
	mov r0, sl
	cmp r0, #0
	beq _08067E70
	adds r0, r4, #0
	bl sub_80044CC
	movs r0, #1
	mov sb, r0
	b _08067E82
	.align 2, 0
_08067E68: .4byte gPlayers
_08067E6C: .4byte gStageData
_08067E70:
	ldr r1, [r5, #8]
	asrs r1, r1, #8
	ldr r2, [r5, #0xc]
	asrs r2, r2, #8
	str r4, [sp]
	adds r0, r7, #0
	movs r3, #0
	bl sub_8020CE0
_08067E82:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _08067DF2
_08067E8C:
	mov r0, sb
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8067EA0
sub_8067EA0: @ 0x08067EA0
	push {r4, r5, r6, lr}
	ldr r1, _08067EE8 @ =gStageData
	adds r1, #0x88
	ldr r1, [r1]
	ldrh r3, [r1, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r3, r1
	adds r1, #0x3c
	adds r6, r3, r1
	ldrb r2, [r0, #2]
	movs r1, #0x7f
	ands r1, r2
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	orrs r2, r0
	adds r5, r2, #0
	cmp r1, #1
	bne _08067EF0
	ldr r0, _08067EEC @ =0x03000020
	adds r1, r3, r0
	movs r0, #0
	strb r0, [r1]
	lsls r0, r2, #8
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	adds r0, r4, #0
	movs r1, #0x33
	bl Gemerl_SwitchState
	b _08067F12
	.align 2, 0
_08067EE8: .4byte gStageData
_08067EEC: .4byte 0x03000020
_08067EF0:
	cmp r1, #1
	blt _08067F12
	cmp r1, #4
	bgt _08067F12
	cmp r1, #3
	blt _08067F12
	ldr r1, _08067F18 @ =0x03000020
	adds r0, r3, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _08067F12
	adds r0, r4, #0
	bl sub_8067590
_08067F12:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067F18: .4byte 0x03000020

	thumb_func_start Gemerl_State_0
Gemerl_State_0: @ 0x08067F1C
	push {lr}
	movs r1, #1
	bl sub_80689DC
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_1
Gemerl_State_1: @ 0x08067F2C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #3
	bl sub_80689DC
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	bne _08067F4A
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067D20
	b _08067F52
_08067F4A:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
_08067F52:
	cmp r0, #0
	beq _08067F74
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	bne _08067F68
	adds r0, r4, #0
	bl sub_8068AE4
	b _08067F74
_08067F68:
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08067F74:
	adds r0, r4, #0
	bl sub_8067ACC
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_2
Gemerl_State_2: @ 0x08067F84
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #3
	bl sub_80689DC
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	bne _08067FA2
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067D20
	b _08067FAA
_08067FA2:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
_08067FAA:
	cmp r0, #0
	beq _08067FCC
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #5
	bne _08067FC0
	adds r0, r4, #0
	bl sub_8068AE4
	b _08067FCC
_08067FC0:
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08067FCC:
	adds r0, r4, #0
	bl sub_8067ACC
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_49
Gemerl_State_49: @ 0x08067FDC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #3
	bl sub_80689DC
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08067FFE
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08067FFE:
	adds r0, r4, #0
	bl sub_8067ACC
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_3
Gemerl_State_3: @ 0x0806800C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _0806805C @ =gUnknown_080D56DC
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r5, [r0]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08068064
	ldr r0, _08068060 @ =0x00000223
	bl m4aSongNumStart
	adds r0, r4, #0
	movs r1, #5
	bl Gemerl_SwitchState
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	bl sub_8068AD8
	b _0806807C
	.align 2, 0
_0806805C: .4byte gUnknown_080D56DC
_08068060: .4byte 0x00000223
_08068064:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806807C
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_0806807C:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_4
Gemerl_State_4: @ 0x08068084
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x18]
	subs r0, #1
	strh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080680B4
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080680AC
	adds r0, r1, #0
	movs r1, #9
	bl Gemerl_SwitchState
	b _080680B4
_080680AC:
	adds r0, r1, #0
	movs r1, #8
	bl Gemerl_SwitchState
_080680B4:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_52
Gemerl_State_52: @ 0x080680BC
	push {r4, lr}
	adds r1, r0, #0
	adds r4, r1, #0
	adds r4, #0x3c
	ldrh r0, [r1, #0x18]
	subs r0, #1
	strh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080680E2
	adds r0, r1, #0
	movs r1, #8
	bl Gemerl_SwitchState
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
_080680E2:
	ldr r0, _08068100 @ =gStageData
	ldr r0, [r0, #0x1c]
	movs r1, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080680F6
	movs r0, #0x89
	lsls r0, r0, #2
	bl m4aSongNumStart
_080680F6:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068100: .4byte gStageData

	thumb_func_start Gemerl_State_53
Gemerl_State_53: @ 0x08068104
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	bl sub_8068984
	cmp r0, #1
	bne _0806811C
	adds r0, r4, #0
	movs r1, #0x33
	bl Gemerl_SwitchState
_0806811C:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_54
Gemerl_State_54: @ 0x08068124
    movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start Gemerl_State_7
Gemerl_State_7: @ 0x08068128
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08068166
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
	ldr r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08068160
	ldr r0, _0806815C @ =0xFFFFFBFF
	ands r1, r0
	str r1, [r5, #8]
	b _0806816C
	.align 2, 0
_0806815C: .4byte 0xFFFFFBFF
_08068160:
	orrs r1, r2
	str r1, [r5, #8]
	b _0806816C
_08068166:
	adds r0, r4, #0
	bl sub_806773C
_0806816C:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_50
Gemerl_State_50: @ 0x08068174
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08068190
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
	b _08068196
_08068190:
	adds r0, r4, #0
	bl sub_806773C
_08068196:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_9
Gemerl_State_9: @ 0x080681A0
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	adds r5, #0x3c
	ldrh r0, [r1, #0x18]
	subs r0, #1
	strh r0, [r1, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080681F0
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080681CE
	movs r0, #1
	strh r0, [r1, #0x18]
	adds r0, r1, #0
	bl sub_806773C
	b _080681F0
_080681CE:
	ldr r4, [r5, #8]
	adds r0, r1, #0
	movs r1, #0x34
	bl Gemerl_SwitchState
	movs r1, #0x80
	lsls r1, r1, #3
	ands r4, r1
	cmp r4, #0
	beq _080681E8
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080681EE
_080681E8:
	ldr r0, [r5, #8]
	ldr r1, _080681F8 @ =0xFFFFFBFF
	ands r0, r1
_080681EE:
	str r0, [r5, #8]
_080681F0:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080681F8: .4byte 0xFFFFFBFF

	thumb_func_start Gemerl_State_10_12_14
Gemerl_State_10_12_14: @ 0x080681FC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r5, #0xb
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08068246
	lsls r0, r0, #2
	ldr r1, _08068218 @ =_0806821C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08068218: .4byte _0806821C
_0806821C: @ jump table
	.4byte _0806823C @ case 0
	.4byte _0806823C @ case 1
	.4byte _08068246 @ case 2
	.4byte _08068240 @ case 3
	.4byte _08068246 @ case 4
	.4byte _08068244 @ case 5
	.4byte _08068246 @ case 6
	.4byte _08068244 @ case 7
_0806823C:
	movs r5, #0xb
	b _08068246
_08068240:
	movs r5, #0xd
	b _08068246
_08068244:
	movs r5, #0xf
_08068246:
	ldr r0, [r4, #0xc]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r0, r2
	str r1, [r4, #0xc]
	movs r1, #0xd0
	lsls r1, r1, #4
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	movs r2, #0
	str r2, [sp]
	ldr r2, _0806828C @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #2
	bgt _08068280
	lsls r1, r0, #8
	ldr r0, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r1, r5, #0
	bl Gemerl_SwitchState
_08068280:
	movs r0, #1
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806828C: .4byte sa2__sub_801EE64

	thumb_func_start Gemerl_State_11_13_15
Gemerl_State_11_13_15: @ 0x08068290
	push {lr}
	movs r1, #0x10
	bl sub_80689DC
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_16
Gemerl_State_16: @ 0x080682A0
	push {lr}
	movs r1, #0x11
	bl sub_80689DC
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_18
Gemerl_State_18: @ 0x080682B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08068314 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080682F4
	ldr r0, [r4, #0xc]
	ldr r2, _08068318 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r4, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0x13
	bl Gemerl_SwitchState
	ldr r0, _0806831C @ =0x00000219
	bl m4aSongNumStart
_080682F4:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806830C
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_0806830C:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068314: .4byte gUnknown_080D56F0
_08068318: .4byte 0xFFFFF800
_0806831C: .4byte 0x00000219

	thumb_func_start Gemerl_State_19
Gemerl_State_19: @ 0x08068320
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08068378 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _08068356
	adds r0, r4, #0
	movs r1, #0x14
	bl Gemerl_SwitchState
_08068356:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806836E
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_0806836E:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068378: .4byte gUnknown_080D56F0

	thumb_func_start Gemerl_State_22
Gemerl_State_22: @ 0x0806837C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080683B8 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8068984
	cmp r0, #1
	bne _080683DE
	adds r0, r4, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #3
	bne _080683BC
	adds r0, r4, #0
	movs r1, #0x32
	bl Gemerl_SwitchState
	b _080683C4
	.align 2, 0
_080683B8: .4byte gUnknown_080D56F0
_080683BC:
	adds r0, r4, #0
	movs r1, #7
	bl Gemerl_SwitchState
_080683C4:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
	movs r0, #0xe7
	bl m4aSongNumStop
_080683DE:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_23
Gemerl_State_23: @ 0x080683E8
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	ldr r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08068410
	ldr r0, _0806840C @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	bge _08068420
	b _08068424
	.align 2, 0
_0806840C: .4byte gCamera
_08068410:
	ldr r0, _08068458 @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r4, #8]
	cmp r0, r1
	ble _08068420
	movs r2, #1
_08068420:
	cmp r2, #0
	beq _08068440
_08068424:
	adds r0, r4, #0
	bl sub_8068ACC
	adds r0, r4, #0
	movs r1, #6
	bl Gemerl_SwitchState
	ldrh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4, #0x14]
	movs r0, #0xe7
	bl m4aSongNumStop
_08068440:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8067B94
	adds r0, r4, #0
	bl sub_8067A64
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068458: .4byte gCamera

	thumb_func_start Gemerl_State_24
Gemerl_State_24: @ 0x0806845C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x19
	bl sub_80689DC
	cmp r0, #1
	bne _08068490
	ldr r0, _0806847C @ =gStageData
	ldrb r0, [r0, #9]
	cmp r0, #3
	bne _08068480
	adds r1, r4, #0
	adds r1, #0x2e
	movs r0, #2
	b _08068486
	.align 2, 0
_0806847C: .4byte gStageData
_08068480:
	adds r1, r4, #0
	adds r1, #0x2e
	movs r0, #0
_08068486:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_08068490:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _080684A8
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_080684A8:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_26
Gemerl_State_26: @ 0x080684B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0806851C @ =gUnknown_080D5B00
	adds r3, r1, r0
	movs r6, #1
	movs r2, #0
	ldrb r0, [r3, #8]
	cmp r2, r0
	bhs _080684EE
	adds r0, r4, #0
	adds r0, #0x24
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080684FA
_080684D8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r3, #8]
	cmp r2, r0
	bhs _080684EE
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080684D8
	movs r6, #0
_080684EE:
	cmp r6, #0
	beq _080684FA
	adds r0, r4, #0
	movs r1, #0x1f
	bl Gemerl_SwitchState
_080684FA:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _08068512
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_08068512:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806851C: .4byte gUnknown_080D5B00

	thumb_func_start Gemerl_State_27
Gemerl_State_27: @ 0x08068520
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08068560 @ =gPlayers
	adds r4, r5, #0
	adds r4, #0x3c
	movs r1, #0x1c
	bl sub_80689DC
	cmp r0, #1
	bne _080685A0
	ldr r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #3
	ands r0, r2
	cmp r0, #0
	beq _0806856C
	ldr r0, _08068564 @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r6, #0x10]
	cmp r0, r1
	blt _08068594
	movs r2, #0xa0
	lsls r2, r2, #6
	adds r0, r1, r2
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	ldr r1, _08068568 @ =0xFFFFFBFF
	ands r0, r1
	b _0806859E
	.align 2, 0
_08068560: .4byte gPlayers
_08068564: .4byte gCamera
_08068568: .4byte 0xFFFFFBFF
_0806856C:
	ldr r0, _0806858C @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0x2e
	lsls r0, r0, #8
	ldr r1, [r6, #0x10]
	cmp r0, r1
	ble _08068594
	movs r3, #0xa0
	lsls r3, r3, #6
	adds r0, r1, r3
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	ldr r1, _08068590 @ =0xFFFFFBFF
	ands r0, r1
	b _0806859E
	.align 2, 0
_0806858C: .4byte gCamera
_08068590: .4byte 0xFFFFFBFF
_08068594:
	ldr r3, _080685A8 @ =0xFFFFD800
	adds r0, r1, r3
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	orrs r0, r2
_0806859E:
	str r0, [r4, #8]
_080685A0:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080685A8: .4byte 0xFFFFD800

	thumb_func_start Gemerl_State_30
Gemerl_State_30: @ 0x080685AC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x32
	bl sub_80689DC
	adds r0, r4, #0
	bl sub_8067A64
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start Gemerl_State_31
Gemerl_State_31: @ 0x080685C4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _080685E0
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
	b _080685E6
_080685E0:
	adds r0, r4, #0
	bl sub_806773C
_080685E6:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_32
Gemerl_State_32: @ 0x080685F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08068654 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	ldrh r0, [r4, #0x18]
	subs r0, #1
	strh r0, [r4, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08068634
	ldr r0, [r4, #0xc]
	ldr r2, _08068658 @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r4, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0x21
	bl Gemerl_SwitchState
	ldr r0, _0806865C @ =0x00000219
	bl m4aSongNumStart
_08068634:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _0806864C
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_0806864C:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068654: .4byte gUnknown_080D56F0
_08068658: .4byte 0xFFFFF800
_0806865C: .4byte 0x00000219

	thumb_func_start Gemerl_State_37
Gemerl_State_37: @ 0x08068660
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080686C4 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	rsbs r1, r1, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8068984
	cmp r0, #1
	bne _080686A4
	adds r0, r4, #0
	movs r1, #0x26
	bl Gemerl_SwitchState
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
_080686A4:
	adds r0, r4, #0
	movs r1, #1
	bl sub_8067B94
	cmp r0, #0
	beq _080686BC
	adds r0, r4, #0
	bl sub_8068AAC
	adds r0, r4, #0
	bl sub_8067590
_080686BC:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080686C4: .4byte gUnknown_080D56F0

	thumb_func_start Gemerl_State_38
Gemerl_State_38: @ 0x080686C8
	push {lr}
	movs r1, #0x32
	bl sub_80689DC
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Gemerl_State_41
Gemerl_State_41: @ 0x080686D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08068740 @ =gUnknown_080D56F0
	adds r0, #0x20
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl sub_8068A6C
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	ldr r0, _08068744 @ =0xFFFFFD80
	cmp r1, r0
	bge _08068730
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_8068A38
	adds r0, r4, #0
	movs r1, #0x2a
	bl Gemerl_SwitchState
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0xc]
_08068730:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8067B94
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068740: .4byte gUnknown_080D56F0
_08068744: .4byte 0xFFFFFD80

	thumb_func_start Gemerl_State_42
Gemerl_State_42: @ 0x08068748
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x18]
	subs r0, #1
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806876E
	ldr r0, _08068774 @ =gCamera
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	adds r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #8
	str r1, [r2, #8]
	adds r0, r2, #0
	movs r1, #0x2b
	bl Gemerl_SwitchState
_0806876E:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_08068774: .4byte gCamera

	thumb_func_start Gemerl_State_43
Gemerl_State_43: @ 0x08068778
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0x2c
	bl sub_80689DC
	cmp r0, #0
	beq _080687A4
	ldr r0, [r4, #0xc]
	ldr r1, _080687AC @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080687A4
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
_080687A4:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080687AC: .4byte 0xFFFFF800

	thumb_func_start Gemerl_State_45
Gemerl_State_45: @ 0x080687B0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0x2e
	bl sub_80689DC
	cmp r0, #0
	beq _080687E6
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080687DC
	ldr r0, _080687D8 @ =gCamera
	ldr r0, [r0, #0x1c]
	subs r0, #0xc
	b _080687E2
	.align 2, 0
_080687D8: .4byte gCamera
_080687DC:
	ldr r0, _080687F0 @ =gCamera
	ldr r0, [r0, #0x18]
	adds r0, #0xc
_080687E2:
	lsls r0, r0, #8
	str r0, [r4, #8]
_080687E6:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080687F0: .4byte gCamera

	thumb_func_start Gemerl_State_46
Gemerl_State_46: @ 0x080687F4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x2f
	bl sub_80689DC
	cmp r0, #0
	beq _0806880A
	ldr r0, [r4, #0xc]
	ldr r1, _08068814 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0xc]
_0806880A:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08068814: .4byte 0xFFFFF800

	thumb_func_start Gemerl_State_48
Gemerl_State_48: @ 0x08068818
	push {lr}
	movs r1, #0x32
	bl sub_80689DC
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_Gemerl
TaskDestructor_Gemerl: @ 0x08068828
	push {r4, r5, lr}
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r5, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08068854
	ldr r0, [r4, #0x3c]
	bl VramFree
	ldr r0, [r4, #0x78]
	bl VramFree
	ldr r1, _0806885C @ =0x030000A0
	adds r0, r5, r1
	ldr r0, [r0]
	bl VramFree
	ldr r0, [r4, #4]
	bl VramFree
_08068854:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806885C: .4byte 0x030000A0

	thumb_func_start Task_Gemerl_8068860
Task_Gemerl_8068860: @ 0x08068860
	push {r4, r5, lr}
	ldr r5, _08068880 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08068884
	adds r0, r2, #0
	bl TaskDestroy
	b _080688AA
	.align 2, 0
_08068880: .4byte gCurTask
_08068884:
	adds r0, r4, #0
	bl sub_8068954
	adds r0, r4, #0
	bl sub_806799C
	bl sub_8079FFC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080688A4
	ldr r1, [r5]
	ldr r0, _080688A0 @ =sub_80688B4
	b _080688A8
	.align 2, 0
_080688A0: .4byte sub_80688B4
_080688A4:
	ldr r1, [r5]
	ldr r0, _080688B0 @ =Task_Gemerl_80663F0
_080688A8:
	str r0, [r1, #8]
_080688AA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080688B0: .4byte Task_Gemerl_80663F0

	thumb_func_start sub_80688B4
sub_80688B4: @ 0x080688B4
	push {r4, r5, lr}
	ldr r5, _080688D4 @ =gCurTask
	ldr r2, [r5]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #3
	bne _080688D8
	adds r0, r2, #0
	bl TaskDestroy
	b _080688FC
	.align 2, 0
_080688D4: .4byte gCurTask
_080688D8:
	adds r0, r4, #0
	bl sub_8068954
	adds r0, r4, #0
	bl sub_806799C
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0]
	cmp r0, #2
	bne _080688FC
	bl sub_807A074
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080688FC
	ldr r1, [r5]
	ldr r0, _08068904 @ =Task_Gemerl_80663F0
	str r0, [r1, #8]
_080688FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068904: .4byte Task_Gemerl_80663F0

	thumb_func_start sub_8068908
sub_8068908: @ 0x08068908
	push {r4, r5, lr}
	ldr r0, _0806892C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, #0x22
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r5, #0
	ldrsb r5, [r1, r5]
	cmp r5, #0
	beq _08068930
	subs r0, #1
	strb r0, [r1]
	b _08068942
	.align 2, 0
_0806892C: .4byte gCurTask
_08068930:
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	cmp r0, #0
	beq _08068942
	ldr r0, [r4, #0x1c]
	strb r5, [r0]
	b _0806894E
_08068942:
	adds r0, r4, #0
	bl sub_8067840
	adds r0, r4, #0
	bl sub_806799C
_0806894E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8068954
sub_8068954: @ 0x08068954
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2]
	ldr r0, _0806897C @ =Gemerl_State_8
	cmp r1, r0
	beq _08068976
	ldr r3, _08068980 @ =gCamera
	ldr r0, [r3, #0x18]
	lsls r0, r0, #8
	ldr r1, [r2, #8]
	cmp r1, r0
	blt _08068974
	ldr r0, [r3, #0x1c]
	lsls r0, r0, #8
	cmp r1, r0
	ble _08068976
_08068974:
	str r0, [r2, #8]
_08068976:
	pop {r0}
	bx r0
	.align 2, 0
_0806897C: .4byte Gemerl_State_8
_08068980: .4byte gCamera

	thumb_func_start sub_8068984
sub_8068984: @ 0x08068984
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r5, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4, #0x16]
	adds r1, r1, r0
	strh r1, [r4, #0x16]
	ldr r0, [r4, #0xc]
	movs r1, #0xb0
	lsls r1, r1, #4
	adds r0, r0, r1
	asrs r0, r0, #8
	ldr r1, [r4, #8]
	asrs r1, r1, #8
	str r5, [sp]
	ldr r2, _080689D4 @ =sa2__sub_801EE64
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #8
	bl sa2__sub_801E4E4
	cmp r0, #0
	bgt _080689CA
	adds r0, #1
	lsls r0, r0, #8
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	ldr r0, _080689D8 @ =0xFFFFFF00
	ands r1, r0
	subs r1, #1
	str r1, [r4, #0xc]
	strh r5, [r4, #0x16]
	movs r5, #1
_080689CA:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080689D4: .4byte sa2__sub_801EE64
_080689D8: .4byte 0xFFFFFF00

	thumb_func_start sub_80689DC
sub_80689DC: @ 0x080689DC
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #0
	ldrh r0, [r2, #0x18]
	subs r0, #1
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080689F6
	movs r4, #1
	adds r0, r2, #0
	bl Gemerl_SwitchState
_080689F6:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8068A00
sub_8068A00: @ 0x08068A00
	push {lr}
	adds r3, r0, #0
	adds r3, #0x3c
	ldr r2, _08068A24 @ =gCamera
	ldr r1, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	adds r1, r1, r2
	asrs r1, r1, #1
	lsls r1, r1, #8
	ldr r0, [r0, #8]
	cmp r1, r0
	ble _08068A28
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08068A2E
	.align 2, 0
_08068A24: .4byte gCamera
_08068A28:
	ldr r0, [r3, #8]
	ldr r1, _08068A34 @ =0xFFFFFBFF
	ands r0, r1
_08068A2E:
	str r0, [r3, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08068A34: .4byte 0xFFFFFBFF

	thumb_func_start sub_8068A38
sub_8068A38: @ 0x08068A38
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	adds r0, #0x3c
	lsls r2, r2, #0x18
	cmp r2, #0
	bne _08068A62
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08068A58
	strh r3, [r4, #0x14]
	b _08068A64
_08068A58:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r4, #0x14]
	b _08068A64
_08068A62:
	strh r3, [r4, #0x16]
_08068A64:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8068A6C
sub_8068A6C: @ 0x08068A6C
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r3, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08068A90
	ldrh r1, [r3, #0x14]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r3, #0x14]
	b _08068A9A
_08068A90:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r3, #0x14]
	adds r0, r0, r1
	strh r0, [r3, #0x14]
_08068A9A:
	ldrh r1, [r3, #0x16]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r3, #0x16]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8068AAC
sub_8068AAC: @ 0x08068AAC
	push {lr}
	adds r0, #0x21
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08068AC6
	movs r0, #0
_08068ABC:
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08068ABC
_08068AC6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8068ACC
sub_8068ACC: @ 0x08068ACC
	adds r0, #0x78
	movs r1, #1
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bx lr

	thumb_func_start sub_8068AD8
sub_8068AD8: @ 0x08068AD8
	adds r0, #0x78
	movs r1, #0
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	bx lr

	thumb_func_start sub_8068AE4
sub_8068AE4: @ 0x08068AE4
	adds r2, r0, #0
	adds r2, #0xa0
	adds r0, #0x32
	movs r1, #0x14
	strb r1, [r0]
	movs r1, #0
	ldr r0, _08068B08 @ =0x0000050E
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	ldr r0, _08068B0C @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	bx lr
	.align 2, 0
_08068B08: .4byte 0x0000050E
_08068B0C: .4byte 0x0000FFFF

	thumb_func_start sub_08068B10
sub_08068B10: @ 0x08068B10
	adds r2, r0, #0
	adds r2, #0xa0
	adds r0, #0x32
	movs r1, #0x12
	strb r1, [r0]
	movs r1, #0
	ldr r0, _08068B34 @ =0x00000514
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	ldr r0, _08068B38 @ =0x0000FFFF
	strh r0, [r2, #0x18]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r2, #0x14]
	bx lr
	.align 2, 0
_08068B34: .4byte 0x00000514
_08068B38: .4byte 0x0000FFFF
