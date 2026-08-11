
.syntax unified
.text
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08092F7C @ =gRepeatedKeys
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08092F80
	adds r0, r2, #0
	movs r1, #0
	bl sub_80932E0
	b _080930AA
	.align 2, 0
_08092F7C: .4byte gRepeatedKeys
_08092F80:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08092F92
	adds r0, r2, #0
	movs r1, #1
	bl sub_80932E0
	b _080930AA
_08092F92:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08093018
_08092F9A:
	ldr r1, [r2, #0x3c]
	cmp r1, #0x1a
	bne _08092FAE
	ldrb r1, [r2, #7]
	cmp r1, #0
	bne _08092FB8
	movs r0, #1
	strb r0, [r2, #7]
	strb r1, [r2, #8]
	b _08093032
_08092FAE:
	movs r0, #0
	strb r0, [r2, #7]
	adds r0, r1, #0
	subs r0, #0x10
	str r0, [r2, #0x3c]
_08092FB8:
	ldr r1, [r2, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r2, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	ldr r0, _08093014 @ =gUnknown_080D7470
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, r4
	bne _08092FE6
	ldrh r0, [r6, #2]
	cmp r0, r5
	beq _08093004
_08092FE6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _08093004
	lsls r1, r3, #2
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _08092FE6
	adds r0, r6, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r5
	bne _08092FE6
_08093004:
	movs r0, #0
	cmp r3, #0xe
	bne _0809300C
	movs r0, #1
_0809300C:
	cmp r0, #0
	beq _08092F9A
	b _080930AA
	.align 2, 0
_08093014: .4byte gUnknown_080D7470
_08093018:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080930AA
_08093020:
	ldr r1, [r2, #0x3c]
	cmp r1, #0xba
	bne _08093048
	ldrb r0, [r2, #7]
	cmp r0, #0
	bne _08093052
	movs r0, #1
	strb r0, [r2, #7]
	strb r0, [r2, #8]
_08093032:
	ldr r0, _08093040 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08093044 @ =Task_8092690
	str r0, [r1, #8]
	movs r0, #1
	b _080930AC
	.align 2, 0
_08093040: .4byte gCurTask
_08093044: .4byte Task_8092690
_08093048:
	movs r0, #0
	strb r0, [r2, #7]
	adds r0, r1, #0
	adds r0, #0x10
	str r0, [r2, #0x3c]
_08093052:
	ldr r1, [r2, #0x40]
	subs r1, #0x34
	asrs r1, r1, #4
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [r2, #0x3c]
	subs r0, #0x1a
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r3, #0
	ldr r0, _080930B4 @ =gUnknown_080D7470
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, r4
	bne _08093080
	ldrh r0, [r6, #2]
	cmp r0, r5
	beq _0809309E
_08093080:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xd
	bhi _0809309E
	lsls r1, r3, #2
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _08093080
	adds r0, r6, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	cmp r0, r5
	bne _08093080
_0809309E:
	movs r0, #0
	cmp r3, #0xe
	bne _080930A6
	movs r0, #1
_080930A6:
	cmp r0, #0
	beq _08093020
_080930AA:
	movs r0, #0
_080930AC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080930B4: .4byte gUnknown_080D7470

.syntax divided
