
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r0, #0xc
	mov r8, r0
	ldr r1, _08008844 @ =gPlayerCharacterIdleAnims
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r1, [r5, #0x34]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldrh r1, [r5, #0x1e]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08008850
	ldr r2, [r5, #4]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0800881E
	movs r4, #8
_0800881E:
	ldr r0, _08008848 @ =gUnknown_080CE5B8
	lsls r1, r4, #0x10
	asrs r1, r1, #0xf
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08008834
	rsbs r1, r1, #0
_08008834:
	strh r1, [r5, #0x1c]
	ldr r0, _0800884C @ =Player_800891C
	str r0, [r5]
	adds r0, r5, #0
	movs r1, #0x6e
	bl Player_PlaySong
	b _0800890A
	.align 2, 0
_08008844: .4byte gPlayerCharacterIdleAnims
_08008848: .4byte gUnknown_080CE5B8
_0800884C: .4byte Player_800891C
_08008850:
	adds r0, r5, #0
	adds r0, #0x46
	ldrh r4, [r0]
	lsls r2, r4, #0x10
	asrs r1, r2, #0x10
	adds r6, r0, #0
	cmp r1, #0
	beq _0800886E
	asrs r0, r2, #0x15
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0
	bgt _0800886E
	movs r4, #0
_0800886E:
	ldr r0, _08008914 @ =gStageData
	ldrh r1, [r5, #0x20]
	ldrh r0, [r0, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _080088AE
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
	bge _08008894
	adds r2, r1, #0
_08008894:
	adds r4, r2, #0
	movs r0, #1
	strh r0, [r5, #0x36]
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	movs r1, #0x6d
	bl Player_PlaySong
_080088AE:
	strh r4, [r6]
	cmp r7, #0xa
	bne _080088CC
	ldrh r0, [r5, #0x36]
	cmp r0, #1
	bne _080088CC
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080088CC
	movs r0, #0
	strh r0, [r5, #0x36]
_080088CC:
	adds r0, r5, #0
	bl sub_8015144
	adds r0, r5, #0
	bl sub_8015064
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800890A
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
	ldr r0, [r5, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800890A
	ldr r0, _08008918 @ =Player_8005380
	str r0, [r5]
_0800890A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008914: .4byte gStageData
_08008918: .4byte Player_8005380

.syntax divided
