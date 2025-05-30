
.syntax unified
.text
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _0804716C @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r1
	mov sl, r0          @ sl = block
	ldr r0, _08047170 @ =0x03000034
	adds r0, r1, r0
	str r0, [sp, #8]    @ sp08 = s2
	movs r1, #0
_0804715E_loop_a:
	lsls r0, r1, #0x10
	str r0, [sp, #0x14] @ sp14 = i << 16
	cmp r0, #0
	bne _08047178
	ldr r0, _08047174 @ =gStageData
	ldrb r1, [r0, #6]
	b _08047182
	.align 2, 0
_0804716C: .4byte gCurTask
_08047170: .4byte 0x03000034
_08047174: .4byte gStageData
_08047178:
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_08047182:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _08047210 @ =gPlayers
	adds r6, r0, r1     @ r6 = p
	adds r0, r6, #0
	bl sub_802C0D4
	adds r7, r0, #0
	mov r1, sl
	adds r1, #0x6f
	str r1, [sp, #0x10] @ sp10 = &block->unk6F
	mov r2, sl
	adds r2, #0x6d
	str r2, [sp, #0xc]  @ sp0C = &block->unk6D
	movs r3, #0x6c
	add r3, sl
	mov sb, r3
	cmp r7, #0
	beq _080471B0
	b _08047654_loop_a_cont
_080471B0:
	mov r5, sl
	adds r5, #0x68
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r4, sl
	adds r4, #0x6a
	movs r0, #0
	ldrsh r2, [r4, r0]
	str r7, [sp]
	ldr r0, [sp, #8]
	adds r3, r6, #0
	bl sub_8020950
	mov r8, r0      @ r8 = r8
	ldr r1, [sp, #0x10] @ r1 = sp10 = &block->unk6F
	ldrb r0, [r1]
	movs r3, #1
	ands r3, r0
	mov ip, r4
	cmp r3, #0
	bne _080471DC
	b _08047364
_080471DC:
	ldr r2, [sp, #0xc]  @ r2 = sp0C = &block->unk6D
	ldrb r0, [r2]
	cmp r0, #2
	bne _080471E6
	b _08047302
_080471E6:
	ldr r0, [r6, #4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080472AA
	ldr r0, [r6, #0x6c]
	ldr r3, [sp, #8]
	cmp r0, r3
	bne _080472AA
	movs r2, #0
	ldr r0, _08047214 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bhi _08047218
	movs r4, #0x30
	ldrsh r0, [r6, r4]
	cmp r0, #2
	beq _08047244
	cmp r0, #5
	bne _0804723A
	b _08047244
	.align 2, 0
_08047210: .4byte gPlayers
_08047214: .4byte gStageData
_08047218:
	ldr r1, _080472C4 @ =gPlayerCharacterIdleAnims
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	ldrh r1, [r6, #0x34]
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #2
	beq _08047238
	cmp r0, #5
	bne _0804723A
_08047238:
	movs r2, #1
_0804723A:
	movs r5, #0x6c
	add r5, sl      @ r5 = &block->unk6C
	mov sb, r5
	cmp r2, #0
	beq _080472AA
_08047244:
	mov r3, sl
	adds r3, #0x6c
	ldrb r2, [r3]
	lsrs r1, r2, #6
	subs r1, #1
	lsls r1, r1, #6
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r2, #0xc0
	movs r1, #0xc0
	ands r0, r1
	mov sb, r3
	cmp r0, #0
	bne _08047272
	mov r1, ip
	ldrh r0, [r1]
	adds r0, #2
	strh r0, [r1]
	ldrb r0, [r3]
	orrs r0, r2
	strb r0, [r3]
_08047272:
	ldr r0, [r6, #0x14]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r6, #0x14]
	mov r3, sb
	ldrb r0, [r3]
	movs r4, #0x40
	rsbs r4, r4, #0
	ands r0, r4
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	movs r0, #1
	ldr r5, [sp, #0xc]  @ r5 = sp0C = &block->unk6D
	strb r0, [r5]
	mov r0, sl
	adds r0, #0x66
	mov r2, ip
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bge _080472AA
	ldr r0, _080472C8 @ =0x0000025D
	bl sub_8003E0C
_080472AA:
	movs r2, #0x80
	lsls r2, r2, #9
	mov r5, r8
	ands r2, r5
	cmp r2, #0
	beq _080472CC
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	b _080472EC
	.align 2, 0
_080472C4: .4byte gPlayerCharacterIdleAnims
_080472C8: .4byte 0x0000025D
_080472CC:
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080472EC
	ldr r1, [r6, #0x14]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	mov r4, r8
	lsls r0, r4, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r6, #0x14]
	strh r2, [r6, #0x1a]
_080472EC:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov r5, r8
	ands r0, r5
	cmp r0, #0
	bne _080472FA
	b _08047654_loop_a_cont
_080472FA:
	movs r0, #0
	strh r0, [r6, #0x18]
	strh r0, [r6, #0x1c]
	b _08047654_loop_a_cont
_08047302:
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r3, ip
	movs r4, #0
	ldrsh r2, [r3, r4]
	str r6, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #8]
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	bne _0804731E
	b _08047654_loop_a_cont
_0804731E:
	mov r0, sl
	adds r0, #0x6e
	ldrb r1, [r0]
	adds r1, #8
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	strh r0, [r6, #0x1a]
	ldr r0, [r6, #0x14]
	ldr r5, _0804735C @ =0xFFFFF800
	adds r0, r0, r5
	str r0, [r6, #0x14]
	adds r0, r6, #0
	bl sub_8016F28
	adds r0, r6, #0
	adds r0, #0x9e
	strh r7, [r0]
	ldr r1, [r6, #4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	str r1, [r6, #4]
	adds r0, r6, #0
	ldr r1, _08047360 @ =Player_800DB30
	bl SetPlayerCallback
	b _08047654_loop_a_cont
	.align 2, 0
_0804735C: .4byte 0xFFFFF800
_08047360: .4byte Player_800DB30
_08047364:
	movs r2, #0x80
	lsls r2, r2, #9
	mov r0, r8          @ r0 = r8 = r8
	ands r2, r0
	cmp r2, #0
	beq _0804737E
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	strh r3, [r6, #0x1a]
	b _0804739E
_0804737E:
	movs r0, #0x80
	lsls r0, r0, #0xa
	mov r1, r8          @ r1 = r8 = r8
	ands r0, r1
	cmp r0, #0
	beq _0804739E
	ldr r1, [r6, #0x14]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r1, r3
	mov r4, r8
	lsls r0, r4, #0x18
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r6, #0x14]
	strh r2, [r6, #0x1a]
_0804739E:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	mov r1, r8
	ands r0, r1
	mov r2, sl
	adds r2, #0x6d
	str r2, [sp, #0xc]  @ r2 = sp0C = &block->unk6D
	movs r3, #0x6c
	add r3, sl
	mov sb, r3          @ sb = &block->unk6C
	cmp r0, #0
	bne _080473B8
	b _08047654_loop_a_cont
_080473B8:
	ldrb r4, [r2]
	cmp r4, #2
	bne _080473C0
	b _080475E4
_080473C0:
	ldr r4, [sp, #0x10] @ r4 = &block->unk6F
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08047460
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _080473DA
	b _08047508
_080473DA:
	mov r0, sl
	adds r0, #0x64
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bgt _080473EC
	b _08047508
_080473EC:
	mov r4, r8
	lsrs r2, r4, #8
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r1, [r6, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08047406
	b _0804751C
_08047406:
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _0804741C
	cmp r0, #8
	beq _0804741C
	cmp r0, #0x21
	beq _0804741C
	cmp r0, #9
	beq _0804741C
	b _0804751C
_0804741C:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x19
	ldrh r0, [r5]
	subs r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r6, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08047444
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	movs r2, #0x6c
	add r2, sl
	mov sb, r2
	cmp r0, #0xc
	bne _080474F4
_08047444:
	mov r2, sl
	adds r2, #0x6c
	ldrb r0, [r2]
	movs r3, #0x40
	rsbs r3, r3, #0
	ands r0, r3
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x10]
	ldr r4, _0804745C @ =0xFFFFFF00
	b _080474E6
	.align 2, 0
_0804745C: .4byte 0xFFFFFF00
_08047460:
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _08047508
	mov r0, sl
	adds r0, #0x64
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bge _08047508
	lsrs r2, r2, #8
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r1, [r6, #4]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0804751C
	movs r1, #0x30
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080474A6
	cmp r0, #8
	beq _080474A6
	cmp r0, #0x21
	beq _080474A6
	cmp r0, #9
	bne _0804751C
_080474A6:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x19
	ldrh r0, [r5]
	subs r0, r0, r1
	strh r0, [r5]
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080474CE
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	movs r2, #0x6c
	add r2, sl
	mov sb, r2
	cmp r0, #0xc
	bne _080474F4
_080474CE:
	mov r2, sl
	adds r2, #0x6c
	ldrb r0, [r2]
	movs r3, #0x40
	rsbs r3, r3, #0
	ands r0, r3
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x10]
	movs r4, #0x80
	lsls r4, r4, #1
_080474E6:
	adds r0, r0, r4
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #4]
	mov sb, r2
_080474F4:
	movs r0, #1
	ldr r5, [sp, #0xc]  @ r5 = sp0C = &block->unk6D
	strb r0, [r5]
	ldr r0, _08047504 @ =0x0000025D
	bl sub_8003E0C
	b _0804751C
	.align 2, 0
_08047504: .4byte 0x0000025D
_08047508:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r1, #0x6c
	add r1, sl
	mov sb, r1
_0804751C:
	movs r0, #0
	strh r0, [r6, #0x18]
	strh r0, [r6, #0x1c]
	ldr r0, [r6, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0804752E
	b _08047654_loop_a_cont
_0804752E:
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _08047544
	cmp r0, #8
	beq _08047544
	cmp r0, #0x21
	beq _08047544
	cmp r0, #9
	beq _08047544
	b _08047654_loop_a_cont
_08047544:
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08047590
	ldrh r1, [r6, #0x1e]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08047568
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _08047654_loop_a_cont
_08047568:
	ldr r4, [sp, #0x10] @ r4 = sp10 = &block->unk6F
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08047584
	mov r5, sb
	ldrb r0, [r5]
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r5]
_08047584:
	ldr r0, [r6, #0x10]
	ldr r2, _0804758C @ =0xFFFFFF00
	b _080475D6
	.align 2, 0
_0804758C: .4byte 0xFFFFFF00
_08047590:
	movs r0, #0x80
	lsls r0, r0, #0xc
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08047654_loop_a_cont
	ldrh r1, [r6, #0x1e]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080475B4
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0xc
	bne _08047654_loop_a_cont
_080475B4:
	ldr r4, [sp, #0x10] @ r4 = sp10 = &block->unk6F
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080475D0
	mov r5, sb
	ldrb r0, [r5]
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r5]
_080475D0:
	ldr r0, [r6, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
_080475D6:
	adds r0, r0, r2
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r6, #4]
	b _08047654_loop_a_cont
_080475E4:
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r5, ip
	movs r0, #0
	ldrsh r2, [r5, r0]
	str r6, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	movs r3, #0
	bl sub_8020700
	cmp r0, #0
	beq _08047654_loop_a_cont
	mov r0, sl
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #7
	strh r0, [r6, #0x1c]
	ldr r1, [sp, #0x10] @ r1 = sp10 = &block->unk6F
	ldrb r0, [r1]
	ands r4, r0
	cmp r4, #0
	beq _08047624
	movs r2, #0x1c
	ldrsh r0, [r6, r2]
	rsbs r0, r0, #0
	strh r0, [r6, #0x1c]
	ldr r0, [r6, #4]
	movs r1, #1
	orrs r0, r1
	b _0804762C
_08047624:
	ldr r0, [r6, #4]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_0804762C:
	str r0, [r6, #4]
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #9
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r6, #4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #4]
	adds r0, r6, #0
	ldr r1, _0804768C @ =Player_800891C
	bl SetPlayerCallback
	movs r4, #0x6c
	add r4, sl
	mov sb, r4
_08047654_loop_a_cont:
	ldr r5, [sp, #0x14]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08047666
	b _0804715E_loop_a
_08047666:
	ldr r2, [sp, #0x10] @ r2 = sp10 = &block->unk6F
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08047690
	mov r2, sl
	adds r2, #0x6a
	mov r0, sl
	adds r0, #0x66
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _080476DA
	b _080476AE
	.align 2, 0
_0804768C: .4byte Player_800891C
_08047690:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080476BC
	mov r2, sl
	adds r2, #0x68
	mov r0, sl
	adds r0, #0x64
	movs r5, #0
	ldrsh r1, [r2, r5]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bgt _080476DA
_080476AE:
	strh r3, [r2]
	ldr r0, _080476B8 @ =0x0000025D
	bl sub_8003E28
	b _080476DA
	.align 2, 0
_080476B8: .4byte 0x0000025D
_080476BC:
	mov r2, sl
	adds r2, #0x68
	mov r0, sl
	adds r0, #0x64
	movs r5, #0
	ldrsh r1, [r2, r5]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	blt _080476DA
	strh r3, [r2]
	ldr r0, _08047754 @ =0x0000025D
	bl sub_8003E28
_080476DA:
	mov r3, sb
	ldrb r2, [r3]
	movs r0, #0x3f
	ands r0, r2
	cmp r0, #0
	beq _080476FA
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1a
	subs r0, #1
	movs r1, #0x3f
	ands r0, r1
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_080476FA:
	mov r5, sb
	ldrh r0, [r5]
	ldr r1, _08047758 @ =0x0000FF3F
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0804778A
	ldr r0, _08047754 @ =0x0000025D
	bl sub_8003E28
	movs r0, #2
	ldr r1, [sp, #0xc]  @ r1 = sp0C = &block->unk6D
	strb r0, [r1]
	mov r1, sl
	adds r1, #0x68
	movs r2, #0
	ldrsh r4, [r1, r2]
	mov r0, sl
	adds r0, #0x60
	movs r5, #0
	ldrsh r3, [r0, r5]
	subs r2, r4, r3
	adds r5, r1, #0
	mov r8, r0
	cmp r2, #0
	bge _08047732
	subs r2, r3, r4
_08047732:
	mov r1, sl
	adds r1, #0x6a
	movs r0, #0
	ldrsh r7, [r1, r0]
	mov r0, sl
	adds r0, #0x62
	movs r3, #0
	ldrsh r6, [r0, r3]
	subs r3, r7, r6
	mov ip, r1
	adds r4, r0, #0
	cmp r3, #0
	blt _0804775C
	cmp r2, r3
	bgt _08047762
	b _0804776E
	.align 2, 0
_08047754: .4byte 0x0000025D
_08047758: .4byte 0x0000FF3F
_0804775C:
	subs r0, r6, r7
	cmp r2, r0
	ble _0804776E
_08047762:
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r5, r8
	movs r0, #0
	ldrsh r2, [r5, r0]
	b _08047778
_0804776E:
	mov r2, ip
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r5, #0
	ldrsh r2, [r4, r5]
_08047778:
	subs r0, r1, r2
	cmp r0, #0
	bge _08047780
	subs r0, r2, r1
_08047780:
	asrs r0, r0, #2
	adds r0, #1
	mov r1, sl
	adds r1, #0x6e
	strb r0, [r1]
_0804778A:
	ldr r1, [sp, #0xc]  @ r1 = sp0C = &block->unk6D
	ldrb r0, [r1]
	cmp r0, #2
	bne _08047828
	mov r2, sl
	ldr r1, [r2, #0x68]
	ldr r0, [r2, #0x60]
	cmp r1, r0
	bne _080477A4
	movs r0, #0
	ldr r3, [sp, #0xc]  @ r3 = sp0C = &block->unk6D
	strb r0, [r3]
	b _08047828
_080477A4:
	mov r4, sl
	adds r4, #0x68
	mov r2, sl
	adds r2, #0x60
	ldrh r0, [r4]
	movs r5, #0
	ldrsh r3, [r4, r5]
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r3, r1
	bge _080477CE
	adds r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r2]
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	ble _080477E6
	b _080477E4
_080477CE:
	cmp r3, r1
	ble _080477E6
	subs r0, #0x10
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r2]
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge _080477E6
_080477E4:
	strh r3, [r4]
_080477E6:
	mov r3, sl
	adds r3, #0x6a
	mov r1, sl
	adds r1, #0x62
	ldrh r0, [r3]
	movs r4, #0
	ldrsh r2, [r3, r4]
	movs r5, #0
	ldrsh r6, [r1, r5]
	cmp r2, r6
	bge _08047810
	adds r0, #0x10
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	ble _08047828
	b _08047826
_08047810:
	cmp r2, r6
	ble _08047828
	subs r0, #0x10
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	cmp r0, r1
	bge _08047828
_08047826:
	strh r2, [r3]
_08047828:
	bl sub_80479B0
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

.syntax divided
