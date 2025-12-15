.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start CreateEntity_ItemBox
CreateEntity_ItemBox: @ 0x0802C21C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, _0802C258 @ =gStageData
	ldrb r1, [r0, #3]
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0802C264
	ldrb r0, [r6, #2]
	cmp r0, #0
	bne _0802C25C
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	b _0802C334
	.align 2, 0
_0802C258: .4byte gStageData
_0802C25C:
	cmp r0, #3
	bne _0802C270
	movs r0, #2
	b _0802C26E
_0802C264:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bne _0802C270
	movs r0, #0x11
_0802C26E:
	strb r0, [r6, #2]
_0802C270:
	ldr r0, _0802C348 @ =Task_ItemBoxInit
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0802C34C @ =TaskDestructor_ItemBox
	str r1, [sp]
	movs r1, #0x70
	movs r3, #0
	bl TaskCreate
	ldrh r0, [r0, #6]
	mov r8, r0
	movs r4, #0xc0
	lsls r4, r4, #0x12
	add r4, r8
	ldrb r0, [r6, #2]
	strb r0, [r4, #6]
	movs r2, #0
	strh r2, [r4, #0x10]
	ldrb r0, [r6]
	lsls r0, r0, #3
	mov r2, sb
	lsls r1, r2, #8
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldrb r0, [r6, #1]
	lsls r0, r0, #3
	lsls r1, r7, #8
	adds r0, r0, r1
	str r0, [r4, #0x18]
	strh r2, [r4, #0xa]
	strh r7, [r4, #0xc]
	str r6, [r4]
	ldrb r0, [r6]
	strb r0, [r4, #4]
	mov r0, sl
	strb r0, [r4, #5]
	movs r1, #0
	str r1, [r4, #0x6c]
	ldr r7, _0802C350 @ =0x0300001C
	add r7, r8
	movs r0, #0x10
	bl VramMalloc
	str r0, [r7]
	ldr r0, _0802C354 @ =0x00000524
	strh r0, [r7, #0xc]
	movs r2, #0
	strb r2, [r7, #0x1a]
	adds r0, #0xdc
	strh r0, [r7, #0x14]
	movs r1, #0
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	mov sl, r2
	mov r0, sl
	strb r0, [r7, #0x1c]
	strb r1, [r7, #0x1f]
	subs r2, #0x11
	mov sb, r2
	str r2, [r7, #0x20]
	movs r5, #0x80
	lsls r5, r5, #5
	str r5, [r7, #8]
	adds r0, r7, #0
	bl UpdateSpriteAnimation
	ldr r7, _0802C358 @ =0x03000044
	add r7, r8
	movs r0, #4
	bl VramMalloc
	str r0, [r7]
	movs r0, #0xc0
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	movs r1, #0
	strh r1, [r7, #0xe]
	strh r1, [r7, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r7, #0x1b]
	mov r2, sl
	strb r2, [r7, #0x1c]
	movs r0, #0
	strb r0, [r7, #0x1f]
	mov r1, sb
	str r1, [r7, #0x20]
	str r5, [r7, #8]
	adds r0, r4, #0
	movs r1, #1
	bl sub_802C35C
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
_0802C334:
	strb r0, [r6]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C348: .4byte Task_ItemBoxInit
_0802C34C: .4byte TaskDestructor_ItemBox
_0802C350: .4byte 0x0300001C
_0802C354: .4byte 0x00000524
_0802C358: .4byte 0x03000044

	thumb_func_start sub_802C35C
sub_802C35C: @ 0x0802C35C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0802C3BC @ =gStageData
	ldrb r0, [r3, #3]
	cmp r0, #6
	beq _0802C400
	cmp r1, #0
	bne _0802C36E
	b _0802C520
_0802C36E:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0802C3C8
	ldr r0, [r4, #0x4c]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #0x4c]
	ldrb r0, [r3, #6]
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
	ldr r2, _0802C3C0 @ =gPlayers
	ldrb r1, [r3, #6]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	ldr r2, _0802C3C4 @ =gUnknown_080CF420
	lsrs r1, r1, #0x1c
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r0, r2
	ldrh r3, [r1]
	adds r1, r4, #0
	adds r1, #0x50
	strh r3, [r1]
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, #0xe
	b _0802C3EE
	.align 2, 0
_0802C3BC: .4byte gStageData
_0802C3C0: .4byte gPlayers
_0802C3C4: .4byte gUnknown_080CF420
_0802C3C8:
	ldr r2, _0802C3FC @ =gUnknown_080CF3C0
	ldrb r1, [r4, #6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	ldrb r1, [r4, #6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x5e
_0802C3EE:
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x44
	bl UpdateSpriteAnimation
	b _0802C520
	.align 2, 0
_0802C3FC: .4byte gUnknown_080CF3C0
_0802C400:
	ldr r0, [r3, #0x1c]
	lsls r0, r0, #0xb
	lsrs r5, r0, #0x10
	adds r0, r5, #0
	movs r1, #6
	bl Div
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	subs r0, r5, r0
	strb r0, [r4, #9]
	ldrb r0, [r4, #9]
	cmp r0, #5
	bhi _0802C4BA
	lsls r0, r0, #2
	ldr r1, _0802C42C @ =_0802C430
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802C42C: .4byte _0802C430
_0802C430: @ jump table
	.4byte _0802C448 @ case 0
	.4byte _0802C460 @ case 1
	.4byte _0802C472 @ case 2
	.4byte _0802C486 @ case 3
	.4byte _0802C49E @ case 4
	.4byte _0802C4B6 @ case 5
_0802C448:
	movs r0, #0xf
	ands r3, r0
	movs r1, #0
	cmp r3, #2
	beq _0802C45A
	cmp r3, #7
	beq _0802C45A
	cmp r3, #0xc
	bne _0802C45C
_0802C45A:
	movs r1, #1
_0802C45C:
	adds r3, r1, #0
	b _0802C4C2
_0802C460:
	movs r0, #7
	ands r3, r0
	movs r0, #0
	cmp r3, #1
	beq _0802C4B2
	cmp r3, #4
	beq _0802C4B2
	movs r1, #6
	b _0802C494
_0802C472:
	movs r0, #0xf
	ands r3, r0
	movs r0, #0
	cmp r3, #4
	beq _0802C4B0
	cmp r3, #9
	beq _0802C4B0
	cmp r3, #0xe
	bne _0802C4B2
	b _0802C4B0
_0802C486:
	movs r1, #7
	ands r3, r1
	movs r0, #0
	cmp r3, #2
	beq _0802C4B2
	cmp r3, #4
	beq _0802C4B2
_0802C494:
	eors r1, r3
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	b _0802C4B2
_0802C49E:
	movs r0, #0xf
	ands r3, r0
	movs r0, #0
	cmp r3, #3
	beq _0802C4B0
	cmp r3, #8
	beq _0802C4B0
	cmp r3, #0xd
	bne _0802C4B2
_0802C4B0:
	movs r0, #1
_0802C4B2:
	adds r3, r0, #0
	b _0802C4C2
_0802C4B6:
	movs r3, #0
	b _0802C4C2
_0802C4BA:
	movs r0, #0
	strb r0, [r4, #9]
	movs r3, #1
	ands r3, r5
_0802C4C2:
	ldr r2, _0802C528 @ =gUnknown_080CF44E
	lsls r1, r3, #1
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	strb r0, [r4, #6]
	ldr r1, _0802C52C @ =gUnknown_080CF3B8
	lsls r2, r3, #2
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x28]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	adds r3, r4, #0
	adds r3, #0x36
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x1c
	bl UpdateSpriteAnimation
	ldr r2, _0802C530 @ =gUnknown_080CF3C0
	ldrb r1, [r4, #6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	ldrb r1, [r4, #6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x5e
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x44
	bl UpdateSpriteAnimation
_0802C520:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802C528: .4byte gUnknown_080CF44E
_0802C52C: .4byte gUnknown_080CF3B8
_0802C530: .4byte gUnknown_080CF3C0

	thumb_func_start Task_ItemBoxInit
Task_ItemBoxInit: @ 0x0802C534
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802C568 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldr r0, _0802C56C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _0802C570
	ldr r0, [r4]
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802C570
	movs r0, #0
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	bl sub_802C618
	b _0802C60C
	.align 2, 0
_0802C568: .4byte gCurTask
_0802C56C: .4byte gStageData
_0802C570:
	adds r0, r4, #0
	bl sub_802CE4C
	cmp r0, #0
	beq _0802C582
	adds r0, r4, #0
	bl sub_802C618
	b _0802C58A
_0802C582:
	adds r0, r4, #0
	movs r1, #0
	bl sub_802C35C
_0802C58A:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	bl sub_802D694
	cmp r0, #0
	beq _0802C5F8
	movs r1, #0
	movs r0, #0x1c
	adds r0, r0, r4
	mov r8, r0
	ldr r7, _0802C5B4 @ =gPlayers
_0802C5A0:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	beq _0802C5B8
	adds r0, r6, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	b _0802C5BC
	.align 2, 0
_0802C5B4: .4byte gPlayers
_0802C5B8:
	ldr r0, _0802C5F0 @ =gStageData
	ldrb r1, [r0, #6]
_0802C5BC:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r6, r0, r7
	mov r0, r8
	adds r1, r6, #0
	bl ResolvePlayerSpriteCollision
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0802C5A0
	ldr r1, [r4]
	ldrb r0, [r4, #4]
	strb r0, [r1]
	ldr r0, _0802C5F4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0802C60C
	.align 2, 0
_0802C5F0: .4byte gStageData
_0802C5F4: .4byte gCurTask
_0802C5F8:
	ldr r0, [r4, #0x14]
	lsls r0, r0, #8
	ldr r1, [r4, #0x18]
	lsls r1, r1, #8
	bl sub_8004428
	adds r0, r4, #0
	movs r1, #0
	bl sub_802D6CC
_0802C60C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_802C618
sub_802C618: @ 0x0802C618
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	ldr r1, [r6, #0x18]
	lsls r1, r1, #8
	movs r2, #1
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #0
	bl sub_805CEBC
	movs r1, #0
_0802C636:
	lsls r0, r1, #0x10
	adds r5, r0, #0
	cmp r5, #0
	bne _0802C648
	ldr r0, _0802C644 @ =gStageData
	ldrb r1, [r0, #6]
	b _0802C652
	.align 2, 0
_0802C644: .4byte gStageData
_0802C648:
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
_0802C652:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802C73C @ =gPlayers
	adds r4, r0, r1
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	adds r0, r1, #0
	adds r1, r6, #0
	adds r1, #0x40
	ldr r2, _0802C740 @ =0x01000002
	bl CpuSet
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	movs r0, #0
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x1c
	adds r3, r4, #0
	bl sub_8020950
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0802C636
	ldr r4, [r6, #0x6c]
	cmp r4, #0
	beq _0802C762
	ldrb r3, [r6, #8]
	cmp r3, #1
	bne _0802C6A8
	ldr r0, [r4, #4]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0802C75C
_0802C6A8:
	adds r0, r4, #0
	adds r0, #0xe0
	ldr r1, [r0]
	ldrh r2, [r1, #0x18]
	ldr r0, _0802C744 @ =0x0000023A
	cmp r2, r0
	bne _0802C6C0
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802C762
_0802C6C0:
	ldr r0, _0802C748 @ =0x0000016B
	cmp r2, r0
	bne _0802C6D0
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C762
_0802C6D0:
	cmp r2, #0x26
	bne _0802C6DE
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C762
_0802C6DE:
	cmp r2, #0x25
	bne _0802C6EC
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C762
_0802C6EC:
	cmp r3, #2
	beq _0802C762
	cmp r2, #0x2a
	bne _0802C6FE
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C762
_0802C6FE:
	ldr r0, _0802C74C @ =0x00000213
	cmp r2, r0
	bne _0802C70E
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C762
_0802C70E:
	ldr r0, _0802C750 @ =0x000002B1
	cmp r2, r0
	bne _0802C71E
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C762
_0802C71E:
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	ldr r0, _0802C754 @ =0x00000101
	cmp r1, r0
	beq _0802C762
	cmp r1, #0xe3
	beq _0802C762
	cmp r1, #0xd5
	beq _0802C762
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r4, #0x1a]
	ldr r0, _0802C758 @ =0x0000FFFF
	strh r0, [r4, #0x32]
	b _0802C762
	.align 2, 0
_0802C73C: .4byte gPlayers
_0802C740: .4byte 0x01000002
_0802C744: .4byte 0x0000023A
_0802C748: .4byte 0x0000016B
_0802C74C: .4byte 0x00000213
_0802C750: .4byte 0x000002B1
_0802C754: .4byte 0x00000101
_0802C758: .4byte 0x0000FFFF
_0802C75C:
	adds r0, r4, #0
	bl Player_BoostModeDisengage
_0802C762:
	adds r0, r4, #0
	movs r1, #0x96      @ SE_ITEMBOX
	bl Player_PlaySong
	movs r0, #0
	strb r0, [r6, #7]
	ldr r0, _0802C7A4 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #4
	bls _0802C792
	cmp r4, #0
	beq _0802C792
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r1, #0x1c
	ands r1, r0
	cmp r1, #4
	beq _0802C78C
	cmp r1, #8
	bne _0802C792
_0802C78C:
	ldr r0, [r6]
	bl sub_8027538
_0802C792:
	ldr r0, _0802C7A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802C7AC @ =Task_802D61C
	str r0, [r1, #8]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802C7A4: .4byte gStageData
_0802C7A8: .4byte gCurTask
_0802C7AC: .4byte Task_802D61C

	thumb_func_start sub_802C7B0
sub_802C7B0: @ 0x0802C7B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x6c]
	cmp r0, #0
	bne _0802C7C0
	b _0802CE1A
_0802C7C0:
	ldr r0, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802C7CE
	b _0802CE1A
_0802C7CE:
	ldrb r0, [r7, #6]
	cmp r0, #0xf
	bls _0802C7D6
	b _0802CE26
_0802C7D6:
	lsls r0, r0, #2
	ldr r1, _0802C7E0 @ =_0802C7E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802C7E0: .4byte _0802C7E4
_0802C7E4: @ jump table
	.4byte _0802C824 @ case 0
	.4byte _0802CBC8 @ case 1
	.4byte _0802C8F4 @ case 2
	.4byte _0802CCC0 @ case 3
	.4byte _0802C890 @ case 4
	.4byte _0802C874 @ case 5
	.4byte _0802C840 @ case 6
	.4byte _0802C85A @ case 7
	.4byte _0802CC48 @ case 8
	.4byte _0802CD8C @ case 9
	.4byte _0802CB8C @ case 10
	.4byte _0802C95C @ case 11
	.4byte _0802C9EC @ case 12
	.4byte _0802CA74 @ case 13
	.4byte _0802CB04 @ case 14
	.4byte _0802C8F8 @ case 15
_0802C824:
	movs r0, #1
	bl AddLives
	ldr r0, _0802C83C @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #5
	beq _0802C834
	b _0802CE1A
_0802C834:
	bl sub_8027834
	b _0802CE1A
	.align 2, 0
_0802C83C: .4byte gStageData
_0802C840:
	ldr r1, [r7, #0x6c]
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #0xdf
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r7, #0x6c]
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #0x10
	b _0802C88A
_0802C85A:
	ldr r1, [r7, #0x6c]
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #0xef
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r7, #0x6c]
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #0x20
	b _0802C88A
_0802C874:
	ldr r0, [r7, #0x6c]
	adds r0, #0x4c
	movs r1, #0x96
	lsls r1, r1, #3
	strh r1, [r0]
	ldr r1, [r7, #0x6c]
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0x40
_0802C88A:
	orrs r0, r2
	strb r0, [r1]
	b _0802CE1A
_0802C890:
	ldr r0, [r7, #0x6c]
	adds r0, #0x5e
	movs r2, #0
	movs r1, #0x96
	lsls r1, r1, #3
	strh r1, [r0]
	ldr r0, [r7, #0x6c]
	adds r0, #0x60
	strh r2, [r0]
	ldr r0, [r7, #0x6c]
	adds r0, #0x62
	strh r2, [r0]
	ldr r0, _0802C8EC @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #6
	beq _0802C8B2
	b _0802CE1A
_0802C8B2:
	movs r6, #0
	ldr r1, _0802C8F0 @ =gPlayers
	ldr r0, [r7, #0x6c]
	cmp r1, r0
	beq _0802C8E0
	adds r2, r1, #0
	adds r1, r0, #0
_0802C8C0:
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #3
	bgt _0802C8E0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r2
	cmp r0, r1
	bne _0802C8C0
_0802C8E0:
	adds r0, r6, #0
	movs r1, #0
	bl sub_80277AC
	b _0802CE1A
	.align 2, 0
_0802C8EC: .4byte gStageData
_0802C8F0: .4byte gPlayers
_0802C8F4:
	movs r0, #0xa
	b _0802CD6C
_0802C8F8:
	ldr r1, _0802C954 @ =gUnknown_03001060
	movs r0, #0
	strb r0, [r1, #8]
	strb r0, [r1, #9]
	bl sub_80267E8
	movs r2, #0
	ldr r1, _0802C958 @ =gPlayers
	ldr r0, [r7, #0x6c]
	cmp r1, r0
	beq _0802C92C
	adds r3, r1, #0
_0802C910:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0802C92C
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r1, [r7, #0x6c]
	cmp r0, r1
	bne _0802C910
_0802C92C:
	ldr r0, _0802C954 @ =gUnknown_03001060
	ldrb r0, [r0, #9]
	adds r1, r2, #4
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802C93E
	b _0802CE1A
_0802C93E:
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0802C94C
	b _0802CE1A
_0802C94C:
	ldr r0, [r7, #0x6c]
	bl sub_800ED50
	b _0802CE1A
	.align 2, 0
_0802C954: .4byte gUnknown_03001060
_0802C958: .4byte gPlayers
_0802C95C:
	movs r6, #0
	movs r4, #0
_0802C960:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r1, _0802C9E8 @ =gPlayers
	adds r1, r0, r1
	ldr r0, [r7, #0x6c]
	cmp r1, r0
	beq _0802C99E
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r2, r0
	beq _0802C99E
	adds r5, r1, #0
	adds r1, #0x62
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x60
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	adds r0, r5, #0
	bl sub_80179BC
_0802C99E:
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0802C960
	movs r6, #0
	ldr r1, _0802C9E8 @ =gPlayers
	ldr r0, [r7, #0x6c]
	cmp r1, r0
	beq _0802C9DC
	adds r2, r1, #0
	adds r1, r0, #0
_0802C9BC:
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #3
	bgt _0802C9DC
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r2
	cmp r0, r1
	bne _0802C9BC
_0802C9DC:
	adds r0, r6, #0
	movs r1, #0
	bl sub_80277F0
	b _0802CE1A
	.align 2, 0
_0802C9E8: .4byte gPlayers
_0802C9EC:
	ldr r0, [r7, #0x6c]
	adds r0, #0x62
	movs r4, #0
	movs r5, #0x96
	lsls r5, r5, #2
	strh r5, [r0]
	ldr r0, [r7, #0x6c]
	adds r0, #0x60
	strh r4, [r0]
	ldr r0, [r7, #0x6c]
	adds r0, #0x5e
	strh r4, [r0]
	ldr r0, [r7, #0x6c]
	bl sub_80179BC
	ldr r0, [r7, #0x6c]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802CA70 @ =gPlayers
	mov r8, r1
	adds r1, r0, r1
	adds r0, r1, #0
	adds r0, #0x62
	strh r5, [r0]
	subs r0, #2
	strh r4, [r0]
	subs r0, #2
	strh r4, [r0]
	adds r0, r1, #0
	bl sub_80179BC
	movs r6, #0
	ldr r0, [r7, #0x6c]
	cmp r8, r0
	beq _0802CA64
	mov r2, r8
_0802CA42:
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #3
	bgt _0802CA64
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r1, [r7, #0x6c]
	cmp r0, r1
	bne _0802CA42
_0802CA64:
	adds r0, r6, #0
	movs r1, #1
	bl sub_80277F0
	b _0802CE1A
	.align 2, 0
_0802CA70: .4byte gPlayers
_0802CA74:
	movs r6, #0
	movs r4, #0
_0802CA78:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	ldr r1, _0802CB00 @ =gPlayers
	adds r1, r0, r1
	ldr r0, [r7, #0x6c]
	cmp r1, r0
	beq _0802CAB6
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r2, r0
	beq _0802CAB6
	adds r5, r1, #0
	adds r1, #0x60
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x62
	strh r4, [r0]
	subs r0, #4
	strh r4, [r0]
	adds r0, r5, #0
	bl sub_80179BC
_0802CAB6:
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0802CA78
	movs r6, #0
	ldr r1, _0802CB00 @ =gPlayers
	ldr r0, [r7, #0x6c]
	cmp r1, r0
	beq _0802CAF4
	adds r2, r1, #0
	adds r1, r0, #0
_0802CAD4:
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #3
	bgt _0802CAF4
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r2
	cmp r0, r1
	bne _0802CAD4
_0802CAF4:
	adds r0, r6, #0
	movs r1, #0
	bl sub_8027768
	b _0802CE1A
	.align 2, 0
_0802CB00: .4byte gPlayers
_0802CB04:
	ldr r0, [r7, #0x6c]
	adds r0, #0x60
	movs r4, #0
	movs r5, #0x96
	lsls r5, r5, #2
	strh r5, [r0]
	ldr r0, [r7, #0x6c]
	adds r0, #0x62
	strh r4, [r0]
	ldr r0, [r7, #0x6c]
	adds r0, #0x5e
	strh r4, [r0]
	ldr r0, [r7, #0x6c]
	bl sub_80179BC
	ldr r0, [r7, #0x6c]
	adds r0, #0x2b
	ldrb r1, [r0]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0802CB88 @ =gPlayers
	mov r8, r1
	adds r1, r0, r1
	adds r0, r1, #0
	adds r0, #0x60
	strh r5, [r0]
	adds r0, #2
	strh r4, [r0]
	subs r0, #4
	strh r4, [r0]
	adds r0, r1, #0
	bl sub_80179BC
	movs r6, #0
	ldr r0, [r7, #0x6c]
	cmp r8, r0
	beq _0802CB7C
	mov r2, r8
_0802CB5A:
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #3
	bgt _0802CB7C
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r1, [r7, #0x6c]
	cmp r0, r1
	bne _0802CB5A
_0802CB7C:
	adds r0, r6, #0
	movs r1, #1
	bl sub_8027768
	b _0802CE1A
	.align 2, 0
_0802CB88: .4byte gPlayers
_0802CB8C:
	movs r6, #0
	ldr r1, _0802CBC4 @ =gPlayers
	ldr r0, [r7, #0x6c]
	cmp r1, r0
	beq _0802CBBA
	adds r2, r1, #0
	adds r1, r0, #0
_0802CB9A:
	lsls r0, r6, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r6, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #3
	bgt _0802CBBA
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r2
	cmp r0, r1
	bne _0802CB9A
_0802CBBA:
	adds r0, r6, #0
	movs r1, #1
	bl sub_80277AC
	b _0802CE1A
	.align 2, 0
_0802CBC4: .4byte gPlayers
_0802CBC8:
	ldr r0, _0802CBD4 @ =gStageData
	ldrb r0, [r0, #3]
	cmp r0, #6
	bne _0802CC3E
	movs r6, #0
	b _0802CBDE
	.align 2, 0
_0802CBD4: .4byte gStageData
_0802CBD8:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0802CBDE:
	lsls r0, r6, #0x10
	asrs r5, r0, #0x10
	cmp r5, #3
	bgt _0802CC00
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	lsls r0, r0, #4
	ldr r1, _0802CC44 @ =gPlayers
	adds r1, r0, r1
	ldr r0, [r7, #0x6c]
	cmp r1, r0
	bne _0802CBD8
	adds r0, r1, #0
	bl sub_8017A58
_0802CC00:
	movs r4, #1
	ands r4, r5
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	movs r1, #5
	bl sub_802773C
	movs r1, #0
	movs r6, #1
	asrs r4, r4, #0x10
_0802CC14:
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	ands r0, r6
	cmp r0, r4
	bne _0802CC32
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	lsls r0, r0, #4
	ldr r1, _0802CC44 @ =gPlayers
	adds r0, r0, r1
	bl sub_8017A58
_0802CC32:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0802CC14
_0802CC3E:
	movs r0, #5
	b _0802CD6C
	.align 2, 0
_0802CC44: .4byte gPlayers
_0802CC48:
	movs r6, #0
	ldr r1, _0802CCBC @ =gPlayers
	ldr r0, [r7, #0x6c]
	cmp r1, r0
	beq _0802CC76
	adds r2, r1, #0
	adds r1, r0, #0
_0802CC56:
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #3
	bgt _0802CC76
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r2
	cmp r0, r1
	bne _0802CC56
_0802CC76:
	mvns r0, r6
	movs r1, #1
	ands r0, r1
	movs r1, #5
	bl sub_802773C
	movs r1, #0
	lsls r4, r6, #0x10
	movs r5, #1
	lsls r0, r5, #0x10
	ands r0, r4
	asrs r6, r0, #0x10
_0802CC8E:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	ands r0, r5
	cmp r0, r6
	beq _0802CCAC
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _0802CCBC @ =gPlayers
	adds r0, r0, r1
	bl sub_8017A58
_0802CCAC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0802CC8E
	b _0802CE1A
	.align 2, 0
_0802CCBC: .4byte gPlayers
_0802CCC0:
	ldr r0, _0802CCD0 @ =gStageData
	ldrb r1, [r0, #3]
	adds r4, r0, #0
	cmp r1, #3
	bne _0802CCD4
	movs r2, #0xa
	b _0802CCEC
	.align 2, 0
_0802CCD0: .4byte gStageData
_0802CCD4:
	ldr r3, _0802CD78 @ =gUnknown_080CF43E
	ldr r2, _0802CD7C @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0802CD80 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0802CD84 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xf
	ands r0, r1
	adds r0, r0, r3
	ldrb r2, [r0]
_0802CCEC:
	ldrb r0, [r4, #3]
	lsls r2, r2, #0x10
	mov r8, r2
	cmp r0, #6
	bne _0802CD68
	movs r6, #0
	ldr r1, _0802CD88 @ =gPlayers
	ldr r0, [r7, #0x6c]
	cmp r1, r0
	beq _0802CD24
	adds r2, r1, #0
	adds r1, r0, #0
_0802CD04:
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #3
	bgt _0802CD24
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r2
	cmp r0, r1
	bne _0802CD04
_0802CD24:
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	movs r0, #1
	ands r4, r0
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	mov r2, r8
	lsrs r1, r2, #0x10
	bl sub_802773C
	movs r1, #0
	movs r6, #1
	asrs r4, r4, #0x10
_0802CD3E:
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	ands r0, r6
	cmp r0, r4
	bne _0802CD5C
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	lsls r0, r0, #4
	ldr r1, _0802CD88 @ =gPlayers
	adds r0, r0, r1
	bl sub_8017A58
_0802CD5C:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0802CD3E
_0802CD68:
	mov r3, r8
	asrs r0, r3, #0x10
_0802CD6C:
	bl AddRings
	movs r0, #0x75
	bl sub_8003DF0
	b _0802CE1A
	.align 2, 0
_0802CD78: .4byte gUnknown_080CF43E
_0802CD7C: .4byte gPseudoRandom
_0802CD80: .4byte 0x00196225
_0802CD84: .4byte 0x3C6EF35F
_0802CD88: .4byte gPlayers
_0802CD8C:
	ldr r3, _0802CE30 @ =gUnknown_080CF43E
	ldr r2, _0802CE34 @ =gPseudoRandom
	ldr r1, [r2]
	ldr r0, _0802CE38 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _0802CE3C @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	movs r1, #0xf
	ands r0, r1
	adds r0, r0, r3
	ldrb r2, [r0]
	movs r6, #0
	ldr r1, _0802CE40 @ =gPlayers
	ldr r0, [r7, #0x6c]
	cmp r1, r0
	beq _0802CDD2
	adds r3, r1, #0
	adds r1, r0, #0
_0802CDB2:
	lsls r0, r6, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r6, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #3
	bgt _0802CDD2
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r3
	cmp r0, r1
	bne _0802CDB2
_0802CDD2:
	mvns r0, r6
	movs r1, #1
	ands r0, r1
	adds r1, r2, #0
	bl sub_802773C
	movs r1, #0
	lsls r4, r6, #0x10
	movs r5, #1
	lsls r0, r5, #0x10
	ands r0, r4
	asrs r6, r0, #0x10
_0802CDEA:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	ands r0, r5
	cmp r0, r6
	beq _0802CE08
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	ldr r1, _0802CE40 @ =gPlayers
	adds r0, r0, r1
	bl sub_8017A58
_0802CE08:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0802CDEA
	movs r0, #0x75
	bl sub_8003DF0
_0802CE1A:
	movs r0, #0
	strb r0, [r7, #7]
	ldr r0, _0802CE44 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802CE48 @ =Task_802D660
	str r0, [r1, #8]
_0802CE26:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CE30: .4byte gUnknown_080CF43E
_0802CE34: .4byte gPseudoRandom
_0802CE38: .4byte 0x00196225
_0802CE3C: .4byte 0x3C6EF35F
_0802CE40: .4byte gPlayers
_0802CE44: .4byte gCurTask
_0802CE48: .4byte Task_802D660

	thumb_func_start sub_802CE4C
sub_802CE4C: @ 0x0802CE4C
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
	bl sub_802D354
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
	bl sub_802D354
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
	bl sub_802D4A8
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

	thumb_func_start sub_802D354
sub_802D354: @ 0x0802D354
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	str r1, [sp]
	str r2, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r8, r0
	ldr r0, [sp, #0x30]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, r8
	adds r0, #0xe0
	ldr r2, [r0]
	movs r1, #0xc
	adds r1, r1, r2
	mov ip, r1
	mov r6, r8
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802D390
	b _0802D494
_0802D390:
	lsls r0, r3, #3
	mov r1, sb
	adds r1, #0x20
	adds r1, r1, r0
	ldr r1, [r1]
	movs r6, #1
	rsbs r6, r6, #0
	mov sl, r0
	cmp r1, r6
	beq _0802D494
	lsls r1, r7, #3
	adds r0, r2, #0
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r6
	beq _0802D494
	add ip, r1
	mov r0, ip
	adds r0, #0x24
	ldrb r0, [r0]
	ldr r2, _0802D484 @ =0xFFFFFF00
	ands r2, r5
	orrs r2, r0
	mov r0, ip
	adds r0, #0x25
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _0802D488 @ =0xFFFF00FF
	ands r1, r2
	orrs r1, r0
	mov r0, ip
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _0802D48C @ =0xFF00FFFF
	ands r2, r1
	orrs r2, r0
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	adds r0, #4
	lsls r0, r0, #0x18
	ldr r3, _0802D490 @ =0x00FFFFFF
	ands r3, r2
	orrs r3, r0
	adds r5, r3, #0
	mov r6, sb
	add r6, sl
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r7, [sp]
	adds r2, r7, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	asrs r0, r0, #8
	lsls r1, r5, #0x18
	asrs r1, r1, #0x18
	mov ip, r1
	adds r1, r0, r1
	cmp r2, r1
	bgt _0802D430
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r6, [sp, #8]
	subs r0, r0, r6
	adds r0, r2, r0
	cmp r0, r1
	bge _0802D43E
	cmp r2, r1
	blt _0802D494
_0802D430:
	lsls r0, r3, #8
	asrs r0, r0, #0x18
	mov r7, ip
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0802D494
_0802D43E:
	mov r3, sb
	add r3, sl
	adds r0, r3, #0
	adds r0, #0x25
	movs r6, #0
	ldrsb r6, [r0, r6]
	ldr r0, [sp, #4]
	adds r2, r0, r6
	mov r7, r8
	ldr r1, [r7, #0x14]
	asrs r1, r1, #8
	lsls r0, r5, #0x10
	asrs r4, r0, #0x18
	adds r1, r1, r4
	cmp r2, r1
	bgt _0802D474
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r2, r0
	cmp r0, r1
	bge _0802D47E
	cmp r2, r1
	blt _0802D494
_0802D474:
	asrs r0, r5, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0802D494
_0802D47E:
	movs r0, #1
	b _0802D496
	.align 2, 0
_0802D484: .4byte 0xFFFFFF00
_0802D488: .4byte 0xFFFF00FF
_0802D48C: .4byte 0xFF00FFFF
_0802D490: .4byte 0x00FFFFFF
_0802D494:
	movs r0, #0
_0802D496:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802D4A8
sub_802D4A8: @ 0x0802D4A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	mov ip, r1
	str r2, [sp]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, _0802D5CC @ =gStageData
	adds r0, #0x98
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	mov r0, sl
	lsls r6, r0, #3
	mov r0, sb
	adds r0, #0x20
	adds r0, r0, r6
	ldr r0, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802D4E6
	b _0802D5EC
_0802D4E6:
	mov r2, r8
	ldr r0, [r2, #0x48]
	cmp r0, r1
	bne _0802D4F0
	b _0802D5EC
_0802D4F0:
	ldrh r1, [r2, #0x16]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802D5EC
	ldr r7, _0802D5D0 @ =0x0300004C
	adds r0, r3, r7
	ldrb r0, [r0]
	ldr r2, _0802D5D4 @ =0xFFFFFF00
	ands r2, r5
	orrs r2, r0
	ldr r1, _0802D5D8 @ =0x0300004D
	adds r0, r3, r1
	ldrb r0, [r0]
	subs r0, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, _0802D5DC @ =0xFFFF00FF
	ands r1, r2
	orrs r1, r0
	ldr r2, _0802D5E0 @ =0x0300004E
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _0802D5E4 @ =0xFF00FFFF
	ands r2, r1
	orrs r2, r0
	adds r7, #3
	adds r0, r3, r7
	ldrb r0, [r0]
	adds r0, #4
	lsls r0, r0, #0x18
	ldr r3, _0802D5E8 @ =0x00FFFFFF
	ands r3, r2
	orrs r3, r0
	adds r5, r3, #0
	add r6, sb
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #4]
	adds r2, r0, #0
	add r2, ip
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #8
	lsls r1, r5, #0x18
	asrs r1, r1, #0x18
	mov ip, r1
	adds r1, r0, r1
	cmp r2, r1
	bgt _0802D574
	adds r0, r6, #0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r6, [sp, #4]
	subs r0, r0, r6
	adds r0, r2, r0
	cmp r0, r1
	bge _0802D582
	cmp r2, r1
	blt _0802D5EC
_0802D574:
	lsls r0, r3, #8
	asrs r0, r0, #0x18
	mov r7, ip
	subs r0, r0, r7
	adds r0, r1, r0
	cmp r0, r2
	blt _0802D5EC
_0802D582:
	mov r1, sl
	lsls r0, r1, #3
	mov r2, sb
	adds r3, r2, r0
	adds r0, r3, #0
	adds r0, #0x25
	movs r6, #0
	ldrsb r6, [r0, r6]
	ldr r7, [sp]
	adds r2, r7, r6
	mov r0, r8
	ldr r1, [r0, #4]
	asrs r1, r1, #8
	lsls r0, r5, #0x10
	asrs r4, r0, #0x18
	adds r1, r1, r4
	cmp r2, r1
	bgt _0802D5BC
	adds r0, r3, #0
	adds r0, #0x27
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r6
	adds r0, r2, r0
	cmp r0, r1
	bge _0802D5C6
	cmp r2, r1
	blt _0802D5EC
_0802D5BC:
	asrs r0, r5, #0x18
	subs r0, r0, r4
	adds r0, r1, r0
	cmp r0, r2
	blt _0802D5EC
_0802D5C6:
	movs r0, #1
	b _0802D5EE
	.align 2, 0
_0802D5CC: .4byte gStageData
_0802D5D0: .4byte 0x0300004C
_0802D5D4: .4byte 0xFFFFFF00
_0802D5D8: .4byte 0x0300004D
_0802D5DC: .4byte 0xFFFF00FF
_0802D5E0: .4byte 0x0300004E
_0802D5E4: .4byte 0xFF00FFFF
_0802D5E8: .4byte 0x00FFFFFF
_0802D5EC:
	movs r0, #0
_0802D5EE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start TaskDestructor_ItemBox
TaskDestructor_ItemBox: @ 0x0802D600
	push {r4, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r4, r0
	ldr r0, [r4, #0x1c]
	bl VramFree
	ldr r0, [r4, #0x44]
	bl VramFree
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start Task_802D61C
Task_802D61C: @ 0x0802D61C
	push {r4, lr}
	ldr r0, _0802D640 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	ldrb r0, [r4, #7]
	adds r1, r0, #1
	strb r1, [r4, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bls _0802D644
	adds r0, r4, #0
	bl sub_802C7B0
	b _0802D64E
	.align 2, 0
_0802D640: .4byte gCurTask
_0802D644:
	ldr r1, _0802D65C @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r1, [r4, #0x10]
	adds r0, r0, r1
	strh r0, [r4, #0x10]
_0802D64E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_802D6CC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D65C: .4byte 0xFFFFFF00

	thumb_func_start Task_802D660
Task_802D660: @ 0x0802D660
	push {lr}
	ldr r3, _0802D684 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
	ldrb r0, [r2, #7]
	adds r1, r0, #1
	strb r1, [r2, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _0802D688
	ldr r0, [r3]
	bl TaskDestroy
	b _0802D690
	.align 2, 0
_0802D684: .4byte gCurTask
_0802D688:
	adds r0, r2, #0
	movs r1, #1
	bl sub_802D6CC
_0802D690:
	pop {r0}
	bx r0

	thumb_func_start sub_802D694
sub_802D694: @ 0x0802D694
	push {lr}
	adds r3, r1, #0
	ldr r2, _0802D6C0 @ =gCamera
	ldr r1, [r2]
	subs r0, r0, r1
	ldr r1, [r2, #4]
	subs r3, r3, r1
	adds r0, #0x80
	movs r1, #0xf8
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0802D6BC
	adds r0, r3, #0
	adds r0, #0x80
	cmp r0, #0
	blt _0802D6BC
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r3, r0
	ble _0802D6C4
_0802D6BC:
	movs r0, #1
	b _0802D6C6
	.align 2, 0
_0802D6C0: .4byte gCamera
_0802D6C4:
	movs r0, #0
_0802D6C6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802D6CC
sub_802D6CC: @ 0x0802D6CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x14]
	ldr r2, _0802D714 @ =gCamera
	ldr r0, [r2]
	subs r3, r3, r0
	strh r3, [r4, #0x2c]
	ldr r0, [r4, #0x18]
	ldr r2, [r2, #4]
	subs r0, r0, r2
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x54
	strh r3, [r0]
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x56
	strh r0, [r2]
	cmp r1, #0
	bne _0802D704
	adds r0, r4, #0
	adds r0, #0x1c
	bl DisplaySprite
_0802D704:
	adds r0, r4, #0
	adds r0, #0x44
	bl DisplaySprite
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D714: .4byte gCamera
