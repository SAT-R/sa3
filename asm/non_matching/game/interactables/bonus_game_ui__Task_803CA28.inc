
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r6, #0
	ldr r2, _0803CAD8 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0     @ r7 = ui
	ldr r0, _0803CADC @ =0x03000590
	adds r0, r0, r1
	mov r8, r0          @ r8 = fade
	ldrb r1, [r7, #0x16]
	lsls r1, r1, #0x18
	asrs r0, r1, #0x18
	ldr r5, _0803CAE0 @ =gUnknown_03001D00
	mov ip, r5
	ldrb r2, [r5]
	cmp r0, r2
	bge _0803CA86
	movs r3, #0xe2
	lsls r3, r3, #2
	mov sl, r3
	movs r0, #1
	mov sb, r0
	movs r2, #0xff
_0803CA64:
	asrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	adds r3, r7, r0
	mov r0, sb
	strb r0, [r3, #0x1a]
	ldrb r0, [r3, #0x1b]
	orrs r0, r2
	strb r0, [r3, #0x1b]
	adds r1, #1
	lsls r1, r1, #0x18
	asrs r0, r1, #0x18
	ldrb r3, [r5]
	cmp r0, r3
	blt _0803CA64
_0803CA86:
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r3, r7, r0     @ r3 = s = &ui->sprCountdownDigit;
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #7
	bhi _0803CAA2
	ldrh r0, [r7, #0x10]
	subs r0, #1
	strh r0, [r7, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803CAA2
	b _0803CD90
_0803CAA2:
	movs r1, #0
	movs r0, #0x80
	strb r0, [r7, #0x17]
	movs r0, #1
	mov r2, r8          @ r2 = r8 = fade
	strh r0, [r2, #2]
	strh r1, [r2, #4]
	movs r0, #0xbf
	strh r0, [r2, #8]
	movs r1, #0x10
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bne _0803CB4C
	movs r1, #0
	ldr r2, _0803CAE4 @ =gStageData
	mov sb, r2
	ldr r2, _0803CAE8 @ =gPlayers
_0803CAC4:
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CAEC
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CAF0
	.align 2, 0
_0803CAD8: .4byte gCurTask
_0803CADC: .4byte 0x03000590
_0803CAE0: .4byte gUnknown_03001D00
_0803CAE4: .4byte gStageData
_0803CAE8: .4byte gPlayers
_0803CAEC:
	mov r0, sb
	ldrb r1, [r0, #6]
_0803CAF0:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2     @ r4 = p
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803CAC4
	ldr r0, _0803CB3C @ =gStageData
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _0803CB2A
	ldr r1, _0803CB40 @ =gUnknown_080CF770
	ldrh r0, [r1, #0x14]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #0x16]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
_0803CB2A:
	movs r0, #0x1e
	strh r0, [r7, #0x12]
	bl sub_803D4C8
	ldr r0, _0803CB44 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803CB48 @ =Task_803CF84
	b _0803CD74
	.align 2, 0
_0803CB3C: .4byte gStageData
_0803CB40: .4byte gUnknown_080CF770
_0803CB44: .4byte gCurTask
_0803CB48: .4byte Task_803CF84
_0803CB4C:
	movs r1, #0
	ldr r6, _0803CB68 @ =gUnknown_080CF770
	ldr r2, _0803CB6C @ =gPlayers
_0803CB52:
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CB70
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CB74
	.align 2, 0
_0803CB68: .4byte gUnknown_080CF770
_0803CB6C: .4byte gPlayers
_0803CB70:
	ldr r0, _0803CD08 @ =gStageData
	ldrb r1, [r0, #6]
_0803CB74:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803CB52
__0803CB98:
	ldrh r0, [r6, #0xc]
	movs r5, #0
	strh r0, [r3, #0xc] @ s->anim = gUnknown_080CF770[1].anim
	ldrb r0, [r6, #0xe]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x3c
	strh r0, [r3, #0x12]
	bl sub_803D4C8
	movs r0, #0x64
	strh r0, [r7, #0x12]
	ldr r1, _0803CD0C @ =sBonusLifeIconVariants
	mov r0, sp
	movs r2, #5
	bl memcpy
	ldr r6, _0803CD10 @ =0x06012800
	ldr r0, _0803CD08 @ =gStageData
	ldrb r0, [r0, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _0803CD14 @ =gPlayers
	adds r1, r1, r2     @ r1 = p1
	adds r0, r1, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r0
	lsls r4, r4, #4
	adds r4, r4, r2     @ r4 = p2
	movs r2, #0x99
	lsls r2, r2, #3
	adds r3, r7, r2     @ r3 = s = &ui->sprPlayer1Icon;
	str r6, [r3]
	adds r6, #0x80
	ldr r0, _0803CD18 @ =0x0000058F
	mov sl, r0
	mov r2, sl
	strh r2, [r3, #0xc]
	adds r1, #0x2a
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	strh r5, [r3, #0x14]
	strh r5, [r3, #0xe]
	strh r5, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	mov r8, r0          @ r8 = 0x10
	mov r1, r8          @ r1 = r8 = 0x10
	strb r1, [r3, #0x1c]
	movs r2, #0
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	str r5, [r3, #8]
	movs r0, #0x5f
	strh r0, [r3, #0x10]
	movs r1, #0x4e
	mov sb, r1
	mov r2, sb
	strh r2, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0x9e
	lsls r0, r0, #3
	adds r3, r7, r0
	str r6, [r3]
	adds r6, #0x80
	mov r1, sl
	strh r1, [r3, #0xc]
	adds r4, #0x2a
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	movs r2, #0x40
	mov sl, r2          @ sl = 0x40
	mov r0, sl
	strh r0, [r3, #0x14]
	strh r5, [r3, #0xe]
	strh r5, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	mov r1, r8          @ r1 = r8 = 0x10
	strb r1, [r3, #0x1c]
	movs r2, #0
	strb r2, [r3, #0x1f]
	str r0, [r3, #0x20]
	str r5, [r3, #8]
	movs r0, #0x69
	strh r0, [r3, #0x10]
	mov r0, sb
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r1, #0xa3
	lsls r1, r1, #3
	adds r3, r7, r1
	str r6, [r3]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r6, r6, r2
	ldr r4, _0803CD1C @ =0x0000048D
	strh r4, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0x80
	strh r0, [r3, #0x14]
	strh r5, [r3, #0xe]
	strh r5, [r3, #0x16]
	subs r0, #0x81
	strb r0, [r3, #0x1b]
	mov r0, r8          @ r0 = r8 = 0x10
	strb r0, [r3, #0x1c]
	movs r1, #0
	strb r1, [r3, #0x1f]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r3, #0x20]
	str r5, [r3, #8]
	movs r0, #0x6c
	strh r0, [r3, #0x10]
	movs r0, #0x55
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0xa8
	lsls r0, r0, #3
	adds r3, r7, r0
	str r6, [r3]
	adds r6, #0x80
	strh r4, [r3, #0xc]
	movs r1, #0
	strb r1, [r3, #0x1a]
	mov r2, sl
	strh r2, [r3, #0x14]
	strh r5, [r3, #0xe]
	strh r5, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	mov r0, r8
	strb r0, [r3, #0x1c]
	strb r1, [r3, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r3, #0x20]
	str r5, [r3, #8]
	movs r0, #0x8a
	strh r0, [r3, #0x10]
	movs r0, #0x56
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r2, #0x10
	ldrsh r1, [r7, r2]
	ldr r0, _0803CD20 @ =0x000005DB
	cmp r1, r0
	ble _0803CD24
	movs r4, #5
	b _0803CD2E
	.align 2, 0
_0803CD08: .4byte gStageData
_0803CD0C: .4byte sBonusLifeIconVariants
_0803CD10: .4byte 0x06012800
_0803CD14: .4byte gPlayers
_0803CD18: .4byte 0x0000058F
_0803CD1C: .4byte 0x0000048D
_0803CD20: .4byte 0x000005DB
_0803CD24:
	ldr r0, _0803CD80 @ =0x00000257
	movs r4, #1
	cmp r1, r0
	ble _0803CD2E
	movs r4, #2
_0803CD2E:
	movs r0, #0xad
	lsls r0, r0, #3
	adds r3, r7, r0
	str r6, [r3]
	movs r2, #0
	movs r1, #0
	subs r0, #0xe1
	strh r0, [r3, #0xc]
	strb r2, [r3, #0x1a]
	movs r0, #0x40
	strh r0, [r3, #0x14]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	strb r2, [r3, #0x1f]
	subs r0, #0x11
	str r0, [r3, #0x20]
	str r1, [r3, #8]
	movs r0, #0x96
	strh r0, [r3, #0x10]
	movs r0, #0x55
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl sub_8003DC4
	strb r4, [r7, #0x14]
	ldr r0, _0803CD84 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803CD88 @ =Task_803D324
_0803CD74:
	str r0, [r1, #8]
	ldr r1, _0803CD8C @ =gStageData
	movs r0, #6
	strb r0, [r1, #4]
	b _0803CECA_return
	.align 2, 0
_0803CD80: .4byte 0x00000257
_0803CD84: .4byte gCurTask
_0803CD88: .4byte Task_803D324
_0803CD8C: .4byte gStageData
_0803CD90:
	ldr r0, _0803CDC4 @ =gStageData
	ldrb r1, [r0, #3]
	mov sb, r0
	cmp r1, #5
	beq _0803CDCC
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0803CDC8 @ =gPlayers
	adds r4, r0, r1     @ r4 = p1
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803CE20
	lsls r0, r6, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r6, r0, #0x18
	b _0803CE20
	.align 2, 0
_0803CDC4: .4byte gStageData
_0803CDC8: .4byte gPlayers
_0803CDCC:
	movs r1, #0
	movs r6, #0
	ldr r2, _0803CDE8 @ =gPlayers
_0803CDD2:
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CDEC
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CDF0
	.align 2, 0
_0803CDE8: .4byte gPlayers
_0803CDEC:
	mov r0, sb
	ldrb r1, [r0, #6]
_0803CDF0:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2     @ r4 = p
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0803CE12
	lsls r0, r6, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r6, r0, #0x18
_0803CE12:
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803CDD2
_0803CE20:
	cmp r6, #0
	beq _0803CEA8
	movs r1, #0
	movs r0, #0x80
	strb r0, [r7, #0x17]
	movs r0, #1
	mov r2, r8          @ r2 = r8 = fade
	strh r0, [r2, #2]
	strh r1, [r2, #4]
	movs r0, #0xbf
	strh r0, [r2, #8]
	movs r0, #0x3c
	strh r0, [r7, #0x12]
	ldr r0, _0803CE5C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803CE60 @ =Task_803D750
	str r0, [r1, #8]
	movs r1, #0
	ldr r6, _0803CE64 @ =gUnknown_080CF770
	ldr r2, _0803CE68 @ =gPlayers
_0803CE48:
	lsls r0, r1, #0x18
	adds r5, r0, #0
	cmp r5, #0
	beq _0803CE6C
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CE70
	.align 2, 0
_0803CE5C: .4byte gCurTask
_0803CE60: .4byte Task_803D750
_0803CE64: .4byte gUnknown_080CF770
_0803CE68: .4byte gPlayers
_0803CE6C:
	mov r0, sb
	ldrb r1, [r0, #6]
_0803CE70:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r0, r2
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r5, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803CE48
	ldrh r0, [r6, #0x1c]
	strh r0, [r3, #0xc]
	ldrb r0, [r6, #0x1e]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #6
	mov r2, sb
	strb r0, [r2, #4]
	b _0803CEC0
_0803CEA8:
	ldrb r4, [r7, #0x17]
	movs r0, #0
	bl sub_803D784
	cmp r4, #0
	beq _0803CEC0
	ldrb r1, [r7, #0x17]
	cmp r1, #0
	bne _0803CEC0
	ldr r0, _0803CEDC @ =gStageData
	adds r0, #0x85
	strb r1, [r0]
_0803CEC0:
	bl sub_803D4C8
	ldr r0, _0803CEE0 @ =gUnknown_03001D00
	ldrb r0, [r0]
	strb r0, [r7, #0x16]
_0803CECA_return:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CEDC: .4byte gStageData
_0803CEE0: .4byte gUnknown_03001D00

.syntax divided
