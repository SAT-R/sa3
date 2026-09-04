
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	mov sl, r0
	movs r1, #0x1c
	adds r1, r1, r5
	mov r8, r1
	movs r1, #0
_0802CE66:
	lsls r0, r1, #0x10
	mov sb, r0
	cmp r0, #0
	bne _0802CE78
	ldr r0, _0802CE74 @ =gStageData
	ldrb r1, [r0, #6]
	b _0802CE82
	.align 2, 0
_0802CE74: .4byte gStageData
_0802CE78:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0802CE82:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802CFB4 @ =gPlayers
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_802C080
	cmp r0, #0
	beq _0802CE9C
	b _0802D2F0
_0802CE9C:
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r2, [r1]
	movs r0, #0x1c
	ands r0, r2
	adds r7, r1, #0
	cmp r0, #4
	beq _0802CEBC
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	beq _0802CEBC
	b _0802D228
_0802CEBC:
	ldrh r0, [r4, #0x2a]
	ldr r3, _0802CFB8 @ =0x00001C0F
	adds r1, r3, #0
	ands r1, r0
	ldr r0, _0802CFBC @ =0x00000803
	cmp r1, r0
	bne _0802CFC4
	ldrh r0, [r4, #0x30]
	subs r0, #0xe7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _0802CFC4
	ldr r3, _0802CFB4 @ =gPlayers
	lsls r2, r2, #0x1e
	lsrs r0, r2, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r0, [r1, #0x30]
	subs r0, #0xaf
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0802CF7E
	lsrs r0, r2, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r3
	movs r6, #0x30
	ldrsh r0, [r1, r6]
	cmp r0, #0xe0
	beq _0802CF7E
	lsrs r0, r2, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r3
	movs r6, #0x30
	ldrsh r0, [r1, r6]
	cmp r0, #0xe1
	beq _0802CF7E
	lsrs r0, r2, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r3
	movs r6, #0x30
	ldrsh r0, [r1, r6]
	cmp r0, #0xc8
	beq _0802CF7E
	lsrs r0, r2, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r3
	movs r6, #0x30
	ldrsh r0, [r1, r6]
	cmp r0, #0xc9
	beq _0802CF7E
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	movs r6, #0x30
	ldrsh r1, [r0, r6]
	movs r0, #0x85
	lsls r0, r0, #1
	cmp r1, r0
	beq _0802CF7E
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	movs r2, #0x30
	ldrsh r1, [r0, r2]
	ldr r0, _0802CFC0 @ =0x0000010B
	cmp r1, r0
	bne _0802CFC4
_0802CF7E:
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	str r4, [sp]
	movs r6, #1
	str r6, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x1c
	movs r3, #0
	bl Itembox_CollisionPlayer
	cmp r0, #0
	beq _0802D03C
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	ldr r0, _0802CFB4 @ =gPlayers
	adds r1, r1, r0
	str r1, [r5, #0x6c]
	strb r6, [r5, #8]
	movs r0, #1
	b _0802D340
	.align 2, 0
_0802CFB4: .4byte gPlayers
_0802CFB8: .4byte 0x00001C0F
_0802CFBC: .4byte 0x00000803
_0802CFC0: .4byte 0x0000010B
_0802CFC4:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	bne _0802D03C
	ldrb r1, [r7]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	beq _0802D03C
	ldr r3, _0802D15C @ =gPlayers
	lsls r2, r1, #0x1e
	lsrs r0, r2, #0x1e
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r3
	ldrh r0, [r1, #0x34]
	cmp r0, #0x60
	beq _0802D03C
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r1, [r0, #0x34]
	movs r0, #0xd3
	lsls r0, r0, #1
	cmp r1, r0
	beq _0802D03C
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r1, [r0, #0x34]
	ldr r0, _0802D160 @ =0x00000103
	cmp r1, r0
	beq _0802D03C
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r1, [r0, #0x34]
	movs r0, #0xbb
	lsls r0, r0, #2
	cmp r1, r0
	beq _0802D03C
	b _0802D2F0
_0802D03C:
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	str r4, [sp]
	movs r6, #1
	str r6, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x1c
	movs r3, #0
	bl Itembox_CollisionPlayer
	cmp r0, #0
	bne _0802D056
	b _0802D228
_0802D056:
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	movs r0, #0
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0802D098
	ldrh r1, [r4, #0x30]
	adds r0, r1, #0
	subs r0, #0xe2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0802D082
	b _0802D2F0
_0802D082:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf7
	bne _0802D08C
	b _0802D2F0
_0802D08C:
	cmp r0, #0xa
	bne _0802D092
	b _0802D2F0
_0802D092:
	cmp r0, #0xb
	bne _0802D098
	b _0802D2F0
_0802D098:
	ldr r0, [r4, #4]
	movs r1, #6
	ands r0, r1
	cmp r0, #6
	beq _0802D168
	strb r6, [r5, #8]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r4, #4]
	movs r3, #1
	mov sl, r3
	movs r6, #0x30
	ldrsh r1, [r4, r6]
	cmp r1, #0xaa
	beq _0802D0C6
	cmp r1, #0xbb
	beq _0802D0C6
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0802D0D6
_0802D0C6:
	ldr r0, [r4, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #4]
	adds r0, r4, #0
	ldr r1, _0802D164 @ =Player_80069E4
	bl SetPlayerCallback
_0802D0D6:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	beq _0802D0E6
	b _0802D1E8
_0802D0E6:
	ldr r2, _0802D15C @ =gPlayers
	ldrb r0, [r7]
	lsls r3, r0, #0x1e
	lsrs r1, r3, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrh r0, [r0, #0x34]
	cmp r0, #0x60
	beq _0802D144
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrh r1, [r0, #0x34]
	movs r0, #0xd3
	lsls r0, r0, #1
	cmp r1, r0
	beq _0802D144
	lsrs r1, r3, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrh r1, [r0, #0x34]
	ldr r0, _0802D160 @ =0x00000103
	cmp r1, r0
	beq _0802D144
	lsrs r1, r3, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	ldrh r1, [r0, #0x34]
	movs r0, #0xbb
	lsls r0, r0, #2
	cmp r1, r0
	bne _0802D1E8
_0802D144:
	ldrb r1, [r7]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	str r0, [r5, #0x6c]
	b _0802D33E
	.align 2, 0
_0802D15C: .4byte gPlayers
_0802D160: .4byte 0x00000103
_0802D164: .4byte Player_80069E4
_0802D168:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0802D228
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0802D1EC
	strb r6, [r5, #8]
	ldr r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r1, r0
	movs r0, #1
	mov sl, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #4]
	adds r0, r4, #0
	ldr r1, _0802D1E0 @ =Player_80069E4
	bl SetPlayerCallback
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #3
	bne _0802D1E8
	ldr r3, _0802D1E4 @ =gPlayers
	ldrb r0, [r7]
	lsls r2, r0, #0x1e
	lsrs r1, r2, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	ldrh r0, [r0, #0x34]
	cmp r0, #0x60
	bne _0802D1E8
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r3
	str r0, [r5, #0x6c]
	b _0802D33E
	.align 2, 0
_0802D1E0: .4byte Player_80069E4
_0802D1E4: .4byte gPlayers
_0802D1E8:
	str r4, [r5, #0x6c]
	b _0802D33E
_0802D1EC:
	ldrh r1, [r4, #0x34]
	movs r0, #0x82
	lsls r0, r0, #2
	cmp r1, r0
	bne _0802D220
	ldrb r0, [r7]
	movs r2, #0x1c
	ands r2, r0
	cmp r2, #4
	bne _0802D220
	strb r6, [r5, #8]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	orrs r0, r2
	str r0, [r4, #4]
	adds r0, r4, #0
	ldr r1, _0802D21C @ =Player_80069E4
	bl SetPlayerCallback
	str r4, [r5, #0x6c]
	movs r0, #1
	b _0802D340
	.align 2, 0
_0802D21C: .4byte Player_80069E4
_0802D220:
	movs r0, #1
	strb r0, [r5, #8]
	str r4, [r5, #0x6c]
	b _0802D340
_0802D228:
	adds r0, r4, #0
	bl sub_802C0D4
	cmp r0, #0
	bne _0802D2F0
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl sub_8020950
	adds r2, r0, #0
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0802D25E
	ldr r0, [r4, #4]
	ands r0, r1
	cmp r0, #0
	bne _0802D27A
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	b _0802D282
_0802D25E:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0802D288
	ldr r0, [r4, #4]
	ands r0, r1
	cmp r0, #0
	beq _0802D27A
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	b _0802D282
_0802D27A:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x14]
	subs r0, r0, r1
_0802D282:
	str r0, [r4, #0x14]
	movs r0, #0
	strh r0, [r4, #0x1a]
_0802D288:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0802D2F0
	ldr r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	adds r6, r1, #0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r4, #0x10]
	adds r3, r1, r0
	str r3, [r4, #0x10]
	movs r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _0802D2CC
	ldrh r1, [r4, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802D2CC
	ldr r1, _0802D2C8 @ =0xFFFFFF00
	adds r0, r3, r1
	b _0802D2E8
	.align 2, 0
_0802D2C8: .4byte 0xFFFFFF00
_0802D2CC:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r2
	cmp r0, #0
	beq _0802D2F0
	ldrh r1, [r4, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802D2F0
	ldr r0, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
_0802D2E8:
	str r0, [r4, #0x10]
	movs r0, #0x40
	orrs r0, r6
	str r0, [r4, #4]
_0802D2F0:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0802D300
	b _0802CE66
_0802D300:
	ldr r0, _0802D350 @ =gStageData
	adds r0, #0x98
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r4, [r0, #0x50]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0802D322
	cmp r1, #0x10
	bne _0802D33E
_0802D322:
	adds r0, r5, #0
	adds r0, #0x1c
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	movs r3, #0
	bl Itembox_CollisionCheese
	cmp r0, #0
	beq _0802D33E
	movs r0, #2
	strb r0, [r5, #8]
	str r4, [r5, #0x6c]
	movs r3, #1
	mov sl, r3
_0802D33E:
	mov r0, sl
_0802D340:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802D350: .4byte gStageData

.syntax divided
