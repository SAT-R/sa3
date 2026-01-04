
.syntax unified
.text
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801E178
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0801E144
	movs r4, #8
_0801E144:
	ldr r1, _0801E170 @ =gUnknown_080CE5B8
	lsls r0, r4, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r5, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E15C
	rsbs r2, r2, #0
_0801E15C:
	strh r2, [r5, #0x1c]
	ldr r1, _0801E174 @ =Player_8005380
	adds r0, r5, #0
	bl SetPlayerCallback
	adds r0, r5, #0
	movs r1, #0x6e
	bl Player_PlaySong
	b _0801E1D4
	.align 2, 0
_0801E170: .4byte gUnknown_080CE5B8
_0801E174: .4byte Player_8005380
_0801E178:
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r4, [r0]
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	adds r6, r0, #0
	cmp r1, #0
	beq _0801E196
	asrs r0, r2, #0x15
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bgt _0801E196
	movs r4, #0
_0801E196:
	ldr r0, _0801E210 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _0801E1D2
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	adds r2, r4, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	bge _0801E1BC
	adds r2, r1, #0
_0801E1BC:
	adds r4, r2, #0
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801E214 @ =0x00000211
	adds r0, r5, #0
	bl Player_PlaySong
_0801E1D2:
	strh r4, [r6]
_0801E1D4:
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0801E218
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E248
	adds r0, r5, #0
	bl sub_8016E50
	adds r0, r5, #0
	bl sub_8016D30
	adds r0, r5, #0
	bl sub_8014E70
	adds r0, r5, #0
	bl sub_8016EB0
	adds r0, r5, #0
	bl Player_80149E4
	adds r0, r5, #0
	bl sub_8017004
	b _0801E248
	.align 2, 0
_0801E210: .4byte gStageData
_0801E214: .4byte 0x00000211
_0801E218:
	adds r0, r5, #0
	bl sub_8015144
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E248
	adds r0, r5, #0
	bl Player_801479C
	adds r0, r5, #0
	bl sub_8016D30
	adds r0, r5, #0
	bl sub_8014E70
	adds r0, r5, #0
	bl sub_8012EB8
	adds r0, r5, #0
	bl sub_8016E00
_0801E248:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

.syntax divided
