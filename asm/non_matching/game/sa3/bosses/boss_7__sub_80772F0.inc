
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	movs r0, #0xcc
	adds r0, r0, r6
	mov r8, r0
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xf4
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #0x10]
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r7, r0, #0
	subs r7, #0xa0
	ldr r0, [r4, #0x10]
	asrs r1, r0, #8
	ldr r3, _0807734C @ =0xFFFFFCA0
	adds r0, r1, r3
	cmp r0, #0
	bge _08077338
	ldr r2, _08077350 @ =0xFFFFFCAF
	adds r0, r1, r2
_08077338:
	asrs r0, r0, #4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	str r3, [sp, #8]
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08077354
	movs r0, #0
	str r0, [sp, #8]
	b _0807735C
	.align 2, 0
_0807734C: .4byte 0xFFFFFCA0
_08077350: .4byte 0xFFFFFCAF
_08077354:
	cmp r0, #0x14
	ble _0807735C
	movs r1, #0x14
	str r1, [sp, #8]
_0807735C:
	ldr r2, [sp, #8]
	lsls r3, r2, #0x18
	asrs r5, r3, #0x18
	lsls r0, r5, #4
	adds r7, r7, r0
	adds r0, r6, #0
	adds r0, #0xc8
	lsls r1, r5, #2
	adds r2, r6, #4
	adds r1, r2, r1
	ldr r0, [r0]
	ldr r1, [r1]
	adds r0, r0, r1
	asrs r0, r0, #8
	str r0, [sp, #0x14]
	ldr r1, [r4, #4]
	movs r0, #0x20
	ands r0, r1
	mov sb, r3
	mov sl, r2
	cmp r0, #0
	beq _080773C6
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _080773C6
	adds r0, r6, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r5
	bne _080773C6
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _080773B4
	ldr r0, [r4, #0x14]
	ldr r3, _080773B0 @ =0xFFFFFC00
	adds r0, r0, r3
	b _080773BC
	.align 2, 0
_080773B0: .4byte 0xFFFFFC00
_080773B4:
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
_080773BC:
	adds r1, r6, #0
	adds r1, #0xbc
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r4, #0x14]
_080773C6:
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _080773D0
	rsbs r1, r1, #0
_080773D0:
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	ble _080773DC
	movs r3, #1
	str r3, [sp, #0xc]
_080773DC:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0807742C
	str r0, [sp]
	mov r0, r8
	adds r1, r7, #0
	ldr r2, [sp, #0x14]
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r1, #0x80
	lsls r1, r1, #9
	adds r3, r2, #0
	ands r3, r1
	cmp r3, #0
	beq _08077412
	ldr r0, [r4, #4]
	ands r0, r1
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	b _0807742C
_08077412:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0807742C
	ldr r1, [r4, #0x14]
	ldr r7, _08077480 @ =0xFFFFFF00
	adds r1, r1, r7
	lsls r0, r2, #0x18
	asrs r0, r0, #0x10
	subs r1, r1, r0
	str r1, [r4, #0x14]
	strh r3, [r4, #0x1a]
_0807742C:
	ldr r0, _08077484 @ =gStageData
	ldr r1, [sp, #4]
	ldrb r0, [r0, #6]
	cmp r1, r0
	beq _08077438
	b _080776B8
_08077438:
	adds r0, r6, #0
	adds r0, #0xb6
	ldrb r0, [r0]
	cmp r0, #0
	beq _080774CC
	adds r0, r6, #0
	adds r0, #0xb7
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	cmp r1, #0
	beq _080774E0
	movs r3, #0
	ldr r2, [r4, #4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080774E0
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _080774E0
	adds r0, r6, #0
	adds r0, #0xfc
	ldr r1, [r0]
	adds r1, #0x23
	ldrb r1, [r1]
	adds r5, r0, #0
	cmp r1, #0
	bne _08077488
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	rsbs r0, r2, #0
	lsrs r3, r0, #0x1f
	b _08077494
	.align 2, 0
_08077480: .4byte 0xFFFFFF00
_08077484: .4byte gStageData
_08077488:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	bne _08077494
	movs r3, #1
_08077494:
	movs r2, #0
	ldrsb r2, [r7, r2]
	subs r0, r2, #3
	mov r7, sb
	asrs r1, r7, #0x18
	cmp r0, r1
	bgt _080774E0
	adds r0, r2, #3
	cmp r0, r1
	blt _080774E0
	cmp r3, #0
	beq _080774E0
	ldr r0, [r5]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _080774E0
	ldr r1, _080774C8 @ =Player_80068EC
	adds r0, r4, #0
	bl SetPlayerCallback
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	b _080774E0
	.align 2, 0
_080774C8: .4byte Player_80068EC
_080774CC:
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080774E0
	ldr r0, [r4, #0x6c]
	cmp r0, r8
	bne _080774E0
	movs r0, #1
	str r0, [sp, #0x10]
_080774E0:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _080774E8
	b _08077646
_080774E8:
	adds r0, r6, #0
	adds r0, #0xb4
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r3, sb
	asrs r1, r3, #0x18
	adds r7, r0, #0
	cmp r2, r1
	bne _0807756E
	cmp r2, #0
	bne _08077500
	b _08077640
_08077500:
	cmp r2, #0x14
	bne _08077506
	b _08077640
_08077506:
	lsls r2, r2, #2
	subs r0, #0x5c
	adds r3, r0, r2
	ldr r0, [r3]
	cmp r0, #0
	bge _08077514
	rsbs r0, r0, #0
_08077514:
	cmp r0, #0x80
	ble _0807751A
	b _08077640
_0807751A:
	add r2, sl
	ldr r1, [r2]
	cmp r1, #0
	bge _08077524
	rsbs r1, r1, #0
_08077524:
	movs r0, #0xe0
	lsls r0, r0, #4
	cmp r1, r0
	ble _0807752E
	b _08077640
_0807752E:
	ldr r0, [r2]
	cmp r0, #0
	beq _0807753E
	adds r0, r6, #0
	adds r0, #0xc0
	ldr r0, [r0]
	rsbs r0, r0, #0
	b _0807763E
_0807753E:
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0807755C
	ldr r0, _08077558 @ =0xFFFFFC00
	str r0, [r3]
	adds r1, r6, #0
	adds r1, #0xc0
	movs r0, #0x80
	str r0, [r1]
	b _08077640
	.align 2, 0
_08077558: .4byte 0xFFFFFC00
_0807755C:
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r3]
	adds r1, r6, #0
	adds r1, #0xc0
	movs r0, #0x80
	rsbs r0, r0, #0
	str r0, [r1]
	b _08077640
_0807756E:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0807758E
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	cmp r1, #0
	bge _08077586
	rsbs r1, r1, #0
_08077586:
	movs r0, #0xe0
	lsls r0, r0, #4
	cmp r1, r0
	ble _08077594
_0807758E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _08077640
_08077594:
	mov r1, sb
	asrs r0, r1, #0x18
	cmp r0, #0
	beq _08077640
	cmp r0, #0x14
	beq _08077640
	movs r1, #0
	adds r3, r6, #0
	adds r3, #0x58
	movs r2, #0xc0
	adds r2, r2, r6
	mov r8, r2
	adds r6, #0xb5
	mov ip, r6
	adds r5, r0, #0
	adds r2, r3, #0
	movs r6, #0
_080775B6:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	cmp r1, r5
	beq _080775C4
	lsls r0, r1, #2
	adds r0, r2, r0
	str r6, [r0]
_080775C4:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _080775B6
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _080775EC
	mov r2, sb
	asrs r1, r2, #0x16
	mov r2, sl
	adds r0, r2, r1
	ldr r2, [r0]
	cmp r2, #0
	bge _080775E6
	rsbs r2, r2, #0
_080775E6:
	ldr r0, _08077600 @ =0x00000DFF
	cmp r2, r0
	ble _08077608
_080775EC:
	mov r1, sb
	asrs r0, r1, #0x16
	adds r2, r3, r0
	ldr r1, _08077604 @ =gUnknown_080D5998
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #1
	str r0, [r2]
	b _08077610
	.align 2, 0
_08077600: .4byte 0x00000DFF
_08077604: .4byte gUnknown_080D5998
_08077608:
	adds r1, r3, r1
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1]
_08077610:
	mov r2, sp
	ldrb r0, [r2, #8]
	mov r2, ip
	strb r0, [r2]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08077638
	mov r1, sb
	asrs r0, r1, #0x16
	adds r0, r3, r0
	ldr r1, [r0]
	rsbs r1, r1, #0
	str r1, [r0]
	movs r0, #0x80
	mov r2, r8
	str r0, [r2]
	b _08077640
_08077638:
	movs r0, #0x80
	rsbs r0, r0, #0
	mov r3, r8
_0807763E:
	str r0, [r3]
_08077640:
	mov r0, sp
	ldrb r0, [r0, #8]
	b _080776B6
_08077646:
	adds r0, r6, #0
	adds r0, #0xb4
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r1, #1
	rsbs r1, r1, #0
	adds r7, r0, #0
	cmp r2, r1
	beq _080776B4
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	cmp r0, #0
	beq _080776B4
	movs r1, #0
	adds r3, r6, #0
	adds r3, #0x58
	adds r5, r7, #0
	adds r2, r3, #0
	movs r6, #0
_08077672:
	lsls r0, r1, #0x18
	asrs r1, r0, #0x18
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _08077684
	lsls r0, r1, #2
	adds r0, r2, r0
	str r6, [r0]
_08077684:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	ble _08077672
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	cmp r0, #0
	bne _080776B4
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _080776B0
	movs r0, #0x20
	rsbs r0, r0, #0
	b _080776B2
_080776B0:
	movs r0, #0x20
_080776B2:
	str r0, [r2]
_080776B4:
	movs r0, #0xff
_080776B6:
	strb r0, [r7]
_080776B8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
