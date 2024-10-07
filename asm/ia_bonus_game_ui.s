.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 01
	thumb_func_start Task_803CA28
Task_803CA28: @ 0x0803CA28
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
.endif

	thumb_func_start Task_803CEE4
Task_803CEE4: @ 0x0803CEE4
	push {r4, lr}
	ldr r0, _0803CF4C @ =gCurTask
	ldr r0, [r0]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r2, r0
	ldrb r0, [r1, #0x17]
	cmp r0, #1
	bne _0803CF74
	movs r0, #2
	strb r0, [r1, #0x17]
	ldrh r0, [r1, #0x12]
	movs r3, #0x12
	ldrsh r4, [r1, r3]
	cmp r4, #0
	bne _0803CF70
	ldr r1, _0803CF50 @ =0x03000590
	adds r0, r2, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803CF74
	ldr r1, _0803CF54 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803CF58 @ =gUnknown_03003F94
	ldr r0, _0803CF5C @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803CF60 @ =gUnknown_03006840
	strb r4, [r0]
	ldr r1, _0803CF64 @ =gUnknown_03006208
	ldr r0, _0803CF68 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803CF6C @ =gStageData
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r3, #0x80
	lsls r3, r3, #0xa
	adds r0, r0, r3
	asrs r0, r0, #0x10
	movs r1, #7
	bl sub_8002210
	b _0803CF7E
	.align 2, 0
_0803CF4C: .4byte gCurTask
_0803CF50: .4byte 0x03000590
_0803CF54: .4byte 0x0000FFFF
_0803CF58: .4byte gUnknown_03003F94
_0803CF5C: .4byte gUnknown_03003D20
_0803CF60: .4byte gUnknown_03006840
_0803CF64: .4byte gUnknown_03006208
_0803CF68: .4byte gUnknown_03003F34
_0803CF6C: .4byte gStageData
_0803CF70:
	subs r0, #1
	strh r0, [r1, #0x12]
_0803CF74:
	movs r0, #1
	bl sub_803D784
	bl sub_803D4C8
_0803CF7E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Task_803CF84
Task_803CF84: @ 0x0803CF84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _0803CFB4 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	movs r4, #0
	ldr r0, _0803CFB8 @ =gStageData
	mov r8, r0
	ldr r5, _0803CFBC @ =gPlayers
_0803CFA4:
	cmp r4, #0
	beq _0803CFC0
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803CFC4
	.align 2, 0
_0803CFB4: .4byte gCurTask
_0803CFB8: .4byte gStageData
_0803CFBC: .4byte gPlayers
_0803CFC0:
	mov r0, r8
	ldrb r1, [r0, #6]
_0803CFC4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r5
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r3, #4]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803CFA4
	mov r1, r8
	ldrb r7, [r1, #6]
	cmp r7, #0
	beq _0803CFEE
	b _0803D216
_0803CFEE:
	ldrb r0, [r6, #0x17]
	cmp r0, #0x5f
	bhi _0803CFF6
	b _0803D216
_0803CFF6:
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r3, r6, r0
	ldr r0, _0803D178 @ =gUnknown_03001D00
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0803D006
	b _0803D208
_0803D006:
	ldr r1, _0803D17C @ =gUnknown_080CF770
	ldrh r0, [r1, #0xc]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #0xe]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x3c
	strh r0, [r3, #0x12]
	bl sub_803D4C8
	movs r0, #0x64
	strh r0, [r6, #0x12]
	ldr r1, _0803D180 @ =sBonusLifeIconVariants
	mov r0, sp
	movs r2, #5
	bl memcpy
	ldr r1, _0803D184 @ =0x06012800
	mov sl, r1
	mov r1, r8
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r2, _0803D188 @ =gPlayers
	adds r1, r1, r2
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
	adds r4, r4, r2
	movs r0, #0x99
	lsls r0, r0, #3
	adds r3, r6, r0
	mov r0, sl
	str r0, [r3]
	movs r0, #0x80
	add sl, r0
	ldr r0, _0803D18C @ =0x0000058F
	mov sb, r0
	mov r0, sb
	strh r0, [r3, #0xc]
	adds r1, #0x2a
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	strh r7, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r3, #0x20]
	str r7, [r3, #8]
	movs r0, #0x5f
	strh r0, [r3, #0x10]
	movs r1, #0x4e
	mov r8, r1
	mov r0, r8
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r1, #0x9e
	lsls r1, r1, #3
	adds r3, r6, r1
	mov r0, sl
	str r0, [r3]
	movs r1, #0x80
	add sl, r1
	mov r0, sb
	strh r0, [r3, #0xc]
	adds r4, #0x2a
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r3, #0x1a]
	movs r1, #0x40
	mov sb, r1
	mov r0, sb
	strh r0, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	adds r0, r5, #0
	strb r0, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	str r5, [r3, #0x20]
	str r7, [r3, #8]
	movs r0, #0x69
	strh r0, [r3, #0x10]
	mov r1, r8
	strh r1, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0xa3
	lsls r0, r0, #3
	adds r3, r6, r0
	mov r1, sl
	str r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #2
	add sl, r0
	ldr r4, _0803D190 @ =0x0000048D
	strh r4, [r3, #0xc]
	movs r0, #1
	strb r0, [r3, #0x1a]
	movs r0, #0x80
	strh r0, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	adds r0, r5, #0
	strb r0, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r0, #0
	strb r0, [r3, #0x1f]
	str r5, [r3, #0x20]
	str r7, [r3, #8]
	movs r0, #0x6c
	strh r0, [r3, #0x10]
	movs r0, #0x55
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r3, r6, r1
	mov r0, sl
	str r0, [r3]
	movs r1, #0x80
	add sl, r1
	strh r4, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0x1a]
	mov r1, sb
	strh r1, [r3, #0x14]
	strh r7, [r3, #0xe]
	strh r7, [r3, #0x16]
	adds r0, r5, #0
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r1, #0
	strb r1, [r3, #0x1f]
	str r5, [r3, #0x20]
	str r7, [r3, #8]
	movs r0, #0x8a
	strh r0, [r3, #0x10]
	movs r0, #0x56
	strh r0, [r3, #0x12]
	adds r0, r3, #0
	bl UpdateSpriteAnimation
	movs r0, #0x10
	ldrsh r1, [r6, r0]
	ldr r0, _0803D194 @ =0x000005DB
	cmp r1, r0
	ble _0803D198
	movs r4, #5
	b _0803D1A2
	.align 2, 0
_0803D178: .4byte gUnknown_03001D00
_0803D17C: .4byte gUnknown_080CF770
_0803D180: .4byte sBonusLifeIconVariants
_0803D184: .4byte 0x06012800
_0803D188: .4byte gPlayers
_0803D18C: .4byte 0x0000058F
_0803D190: .4byte 0x0000048D
_0803D194: .4byte 0x000005DB
_0803D198:
	ldr r0, _0803D1F4 @ =0x00000257
	movs r4, #1
	cmp r1, r0
	ble _0803D1A2
	movs r4, #2
_0803D1A2:
	movs r1, #0xad
	lsls r1, r1, #3
	adds r3, r6, r1
	mov r0, sl
	str r0, [r3]
	movs r2, #0
	movs r1, #0
	ldr r0, _0803D1F8 @ =0x00000487
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
	strb r4, [r6, #0x14]
	ldr r0, _0803D1FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803D200 @ =Task_803D324
	str r0, [r1, #8]
	ldr r1, _0803D204 @ =gStageData
	movs r0, #6
	strb r0, [r1, #4]
	b _0803D230
	.align 2, 0
_0803D1F4: .4byte 0x00000257
_0803D1F8: .4byte 0x00000487
_0803D1FC: .4byte gCurTask
_0803D200: .4byte Task_803D324
_0803D204: .4byte gStageData
_0803D208:
	ldr r1, _0803D240 @ =gUnknown_080CF770
	ldrh r0, [r1, #0x14]
	strh r0, [r3, #0xc]
	ldrb r0, [r1, #0x16]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
_0803D216:
	ldrb r0, [r6, #0x17]
	subs r0, #1
	strb r0, [r6, #0x17]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D22C
	movs r0, #0x80
	strb r0, [r6, #0x17]
	ldr r1, [r2]
	ldr r0, _0803D244 @ =sub_803D248
	str r0, [r1, #8]
_0803D22C:
	bl sub_803D4C8
_0803D230:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D240: .4byte gUnknown_080CF770
_0803D244: .4byte sub_803D248

	thumb_func_start sub_803D248
sub_803D248: @ 0x0803D248
	push {r4, r5, lr}
	ldr r0, _0803D26C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r3, #0
	ldr r5, _0803D270 @ =gPlayers
_0803D25A:
	cmp r3, #0
	beq _0803D274
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803D278
	.align 2, 0
_0803D26C: .4byte gCurTask
_0803D270: .4byte gPlayers
_0803D274:
	ldr r0, _0803D2F4 @ =gStageData
	ldrb r1, [r0, #6]
_0803D278:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r5
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803D25A
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0803D314
	movs r0, #2
	strb r0, [r4, #0x17]
	ldrh r0, [r4, #0x12]
	movs r1, #0x12
	ldrsh r5, [r4, r1]
	cmp r5, #0
	bne _0803D310
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D314
	ldr r1, _0803D2F8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D2FC @ =gUnknown_03003F94
	ldr r0, _0803D300 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D304 @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _0803D308 @ =gUnknown_03006208
	ldr r0, _0803D30C @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D2F4 @ =gStageData
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #7
	bl sub_8002210
	b _0803D31E
	.align 2, 0
_0803D2F4: .4byte gStageData
_0803D2F8: .4byte 0x0000FFFF
_0803D2FC: .4byte gUnknown_03003F94
_0803D300: .4byte gUnknown_03003D20
_0803D304: .4byte gUnknown_03006840
_0803D308: .4byte gUnknown_03006208
_0803D30C: .4byte gUnknown_03003F34
_0803D310:
	subs r0, #1
	strh r0, [r4, #0x12]
_0803D314:
	movs r0, #1
	bl sub_803D784
	bl sub_803D4C8
_0803D31E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start Task_803D324
Task_803D324: @ 0x0803D324
	push {r4, r5, r6, lr}
	ldr r2, _0803D348 @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	movs r4, #0
	adds r6, r2, #0
	ldr r2, _0803D34C @ =gPlayers
_0803D338:
	cmp r4, #0
	beq _0803D350
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803D354
	.align 2, 0
_0803D348: .4byte gCurTask
_0803D34C: .4byte gPlayers
_0803D350:
	ldr r0, _0803D394 @ =gStageData
	ldrb r1, [r0, #6]
_0803D354:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r3, r0, r2
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r3, #4]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _0803D338
	ldrb r0, [r5, #0x17]
	subs r0, #1
	strb r0, [r5, #0x17]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D38A
	movs r0, #0x80
	strb r0, [r5, #0x17]
	ldr r1, [r6]
	ldr r0, _0803D398 @ =sub_803D39C
	str r0, [r1, #8]
_0803D38A:
	bl sub_803D4C8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D394: .4byte gStageData
_0803D398: .4byte sub_803D39C

	thumb_func_start sub_803D39C
sub_803D39C: @ 0x0803D39C
	push {r4, r5, lr}
	ldr r0, _0803D3C0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r3, #0
	ldr r5, _0803D3C4 @ =gPlayers
_0803D3AE:
	cmp r3, #0
	beq _0803D3C8
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0803D3CC
	.align 2, 0
_0803D3C0: .4byte gCurTask
_0803D3C4: .4byte gPlayers
_0803D3C8:
	ldr r0, _0803D448 @ =gStageData
	ldrb r1, [r0, #6]
_0803D3CC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r0, r5
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _0803D3AE
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0803D468
	movs r0, #2
	strb r0, [r4, #0x17]
	ldrh r0, [r4, #0x12]
	movs r1, #0x12
	ldrsh r5, [r4, r1]
	cmp r5, #0
	bne _0803D464
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl UpdateScreenFade
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803D468
	ldr r1, _0803D44C @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _0803D450 @ =gUnknown_03003F94
	ldr r0, _0803D454 @ =gUnknown_03003D20
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D458 @ =gUnknown_03006840
	strb r5, [r0]
	ldr r1, _0803D45C @ =gUnknown_03006208
	ldr r0, _0803D460 @ =gUnknown_03003F34
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0803D448 @ =gStageData
	ldrb r1, [r0, #9]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #7
	bl sub_8002210
	b _0803D476
	.align 2, 0
_0803D448: .4byte gStageData
_0803D44C: .4byte 0x0000FFFF
_0803D450: .4byte gUnknown_03003F94
_0803D454: .4byte gUnknown_03003D20
_0803D458: .4byte gUnknown_03006840
_0803D45C: .4byte gUnknown_03006208
_0803D460: .4byte gUnknown_03003F34
_0803D464:
	subs r0, #1
	strh r0, [r4, #0x12]
_0803D468:
	bl sub_803D614
	movs r0, #1
	bl sub_803D784
	bl sub_803D4C8
_0803D476:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_803D47C
sub_803D47C: @ 0x0803D47C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0803D4C4 @ =gUnknown_080CF770
	ldr r0, [r5]
	bl VramMalloc
	str r0, [r4]
	ldrh r0, [r5, #0x34]
	movs r2, #0
	movs r1, #0
	strh r0, [r4, #0xc]
	adds r5, #0x36
	ldrb r0, [r5]
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x14]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	subs r0, #0x11
	str r0, [r4, #0x20]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x50
	strh r0, [r4, #0x12]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D4C4: .4byte gUnknown_080CF770

	thumb_func_start sub_803D4C8
sub_803D4C8: @ 0x0803D4C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0803D5E4 @ =gCurTask
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x10
	ldrsh r4, [r0, r1]
	adds r0, r4, #0
	movs r1, #0x3c
	bl Div
	ldr r1, _0803D5E8 @ =gUnknown_080CF9AE
	lsls r0, r0, #1
	mov sb, r0
	add r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r4, r4, r0
	ldr r0, _0803D5EC @ =0x03000338
	adds r7, r5, r0
	movs r0, #0x80
	strh r0, [r7, #0x10]
	movs r0, #0x16
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r5, _0803D5F0 @ =gUnknown_080CF936
	lsls r4, r4, #1
	adds r0, r4, r5
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r1, r8
	adds r7, r1, r0
	movs r0, #0x86
	strh r0, [r7, #0x10]
	movs r6, #0x12
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	adds r5, #1
	adds r4, r4, r5
	ldrb r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r2, r8
	adds r7, r2, r0
	movs r0, #0x8c
	strh r0, [r7, #0x10]
	strh r6, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	ldr r4, _0803D5F4 @ =gUnknown_080CF8BC
	mov r0, sb
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803D58A
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r1, r8
	adds r7, r1, r0
	movs r0, #0x70
	strh r0, [r7, #0x10]
	movs r0, #0xe
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
_0803D58A:
	adds r0, r4, #1
	add r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	mov r2, r8
	adds r7, r2, r0
	movs r0, #0x78
	strh r0, [r7, #0x10]
	movs r0, #0xe
	strh r0, [r7, #0x12]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	adds r0, r7, #0
	bl DisplaySprite
	movs r4, #0
_0803D5B2:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xe2
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r2, r8
	adds r7, r2, r0
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	cmp r0, #0
	bne _0803D5F8
	adds r0, r7, #0
	bl DisplaySprite
	ldrb r0, [r7, #0x1a]
	cmp r0, #1
	bne _0803D5FE
	movs r0, #2
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	b _0803D5FE
	.align 2, 0
_0803D5E4: .4byte gCurTask
_0803D5E8: .4byte gUnknown_080CF9AE
_0803D5EC: .4byte 0x03000338
_0803D5F0: .4byte gUnknown_080CF936
_0803D5F4: .4byte gUnknown_080CF8BC
_0803D5F8:
	adds r0, r7, #0
	bl DisplaySprite
_0803D5FE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803D5B2
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_803D614
sub_803D614: @ 0x0803D614
	push {r4, r5, r6, lr}
	ldr r0, _0803D6A4 @ =gCurTask
	ldr r0, [r0]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r0, _0803D6A8 @ =0x030004C8
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803D6AC @ =0x030004F0
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803D6B0 @ =0x03000518
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803D6B4 @ =0x03000540
	adds r5, r4, r0
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	ldr r0, _0803D6B8 @ =0x03000568
	adds r5, r4, r0
	ldrb r0, [r6, #0x14]
	cmp r0, #0
	beq _0803D690
	ldrb r0, [r6, #0x15]
	subs r0, #1
	strb r0, [r6, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0803D690
	movs r0, #0x14
	strb r0, [r6, #0x15]
	ldr r0, _0803D6BC @ =0x0000020D
	bl sub_8003DF0
	ldrb r0, [r6, #0x14]
	subs r0, #1
	strb r0, [r6, #0x14]
	ldrb r0, [r5, #0x1a]
	adds r0, #1
	strb r0, [r5, #0x1a]
_0803D690:
	adds r0, r5, #0
	bl UpdateSpriteAnimation
	adds r0, r5, #0
	bl DisplaySprite
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D6A4: .4byte gCurTask
_0803D6A8: .4byte 0x030004C8
_0803D6AC: .4byte 0x030004F0
_0803D6B0: .4byte 0x03000518
_0803D6B4: .4byte 0x03000540
_0803D6B8: .4byte 0x03000568
_0803D6BC: .4byte 0x0000020D

	thumb_func_start sub_803D6C0
sub_803D6C0: @ 0x0803D6C0
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0]
	bl VramFree
	pop {r0}
	bx r0

	thumb_func_start TaskDestructor_BonusGameUI
TaskDestructor_BonusGameUI: @ 0x0803D6D4
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r4, r0
	ldr r0, [r0, #0x18]
	bl VramFree
	ldr r1, _0803D734 @ =0x03000388
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D738 @ =0x03000360
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D73C @ =0x030004C8
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0803D72E
	bl VramFree
	ldr r1, _0803D740 @ =0x030004F0
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D744 @ =0x03000518
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D748 @ =0x03000540
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
	ldr r1, _0803D74C @ =0x03000568
	adds r0, r4, r1
	ldr r0, [r0]
	bl VramFree
_0803D72E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D734: .4byte 0x03000388
_0803D738: .4byte 0x03000360
_0803D73C: .4byte 0x030004C8
_0803D740: .4byte 0x030004F0
_0803D744: .4byte 0x03000518
_0803D748: .4byte 0x03000540
_0803D74C: .4byte 0x03000568

	thumb_func_start Task_803D750
Task_803D750: @ 0x0803D750
	push {lr}
	ldr r2, _0803D77C @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #0x17]
	subs r0, #1
	strb r0, [r1, #0x17]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0803D774
	movs r0, #0x80
	strb r0, [r1, #0x17]
	ldr r1, [r2]
	ldr r0, _0803D780 @ =Task_803CEE4
	str r0, [r1, #8]
_0803D774:
	bl sub_803D4C8
	pop {r0}
	bx r0
	.align 2, 0
_0803D77C: .4byte gCurTask
_0803D780: .4byte Task_803CEE4

	thumb_func_start sub_803D784
sub_803D784: @ 0x0803D784
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0803D7CC @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	ldrb r0, [r1, #0x17]
	cmp r0, #0
	beq _0803D7C4
	subs r2, r0, #1
	strb r2, [r1, #0x17]
	cmp r3, #0
	bne _0803D7B2
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bhi _0803D7B2
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0803D7C4
_0803D7B2:
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r4, r1, r0
	adds r0, r4, #0
	bl UpdateSpriteAnimation
	adds r0, r4, #0
	bl DisplaySprite
_0803D7C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803D7CC: .4byte gCurTask
