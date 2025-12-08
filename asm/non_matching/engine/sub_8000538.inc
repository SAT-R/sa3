
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x10
	ldr r1, _08000578 @ =gStageData
	adds r1, #0xae
	ldrh r1, [r1]
	str r1, [sp, #4]
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	mov r4, sp
	adds r4, #1
	mov r1, sp
	adds r2, r4, #0
	bl GetZoneAndActTypeFromStageID
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08000566
	b _08000752
_08000566:
	ldrb r2, [r4]
	cmp r2, #2
	beq _0800058A
	cmp r2, #2
	bgt _0800057C
	cmp r2, #1
	beq _08000586
	b _08000596
	.align 2, 0
_08000578: .4byte gStageData
_0800057C:
	cmp r2, #4
	beq _0800058E
	cmp r2, #8
	beq _08000592
	b _08000596
_08000586:
	movs r5, #0
	b _08000598
_0800058A:
	movs r5, #1
	b _08000598
_0800058E:
	movs r5, #2
	b _08000598
_08000592:
	movs r5, #3
	b _08000598
_08000596:
	movs r5, #0xff
_08000598:
	cmp r5, #0xff
	beq _080005E0
	ldr r2, _080005B0 @ =gMedalTimes
	lsls r1, r6, #2
	adds r0, r1, r2
	ldr r3, [sp, #4]
	ldrh r0, [r0]
	cmp r3, r0
	bhi _080005B4
	movs r3, #0
	b _080005C4
	.align 2, 0
_080005B0: .4byte gMedalTimes
_080005B4:
	adds r0, r2, #2
	adds r0, r1, r0
	movs r3, #2
	ldr r4, [sp, #4]
	ldrh r0, [r0]
	cmp r4, r0
	bhi _080005C4
	movs r3, #1
_080005C4:
	ldr r1, _08000718 @ =gSaveGame
	mov r0, sp
	ldrb r2, [r0]
	lsls r2, r2, #2
	adds r2, r5, r2
	adds r1, #0x37
	adds r2, r2, r1
	movs r1, #2
	subs r1, r1, r3
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
_080005E0:
	movs r6, #0
	lsls r3, r5, #2
	adds r0, r3, r5
	lsls r0, r0, #2
	str r0, [sp, #8]
	mov r8, sp
	ldr r7, _0800071C @ =gPlayers
	str r7, [sp, #0x10]
	ldr r4, _08000718 @ =gSaveGame
_080005F2:
	lsls r1, r6, #2
	ldr r0, [sp, #8]
	adds r1, r1, r0
	mov r7, r8
	ldrb r2, [r7]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _08000718 @ =gSaveGame
	adds r1, r1, r0
	movs r7, #0x97
	lsls r7, r7, #1
	adds r1, r1, r7
	ldrh r0, [r1]
	ldr r1, [sp, #4]
	cmp r0, r1
	bhi _08000618
	b _08000724
_08000618:
	str r6, [sp, #0xc]
	movs r7, #0
	mov ip, r7
	cmp r6, #3
	bhi _080006AE
	adds r0, r3, r5
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	mov r5, sp
	movs r0, #0x96
	lsls r0, r0, #1
	mov sl, r0
	ldr r1, _08000720 @ =0x0000012D
	mov sb, r1
_08000634:
	movs r3, #4
	mov r7, ip
	subs r3, r3, r7
	lsls r3, r3, #2
	ldr r0, [sp, #0x14]
	adds r3, r3, r0
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r3, r0
	adds r1, r1, r4
	movs r2, #3
	subs r2, r2, r7
	lsls r2, r2, #2
	ldr r7, [sp, #0x14]
	adds r2, r2, r7
	adds r0, r2, r0
	adds r0, r0, r4
	add r0, sl
	ldrb r0, [r0]
	add r1, sl
	strb r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r3, r0
	adds r1, r1, r4
	adds r0, r2, r0
	adds r0, r0, r4
	add r0, sb
	ldrb r0, [r0]
	add r1, sb
	strb r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r3, r0
	adds r3, r3, r4
	adds r2, r2, r0
	adds r2, r2, r4
	movs r0, #0x97
	lsls r0, r0, #1
	adds r2, r2, r0
	ldrh r0, [r2]
	movs r1, #0x97
	lsls r1, r1, #1
	adds r3, r3, r1
	strh r0, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r6, #3
	bls _08000634
_080006AE:
	ldr r3, [sp, #0xc]
	lsls r2, r3, #2
	ldr r4, [sp, #8]
	adds r2, r2, r4
	mov r7, r8
	ldrb r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r2, r0
	ldr r1, _08000718 @ =gSaveGame
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r0, r3
	strb r1, [r0]
	ldrb r0, [r7]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r2, r1
	ldr r4, _08000718 @ =gSaveGame
	adds r1, r1, r4
	ldr r7, [sp, #0x10]
	adds r3, #0x4e
	adds r0, r7, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r4, _08000720 @ =0x0000012D
	adds r1, r1, r4
	strb r0, [r1]
	mov r7, r8
	ldrb r1, [r7]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r2, r0
	ldr r0, _08000718 @ =gSaveGame
	adds r2, r2, r0
	movs r1, #0x97
	lsls r1, r1, #1
	adds r2, r2, r1
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r2]
	b _08000730
	.align 2, 0
_08000718: .4byte gSaveGame
_0800071C: .4byte gPlayers
_08000720: .4byte 0x0000012D
_08000724:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	bhi _08000730
	b _080005F2
_08000730:
	movs r0, #0x3c
	bl sub_802616C
	ldr r1, _08000764 @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08000744
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08000752
_08000744:
	bl sub_80020F0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08000752
	bl sub_8001FD4
_08000752:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000764: .4byte gStageData

.syntax divided
