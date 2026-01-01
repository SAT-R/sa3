
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08004654 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	movs r0, #4
	ldrsh r1, [r4, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004658 @ =gPlayers
	adds r5, r0, r1
	ldr r0, _0800465C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #7
	beq _08004628
	adds r0, r5, #0
	bl sub_8014258
	adds r0, r5, #0
	bl sub_80143E0
_08004628:
	adds r0, r5, #0
	bl sub_80142CC
	adds r0, r5, #0
	bl sub_80144B4
	adds r1, r5, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	subs r0, #1
	mov r8, r1
	cmp r0, #4
	bls _08004648
	b _08004B06
_08004648:
	lsls r0, r0, #2
	ldr r1, _08004660 @ =_08004664
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004654: .4byte gCurTask
_08004658: .4byte gPlayers
_0800465C: .4byte gStageData
_08004660: .4byte _08004664
_08004664: @ jump table
	.4byte _08004678 @ case 0
	.4byte _080046D8 @ case 1
	.4byte _08004830 @ case 2
	.4byte _0800488E @ case 3
	.4byte _080046D8 @ case 4
_08004678:
	bl sub_8004B14
	ldr r0, _080046BC @ =gStageData
	ldrh r0, [r0, #0xe]
	cmp r0, #0xb
	beq _08004686
	b _080048B8
_08004686:
	ldrh r1, [r5, #0x20]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08004692
	b _080048B8
_08004692:
	bl sub_8003D2C
	ldr r1, _080046C0 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _080046C4 @ =gBackgroundsCopyQueueCursor
	ldr r0, _080046C8 @ =gBackgroundsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080046CC @ =gBgSpritesCount
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080046D0 @ =gVramGraphicsCopyCursor
	ldr r0, _080046D4 @ =gVramGraphicsCopyQueueIndex
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_8023634
	b _08004B06
	.align 2, 0
_080046BC: .4byte gStageData
_080046C0: .4byte 0x0000FFFF
_080046C4: .4byte gBackgroundsCopyQueueCursor
_080046C8: .4byte gBackgroundsCopyQueueIndex
_080046CC: .4byte gBgSpritesCount
_080046D0: .4byte gVramGraphicsCopyCursor
_080046D4: .4byte gVramGraphicsCopyQueueIndex
_080046D8:
	mov r1, r8
	ldrb r3, [r1]
	lsls r6, r3, #0x1e
	lsrs r1, r6, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004728 @ =gPlayers
	adds r2, r0, r1
	ldr r1, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	adds r4, r1, #0
	cmp r0, #0
	beq _0800475C
	adds r0, r5, #0
	adds r0, #0x44
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0x1e
	bgt _0800470A
	b _080048A8
_0800470A:
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0800472C
	ldr r0, [r2, #0x10]
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	b _08004732
	.align 2, 0
_08004728: .4byte gPlayers
_0800472C:
	ldr r0, [r2, #0x10]
	ldr r3, _0800474C @ =0xFFFFF600
	adds r0, r0, r3
_08004732:
	str r0, [r5, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r2, #4]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08004750
	orrs r4, r1
	str r4, [r5, #4]
	b _080048A8
	.align 2, 0
_0800474C: .4byte 0xFFFFF600
_08004750:
	ldr r0, _08004758 @ =0xFFFEFFFF
	ands r0, r4
	str r0, [r5, #4]
	b _080048A8
	.align 2, 0
_08004758: .4byte 0xFFFEFFFF
_0800475C:
	movs r0, #0x1c
	ands r0, r3
	cmp r0, #0x14
	bne _08004766
	b _08004B06
_08004766:
	ldr r1, _0800478C @ =gStageData
	ldrb r0, [r1, #3]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08004790
	lsrs r0, r6, #0x1e
	ldrb r1, [r1, #6]
	cmp r0, r1
	beq _08004790
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r3
	movs r1, #0x14
	orrs r0, r1
	mov r4, r8
	strb r0, [r4]
	b _08004B06
	.align 2, 0
_0800478C: .4byte gStageData
_08004790:
	ldrh r6, [r5, #0x1e]
	ldr r3, _080047B8 @ =gStageData
	ldrb r0, [r3, #4]
	cmp r0, #9
	bne _0800479C
	b _080048B8
_0800479C:
	cmp r0, #4
	bne _080047A2
	b _080048B8
_080047A2:
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r1, r4
	cmp r1, #0
	beq _080047BC
	ldrh r0, [r2, #0x1e]
	strh r0, [r5, #0x1e]
	ldrh r0, [r2, #0x20]
	strh r0, [r5, #0x20]
	b _080048B8
	.align 2, 0
_080047B8: .4byte gStageData
_080047BC:
	ldrb r0, [r3, #9]
	cmp r0, #8
	beq _080047D8
	ldr r4, _080047D4 @ =gUnknown_03001150
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80B7968
	adds r0, r4, #0
	bl sub_80B7A94
	b _08004824
	.align 2, 0
_080047D4: .4byte gUnknown_03001150
_080047D8:
	strh r1, [r5, #0x1e]
	ldr r3, [r2, #0x14]
	ldr r1, _080047EC @ =0xFFFFE000
	adds r0, r3, r1
	ldr r1, [r5, #0x14]
	cmp r1, r0
	bge _080047F0
	movs r0, #0x80
	b _080047FC
	.align 2, 0
_080047EC: .4byte 0xFFFFE000
_080047F0:
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r3, r4
	cmp r1, r0
	ble _080047FE
	movs r0, #0x40
_080047FC:
	strh r0, [r5, #0x1e]
_080047FE:
	ldr r2, [r2, #0x10]
	ldr r1, _08004810 @ =0xFFFFE000
	adds r0, r2, r1
	ldr r1, [r5, #0x10]
	cmp r1, r0
	bge _08004814
	ldrh r1, [r5, #0x1e]
	movs r0, #0x10
	b _08004822
	.align 2, 0
_08004810: .4byte 0xFFFFE000
_08004814:
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r2, r3
	cmp r1, r0
	ble _08004826
	ldrh r1, [r5, #0x1e]
	movs r0, #0x20
_08004822:
	orrs r0, r1
_08004824:
	strh r0, [r5, #0x1e]
_08004826:
	ldrh r0, [r5, #0x1e]
	eors r6, r0
	ands r6, r0
	strh r6, [r5, #0x20]
	b _080048B8
_08004830:
	movs r1, #4
	ldrsh r0, [r4, r1]
	bl sub_80268B8
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004878 @ =gPlayers
	adds r2, r0, r1
	ldr r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080048B8
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080048B8
	ldr r3, [r2, #0x10]
	str r3, [r5, #0x10]
	ldr r0, [r2, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08004880
	ldr r4, _0800487C @ =0xFFFFF600
	adds r0, r3, r4
	b _08004886
	.align 2, 0
_08004878: .4byte gPlayers
_0800487C: .4byte 0xFFFFF600
_08004880:
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r3, r1
_08004886:
	str r0, [r5, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r5, #0x14]
	b _080048B8
_0800488E:
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r1, r5, r3
	ldr r0, [r1]
	ldrh r2, [r0]
	adds r0, #2
	str r0, [r1]
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _080048B0
_080048A8:
	movs r0, #0
	strh r0, [r5, #0x1e]
	strh r0, [r5, #0x20]
	b _080048B8
_080048B0:
	ldrh r0, [r5, #0x1e]
	strh r2, [r5, #0x1e]
	bics r2, r0
	strh r2, [r5, #0x20]
_080048B8:
	ldr r4, _08004910 @ =gStageData
	ldrb r0, [r4, #3]
	cmp r0, #7
	bne _080048C2
	b _08004AE0
_080048C2:
	adds r0, r5, #0
	bl sub_80153BC
	ldrb r0, [r4, #9]
	cmp r0, #8
	beq _08004914
	mov r4, r8
	ldrb r0, [r4]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _080048E2
	cmp r1, #8
	beq _080048E2
	cmp r1, #0x10
	bne _08004928
_080048E2:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _080048F6
	ldr r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
_080048F6:
	ldr r1, _08004910 @ =gStageData
	ldrb r0, [r1, #4]
	cmp r0, #3
	beq _08004900
	b _08004AA4
_08004900:
	ldrb r0, [r1, #3]
	cmp r0, #5
	bls _08004928
	adds r0, r5, #0
	bl sub_8015A44
	b _08004928
	.align 2, 0
_08004910: .4byte gStageData
_08004914:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _08004928
	ldr r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
_08004928:
	ldr r0, _080049C8 @ =gStageData
	mov sl, r0
	ldrb r0, [r0, #4]
	cmp r0, #3
	beq _08004934
	b _08004AA4
_08004934:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	adds r6, r0, #0
	ands r6, r1
	cmp r6, #0
	beq _08004946
	b _08004AA4
_08004946:
	movs r7, #0x80
	lsls r7, r7, #0xf
	ands r7, r0
	cmp r7, #0
	beq _08004A08
	adds r0, r5, #0
	bl Player_InitializeTagAction
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	beq _0800496A
	b _08004AA4
_0800496A:
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _080049CC @ =gPlayers
	adds r4, r0, r1
	ldr r0, [r4, #4]
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0800499A
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #8
	beq _0800499A
	b _08004AA4
_0800499A:
	adds r0, r4, #0
	adds r0, #0x44
	strh r6, [r0]
	ldr r0, [r4, #4]
	ldr r1, _080049D0 @ =0xEFFFFEDF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4, #4]
	str r6, [r4, #0x6c]
	adds r0, r4, #0
	bl Player_8007930
	mov r1, sl
	adds r1, #0xbd
	ldrb r0, [r1]
	cmp r0, #0
	bne _080049D4
	movs r0, #1
	strb r0, [r1]
	b _08004AA4
	.align 2, 0
_080049C8: .4byte gStageData
_080049CC: .4byte gPlayers
_080049D0: .4byte 0xEFFFFEDF
_080049D4:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _08004AA4
	mov r3, sl
	ldrh r2, [r3, #0xe]
	ldr r3, _08004A00 @ =gCamera
	str r6, [r3, #0x18]
	str r6, [r3, #0x10]
	ldr r1, _08004A04 @ =gUnknown_080D05A8
	lsls r2, r2, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	str r0, [r3, #0x1c]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	str r0, [r3, #0x14]
	b _08004AA4
	.align 2, 0
_08004A00: .4byte gCamera
_08004A04: .4byte gUnknown_080D05A8
_08004A08:
	movs r6, #0x80
	lsls r6, r6, #0x10
	ands r6, r0
	cmp r6, #0
	beq _08004A3C
	mov r4, r8
	ldrb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004A38 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_80193A4
	adds r0, r5, #0
	adds r0, #0x42
	strh r7, [r0]
	b _08004A7A
	.align 2, 0
_08004A38: .4byte gPlayers
_08004A3C:
	movs r4, #0x80
	lsls r4, r4, #0x11
	ands r4, r0
	cmp r4, #0
	beq _08004A98
	mov r3, r8
	ldrb r1, [r3]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08004A94 @ =gPlayers
	adds r4, r0, r1
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r5, #0
	bl sub_801816C
	ldr r0, [r5, #4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	str r6, [r5, #0x6c]
	adds r0, r5, #0
	adds r0, #0x42
	strh r6, [r0]
_08004A7A:
	ldr r0, [r4, #4]
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _08004AA4
	adds r0, r5, #0
	bl sub_8016F28
	adds r0, r4, #0
	bl sub_8016F28
	b _08004AA4
	.align 2, 0
_08004A94: .4byte gPlayers
_08004A98:
	adds r0, r5, #0
	bl sub_80193CC
	adds r0, r5, #0
	adds r0, #0x42
	strh r4, [r0]
_08004AA4:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08004B06
	adds r1, r5, #0
	adds r1, #0x5c
	ldrb r0, [r1]
	cmp r0, #0
	beq _08004B06
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08004B06
	ldr r0, _08004AD4 @ =gStageData
	ldrb r0, [r0, #0xa]
	cmp r0, #7
	bne _08004AD8
	adds r0, r5, #0
	bl Player_800613C
	b _08004B06
	.align 2, 0
_08004AD4: .4byte gStageData
_08004AD8:
	adds r0, r5, #0
	bl Player_8005E80
	b _08004B06
_08004AE0:
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #4
	bne _08004B06
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x15
	ands r0, r1
	cmp r0, #0
	bne _08004B00
	ldr r1, [r5]
	adds r0, r5, #0
	bl _call_via_r1
_08004B00:
	adds r0, r5, #0
	bl sub_8015A44
_08004B06:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
