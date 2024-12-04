
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08046028 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov r8, r0          @ r8 = rocket
	ldr r0, [r0]
	str r0, [sp, #8]    @ sp08 = me
	ldr r2, _0804602C @ =0x030000E8
	adds r2, r1, r2
	str r2, [sp, #0xc]  @ sp0C = s = &rocket->sprites[0]
	mov r4, r8          @ r4 = r8 = rocket
	ldr r5, [r4, #0x10] @ r5 = qWorldX = 
	ldr r6, [r4, #0x14] @ r6 = qWorldY
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10] @ sp10 = worldPos
	ldr r2, _08046030 @ =0xFFFFFA00
	adds r6, r6, r2
	str r5, [r4, #0x10]
	str r6, [r4, #0x14]
	movs r0, #0
	str r0, [sp, #0x14] @ sp14 = i = 0
	ldr r2, _08046034 @ =0x030000E0
	adds r2, r1, r2
	str r2, [sp, #0x1c] @ sp1C = players
_08045F88_loop:
	ldr r4, [sp, #0x14] @ r4 = i
	lsls r0, r4, #2     @ r0 = i * 4
	mov r1, r8
	adds r1, #0xe0
	adds r1, r1, r0
	ldr r4, [r1]        @ r4 = p = rocket->players[i]
	ldr r0, [r4, #4]
	ldr r1, _08046038 @ =0x01000100
	ands r0, r1
	ldr r2, [sp, #0x14] @ r2 = i
	lsls r7, r2, #1     @ r7 = i * 2
	cmp r0, #0
	beq _08045FB4
	movs r0, #1
	lsls r0, r7
	mov r2, r8          @ r2 = r8 = rocket
	ldrb r1, [r2, #0xa]
	bics r1, r0
	movs r0, #2
	lsls r0, r7
	orrs r1, r0
	strb r1, [r2, #0xa]
_08045FB4:
	mov r1, r8          @ r1 = r8 = rocket
	ldrb r0, [r1, #0xa]
	movs r3, #3
	lsls r3, r7
	ands r3, r0
	cmp r3, #0
	bne _0804603C
	ldr r1, [r4, #4]
	adds r0, r1, #0
	ldr r2, _08046038 @ =0x01000100
	ands r0, r2
	asrs r2, r5, #8
	mov sl, r2
	asrs r2, r6, #8
	mov sb, r2
	cmp r0, #0
	beq _08045FD8
	b _08046160_continue
_08045FD8:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08045FE2
	b _08046160_continue
_08045FE2:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08045FEC
	b _08046160_continue
_08045FEC:
	str r4, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, sl
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _08046000
	b _08046160_continue
_08046000:
	adds r0, r4, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl Player_800BE60
	ldr r0, [r4, #4]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #4]
	ldr r2, [sp, #0xc]
	str r2, [r4, #0x6c]
	movs r0, #1
	lsls r0, r7         @ r0 = (1 << i * 2)
	mov r4, r8          @ r4 = r8 = rocket
	ldrb r1, [r4, #0xa]
	orrs r0, r1
	strb r0, [r4, #0xa]
	b _08046160_continue
	.align 2, 0
_08046028: .4byte gCurTask
_0804602C: .4byte 0x030000E8
_08046030: .4byte 0xFFFFFA00
_08046034: .4byte 0x030000E0
_08046038: .4byte 0x01000100
_0804603C:
	movs r2, #1         @ r2 = (1 << i * 2)
	lsls r2, r7
	ands r0, r2
	asrs r1, r5, #8
	mov sl, r1
	asrs r1, r6, #8
	mov sb, r1
	cmp r3, r0
	beq _08046050
	b _08046160_continue
_08046050:
	ldr r0, [r4, #0x14]
	ldr r1, _080460A8 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804606A
	ldr r0, [r4, #0x6c]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq _0804607A
_0804606A:
	mov r0, r8          @ r0 = r8 = rocket
	ldrb r1, [r0, #0xa]
	bics r1, r2
	movs r0, #2
	lsls r0, r7
	orrs r1, r0
	mov r2, r8          @ r2 = r8 = rocket
	strb r1, [r2, #0xa]
_0804607A:
	ldr r1, [r4]
	ldr r0, _080460AC @ =Player_800D944
	cmp r1, r0
	beq _08046088
	ldr r0, _080460B0 @ =Player_800EB58
	cmp r1, r0
	beq _080460B8
_08046088:
	ldr r0, [r4, #4]
	ldr r1, _080460B4 @ =0xEFFFFFDF
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #1
	lsls r0, r7
	mov r2, r8          @ r2 = r8 = rocket
	ldrb r1, [r2, #0xa]
	bics r1, r0
	movs r0, #2
	lsls r0, r7
	orrs r1, r0
	strb r1, [r2, #0xa]
	b _08046158
	.align 2, 0
_080460A8: .4byte 0xFFFFFA00
_080460AC: .4byte Player_800D944
_080460B0: .4byte Player_800EB58
_080460B4: .4byte 0xEFFFFFDF
_080460B8:
	ldr r0, _08046104 @ =gStageData
	ldrh r1, [r4, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08046128
	movs r0, #1
	lsls r0, r7
	mov r2, r8          @ r2 = r8 = rocket
	ldrb r1, [r2, #0xa]
	bics r1, r0
	movs r0, #2
	lsls r0, r7
	orrs r1, r0
	strb r1, [r2, #0xa]
	ldr r0, [r4, #4]
	ldr r1, _08046108 @ =0xEFFFFFD7
	ands r0, r1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
	strh r0, [r4, #0x1a]
	movs r1, #0
	strh r1, [r4, #0x18]
	ldr r0, [r4, #0xc]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08046110
	adds r0, r4, #0
	ldr r1, _0804610C @ =Player_8006250
	bl SetPlayerCallback
	asrs r2, r5, #8
	mov sl, r2
	asrs r4, r6, #8
	mov sb, r4
	b _08046160_continue
	.align 2, 0
_08046104: .4byte gStageData
_08046108: .4byte 0xEFFFFFD7
_0804610C: .4byte Player_8006250
_08046110:
	adds r0, r4, #0
	ldr r1, _08046124 @ =Player_8006310
	bl SetPlayerCallback
	asrs r0, r5, #8
	mov sl, r0
	asrs r1, r6, #8
	mov sb, r1
	b _08046160_continue
	.align 2, 0
_08046124: .4byte Player_8006310
_08046128:
	mov r2, r8          @ r2 = r8 = rocket
	ldr r0, [r2, #0x14]
	movs r1, #0x9c
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _0804614C
	mov r1, r8          @ r1 = r8 = rocket
	ldr r0, [r1, #0x10]
	ldr r2, _08046148 @ =0xFFFFFC00
	b _08046154
	.align 2, 0
_08046148: .4byte 0xFFFFFC00
_0804614C:
	mov r1, r8          @ r1 = r8 = rocket
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
_08046154:
	adds r0, r0, r2
	str r0, [r4, #0x10]
_08046158:
	asrs r4, r5, #8
	mov sl, r4
	asrs r0, r6, #8
	mov sb, r0
_08046160_continue:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14] @ i++
	cmp r0, #1
	bhi _08046170
	b _08045F88_loop
_08046170:
	mov r1, r8          @ r1 = r8 = rocket
	ldr r0, [r1, #0x1c]
	ldr r2, [sp, #0x10] @ r2 = sp10 = worldPos
	lsls r7, r2, #0x10  @ r7 = worldX << 16
	asrs r4, r2, #0x10
	str r4, [sp, #0x18] @ sp18 = worldY
	cmp r6, r0
	bge _080461E8
	movs r0, #0
	str r0, [sp, #0x14] @ sp14 = i = 0
	movs r5, #0
_08046186:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #2
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	ldr r4, [r0]        @ r4 = p
	mov r0, r8          @ r0 = r8 = rocket
	ldrb r1, [r0, #0xa]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #1
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080461C0
	adds r0, r4, #0
	bl Player_8009E8C
	ldr r1, [r4, #4]
	ldr r0, _08046268 @ =0xEFFFFFFF
	ands r1, r0
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	str r5, [r4, #0x6c]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	strh r5, [r4, #0x18]
_080461C0:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14] @ i++
	cmp r0, #1
	bls _08046186
	movs r0, #0x5a
	mov r4, r8          @ r4 = r8 = rocket
	strh r0, [r4, #0xc]
	ldr r0, _0804626C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08046270 @ =Task_8046298
	str r0, [r1, #8]
	ldr r0, _08046274 @ =0x00000256
	bl sub_8003E28
	ldr r0, _08046278 @ =0x00000299
	bl sub_8003DF0
_080461E8:
	asrs r0, r7, #0x10
	ldr r1, [sp, #0x18]
	ldr r3, _0804627C @ =gCamera
	ldr r2, [r3]
	mov r4, sl
	subs r2, r4, r2
	ldr r3, [r3, #4]
	mov r4, sb
	subs r3, r4, r3
	bl sub_802C140
	cmp r0, #0
	bne _08046280
	movs r0, #0
	str r0, [sp, #0x14] @ i = 0
	movs r5, #0
_08046208:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #2
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	ldr r4, [r0]        @ r4 = p
	mov r0, r8          @ r0 = r8 = rocket
	ldrb r1, [r0, #0xa]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #1
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08046242
	adds r0, r4, #0
	bl Player_8009E8C
	ldr r1, [r4, #4]
	ldr r0, _08046268 @ =0xEFFFFFFF
	ands r1, r0
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #4]
	str r5, [r4, #0x6c]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	strh r5, [r4, #0x18]
_08046242:
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14] @ i++
	cmp r0, #1
	bls _08046208
	mov r4, r8          @ r4 = r8 = rocket
	ldrb r0, [r4, #8]
	ldr r1, [sp, #8]    @ r1 = sp08 = me
	strb r0, [r1]
	ldr r0, _0804626C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08046274 @ =0x00000256
	bl sub_8003E28
	b _08046286
	.align 2, 0
_08046268: .4byte 0xEFFFFFFF
_0804626C: .4byte gCurTask
_08046270: .4byte Task_8046298
_08046274: .4byte 0x00000256
_08046278: .4byte 0x00000299
_0804627C: .4byte gCamera
_08046280:
	mov r0, r8          @ r0 = r8 = rocket
	bl sub_8046438
_08046286:
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
