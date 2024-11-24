
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r3, _08032764 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0         @ r7 = handle
	adds r0, #0x10
	adds r0, r0, r1
	mov r8, r0              @ r8 = s
	ldr r2, [r7]            @ r2 = me
	ldrb r1, [r7, #0xe]
	lsls r1, r1, #3
	ldrh r0, [r7, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #8]        @ sp08  = worldX
	ldrb r1, [r2, #1]
	lsls r1, r1, #3
	ldrh r0, [r7, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov sl, r1              @ sl = worldY
	ldrh r0, [r7, #0x3a]
	ldrh r1, [r7, #0x38]
	adds r0, r0, r1
	ldr r2, _08032768 @ =0x00003FF0
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7, #0x38]
	lsrs r6, r0, #4
	ldr r1, _0803276C @ =gCamera
	ldr r0, [r1]
	ldr r2, [sp, #8]
	subs r0, r2, r0
	mov r2, r8
	strh r0, [r2, #0x10]
	ldr r0, [r1, #4]
	mov r1, sl
	subs r0, r1, r0
	strh r0, [r2, #0x12]
	movs r2, #0
	str r2, [sp, #0xc]      @ sp0C = i = 0
	lsls r0, r6, #1
	ldr r1, _08032770 @ =gSineTable
	adds r0, r0, r1
	mov sb, r0              @ sb = &SIN(r6)
_08032740_loop:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _0803277C
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08032774 @ =gPlayers
	adds r5, r0, r1
	ldr r3, _08032778 @ =gStageData
	b _08032790
	.align 2, 0
_08032764: .4byte gCurTask
_08032768: .4byte 0x00003FF0
_0803276C: .4byte gCamera
_08032770: .4byte gSineTable
_08032774: .4byte gPlayers
_08032778: .4byte gStageData
_0803277C:
	ldr r2, _0803280C @ =gStageData
	ldrb r1, [r2, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08032810 @ =gPlayers
	adds r5, r0, r1         @ r5 = p
	adds r3, r2, #0         @ r3 = r2 = gStageData
_08032790:
	adds r4, r3, #0
	ldrb r0, [r4, #3]
	cmp r0, #4
	bls _080327A8
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _080327A8
	b _08032A60_continue
_080327A8:
	adds r0, r7, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	ldr r1, [sp, #0xc]      @ r1 = sp0C = i
	cmp r0, r1
	beq _0803283A
	ldr r1, [r5, #4]
	ldr r0, _08032814 @ =0x01000100
	ands r1, r0
	cmp r1, #0
	beq _080327C0
	b _08032A60_continue
_080327C0:
	str r5, [sp]
	str r1, [sp, #4]
	mov r0, r8
	ldr r1, [sp, #8]
	mov r2, sl
	movs r3, #0
	bl sub_8020700
	cmp r0, #1
	beq _080327D6
	b _08032A60_continue
_080327D6:
	ldr r2, [r7, #0x40]
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r3, #0x1c
	adds r1, r3, #0
	ands r1, r0
	cmp r1, #8
	bne _08032820
	ldrh r0, [r2, #0x20]
	ldrh r1, [r4, #0x14]
	orrs r0, r1
	strh r0, [r2, #0x20]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x1a]
	ldr r2, _08032818 @ =gCurTask
	ldr r0, [r2]
	ldr r1, _0803281C @ =Task_8032A8C
	str r1, [r0, #8]
	b _08032A60_continue
	.align 2, 0
_0803280C: .4byte gStageData
_08032810: .4byte gPlayers
_08032814: .4byte 0x01000100
_08032818: .4byte gCurTask
_0803281C: .4byte Task_8032A8C
_08032820:
	cmp r1, #4
	bne _08032888
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #8
	bne _08032888
	movs r0, #1
	bl sub_8032410
	b _08032A76_return
_0803283A:
	ldrh r1, [r5, #0x30]
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	cmp r0, #0x66
	bne _08032860
	ldr r2, [r7, #0x40]     @ r2 = handlePlayer
	ldrh r0, [r2, #0x20]
	ldrh r1, [r3, #0x14]
	orrs r0, r1
	strh r0, [r2, #0x20]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0x1a]
	b _0803286C
_08032860:
	adds r0, r1, #0
	subs r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08032880
_0803286C:
	ldr r1, _08032878 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _0803287C @ =Task_8032A8C
	str r2, [r0, #8]
	b _08032A76_return
	.align 2, 0
_08032878: .4byte gCurTask
_0803287C: .4byte Task_8032A8C
_08032880:
	ldrh r0, [r7, #0xa]
	strh r0, [r5, #0x18]
	ldrh r0, [r7, #0xc]
	strh r0, [r5, #0x1a]
_08032888:
	ldr r2, [r5, #4]
	ldr r0, _080328AC @ =0x01000100
	ands r0, r2
	cmp r0, #0
	bne _0803289A
	ldr r1, [r5]
	ldr r0, _080328B0 @ =Player_800D944
	cmp r1, r0
	bne _080328C0
_0803289A:
	ldr r0, _080328B4 @ =0xEFFFFFFF
	ands r2, r0
	str r2, [r5, #4]
	ldr r1, _080328B8 @ =gCurTask
	ldr r0, [r1]
	ldr r2, _080328BC @ =Task_8032A8C
	str r2, [r0, #8]
	b _08032A60_continue
	.align 2, 0
_080328AC: .4byte 0x01000100
_080328B0: .4byte Player_800D944
_080328B4: .4byte 0xEFFFFFFF
_080328B8: .4byte gCurTask
_080328BC: .4byte Task_8032A8C
_080328C0:
	ldr r0, _08032910 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r4, [r0, #0x14]
	ands r4, r1
	cmp r4, #0
	bne _080328CE
	b _08032A20
_080328CE:
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	ldr r1, _08032914 @ =Player_800DB30
	bl SetPlayerCallback
	ldr r0, [r5, #4]
	ldr r1, _08032918 @ =0xEFFFFFF7
	ands r0, r1
	str r0, [r5, #4]
	ldr r1, _0803291C @ =gCurTask
	ldr r0, [r1]
	ldr r2, _08032920 @ =Task_8032A8C
	str r2, [r0, #8]
	adds r0, r5, #0
	movs r1, #0x8c
	lsls r1, r1, #1
	bl Player_StopSong
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #1
	beq _08032948_case_1
	cmp r0, #1
	bgt _08032924
	cmp r0, #0
	beq _0803292E_case_0
	b _080329DC
	.align 2, 0
_08032910: .4byte gStageData
_08032914: .4byte Player_800DB30
_08032918: .4byte 0xEFFFFFF7
_0803291C: .4byte gCurTask
_08032920: .4byte Task_8032A8C
_08032924:
	cmp r0, #2
	beq _08032964_case_2
	cmp r0, #3
	beq _080329A0_case_3
	b _080329DC
_0803292E_case_0:
	movs r0, #0x20
	subs r4, r0, r6
	ldr r0, _08032944 @ =0x000003FF
	ands r4, r0
	mov r2, sb
	movs r0, #0
	ldrsh r1, [r2, r0]
	asrs r1, r1, #1
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	b _0803297A
	.align 2, 0
_08032944: .4byte 0x000003FF
_08032948_case_1:
	adds r4, r6, #0
	adds r4, #0x20
	ldr r0, _08032960 @ =0x000003FF
	ands r4, r0
	mov r2, sb
	movs r0, #0
	ldrsh r1, [r2, r0]
	asrs r1, r1, #1
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	b _080329B8
	.align 2, 0
_08032960: .4byte 0x000003FF
_08032964_case_2:
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r1, _08032998 @ =0x000003FF
	ands r4, r1
	mov r2, sb
	movs r0, #0
	ldrsh r1, [r2, r0]
	asrs r1, r1, #1
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
_0803297A:
	str r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	lsls r0, r0, #1
	ldr r2, _0803299C @ =gSineTable
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	asrs r1, r1, #1
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	b _080329DE
	.align 2, 0
_08032998: .4byte 0x000003FF
_0803299C: .4byte gSineTable
_080329A0_case_3:
	movs r1, #0x88
	lsls r1, r1, #2
	adds r0, r1, #0
	subs r4, r0, r6
	ldr r2, _080329D4 @ =0x000003FF
	ands r4, r2
	mov r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	asrs r1, r1, #1
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
_080329B8:
	str r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	lsls r0, r0, #1
	ldr r2, _080329D8 @ =gSineTable
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	asrs r1, r1, #1
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
	str r0, [r5, #0x14]
	b _080329DE
	.align 2, 0
_080329D4: .4byte 0x000003FF
_080329D8: .4byte gSineTable
_080329DC:
	movs r4, #0
_080329DE:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, r1
	lsls r0, r0, #1
	ldr r2, _08032A1C @ =gSineTable
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	movs r1, #0x11
	bl Div
	strh r0, [r5, #0x18]
	lsls r4, r4, #1
	ldr r2, _08032A1C @ =gSineTable
	adds r4, r4, r2
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #1
	movs r1, #0x11
	bl Div
	strh r0, [r5, #0x1a]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _08032A60_continue
	.align 2, 0
_08032A1C: .4byte gSineTable
_08032A20:
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	adds r0, r6, #0
	movs r1, #0x56
	bl Div
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xb
	bls _08032A36
	movs r1, #0xb
_08032A36:
	ldr r0, _08032A88 @ =0x0000036A
	mov r2, r8
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	strh r1, [r5, #0x36]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [sp, #8]
	lsls r0, r1, #8
	str r0, [r5, #0x10]
	mov r2, sl
	lsls r0, r2, #8
	str r0, [r5, #0x14]
	strh r4, [r5, #0x18]
	strh r4, [r5, #0x1a]
_08032A60_continue:
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r0, #1
	bhi _08032A70
	b _08032740_loop
_08032A70:
	movs r0, #1
	bl sub_8032410
_08032A76_return:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032A88: .4byte 0x0000036A

.syntax divided
