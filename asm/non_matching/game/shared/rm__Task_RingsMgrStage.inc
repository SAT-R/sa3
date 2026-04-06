
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	ldr r0, _08029E2C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r1, #0x28]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0x18]
	ldr r0, [sp, #4]
	bl UpdateSpriteAnimation
	ldr r3, [sp, #4]
	ldr r2, [r3, #4]
	lsrs r0, r2, #0x1c
	cmp r0, #0
	bne _08029E34
	ldr r0, _08029E30 @ =gRefSpriteTables
	ldr r0, [r0]
	ldrh r1, [r3, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	str r1, [sp, #0xc]
	b _08029E4A
	.align 2, 0
_08029E2C: .4byte gCurTask
_08029E30: .4byte gRefSpriteTables
_08029E34:
	ldr r0, _08029E80 @ =gRefSpriteTables
	ldr r1, [r0]
	ldr r4, [sp, #4]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r0, r0, r1
	str r0, [sp, #0xc]
_08029E4A:
	ldr r6, [sp, #8]
	adds r6, #4
	ldm r6!, {r0}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldm r6!, {r0}
	str r6, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _08029E84 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	bls _08029E6A
	b _0802A2BC
_08029E6A:
	movs r0, #0
	str r0, [sp, #0x1c]
	mov r1, sp
	str r1, [sp, #0x20]
_08029E72:
	ldr r2, [sp, #0x1c]
	cmp r2, #0
	bne _08029E88
	ldr r0, _08029E84 @ =gStageData
	ldrb r1, [r0, #6]
	b _08029E92
	.align 2, 0
_08029E80: .4byte gRefSpriteTables
_08029E84: .4byte gStageData
_08029E88:
	mov r0, sb
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08029E92:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08029FB0 @ =gPlayers
	adds r0, r0, r1
	mov sb, r0
	adds r4, r1, #0
	mov r3, sb
	ldr r0, [r3, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08029EB4
	b _0802A292
_08029EB4:
	mov r6, sb
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0x66
	bne _08029EC0
	b _0802A292
_08029EC0:
	mov r0, sb
	adds r0, #0x48
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08029ECE
	b _0802A292
_08029ECE:
	mov r1, sb
	adds r1, #0x2b
	ldrb r2, [r1]
	movs r0, #0x1c
	ands r0, r2
	str r1, [sp, #0x44]
	cmp r0, #8
	bne _08029EFA
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r4, #4
	adds r0, r0, r1
	ldr r0, [r0]
	ands r0, r3
	cmp r0, #0
	beq _08029EFA
	b _0802A292
_08029EFA:
	mov r1, sb
	adds r1, #0x24
	ldrb r0, [r1]
	rsbs r0, r0, #0
	ldr r3, [sp, #0x20]
	strb r0, [r3]
	mov r2, sb
	adds r2, #0x25
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r3, #1]
	ldrb r0, [r1]
	strb r0, [r3, #2]
	ldrb r0, [r2]
	strb r0, [r3, #3]
	mov r4, sb
	ldr r1, [r4, #0x14]
	asrs r1, r1, #8
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r0, r1, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #3
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	adds r0, #8
	asrs r0, r0, #8
	cmp sl, r0
	ble _08029F3A
	b _0802A098
_08029F3A:
	ldr r6, [sp, #0x14]
	cmp sl, r6
	blo _08029F42
	b _0802A098
_08029F42:
	mov r0, sp
	str r0, [sp, #0x24]
_08029F46:
	mov r1, sb
	ldr r2, [r1, #0x10]
	asrs r1, r2, #8
	ldr r3, [sp, #0x24]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r1, r0
	subs r0, #8
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	adds r0, #0x10
	asrs r0, r0, #8
	mov r4, sb
	ldr r3, [r4, #0x14]
	mov r6, sl
	adds r6, #1
	str r6, [sp, #0x3c]
	cmp r8, r0
	ble _08029F76
	b _0802A076
_08029F76:
	ldr r0, [sp, #0x10]
	cmp r8, r0
	blo _08029F7E
	b _0802A076
_08029F7E:
	ldr r1, [sp, #0x10]
	mov r0, sl
	muls r0, r1, r0
	mov r4, r8
	lsls r1, r4, #2
	lsls r0, r0, #2
	ldr r6, [sp, #8]
	adds r0, r0, r6
	adds r1, r1, r0
	ldr r0, [r1]
	adds r4, #1
	str r4, [sp, #0x38]
	cmp r0, #0
	beq _0802A054
	subs r0, #8
	adds r5, r6, r0
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0802A054
	mov r4, sp
_08029FA8:
	cmp r1, #0xfe
	bne _08029FB4
	adds r5, #2
	b _0802A04C
	.align 2, 0
_08029FB0: .4byte gPlayers
_08029FB4:
	ldrb r1, [r5]
	lsls r1, r1, #3
	mov r2, r8
	lsls r0, r2, #8
	adds r7, r1, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	mov r3, sl
	lsls r0, r3, #8
	adds r6, r1, r0
	adds r2, r7, #0
	subs r2, #8
	mov r1, sb
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _08029FE8
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _08029FF4
	cmp r2, r1
	blt _0802A044
_08029FE8:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0802A044
_08029FF4:
	adds r2, r6, #0
	subs r2, #0x10
	mov r3, sb
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _0802A010
	cmp r6, r1
	bge _0802A01C
	cmp r2, r1
	blt _0802A044
_0802A010:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0802A044
_0802A01C:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0802A02E
	ldr r2, [sp, #0x44]
	ldrb r1, [r2]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	bne _0802A034
_0802A02E:
	movs r0, #1
	bl AddRings
_0802A034:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl CreateCollectRingEffect
	movs r0, #0xfe
	strb r0, [r5]
_0802A044:
	adds r5, #2
	mov r6, sb
	ldr r3, [r6, #0x14]
	ldr r2, [r6, #0x10]
_0802A04C:
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08029FA8
_0802A054:
	ldr r1, [sp, #0x38]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	asrs r1, r2, #8
	ldr r4, [sp, #0x24]
	movs r0, #2
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	adds r0, #0x10
	asrs r0, r0, #8
	cmp r8, r0
	bgt _0802A076
	ldr r6, [sp, #0x10]
	cmp r8, r6
	bhs _0802A076
	b _08029F7E
_0802A076:
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	asrs r1, r3, #8
	ldr r2, [sp, #0x24]
	movs r0, #3
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	adds r0, #8
	asrs r0, r0, #8
	cmp sl, r0
	bgt _0802A098
	ldr r3, [sp, #0x14]
	cmp sl, r3
	bhs _0802A098
	b _08029F46
_0802A098:
	ldr r3, _0802A108 @ =gCamera
	ldr r2, [r3, #4]
	lsls r0, r2, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0x9e
	lsls r0, r0, #1
	add r0, sb
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0802A0B4
	b _0802A292
_0802A0B4:
	mov r4, sl
	lsls r1, r4, #8
	adds r0, r2, #0
	adds r0, #0xa0
	cmp r1, r0
	blt _0802A0C2
	b _0802A292
_0802A0C2:
	ldr r6, [sp, #0x14]
	cmp sl, r6
	blo _0802A0CA
	b _0802A292
_0802A0CA:
	ldr r0, [r3]
	lsls r1, r0, #8
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r1, r1, #8
	adds r0, #0xf0
	cmp r1, r0
	blt _0802A0DC
	b _0802A274
_0802A0DC:
	ldr r0, [sp, #0x10]
	mov r2, sl
	muls r2, r0, r2
	mov r3, r8
	lsls r1, r3, #2
	lsls r0, r2, #2
	ldr r4, [sp, #8]
	adds r0, r0, r4
	adds r1, r1, r0
	ldr r0, [r1]
	str r2, [sp, #0x34]
	ldr r6, [sp, #0x10]
	cmp r8, r6
	blo _0802A0FA
	b _0802A274
_0802A0FA:
	cmp r0, #0
	bne _0802A100
	b _0802A246
_0802A100:
	subs r0, #8
	ldr r1, [sp, #8]
	adds r5, r1, r0
	b _0802A23C
	.align 2, 0
_0802A108: .4byte gCamera
_0802A10C:
	cmp r1, #0xfe
	beq _0802A180
	ldrb r1, [r5]
	lsls r1, r1, #3
	mov r2, r8
	lsls r0, r2, #8
	adds r7, r1, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	mov r3, sl
	lsls r0, r3, #8
	adds r6, r1, r0
	ldr r4, _0802A184 @ =gCamera
	ldr r0, [r4]
	subs r0, r7, r0
	adds r0, #8
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802A180
	ldr r0, [r4, #4]
	subs r0, r6, r0
	cmp r0, #0
	blt _0802A180
	subs r0, #0x10
	cmp r0, #0xa0
	bgt _0802A180
	adds r1, r7, #0
	subs r1, #0x40
	mov r2, sb
	ldr r0, [r2, #0x10]
	asrs r2, r0, #8
	cmp r1, r2
	bgt _0802A188
	adds r0, r7, #0
	adds r0, #0x40
	cmp r0, r2
	blt _0802A188
	adds r1, r6, #0
	subs r1, #0x48
	mov r3, sb
	ldr r0, [r3, #0x14]
	asrs r2, r0, #8
	cmp r1, r2
	bgt _0802A188
	adds r0, r6, #0
	adds r0, #0x38
	cmp r0, r2
	blt _0802A188
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r2, sb
	bl sub_802AB10
	movs r0, #0xfe
	strb r0, [r5]
_0802A180:
	adds r5, #2
	b _0802A23C
	.align 2, 0
_0802A184: .4byte gCamera
_0802A188:
	adds r5, #2
	ldr r4, [sp, #4]
	ldrb r1, [r4, #0x1d]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0802A19A
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0802A1BC
_0802A19A:
	movs r0, #0xff
	ldr r1, [sp, #4]
	strb r0, [r1, #0x1d]
	ldr r2, _0802A1B8 @ =gCamera
	ldr r0, [r2]
	subs r0, r7, r0
	strh r0, [r1, #0x10]
	ldr r0, [r2, #4]
	subs r0, r6, r0
	strh r0, [r1, #0x12]
	ldr r0, [sp, #4]
	bl DisplaySprite
	b _0802A232
	.align 2, 0
_0802A1B8: .4byte gCamera
_0802A1BC:
	ldr r3, [sp, #4]
	ldrb r1, [r3, #0x1d]
	lsls r1, r1, #3
	ldr r0, _0802A2A4 @ =gOamMallocBuffer
	adds r2, r1, r0
	ldrh r0, [r3, #0x14]
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r1, r4, #0
	ands r0, r1
	lsrs r0, r0, #6
	str r2, [sp, #0x48]
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _0802A2A8 @ =iwram_end
	ldr r0, [r0]
	ldr r2, [sp, #0x48]
	cmp r0, r4
	bne _0802A1E6
	b _0802A69C
_0802A1E6:
	ldr r1, _0802A2AC @ =0x040000D4
	str r2, [r1]
	str r4, [r1, #4]
	ldr r0, _0802A2B0 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r3, [r4, #2]
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	strh r3, [r4, #2]
	ldrh r2, [r4]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r4]
	ldr r1, _0802A2B4 @ =gCamera
	ldr r0, [r1, #4]
	subs r0, r6, r0
	ldr r6, [sp, #0xc]
	ldrh r1, [r6, #0xa]
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4]
	ldr r1, _0802A2B4 @ =gCamera
	ldr r0, [r1]
	subs r0, r7, r0
	ldrh r1, [r6, #8]
	subs r0, r0, r1
	ldr r2, _0802A2B8 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	adds r3, r3, r0
	strh r3, [r4, #2]
_0802A232:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
_0802A23C:
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0802A246
	b _0802A10C
_0802A246:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #8
	ldr r3, _0802A2B4 @ =gCamera
	ldr r0, [r3]
	adds r0, #0xf0
	cmp r1, r0
	bge _0802A274
	mov r4, r8
	lsls r1, r4, #2
	ldr r6, [sp, #0x34]
	lsls r0, r6, #2
	ldr r2, [sp, #8]
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r3, [sp, #0x10]
	cmp r8, r3
	bhs _0802A274
	b _0802A0FA
_0802A274:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r0, #8
	ldr r3, _0802A2B4 @ =gCamera
	ldr r0, [r3, #4]
	adds r0, #0xa0
	cmp r1, r0
	bge _0802A292
	ldr r4, [sp, #0x14]
	cmp sl, r4
	bhs _0802A292
	b _0802A0CA
_0802A292:
	ldr r0, [sp, #0x1c]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	cmp r0, #1
	bhi _0802A2A2
	b _08029E72
_0802A2A2:
	b _0802A514
	.align 2, 0
_0802A2A4: .4byte gOamMallocBuffer
_0802A2A8: .4byte iwram_end
_0802A2AC: .4byte 0x040000D4
_0802A2B0: .4byte 0x80000003
_0802A2B4: .4byte gCamera
_0802A2B8: .4byte 0x000001FF
_0802A2BC:
	movs r6, #0
	str r6, [sp, #0x1c]
	mov r0, sp
	str r0, [sp, #0x2c]
_0802A2C4:
	movs r1, #0
	str r1, [sp, #0x28]
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r3, _0802A3C8 @ =gPlayers
	adds r0, r0, r3
	mov sb, r0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	adds r2, #1
	str r2, [sp, #0x40]
	cmp r1, #0x14
	bne _0802A2EC
	b _0802A506
_0802A2EC:
	cmp r1, #8
	bne _0802A2F2
	b _0802A506
_0802A2F2:
	ldr r0, _0802A3CC @ =gStageData
	ldrb r1, [r0, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	cmp sb, r0
	beq _0802A31E
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	cmp sb, r0
	bne _0802A322
_0802A31E:
	movs r4, #1
	str r4, [sp, #0x28]
_0802A322:
	mov r6, sb
	ldr r1, [r6, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x40]
	cmp r1, #0
	beq _0802A338
	b _0802A506
_0802A338:
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0x66
	bne _0802A342
	b _0802A506
_0802A342:
	mov r0, sb
	adds r0, #0x48
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _0802A350
	b _0802A506
_0802A350:
	mov r1, sb
	adds r1, #0x24
	ldrb r0, [r1]
	rsbs r0, r0, #0
	ldr r3, [sp, #0x2c]
	strb r0, [r3]
	mov r2, sb
	adds r2, #0x25
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r3, #1]
	ldrb r0, [r1]
	strb r0, [r3, #2]
	ldrb r0, [r2]
	strb r0, [r3, #3]
	ldr r1, [r6, #0x14]
	asrs r1, r1, #8
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r0, r1, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #3
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	adds r0, #8
	asrs r0, r0, #8
	cmp sl, r0
	ble _0802A38E
	b _0802A506
_0802A38E:
	ldr r4, [sp, #0x14]
	cmp sl, r4
	blo _0802A396
	b _0802A506
_0802A396:
	mov r6, sp
	str r6, [sp, #0x30]
_0802A39A:
	mov r0, sb
	ldr r2, [r0, #0x10]
	asrs r1, r2, #8
	ldr r3, [sp, #0x30]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r1, r0
	subs r0, #8
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #2
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	adds r0, #0x10
	asrs r0, r0, #8
	mov r4, sb
	ldr r3, [r4, #0x14]
	mov r6, sl
	adds r6, #1
	str r6, [sp, #0x3c]
	b _0802A4D8
	.align 2, 0
_0802A3C8: .4byte gPlayers
_0802A3CC: .4byte gStageData
_0802A3D0:
	ldr r1, [sp, #0x10]
	mov r0, sl
	muls r0, r1, r0
	mov r4, r8
	lsls r1, r4, #2
	lsls r0, r0, #2
	ldr r6, [sp, #8]
	adds r0, r0, r6
	adds r1, r1, r0
	ldr r0, [r1]
	adds r4, #1
	str r4, [sp, #0x38]
	cmp r0, #0
	beq _0802A4C2
	subs r0, #8
	adds r5, r6, r0
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0802A4C2
	mov r4, sp
_0802A3FA:
	cmp r1, #0xfe
	bne _0802A402
	adds r5, #2
	b _0802A4BA
_0802A402:
	ldrb r1, [r5]
	lsls r1, r1, #3
	mov r2, r8
	lsls r0, r2, #8
	adds r7, r1, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	mov r3, sl
	lsls r0, r3, #8
	adds r6, r1, r0
	adds r2, r7, #0
	subs r2, #8
	mov r1, sb
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	movs r3, #0
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _0802A436
	adds r0, r7, #0
	adds r0, #8
	cmp r0, r1
	bge _0802A442
	cmp r2, r1
	blt _0802A4B2
_0802A436:
	movs r0, #2
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0802A4B2
_0802A442:
	adds r2, r6, #0
	subs r2, #0x10
	mov r3, sb
	ldr r0, [r3, #0x14]
	asrs r0, r0, #8
	movs r3, #1
	ldrsb r3, [r4, r3]
	adds r1, r0, r3
	cmp r2, r1
	bgt _0802A45E
	cmp r6, r1
	bge _0802A46A
	cmp r2, r1
	blt _0802A4B2
_0802A45E:
	movs r0, #3
	ldrsb r0, [r4, r0]
	subs r0, r0, r3
	adds r0, r1, r0
	cmp r0, r2
	blt _0802A4B2
_0802A46A:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0802A4A2
	ldr r0, _0802A490 @ =gStageData
	ldrb r0, [r0, #6]
	ldr r1, [sp, #0x1c]
	cmp r0, r1
	bne _0802A494
	movs r0, #1
	bl AddRings
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl CreateCollectRingEffect
	b _0802A4AE
	.align 2, 0
_0802A490: .4byte gStageData
_0802A494:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl CreateCollectRingEffectNoSfx
	b _0802A4AE
_0802A4A2:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl CreateCollectRingEffectNoSfx
_0802A4AE:
	movs r0, #0xfe
	strb r0, [r5]
_0802A4B2:
	adds r5, #2
	mov r2, sb
	ldr r3, [r2, #0x14]
	ldr r2, [r2, #0x10]
_0802A4BA:
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0802A3FA
_0802A4C2:
	ldr r4, [sp, #0x38]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	asrs r1, r2, #8
	ldr r6, [sp, #0x30]
	movs r0, #2
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	adds r0, #0x10
	asrs r0, r0, #8
_0802A4D8:
	cmp r8, r0
	bgt _0802A4E4
	ldr r0, [sp, #0x10]
	cmp r8, r0
	bhs _0802A4E4
	b _0802A3D0
_0802A4E4:
	ldr r1, [sp, #0x3c]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	asrs r1, r3, #8
	ldr r2, [sp, #0x30]
	movs r0, #3
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	adds r0, #8
	asrs r0, r0, #8
	cmp sl, r0
	bgt _0802A506
	ldr r3, [sp, #0x14]
	cmp sl, r3
	bhs _0802A506
	b _0802A39A
_0802A506:
	ldr r4, [sp, #0x40]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	cmp r0, #3
	bhi _0802A514
	b _0802A2C4
_0802A514:
	ldr r2, _0802A524 @ =gCamera
	ldr r0, [r2, #4]
	lsls r1, r0, #8
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r1, r1, #8
	b _0802A68E
	.align 2, 0
_0802A524: .4byte gCamera
_0802A528:
	ldr r0, [r2]
	lsls r1, r0, #8
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r1, r1, #8
	adds r0, #0xf0
	cmp r1, r0
	blt _0802A53A
	b _0802A67E
_0802A53A:
	ldr r0, [sp, #0x10]
	cmp r8, r0
	blo _0802A542
	b _0802A67E
_0802A542:
	ldr r1, [sp, #0x10]
	mov r0, sl
	muls r0, r1, r0
	mov r2, r8
	lsls r1, r2, #2
	lsls r0, r0, #2
	ldr r3, [sp, #8]
	adds r0, r0, r3
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0802A55C
	b _0802A660
_0802A55C:
	subs r0, #8
	adds r5, r3, r0
	b _0802A656
_0802A562:
	cmp r1, #0xfe
	beq _0802A59A
	ldrb r1, [r5]
	lsls r1, r1, #3
	mov r4, r8
	lsls r0, r4, #8
	adds r7, r1, r0
	ldrb r1, [r5, #1]
	lsls r1, r1, #3
	mov r6, sl
	lsls r0, r6, #8
	adds r6, r1, r0
	ldr r1, _0802A5A0 @ =gCamera
	ldr r0, [r1]
	subs r0, r7, r0
	adds r0, #8
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802A59A
	ldr r2, _0802A5A0 @ =gCamera
	ldr r0, [r2, #4]
	subs r0, r6, r0
	cmp r0, #0
	blt _0802A59A
	subs r0, #0x10
	cmp r0, #0xa0
	ble _0802A5A4
_0802A59A:
	adds r5, #2
	b _0802A656
	.align 2, 0
_0802A5A0: .4byte gCamera
_0802A5A4:
	adds r5, #2
	ldr r3, [sp, #4]
	ldrb r1, [r3, #0x1d]
	ldr r4, [sp, #0x18]
	cmp r4, #0
	beq _0802A5B6
	adds r0, r1, #0
	cmp r0, #0xff
	bne _0802A5D8
_0802A5B6:
	movs r0, #0xff
	ldr r1, [sp, #4]
	strb r0, [r1, #0x1d]
	ldr r2, _0802A5D4 @ =gCamera
	ldr r0, [r2]
	subs r0, r7, r0
	strh r0, [r1, #0x10]
	ldr r0, [r2, #4]
	subs r0, r6, r0
	strh r0, [r1, #0x12]
	ldr r0, [sp, #4]
	bl DisplaySprite
	b _0802A64C
	.align 2, 0
_0802A5D4: .4byte gCamera
_0802A5D8:
	ldr r3, [sp, #4]
	ldrb r1, [r3, #0x1d]
	lsls r1, r1, #3
	ldr r0, _0802A6AC @ =gOamMallocBuffer
	adds r2, r1, r0
	ldrh r0, [r3, #0x14]
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r1, r4, #0
	ands r0, r1
	lsrs r0, r0, #6
	str r2, [sp, #0x48]
	bl OamMalloc
	adds r4, r0, #0
	ldr r0, _0802A6B0 @ =iwram_end
	ldr r0, [r0]
	ldr r2, [sp, #0x48]
	cmp r0, r4
	beq _0802A69C
	ldr r1, _0802A6B4 @ =0x040000D4
	str r2, [r1]
	str r4, [r1, #4]
	ldr r0, _0802A6B8 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r3, [r4, #2]
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r3, r0
	strh r3, [r4, #2]
	ldrh r2, [r4]
	movs r1, #0xff
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r2, r0
	strh r2, [r4]
	ldr r1, _0802A6BC @ =gCamera
	ldr r0, [r1, #4]
	subs r0, r6, r0
	ldr r6, [sp, #0xc]
	ldrh r1, [r6, #0xa]
	subs r0, r0, r1
	movs r1, #0xff
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r4]
	ldr r1, _0802A6BC @ =gCamera
	ldr r0, [r1]
	subs r0, r7, r0
	ldrh r1, [r6, #8]
	subs r0, r0, r1
	ldr r2, _0802A6C0 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	adds r3, r3, r0
	strh r3, [r4, #2]
_0802A64C:
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
_0802A656:
	ldrb r1, [r5]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _0802A660
	b _0802A562
_0802A660:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r0, #8
	ldr r3, _0802A6BC @ =gCamera
	ldr r0, [r3]
	adds r0, #0xf0
	cmp r1, r0
	bge _0802A67E
	ldr r4, [sp, #0x10]
	cmp r8, r4
	bhs _0802A67E
	b _0802A542
_0802A67E:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r0, #8
	ldr r2, _0802A6BC @ =gCamera
	ldr r0, [r2, #4]
_0802A68E:
	adds r0, #0xa0
	cmp r1, r0
	bge _0802A69C
	ldr r6, [sp, #0x14]
	cmp sl, r6
	bhs _0802A69C
	b _0802A528
_0802A69C:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A6AC: .4byte gOamMallocBuffer
_0802A6B0: .4byte iwram_end
_0802A6B4: .4byte 0x040000D4
_0802A6B8: .4byte 0x80000003
_0802A6BC: .4byte gCamera
_0802A6C0: .4byte 0x000001FF

.syntax divided
