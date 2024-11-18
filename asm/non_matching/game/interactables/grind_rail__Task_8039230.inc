
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r4, _080392D0 @ =gCurTask
	ldr r0, [r4]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	mov r8, r1          @ r8 = rail
	ldr r0, [r1]
	mov sb, r0          @ sb = me
	ldrb r2, [r1, #0xa]
	lsls r2, r2, #3
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #8     @ r2 = qWorldX
	mov r3, sb
	ldrb r1, [r3, #1]
	lsls r1, r1, #3
	mov r3, r8
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #8     @ r1 = qWorldY
	mov r3, sb
	movs r0, #4
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r0, r1, r0
	str r0, [sp, #0x14] @ sp14 = qTop
	ldrb r0, [r3, #6]
	lsls r0, r0, #0xb
	ldr r3, [sp, #0x14]
	adds r0, r3, r0
	str r0, [sp, #0x1c] @ sp1C = qBottom
	mov r3, sb
	movs r0, #3
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0xb
	adds r0, r2, r0
	str r0, [sp, #0x10] @ sp10 = qLeft
	ldrb r0, [r3, #5]
	lsls r0, r0, #0xb
	ldr r3, [sp, #0x10]
	adds r0, r3, r0
	str r0, [sp, #0x18] @ sp18 = qRight
	asrs r2, r2, #8
	ldr r3, _080392D4 @ =gCamera
	ldr r0, [r3]
	subs r2, r2, r0     @ r2 = screenX
	asrs r1, r1, #8
	ldr r0, [r3, #4]
	subs r1, r1, r0     @ r1 = screenY
	adds r2, #0x80
	movs r0, #0xf8
	lsls r0, r0, #1
	cmp r2, r0
	bhi _080392BE
	adds r0, r1, #0
	adds r0, #0x80
	cmp r0, #0
	blt _080392BE
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _080392D8
_080392BE:
	mov r1, r8
	ldrb r0, [r1, #0xa]
	mov r2, sb
	strb r0, [r2]
	ldr r0, [r4]
	bl TaskDestroy
	b _08039526_return
	.align 2, 0
_080392D0: .4byte gCurTask
_080392D4: .4byte gCamera
_080392D8:
	movs r3, #0
	str r3, [sp, #0xc]
_080392DC_loop:
	ldr r1, _0803930C @ =gStageData
	ldrb r0, [r1, #3]
	cmp r0, #7
	bne _080392EC
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _080392EC
	b _0803951A_continue
_080392EC:
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq _08039314
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
	ldr r1, _08039310 @ =gPlayers
	adds r5, r0, r1
	b _08039326
	.align 2, 0
_0803930C: .4byte gStageData
_08039310: .4byte gPlayers
_08039314:
	ldr r1, _080393C4 @ =gStageData
	ldrb r0, [r1, #6]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _080393C8 @ =gPlayers
	adds r5, r1, r0     @ r5 = p
_08039326:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0803933E
	cmp r1, #8
	beq _0803933E
	cmp r1, #0x10
	beq _0803933E
	b _0803951A_continue
_0803933E:
	ldr r2, [r5, #4]
	ldr r0, _080393CC @ =0x01000100
	ands r0, r2
	cmp r0, #0
	beq _0803934A
	b _0803951A_continue
_0803934A:
	ldr r1, [r5]
	ldr r0, _080393D0 @ =Player_800DDD0
	cmp r1, r0
	bne _08039354
	b _0803951A_continue
_08039354:
	ldr r0, _080393D4 @ =Player_800DCB4
	cmp r1, r0
	bne _0803935C
	b _0803951A_continue
_0803935C:
	movs r3, #0x1a
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bge _0803936E
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0803936E
	b _0803951A_continue
_0803936E:
	ldrh r0, [r5, #0x30]
	subs r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0803937C
	b _0803951A_continue
_0803937C:
	mov r1, r8
	ldrb r0, [r1, #0xc]
	cmp r0, #3
	bne _08039390
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	bne _08039390
	b _0803951A_continue
_08039390:
	ldr r0, [r5, #0x10]
	ldr r2, [sp, #0x10]
	cmp r0, r2
	bge _0803939A
	b _0803951A_continue
_0803939A:
	ldr r3, [sp, #0x18]
	cmp r0, r3
	ble _080393A2
	b _0803951A_continue
_080393A2:
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bge _080393AC
	b _0803951A_continue
_080393AC:
	ldr r2, [sp, #0x1c]
	cmp r0, r2
	ble _080393B4
	b _0803951A_continue
_080393B4:
	movs r4, #0
	mov r3, r8
	ldrb r0, [r3, #0xe]
	cmp r0, #0
	bne _080393D8
	movs r4, #1
	b _08039400
	.align 2, 0
_080393C4: .4byte gStageData
_080393C8: .4byte gPlayers
_080393CC: .4byte 0x01000100
_080393D0: .4byte Player_800DDD0
_080393D4: .4byte Player_800DCB4
_080393D8:
	mov r0, sb          @ r0 = sb = me
	ldrb r2, [r0, #5]
	lsls r2, r2, #3
	ldrb r3, [r0, #6]
	lsls r3, r3, #3
	mov r1, r8          @ r1 = r8 = rail
	ldrb r0, [r1, #0xe]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl sub_8039538
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080393FA
	movs r4, #1
_080393FA:
	cmp r4, #0
	bne _08039400
	b _0803951A_continue
_08039400:
	adds r2, r5, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]       @ p->charFlags.unk2C_01 = 1
	adds r0, r5, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	mov r2, r8          @ r2 = r8 = rail
	ldrb r2, [r2, #0xd]
	cmp r0, r2
	bne _08039420
	b _0803951A_continue
_08039420:
	adds r1, r5, #0
	adds r1, #0x27
	movs r0, #0
	strb r0, [r1]
	ldrh r2, [r5, #0x30]
	adds r0, r2, #0
	subs r0, #0xe7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r1          @ sl = &p->unk27
	cmp r0, #1
	bls _0803943C
	cmp r2, #0xea
	bne _08039446
_0803943C:
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #4
	b _0803944C
_08039446:
	ldrh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
_0803944C:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10  @ r1
	ldr r0, [r5, #4]
	movs r7, #0x80
	lsls r7, r7, #9
	ands r0, r7
	adds r4, r5, #0
	adds r4, #0x25      @ r4 = &p->unk25
	lsls r6, r1, #0x10  @ r6 = r1
	cmp r0, #0
	bne _08039490
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	add r3, sp, #8
	str r3, [sp]
	ldr r2, _080394D0 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	bl sub_80519EC
	adds r2, r0, #0
	asrs r0, r6, #0x10
	cmp r2, r0
	blt _080394B8
	ldr r0, [r5, #4]
	ands r0, r7
	cmp r0, #0
	beq _0803951A_set_sl_1_and_cont
_08039490:
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	movs r1, #0
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	ldr r1, [r5, #0x10]
	asrs r1, r1, #8
	add r2, sp, #8
	str r2, [sp]
	ldr r2, _080394D0 @ =sub_805217C
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #8
	rsbs r3, r3, #0
	bl sub_80519EC
	adds r2, r0, #0
	asrs r0, r6, #0x10
	cmp r2, r0
	bge _0803951A_set_sl_1_and_cont
_080394B8:
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080394D4
	lsls r1, r2, #8
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
	b _080394DA
	.align 2, 0
_080394D0: .4byte sub_805217C
_080394D4:
	lsls r1, r2, #8
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
_080394DA:
	str r0, [r5, #0x14]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _080394F0
	add r1, sp, #8
	adds r0, r1, #0
	ldrb r0, [r0]
	adds r0, #0x80
	strb r0, [r1]
_080394F0:
	add r0, sp, #8
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x26
	strb r0, [r1]
	mov r3, r8          @ r3 = r8 = rail
	ldrb r1, [r3, #0xd]
	adds r0, r5, #0
	adds r0, #0xa4
	strb r1, [r0]
	adds r0, r5, #0
	ldr r1, _08039510 @ =Player_80098D8
	bl SetPlayerCallback
	b _08039526_return
	.align 2, 0
_08039510: .4byte Player_80098D8
_0803951A_set_sl_1_and_cont:
	movs r0, #1
	mov r1, sl
	strb r0, [r1]
_0803951A_continue:
	ldr r2, [sp, #0xc]
	adds r2, #1
	str r2, [sp, #0xc]
	cmp r2, #1
	bgt _08039526_return
	b _080392DC_loop
_08039526_return:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
