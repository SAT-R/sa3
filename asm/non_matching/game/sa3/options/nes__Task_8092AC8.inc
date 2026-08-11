
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _08092B98 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r2, _08092B9C @ =gPseudoRandom
	ldr r0, [r2]
	ldr r6, _08092BA0 @ =0x00196225
	muls r0, r6, r0
	ldr r5, _08092BA4 @ =0x3C6EF35F
	adds r3, r0, r5
	str r3, [r2]
	str r3, [sp]
	ldr r0, [sp]
	movs r1, #0xf
	ands r0, r1
	lsls r1, r0, #0x10
	adds r7, r2, #0
	ldr r0, _08092BA8 @ =gPressedKeys
	mov r8, r0
	cmp r1, #0
	beq _08092B18
	mov ip, r7
	adds r2, r6, #0
_08092B02:
	adds r0, r3, #0
	muls r0, r2, r0
	adds r3, r0, r5
	str r3, [sp]
	ldr r0, _08092BAC @ =0xFFFF0000
	adds r1, r1, r0
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _08092B02
	mov r0, ip
	str r3, [r0]
_08092B18:
	ldr r0, [sp]
	str r0, [r7]
	mov r0, r8
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08092B34
	movs r0, #0x6b
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_8092D1C
_08092B34:
	adds r0, r4, #0
	bl sub_80933B0
	adds r0, r4, #0
	bl sub_80934B0
	adds r0, r4, #0
	bl sub_809380C
	adds r0, r4, #0
	bl sub_809382C
	adds r0, r4, #0
	bl sub_809384C
	adds r0, r4, #0
	bl sub_8093640
	adds r0, r4, #0
	bl sub_80938B4
	adds r0, r4, #0
	bl sub_8093904
	adds r0, r4, #0
	bl sub_80936A0
	movs r3, #0
	ldr r0, _08092BB0 @ =gInput
	ldrh r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _08092B7E
	movs r3, #1
_08092B7E:
	ldr r0, _08092BB4 @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08092BC8
	cmp r3, #0
	beq _08092BB8
	adds r0, r4, #0
	bl sub_80930B8
	b _08092BC4
	.align 2, 0
_08092B98: .4byte gCurTask
_08092B9C: .4byte gPseudoRandom
_08092BA0: .4byte 0x00196225
_08092BA4: .4byte 0x3C6EF35F
_08092BA8: .4byte gPressedKeys
_08092BAC: .4byte 0xFFFF0000
_08092BB0: .4byte gInput
_08092BB4: .4byte gRepeatedKeys
_08092BB8:
	movs r0, #0x6c
	bl m4aSongNumStart
	adds r0, r4, #0
	bl sub_8092F60
_08092BC4:
	cmp r0, #1
	beq _08092CAA
_08092BC8:
	ldr r0, [r4, #0x40]
	subs r0, #0x34
	asrs r0, r0, #4
	ldrh r1, [r4, #0x12]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08092C50 @ =gUnknown_080D74B8
	adds r1, r1, r0
	ldr r0, [r4, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r0, [r4, #2]
	ldr r5, _08092C54 @ =gPressedKeys
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08092C02
	movs r0, #1
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_80937DC
_08092C02:
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08092C18
	movs r0, #2
	strb r0, [r4, #3]
	adds r0, r4, #0
	bl sub_80937DC
_08092C18:
	adds r0, r4, #0
	bl sub_809386C
	adds r0, r4, #0
	bl sub_80935A4
	adds r0, r4, #0
	bl sub_8092274
	ldrh r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08092C70
	ldrb r0, [r4, #6]
	cmp r0, #6
	bhi _08092C70
	movs r0, #0x6a
	bl m4aSongNumStart
	ldrb r0, [r4, #2]
	cmp r0, #0xa
	bne _08092C58
	adds r0, r4, #0
	bl sub_8092D94
	b _08092C70
	.align 2, 0
_08092C50: .4byte gUnknown_080D74B8
_08092C54: .4byte gPressedKeys
_08092C58:
	cmp r0, #0x15
	bne _08092C64
	adds r0, r4, #0
	bl sub_8092EBC
	b _08092C70
_08092C64:
	ldrb r0, [r4, #6]
	cmp r0, #5
	bhi _08092C70
	adds r0, r4, #0
	bl sub_8092CC8
_08092C70:
	ldr r0, _08092CB8 @ =gInput
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r2, r0, #0
	ands r2, r1
	cmp r2, r0
	beq _08092C8A
	cmp r2, #0
	beq _08092C8A
	adds r0, r4, #0
	bl sub_80935E4
_08092C8A:
	ldr r0, _08092CBC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08092CAA
	movs r0, #0x6a
	bl m4aSongNumStart
	movs r0, #0
	strb r0, [r4, #3]
	strh r0, [r4, #0xe]
	ldr r0, _08092CC0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08092CC4 @ =Task_8092690
	str r0, [r1, #8]
_08092CAA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092CB8: .4byte gInput
_08092CBC: .4byte gPressedKeys
_08092CC0: .4byte gCurTask
_08092CC4: .4byte Task_8092690

.syntax divided
