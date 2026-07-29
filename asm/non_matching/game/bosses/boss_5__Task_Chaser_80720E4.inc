
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _08072128 @ =gCurTask
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r5, r0, r1
	ldr r2, _0807212C @ =0x0300013C
	adds r2, r2, r0
	mov r8, r2
	ldr r4, _08072130 @ =0x03000164
	adds r4, r4, r0
	mov sl, r4
	ldrh r0, [r5, #0x14]
	adds r0, #1
	movs r6, #0
	mov sb, r6
	strh r0, [r5, #0x14]
	ldrh r6, [r5, #0x30]
	cmp r6, #0x14
	bne _0807211A
	b _08072294
_0807211A:
	cmp r6, #0x14
	bgt _08072134
	cmp r6, #0
	beq _08072142
	cmp r6, #0xa
	beq _0807217C
	b _08072424
	.align 2, 0
_08072128: .4byte gCurTask
_0807212C: .4byte 0x0300013C
_08072130: .4byte 0x03000164
_08072134:
	cmp r6, #0x32
	bne _0807213A
	b _0807234C
_0807213A:
	cmp r6, #0x64
	bne _08072140
	b _0807236C
_08072140:
	b _08072424
_08072142:
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	ldr r1, [r5]
	adds r1, r1, r0
	str r1, [r5]
	asrs r1, r1, #8
	ldr r0, _0807215C @ =0x00000514
	cmp r1, r0
	ble _08072160
	movs r0, #0xff
	lsls r0, r0, #8
	b _08072164
	.align 2, 0
_0807215C: .4byte 0x00000514
_08072160:
	movs r0, #0x80
	lsls r0, r0, #1
_08072164:
	strh r0, [r5, #8]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	ldr r1, _08072178 @ =gCamera
	ldr r0, [r5, #0x28]
	str r0, [r1, #0x14]
	movs r0, #0xa
	strh r0, [r5, #0x30]
	b _08072424
	.align 2, 0
_08072178: .4byte gCamera
_0807217C:
	ldrh r0, [r5, #0xa]
	adds r0, #0x40
	strh r0, [r5, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	ble _08072190
	strh r1, [r5, #0xa]
_08072190:
	movs r2, #8
	ldrsh r1, [r5, r2]
	ldr r0, [r5]
	adds r2, r0, r1
	str r2, [r5]
	movs r4, #0xa
	ldrsh r1, [r5, r4]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	movs r6, #8
	ldrsh r0, [r5, r6]
	cmp r0, #0
	beq _080721D0
	cmp r0, #0
	bge _080721C4
	asrs r1, r2, #8
	ldr r0, _080721C0 @ =0x00000514
	cmp r1, r0
	bgt _080721D0
	mov r0, sb
	strh r0, [r5, #8]
	b _080721D0
	.align 2, 0
_080721C0: .4byte 0x00000514
_080721C4:
	asrs r1, r2, #8
	ldr r0, _08072278 @ =0x00000513
	cmp r1, r0
	ble _080721D0
	mov r1, sb
	strh r1, [r5, #8]
_080721D0:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, _0807227C @ =0x00000596
	cmp r0, r1
	ble _080721F8
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r5, #0xa]
	movs r0, #0x14
	strh r0, [r5, #0x30]
	movs r0, #0x80
	lsls r0, r0, #4
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0x91
	str r1, [sp]
	movs r1, #4
	movs r2, #0
	bl CreateScreenShake
_080721F8:
	ldrh r1, [r5, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08072268
	ldr r3, _08072280 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _08072284 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08072288 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r7, _0807228C @ =0x000003FF
	ands r7, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #0x30
	bl __umodsi3
	adds r4, r0, #0
	ldr r1, _08072290 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r0, r4, r0
	lsrs r2, r0, #6
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r4, r0
	lsrs r0, r0, #6
	ldr r1, [r5]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r2, r2, r0
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r7, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0x80
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_08072268:
	ldrh r1, [r5, #0x14]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	beq _08072274
	b _08072424
_08072274:
	b _08072360
	.align 2, 0
_08072278: .4byte 0x00000513
_0807227C: .4byte 0x00000596
_08072280: .4byte gPseudoRandom
_08072284: .4byte 0x00196225
_08072288: .4byte 0x3C6EF35F
_0807228C: .4byte 0x000003FF
_08072290: .4byte gSineTable
_08072294:
	ldrh r0, [r5, #0xa]
	adds r0, #0x20
	strh r0, [r5, #0xa]
	movs r2, #8
	ldrsh r1, [r5, r2]
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	movs r4, #0xa
	ldrsh r1, [r5, r4]
	ldr r0, [r5, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	asrs r0, r0, #8
	movs r1, #0xc8
	lsls r1, r1, #3
	cmp r0, r1
	ble _080722C0
	movs r0, #0x3c
	strh r0, [r5, #0x32]
	movs r0, #0x32
	strh r0, [r5, #0x30]
_080722C0:
	ldrh r1, [r5, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807232A
	ldr r3, _08072338 @ =gPseudoRandom
	ldr r0, [r3]
	ldr r2, _0807233C @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08072340 @ =0x3C6EF35F
	adds r0, r0, r1
	ldr r7, _08072344 @ =0x000003FF
	ands r7, r0
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	movs r4, #0x1f
	ands r4, r0
	ldr r1, _08072348 @ =gSineTable
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r4, r0
	lsrs r2, r0, #6
	lsls r0, r7, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r4, r0
	lsrs r0, r0, #6
	ldr r1, [r5]
	adds r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r5, #4]
	adds r2, r2, r0
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	str r7, [sp]
	str r6, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_0807232A:
	ldrh r1, [r5, #0x14]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08072424
	b _08072360
	.align 2, 0
_08072338: .4byte gPseudoRandom
_0807233C: .4byte 0x00196225
_08072340: .4byte 0x3C6EF35F
_08072344: .4byte 0x000003FF
_08072348: .4byte gSineTable
_0807234C:
	ldrh r0, [r5, #0x32]
	subs r0, #1
	strh r0, [r5, #0x32]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08072424
	movs r0, #0xb4
	strh r0, [r5, #0x32]
	movs r0, #0x64
	strh r0, [r5, #0x30]
_08072360:
	ldr r0, _08072368 @ =0x00000221
	bl m4aSongNumStart
	b _08072424
	.align 2, 0
_08072368: .4byte 0x00000221
_0807236C:
	ldrh r1, [r5, #0x32]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080723F6
	ldr r4, _080724B8 @ =gPseudoRandom
	ldr r0, [r4]
	ldr r3, _080724BC @ =0x00196225
	adds r1, r0, #0
	muls r1, r3, r1
	ldr r2, _080724C0 @ =0x3C6EF35F
	adds r1, r1, r2
	movs r0, #0xff
	ands r0, r1
	movs r6, #0xa0
	lsls r6, r6, #2
	adds r7, r0, r6
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [r4]
	movs r1, #0x30
	bl __umodsi3
	adds r4, r0, #0
	movs r0, #3
	adds r3, r4, #0
	ands r3, r0
	lsls r3, r3, #8
	ldr r2, _080724C4 @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r1, r0, #0
	muls r1, r4, r1
	lsls r0, r7, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	muls r2, r4, r2
	lsrs r1, r1, #0xe
	ldr r4, _080724C8 @ =0x00000514
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsrs r2, r2, #0xe
	ldr r6, _080724CC @ =0x00000604
	adds r2, r2, r6
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r4, #0
	orrs r3, r0
	str r7, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	mov r6, sb
	str r6, [sp, #8]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0xc]
	movs r0, #7
	bl sub_8079758
_080723F6:
	ldrh r1, [r5, #0x32]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _08072406
	ldr r0, _080724D0 @ =0x00000221
	bl m4aSongNumStart
_08072406:
	ldrh r0, [r5, #0x32]
	subs r0, #1
	strh r0, [r5, #0x32]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08072424
	strh r0, [r5, #0x14]
	movs r0, #0xfa
	lsls r0, r0, #2
	strh r0, [r5, #0x30]
	ldr r0, _080724D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080724D8 @ =Task_Chaser_80724E4
	str r0, [r1, #8]
_08072424:
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r4, _080724DC @ =gCamera
	ldr r1, [r4]
	subs r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x10]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	mov r2, r8
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #8]
	mov r0, r8
	bl DisplaySprite
	mov r6, r8
	ldr r0, [r6, #8]
	ldr r1, _080724E0 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #8]
	mov r0, r8
	bl DisplaySprite
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	bne _08072488
	ldr r0, [r5]
	asrs r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	mov r1, sl
	strh r0, [r1, #0x10]
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	ldr r1, [r4, #4]
	subs r0, r0, r1
	mov r2, sl
	strh r0, [r2, #0x12]
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
_08072488:
	movs r4, #0x98
	lsls r4, r4, #1
	adds r0, r5, r4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #0x14
	orrs r0, r2
	str r0, [r1, #4]
	movs r6, #0x9a
	lsls r6, r6, #1
	adds r0, r5, r6
	ldr r1, [r0]
	ldr r0, [r1, #4]
	orrs r0, r2
	str r0, [r1, #4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080724B8: .4byte gPseudoRandom
_080724BC: .4byte 0x00196225
_080724C0: .4byte 0x3C6EF35F
_080724C4: .4byte gSineTable
_080724C8: .4byte 0x00000514
_080724CC: .4byte 0x00000604
_080724D0: .4byte 0x00000221
_080724D4: .4byte gCurTask
_080724D8: .4byte Task_Chaser_80724E4
_080724DC: .4byte gCamera
_080724E0: .4byte 0xFFFFFBFF

.syntax divided
